EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "MIDI INTERFACE BOARD"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:DIN_5 P1
U 1 1 5C252098
P 3650 2900
F 0 "P1" H 4000 3699 60  0000 C CNN
F 1 "MIDI IN" H 4000 3593 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 3650 2900 60  0001 C CNN
F 3 "" H 3650 2900 60  0000 C CNN
	1    3650 2900
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DIN_5 P2
U 1 1 5C2520FC
P 3650 3950
F 0 "P2" H 4000 4749 60  0000 C CNN
F 1 "MIDI OUT" H 4000 4643 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 3650 3950 60  0001 C CNN
F 3 "" H 3650 3950 60  0000 C CNN
	1    3650 3950
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:500-1141 P3
U 1 1 5C254DDD
P 7050 2950
F 0 "P3" H 7075 3375 50  0000 C CNN
F 1 "500-1141" H 7075 3284 50  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 7050 2900 50  0001 C CNN
F 3 "" H 7050 2900 50  0001 C CNN
	1    7050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2500 5650 2500
Wire Wire Line
	5650 2500 5650 2850
Wire Wire Line
	5650 2850 6700 2850
Wire Wire Line
	4450 2700 6000 2700
Wire Wire Line
	6000 2700 6000 2450
Wire Wire Line
	6000 2450 7950 2450
Wire Wire Line
	7950 2450 7950 2850
Wire Wire Line
	7950 2850 7450 2850
Wire Wire Line
	4450 3550 5400 3550
Wire Wire Line
	5400 3550 5400 3050
Wire Wire Line
	5400 3050 6700 3050
Wire Wire Line
	4450 3750 7900 3750
Wire Wire Line
	7900 3750 7900 3050
Wire Wire Line
	7900 3050 7450 3050
Wire Wire Line
	6700 2750 6550 2750
Wire Wire Line
	6550 2750 6550 2950
Wire Wire Line
	6550 3150 6700 3150
Wire Wire Line
	6550 2950 6700 2950
Connection ~ 6550 2950
Wire Wire Line
	6550 2950 6550 3150
Wire Wire Line
	7450 2750 7600 2750
Wire Wire Line
	7600 2750 7600 2950
Wire Wire Line
	7600 3150 7450 3150
Wire Wire Line
	7450 2950 7600 2950
Connection ~ 7600 2950
Wire Wire Line
	7600 2950 7600 3150
Wire Wire Line
	6550 3150 6550 3400
Wire Wire Line
	6550 3400 7600 3400
Wire Wire Line
	7600 3400 7600 3150
Connection ~ 6550 3150
Connection ~ 7600 3150
Wire Wire Line
	4450 3650 4650 3650
Wire Wire Line
	6550 3650 6550 3400
Connection ~ 6550 3400
Wire Wire Line
	3550 2400 3400 2400
Wire Wire Line
	3400 2400 3400 2500
Wire Wire Line
	3400 4150 4650 4150
Wire Wire Line
	4650 4150 4650 3650
Connection ~ 4650 3650
Wire Wire Line
	4650 3650 6550 3650
Wire Wire Line
	3550 3850 3400 3850
Connection ~ 3400 3850
Wire Wire Line
	3400 3850 3400 4150
Wire Wire Line
	3550 3750 3400 3750
Connection ~ 3400 3750
Wire Wire Line
	3400 3750 3400 3850
Wire Wire Line
	3550 3650 3400 3650
Connection ~ 3400 3650
Wire Wire Line
	3400 3650 3400 3750
Wire Wire Line
	3550 3550 3400 3550
Connection ~ 3400 3550
Wire Wire Line
	3400 3550 3400 3650
Wire Wire Line
	3550 3450 3400 3450
Connection ~ 3400 3450
Wire Wire Line
	3400 3450 3400 3550
Wire Wire Line
	3550 2800 3400 2800
Connection ~ 3400 2800
Wire Wire Line
	3400 2800 3400 3450
Wire Wire Line
	3550 2700 3400 2700
Connection ~ 3400 2700
Wire Wire Line
	3400 2700 3400 2800
Wire Wire Line
	3550 2600 3400 2600
Connection ~ 3400 2600
Wire Wire Line
	3400 2600 3400 2700
Wire Wire Line
	3550 2500 3400 2500
Connection ~ 3400 2500
Wire Wire Line
	3400 2500 3400 2600
Wire Wire Line
	3250 4450 3400 4450
Wire Wire Line
	3400 4450 3400 4150
Connection ~ 3400 4150
$Comp
L SynthMod:PAD P5
U 1 1 5C262354
P 3250 4450
F 0 "P5" V 3026 4388 60  0000 C CNN
F 1 "PAD" V 3132 4388 60  0000 C CNN
F 2 "FootPrints:MountingHole_125" V 3132 4388 60  0001 C CNN
F 3 "" H 3250 4150 60  0000 C CNN
	1    3250 4450
	0    1    1    0   
$EndComp
$EndSCHEMATC
