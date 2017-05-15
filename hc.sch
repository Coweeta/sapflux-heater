EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:references
LIBS:hc-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Sapflow Measurement Heater Control."
Date ""
Rev "1.0"
Comp "USDA Coweeta Hydrologic Laboratory"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R9
U 1 1 58C02014
P 4900 1400
F 0 "R9" V 4980 1400 50  0000 C CNN
F 1 "100k" V 4900 1400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4830 1400 50  0001 C CNN
F 3 "" H 4900 1400 50  0001 C CNN
	1    4900 1400
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 58C0204B
P 4900 1600
F 0 "R10" V 4980 1600 50  0000 C CNN
F 1 "100k" V 4900 1600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4830 1600 50  0001 C CNN
F 3 "" H 4900 1600 50  0001 C CNN
	1    4900 1600
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 58C020A0
P 4550 2000
F 0 "R8" V 4630 2000 50  0000 C CNN
F 1 "33k" V 4550 2000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4480 2000 50  0001 C CNN
F 3 "" H 4550 2000 50  0001 C CNN
	1    4550 2000
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 58C020CD
P 4350 2000
F 0 "R7" V 4430 2000 50  0000 C CNN
F 1 "33k" V 4350 2000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4280 2000 50  0001 C CNN
F 3 "" H 4350 2000 50  0001 C CNN
	1    4350 2000
	1    0    0    -1  
$EndComp
$Comp
L D D3
U 1 1 58C026C5
P 8950 1600
F 0 "D3" H 8950 1700 50  0000 C CNN
F 1 "1N4004" H 8950 1500 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 8950 1600 50  0001 C CNN
F 3 "" H 8950 1600 50  0001 C CNN
	1    8950 1600
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 58C0578A
P 4300 6700
F 0 "#FLG01" H 4300 6775 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 6850 50  0000 C CNN
F 2 "" H 4300 6700 50  0001 C CNN
F 3 "" H 4300 6700 50  0001 C CNN
	1    4300 6700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 58C057C2
P 3800 6300
F 0 "#FLG02" H 3800 6375 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 6450 50  0000 C CNN
F 2 "" H 3800 6300 50  0001 C CNN
F 3 "" H 3800 6300 50  0001 C CNN
	1    3800 6300
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 58C05B87
P 7050 1400
F 0 "D2" H 7050 1500 50  0000 C CNN
F 1 "LED" H 7050 1300 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 7050 1400 50  0001 C CNN
F 3 "" H 7050 1400 50  0001 C CNN
	1    7050 1400
	0    -1   -1   0   
$EndComp
$Comp
L R R13
U 1 1 58C062A2
P 7050 1800
F 0 "R13" V 7130 1800 50  0000 C CNN
F 1 "1k" V 7050 1800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6980 1800 50  0001 C CNN
F 3 "" H 7050 1800 50  0001 C CNN
	1    7050 1800
	1    0    0    -1  
$EndComp
$Comp
L IRF540N Q2
U 1 1 58C027E1
P 8850 4600
F 0 "Q2" H 9100 4675 50  0000 L CNN
F 1 "irfb7546pbf" H 9100 4350 50  0000 L CNN
F 2 "connectors:TO-220_Underneath" H 9100 4525 50  0001 L CIN
F 3 "" H 8850 4600 50  0001 L CNN
	1    8850 4600
	1    0    0    -1  
$EndComp
Text Label 3650 2650 0    60   ~ 0
diff
Text Label 8950 2700 0    60   ~ 0
load
Text Label 7350 4650 0    60   ~ 0
gate
$Comp
L GND #PWR03
U 1 1 58C0744A
P 4300 7000
F 0 "#PWR03" H 4300 6750 50  0001 C CNN
F 1 "GND" H 4300 6850 50  0000 C CNN
F 2 "" H 4300 7000 50  0001 C CNN
F 3 "" H 4300 7000 50  0001 C CNN
	1    4300 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58C075D1
P 4550 2250
F 0 "#PWR04" H 4550 2000 50  0001 C CNN
F 1 "GND" H 4550 2100 50  0000 C CNN
F 2 "" H 4550 2250 50  0001 C CNN
F 3 "" H 4550 2250 50  0001 C CNN
	1    4550 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58C07618
P 8950 5300
F 0 "#PWR05" H 8950 5050 50  0001 C CNN
F 1 "GND" H 8950 5150 50  0000 C CNN
F 2 "" H 8950 5300 50  0001 C CNN
F 3 "" H 8950 5300 50  0001 C CNN
	1    8950 5300
	1    0    0    -1  
$EndComp
Text Label 8950 4950 0    60   ~ 0
S
$Comp
L R R4
U 1 1 58C321F2
P 3650 3050
F 0 "R4" V 3730 3050 50  0000 C CNN
F 1 "1k" V 3650 3050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3580 3050 50  0001 C CNN
F 3 "" H 3650 3050 50  0001 C CNN
	1    3650 3050
	1    0    0    -1  
$EndComp
Text Notes 3750 800  0    60   ~ 0
Load Voltage Measurement
Text Notes 4150 2950 0    60   ~ 0
Comparison
$Comp
L LM358 U2
U 2 1 58C98815
P 4050 4100
F 0 "U2" H 4050 4300 50  0000 L CNN
F 1 "LM358" H 4050 3900 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4050 4100 50  0001 C CNN
F 3 "" H 4050 4100 50  0001 C CNN
	2    4050 4100
	1    0    0    1   
$EndComp
$Comp
L LM358 U2
U 1 1 58C98A14
P 3950 1500
F 0 "U2" H 3950 1700 50  0000 L CNN
F 1 "LM358" H 3950 1300 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 3950 1500 50  0001 C CNN
F 3 "" H 3950 1500 50  0001 C CNN
	1    3950 1500
	-1   0    0    -1  
$EndComp
$Comp
L TL431LP U1
U 1 1 58C992B7
P 1450 1950
F 0 "U1" H 1350 2050 50  0000 C CNN
F 1 "TL431LP" H 1450 1850 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 1450 1800 50  0001 C CIN
F 3 "" H 1450 1950 50  0001 C CNN
	1    1450 1950
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 58C99519
P 1450 1400
F 0 "R3" V 1530 1400 50  0000 C CNN
F 1 "4.7k" V 1450 1400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1380 1400 50  0001 C CNN
F 3 "" H 1450 1400 50  0001 C CNN
	1    1450 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58C998A4
P 1450 2400
F 0 "#PWR06" H 1450 2150 50  0001 C CNN
F 1 "GND" H 1450 2250 50  0000 C CNN
F 2 "" H 1450 2400 50  0001 C CNN
F 3 "" H 1450 2400 50  0001 C CNN
	1    1450 2400
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 58C99929
P 1900 1950
F 0 "RV1" V 1725 1950 50  0000 C CNN
F 1 "10k" V 1800 1950 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296W" H 1900 1950 50  0001 C CNN
F 3 "" H 1900 1950 50  0001 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 58C9A226
P 4050 1950
F 0 "#PWR07" H 4050 1700 50  0001 C CNN
F 1 "GND" H 4050 1800 50  0000 C CNN
F 2 "" H 4050 1950 50  0001 C CNN
F 3 "" H 4050 1950 50  0001 C CNN
	1    4050 1950
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58CC8DC0
P 1200 1750
F 0 "R1" V 1280 1750 50  0000 C CNN
F 1 "10k" V 1200 1750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1130 1750 50  0001 C CNN
F 3 "" H 1200 1750 50  0001 C CNN
	1    1200 1750
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58CC8E5E
P 1200 2150
F 0 "R2" V 1280 2150 50  0000 C CNN
F 1 "10k" V 1200 2150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1130 2150 50  0001 C CNN
F 3 "" H 1200 2150 50  0001 C CNN
	1    1200 2150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 58CC9916
P 2300 2200
F 0 "C2" H 2325 2300 50  0000 L CNN
F 1 "10n" H 2325 2100 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2338 2050 50  0001 C CNN
F 3 "" H 2300 2200 50  0001 C CNN
	1    2300 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58CC991C
P 2300 2400
F 0 "#PWR08" H 2300 2150 50  0001 C CNN
F 1 "GND" H 2300 2250 50  0000 C CNN
F 2 "" H 2300 2400 50  0001 C CNN
F 3 "" H 2300 2400 50  0001 C CNN
	1    2300 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 58CCB118
P 10300 3050
F 0 "#PWR09" H 10300 2800 50  0001 C CNN
F 1 "GND" H 10300 2900 50  0000 C CNN
F 2 "" H 10300 3050 50  0001 C CNN
F 3 "" H 10300 3050 50  0001 C CNN
	1    10300 3050
	-1   0    0    -1  
$EndComp
Text Notes 1400 800  0    60   ~ 0
Reference
Text Label 2550 1950 0    60   ~ 0
ref
$Comp
L R R12
U 1 1 58E532DB
P 6150 3700
F 0 "R12" V 6230 3700 50  0000 C CNN
F 1 "1k" V 6150 3700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6080 3700 50  0001 C CNN
F 3 "" H 6150 3700 50  0001 C CNN
	1    6150 3700
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 58E556DA
P 7750 3700
F 0 "C3" H 7775 3800 50  0000 L CNN
F 1 "10n" H 7775 3600 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7788 3550 50  0001 C CNN
F 3 "" H 7750 3700 50  0001 C CNN
	1    7750 3700
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 58E5584A
P 7200 3700
F 0 "R14" V 7280 3700 50  0000 C CNN
F 1 "1k" V 7200 3700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7130 3700 50  0001 C CNN
F 3 "" H 7200 3700 50  0001 C CNN
	1    7200 3700
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 58E592FB
P 4050 3350
F 0 "R5" V 4130 3350 50  0000 C CNN
F 1 "100k" V 4050 3350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3980 3350 50  0001 C CNN
F 3 "" H 4050 3350 50  0001 C CNN
	1    4050 3350
	0    -1   -1   0   
$EndComp
Text Label 5450 3700 0    60   ~ 0
drive
$Comp
L Screw_Terminal_1x02 J1
U 1 1 58E69FBE
P 10500 1600
F 0 "J1" H 10500 1850 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 10350 1600 50  0000 C TNN
F 2 "ab2_terminal_block:AB2_TB_02_RA_5.08MM_L-GRN" H 10500 1375 50  0001 C CNN
F 3 "" H 10475 1600 50  0001 C CNN
	1    10500 1600
	-1   0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J2
U 1 1 58E6A08F
P 10500 2800
F 0 "J2" H 10500 3050 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 10350 2800 50  0000 C TNN
F 2 "ab2_terminal_block:AB2_TB_02_RA_5.08MM_L-GRN" H 10500 2575 50  0001 C CNN
F 3 "" H 10475 2800 50  0001 C CNN
	1    10500 2800
	-1   0    0    -1  
$EndComp
Text Notes 6700 3000 0    60   ~ 0
Gate Drive
Text Notes 9200 800  0    60   ~ 0
Power
Text Notes 6950 850  0    60   ~ 0
Pretty
$Comp
L C C1
U 1 1 58E6FC4F
P 2650 6750
F 0 "C1" H 2675 6850 50  0000 L CNN
F 1 "10n" H 2675 6650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2688 6600 50  0001 C CNN
F 3 "" H 2650 6750 50  0001 C CNN
	1    2650 6750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58E6FC55
P 2650 7100
F 0 "#PWR010" H 2650 6850 50  0001 C CNN
F 1 "GND" H 2650 6950 50  0000 C CNN
F 2 "" H 2650 7100 50  0001 C CNN
F 3 "" H 2650 7100 50  0001 C CNN
	1    2650 7100
	-1   0    0    -1  
$EndComp
Text Label 10000 4050 0    60   ~ 0
enable
Text Label 10000 3850 0    60   ~ 0
diff
$Comp
L GND #PWR011
U 1 1 58E70938
P 10300 4450
F 0 "#PWR011" H 10300 4200 50  0001 C CNN
F 1 "GND" H 10300 4300 50  0000 C CNN
F 2 "" H 10300 4450 50  0001 C CNN
F 3 "" H 10300 4450 50  0001 C CNN
	1    10300 4450
	-1   0    0    -1  
$EndComp
Text Notes 10250 750  0    60   ~ 0
Connect
$Comp
L Screw_Terminal_1x04 J3
U 1 1 58E79445
P 10500 3950
F 0 "J3" H 10500 4400 50  0000 C TNN
F 1 "Screw_Terminal_1x04" V 10350 3950 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_4pol" H 10500 3525 50  0001 C CNN
F 3 "" H 10475 4150 50  0001 C CNN
	1    10500 3950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 J4
U 1 1 58E7A061
P 10500 2350
F 0 "J4" H 10500 2450 50  0000 C CNN
F 1 "CONN_01X01" V 10700 2350 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-2mmDrill" H 10500 2350 50  0001 C CNN
F 3 "" H 10500 2350 50  0001 C CNN
	1    10500 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J5
U 1 1 58E84B75
P 10000 4250
F 0 "J5" H 10000 4350 50  0000 C CNN
F 1 "CONN_01X01" V 10200 4250 50  0000 C CNN
F 2 "connectors:small_SWP_single_1-5mmDrill" H 10000 4250 50  0001 C CNN
F 3 "" H 10000 4250 50  0001 C CNN
	1    10000 4250
	0    1    1    0   
$EndComp
$Comp
L BC237 Q3
U 1 1 58EE3062
P 1850 6750
F 0 "Q3" H 2050 6825 50  0000 L CNN
F 1 "BC337" H 2050 6750 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 2050 6675 50  0001 L CIN
F 3 "" H 1850 6750 50  0001 L CNN
	1    1850 6750
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_EBC Q4
U 1 1 58EE3129
P 2550 5850
F 0 "Q4" H 2750 5900 50  0000 L CNN
F 1 "CMPT3906" H 2700 5650 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 2750 5950 50  0001 C CNN
F 3 "" H 2550 5850 50  0001 C CNN
	1    2550 5850
	1    0    0    1   
$EndComp
$Comp
L R R17
U 1 1 58EE3CB4
P 1950 6250
F 0 "R17" V 2030 6250 50  0000 C CNN
F 1 "100k" V 1950 6250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1880 6250 50  0001 C CNN
F 3 "" H 1950 6250 50  0001 C CNN
	1    1950 6250
	-1   0    0    1   
$EndComp
$Comp
L R R16
U 1 1 58EE3E7D
P 1950 5450
F 0 "R16" V 2030 5450 50  0000 C CNN
F 1 "100k" V 1950 5450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1880 5450 50  0001 C CNN
F 3 "" H 1950 5450 50  0001 C CNN
	1    1950 5450
	-1   0    0    1   
$EndComp
$Comp
L R R15
U 1 1 58EE3F14
P 1300 6750
F 0 "R15" V 1380 6750 50  0000 C CNN
F 1 "100k" V 1300 6750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1230 6750 50  0001 C CNN
F 3 "" H 1300 6750 50  0001 C CNN
	1    1300 6750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR012
U 1 1 58EE4276
P 1950 7100
F 0 "#PWR012" H 1950 6850 50  0001 C CNN
F 1 "GND" H 1950 6950 50  0000 C CNN
F 2 "" H 1950 7100 50  0001 C CNN
F 3 "" H 1950 7100 50  0001 C CNN
	1    1950 7100
	-1   0    0    -1  
$EndComp
Text Label 850  6750 0    60   ~ 0
enable
$Comp
L VCC #PWR013
U 1 1 58C9985D
P 1450 1100
F 0 "#PWR013" H 1450 950 50  0001 C CNN
F 1 "VCC" H 1450 1250 50  0000 C CNN
F 2 "" H 1450 1100 50  0001 C CNN
F 3 "" H 1450 1100 50  0001 C CNN
	1    1450 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1400 4750 1400
Wire Wire Line
	4550 1400 4550 1850
Wire Wire Line
	4250 1600 4750 1600
Wire Wire Line
	4350 1600 4350 1850
Connection ~ 4550 1400
Wire Wire Line
	4350 2150 3650 2150
Wire Wire Line
	3650 1500 3650 2900
Wire Wire Line
	4550 2150 4550 2250
Wire Wire Line
	5050 1100 9750 1100
Wire Wire Line
	5050 2100 9750 2100
Wire Wire Line
	8950 850  8950 1450
Wire Wire Line
	8950 4800 8950 5300
Connection ~ 8950 1100
Wire Wire Line
	8950 1750 8950 4400
Connection ~ 3650 2150
Wire Wire Line
	3800 6150 3800 6300
Wire Wire Line
	4300 6700 4300 7000
Wire Wire Line
	7050 1550 7050 1650
Wire Wire Line
	7050 1950 7050 2100
Connection ~ 4300 6750
Wire Notes Line
	3400 650  5350 650 
Wire Notes Line
	5350 650  5350 2500
Wire Notes Line
	5350 2500 3400 2500
Wire Notes Line
	3400 2500 3400 650 
Wire Notes Line
	3400 2850 5350 2850
Wire Notes Line
	5350 2850 5350 5000
Wire Notes Line
	5350 5000 3400 5000
Wire Notes Line
	3400 5000 3400 2850
Wire Wire Line
	5050 1600 5050 2100
Connection ~ 8950 2100
Connection ~ 7050 2100
Wire Wire Line
	7050 1100 7050 1250
Connection ~ 7050 1100
Connection ~ 4350 1600
Wire Wire Line
	6850 3700 6850 5350
Wire Wire Line
	1450 1550 1450 1850
Wire Wire Line
	1450 2050 1450 2400
Wire Wire Line
	1450 1100 1450 1250
Wire Wire Line
	4050 1800 4050 1950
Wire Wire Line
	5050 1400 5050 1100
Wire Wire Line
	1200 1600 1900 1600
Connection ~ 1450 1600
Wire Wire Line
	1200 1900 1200 2000
Wire Wire Line
	1200 1950 1350 1950
Connection ~ 1200 1950
Wire Wire Line
	1200 2300 1900 2300
Connection ~ 1450 2300
Wire Wire Line
	1900 1600 1900 1800
Wire Wire Line
	1900 2300 1900 2100
Wire Wire Line
	2300 2050 2300 1950
Wire Wire Line
	2300 2350 2300 2400
Wire Notes Line
	700  650  700  3100
Wire Notes Line
	700  3100 2900 3100
Wire Notes Line
	2900 3100 2900 650 
Wire Notes Line
	2900 650  700  650 
Connection ~ 2300 1950
Wire Wire Line
	4450 3350 4450 4100
Wire Wire Line
	4450 4100 4350 4100
Connection ~ 4450 3700
Wire Wire Line
	3900 3350 3650 3350
Connection ~ 3650 3350
Wire Wire Line
	4200 3350 4450 3350
Wire Wire Line
	6300 3700 7050 3700
Wire Wire Line
	7350 3700 7600 3700
Wire Wire Line
	7900 3700 8950 3700
Connection ~ 8950 3700
Connection ~ 6850 3700
Wire Wire Line
	4450 3700 6000 3700
Wire Wire Line
	6850 4650 8650 4650
Wire Wire Line
	10300 2200 10300 2700
Wire Wire Line
	10300 2900 10300 3050
Wire Notes Line
	5800 2850 5800 5000
Wire Notes Line
	5800 5000 8200 5000
Wire Notes Line
	8200 5000 8200 2850
Wire Notes Line
	8200 2850 5800 2850
Wire Wire Line
	9750 1100 9750 1500
Wire Wire Line
	9750 1500 10300 1500
Wire Wire Line
	10300 1700 9750 1700
Wire Wire Line
	9750 1700 9750 2100
Wire Notes Line
	8550 600  9600 600 
Wire Notes Line
	9600 600  9600 5950
Wire Notes Line
	9600 5950 8550 5950
Wire Notes Line
	8550 5950 8550 600 
Wire Notes Line
	6650 600  6650 2500
Wire Notes Line
	6650 2500 7500 2500
Wire Notes Line
	7500 2500 7500 600 
Wire Notes Line
	7500 600  6650 600 
Wire Wire Line
	2650 6050 2650 6600
Wire Wire Line
	2650 6900 2650 7100
Wire Wire Line
	10300 4050 10000 4050
Wire Wire Line
	10000 3850 10300 3850
Wire Notes Line
	9850 600  9850 5950
Wire Notes Line
	9850 5950 10950 5950
Wire Notes Line
	10950 5950 10950 600 
Wire Notes Line
	10950 600  9850 600 
Wire Wire Line
	10300 3650 10000 3650
Connection ~ 10300 2350
Wire Wire Line
	10300 4250 10300 4450
Wire Wire Line
	3650 4000 3750 4000
Wire Wire Line
	3650 3200 3650 4000
Wire Wire Line
	3750 4200 3150 4200
Wire Wire Line
	3150 4200 3150 1950
Wire Wire Line
	3150 1950 2050 1950
Wire Wire Line
	1950 7100 1950 6950
Wire Wire Line
	1650 6750 1450 6750
Wire Wire Line
	1950 6550 1950 6400
Wire Wire Line
	1950 5600 1950 6100
Wire Wire Line
	2350 5850 1950 5850
Connection ~ 1950 5850
Wire Wire Line
	1950 5100 1950 5300
Wire Wire Line
	2650 5100 2650 5650
Connection ~ 2650 6250
Wire Wire Line
	1150 6750 850  6750
Wire Notes Line
	3100 7550 3100 4600
Wire Notes Line
	3100 4600 650  4600
Wire Notes Line
	650  4600 650  7550
Wire Notes Line
	650  7550 3100 7550
$Comp
L VCC #PWR014
U 1 1 58C9A270
P 4050 1100
F 0 "#PWR014" H 4050 950 50  0001 C CNN
F 1 "VCC" H 4050 1250 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 58EE597E
P 2800 6250
F 0 "#PWR015" H 2800 6100 50  0001 C CNN
F 1 "VCC" H 2800 6400 50  0000 C CNN
F 2 "" H 2800 6250 50  0001 C CNN
F 3 "" H 2800 6250 50  0001 C CNN
	1    2800 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 6250 2650 6250
$Comp
L +BATT #PWR016
U 1 1 58EE6925
P 1950 5100
F 0 "#PWR016" H 1950 4950 50  0001 C CNN
F 1 "+BATT" H 1950 5240 50  0000 C CNN
F 2 "" H 1950 5100 50  0001 C CNN
F 3 "" H 1950 5100 50  0001 C CNN
	1    1950 5100
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR017
U 1 1 58EE6981
P 2650 5100
F 0 "#PWR017" H 2650 4950 50  0001 C CNN
F 1 "+BATT" H 2650 5240 50  0000 C CNN
F 2 "" H 2650 5100 50  0001 C CNN
F 3 "" H 2650 5100 50  0001 C CNN
	1    2650 5100
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR018
U 1 1 58EE6DBF
P 10300 2200
F 0 "#PWR018" H 10300 2050 50  0001 C CNN
F 1 "+BATT" H 10300 2340 50  0000 C CNN
F 2 "" H 10300 2200 50  0001 C CNN
F 3 "" H 10300 2200 50  0001 C CNN
	1    10300 2200
	1    0    0    -1  
$EndComp
Text Label 10000 3650 0    60   ~ 0
ref
Wire Wire Line
	4050 1200 4050 1100
$Comp
L PWR_FLAG #FLG019
U 1 1 58EE78CF
P 4300 6300
F 0 "#FLG019" H 4300 6375 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 6450 50  0000 C CNN
F 2 "" H 4300 6300 50  0001 C CNN
F 3 "" H 4300 6300 50  0001 C CNN
	1    4300 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 6150 4300 6300
$Comp
L +BATT #PWR020
U 1 1 58EE78D6
P 4300 6150
F 0 "#PWR020" H 4300 6000 50  0001 C CNN
F 1 "+BATT" H 4300 6290 50  0000 C CNN
F 2 "" H 4300 6150 50  0001 C CNN
F 3 "" H 4300 6150 50  0001 C CNN
	1    4300 6150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR021
U 1 1 58EE7927
P 3800 6150
F 0 "#PWR021" H 3800 6000 50  0001 C CNN
F 1 "VCC" H 3800 6300 50  0000 C CNN
F 2 "" H 3800 6150 50  0001 C CNN
F 3 "" H 3800 6150 50  0001 C CNN
	1    3800 6150
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR022
U 1 1 58EE9367
P 8950 850
F 0 "#PWR022" H 8950 700 50  0001 C CNN
F 1 "+BATT" H 8950 990 50  0000 C CNN
F 2 "" H 8950 850 50  0001 C CNN
F 3 "" H 8950 850 50  0001 C CNN
	1    8950 850 
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58EFCB12
P 6850 5500
F 0 "R6" V 6930 5500 50  0000 C CNN
F 1 "0R" V 6850 5500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6780 5500 50  0001 C CNN
F 3 "" H 6850 5500 50  0001 C CNN
F 4 "true" V 6850 5500 60  0001 C CNN "not fitted"
	1    6850 5500
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 J6
U 1 1 58EFD9C2
P 10400 4900
F 0 "J6" H 10400 5000 50  0000 C CNN
F 1 "CONN_01X01" H 10600 4900 50  0000 C CNN
F 2 "connectors:my_3.2mm_M3_Pad" H 10400 4900 50  0001 C CNN
F 3 "" H 10400 4900 50  0001 C CNN
	1    10400 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J7
U 1 1 58EFDA8C
P 10400 5100
F 0 "J7" H 10400 5200 50  0000 C CNN
F 1 "CONN_01X01" H 10600 5100 50  0000 C CNN
F 2 "connectors:my_3.2mm_M3_Pad" H 10400 5100 50  0001 C CNN
F 3 "" H 10400 5100 50  0001 C CNN
	1    10400 5100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J8
U 1 1 58EFDB09
P 10400 5300
F 0 "J8" H 10400 5400 50  0000 C CNN
F 1 "CONN_01X01" H 10600 5300 50  0000 C CNN
F 2 "connectors:my_3.2mm_M3_Pad" H 10400 5300 50  0001 C CNN
F 3 "" H 10400 5300 50  0001 C CNN
	1    10400 5300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J9
U 1 1 58EFDB89
P 10400 5500
F 0 "J9" H 10400 5600 50  0000 C CNN
F 1 "CONN_01X01" H 10600 5500 50  0000 C CNN
F 2 "connectors:my_3.2mm_M3_Pad" H 10400 5500 50  0001 C CNN
F 3 "" H 10400 5500 50  0001 C CNN
	1    10400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4900 10150 4900
Wire Wire Line
	10150 4900 10150 5650
Wire Wire Line
	10200 5100 10150 5100
Connection ~ 10150 5100
Wire Wire Line
	10200 5300 10150 5300
Connection ~ 10150 5300
Wire Wire Line
	10200 5500 10150 5500
Connection ~ 10150 5500
$Comp
L GND #PWR023
U 1 1 58EFDEB8
P 10150 5650
F 0 "#PWR023" H 10150 5400 50  0001 C CNN
F 1 "GND" H 10150 5500 50  0000 C CNN
F 2 "" H 10150 5650 50  0001 C CNN
F 3 "" H 10150 5650 50  0001 C CNN
	1    10150 5650
	-1   0    0    -1  
$EndComp
Connection ~ 6850 4650
Text Label 6300 5650 0    60   ~ 0
direct
Wire Wire Line
	6850 5650 6300 5650
Text Label 2050 5850 0    60   ~ 0
direct
Text Notes 5750 5900 0    60   ~ 0
R6 is not fitted unless we are loading\nthe board in the switch-only configuration
$Comp
L CONN_01X01 J10
U 1 1 59190BBD
P 10100 2350
F 0 "J10" H 10100 2450 50  0000 C CNN
F 1 "CONN_01X01" V 10300 2350 50  0000 C CNN
F 2 "connectors:small_SWP_single_1-5mmDrill" H 10100 2350 50  0001 C CNN
F 3 "" H 10100 2350 50  0001 C CNN
	1    10100 2350
	-1   0    0    1   
$EndComp
$EndSCHEMATC
