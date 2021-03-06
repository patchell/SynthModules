EESchema Schematic File Version 2
LIBS:SynthMod
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:100-1101-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 5
Title "LFO"
Date "2016-05-02"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DUAL_2N3904 Q?
U 1 1 57282DC9
P 3400 1550
F 0 "Q?" V 3747 1550 60  0000 C CNN
F 1 "2N3904" V 3641 1550 60  0000 C CNN
F 2 "" H 3400 1450 60  0000 C CNN
F 3 "" H 3400 1450 60  0000 C CNN
	1    3400 1550
	0    -1   -1   0   
$EndComp
$Comp
L DUAL_2N3904 Q?
U 2 1 57282E46
P 4250 1550
F 0 "Q?" V 4597 1550 60  0000 C CNN
F 1 "2N3904" V 4491 1550 60  0000 C CNN
F 2 "" H 4250 1450 60  0000 C CNN
F 3 "" H 4250 1450 60  0000 C CNN
	2    4250 1550
	0    1    -1   0   
$EndComp
$Comp
L DUAL_2N3906 Q?
U 1 1 57282E7A
P 4250 2250
F 0 "Q?" V 4490 2250 60  0000 C CNN
F 1 "2N3906" V 4596 2250 60  0000 C CNN
F 2 "" H 4250 2050 60  0000 C CNN
F 3 "" H 4250 2050 60  0000 C CNN
	1    4250 2250
	0    -1   1    0   
$EndComp
$Comp
L DUAL_2N3906 Q?
U 2 1 57282EAB
P 3400 2250
F 0 "Q?" V 3640 2250 60  0000 C CNN
F 1 "2N3906" V 3746 2250 60  0000 C CNN
F 2 "" H 3400 2050 60  0000 C CNN
F 3 "" H 3400 2050 60  0000 C CNN
	2    3400 2250
	0    1    1    0   
$EndComp
$Comp
L GENDUALOPAMP U?
U 1 2 57283055
P 5450 2400
F 0 "U?" H 5575 3149 60  0000 C CNN
F 1 "TL052" H 5575 3043 60  0000 C CNN
F 2 "" H 5450 2400 60  0000 C CNN
F 3 "" H 5450 2400 60  0000 C CNN
	1    5450 2400
	1    0    0    -1  
$EndComp
$Comp
L Cap C?
U 1 1 572830EB
P 5600 1450
F 0 "C?" V 5852 1450 50  0000 C CNN
F 1 ".22uF" V 5761 1450 50  0000 C CNN
F 2 "" H 5638 1300 50  0000 C CNN
F 3 "" H 5600 1450 50  0000 C CNN
	1    5600 1450
	0    -1   -1   0   
$EndComp
$Comp
L GENDUALOPAMP U?
U 1 2 57283174
P 7100 2400
F 0 "U?" H 7225 3149 60  0000 C CNN
F 1 "TL052" H 7225 3043 60  0000 C CNN
F 2 "" H 7100 2400 60  0000 C CNN
F 3 "" H 7100 2400 60  0000 C CNN
	1    7100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1450 3100 1450
Wire Wire Line
	3100 1450 3100 3350
Wire Wire Line
	3100 2350 3200 2350
Wire Wire Line
	3600 1450 4050 1450
Wire Wire Line
	3600 2350 4050 2350
Wire Wire Line
	3700 1450 3700 2350
Connection ~ 3700 2350
Connection ~ 3700 1450
Wire Wire Line
	3400 1750 3400 1800
Wire Wire Line
	3400 2000 3400 2050
Wire Wire Line
	4250 1800 4250 1750
Wire Wire Line
	4250 2000 4250 2050
Wire Wire Line
	3400 1800 4250 2000
Wire Wire Line
	4250 1800 3400 2000
Wire Wire Line
	4450 1450 4600 1450
Wire Wire Line
	4600 1450 4600 2350
Wire Wire Line
	4600 2350 4450 2350
Wire Wire Line
	4600 1950 5250 1950
Connection ~ 4600 1950
Wire Wire Line
	5450 1450 5150 1450
Wire Wire Line
	5150 1450 5150 1950
Connection ~ 5150 1950
Wire Wire Line
	5750 1450 6050 1450
Wire Wire Line
	6050 1350 6050 2000
Wire Wire Line
	6050 2000 5900 2000
$Comp
L GENDUALOPAMP U?
U 1 2 572833A5
P 3400 3800
F 0 "U?" H 3525 4549 60  0000 C CNN
F 1 "TL052" H 3525 4443 60  0000 C CNN
F 2 "" H 3400 3800 60  0000 C CNN
F 3 "" H 3400 3800 60  0000 C CNN
	1    3400 3800
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 57283447
P 3950 2600
F 0 "R?" V 3997 2658 60  0000 L CNN
F 1 "4.99K" V 4103 2658 60  0000 L CNN
F 2 "" H 3950 2600 60  0000 C CNN
F 3 "" H 3950 2600 60  0000 C CNN
	1    3950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 2500 3950 2350
Connection ~ 3950 2350
Wire Wire Line
	3950 2900 3950 3400
Wire Wire Line
	3950 3400 3850 3400
Wire Wire Line
	3100 3350 3200 3350
Connection ~ 3100 2350
Wire Wire Line
	3100 3550 3100 3450
Wire Wire Line
	3100 3450 3200 3450
$Comp
L Cap C?
U 1 1 57283602
P 3500 3000
F 0 "C?" V 3752 3000 50  0000 C CNN
F 1 "47pF" V 3661 3000 50  0000 C CNN
F 2 "" H 3538 2850 50  0000 C CNN
F 3 "" H 3500 3000 50  0000 C CNN
	1    3500 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 3000 3950 3000
Connection ~ 3950 3000
Wire Wire Line
	3350 3000 3100 3000
Connection ~ 3100 3000
$Comp
L RESISTOR R?
U 1 1 5728375E
P 6400 1950
F 0 "R?" H 6500 2167 60  0000 C CNN
F 1 "10K" H 6500 2061 60  0000 C CNN
F 2 "" H 6400 1950 60  0000 C CNN
F 3 "" H 6400 1950 60  0000 C CNN
	1    6400 1950
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 572837FB
P 7200 2500
F 0 "R?" H 7300 2717 60  0000 C CNN
F 1 "10K" H 7300 2611 60  0000 C CNN
F 2 "" H 7200 2500 60  0000 C CNN
F 3 "" H 7200 2500 60  0000 C CNN
	1    7200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2050 6900 2050
Wire Wire Line
	7100 2500 6800 2500
Wire Wire Line
	6700 1950 6900 1950
Wire Wire Line
	6300 1950 6050 1950
Connection ~ 6050 1950
Wire Wire Line
	7500 2500 8350 2500
Wire Wire Line
	7550 2000 7800 2000
$Comp
L RESISTOR R?
U 1 1 57283B0E
P 2600 1900
F 0 "R?" H 2700 2117 60  0000 C CNN
F 1 "10K" H 2700 2011 60  0000 C CNN
F 2 "" H 2600 1900 60  0000 C CNN
F 3 "" H 2600 1900 60  0000 C CNN
	1    2600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1900 3100 1900
Connection ~ 3100 1900
Wire Wire Line
	2500 1900 2400 1900
Wire Wire Line
	2400 1900 2400 900 
Wire Wire Line
	2400 900  8700 900 
Wire Wire Line
	8700 900  8700 2100
Wire Wire Line
	8200 2000 8700 2000
$Comp
L RESISTOR R?
U 1 1 57283CCC
P 7900 2000
F 0 "R?" H 8000 2217 60  0000 C CNN
F 1 "2.2K" H 8000 2111 60  0000 C CNN
F 2 "" H 7900 2000 60  0000 C CNN
F 3 "" H 7900 2000 60  0000 C CNN
	1    7900 2000
	1    0    0    -1  
$EndComp
$Comp
L ZENER D?
U 1 1 57283E5A
P 8700 2300
F 0 "D?" V 8654 2379 50  0000 L CNN
F 1 "ZENER" V 8745 2379 50  0000 L CNN
F 2 "" H 8700 2300 50  0000 C CNN
F 3 "" H 8700 2300 50  0000 C CNN
	1    8700 2300
	0    1    1    0   
$EndComp
$Comp
L ZENER D?
U 1 1 57283FA3
P 8700 2750
F 0 "D?" V 8746 2671 50  0000 R CNN
F 1 "ZENER" V 8655 2671 50  0000 R CNN
F 2 "" H 8700 2750 50  0000 C CNN
F 3 "" H 8700 2750 50  0000 C CNN
	1    8700 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 2550 8700 2500
Connection ~ 8700 2000
Wire Wire Line
	8700 3000 8700 2950
$Comp
L GND #PWR?
U 1 1 572842D4
P 8700 3000
F 0 "#PWR?" H 8700 2750 50  0001 C CNN
F 1 "GND" H 8705 2827 50  0000 C CNN
F 2 "" H 8700 3000 50  0000 C CNN
F 3 "" H 8700 3000 50  0000 C CNN
	1    8700 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57284533
P 5150 2150
F 0 "#PWR?" H 5150 1900 50  0001 C CNN
F 1 "GND" H 5155 1977 50  0000 C CNN
F 2 "" H 5150 2150 50  0000 C CNN
F 3 "" H 5150 2150 50  0000 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2150 5150 2050
Wire Wire Line
	5150 2050 5250 2050
$Comp
L GND #PWR?
U 1 1 57284736
P 3100 3550
F 0 "#PWR?" H 3100 3300 50  0001 C CNN
F 1 "GND" H 3105 3377 50  0000 C CNN
F 2 "" H 3100 3550 50  0000 C CNN
F 3 "" H 3100 3550 50  0000 C CNN
	1    3100 3550
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U?
U 1 2 57284A10
P 3300 5400
F 0 "U?" H 3425 6149 60  0000 C CNN
F 1 "TL052" H 3425 6043 60  0000 C CNN
F 2 "" H 3300 5400 60  0000 C CNN
F 3 "" H 3300 5400 60  0000 C CNN
	1    3300 5400
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 57284A94
P 3350 4350
F 0 "R?" H 3450 4567 60  0000 C CNN
F 1 "49.9K" H 3450 4461 60  0000 C CNN
F 2 "" H 3350 4350 60  0000 C CNN
F 3 "" H 3350 4350 60  0000 C CNN
	1    3350 4350
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 57284C55
P 2500 4200
F 0 "R?" H 2600 4417 60  0000 C CNN
F 1 "100K" H 2600 4311 60  0000 C CNN
F 2 "" H 2500 4200 60  0000 C CNN
F 3 "" H 2500 4200 60  0000 C CNN
	1    2500 4200
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 57284CC3
P 2500 4600
F 0 "R?" H 2600 4817 60  0000 C CNN
F 1 "100K" H 2600 4711 60  0000 C CNN
F 2 "" H 2500 4600 60  0000 C CNN
F 3 "" H 2500 4600 60  0000 C CNN
	1    2500 4600
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 57284D22
P 2500 4950
F 0 "R?" H 2600 5167 60  0000 C CNN
F 1 "100K" H 2600 5061 60  0000 C CNN
F 2 "" H 2500 4950 60  0000 C CNN
F 3 "" H 2500 4950 60  0000 C CNN
	1    2500 4950
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 57284DAA
P 2500 3850
F 0 "R?" H 2600 4067 60  0000 C CNN
F 1 "49.9K" H 2600 3961 60  0000 C CNN
F 2 "" H 2500 3850 60  0000 C CNN
F 3 "" H 2500 3850 60  0000 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3850 2950 3850
Wire Wire Line
	2950 3850 2950 4950
Wire Wire Line
	2800 4950 3100 4950
Connection ~ 2950 4950
Wire Wire Line
	2800 4600 2950 4600
Connection ~ 2950 4600
Wire Wire Line
	3250 4350 2950 4350
Connection ~ 2950 4350
Wire Wire Line
	2800 4200 2950 4200
Connection ~ 2950 4200
Wire Wire Line
	3750 5000 3900 5000
Wire Wire Line
	3900 5000 3900 4350
Wire Wire Line
	3650 4350 4850 4350
$Comp
L RESISTOR R?
U 1 1 57285530
P 4400 3900
F 0 "R?" V 4447 3958 60  0000 L CNN
F 1 "1.87K" V 4553 3958 60  0000 L CNN
F 2 "" H 4400 3900 60  0000 C CNN
F 3 "" H 4400 3900 60  0000 C CNN
	1    4400 3900
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R?
U 1 1 572855D0
P 4850 3900
F 0 "R?" V 4897 3958 60  0000 L CNN
F 1 "49.9K" V 5003 3958 60  0000 L CNN
F 2 "" H 4850 3900 60  0000 C CNN
F 3 "" H 4850 3900 60  0000 C CNN
	1    4850 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 4200 4400 4550
Wire Wire Line
	4850 4350 4850 4200
Connection ~ 3900 4350
Wire Wire Line
	4850 3700 4850 3800
Wire Wire Line
	4400 3700 4850 3700
Wire Wire Line
	4400 3700 4400 3800
$Comp
L GND #PWR?
U 1 1 5728583D
P 4400 4550
F 0 "#PWR?" H 4400 4300 50  0001 C CNN
F 1 "GND" H 4405 4377 50  0000 C CNN
F 2 "" H 4400 4550 50  0000 C CNN
F 3 "" H 4400 4550 50  0000 C CNN
	1    4400 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 572859BF
P 2950 5200
F 0 "#PWR?" H 2950 4950 50  0001 C CNN
F 1 "GND" H 2955 5027 50  0000 C CNN
F 2 "" H 2950 5200 50  0000 C CNN
F 3 "" H 2950 5200 50  0000 C CNN
	1    2950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5200 2950 5050
Wire Wire Line
	2950 5050 3100 5050
Wire Wire Line
	4250 2000 4700 2000
Wire Wire Line
	4700 2000 4700 3700
Connection ~ 4700 3700
Connection ~ 4250 2000
Connection ~ 3400 2000
Wire Wire Line
	3400 2000 2900 2000
Wire Wire Line
	2900 2000 2900 2200
$Comp
L GND #PWR?
U 1 1 57285E9D
P 2900 2200
F 0 "#PWR?" H 2900 1950 50  0001 C CNN
F 1 "GND" H 2905 2027 50  0000 C CNN
F 2 "" H 2900 2200 50  0000 C CNN
F 3 "" H 2900 2200 50  0000 C CNN
	1    2900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3850 1300 3850
Text HLabel 1300 3850 0    60   Input ~ 0
VR-5
Text HLabel 1300 4200 0    60   Input ~ 0
VC1
Text HLabel 1300 4600 0    60   Input ~ 0
VC2
Text HLabel 1300 4950 0    60   Input ~ 0
VC3
Wire Wire Line
	2400 4950 1300 4950
Wire Wire Line
	2400 4600 1300 4600
Wire Wire Line
	2400 4200 1300 4200
Text HLabel 9900 1350 2    60   Output ~ 0
TRI
Text HLabel 9900 1800 2    60   Output ~ 0
SQUARE
$Comp
L RESISTOR R?
U 1 1 5728CD9C
P 9300 1800
F 0 "R?" H 9400 2017 60  0000 C CNN
F 1 "1K" H 9400 1911 60  0000 C CNN
F 2 "" H 9300 1800 60  0000 C CNN
F 3 "" H 9300 1800 60  0000 C CNN
	1    9300 1800
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5728CEF3
P 9400 1350
F 0 "R?" H 9500 1567 60  0000 C CNN
F 1 "1K" H 9500 1461 60  0000 C CNN
F 2 "" H 9400 1350 60  0000 C CNN
F 3 "" H 9400 1350 60  0000 C CNN
	1    9400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1350 9700 1350
Wire Wire Line
	9900 1800 9600 1800
Wire Wire Line
	9200 1800 8700 1800
Connection ~ 8700 1800
Wire Wire Line
	9300 1350 6050 1350
Connection ~ 6050 1450
Wire Wire Line
	6800 2500 6800 2050
Wire Wire Line
	8350 2500 8350 2000
Connection ~ 8350 2000
$EndSCHEMATC
