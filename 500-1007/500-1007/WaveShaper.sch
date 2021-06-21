EESchema Schematic File Version 4
LIBS:500-1007-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 4
Title "VCO WAVE SHAPER"
Date "2017-03-15"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:GENDUALOPAMP U6
U 1 2 58C9DD98
P 2350 1800
F 0 "U6" H 2424 2002 60  0000 C CNN
F 1 "TL052" H 2430 1928 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 2350 1800 60  0001 C CNN
F 3 "" H 2350 1800 60  0000 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U6
U 2 2 58C9DE14
P 4450 1850
F 0 "U6" H 4524 2052 60  0000 C CNN
F 1 "TL052" H 4530 1978 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 4450 1850 60  0001 C CNN
F 3 "" H 4450 1850 60  0000 C CNN
	2    4450 1850
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U6
U 3 2 58C9DE67
P 4550 7200
F 0 "U6" H 4624 7402 60  0000 C CNN
F 1 "TL052" H 4630 7328 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 4550 7200 60  0001 C CNN
F 3 "" H 4550 7200 60  0000 C CNN
	3    4550 7200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R13
U 1 1 58C9DED7
P 1450 1350
F 0 "R13" H 1600 1250 60  0000 C CNN
F 1 "10K" H 1600 1150 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 1450 1350 60  0001 C CNN
F 3 "" H 1450 1350 60  0000 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R15
U 1 1 58C9E0EB
P 2350 750
F 0 "R15" H 2450 950 60  0000 C CNN
F 1 "10K" H 2450 850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2350 750 60  0001 C CNN
F 3 "" H 2350 750 60  0000 C CNN
	1    2350 750 
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R16
U 1 1 58C9E130
P 2350 950
F 0 "R16" H 2450 850 60  0000 C CNN
F 1 "10K" H 2450 750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2350 950 60  0001 C CNN
F 3 "" H 2350 950 60  0000 C CNN
	1    2350 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D3
U 1 1 58C9E160
P 3100 1200
F 0 "D3" V 3000 1050 50  0000 C CNN
F 1 "1N914" V 3100 1000 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 3100 1200 50  0001 C CNN
F 3 "" H 3100 1200 50  0000 C CNN
	1    3100 1200
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D4
U 1 1 58C9E264
P 3400 1200
F 0 "D4" V 3400 1100 50  0000 C CNN
F 1 "1N914" V 3300 1050 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 3400 1200 50  0001 C CNN
F 3 "" H 3400 1200 50  0000 C CNN
	1    3400 1200
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:RESISTOR R67
U 1 1 58C9E781
P 3700 950
F 0 "R67" H 3850 850 60  0000 C CNN
F 1 "10K" H 3850 750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3700 950 60  0001 C CNN
F 3 "" H 3700 950 60  0000 C CNN
	1    3700 950 
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R65
U 1 1 58C9E831
P 3650 1750
F 0 "R65" H 3800 1650 60  0000 C CNN
F 1 "20K" H 3800 1550 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3650 1750 60  0001 C CNN
F 3 "" H 3650 1750 60  0000 C CNN
	1    3650 1750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R66
U 1 1 58C9E87B
P 3650 2250
F 0 "R66" H 3800 2150 60  0000 C CNN
F 1 "68K" H 3800 2050 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3650 2250 60  0001 C CNN
F 3 "" H 3650 2250 60  0000 C CNN
	1    3650 2250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R70
U 1 1 58C9E8D8
P 4600 950
F 0 "R70" H 4750 850 60  0000 C CNN
F 1 "39K" H 4750 750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4600 950 60  0001 C CNN
F 3 "" H 4600 950 60  0000 C CNN
	1    4600 950 
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:C C5
U 1 1 58C9EA80
P 4750 700
F 0 "C5" V 4650 500 50  0000 L CNN
F 1 "220pF" V 4800 300 50  0000 L CNN
F 2 "FootPrints:CAP-0.1" H 4788 550 50  0001 C CNN
F 3 "" H 4750 700 50  0000 C CNN
	1    4750 700 
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:DUAL_2N3904 Q1
U 1 1 58CCB3F4
P 3900 4000
F 0 "Q1" H 4250 4050 60  0000 C CNN
F 1 "2N3904" H 4300 3950 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 3900 3900 60  0001 C CNN
F 3 "" H 3900 3900 60  0000 C CNN
	1    3900 4000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DUAL_2N3904 Q1
U 2 1 58CCB475
P 5500 4000
F 0 "Q1" H 5350 4300 60  0000 C CNN
F 1 "2N3904" H 5250 4200 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 5500 3900 60  0001 C CNN
F 3 "" H 5500 3900 60  0000 C CNN
	2    5500 4000
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R69
U 1 1 58CCB52D
P 4200 4300
F 0 "R69" H 4200 4000 60  0000 C CNN
F 1 "49.9" H 4350 4100 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4200 4300 60  0001 C CNN
F 3 "" H 4200 4300 60  0000 C CNN
	1    4200 4300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:POT-3006 R71
U 1 1 58CCB629
P 4800 4300
F 0 "R71" H 4800 4000 60  0000 C CNN
F 1 "200" H 4950 4100 60  0000 C CNN
F 2 "FootPrints:Trimpot-3006" H 4800 4300 60  0001 C CNN
F 3 "" H 4800 4300 60  0000 C CNN
	1    4800 4300
	1    0    0    1   
$EndComp
$Comp
L SynthMod:DUAL_2N3906 Q2
U 2 1 58CCB828
P 5300 3300
F 0 "Q2" H 5650 3350 60  0000 C CNN
F 1 "2N3906" H 5700 3250 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 5300 3100 60  0001 C CNN
F 3 "" H 5300 3100 60  0000 C CNN
	2    5300 3300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DUAL_2N3906 Q2
U 1 1 58CCB8BF
P 4100 3300
F 0 "Q2" H 4450 3400 60  0000 C CNN
F 1 "2N3906" H 4450 3300 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4100 3100 60  0001 C CNN
F 3 "" H 4100 3100 60  0000 C CNN
	1    4100 3300
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:POT-3006 R75
U 1 1 58CCBB8B
P 6550 3900
F 0 "R75" H 6550 3600 60  0000 C CNN
F 1 "50K" H 6700 3700 60  0000 C CNN
F 2 "FootPrints:Trimpot-3006" H 6550 3900 60  0001 C CNN
F 3 "" H 6550 3900 60  0000 C CNN
	1    6550 3900
	0    -1   1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R74
U 1 1 58CCBC0B
P 5900 4000
F 0 "R74" H 6100 4150 60  0000 C CNN
F 1 "499K" H 6100 4250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5900 4000 60  0001 C CNN
F 3 "" H 5900 4000 60  0000 C CNN
	1    5900 4000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R73
U 1 1 58CCBC86
P 5750 4200
F 0 "R73" V 5950 4350 60  0000 C CNN
F 1 "220" H 5900 4000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5750 4200 60  0001 C CNN
F 3 "" H 5750 4200 60  0000 C CNN
	1    5750 4200
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-3006 R61
U 1 1 58CCBDAE
P 2450 4000
F 0 "R61" H 2450 3700 60  0000 C CNN
F 1 "50K" H 2600 3800 60  0000 C CNN
F 2 "FootPrints:Trimpot-3006" H 2450 4000 60  0001 C CNN
F 3 "" H 2450 4000 60  0000 C CNN
	1    2450 4000
	1    0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R62
U 1 1 58CCBE29
P 3100 4000
F 0 "R62" H 3200 4200 60  0000 C CNN
F 1 "68K" H 3200 4100 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3100 4000 60  0001 C CNN
F 3 "" H 3100 4000 60  0000 C CNN
	1    3100 4000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R64
U 1 1 58CCBE99
P 3500 4200
F 0 "R64" H 3650 3900 60  0000 C CNN
F 1 "220" H 3650 4000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3500 4200 60  0001 C CNN
F 3 "" H 3500 4200 60  0000 C CNN
	1    3500 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 1400 3400 1350
Wire Wire Line
	2800 1400 3100 1400
Wire Wire Line
	3100 1400 3100 1350
Connection ~ 3100 1400
Wire Wire Line
	2650 950  3100 950 
Wire Wire Line
	3100 950  3100 1050
Wire Wire Line
	2650 750  3400 750 
Wire Wire Line
	3400 750  3400 1050
Wire Wire Line
	2250 750  2050 750 
Wire Wire Line
	2050 750  2050 850 
Wire Wire Line
	1750 1350 2050 1350
Connection ~ 2050 1350
Wire Wire Line
	2000 1550 2000 1450
Wire Wire Line
	2000 1450 2150 1450
Wire Wire Line
	2250 950  2050 950 
Connection ~ 2050 950 
Connection ~ 3100 950 
Wire Wire Line
	4000 950  4150 950 
Wire Wire Line
	4150 1400 4250 1400
Wire Wire Line
	4150 950  4150 1400
Connection ~ 4150 950 
Wire Wire Line
	4150 1750 3950 1750
Connection ~ 4150 1400
Wire Wire Line
	4150 2250 3950 2250
Connection ~ 4150 1750
Wire Wire Line
	4900 950  5100 950 
Wire Wire Line
	5100 700  5100 950 
Wire Wire Line
	5100 1450 4900 1450
Wire Wire Line
	3550 1750 1200 1750
Wire Wire Line
	1200 1750 1200 1350
Wire Wire Line
	850  1350 1200 1350
Connection ~ 1200 1350
Wire Wire Line
	4600 700  4300 700 
Wire Wire Line
	4300 700  4300 950 
Connection ~ 4300 950 
Wire Wire Line
	4900 700  5100 700 
Connection ~ 5100 950 
Wire Wire Line
	4500 4300 4600 4300
Wire Wire Line
	4600 4300 4600 4600
Wire Wire Line
	4600 4600 4900 4600
Wire Wire Line
	4900 4600 4900 4550
Connection ~ 4600 4300
Wire Wire Line
	5400 4200 5400 4300
Wire Wire Line
	5400 4300 5100 4300
Wire Wire Line
	4000 4200 4000 4300
Wire Wire Line
	4000 4300 4100 4300
Wire Wire Line
	4300 3300 4600 3300
Wire Wire Line
	4000 3100 4000 3000
Wire Wire Line
	4000 3000 5400 3000
Wire Wire Line
	5400 2850 5400 3000
Wire Wire Line
	4000 3500 4000 3600
Wire Wire Line
	5400 3500 5400 3600
Wire Wire Line
	4000 3600 4600 3600
Wire Wire Line
	4600 3600 4600 3300
Connection ~ 4600 3300
Connection ~ 4000 3600
Wire Wire Line
	2750 4000 3000 4000
Wire Wire Line
	3400 4000 3500 4000
Wire Wire Line
	3500 4100 3500 4000
Connection ~ 3500 4000
Wire Wire Line
	3500 4600 3500 4500
Wire Wire Line
	5700 4000 5750 4000
Wire Wire Line
	5750 4100 5750 4000
Connection ~ 5750 4000
Wire Wire Line
	6200 4000 6300 4000
Wire Wire Line
	5750 4550 5750 4500
Wire Wire Line
	2550 4250 2550 4300
Wire Wire Line
	2550 4300 2250 4300
Wire Wire Line
	2250 4300 2250 4000
Wire Wire Line
	1150 4000 2250 4000
$Comp
L power:GND #PWR068
U 1 1 58CCC6A1
P 3500 4600
F 0 "#PWR068" H 3500 4350 50  0001 C CNN
F 1 "GND" H 3500 4450 50  0000 C CNN
F 2 "" H 3500 4600 50  0001 C CNN
F 3 "" H 3500 4600 50  0001 C CNN
	1    3500 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR069
U 1 1 58CCC6FE
P 5750 4550
F 0 "#PWR069" H 5750 4300 50  0001 C CNN
F 1 "GND" H 5750 4400 50  0000 C CNN
F 2 "" H 5750 4550 50  0001 C CNN
F 3 "" H 5750 4550 50  0001 C CNN
	1    5750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2700 1150 2700
Wire Wire Line
	1150 2700 1150 4000
Connection ~ 2250 4000
Connection ~ 5100 1450
$Comp
L SynthMod:RESISTOR R68
U 1 1 58D7F27B
P 4000 4950
F 0 "R68" H 4000 4650 60  0000 C CNN
F 1 "30K" H 4150 4750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4000 4950 60  0001 C CNN
F 3 "" H 4000 4950 60  0000 C CNN
	1    4000 4950
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R72
U 1 1 58D7F2FF
P 5400 4950
F 0 "R72" H 5400 4650 60  0000 C CNN
F 1 "30K" H 5550 4750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5400 4950 60  0001 C CNN
F 3 "" H 5400 4950 60  0000 C CNN
	1    5400 4950
	0    1    1    0   
$EndComp
Connection ~ 5400 4300
Connection ~ 4000 4300
$Comp
L SynthMod:+15V0 #PWR070
U 1 1 58D7F82D
P 4050 6800
F 0 "#PWR070" H 4050 6650 50  0001 C CNN
F 1 "+15V0" H 4050 6950 50  0000 C CNN
F 2 "" H 4050 6800 50  0000 C CNN
F 3 "" H 4050 6800 50  0000 C CNN
	1    4050 6800
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR071
U 1 1 58D7F877
P 5250 6800
F 0 "#PWR071" H 5250 6650 50  0001 C CNN
F 1 "-15V0" H 5250 6950 50  0000 C CNN
F 2 "" H 5250 6800 50  0000 C CNN
F 3 "" H 5250 6800 50  0000 C CNN
	1    5250 6800
	0    1    1    0   
$EndComp
$Comp
L SynthMod:Cap_Bypass C4
U 1 1 58D7F8C1
P 4200 7100
F 0 "C4" H 4225 7200 50  0000 L CNN
F 1 "0.1" H 4225 7000 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 4238 6950 50  0001 C CNN
F 3 "" H 4200 7100 50  0000 C CNN
	1    4200 7100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C6
U 1 1 58D7F98C
P 5150 7100
F 0 "C6" H 5175 7200 50  0000 L CNN
F 1 "0.1" H 5175 7000 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 5188 6950 50  0001 C CNN
F 3 "" H 5150 7100 50  0000 C CNN
	1    5150 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR072
U 1 1 58D7FA09
P 4200 7250
F 0 "#PWR072" H 4200 7000 50  0001 C CNN
F 1 "GND" H 4200 7100 50  0000 C CNN
F 2 "" H 4200 7250 50  0001 C CNN
F 3 "" H 4200 7250 50  0001 C CNN
	1    4200 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR073
U 1 1 58D7FA6B
P 5150 7250
F 0 "#PWR073" H 5150 7000 50  0001 C CNN
F 1 "GND" H 5150 7100 50  0000 C CNN
F 2 "" H 5150 7250 50  0001 C CNN
F 3 "" H 5150 7250 50  0001 C CNN
	1    5150 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6800 4200 6800
Wire Wire Line
	4200 6950 4200 6800
Connection ~ 4200 6800
Wire Wire Line
	5000 6800 5150 6800
Wire Wire Line
	5150 6950 5150 6800
Connection ~ 5150 6800
$Comp
L SynthMod:-15V0 #PWR074
U 1 1 58D7FD88
P 4000 5250
F 0 "#PWR074" H 4000 5100 50  0001 C CNN
F 1 "-15V0" H 4000 5400 50  0000 C CNN
F 2 "" H 4000 5250 50  0000 C CNN
F 3 "" H 4000 5250 50  0000 C CNN
	1    4000 5250
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:-15V0 #PWR075
U 1 1 58D7FDEA
P 5400 5250
F 0 "#PWR075" H 5400 5100 50  0001 C CNN
F 1 "-15V0" H 5400 5400 50  0000 C CNN
F 2 "" H 5400 5250 50  0000 C CNN
F 3 "" H 5400 5250 50  0000 C CNN
	1    5400 5250
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:+15V0 #PWR076
U 1 1 58D7FE86
P 5400 2850
F 0 "#PWR076" H 5400 2700 50  0001 C CNN
F 1 "+15V0" H 5400 3000 50  0000 C CNN
F 2 "" H 5400 2850 50  0000 C CNN
F 3 "" H 5400 2850 50  0000 C CNN
	1    5400 2850
	1    0    0    -1  
$EndComp
Connection ~ 5400 3000
$Comp
L SynthMod:GENDUALOPAMP U2
U 2 2 58D806B3
P 7600 4050
F 0 "U2" H 7674 4252 60  0000 C CNN
F 1 "TL052" H 7680 4178 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 7600 4050 60  0001 C CNN
F 3 "" H 7600 4050 60  0000 C CNN
	2    7600 4050
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U2
U 3 2 58D80887
P 2450 7200
F 0 "U2" H 2524 7402 60  0000 C CNN
F 1 "TL052" H 2530 7328 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 2450 7200 60  0001 C CNN
F 3 "" H 2450 7200 60  0000 C CNN
	3    2450 7200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR077
U 1 1 58D8088D
P 1950 6800
F 0 "#PWR077" H 1950 6650 50  0001 C CNN
F 1 "+15V0" H 1950 6950 50  0000 C CNN
F 2 "" H 1950 6800 50  0000 C CNN
F 3 "" H 1950 6800 50  0000 C CNN
	1    1950 6800
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR078
U 1 1 58D80893
P 3150 6800
F 0 "#PWR078" H 3150 6650 50  0001 C CNN
F 1 "-15V0" H 3150 6950 50  0000 C CNN
F 2 "" H 3150 6800 50  0000 C CNN
F 3 "" H 3150 6800 50  0000 C CNN
	1    3150 6800
	0    1    1    0   
$EndComp
$Comp
L SynthMod:Cap_Bypass C2
U 1 1 58D80899
P 2100 7100
F 0 "C2" H 2125 7200 50  0000 L CNN
F 1 "0.1" H 2125 7000 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 2138 6950 50  0001 C CNN
F 3 "" H 2100 7100 50  0000 C CNN
	1    2100 7100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C3
U 1 1 58D8089F
P 3050 7100
F 0 "C3" H 3075 7200 50  0000 L CNN
F 1 "0.1" H 3075 7000 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 3088 6950 50  0001 C CNN
F 3 "" H 3050 7100 50  0000 C CNN
	1    3050 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR079
U 1 1 58D808A5
P 2100 7250
F 0 "#PWR079" H 2100 7000 50  0001 C CNN
F 1 "GND" H 2100 7100 50  0000 C CNN
F 2 "" H 2100 7250 50  0001 C CNN
F 3 "" H 2100 7250 50  0001 C CNN
	1    2100 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR080
U 1 1 58D808AB
P 3050 7250
F 0 "#PWR080" H 3050 7000 50  0001 C CNN
F 1 "GND" H 3050 7100 50  0000 C CNN
F 2 "" H 3050 7250 50  0001 C CNN
F 3 "" H 3050 7250 50  0001 C CNN
	1    3050 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6800 2100 6800
Wire Wire Line
	2100 6950 2100 6800
Connection ~ 2100 6800
Wire Wire Line
	2900 6800 3050 6800
Wire Wire Line
	3050 6950 3050 6800
Connection ~ 3050 6800
$Comp
L SynthMod:RESISTOR R76
U 1 1 58D808F9
P 7650 3300
F 0 "R76" H 7750 3500 60  0000 C CNN
F 1 "10K" H 7750 3400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7650 3300 60  0001 C CNN
F 3 "" H 7650 3300 60  0000 C CNN
	1    7650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3800 7200 3700
Wire Wire Line
	7200 3700 7400 3700
Wire Wire Line
	5400 3600 7200 3600
Connection ~ 5400 3600
Wire Wire Line
	7200 3600 7200 3300
Wire Wire Line
	7200 3300 7550 3300
Connection ~ 7200 3600
Wire Wire Line
	8050 3650 8150 3650
Wire Wire Line
	8150 3650 8150 3300
Wire Wire Line
	8150 3300 7950 3300
$Comp
L power:GND #PWR081
U 1 1 58D80D8F
P 7200 3800
F 0 "#PWR081" H 7200 3550 50  0001 C CNN
F 1 "GND" H 7200 3650 50  0000 C CNN
F 2 "" H 7200 3800 50  0001 C CNN
F 3 "" H 7200 3800 50  0001 C CNN
	1    7200 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR082
U 1 1 58D80ECC
P 4200 1550
F 0 "#PWR082" H 4200 1300 50  0001 C CNN
F 1 "GND" H 4200 1400 50  0000 C CNN
F 2 "" H 4200 1550 50  0001 C CNN
F 3 "" H 4200 1550 50  0001 C CNN
	1    4200 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR083
U 1 1 58D80FC5
P 2000 1550
F 0 "#PWR083" H 2000 1300 50  0001 C CNN
F 1 "GND" H 2000 1400 50  0000 C CNN
F 2 "" H 2000 1550 50  0001 C CNN
F 3 "" H 2000 1550 50  0001 C CNN
	1    2000 1550
	1    0    0    -1  
$EndComp
Text HLabel 9050 3650 2    60   Output ~ 0
SINE
Text HLabel 9050 1200 2    60   Output ~ 0
TRI
Wire Wire Line
	9050 1200 5100 1200
Connection ~ 5100 1200
Connection ~ 8150 3650
Text HLabel 850  1350 0    60   Input ~ 0
SAW
$Comp
L SynthMod:RESISTOR R14
U 1 1 58DF2665
P 1550 850
F 0 "R14" H 1700 750 60  0000 C CNN
F 1 "1M" H 1700 650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 1550 850 60  0001 C CNN
F 3 "" H 1550 850 60  0000 C CNN
	1    1550 850 
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:POT-3006 R12
U 1 1 58DF26F4
P 1000 950
F 0 "R12" H 1000 650 60  0000 C CNN
F 1 "50K" H 1150 750 60  0000 C CNN
F 2 "FootPrints:Trimpot-3006" H 1000 950 60  0001 C CNN
F 3 "" H 1000 950 60  0000 C CNN
	1    1000 950 
	0    1    -1   0   
$EndComp
$Comp
L SynthMod:POT-3006 R63
U 1 1 58DF28DC
P 3200 2250
F 0 "R63" H 3350 2150 60  0000 C CNN
F 1 "20K" H 3350 2050 60  0000 C CNN
F 2 "FootPrints:Trimpot-3006" H 3200 2250 60  0001 C CNN
F 3 "" H 3200 2250 60  0000 C CNN
	1    3200 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 850  2050 850 
Connection ~ 2050 850 
Wire Wire Line
	1450 850  1250 850 
Wire Wire Line
	1000 2250 2800 2250
Wire Wire Line
	2800 2250 2800 1900
Wire Wire Line
	2800 1900 3100 1900
Wire Wire Line
	3100 1900 3100 2000
Connection ~ 2800 2250
Wire Wire Line
	3300 2250 3550 2250
Text HLabel 900  600  0    60   Input ~ 0
+10VR
Text HLabel 850  1150 0    60   Input ~ 0
-10vr
Wire Wire Line
	850  1150 1000 1150
Wire Wire Line
	1000 1050 1000 1150
Wire Wire Line
	900  600  1000 600 
Wire Wire Line
	1000 550  1000 600 
Connection ~ 1000 1150
Text Notes 2450 2100 0    60   ~ 0
OFFSET\n
Wire Wire Line
	4200 1550 4200 1500
Wire Wire Line
	4200 1500 4250 1500
Wire Wire Line
	1000 5650 6550 5650
Wire Wire Line
	6550 5650 6550 4200
Connection ~ 1000 2250
Wire Wire Line
	6550 550  6550 3800
Wire Wire Line
	6550 550  1000 550 
Connection ~ 1000 600 
Wire Wire Line
	3100 1400 3400 1400
Wire Wire Line
	2050 1350 2150 1350
Wire Wire Line
	2050 950  2050 1350
Wire Wire Line
	3100 950  3600 950 
Wire Wire Line
	4150 950  4300 950 
Wire Wire Line
	4150 1400 4150 1750
Wire Wire Line
	4150 1750 4150 2250
Wire Wire Line
	1200 1350 1350 1350
Wire Wire Line
	4300 950  4500 950 
Wire Wire Line
	5100 950  5100 1200
Wire Wire Line
	4600 4300 4700 4300
Wire Wire Line
	4600 3300 5100 3300
Wire Wire Line
	4000 3600 4000 3800
Wire Wire Line
	3500 4000 3700 4000
Wire Wire Line
	5750 4000 5800 4000
Wire Wire Line
	2250 4000 2350 4000
Wire Wire Line
	5100 1450 5100 2700
Wire Wire Line
	5400 4300 5400 4850
Wire Wire Line
	4000 4300 4000 4850
Wire Wire Line
	4200 6800 4350 6800
Wire Wire Line
	5150 6800 5250 6800
Wire Wire Line
	5400 3000 5400 3100
Wire Wire Line
	2100 6800 2250 6800
Wire Wire Line
	3050 6800 3150 6800
Wire Wire Line
	5400 3600 5400 3800
Wire Wire Line
	7200 3600 7400 3600
Wire Wire Line
	5100 1200 5100 1450
Wire Wire Line
	8150 3650 9050 3650
Wire Wire Line
	2050 850  2050 950 
Wire Wire Line
	2800 2250 2900 2250
Wire Wire Line
	1000 1150 1000 2250
Wire Wire Line
	1000 2250 1000 5650
Wire Wire Line
	1000 600  1000 650 
$EndSCHEMATC
