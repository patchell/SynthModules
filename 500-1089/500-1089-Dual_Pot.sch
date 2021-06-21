EESchema Schematic File Version 2
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
LIBS:SynthMod
LIBS:500-1089-Dual_Pot-cache
EELAYER 25 0
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
Wire Wire Line
	2300 1450 2300 1200
Wire Wire Line
	2300 1200 4600 1200
Wire Wire Line
	4600 1200 4600 1600
Wire Wire Line
	4600 1600 4500 1600
Wire Wire Line
	2300 1850 2300 1950
Wire Wire Line
	2300 1950 3050 1950
Wire Wire Line
	3050 1950 3050 1600
Wire Wire Line
	3050 1600 3800 1600
Wire Wire Line
	3800 1700 2750 1700
Wire Wire Line
	2750 1700 2750 1650
Wire Wire Line
	2750 1650 2550 1650
Wire Wire Line
	2300 2350 2300 2250
Wire Wire Line
	2300 2250 4750 2250
Wire Wire Line
	4750 2250 4750 1900
Wire Wire Line
	4750 1900 4500 1900
Wire Wire Line
	2300 2750 2300 2850
Wire Wire Line
	2300 2850 3650 2850
Wire Wire Line
	3650 2850 3650 1900
Wire Wire Line
	3650 1900 3800 1900
Wire Wire Line
	2550 2550 3400 2550
Wire Wire Line
	3400 2550 3400 2000
Wire Wire Line
	3400 2000 3800 2000
Wire Wire Line
	1800 1800 1800 2050
Wire Wire Line
	1800 2050 3200 2050
Wire Wire Line
	3200 2050 3200 1800
Wire Wire Line
	3200 1800 3800 1800
Wire Wire Line
	1800 1500 1800 1050
Wire Wire Line
	1800 1050 4750 1050
Wire Wire Line
	4750 1050 4750 1700
Wire Wire Line
	4750 1700 4500 1700
Wire Wire Line
	4500 1800 4650 1800
Wire Wire Line
	4650 1800 4650 2900
Wire Wire Line
	4650 2900 1700 2900
Wire Wire Line
	1700 2900 1700 2700
Wire Wire Line
	1700 2400 1700 2200
Wire Wire Line
	1700 2200 1450 2200
Wire Wire Line
	1450 2200 1450 3000
Wire Wire Line
	1450 3000 4550 3000
Wire Wire Line
	4550 3000 4550 2000
Wire Wire Line
	4550 2000 4500 2000
$Comp
L POT-ALPHA9mm-LedShaft R1
U 1 1 56A66475
P 2300 1550
F 0 "R1" H 2300 1450 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 2300 750 60  0000 C CNN
F 2 "Footprints:Alpha14mmPotWithLED" H 2300 1550 60  0001 C CNN
F 3 "" H 2300 1550 60  0000 C CNN
	1    2300 1550
	0    1    1    0   
$EndComp
$Comp
L POT-ALPHA9mm-LedShaft R1
U 2 1 56A66664
P 1800 1700
F 0 "R1" H 1800 1550 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 1850 1900 60  0000 C CNN
F 2 "Footprints:Alpha14mmPotWithLED" H 1800 1700 60  0001 C CNN
F 3 "" H 1800 1700 60  0000 C CNN
	2    1800 1700
	0    -1   -1   0   
$EndComp
$Comp
L POT-ALPHA9mm-LedShaft R2
U 1 1 56A666F8
P 2300 2450
F 0 "R2" H 2350 2350 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 2550 1400 60  0000 C CNN
F 2 "Footprints:Alpha14mmPotWithLED" H 2300 2450 60  0001 C CNN
F 3 "" H 2300 2450 60  0000 C CNN
	1    2300 2450
	0    1    1    0   
$EndComp
$Comp
L POT-ALPHA9mm-LedShaft R2
U 2 1 56A66748
P 1700 2600
F 0 "R2" H 1750 2450 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 1600 2950 60  0000 C CNN
F 2 "Footprints:Alpha14mmPotWithLED" H 1700 2600 60  0001 C CNN
F 3 "" H 1700 2600 60  0000 C CNN
	2    1700 2600
	0    -1   -1   0   
$EndComp
$Comp
L Conn_500-1089_DualPot P?
U 1 1 5749351F
P 4000 2100
F 0 "P1" H 4150 2953 60  0000 C CNN
F 1 "Conn_500-1089_DualPot" H 4150 2847 60  0000 C CNN
F 2 "Footprints:IDC5x2rear" H 4150 2741 60  0000 C CNN
F 3 "" H 4000 2100 60  0000 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
