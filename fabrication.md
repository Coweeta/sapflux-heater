# Fabrication Notes

## Getting PCBs manufactured

We have the printed circuit boards manufactured offsite by a companies such as http://www.basicpcb.com/.
Any such firm will require the drill files and Gerber files stored in the *generated/* subdirectory of this project.
These PCBs are then loaded with components by us.

## Ordering Components

Those components may be purchased in any quantity from an electronic supplier such as http://www.mouser.com/.
A list of components listing quantities of each can be found in the Bill of Materials file *hc.bom*, also in *generated/*.

## Mounting Components

* D2, the LED, has its short lead aligned with square pad on the PCB
* Q3, Q4, U1, U2, D3, D4 and RV1 are oriented as per the silkscreen
* Resistors and capacitors are not polarized and may be inserted either way
* Q2 is mounted underneath the board, heat sink face down and sitting 1/4” beneath the bottom face.
  The mounting hole must be aligned with the central screw access hole in the PCB.
  A jig may be useful for both bending the leads (backwards) and soldering them to the PCB at the correct distance.
* Not every board needs to have J2 and J3 loaded;
  if several boards are used in one installation then place J2 on the rightmost board and solder a heavy gauge wire
  between J4 on one board and J2 on the next.
  A second heavy gauge wire is daisy-chained from J6 to J2.
  Similarly, if the outputs are all enabled at the same time, then load J3 on the leftmost and run a wire from J5 to J3
  on the next board.
* The easiest order to load devices is fixed resistors first; capacitors, transistors and ICs next (except Q2); diodes;
  connectors and RV1; and then Q2 last.

## Testing

Once the components are loaded then we want to test the printed circuit assembly before mounting it on the heat-sink.
First perform a visual inspection, confirming correct component loading and good solder joints - no solder dags or dry joints.

Coweeta has built a crude test-jig for testing.  The heat-sink voltage is allowed to so the MOSFET can be clamped
directly to it without using mica or heat-sink compound.

### Sequence

* Connect the supply lines of the test jig to a 12V power supply
* screw board-under-test into jig: connecting ground and heat-sink
* screw the battery and load lines into J1
* clamp the enable line to corresponding pad on J3 (clothes pegs work okay here)
* ensure load resistance is disconnected.
* ensure the enable line is on (pulled high)
* apply power.  The meter indicating load voltage should jump up to some value.  D2 should light up.
* using a small screw driver, adjust RV1.  You should see the load voltage change.  The expected range will be around 3V to the supplied battery voltage.
* engage the load (10Ω for the Coweeta jig) and confirm the load voltage remains steady.
* disable the circuit (switch the enable line low).  Confirm the load voltage drops (to 0V under load, about 2V no load).

## Mounting PCAs on the heat sink

We are using 3/16 thick, 3" wide aluminum plate to mount the boards.  A PDF drill template is located at ./heat-sink-drill-placement.pdf
Simply print this out on paper (ensure the printer doesn't scale the page); cut out and tape to the aluminum stock.
Mark the hole centers with a center punch and drill each with the specified bit diameter.

The bigger holes are used to mount the completed units on the Campbell Scientific backplate (1" spaced bolt mounts).


* 4-40 bolts are used: 1” long ones for the PCB mounts and 1/2” one to clamp the MOSFET.
* Care must be taken that the MOSFET sits flat on the heat sink to facilitate the minimum temperature difference between the two.
* 1/4" spacers are used between the face of the PCB and that of the aluminum.
* As the MOSFET drain terminal is at a different potential to the heatsink, they must be electrically insulated from each other.
  For this use a mica insulator (with heat conducting paste)


