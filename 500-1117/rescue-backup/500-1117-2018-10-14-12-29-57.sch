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
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Dual9mm pot Board 1 inch spacing"
Date "2017-01-31"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L POT-ALPHA9mm-LedShaft R1
U 1 1 5890D104
P 4150 1850
F 0 "R1" H 4150 1550 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 4300 1650 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 4150 1850 60  0001 C CNN
F 3 "" H 4150 1850 60  0000 C CNN
	1    4150 1850
	0    1    1    0   
$EndComp
$Comp
L POT-ALPHA9mm-LedShaft R1
U 2 1 5890D161
P 4200 3000
F 0 "R1" H 4200 2700 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 4350 2800 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 4200 3000 60  0001 C CNN
F 3 "" H 4200 3000 60  0000 C CNN
	2    4200 3000
	0    1    1    0   
$EndComp
$Comp
L POT-ALPHA9mm-LedShaft R2
U 1 1 5890D212
P 8200 1750
F 0 "R2" H 8200 1450 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 8350 1550 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 8200 1750 60  0001 C CNN
F 3 "" H 8200 1750 60  0000 C CNN
	1    8200 1750
	0    -1   1    0   
$EndComp
$Comp
L POT-ALPHA9mm-LedShaft R2
U 2 1 5890D218
P 8400 3100
F 0 "R2" H 8400 2800 60  0000 C CNN
F 1 "POT-ALPHA9mm-LedShaft" H 8550 2900 60  0000 C CNN
F 2 "FootPrints:Alpha9mmPotWithLED" H 8400 3100 60  0001 C CNN
F 3 "" H 8400 3100 60  0000 C CNN
	2    8400 3100
	0    1    1    0   
$EndComp
$Comp
L 500-1117 P1
U 1 1 5890D661
P 6800 2500
F 0 "P1" H 6800 2100 60  0000 C CNN
F 1 "500-1117" H 6800 2200 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 6650 2500 60  0001 C CNN
F 3 "" H 6650 2500 60  0001 C CNN
	1    6800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1950 7450 1950
Wire Wire Line
	7450 1950 7450 2300
Wire Wire Line
	7450 2300 7150 2300
Wire Wire Line
	6450 2300 6300 2300
Wire Wire Line
	6300 2300 6300 1550
Wire Wire Line
	6300 1550 4150 1550
Wire Wire Line
	4150 1550 4150 1750
Wire Wire Line
	4150 2150 4150 2300
Wire Wire Line
	4150 2300 6100 2300
Wire Wire Line
	6100 2300 6100 2400
Wire Wire Line
	6100 2400 6450 2400
Wire Wire Line
	5950 1850 5950 2500
Wire Wire Line
	5950 2500 6450 2500
Wire Wire Line
	7950 1850 5950 1850
Wire Wire Line
	7150 2400 7750 2400
Wire Wire Line
	7750 2400 7750 1550
Wire Wire Line
	7750 1550 8200 1550
Wire Wire Line
	8200 1550 8200 1650
Wire Wire Line
	8200 2050 8200 2500
Wire Wire Line
	8200 2500 7150 2500
Wire Wire Line
	4200 3200 4200 3350
Wire Wire Line
	4200 3350 4750 3350
Wire Wire Line
	4750 3350 4750 2600
Wire Wire Line
	4750 2600 6450 2600
Wire Wire Line
	4200 2900 4200 2800
Wire Wire Line
	4200 2800 6250 2800
Wire Wire Line
	6250 2800 6250 3050
Wire Wire Line
	6250 3050 7550 3050
Wire Wire Line
	7550 3050 7550 2600
Wire Wire Line
	7550 2600 7150 2600
Wire Wire Line
	8400 3000 8400 2700
Wire Wire Line
	8400 2700 7150 2700
Wire Wire Line
	6450 2700 6400 2700
Wire Wire Line
	6400 2700 6400 3450
Wire Wire Line
	6400 3450 8400 3450
Wire Wire Line
	8400 3450 8400 3300
$EndSCHEMATC
