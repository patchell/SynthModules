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
$Descr A 11000 8500
encoding utf-8
Sheet 2 4
Title "One Hot Line To Binary Encoder"
Date "2017-01-22"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 900  1450 0    60   Input ~ 0
A
Text HLabel 900  2900 0    60   Input ~ 0
B
Text HLabel 950  4300 0    60   Input ~ 0
C
Text HLabel 950  5650 0    60   Input ~ 0
D
Text HLabel 9600 1350 2    60   Output ~ 0
O1
Text HLabel 9500 3000 2    60   Output ~ 0
O2
Text HLabel 9850 5550 2    60   Output ~ 0
E
$Comp
L NPN Q3
U 1 1 5885946B
P 2850 1450
AR Path="/58859326/5885946B" Ref="Q3"  Part="1" 
AR Path="/58863E32/5885946B" Ref="Q14"  Part="1" 
F 0 "Q3" H 3150 1500 50  0000 R CNN
F 1 "2N3904" H 2900 1650 50  0000 R CNN
F 2 "FootPrints:TO92" H 3050 1550 50  0001 C CNN
F 3 "" H 2850 1450 50  0000 C CNN
	1    2850 1450
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D3
U 1 1 588594BE
P 1950 1450
AR Path="/58859326/588594BE" Ref="D3"  Part="1" 
AR Path="/58863E32/588594BE" Ref="D37"  Part="1" 
F 0 "D3" H 1950 1550 50  0000 C CNN
F 1 "1N914" H 1950 1350 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 1950 1450 50  0001 C CNN
F 3 "" H 1950 1450 50  0000 C CNN
	1    1950 1450
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D7
U 1 1 588595AF
P 2450 1450
AR Path="/58859326/588595AF" Ref="D7"  Part="1" 
AR Path="/58863E32/588595AF" Ref="D41"  Part="1" 
F 0 "D7" H 2450 1550 50  0000 C CNN
F 1 "1N914" H 2450 1350 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 2450 1450 50  0001 C CNN
F 3 "" H 2450 1450 50  0000 C CNN
	1    2450 1450
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R3
U 1 1 588595DB
P 2200 1000
AR Path="/58859326/588595DB" Ref="R3"  Part="1" 
AR Path="/58863E32/588595DB" Ref="R23"  Part="1" 
F 0 "R3" V 2150 1150 60  0000 C CNN
F 1 "100K" V 2250 1200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2200 1000 60  0001 C CNN
F 3 "" H 2200 1000 60  0000 C CNN
	1    2200 1000
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R7
U 1 1 58859602
P 2950 850
AR Path="/58859326/58859602" Ref="R7"  Part="1" 
AR Path="/58863E32/58859602" Ref="R27"  Part="1" 
F 0 "R7" V 2950 1000 60  0000 C CNN
F 1 "10K" V 3050 1000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2950 850 60  0001 C CNN
F 3 "" H 2950 850 60  0000 C CNN
	1    2950 850 
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 588596B3
P 2950 1650
AR Path="/58859326/588596B3" Ref="#PWR08"  Part="1" 
AR Path="/58863E32/588596B3" Ref="#PWR32"  Part="1" 
F 0 "#PWR08" H 2950 1400 50  0001 C CNN
F 1 "GND" H 2950 1500 50  0000 C CNN
F 2 "" H 2950 1650 50  0000 C CNN
F 3 "" H 2950 1650 50  0000 C CNN
	1    2950 1650
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR09
U 1 1 58859867
P 3050 650
AR Path="/58859326/58859867" Ref="#PWR09"  Part="1" 
AR Path="/58863E32/58859867" Ref="#PWR36"  Part="1" 
F 0 "#PWR09" H 3050 500 50  0001 C CNN
F 1 "+15V0" H 3050 800 50  0000 C CNN
F 2 "" H 3050 650 50  0000 C CNN
F 3 "" H 3050 650 50  0000 C CNN
	1    3050 650 
	0    1    1    0   
$EndComp
$Comp
L NPN Q4
U 1 1 58859947
P 2850 2900
AR Path="/58859326/58859947" Ref="Q4"  Part="1" 
AR Path="/58863E32/58859947" Ref="Q15"  Part="1" 
F 0 "Q4" H 3150 2950 50  0000 R CNN
F 1 "2N3904" H 2900 3100 50  0000 R CNN
F 2 "FootPrints:TO92" H 3050 3000 50  0001 C CNN
F 3 "" H 2850 2900 50  0000 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D4
U 1 1 5885994D
P 1950 2900
AR Path="/58859326/5885994D" Ref="D4"  Part="1" 
AR Path="/58863E32/5885994D" Ref="D38"  Part="1" 
F 0 "D4" H 1950 3000 50  0000 C CNN
F 1 "1N914" H 1950 2800 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 1950 2900 50  0001 C CNN
F 3 "" H 1950 2900 50  0000 C CNN
	1    1950 2900
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D8
U 1 1 58859953
P 2450 2900
AR Path="/58859326/58859953" Ref="D8"  Part="1" 
AR Path="/58863E32/58859953" Ref="D42"  Part="1" 
F 0 "D8" H 2450 3000 50  0000 C CNN
F 1 "1N914" H 2450 2800 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 2450 2900 50  0001 C CNN
F 3 "" H 2450 2900 50  0000 C CNN
	1    2450 2900
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R4
U 1 1 58859959
P 2200 2450
AR Path="/58859326/58859959" Ref="R4"  Part="1" 
AR Path="/58863E32/58859959" Ref="R24"  Part="1" 
F 0 "R4" V 2150 2600 60  0000 C CNN
F 1 "100K" V 2250 2650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2200 2450 60  0001 C CNN
F 3 "" H 2200 2450 60  0000 C CNN
	1    2200 2450
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R8
U 1 1 5885995F
P 2950 2300
AR Path="/58859326/5885995F" Ref="R8"  Part="1" 
AR Path="/58863E32/5885995F" Ref="R28"  Part="1" 
F 0 "R8" V 2950 2450 60  0000 C CNN
F 1 "10K" V 3050 2450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2950 2300 60  0001 C CNN
F 3 "" H 2950 2300 60  0000 C CNN
	1    2950 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 5885996D
P 2950 3100
AR Path="/58859326/5885996D" Ref="#PWR010"  Part="1" 
AR Path="/58863E32/5885996D" Ref="#PWR33"  Part="1" 
F 0 "#PWR010" H 2950 2850 50  0001 C CNN
F 1 "GND" H 2950 2950 50  0000 C CNN
F 2 "" H 2950 3100 50  0000 C CNN
F 3 "" H 2950 3100 50  0000 C CNN
	1    2950 3100
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR011
U 1 1 58859973
P 3050 2100
AR Path="/58859326/58859973" Ref="#PWR011"  Part="1" 
AR Path="/58863E32/58859973" Ref="#PWR37"  Part="1" 
F 0 "#PWR011" H 3050 1950 50  0001 C CNN
F 1 "+15V0" H 3050 2250 50  0000 C CNN
F 2 "" H 3050 2100 50  0000 C CNN
F 3 "" H 3050 2100 50  0000 C CNN
	1    3050 2100
	0    1    1    0   
$EndComp
$Comp
L NPN Q2
U 1 1 58859A3D
P 2800 4300
AR Path="/58859326/58859A3D" Ref="Q2"  Part="1" 
AR Path="/58863E32/58859A3D" Ref="Q13"  Part="1" 
F 0 "Q2" H 3100 4350 50  0000 R CNN
F 1 "2N3904" H 2850 4500 50  0000 R CNN
F 2 "FootPrints:TO92" H 3000 4400 50  0001 C CNN
F 3 "" H 2800 4300 50  0000 C CNN
	1    2800 4300
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D2
U 1 1 58859A43
P 1900 4300
AR Path="/58859326/58859A43" Ref="D2"  Part="1" 
AR Path="/58863E32/58859A43" Ref="D36"  Part="1" 
F 0 "D2" H 1900 4400 50  0000 C CNN
F 1 "1N914" H 1900 4200 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 1900 4300 50  0001 C CNN
F 3 "" H 1900 4300 50  0000 C CNN
	1    1900 4300
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D6
U 1 1 58859A49
P 2400 4300
AR Path="/58859326/58859A49" Ref="D6"  Part="1" 
AR Path="/58863E32/58859A49" Ref="D40"  Part="1" 
F 0 "D6" H 2400 4400 50  0000 C CNN
F 1 "1N914" H 2400 4200 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 2400 4300 50  0001 C CNN
F 3 "" H 2400 4300 50  0000 C CNN
	1    2400 4300
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R2
U 1 1 58859A4F
P 2150 3850
AR Path="/58859326/58859A4F" Ref="R2"  Part="1" 
AR Path="/58863E32/58859A4F" Ref="R22"  Part="1" 
F 0 "R2" V 2100 4000 60  0000 C CNN
F 1 "100K" V 2200 4050 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2150 3850 60  0001 C CNN
F 3 "" H 2150 3850 60  0000 C CNN
	1    2150 3850
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R6
U 1 1 58859A55
P 2900 3700
AR Path="/58859326/58859A55" Ref="R6"  Part="1" 
AR Path="/58863E32/58859A55" Ref="R26"  Part="1" 
F 0 "R6" V 2900 3850 60  0000 C CNN
F 1 "10K" V 3000 3850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2900 3700 60  0001 C CNN
F 3 "" H 2900 3700 60  0000 C CNN
	1    2900 3700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 58859A63
P 2900 4500
AR Path="/58859326/58859A63" Ref="#PWR012"  Part="1" 
AR Path="/58863E32/58859A63" Ref="#PWR31"  Part="1" 
F 0 "#PWR012" H 2900 4250 50  0001 C CNN
F 1 "GND" H 2900 4350 50  0000 C CNN
F 2 "" H 2900 4500 50  0000 C CNN
F 3 "" H 2900 4500 50  0000 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR013
U 1 1 58859A69
P 3000 3500
AR Path="/58859326/58859A69" Ref="#PWR013"  Part="1" 
AR Path="/58863E32/58859A69" Ref="#PWR35"  Part="1" 
F 0 "#PWR013" H 3000 3350 50  0001 C CNN
F 1 "+15V0" H 3000 3650 50  0000 C CNN
F 2 "" H 3000 3500 50  0000 C CNN
F 3 "" H 3000 3500 50  0000 C CNN
	1    3000 3500
	0    1    1    0   
$EndComp
$Comp
L NPN Q1
U 1 1 58859B3D
P 2750 5650
AR Path="/58859326/58859B3D" Ref="Q1"  Part="1" 
AR Path="/58863E32/58859B3D" Ref="Q12"  Part="1" 
F 0 "Q1" H 3050 5700 50  0000 R CNN
F 1 "2N3904" H 2800 5850 50  0000 R CNN
F 2 "FootPrints:TO92" H 2950 5750 50  0001 C CNN
F 3 "" H 2750 5650 50  0000 C CNN
	1    2750 5650
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D1
U 1 1 58859B43
P 1850 5650
AR Path="/58859326/58859B43" Ref="D1"  Part="1" 
AR Path="/58863E32/58859B43" Ref="D35"  Part="1" 
F 0 "D1" H 1850 5750 50  0000 C CNN
F 1 "1N914" H 1850 5550 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 1850 5650 50  0001 C CNN
F 3 "" H 1850 5650 50  0000 C CNN
	1    1850 5650
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D5
U 1 1 58859B49
P 2350 5650
AR Path="/58859326/58859B49" Ref="D5"  Part="1" 
AR Path="/58863E32/58859B49" Ref="D39"  Part="1" 
F 0 "D5" H 2350 5750 50  0000 C CNN
F 1 "1N914" H 2350 5550 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 2350 5650 50  0001 C CNN
F 3 "" H 2350 5650 50  0000 C CNN
	1    2350 5650
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R1
U 1 1 58859B4F
P 2100 5200
AR Path="/58859326/58859B4F" Ref="R1"  Part="1" 
AR Path="/58863E32/58859B4F" Ref="R21"  Part="1" 
F 0 "R1" V 2050 5350 60  0000 C CNN
F 1 "100K" V 2150 5400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2100 5200 60  0001 C CNN
F 3 "" H 2100 5200 60  0000 C CNN
	1    2100 5200
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R5
U 1 1 58859B55
P 2850 5050
AR Path="/58859326/58859B55" Ref="R5"  Part="1" 
AR Path="/58863E32/58859B55" Ref="R25"  Part="1" 
F 0 "R5" V 2850 5200 60  0000 C CNN
F 1 "10K" V 2950 5200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2850 5050 60  0001 C CNN
F 3 "" H 2850 5050 60  0000 C CNN
	1    2850 5050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 58859B63
P 2850 5850
AR Path="/58859326/58859B63" Ref="#PWR014"  Part="1" 
AR Path="/58863E32/58859B63" Ref="#PWR30"  Part="1" 
F 0 "#PWR014" H 2850 5600 50  0001 C CNN
F 1 "GND" H 2850 5700 50  0000 C CNN
F 2 "" H 2850 5850 50  0000 C CNN
F 3 "" H 2850 5850 50  0000 C CNN
	1    2850 5850
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR015
U 1 1 58859B69
P 2950 4850
AR Path="/58859326/58859B69" Ref="#PWR015"  Part="1" 
AR Path="/58863E32/58859B69" Ref="#PWR34"  Part="1" 
F 0 "#PWR015" H 2950 4700 50  0001 C CNN
F 1 "+15V0" H 2950 5000 50  0000 C CNN
F 2 "" H 2950 4850 50  0000 C CNN
F 3 "" H 2950 4850 50  0000 C CNN
	1    2950 4850
	0    1    1    0   
$EndComp
$Comp
L NPN Q9
U 1 1 5885A5AF
P 8050 5800
AR Path="/58859326/5885A5AF" Ref="Q9"  Part="1" 
AR Path="/58863E32/5885A5AF" Ref="Q20"  Part="1" 
F 0 "Q9" H 8350 5850 50  0000 R CNN
F 1 "2N3904" H 8100 6000 50  0000 R CNN
F 2 "FootPrints:TO92" H 8250 5900 50  0001 C CNN
F 3 "" H 8050 5800 50  0000 C CNN
	1    8050 5800
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D26
U 1 1 5885A5B5
P 7150 5800
AR Path="/58859326/5885A5B5" Ref="D26"  Part="1" 
AR Path="/58863E32/5885A5B5" Ref="D60"  Part="1" 
F 0 "D26" H 7150 5900 50  0000 C CNN
F 1 "1N914" H 7150 5700 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7150 5800 50  0001 C CNN
F 3 "" H 7150 5800 50  0000 C CNN
	1    7150 5800
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D30
U 1 1 5885A5BB
P 7650 5800
AR Path="/58859326/5885A5BB" Ref="D30"  Part="1" 
AR Path="/58863E32/5885A5BB" Ref="D64"  Part="1" 
F 0 "D30" H 7650 5900 50  0000 C CNN
F 1 "1N914" H 7650 5700 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7650 5800 50  0001 C CNN
F 3 "" H 7650 5800 50  0000 C CNN
	1    7650 5800
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R15
U 1 1 5885A5C1
P 7400 5350
AR Path="/58859326/5885A5C1" Ref="R15"  Part="1" 
AR Path="/58863E32/5885A5C1" Ref="R35"  Part="1" 
F 0 "R15" V 7350 5500 60  0000 C CNN
F 1 "100K" V 7450 5550 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7400 5350 60  0001 C CNN
F 3 "" H 7400 5350 60  0000 C CNN
	1    7400 5350
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R18
U 1 1 5885A5C7
P 8150 5200
AR Path="/58859326/5885A5C7" Ref="R18"  Part="1" 
AR Path="/58863E32/5885A5C7" Ref="R38"  Part="1" 
F 0 "R18" V 8150 5350 60  0000 C CNN
F 1 "10K" V 8250 5350 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8150 5200 60  0001 C CNN
F 3 "" H 8150 5200 60  0000 C CNN
	1    8150 5200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 5885A5D5
P 8150 6000
AR Path="/58859326/5885A5D5" Ref="#PWR016"  Part="1" 
AR Path="/58863E32/5885A5D5" Ref="#PWR44"  Part="1" 
F 0 "#PWR016" H 8150 5750 50  0001 C CNN
F 1 "GND" H 8150 5850 50  0000 C CNN
F 2 "" H 8150 6000 50  0000 C CNN
F 3 "" H 8150 6000 50  0000 C CNN
	1    8150 6000
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR017
U 1 1 5885A5DB
P 8250 5000
AR Path="/58859326/5885A5DB" Ref="#PWR017"  Part="1" 
AR Path="/58863E32/5885A5DB" Ref="#PWR45"  Part="1" 
F 0 "#PWR017" H 8250 4850 50  0001 C CNN
F 1 "+15V0" H 8250 5150 50  0000 C CNN
F 2 "" H 8250 5000 50  0000 C CNN
F 3 "" H 8250 5000 50  0000 C CNN
	1    8250 5000
	0    1    1    0   
$EndComp
$Comp
L D_ALT D27
U 1 1 5885A78E
P 7150 6050
AR Path="/58859326/5885A78E" Ref="D27"  Part="1" 
AR Path="/58863E32/5885A78E" Ref="D61"  Part="1" 
F 0 "D27" H 7150 6150 50  0000 C CNN
F 1 "1N914" H 7150 5950 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7150 6050 50  0001 C CNN
F 3 "" H 7150 6050 50  0000 C CNN
	1    7150 6050
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D28
U 1 1 5885A7F6
P 7150 6300
AR Path="/58859326/5885A7F6" Ref="D28"  Part="1" 
AR Path="/58863E32/5885A7F6" Ref="D62"  Part="1" 
F 0 "D28" H 7150 6400 50  0000 C CNN
F 1 "1N914" H 7150 6200 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7150 6300 50  0001 C CNN
F 3 "" H 7150 6300 50  0000 C CNN
	1    7150 6300
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D29
U 1 1 5885A85F
P 7150 6500
AR Path="/58859326/5885A85F" Ref="D29"  Part="1" 
AR Path="/58863E32/5885A85F" Ref="D63"  Part="1" 
F 0 "D29" H 7150 6600 50  0000 C CNN
F 1 "1N914" H 7150 6400 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7150 6500 50  0001 C CNN
F 3 "" H 7150 6500 50  0000 C CNN
	1    7150 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1300 2200 1450
Wire Wire Line
	2100 1450 2300 1450
Connection ~ 2200 1450
Wire Wire Line
	2950 1150 2950 1250
Wire Wire Line
	2950 750  2950 650 
Wire Wire Line
	2200 650  3050 650 
Wire Wire Line
	2200 650  2200 900 
Wire Wire Line
	2650 1450 2600 1450
Connection ~ 2950 650 
Wire Wire Line
	2200 2750 2200 2900
Wire Wire Line
	2100 2900 2300 2900
Connection ~ 2200 2900
Wire Wire Line
	2950 2600 2950 2700
Wire Wire Line
	2950 2200 2950 2100
Wire Wire Line
	2200 2100 3050 2100
Wire Wire Line
	2200 2100 2200 2350
Wire Wire Line
	2650 2900 2600 2900
Connection ~ 2950 2100
Wire Wire Line
	2150 4150 2150 4300
Wire Wire Line
	2050 4300 2250 4300
Connection ~ 2150 4300
Wire Wire Line
	2900 4000 2900 4100
Wire Wire Line
	2900 3600 2900 3500
Wire Wire Line
	2150 3500 3000 3500
Wire Wire Line
	2150 3500 2150 3750
Wire Wire Line
	2600 4300 2550 4300
Connection ~ 2900 3500
Wire Wire Line
	2100 5500 2100 5650
Wire Wire Line
	2000 5650 2200 5650
Connection ~ 2100 5650
Wire Wire Line
	2850 5350 2850 5450
Wire Wire Line
	2850 4950 2850 4850
Wire Wire Line
	2100 4850 2950 4850
Wire Wire Line
	2100 4850 2100 5100
Wire Wire Line
	2550 5650 2500 5650
Connection ~ 2850 4850
Wire Wire Line
	950  5650 1700 5650
Wire Wire Line
	950  4300 1750 4300
Wire Wire Line
	900  2900 1800 2900
Wire Wire Line
	900  1450 1800 1450
Wire Wire Line
	7400 5650 7400 6500
Wire Wire Line
	7300 5800 7500 5800
Connection ~ 7400 5800
Wire Wire Line
	8150 5500 8150 5600
Wire Wire Line
	8150 5100 8150 5000
Wire Wire Line
	7400 5000 8250 5000
Wire Wire Line
	7400 5000 7400 5250
Wire Wire Line
	7850 5800 7800 5800
Connection ~ 8150 5000
Wire Wire Line
	7400 6050 7300 6050
Wire Wire Line
	7400 6300 7300 6300
Connection ~ 7400 6050
Wire Wire Line
	7400 6500 7300 6500
Connection ~ 7400 6300
Wire Wire Line
	9850 5550 8150 5550
Connection ~ 8150 5550
$Comp
L NPN Q6
U 1 1 5885B5F8
P 5300 1700
AR Path="/58859326/5885B5F8" Ref="Q6"  Part="1" 
AR Path="/58863E32/5885B5F8" Ref="Q17"  Part="1" 
F 0 "Q6" H 5600 1750 50  0000 R CNN
F 1 "2N3904" H 5350 1900 50  0000 R CNN
F 2 "FootPrints:TO92" H 5500 1800 50  0001 C CNN
F 3 "" H 5300 1700 50  0000 C CNN
	1    5300 1700
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D13
U 1 1 5885B5FE
P 4400 1700
AR Path="/58859326/5885B5FE" Ref="D13"  Part="1" 
AR Path="/58863E32/5885B5FE" Ref="D47"  Part="1" 
F 0 "D13" H 4400 1800 50  0000 C CNN
F 1 "1N914" H 4400 1600 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4400 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0000 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D18
U 1 1 5885B604
P 4900 1700
AR Path="/58859326/5885B604" Ref="D18"  Part="1" 
AR Path="/58863E32/5885B604" Ref="D52"  Part="1" 
F 0 "D18" H 4900 1800 50  0000 C CNN
F 1 "1N914" H 4900 1600 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4900 1700 50  0001 C CNN
F 3 "" H 4900 1700 50  0000 C CNN
	1    4900 1700
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R10
U 1 1 5885B60A
P 4650 1250
AR Path="/58859326/5885B60A" Ref="R10"  Part="1" 
AR Path="/58863E32/5885B60A" Ref="R30"  Part="1" 
F 0 "R10" V 4600 1400 60  0000 C CNN
F 1 "100K" V 4700 1450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4650 1250 60  0001 C CNN
F 3 "" H 4650 1250 60  0000 C CNN
	1    4650 1250
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R12
U 1 1 5885B610
P 5400 1100
AR Path="/58859326/5885B610" Ref="R12"  Part="1" 
AR Path="/58863E32/5885B610" Ref="R32"  Part="1" 
F 0 "R12" V 5400 1250 60  0000 C CNN
F 1 "10K" V 5500 1250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5400 1100 60  0001 C CNN
F 3 "" H 5400 1100 60  0000 C CNN
	1    5400 1100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 5885B616
P 5400 1900
AR Path="/58859326/5885B616" Ref="#PWR018"  Part="1" 
AR Path="/58863E32/5885B616" Ref="#PWR39"  Part="1" 
F 0 "#PWR018" H 5400 1650 50  0001 C CNN
F 1 "GND" H 5400 1750 50  0000 C CNN
F 2 "" H 5400 1900 50  0000 C CNN
F 3 "" H 5400 1900 50  0000 C CNN
	1    5400 1900
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR019
U 1 1 5885B61C
P 5500 900
AR Path="/58859326/5885B61C" Ref="#PWR019"  Part="1" 
AR Path="/58863E32/5885B61C" Ref="#PWR41"  Part="1" 
F 0 "#PWR019" H 5500 750 50  0001 C CNN
F 1 "+15V0" H 5500 1050 50  0000 C CNN
F 2 "" H 5500 900 50  0000 C CNN
F 3 "" H 5500 900 50  0000 C CNN
	1    5500 900 
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D14
U 1 1 5885B622
P 4400 1950
AR Path="/58859326/5885B622" Ref="D14"  Part="1" 
AR Path="/58863E32/5885B622" Ref="D48"  Part="1" 
F 0 "D14" H 4400 2050 50  0000 C CNN
F 1 "1N914" H 4400 1850 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4400 1950 50  0001 C CNN
F 3 "" H 4400 1950 50  0000 C CNN
	1    4400 1950
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D15
U 1 1 5885B628
P 4400 2200
AR Path="/58859326/5885B628" Ref="D15"  Part="1" 
AR Path="/58863E32/5885B628" Ref="D49"  Part="1" 
F 0 "D15" H 4400 2300 50  0000 C CNN
F 1 "1N914" H 4400 2100 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4400 2200 50  0001 C CNN
F 3 "" H 4400 2200 50  0000 C CNN
	1    4400 2200
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D16
U 1 1 5885B62E
P 4400 2400
AR Path="/58859326/5885B62E" Ref="D16"  Part="1" 
AR Path="/58863E32/5885B62E" Ref="D50"  Part="1" 
F 0 "D16" H 4400 2500 50  0000 C CNN
F 1 "1N914" H 4400 2300 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4400 2400 50  0001 C CNN
F 3 "" H 4400 2400 50  0000 C CNN
	1    4400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1550 4650 2400
Wire Wire Line
	4550 1700 4750 1700
Connection ~ 4650 1700
Wire Wire Line
	5400 1400 5400 1500
Wire Wire Line
	5400 1000 5400 900 
Wire Wire Line
	4650 900  6550 900 
Wire Wire Line
	4650 900  4650 1150
Wire Wire Line
	5100 1700 5050 1700
Connection ~ 5400 900 
Wire Wire Line
	4650 1950 4550 1950
Wire Wire Line
	4650 2200 4550 2200
Connection ~ 4650 1950
Wire Wire Line
	4650 2400 4550 2400
Connection ~ 4650 2200
Connection ~ 5400 1450
$Comp
L NPN Q8
U 1 1 5885B9E7
P 5900 1700
AR Path="/58859326/5885B9E7" Ref="Q8"  Part="1" 
AR Path="/58863E32/5885B9E7" Ref="Q19"  Part="1" 
F 0 "Q8" H 6200 1750 50  0000 R CNN
F 1 "2N3904" H 5950 1900 50  0000 R CNN
F 2 "FootPrints:TO92" H 6100 1800 50  0001 C CNN
F 3 "" H 5900 1700 50  0000 C CNN
	1    5900 1700
	-1   0    0    -1  
$EndComp
$Comp
L D_ALT D24
U 1 1 5885B9ED
P 6800 1700
AR Path="/58859326/5885B9ED" Ref="D24"  Part="1" 
AR Path="/58863E32/5885B9ED" Ref="D58"  Part="1" 
F 0 "D24" H 6800 1800 50  0000 C CNN
F 1 "1N914" H 6800 1600 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 6800 1700 50  0001 C CNN
F 3 "" H 6800 1700 50  0000 C CNN
	1    6800 1700
	-1   0    0    -1  
$EndComp
$Comp
L D_ALT D20
U 1 1 5885B9F3
P 6300 1700
AR Path="/58859326/5885B9F3" Ref="D20"  Part="1" 
AR Path="/58863E32/5885B9F3" Ref="D54"  Part="1" 
F 0 "D20" H 6300 1800 50  0000 C CNN
F 1 "1N914" H 6300 1600 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 6300 1700 50  0001 C CNN
F 3 "" H 6300 1700 50  0000 C CNN
	1    6300 1700
	1    0    0    1   
$EndComp
$Comp
L RESISTOR R14
U 1 1 5885B9F9
P 6550 1250
AR Path="/58859326/5885B9F9" Ref="R14"  Part="1" 
AR Path="/58863E32/5885B9F9" Ref="R34"  Part="1" 
F 0 "R14" V 6500 1400 60  0000 C CNN
F 1 "100K" V 6600 1450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6550 1250 60  0001 C CNN
F 3 "" H 6550 1250 60  0000 C CNN
	1    6550 1250
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 5885BA05
P 5800 1900
AR Path="/58859326/5885BA05" Ref="#PWR020"  Part="1" 
AR Path="/58863E32/5885BA05" Ref="#PWR43"  Part="1" 
F 0 "#PWR020" H 5800 1650 50  0001 C CNN
F 1 "GND" H 5800 1750 50  0000 C CNN
F 2 "" H 5800 1900 50  0000 C CNN
F 3 "" H 5800 1900 50  0000 C CNN
	1    5800 1900
	-1   0    0    -1  
$EndComp
$Comp
L D_ALT D25
U 1 1 5885BA11
P 6800 1950
AR Path="/58859326/5885BA11" Ref="D25"  Part="1" 
AR Path="/58863E32/5885BA11" Ref="D59"  Part="1" 
F 0 "D25" H 6800 2050 50  0000 C CNN
F 1 "1N914" H 6800 1850 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 6800 1950 50  0001 C CNN
F 3 "" H 6800 1950 50  0000 C CNN
	1    6800 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 1550 6550 1950
Wire Wire Line
	6450 1700 6650 1700
Connection ~ 6550 1700
Wire Wire Line
	6550 900  6550 1150
Wire Wire Line
	6100 1700 6150 1700
Wire Wire Line
	6550 1950 6650 1950
Wire Wire Line
	5800 1050 5800 1500
Wire Wire Line
	5800 1450 5400 1450
Connection ~ 5500 900 
$Comp
L NPN Q5
U 1 1 5885C7DD
P 5200 3650
AR Path="/58859326/5885C7DD" Ref="Q5"  Part="1" 
AR Path="/58863E32/5885C7DD" Ref="Q16"  Part="1" 
F 0 "Q5" H 5500 3700 50  0000 R CNN
F 1 "2N3904" H 5250 3850 50  0000 R CNN
F 2 "FootPrints:TO92" H 5400 3750 50  0001 C CNN
F 3 "" H 5200 3650 50  0000 C CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D9
U 1 1 5885C7E3
P 4300 3650
AR Path="/58859326/5885C7E3" Ref="D9"  Part="1" 
AR Path="/58863E32/5885C7E3" Ref="D43"  Part="1" 
F 0 "D9" H 4300 3750 50  0000 C CNN
F 1 "1N914" H 4300 3550 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4300 3650 50  0001 C CNN
F 3 "" H 4300 3650 50  0000 C CNN
	1    4300 3650
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D17
U 1 1 5885C7E9
P 4800 3650
AR Path="/58859326/5885C7E9" Ref="D17"  Part="1" 
AR Path="/58863E32/5885C7E9" Ref="D51"  Part="1" 
F 0 "D17" H 4800 3750 50  0000 C CNN
F 1 "1N914" H 4800 3550 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4800 3650 50  0001 C CNN
F 3 "" H 4800 3650 50  0000 C CNN
	1    4800 3650
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R9
U 1 1 5885C7EF
P 4550 3200
AR Path="/58859326/5885C7EF" Ref="R9"  Part="1" 
AR Path="/58863E32/5885C7EF" Ref="R29"  Part="1" 
F 0 "R9" V 4500 3350 60  0000 C CNN
F 1 "100K" V 4600 3400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4550 3200 60  0001 C CNN
F 3 "" H 4550 3200 60  0000 C CNN
	1    4550 3200
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R11
U 1 1 5885C7F5
P 5300 3050
AR Path="/58859326/5885C7F5" Ref="R11"  Part="1" 
AR Path="/58863E32/5885C7F5" Ref="R31"  Part="1" 
F 0 "R11" V 5300 3200 60  0000 C CNN
F 1 "10K" V 5400 3200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5300 3050 60  0001 C CNN
F 3 "" H 5300 3050 60  0000 C CNN
	1    5300 3050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR021
U 1 1 5885C7FB
P 5300 3850
AR Path="/58859326/5885C7FB" Ref="#PWR021"  Part="1" 
AR Path="/58863E32/5885C7FB" Ref="#PWR38"  Part="1" 
F 0 "#PWR021" H 5300 3600 50  0001 C CNN
F 1 "GND" H 5300 3700 50  0000 C CNN
F 2 "" H 5300 3850 50  0000 C CNN
F 3 "" H 5300 3850 50  0000 C CNN
	1    5300 3850
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR022
U 1 1 5885C801
P 5400 2850
AR Path="/58859326/5885C801" Ref="#PWR022"  Part="1" 
AR Path="/58863E32/5885C801" Ref="#PWR40"  Part="1" 
F 0 "#PWR022" H 5400 2700 50  0001 C CNN
F 1 "+15V0" H 5400 3000 50  0000 C CNN
F 2 "" H 5400 2850 50  0000 C CNN
F 3 "" H 5400 2850 50  0000 C CNN
	1    5400 2850
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D10
U 1 1 5885C807
P 4300 3900
AR Path="/58859326/5885C807" Ref="D10"  Part="1" 
AR Path="/58863E32/5885C807" Ref="D44"  Part="1" 
F 0 "D10" H 4300 4000 50  0000 C CNN
F 1 "1N914" H 4300 3800 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4300 3900 50  0001 C CNN
F 3 "" H 4300 3900 50  0000 C CNN
	1    4300 3900
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D11
U 1 1 5885C80D
P 4300 4150
AR Path="/58859326/5885C80D" Ref="D11"  Part="1" 
AR Path="/58863E32/5885C80D" Ref="D45"  Part="1" 
F 0 "D11" H 4300 4250 50  0000 C CNN
F 1 "1N914" H 4300 4050 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4300 4150 50  0001 C CNN
F 3 "" H 4300 4150 50  0000 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D12
U 1 1 5885C813
P 4300 4350
AR Path="/58859326/5885C813" Ref="D12"  Part="1" 
AR Path="/58863E32/5885C813" Ref="D46"  Part="1" 
F 0 "D12" H 4300 4450 50  0000 C CNN
F 1 "1N914" H 4300 4250 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4300 4350 50  0001 C CNN
F 3 "" H 4300 4350 50  0000 C CNN
	1    4300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3500 4550 4350
Wire Wire Line
	4450 3650 4650 3650
Connection ~ 4550 3650
Wire Wire Line
	5300 3350 5300 3450
Wire Wire Line
	5300 2950 5300 2850
Wire Wire Line
	4550 2850 6450 2850
Wire Wire Line
	4550 2850 4550 3100
Wire Wire Line
	5000 3650 4950 3650
Connection ~ 5300 2850
Wire Wire Line
	4550 3900 4450 3900
Wire Wire Line
	4550 4150 4450 4150
Connection ~ 4550 3900
Wire Wire Line
	4550 4350 4450 4350
Connection ~ 4550 4150
Connection ~ 5300 3400
$Comp
L NPN Q7
U 1 1 5885C828
P 5800 3650
AR Path="/58859326/5885C828" Ref="Q7"  Part="1" 
AR Path="/58863E32/5885C828" Ref="Q18"  Part="1" 
F 0 "Q7" H 6100 3700 50  0000 R CNN
F 1 "2N3904" H 5850 3850 50  0000 R CNN
F 2 "FootPrints:TO92" H 6000 3750 50  0001 C CNN
F 3 "" H 5800 3650 50  0000 C CNN
	1    5800 3650
	-1   0    0    -1  
$EndComp
$Comp
L D_ALT D21
U 1 1 5885C82E
P 6700 3650
AR Path="/58859326/5885C82E" Ref="D21"  Part="1" 
AR Path="/58863E32/5885C82E" Ref="D55"  Part="1" 
F 0 "D21" H 6700 3750 50  0000 C CNN
F 1 "1N914" H 6700 3550 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 6700 3650 50  0001 C CNN
F 3 "" H 6700 3650 50  0000 C CNN
	1    6700 3650
	-1   0    0    -1  
$EndComp
$Comp
L D_ALT D19
U 1 1 5885C834
P 6200 3650
AR Path="/58859326/5885C834" Ref="D19"  Part="1" 
AR Path="/58863E32/5885C834" Ref="D53"  Part="1" 
F 0 "D19" H 6200 3750 50  0000 C CNN
F 1 "1N914" H 6200 3550 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 6200 3650 50  0001 C CNN
F 3 "" H 6200 3650 50  0000 C CNN
	1    6200 3650
	1    0    0    1   
$EndComp
$Comp
L RESISTOR R13
U 1 1 5885C83A
P 6450 3200
AR Path="/58859326/5885C83A" Ref="R13"  Part="1" 
AR Path="/58863E32/5885C83A" Ref="R33"  Part="1" 
F 0 "R13" V 6400 3350 60  0000 C CNN
F 1 "100K" V 6500 3400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6450 3200 60  0001 C CNN
F 3 "" H 6450 3200 60  0000 C CNN
	1    6450 3200
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR023
U 1 1 5885C840
P 5700 3850
AR Path="/58859326/5885C840" Ref="#PWR023"  Part="1" 
AR Path="/58863E32/5885C840" Ref="#PWR42"  Part="1" 
F 0 "#PWR023" H 5700 3600 50  0001 C CNN
F 1 "GND" H 5700 3700 50  0000 C CNN
F 2 "" H 5700 3850 50  0000 C CNN
F 3 "" H 5700 3850 50  0000 C CNN
	1    5700 3850
	-1   0    0    -1  
$EndComp
$Comp
L D_ALT D22
U 1 1 5885C846
P 6700 3900
AR Path="/58859326/5885C846" Ref="D22"  Part="1" 
AR Path="/58863E32/5885C846" Ref="D56"  Part="1" 
F 0 "D22" H 6700 4000 50  0000 C CNN
F 1 "1N914" H 6700 3800 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 6700 3900 50  0001 C CNN
F 3 "" H 6700 3900 50  0000 C CNN
	1    6700 3900
	-1   0    0    -1  
$EndComp
$Comp
L D_ALT D23
U 1 1 5885C84C
P 6700 4150
AR Path="/58859326/5885C84C" Ref="D23"  Part="1" 
AR Path="/58863E32/5885C84C" Ref="D57"  Part="1" 
F 0 "D23" H 6700 4250 50  0000 C CNN
F 1 "1N914" H 6700 4050 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 6700 4150 50  0001 C CNN
F 3 "" H 6700 4150 50  0000 C CNN
	1    6700 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 3650 6550 3650
Connection ~ 6450 3650
Wire Wire Line
	6450 2850 6450 3100
Wire Wire Line
	6000 3650 6050 3650
Wire Wire Line
	6450 3900 6550 3900
Wire Wire Line
	6450 4150 6550 4150
Connection ~ 6450 3900
Wire Wire Line
	5700 3000 5700 3450
Wire Wire Line
	5700 3400 5300 3400
Connection ~ 5400 2850
$Comp
L NPN Q11
U 1 1 5885CB1F
P 8750 1600
AR Path="/58859326/5885CB1F" Ref="Q11"  Part="1" 
AR Path="/58863E32/5885CB1F" Ref="Q22"  Part="1" 
F 0 "Q11" H 9050 1650 50  0000 R CNN
F 1 "2N3904" H 8800 1800 50  0000 R CNN
F 2 "FootPrints:TO92" H 8950 1700 50  0001 C CNN
F 3 "" H 8750 1600 50  0000 C CNN
	1    8750 1600
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D32
U 1 1 5885CB25
P 7850 1600
AR Path="/58859326/5885CB25" Ref="D32"  Part="1" 
AR Path="/58863E32/5885CB25" Ref="D66"  Part="1" 
F 0 "D32" H 7850 1700 50  0000 C CNN
F 1 "1N914" H 7850 1500 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7850 1600 50  0001 C CNN
F 3 "" H 7850 1600 50  0000 C CNN
	1    7850 1600
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D34
U 1 1 5885CB2B
P 8350 1600
AR Path="/58859326/5885CB2B" Ref="D34"  Part="1" 
AR Path="/58863E32/5885CB2B" Ref="D68"  Part="1" 
F 0 "D34" H 8350 1700 50  0000 C CNN
F 1 "1N914" H 8350 1500 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 8350 1600 50  0001 C CNN
F 3 "" H 8350 1600 50  0000 C CNN
	1    8350 1600
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R17
U 1 1 5885CB31
P 8100 1150
AR Path="/58859326/5885CB31" Ref="R17"  Part="1" 
AR Path="/58863E32/5885CB31" Ref="R37"  Part="1" 
F 0 "R17" V 8050 1300 60  0000 C CNN
F 1 "100K" V 8150 1350 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8100 1150 60  0001 C CNN
F 3 "" H 8100 1150 60  0000 C CNN
	1    8100 1150
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R20
U 1 1 5885CB37
P 8850 1000
AR Path="/58859326/5885CB37" Ref="R20"  Part="1" 
AR Path="/58863E32/5885CB37" Ref="R40"  Part="1" 
F 0 "R20" V 8850 1150 60  0000 C CNN
F 1 "10K" V 8950 1150 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8850 1000 60  0001 C CNN
F 3 "" H 8850 1000 60  0000 C CNN
	1    8850 1000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR024
U 1 1 5885CB3D
P 8850 1800
AR Path="/58859326/5885CB3D" Ref="#PWR024"  Part="1" 
AR Path="/58863E32/5885CB3D" Ref="#PWR48"  Part="1" 
F 0 "#PWR024" H 8850 1550 50  0001 C CNN
F 1 "GND" H 8850 1650 50  0000 C CNN
F 2 "" H 8850 1800 50  0000 C CNN
F 3 "" H 8850 1800 50  0000 C CNN
	1    8850 1800
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR025
U 1 1 5885CB43
P 8950 800
AR Path="/58859326/5885CB43" Ref="#PWR025"  Part="1" 
AR Path="/58863E32/5885CB43" Ref="#PWR49"  Part="1" 
F 0 "#PWR025" H 8950 650 50  0001 C CNN
F 1 "+15V0" H 8950 950 50  0000 C CNN
F 2 "" H 8950 800 50  0000 C CNN
F 3 "" H 8950 800 50  0000 C CNN
	1    8950 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 1450 8100 1600
Wire Wire Line
	8000 1600 8200 1600
Connection ~ 8100 1600
Wire Wire Line
	8850 1300 8850 1400
Wire Wire Line
	8850 900  8850 800 
Wire Wire Line
	8100 800  8950 800 
Wire Wire Line
	8100 800  8100 1050
Wire Wire Line
	8550 1600 8500 1600
Connection ~ 8850 800 
$Comp
L NPN Q10
U 1 1 5885CCF1
P 8600 3250
AR Path="/58859326/5885CCF1" Ref="Q10"  Part="1" 
AR Path="/58863E32/5885CCF1" Ref="Q21"  Part="1" 
F 0 "Q10" H 8900 3300 50  0000 R CNN
F 1 "2N3904" H 8650 3450 50  0000 R CNN
F 2 "FootPrints:TO92" H 8800 3350 50  0001 C CNN
F 3 "" H 8600 3250 50  0000 C CNN
	1    8600 3250
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D31
U 1 1 5885CCF7
P 7700 3250
AR Path="/58859326/5885CCF7" Ref="D31"  Part="1" 
AR Path="/58863E32/5885CCF7" Ref="D65"  Part="1" 
F 0 "D31" H 7700 3350 50  0000 C CNN
F 1 "1N914" H 7700 3150 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7700 3250 50  0001 C CNN
F 3 "" H 7700 3250 50  0000 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D33
U 1 1 5885CCFD
P 8200 3250
AR Path="/58859326/5885CCFD" Ref="D33"  Part="1" 
AR Path="/58863E32/5885CCFD" Ref="D67"  Part="1" 
F 0 "D33" H 8200 3350 50  0000 C CNN
F 1 "1N914" H 8200 3150 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 8200 3250 50  0001 C CNN
F 3 "" H 8200 3250 50  0000 C CNN
	1    8200 3250
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R16
U 1 1 5885CD03
P 7950 2800
AR Path="/58859326/5885CD03" Ref="R16"  Part="1" 
AR Path="/58863E32/5885CD03" Ref="R36"  Part="1" 
F 0 "R16" V 7900 2950 60  0000 C CNN
F 1 "100K" V 8000 3000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7950 2800 60  0001 C CNN
F 3 "" H 7950 2800 60  0000 C CNN
	1    7950 2800
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R19
U 1 1 5885CD09
P 8700 2650
AR Path="/58859326/5885CD09" Ref="R19"  Part="1" 
AR Path="/58863E32/5885CD09" Ref="R39"  Part="1" 
F 0 "R19" V 8700 2800 60  0000 C CNN
F 1 "10K" V 8800 2800 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8700 2650 60  0001 C CNN
F 3 "" H 8700 2650 60  0000 C CNN
	1    8700 2650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR026
U 1 1 5885CD0F
P 8700 3450
AR Path="/58859326/5885CD0F" Ref="#PWR026"  Part="1" 
AR Path="/58863E32/5885CD0F" Ref="#PWR46"  Part="1" 
F 0 "#PWR026" H 8700 3200 50  0001 C CNN
F 1 "GND" H 8700 3300 50  0000 C CNN
F 2 "" H 8700 3450 50  0000 C CNN
F 3 "" H 8700 3450 50  0000 C CNN
	1    8700 3450
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR027
U 1 1 5885CD15
P 8800 2450
AR Path="/58859326/5885CD15" Ref="#PWR027"  Part="1" 
AR Path="/58863E32/5885CD15" Ref="#PWR47"  Part="1" 
F 0 "#PWR027" H 8800 2300 50  0001 C CNN
F 1 "+15V0" H 8800 2600 50  0000 C CNN
F 2 "" H 8800 2450 50  0000 C CNN
F 3 "" H 8800 2450 50  0000 C CNN
	1    8800 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 3100 7950 3250
Wire Wire Line
	7850 3250 8050 3250
Connection ~ 7950 3250
Wire Wire Line
	8700 2950 8700 3050
Wire Wire Line
	8700 2550 8700 2450
Wire Wire Line
	7950 2450 8800 2450
Wire Wire Line
	7950 2450 7950 2700
Wire Wire Line
	8400 3250 8350 3250
Connection ~ 8700 2450
Wire Wire Line
	9500 3000 8700 3000
Connection ~ 8700 3000
Wire Wire Line
	9600 1350 8850 1350
Connection ~ 8850 1350
Wire Wire Line
	6450 3500 6450 4150
Wire Wire Line
	2950 1200 3950 1200
Wire Wire Line
	3950 1200 3950 5800
Wire Wire Line
	3950 1700 4250 1700
Connection ~ 2950 1200
Wire Wire Line
	3950 3650 4150 3650
Connection ~ 3950 1700
Wire Wire Line
	3950 5800 7000 5800
Connection ~ 3950 3650
Wire Wire Line
	4250 1950 3800 1950
Wire Wire Line
	3800 1950 3800 6050
Wire Wire Line
	3800 2650 2950 2650
Connection ~ 2950 2650
Wire Wire Line
	3800 3900 4150 3900
Connection ~ 3800 2650
Wire Wire Line
	3800 6050 7000 6050
Connection ~ 3800 3900
Wire Wire Line
	4250 2200 3650 2200
Wire Wire Line
	3650 2200 3650 6300
Wire Wire Line
	3650 4050 2900 4050
Connection ~ 2900 4050
Wire Wire Line
	3650 4150 4150 4150
Connection ~ 3650 4050
Wire Wire Line
	3650 6300 7000 6300
Connection ~ 3650 4150
Wire Wire Line
	2850 5400 3550 5400
Wire Wire Line
	3550 5400 3550 6500
Wire Wire Line
	3550 6500 7000 6500
Connection ~ 2850 5400
Wire Wire Line
	1350 5650 1350 6400
Wire Wire Line
	1350 6400 3400 6400
Wire Wire Line
	3400 6400 3400 2400
Wire Wire Line
	3400 4350 4150 4350
Connection ~ 1350 5650
Wire Wire Line
	3400 2400 4250 2400
Connection ~ 3400 4350
Wire Wire Line
	3950 2650 7200 2650
Wire Wire Line
	7200 1700 7200 3650
Wire Wire Line
	7200 1700 6950 1700
Connection ~ 3950 2650
Wire Wire Line
	7200 3650 6850 3650
Connection ~ 7200 2650
Wire Wire Line
	1450 2900 1450 3350
Wire Wire Line
	1450 3350 3550 3350
Wire Wire Line
	3550 3350 3550 4600
Wire Wire Line
	3550 4600 7400 4600
Wire Wire Line
	7400 4600 7400 1950
Wire Wire Line
	7400 1950 6950 1950
Connection ~ 1450 2900
Wire Wire Line
	3800 4750 7150 4750
Wire Wire Line
	7150 4750 7150 3900
Wire Wire Line
	7150 3900 6850 3900
Connection ~ 3800 4750
Wire Wire Line
	1400 4300 1400 4700
Wire Wire Line
	1400 4700 3550 4700
Wire Wire Line
	3550 4700 3550 4900
Wire Wire Line
	3550 4900 7000 4900
Wire Wire Line
	7000 4900 7000 4150
Wire Wire Line
	7000 4150 6850 4150
Connection ~ 1400 4300
Wire Wire Line
	5700 3000 6800 3000
Wire Wire Line
	6800 3000 6800 3250
Wire Wire Line
	6800 3250 7550 3250
Connection ~ 5700 3400
Wire Wire Line
	5800 1050 7100 1050
Wire Wire Line
	7100 1050 7100 1600
Wire Wire Line
	7100 1600 7700 1600
Connection ~ 5800 1450
$EndSCHEMATC
