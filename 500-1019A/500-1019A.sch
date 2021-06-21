EESchema Schematic File Version 5
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "NOOTA VCA"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:Phone_Jack_wSw-PCB J2
U 1 1 5B3C3EF6
P 2650 2700
F 0 "J2" H 2650 2800 60  0000 C CNN
F 1 "IN" H 2650 2700 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 2650 2700 60  0001 C CNN
F 3 "" H 2650 2700 60  0000 C CNN
	1    2650 2700
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J1
U 1 1 5B3C3F88
P 1375 5200
F 0 "J1" H 1375 5200 60  0000 C CNN
F 1 "CV" H 1375 5300 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 1375 5200 60  0001 C CNN
F 3 "" H 1375 5200 60  0000 C CNN
	1    1375 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2300 3900 2850
Wire Wire Line
	6000 2850 6000 3000
Connection ~ 5050 4000
$Comp
L SynthMod:RESISTOR R7
U 1 1 5B3C4846
P 4800 1900
F 0 "R7" V 4850 1800 60  0000 C CNN
F 1 "30k" V 4950 1750 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4800 1900 60  0001 C CNN
F 3 "" H 4800 1900 60  0000 C CNN
	1    4800 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2200 4800 2850
Wire Wire Line
	3750 2300 3900 2300
Connection ~ 3900 2850
Wire Wire Line
	4400 3550 5500 3300
$Comp
L SynthMod:RESISTOR R9
U 1 1 5B3C49DF
P 5200 1700
F 0 "R9" V 5300 1850 60  0000 C CNN
F 1 "15K" V 5400 1900 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 5200 1700 60  0001 C CNN
F 3 "" H 5200 1700 60  0000 C CNN
	1    5200 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 1800 4800 1450
Wire Wire Line
	4800 1450 5200 1450
Wire Wire Line
	5200 1350 5200 1450
$Comp
L SynthMod:RESISTOR R8
U 1 1 5B3C4A5C
P 4900 4250
F 0 "R8" H 4900 3950 60  0000 C CNN
F 1 "15k" H 5050 4050 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4900 4250 60  0001 C CNN
F 3 "" H 4900 4250 60  0000 C CNN
	1    4900 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 4150 4900 4000
Connection ~ 4900 4000
Wire Wire Line
	4900 4550 4900 4950
$Comp
L power:GND #PWR01
U 1 1 5B3C4C08
P 5350 2600
F 0 "#PWR01" H 5350 2350 50  0001 C CNN
F 1 "GND" H 5350 2450 50  0000 C CNN
F 2 "" H 5350 2600 50  0001 C CNN
F 3 "" H 5350 2600 50  0001 C CNN
	1    5350 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5B3C4C3B
P 5800 2600
F 0 "#PWR02" H 5800 2350 50  0001 C CNN
F 1 "GND" H 5800 2450 50  0000 C CNN
F 2 "" H 5800 2600 50  0001 C CNN
F 3 "" H 5800 2600 50  0001 C CNN
	1    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U1
U 1 2 5B3C4C5E
P 6850 3450
F 0 "U1" H 6924 3652 60  0000 C CNN
F 1 "TL052" H 6930 3578 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 6850 3450 60  0001 C CNN
F 3 "" H 6850 3450 60  0000 C CNN
	1    6850 3450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R11
U 1 1 5B3C4D5F
P 7050 2650
F 0 "R11" H 7075 2425 60  0000 C CNN
F 1 "20K" H 7100 2525 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7050 2650 60  0001 C CNN
F 3 "" H 7050 2650 60  0000 C CNN
	1    7050 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 3000 6550 3000
Connection ~ 6000 3000
Wire Wire Line
	6750 2650 6550 2650
Wire Wire Line
	6550 2650 6550 3000
Connection ~ 6550 3000
Wire Wire Line
	7150 2650 7500 2650
Wire Wire Line
	7500 2650 7500 3050
Wire Wire Line
	7300 3050 7500 3050
Wire Wire Line
	6550 3250 6550 3100
Wire Wire Line
	6550 3100 6650 3100
$Comp
L power:GND #PWR03
U 1 1 5B3C4F03
P 6550 3250
F 0 "#PWR03" H 6550 3000 50  0001 C CNN
F 1 "GND" H 6550 3100 50  0000 C CNN
F 2 "" H 6550 3250 50  0001 C CNN
F 3 "" H 6550 3250 50  0001 C CNN
	1    6550 3250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R12
U 1 1 5B3C4F54
P 7950 3050
F 0 "R12" H 8050 2850 60  0000 C CNN
F 1 "1K" H 8075 2925 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7950 3050 60  0001 C CNN
F 3 "" H 7950 3050 60  0000 C CNN
	1    7950 3050
	-1   0    0    1   
$EndComp
Connection ~ 7500 3050
$Comp
L SynthMod:Phone_Jack_wSw-PCB J3
U 1 1 5B3C5018
P 8900 3450
F 0 "J3" H 8900 3450 60  0000 C CNN
F 1 "OUT" H 8900 3450 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 8900 3450 60  0001 C CNN
F 3 "" H 8900 3450 60  0000 C CNN
	1    8900 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8500 3050 8050 3050
Wire Wire Line
	8300 3400 8300 3250
Wire Wire Line
	8300 3250 8500 3250
$Comp
L power:GND #PWR04
U 1 1 5B3C5143
P 8300 3400
F 0 "#PWR04" H 8300 3150 50  0001 C CNN
F 1 "GND" H 8300 3250 50  0000 C CNN
F 2 "" H 8300 3400 50  0001 C CNN
F 3 "" H 8300 3400 50  0001 C CNN
	1    8300 3400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R5
U 1 1 5B3C521B
P 3650 2300
F 0 "R5" H 3750 2100 60  0000 C CNN
F 1 "20K" H 3800 2200 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3650 2300 60  0001 C CNN
F 3 "" H 3650 2300 60  0000 C CNN
	1    3650 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 2300 3350 2300
Connection ~ 3900 2300
Wire Wire Line
	3200 2400 3200 2500
Wire Wire Line
	3200 2500 3050 2500
Wire Wire Line
	3050 2400 3200 2400
Connection ~ 3200 2500
$Comp
L power:GND #PWR05
U 1 1 5B3C53D4
P 3200 2650
F 0 "#PWR05" H 3200 2400 50  0001 C CNN
F 1 "GND" H 3200 2500 50  0000 C CNN
F 2 "" H 3200 2650 50  0001 C CNN
F 3 "" H 3200 2650 50  0001 C CNN
	1    3200 2650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U1
U 2 2 5B3C5550
P 2575 5250
F 0 "U1" H 2649 5452 60  0000 C CNN
F 1 "TL052" H 2655 5378 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 2575 5250 60  0001 C CNN
F 3 "" H 2575 5250 60  0000 C CNN
	2    2575 5250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R2
U 1 1 5B3C5637
P 2125 4800
F 0 "R2" H 2225 4625 60  0000 C CNN
F 1 "100K" H 2225 4700 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 2125 4800 60  0001 C CNN
F 3 "" H 2125 4800 60  0000 C CNN
	1    2125 4800
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R3
U 1 1 5B3C572A
P 2775 4100
F 0 "R3" H 2850 3900 60  0000 C CNN
F 1 "100K" H 2900 4000 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 2775 4100 60  0001 C CNN
F 3 "" H 2775 4100 60  0000 C CNN
	1    2775 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1775 4800 1825 4800
Wire Wire Line
	2225 4800 2275 4800
Wire Wire Line
	2175 4500 2275 4500
Wire Wire Line
	2275 4500 2275 4800
Connection ~ 2275 4800
Wire Wire Line
	2275 5000 2275 4900
Wire Wire Line
	2275 4900 2375 4900
Wire Wire Line
	1875 4900 1875 5000
Wire Wire Line
	1875 4900 1775 4900
Wire Wire Line
	1775 5000 1875 5000
Connection ~ 1875 5000
$Comp
L power:GND #PWR06
U 1 1 5B3C59BA
P 2275 5000
F 0 "#PWR06" H 2275 4750 50  0001 C CNN
F 1 "GND" H 2275 4850 50  0000 C CNN
F 2 "" H 2275 5000 50  0001 C CNN
F 3 "" H 2275 5000 50  0001 C CNN
	1    2275 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5B3C59FE
P 1875 5100
F 0 "#PWR07" H 1875 4850 50  0001 C CNN
F 1 "GND" H 1875 4950 50  0000 C CNN
F 2 "" H 1875 5100 50  0001 C CNN
F 3 "" H 1875 5100 50  0001 C CNN
	1    1875 5100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R1
U 1 1 5B3C5E10
P 2075 4500
F 0 "R1" H 2150 4325 60  0000 C CNN
F 1 "150K" H 2200 4425 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 2075 4500 60  0001 C CNN
F 3 "" H 2075 4500 60  0000 C CNN
	1    2075 4500
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:-15V0 #PWR08
U 1 1 5B3C5F0E
P 1675 4500
F 0 "#PWR08" H 1675 4350 50  0001 C CNN
F 1 "-15V0" H 1675 4650 50  0000 C CNN
F 2 "" H 1675 4500 50  0000 C CNN
F 3 "" H 1675 4500 50  0000 C CNN
	1    1675 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1675 4500 1775 4500
Text Notes 3325 4950 0    60   ~ 0
Vin:0  Vo:+10\nVin:10  Vo:0
$Comp
L SynthMod:RESISTOR R10
U 1 1 5B3C6041
P 6450 4400
F 0 "R10" H 6450 4100 60  0000 C CNN
F 1 "300" H 6600 4200 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6450 4400 60  0001 C CNN
F 3 "" H 6450 4400 60  0000 C CNN
	1    6450 4400
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R4
U 1 1 5B3C6114
P 3675 4100
F 0 "R4" V 3625 3950 60  0000 C CNN
F 1 "10K" V 3725 3950 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3675 4100 60  0001 C CNN
F 3 "" H 3675 4100 60  0000 C CNN
	1    3675 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 3550 6450 4300
Wire Wire Line
	5500 3550 6450 3550
$Comp
L SynthMod:RESISTOR R6
U 1 1 5B3C628B
P 4000 4250
F 0 "R6" V 4200 4400 60  0000 C CNN
F 1 "300" V 4100 4400 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4000 4250 60  0001 C CNN
F 3 "" H 4000 4250 60  0000 C CNN
	1    4000 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4150 4000 3550
Wire Wire Line
	3675 3550 4000 3550
$Comp
L power:GND #PWR09
U 1 1 5B3C6399
P 6450 4700
F 0 "#PWR09" H 6450 4450 50  0001 C CNN
F 1 "GND" H 6450 4550 50  0000 C CNN
F 2 "" H 6450 4700 50  0001 C CNN
F 3 "" H 6450 4700 50  0001 C CNN
	1    6450 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5B3C63E9
P 4000 4550
F 0 "#PWR010" H 4000 4300 50  0001 C CNN
F 1 "GND" H 4000 4400 50  0000 C CNN
F 2 "" H 4000 4550 50  0001 C CNN
F 3 "" H 4000 4550 50  0001 C CNN
	1    4000 4550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR011
U 1 1 5B3C6502
P 4900 4950
F 0 "#PWR011" H 4900 4800 50  0001 C CNN
F 1 "-15V0" H 4900 5100 50  0000 C CNN
F 2 "" H 4900 4950 50  0000 C CNN
F 3 "" H 4900 4950 50  0000 C CNN
	1    4900 4950
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:+15V0 #PWR012
U 1 1 5B3C653D
P 5200 1350
F 0 "#PWR012" H 5200 1200 50  0001 C CNN
F 1 "+15V0" H 5200 1500 50  0000 C CNN
F 2 "" H 5200 1350 50  0000 C CNN
F 3 "" H 5200 1350 50  0000 C CNN
	1    5200 1350
	1    0    0    -1  
$EndComp
Connection ~ 5200 1450
Connection ~ 4400 3550
$Comp
L SynthMod:GENDUALOPAMP U1
U 3 2 5B3C671D
P 7450 4400
F 0 "U1" H 7524 4602 60  0000 C CNN
F 1 "TL052" H 7530 4528 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 7450 4400 60  0001 C CNN
F 3 "" H 7450 4400 60  0000 C CNN
	3    7450 4400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C1
U 1 1 5B3C67C1
P 7150 4300
F 0 "C1" H 7175 4400 50  0000 L CNN
F 1 "0.1uF" H 7175 4200 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 7188 4150 50  0001 C CNN
F 3 "" H 7150 4300 50  0000 C CNN
	1    7150 4300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C2
U 1 1 5B3C68AD
P 8000 4300
F 0 "C2" H 8025 4400 50  0000 L CNN
F 1 "0.1uF" H 8025 4200 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 8038 4150 50  0001 C CNN
F 3 "" H 8000 4300 50  0000 C CNN
	1    8000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4000 7150 4000
Wire Wire Line
	7150 4000 7150 4150
Wire Wire Line
	7900 4000 8000 4000
Wire Wire Line
	8000 4000 8000 4150
Wire Wire Line
	8000 4550 8000 4450
Wire Wire Line
	7150 4550 7150 4450
$Comp
L power:GND #PWR013
U 1 1 5B3C6B31
P 7150 4550
F 0 "#PWR013" H 7150 4300 50  0001 C CNN
F 1 "GND" H 7150 4400 50  0000 C CNN
F 2 "" H 7150 4550 50  0001 C CNN
F 3 "" H 7150 4550 50  0001 C CNN
	1    7150 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5B3C6B8A
P 8000 4550
F 0 "#PWR014" H 8000 4300 50  0001 C CNN
F 1 "GND" H 8000 4400 50  0000 C CNN
F 2 "" H 8000 4550 50  0001 C CNN
F 3 "" H 8000 4550 50  0001 C CNN
	1    8000 4550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR015
U 1 1 5B3C6C6F
P 8100 4000
F 0 "#PWR015" H 8100 3850 50  0001 C CNN
F 1 "-15V0" H 8100 4150 50  0000 C CNN
F 2 "" H 8100 4000 50  0000 C CNN
F 3 "" H 8100 4000 50  0000 C CNN
	1    8100 4000
	0    1    1    0   
$EndComp
Connection ~ 8000 4000
$Comp
L SynthMod:+15V0 #PWR016
U 1 1 5B3C6D39
P 7000 4000
F 0 "#PWR016" H 7000 3850 50  0001 C CNN
F 1 "+15V0" H 7000 4150 50  0000 C CNN
F 2 "" H 7000 4000 50  0000 C CNN
F 3 "" H 7000 4000 50  0000 C CNN
	1    7000 4000
	0    -1   -1   0   
$EndComp
Connection ~ 7150 4000
$Comp
L SynthMod:EurorackPower16pin P1
U 1 1 5B3C6DEC
P 9250 4300
F 0 "P1" H 9265 3660 60  0000 C CNN
F 1 "EurorackPower16pin" H 9325 3765 60  0000 C CNN
F 2 "FootPrints:IDC8x2_Vert" H 9250 4300 60  0001 C CNN
F 3 "" H 9250 4300 60  0000 C CNN
	1    9250 4300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR017
U 1 1 5B3C6EA4
P 9700 4000
F 0 "#PWR017" H 9700 3850 50  0001 C CNN
F 1 "-15V0" H 9700 4150 50  0000 C CNN
F 2 "" H 9700 4000 50  0000 C CNN
F 3 "" H 9700 4000 50  0000 C CNN
	1    9700 4000
	0    1    1    0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR018
U 1 1 5B3C6F00
P 8950 4400
F 0 "#PWR018" H 8950 4250 50  0001 C CNN
F 1 "+15V0" H 8950 4550 50  0000 C CNN
F 2 "" H 8950 4400 50  0000 C CNN
F 3 "" H 8950 4400 50  0000 C CNN
	1    8950 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 4400 9150 4400
Wire Wire Line
	9700 4000 9550 4000
$Comp
L SynthMod:-15V0 #PWR019
U 1 1 5B3C7043
P 8950 4000
F 0 "#PWR019" H 8950 3850 50  0001 C CNN
F 1 "-15V0" H 8950 4150 50  0000 C CNN
F 2 "" H 8950 4000 50  0000 C CNN
F 3 "" H 8950 4000 50  0000 C CNN
	1    8950 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 4000 9150 4000
$Comp
L SynthMod:+15V0 #PWR020
U 1 1 5B3C7114
P 9750 4400
F 0 "#PWR020" H 9750 4250 50  0001 C CNN
F 1 "+15V0" H 9750 4550 50  0000 C CNN
F 2 "" H 9750 4400 50  0000 C CNN
F 3 "" H 9750 4400 50  0000 C CNN
	1    9750 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 4400 9550 4400
Wire Wire Line
	9550 4100 9650 4100
Wire Wire Line
	9650 4100 9650 4200
Wire Wire Line
	9550 4300 9650 4300
Connection ~ 9650 4300
Wire Wire Line
	9550 4200 9650 4200
Connection ~ 9650 4200
Wire Wire Line
	9150 4100 9050 4100
Wire Wire Line
	9050 4100 9050 4200
Wire Wire Line
	9050 4200 9150 4200
Connection ~ 9050 4200
Wire Wire Line
	9050 4300 9150 4300
Connection ~ 9050 4300
$Comp
L power:GND #PWR021
U 1 1 5B3C74D5
P 9050 5050
F 0 "#PWR021" H 9050 4800 50  0001 C CNN
F 1 "GND" H 9050 4900 50  0000 C CNN
F 2 "" H 9050 5050 50  0001 C CNN
F 3 "" H 9050 5050 50  0001 C CNN
	1    9050 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5B3C7531
P 9650 5050
F 0 "#PWR022" H 9650 4800 50  0001 C CNN
F 1 "GND" H 9650 4900 50  0000 C CNN
F 2 "" H 9650 5050 50  0001 C CNN
F 3 "" H 9650 5050 50  0001 C CNN
	1    9650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3675 4000 3675 3550
Connection ~ 4000 3550
$Comp
L SynthMod:RESISTOR R15
U 1 1 5B3D2BD6
P 3400 3500
F 0 "R15" H 3400 3200 60  0000 C CNN
F 1 "300" H 3550 3300 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3400 3500 60  0001 C CNN
F 3 "" H 3400 3500 60  0000 C CNN
	1    3400 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5B3D2C80
P 3400 3800
F 0 "#PWR023" H 3400 3550 50  0001 C CNN
F 1 "GND" H 3400 3650 50  0000 C CNN
F 2 "" H 3400 3800 50  0001 C CNN
F 3 "" H 3400 3800 50  0001 C CNN
	1    3400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3350 3400 3350
Wire Wire Line
	3400 3350 3400 3400
$Comp
L SynthMod:RESISTOR R14
U 1 1 5B3D2D62
P 3200 3350
F 0 "R14" H 3300 3150 60  0000 C CNN
F 1 "62K" H 3300 3250 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3200 3350 60  0001 C CNN
F 3 "" H 3200 3350 60  0000 C CNN
	1    3200 3350
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:POT-3006 R13
U 1 1 5B3D2DE4
P 2500 3250
F 0 "R13" H 2500 2950 60  0000 C CNN
F 1 "10K" H 2650 3050 60  0000 C CNN
F 2 "FootPrints:Trimpot" H 2500 3250 60  0001 C CNN
F 3 "" H 2500 3250 60  0000 C CNN
	1    2500 3250
	0    1    1    0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR024
U 1 1 5B3D2F8D
P 2500 3550
F 0 "#PWR024" H 2500 3400 50  0001 C CNN
F 1 "-15V0" H 2500 3700 50  0000 C CNN
F 2 "" H 2500 3550 50  0000 C CNN
F 3 "" H 2500 3550 50  0000 C CNN
	1    2500 3550
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:+15V0 #PWR025
U 1 1 5B3D302E
P 2500 3150
F 0 "#PWR025" H 2500 3000 50  0001 C CNN
F 1 "+15V0" H 2500 3300 50  0000 C CNN
F 2 "" H 2500 3150 50  0000 C CNN
F 3 "" H 2500 3150 50  0000 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3350 2900 3350
Connection ~ 3400 3350
Wire Wire Line
	3900 2850 3900 4000
Wire Wire Line
	4900 4000 5050 4000
Wire Wire Line
	6000 3000 6000 4000
Wire Wire Line
	6550 3000 6650 3000
Wire Wire Line
	7500 3050 7650 3050
Wire Wire Line
	3900 2300 4750 2300
Wire Wire Line
	3200 2500 3200 2650
Wire Wire Line
	2275 4800 2375 4800
Wire Wire Line
	1875 5000 1875 5100
Wire Wire Line
	5200 1450 5200 1600
Wire Wire Line
	8000 4000 8100 4000
Wire Wire Line
	7150 4000 7250 4000
Wire Wire Line
	9650 4300 9650 5050
Wire Wire Line
	9650 4200 9650 4300
Wire Wire Line
	9050 4200 9050 4300
Wire Wire Line
	9050 4300 9050 5050
Wire Wire Line
	4000 3550 4400 3550
Wire Wire Line
	3400 3350 4400 3350
Text Notes 1125 5475 0    60   ~ 0
For +/- 12V operation, change\nR1 to 120K
Text Notes 1125 5875 0    60   ~ 0
Control Voltage Range:\n0V = Minimum Gain\n10V = Maximum Gain
Text Label 3475 4475 0    60   ~ 0
Vin
Wire Wire Line
	3025 4850 3075 4850
$Comp
L Device:D_ALT D2
U 1 1 5BCD3068
P 3275 4650
F 0 "D2" V 3200 4750 50  0000 L CNN
F 1 "1N914" V 3300 4750 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 3275 4650 50  0001 C CNN
F 3 "~" H 3275 4650 50  0001 C CNN
	1    3275 4650
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D1
U 1 1 5BCD3307
P 3075 4650
F 0 "D1" V 3050 4825 50  0000 L CNN
F 1 "1N914" V 3150 4775 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 3075 4650 50  0001 C CNN
F 3 "~" H 3075 4650 50  0001 C CNN
	1    3075 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3275 4800 3275 4850
Wire Wire Line
	3075 4800 3075 4850
Connection ~ 3075 4850
Wire Wire Line
	3075 4850 3275 4850
Wire Wire Line
	3075 4500 3075 4400
Wire Wire Line
	3075 4400 2275 4400
Wire Wire Line
	2275 4400 2275 4500
Connection ~ 2275 4500
Wire Wire Line
	2275 4400 2275 4100
Wire Wire Line
	2275 4100 2475 4100
Connection ~ 2275 4400
Wire Wire Line
	3275 4500 3275 4475
Wire Wire Line
	3275 4100 2875 4100
Wire Wire Line
	3275 4475 3675 4475
Wire Wire Line
	3675 4475 3675 4400
Connection ~ 3275 4475
Wire Wire Line
	3275 4475 3275 4100
Wire Wire Line
	4600 4000 4900 4000
Wire Wire Line
	4400 3550 4400 3700
Wire Wire Line
	3900 4000 4200 4000
Wire Wire Line
	5050 4000 5300 4000
Wire Wire Line
	5500 3550 5500 3700
Wire Wire Line
	5700 4000 6000 4000
Wire Wire Line
	4400 3150 4400 3350
Wire Wire Line
	3900 2850 4200 2850
Wire Wire Line
	5500 3150 5500 3300
Wire Wire Line
	4800 2850 5300 2850
Wire Wire Line
	5700 2850 6000 2850
Wire Wire Line
	5650 2300 5800 2300
Wire Wire Line
	5050 2500 5050 4000
Wire Wire Line
	5050 2100 5050 2050
Wire Wire Line
	5050 2050 5200 2050
Wire Wire Line
	5200 2050 5200 2000
Wire Wire Line
	5200 2050 5350 2050
Wire Wire Line
	5350 2050 5350 2100
Connection ~ 5200 2050
Wire Wire Line
	5800 2300 5800 2600
Wire Wire Line
	5350 2500 5350 2600
$Comp
L SynthMod:DUAL_2N3906 Q3
U 1 1 5DCB276E
P 4950 2300
F 0 "Q3" H 4850 2500 60  0000 L CNN
F 1 "2N3906" H 4400 2250 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 4950 2100 60  0001 C CNN
F 3 "" H 4950 2100 60  0000 C CNN
	1    4950 2300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DUAL_2N3906 Q3
U 2 1 5DCB5004
P 5450 2300
F 0 "Q3" H 5150 2450 60  0000 L CNN
F 1 "2N3906" H 5000 2350 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 5450 2100 60  0001 C CNN
F 3 "" H 5450 2100 60  0000 C CNN
	2    5450 2300
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:DUAL_2N3906 Q2
U 1 1 5DCB75C7
P 4400 2950
F 0 "Q2" V 4749 2950 60  0000 C CNN
F 1 "2N3906" V 4642 2950 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4400 2750 60  0001 C CNN
F 3 "" H 4400 2750 60  0000 C CNN
	1    4400 2950
	0    1    -1   0   
$EndComp
Wire Wire Line
	4600 2850 4800 2850
Connection ~ 4800 2850
$Comp
L SynthMod:DUAL_2N3906 Q2
U 2 1 5DCB9164
P 5500 2950
F 0 "Q2" V 5400 3150 60  0000 C CNN
F 1 "2N3906" V 5500 3250 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 5500 2750 60  0001 C CNN
F 3 "" H 5500 2750 60  0000 C CNN
	2    5500 2950
	0    1    -1   0   
$EndComp
$Comp
L SynthMod:DUAL_2N3904 Q1
U 1 1 5DCBCEAD
P 4400 3900
F 0 "Q1" V 4641 3900 60  0000 C CNN
F 1 "2N3904" V 4748 3900 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4400 3800 60  0001 C CNN
F 3 "" H 4400 3800 60  0000 C CNN
	1    4400 3900
	0    -1   1    0   
$EndComp
$Comp
L SynthMod:DUAL_2N3904 Q1
U 2 1 5DCBED7D
P 5500 3900
F 0 "Q1" V 5741 3900 60  0000 C CNN
F 1 "2N3904" V 5848 3900 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 5500 3800 60  0001 C CNN
F 3 "" H 5500 3800 60  0000 C CNN
	2    5500 3900
	0    1    1    0   
$EndComp
$EndSCHEMATC
