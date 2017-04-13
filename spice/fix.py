import re
import subprocess as sp
import glob
import os
import numpy as np
import matplotlib.pyplot as plt

class LineParser(object):

    def __init__(self):
        self.designator_re = re.compile('([A-Z]+)(\d+)')
        self.splitter_re = re.compile("\s+")


    def parse_line(self, line):
        line = line.strip().upper()
        if line == "":
            return None

        elif line[0] in ".*+":
            return None

        bits = self.splitter_re.split(line)

        match = self.designator_re.match(bits[0])


        device_type, device_num = match.groups()

        return (device_type, device_num, bits[1:])


class Device(object):

    value_re = re.compile('^(\d+)([A-Z]+)$')
    net_re = re.compile('^NET-_(\w+)-PAD(\d+)_$')

    def line(*args):
        fields = []
        for arg in args:
            if type(arg) == list:
                fields.extend(arg)
            else:
                fields.append(arg)

        return " ".join(["{:8}".format(field) for field in fields])

    def fix_net(name):
        if name[0] == '/':
            return name[1:]
        if name[0] == '+':
            return 'p_' + name[1:]
        if name[0] == '-':
            return 'n_' + name[1:]
        if name in ['GND', 'VCC']:
            return name
        dev, pad = Device.net_re.match(name).groups()
        return "n_{}_p{}".format(dev, pad)

    def __init__(self, device_type, device_num, nets, params):
        self._device_type = device_type
        self._device_num = device_num
        self._nets = [Device.fix_net(net) for net in nets]
        self._params = params

    def designator(self, extra=''):
        return self._device_type + self._device_num + extra

    def write(self):
        return [Device.line(self.designator(), self._nets, self._params)]


class Module(Device):
    def __init__(self, device_type, device_num, parts):
        Device.__init__(self, device_type, device_num, parts[0:-1], [parts[-1]])


    def designator(self, extra=''):
        return 'X' + self._device_type + self._device_num + extra

    def write(self):
        return [Device.line(self.designator(), self._nets, self._params)]


class DualOpamp(Module):
    def __init__(self, device_type, device_num, parts):
        if len(parts) != 9:
            raise Exception('bad count', device_type, device_num, parts)
        Device.__init__(self, device_type, device_num, parts[0:-1], [parts[-1]])

    def write(self):
        n = self._nets
        vcc = n[7]
        gnd = n[3]
        param = self._params[0]
        return [
            Device.line(self.designator('a'), n[2], n[1], vcc, gnd, n[0],  param),
            Device.line(self.designator('b'), n[4], n[5], vcc, gnd, n[6],  param)]


class TwoTerm(Device):
    def __init__(self, device_type, device_num, parts):
        if len(parts) != 3:
            raise Exception('bad count', device_type, device_num, parts)
        Device.__init__(self, device_type, device_num, [parts[1], parts[0]], parts[2:])


class Passive(TwoTerm):
    def adjust(self, value):
        self._params[0] = str(value)


class Zener(TwoTerm):
    def designator(self, extra=''):
        return "A" + self._device_num + extra

class Transistor(Device):
    def __init__(self, device_type, device_num, parts):
        if len(parts) != 4:
            raise Exception('bad count', device_type, device_num, parts)
        Device.__init__(self, device_type, device_num, parts[0:3], [parts[3]])

class TransModule(Device):
    def __init__(self, device_type, device_num, parts):
        if len(parts) != 4:
            raise Exception('bad count', device_type, device_num, parts)
        Device.__init__(self, device_type, device_num, [parts[1], parts[0], parts[2]], [parts[3]])

    def designator(self, extra=''):
        return "XQ" + self._device_num + extra

class Potentiometer(Device):

    def __init__(self, device_type, device_num, parts):
        if len(parts) != 4:
            raise Exception('bad count', device_type, device_num, parts)
        match = Device.value_re.match(parts[3])
        res_str, self._units = match.groups()
        self._res = float(res_str)
        self._position = 0.5
        Device.__init__(self, device_type, device_num, parts[0:3], None)


    def adjust(self, position):
        self._position = position


    def write(self):
        res_a = str(self._res * (1.0 - self._position)) + self._units
        res_b = str(self._res * self._position) + self._units

        return [
            Device.line(self.designator('a'), self._nets[0], self._nets[1],  res_a),
            Device.line(self.designator('b'), self._nets[1], self._nets[2],  res_b)]


def module(device_type, device_num, parts):
    param = parts[-1]
    if param in ['LM358']:
        return DualOpamp(device_type, device_num, parts)
    #if param in ['TL431LP']:

    return Module(device_type, device_num, parts)


def transistor(device_type, device_num, parts):
    param = parts[-1]
    if param in ['IRF540N', 'IRFB7546PBF']:
        return TransModule(device_type, device_num, parts)
    else:
        return Transistor(device_type, device_num, parts)


class KicadSpiceFix(object):
    """text
    """



    class_map = {
        'R': TwoTerm,
        'C': TwoTerm,
        'L': TwoTerm,
        'D': TwoTerm,
        'Q': transistor,
        'U': module,
        'DZ': Zener,
        'RV': Potentiometer,
        'J': None}


    def __init__(self, filename):
        self._filename = filename
        self._devices = {}
        self._extras = {}
        parser = LineParser()
        with open(filename) as in_file:
            for line in in_file:
                fields = parser.parse_line(line)
                if fields is None:
                    continue
                des_type, des_num, parts = fields
                dev_class = KicadSpiceFix.class_map[des_type]
                if dev_class is None:
                    continue

                try:
                    self._devices[des_type + des_num] = dev_class(des_type, des_num, parts)
                except Exception as e:
                    print(des_type, des_num, e)


    def device(self, designator):
        return self._devices[designator]

    def set_lines(self, section, lines):
        self._extras[section] = lines

    def write(self, filename):
        lines = ['* {}'.format(self._filename), '']
        for dev in self._devices.values():
            lines.extend(dev.write())
        for extras in self._extras.values():
            lines.extend(extras)
        lines.extend(["", ".end"])
        with open(filename, 'w') as out_file:
            for line in lines:
                print(line, file=out_file)


    def write_and_run(self, filename):
        self.write(filename)
        process = sp.Popen(['ngspice', '-b', filename], stdout=sp.PIPE, stderr=sp.PIPE)
        stdout, stderr = process.communicate()
        if stderr != b'\nNote: No ".plot", ".print", or ".fourier" lines; no simulations run\n':
            print("#" * 10 + "STDOUT" + "#" * 10)
            print(stdout.decode('utf-8'))
            print("#" * 10 + "STDERR" + "#" * 10)
            print(stderr.decode('utf-8'))
            #raise Exception("bad output")


def make_meas_names(field_names):
    out = []
    for name in field_names:
        if name[0] == 'i':
            out.append("i(v{})".format(name[1:]))
        else:
            out.append(name)
    return " ".join(out)



def read_wrdata_file(filename, nodes):

    i_re = re.compile("^i\(v(\w+)\)$", flags=re.IGNORECASE)

    array = np.loadtxt(filename)
    V = {}
    I = {}
    for i, name in enumerate(nodes.split()):
        vector = array[:, 1 + 2 * i]
        match = i_re.match(name)
        if match:
            I[match.group(1)] = vector
        else:
            V[name] = vector

    return array[:, 0], V, I


def delete_all_data_files():
    for filename in glob.glob("*.data"):
        os.remove(filename)


def plot_all(x, V, I, from_to=None, marker=None, title=None, xlabel=None):
    if from_to is None:
        start, end = 0, len(x)
    else:
        start = (x >= from_to[0]).nonzero()[0][0]
        end = (x > from_to[1]).nonzero()[0][0]
        print(start, end)

    plt.figure()
    if V is not None:
        if I is not None:
            plt.subplot(2,1,1)
        if title is not None:
            plt.title(title)
        plt.grid()
        for name, vector in V.items():
            label = "$V_{" + name + "}$"
            plt.plot(x[start:end], vector[start:end], label=label, marker=marker)
        plt.legend()
        plt.ylabel('Volts')
    if I is not None:
        if V is not None:
            plt.subplot(2,1,2)
        else:
            plt.title(title)
        plt.grid()
        for name, vector in I.items():
            label = "$I_{" + name + "}$"
            plt.plot(x[start:end], vector[start:end], label=label, marker=marker)
        plt.legend()
        plt.ylabel('Amps')
    if xlabel is not None:
        plt.xlabel(xlabel)