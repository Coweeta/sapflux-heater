# fix kicad netlist

import re

def check(l, n):
    if len(l) != n:
        raise Exception("bad count", l, n)

def out(f, l):
    f.write(" ".join(l) + "\n")

splitter = re.compile("\s+")

with open("heater-control.cir") as in_file, open("hcfix.cir", 'w') as out_file:
    for line in in_file:
        line = line.rstrip()
        line = line.replace("/","_")
        line = line.replace("Net-_", "n_")
        line = line.replace("-Pad", "_p")
        b = splitter.split(line)

        #TEMP!!! print(b)
        if len(b) == 0 or len(b[0]) == 0:
           out_file.write("\n")
        elif b[0][0] == 'J':
            out_file.write("* " + line + "\n")
        elif b[0][0] == 'R' and b[0][1] == 'V':
            out_file.write("* " + line + "\n")
            check(b, 5)
            out(out_file, (b[0] + '1', b[1], b[2], '2k'))
            out(out_file, (b[0] + '2', b[2], b[3], '1k'))

        elif b[0][0] == 'D':
            check(b, 4)
            if b[0][1] == 'Z':
                b[0] = 'A' + b[0]
            out(out_file, (b[0], b[2], b[1], b[3]))
        elif b[0][0] == 'Q':
            check(b, 5)
            if b[0][1] == 'N':
                b[0] = 'X' + b[0]
            out(out_file, (b[0], b[2], b[1], b[3], b[4]))
        elif b[-1] == 'LM324':
            check(b, 16)
            n = lambda i: b[0] + str(i)
            out(out_file, (n(1), b[3], b[2], b[4], b[11], b[1], 'LM324q'))
            out(out_file, (n(2), b[5], b[6], b[4], b[11], b[7], 'LM324q'))
            out(out_file, (n(3), b[10], b[9], b[4], b[11], b[8], 'LM324q'))
            out(out_file, (n(4), b[12], b[13], b[4], b[11], b[14], 'LM324q'))
        else:
            out_file.write(line + "\n")

pre1 = """
VBATT VCC GND DC 12 PULSE(12 10 1 1e-4 1e-4 1 10)
VEN  _enable GND 5
RLOAD VCC _load 2

"""

pre2 = """
VBATT VCC GND DC 12
VEN  _enable GND 0 PULSE(0 5 1 1e-5 1e-5 1 10)
RLOAD VCC _load 2

"""

