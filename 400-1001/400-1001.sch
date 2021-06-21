EESchema Schematic File Version 4
LIBS:400-1001-cache
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
L SynthMod:NPN Q?
U 1 1 5C83161D
P 3700 3250
F 0 "Q?" H 3896 3296 50  0000 L CNN
F 1 "NPN" H 3896 3205 50  0000 L CNN
F 2 "" H 3900 3350 50  0000 C CNN
F 3 "" H 3700 3250 50  0000 C CNN
	1    3700 3250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:NPN Q?
U 1 1 5C831647
P 6400 3250
F 0 "Q?" H 6596 3296 50  0000 L CNN
F 1 "NPN" H 6596 3205 50  0000 L CNN
F 2 "" H 6600 3350 50  0000 C CNN
F 3 "" H 6400 3250 50  0000 C CNN
	1    6400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3050 3800 2900
Wire Wire Line
	3800 2900 5250 2900
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C8318B6
P 4150 3700
F 0 "R?" H 4250 3917 60  0000 C CNN
F 1 "30K" H 4250 3811 60  0000 C CNN
F 2 "" H 4150 3700 60  0000 C CNN
F 3 "" H 4150 3700 60  0000 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C83192F
P 4850 3700
F 0 "R?" H 4950 3917 60  0000 C CNN
F 1 "470K" H 4950 3811 60  0000 C CNN
F 2 "" H 4850 3700 60  0000 C CNN
F 3 "" H 4850 3700 60  0000 C CNN
	1    4850 3700
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C?
U 1 1 5C831997
P 4950 4050
F 0 "C?" V 5202 4050 50  0000 C CNN
F 1 ".01uF" V 5111 4050 50  0000 C CNN
F 2 "" H 4988 3900 50  0000 C CNN
F 3 "" H 4950 4050 50  0000 C CNN
	1    4950 4050
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:Cap C?
U 1 1 5C8319EE
P 4200 4050
F 0 "C?" V 4452 4050 50  0000 C CNN
F 1 ".0027uF" V 4361 4050 50  0000 C CNN
F 2 "" H 4238 3900 50  0000 C CNN
F 3 "" H 4200 4050 50  0000 C CNN
	1    4200 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3700 4600 4050
Wire Wire Line
	4600 4050 4350 4050
Wire Wire Line
	4450 3700 4600 3700
Connection ~ 4600 3700
Wire Wire Line
	4600 3700 4750 3700
Wire Wire Line
	4800 4050 4600 4050
Connection ~ 4600 4050
Wire Wire Line
	5150 3700 5300 3700
Wire Wire Line
	5300 3700 5300 4050
Wire Wire Line
	5300 4050 5100 4050
Wire Wire Line
	5550 3100 5550 3250
Wire Wire Line
	5550 3700 5300 3700
Connection ~ 5300 3700
Wire Wire Line
	4050 4050 3900 4050
Wire Wire Line
	3900 4050 3900 3700
Wire Wire Line
	3900 3700 4050 3700
Wire Wire Line
	3900 3700 3800 3700
Wire Wire Line
	3800 3700 3800 3450
Connection ~ 3900 3700
Wire Wire Line
	6200 3250 5550 3250
Wire Wire Line
	5550 3250 5550 3700
Connection ~ 5550 3250
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C832080
P 5550 4050
F 0 "R?" V 5597 4108 60  0000 L CNN
F 1 "10K" V 5703 4108 60  0000 L CNN
F 2 "" H 5550 4050 60  0000 C CNN
F 3 "" H 5550 4050 60  0000 C CNN
	1    5550 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 3950 5550 3700
Connection ~ 5550 3700
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C832261
P 3800 4200
F 0 "R?" V 3847 4258 60  0000 L CNN
F 1 "220" V 3953 4258 60  0000 L CNN
F 2 "" H 3800 4200 60  0000 C CNN
F 3 "" H 3800 4200 60  0000 C CNN
	1    3800 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 4100 3800 4050
Wire Wire Line
	3800 4050 3900 4050
Connection ~ 3900 4050
Wire Wire Line
	3800 4500 3800 4650
Wire Wire Line
	3800 4650 5550 4650
Wire Wire Line
	5550 4650 5550 4350
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C83275F
P 5550 1750
F 0 "R?" V 5597 1808 60  0000 L CNN
F 1 "1K" V 5703 1808 60  0000 L CNN
F 2 "" H 5550 1750 60  0000 C CNN
F 3 "" H 5550 1750 60  0000 C CNN
	1    5550 1750
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C832803
P 5550 2350
F 0 "R?" V 5597 2408 60  0000 L CNN
F 1 "82" V 5703 2408 60  0000 L CNN
F 2 "" H 5550 2350 60  0000 C CNN
F 3 "" H 5550 2350 60  0000 C CNN
	1    5550 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2700 5550 2650
Wire Wire Line
	5550 2250 5550 2200
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C832E32
P 3800 1900
F 0 "R?" V 3847 1958 60  0000 L CNN
F 1 "62K" V 3953 1958 60  0000 L CNN
F 2 "" H 3800 1900 60  0000 C CNN
F 3 "" H 3800 1900 60  0000 C CNN
	1    3800 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 1800 3800 1600
Wire Wire Line
	3800 1600 5550 1600
Wire Wire Line
	5550 1600 5550 1650
Wire Wire Line
	3800 2900 3800 2200
Connection ~ 3800 2900
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C833754
P 3350 2350
F 0 "R?" H 3450 2567 60  0000 C CNN
F 1 "470K" H 3450 2461 60  0000 C CNN
F 2 "" H 3350 2350 60  0000 C CNN
F 3 "" H 3350 2350 60  0000 C CNN
	1    3350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2350 5150 2350
Wire Wire Line
	5150 2350 5150 2200
Wire Wire Line
	5150 2200 5550 2200
Connection ~ 5550 2200
Wire Wire Line
	5550 2200 5550 2050
Wire Wire Line
	3500 3250 3150 3250
Wire Wire Line
	3150 3250 3150 2350
Wire Wire Line
	3150 2350 3250 2350
$EndSCHEMATC
