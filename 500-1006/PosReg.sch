EESchema Schematic File Version 4
LIBS:500-1006-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 4
Title "Positive Voltage Regulator"
Date "2016-03-09"
Rev ""
Comp "Jim Patchell"
Comment1 "patchell@cox.net"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:TIP140 Q2
U 1 1 58DD57E5
P 4650 2000
AR Path="/58D873D7/58DD57E5" Ref="Q2"  Part="1" 
AR Path="/58D87660/58DD57E5" Ref="Q8"  Part="1" 
F 0 "Q8" V 4991 2025 50  0000 C CNN
F 1 "TIP142" V 4899 2025 50  0000 C CNN
F 2 "FootPrints:TO-264" H 4850 2100 50  0001 C CNN
F 3 "" H 4650 2000 50  0000 C CNN
	1    4650 2000
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:NPN Q6
U 1 1 58DD57E6
P 6250 2250
AR Path="/58D873D7/58DD57E6" Ref="Q6"  Part="1" 
AR Path="/58D87660/58DD57E6" Ref="Q12"  Part="1" 
F 0 "Q12" V 6489 2250 50  0000 C CNN
F 1 "2N3904" V 6581 2250 50  0000 C CNN
F 2 "FootPrints:TO92" H 6450 2350 50  0001 C CNN
F 3 "" H 6250 2250 50  0000 C CNN
	1    6250 2250
	0    -1   1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R9
U 1 1 58DD57E7
P 6450 1900
AR Path="/58D873D7/58DD57E7" Ref="R9"  Part="1" 
AR Path="/58D87660/58DD57E7" Ref="R20"  Part="1" 
F 0 "R20" H 6550 2117 60  0000 C CNN
F 1 "0.51" H 6550 2011 60  0000 C CNN
F 2 "FootPrints:AXIAL0.7X0.2" H 6450 1900 60  0001 C CNN
F 3 "" H 6450 1900 60  0000 C CNN
	1    6450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1900 5100 1900
Wire Wire Line
	6250 2050 6250 1900
Connection ~ 6250 1900
Wire Wire Line
	6450 2350 6800 2350
Wire Wire Line
	6800 2350 6800 1900
Wire Wire Line
	6750 1900 6800 1900
Wire Wire Line
	4550 2300 4550 2350
Connection ~ 4550 2350
$Comp
L SynthMod:RESISTOR R10
U 1 1 58DD57E8
P 7150 2150
AR Path="/58D873D7/58DD57E8" Ref="R10"  Part="1" 
AR Path="/58D87660/58DD57E8" Ref="R21"  Part="1" 
F 0 "R21" V 7197 2208 60  0000 L CNN
F 1 "52.3K" V 7303 2208 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 7150 2150 60  0001 C CNN
F 3 "" H 7150 2150 60  0000 C CNN
	1    7150 2150
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R11
U 1 1 58DD57E9
P 7150 3650
AR Path="/58D873D7/58DD57E9" Ref="R11"  Part="1" 
AR Path="/58D87660/58DD57E9" Ref="R22"  Part="1" 
F 0 "R22" V 7197 3708 60  0000 L CNN
F 1 "10K" V 7303 3708 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 7150 3650 60  0001 C CNN
F 3 "" H 7150 3650 60  0000 C CNN
	1    7150 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 1900 7150 2050
Connection ~ 6800 1900
Wire Wire Line
	7150 2450 7150 3300
Connection ~ 7150 3300
$Comp
L SynthMod:DUAL_2N3906 Q4
U 1 1 58DD57EA
P 5550 3300
AR Path="/58D873D7/58DD57EA" Ref="Q4"  Part="1" 
AR Path="/58D87660/58DD57EA" Ref="Q10"  Part="1" 
F 0 "Q10" H 5744 3353 60  0000 L CNN
F 1 "2N3906" H 5744 3247 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 5550 3100 60  0001 C CNN
F 3 "" H 5550 3100 60  0000 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DUAL_2N3906 Q4
U 2 1 58DD57EB
P 6550 3300
AR Path="/58D873D7/58DD57EB" Ref="Q4"  Part="2" 
AR Path="/58D87660/58DD57EB" Ref="Q10"  Part="2" 
F 0 "Q10" H 6744 3353 60  0000 L CNN
F 1 "2N3906" H 6744 3247 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 6550 3100 60  0001 C CNN
F 3 "" H 6550 3100 60  0000 C CNN
	2    6550 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 3300 7150 3300
$Comp
L SynthMod:RESISTOR R5
U 1 1 56E26DD9
P 4550 4100
AR Path="/58D873D7/56E26DD9" Ref="R5"  Part="1" 
AR Path="/58D87660/56E26DD9" Ref="R16"  Part="1" 
F 0 "R16" V 4597 4158 60  0000 L CNN
F 1 "10" V 4703 4158 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 4550 4100 60  0001 C CNN
F 3 "" H 4550 4100 60  0000 C CNN
	1    4550 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3950 7150 4450
$Comp
L SynthMod:RESISTOR R8
U 1 1 56E26DDA
P 6000 2650
AR Path="/58D873D7/56E26DDA" Ref="R8"  Part="1" 
AR Path="/58D87660/56E26DDA" Ref="R19"  Part="1" 
F 0 "R19" V 6047 2708 60  0000 L CNN
F 1 "24.9K" V 6153 2708 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 6000 2650 60  0001 C CNN
F 3 "" H 6000 2650 60  0000 C CNN
	1    6000 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2550 6000 1900
Connection ~ 6000 1900
Wire Wire Line
	6000 2950 6000 3050
Wire Wire Line
	5650 3050 6000 3050
Wire Wire Line
	6450 3050 6450 3100
Connection ~ 6000 3050
$Comp
L SynthMod:DUAL_2N3904 Q5
U 2 1 56E26DDB
P 6350 4200
AR Path="/58D873D7/56E26DDB" Ref="Q5"  Part="2" 
AR Path="/58D87660/56E26DDB" Ref="Q11"  Part="2" 
F 0 "Q11" H 6544 4253 60  0000 L CNN
F 1 "2N3904" H 6544 4147 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 6350 4100 60  0001 C CNN
F 3 "" H 6350 4100 60  0000 C CNN
	2    6350 4200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DUAL_2N3904 Q5
U 1 1 56E26DDC
P 5750 4200
AR Path="/58D873D7/56E26DDC" Ref="Q5"  Part="1" 
AR Path="/58D87660/56E26DDC" Ref="Q11"  Part="1" 
F 0 "Q11" H 5944 4253 60  0000 L CNN
F 1 "2N3904" H 5944 4147 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 5750 4100 60  0001 C CNN
F 3 "" H 5750 4100 60  0000 C CNN
	1    5750 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 3100 5650 3050
Wire Wire Line
	5650 3500 5650 3800
Wire Wire Line
	6450 3500 6450 3900
Wire Wire Line
	5950 4200 6050 4200
Wire Wire Line
	6050 4200 6050 3900
Wire Wire Line
	6050 3900 6450 3900
Connection ~ 6450 3900
Connection ~ 6050 4200
Wire Wire Line
	4850 3800 5250 3800
Connection ~ 5650 3800
Wire Wire Line
	4550 4450 5650 4450
Wire Wire Line
	5650 4450 5650 4400
Wire Wire Line
	6450 4450 6450 4400
Connection ~ 5650 4450
Connection ~ 6450 4450
Wire Wire Line
	4550 4900 4550 4450
$Comp
L SynthMod:JFET Q1
U 1 1 56E26DDD
P 3950 2500
AR Path="/58D873D7/56E26DDD" Ref="Q1"  Part="1" 
AR Path="/58D87660/56E26DDD" Ref="Q7"  Part="1" 
F 0 "Q7" H 3950 2928 60  0000 C CNN
F 1 "J111" H 3950 2822 60  0000 C CNN
F 2 "FootPrints:TO92" H 3950 2500 60  0001 C CNN
F 3 "" H 3950 2500 60  0000 C CNN
	1    3950 2500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R4
U 1 1 56E26DDE
P 4250 2700
AR Path="/58D873D7/56E26DDE" Ref="R4"  Part="1" 
AR Path="/58D87660/56E26DDE" Ref="R15"  Part="1" 
F 0 "R15" V 4297 2758 60  0000 L CNN
F 1 "3.3K" V 4403 2758 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 4250 2700 60  0001 C CNN
F 3 "" H 4250 2700 60  0000 C CNN
	1    4250 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 2500 4250 2500
Wire Wire Line
	4250 2500 4250 2600
Wire Wire Line
	3750 2500 3700 2500
Wire Wire Line
	3700 2500 3700 3100
Wire Wire Line
	3700 3100 4250 3100
Wire Wire Line
	4250 3100 4250 3000
Connection ~ 4550 3100
Connection ~ 4250 3100
Wire Wire Line
	4150 2300 4200 2300
Wire Wire Line
	4200 2300 4200 1900
Wire Wire Line
	3550 1900 4200 1900
$Comp
L SynthMod:LM4041-ADJ U1
U 1 1 56E26DDF
P 3850 4450
AR Path="/58D873D7/56E26DDF" Ref="U1"  Part="1" 
AR Path="/58D87660/56E26DDF" Ref="U2"  Part="1" 
F 0 "U2" H 4035 4753 60  0000 L CNN
F 1 "LM4041-ADJ" H 3900 4500 60  0000 L CNN
F 2 "FootPrints:TO92" H 3850 4450 60  0001 C CNN
F 3 "" H 3850 4450 60  0000 C CNN
	1    3850 4450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R1
U 1 1 56E26DE0
P 3350 3700
AR Path="/58D873D7/56E26DE0" Ref="R1"  Part="1" 
AR Path="/58D87660/56E26DE0" Ref="R12"  Part="1" 
F 0 "R12" V 3397 3758 60  0000 L CNN
F 1 "10K" V 3503 3758 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 3350 3700 60  0001 C CNN
F 3 "" H 3350 3700 60  0000 C CNN
	1    3350 3700
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R3
U 1 1 58DD57F4
P 3350 4500
AR Path="/58D873D7/58DD57F4" Ref="R3"  Part="1" 
AR Path="/58D87660/58DD57F4" Ref="R14"  Part="1" 
F 0 "R14" V 3397 4558 60  0000 L CNN
F 1 "90.9K" V 3503 4558 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 3350 4500 60  0001 C CNN
F 3 "" H 3350 4500 60  0000 C CNN
	1    3350 4500
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-3006 R2
U 1 1 58DD57F5
P 3350 4100
AR Path="/58D873D7/58DD57F5" Ref="R2"  Part="1" 
AR Path="/58D87660/58DD57F5" Ref="R13"  Part="1" 
F 0 "R13" V 3397 4042 60  0000 R CNN
F 1 "20K" V 3503 4042 60  0000 R CNN
F 2 "FootPrints:Trimpot-3006" H 3350 4100 60  0001 C CNN
F 3 "" H 3350 4100 60  0000 C CNN
	1    3350 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 4800 3350 4900
Wire Wire Line
	3350 4900 3850 4900
Wire Wire Line
	3850 4900 3850 4450
Connection ~ 4550 4450
Connection ~ 3850 4900
Wire Wire Line
	3850 3300 3850 3550
Wire Wire Line
	3850 3550 3350 3550
Wire Wire Line
	3350 3550 3350 3600
Wire Wire Line
	5100 3050 5100 3300
Wire Wire Line
	3850 3300 5100 3300
Connection ~ 3850 3550
$Comp
L SynthMod:RESISTOR R7
U 1 1 56E26DE3
P 5100 2750
AR Path="/58D873D7/56E26DE3" Ref="R7"  Part="1" 
AR Path="/58D87660/56E26DE3" Ref="R18"  Part="1" 
F 0 "R18" V 5147 2808 60  0000 L CNN
F 1 "12K" V 5253 2808 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 5100 2750 60  0001 C CNN
F 3 "" H 5100 2750 60  0000 C CNN
	1    5100 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 2650 5100 1900
Connection ~ 5100 1900
Connection ~ 5100 3300
Connection ~ 4200 1900
Connection ~ 7150 1900
Connection ~ 7150 4450
Text HLabel 3550 1900 0    60   Input ~ 0
VIN
Text HLabel 7950 1900 2    60   Output ~ 0
VOUT
$Comp
L power:GND #PWR0145
U 1 1 56E26DE4
P 7150 5000
AR Path="/58D873D7/56E26DE4" Ref="#PWR0145"  Part="1" 
AR Path="/58D87660/56E26DE4" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 7150 4750 50  0001 C CNN
F 1 "GND" H 7158 4826 50  0000 C CNN
F 2 "" H 7150 5000 50  0000 C CNN
F 3 "" H 7150 5000 50  0000 C CNN
	1    7150 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 56E26DE5
P 7700 2650
AR Path="/58D873D7/56E26DE5" Ref="C3"  Part="1" 
AR Path="/58D87660/56E26DE5" Ref="C6"  Part="1" 
F 0 "C6" H 7818 2696 50  0000 L CNN
F 1 "100uF" H 7818 2604 50  0000 L CNN
F 2 "FootPrints:CapPol-Rad-0.2x0.1" H 7738 2500 50  0001 C CNN
F 3 "" H 7700 2650 50  0000 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2500 7700 1900
Connection ~ 7700 1900
$Comp
L power:GND #PWR0146
U 1 1 58DD57F9
P 7700 2800
AR Path="/58D873D7/58DD57F9" Ref="#PWR0146"  Part="1" 
AR Path="/58D87660/58DD57F9" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 7700 2550 50  0001 C CNN
F 1 "GND" H 7708 2626 50  0000 C CNN
F 2 "" H 7700 2800 50  0000 C CNN
F 3 "" H 7700 2800 50  0000 C CNN
	1    7700 2800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C2
U 1 1 58D93C15
P 5000 3550
AR Path="/58D873D7/58D93C15" Ref="C2"  Part="1" 
AR Path="/58D87660/58D93C15" Ref="C5"  Part="1" 
F 0 "C5" V 5115 3596 50  0000 L CNN
F 1 ".001uF" V 5150 3300 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 5038 3400 50  0001 C CNN
F 3 "" H 5000 3550 50  0000 C CNN
	1    5000 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 3550 4550 3550
Connection ~ 4550 3550
Wire Wire Line
	5150 3550 5250 3550
Wire Wire Line
	5250 3550 5250 3800
Connection ~ 5250 3800
$Comp
L SynthMod:KSC1845 Q9
U 1 1 58DD57FE
P 4650 3800
AR Path="/58D87660/58DD57FE" Ref="Q9"  Part="1" 
AR Path="/58D873D7/58DD57FE" Ref="Q?"  Part="1" 
F 0 "Q9" H 4950 3850 50  0000 R CNN
F 1 "KSC1845" H 5200 3750 50  0000 R CNN
F 2 "FootPrints:TO92" H 4850 3900 50  0001 C CNN
F 3 "" H 4650 3800 50  0000 C CNN
	1    4650 3800
	-1   0    0    -1  
$EndComp
Text Notes 8400 1000 0    60   ~ 0
(Vo - 1)/2.5 = R21/R22 or\nR22*(Vo -1)/2.5 = R21\n15 Volts  R21 = 69.8K  R22 = 10K\n12 Volts R21 = 49.9K R2 = 20K
Text Label 5400 1900 0    60   ~ 0
+15V_CS
Wire Wire Line
	6250 1900 6350 1900
Wire Wire Line
	4550 2350 4550 3100
Wire Wire Line
	6800 1900 7150 1900
Wire Wire Line
	7150 3300 7150 3550
Wire Wire Line
	6000 1900 6250 1900
Wire Wire Line
	6000 3050 6450 3050
Wire Wire Line
	6450 3900 6450 4000
Wire Wire Line
	6050 4200 6150 4200
Wire Wire Line
	5650 3800 5650 4000
Wire Wire Line
	5650 4450 6450 4450
Wire Wire Line
	6450 4450 7150 4450
Wire Wire Line
	4550 3100 4550 3550
Wire Wire Line
	4250 3100 4550 3100
Wire Wire Line
	4550 4450 4550 4400
Wire Wire Line
	3850 4900 4550 4900
Wire Wire Line
	3850 3550 3850 3950
Wire Wire Line
	5100 1900 6000 1900
Wire Wire Line
	5100 3300 5350 3300
Wire Wire Line
	4200 1900 4350 1900
Wire Wire Line
	7150 1900 7700 1900
Wire Wire Line
	7150 4450 7150 5000
Wire Wire Line
	7700 1900 7950 1900
Wire Wire Line
	4550 3550 4550 3600
Wire Wire Line
	5250 3800 5650 3800
Wire Wire Line
	4550 2350 6050 2350
$EndSCHEMATC
