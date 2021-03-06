EESchema Schematic File Version 4
LIBS:100-1059D_Cheezy-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 22
Title "100-1059 Synth"
Date ""
Rev "E"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2850 1300 900  1350
U 572E41D2
F0 "VCO1" 60
F1 "VCO.sch" 60
F2 "PWM1" I L 2850 1400 50 
F3 "PWM2" I L 2850 1500 50 
F4 "PWM3" I L 2850 1600 50 
F5 "VCO1" I L 2850 1750 50 
F6 "VCO2" I L 2850 1850 50 
F7 "VCO3" I L 2850 1950 50 
F8 "VCO4" I L 2850 2050 50 
F9 "-5Vr" I L 2850 2350 50 
F10 "+5Vr" I L 2850 2450 50 
F11 "RAMP" O R 3750 1400 50 
F12 "PULSE" O R 3750 1550 50 
$EndSheet
$Sheet
S 2850 3800 900  1800
U 572E470F
F0 "VCO2" 60
F1 "VCO2.sch" 60
F2 "PWM1" I L 2850 3900 50 
F3 "PWM2" I L 2850 4000 50 
F4 "PWM3" I L 2850 4100 50 
F5 "VCO1" I L 2850 4250 50 
F6 "VCO2" I L 2850 4350 50 
F7 "VCO3" I L 2850 4450 50 
F8 "VCO4" I L 2850 4550 50 
F9 "VCO5" I L 2850 4650 50 
F10 "-5Vr" I L 2850 4850 50 
F11 "+5Vr" I L 2850 4950 50 
F12 "RAMP" O R 3750 3900 50 
F13 "PULSE" O R 3750 4050 50 
$EndSheet
$Sheet
S 4650 1400 700  1300
U 5BC5E613
F0 "Mixer" 50
F1 "Mixer5_1.sch" 50
F2 "IN1" I L 4650 1550 50 
F3 "IN2" I L 4650 1650 50 
F4 "IN3" I L 4650 1750 50 
F5 "IN4" I L 4650 1850 50 
F6 "IN5" I L 4650 2000 50 
F7 "OUT_A" O R 5350 1600 50 
F8 "FIN1" I L 4650 2200 50 
F9 "FIN2" I L 4650 2300 50 
F10 "FIN3" I L 4650 2400 50 
F11 "FOUT" O R 5350 2200 50 
$EndSheet
$Sheet
S 6500 1400 850  1300
U 5BC5E616
F0 "Filter" 50
F1 "SvarF.sch" 50
F2 "CV1" I L 6500 2150 50 
F3 "CV2" I L 6500 2250 50 
F4 "HP" O R 7350 1550 50 
F5 "BP" O R 7350 1700 50 
F6 "LP" O R 7350 1850 50 
F7 "IN" I L 6500 1600 50 
F8 "PITCH" I L 6500 2050 50 
$EndSheet
$Sheet
S 6500 3450 750  1100
U 5BC5E7A1
F0 "Envelope1" 50
F1 "EnvelopeGen.sch" 50
F2 "LEVEL" I L 6500 3600 50 
F3 "LD_LEVEL" I L 6500 3700 50 
F4 "STATE_A" I L 6500 3800 50 
F5 "STATE_B" I L 6500 3900 50 
F6 "STATE_C" I L 6500 4000 50 
F7 "SUS_V" O R 7250 4000 50 
F8 "SEGMENT" I L 6500 4150 50 
F9 "READY" O R 7250 4150 50 
F10 "OUT" O R 7250 3600 50 
$EndSheet
$Sheet
S 8650 3400 900  1050
U 5BC5F9C2
F0 "Envelope2" 50
F1 "EnvelopeGen2.sch" 50
F2 "LEVEL" I L 8650 3550 50 
F3 "LD_LEVEL" I L 8650 3650 50 
F4 "STATE_A" I L 8650 3750 50 
F5 "STATE_B" I L 8650 3850 50 
F6 "STATE_C" I L 8650 3950 50 
F7 "SUS_V" O R 9550 3950 50 
F8 "SEGMENT" I L 8650 4050 50 
F9 "READY" O R 9550 4100 50 
F10 "OUT" O R 9550 3550 50 
$EndSheet
$Sheet
S 2850 5950 800  600 
U 5BC354C1
F0 "GLIDE" 50
F1 "Glide.sch" 50
F2 "OUT" O R 3650 6100 50 
F3 "IN" I L 2850 6100 50 
F4 "RATEU_CV" I L 2850 6250 50 
F5 "RATED_CV" I L 2850 6350 50 
$EndSheet
$Sheet
S 2950 6900 700  650 
U 5BC4C1F2
F0 "LFO" 50
F1 "LFO.sch" 50
F2 "OUT" O R 3650 7100 50 
F3 "CV" I L 2950 7100 50 
$EndSheet
Wire Wire Line
	3650 6100 3850 6100
Wire Wire Line
	3850 6100 3850 5800
Wire Wire Line
	2350 5800 2350 4250
Wire Wire Line
	2350 4250 2850 4250
Wire Wire Line
	2350 5800 3850 5800
Wire Wire Line
	2350 4250 2350 1750
Wire Wire Line
	2350 1750 2850 1750
Connection ~ 2350 4250
Wire Wire Line
	6500 3600 6150 3600
Wire Wire Line
	6150 600  1100 600 
Text HLabel 1100 600  0    50   Input ~ 0
VDAC
Wire Wire Line
	6150 600  6150 3150
Wire Wire Line
	6150 3150 8450 3150
Wire Wire Line
	8450 3150 8450 3550
Wire Wire Line
	8450 3550 8650 3550
Connection ~ 6150 3150
Wire Wire Line
	6150 3150 6150 3600
Wire Wire Line
	6500 3700 6050 3700
Wire Wire Line
	6050 3700 6050 700 
Wire Wire Line
	6050 700  1100 700 
Wire Wire Line
	8650 3650 8350 3650
Wire Wire Line
	8350 3650 8350 800 
Wire Wire Line
	8350 800  1100 800 
Text HLabel 1100 700  0    50   Input ~ 0
STB0
Text HLabel 1100 800  0    50   Input ~ 0
STB1
Wire Wire Line
	3750 1400 4100 1400
Wire Wire Line
	4100 1400 4100 1550
Wire Wire Line
	4100 1550 4650 1550
Wire Wire Line
	3750 1550 4000 1550
Wire Wire Line
	4000 1550 4000 1650
Wire Wire Line
	4000 1650 4650 1650
Wire Wire Line
	3750 3900 4300 3900
Wire Wire Line
	4300 3900 4300 1750
Wire Wire Line
	4300 1750 4650 1750
Wire Wire Line
	3750 4050 4350 4050
Wire Wire Line
	4350 4050 4350 1850
Wire Wire Line
	4350 1850 4650 1850
Wire Wire Line
	5350 1600 6500 1600
$Comp
L SynthMod:Conn_500-1092-AtnGain P6
U 1 1 5BD32915
P 1550 2100
F 0 "P6" H 1700 2847 60  0000 C CNN
F 1 "500-1092" H 1700 2741 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 1550 2100 60  0001 C CNN
F 3 "" H 1550 2100 60  0000 C CNN
	1    1550 2100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR035
U 1 1 5BD32A05
P 2050 1600
F 0 "#PWR035" H 2050 1450 50  0001 C CNN
F 1 "+15V0" V 2067 1728 50  0000 L CNN
F 2 "" H 2050 1600 50  0000 C CNN
F 3 "" H 2050 1600 50  0000 C CNN
	1    2050 1600
	0    1    1    0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR026
U 1 1 5BD32A1F
P 1350 1600
F 0 "#PWR026" H 1350 1450 50  0001 C CNN
F 1 "+15V0" V 1368 1728 50  0000 L CNN
F 2 "" H 1350 1600 50  0000 C CNN
F 3 "" H 1350 1600 50  0000 C CNN
	1    1350 1600
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR027
U 1 1 5BD32A5F
P 1350 1900
F 0 "#PWR027" H 1350 1750 50  0001 C CNN
F 1 "-15V0" V 1368 2028 50  0000 L CNN
F 2 "" H 1350 1900 50  0000 C CNN
F 3 "" H 1350 1900 50  0000 C CNN
	1    1350 1900
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR036
U 1 1 5BD32A8B
P 2050 1900
F 0 "#PWR036" H 2050 1750 50  0001 C CNN
F 1 "-15V0" V 2067 2028 50  0000 L CNN
F 2 "" H 2050 1900 50  0000 C CNN
F 3 "" H 2050 1900 50  0000 C CNN
	1    2050 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 1800 2500 1800
Wire Wire Line
	2500 1800 2500 2200
Wire Wire Line
	1350 1800 900  1800
Wire Wire Line
	900  1800 900  2150
$Comp
L power:GND #PWR020
U 1 1 5BD33678
P 900 2150
F 0 "#PWR020" H 900 1900 50  0001 C CNN
F 1 "GND" H 905 1977 50  0000 C CNN
F 2 "" H 900 2150 50  0001 C CNN
F 3 "" H 900 2150 50  0001 C CNN
	1    900  2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5BD3368E
P 2500 2200
F 0 "#PWR041" H 2500 1950 50  0001 C CNN
F 1 "GND" H 2505 2027 50  0000 C CNN
F 2 "" H 2500 2200 50  0001 C CNN
F 3 "" H 2500 2200 50  0001 C CNN
	1    2500 2200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Conn_500-1092-AtnGain P7
U 1 1 5BD336A7
P 1550 3200
F 0 "P7" H 1700 3947 60  0000 C CNN
F 1 "500-1092" H 1700 3841 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 1550 3200 60  0001 C CNN
F 3 "" H 1550 3200 60  0000 C CNN
	1    1550 3200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U3
U 2 2 5BD33BD7
P 1650 7400
F 0 "U3" H 1775 8149 60  0000 C CNN
F 1 "TL052" H 1775 8043 60  0000 C CNN
F 2 "FootPrints:DIP8" H 1650 7400 60  0001 C CNN
F 3 "" H 1650 7400 60  0000 C CNN
	2    1650 7400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R12
U 1 1 5BD33D19
P 1000 6950
F 0 "R12" H 1100 7167 60  0000 C CNN
F 1 "10K" H 1100 7061 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1000 6950 60  0001 C CNN
F 3 "" H 1000 6950 60  0000 C CNN
	1    1000 6950
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R11
U 1 1 5BD33D5D
P 1000 6550
F 0 "R11" H 1100 6767 60  0000 C CNN
F 1 "20K" H 1100 6661 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1000 6550 60  0001 C CNN
F 3 "" H 1000 6550 60  0000 C CNN
	1    1000 6550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R13
U 1 1 5BD33D87
P 1700 6550
F 0 "R13" H 1800 6767 60  0000 C CNN
F 1 "20K" H 1800 6661 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1700 6550 60  0001 C CNN
F 3 "" H 1700 6550 60  0000 C CNN
	1    1700 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6950 1350 6950
Wire Wire Line
	1300 6550 1350 6550
Wire Wire Line
	1350 6550 1350 6950
Connection ~ 1350 6950
Wire Wire Line
	1350 6950 1450 6950
Wire Wire Line
	1350 6550 1600 6550
Connection ~ 1350 6550
Wire Wire Line
	2200 6550 2200 7000
Wire Wire Line
	2200 7000 2100 7000
Wire Wire Line
	2000 6550 2200 6550
Wire Wire Line
	1350 7150 1350 7050
Wire Wire Line
	1350 7050 1450 7050
$Comp
L power:GND #PWR030
U 1 1 5BD36BA8
P 1350 7150
F 0 "#PWR030" H 1350 6900 50  0001 C CNN
F 1 "GND" H 1355 6977 50  0000 C CNN
F 2 "" H 1350 7150 50  0001 C CNN
F 3 "" H 1350 7150 50  0001 C CNN
	1    1350 7150
	1    0    0    -1  
$EndComp
Text HLabel 800  6950 0    50   Input ~ 0
PBND
$Comp
L SynthMod:-10V #PWR019
U 1 1 5BD36C03
P 850 6550
F 0 "#PWR019" H 850 6400 50  0001 C CNN
F 1 "-10V" V 868 6678 50  0000 L CNN
F 2 "" H 850 6550 50  0000 C CNN
F 3 "" H 850 6550 50  0000 C CNN
	1    850  6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	850  6550 900  6550
Wire Wire Line
	900  6950 800  6950
Wire Wire Line
	2200 6550 2200 6050
Wire Wire Line
	2200 6050 550  6050
Wire Wire Line
	550  6050 550  4700
Wire Wire Line
	550  1700 1350 1700
Connection ~ 2200 6550
Wire Wire Line
	2050 1700 2700 1700
Wire Wire Line
	2700 1700 2700 1850
Wire Wire Line
	2700 1850 2850 1850
Wire Wire Line
	2050 2000 2650 2000
Wire Wire Line
	2650 2000 2650 1950
Wire Wire Line
	2650 1950 2850 1950
Wire Wire Line
	1000 2000 1000 3100
Wire Wire Line
	1000 3100 1350 3100
Wire Wire Line
	1000 2000 1350 2000
Wire Wire Line
	2050 2800 2550 2800
Wire Wire Line
	2550 2800 2550 1400
Wire Wire Line
	2550 1400 2850 1400
Wire Wire Line
	2050 3100 2600 3100
Wire Wire Line
	2600 3100 2600 1600
Wire Wire Line
	2600 1600 2850 1600
$Comp
L SynthMod:-15V0 #PWR038
U 1 1 5BD43F59
P 2100 3000
F 0 "#PWR038" H 2100 2850 50  0001 C CNN
F 1 "-15V0" V 2117 3128 50  0000 L CNN
F 2 "" H 2100 3000 50  0000 C CNN
F 3 "" H 2100 3000 50  0000 C CNN
	1    2100 3000
	0    1    1    0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR037
U 1 1 5BD43F72
P 2100 2700
F 0 "#PWR037" H 2100 2550 50  0001 C CNN
F 1 "+15V0" V 2117 2828 50  0000 L CNN
F 2 "" H 2100 2700 50  0000 C CNN
F 3 "" H 2100 2700 50  0000 C CNN
	1    2100 2700
	0    1    1    0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR028
U 1 1 5BD43F8B
P 1350 2700
F 0 "#PWR028" H 1350 2550 50  0001 C CNN
F 1 "+15V0" V 1368 2828 50  0000 L CNN
F 2 "" H 1350 2700 50  0000 C CNN
F 3 "" H 1350 2700 50  0000 C CNN
	1    1350 2700
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR029
U 1 1 5BD43FA4
P 1350 3000
F 0 "#PWR029" H 1350 2850 50  0001 C CNN
F 1 "-15V0" V 1368 3128 50  0000 L CNN
F 2 "" H 1350 3000 50  0000 C CNN
F 3 "" H 1350 3000 50  0000 C CNN
	1    1350 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 2700 2100 2700
Wire Wire Line
	2050 3000 2100 3000
$Comp
L power:GND #PWR042
U 1 1 5BD4764A
P 2500 3200
F 0 "#PWR042" H 2500 2950 50  0001 C CNN
F 1 "GND" H 2505 3027 50  0000 C CNN
F 2 "" H 2500 3200 50  0001 C CNN
F 3 "" H 2500 3200 50  0001 C CNN
	1    2500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5BD47663
P 900 3250
F 0 "#PWR021" H 900 3000 50  0001 C CNN
F 1 "GND" H 905 3077 50  0000 C CNN
F 2 "" H 900 3250 50  0001 C CNN
F 3 "" H 900 3250 50  0001 C CNN
	1    900  3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3250 900  2900
Wire Wire Line
	900  2900 1350 2900
Wire Wire Line
	2500 3200 2500 2900
Wire Wire Line
	2500 2900 2050 2900
$Comp
L SynthMod:Conn_500-1092-AtnGain P4
U 1 1 5BD4B269
P 1400 4100
F 0 "P4" H 1550 4847 60  0000 C CNN
F 1 "500-1092" H 1550 4741 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 1400 4100 60  0001 C CNN
F 3 "" H 1400 4100 60  0000 C CNN
	1    1400 4100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR023
U 1 1 5BD4B369
P 1200 3900
F 0 "#PWR023" H 1200 3750 50  0001 C CNN
F 1 "-15V0" V 1218 4028 50  0000 L CNN
F 2 "" H 1200 3900 50  0000 C CNN
F 3 "" H 1200 3900 50  0000 C CNN
	1    1200 3900
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR022
U 1 1 5BD4B38C
P 1200 3600
F 0 "#PWR022" H 1200 3450 50  0001 C CNN
F 1 "+15V0" V 1218 3728 50  0000 L CNN
F 2 "" H 1200 3600 50  0000 C CNN
F 3 "" H 1200 3600 50  0000 C CNN
	1    1200 3600
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR031
U 1 1 5BD4B3A7
P 1900 3600
F 0 "#PWR031" H 1900 3450 50  0001 C CNN
F 1 "+15V0" V 1917 3728 50  0000 L CNN
F 2 "" H 1900 3600 50  0000 C CNN
F 3 "" H 1900 3600 50  0000 C CNN
	1    1900 3600
	0    1    1    0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR032
U 1 1 5BD4B3C2
P 1900 3900
F 0 "#PWR032" H 1900 3750 50  0001 C CNN
F 1 "-15V0" V 1917 4028 50  0000 L CNN
F 2 "" H 1900 3900 50  0000 C CNN
F 3 "" H 1900 3900 50  0000 C CNN
	1    1900 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5BD4B42F
P 800 4000
F 0 "#PWR017" H 800 3750 50  0001 C CNN
F 1 "GND" H 805 3827 50  0000 C CNN
F 2 "" H 800 4000 50  0001 C CNN
F 3 "" H 800 4000 50  0001 C CNN
	1    800  4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5BD4B44A
P 2300 4100
F 0 "#PWR039" H 2300 3850 50  0001 C CNN
F 1 "GND" H 2305 3927 50  0000 C CNN
F 2 "" H 2300 4100 50  0001 C CNN
F 3 "" H 2300 4100 50  0001 C CNN
	1    2300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4100 2300 3800
Wire Wire Line
	2300 3800 1900 3800
Wire Wire Line
	800  4000 800  3800
Wire Wire Line
	800  3800 1200 3800
$Comp
L SynthMod:Conn_500-1092-AtnGain P5
U 1 1 5BD4F6D2
P 1400 5100
F 0 "P5" H 1550 5847 60  0000 C CNN
F 1 "500-1092" H 1550 5741 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 1400 5100 60  0001 C CNN
F 3 "" H 1400 5100 60  0000 C CNN
	1    1400 5100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR025
U 1 1 5BD4F6D8
P 1200 4900
F 0 "#PWR025" H 1200 4750 50  0001 C CNN
F 1 "-15V0" V 1218 5028 50  0000 L CNN
F 2 "" H 1200 4900 50  0000 C CNN
F 3 "" H 1200 4900 50  0000 C CNN
	1    1200 4900
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR024
U 1 1 5BD4F6DE
P 1200 4600
F 0 "#PWR024" H 1200 4450 50  0001 C CNN
F 1 "+15V0" V 1218 4728 50  0000 L CNN
F 2 "" H 1200 4600 50  0000 C CNN
F 3 "" H 1200 4600 50  0000 C CNN
	1    1200 4600
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR033
U 1 1 5BD4F6E4
P 1900 4600
F 0 "#PWR033" H 1900 4450 50  0001 C CNN
F 1 "+15V0" V 1917 4728 50  0000 L CNN
F 2 "" H 1900 4600 50  0000 C CNN
F 3 "" H 1900 4600 50  0000 C CNN
	1    1900 4600
	0    1    1    0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR034
U 1 1 5BD4F6EA
P 1900 4900
F 0 "#PWR034" H 1900 4750 50  0001 C CNN
F 1 "-15V0" V 1917 5028 50  0000 L CNN
F 2 "" H 1900 4900 50  0000 C CNN
F 3 "" H 1900 4900 50  0000 C CNN
	1    1900 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5BD4F6F0
P 800 5000
F 0 "#PWR018" H 800 4750 50  0001 C CNN
F 1 "GND" H 805 4827 50  0000 C CNN
F 2 "" H 800 5000 50  0001 C CNN
F 3 "" H 800 5000 50  0001 C CNN
	1    800  5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5BD4F6F6
P 2300 5100
F 0 "#PWR040" H 2300 4850 50  0001 C CNN
F 1 "GND" H 2305 4927 50  0000 C CNN
F 2 "" H 2300 5100 50  0001 C CNN
F 3 "" H 2300 5100 50  0001 C CNN
	1    2300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5100 2300 4800
Wire Wire Line
	2300 4800 1900 4800
Wire Wire Line
	800  5000 800  4800
Wire Wire Line
	800  4800 1200 4800
Wire Wire Line
	1000 3100 1000 4000
Wire Wire Line
	1000 4000 1200 4000
Connection ~ 1000 3100
Wire Wire Line
	1050 2800 1050 3700
Wire Wire Line
	1050 3700 1200 3700
Wire Wire Line
	1050 2800 1350 2800
Wire Wire Line
	1200 4700 550  4700
Connection ~ 550  4700
Wire Wire Line
	550  4700 550  1700
Text Label 1100 2000 0    50   ~ 0
LFO
Text Label 850  1700 0    50   ~ 0
PITCHBEND
Text Label 1200 2800 0    50   ~ 0
ADSR
Text Label 1200 3100 0    50   ~ 0
LFO
Text Label 1100 4000 0    50   ~ 0
LFO
Wire Wire Line
	1000 4000 1000 5000
Wire Wire Line
	1000 5000 1200 5000
Connection ~ 1000 4000
Text Label 1100 5000 0    50   ~ 0
LFO
Text Label 600  4700 0    50   ~ 0
PITCHEND
Text Label 1050 3700 0    50   ~ 0
ADSR
Wire Wire Line
	1900 3700 2650 3700
Wire Wire Line
	2650 3700 2650 4000
Wire Wire Line
	2650 4000 2850 4000
Wire Wire Line
	2600 4100 2850 4100
Wire Wire Line
	1900 4700 2400 4700
Wire Wire Line
	2400 4700 2400 4350
Wire Wire Line
	2400 4350 2850 4350
Wire Wire Line
	2450 5000 2450 4450
Wire Wire Line
	2450 4450 2850 4450
Wire Wire Line
	2850 6100 2650 6100
Wire Wire Line
	2650 6100 2650 5600
Wire Wire Line
	2650 5600 1100 5600
Wire Wire Line
	1100 5700 2500 5700
Wire Wire Line
	2500 5700 2500 6250
Wire Wire Line
	2500 6250 2850 6250
Wire Wire Line
	1100 5800 2300 5800
Wire Wire Line
	2300 5800 2300 6350
Wire Wire Line
	2300 6350 2850 6350
Text HLabel 1100 5700 0    50   Input ~ 0
GLD_RATE_UP
Text HLabel 1100 5800 0    50   Input ~ 0
GLD_RATE_DN
Text HLabel 1100 5600 0    50   Input ~ 0
VCO_PITCH
Wire Wire Line
	4650 2200 4600 2200
Wire Wire Line
	4600 2200 4600 1250
Wire Wire Line
	4600 1250 7600 1250
Wire Wire Line
	7600 1250 7600 1550
Wire Wire Line
	7600 1550 7350 1550
Wire Wire Line
	7350 1700 7650 1700
Wire Wire Line
	7650 1700 7650 1200
Wire Wire Line
	7650 1200 4550 1200
Wire Wire Line
	4550 1200 4550 2300
Wire Wire Line
	4550 2300 4650 2300
Wire Wire Line
	7250 3600 7700 3600
Text Label 7450 3600 0    50   ~ 0
ADSR
Text Label 3850 7100 0    50   ~ 0
LFO
Wire Wire Line
	2850 4550 2500 4550
Wire Wire Line
	2500 4550 2500 5300
Wire Wire Line
	2500 5300 1300 5300
Text HLabel 1300 5300 0    50   Input ~ 0
VCO2_PTCH_OFF
Text HLabel 10000 4100 2    50   Output ~ 0
EG2_READY
Text HLabel 10000 4650 2    50   Output ~ 0
EG1_READY
Wire Wire Line
	10000 4100 9550 4100
Wire Wire Line
	10000 4650 7500 4650
Wire Wire Line
	7500 4650 7500 4150
Wire Wire Line
	7500 4150 7250 4150
Text HLabel 10000 3950 2    50   Output ~ 0
EG2_SUS_V
Text HLabel 10000 4550 2    50   Output ~ 0
EG1_SUS_V
Wire Wire Line
	10000 3950 9550 3950
Wire Wire Line
	10000 4550 7550 4550
Wire Wire Line
	7550 4550 7550 4000
Wire Wire Line
	7550 4000 7250 4000
Text HLabel 6000 3800 0    50   Input ~ 0
EG1_STATE_A
Text HLabel 6000 3900 0    50   Input ~ 0
EG1_STATE_B
Text HLabel 6000 4000 0    50   Input ~ 0
EG1_STATE_C
Wire Wire Line
	6000 3800 6500 3800
Wire Wire Line
	6000 3900 6500 3900
Wire Wire Line
	6000 4000 6500 4000
Text HLabel 8250 3750 0    50   Input ~ 0
EG2_STATE_A
Text HLabel 8250 3850 0    50   Input ~ 0
EG2_STATE_B
Text HLabel 8250 3950 0    50   Input ~ 0
EG2_STATE_C
Wire Wire Line
	8250 3750 8650 3750
Wire Wire Line
	8250 3850 8650 3850
Wire Wire Line
	8250 3950 8650 3950
Wire Wire Line
	8650 4050 8500 4050
Wire Wire Line
	8500 4050 8500 4200
$Comp
L power:GND #PWR044
U 1 1 5BDE4A13
P 8500 4200
F 0 "#PWR044" H 8500 3950 50  0001 C CNN
F 1 "GND" H 8505 4027 50  0000 C CNN
F 2 "" H 8500 4200 50  0001 C CNN
F 3 "" H 8500 4200 50  0001 C CNN
	1    8500 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5BDE4A2E
P 6350 4250
F 0 "#PWR043" H 6350 4000 50  0001 C CNN
F 1 "GND" H 6355 4077 50  0000 C CNN
F 2 "" H 6350 4250 50  0001 C CNN
F 3 "" H 6350 4250 50  0001 C CNN
	1    6350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4250 6350 4150
Wire Wire Line
	6350 4150 6500 4150
Wire Wire Line
	1900 4000 2600 4000
Wire Wire Line
	1900 5000 2450 5000
Wire Wire Line
	7700 3000 6250 3000
Wire Wire Line
	6250 3000 6250 2150
Wire Wire Line
	6250 2150 6500 2150
Text Label 6450 2150 2    50   ~ 0
ADSR
Text Label 6450 2250 2    50   ~ 0
LFO
Wire Wire Line
	7700 1850 7700 1150
Wire Wire Line
	7700 1150 4500 1150
Wire Wire Line
	4500 1150 4500 2400
Wire Wire Line
	4500 2400 4650 2400
Wire Wire Line
	7350 1850 7700 1850
Wire Wire Line
	5950 2250 5950 3600
Wire Wire Line
	5950 3600 5350 3600
Wire Wire Line
	5350 3600 5350 7100
Wire Wire Line
	3650 7100 5350 7100
Wire Wire Line
	5950 2250 6500 2250
Wire Wire Line
	5850 2050 6500 2050
Text HLabel 5850 2050 0    50   Input ~ 0
FILT_PITCH
Wire Wire Line
	2300 3500 2450 3500
Wire Wire Line
	2450 3500 2450 3900
Wire Wire Line
	2450 3900 2850 3900
Wire Wire Line
	2300 1500 2850 1500
Wire Wire Line
	2300 1500 2300 3500
Wire Wire Line
	2300 1500 2300 1150
Wire Wire Line
	2300 1150 1100 1150
Connection ~ 2300 1500
Text HLabel 1100 1150 0    50   Input ~ 0
PULSEWIDTH
Wire Wire Line
	4650 2000 4200 2000
Text HLabel 4200 2000 0    50   Input ~ 0
NOISE
Wire Wire Line
	5350 2200 5550 2200
Wire Wire Line
	5550 2200 5550 2850
Wire Wire Line
	5550 2850 8450 2850
Wire Wire Line
	8450 2850 8450 1700
Wire Wire Line
	8450 1700 8650 1700
Wire Wire Line
	9550 3550 9700 3550
Wire Wire Line
	9700 3550 9700 3100
Wire Wire Line
	9700 3100 8250 3100
Wire Wire Line
	8250 3100 8250 1950
Wire Wire Line
	8250 1950 8650 1950
Wire Wire Line
	9950 1700 9300 1700
Text HLabel 9950 1700 2    50   Output ~ 0
OUT
Wire Wire Line
	2950 7100 2700 7100
Wire Wire Line
	2700 7100 2700 6700
Wire Wire Line
	2700 6700 7700 6700
Wire Wire Line
	7700 3000 7700 3600
Connection ~ 7700 3600
Wire Wire Line
	7700 3600 7700 6700
$Sheet
S 8650 1400 650  1000
U 5BC5E61E
F0 "VCA" 50
F1 "VCA.sch" 50
F2 "IN" I L 8650 1700 50 
F3 "CV" I L 8650 1950 50 
F4 "OUT" O R 9300 1700 50 
$EndSheet
$Sheet
S 2900 2900 700  500 
U 5C1DE6F2
F0 "PITCH POTS" 50
F1 "VCOPITCHPOTS.sch" 50
F2 "+5Vref" I L 2900 3000 50 
F3 "-5Vref" I L 2900 3250 50 
F4 "POT1" O R 3600 3000 50 
F5 "POT2" O R 3600 3250 50 
$EndSheet
Text HLabel 1050 7450 0    50   Input ~ 0
+5Vref
Text HLabel 1000 7700 0    50   Input ~ 0
-5Vref
Wire Wire Line
	1050 7450 2600 7450
Wire Wire Line
	2600 7450 2600 4950
Wire Wire Line
	2600 4950 2850 4950
Wire Wire Line
	2600 3200 2650 3200
Wire Wire Line
	2650 3200 2650 3000
Wire Wire Line
	2650 3000 2900 3000
Wire Wire Line
	2600 3200 2600 4000
Connection ~ 2600 4950
Connection ~ 2600 4000
Wire Wire Line
	2600 4000 2600 4100
Connection ~ 2600 4100
Wire Wire Line
	2600 4100 2600 4950
Wire Wire Line
	2650 3000 2650 2450
Wire Wire Line
	2650 2450 2850 2450
Connection ~ 2650 3000
Wire Wire Line
	1000 7700 2650 7700
Wire Wire Line
	2650 7700 2650 6450
Wire Wire Line
	2650 6450 2750 6450
Wire Wire Line
	2750 6450 2750 4850
Wire Wire Line
	2750 4850 2850 4850
Wire Wire Line
	2750 4850 2750 3250
Wire Wire Line
	2750 3250 2900 3250
Connection ~ 2750 4850
Wire Wire Line
	2750 3250 2750 2350
Wire Wire Line
	2750 2350 2850 2350
Connection ~ 2750 3250
Wire Wire Line
	2850 4650 2700 4650
Wire Wire Line
	2700 4650 2700 3550
Wire Wire Line
	2700 3550 3900 3550
Wire Wire Line
	3900 3550 3900 3250
Wire Wire Line
	3900 3250 3600 3250
Wire Wire Line
	3600 3000 3800 3000
Wire Wire Line
	3800 3000 3800 2800
Wire Wire Line
	3800 2800 2700 2800
Wire Wire Line
	2700 2800 2700 2050
Wire Wire Line
	2700 2050 2850 2050
Text Notes 3650 2100 2    50   ~ 0
FRONT PANEL
Text Notes 3600 1800 2    50   ~ 0
MIDI PITCH
Text Notes 3650 1900 2    50   ~ 0
PITCH BEND\n
Text Notes 3300 2000 2    50   ~ 0
LFO
Text Notes 3550 4300 2    50   ~ 0
MIDIPITCH
Text Notes 3600 4700 2    50   ~ 0
FRONT PANL
Text Notes 3650 4400 2    50   ~ 0
PITCH BEND
Text Notes 3350 4500 2    50   ~ 0
LFO
Text Notes 3450 4600 2    50   ~ 0
OFFSET
$Comp
L SynthMod:GENDUALOPAMP U?
U 3 1 5BF4ED25
P 6400 6200
AR Path="/572E330C/572E41D2/5BF4ED25" Ref="U?"  Part="3" 
AR Path="/572E330C/5BF4ED25" Ref="U3"  Part="3" 
F 0 "U3" H 6525 6849 60  0000 C CNN
F 1 "TL052" H 6525 6743 60  0000 C CNN
F 2 "FootPrints:DIP8" H 6400 6200 60  0001 C CNN
F 3 "" H 6400 6200 60  0000 C CNN
	3    6400 6200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5BF4ED2C
P 6100 6000
AR Path="/572E330C/572E41D2/5BF4ED2C" Ref="C?"  Part="1" 
AR Path="/572E330C/5BF4ED2C" Ref="C4"  Part="1" 
F 0 "C4" H 6215 6046 50  0000 L CNN
F 1 "0.1uF" H 6215 5955 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 6138 5850 50  0001 C CNN
F 3 "" H 6100 6000 50  0000 C CNN
	1    6100 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF4ED33
P 6100 6150
AR Path="/572E330C/572E41D2/5BF4ED33" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BF4ED33" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 6100 5900 50  0001 C CNN
F 1 "GND" H 6105 5977 50  0000 C CNN
F 2 "" H 6100 6150 50  0001 C CNN
F 3 "" H 6100 6150 50  0001 C CNN
	1    6100 6150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5BF4ED39
P 6900 6000
AR Path="/572E330C/572E41D2/5BF4ED39" Ref="C?"  Part="1" 
AR Path="/572E330C/5BF4ED39" Ref="C7"  Part="1" 
F 0 "C7" H 7015 6046 50  0000 L CNN
F 1 "0.1uF" H 7015 5955 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 6938 5850 50  0001 C CNN
F 3 "" H 6900 6000 50  0000 C CNN
	1    6900 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF4ED40
P 6900 6150
AR Path="/572E330C/572E41D2/5BF4ED40" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BF4ED40" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 6900 5900 50  0001 C CNN
F 1 "GND" H 6905 5977 50  0000 C CNN
F 2 "" H 6900 6150 50  0001 C CNN
F 3 "" H 6900 6150 50  0001 C CNN
	1    6900 6150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR?
U 1 1 5BF4ED46
P 7000 5800
AR Path="/572E330C/572E41D2/5BF4ED46" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BF4ED46" Ref="#PWR0552"  Part="1" 
F 0 "#PWR0552" H 7000 5650 50  0001 C CNN
F 1 "-15V0" V 7017 5928 50  0000 L CNN
F 2 "" H 7000 5800 50  0000 C CNN
F 3 "" H 7000 5800 50  0000 C CNN
	1    7000 5800
	0    1    1    0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR?
U 1 1 5BF4ED4C
P 6050 5800
AR Path="/572E330C/572E41D2/5BF4ED4C" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BF4ED4C" Ref="#PWR0553"  Part="1" 
F 0 "#PWR0553" H 6050 5650 50  0001 C CNN
F 1 "+15V0" V 6068 5928 50  0000 L CNN
F 2 "" H 6050 5800 50  0000 C CNN
F 3 "" H 6050 5800 50  0000 C CNN
	1    6050 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 5800 6100 5800
Wire Wire Line
	6100 5800 6100 5850
Wire Wire Line
	6100 5800 6200 5800
Connection ~ 6100 5800
Wire Wire Line
	6850 5800 6900 5800
Wire Wire Line
	6900 5850 6900 5800
Connection ~ 6900 5800
Wire Wire Line
	6900 5800 7000 5800
$EndSCHEMATC
