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
LIBS:500-1115-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L NPN Q26
U 1 1 5886B711
P 3050 1700
AR Path="/5886B504/5886B711" Ref="Q26"  Part="1" 
AR Path="/5886D11C/5886B711" Ref="Q30"  Part="1" 
F 0 "Q26" H 3350 1750 50  0000 R CNN
F 1 "2N3904" H 3550 1650 50  0000 R CNN
F 2 "FootPrints:TO92" H 3250 1800 50  0001 C CNN
F 3 "" H 3050 1700 50  0000 C CNN
	1    3050 1700
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R44
U 1 1 5886B85D
P 2350 1700
AR Path="/5886B504/5886B85D" Ref="R44"  Part="1" 
AR Path="/5886D11C/5886B85D" Ref="R52"  Part="1" 
F 0 "R44" H 2450 1900 60  0000 C CNN
F 1 "100K" H 2450 1800 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2350 1700 60  0001 C CNN
F 3 "" H 2350 1700 60  0000 C CNN
	1    2350 1700
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R48
U 1 1 5886B8DC
P 3450 1450
AR Path="/5886B504/5886B8DC" Ref="R48"  Part="1" 
AR Path="/5886D11C/5886B8DC" Ref="R56"  Part="1" 
F 0 "R48" H 3600 1650 60  0000 C CNN
F 1 "10k" H 3600 1550 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3450 1450 60  0001 C CNN
F 3 "" H 3450 1450 60  0000 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1700 2850 1700
Wire Wire Line
	3150 1500 3150 1450
Wire Wire Line
	3150 1450 3350 1450
$Comp
L GND #PWR028
U 1 1 5886BA03
P 3150 1900
AR Path="/5886B504/5886BA03" Ref="#PWR028"  Part="1" 
AR Path="/5886D11C/5886BA03" Ref="#PWR57"  Part="1" 
F 0 "#PWR028" H 3150 1650 50  0001 C CNN
F 1 "GND" H 3150 1750 50  0000 C CNN
F 2 "" H 3150 1900 50  0000 C CNN
F 3 "" H 3150 1900 50  0000 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
$Comp
L NPN Q25
U 1 1 5886BAF9
P 3000 2450
AR Path="/5886B504/5886BAF9" Ref="Q25"  Part="1" 
AR Path="/5886D11C/5886BAF9" Ref="Q29"  Part="1" 
F 0 "Q25" H 3300 2500 50  0000 R CNN
F 1 "2N3904" H 3500 2400 50  0000 R CNN
F 2 "FootPrints:TO92" H 3200 2550 50  0001 C CNN
F 3 "" H 3000 2450 50  0000 C CNN
	1    3000 2450
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R43
U 1 1 5886BAFF
P 2300 2450
AR Path="/5886B504/5886BAFF" Ref="R43"  Part="1" 
AR Path="/5886D11C/5886BAFF" Ref="R51"  Part="1" 
F 0 "R43" H 2400 2650 60  0000 C CNN
F 1 "100K" H 2400 2550 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2300 2450 60  0001 C CNN
F 3 "" H 2300 2450 60  0000 C CNN
	1    2300 2450
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R47
U 1 1 5886BB05
P 3400 2200
AR Path="/5886B504/5886BB05" Ref="R47"  Part="1" 
AR Path="/5886D11C/5886BB05" Ref="R55"  Part="1" 
F 0 "R47" H 3550 2400 60  0000 C CNN
F 1 "10k" H 3550 2300 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3400 2200 60  0001 C CNN
F 3 "" H 3400 2200 60  0000 C CNN
	1    3400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2450 2800 2450
Wire Wire Line
	3100 2250 3100 2200
Wire Wire Line
	3100 2200 3300 2200
$Comp
L GND #PWR029
U 1 1 5886BB0E
P 3100 2650
AR Path="/5886B504/5886BB0E" Ref="#PWR029"  Part="1" 
AR Path="/5886D11C/5886BB0E" Ref="#PWR56"  Part="1" 
F 0 "#PWR029" H 3100 2400 50  0001 C CNN
F 1 "GND" H 3100 2500 50  0000 C CNN
F 2 "" H 3100 2650 50  0000 C CNN
F 3 "" H 3100 2650 50  0000 C CNN
	1    3100 2650
	1    0    0    -1  
$EndComp
$Comp
L NPN Q24
U 1 1 5886BC6A
P 2950 3150
AR Path="/5886B504/5886BC6A" Ref="Q24"  Part="1" 
AR Path="/5886D11C/5886BC6A" Ref="Q28"  Part="1" 
F 0 "Q24" H 3250 3200 50  0000 R CNN
F 1 "2N3904" H 3450 3100 50  0000 R CNN
F 2 "FootPrints:TO92" H 3150 3250 50  0001 C CNN
F 3 "" H 2950 3150 50  0000 C CNN
	1    2950 3150
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R42
U 1 1 5886BC70
P 2250 3150
AR Path="/5886B504/5886BC70" Ref="R42"  Part="1" 
AR Path="/5886D11C/5886BC70" Ref="R50"  Part="1" 
F 0 "R42" H 2350 3350 60  0000 C CNN
F 1 "100K" H 2350 3250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2250 3150 60  0001 C CNN
F 3 "" H 2250 3150 60  0000 C CNN
	1    2250 3150
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R46
U 1 1 5886BC76
P 3350 2900
AR Path="/5886B504/5886BC76" Ref="R46"  Part="1" 
AR Path="/5886D11C/5886BC76" Ref="R54"  Part="1" 
F 0 "R46" H 3500 3100 60  0000 C CNN
F 1 "10k" H 3500 3000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3350 2900 60  0001 C CNN
F 3 "" H 3350 2900 60  0000 C CNN
	1    3350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3150 2750 3150
Wire Wire Line
	3050 2950 3050 2900
Wire Wire Line
	3050 2900 3250 2900
$Comp
L GND #PWR030
U 1 1 5886BC7F
P 3050 3350
AR Path="/5886B504/5886BC7F" Ref="#PWR030"  Part="1" 
AR Path="/5886D11C/5886BC7F" Ref="#PWR55"  Part="1" 
F 0 "#PWR030" H 3050 3100 50  0001 C CNN
F 1 "GND" H 3050 3200 50  0000 C CNN
F 2 "" H 3050 3350 50  0000 C CNN
F 3 "" H 3050 3350 50  0000 C CNN
	1    3050 3350
	1    0    0    -1  
$EndComp
$Comp
L NPN Q23
U 1 1 5886BC85
P 2900 3900
AR Path="/5886B504/5886BC85" Ref="Q23"  Part="1" 
AR Path="/5886D11C/5886BC85" Ref="Q27"  Part="1" 
F 0 "Q23" H 3200 3950 50  0000 R CNN
F 1 "2N3904" H 3400 3850 50  0000 R CNN
F 2 "FootPrints:TO92" H 3100 4000 50  0001 C CNN
F 3 "" H 2900 3900 50  0000 C CNN
	1    2900 3900
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R41
U 1 1 5886BC8B
P 2200 3900
AR Path="/5886B504/5886BC8B" Ref="R41"  Part="1" 
AR Path="/5886D11C/5886BC8B" Ref="R49"  Part="1" 
F 0 "R41" H 2300 4100 60  0000 C CNN
F 1 "100K" H 2300 4000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2200 3900 60  0001 C CNN
F 3 "" H 2200 3900 60  0000 C CNN
	1    2200 3900
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R45
U 1 1 5886BC91
P 3300 3650
AR Path="/5886B504/5886BC91" Ref="R45"  Part="1" 
AR Path="/5886D11C/5886BC91" Ref="R53"  Part="1" 
F 0 "R45" H 3450 3850 60  0000 C CNN
F 1 "10k" H 3450 3750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3300 3650 60  0001 C CNN
F 3 "" H 3300 3650 60  0000 C CNN
	1    3300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3900 2700 3900
Wire Wire Line
	3000 3700 3000 3650
Wire Wire Line
	3000 3650 3200 3650
$Comp
L GND #PWR031
U 1 1 5886BC9A
P 3000 4100
AR Path="/5886B504/5886BC9A" Ref="#PWR031"  Part="1" 
AR Path="/5886D11C/5886BC9A" Ref="#PWR54"  Part="1" 
F 0 "#PWR031" H 3000 3850 50  0001 C CNN
F 1 "GND" H 3000 3950 50  0000 C CNN
F 2 "" H 3000 4100 50  0000 C CNN
F 3 "" H 3000 4100 50  0000 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
Text HLabel 1850 1700 0    60   Input ~ 0
IN1
Text HLabel 1850 2450 0    60   Input ~ 0
IN2
Text HLabel 1700 3150 0    60   Input ~ 0
IN3
Text HLabel 1600 3900 0    60   Input ~ 0
IN4
Text HLabel 4250 1450 2    60   Output ~ 0
OUT1
Text HLabel 4250 2200 2    60   Output ~ 0
OUT2
Text HLabel 4200 2900 2    60   Output ~ 0
OUT3
Text HLabel 4150 3650 2    60   Output ~ 0
OUT4
Wire Wire Line
	4150 3650 3600 3650
Wire Wire Line
	4200 2900 3650 2900
Wire Wire Line
	4250 2200 3700 2200
Wire Wire Line
	4250 1450 3750 1450
Wire Wire Line
	1850 1700 2250 1700
Wire Wire Line
	1850 2450 2200 2450
Wire Wire Line
	1700 3150 2150 3150
Wire Wire Line
	1600 3900 2100 3900
$EndSCHEMATC