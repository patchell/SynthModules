EESchema Schematic File Version 4
LIBS:100-1059D_Cheezy-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 22 22
Title "VOLTAGE REFERENCES"
Date ""
Rev "E"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:LM4041-ADJ U106
U 1 1 5BD053B1
P 2500 2800
F 0 "U106" H 2685 3103 60  0000 L CNN
F 1 "LM4041-ADJ" H 2685 2997 60  0000 L CNN
F 2 "FootPrints:TO92" H 2500 2800 60  0001 C CNN
F 3 "" H 2500 2800 60  0000 C CNN
	1    2500 2800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R324
U 1 1 5BD054FC
P 2000 2850
F 0 "R324" V 2047 2908 60  0000 L CNN
F 1 "100K" V 2153 2908 60  0000 L CNN
F 2 "FootPrints:AXIAL0_4" H 2000 2850 60  0001 C CNN
F 3 "" H 2000 2850 60  0000 C CNN
	1    2000 2850
	0    1    1    0   
$EndComp
$Comp
L SynthMod:POT-3006 R323
U 1 1 5BD055C1
P 2000 2450
F 0 "R323" V 2047 2392 60  0000 R CNN
F 1 "20K" V 2153 2392 60  0000 R CNN
F 2 "FootPrints:Trimpot-3006" H 2000 2450 60  0001 C CNN
F 3 "" H 2000 2450 60  0000 C CNN
	1    2000 2450
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R322
U 1 1 5BD0567C
P 2000 2050
F 0 "R322" V 2047 2108 60  0000 L CNN
F 1 "100K" V 2153 2108 60  0000 L CNN
F 2 "FootPrints:AXIAL0_4" H 2000 2050 60  0001 C CNN
F 3 "" H 2000 2050 60  0000 C CNN
	1    2000 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 1950 2000 1900
Wire Wire Line
	2000 1900 2500 1900
Wire Wire Line
	2500 1900 2500 2150
Wire Wire Line
	2000 3150 2000 3250
Wire Wire Line
	2000 3250 2500 3250
Wire Wire Line
	2500 3250 2500 2800
$Comp
L SynthMod:RESISTOR R325
U 1 1 5BD056DD
P 2500 1500
F 0 "R325" V 2547 1558 60  0000 L CNN
F 1 "10K" V 2653 1558 60  0000 L CNN
F 2 "FootPrints:AXIAL0_4" H 2500 1500 60  0001 C CNN
F 3 "" H 2500 1500 60  0000 C CNN
	1    2500 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1800 2500 1900
Connection ~ 2500 1900
$Comp
L power:GND #PWR0525
U 1 1 5BD057A2
P 2500 3300
F 0 "#PWR0525" H 2500 3050 50  0001 C CNN
F 1 "GND" H 2505 3127 50  0000 C CNN
F 2 "" H 2500 3300 50  0001 C CNN
F 3 "" H 2500 3300 50  0001 C CNN
	1    2500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3300 2500 3250
Connection ~ 2500 3250
Wire Wire Line
	2500 1200 2500 1400
$Comp
L SynthMod:+15V0 #PWR0524
U 1 1 5BD058BA
P 2500 1200
F 0 "#PWR0524" H 2500 1050 50  0001 C CNN
F 1 "+15V0" H 2517 1373 50  0000 C CNN
F 2 "" H 2500 1200 50  0000 C CNN
F 3 "" H 2500 1200 50  0000 C CNN
	1    2500 1200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U107
U 1 2 5BD05913
P 3800 2600
F 0 "U107" H 4050 2850 60  0000 C CNN
F 1 "TL052" H 3925 3243 60  0000 C CNN
F 2 "FootPrints:DIP8" H 3800 2600 60  0001 C CNN
F 3 "" H 3800 2600 60  0000 C CNN
	1    3800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2350 3550 2250
Wire Wire Line
	3550 2250 3600 2250
Text Label 2100 1900 0    50   ~ 0
V2.4
$Comp
L SynthMod:RESISTOR R326
U 1 1 5BD05A27
P 3350 2150
F 0 "R326" H 3450 1933 60  0000 C CNN
F 1 "16.5K" H 3450 2039 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3350 2150 60  0001 C CNN
F 3 "" H 3350 2150 60  0000 C CNN
	1    3350 2150
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R329
U 1 1 5BD05A85
P 4050 1750
F 0 "R329" H 4150 1533 60  0000 C CNN
F 1 "34K" H 4150 1639 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4050 1750 60  0001 C CNN
F 3 "" H 4050 1750 60  0000 C CNN
	1    4050 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 2150 2750 2150
Connection ~ 2500 2150
Wire Wire Line
	2500 2150 2500 2300
Wire Wire Line
	3450 2150 3550 2150
Wire Wire Line
	3550 2150 3550 1750
Wire Wire Line
	3550 1750 3750 1750
Connection ~ 3550 2150
Wire Wire Line
	3550 2150 3600 2150
Wire Wire Line
	4150 1750 4350 1750
Wire Wire Line
	4350 1750 4350 2150
Wire Wire Line
	4350 2200 4250 2200
$Comp
L power:GND #PWR0526
U 1 1 5BD05E94
P 3550 2350
F 0 "#PWR0526" H 3550 2100 50  0001 C CNN
F 1 "GND" H 3555 2177 50  0000 C CNN
F 2 "" H 3550 2350 50  0001 C CNN
F 3 "" H 3550 2350 50  0001 C CNN
	1    3550 2350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U107
U 2 2 5BD05EC4
P 3800 3700
F 0 "U107" H 4000 3950 60  0000 C CNN
F 1 "TL052" H 3925 4343 60  0000 C CNN
F 2 "FootPrints:DIP8" H 3800 3700 60  0001 C CNN
F 3 "" H 3800 3700 60  0000 C CNN
	2    3800 3700
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R328
U 1 1 5BD05F0C
P 4000 2850
F 0 "R328" H 4100 2633 60  0000 C CNN
F 1 "44.2K" H 4100 2739 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4000 2850 60  0001 C CNN
F 3 "" H 4000 2850 60  0000 C CNN
	1    4000 2850
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R327
U 1 1 5BD05FBD
P 3400 3250
F 0 "R327" H 3500 3033 60  0000 C CNN
F 1 "10K" H 3500 3139 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3400 3250 60  0001 C CNN
F 3 "" H 3400 3250 60  0000 C CNN
	1    3400 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 2850 3550 2850
Wire Wire Line
	3550 2850 3550 3250
Wire Wire Line
	3550 3250 3600 3250
Wire Wire Line
	3500 3250 3550 3250
Connection ~ 3550 3250
Wire Wire Line
	3100 3250 3000 3250
Wire Wire Line
	3000 3250 3000 2650
Wire Wire Line
	3000 2650 4350 2650
Wire Wire Line
	4350 2650 4350 2200
Connection ~ 4350 2200
Wire Wire Line
	4100 2850 4350 2850
Wire Wire Line
	4350 2850 4350 3300
Wire Wire Line
	4350 3300 4250 3300
Wire Wire Line
	3550 3450 3550 3350
Wire Wire Line
	3550 3350 3600 3350
$Comp
L power:GND #PWR0527
U 1 1 5BD06EAF
P 3550 3450
F 0 "#PWR0527" H 3550 3200 50  0001 C CNN
F 1 "GND" H 3555 3277 50  0000 C CNN
F 2 "" H 3550 3450 50  0001 C CNN
F 3 "" H 3550 3450 50  0001 C CNN
	1    3550 3450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:NPN Q34
U 1 1 5BD163D0
P 6500 1500
F 0 "Q34" V 6833 1500 50  0000 C CNN
F 1 "2N3904" V 6742 1500 50  0000 C CNN
F 2 "FootPrints:TO92" H 6700 1600 50  0001 C CNN
F 3 "" H 6500 1500 50  0000 C CNN
	1    6500 1500
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:NPN Q35
U 1 1 5BD164B3
P 6900 1700
F 0 "Q35" V 7140 1700 50  0000 C CNN
F 1 "2N3904" V 7231 1700 50  0000 C CNN
F 2 "FootPrints:TO92" H 7100 1800 50  0001 C CNN
F 3 "" H 6900 1700 50  0000 C CNN
	1    6900 1700
	0    -1   1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R332
U 1 1 5BD170C1
P 7250 1400
F 0 "R332" H 7350 1183 60  0000 C CNN
F 1 "10" H 7350 1289 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7250 1400 60  0001 C CNN
F 3 "" H 7250 1400 60  0000 C CNN
	1    7250 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 1500 6900 1400
Wire Wire Line
	6900 1400 6700 1400
Wire Wire Line
	6900 1400 6950 1400
Connection ~ 6900 1400
Wire Wire Line
	7350 1400 7450 1400
Wire Wire Line
	7450 1400 7450 1800
Wire Wire Line
	7450 1800 7100 1800
Wire Wire Line
	6700 1800 6500 1800
Wire Wire Line
	6500 1800 6500 1700
$Comp
L SynthMod:RESISTOR R331
U 1 1 5BD184B0
P 6300 2100
F 0 "R331" H 6400 1883 60  0000 C CNN
F 1 "1K" H 6400 1989 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6300 2100 60  0001 C CNN
F 3 "" H 6300 2100 60  0000 C CNN
	1    6300 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 1800 6500 2100
Wire Wire Line
	6500 2100 6400 2100
Connection ~ 6500 1800
$Comp
L SynthMod:GENDUALOPAMP U108
U 2 1 5BD18B22
P 5550 2500
F 0 "U108" H 5675 3249 60  0000 C CNN
F 1 "TL052" H 5675 3143 60  0000 C CNN
F 2 "FootPrints:DIP8" H 5550 2500 60  0001 C CNN
F 3 "" H 5550 2500 60  0000 C CNN
	2    5550 2500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R333
U 1 1 5BD18C04
P 7450 2200
F 0 "R333" V 7603 2142 60  0000 R CNN
F 1 "20K" V 7497 2142 60  0000 R CNN
F 2 "FootPrints:AXIAL0_4" H 7450 2200 60  0001 C CNN
F 3 "" H 7450 2200 60  0000 C CNN
	1    7450 2200
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:RESISTOR R330
U 1 1 5BD18C80
P 4700 2150
F 0 "R330" H 4800 2367 60  0000 C CNN
F 1 "10K" H 4800 2261 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4700 2150 60  0001 C CNN
F 3 "" H 4700 2150 60  0000 C CNN
	1    4700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2150 4350 2150
Connection ~ 4350 2150
Wire Wire Line
	4350 2150 4350 2200
Wire Wire Line
	5000 2150 5100 2150
Wire Wire Line
	5350 2050 5250 2050
Wire Wire Line
	5250 2050 5250 2350
$Comp
L power:GND #PWR0528
U 1 1 5BD1A335
P 5250 2350
F 0 "#PWR0528" H 5250 2100 50  0001 C CNN
F 1 "GND" H 5255 2177 50  0000 C CNN
F 2 "" H 5250 2350 50  0001 C CNN
F 3 "" H 5250 2350 50  0001 C CNN
	1    5250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2150 5100 2600
Wire Wire Line
	5100 2600 7450 2600
Wire Wire Line
	7450 2600 7450 2300
Connection ~ 5100 2150
Wire Wire Line
	5100 2150 5350 2150
Wire Wire Line
	7450 1900 7450 1800
Connection ~ 7450 1800
Wire Wire Line
	6150 1400 6300 1400
$Comp
L SynthMod:+10V #PWR0531
U 1 1 5BD1BFC8
P 8050 1400
F 0 "#PWR0531" H 8050 1250 50  0001 C CNN
F 1 "+10V" V 8067 1528 50  0000 L CNN
F 2 "" H 8050 1400 50  0000 C CNN
F 3 "" H 8050 1400 50  0000 C CNN
	1    8050 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 1400 7850 1400
Connection ~ 7450 1400
$Comp
L SynthMod:+15V0 #PWR0529
U 1 1 5BD1CA6A
P 6150 1400
F 0 "#PWR0529" H 6150 1250 50  0001 C CNN
F 1 "+15V0" V 6168 1528 50  0000 L CNN
F 2 "" H 6150 1400 50  0000 C CNN
F 3 "" H 6150 1400 50  0000 C CNN
	1    6150 1400
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:Cap_Polarized C173
U 1 1 5BD1CB09
P 7850 1900
F 0 "C173" H 7965 1946 50  0000 L CNN
F 1 "10uF" H 7965 1855 50  0000 L CNN
F 2 "FootPrints:CapPol-Rad-0.2x0.1" H 7888 1750 50  0001 C CNN
F 3 "" H 7850 1900 50  0000 C CNN
	1    7850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1750 7850 1400
Connection ~ 7850 1400
Wire Wire Line
	7850 1400 7450 1400
Wire Wire Line
	7850 2050 7850 2250
$Comp
L power:GND #PWR0530
U 1 1 5BD1EB2A
P 7850 2250
F 0 "#PWR0530" H 7850 2000 50  0001 C CNN
F 1 "GND" H 7855 2077 50  0000 C CNN
F 2 "" H 7850 2250 50  0001 C CNN
F 3 "" H 7850 2250 50  0001 C CNN
	1    7850 2250
	1    0    0    -1  
$EndComp
Text HLabel 5050 3350 2    50   Output ~ 0
+5Vref
Wire Wire Line
	5050 3350 4350 3350
Wire Wire Line
	4350 3350 4350 3300
Connection ~ 4350 3300
Text HLabel 4800 1750 2    50   Output ~ 0
-5Vref
Wire Wire Line
	4800 1750 4350 1750
Connection ~ 4350 1750
$Comp
L SynthMod:GENDUALOPAMP U?
U 3 1 5BDD5084
P 5600 4850
AR Path="/572E330C/572E41D2/5BDD5084" Ref="U?"  Part="3" 
AR Path="/572E330C/5BDD5084" Ref="U?"  Part="3" 
AR Path="/5BD05338/5BDD5084" Ref="U108"  Part="3" 
F 0 "U108" H 5725 5499 60  0000 C CNN
F 1 "TL052" H 5725 5393 60  0000 C CNN
F 2 "FootPrints:DIP8" H 5600 4850 60  0001 C CNN
F 3 "" H 5600 4850 60  0000 C CNN
	3    5600 4850
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5BDD508B
P 5300 4650
AR Path="/572E330C/572E41D2/5BDD508B" Ref="C?"  Part="1" 
AR Path="/572E330C/5BDD508B" Ref="C?"  Part="1" 
AR Path="/5BD05338/5BDD508B" Ref="C191"  Part="1" 
F 0 "C191" H 5415 4696 50  0000 L CNN
F 1 "0.1uF" H 5415 4605 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 5338 4500 50  0001 C CNN
F 3 "" H 5300 4650 50  0000 C CNN
	1    5300 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDD5092
P 5300 4800
AR Path="/572E330C/572E41D2/5BDD5092" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BDD5092" Ref="#PWR?"  Part="1" 
AR Path="/5BD05338/5BDD5092" Ref="#PWR0569"  Part="1" 
F 0 "#PWR0569" H 5300 4550 50  0001 C CNN
F 1 "GND" H 5305 4627 50  0000 C CNN
F 2 "" H 5300 4800 50  0001 C CNN
F 3 "" H 5300 4800 50  0001 C CNN
	1    5300 4800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5BDD5098
P 6100 4650
AR Path="/572E330C/572E41D2/5BDD5098" Ref="C?"  Part="1" 
AR Path="/572E330C/5BDD5098" Ref="C?"  Part="1" 
AR Path="/5BD05338/5BDD5098" Ref="C192"  Part="1" 
F 0 "C192" H 6215 4696 50  0000 L CNN
F 1 "0.1uF" H 6215 4605 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 6138 4500 50  0001 C CNN
F 3 "" H 6100 4650 50  0000 C CNN
	1    6100 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDD509F
P 6100 4800
AR Path="/572E330C/572E41D2/5BDD509F" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BDD509F" Ref="#PWR?"  Part="1" 
AR Path="/5BD05338/5BDD509F" Ref="#PWR0570"  Part="1" 
F 0 "#PWR0570" H 6100 4550 50  0001 C CNN
F 1 "GND" H 6105 4627 50  0000 C CNN
F 2 "" H 6100 4800 50  0001 C CNN
F 3 "" H 6100 4800 50  0001 C CNN
	1    6100 4800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR?
U 1 1 5BDD50A5
P 6200 4450
AR Path="/572E330C/572E41D2/5BDD50A5" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BDD50A5" Ref="#PWR?"  Part="1" 
AR Path="/5BD05338/5BDD50A5" Ref="#PWR0571"  Part="1" 
F 0 "#PWR0571" H 6200 4300 50  0001 C CNN
F 1 "-15V0" V 6217 4578 50  0000 L CNN
F 2 "" H 6200 4450 50  0000 C CNN
F 3 "" H 6200 4450 50  0000 C CNN
	1    6200 4450
	0    1    1    0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR?
U 1 1 5BDD50AB
P 5250 4450
AR Path="/572E330C/572E41D2/5BDD50AB" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BDD50AB" Ref="#PWR?"  Part="1" 
AR Path="/5BD05338/5BDD50AB" Ref="#PWR0568"  Part="1" 
F 0 "#PWR0568" H 5250 4300 50  0001 C CNN
F 1 "+15V0" V 5268 4578 50  0000 L CNN
F 2 "" H 5250 4450 50  0000 C CNN
F 3 "" H 5250 4450 50  0000 C CNN
	1    5250 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 4450 5300 4450
Wire Wire Line
	5300 4450 5300 4500
Wire Wire Line
	5300 4450 5400 4450
Connection ~ 5300 4450
Wire Wire Line
	6050 4450 6100 4450
Wire Wire Line
	6100 4500 6100 4450
Connection ~ 6100 4450
Wire Wire Line
	6100 4450 6200 4450
$Comp
L SynthMod:GENDUALOPAMP U?
U 3 1 5BDD606F
P 3550 4800
AR Path="/572E330C/572E41D2/5BDD606F" Ref="U?"  Part="3" 
AR Path="/572E330C/5BDD606F" Ref="U?"  Part="3" 
AR Path="/5BD05338/5BDD606F" Ref="U107"  Part="3" 
F 0 "U107" H 3675 5449 60  0000 C CNN
F 1 "TL052" H 3675 5343 60  0000 C CNN
F 2 "FootPrints:DIP8" H 3550 4800 60  0001 C CNN
F 3 "" H 3550 4800 60  0000 C CNN
	3    3550 4800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5BDD6076
P 3250 4600
AR Path="/572E330C/572E41D2/5BDD6076" Ref="C?"  Part="1" 
AR Path="/572E330C/5BDD6076" Ref="C?"  Part="1" 
AR Path="/5BD05338/5BDD6076" Ref="C189"  Part="1" 
F 0 "C189" H 3365 4646 50  0000 L CNN
F 1 "0.1uF" H 3365 4555 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 3288 4450 50  0001 C CNN
F 3 "" H 3250 4600 50  0000 C CNN
	1    3250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDD607D
P 3250 4750
AR Path="/572E330C/572E41D2/5BDD607D" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BDD607D" Ref="#PWR?"  Part="1" 
AR Path="/5BD05338/5BDD607D" Ref="#PWR0565"  Part="1" 
F 0 "#PWR0565" H 3250 4500 50  0001 C CNN
F 1 "GND" H 3255 4577 50  0000 C CNN
F 2 "" H 3250 4750 50  0001 C CNN
F 3 "" H 3250 4750 50  0001 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5BDD6083
P 4050 4600
AR Path="/572E330C/572E41D2/5BDD6083" Ref="C?"  Part="1" 
AR Path="/572E330C/5BDD6083" Ref="C?"  Part="1" 
AR Path="/5BD05338/5BDD6083" Ref="C190"  Part="1" 
F 0 "C190" H 4165 4646 50  0000 L CNN
F 1 "0.1uF" H 4165 4555 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 4088 4450 50  0001 C CNN
F 3 "" H 4050 4600 50  0000 C CNN
	1    4050 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDD608A
P 4050 4750
AR Path="/572E330C/572E41D2/5BDD608A" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BDD608A" Ref="#PWR?"  Part="1" 
AR Path="/5BD05338/5BDD608A" Ref="#PWR0566"  Part="1" 
F 0 "#PWR0566" H 4050 4500 50  0001 C CNN
F 1 "GND" H 4055 4577 50  0000 C CNN
F 2 "" H 4050 4750 50  0001 C CNN
F 3 "" H 4050 4750 50  0001 C CNN
	1    4050 4750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR?
U 1 1 5BDD6090
P 4150 4400
AR Path="/572E330C/572E41D2/5BDD6090" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BDD6090" Ref="#PWR?"  Part="1" 
AR Path="/5BD05338/5BDD6090" Ref="#PWR0567"  Part="1" 
F 0 "#PWR0567" H 4150 4250 50  0001 C CNN
F 1 "-15V0" V 4167 4528 50  0000 L CNN
F 2 "" H 4150 4400 50  0000 C CNN
F 3 "" H 4150 4400 50  0000 C CNN
	1    4150 4400
	0    1    1    0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR?
U 1 1 5BDD6096
P 3200 4400
AR Path="/572E330C/572E41D2/5BDD6096" Ref="#PWR?"  Part="1" 
AR Path="/572E330C/5BDD6096" Ref="#PWR?"  Part="1" 
AR Path="/5BD05338/5BDD6096" Ref="#PWR0564"  Part="1" 
F 0 "#PWR0564" H 3200 4250 50  0001 C CNN
F 1 "+15V0" V 3218 4528 50  0000 L CNN
F 2 "" H 3200 4400 50  0000 C CNN
F 3 "" H 3200 4400 50  0000 C CNN
	1    3200 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 4400 3250 4400
Wire Wire Line
	3250 4400 3250 4450
Wire Wire Line
	3250 4400 3350 4400
Connection ~ 3250 4400
Wire Wire Line
	4000 4400 4050 4400
Wire Wire Line
	4050 4450 4050 4400
Connection ~ 4050 4400
Wire Wire Line
	4050 4400 4150 4400
$Comp
L SynthMod:GENDUALOPAMP U108
U 1 2 5C191CE1
P 6800 3800
F 0 "U108" H 6925 4549 60  0000 C CNN
F 1 "TL052" H 6925 4443 60  0000 C CNN
F 2 "FootPrints:DIP8" H 6800 3800 60  0001 C CNN
F 3 "" H 6800 3800 60  0000 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0593
U 1 1 5C19203A
P 6500 3550
F 0 "#PWR0593" H 6500 3300 50  0001 C CNN
F 1 "GND" H 6505 3377 50  0000 C CNN
F 2 "" H 6500 3550 50  0001 C CNN
F 3 "" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3550 6500 3450
Wire Wire Line
	6500 3450 6600 3450
Wire Wire Line
	7250 3400 7400 3400
Text HLabel 8300 3400 2    50   Output ~ 0
DACREF
Wire Wire Line
	2750 4000 2750 2150
Connection ~ 2750 2150
Wire Wire Line
	2750 2150 2500 2150
Wire Wire Line
	6450 3350 6600 3350
Wire Wire Line
	6450 3350 6450 2950
Wire Wire Line
	6450 2950 7400 2950
Wire Wire Line
	7400 2950 7400 3400
Wire Wire Line
	7850 4000 7850 3400
Wire Wire Line
	7850 3400 8300 3400
Wire Wire Line
	2750 4000 7850 4000
$EndSCHEMATC
