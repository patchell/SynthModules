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
LIBS:500-1121-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Dual Banana Jack 1 inch spacing"
Date "2017-02-11"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PAD-KF2-256 P1
U 1 1 589FC117
P 1700 2850
F 0 "P1" H 1700 2650 60  0000 C CNN
F 1 "PAD-KF2-256" H 1725 2575 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 1700 2550 60  0001 C CNN
F 3 "" H 1700 2550 60  0000 C CNN
	1    1700 2850
	1    0    0    -1  
$EndComp
$Comp
L PAD-KF2-256 P3
U 1 1 589FC149
P 2950 2850
F 0 "P3" H 2950 2650 60  0000 C CNN
F 1 "PAD-KF2-256" H 2975 2575 60  0000 C CNN
F 2 "FootPrints:KF2-256-TerminalPad" H 2950 2550 60  0001 C CNN
F 3 "" H 2950 2550 60  0000 C CNN
	1    2950 2850
	1    0    0    -1  
$EndComp
$Comp
L LED_ALT D1
U 1 1 589FC171
P 2350 2900
F 0 "D1" H 2350 3000 50  0000 C CNN
F 1 "LED_ALT" H 2350 2800 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 2350 2900 50  0001 C CNN
F 3 "" H 2350 2900 50  0000 C CNN
	1    2350 2900
	1    0    0    -1  
$EndComp
$Comp
L 500-1120/1 P2
U 1 1 589FC5AE
P 2350 1950
F 0 "P2" H 2350 1550 60  0000 C CNN
F 1 "500-1121/2" H 2350 1650 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 2200 1950 60  0001 C CNN
F 3 "" H 2200 1950 60  0001 C CNN
	1    2350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2850 1700 1750
Wire Wire Line
	1700 1750 2000 1750
Wire Wire Line
	2950 2850 2950 1750
Wire Wire Line
	2950 1750 2700 1750
Wire Wire Line
	2700 1850 2850 1850
Wire Wire Line
	2850 1850 2850 2900
Wire Wire Line
	2850 2900 2500 2900
Wire Wire Line
	2200 2900 1850 2900
Wire Wire Line
	1850 2900 1850 1850
Wire Wire Line
	1850 1850 2000 1850
$EndSCHEMATC
