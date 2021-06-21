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
LIBS:500-1111-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "DOWNBEAT / CLOCK DIVIDER"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA1284P-DIP40 U?
U 1 1 5B4D479B
P 3600 1600
F 0 "U?" H 3600 1600 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 3950 1500 60  0000 C CNN
F 2 "" H 3600 1600 60  0000 C CNN
F 3 "" H 3600 1600 60  0000 C CNN
	1    3600 1600
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA1284P-DIP40 U?
U 2 1 5B4D481D
P 3550 2950
F 0 "U?" H 3550 2950 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 3900 2850 60  0000 C CNN
F 2 "" H 3550 2950 60  0000 C CNN
F 3 "" H 3550 2950 60  0000 C CNN
	2    3550 2950
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA1284P-DIP40 U?
U 3 1 5B4D4874
P 3500 4200
F 0 "U?" H 3500 4200 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 3850 4100 60  0000 C CNN
F 2 "" H 3500 4200 60  0000 C CNN
F 3 "" H 3500 4200 60  0000 C CNN
	3    3500 4200
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA1284P-DIP40 U?
U 4 1 5B4D48E9
P 6100 5700
F 0 "U?" H 6100 5700 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 6450 5600 60  0000 C CNN
F 2 "" H 6100 5700 60  0000 C CNN
F 3 "" H 6100 5700 60  0000 C CNN
	4    6100 5700
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA1284P-DIP40 U?
U 5 1 5B4D4972
P 1550 7200
F 0 "U?" H 1550 7200 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 1900 7100 60  0000 C CNN
F 2 "" H 1550 7200 60  0000 C CNN
F 3 "" H 1550 7200 60  0000 C CNN
	5    1550 7200
	1    0    0    -1  
$EndComp
$Comp
L 500-1113-AQB P?
U 1 1 5B4D4AB4
P 8550 5600
F 0 "P?" H 8550 5200 60  0000 C CNN
F 1 "500-1113-AQB" H 8550 5300 60  0000 C CNN
F 2 "" H 8550 5450 60  0001 C CNN
F 3 "" H 8550 5450 60  0001 C CNN
	1    8550 5600
	1    0    0    -1  
$EndComp
$Comp
L 500-1113-AQBKNOB P?
U 1 1 5B4D4AFF
P 7000 1150
F 0 "P?" H 7000 500 60  0000 C CNN
F 1 "500-1113-AQBKNOB" H 7000 600 60  0000 C CNN
F 2 "" H 7000 250 60  0001 C CNN
F 3 "" H 7000 250 60  0001 C CNN
	1    7000 1150
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J?
U 1 1 5B4D4B32
P 1350 1450
F 0 "J?" H 1350 1450 60  0000 C CNN
F 1 "MIDI CLOCK IN" H 1350 1550 60  0000 C CNN
F 2 "" H 1350 1450 60  0000 C CNN
F 3 "" H 1350 1450 60  0000 C CNN
	1    1350 1450
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J?
U 1 1 5B4D4BCE
P 1350 2550
F 0 "J?" H 1350 2550 60  0000 C CNN
F 1 "START/STOP" H 1350 2650 60  0000 C CNN
F 2 "" H 1350 2550 60  0000 C CNN
F 3 "" H 1350 2550 60  0000 C CNN
	1    1350 2550
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J?
U 1 1 5B4D4C5C
P 1350 3850
F 0 "J?" H 1350 3850 60  0000 C CNN
F 1 "RESET" H 1350 3950 60  0000 C CNN
F 2 "" H 1350 3850 60  0000 C CNN
F 3 "" H 1350 3850 60  0000 C CNN
	1    1350 3850
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J?
U 1 1 5B4D4CB5
P 9800 1500
F 0 "J?" H 9800 1500 60  0000 C CNN
F 1 "CLOCK OUT" H 9800 1600 60  0000 C CNN
F 2 "" H 9800 1500 60  0000 C CNN
F 3 "" H 9800 1500 60  0000 C CNN
	1    9800 1500
	-1   0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J?
U 1 1 5B4D4D45
P 9750 2800
F 0 "J?" H 9750 2800 60  0000 C CNN
F 1 "DOWN BEAT" H 9750 2900 60  0000 C CNN
F 2 "" H 9750 2800 60  0000 C CNN
F 3 "" H 9750 2800 60  0000 C CNN
	1    9750 2800
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4E3FD1
P 2000 1050
F 0 "R?" H 2100 950 60  0000 C CNN
F 1 "1K" H 2100 1150 60  0000 C CNN
F 2 "" H 2000 1050 60  0000 C CNN
F 3 "" H 2000 1050 60  0000 C CNN
	1    2000 1050
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E400E
P 2400 1250
F 0 "D?" H 2400 1350 50  0000 C CNN
F 1 "1n914" H 2400 1150 50  0000 C CNN
F 2 "" H 2400 1250 50  0001 C CNN
F 3 "" H 2400 1250 50  0001 C CNN
	1    2400 1250
	0    1    1    0   
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E40A1
P 2500 800
F 0 "D?" H 2500 900 50  0000 C CNN
F 1 "1n914" H 2500 700 50  0000 C CNN
F 2 "" H 2500 800 50  0001 C CNN
F 3 "" H 2500 800 50  0001 C CNN
	1    2500 800 
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B4E41AC
P 2500 650
F 0 "#PWR?" H 2500 500 50  0001 C CNN
F 1 "VCC" H 2500 800 50  0000 C CNN
F 2 "" H 2500 650 50  0001 C CNN
F 3 "" H 2500 650 50  0001 C CNN
	1    2500 650 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E41DE
P 2400 1400
F 0 "#PWR?" H 2400 1150 50  0001 C CNN
F 1 "GND" H 2400 1250 50  0000 C CNN
F 2 "" H 2400 1400 50  0001 C CNN
F 3 "" H 2400 1400 50  0001 C CNN
	1    2400 1400
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4E44BA
P 2000 2150
F 0 "R?" H 2100 2050 60  0000 C CNN
F 1 "1K" H 2100 2250 60  0000 C CNN
F 2 "" H 2000 2150 60  0000 C CNN
F 3 "" H 2000 2150 60  0000 C CNN
	1    2000 2150
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E44C0
P 2400 2350
F 0 "D?" H 2400 2450 50  0000 C CNN
F 1 "1n914" H 2400 2250 50  0000 C CNN
F 2 "" H 2400 2350 50  0001 C CNN
F 3 "" H 2400 2350 50  0001 C CNN
	1    2400 2350
	0    1    1    0   
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E44C6
P 2500 1900
F 0 "D?" H 2500 2000 50  0000 C CNN
F 1 "1n914" H 2500 1800 50  0000 C CNN
F 2 "" H 2500 1900 50  0001 C CNN
F 3 "" H 2500 1900 50  0001 C CNN
	1    2500 1900
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B4E44D2
P 2500 1750
F 0 "#PWR?" H 2500 1600 50  0001 C CNN
F 1 "VCC" H 2500 1900 50  0000 C CNN
F 2 "" H 2500 1750 50  0001 C CNN
F 3 "" H 2500 1750 50  0001 C CNN
	1    2500 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E44D8
P 2400 2500
F 0 "#PWR?" H 2400 2250 50  0001 C CNN
F 1 "GND" H 2400 2350 50  0000 C CNN
F 2 "" H 2400 2500 50  0001 C CNN
F 3 "" H 2400 2500 50  0001 C CNN
	1    2400 2500
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4E4602
P 2000 3450
F 0 "R?" H 2100 3350 60  0000 C CNN
F 1 "1K" H 2100 3550 60  0000 C CNN
F 2 "" H 2000 3450 60  0000 C CNN
F 3 "" H 2000 3450 60  0000 C CNN
	1    2000 3450
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E4608
P 2400 3650
F 0 "D?" H 2400 3750 50  0000 C CNN
F 1 "1n914" H 2400 3550 50  0000 C CNN
F 2 "" H 2400 3650 50  0001 C CNN
F 3 "" H 2400 3650 50  0001 C CNN
	1    2400 3650
	0    1    1    0   
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E460E
P 2500 3200
F 0 "D?" H 2500 3300 50  0000 C CNN
F 1 "1n914" H 2500 3100 50  0000 C CNN
F 2 "" H 2500 3200 50  0001 C CNN
F 3 "" H 2500 3200 50  0001 C CNN
	1    2500 3200
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B4E461A
P 2500 3050
F 0 "#PWR?" H 2500 2900 50  0001 C CNN
F 1 "VCC" H 2500 3200 50  0000 C CNN
F 2 "" H 2500 3050 50  0001 C CNN
F 3 "" H 2500 3050 50  0001 C CNN
	1    2500 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E4620
P 2400 3800
F 0 "#PWR?" H 2400 3550 50  0001 C CNN
F 1 "GND" H 2400 3650 50  0000 C CNN
F 2 "" H 2400 3800 50  0001 C CNN
F 3 "" H 2400 3800 50  0001 C CNN
	1    2400 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E467F
P 1800 1300
F 0 "#PWR?" H 1800 1050 50  0001 C CNN
F 1 "GND" H 1800 1150 50  0000 C CNN
F 2 "" H 1800 1300 50  0001 C CNN
F 3 "" H 1800 1300 50  0001 C CNN
	1    1800 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E46F3
P 1800 2400
F 0 "#PWR?" H 1800 2150 50  0001 C CNN
F 1 "GND" H 1800 2250 50  0000 C CNN
F 2 "" H 1800 2400 50  0001 C CNN
F 3 "" H 1800 2400 50  0001 C CNN
	1    1800 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E4769
P 1800 3700
F 0 "#PWR?" H 1800 3450 50  0001 C CNN
F 1 "GND" H 1800 3550 50  0000 C CNN
F 2 "" H 1800 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0001 C CNN
	1    1800 3700
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4E4C84
P 9000 1100
F 0 "R?" H 9100 1000 60  0000 C CNN
F 1 "1K" H 9100 1200 60  0000 C CNN
F 2 "" H 9000 1100 60  0000 C CNN
F 3 "" H 9000 1100 60  0000 C CNN
	1    9000 1100
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E4C8A
P 8700 1300
F 0 "D?" H 8700 1400 50  0000 C CNN
F 1 "1n914" H 8700 1200 50  0000 C CNN
F 2 "" H 8700 1300 50  0001 C CNN
F 3 "" H 8700 1300 50  0001 C CNN
	1    8700 1300
	0    1    1    0   
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E4C90
P 8800 850
F 0 "D?" H 8800 950 50  0000 C CNN
F 1 "1n914" H 8800 750 50  0000 C CNN
F 2 "" H 8800 850 50  0001 C CNN
F 3 "" H 8800 850 50  0001 C CNN
	1    8800 850 
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B4E4C9B
P 8800 700
F 0 "#PWR?" H 8800 550 50  0001 C CNN
F 1 "VCC" H 8800 850 50  0000 C CNN
F 2 "" H 8800 700 50  0001 C CNN
F 3 "" H 8800 700 50  0001 C CNN
	1    8800 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E4CA1
P 8700 1450
F 0 "#PWR?" H 8700 1200 50  0001 C CNN
F 1 "GND" H 8700 1300 50  0000 C CNN
F 2 "" H 8700 1450 50  0001 C CNN
F 3 "" H 8700 1450 50  0001 C CNN
	1    8700 1450
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4E4EF6
P 8950 2400
F 0 "R?" H 9050 2300 60  0000 C CNN
F 1 "1K" H 9050 2500 60  0000 C CNN
F 2 "" H 8950 2400 60  0000 C CNN
F 3 "" H 8950 2400 60  0000 C CNN
	1    8950 2400
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E4EFC
P 8650 2600
F 0 "D?" H 8650 2700 50  0000 C CNN
F 1 "1n914" H 8650 2500 50  0000 C CNN
F 2 "" H 8650 2600 50  0001 C CNN
F 3 "" H 8650 2600 50  0001 C CNN
	1    8650 2600
	0    1    1    0   
$EndComp
$Comp
L D_ALT D?
U 1 1 5B4E4F02
P 8750 2150
F 0 "D?" H 8750 2250 50  0000 C CNN
F 1 "1n914" H 8750 2050 50  0000 C CNN
F 2 "" H 8750 2150 50  0001 C CNN
F 3 "" H 8750 2150 50  0001 C CNN
	1    8750 2150
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B4E4F0D
P 8750 2000
F 0 "#PWR?" H 8750 1850 50  0001 C CNN
F 1 "VCC" H 8750 2150 50  0000 C CNN
F 2 "" H 8750 2000 50  0001 C CNN
F 3 "" H 8750 2000 50  0001 C CNN
	1    8750 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E4F13
P 8650 2750
F 0 "#PWR?" H 8650 2500 50  0001 C CNN
F 1 "GND" H 8650 2600 50  0000 C CNN
F 2 "" H 8650 2750 50  0001 C CNN
F 3 "" H 8650 2750 50  0001 C CNN
	1    8650 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E507B
P 9350 1350
F 0 "#PWR?" H 9350 1100 50  0001 C CNN
F 1 "GND" H 9350 1200 50  0000 C CNN
F 2 "" H 9350 1350 50  0001 C CNN
F 3 "" H 9350 1350 50  0001 C CNN
	1    9350 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4E5134
P 9300 2650
F 0 "#PWR?" H 9300 2400 50  0001 C CNN
F 1 "GND" H 9300 2500 50  0000 C CNN
F 2 "" H 9300 2650 50  0001 C CNN
F 3 "" H 9300 2650 50  0001 C CNN
	1    9300 2650
	1    0    0    -1  
$EndComp
Text Label 7450 5050 0    60   ~ 0
CLOCKIN
Text Label 2600 1050 0    60   ~ 0
CLOCKIN
Text Label 2600 2150 0    60   ~ 0
START_STOP
Text Label 7450 5150 0    60   ~ 0
START_STOP
Text Label 2600 3450 0    60   ~ 0
RESET
Text Label 4850 2300 0    60   ~ 0
RESET
$Comp
L AVR-JTAG J?
U 1 1 5B4E9779
P 5650 3750
F 0 "J?" H 5600 3350 60  0000 C CNN
F 1 "AVR-JTAG" H 5650 3450 60  0000 C CNN
F 2 "" H 5450 3700 60  0001 C CNN
F 3 "" H 5450 3700 60  0001 C CNN
	1    5650 3750
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EA5CE
P 6300 700
F 0 "R?" H 6500 800 60  0000 C CNN
F 1 "470" H 6350 800 60  0000 C CNN
F 2 "" H 6300 700 60  0000 C CNN
F 3 "" H 6300 700 60  0000 C CNN
	1    6300 700 
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EA81C
P 6300 800
F 0 "R?" H 6500 900 60  0000 C CNN
F 1 "470" H 6350 900 60  0000 C CNN
F 2 "" H 6300 800 60  0000 C CNN
F 3 "" H 6300 800 60  0000 C CNN
	1    6300 800 
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EA886
P 6300 900
F 0 "R?" H 6500 1000 60  0000 C CNN
F 1 "470" H 6350 1000 60  0000 C CNN
F 2 "" H 6300 900 60  0000 C CNN
F 3 "" H 6300 900 60  0000 C CNN
	1    6300 900 
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EA8F3
P 6300 1000
F 0 "R?" H 6500 1100 60  0000 C CNN
F 1 "470" H 6350 1100 60  0000 C CNN
F 2 "" H 6300 1000 60  0000 C CNN
F 3 "" H 6300 1000 60  0000 C CNN
	1    6300 1000
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EA963
P 6300 1100
F 0 "R?" H 6500 1200 60  0000 C CNN
F 1 "470" H 6350 1200 60  0000 C CNN
F 2 "" H 6300 1100 60  0000 C CNN
F 3 "" H 6300 1100 60  0000 C CNN
	1    6300 1100
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EA9D6
P 6300 1200
F 0 "R?" H 6500 1300 60  0000 C CNN
F 1 "470" H 6350 1300 60  0000 C CNN
F 2 "" H 6300 1200 60  0000 C CNN
F 3 "" H 6300 1200 60  0000 C CNN
	1    6300 1200
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EAA4C
P 6300 1300
F 0 "R?" H 6500 1400 60  0000 C CNN
F 1 "470" H 6350 1400 60  0000 C CNN
F 2 "" H 6300 1300 60  0000 C CNN
F 3 "" H 6300 1300 60  0000 C CNN
	1    6300 1300
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EAAC5
P 6300 1400
F 0 "R?" H 6500 1500 60  0000 C CNN
F 1 "470" H 6350 1500 60  0000 C CNN
F 2 "" H 6300 1400 60  0000 C CNN
F 3 "" H 6300 1400 60  0000 C CNN
	1    6300 1400
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EAB41
P 7500 700
F 0 "R?" H 7700 800 60  0000 C CNN
F 1 "470" H 7550 800 60  0000 C CNN
F 2 "" H 7500 700 60  0000 C CNN
F 3 "" H 7500 700 60  0000 C CNN
	1    7500 700 
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EABF2
P 7500 800
F 0 "R?" H 7700 900 60  0000 C CNN
F 1 "470" H 7550 900 60  0000 C CNN
F 2 "" H 7500 800 60  0000 C CNN
F 3 "" H 7500 800 60  0000 C CNN
	1    7500 800 
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EAC74
P 7500 900
F 0 "R?" H 7700 1000 60  0000 C CNN
F 1 "470" H 7550 1000 60  0000 C CNN
F 2 "" H 7500 900 60  0000 C CNN
F 3 "" H 7500 900 60  0000 C CNN
	1    7500 900 
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EACF9
P 7500 1000
F 0 "R?" H 7700 1100 60  0000 C CNN
F 1 "470" H 7550 1100 60  0000 C CNN
F 2 "" H 7500 1000 60  0000 C CNN
F 3 "" H 7500 1000 60  0000 C CNN
	1    7500 1000
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EAD81
P 7500 1100
F 0 "R?" H 7700 1200 60  0000 C CNN
F 1 "470" H 7550 1200 60  0000 C CNN
F 2 "" H 7500 1100 60  0000 C CNN
F 3 "" H 7500 1100 60  0000 C CNN
	1    7500 1100
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EAE0C
P 7500 1200
F 0 "R?" H 7700 1300 60  0000 C CNN
F 1 "470" H 7550 1300 60  0000 C CNN
F 2 "" H 7500 1200 60  0000 C CNN
F 3 "" H 7500 1200 60  0000 C CNN
	1    7500 1200
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EAE9A
P 7500 1300
F 0 "R?" H 7700 1400 60  0000 C CNN
F 1 "470" H 7550 1400 60  0000 C CNN
F 2 "" H 7500 1300 60  0000 C CNN
F 3 "" H 7500 1300 60  0000 C CNN
	1    7500 1300
	1    0    0    -1  
$EndComp
$Comp
L NPN Q?
U 1 1 5B4EB737
P 6600 2200
F 0 "Q?" H 6900 2250 50  0000 R CNN
F 1 "NPN" H 6950 2150 50  0000 R CNN
F 2 "" H 6800 2300 50  0000 C CNN
F 3 "" H 6600 2200 50  0000 C CNN
	1    6600 2200
	1    0    0    -1  
$EndComp
$Comp
L NPN Q?
U 1 1 5B4EB7E4
P 7650 2200
F 0 "Q?" H 7950 2250 50  0000 R CNN
F 1 "NPN" H 8000 2150 50  0000 R CNN
F 2 "" H 7850 2300 50  0000 C CNN
F 3 "" H 7650 2200 50  0000 C CNN
	1    7650 2200
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EB891
P 6100 2200
F 0 "R?" H 6300 2300 60  0000 C CNN
F 1 "10K" H 6150 2300 60  0000 C CNN
F 2 "" H 6100 2200 60  0000 C CNN
F 3 "" H 6100 2200 60  0000 C CNN
	1    6100 2200
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R?
U 1 1 5B4EB9AC
P 7150 2200
F 0 "R?" H 7350 2300 60  0000 C CNN
F 1 "10K" H 7200 2300 60  0000 C CNN
F 2 "" H 7150 2200 60  0000 C CNN
F 3 "" H 7150 2200 60  0000 C CNN
	1    7150 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4EBC5E
P 7750 2400
F 0 "#PWR?" H 7750 2150 50  0001 C CNN
F 1 "GND" H 7750 2250 50  0000 C CNN
F 2 "" H 7750 2400 50  0001 C CNN
F 3 "" H 7750 2400 50  0001 C CNN
	1    7750 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4EBD54
P 6700 2400
F 0 "#PWR?" H 6700 2150 50  0001 C CNN
F 1 "GND" H 6700 2250 50  0000 C CNN
F 2 "" H 6700 2400 50  0001 C CNN
F 3 "" H 6700 2400 50  0001 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4FC1B8
P 6300 4100
F 0 "#PWR?" H 6300 3850 50  0001 C CNN
F 1 "GND" H 6300 3950 50  0000 C CNN
F 2 "" H 6300 4100 50  0001 C CNN
F 3 "" H 6300 4100 50  0001 C CNN
	1    6300 4100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B4FC223
P 6050 3650
F 0 "#PWR?" H 6050 3500 50  0001 C CNN
F 1 "VCC" H 6050 3800 50  0000 C CNN
F 2 "" H 6050 3650 50  0001 C CNN
F 3 "" H 6050 3650 50  0001 C CNN
	1    6050 3650
	0    1    1    0   
$EndComp
Text Label 6350 3750 0    60   ~ 0
RST
Text Label 950  6600 0    60   ~ 0
RST
$Comp
L Crystal Y?
U 1 1 5B4FCFDF
P 1000 7000
F 0 "Y?" H 1000 7150 50  0000 C CNN
F 1 "Crystal" H 1000 6850 50  0000 C CNN
F 2 "" H 1000 7000 50  0001 C CNN
F 3 "" H 1000 7000 50  0001 C CNN
	1    1000 7000
	1    0    0    -1  
$EndComp
$Comp
L Cap C?
U 1 1 5B4FD1DE
P 1200 7300
F 0 "C?" H 1225 7400 50  0000 L CNN
F 1 "27pF" H 1225 7200 50  0000 L CNN
F 2 "" H 1238 7150 50  0000 C CNN
F 3 "" H 1200 7300 50  0000 C CNN
	1    1200 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4FD3CD
P 1200 7450
F 0 "#PWR?" H 1200 7200 50  0001 C CNN
F 1 "GND" H 1200 7300 50  0000 C CNN
F 2 "" H 1200 7450 50  0001 C CNN
F 3 "" H 1200 7450 50  0001 C CNN
	1    1200 7450
	1    0    0    -1  
$EndComp
$Comp
L Cap C?
U 1 1 5B4FD54A
P 800 7300
F 0 "C?" H 825 7400 50  0000 L CNN
F 1 "27pF" H 825 7200 50  0000 L CNN
F 2 "" H 838 7150 50  0000 C CNN
F 3 "" H 800 7300 50  0000 C CNN
	1    800  7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4FD550
P 800 7450
F 0 "#PWR?" H 800 7200 50  0001 C CNN
F 1 "GND" H 800 7300 50  0000 C CNN
F 2 "" H 800 7450 50  0001 C CNN
F 3 "" H 800 7450 50  0001 C CNN
	1    800  7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4FD5BA
P 2500 7050
F 0 "#PWR?" H 2500 6800 50  0001 C CNN
F 1 "GND" H 2500 6900 50  0000 C CNN
F 2 "" H 2500 7050 50  0001 C CNN
F 3 "" H 2500 7050 50  0001 C CNN
	1    2500 7050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B4FDB49
P 2500 6500
F 0 "#PWR?" H 2500 6350 50  0001 C CNN
F 1 "VCC" H 2500 6650 50  0000 C CNN
F 2 "" H 2500 6500 50  0001 C CNN
F 3 "" H 2500 6500 50  0001 C CNN
	1    2500 6500
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C?
U 1 1 5B4FDD14
P 2750 6750
F 0 "C?" H 2775 6850 50  0000 L CNN
F 1 "0.1uF" H 2775 6650 50  0000 L CNN
F 2 "" H 2788 6600 50  0000 C CNN
F 3 "" H 2750 6750 50  0000 C CNN
	1    2750 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1050 2600 1050
Wire Wire Line
	2500 950  2500 1050
Connection ~ 2500 1050
Wire Wire Line
	2400 1100 2400 1050
Connection ~ 2400 1050
Wire Wire Line
	1750 1050 1900 1050
Wire Wire Line
	2300 2150 2600 2150
Wire Wire Line
	2500 2050 2500 2150
Connection ~ 2500 2150
Wire Wire Line
	2400 2200 2400 2150
Connection ~ 2400 2150
Wire Wire Line
	1750 2150 1900 2150
Wire Wire Line
	2300 3450 2600 3450
Wire Wire Line
	2500 3350 2500 3450
Connection ~ 2500 3450
Wire Wire Line
	2400 3500 2400 3450
Connection ~ 2400 3450
Wire Wire Line
	1750 3450 1900 3450
Wire Wire Line
	1750 1250 1800 1250
Wire Wire Line
	1800 1250 1800 1300
Wire Wire Line
	1750 2350 1800 2350
Wire Wire Line
	1800 2350 1800 2400
Wire Wire Line
	1800 3700 1800 3650
Wire Wire Line
	1800 3650 1750 3650
Wire Wire Line
	8250 1100 8900 1100
Wire Wire Line
	8800 1000 8800 1100
Connection ~ 8800 1100
Wire Wire Line
	8700 1150 8700 1100
Connection ~ 8700 1100
Wire Wire Line
	9300 1100 9400 1100
Wire Wire Line
	8300 2400 8850 2400
Wire Wire Line
	8750 2300 8750 2400
Connection ~ 8750 2400
Wire Wire Line
	8650 2450 8650 2400
Connection ~ 8650 2400
Wire Wire Line
	9250 2400 9350 2400
Wire Wire Line
	9350 1350 9350 1300
Wire Wire Line
	9350 1300 9400 1300
Wire Wire Line
	9300 2650 9300 2600
Wire Wire Line
	9300 2600 9350 2600
Wire Wire Line
	7600 5050 7400 5050
Wire Wire Line
	7600 5150 7400 5150
Wire Wire Line
	4850 2300 5100 2300
Wire Wire Line
	6600 700  6650 700 
Wire Wire Line
	6600 800  6650 800 
Wire Wire Line
	6600 900  6650 900 
Wire Wire Line
	6600 1000 6650 1000
Wire Wire Line
	6600 1100 6650 1100
Wire Wire Line
	6600 1200 6650 1200
Wire Wire Line
	6600 1300 6650 1300
Wire Wire Line
	6600 1400 6650 1400
Wire Wire Line
	7350 700  7400 700 
Wire Wire Line
	7350 800  7400 800 
Wire Wire Line
	7350 900  7400 900 
Wire Wire Line
	7350 1000 7400 1000
Wire Wire Line
	7350 1100 7400 1100
Wire Wire Line
	7350 1200 7400 1200
Wire Wire Line
	7350 1300 7400 1300
Wire Wire Line
	6650 1500 6550 1500
Wire Wire Line
	6550 1500 6550 1850
Wire Wire Line
	6550 1850 6700 1850
Wire Wire Line
	6700 1850 6700 2000
Wire Wire Line
	7350 1500 7750 1500
Wire Wire Line
	7750 1500 7750 2000
Wire Wire Line
	4700 700  6200 700 
Wire Wire Line
	4700 800  6200 800 
Wire Wire Line
	4700 900  6200 900 
Wire Wire Line
	4700 1000 6200 1000
Wire Wire Line
	4700 1100 6200 1100
Wire Wire Line
	4700 1200 6200 1200
Wire Wire Line
	4700 1300 6200 1300
Wire Wire Line
	4700 1400 6200 1400
Wire Wire Line
	4850 2100 5850 2100
Wire Wire Line
	7800 1300 7900 1300
Wire Wire Line
	7900 1300 7900 2700
Wire Wire Line
	7900 2700 5850 2700
Wire Wire Line
	5850 2700 5850 2100
Wire Wire Line
	7800 1200 7950 1200
Wire Wire Line
	7950 1200 7950 2750
Wire Wire Line
	7950 2750 5800 2750
Wire Wire Line
	5800 2750 5800 2200
Wire Wire Line
	5800 2200 4850 2200
Wire Wire Line
	4850 2400 5750 2400
Wire Wire Line
	5750 2400 5750 2800
Wire Wire Line
	5750 2800 8000 2800
Wire Wire Line
	8000 2800 8000 1100
Wire Wire Line
	8000 1100 7800 1100
Wire Wire Line
	7800 1000 8050 1000
Wire Wire Line
	8050 1000 8050 2850
Wire Wire Line
	8050 2850 5700 2850
Wire Wire Line
	5700 2850 5700 2500
Wire Wire Line
	5700 2500 4850 2500
Wire Wire Line
	4850 2600 5650 2600
Wire Wire Line
	5650 2600 5650 2900
Wire Wire Line
	5650 2900 8100 2900
Wire Wire Line
	8100 2900 8100 900 
Wire Wire Line
	8100 900  7800 900 
Wire Wire Line
	7800 800  8150 800 
Wire Wire Line
	8150 800  8150 2950
Wire Wire Line
	8150 2950 5600 2950
Wire Wire Line
	5600 2950 5600 2700
Wire Wire Line
	5600 2700 4850 2700
Wire Wire Line
	4850 2800 5550 2800
Wire Wire Line
	5550 2800 5550 3000
Wire Wire Line
	5550 3000 8200 3000
Wire Wire Line
	8200 3000 8200 700 
Wire Wire Line
	8200 700  7800 700 
Wire Wire Line
	4600 3550 5250 3550
Wire Wire Line
	4600 3750 4800 3750
Wire Wire Line
	4800 3750 4800 3650
Wire Wire Line
	4800 3650 5250 3650
Wire Wire Line
	5250 3750 5150 3750
Wire Wire Line
	5150 3750 5150 3700
Wire Wire Line
	5150 3700 4700 3700
Wire Wire Line
	4700 3700 4700 3650
Wire Wire Line
	4700 3650 4600 3650
Wire Wire Line
	5000 3950 5250 3950
Wire Wire Line
	5000 3950 5000 3850
Wire Wire Line
	5000 3850 4600 3850
Wire Wire Line
	6050 3550 6300 3550
Wire Wire Line
	6300 3550 6300 4100
Wire Wire Line
	6050 3950 6300 3950
Connection ~ 6300 3950
Wire Wire Line
	6050 3750 6500 3750
Wire Wire Line
	950  6600 1250 6600
Wire Wire Line
	1250 6800 800  6800
Wire Wire Line
	800  6800 800  7150
Wire Wire Line
	800  7000 850  7000
Wire Wire Line
	1150 7000 1250 7000
Connection ~ 800  7000
Wire Wire Line
	1200 7150 1200 7000
Connection ~ 1200 7000
Wire Wire Line
	2500 7000 2400 7000
Wire Wire Line
	2500 6900 2500 7050
Wire Wire Line
	2400 6900 2500 6900
Connection ~ 2500 7000
Wire Wire Line
	2500 6500 2500 6800
Wire Wire Line
	2500 6800 2400 6800
Wire Wire Line
	2400 6700 2500 6700
Connection ~ 2500 6700
Wire Wire Line
	2400 6600 2500 6600
Connection ~ 2500 6600
Wire Wire Line
	2750 6900 2750 6950
Wire Wire Line
	2750 6950 2500 6950
Connection ~ 2500 6950
Wire Wire Line
	2750 6600 2750 6550
Wire Wire Line
	2750 6550 2500 6550
Connection ~ 2500 6550
Wire Wire Line
	8850 5400 8950 5400
Wire Wire Line
	8950 5400 8950 4950
Wire Wire Line
	8950 4950 7400 4950
Wire Wire Line
	8850 5500 9000 5500
Wire Wire Line
	9000 5500 9000 4850
Wire Wire Line
	9000 4850 7400 4850
Wire Wire Line
	8850 5600 9200 5600
Wire Wire Line
	9200 5600 9200 6150
Wire Wire Line
	9200 6150 7650 6150
Wire Wire Line
	7650 6150 7650 5550
Wire Wire Line
	7650 5550 7400 5550
Wire Wire Line
	8850 5700 9150 5700
Wire Wire Line
	9150 5700 9150 6100
Wire Wire Line
	9150 6100 7700 6100
Wire Wire Line
	7700 6100 7700 5450
Wire Wire Line
	7700 5450 7400 5450
Wire Wire Line
	7400 5350 7750 5350
Wire Wire Line
	7750 5350 7750 6050
Wire Wire Line
	7750 6050 9100 6050
Wire Wire Line
	8850 5800 9100 5800
Wire Wire Line
	9100 5800 9100 6050
Wire Wire Line
	6000 2200 5950 2200
Wire Wire Line
	5950 2200 5950 3300
Wire Wire Line
	5950 3300 5200 3300
Wire Wire Line
	5200 3300 5200 3350
Wire Wire Line
	5200 3350 4600 3350
Wire Wire Line
	4600 3450 5250 3450
Wire Wire Line
	5250 3450 5250 3400
Wire Wire Line
	5250 3400 7000 3400
Wire Wire Line
	7000 3400 7000 2200
Wire Wire Line
	7000 2200 7050 2200
Wire Wire Line
	8250 1100 8250 4400
Wire Wire Line
	8250 4400 4900 4400
Wire Wire Line
	4900 4400 4900 3950
Wire Wire Line
	4900 3950 4600 3950
Wire Wire Line
	4600 4050 4800 4050
Wire Wire Line
	4800 4050 4800 4450
Wire Wire Line
	4800 4450 8300 4450
Wire Wire Line
	8300 4450 8300 2400
Wire Wire Line
	8000 5800 8200 5800
Wire Wire Line
	8200 5700 8150 5700
Wire Wire Line
	8150 5700 8150 5800
Connection ~ 8150 5800
Wire Wire Line
	8050 5900 8050 5400
Wire Wire Line
	8050 5400 8200 5400
Wire Wire Line
	8200 5500 8050 5500
Connection ~ 8050 5500
Wire Wire Line
	8200 5600 8050 5600
Connection ~ 8050 5600
$Comp
L VCC #PWR?
U 1 1 5B4FFEFF
P 8000 5800
F 0 "#PWR?" H 8000 5650 50  0001 C CNN
F 1 "VCC" H 8000 5950 50  0000 C CNN
F 2 "" H 8000 5800 50  0001 C CNN
F 3 "" H 8000 5800 50  0001 C CNN
	1    8000 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4FFF79
P 8050 5900
F 0 "#PWR?" H 8050 5650 50  0001 C CNN
F 1 "GND" H 7950 5800 50  0000 C CNN
F 2 "" H 8050 5900 50  0001 C CNN
F 3 "" H 8050 5900 50  0001 C CNN
	1    8050 5900
	1    0    0    -1  
$EndComp
$EndSCHEMATC