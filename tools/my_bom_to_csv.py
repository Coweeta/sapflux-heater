#!/usr/bin/env python

"""
Generate BOM from KiCad Schematic.

You might need to add a symbolic link to /usr/share/doc/kicad/scripts/bom-in-python/kicad_netlist_reader.py
(or just copy it to this script's directory)

Command-line to use in KiCad's "Bill of Material" window
   python3 "/home/dave/Documents/coweeta/hc/tools/my_bom_to_csv.py" "%I" "%O-bom.csv"

(Adjusting the directory, of course.)

"""

import sys

if len(sys.argv) < 3 or sys.argv[1] in ['-h', '--help']:
    print(__doc__)
    exit(2)

import kicad_netlist_reader
import csv

net = kicad_netlist_reader.netlist(sys.argv[1])
with open(sys.argv[2], 'w') as f:
    out = csv.writer(f, lineterminator='\n', delimiter=',', quotechar='\"', quoting=csv.QUOTE_MINIMAL)

    out.writerow(['Designator', 'Quantity', 'Value', 'Link'])
    for group in net.groupComponents():
        refs = []
        for item in group:
            # Skip parts that aren't/can't be loaded
            if "Loading" in item.getFieldNames():
                loading = item.getField("Loading")
                if loading in ["not fitted", "no part"]:
                    continue
            refs.append(item.getRef())
        if len(refs):
            item = group[0]
            row = [
                ';'.join(refs),
                len(refs),
                item.getValue()]
            if "Mouser" in item.getFieldNames():
                for part in item.getField("Mouser").split(','):
                    row.append("http://www.mouser.com/ProductDetail/{}".format(part))
            out.writerow(row)

