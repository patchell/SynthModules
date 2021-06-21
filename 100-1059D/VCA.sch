EESchema Schematic File Version 4
LIBS:100-1059D_Cheezy-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 11 22
Title "NOOTA VCA"
Date ""
Rev "E"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:2SA798 Q25
U 1 1 5B3C3FB8
P 5200 2300
F 0 "Q25" H 5350 2000 60  0000 C CNN
F 1 "2SA798" H 5500 2100 60  0000 C CNN
F 2 "FootPrints:2SA798" H 5200 2300 60  0001 C CNN
F 3 "" H 5200 2300 60  0000 C CNN
	1    5200 2300
	1    0    0    1   
$EndComp
$Comp
L SynthMod:THAT140 Q24
U 1 1 5B3C4013
P 4400 2950
F 0 "Q24" V 4700 2950 60  0000 C CNN
F 1 "THAT140" V 4800 2950 60  0000 C CNN
F 2 "FootPrints:DIP-14" H 4400 2750 60  0001 C CNN
F 3 "" H 4400 2750 60  0000 C CNN
	1    4400 2950
	0    1    -1   0   
$EndComp
$Comp
L SynthMod:THAT140 Q24
U 2 1 5B3C4110
P 5500 2950
F 0 "Q24" V 5450 3200 60  0000 C CNN
F 1 "THAT140" V 5350 3150 60  0000 C CNN
F 2 "FootPrints:DIP-14" H 5500 2750 60  0001 C CNN
F 3 "" H 5500 2750 60  0000 C CNN
	2    5500 2950
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:THAT140 Q24
U 3 1 5B3C4135
P 4400 3900
F 0 "Q24" V 4650 3900 60  0000 C CNN
F 1 "THAT140" V 4750 3900 60  0000 C CNN
F 2 "FootPrints:DIP-14" H 4400 3700 60  0001 C CNN
F 3 "" H 4400 3700 60  0000 C CNN
	3    4400 3900
	0    1    1    0   
$EndComp
$Comp
L SynthMod:THAT140 Q24
U 4 1 5B3C4159
P 5500 3900
F 0 "Q24" V 5750 3950 60  0000 C CNN
F 1 "THAT140" V 5850 3900 60  0000 C CNN
F 2 "FootPrints:DIP-14" H 5500 3700 60  0001 C CNN
F 3 "" H 5500 3700 60  0000 C CNN
	4    5500 3900
	0    -1   1    0   
$EndComp
$Comp
L SynthMod:THAT140 Q24
U 5 1 5B3C4180
P 6250 2350
F 0 "Q24" H 6250 2500 60  0000 C CNN
F 1 "THAT140" H 6250 2600 60  0000 C CNN
F 2 "FootPrints:DIP-14" H 6250 2150 60  0001 C CNN
F 3 "" H 6250 2150 60  0000 C CNN
	5    6250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2850 4800 2850
Wire Wire Line
	4700 4000 4900 4000
Wire Wire Line
	4100 2850 3900 2850
Wire Wire Line
	3900 2300 3900 2850
Wire Wire Line
	3900 4000 4100 4000
Wire Wire Line
	6000 4000 5800 4000
Wire Wire Line
	6000 2850 6000 3000
Wire Wire Line
	6000 2850 5800 2850
Wire Wire Line
	5050 2600 5050 4000
Connection ~ 5050 4000
$Comp
L SynthMod:RESISTOR R198
U 1 1 5B3C4846
P 4800 1900
F 0 "R198" V 4800 1750 60  0000 C CNN
F 1 "30K" V 4900 1750 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4800 1900 60  0001 C CNN
F 3 "" H 4800 1900 60  0000 C CNN
	1    4800 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2200 4800 2850
Connection ~ 4800 2850
Wire Wire Line
	3750 2300 3900 2300
Connection ~ 3900 2850
Wire Wire Line
	4400 3350 4400 3250
Wire Wire Line
	4400 3550 4400 3600
Wire Wire Line
	5500 3550 5500 3600
Wire Wire Line
	5500 3300 5500 3250
Wire Wire Line
	4400 3550 5500 3300
$Comp
L SynthMod:RESISTOR R200
U 1 1 5B3C49DF
P 5200 1700
F 0 "R200" V 5250 1850 60  0000 C CNN
F 1 "15K" V 5350 1900 60  0000 C CNN
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
L SynthMod:RESISTOR R199
U 1 1 5B3C4A5C
P 4900 4250
F 0 "R199" V 5000 4500 60  0000 C CNN
F 1 "15K" V 5100 4500 60  0000 C CNN
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
Wire Wire Line
	5650 2300 5800 2300
Wire Wire Line
	5800 2300 5800 2350
Wire Wire Line
	5950 2350 5800 2350
Connection ~ 5800 2350
$Comp
L power:GND #PWR0271
U 1 1 5B3C4C08
P 5350 2600
F 0 "#PWR0271" H 5350 2350 50  0001 C CNN
F 1 "GND" H 5350 2450 50  0000 C CNN
F 2 "" H 5350 2600 50  0001 C CNN
F 3 "" H 5350 2600 50  0001 C CNN
	1    5350 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0272
U 1 1 5B3C4C3B
P 5800 2600
F 0 "#PWR0272" H 5800 2350 50  0001 C CNN
F 1 "GND" H 5800 2450 50  0000 C CNN
F 2 "" H 5800 2600 50  0001 C CNN
F 3 "" H 5800 2600 50  0001 C CNN
	1    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U57
U 1 2 5B3C4C5E
P 6850 3450
F 0 "U57" H 6924 3652 60  0000 C CNN
F 1 "TL052" H 6930 3578 60  0000 C CNN
F 2 "FootPrints:DIP8" H 6850 3450 60  0001 C CNN
F 3 "" H 6850 3450 60  0000 C CNN
	1    6850 3450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R202
U 1 1 5B3C4D5F
P 7050 2650
F 0 "R202" H 7050 2350 60  0000 C CNN
F 1 "20K" H 7200 2450 60  0000 C CNN
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
L power:GND #PWR0274
U 1 1 5B3C4F03
P 6550 3250
F 0 "#PWR0274" H 6550 3000 50  0001 C CNN
F 1 "GND" H 6550 3100 50  0000 C CNN
F 2 "" H 6550 3250 50  0001 C CNN
F 3 "" H 6550 3250 50  0001 C CNN
	1    6550 3250
	1    0    0    -1  
$EndComp
Connection ~ 7500 3050
$Comp
L SynthMod:RESISTOR R196
U 1 1 5B3C521B
P 3650 2300
F 0 "R196" H 3650 2000 60  0000 C CNN
F 1 "20K" H 3800 2100 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3650 2300 60  0001 C CNN
F 3 "" H 3650 2300 60  0000 C CNN
	1    3650 2300
	-1   0    0    1   
$EndComp
Connection ~ 3900 2300
$Comp
L SynthMod:GENDUALOPAMP U57
U 2 2 5B3C5550
P 2225 5250
F 0 "U57" H 2299 5452 60  0000 C CNN
F 1 "TL052" H 2305 5378 60  0000 C CNN
F 2 "FootPrints:DIP8" H 2225 5250 60  0001 C CNN
F 3 "" H 2225 5250 60  0000 C CNN
	2    2225 5250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R190
U 1 1 5B3C5637
P 1775 4800
F 0 "R190" H 1975 5050 60  0000 C CNN
F 1 "100K" H 1925 4950 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1775 4800 60  0001 C CNN
F 3 "" H 1775 4800 60  0000 C CNN
	1    1775 4800
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R191
U 1 1 5B3C572A
P 2425 4150
F 0 "R191" H 2525 3950 60  0000 C CNN
F 1 "100K" H 2525 4050 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 2425 4150 60  0001 C CNN
F 3 "" H 2425 4150 60  0000 C CNN
	1    2425 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1875 4800 1925 4800
Wire Wire Line
	1825 4500 1925 4500
Wire Wire Line
	1925 4500 1925 4800
Connection ~ 1925 4800
Wire Wire Line
	1925 5000 1925 4900
Wire Wire Line
	1925 4900 2025 4900
$Comp
L power:GND #PWR0264
U 1 1 5B3C59BA
P 1925 5000
F 0 "#PWR0264" H 1925 4750 50  0001 C CNN
F 1 "GND" H 1925 4850 50  0000 C CNN
F 2 "" H 1925 5000 50  0001 C CNN
F 3 "" H 1925 5000 50  0001 C CNN
	1    1925 5000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R189
U 1 1 5B3C5E10
P 1725 4500
F 0 "R189" H 1775 4250 60  0000 C CNN
F 1 "150K" H 1825 4350 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1725 4500 60  0001 C CNN
F 3 "" H 1725 4500 60  0000 C CNN
	1    1725 4500
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:-15V0 #PWR0263
U 1 1 5B3C5F0E
P 1325 4500
F 0 "#PWR0263" H 1325 4350 50  0001 C CNN
F 1 "-15V0" H 1325 4650 50  0000 C CNN
F 2 "" H 1325 4500 50  0000 C CNN
F 3 "" H 1325 4500 50  0000 C CNN
	1    1325 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1325 4500 1425 4500
Text Notes 3850 5025 0    60   ~ 0
Vin:0  Vo:+10\nVin:10  Vo:0
$Comp
L SynthMod:RESISTOR R201
U 1 1 5B3C6041
P 6450 4400
F 0 "R201" H 6450 4100 60  0000 C CNN
F 1 "300" H 6600 4200 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6450 4400 60  0001 C CNN
F 3 "" H 6450 4400 60  0000 C CNN
	1    6450 4400
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R195
U 1 1 5B3C6114
P 3600 3950
F 0 "R195" V 3775 3800 60  0000 C CNN
F 1 "10K" V 3875 3800 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3600 3950 60  0001 C CNN
F 3 "" H 3600 3950 60  0000 C CNN
	1    3600 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 3550 6450 4300
Wire Wire Line
	5500 3550 6450 3550
$Comp
L SynthMod:RESISTOR R197
U 1 1 5B3C628B
P 4000 4250
F 0 "R197" V 4100 4400 60  0000 C CNN
F 1 "300" V 4200 4400 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4000 4250 60  0001 C CNN
F 3 "" H 4000 4250 60  0000 C CNN
	1    4000 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4150 4000 3550
Wire Wire Line
	3600 3550 4000 3550
$Comp
L power:GND #PWR0273
U 1 1 5B3C6399
P 6450 4700
F 0 "#PWR0273" H 6450 4450 50  0001 C CNN
F 1 "GND" H 6450 4550 50  0000 C CNN
F 2 "" H 6450 4700 50  0001 C CNN
F 3 "" H 6450 4700 50  0001 C CNN
	1    6450 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0268
U 1 1 5B3C63E9
P 4000 4550
F 0 "#PWR0268" H 4000 4300 50  0001 C CNN
F 1 "GND" H 4000 4400 50  0000 C CNN
F 2 "" H 4000 4550 50  0001 C CNN
F 3 "" H 4000 4550 50  0001 C CNN
	1    4000 4550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR0269
U 1 1 5B3C6502
P 4900 4950
F 0 "#PWR0269" H 4900 4800 50  0001 C CNN
F 1 "-15V0" H 4900 5100 50  0000 C CNN
F 2 "" H 4900 4950 50  0000 C CNN
F 3 "" H 4900 4950 50  0000 C CNN
	1    4900 4950
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:+15V0 #PWR0270
U 1 1 5B3C653D
P 5200 1350
F 0 "#PWR0270" H 5200 1200 50  0001 C CNN
F 1 "+15V0" H 5200 1500 50  0000 C CNN
F 2 "" H 5200 1350 50  0000 C CNN
F 3 "" H 5200 1350 50  0000 C CNN
	1    5200 1350
	1    0    0    -1  
$EndComp
Connection ~ 5200 1450
Connection ~ 4400 3550
$Comp
L SynthMod:GENDUALOPAMP U57
U 3 2 5B3C671D
P 7450 4400
F 0 "U57" H 7524 4602 60  0000 C CNN
F 1 "TL052" H 7530 4528 60  0000 C CNN
F 2 "FootPrints:DIP8" H 7450 4400 60  0001 C CNN
F 3 "" H 7450 4400 60  0000 C CNN
	3    7450 4400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C76
U 1 1 5B3C67C1
P 7150 4300
F 0 "C76" H 7175 4400 50  0000 L CNN
F 1 "0.1uF" H 7175 4200 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 7188 4150 50  0001 C CNN
F 3 "" H 7150 4300 50  0000 C CNN
	1    7150 4300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C77
U 1 1 5B3C68AD
P 8000 4300
F 0 "C77" H 8025 4400 50  0000 L CNN
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
L power:GND #PWR0276
U 1 1 5B3C6B31
P 7150 4550
F 0 "#PWR0276" H 7150 4300 50  0001 C CNN
F 1 "GND" H 7150 4400 50  0000 C CNN
F 2 "" H 7150 4550 50  0001 C CNN
F 3 "" H 7150 4550 50  0001 C CNN
	1    7150 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0277
U 1 1 5B3C6B8A
P 8000 4550
F 0 "#PWR0277" H 8000 4300 50  0001 C CNN
F 1 "GND" H 8000 4400 50  0000 C CNN
F 2 "" H 8000 4550 50  0001 C CNN
F 3 "" H 8000 4550 50  0001 C CNN
	1    8000 4550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR0278
U 1 1 5B3C6C6F
P 8100 4000
F 0 "#PWR0278" H 8100 3850 50  0001 C CNN
F 1 "-15V0" H 8100 4150 50  0000 C CNN
F 2 "" H 8100 4000 50  0000 C CNN
F 3 "" H 8100 4000 50  0000 C CNN
	1    8100 4000
	0    1    1    0   
$EndComp
Connection ~ 8000 4000
$Comp
L SynthMod:+15V0 #PWR0275
U 1 1 5B3C6D39
P 7000 4000
F 0 "#PWR0275" H 7000 3850 50  0001 C CNN
F 1 "+15V0" H 7000 4150 50  0000 C CNN
F 2 "" H 7000 4000 50  0000 C CNN
F 3 "" H 7000 4000 50  0000 C CNN
	1    7000 4000
	0    -1   -1   0   
$EndComp
Connection ~ 7150 4000
Wire Wire Line
	3600 3850 3600 3550
Connection ~ 4000 3550
$Comp
L SynthMod:RESISTOR R194
U 1 1 5B3D2BD6
P 3400 3500
F 0 "R194" V 3450 3300 60  0000 C CNN
F 1 "300" V 3550 3350 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3400 3500 60  0001 C CNN
F 3 "" H 3400 3500 60  0000 C CNN
	1    3400 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0267
U 1 1 5B3D2C80
P 3400 3800
F 0 "#PWR0267" H 3400 3550 50  0001 C CNN
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
L SynthMod:RESISTOR R193
U 1 1 5B3D2D62
P 3200 3350
F 0 "R193" H 3200 3050 60  0000 C CNN
F 1 "62K" H 3200 3150 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3200 3350 60  0001 C CNN
F 3 "" H 3200 3350 60  0000 C CNN
	1    3200 3350
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:POT-3006 R192
U 1 1 5B3D2DE4
P 2500 3250
F 0 "R192" H 2500 2950 60  0000 C CNN
F 1 "10K" H 2650 3050 60  0000 C CNN
F 2 "FootPrints:Trimpot" H 2500 3250 60  0001 C CNN
F 3 "" H 2500 3250 60  0000 C CNN
	1    2500 3250
	0    1    1    0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR0266
U 1 1 5B3D2F8D
P 2500 3550
F 0 "#PWR0266" H 2500 3400 50  0001 C CNN
F 1 "-15V0" H 2500 3700 50  0000 C CNN
F 2 "" H 2500 3550 50  0000 C CNN
F 3 "" H 2500 3550 50  0000 C CNN
	1    2500 3550
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:+15V0 #PWR0265
U 1 1 5B3D302E
P 2500 3150
F 0 "#PWR0265" H 2500 3000 50  0001 C CNN
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
	5050 4000 5200 4000
Wire Wire Line
	4800 2850 5200 2850
Wire Wire Line
	3900 2850 3900 4000
Wire Wire Line
	4900 4000 5050 4000
Wire Wire Line
	5800 2350 5800 2600
Wire Wire Line
	6000 3000 6000 4000
Wire Wire Line
	6550 3000 6650 3000
Wire Wire Line
	3900 2300 4750 2300
Wire Wire Line
	1925 4800 2025 4800
Wire Wire Line
	5200 1450 5200 1600
Wire Wire Line
	8000 4000 8100 4000
Wire Wire Line
	7150 4000 7250 4000
Wire Wire Line
	4000 3550 4400 3550
Wire Wire Line
	3400 3350 4400 3350
Text HLabel 1100 2300 0    50   Input ~ 0
IN
Text HLabel 925  4800 0    50   Input ~ 0
CV
Text HLabel 8850 3050 2    50   Output ~ 0
OUT
Wire Wire Line
	1100 2300 3350 2300
Wire Wire Line
	925  4800 1475 4800
Wire Wire Line
	2675 4850 2725 4850
$Comp
L Device:D_ALT D18
U 1 1 5BD08DAE
P 2725 4650
F 0 "D18" V 2775 4925 50  0000 R CNN
F 1 "1N914" V 2675 4950 50  0000 R CNN
F 2 "FootPrints:DIODE0.4" H 2725 4650 50  0001 C CNN
F 3 "~" H 2725 4650 50  0001 C CNN
	1    2725 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_ALT D19
U 1 1 5BD08FF0
P 2925 4650
F 0 "D19" V 2975 4900 50  0000 R CNN
F 1 "1N914" V 2875 4950 50  0000 R CNN
F 2 "FootPrints:DIODE0.4" H 2925 4650 50  0001 C CNN
F 3 "~" H 2925 4650 50  0001 C CNN
	1    2925 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	2725 4800 2725 4850
Connection ~ 2725 4850
Wire Wire Line
	2725 4850 2925 4850
Wire Wire Line
	2925 4800 2925 4850
Wire Wire Line
	2725 4500 2725 4425
Wire Wire Line
	2725 4425 1925 4425
Wire Wire Line
	1925 4425 1925 4500
Connection ~ 1925 4500
Wire Wire Line
	1925 4425 1925 4150
Wire Wire Line
	1925 4150 2125 4150
Connection ~ 1925 4425
Wire Wire Line
	2525 4150 2925 4150
Wire Wire Line
	2925 4150 2925 4425
Wire Wire Line
	2925 4425 3600 4425
Wire Wire Line
	3600 4425 3600 4250
Connection ~ 2925 4425
Wire Wire Line
	2925 4425 2925 4500
Wire Wire Line
	7500 3050 8850 3050
$EndSCHEMATC
