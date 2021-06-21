EESchema Schematic File Version 4
LIBS:500-1063C-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L SynthMod:DG201 U15
U 2 1 5C2A3868
P 2950 1150
F 0 "U15" H 2950 1437 60  0000 C CNN
F 1 "DG201" H 2950 1331 60  0000 C CNN
F 2 "FootPrints:DIP16.3" H 3150 750 60  0001 C CNN
F 3 "" H 3150 750 60  0000 C CNN
	2    2950 1150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U16
U 1 1 5C2A3934
P 3750 1600
F 0 "U16" H 3875 2349 60  0000 C CNN
F 1 "TL052" H 3875 2243 60  0000 C CNN
F 2 "FootPrints:DIP8" H 3750 1600 60  0001 C CNN
F 3 "" H 3750 1600 60  0000 C CNN
	1    3750 1600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C12
U 1 1 5C2A39C7
P 3300 1450
F 0 "C12" H 3050 1500 50  0000 L CNN
F 1 ".01uF" H 3000 1400 50  0000 L CNN
F 2 "FootPrints:CAP-AXIAL-0.5x0.2" H 3338 1300 50  0001 C CNN
F 3 "" H 3300 1450 50  0000 C CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5C2A3B0E
P 3300 1700
F 0 "#PWR038" H 3300 1450 50  0001 C CNN
F 1 "GND" H 3305 1527 50  0000 C CNN
F 2 "" H 3300 1700 50  0001 C CNN
F 3 "" H 3300 1700 50  0001 C CNN
	1    3300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1700 3300 1600
Wire Wire Line
	3300 1300 3300 1150
Wire Wire Line
	3300 1150 3150 1150
Wire Wire Line
	3300 1150 3550 1150
Connection ~ 3300 1150
Wire Wire Line
	3550 1250 3500 1250
Wire Wire Line
	3500 1250 3500 1550
Wire Wire Line
	3500 1550 4350 1550
Wire Wire Line
	4350 1550 4350 1200
Wire Wire Line
	4350 1200 4200 1200
$Comp
L SynthMod:DG201 U15
U 4 1 5C2A3C04
P 2950 2100
F 0 "U15" H 2950 2387 60  0000 C CNN
F 1 "DG201" H 2950 2281 60  0000 C CNN
F 2 "FootPrints:DIP16.3" H 3150 1700 60  0001 C CNN
F 3 "" H 3150 1700 60  0000 C CNN
	4    2950 2100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U16
U 2 1 5C2A3C0A
P 3750 2550
F 0 "U16" H 3875 3299 60  0000 C CNN
F 1 "TL052" H 3875 3193 60  0000 C CNN
F 2 "FootPrints:DIP8" H 3750 2550 60  0001 C CNN
F 3 "" H 3750 2550 60  0000 C CNN
	2    3750 2550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C13
U 1 1 5C2A3C10
P 3300 2400
F 0 "C13" H 3050 2500 50  0000 L CNN
F 1 ".01uF" H 3000 2400 50  0000 L CNN
F 2 "FootPrints:CAP-AXIAL-0.5x0.2" H 3338 2250 50  0001 C CNN
F 3 "" H 3300 2400 50  0000 C CNN
	1    3300 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5C2A3C16
P 3300 2650
F 0 "#PWR039" H 3300 2400 50  0001 C CNN
F 1 "GND" H 3305 2477 50  0000 C CNN
F 2 "" H 3300 2650 50  0001 C CNN
F 3 "" H 3300 2650 50  0001 C CNN
	1    3300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2650 3300 2550
Wire Wire Line
	3300 2250 3300 2100
Wire Wire Line
	3300 2100 3150 2100
Wire Wire Line
	3300 2100 3550 2100
Connection ~ 3300 2100
Wire Wire Line
	3550 2200 3500 2200
Wire Wire Line
	3500 2200 3500 2500
Wire Wire Line
	3500 2500 4350 2500
Wire Wire Line
	4350 2500 4350 2150
Wire Wire Line
	4350 2150 4200 2150
$Comp
L SynthMod:DG201 U15
U 1 1 5C2A41DA
P 2950 3050
F 0 "U15" H 2950 3337 60  0000 C CNN
F 1 "DG201" H 2950 3231 60  0000 C CNN
F 2 "FootPrints:DIP16.3" H 3150 2650 60  0001 C CNN
F 3 "" H 3150 2650 60  0000 C CNN
	1    2950 3050
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U17
U 1 1 5C2A41E0
P 3750 3500
F 0 "U17" H 3875 4249 60  0000 C CNN
F 1 "TL052" H 3875 4143 60  0000 C CNN
F 2 "FootPrints:DIP8" H 3750 3500 60  0001 C CNN
F 3 "" H 3750 3500 60  0000 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C14
U 1 1 5C2A41E6
P 3300 3350
F 0 "C14" H 3000 3400 50  0000 L CNN
F 1 ".01uF" H 2950 3300 50  0000 L CNN
F 2 "FootPrints:CAP-AXIAL-0.5x0.2" H 3338 3200 50  0001 C CNN
F 3 "" H 3300 3350 50  0000 C CNN
	1    3300 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5C2A41EC
P 3300 3600
F 0 "#PWR040" H 3300 3350 50  0001 C CNN
F 1 "GND" H 3305 3427 50  0000 C CNN
F 2 "" H 3300 3600 50  0001 C CNN
F 3 "" H 3300 3600 50  0001 C CNN
	1    3300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3600 3300 3500
Wire Wire Line
	3300 3200 3300 3050
Wire Wire Line
	3300 3050 3150 3050
Wire Wire Line
	3300 3050 3550 3050
Connection ~ 3300 3050
Wire Wire Line
	3550 3150 3500 3150
Wire Wire Line
	3500 3150 3500 3450
Wire Wire Line
	3500 3450 4350 3450
Wire Wire Line
	4350 3450 4350 3100
Wire Wire Line
	4350 3100 4200 3100
$Comp
L SynthMod:DG201 U15
U 3 1 5C2A41FC
P 2950 4000
F 0 "U15" H 2950 4287 60  0000 C CNN
F 1 "DG201" H 2950 4181 60  0000 C CNN
F 2 "FootPrints:DIP16.3" H 3150 3600 60  0001 C CNN
F 3 "" H 3150 3600 60  0000 C CNN
	3    2950 4000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U17
U 2 1 5C2A4202
P 3750 4450
F 0 "U17" H 3875 5199 60  0000 C CNN
F 1 "TL052" H 3875 5093 60  0000 C CNN
F 2 "FootPrints:DIP8" H 3750 4450 60  0001 C CNN
F 3 "" H 3750 4450 60  0000 C CNN
	2    3750 4450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C15
U 1 1 5C2A4208
P 3300 4300
F 0 "C15" H 3050 4350 50  0000 L CNN
F 1 ".01uF" H 3000 4250 50  0000 L CNN
F 2 "FootPrints:CAP-AXIAL-0.5x0.2" H 3338 4150 50  0001 C CNN
F 3 "" H 3300 4300 50  0000 C CNN
	1    3300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5C2A420E
P 3300 4550
F 0 "#PWR041" H 3300 4300 50  0001 C CNN
F 1 "GND" H 3305 4377 50  0000 C CNN
F 2 "" H 3300 4550 50  0001 C CNN
F 3 "" H 3300 4550 50  0001 C CNN
	1    3300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4550 3300 4450
Wire Wire Line
	3300 4150 3300 4000
Wire Wire Line
	3300 4000 3150 4000
Wire Wire Line
	3300 4000 3550 4000
Connection ~ 3300 4000
Wire Wire Line
	3550 4100 3500 4100
Wire Wire Line
	3500 4100 3500 4400
Wire Wire Line
	3500 4400 4350 4400
Wire Wire Line
	4350 4400 4350 4050
Wire Wire Line
	4350 4050 4200 4050
Text HLabel 1000 850  0    50   Input ~ 0
VIN
Text HLabel 950  1600 0    50   Input ~ 0
SA
Text HLabel 900  2500 0    50   Input ~ 0
SB
Text HLabel 850  3500 0    50   Input ~ 0
SC
Text HLabel 800  4450 0    50   Input ~ 0
SD
Wire Wire Line
	1000 850  2300 850 
Wire Wire Line
	2300 850  2300 1150
Wire Wire Line
	2300 1150 2750 1150
Wire Wire Line
	2300 1150 2300 2100
Wire Wire Line
	2300 2100 2750 2100
Connection ~ 2300 1150
Wire Wire Line
	2300 2100 2300 3050
Wire Wire Line
	2300 3050 2750 3050
Connection ~ 2300 2100
Wire Wire Line
	2300 3050 2300 4000
Wire Wire Line
	2300 4000 2750 4000
Connection ~ 2300 3050
Wire Wire Line
	800  4450 2950 4450
Wire Wire Line
	2950 4450 2950 4200
Wire Wire Line
	850  3500 2950 3500
Wire Wire Line
	2950 3500 2950 3250
Wire Wire Line
	900  2500 2950 2500
Wire Wire Line
	2950 2500 2950 2300
Wire Wire Line
	950  1600 2950 1600
Wire Wire Line
	2950 1600 2950 1350
Text HLabel 5200 1200 2    50   Output ~ 0
VA
Text HLabel 5200 2150 2    50   Output ~ 0
VB
Text HLabel 5250 3100 2    50   Output ~ 0
VC
Text HLabel 5250 4050 2    50   Output ~ 0
VD
Wire Wire Line
	5200 1200 4350 1200
Connection ~ 4350 1200
Wire Wire Line
	5200 2150 4350 2150
Connection ~ 4350 2150
Wire Wire Line
	5250 3100 4350 3100
Connection ~ 4350 3100
Wire Wire Line
	5250 4050 4350 4050
Connection ~ 4350 4050
$Comp
L SynthMod:DG201 U15
U 5 1 5C2ADDEE
P 2500 5300
F 0 "U15" H 2500 5592 60  0000 C CNN
F 1 "DG201" H 2500 5486 60  0000 C CNN
F 2 "FootPrints:DIP16.3" H 2700 4900 60  0001 C CNN
F 3 "" H 2700 4900 60  0000 C CNN
	5    2500 5300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U16
U 3 1 5C2ADEA9
P 4350 5650
F 0 "U16" H 4475 6299 60  0000 C CNN
F 1 "TL052" H 4475 6193 60  0000 C CNN
F 2 "FootPrints:DIP8" H 4350 5650 60  0001 C CNN
F 3 "" H 4350 5650 60  0000 C CNN
	3    4350 5650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C16
U 1 1 5C2AE500
P 4100 5450
F 0 "C16" H 4215 5496 50  0000 L CNN
F 1 "0.1uF" H 4215 5405 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 4138 5300 50  0001 C CNN
F 3 "" H 4100 5450 50  0000 C CNN
	1    4100 5450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C18
U 1 1 5C2AE6EA
P 4850 5450
F 0 "C18" H 4965 5496 50  0000 L CNN
F 1 "0.1uF" H 4965 5405 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 4888 5300 50  0001 C CNN
F 3 "" H 4850 5450 50  0000 C CNN
	1    4850 5450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C11
U 1 1 5C2AE738
P 2850 5500
F 0 "C11" H 2965 5546 50  0000 L CNN
F 1 "0.1uF" H 2965 5455 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 2888 5350 50  0001 C CNN
F 3 "" H 2850 5500 50  0000 C CNN
	1    2850 5500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C10
U 1 1 5C2AE7EA
P 2150 5500
F 0 "C10" H 2265 5546 50  0000 L CNN
F 1 "0.1uF" H 2265 5455 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 2188 5350 50  0001 C CNN
F 3 "" H 2150 5500 50  0000 C CNN
	1    2150 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5C2AE848
P 2150 5650
F 0 "#PWR034" H 2150 5400 50  0001 C CNN
F 1 "GND" H 2155 5477 50  0000 C CNN
F 2 "" H 2150 5650 50  0001 C CNN
F 3 "" H 2150 5650 50  0001 C CNN
	1    2150 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5C2AE877
P 2850 5650
F 0 "#PWR036" H 2850 5400 50  0001 C CNN
F 1 "GND" H 2855 5477 50  0000 C CNN
F 2 "" H 2850 5650 50  0001 C CNN
F 3 "" H 2850 5650 50  0001 C CNN
	1    2850 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5C2AE8A6
P 4100 5600
F 0 "#PWR044" H 4100 5350 50  0001 C CNN
F 1 "GND" H 4105 5427 50  0000 C CNN
F 2 "" H 4100 5600 50  0001 C CNN
F 3 "" H 4100 5600 50  0001 C CNN
	1    4100 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 5C2AE8D5
P 4850 5600
F 0 "#PWR046" H 4850 5350 50  0001 C CNN
F 1 "GND" H 4855 5427 50  0000 C CNN
F 2 "" H 4850 5600 50  0001 C CNN
F 3 "" H 4850 5600 50  0001 C CNN
	1    4850 5600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR042
U 1 1 5C2AEE55
P 4000 5250
F 0 "#PWR042" H 4000 5100 50  0001 C CNN
F 1 "+15V0" V 4018 5378 50  0000 L CNN
F 2 "" H 4000 5250 50  0000 C CNN
F 3 "" H 4000 5250 50  0000 C CNN
	1    4000 5250
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR037
U 1 1 5C2AEEC1
P 2900 5300
F 0 "#PWR037" H 2900 5150 50  0001 C CNN
F 1 "+15V0" V 2917 5428 50  0000 L CNN
F 2 "" H 2900 5300 50  0000 C CNN
F 3 "" H 2900 5300 50  0000 C CNN
	1    2900 5300
	0    1    1    0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR048
U 1 1 5C2AEF32
P 4900 5250
F 0 "#PWR048" H 4900 5100 50  0001 C CNN
F 1 "-15V0" V 4917 5378 50  0000 L CNN
F 2 "" H 4900 5250 50  0000 C CNN
F 3 "" H 4900 5250 50  0000 C CNN
	1    4900 5250
	0    1    1    0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR033
U 1 1 5C2AEF7A
P 2050 5300
F 0 "#PWR033" H 2050 5150 50  0001 C CNN
F 1 "-15V0" V 2068 5428 50  0000 L CNN
F 2 "" H 2050 5300 50  0000 C CNN
F 3 "" H 2050 5300 50  0000 C CNN
	1    2050 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 5300 2150 5300
Wire Wire Line
	2150 5350 2150 5300
Connection ~ 2150 5300
Wire Wire Line
	2150 5300 2200 5300
Wire Wire Line
	2900 5300 2850 5300
Wire Wire Line
	2850 5350 2850 5300
Connection ~ 2850 5300
Wire Wire Line
	2850 5300 2800 5300
$Comp
L power:GND #PWR035
U 1 1 5C2B32CA
P 2500 5500
F 0 "#PWR035" H 2500 5250 50  0001 C CNN
F 1 "GND" H 2505 5327 50  0000 C CNN
F 2 "" H 2500 5500 50  0001 C CNN
F 3 "" H 2500 5500 50  0001 C CNN
	1    2500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5250 4100 5250
Wire Wire Line
	4100 5300 4100 5250
Connection ~ 4100 5250
Wire Wire Line
	4100 5250 4150 5250
Wire Wire Line
	4900 5250 4850 5250
Wire Wire Line
	4850 5300 4850 5250
Connection ~ 4850 5250
Wire Wire Line
	4850 5250 4800 5250
$Comp
L SynthMod:GENDUALOPAMP U17
U 3 1 5C2B8362
P 4350 6450
F 0 "U17" H 4475 7099 60  0000 C CNN
F 1 "TL052" H 4475 6993 60  0000 C CNN
F 2 "FootPrints:DIP8" H 4350 6450 60  0001 C CNN
F 3 "" H 4350 6450 60  0000 C CNN
	3    4350 6450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C17
U 1 1 5C2B8368
P 4100 6250
F 0 "C17" H 4215 6296 50  0000 L CNN
F 1 "0.1uF" H 4215 6205 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 4138 6100 50  0001 C CNN
F 3 "" H 4100 6250 50  0000 C CNN
	1    4100 6250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C19
U 1 1 5C2B836E
P 4850 6250
F 0 "C19" H 4965 6296 50  0000 L CNN
F 1 "0.1uF" H 4965 6205 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 4888 6100 50  0001 C CNN
F 3 "" H 4850 6250 50  0000 C CNN
	1    4850 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5C2B8374
P 4100 6400
F 0 "#PWR045" H 4100 6150 50  0001 C CNN
F 1 "GND" H 4105 6227 50  0000 C CNN
F 2 "" H 4100 6400 50  0001 C CNN
F 3 "" H 4100 6400 50  0001 C CNN
	1    4100 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 5C2B837A
P 4850 6400
F 0 "#PWR047" H 4850 6150 50  0001 C CNN
F 1 "GND" H 4855 6227 50  0000 C CNN
F 2 "" H 4850 6400 50  0001 C CNN
F 3 "" H 4850 6400 50  0001 C CNN
	1    4850 6400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR043
U 1 1 5C2B8380
P 4000 6050
F 0 "#PWR043" H 4000 5900 50  0001 C CNN
F 1 "+15V0" V 4018 6178 50  0000 L CNN
F 2 "" H 4000 6050 50  0000 C CNN
F 3 "" H 4000 6050 50  0000 C CNN
	1    4000 6050
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR049
U 1 1 5C2B8386
P 4900 6050
F 0 "#PWR049" H 4900 5900 50  0001 C CNN
F 1 "-15V0" V 4917 6178 50  0000 L CNN
F 2 "" H 4900 6050 50  0000 C CNN
F 3 "" H 4900 6050 50  0000 C CNN
	1    4900 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 6050 4100 6050
Wire Wire Line
	4100 6100 4100 6050
Connection ~ 4100 6050
Wire Wire Line
	4100 6050 4150 6050
Wire Wire Line
	4900 6050 4850 6050
Wire Wire Line
	4850 6100 4850 6050
Connection ~ 4850 6050
Wire Wire Line
	4850 6050 4800 6050
$EndSCHEMATC
