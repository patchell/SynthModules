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
LIBS:500-1091-DualQJack-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Dual Phone Jack Board"
Date "2016-01-25"
Rev "A"
Comp "Jim Patchell"
Comment1 "patchell@cox.net"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Phone_Jack_wSw-PCB J2
U 1 1 56A6EDAF
P 3750 3650
F 0 "J2" H 3750 3650 60  0000 C CNN
F 1 "Phone_Jack_wSw-PCB" H 3750 4150 60  0000 C CNN
F 2 "Footprints:PHONE-SC112A" H 3750 3750 60  0000 C CNN
F 3 "" H 3750 3650 60  0000 C CNN
	1    3750 3650
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J1
U 1 1 56A6EE87
P 3700 4550
F 0 "J1" H 3300 4850 60  0000 C CNN
F 1 "Phone_Jack_wSw-PCB" H 3700 4550 60  0000 C CNN
F 2 "Footprints:PHONE-SC112A" H 3750 4650 60  0000 C CNN
F 3 "" H 3700 4550 60  0000 C CNN
	1    3700 4550
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 56A6EEC3
P 3900 3900
F 0 "D2" H 3900 4000 50  0000 C CNN
F 1 "LED" H 3900 3800 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 3900 3900 50  0000 C CNN
F 3 "" H 3900 3900 50  0000 C CNN
	1    3900 3900
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 56A6EF5F
P 3800 4800
F 0 "D1" H 3800 4900 50  0000 C CNN
F 1 "LED" H 3800 4700 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 3800 4800 50  0000 C CNN
F 3 "" H 3800 4800 50  0000 C CNN
	1    3800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3250 6550 3250
Wire Wire Line
	6550 3250 6550 3600
Wire Wire Line
	4150 3350 5550 3350
Wire Wire Line
	5550 3350 5550 3600
Wire Wire Line
	5550 3600 5800 3600
Wire Wire Line
	4150 3450 5400 3450
Wire Wire Line
	5400 3450 5400 3700
Wire Wire Line
	5400 3700 5800 3700
Wire Wire Line
	4100 4150 6600 4150
Wire Wire Line
	6600 4150 6600 4000
Wire Wire Line
	4100 4250 4700 4250
Wire Wire Line
	4700 4250 4700 4000
Wire Wire Line
	4700 4000 5800 4000
Wire Wire Line
	4100 4350 6700 4350
Wire Wire Line
	6700 4350 6700 3900
Wire Wire Line
	4000 4800 6800 4800
Wire Wire Line
	6800 4800 6800 3800
Wire Wire Line
	6900 3700 6900 4950
Wire Wire Line
	6900 4950 3450 4950
Wire Wire Line
	3450 4950 3450 4800
Wire Wire Line
	3450 4800 3600 4800
Wire Wire Line
	5800 3800 4200 3800
Wire Wire Line
	4200 3800 4200 3750
Wire Wire Line
	4200 3750 3600 3750
Wire Wire Line
	3600 3750 3600 3900
Wire Wire Line
	3600 3900 3700 3900
Wire Wire Line
	4100 3900 5800 3900
$Comp
L conn_500-1091_DualJack P1
U 1 1 56AA505A
P 6000 3900
F 0 "P1" H 6000 3600 60  0000 C CNN
F 1 "conn_500-1091_DualJack" H 5975 3675 60  0000 C CNN
F 2 "Footprints:IDC5x2_Vert" H 6000 3900 60  0000 C CNN
F 3 "" H 6000 3900 60  0000 C CNN
	1    6000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3600 6400 3600
Wire Wire Line
	6900 3700 6400 3700
Wire Wire Line
	6800 3800 6400 3800
Wire Wire Line
	6700 3900 6400 3900
Wire Wire Line
	6600 4000 6400 4000
$EndSCHEMATC
