EESchema Schematic File Version 4
LIBS:500-1006-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 4
Title "Negative Voltage Regulator"
Date "2016-03-11"
Rev ""
Comp "Jim Patchell"
Comment1 "patchell@cox.net"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:TIP147 Q14
U 1 1 56E270ED
P 4050 1850
F 0 "Q14" V 4382 1875 50  0000 C CNN
F 1 "TIP147" V 4290 1875 50  0000 C CNN
F 2 "FootPrints:TO-264" H 4250 1950 50  0001 C CNN
F 3 "" H 4050 1850 50  0000 C CNN
	1    4050 1850
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:KSA992 Q15
U 1 1 56E27166
P 4050 3800
F 0 "Q15" H 4244 3846 50  0000 L CNN
F 1 "KSA992" H 4244 3754 50  0000 L CNN
F 2 "FootPrints:TO92" H 4250 3900 50  0001 C CNN
F 3 "" H 4050 3800 50  0000 C CNN
	1    4050 3800
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:DUAL_2N3906 Q17
U 2 1 56E271B1
P 5850 4200
F 0 "Q17" H 6044 4147 60  0000 L CNN
F 1 "2N3906" H 6044 4253 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 5850 4000 60  0001 C CNN
F 3 "" H 5850 4000 60  0000 C CNN
	2    5850 4200
	1    0    0    1   
$EndComp
$Comp
L SynthMod:DUAL_2N3906 Q17
U 1 1 56E27290
P 5200 4200
F 0 "Q17" H 5394 4147 60  0000 L CNN
F 1 "2N3906" H 5394 4253 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 5200 4000 60  0001 C CNN
F 3 "" H 5200 4000 60  0000 C CNN
	1    5200 4200
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:DUAL_2N3904 Q16
U 1 1 56E272C5
P 6050 3100
F 0 "Q16" H 6244 3047 60  0000 L CNN
F 1 "2N3904" H 6244 3153 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 6050 3000 60  0001 C CNN
F 3 "" H 6050 3000 60  0000 C CNN
	1    6050 3100
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:DUAL_2N3904 Q16
U 2 1 56E27364
P 5000 3100
F 0 "Q16" H 5194 3047 60  0000 L CNN
F 1 "2N3904" H 5194 3153 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 5000 3000 60  0001 C CNN
F 3 "" H 5000 3000 60  0000 C CNN
	2    5000 3100
	1    0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R27
U 1 1 56E2746C
P 5500 2450
F 0 "R27" V 5547 2508 60  0000 L CNN
F 1 "30K" V 5653 2508 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 5500 2450 60  0001 C CNN
F 3 "" H 5500 2450 60  0000 C CNN
	1    5500 2450
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R25
U 1 1 56E274F9
P 3950 4200
F 0 "R25" V 3997 4258 60  0000 L CNN
F 1 "10" V 4103 4258 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 3950 4200 60  0001 C CNN
F 3 "" H 3950 4200 60  0000 C CNN
	1    3950 4200
	0    1    1    0   
$EndComp
$Comp
L SynthMod:DUAL_2N3904 Q18
U 2 1 56E275B9
P 6450 3350
F 0 "Q18" H 6644 3297 60  0000 L CNN
F 1 "2N3904" H 6644 3403 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 6450 3250 60  0001 C CNN
F 3 "" H 6450 3250 60  0000 C CNN
	2    6450 3350
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:DUAL_2N3904 Q18
U 1 1 56E275FC
P 4600 3350
F 0 "Q18" H 4794 3297 60  0000 L CNN
F 1 "2N3904" H 4794 3403 60  0000 L CNN
F 2 "FootPrints:DUAL_TO92" H 4600 3250 60  0001 C CNN
F 3 "" H 4600 3250 60  0000 C CNN
	1    4600 3350
	1    0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R26
U 1 1 56E278A9
P 4700 2500
F 0 "R26" V 4747 2558 60  0000 L CNN
F 1 "2.2M" V 4853 2558 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 4700 2500 60  0001 C CNN
F 3 "" H 4700 2500 60  0000 C CNN
	1    4700 2500
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R28
U 1 1 56E278F4
P 6350 2500
F 0 "R28" V 6397 2558 60  0000 L CNN
F 1 "2.2M" V 6503 2558 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 6350 2500 60  0001 C CNN
F 3 "" H 6350 2500 60  0000 C CNN
	1    6350 2500
	0    1    1    0   
$EndComp
$Comp
L SynthMod:PNP Q19
U 1 1 56E2E1B8
P 7350 2200
F 0 "Q19" V 7589 2200 50  0000 C CNN
F 1 "2N3906" V 7681 2200 50  0000 C CNN
F 2 "FootPrints:TO92" H 7550 2300 50  0001 C CNN
F 3 "" H 7350 2200 50  0000 C CNN
	1    7350 2200
	0    -1   1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R29
U 1 1 56E2E35F
P 7800 1750
F 0 "R29" H 7800 1650 60  0000 L CNN
F 1 "0.51" H 7800 1550 60  0000 L CNN
F 2 "FootPrints:AXIAL0.7X0.2" H 7800 1750 60  0001 C CNN
F 3 "" H 7800 1750 60  0000 C CNN
	1    7800 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 3300 5100 3800
Wire Wire Line
	5950 3300 5950 3750
Wire Wire Line
	5400 4200 5500 4200
Wire Wire Line
	5950 3750 5500 3750
Wire Wire Line
	5500 3750 5500 4200
Connection ~ 5500 4200
Connection ~ 5950 3750
Wire Wire Line
	4250 3800 5100 3800
Connection ~ 5100 3800
Wire Wire Line
	5100 2900 5100 2800
Wire Wire Line
	5100 2800 5500 2800
Wire Wire Line
	5950 2800 5950 2900
Wire Wire Line
	5500 2750 5500 2800
Connection ~ 5500 2800
Wire Wire Line
	4300 1750 4700 1750
Wire Wire Line
	5500 1750 5500 2350
Wire Wire Line
	3950 2150 3950 2300
Wire Wire Line
	3950 4000 3950 4100
Wire Wire Line
	3950 4500 3950 4600
Wire Wire Line
	3950 4600 4350 4600
Wire Wire Line
	5100 4600 5100 4400
Wire Wire Line
	5950 4600 5950 4400
Connection ~ 5100 4600
Wire Wire Line
	4800 3100 4700 3100
Wire Wire Line
	4700 2800 4700 3100
Wire Wire Line
	4700 3550 4700 4600
Connection ~ 4700 4600
Wire Wire Line
	4400 3350 4350 3350
Wire Wire Line
	4350 3350 4350 4600
Connection ~ 4350 4600
Wire Wire Line
	6350 1750 6350 2400
Connection ~ 5500 1750
Wire Wire Line
	4700 1750 4700 2400
Connection ~ 4700 1750
Connection ~ 4700 3100
Wire Wire Line
	6250 3100 6350 3100
Wire Wire Line
	6350 2800 6350 3100
Connection ~ 6350 3100
Wire Wire Line
	6350 3550 6350 4600
Connection ~ 5950 4600
Connection ~ 6350 1750
Wire Wire Line
	7350 2000 7350 1750
Connection ~ 7350 1750
Wire Wire Line
	7900 1750 8150 1750
Wire Wire Line
	8150 1750 8150 2300
Wire Wire Line
	8150 2300 7550 2300
Wire Wire Line
	7150 2300 3950 2300
Connection ~ 3950 2300
$Comp
L SynthMod:RESISTOR R30
U 1 1 56E2EBCC
P 8150 2750
F 0 "R30" V 8197 2808 60  0000 L CNN
F 1 "30K" V 8303 2808 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 8150 2750 60  0001 C CNN
F 3 "" H 8150 2750 60  0000 C CNN
	1    8150 2750
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R31
U 1 1 56E2EC4F
P 8150 3850
F 0 "R31" V 8197 3908 60  0000 L CNN
F 1 "30K" V 8303 3908 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 8150 3850 60  0001 C CNN
F 3 "" H 8150 3850 60  0000 C CNN
	1    8150 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 3050 8150 3350
Connection ~ 8150 2300
Wire Wire Line
	6650 3350 8150 3350
Connection ~ 8150 3350
Wire Wire Line
	8150 4150 8150 5050
Wire Wire Line
	8150 5050 2600 5050
Text HLabel 2500 1750 0    60   Input ~ 0
VIN
Text HLabel 2600 5050 0    60   Input ~ 0
Vref
Text HLabel 8950 1750 2    60   Output ~ 0
VOUT
Connection ~ 8150 1750
Wire Wire Line
	3750 1750 3550 1750
$Comp
L SynthMod:JFET Q13
U 1 1 56E2F33C
P 3300 2450
F 0 "Q13" H 3300 2222 60  0000 C CNN
F 1 "J111" H 3300 2328 60  0000 C CNN
F 2 "FootPrints:TO92" H 3300 2450 60  0001 C CNN
F 3 "" H 3300 2450 60  0000 C CNN
	1    3300 2450
	1    0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R24
U 1 1 56E2F3B3
P 3550 2050
F 0 "R24" V 3597 2108 60  0000 L CNN
F 1 "3.3K" V 3703 2108 60  0000 L CNN
F 2 "FootPrints:AXIAL0.4" H 3550 2050 60  0001 C CNN
F 3 "" H 3550 2050 60  0000 C CNN
	1    3550 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2350 3550 2450
Wire Wire Line
	3550 2450 3500 2450
Wire Wire Line
	3550 1950 3550 1750
Connection ~ 3550 1750
Wire Wire Line
	3100 2450 3050 2450
Wire Wire Line
	3050 2450 3050 1750
Connection ~ 3050 1750
Wire Wire Line
	3500 2650 3950 2650
Connection ~ 3950 2650
$Comp
L power:GND #PWR0112
U 1 1 56E2FA3A
P 6350 4700
F 0 "#PWR0112" H 6350 4450 50  0001 C CNN
F 1 "GND" H 6358 4526 50  0000 C CNN
F 2 "" H 6350 4700 50  0000 C CNN
F 3 "" H 6350 4700 50  0000 C CNN
	1    6350 4700
	1    0    0    -1  
$EndComp
Connection ~ 6350 4600
$Comp
L Device:CP C8
U 1 1 56E2FC78
P 8650 2100
F 0 "C8" H 8768 2146 50  0000 L CNN
F 1 "100uF" H 8768 2054 50  0000 L CNN
F 2 "FootPrints:CapPol-Rad-0.2x0.1" H 8688 1950 50  0001 C CNN
F 3 "" H 8650 2100 50  0000 C CNN
	1    8650 2100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 56E2FF1F
P 8650 2350
F 0 "#PWR0114" H 8650 2100 50  0001 C CNN
F 1 "GND" H 8658 2176 50  0000 C CNN
F 2 "" H 8650 2350 50  0000 C CNN
F 3 "" H 8650 2350 50  0000 C CNN
	1    8650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1950 8650 1750
Connection ~ 8650 1750
Wire Wire Line
	8650 2350 8650 2250
$Comp
L SynthMod:Cap C12
U 1 1 58D9580E
P 4250 3100
F 0 "C12" H 4275 3200 50  0000 L CNN
F 1 ".001uF" H 4275 3000 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 4288 2950 50  0001 C CNN
F 3 "" H 4250 3100 50  0000 C CNN
	1    4250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3250 4250 3800
Connection ~ 4250 3800
Wire Wire Line
	4250 2950 4250 2800
Wire Wire Line
	4250 2800 3950 2800
Connection ~ 3950 2800
Text Label 5200 1750 0    60   ~ 0
-15V_CS
Wire Wire Line
	5500 4200 5650 4200
Wire Wire Line
	5950 3750 5950 4000
Wire Wire Line
	5100 3800 5100 4000
Wire Wire Line
	5500 2800 5950 2800
Wire Wire Line
	5100 4600 5950 4600
Wire Wire Line
	4700 4600 5100 4600
Wire Wire Line
	4350 4600 4700 4600
Wire Wire Line
	5500 1750 6350 1750
Wire Wire Line
	4700 1750 5500 1750
Wire Wire Line
	4700 3100 4700 3150
Wire Wire Line
	6350 3100 6350 3150
Wire Wire Line
	5950 4600 6350 4600
Wire Wire Line
	6350 1750 7350 1750
Wire Wire Line
	7350 1750 7500 1750
Wire Wire Line
	3950 2300 3950 2650
Wire Wire Line
	8150 2300 8150 2650
Wire Wire Line
	8150 3350 8150 3750
Wire Wire Line
	8150 1750 8650 1750
Wire Wire Line
	3550 1750 3050 1750
Wire Wire Line
	3050 1750 2500 1750
Wire Wire Line
	3950 2650 3950 2800
Wire Wire Line
	6350 4600 6350 4700
Wire Wire Line
	8650 1750 8950 1750
Wire Wire Line
	3950 2800 3950 3600
$EndSCHEMATC
