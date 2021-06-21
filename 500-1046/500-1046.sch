EESchema Schematic File Version 4
LIBS:500-1046-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Power Amplifier Module"
Date "2017-04-10"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:TIP140 Q10
U 1 1 58EC54DF
P 7400 1900
F 0 "Q10" H 7675 2000 50  0000 R CNN
F 1 "TIP142" H 7850 1850 50  0000 R CNN
F 2 "FootPrints:TO-264" H 7600 2000 50  0001 C CNN
F 3 "" H 7400 1900 50  0000 C CNN
	1    7400 1900
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:TIP145 Q11
U 1 1 58EC55A6
P 7400 3700
F 0 "Q11" H 7700 3750 50  0000 R CNN
F 1 "TIP147" H 7850 3650 50  0000 R CNN
F 2 "FootPrints:TO-264" H 7600 3800 50  0001 C CNN
F 3 "" H 7400 3700 50  0000 C CNN
	1    7400 3700
	1    0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R23
U 1 1 58EC566D
P 7500 2400
F 0 "R23" V 7550 2250 60  0000 C CNN
F 1 ".33" V 7650 2250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.7X0.2" H 7500 2400 60  0001 C CNN
F 3 "" H 7500 2400 60  0000 C CNN
	1    7500 2400
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R24
U 1 1 58EC576C
P 7500 2950
F 0 "R24" V 7500 2850 60  0000 C CNN
F 1 ".33" V 7600 2800 60  0000 C CNN
F 2 "FootPrints:AXIAL0.7X0.2" H 7500 2950 60  0001 C CNN
F 3 "" H 7500 2950 60  0000 C CNN
	1    7500 2950
	0    1    1    0   
$EndComp
$Comp
L SynthMod:MJE340 Q7
U 1 1 58EEF79C
P 5700 2750
F 0 "Q7" H 6000 2800 50  0000 R CNN
F 1 "MJE340" H 5650 2600 50  0000 R CNN
F 2 "FootPrints:TO-225" H 5900 2850 50  0001 C CNN
F 3 "" H 5700 2750 50  0000 C CNN
	1    5700 2750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R15
U 1 1 58EEF7D5
P 5200 2150
F 0 "R15" V 5250 2300 60  0000 C CNN
F 1 "2.2K" V 5350 2300 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5200 2150 60  0001 C CNN
F 3 "" H 5200 2150 60  0000 C CNN
	1    5200 2150
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R17
U 1 1 58EEF881
P 5200 3150
F 0 "R17" V 5300 3300 60  0000 C CNN
F 1 "1K" V 5400 3350 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5200 3150 60  0001 C CNN
F 3 "" H 5200 3150 60  0000 C CNN
	1    5200 3150
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-3006 R16
U 1 1 58EEF8C3
P 5200 2650
F 0 "R16" V 5100 2800 60  0000 C CNN
F 1 "1K" V 5200 2800 60  0000 C CNN
F 2 "FootPrints:Trimpot-3006" H 5200 2650 60  0001 C CNN
F 3 "" H 5200 2650 60  0000 C CNN
	1    5200 2650
	0    1    1    0   
$EndComp
$Comp
L SynthMod:NPN Q8
U 1 1 58EEFADD
P 6650 2200
F 0 "Q8" H 6950 2250 50  0000 R CNN
F 1 "2N3904" H 6650 2400 50  0000 R CNN
F 2 "FootPrints:TO92" H 6850 2300 50  0001 C CNN
F 3 "" H 6650 2200 50  0000 C CNN
	1    6650 2200
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R21
U 1 1 58EEFB11
P 7250 2200
F 0 "R21" H 7350 2100 60  0000 C CNN
F 1 "1K" H 7350 2300 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7250 2200 60  0001 C CNN
F 3 "" H 7250 2200 60  0000 C CNN
	1    7250 2200
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R19
U 1 1 58EEFB77
P 6900 2550
F 0 "R19" V 7000 2700 60  0000 C CNN
F 1 "499" V 6900 2700 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6900 2550 60  0001 C CNN
F 3 "" H 6900 2550 60  0000 C CNN
	1    6900 2550
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:PNP Q9
U 1 1 58EEFD02
P 6650 3350
F 0 "Q9" H 7000 3150 50  0000 R CNN
F 1 "2N3906" H 7100 3250 50  0000 R CNN
F 2 "FootPrints:TO92" H 6850 3450 50  0001 C CNN
F 3 "" H 6650 3350 50  0000 C CNN
	1    6650 3350
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R22
U 1 1 58EEFDBD
P 7250 3350
F 0 "R22" H 7400 3450 60  0000 C CNN
F 1 "1K" H 7400 3550 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7250 3350 60  0001 C CNN
F 3 "" H 7250 3350 60  0000 C CNN
	1    7250 3350
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R20
U 1 1 58EEFE24
P 6900 3150
F 0 "R20" V 7100 3300 60  0000 C CNN
F 1 "499" V 7000 3300 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6900 3150 60  0001 C CNN
F 3 "" H 6900 3150 60  0000 C CNN
	1    6900 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 2700 7500 2800
Wire Wire Line
	7500 3250 7500 3350
Wire Wire Line
	7500 2150 7500 2200
Wire Wire Line
	5200 2550 5200 2450
Wire Wire Line
	5200 3050 5200 2950
Wire Wire Line
	5450 2750 5500 2750
Wire Wire Line
	5200 1700 5200 1800
Wire Wire Line
	5200 1800 5800 1800
Wire Wire Line
	5800 2550 5800 1800
Connection ~ 5800 1800
Wire Wire Line
	5200 3450 5200 3800
Wire Wire Line
	5200 3800 5800 3800
Wire Wire Line
	5800 2950 5800 3800
Connection ~ 5800 3800
Wire Wire Line
	7350 2200 7500 2200
Connection ~ 7500 2200
Wire Wire Line
	7350 3350 7500 3350
Connection ~ 7500 3350
Wire Wire Line
	6850 3350 6900 3350
Wire Wire Line
	6900 3250 6900 3350
Connection ~ 6900 3350
Wire Wire Line
	6850 2200 6900 2200
Wire Wire Line
	6900 2250 6900 2200
Connection ~ 6900 2200
Wire Wire Line
	6900 2650 6900 2800
Wire Wire Line
	6550 2800 6900 2800
Connection ~ 6900 2800
Connection ~ 7500 2800
Wire Wire Line
	6550 2400 6550 2800
Connection ~ 6550 2800
Wire Wire Line
	6550 2000 6550 1800
Connection ~ 6550 1800
Wire Wire Line
	6550 3550 6550 3800
Connection ~ 6550 3800
$Comp
L SynthMod:KSA992 Q5
U 1 1 58EF02D7
P 5100 1500
F 0 "Q5" H 5400 1550 50  0000 R CNN
F 1 "KSA992" H 5550 1450 50  0000 R CNN
F 2 "FootPrints:TO92" H 5300 1600 50  0001 C CNN
F 3 "" H 5100 1500 50  0000 C CNN
	1    5100 1500
	1    0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R14
U 1 1 58EF0575
P 5200 900
F 0 "R14" V 5150 1000 60  0000 C CNN
F 1 "10" V 5250 1000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5200 900 60  0001 C CNN
F 3 "" H 5200 900 60  0000 C CNN
	1    5200 900 
	0    1    1    0   
$EndComp
Connection ~ 5200 1800
Wire Wire Line
	5200 1300 5200 1200
Wire Wire Line
	5200 650  5200 800 
Wire Wire Line
	3200 650  3700 650 
Wire Wire Line
	7500 650  7500 1600
$Comp
L SynthMod:KSC1845 Q6
U 1 1 58EF0776
P 5100 4150
F 0 "Q6" H 5400 4200 50  0000 R CNN
F 1 "KSC1845" H 5650 4100 50  0000 R CNN
F 2 "FootPrints:TO92" H 5300 4250 50  0001 C CNN
F 3 "" H 5100 4150 50  0000 C CNN
	1    5100 4150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R18
U 1 1 58EF08A2
P 5200 4650
F 0 "R18" V 5250 4800 60  0000 C CNN
F 1 "390" V 5350 4950 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5200 4650 60  0001 C CNN
F 3 "" H 5200 4650 60  0000 C CNN
	1    5200 4650
	0    1    1    0   
$EndComp
Connection ~ 5200 3800
Wire Wire Line
	5200 4350 5200 4550
Wire Wire Line
	5200 5150 5200 4950
Wire Wire Line
	3350 5150 4000 5150
Wire Wire Line
	7500 5150 7500 4000
$Comp
L SynthMod:RESISTOR R26
U 1 1 5A82429E
P 8400 2800
F 0 "R26" H 8400 2500 60  0000 C CNN
F 1 "10" H 8550 2600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.7X0.2" H 8400 2800 60  0001 C CNN
F 3 "" H 8400 2800 60  0000 C CNN
	1    8400 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5A824445
P 8550 2600
F 0 "L1" V 8500 2600 50  0000 C CNN
F 1 "30uH" V 8625 2600 50  0000 C CNN
F 2 "FootPrints:AXIAL0.7X0.2" H 8550 2600 50  0001 C CNN
F 3 "" H 8550 2600 50  0001 C CNN
	1    8550 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 2600 8200 2600
Wire Wire Line
	8200 2600 8200 2800
Connection ~ 8200 2800
Wire Wire Line
	8700 2600 8800 2600
Wire Wire Line
	8800 2600 8800 2800
Wire Wire Line
	8700 2800 8800 2800
Connection ~ 8800 2800
$Comp
L SynthMod:KSC1845 Q1
U 1 1 5A8247B0
P 3100 2800
F 0 "Q1" H 3400 2850 50  0000 R CNN
F 1 "KSC1845" H 3100 3000 50  0000 R CNN
F 2 "FootPrints:TO92" H 3300 2900 50  0001 C CNN
F 3 "" H 3100 2800 50  0000 C CNN
	1    3100 2800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:KSC1845 Q3
U 1 1 5A82495B
P 3800 2800
F 0 "Q3" H 4100 2850 50  0000 R CNN
F 1 "KSC1845" H 3800 3000 50  0000 R CNN
F 2 "FootPrints:TO92" H 4000 2900 50  0001 C CNN
F 3 "" H 3800 2800 50  0000 C CNN
	1    3800 2800
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:KSA992 Q4
U 1 1 5A8249CD
P 4500 1800
F 0 "Q4" H 4800 1850 50  0000 R CNN
F 1 "KSA992" H 4950 1750 50  0000 R CNN
F 2 "FootPrints:TO92" H 4700 1900 50  0001 C CNN
F 3 "" H 4500 1800 50  0000 C CNN
	1    4500 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	4900 1500 4600 1500
Wire Wire Line
	4600 1250 4600 1500
$Comp
L SynthMod:RESISTOR R12
U 1 1 5A824A86
P 4600 950
F 0 "R12" V 4600 1100 60  0000 C CNN
F 1 "1K" V 4750 1100 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4600 950 60  0001 C CNN
F 3 "" H 4600 950 60  0000 C CNN
	1    4600 950 
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R5
U 1 1 5A824AF2
P 3700 1000
F 0 "R5" V 3700 1150 60  0000 C CNN
F 1 "1.2K" V 3850 1150 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3700 1000 60  0001 C CNN
F 3 "" H 3700 1000 60  0000 C CNN
	1    3700 1000
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R2
U 1 1 5A824B6F
P 3200 1000
F 0 "R2" V 3250 1200 60  0000 C CNN
F 1 "1.2K" V 3350 1200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3200 1000 60  0001 C CNN
F 3 "" H 3200 1000 60  0000 C CNN
	1    3200 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1300 3200 1800
Wire Wire Line
	3700 1300 3700 2600
Wire Wire Line
	3200 900  3200 650 
Connection ~ 5200 650 
Wire Wire Line
	3700 900  3700 650 
Connection ~ 3700 650 
Wire Wire Line
	4600 850  4600 650 
Connection ~ 4600 650 
Connection ~ 4600 1500
Wire Wire Line
	4600 2000 4600 2100
Wire Wire Line
	4600 2100 4850 2100
Wire Wire Line
	4850 1900 4850 2100
Wire Wire Line
	4850 1900 5200 1900
Connection ~ 5200 1900
Wire Wire Line
	4300 1800 4100 1800
Connection ~ 3200 1800
$Comp
L SynthMod:KSC1845 Q2
U 1 1 5A824F51
P 3450 4150
F 0 "Q2" H 3750 4200 50  0000 R CNN
F 1 "KSC1845" H 4000 4100 50  0000 R CNN
F 2 "FootPrints:TO92" H 3650 4250 50  0001 C CNN
F 3 "" H 3450 4150 50  0000 C CNN
	1    3450 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 4150 4000 4150
$Comp
L SynthMod:RESISTOR R3
U 1 1 5A825209
P 3200 3200
F 0 "R3" H 3250 3300 60  0000 C CNN
F 1 "220" H 3350 3100 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3200 3200 60  0001 C CNN
F 3 "" H 3200 3200 60  0000 C CNN
	1    3200 3200
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R6
U 1 1 5A8252B9
P 3700 3200
F 0 "R6" H 3800 3300 60  0000 C CNN
F 1 "220" H 3850 3100 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3700 3200 60  0001 C CNN
F 3 "" H 3700 3200 60  0000 C CNN
	1    3700 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 3500 3200 3700
Wire Wire Line
	3200 3700 3350 3700
Wire Wire Line
	3350 3700 3350 3950
Wire Wire Line
	3700 3700 3700 3500
Connection ~ 3350 3700
$Comp
L SynthMod:RESISTOR R4
U 1 1 5A825454
P 3350 4650
F 0 "R4" V 3400 4500 60  0000 C CNN
F 1 "909" V 3500 4500 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3350 4650 60  0001 C CNN
F 3 "" H 3350 4650 60  0000 C CNN
	1    3350 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 4350 3350 4550
Wire Wire Line
	3350 4950 3350 5150
Connection ~ 5200 5150
Wire Wire Line
	3200 3000 3200 3100
Wire Wire Line
	3700 3000 3700 3100
$Comp
L SynthMod:RESISTOR R10
U 1 1 5A8258BB
P 4100 3100
F 0 "R10" V 4150 3250 60  0000 C CNN
F 1 "390" V 4250 3250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4100 3100 60  0001 C CNN
F 3 "" H 4100 3100 60  0000 C CNN
	1    4100 3100
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R11
U 1 1 5A82594E
P 4500 2800
F 0 "R11" H 4600 3000 60  0000 C CNN
F 1 "10K" H 4600 2900 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4500 2800 60  0001 C CNN
F 3 "" H 4500 2800 60  0000 C CNN
	1    4500 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 2800 4100 2800
Wire Wire Line
	4100 3000 4100 2800
Connection ~ 4100 2800
Wire Wire Line
	6550 3000 4850 3000
Wire Wire Line
	4850 3000 4850 2800
Wire Wire Line
	4850 2800 4600 2800
Connection ~ 6550 3000
$Comp
L SynthMod:RESISTOR R1
U 1 1 5A825B30
P 2700 3100
F 0 "R1" H 2700 2800 60  0000 C CNN
F 1 "10K" H 2850 2900 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2700 3100 60  0001 C CNN
F 3 "" H 2700 3100 60  0000 C CNN
	1    2700 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2800 2700 2800
Wire Wire Line
	2700 2800 2700 3000
Wire Wire Line
	2700 3400 2700 3600
$Comp
L SynthMod:Cap_Polarized C2
U 1 1 5A825C91
P 4100 3600
F 0 "C2" H 4125 3700 50  0000 L CNN
F 1 "100uF" H 4125 3500 50  0000 L CNN
F 2 "FootPrints:Cap-Pol-Rad-0.2_0.1" H 4138 3450 50  0001 C CNN
F 3 "" H 4100 3600 50  0000 C CNN
	1    4100 3600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Polarized C1
U 1 1 5A825E4C
P 2450 2800
F 0 "C1" H 2475 2900 50  0000 L CNN
F 1 "10uF" H 2475 2700 50  0000 L CNN
F 2 "FootPrints:Cap-Pol-Rad-0.2_0.1" H 2488 2650 50  0001 C CNN
F 3 "" H 2450 2800 50  0000 C CNN
	1    2450 2800
	0    1    1    0   
$EndComp
Connection ~ 2700 2800
Wire Wire Line
	1950 2800 2300 2800
$Comp
L power:GND #PWR01
U 1 1 5A8260E3
P 2700 3600
F 0 "#PWR01" H 2700 3350 50  0001 C CNN
F 1 "GND" H 2700 3450 50  0000 C CNN
F 2 "" H 2700 3600 50  0001 C CNN
F 3 "" H 2700 3600 50  0001 C CNN
	1    2700 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5A8261C7
P 4100 3750
F 0 "#PWR02" H 4100 3500 50  0001 C CNN
F 1 "GND" H 4100 3600 50  0000 C CNN
F 2 "" H 4100 3750 50  0001 C CNN
F 3 "" H 4100 3750 50  0001 C CNN
	1    4100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3450 4100 3400
$Comp
L SynthMod:Cap_Bypass C4
U 1 1 5A826391
P 7900 900
F 0 "C4" H 7925 1000 50  0000 L CNN
F 1 "0.1uF" H 7925 800 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 7938 750 50  0001 C CNN
F 3 "" H 7900 900 50  0000 C CNN
	1    7900 900 
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C5
U 1 1 5A8265B8
P 7900 4900
F 0 "C5" H 7925 5000 50  0000 L CNN
F 1 "0.1uF" H 7925 4800 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 7938 4750 50  0001 C CNN
F 3 "" H 7900 4900 50  0000 C CNN
	1    7900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5150 7900 5050
Connection ~ 7500 5150
Wire Wire Line
	7900 4750 7900 3150
Wire Wire Line
	7900 3150 7650 3150
Wire Wire Line
	7650 3150 7650 2350
Wire Wire Line
	7650 2350 7900 2350
Wire Wire Line
	7900 2350 7900 1300
Wire Wire Line
	7900 650  7900 750 
Connection ~ 7500 650 
$Comp
L SynthMod:Header_6x1 P2
U 1 1 5A82686B
P 9800 900
F 0 "P2" H 9850 550 60  0000 C CNN
F 1 "Header_6x1" H 9900 450 60  0000 C CNN
F 2 "FootPrints:TERMINAL-BLOCK-SCREWS" H 9800 750 60  0001 C CNN
F 3 "" H 9800 750 60  0001 C CNN
	1    9800 900 
	1    0    0    -1  
$EndComp
Connection ~ 7900 650 
Wire Wire Line
	9600 750  9100 750 
Wire Wire Line
	9100 750  9100 1300
Wire Wire Line
	9100 1300 7900 1300
Connection ~ 7900 1300
Wire Wire Line
	9600 850  9150 850 
Wire Wire Line
	9150 850  9150 1550
Wire Wire Line
	9600 1150 9400 1150
Wire Wire Line
	9400 1150 9400 5150
Connection ~ 7900 5150
Wire Wire Line
	9600 950  9250 950 
Wire Wire Line
	9250 950  9250 2800
$Comp
L power:GND #PWR03
U 1 1 5A826D12
P 9150 1550
F 0 "#PWR03" H 9150 1300 50  0001 C CNN
F 1 "GND" H 9150 1400 50  0000 C CNN
F 2 "" H 9150 1550 50  0001 C CNN
F 3 "" H 9150 1550 50  0001 C CNN
	1    9150 1550
	1    0    0    -1  
$EndComp
Text Label 9150 650  0    60   ~ 0
V+
Text Label 9500 1150 0    60   ~ 0
V-
Text Label 9200 750  0    60   ~ 0
GND_DIRTY
Text Label 9450 950  0    60   ~ 0
OUT
$Comp
L SynthMod:Header_4x1 P1
U 1 1 5A826F5D
P 1600 2950
F 0 "P1" H 1600 2700 60  0000 C CNN
F 1 "Header_4x1" H 1600 2600 60  0000 C CNN
F 2 "FootPrints:Header_4Pin_RA_0.1" H 1600 2700 60  0001 C CNN
F 3 "" H 1600 2700 60  0001 C CNN
	1    1600 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 2800 1950 2900
Wire Wire Line
	1950 2900 1800 2900
Wire Wire Line
	1800 2800 1900 2800
Wire Wire Line
	1900 2800 1900 3000
$Comp
L power:GND #PWR04
U 1 1 5A827192
P 1900 3250
F 0 "#PWR04" H 1900 3000 50  0001 C CNN
F 1 "GND" H 1900 3100 50  0000 C CNN
F 2 "" H 1900 3250 50  0001 C CNN
F 3 "" H 1900 3250 50  0001 C CNN
	1    1900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3000 1800 3000
Connection ~ 1900 3000
Wire Wire Line
	1800 3100 1900 3100
Connection ~ 1900 3100
$Comp
L SynthMod:LM4041-ADJ U1
U 1 1 5A8274B9
P 4350 4900
F 0 "U1" H 4550 5200 60  0000 C CNN
F 1 "LM4041-ADJ" H 4800 5100 60  0000 C CNN
F 2 "FootPrints:TO92" H 4350 4900 60  0001 C CNN
F 3 "" H 4350 4900 60  0000 C CNN
	1    4350 4900
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R8
U 1 1 5A827584
P 4000 4800
F 0 "R8" V 4000 4650 60  0000 C CNN
F 1 "10K" V 4100 4650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4000 4800 60  0001 C CNN
F 3 "" H 4000 4800 60  0000 C CNN
	1    4000 4800
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R7
U 1 1 5A82763B
P 4000 4300
F 0 "R7" V 4050 4200 60  0000 C CNN
F 1 "10K" V 4150 4150 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4000 4300 60  0001 C CNN
F 3 "" H 4000 4300 60  0000 C CNN
	1    4000 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4650 4000 4650
Wire Wire Line
	4000 4600 4000 4650
Connection ~ 4000 4650
Wire Wire Line
	4000 5100 4000 5150
Connection ~ 4000 5150
Wire Wire Line
	4350 4900 4350 5150
Connection ~ 4350 5150
Wire Wire Line
	4000 4200 4000 4150
Connection ~ 4000 4150
Wire Wire Line
	4350 4400 4350 4150
Connection ~ 4350 4150
$Comp
L SynthMod:RESISTOR R13
U 1 1 5A827B82
P 4750 3750
F 0 "R13" V 5000 3600 60  0000 C CNN
F 1 "15K" V 4900 3600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4750 3750 60  0001 C CNN
F 3 "" H 4750 3750 60  0000 C CNN
	1    4750 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5A827C5B
P 4500 3600
F 0 "#PWR05" H 4500 3350 50  0001 C CNN
F 1 "GND" H 4500 3450 50  0000 C CNN
F 2 "" H 4500 3600 50  0001 C CNN
F 3 "" H 4500 3600 50  0001 C CNN
	1    4500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3600 4500 3550
Wire Wire Line
	4500 3550 4750 3550
Wire Wire Line
	4750 3550 4750 3650
Wire Wire Line
	4750 4050 4750 4150
Connection ~ 4750 4150
$Comp
L SynthMod:RESISTOR R25
U 1 1 5A82820B
P 8100 2950
F 0 "R25" V 8200 2850 60  0000 C CNN
F 1 "10" V 8100 2850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.7X0.2" H 8100 2950 60  0001 C CNN
F 3 "" H 8100 2950 60  0000 C CNN
	1    8100 2950
	0    1    1    0   
$EndComp
$Comp
L SynthMod:Cap_Bypass C6
U 1 1 5A82830B
P 8100 3450
F 0 "C6" H 8125 3550 50  0000 L CNN
F 1 "0.1uF" H 8125 3350 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 8138 3300 50  0001 C CNN
F 3 "" H 8100 3450 50  0000 C CNN
	1    8100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2850 8100 2800
Connection ~ 8100 2800
Wire Wire Line
	8100 3300 8100 3250
Wire Wire Line
	9600 1050 9350 1050
Wire Wire Line
	9350 1050 9350 3700
Wire Wire Line
	9350 3700 8100 3700
Wire Wire Line
	8100 3700 8100 3600
Text Label 9350 1050 0    60   ~ 0
GND_H
$Comp
L SynthMod:Cap_Bypass C3
U 1 1 5A8287FE
P 4400 2350
F 0 "C3" V 4650 2350 50  0000 L CNN
F 1 "100pF" V 4550 2350 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 4438 2200 50  0001 C CNN
F 3 "" H 4400 2350 50  0000 C CNN
	1    4400 2350
	0    -1   -1   0   
$EndComp
Connection ~ 4100 1800
Wire Wire Line
	4250 2350 4100 2350
Wire Wire Line
	4850 2350 4550 2350
Connection ~ 4850 2100
Wire Wire Line
	5800 1800 6050 1800
Wire Wire Line
	5800 3800 6050 3800
Wire Wire Line
	7500 2200 7500 2300
Wire Wire Line
	7500 3350 7500 3450
Wire Wire Line
	6900 3350 6950 3350
Wire Wire Line
	6900 2200 6950 2200
Wire Wire Line
	6900 2800 6900 2850
Wire Wire Line
	6900 2800 7500 2800
Wire Wire Line
	7500 2800 7500 2850
Wire Wire Line
	7500 2800 8100 2800
Wire Wire Line
	6550 2800 6550 3000
Wire Wire Line
	6550 1800 7100 1800
Wire Wire Line
	6550 3800 7100 3800
Wire Wire Line
	5200 1800 5200 1900
Wire Wire Line
	5200 3800 5200 3950
Wire Wire Line
	8200 2800 8300 2800
Wire Wire Line
	8800 2800 9250 2800
Wire Wire Line
	5200 650  7500 650 
Wire Wire Line
	3700 650  4600 650 
Wire Wire Line
	4600 650  5200 650 
Wire Wire Line
	4600 1500 4600 1600
Wire Wire Line
	5200 1900 5200 2050
Wire Wire Line
	3200 1800 3200 2600
Wire Wire Line
	3350 3700 3700 3700
Wire Wire Line
	5200 5150 7500 5150
Wire Wire Line
	4100 2800 4200 2800
Wire Wire Line
	6550 3000 6550 3150
Wire Wire Line
	2700 2800 2900 2800
Wire Wire Line
	7500 5150 7900 5150
Wire Wire Line
	7500 650  7900 650 
Wire Wire Line
	7900 650  9600 650 
Wire Wire Line
	7900 1300 7900 1050
Wire Wire Line
	7900 5150 9400 5150
Wire Wire Line
	1900 3000 1900 3100
Wire Wire Line
	1900 3100 1900 3250
Wire Wire Line
	4000 4650 4000 4700
Wire Wire Line
	4000 5150 4350 5150
Wire Wire Line
	4350 5150 5200 5150
Wire Wire Line
	4000 4150 4350 4150
Wire Wire Line
	4350 4150 4750 4150
Wire Wire Line
	4750 4150 4900 4150
Wire Wire Line
	8100 2800 8200 2800
Wire Wire Line
	4100 1800 3200 1800
Wire Wire Line
	4850 2100 4850 2350
$Comp
L SynthMod:Cap_Bypass C7
U 1 1 5BB05688
P 6050 3550
F 0 "C7" H 6075 3650 50  0000 L CNN
F 1 "0.1uF" H 6075 3450 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 6088 3400 50  0001 C CNN
F 3 "" H 6050 3550 50  0000 C CNN
	1    6050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3700 6050 3800
Connection ~ 6050 3800
Wire Wire Line
	6050 3800 6550 3800
Wire Wire Line
	6050 3400 6050 1800
Connection ~ 6050 1800
Wire Wire Line
	6050 1800 6550 1800
Wire Wire Line
	4100 1800 4100 2350
Text Notes 8100 2450 0    60   ~ 0
L1\nWind  4 Turns of #22\nMagnet Wire on an\nAmidon ft-50-j Torrid \nCore
$EndSCHEMATC