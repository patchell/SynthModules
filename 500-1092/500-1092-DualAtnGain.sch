EESchema Schematic File Version 4
LIBS:500-1092-DualAtnGain-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 500-1092-DualAtnGain-rescue:GENDUALOPAMP U101
U 1 2 56CB32E2
P 4150 2350
F 0 "U101" H 4224 2552 60  0000 C CNN
F 1 "TL052" H 4230 2478 60  0000 C CNN
F 2 "Footprints:DIP8.3" H 4150 2350 60  0001 C CNN
F 3 "" H 4150 2350 60  0000 C CNN
	1    4150 2350
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:GENDUALOPAMP U101
U 2 2 56CB3350
P 4150 3750
F 0 "U101" H 4224 3952 60  0000 C CNN
F 1 "TL052" H 4230 3878 60  0000 C CNN
F 2 "Footprints:DIP8.3" H 4150 3750 60  0001 C CNN
F 3 "" H 4150 3750 60  0000 C CNN
	2    4150 3750
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:GENDUALOPAMP U101
U 3 1 56CB338C
P 7200 2400
F 0 "U101" V 7350 3050 60  0000 C CNN
F 1 "TL052" V 7250 3050 60  0000 C CNN
F 2 "Footprints:DIP8.3" H 7200 2400 60  0001 C CNN
F 3 "" H 7200 2400 60  0000 C CNN
	3    7200 2400
	0    1    1    0   
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:RESISTOR R103
U 1 1 56CB344C
P 3300 1900
F 0 "R103" H 3400 2100 60  0000 C CNN
F 1 "100K" H 3400 2000 60  0000 C CNN
F 2 "Footprints:AXIAL0.4" H 3300 1900 60  0001 C CNN
F 3 "" H 3300 1900 60  0000 C CNN
	1    3300 1900
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:RESISTOR R105
U 1 1 56CB35CF
P 4200 1550
F 0 "R105" H 4300 1750 60  0000 C CNN
F 1 "100K" H 4300 1650 60  0000 C CNN
F 2 "Footprints:AXIAL0.4" H 4200 1550 60  0001 C CNN
F 3 "" H 4200 1550 60  0000 C CNN
	1    4200 1550
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:RESISTOR R104
U 1 1 56CB3618
P 3300 3300
F 0 "R104" H 3400 3500 60  0000 C CNN
F 1 "100K" H 3400 3400 60  0000 C CNN
F 2 "Footprints:AXIAL0.4" H 3300 3300 60  0001 C CNN
F 3 "" H 3300 3300 60  0000 C CNN
	1    3300 3300
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:RESISTOR R106
U 1 1 56CB3662
P 4200 2850
F 0 "R106" H 4300 2700 60  0000 C CNN
F 1 "100K" H 4350 2950 60  0000 C CNN
F 2 "Footprints:AXIAL0.4" H 4200 2850 60  0001 C CNN
F 3 "" H 4200 2850 60  0000 C CNN
	1    4200 2850
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:Conn_500-1092-AtnGain P101
U 1 1 56CB3BDE
P 5950 2750
F 0 "P101" H 5950 2750 60  0000 C CNN
F 1 "500-1092" H 6050 2650 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 5950 2750 60  0001 C CNN
F 3 "" H 5950 2750 60  0000 C CNN
	1    5950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1900 3850 1900
Wire Wire Line
	4100 1550 3850 1550
Wire Wire Line
	3850 1550 3850 1900
Connection ~ 3850 1900
Wire Wire Line
	2700 1250 2700 1900
Wire Wire Line
	2700 1900 3200 1900
Wire Wire Line
	3950 2000 3700 2000
Wire Wire Line
	3700 2000 3700 2250
Wire Wire Line
	3700 2250 2950 2250
Wire Wire Line
	4100 2850 3750 2850
Wire Wire Line
	3750 2850 3750 3300
Wire Wire Line
	3600 3300 3750 3300
Connection ~ 3750 3300
Wire Wire Line
	4500 2850 4850 2850
Wire Wire Line
	4850 2850 4850 3350
Wire Wire Line
	4600 3350 4850 3350
Wire Wire Line
	3800 3400 3800 3650
Wire Wire Line
	3800 3400 3950 3400
Wire Wire Line
	3800 3650 2950 3650
Wire Wire Line
	2700 2650 2700 3300
Wire Wire Line
	2700 3300 3200 3300
Wire Wire Line
	4500 1550 4800 1550
Wire Wire Line
	4800 1550 4800 1950
Wire Wire Line
	4800 1950 4600 1950
Wire Wire Line
	5750 2250 5650 2250
Wire Wire Line
	5650 2250 5650 2050
Wire Wire Line
	5650 2050 6550 2050
Wire Wire Line
	6550 2050 6550 2250
Wire Wire Line
	6550 2250 6450 2250
Wire Wire Line
	7600 2050 7600 2200
Connection ~ 6550 2050
Wire Wire Line
	5650 2950 6700 2950
Wire Wire Line
	6700 2950 6700 2550
Wire Wire Line
	6700 2550 6450 2550
Wire Wire Line
	5650 2950 5650 2550
Wire Wire Line
	5650 2550 5750 2550
Wire Wire Line
	7600 2850 7600 2900
Connection ~ 6700 2950
Wire Wire Line
	5750 2350 5300 2350
Wire Wire Line
	5300 2350 5300 1250
Wire Wire Line
	5300 1250 2700 1250
Connection ~ 2700 1900
Wire Wire Line
	6750 1550 6750 2350
Wire Wire Line
	6750 2350 6450 2350
Connection ~ 4800 1550
Wire Wire Line
	5750 2650 2700 2650
Connection ~ 2700 3300
Wire Wire Line
	6450 2650 6600 2650
Wire Wire Line
	6600 2650 6600 3350
Connection ~ 4850 3350
$Comp
L 500-1092-DualAtnGain-rescue:GND #PWR01
U 1 1 56CB3F6B
P 2700 3850
F 0 "#PWR01" H 2700 3600 50  0001 C CNN
F 1 "GND" H 2700 3700 50  0000 C CNN
F 2 "" H 2700 3850 50  0000 C CNN
F 3 "" H 2700 3850 50  0000 C CNN
	1    2700 3850
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:GND #PWR02
U 1 1 56CB3F9B
P 2700 2450
F 0 "#PWR02" H 2700 2200 50  0001 C CNN
F 1 "GND" H 2700 2300 50  0000 C CNN
F 2 "" H 2700 2450 50  0000 C CNN
F 3 "" H 2700 2450 50  0000 C CNN
	1    2700 2450
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:GND #PWR03
U 1 1 56CB403C
P 5450 2950
F 0 "#PWR03" H 5450 2700 50  0001 C CNN
F 1 "GND" H 5450 2800 50  0000 C CNN
F 2 "" H 5450 2950 50  0000 C CNN
F 3 "" H 5450 2950 50  0000 C CNN
	1    5450 2950
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:GND #PWR04
U 1 1 56CB40B5
P 6950 3100
F 0 "#PWR04" H 6950 2850 50  0001 C CNN
F 1 "GND" H 6950 2950 50  0000 C CNN
F 2 "" H 6950 3100 50  0000 C CNN
F 3 "" H 6950 3100 50  0000 C CNN
	1    6950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2450 6950 3050
Wire Wire Line
	6450 2450 6950 2450
Wire Wire Line
	5450 2950 5450 2450
Wire Wire Line
	5450 2450 5750 2450
$Comp
L 500-1092-DualAtnGain-rescue:Cap_Bypass C102
U 1 1 56CB4672
P 7600 3250
F 0 "C102" H 7625 3350 50  0000 L CNN
F 1 ".1uF" H 7625 3150 50  0000 L CNN
F 2 "Footprints:CAP-Bypass-0.3" H 7638 3100 50  0001 C CNN
F 3 "" H 7600 3250 50  0000 C CNN
	1    7600 3250
	1    0    0    -1  
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:Cap_Bypass C101
U 1 1 56CB4712
P 7200 2250
F 0 "C101" H 7225 2350 50  0000 L CNN
F 1 ".1uF" H 7225 2150 50  0000 L CNN
F 2 "Footprints:CAP-Bypass-0.3" H 7238 2100 50  0001 C CNN
F 3 "" H 7200 2250 50  0000 C CNN
	1    7200 2250
	1    0    0    -1  
$EndComp
Connection ~ 6950 2450
Wire Wire Line
	7200 2450 7200 2400
Wire Wire Line
	7200 2100 7200 2050
Connection ~ 7200 2050
Connection ~ 7600 2950
Wire Wire Line
	6950 3050 7300 3050
Wire Wire Line
	7300 3050 7300 3550
Wire Wire Line
	7300 3550 7600 3550
Wire Wire Line
	7600 3550 7600 3400
Connection ~ 6950 3050
Text Label 7000 2050 0    60   ~ 0
V+
Text Label 7350 2950 0    60   ~ 0
V-
Wire Wire Line
	3850 1900 3950 1900
Wire Wire Line
	3750 3300 3950 3300
Wire Wire Line
	6550 2050 7200 2050
Wire Wire Line
	6700 2950 7600 2950
Wire Wire Line
	2700 1900 2700 2050
Wire Wire Line
	4800 1550 6750 1550
Wire Wire Line
	2700 3300 2700 3450
Wire Wire Line
	4850 3350 6600 3350
Wire Wire Line
	6950 2450 7200 2450
Wire Wire Line
	7200 2050 7600 2050
Wire Wire Line
	7600 2950 7600 3100
Wire Wire Line
	6950 3050 6950 3100
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R101
U 1 1 5C0471C0
P 2700 2150
F 0 "R101" V 2747 2092 60  0000 R CNN
F 1 "100K" V 2853 2092 60  0000 R CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 2700 2150 60  0001 C CNN
F 3 "" H 2700 2150 60  0000 C CNN
	1    2700 2150
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R102
U 1 1 5C04730D
P 2700 3550
F 0 "R102" V 2747 3492 60  0000 R CNN
F 1 "100K" V 2853 3492 60  0000 R CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 2700 3550 60  0001 C CNN
F 3 "" H 2700 3550 60  0000 C CNN
	1    2700 3550
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R101
U 2 1 5C0473B1
P 8350 2900
F 0 "R101" H 8400 3197 60  0000 C CNN
F 1 "100K" H 8400 3091 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 8350 2900 60  0001 C CNN
F 3 "" H 8350 2900 60  0000 C CNN
	2    8350 2900
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:POT-ALPHA9mm-LedShaft R102
U 2 1 5C04743A
P 9200 2550
F 0 "R102" V 9303 2467 60  0000 R CNN
F 1 "100K" V 9197 2467 60  0000 R CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 9200 2550 60  0001 C CNN
F 3 "" H 9200 2550 60  0000 C CNN
	2    9200 2550
	0    -1   -1   0   
$EndComp
$Comp
L 500-1092-DualAtnGain-rescue:RESISTOR R1
U 1 1 5C049519
P 8200 2050
F 0 "R1" H 8300 2250 60  0000 C CNN
F 1 "30K" H 8300 2150 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 8200 2050 60  0001 C CNN
F 3 "" H 8200 2050 60  0000 C CNN
	1    8200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2050 8100 2050
Connection ~ 7600 2050
Wire Wire Line
	8500 2050 9200 2050
Wire Wire Line
	9200 2050 9200 2350
Wire Wire Line
	9200 2650 9200 2900
Wire Wire Line
	9200 2900 8550 2900
Wire Wire Line
	8250 2900 7600 2900
Connection ~ 7600 2900
Wire Wire Line
	7600 2900 7600 2950
$EndSCHEMATC