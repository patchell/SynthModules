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
Title "Tripple Banana Jack/Led"
Date "2017-01-23"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PAD-KF2-256 P1
U 1 1 588680C9
P 2150 2400
F 0 "P1" H 2150 2200 60  0000 C CNN
F 1 "PAD-KF2-256" H 2175 2125 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 2150 2100 60  0001 C CNN
F 3 "" H 2150 2100 60  0000 C CNN
	1    2150 2400
	1    0    0    -1  
$EndComp
$Comp
L PAD-KF2-256 P2
U 1 1 588681FB
P 2950 2400
F 0 "P2" H 2950 2200 60  0000 C CNN
F 1 "PAD-KF2-256" H 2975 2125 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 2950 2100 60  0001 C CNN
F 3 "" H 2950 2100 60  0000 C CNN
	1    2950 2400
	1    0    0    -1  
$EndComp
$Comp
L PAD-KF2-256 P3
U 1 1 58868231
P 3800 2400
F 0 "P3" H 3800 2200 60  0000 C CNN
F 1 "PAD-KF2-256" H 3825 2125 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 3800 2100 60  0001 C CNN
F 3 "" H 3800 2100 60  0000 C CNN
	1    3800 2400
	1    0    0    -1  
$EndComp
$Comp
L LED_ALT D1
U 1 1 5886826D
P 2500 2300
F 0 "D1" H 2500 2400 50  0000 C CNN
F 1 "LED_ALT" H 2500 2200 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 2500 2300 50  0001 C CNN
F 3 "" H 2500 2300 50  0000 C CNN
	1    2500 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT D2
U 1 1 588683A0
P 3300 2250
F 0 "D2" H 3300 2350 50  0000 C CNN
F 1 "LED_ALT" H 3300 2150 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3300 2250 50  0001 C CNN
F 3 "" H 3300 2250 50  0000 C CNN
	1    3300 2250
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT D3
U 1 1 588683E1
P 4200 2250
F 0 "D3" H 4200 2350 50  0000 C CNN
F 1 "LED_ALT" H 4200 2150 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4200 2250 50  0001 C CNN
F 3 "" H 4200 2250 50  0000 C CNN
	1    4200 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 900  2150 900 
Wire Wire Line
	2150 900  2150 2400
Wire Wire Line
	2500 2450 2500 2550
Wire Wire Line
	2500 2550 2300 2550
Wire Wire Line
	2300 2550 2300 1000
Wire Wire Line
	2300 1000 2750 1000
Wire Wire Line
	2500 2150 2500 550 
Wire Wire Line
	2500 550  3650 550 
Wire Wire Line
	3650 550  3650 900 
Wire Wire Line
	3650 900  3450 900 
Wire Wire Line
	2950 2400 2950 2000
Wire Wire Line
	2950 2000 2400 2000
Wire Wire Line
	2400 2000 2400 1100
Wire Wire Line
	2400 1100 2750 1100
Wire Wire Line
	3300 2400 3300 2500
Wire Wire Line
	3300 2500 3100 2500
Wire Wire Line
	3100 2500 3100 1900
Wire Wire Line
	3100 1900 2600 1900
Wire Wire Line
	2600 1900 2600 1200
Wire Wire Line
	2600 1200 2750 1200
Wire Wire Line
	3300 2100 3300 1900
Wire Wire Line
	3300 1900 3950 1900
Wire Wire Line
	3950 1900 3950 1000
Wire Wire Line
	3950 1000 3450 1000
Wire Wire Line
	2750 1300 2650 1300
Wire Wire Line
	2650 1300 2650 1800
Wire Wire Line
	2650 1800 3800 1800
Wire Wire Line
	3800 1800 3800 2400
Wire Wire Line
	4200 2400 4200 2500
Wire Wire Line
	4200 2500 4000 2500
Wire Wire Line
	4000 2500 4000 1200
Wire Wire Line
	4000 1200 3450 1200
Wire Wire Line
	3450 1300 4200 1300
Wire Wire Line
	4200 1300 4200 2100
$Comp
L 500-1116-Tripple-Banana P4
U 1 1 58868A6F
P 3100 1100
F 0 "P4" H 3100 650 60  0000 C CNN
F 1 "500-1116-Tripple-Banana" H 3600 750 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 3100 850 60  0001 C CNN
F 3 "" H 3100 850 60  0001 C CNN
	1    3100 1100
	1    0    0    -1  
$EndComp
$EndSCHEMATC