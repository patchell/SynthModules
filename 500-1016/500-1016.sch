EESchema Schematic File Version 4
LIBS:500-1016-cache
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
L SynthMod:GENDUALOPAMP U1
U 1 2 5B4956AE
P 5450 2150
F 0 "U1" H 5524 2352 60  0000 C CNN
F 1 "TL052" H 5530 2278 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 5450 2150 60  0001 C CNN
F 3 "" H 5450 2150 60  0000 C CNN
	1    5450 2150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R1
U 1 1 5B495767
P 4700 1700
F 0 "R1" H 4800 1900 60  0000 C CNN
F 1 "100K" H 4800 1800 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4700 1700 60  0001 C CNN
F 3 "" H 4700 1700 60  0000 C CNN
	1    4700 1700
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R9
U 1 1 5B495818
P 5400 1500
F 0 "R9" H 5500 1700 60  0000 C CNN
F 1 "100K" H 5500 1600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5400 1500 60  0001 C CNN
F 3 "" H 5400 1500 60  0000 C CNN
	1    5400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1700 5150 1700
Wire Wire Line
	5150 1500 5300 1500
Wire Wire Line
	5150 1500 5150 1700
Connection ~ 5150 1700
Wire Wire Line
	4450 1700 4600 1700
Wire Wire Line
	5700 1500 6000 1500
Wire Wire Line
	6000 1500 6000 1750
Wire Wire Line
	6000 1750 5900 1750
Wire Wire Line
	4500 1800 5250 1800
$Comp
L SynthMod:Phone_Jack_wSw-PCB J3
U 1 1 5B4958C5
P 2400 1900
F 0 "J3" H 2400 1900 60  0000 C CNN
F 1 "INPUT A" H 2450 2000 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 2400 1900 60  0001 C CNN
F 3 "" H 2400 1900 60  0000 C CNN
	1    2400 1900
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U3
U 1 2 5B495935
P 7100 2200
F 0 "U3" H 7174 2402 60  0000 C CNN
F 1 "TL052" H 7180 2328 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 7100 2200 60  0001 C CNN
F 3 "" H 7100 2200 60  0000 C CNN
	1    7100 2200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R17
U 1 1 5B49599F
P 7050 1500
F 0 "R17" H 7150 1700 60  0000 C CNN
F 1 "100K" H 7150 1600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7050 1500 60  0001 C CNN
F 3 "" H 7050 1500 60  0000 C CNN
	1    7050 1500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R13
U 1 1 5B4959FE
P 6450 1350
F 0 "R13" H 6550 1550 60  0000 C CNN
F 1 "100K" H 6550 1450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6450 1350 60  0001 C CNN
F 3 "" H 6450 1350 60  0000 C CNN
	1    6450 1350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R14
U 1 1 5B495A72
P 6450 1650
F 0 "R14" H 6550 1850 60  0000 C CNN
F 1 "100K" H 6550 1750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6450 1650 60  0001 C CNN
F 3 "" H 6450 1650 60  0000 C CNN
	1    6450 1650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R15
U 1 1 5B495ABD
P 6450 1950
F 0 "R15" H 6550 2150 60  0000 C CNN
F 1 "100K" H 6550 2050 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6450 1950 60  0001 C CNN
F 3 "" H 6450 1950 60  0000 C CNN
	1    6450 1950
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R16
U 1 1 5B495B07
P 6450 2250
F 0 "R16" H 6550 2450 60  0000 C CNN
F 1 "100K" H 6550 2350 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6450 2250 60  0001 C CNN
F 3 "" H 6450 2250 60  0000 C CNN
	1    6450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1350 6800 1350
Wire Wire Line
	6800 1350 6800 1500
Wire Wire Line
	6800 2250 6750 2250
Wire Wire Line
	6750 1950 6800 1950
Connection ~ 6800 1950
Wire Wire Line
	6900 1750 6800 1750
Connection ~ 6800 1750
Wire Wire Line
	6750 1650 6800 1650
Connection ~ 6800 1650
Wire Wire Line
	6950 1500 6800 1500
Connection ~ 6800 1500
Wire Wire Line
	7350 1500 7650 1500
Wire Wire Line
	7650 1500 7650 1800
Wire Wire Line
	7550 1800 7650 1800
Wire Wire Line
	6850 1950 6850 1850
Wire Wire Line
	6850 1850 6900 1850
$Comp
L power:GND #PWR01
U 1 1 5B495C70
P 6850 1950
F 0 "#PWR01" H 6850 1700 50  0001 C CNN
F 1 "GND" H 6850 1800 50  0000 C CNN
F 2 "" H 6850 1950 50  0001 C CNN
F 3 "" H 6850 1950 50  0001 C CNN
	1    6850 1950
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U1
U 2 2 5B495DF4
P 5450 3100
F 0 "U1" H 5524 3302 60  0000 C CNN
F 1 "TL052" H 5530 3228 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 5450 3100 60  0001 C CNN
F 3 "" H 5450 3100 60  0000 C CNN
	2    5450 3100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R3
U 1 1 5B495DFA
P 4700 2650
F 0 "R3" H 4800 2850 60  0000 C CNN
F 1 "100K" H 4800 2750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4700 2650 60  0001 C CNN
F 3 "" H 4700 2650 60  0000 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R10
U 1 1 5B495E06
P 5400 2450
F 0 "R10" H 5500 2650 60  0000 C CNN
F 1 "100K" H 5500 2550 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5400 2450 60  0001 C CNN
F 3 "" H 5400 2450 60  0000 C CNN
	1    5400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2650 5150 2650
Wire Wire Line
	5150 2450 5300 2450
Wire Wire Line
	5150 2450 5150 2650
Connection ~ 5150 2650
Wire Wire Line
	4450 2150 4450 2650
Wire Wire Line
	4450 2650 4600 2650
Wire Wire Line
	5700 2450 6000 2450
Wire Wire Line
	6000 2450 6000 2700
Wire Wire Line
	6000 2700 5900 2700
Wire Wire Line
	4850 2750 5250 2750
$Comp
L SynthMod:GENDUALOPAMP U2
U 1 2 5B495FB1
P 5450 4000
F 0 "U2" H 5524 4202 60  0000 C CNN
F 1 "TL052" H 5530 4128 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 5450 4000 60  0001 C CNN
F 3 "" H 5450 4000 60  0000 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R5
U 1 1 5B495FB7
P 4700 3550
F 0 "R5" H 4800 3750 60  0000 C CNN
F 1 "100K" H 4800 3650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4700 3550 60  0001 C CNN
F 3 "" H 4700 3550 60  0000 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R11
U 1 1 5B495FC3
P 5400 3350
F 0 "R11" H 5500 3550 60  0000 C CNN
F 1 "100K" H 5500 3450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5400 3350 60  0001 C CNN
F 3 "" H 5400 3350 60  0000 C CNN
	1    5400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3550 5150 3550
Wire Wire Line
	5150 3350 5300 3350
Wire Wire Line
	5150 3350 5150 3550
Connection ~ 5150 3550
Wire Wire Line
	4450 3550 4600 3550
Wire Wire Line
	5700 3350 6000 3350
Wire Wire Line
	6000 3350 6000 3600
Wire Wire Line
	6000 3600 5900 3600
Wire Wire Line
	4450 3650 5250 3650
$Comp
L SynthMod:GENDUALOPAMP U2
U 2 2 5B4960F0
P 5450 4850
F 0 "U2" H 5524 5052 60  0000 C CNN
F 1 "TL052" H 5530 4978 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 5450 4850 60  0001 C CNN
F 3 "" H 5450 4850 60  0000 C CNN
	2    5450 4850
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R7
U 1 1 5B4960F6
P 4700 4400
F 0 "R7" H 4800 4600 60  0000 C CNN
F 1 "100K" H 4800 4500 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4700 4400 60  0001 C CNN
F 3 "" H 4700 4400 60  0000 C CNN
	1    4700 4400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R12
U 1 1 5B496102
P 5400 4200
F 0 "R12" H 5500 4400 60  0000 C CNN
F 1 "100K" H 5500 4300 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5400 4200 60  0001 C CNN
F 3 "" H 5400 4200 60  0000 C CNN
	1    5400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4400 5150 4400
Wire Wire Line
	5150 4200 5300 4200
Wire Wire Line
	5150 4200 5150 4400
Connection ~ 5150 4400
Wire Wire Line
	4450 4400 4600 4400
Wire Wire Line
	5700 4200 6000 4200
Wire Wire Line
	6000 4200 6000 4450
Wire Wire Line
	6000 4450 5900 4450
Wire Wire Line
	4200 4500 5250 4500
Wire Wire Line
	6350 1350 6050 1350
Wire Wire Line
	6050 1350 6050 1500
Connection ~ 6000 1500
Wire Wire Line
	6350 1650 6100 1650
Wire Wire Line
	6100 1650 6100 2450
Connection ~ 6000 2450
Wire Wire Line
	6350 1950 6150 1950
Wire Wire Line
	6150 1950 6150 3350
Connection ~ 6000 3350
Wire Wire Line
	6350 2250 6200 2250
Wire Wire Line
	6200 2250 6200 4200
Connection ~ 6000 4200
$Comp
L SynthMod:500-1117 P2
U 1 1 5B497062
P 3500 2250
F 0 "P2" H 3500 1850 60  0000 C CNN
F 1 "500-1117" H 3500 1950 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 3350 2250 60  0001 C CNN
F 3 "" H 3350 2250 60  0001 C CNN
	1    3500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3850 3100 3850
Wire Wire Line
	3050 3450 3050 3850
Wire Wire Line
	3800 4050 3950 4050
Wire Wire Line
	3800 3950 4450 3950
Wire Wire Line
	3100 3950 3050 3950
Wire Wire Line
	3050 3950 3050 4450
$Comp
L power:GND #PWR02
U 1 1 5B4976B5
P 3050 4450
F 0 "#PWR02" H 3050 4200 50  0001 C CNN
F 1 "GND" H 3050 4300 50  0000 C CNN
F 2 "" H 3050 4450 50  0001 C CNN
F 3 "" H 3050 4450 50  0001 C CNN
	1    3050 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5B497767
P 3950 4400
F 0 "#PWR03" H 3950 4150 50  0001 C CNN
F 1 "GND" H 3950 4250 50  0000 C CNN
F 2 "" H 3950 4400 50  0001 C CNN
F 3 "" H 3950 4400 50  0001 C CNN
	1    3950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2150 4450 2150
Wire Wire Line
	3850 2250 3950 2250
Wire Wire Line
	3150 2150 2950 2150
Wire Wire Line
	2950 2150 2950 2700
$Comp
L power:GND #PWR04
U 1 1 5B497AF4
P 2950 2700
F 0 "#PWR04" H 2950 2450 50  0001 C CNN
F 1 "GND" H 2950 2550 50  0000 C CNN
F 2 "" H 2950 2700 50  0001 C CNN
F 3 "" H 2950 2700 50  0001 C CNN
	1    2950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5B497B4A
P 3950 2650
F 0 "#PWR05" H 3950 2400 50  0001 C CNN
F 1 "GND" H 3950 2500 50  0000 C CNN
F 2 "" H 3950 2650 50  0001 C CNN
F 3 "" H 3950 2650 50  0001 C CNN
	1    3950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1500 3100 1500
Wire Wire Line
	2800 1600 2900 1600
Wire Wire Line
	2900 1600 2900 1700
Wire Wire Line
	2800 1700 2900 1700
Connection ~ 2900 1700
$Comp
L power:GND #PWR06
U 1 1 5B497DBB
P 2900 1800
F 0 "#PWR06" H 2900 1550 50  0001 C CNN
F 1 "GND" H 2900 1650 50  0000 C CNN
F 2 "" H 2900 1800 50  0001 C CNN
F 3 "" H 2900 1800 50  0001 C CNN
	1    2900 1800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J1
U 1 1 5B497E5C
P 2350 3350
F 0 "J1" H 2350 3350 60  0000 C CNN
F 1 "INPUT B" H 2400 3450 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 2350 3350 60  0001 C CNN
F 3 "" H 2350 3350 60  0000 C CNN
	1    2350 3350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J2
U 1 1 5B497EE8
P 2350 3850
F 0 "J2" H 2350 3850 60  0000 C CNN
F 1 "INPUT C" H 2400 3950 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 2350 3850 60  0001 C CNN
F 3 "" H 2350 3850 60  0000 C CNN
	1    2350 3850
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J4
U 1 1 5B497F53
P 2400 5250
F 0 "J4" H 2400 5250 60  0000 C CNN
F 1 "INPUT D" H 2450 5350 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 2400 5250 60  0001 C CNN
F 3 "" H 2400 5250 60  0000 C CNN
	1    2400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3450 3050 3450
Wire Wire Line
	4450 4850 2800 4850
Wire Wire Line
	2850 5150 2850 5050
Wire Wire Line
	2850 4950 2800 4950
Wire Wire Line
	2850 5050 2800 5050
Connection ~ 2850 5050
$Comp
L power:GND #PWR07
U 1 1 5B4985F1
P 2850 5150
F 0 "#PWR07" H 2850 4900 50  0001 C CNN
F 1 "GND" H 2850 5000 50  0000 C CNN
F 2 "" H 2850 5150 50  0001 C CNN
F 3 "" H 2850 5150 50  0001 C CNN
	1    2850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3050 2900 3050
Wire Wire Line
	2900 3050 2900 3150
Wire Wire Line
	2750 3150 2900 3150
Connection ~ 2900 3150
Wire Wire Line
	2750 3550 2900 3550
Connection ~ 2900 3550
Wire Wire Line
	2750 3650 2900 3650
Connection ~ 2900 3650
$Comp
L power:GND #PWR08
U 1 1 5B498905
P 2900 3800
F 0 "#PWR08" H 2900 3550 50  0001 C CNN
F 1 "GND" H 2900 3650 50  0000 C CNN
F 2 "" H 2900 3800 50  0001 C CNN
F 3 "" H 2900 3800 50  0001 C CNN
	1    2900 3800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J5
U 1 1 5B498ADF
P 8900 2200
F 0 "J5" H 8900 2200 60  0000 C CNN
F 1 "OUTPUT" H 8950 2300 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 8900 2200 60  0001 C CNN
F 3 "" H 8900 2200 60  0000 C CNN
	1    8900 2200
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R18
U 1 1 5B498D15
P 7900 1800
F 0 "R18" H 8000 2000 60  0000 C CNN
F 1 "1K" H 8000 1900 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7900 1800 60  0001 C CNN
F 3 "" H 7900 1800 60  0000 C CNN
	1    7900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1800 8500 1800
Connection ~ 7650 1800
Wire Wire Line
	8350 2150 8350 2000
Wire Wire Line
	8350 2000 8500 2000
$Comp
L power:GND #PWR09
U 1 1 5B49901B
P 8350 2150
F 0 "#PWR09" H 8350 1900 50  0001 C CNN
F 1 "GND" H 8350 2000 50  0000 C CNN
F 2 "" H 8350 2150 50  0001 C CNN
F 3 "" H 8350 2150 50  0001 C CNN
	1    8350 2150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:EurorackPower16pin P3
U 1 1 5B4996D9
P 8150 3450
F 0 "P3" H 8165 2810 60  0000 C CNN
F 1 "EurorackPower16pin" H 8225 2915 60  0000 C CNN
F 2 "FootPrints:IDC8x2_Vert" H 8150 3450 60  0001 C CNN
F 3 "" H 8150 3450 60  0000 C CNN
	1    8150 3450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U2
U 3 2 5B49989E
P 7150 4800
F 0 "U2" H 7224 5002 60  0000 C CNN
F 1 "TL052" H 7300 5350 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 7150 4800 60  0001 C CNN
F 3 "" H 7150 4800 60  0000 C CNN
	3    7150 4800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C3
U 1 1 5B499991
P 6900 4600
F 0 "C3" H 6925 4700 50  0000 L CNN
F 1 "0.1uF" H 6925 4500 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 6938 4450 50  0001 C CNN
F 3 "" H 6900 4600 50  0000 C CNN
	1    6900 4600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C5
U 1 1 5B499AE1
P 7650 4600
F 0 "C5" H 7675 4700 50  0000 L CNN
F 1 "0.1uF" H 7675 4500 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 7688 4450 50  0001 C CNN
F 3 "" H 7650 4600 50  0000 C CNN
	1    7650 4600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR010
U 1 1 5B499B4F
P 6800 4400
F 0 "#PWR010" H 6800 4250 50  0001 C CNN
F 1 "+15V0" V 6800 4650 50  0000 C CNN
F 2 "" H 6800 4400 50  0000 C CNN
F 3 "" H 6800 4400 50  0000 C CNN
	1    6800 4400
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR011
U 1 1 5B499C17
P 7700 4400
F 0 "#PWR011" H 7700 4250 50  0001 C CNN
F 1 "-15V0" V 7700 4650 50  0000 C CNN
F 2 "" H 7700 4400 50  0000 C CNN
F 3 "" H 7700 4400 50  0000 C CNN
	1    7700 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 4400 6900 4400
Wire Wire Line
	6900 4450 6900 4400
Connection ~ 6900 4400
Wire Wire Line
	7600 4400 7650 4400
Wire Wire Line
	7650 4450 7650 4400
Connection ~ 7650 4400
$Comp
L power:GND #PWR012
U 1 1 5B49A01B
P 6900 4750
F 0 "#PWR012" H 6900 4500 50  0001 C CNN
F 1 "GND" H 6900 4600 50  0000 C CNN
F 2 "" H 6900 4750 50  0001 C CNN
F 3 "" H 6900 4750 50  0001 C CNN
	1    6900 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5B49A093
P 7650 4750
F 0 "#PWR013" H 7650 4500 50  0001 C CNN
F 1 "GND" H 7650 4600 50  0000 C CNN
F 2 "" H 7650 4750 50  0001 C CNN
F 3 "" H 7650 4750 50  0001 C CNN
	1    7650 4750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U3
U 3 2 5B49A242
P 7150 5550
F 0 "U3" H 7224 5752 60  0000 C CNN
F 1 "TL052" H 7300 6100 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 7150 5550 60  0001 C CNN
F 3 "" H 7150 5550 60  0000 C CNN
	3    7150 5550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C4
U 1 1 5B49A248
P 6900 5350
F 0 "C4" H 6925 5450 50  0000 L CNN
F 1 "0.1uF" H 6925 5250 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 6938 5200 50  0001 C CNN
F 3 "" H 6900 5350 50  0000 C CNN
	1    6900 5350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C6
U 1 1 5B49A24E
P 7650 5350
F 0 "C6" H 7675 5450 50  0000 L CNN
F 1 "0.1uF" H 7675 5250 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 7688 5200 50  0001 C CNN
F 3 "" H 7650 5350 50  0000 C CNN
	1    7650 5350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR014
U 1 1 5B49A254
P 6800 5150
F 0 "#PWR014" H 6800 5000 50  0001 C CNN
F 1 "+15V0" V 6800 5400 50  0000 C CNN
F 2 "" H 6800 5150 50  0000 C CNN
F 3 "" H 6800 5150 50  0000 C CNN
	1    6800 5150
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR015
U 1 1 5B49A25A
P 7700 5150
F 0 "#PWR015" H 7700 5000 50  0001 C CNN
F 1 "-15V0" V 7700 5400 50  0000 C CNN
F 2 "" H 7700 5150 50  0000 C CNN
F 3 "" H 7700 5150 50  0000 C CNN
	1    7700 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 5150 6900 5150
Wire Wire Line
	6900 5200 6900 5150
Connection ~ 6900 5150
Wire Wire Line
	7600 5150 7650 5150
Wire Wire Line
	7650 5200 7650 5150
Connection ~ 7650 5150
$Comp
L power:GND #PWR016
U 1 1 5B49A266
P 6900 5500
F 0 "#PWR016" H 6900 5250 50  0001 C CNN
F 1 "GND" H 6900 5350 50  0000 C CNN
F 2 "" H 6900 5500 50  0001 C CNN
F 3 "" H 6900 5500 50  0001 C CNN
	1    6900 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5B49A26C
P 7650 5500
F 0 "#PWR017" H 7650 5250 50  0001 C CNN
F 1 "GND" H 7650 5350 50  0000 C CNN
F 2 "" H 7650 5500 50  0001 C CNN
F 3 "" H 7650 5500 50  0001 C CNN
	1    7650 5500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U1
U 3 2 5B49A2FD
P 5400 5550
F 0 "U1" H 5474 5752 60  0000 C CNN
F 1 "TL052" H 5550 6100 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 5400 5550 60  0001 C CNN
F 3 "" H 5400 5550 60  0000 C CNN
	3    5400 5550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C1
U 1 1 5B49A303
P 5150 5350
F 0 "C1" H 5175 5450 50  0000 L CNN
F 1 "0.1uF" H 5175 5250 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 5188 5200 50  0001 C CNN
F 3 "" H 5150 5350 50  0000 C CNN
	1    5150 5350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C2
U 1 1 5B49A309
P 5900 5350
F 0 "C2" H 5925 5450 50  0000 L CNN
F 1 "0.1uF" H 5925 5250 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 5938 5200 50  0001 C CNN
F 3 "" H 5900 5350 50  0000 C CNN
	1    5900 5350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR018
U 1 1 5B49A30F
P 5050 5150
F 0 "#PWR018" H 5050 5000 50  0001 C CNN
F 1 "+15V0" V 5050 5400 50  0000 C CNN
F 2 "" H 5050 5150 50  0000 C CNN
F 3 "" H 5050 5150 50  0000 C CNN
	1    5050 5150
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR019
U 1 1 5B49A315
P 5950 5150
F 0 "#PWR019" H 5950 5000 50  0001 C CNN
F 1 "-15V0" V 5950 5400 50  0000 C CNN
F 2 "" H 5950 5150 50  0000 C CNN
F 3 "" H 5950 5150 50  0000 C CNN
	1    5950 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5150 5150 5150
Wire Wire Line
	5150 5200 5150 5150
Connection ~ 5150 5150
Wire Wire Line
	5850 5150 5900 5150
Wire Wire Line
	5900 5200 5900 5150
Connection ~ 5900 5150
$Comp
L power:GND #PWR020
U 1 1 5B49A321
P 5150 5500
F 0 "#PWR020" H 5150 5250 50  0001 C CNN
F 1 "GND" H 5150 5350 50  0000 C CNN
F 2 "" H 5150 5500 50  0001 C CNN
F 3 "" H 5150 5500 50  0001 C CNN
	1    5150 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5B49A327
P 5900 5500
F 0 "#PWR021" H 5900 5250 50  0001 C CNN
F 1 "GND" H 5900 5350 50  0000 C CNN
F 2 "" H 5900 5500 50  0001 C CNN
F 3 "" H 5900 5500 50  0001 C CNN
	1    5900 5500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR022
U 1 1 5B49A37D
P 8650 3150
F 0 "#PWR022" H 8650 3000 50  0001 C CNN
F 1 "-15V0" V 8650 3400 50  0000 C CNN
F 2 "" H 8650 3150 50  0000 C CNN
F 3 "" H 8650 3150 50  0000 C CNN
	1    8650 3150
	0    1    1    0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR023
U 1 1 5B49A4AA
P 7750 3150
F 0 "#PWR023" H 7750 3000 50  0001 C CNN
F 1 "-15V0" V 7750 3400 50  0000 C CNN
F 2 "" H 7750 3150 50  0000 C CNN
F 3 "" H 7750 3150 50  0000 C CNN
	1    7750 3150
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR024
U 1 1 5B49A52D
P 7850 3550
F 0 "#PWR024" H 7850 3400 50  0001 C CNN
F 1 "+15V0" V 7850 3800 50  0000 C CNN
F 2 "" H 7850 3550 50  0000 C CNN
F 3 "" H 7850 3550 50  0000 C CNN
	1    7850 3550
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR025
U 1 1 5B49A5B0
P 8700 3550
F 0 "#PWR025" H 8700 3400 50  0001 C CNN
F 1 "+15V0" V 8700 3800 50  0000 C CNN
F 2 "" H 8700 3550 50  0000 C CNN
F 3 "" H 8700 3550 50  0000 C CNN
	1    8700 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 3550 8450 3550
Wire Wire Line
	7850 3550 8050 3550
Wire Wire Line
	7750 3150 8050 3150
Wire Wire Line
	8650 3150 8450 3150
Wire Wire Line
	8450 3250 8600 3250
Wire Wire Line
	8600 3250 8600 3350
Wire Wire Line
	8050 3250 7950 3250
Wire Wire Line
	7950 3250 7950 3350
Wire Wire Line
	8450 3350 8600 3350
Connection ~ 8600 3350
Wire Wire Line
	8450 3450 8600 3450
Connection ~ 8600 3450
Wire Wire Line
	8050 3450 7950 3450
Connection ~ 7950 3450
Wire Wire Line
	8050 3350 7950 3350
Connection ~ 7950 3350
$Comp
L power:GND #PWR026
U 1 1 5B49AEB4
P 7950 4100
F 0 "#PWR026" H 7950 3850 50  0001 C CNN
F 1 "GND" H 7950 3950 50  0000 C CNN
F 2 "" H 7950 4100 50  0001 C CNN
F 3 "" H 7950 4100 50  0001 C CNN
	1    7950 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5B49AF37
P 8600 4150
F 0 "#PWR027" H 8600 3900 50  0001 C CNN
F 1 "GND" H 8600 4000 50  0000 C CNN
F 2 "" H 8600 4150 50  0001 C CNN
F 3 "" H 8600 4150 50  0001 C CNN
	1    8600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1500 4450 1700
Wire Wire Line
	4500 2050 3850 2050
Wire Wire Line
	4500 1800 4500 2050
Wire Wire Line
	3150 2050 3100 2050
Wire Wire Line
	3100 2050 3100 1500
Connection ~ 3100 1500
Wire Wire Line
	4450 2950 2750 2950
Connection ~ 4450 2650
Wire Wire Line
	3950 2250 3950 2650
Wire Wire Line
	3150 2250 3050 2250
Wire Wire Line
	3050 2250 3050 2850
Wire Wire Line
	3050 2850 4850 2850
Wire Wire Line
	4850 2850 4850 2750
Wire Wire Line
	3950 4050 3950 4400
$Comp
L SynthMod:500-1117 P1
U 1 1 5B497129
P 3450 4050
F 0 "P1" H 3450 3650 60  0000 C CNN
F 1 "500-1117" H 3450 3750 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 3300 4050 60  0001 C CNN
F 3 "" H 3300 4050 60  0001 C CNN
	1    3450 4050
	1    0    0    -1  
$EndComp
Connection ~ 3050 3450
Wire Wire Line
	4450 3450 4450 3550
Wire Wire Line
	4450 3650 4450 3850
Wire Wire Line
	4450 3850 3800 3850
Wire Wire Line
	4450 3950 4450 4400
Connection ~ 4450 4400
Wire Wire Line
	4200 4500 4200 4700
Wire Wire Line
	4200 4700 2850 4700
Wire Wire Line
	2850 4700 2850 4050
Wire Wire Line
	2850 4050 3100 4050
Wire Wire Line
	5150 1700 5250 1700
Wire Wire Line
	6800 1950 6800 2250
Wire Wire Line
	6800 1750 6800 1950
Wire Wire Line
	6800 1650 6800 1750
Wire Wire Line
	6800 1500 6800 1650
Wire Wire Line
	5150 2650 5250 2650
Wire Wire Line
	5150 3550 5250 3550
Wire Wire Line
	5150 4400 5250 4400
Wire Wire Line
	6000 1500 6050 1500
Wire Wire Line
	6000 2450 6100 2450
Wire Wire Line
	6000 3350 6150 3350
Wire Wire Line
	6000 4200 6200 4200
Wire Wire Line
	2900 1700 2900 1800
Wire Wire Line
	2850 5050 2850 4950
Wire Wire Line
	2900 3150 2900 3550
Wire Wire Line
	2900 3550 2900 3650
Wire Wire Line
	2900 3650 2900 3800
Wire Wire Line
	7650 1800 7800 1800
Wire Wire Line
	6900 4400 6950 4400
Wire Wire Line
	7650 4400 7700 4400
Wire Wire Line
	6900 5150 6950 5150
Wire Wire Line
	7650 5150 7700 5150
Wire Wire Line
	5150 5150 5200 5150
Wire Wire Line
	5900 5150 5950 5150
Wire Wire Line
	8600 3350 8600 3450
Wire Wire Line
	8600 3450 8600 4150
Wire Wire Line
	7950 3450 7950 4100
Wire Wire Line
	7950 3350 7950 3450
Wire Wire Line
	3100 1500 4450 1500
Wire Wire Line
	4450 2650 4450 2950
Wire Wire Line
	3050 3450 4450 3450
Wire Wire Line
	4450 4400 4450 4850
$EndSCHEMATC