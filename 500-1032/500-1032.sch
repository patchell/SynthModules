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
LIBS:500-1032-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Dual 1/4\" Jack/LED board"
Date "2017-01-31"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Phone_Jack_wSw-PCB J1
U 1 1 589164B7
P 4500 3200
F 0 "J1" H 4500 3200 60  0000 C CNN
F 1 "Phone_Jack_wSw-PCB" H 4500 3100 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 4500 3200 60  0001 C CNN
F 3 "" H 4500 3200 60  0000 C CNN
	1    4500 3200
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J2
U 1 1 58916561
P 7000 3200
F 0 "J2" H 7000 3200 60  0000 C CNN
F 1 "Phone_Jack_wSw-PCB" H 7000 3100 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 7000 3200 60  0001 C CNN
F 3 "" H 7000 3200 60  0000 C CNN
	1    7000 3200
	-1   0    0    -1  
$EndComp
$Comp
L LED_ALT D1
U 1 1 5891658F
P 5900 4350
F 0 "D1" H 5900 4450 50  0000 C CNN
F 1 "LED_ALT" H 5900 4250 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5900 4350 50  0001 C CNN
F 3 "" H 5900 4350 50  0000 C CNN
	1    5900 4350
	-1   0    0    -1  
$EndComp
$Comp
L LED_ALT D2
U 1 1 589166A2
P 5900 4000
F 0 "D2" H 5900 4100 50  0000 C CNN
F 1 "LED_ALT" H 5900 3900 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5900 4000 50  0001 C CNN
F 3 "" H 5900 4000 50  0000 C CNN
	1    5900 4000
	-1   0    0    -1  
$EndComp
$Comp
L 500-1032 P1
U 1 1 58916A6D
P 5850 3000
F 0 "P1" H 5850 2600 60  0000 C CNN
F 1 "500-1032" H 5850 2700 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 5700 3000 60  0001 C CNN
F 3 "" H 5700 3000 60  0001 C CNN
	1    5850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2800 6200 2800
Wire Wire Line
	6600 2900 6200 2900
Wire Wire Line
	6600 3000 6200 3000
Wire Wire Line
	4900 2800 5500 2800
Wire Wire Line
	4900 2900 5500 2900
Wire Wire Line
	4900 3000 5500 3000
Wire Wire Line
	5500 3200 5350 3200
Wire Wire Line
	5350 3200 5350 4000
Wire Wire Line
	5350 4000 5750 4000
Wire Wire Line
	6050 4000 6350 4000
Wire Wire Line
	6350 4000 6350 3200
Wire Wire Line
	6350 3200 6200 3200
Wire Wire Line
	6200 3100 6500 3100
Wire Wire Line
	6500 3100 6500 4350
Wire Wire Line
	6500 4350 6050 4350
Wire Wire Line
	5750 4350 5200 4350
Wire Wire Line
	5200 4350 5200 3100
Wire Wire Line
	5200 3100 5500 3100
$EndSCHEMATC
