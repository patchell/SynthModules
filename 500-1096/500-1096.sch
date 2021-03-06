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
L POT-ALPHA9mm-LedShaft R1
U 1 1 56E78EF7
P 3950 3850
F 0 "R1" V 3997 3792 60  0000 R CNN
F 1 "POT-ALPHA9mm-LedShaft" V 4103 3792 60  0000 R CNN
F 2 "Footprints:Alpha14mmPotWithLED" H 3950 3850 60  0001 C CNN
F 3 "" H 3950 3850 60  0000 C CNN
	1    3950 3850
	0    1    1    0   
$EndComp
$Comp
L POT-ALPHA9mm-LedShaft R1
U 2 1 56E78F3E
P 3950 4600
F 0 "R1" V 3947 4738 60  0000 L CNN
F 1 "POT-ALPHA9mm-LedShaft" V 4053 4738 60  0000 L CNN
F 2 "Footprints:Alpha14mmPotWithLED" H 3950 4600 60  0001 C CNN
F 3 "" H 3950 4600 60  0000 C CNN
	2    3950 4600
	0    1    1    0   
$EndComp
$Comp
L Alpha9mmPotRAtoVert P1
U 1 1 56E792C9
P 5450 4250
F 0 "P1" H 5969 4311 60  0000 L CNN
F 1 "Alpha9mmPotRAtoVert" H 5969 4205 60  0000 L CNN
F 2 "Footprints:conn-5pinx1-RA" H 5250 4150 60  0001 C CNN
F 3 "" H 5250 4150 60  0000 C CNN
	1    5450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3750 3950 3650
Wire Wire Line
	3950 3650 4850 3650
Wire Wire Line
	4850 3650 4850 4250
Wire Wire Line
	4200 3950 4750 3950
Wire Wire Line
	4750 3950 4750 4150
Wire Wire Line
	4750 4150 5250 4150
Wire Wire Line
	3950 4150 3950 4250
Wire Wire Line
	5250 4350 3950 4350
Wire Wire Line
	3950 4350 3950 4500
Wire Wire Line
	5250 4450 4800 4450
Wire Wire Line
	4800 4450 4800 4900
Wire Wire Line
	4800 4900 3950 4900
Wire Wire Line
	3950 4900 3950 4800
Wire Wire Line
	4850 4250 5250 4250
Wire Wire Line
	3950 4250 4500 4250
Wire Wire Line
	4500 4250 4500 4050
Wire Wire Line
	4500 4050 5250 4050
$EndSCHEMATC
