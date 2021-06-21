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
LIBS:500-1112-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Midi To Triggers"
Date "2017-01-15"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Crystal Y1
U 1 1 587C4552
P 1250 1000
F 0 "Y1" H 1250 1150 50  0000 C CNN
F 1 "8.00MHz" H 1250 850 50  0000 C CNN
F 2 "FootPrints:XTAL" H 1250 1000 50  0001 C CNN
F 3 "" H 1250 1000 50  0000 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
$Comp
L Cap C1
U 1 1 587C46B0
P 900 1450
F 0 "C1" H 925 1550 50  0000 L CNN
F 1 "27" H 925 1350 50  0000 L CNN
F 2 "FootPrints:CAP-0.1" H 938 1300 50  0001 C CNN
F 3 "" H 900 1450 50  0000 C CNN
	1    900  1450
	1    0    0    -1  
$EndComp
$Comp
L Cap C2
U 1 1 587C4807
P 1600 1450
F 0 "C2" H 1625 1550 50  0000 L CNN
F 1 "27" H 1625 1350 50  0000 L CNN
F 2 "FootPrints:CAP-0.1" H 1638 1300 50  0001 C CNN
F 3 "" H 1600 1450 50  0000 C CNN
	1    1600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 600  6650 4750
Wire Wire Line
	6650 600  1850 600 
Wire Wire Line
	1850 600  1850 800 
Wire Wire Line
	1850 800  2200 800 
Wire Wire Line
	1400 1000 2100 1000
Wire Wire Line
	900  1200 2150 1200
Wire Wire Line
	900  1000 900  1300
Wire Wire Line
	900  1000 1100 1000
Connection ~ 900  1200
Wire Wire Line
	1600 1300 1600 1000
Connection ~ 1600 1000
$Comp
L GND #PWR30
U 1 1 587C4AF7
P 900 1600
F 0 "#PWR30" H 900 1350 50  0001 C CNN
F 1 "GND" H 900 1450 50  0000 C CNN
F 2 "" H 900 1600 50  0000 C CNN
F 3 "" H 900 1600 50  0000 C CNN
	1    900  1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR31
U 1 1 587C4B2D
P 1600 1600
F 0 "#PWR31" H 1600 1350 50  0001 C CNN
F 1 "GND" H 1600 1450 50  0000 C CNN
F 2 "" H 1600 1600 50  0000 C CNN
F 3 "" H 1600 1600 50  0000 C CNN
	1    1600 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR35
U 1 1 587C4B5C
P 3150 1250
F 0 "#PWR35" H 3150 1000 50  0001 C CNN
F 1 "GND" H 3150 1100 50  0000 C CNN
F 2 "" H 3150 1250 50  0000 C CNN
F 3 "" H 3150 1250 50  0000 C CNN
	1    3150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1000 3150 1250
Wire Wire Line
	3150 1100 3100 1100
$Comp
L DIN5_SYNTHMODLIB P7
U 1 1 587C4D5E
P 10250 3700
F 0 "P7" H 10000 4000 60  0000 C CNN
F 1 "DIN5_SYNTHMODLIB" H 10025 3600 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 10250 3700 60  0001 C CNN
F 3 "" H 10250 3700 60  0000 C CNN
	1    10250 3700
	-1   0    0    -1  
$EndComp
$Comp
L DIN5_SYNTHMODLIB P8
U 1 1 587C4E6D
P 10250 4500
F 0 "P8" H 10000 4800 60  0000 C CNN
F 1 "DIN5_SYNTHMODLIB" H 10025 4400 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 10250 4500 60  0001 C CNN
F 3 "" H 10250 4500 60  0000 C CNN
	1    10250 4500
	-1   0    0    -1  
$EndComp
$Comp
L DIN5_SYNTHMODLIB P9
U 1 1 587C4EBA
P 10250 5300
F 0 "P9" H 10000 5600 60  0000 C CNN
F 1 "DIN5_SYNTHMODLIB" H 10025 5200 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 10250 5300 60  0001 C CNN
F 3 "" H 10250 5300 60  0000 C CNN
	1    10250 5300
	-1   0    0    -1  
$EndComp
$Comp
L PC900 U9
U 1 1 587C4F00
P 7950 3400
F 0 "U9" H 7950 3100 60  0000 C CNN
F 1 "PC900" H 7950 3000 60  0000 C CNN
F 2 "FootPrints:DIP-6.3" H 7950 3400 60  0001 C CNN
F 3 "" H 7950 3400 60  0000 C CNN
	1    7950 3400
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R12
U 1 1 587C485F
P 8950 3300
F 0 "R12" H 9000 3500 60  0000 C CNN
F 1 "220" H 9000 3400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8950 3300 60  0001 C CNN
F 3 "" H 8950 3300 60  0000 C CNN
	1    8950 3300
	1    0    0    -1  
$EndComp
$Comp
L D_Small_ALT D1
U 1 1 587C4948
P 8450 3350
F 0 "D1" H 8400 3430 50  0000 L CNN
F 1 "1N914" H 8300 3270 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" V 8450 3350 50  0001 C CNN
F 3 "" V 8450 3350 50  0000 C CNN
	1    8450 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 3300 8700 3300
Wire Wire Line
	8700 3300 8700 3150
Wire Wire Line
	8700 3150 8050 3150
Wire Wire Line
	8450 3150 8450 3250
Wire Wire Line
	8050 3150 8050 3200
Connection ~ 8450 3150
Wire Wire Line
	9450 3300 9250 3300
Wire Wire Line
	8050 3600 8050 3700
Wire Wire Line
	8050 3700 8750 3700
Wire Wire Line
	8450 3700 8450 3450
Wire Wire Line
	8750 3700 8750 3500
Wire Wire Line
	8750 3500 9450 3500
Connection ~ 8450 3700
$Comp
L GND #PWR48
U 1 1 587C4BC1
P 7850 3600
F 0 "#PWR48" H 7850 3350 50  0001 C CNN
F 1 "GND" H 7850 3450 50  0000 C CNN
F 2 "" H 7850 3600 50  0000 C CNN
F 3 "" H 7850 3600 50  0000 C CNN
	1    7850 3600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR47
U 1 1 587C4BEC
P 7850 2900
F 0 "#PWR47" H 7850 2750 50  0001 C CNN
F 1 "VCC" H 7850 3050 50  0000 C CNN
F 2 "" H 7850 2900 50  0000 C CNN
F 3 "" H 7850 2900 50  0000 C CNN
	1    7850 2900
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R7
U 1 1 587C4C2B
P 7550 3050
F 0 "R7" H 7550 2750 60  0000 C CNN
F 1 "270" H 7700 2850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7550 3050 60  0001 C CNN
F 3 "" H 7550 3050 60  0000 C CNN
	1    7550 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 3350 7550 3400
Wire Wire Line
	7550 3400 7650 3400
Wire Wire Line
	7850 2900 7850 3200
Wire Wire Line
	7550 2950 7850 2950
Connection ~ 7850 2950
Text Label 2150 5550 0    60   ~ 0
MIDI_IN
Text Label 2150 5650 0    60   ~ 0
MIDI_OUT
Wire Wire Line
	2100 5750 2650 5750
Wire Wire Line
	2450 5850 2100 5850
Text Label 2150 5750 0    60   ~ 0
AQ
Text Label 2150 5850 0    60   ~ 0
BQ
Wire Wire Line
	6000 1100 5550 1100
Wire Wire Line
	6000 1200 5550 1200
Wire Wire Line
	6000 1300 5550 1300
Wire Wire Line
	6000 1400 5550 1400
Wire Wire Line
	6000 1500 5550 1500
Wire Wire Line
	6000 1600 5550 1600
Wire Wire Line
	6000 1700 5550 1700
Wire Wire Line
	6000 1800 5550 1800
Text Label 5700 1100 0    60   ~ 0
T0
Text Label 5700 1200 0    60   ~ 0
T1
Text Label 5700 1300 0    60   ~ 0
T2
Text Label 5700 1400 0    60   ~ 0
T3
Text Label 5700 1500 0    60   ~ 0
T4
Text Label 5700 1600 0    60   ~ 0
T5
Text Label 5700 1700 0    60   ~ 0
T6
Text Label 5700 1800 0    60   ~ 0
T7
Entry Wire Line
	6000 1700 6100 1600
Entry Wire Line
	6000 1600 6100 1500
Entry Wire Line
	6000 1500 6100 1400
Entry Wire Line
	6000 1400 6100 1300
Entry Wire Line
	6000 1300 6100 1200
Entry Wire Line
	6000 1200 6100 1100
Entry Wire Line
	6000 1100 6100 1000
Text HLabel 10400 750  2    60   Output ~ 0
T[0..17]
Text Label 9800 750  0    60   ~ 0
T[0..17]
Wire Bus Line
	10400 750  6100 750 
$Comp
L 74HC05 U8
U 2 1 58DAEDD1
P 8000 4300
F 0 "U8" H 8150 4400 50  0000 C CNN
F 1 "74HC05" H 8200 4200 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 8000 4300 50  0001 C CNN
F 3 "" H 8000 4300 50  0000 C CNN
	2    8000 4300
	1    0    0    -1  
$EndComp
$Comp
L 74HC05 U8
U 1 1 58DAEE8B
P 7200 4300
F 0 "U8" H 7350 4400 50  0000 C CNN
F 1 "74HC05" H 7400 4200 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 7200 4300 50  0001 C CNN
F 3 "" H 7200 4300 50  0000 C CNN
	1    7200 4300
	1    0    0    -1  
$EndComp
$Comp
L 74HC05 U8
U 3 1 58DAEEE7
P 7150 5100
F 0 "U8" H 7300 5200 50  0000 C CNN
F 1 "74HC05" H 7350 5000 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 7150 5100 50  0001 C CNN
F 3 "" H 7150 5100 50  0000 C CNN
	3    7150 5100
	1    0    0    -1  
$EndComp
$Comp
L 74HC05 U8
U 4 1 58DAEF4C
P 8000 5100
F 0 "U8" H 8150 5200 50  0000 C CNN
F 1 "74HC05" H 8200 5000 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 8000 5100 50  0001 C CNN
F 3 "" H 8000 5100 50  0000 C CNN
	4    8000 5100
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R8
U 1 1 58DAEFEC
P 8700 4100
F 0 "R8" H 8750 4300 60  0000 C CNN
F 1 "220" H 8750 4200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8700 4100 60  0001 C CNN
F 3 "" H 8700 4100 60  0000 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R9
U 1 1 58DAF055
P 8700 4300
F 0 "R9" H 8750 4500 60  0000 C CNN
F 1 "220" H 8750 4400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8700 4300 60  0001 C CNN
F 3 "" H 8700 4300 60  0000 C CNN
	1    8700 4300
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R10
U 1 1 58DAF0AB
P 8700 4900
F 0 "R10" H 8750 5100 60  0000 C CNN
F 1 "220" H 8750 5000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8700 4900 60  0001 C CNN
F 3 "" H 8700 4900 60  0000 C CNN
	1    8700 4900
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R11
U 1 1 58DAF112
P 8750 5100
F 0 "R11" H 8800 5300 60  0000 C CNN
F 1 "220" H 8800 5200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8750 5100 60  0001 C CNN
F 3 "" H 8750 5100 60  0000 C CNN
	1    8750 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5100 9050 5100
Wire Wire Line
	8650 5100 8200 5100
Wire Wire Line
	7800 5100 7350 5100
Wire Wire Line
	7400 4300 7800 4300
Wire Wire Line
	8200 4300 8600 4300
Wire Wire Line
	9450 4300 9000 4300
Wire Wire Line
	9450 4100 9000 4100
Wire Wire Line
	9000 4900 9450 4900
Wire Wire Line
	8500 4900 8600 4900
Wire Wire Line
	8500 3950 8500 4900
Wire Wire Line
	8500 4100 8600 4100
Connection ~ 8500 4100
$Comp
L +5V0 #PWR49
U 1 1 58DAF9C1
P 8500 3950
F 0 "#PWR49" H 8500 3800 50  0001 C CNN
F 1 "+5V0" H 8500 4100 50  0000 C CNN
F 2 "" H 8500 3950 50  0000 C CNN
F 3 "" H 8500 3950 50  0000 C CNN
	1    8500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4200 9250 4200
Wire Wire Line
	9250 4200 9250 5300
Wire Wire Line
	9450 5000 9250 5000
Connection ~ 9250 5000
$Comp
L GND #PWR50
U 1 1 58DAFAEF
P 9250 5300
F 0 "#PWR50" H 9250 5050 50  0001 C CNN
F 1 "GND" H 9250 5150 50  0000 C CNN
F 2 "" H 9250 5300 50  0001 C CNN
F 3 "" H 9250 5300 50  0001 C CNN
	1    9250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3400 6700 3400
Wire Wire Line
	6700 3400 6700 6150
Wire Wire Line
	6700 4300 7000 4300
Connection ~ 7600 3400
Connection ~ 6700 4300
Wire Wire Line
	6750 5100 6750 6200
Wire Wire Line
	6750 5100 6950 5100
Entry Wire Line
	6000 1800 6100 1700
$Comp
L 74HC595 U2
U 1 1 58DB0A74
P 5250 1550
F 0 "U2" H 5400 2150 50  0000 C CNN
F 1 "74HC595" H 5100 950 50  0000 C CNN
F 2 "FootPrints:DIP-20.3" H 5250 1550 50  0001 C CNN
F 3 "" H 5250 1550 50  0000 C CNN
	1    5250 1550
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U3
U 1 1 58DB1051
P 5250 2800
F 0 "U3" H 5400 3400 50  0000 C CNN
F 1 "74HC595" H 5100 2200 50  0000 C CNN
F 2 "FootPrints:DIP-20.3" H 5250 2800 50  0001 C CNN
F 3 "" H 5250 2800 50  0000 C CNN
	1    5250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2350 5550 2350
Wire Wire Line
	6000 2450 5550 2450
Wire Wire Line
	6000 2550 5550 2550
Wire Wire Line
	6000 2650 5550 2650
Wire Wire Line
	6000 2750 5550 2750
Wire Wire Line
	6000 2850 5550 2850
Wire Wire Line
	6000 2950 5550 2950
Wire Wire Line
	6000 3050 5550 3050
Entry Wire Line
	6000 2950 6100 2850
Entry Wire Line
	6000 2850 6100 2750
Entry Wire Line
	6000 2750 6100 2650
Entry Wire Line
	6000 2650 6100 2550
Entry Wire Line
	6000 2550 6100 2450
Entry Wire Line
	6000 2450 6100 2350
Entry Wire Line
	6000 2350 6100 2250
Entry Wire Line
	6000 3050 6100 2950
$Comp
L 74HC595 U4
U 1 1 58DB13AD
P 5250 4050
F 0 "U4" H 5400 4650 50  0000 C CNN
F 1 "74HC595" H 5100 3450 50  0000 C CNN
F 2 "FootPrints:DIP-20.3" H 5250 4050 50  0001 C CNN
F 3 "" H 5250 4050 50  0000 C CNN
	1    5250 4050
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U5
U 1 1 58DB1499
P 5300 5450
F 0 "U5" H 5450 6050 50  0000 C CNN
F 1 "74HC595" H 5150 4850 50  0000 C CNN
F 2 "FootPrints:DIP-20.3" H 5300 5450 50  0001 C CNN
F 3 "" H 5300 5450 50  0000 C CNN
	1    5300 5450
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U6
U 1 1 58DB1547
P 5300 6900
F 0 "U6" H 5450 7500 50  0000 C CNN
F 1 "74HC595" H 5150 6300 50  0000 C CNN
F 2 "FootPrints:DIP-20.3" H 5300 6900 50  0001 C CNN
F 3 "" H 5300 6900 50  0000 C CNN
	1    5300 6900
	1    0    0    -1  
$EndComp
Wire Bus Line
	6100 750  6100 3600
Wire Wire Line
	6000 3600 5550 3600
Entry Wire Line
	6000 3600 6100 3500
Entry Wire Line
	6000 3700 6100 3600
Wire Wire Line
	6000 3700 5550 3700
Text Label 5700 2350 0    60   ~ 0
T8
Text Label 5700 2450 0    60   ~ 0
T9
Text Label 5700 2550 0    60   ~ 0
T10
Text Label 5700 2650 0    60   ~ 0
T11
Text Label 5700 2750 0    60   ~ 0
T12
Text Label 5700 2850 0    60   ~ 0
T13
Text Label 5700 2950 0    60   ~ 0
T14
Text Label 5700 3050 0    60   ~ 0
T15
Text Label 5750 3600 0    60   ~ 0
T16
Text Label 5750 3700 0    60   ~ 0
T17
Wire Wire Line
	5550 3800 5750 3800
Wire Wire Line
	5550 3900 5750 3900
Wire Wire Line
	5550 4000 5750 4000
Text HLabel 5750 3800 2    60   Output ~ 0
R
Text HLabel 5750 3900 2    60   Output ~ 0
G
Text HLabel 5750 4000 2    60   Output ~ 0
B
Wire Wire Line
	5550 4100 6100 4100
Wire Wire Line
	5550 4200 6100 4200
Wire Wire Line
	5550 4300 6100 4300
Wire Wire Line
	5600 5000 6100 5000
Wire Wire Line
	5600 5100 6100 5100
Wire Wire Line
	5600 5200 6100 5200
Wire Wire Line
	5600 5300 6100 5300
Wire Wire Line
	5600 5400 6100 5400
Wire Wire Line
	5600 5500 6100 5500
Wire Wire Line
	5600 5600 6100 5600
Wire Wire Line
	5600 5700 6100 5700
Wire Wire Line
	5600 6450 6100 6450
Wire Wire Line
	5600 6550 6100 6550
Wire Wire Line
	5600 6650 6100 6650
Wire Wire Line
	5600 6750 6100 6750
Wire Wire Line
	5600 6850 6100 6850
Wire Wire Line
	5600 6950 6100 6950
Entry Wire Line
	6100 6450 6200 6350
Entry Wire Line
	6100 6550 6200 6450
Entry Wire Line
	6100 6650 6200 6550
Entry Wire Line
	6100 6750 6200 6650
Entry Wire Line
	6100 6950 6200 6850
Entry Wire Line
	6100 6850 6200 6750
Entry Wire Line
	6100 5000 6200 4900
Entry Wire Line
	6100 5100 6200 5000
Entry Wire Line
	6100 5200 6200 5100
Entry Wire Line
	6100 5300 6200 5200
Entry Wire Line
	6100 5500 6200 5400
Entry Wire Line
	6100 5600 6200 5500
Entry Wire Line
	6100 5700 6200 5600
Entry Wire Line
	6100 5400 6200 5300
Entry Wire Line
	6100 4100 6200 4000
Entry Wire Line
	6100 4200 6200 4100
Entry Wire Line
	6100 4300 6200 4200
Text Label 5750 4100 2    60   ~ 0
L0
Text Label 5750 4200 2    60   ~ 0
L1
Text Label 5750 4300 2    60   ~ 0
L2
Text Label 5750 5000 2    60   ~ 0
L3
Text Label 5750 5100 2    60   ~ 0
L4
Text Label 5750 5200 2    60   ~ 0
L5
Text Label 5750 5300 2    60   ~ 0
L6
Text Label 5750 5400 2    60   ~ 0
L7
Text Label 5750 5500 2    60   ~ 0
L8
Text Label 5750 5600 2    60   ~ 0
L9
Text Label 5800 5700 2    60   ~ 0
L10
Text Label 5800 6450 2    60   ~ 0
L11
Text Label 5800 6550 2    60   ~ 0
L12
Text Label 5800 6650 2    60   ~ 0
L13
Text Label 5800 6750 2    60   ~ 0
L14
Text Label 5800 6850 2    60   ~ 0
L15
Text Label 5800 6950 2    60   ~ 0
L16
Wire Bus Line
	6200 950  6200 6850
Wire Bus Line
	6200 950  10400 950 
Text HLabel 10400 950  2    60   Output ~ 0
L[0..16]
Wire Wire Line
	4650 1100 4150 1100
Wire Wire Line
	4150 1100 4150 3700
Wire Wire Line
	4250 1300 4250 6650
Wire Wire Line
	4250 1300 4650 1300
Wire Wire Line
	4650 2550 4250 2550
Connection ~ 4250 2550
Wire Wire Line
	4650 3800 4250 3800
Connection ~ 4250 3800
Wire Wire Line
	4250 5200 4700 5200
Connection ~ 4250 3900
Wire Wire Line
	4250 6650 4700 6650
Connection ~ 4250 5200
Wire Wire Line
	5550 2000 5650 2000
Wire Wire Line
	5650 2000 5650 2200
Wire Wire Line
	5650 2200 4550 2200
Wire Wire Line
	4550 2200 4550 2350
Wire Wire Line
	4550 2350 4650 2350
Wire Wire Line
	5550 3250 5650 3250
Wire Wire Line
	5650 3250 5650 3450
Wire Wire Line
	5650 3450 4500 3450
Wire Wire Line
	4500 3450 4500 3600
Wire Wire Line
	4500 3600 4650 3600
Wire Wire Line
	5550 4500 5650 4500
Wire Wire Line
	5650 4500 5650 4800
Wire Wire Line
	5650 4800 4600 4800
Wire Wire Line
	4600 4800 4600 5000
Wire Wire Line
	4600 5000 4700 5000
Wire Wire Line
	5600 5900 5700 5900
Wire Wire Line
	5700 5900 5700 6100
Wire Wire Line
	5700 6100 4550 6100
Wire Wire Line
	4550 6100 4550 6450
Wire Wire Line
	4550 6450 4700 6450
Wire Wire Line
	2100 5550 4150 5550
Wire Wire Line
	4150 5550 4150 6150
Wire Wire Line
	4150 6150 6700 6150
Wire Wire Line
	6750 6200 4100 6200
Wire Wire Line
	4100 6200 4100 5650
Wire Wire Line
	4100 5650 2100 5650
Wire Wire Line
	4650 1600 4300 1600
Wire Wire Line
	4300 1600 4300 6950
Wire Wire Line
	4300 6950 4700 6950
Wire Wire Line
	4650 4100 4300 4100
Connection ~ 4300 4100
Wire Wire Line
	4650 2850 4300 2850
Connection ~ 4300 2850
Wire Wire Line
	4650 1700 4350 1700
Wire Wire Line
	4350 1700 4350 7500
Wire Wire Line
	4350 7050 4700 7050
Connection ~ 4350 7050
$Comp
L GND #PWR39
U 1 1 58DB4C88
P 4350 7500
F 0 "#PWR39" H 4350 7250 50  0001 C CNN
F 1 "GND" H 4350 7350 50  0000 C CNN
F 2 "" H 4350 7500 50  0001 C CNN
F 3 "" H 4350 7500 50  0001 C CNN
	1    4350 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5600 4350 5600
Connection ~ 4350 5600
Wire Wire Line
	4650 2950 4350 2950
Connection ~ 4350 2950
Wire Wire Line
	4650 4200 4350 4200
Connection ~ 4350 4200
$Comp
L +5V0 #PWR40
U 1 1 58DB5165
P 4650 1400
F 0 "#PWR40" H 4650 1250 50  0001 C CNN
F 1 "+5V0" H 4650 1550 50  0000 C CNN
F 2 "" H 4650 1400 50  0000 C CNN
F 3 "" H 4650 1400 50  0000 C CNN
	1    4650 1400
	0    -1   -1   0   
$EndComp
$Comp
L +5V0 #PWR41
U 1 1 58DB520A
P 4650 2650
F 0 "#PWR41" H 4650 2500 50  0001 C CNN
F 1 "+5V0" V 4650 2850 50  0000 C CNN
F 2 "" H 4650 2650 50  0000 C CNN
F 3 "" H 4650 2650 50  0000 C CNN
	1    4650 2650
	0    -1   -1   0   
$EndComp
$Comp
L +5V0 #PWR42
U 1 1 58DB52F6
P 4650 3900
F 0 "#PWR42" H 4650 3750 50  0001 C CNN
F 1 "+5V0" V 4650 4100 50  0000 C CNN
F 2 "" H 4650 3900 50  0000 C CNN
F 3 "" H 4650 3900 50  0000 C CNN
	1    4650 3900
	0    -1   -1   0   
$EndComp
$Comp
L +5V0 #PWR43
U 1 1 58DB5358
P 4700 5300
F 0 "#PWR43" H 4700 5150 50  0001 C CNN
F 1 "+5V0" V 4700 5500 50  0000 C CNN
F 2 "" H 4700 5300 50  0000 C CNN
F 3 "" H 4700 5300 50  0000 C CNN
	1    4700 5300
	0    -1   -1   0   
$EndComp
$Comp
L +5V0 #PWR44
U 1 1 58DB5485
P 4700 6750
F 0 "#PWR44" H 4700 6600 50  0001 C CNN
F 1 "+5V0" V 4700 6950 50  0000 C CNN
F 2 "" H 4700 6750 50  0000 C CNN
F 3 "" H 4700 6750 50  0000 C CNN
	1    4700 6750
	0    -1   -1   0   
$EndComp
$Comp
L +5V0 #PWR33
U 1 1 58DB553E
P 3100 800
F 0 "#PWR33" H 3100 650 50  0001 C CNN
F 1 "+5V0" V 3100 1000 50  0000 C CNN
F 2 "" H 3100 800 50  0000 C CNN
F 3 "" H 3100 800 50  0000 C CNN
	1    3100 800 
	0    1    1    0   
$EndComp
$Comp
L +5V0 #PWR34
U 1 1 58DB55DA
P 3100 900
F 0 "#PWR34" H 3100 750 50  0001 C CNN
F 1 "+5V0" V 3100 1100 50  0000 C CNN
F 2 "" H 3100 900 50  0000 C CNN
F 3 "" H 3100 900 50  0000 C CNN
	1    3100 900 
	0    1    1    0   
$EndComp
Text HLabel 850  6750 0    60   Input ~ 0
AQ
Text HLabel 850  6850 0    60   Input ~ 0
BQ
Wire Wire Line
	850  6750 2650 6750
Wire Wire Line
	2650 6750 2650 5750
Wire Wire Line
	2450 5850 2450 6850
Wire Wire Line
	2450 6850 850  6850
Wire Wire Line
	4700 5500 4300 5500
Connection ~ 4300 5500
Connection ~ 4300 3500
Text Label 3850 3500 0    60   ~ 0
LD_SR
Text Label 3850 3900 0    60   ~ 0
CLK_SR
Text Label 3850 3700 0    60   ~ 0
DAT_SR
$Comp
L RESISTOR R83
U 1 1 5A513B4D
P 7600 3900
F 0 "R83" H 7600 3600 60  0000 C CNN
F 1 "3.3K" H 7750 3700 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7600 3900 60  0001 C CNN
F 3 "" H 7600 3900 60  0000 C CNN
	1    7600 3900
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR45
U 1 1 5A513C50
P 7600 3800
F 0 "#PWR45" H 7600 3650 50  0001 C CNN
F 1 "VCC" H 7600 3950 50  0000 C CNN
F 2 "" H 7600 3800 50  0000 C CNN
F 3 "" H 7600 3800 50  0000 C CNN
	1    7600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4200 7600 4300
Connection ~ 7600 4300
$Comp
L RESISTOR R84
U 1 1 5A513D8A
P 7600 4700
F 0 "R84" H 7600 4400 60  0000 C CNN
F 1 "3.3K" H 7750 4500 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7600 4700 60  0001 C CNN
F 3 "" H 7600 4700 60  0000 C CNN
	1    7600 4700
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR46
U 1 1 5A513E59
P 7600 4600
F 0 "#PWR46" H 7600 4450 50  0001 C CNN
F 1 "VCC" H 7600 4750 50  0000 C CNN
F 2 "" H 7600 4600 50  0000 C CNN
F 3 "" H 7600 4600 50  0000 C CNN
	1    7600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5000 7600 5100
Connection ~ 7600 5100
$Comp
L ATMEGA328-DIP U1
U 1 1 5A530A30
P 2400 1250
F 0 "U1" H 2400 1250 60  0000 C CNN
F 1 "ATMEGA328-DIP" H 2700 1150 60  0000 C CNN
F 2 "FootPrints:DIP28.3" H 2400 1250 60  0001 C CNN
F 3 "" H 2400 1250 60  0000 C CNN
	1    2400 1250
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328-DIP U1
U 2 1 5A530C57
P 850 4200
F 0 "U1" H 850 4200 60  0000 C CNN
F 1 "ATMEGA328-DIP" H 1150 4100 60  0000 C CNN
F 2 "FootPrints:DIP28.3" H 850 4200 60  0001 C CNN
F 3 "" H 850 4200 60  0000 C CNN
	2    850  4200
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328-DIP U1
U 3 1 5A530D60
P 950 5150
F 0 "U1" H 950 5150 60  0000 C CNN
F 1 "ATMEGA328-DIP" H 1250 5050 60  0000 C CNN
F 2 "FootPrints:DIP28.3" H 950 5150 60  0001 C CNN
F 3 "" H 950 5150 60  0000 C CNN
	3    950  5150
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328-DIP U1
U 4 1 5A530E49
P 1100 6350
F 0 "U1" H 1100 6350 60  0000 C CNN
F 1 "ATMEGA328-DIP" H 1400 6250 60  0000 C CNN
F 2 "FootPrints:DIP28.3" H 1100 6350 60  0001 C CNN
F 3 "" H 1100 6350 60  0000 C CNN
	4    1100 6350
	1    0    0    -1  
$EndComp
$Comp
L 4053 U7
U 1 1 5A530F84
P 3000 4100
F 0 "U7" H 3100 4100 50  0000 C CNN
F 1 "4053" H 3100 3900 50  0000 C CNN
F 2 "FootPrints:DIP16.3" H 3000 4100 60  0001 C CNN
F 3 "" H 3000 4100 60  0001 C CNN
	1    3000 4100
	-1   0    0    -1  
$EndComp
$Comp
L AVR-ISP J1
U 1 1 5A53100D
P 3150 2650
F 0 "J1" H 3150 2450 60  0000 C CNN
F 1 "AVR-ISP" H 3200 2350 60  0000 C CNN
F 2 "FootPrints:IDC3X2" H 3150 2450 60  0001 C CNN
F 3 "" H 3150 2450 60  0001 C CNN
	1    3150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1000 3100 1000
Connection ~ 3150 1100
Wire Wire Line
	2300 3500 2250 3500
Wire Wire Line
	2250 3500 2250 3700
Wire Wire Line
	2250 3700 2050 3700
Wire Wire Line
	2300 3800 2050 3800
Wire Wire Line
	2300 4100 2250 4100
Wire Wire Line
	2250 4100 2250 3900
Wire Wire Line
	2250 3900 2050 3900
Wire Wire Line
	2050 3500 2150 3500
Wire Wire Line
	2150 3500 2150 3300
Wire Wire Line
	2150 3300 3850 3300
Wire Wire Line
	3850 3300 3850 3500
Wire Wire Line
	3850 3500 4300 3500
Wire Wire Line
	3700 3600 3800 3600
Wire Wire Line
	3800 3600 3800 3700
Wire Wire Line
	3800 3700 4150 3700
Wire Wire Line
	3700 4200 3850 4200
Wire Wire Line
	3850 4200 3850 3900
Wire Wire Line
	3850 3900 4250 3900
Wire Wire Line
	3700 4500 3800 4500
Wire Wire Line
	3800 4500 3800 5050
Wire Wire Line
	3800 4600 3700 4600
Wire Wire Line
	3800 4700 3700 4700
Connection ~ 3800 4600
Wire Wire Line
	3800 5050 2000 5050
Connection ~ 3800 4700
Wire Wire Line
	6650 4750 3800 4750
Connection ~ 3800 4750
Wire Wire Line
	2200 800  2200 2750
Wire Wire Line
	2200 2750 2700 2750
Wire Wire Line
	3700 2900 3700 2750
Wire Wire Line
	3700 2750 3600 2750
$Comp
L +5V0 #PWR37
U 1 1 5A533BD8
P 3750 2550
F 0 "#PWR37" H 3750 2400 50  0001 C CNN
F 1 "+5V0" V 3750 2750 50  0000 C CNN
F 2 "" H 3750 2550 50  0000 C CNN
F 3 "" H 3750 2550 50  0000 C CNN
	1    3750 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2550 3750 2550
Wire Wire Line
	3700 3500 3800 3500
Wire Wire Line
	3800 3500 3800 2650
Wire Wire Line
	3800 2650 3600 2650
Wire Wire Line
	2250 4700 2250 4600
Wire Wire Line
	2250 4600 2300 4600
$Comp
L GND #PWR36
U 1 1 5A533EF8
P 3700 2900
F 0 "#PWR36" H 3700 2650 50  0001 C CNN
F 1 "GND" H 3700 2750 50  0000 C CNN
F 2 "" H 3700 2900 50  0000 C CNN
F 3 "" H 3700 2900 50  0000 C CNN
	1    3700 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR32
U 1 1 5A533F60
P 2250 4700
F 0 "#PWR32" H 2250 4450 50  0001 C CNN
F 1 "GND" H 2250 4550 50  0000 C CNN
F 2 "" H 2250 4700 50  0000 C CNN
F 3 "" H 2250 4700 50  0000 C CNN
	1    2250 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR38
U 1 1 5A533FC8
P 3950 4850
F 0 "#PWR38" H 3950 4600 50  0001 C CNN
F 1 "GND" H 3950 4700 50  0000 C CNN
F 2 "" H 3950 4850 50  0000 C CNN
F 3 "" H 3950 4850 50  0000 C CNN
	1    3950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4850 3950 4400
Wire Wire Line
	3950 4400 3700 4400
Wire Wire Line
	3700 3800 4200 3800
Wire Wire Line
	4200 3800 4200 3250
Wire Wire Line
	4200 3250 2500 3250
Wire Wire Line
	2500 3250 2500 2550
Wire Wire Line
	2500 2550 2700 2550
Wire Wire Line
	2700 2650 2550 2650
Wire Wire Line
	2550 2650 2550 3200
Wire Wire Line
	2550 3200 4400 3200
Wire Wire Line
	4400 3200 4400 4050
Wire Wire Line
	4400 4050 4150 4050
Wire Wire Line
	4150 4050 4150 4100
Wire Wire Line
	4150 4100 3700 4100
Wire Wire Line
	2050 4000 2100 4000
Wire Wire Line
	2100 4000 2100 1000
Wire Wire Line
	2150 1200 2150 3200
Wire Wire Line
	2150 3200 2200 3200
Wire Wire Line
	2200 3200 2200 4100
Wire Wire Line
	2200 4100 2050 4100
$EndSCHEMATC