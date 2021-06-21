EESchema Schematic File Version 2
LIBS:SynthMod
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:500-1017-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 4
Title "SPI DAC and SH Strobe"
Date "2016-02-26"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MAX551_DIP U?
U 1 1 56D08179
P 5900 3850
F 0 "U?" H 5660 4303 60  0000 R CNN
F 1 "MAX551" H 5660 4197 60  0000 R CNN
F 2 "" H 5900 3850 60  0000 C CNN
F 3 "" H 5900 3850 60  0000 C CNN
	1    5900 3850
	1    0    0    -1  
$EndComp
$Comp
L 74HC74-SynthMod U?
U 1 1 56D098B5
P 3950 1700
F 0 "U?" H 4150 1350 50  0000 C CNN
F 1 "74HC74" H 4200 1450 50  0000 C CNN
F 2 "" H 3950 1700 50  0000 C CNN
F 3 "" H 3950 1700 50  0000 C CNN
	1    3950 1700
	1    0    0    -1  
$EndComp
$Comp
L 74HC74-SynthMod U?
U 1 1 56D099A7
P 5350 1700
F 0 "U?" H 5500 1300 50  0000 C CNN
F 1 "74HC74" H 5550 1400 50  0000 C CNN
F 2 "" H 5350 1700 50  0000 C CNN
F 3 "" H 5350 1700 50  0000 C CNN
	1    5350 1700
	1    0    0    -1  
$EndComp
$Comp
L 74HC74-SynthMod U?
U 3 1 56D099FF
P 10050 900
F 0 "U?" H 10050 1266 50  0000 C CNN
F 1 "74HC74" H 10050 1174 50  0000 C CNN
F 2 "" H 10050 900 50  0000 C CNN
F 3 "" H 10050 900 50  0000 C CNN
	3    10050 900 
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U?
U 1 2 56D0A296
P 4200 3850
F 0 "U?" H 4325 4599 60  0000 C CNN
F 1 "TL052" H 4325 4493 60  0000 C CNN
F 2 "" H 4200 3850 60  0000 C CNN
F 3 "" H 4200 3850 60  0000 C CNN
	1    4200 3850
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U?
U 2 2 56D0A301
P 7150 3800
F 0 "U?" H 7275 4549 60  0000 C CNN
F 1 "TL052" H 7275 4443 60  0000 C CNN
F 2 "" H 7150 3800 60  0000 C CNN
F 3 "" H 7150 3800 60  0000 C CNN
	2    7150 3800
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U?
U 3 1 56D0A3D9
P 6850 5200
F 0 "U?" H 6975 5849 60  0000 C CNN
F 1 "TL052" H 6975 5743 60  0000 C CNN
F 2 "" H 6850 5200 60  0000 C CNN
F 3 "" H 6850 5200 60  0000 C CNN
	3    6850 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56D0D70E
P 6800 3700
F 0 "#PWR?" H 6800 3450 50  0001 C CNN
F 1 "GND" H 6808 3526 50  0000 C CNN
F 2 "" H 6800 3700 50  0000 C CNN
F 3 "" H 6800 3700 50  0000 C CNN
	1    6800 3700
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 56D0D7C4
P 4200 3000
F 0 "R?" H 4300 3217 60  0000 C CNN
F 1 "RESISTOR" H 4300 3111 60  0000 C CNN
F 2 "" H 4200 3000 60  0000 C CNN
F 3 "" H 4200 3000 60  0000 C CNN
	1    4200 3000
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 56D0D87A
P 2950 3400
F 0 "R?" H 3050 3617 60  0000 C CNN
F 1 "RESISTOR" H 3050 3511 60  0000 C CNN
F 2 "" H 2950 3400 60  0000 C CNN
F 3 "" H 2950 3400 60  0000 C CNN
	1    2950 3400
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 56D0D8CB
P 2950 3700
F 0 "R?" H 3050 3917 60  0000 C CNN
F 1 "RESISTOR" H 3050 3811 60  0000 C CNN
F 2 "" H 2950 3700 60  0000 C CNN
F 3 "" H 2950 3700 60  0000 C CNN
	1    2950 3700
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 56D0D8FF
P 3750 4000
F 0 "R?" V 3797 4058 60  0000 L CNN
F 1 "RESISTOR" V 3903 4058 60  0000 L CNN
F 2 "" H 3750 4000 60  0000 C CNN
F 3 "" H 3750 4000 60  0000 C CNN
	1    3750 4000
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R?
U 1 1 56D0D963
P 3400 4000
F 0 "R?" V 3447 4058 60  0000 L CNN
F 1 "RESISTOR" V 3553 4058 60  0000 L CNN
F 2 "" H 3400 4000 60  0000 C CNN
F 3 "" H 3400 4000 60  0000 C CNN
	1    3400 4000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56D0DA55
P 3750 4300
F 0 "#PWR?" H 3750 4050 50  0001 C CNN
F 1 "GND" H 3758 4126 50  0000 C CNN
F 2 "" H 3750 4300 50  0000 C CNN
F 3 "" H 3750 4300 50  0000 C CNN
	1    3750 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56D0DA84
P 3400 4300
F 0 "#PWR?" H 3400 4050 50  0001 C CNN
F 1 "GND" H 3408 4126 50  0000 C CNN
F 2 "" H 3400 4300 50  0000 C CNN
F 3 "" H 3400 4300 50  0000 C CNN
	1    3400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3350 6950 3350
Wire Wire Line
	6300 2950 6300 2750
Wire Wire Line
	6300 2750 7800 2750
Wire Wire Line
	7800 2750 7800 3400
Wire Wire Line
	7600 3400 9550 3400
Wire Wire Line
	4250 1600 5050 1600
Wire Wire Line
	5650 1800 6100 1800
Wire Wire Line
	5850 1800 5850 2400
Wire Wire Line
	3950 2400 3950 2000
Wire Wire Line
	3550 1600 3650 1600
Wire Wire Line
	3550 1150 3550 1600
Wire Wire Line
	3550 1300 3950 1300
Wire Wire Line
	3950 1300 3950 1400
Wire Wire Line
	6800 3450 6800 3700
Wire Wire Line
	6800 3450 6950 3450
Wire Wire Line
	6700 3550 6800 3550
Connection ~ 6800 3550
Wire Wire Line
	3750 3900 3750 3500
Wire Wire Line
	3750 3500 4000 3500
Wire Wire Line
	4000 3400 3250 3400
Wire Wire Line
	3400 3900 3400 3400
Connection ~ 3400 3400
Wire Wire Line
	3250 3700 3750 3700
Connection ~ 3750 3700
Wire Wire Line
	3750 3400 3750 3000
Wire Wire Line
	3750 3000 4100 3000
Connection ~ 3750 3400
Wire Wire Line
	4650 3450 5700 3450
Wire Wire Line
	4500 3000 4850 3000
Wire Wire Line
	4850 3000 4850 3450
Connection ~ 4850 3450
Wire Wire Line
	2850 3700 2650 3700
Wire Wire Line
	2650 3700 2650 3400
Wire Wire Line
	5350 2000 5350 2050
Wire Wire Line
	5350 2050 4950 2050
Wire Wire Line
	4950 2050 4950 1100
Wire Wire Line
	4950 1200 5350 1200
Wire Wire Line
	5350 1200 5350 1400
Wire Wire Line
	6200 3950 6200 4050
Wire Wire Line
	6200 4050 4400 4050
Wire Wire Line
	4400 4050 4400 4650
Wire Wire Line
	4400 4650 2450 4650
Wire Wire Line
	2450 4650 2450 1700
Wire Wire Line
	850  1700 3650 1700
Text HLabel 850  1700 0    60   Input ~ 0
LdDac
Connection ~ 2450 1700
Connection ~ 2650 3400
$Comp
L Cap_Bypass C?
U 1 1 56D0E93B
P 6550 5050
F 0 "C?" H 6665 5096 50  0000 L CNN
F 1 ".1Uf" H 6665 5004 50  0000 L CNN
F 2 "" H 6588 4900 50  0000 C CNN
F 3 "" H 6550 5050 50  0000 C CNN
	1    6550 5050
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C?
U 1 1 56D0EBAB
P 9600 1150
F 0 "C?" H 9715 1196 50  0000 L CNN
F 1 ".1uF" H 9715 1104 50  0000 L CNN
F 2 "" H 9638 1000 50  0000 C CNN
F 3 "" H 9600 1150 50  0000 C CNN
	1    9600 1150
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C?
U 1 1 56D0EF67
P 7400 5050
F 0 "C?" H 7515 5096 50  0000 L CNN
F 1 ".1Uf" H 7515 5004 50  0000 L CNN
F 2 "" H 7438 4900 50  0000 C CNN
F 3 "" H 7400 5050 50  0000 C CNN
	1    7400 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56D0F2F5
P 6550 5200
F 0 "#PWR?" H 6550 4950 50  0001 C CNN
F 1 "GND" H 6558 5026 50  0000 C CNN
F 2 "" H 6550 5200 50  0000 C CNN
F 3 "" H 6550 5200 50  0000 C CNN
	1    6550 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56D0F477
P 7400 5200
F 0 "#PWR?" H 7400 4950 50  0001 C CNN
F 1 "GND" H 7408 5026 50  0000 C CNN
F 2 "" H 7400 5200 50  0000 C CNN
F 3 "" H 7400 5200 50  0000 C CNN
	1    7400 5200
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR?
U 1 1 56D0F592
P 6450 4800
F 0 "#PWR?" H 6450 4650 50  0001 C CNN
F 1 "+15V0" V 6471 4927 50  0000 L CNN
F 2 "" H 6450 4800 50  0000 C CNN
F 3 "" H 6450 4800 50  0000 C CNN
	1    6450 4800
	0    -1   -1   0   
$EndComp
$Comp
L -15V0 #PWR?
U 1 1 56D0F5F1
P 7500 4800
F 0 "#PWR?" H 7500 4650 50  0001 C CNN
F 1 "-15V0" V 7520 4928 50  0000 L CNN
F 2 "" H 7500 4800 50  0000 C CNN
F 3 "" H 7500 4800 50  0000 C CNN
	1    7500 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 4800 7300 4800
Wire Wire Line
	7400 4900 7400 4800
Connection ~ 7400 4800
Wire Wire Line
	6450 4800 6650 4800
Wire Wire Line
	6550 4900 6550 4800
Connection ~ 6550 4800
Text HLabel 1100 2150 0    60   Input ~ 0
GateClock
Wire Wire Line
	1100 2150 4650 2150
Wire Wire Line
	4650 2150 4650 1700
Wire Wire Line
	4650 1700 5050 1700
$Comp
L VCC #PWR?
U 1 1 56D0E2D8
P 9450 900
F 0 "#PWR?" H 9450 750 50  0001 C CNN
F 1 "VCC" V 9471 1027 50  0000 L CNN
F 2 "" H 9450 900 50  0000 C CNN
F 3 "" H 9450 900 50  0000 C CNN
	1    9450 900 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56D0E346
P 9600 1450
F 0 "#PWR?" H 9600 1200 50  0001 C CNN
F 1 "GND" H 9608 1276 50  0000 C CNN
F 2 "" H 9600 1450 50  0000 C CNN
F 3 "" H 9600 1450 50  0000 C CNN
	1    9600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1450 9600 1300
Wire Wire Line
	9450 900  9750 900 
Wire Wire Line
	9600 1000 9600 900 
Connection ~ 9600 900 
Wire Wire Line
	9600 1350 10450 1350
Wire Wire Line
	10450 1350 10450 900 
Wire Wire Line
	10450 900  10350 900 
Connection ~ 9600 1350
$Comp
L VCC #PWR?
U 1 1 56D0E758
P 4950 1100
F 0 "#PWR?" H 4950 950 50  0001 C CNN
F 1 "VCC" H 4970 1274 50  0000 C CNN
F 2 "" H 4950 1100 50  0000 C CNN
F 3 "" H 4950 1100 50  0000 C CNN
	1    4950 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 56D0E78A
P 3550 1150
F 0 "#PWR?" H 3550 1000 50  0001 C CNN
F 1 "VCC" H 3570 1324 50  0000 C CNN
F 2 "" H 3550 1150 50  0000 C CNN
F 3 "" H 3550 1150 50  0000 C CNN
	1    3550 1150
	1    0    0    -1  
$EndComp
Connection ~ 4950 1200
Connection ~ 3550 1300
Text HLabel 1100 5050 0    60   Input ~ 0
SPIclk
Text HLabel 1100 4900 0    60   Input ~ 0
SPIdat
Wire Wire Line
	1100 5050 6100 5050
Wire Wire Line
	6100 5050 6100 3950
Wire Wire Line
	1100 4900 6000 4900
Wire Wire Line
	6000 4900 6000 3950
$Comp
L VCC #PWR?
U 1 1 56D0F505
P 6100 2950
F 0 "#PWR?" H 6100 2800 50  0001 C CNN
F 1 "VCC" H 6120 3124 50  0000 C CNN
F 2 "" H 6100 2950 50  0000 C CNN
F 3 "" H 6100 2950 50  0000 C CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
Text HLabel 9550 3400 2    60   Output ~ 0
DacOut
Text HLabel 9900 2400 2    60   Output ~ 0
SHgate
Connection ~ 7800 3400
$Comp
L 74HC74-SynthMod U?
U 1 1 5B41D5B0
P 6600 1650
F 0 "U?" H 6750 1250 50  0000 C CNN
F 1 "74HC74" H 6800 1350 50  0000 C CNN
F 2 "" H 6600 1650 50  0000 C CNN
F 3 "" H 6600 1650 50  0000 C CNN
	1    6600 1650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B41D648
P 6200 1100
F 0 "#PWR?" H 6200 950 50  0001 C CNN
F 1 "VCC" H 6220 1274 50  0000 C CNN
F 2 "" H 6200 1100 50  0000 C CNN
F 3 "" H 6200 1100 50  0000 C CNN
	1    6200 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1100 6200 1550
Wire Wire Line
	6200 1550 6300 1550
Wire Wire Line
	6200 1200 6600 1200
Wire Wire Line
	6600 1200 6600 1350
Connection ~ 6200 1200
Wire Wire Line
	6300 1650 6100 1650
Wire Wire Line
	6100 1650 6100 1800
Connection ~ 5850 1800
Text HLabel 7400 1750 2    60   Output ~ 0
IRQ
Wire Wire Line
	7400 1750 6900 1750
Wire Wire Line
	5850 2400 3950 2400
Text HLabel 1050 2700 0    60   Input ~ 0
CLR_IRQ
Wire Wire Line
	1050 2700 6600 2700
Wire Wire Line
	6600 2700 6600 1950
Wire Wire Line
	5650 1600 5950 1600
Wire Wire Line
	5950 1600 5950 2400
Wire Wire Line
	5950 2400 9900 2400
$Comp
L LM4041-ADJ U?
U 1 1 5B6A8257
P 2700 7000
F 0 "U?" H 2900 7300 60  0000 C CNN
F 1 "LM4041-ADJ" H 3150 7200 60  0000 C CNN
F 2 "" H 2700 7000 60  0000 C CNN
F 3 "" H 2700 7000 60  0000 C CNN
	1    2700 7000
	1    0    0    -1  
$EndComp
$Comp
L POT-3006 R?
U 1 1 5B6A82AA
P 2000 6650
F 0 "R?" H 2000 6350 60  0000 C CNN
F 1 "POT-3006" H 2150 6450 60  0000 C CNN
F 2 "" H 2000 6650 60  0000 C CNN
F 3 "" H 2000 6650 60  0000 C CNN
	1    2000 6650
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B6A832D
P 2000 7200
F 0 "R?" H 2000 6900 60  0000 C CNN
F 1 "RESISTOR" H 2150 7000 60  0000 C CNN
F 2 "" H 2000 7200 60  0000 C CNN
F 3 "" H 2000 7200 60  0000 C CNN
	1    2000 7200
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B6A83B7
P 2000 6150
F 0 "R?" H 2000 5850 60  0000 C CNN
F 1 "RESISTOR" H 2150 5950 60  0000 C CNN
F 2 "" H 2000 6150 60  0000 C CNN
F 3 "" H 2000 6150 60  0000 C CNN
	1    2000 6150
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B6A8437
P 2000 5600
F 0 "R?" H 2000 5300 60  0000 C CNN
F 1 "RESISTOR" H 2150 5400 60  0000 C CNN
F 2 "" H 2000 5600 60  0000 C CNN
F 3 "" H 2000 5600 60  0000 C CNN
	1    2000 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 6000 2700 6000
Wire Wire Line
	2700 6000 2700 6500
Wire Wire Line
	2000 5900 2000 6050
Connection ~ 2000 6000
Wire Wire Line
	2000 6550 2000 6450
Wire Wire Line
	2250 6750 2450 6750
Wire Wire Line
	2000 7100 2000 6950
Wire Wire Line
	2700 7000 2700 7600
Wire Wire Line
	2700 7600 2000 7600
Wire Wire Line
	2000 7600 2000 7500
Wire Wire Line
	2300 7750 2300 7600
Connection ~ 2300 7600
$Comp
L GND #PWR?
U 1 1 5B6A8844
P 2300 7750
F 0 "#PWR?" H 2300 7500 50  0001 C CNN
F 1 "GND" H 2300 7600 50  0000 C CNN
F 2 "" H 2300 7750 50  0001 C CNN
F 3 "" H 2300 7750 50  0001 C CNN
	1    2300 7750
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR?
U 1 1 5B6A8882
P 2000 5500
F 0 "#PWR?" H 2000 5350 50  0001 C CNN
F 1 "+15V0" V 2000 5750 50  0000 C CNN
F 2 "" H 2000 5500 50  0000 C CNN
F 3 "" H 2000 5500 50  0000 C CNN
	1    2000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3400 2300 3400
Wire Wire Line
	2300 3400 2300 6000
Connection ~ 2300 6000
$EndSCHEMATC
