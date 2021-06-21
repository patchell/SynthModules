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
LIBS:SynthMod
LIBS:500-1088-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Dual Dual Pot Board"
Date "2016-01-21"
Rev "A"
Comp ""
Comment1 "Jim Patchell"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L POT-DUAL R1
U 1 1 56A126B3
P 3250 1350
F 0 "R1" H 3250 1050 60  0000 C CNN
F 1 "POT-DUAL" H 3400 1150 60  0000 C CNN
F 2 "Footprints:AlphaRD902DualPot" H 3250 1350 60  0001 C CNN
F 3 "" H 3250 1350 60  0000 C CNN
	1    3250 1350
	0    1    1    0   
$EndComp
$Comp
L POT-DUAL R1
U 2 1 56A1277E
P 4200 1350
F 0 "R1" H 4200 1050 60  0000 C CNN
F 1 "POT-DUAL" H 4350 1150 60  0000 C CNN
F 2 "Footprints:AlphaRD902DualPot" H 4200 1350 60  0001 C CNN
F 3 "" H 4200 1350 60  0000 C CNN
	2    4200 1350
	0    1    1    0   
$EndComp
$Comp
L POT-DUAL R2
U 1 1 56A127A8
P 3300 2500
F 0 "R2" H 3300 2200 60  0000 C CNN
F 1 "POT-DUAL" H 3450 2300 60  0000 C CNN
F 2 "Footprints:AlphaRD902DualPot" H 3300 2500 60  0001 C CNN
F 3 "" H 3300 2500 60  0000 C CNN
	1    3300 2500
	0    1    1    0   
$EndComp
$Comp
L POT-DUAL R2
U 2 1 56A127EB
P 4200 2500
F 0 "R2" H 4200 2200 60  0000 C CNN
F 1 "POT-DUAL" H 4350 2300 60  0000 C CNN
F 2 "Footprints:AlphaRD902DualPot" H 4200 2500 60  0001 C CNN
F 3 "" H 4200 2500 60  0000 C CNN
	2    4200 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 1650 4200 1800
Wire Wire Line
	4200 1800 5300 1800
Wire Wire Line
	5300 1800 5300 1750
Wire Wire Line
	5300 1750 5650 1750
Wire Wire Line
	4200 1250 4200 1200
Wire Wire Line
	4200 1200 6400 1200
Wire Wire Line
	6400 1200 6400 1750
Wire Wire Line
	4450 1450 5500 1450
Wire Wire Line
	5500 1450 5500 1850
Wire Wire Line
	5500 1850 5650 1850
Wire Wire Line
	5650 1950 3250 1950
Wire Wire Line
	3250 1950 3250 1650
Wire Wire Line
	3250 1250 3250 1000
Wire Wire Line
	3250 1000 6900 1000
Wire Wire Line
	6900 1000 6900 1950
Wire Wire Line
	3500 1450 3650 1450
Wire Wire Line
	3650 1450 3650 2050
Wire Wire Line
	3650 2050 5650 2050
Wire Wire Line
	4200 2150 4200 2400
Wire Wire Line
	4200 2150 5650 2150
Wire Wire Line
	4200 2800 4200 3000
Wire Wire Line
	4200 3000 6500 3000
Wire Wire Line
	6500 3000 6500 2150
Wire Wire Line
	4450 2600 4700 2600
Wire Wire Line
	4700 2600 4700 2250
Wire Wire Line
	4700 2250 5650 2250
Wire Wire Line
	3300 2800 3300 3200
Wire Wire Line
	3300 3200 5350 3200
Wire Wire Line
	5350 3200 5350 2350
Wire Wire Line
	5350 2350 5650 2350
Wire Wire Line
	3300 2400 3300 2300
Wire Wire Line
	3300 2300 3800 2300
Wire Wire Line
	3800 2300 3800 3350
Wire Wire Line
	3800 3350 6650 3350
Wire Wire Line
	6650 3350 6650 2350
Wire Wire Line
	3550 2600 3700 2600
Wire Wire Line
	3700 2600 3700 3500
Wire Wire Line
	3700 3500 5450 3500
Wire Wire Line
	5450 3500 5450 2450
Wire Wire Line
	5450 2450 5650 2450
Wire Notes Line
	3400 1100 3400 1450
Wire Notes Line
	3400 1100 4300 1100
Wire Notes Line
	4300 1100 4300 1450
Wire Notes Line
	3450 2600 3450 2250
Wire Notes Line
	3450 2250 4350 2250
Wire Notes Line
	4350 2250 4350 2600
$Comp
L Conn_Dual_Dual_Pot P1
U 1 1 56A540E0
P 5950 2450
F 0 "P1" H 5950 2350 60  0000 C CNN
F 1 "Conn_Dual_Dual_Pot" H 5950 2250 60  0000 C CNN
F 2 "Footprints:IDC8x2_Vert" H 5950 2450 60  0001 C CNN
F 3 "" H 5950 2450 60  0000 C CNN
	1    5950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1750 6250 1750
Wire Wire Line
	6900 1950 6250 1950
Wire Wire Line
	6500 2150 6250 2150
Wire Wire Line
	6650 2350 6250 2350
$EndSCHEMATC
