EESchema Schematic File Version 4
LIBS:500-1071-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Quad Illuminated Pot"
Date "2017-05-03"
Rev "B"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 500-1071-rescue:500-1071-quadpot_led P1
U 1 1 590AB70D
P 4150 3200
F 0 "P1" H 4200 2950 60  0000 C CNN
F 1 "500-1071-quadpot/led" H 4250 2900 60  0000 C CNN
F 2 "FootPrints:IDC-13x2" H 4150 3200 60  0001 C CNN
F 3 "" H 4150 3200 60  0001 C CNN
	1    4150 3200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R1
U 1 1 590AB760
P 2000 1550
F 0 "R1" H 2000 1250 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 2150 1350 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 2000 1550 60  0001 C CNN
F 3 "" H 2000 1550 60  0000 C CNN
	1    2000 1550
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R2
U 1 1 590AB889
P 2050 2450
F 0 "R2" H 2050 2150 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 2200 2250 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 2050 2450 60  0001 C CNN
F 3 "" H 2050 2450 60  0000 C CNN
	1    2050 2450
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R3
U 1 1 590AB8DE
P 2050 3350
F 0 "R3" H 2050 3050 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 2200 3150 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 2050 3350 60  0001 C CNN
F 3 "" H 2050 3350 60  0000 C CNN
	1    2050 3350
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R4
U 1 1 590AB94E
P 2050 4400
F 0 "R4" H 2050 4100 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 2200 4200 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 2050 4400 60  0001 C CNN
F 3 "" H 2050 4400 60  0000 C CNN
	1    2050 4400
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R2
U 2 1 590AB980
P 4300 5350
F 0 "R2" H 4300 5050 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 4450 5150 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 4300 5350 60  0001 C CNN
F 3 "" H 4300 5350 60  0000 C CNN
	2    4300 5350
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R3
U 2 1 590ABB1F
P 4300 5800
F 0 "R3" H 4300 5500 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 4450 5600 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 4300 5800 60  0001 C CNN
F 3 "" H 4300 5800 60  0000 C CNN
	2    4300 5800
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R4
U 2 1 590ABB58
P 4300 6300
F 0 "R4" H 4300 6000 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 4450 6100 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 4300 6300 60  0001 C CNN
F 3 "" H 4300 6300 60  0000 C CNN
	2    4300 6300
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R1
U 2 1 590ABB8E
P 4300 4850
F 0 "R1" H 4300 4550 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 4450 4650 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 4300 4850 60  0001 C CNN
F 3 "" H 4300 4850 60  0000 C CNN
	2    4300 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 2150 3450 2150
Wire Wire Line
	3450 2150 3450 1350
Wire Wire Line
	3450 1350 2000 1350
Wire Wire Line
	2000 1350 2000 1450
Wire Wire Line
	2000 1850 2000 2000
Wire Wire Line
	2000 2000 3350 2000
Wire Wire Line
	3350 2000 3350 2250
Wire Wire Line
	3350 2250 3750 2250
Wire Wire Line
	2250 1650 4700 1650
Wire Wire Line
	4700 1650 4700 2150
Wire Wire Line
	4700 2150 4550 2150
Wire Wire Line
	2050 2350 2050 2250
Wire Wire Line
	2050 2250 2750 2250
Wire Wire Line
	2750 2250 2750 2350
Wire Wire Line
	2750 2350 3750 2350
Wire Wire Line
	2050 2750 2050 2850
Wire Wire Line
	2050 2850 2900 2850
Wire Wire Line
	2900 2850 2900 2450
Wire Wire Line
	2900 2450 3750 2450
Wire Wire Line
	2300 2550 3250 2550
Wire Wire Line
	3250 2550 3250 1700
Wire Wire Line
	3250 1700 4800 1700
Wire Wire Line
	4800 1700 4800 2350
Wire Wire Line
	4800 2350 4550 2350
Wire Wire Line
	2050 3250 2050 2950
Wire Wire Line
	2050 2950 3300 2950
Wire Wire Line
	3300 2950 3300 2550
Wire Wire Line
	3300 2550 3750 2550
Wire Wire Line
	2050 3650 2050 3700
Wire Wire Line
	2050 3700 3350 3700
Wire Wire Line
	3350 3700 3350 2650
Wire Wire Line
	3350 2650 3750 2650
Wire Wire Line
	2300 3450 3050 3450
Wire Wire Line
	3050 3450 3050 3800
Wire Wire Line
	3050 3800 4800 3800
Wire Wire Line
	4800 3800 4800 2550
Wire Wire Line
	4800 2550 4550 2550
Wire Wire Line
	2050 4300 2050 3900
Wire Wire Line
	2050 3900 3400 3900
Wire Wire Line
	3400 3900 3400 2750
Wire Wire Line
	3400 2750 3750 2750
Wire Wire Line
	2050 4700 2050 4750
Wire Wire Line
	2050 4750 3450 4750
Wire Wire Line
	3450 4750 3450 2850
Wire Wire Line
	3450 2850 3750 2850
Wire Wire Line
	2300 4500 4900 4500
Wire Wire Line
	4900 4500 4900 2750
Wire Wire Line
	4900 2750 4550 2750
Wire Wire Line
	3750 2950 3500 2950
Wire Wire Line
	3500 2950 3500 4850
Wire Wire Line
	3500 4850 4100 4850
Wire Wire Line
	3750 3050 3550 3050
Wire Wire Line
	3550 3050 3550 5350
Wire Wire Line
	3550 5350 4100 5350
Wire Wire Line
	3750 3150 3600 3150
Wire Wire Line
	3600 3150 3600 5800
Wire Wire Line
	3600 5800 4100 5800
Wire Wire Line
	3750 3250 3650 3250
Wire Wire Line
	3650 3250 3650 6300
Wire Wire Line
	3650 6300 4100 6300
Wire Wire Line
	4550 2950 5350 2950
Wire Wire Line
	5350 2950 5350 4850
Wire Wire Line
	5350 4850 4400 4850
Wire Wire Line
	4550 3050 5250 3050
Wire Wire Line
	5250 3050 5250 5350
Wire Wire Line
	5250 5350 4400 5350
Wire Wire Line
	4550 3150 5150 3150
Wire Wire Line
	5150 3150 5150 5800
Wire Wire Line
	5150 5800 4400 5800
Wire Wire Line
	4550 3250 5000 3250
Wire Wire Line
	5000 3250 5000 6300
Wire Wire Line
	5000 6300 4400 6300
$EndSCHEMATC