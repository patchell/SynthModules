EESchema Schematic File Version 4
LIBS:500-1142-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Five Banana Jack Board with LED 0.75 Inch Spacing"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:500-1142 P6
U 1 1 5C2CB0D1
P 5100 2000
F 0 "P6" H 5100 2675 50  0000 C CNN
F 1 "500-1142" H 5100 2584 50  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 5100 2000 50  0001 C CNN
F 3 "" H 5100 2000 50  0001 C CNN
	1    5100 2000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:PAD-KF2-256 P1
U 1 1 5C2CE3EA
P 4000 1550
F 0 "P1" V 4000 550 60  0000 C CNN
F 1 "PAD-KF2-256" V 4000 1050 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 4000 1250 60  0001 C CNN
F 3 "" H 4000 1250 60  0000 C CNN
	1    4000 1550
	0    1    1    0   
$EndComp
$Comp
L SynthMod:PAD-KF2-256 P2
U 1 1 5C2CE501
P 4000 1650
F 0 "P2" V 4000 650 60  0000 C CNN
F 1 "PAD-KF2-256" V 4000 1150 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 4000 1350 60  0001 C CNN
F 3 "" H 4000 1350 60  0000 C CNN
	1    4000 1650
	0    1    1    0   
$EndComp
$Comp
L SynthMod:PAD-KF2-256 P3
U 1 1 5C2CE519
P 4000 1750
F 0 "P3" V 4000 750 60  0000 C CNN
F 1 "PAD-KF2-256" V 4000 1250 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 4000 1450 60  0001 C CNN
F 3 "" H 4000 1450 60  0000 C CNN
	1    4000 1750
	0    1    1    0   
$EndComp
$Comp
L SynthMod:PAD-KF2-256 P4
U 1 1 5C2CE533
P 4000 1850
F 0 "P4" V 4000 850 60  0000 C CNN
F 1 "PAD-KF2-256" V 4000 1350 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 4000 1550 60  0001 C CNN
F 3 "" H 4000 1550 60  0000 C CNN
	1    4000 1850
	0    1    1    0   
$EndComp
$Comp
L SynthMod:PAD-KF2-256 P5
U 1 1 5C2CE54F
P 4000 1950
F 0 "P5" V 4000 950 60  0000 C CNN
F 1 "PAD-KF2-256" V 4000 1450 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 4000 1650 60  0001 C CNN
F 3 "" H 4000 1650 60  0000 C CNN
	1    4000 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 1550 4750 1550
Wire Wire Line
	4000 1650 4750 1650
Wire Wire Line
	4000 1750 4750 1750
Wire Wire Line
	4000 1850 4750 1850
Wire Wire Line
	4000 1950 4750 1950
Wire Wire Line
	5450 1550 5600 1550
Wire Wire Line
	5600 1550 5600 1650
Wire Wire Line
	5600 1950 5450 1950
Wire Wire Line
	5450 1850 5600 1850
Connection ~ 5600 1850
Wire Wire Line
	5600 1850 5600 1950
Wire Wire Line
	5450 1750 5600 1750
Connection ~ 5600 1750
Wire Wire Line
	5600 1750 5600 1850
Wire Wire Line
	5450 1650 5600 1650
Connection ~ 5600 1650
Wire Wire Line
	5600 1650 5600 1750
$Comp
L Device:LED_ALT D1
U 1 1 5C2CE914
P 5100 3250
F 0 "D1" H 5092 2995 50  0000 C CNN
F 1 "LED_ALT" H 5092 3086 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 5100 3250 50  0001 C CNN
F 3 "~" H 5100 3250 50  0001 C CNN
	1    5100 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_ALT D2
U 1 1 5C2CEA54
P 5100 3650
F 0 "D2" H 5092 3395 50  0000 C CNN
F 1 "LED_ALT" H 5092 3486 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 5100 3650 50  0001 C CNN
F 3 "~" H 5100 3650 50  0001 C CNN
	1    5100 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_ALT D3
U 1 1 5C2D0969
P 5100 4050
F 0 "D3" H 5092 3795 50  0000 C CNN
F 1 "LED_ALT" H 5092 3886 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 5100 4050 50  0001 C CNN
F 3 "~" H 5100 4050 50  0001 C CNN
	1    5100 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_ALT D4
U 1 1 5C2D0A37
P 5100 4450
F 0 "D4" H 5092 4195 50  0000 C CNN
F 1 "LED_ALT" H 5092 4286 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 5100 4450 50  0001 C CNN
F 3 "~" H 5100 4450 50  0001 C CNN
	1    5100 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_ALT D5
U 1 1 5C2D0A3D
P 5100 4850
F 0 "D5" H 5092 4595 50  0000 C CNN
F 1 "LED_ALT" H 5092 4686 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 5100 4850 50  0001 C CNN
F 3 "~" H 5100 4850 50  0001 C CNN
	1    5100 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 2400 4250 2400
Wire Wire Line
	4250 2400 4250 3250
Wire Wire Line
	4250 3250 4950 3250
Wire Wire Line
	4750 2500 4350 2500
Wire Wire Line
	4350 2500 4350 3650
Wire Wire Line
	4350 3650 4950 3650
Wire Wire Line
	4750 2600 4450 2600
Wire Wire Line
	4450 2600 4450 4050
Wire Wire Line
	4450 4050 4950 4050
Wire Wire Line
	4750 2700 4550 2700
Wire Wire Line
	4550 2700 4550 4450
Wire Wire Line
	4550 4450 4950 4450
Wire Wire Line
	4600 2800 4600 4850
Wire Wire Line
	4600 4850 4950 4850
Wire Wire Line
	4600 2800 4750 2800
Wire Wire Line
	5450 2400 6000 2400
Wire Wire Line
	6000 2400 6000 3250
Wire Wire Line
	6000 3250 5250 3250
Wire Wire Line
	5450 2500 5900 2500
Wire Wire Line
	5900 2500 5900 3650
Wire Wire Line
	5900 3650 5250 3650
Wire Wire Line
	5450 2600 5850 2600
Wire Wire Line
	5850 2600 5850 4050
Wire Wire Line
	5850 4050 5250 4050
Wire Wire Line
	5450 2700 5750 2700
Wire Wire Line
	5750 2700 5750 4450
Wire Wire Line
	5750 4450 5250 4450
Wire Wire Line
	5450 2800 5650 2800
Wire Wire Line
	5650 2800 5650 4850
Wire Wire Line
	5650 4850 5250 4850
$Comp
L SynthMod:500-1142LED P7
U 1 1 5C2D37BC
P 5100 2600
F 0 "P7" H 5100 3025 50  0000 C CNN
F 1 "500-1142LED" H 5100 2934 50  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 5100 2250 50  0001 C CNN
F 3 "" H 5100 2250 50  0001 C CNN
	1    5100 2600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
