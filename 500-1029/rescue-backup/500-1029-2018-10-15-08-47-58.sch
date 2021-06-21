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
LIBS:500-1029-cache
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
L DUAL_2N3904 Q2
U 1 1 5B452754
P 3700 2450
F 0 "Q2" V 3600 2250 60  0000 C CNN
F 1 "2N3904" V 3900 2450 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 3700 2350 60  0001 C CNN
F 3 "" H 3700 2350 60  0000 C CNN
	1    3700 2450
	0    -1   -1   0   
$EndComp
$Comp
L DUAL_2N3904 Q2
U 2 1 5B452780
P 4500 2450
F 0 "Q2" V 4350 2300 60  0000 C CNN
F 1 "2N3904" V 4750 2450 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4500 2350 60  0001 C CNN
F 3 "" H 4500 2350 60  0000 C CNN
	2    4500 2450
	0    1    -1   0   
$EndComp
$Comp
L DUAL_2N3906 Q3
U 1 1 5B4527BB
P 3700 3300
F 0 "Q3" V 3600 3500 60  0000 C CNN
F 1 "2N3906" V 3950 3300 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 3700 3100 60  0001 C CNN
F 3 "" H 3700 3100 60  0000 C CNN
	1    3700 3300
	0    1    1    0   
$EndComp
$Comp
L DUAL_2N3906 Q3
U 2 1 5B45282B
P 4500 3300
F 0 "Q3" V 4850 3250 60  0000 C CNN
F 1 "2N3906" V 4750 3250 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4500 3100 60  0001 C CNN
F 3 "" H 4500 3100 60  0000 C CNN
	2    4500 3300
	0    -1   1    0   
$EndComp
$Comp
L GENDUALOPAMP U2
U 1 2 5B452861
P 5550 3200
F 0 "U2" H 5624 3402 60  0000 C CNN
F 1 "TL052" H 5630 3328 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 5550 3200 60  0001 C CNN
F 3 "" H 5550 3200 60  0000 C CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2350 4300 2350
Wire Wire Line
	3900 3400 4300 3400
Wire Wire Line
	3500 2350 3300 2350
Wire Wire Line
	3300 2350 3300 4050
Wire Wire Line
	3300 3400 3500 3400
Wire Wire Line
	4700 2350 4900 2350
Wire Wire Line
	4900 2350 4900 3400
Wire Wire Line
	4900 3400 4700 3400
Wire Wire Line
	4100 2350 4100 3400
Connection ~ 4100 3400
Connection ~ 4100 2350
Wire Wire Line
	3700 3050 3700 3100
Wire Wire Line
	4500 3050 4500 3100
Wire Wire Line
	4500 2700 4500 2650
Wire Wire Line
	3700 2700 3700 2650
Wire Wire Line
	3700 2700 4500 3050
Wire Wire Line
	4500 2700 3700 3050
Wire Wire Line
	4900 2750 5350 2750
Connection ~ 4900 2750
Wire Wire Line
	5250 3000 5250 2850
Wire Wire Line
	5250 2850 5350 2850
$Comp
L GND #PWR01
U 1 1 5B452B2F
P 5250 3000
F 0 "#PWR01" H 5250 2750 50  0001 C CNN
F 1 "GND" H 5250 2850 50  0000 C CNN
F 2 "" H 5250 3000 50  0001 C CNN
F 3 "" H 5250 3000 50  0001 C CNN
	1    5250 3000
	1    0    0    -1  
$EndComp
$Comp
L Cap C3
U 1 1 5B452B66
P 5700 2400
F 0 "C3" H 5725 2500 50  0000 L CNN
F 1 "Cap" H 5725 2300 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 5738 2250 50  0001 C CNN
F 3 "" H 5700 2400 50  0000 C CNN
	1    5700 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2400 5300 2400
Wire Wire Line
	5300 2050 5300 2750
Connection ~ 5300 2750
Wire Wire Line
	6150 2400 5850 2400
Wire Wire Line
	6150 2050 6150 2800
Wire Wire Line
	6000 2800 6200 2800
Connection ~ 5300 2400
Connection ~ 6150 2400
$Comp
L RESISTOR R16
U 1 1 5B452E8B
P 4950 1750
F 0 "R16" H 4950 1450 60  0000 C CNN
F 1 "4.99K" H 5100 1550 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4950 1750 60  0001 C CNN
F 3 "" H 4950 1750 60  0000 C CNN
	1    4950 1750
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R11
U 1 1 5B452F0C
P 4200 3650
F 0 "R11" V 4450 3750 60  0000 C CNN
F 1 "10K" V 4350 3800 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4200 3650 60  0001 C CNN
F 3 "" H 4200 3650 60  0000 C CNN
	1    4200 3650
	0    1    1    0   
$EndComp
$Comp
L Cap C2
U 1 1 5B4530C3
P 3750 1650
F 0 "C2" H 3775 1750 50  0000 L CNN
F 1 "Cap" H 3775 1550 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 3788 1500 50  0001 C CNN
F 3 "" H 3750 1650 50  0000 C CNN
	1    3750 1650
	0    -1   -1   0   
$EndComp
$Comp
L D_ALT D2
U 1 1 5B453183
P 4050 1900
F 0 "D2" H 4050 2000 50  0000 C CNN
F 1 "1N914" H 4050 1800 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 4050 1900 50  0001 C CNN
F 3 "" H 4050 1900 50  0001 C CNN
	1    4050 1900
	0    1    -1   0   
$EndComp
$Comp
L RESISTOR R12
U 1 1 5B4531C2
P 4950 1250
F 0 "R12" H 5050 1150 60  0000 C CNN
F 1 "10K" H 5000 1350 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4950 1250 60  0001 C CNN
F 3 "" H 4950 1250 60  0000 C CNN
	1    4950 1250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5B453285
P 4950 2050
F 0 "#PWR02" H 4950 1800 50  0001 C CNN
F 1 "GND" H 4950 1900 50  0000 C CNN
F 2 "" H 4950 2050 50  0001 C CNN
F 3 "" H 4950 2050 50  0001 C CNN
	1    4950 2050
	1    0    0    -1  
$EndComp
$Comp
L NPN Q1
U 1 1 5B4532AC
P 3150 1900
F 0 "Q1" H 3450 1950 50  0000 R CNN
F 1 "2N3904" H 3600 1850 50  0000 R CNN
F 2 "FootPrints:TO92" H 3350 2000 50  0001 C CNN
F 3 "" H 3150 1900 50  0000 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R2
U 1 1 5B453313
P 2550 1900
F 0 "R2" H 2600 1800 60  0000 C CNN
F 1 "100K" H 2650 2000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2550 1900 60  0001 C CNN
F 3 "" H 2550 1900 60  0000 C CNN
	1    2550 1900
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R8
U 1 1 5B453396
P 3250 1250
F 0 "R8" H 3250 950 60  0000 C CNN
F 1 "3.3K" H 3400 1050 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3250 1250 60  0001 C CNN
F 3 "" H 3250 1250 60  0000 C CNN
	1    3250 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 1550 3250 1700
Wire Wire Line
	3250 1650 3600 1650
Connection ~ 3250 1650
Wire Wire Line
	3900 1650 4200 1650
Wire Wire Line
	4050 1750 4050 1650
Connection ~ 4050 1650
$Comp
L GND #PWR03
U 1 1 5B4535D0
P 4050 2050
F 0 "#PWR03" H 4050 1800 50  0001 C CNN
F 1 "GND" H 4050 1900 50  0000 C CNN
F 2 "" H 4050 2050 50  0001 C CNN
F 3 "" H 4050 2050 50  0001 C CNN
	1    4050 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5B45360B
P 3250 2100
F 0 "#PWR04" H 3250 1850 50  0001 C CNN
F 1 "GND" H 3250 1950 50  0000 C CNN
F 2 "" H 3250 2100 50  0001 C CNN
F 3 "" H 3250 2100 50  0001 C CNN
	1    3250 2100
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR05
U 1 1 5B453638
P 3250 1150
F 0 "#PWR05" H 3250 1000 50  0001 C CNN
F 1 "+15V0" H 3250 1300 50  0000 C CNN
F 2 "" H 3250 1150 50  0000 C CNN
F 3 "" H 3250 1150 50  0000 C CNN
	1    3250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1900 2950 1900
$Comp
L D_ALT D1
U 1 1 5B4536B9
P 2950 2100
F 0 "D1" H 2950 2200 50  0000 C CNN
F 1 "1N914" H 2950 2000 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 2950 2100 50  0001 C CNN
F 3 "" H 2950 2100 50  0001 C CNN
	1    2950 2100
	0    -1   1    0   
$EndComp
Wire Wire Line
	2950 1900 2950 1950
$Comp
L GND #PWR06
U 1 1 5B453765
P 2950 2250
F 0 "#PWR06" H 2950 2000 50  0001 C CNN
F 1 "GND" H 2950 2100 50  0000 C CNN
F 2 "" H 2950 2250 50  0001 C CNN
F 3 "" H 2950 2250 50  0001 C CNN
	1    2950 2250
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U1
U 1 2 5B4537D6
P 3550 4500
F 0 "U1" H 3624 4702 60  0000 C CNN
F 1 "TL052" H 3630 4628 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 3550 4500 60  0001 C CNN
F 3 "" H 3550 4500 60  0000 C CNN
	1    3550 4500
	1    0    0    -1  
$EndComp
$Comp
L Cap C1
U 1 1 5B4538C2
P 3700 3750
F 0 "C1" V 3650 3550 50  0000 L CNN
F 1 "100pF" V 3550 3550 50  0000 L CNN
F 2 "FootPrints:CAP-0.1" H 3738 3600 50  0001 C CNN
F 3 "" H 3700 3750 50  0000 C CNN
	1    3700 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3550 4200 3400
Connection ~ 4200 3400
Wire Wire Line
	4000 4100 4200 4100
Wire Wire Line
	4200 4100 4200 3950
Wire Wire Line
	3850 3750 4100 3750
Wire Wire Line
	4100 3750 4100 4100
Connection ~ 4100 4100
Wire Wire Line
	3300 4050 3350 4050
Connection ~ 3300 3400
Wire Wire Line
	3550 3750 3300 3750
Connection ~ 3300 3750
Wire Wire Line
	3300 4250 3300 4150
Wire Wire Line
	3300 4150 3350 4150
$Comp
L Phone_Jack_wSw-PCB J3
U 1 1 5B453C92
P 1800 2300
F 0 "J3" H 1800 2300 60  0000 C CNN
F 1 "SYNC" H 1800 2300 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 1800 2300 60  0001 C CNN
F 3 "" H 1800 2300 60  0000 C CNN
	1    1800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1900 2450 1900
Wire Wire Line
	2250 2200 2250 2100
Wire Wire Line
	2250 2100 2200 2100
$Comp
L GND #PWR07
U 1 1 5B453DE7
P 2250 2200
F 0 "#PWR07" H 2250 1950 50  0001 C CNN
F 1 "GND" H 2250 2050 50  0000 C CNN
F 2 "" H 2250 2200 50  0001 C CNN
F 3 "" H 2250 2200 50  0001 C CNN
	1    2250 2200
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U2
U 2 2 5B453ECE
P 7000 3250
F 0 "U2" H 7074 3452 60  0000 C CNN
F 1 "TL052" H 7080 3378 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 7000 3250 60  0001 C CNN
F 3 "" H 7000 3250 60  0000 C CNN
	2    7000 3250
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R15
U 1 1 5B453F4B
P 6300 2800
F 0 "R15" H 6300 2500 60  0000 C CNN
F 1 "10K" H 6450 2600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6300 2800 60  0001 C CNN
F 3 "" H 6300 2800 60  0000 C CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R18
U 1 1 5B453FE9
P 7050 3200
F 0 "R18" H 7050 2900 60  0000 C CNN
F 1 "20K" H 7200 3000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7050 3200 60  0001 C CNN
F 3 "" H 7050 3200 60  0000 C CNN
	1    7050 3200
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R17
U 1 1 5B454098
P 6700 3400
F 0 "R17" H 6700 3100 60  0000 C CNN
F 1 "10K" H 6850 3200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6700 3400 60  0001 C CNN
F 3 "" H 6700 3400 60  0000 C CNN
	1    6700 3400
	0    1    1    0   
$EndComp
Connection ~ 6150 2800
Wire Wire Line
	6600 2800 6800 2800
Wire Wire Line
	6700 2900 6700 3300
Wire Wire Line
	6700 3200 6950 3200
Wire Wire Line
	6700 2900 6800 2900
Connection ~ 6700 3200
Wire Wire Line
	6700 3750 6700 3700
$Comp
L GND #PWR08
U 1 1 5B4543DA
P 6700 3750
F 0 "#PWR08" H 6700 3500 50  0001 C CNN
F 1 "GND" H 6700 3600 50  0000 C CNN
F 2 "" H 6700 3750 50  0001 C CNN
F 3 "" H 6700 3750 50  0001 C CNN
	1    6700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3200 7550 3200
Wire Wire Line
	7500 3200 7500 2850
Wire Wire Line
	7450 2850 7600 2850
$Comp
L D_Zener_ALT D4
U 1 1 5B454479
P 8200 3050
F 0 "D4" H 8200 3150 50  0000 C CNN
F 1 "D_Zener_ALT" H 8200 2950 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 8200 3050 50  0001 C CNN
F 3 "" H 8200 3050 50  0001 C CNN
	1    8200 3050
	0    1    1    0   
$EndComp
$Comp
L D_Zener_ALT D5
U 1 1 5B454543
P 8200 3400
F 0 "D5" H 8200 3500 50  0000 C CNN
F 1 "D_Zener_ALT" H 8200 3300 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 8200 3400 50  0001 C CNN
F 3 "" H 8200 3400 50  0001 C CNN
	1    8200 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 3200 8200 3250
$Comp
L RESISTOR R20
U 1 1 5B454772
P 7700 2850
F 0 "R20" H 7700 2550 60  0000 C CNN
F 1 "2.2K" H 7850 2650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7700 2850 60  0001 C CNN
F 3 "" H 7700 2850 60  0000 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
Connection ~ 7500 2850
Wire Wire Line
	8000 2850 8700 2850
Wire Wire Line
	8200 2850 8200 2900
$Comp
L GND #PWR09
U 1 1 5B4548BF
P 8200 3550
F 0 "#PWR09" H 8200 3300 50  0001 C CNN
F 1 "GND" H 8200 3400 50  0000 C CNN
F 2 "" H 8200 3550 50  0001 C CNN
F 3 "" H 8200 3550 50  0001 C CNN
	1    8200 3550
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R3
U 1 1 5B45496C
P 2850 2900
F 0 "R3" H 2950 3100 60  0000 C CNN
F 1 "10K" H 3000 3000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2850 2900 60  0001 C CNN
F 3 "" H 2850 2900 60  0000 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2900 3300 2900
Connection ~ 3300 2900
Wire Wire Line
	2750 2900 2600 2900
Wire Wire Line
	2600 2900 2600 4550
Wire Wire Line
	2600 4550 8550 4550
Wire Wire Line
	8550 4550 8550 2850
Connection ~ 8200 2850
$Comp
L RESISTOR R22
U 1 1 5B454B63
P 8800 2850
F 0 "R22" H 8800 2550 60  0000 C CNN
F 1 "1K" H 8950 2650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8800 2850 60  0001 C CNN
F 3 "" H 8800 2850 60  0000 C CNN
	1    8800 2850
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J5
U 1 1 5B454C02
P 9650 3250
F 0 "J5" H 9650 3250 60  0000 C CNN
F 1 "SQUARE" H 9650 3250 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 9650 3250 60  0001 C CNN
F 3 "" H 9650 3250 60  0000 C CNN
	1    9650 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9250 2850 9100 2850
Connection ~ 8550 2850
Wire Wire Line
	9150 3150 9150 3050
Wire Wire Line
	9150 3050 9250 3050
$Comp
L GND #PWR010
U 1 1 5B454F85
P 9150 3150
F 0 "#PWR010" H 9150 2900 50  0001 C CNN
F 1 "GND" H 9150 3000 50  0000 C CNN
F 2 "" H 9150 3150 50  0001 C CNN
F 3 "" H 9150 3150 50  0001 C CNN
	1    9150 3150
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J4
U 1 1 5B455026
P 9650 2600
F 0 "J4" H 9650 2600 60  0000 C CNN
F 1 "TRIANGLE" H 9650 2600 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 9650 2600 60  0001 C CNN
F 3 "" H 9650 2600 60  0000 C CNN
	1    9650 2600
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R21
U 1 1 5B4550EC
P 8750 2200
F 0 "R21" H 8750 1900 60  0000 C CNN
F 1 "1K" H 8900 2000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8750 2200 60  0001 C CNN
F 3 "" H 8750 2200 60  0000 C CNN
	1    8750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2200 9050 2200
Wire Wire Line
	9150 2500 9150 2400
Wire Wire Line
	9150 2400 9250 2400
Wire Wire Line
	8650 2200 6150 2200
Connection ~ 6150 2200
$Comp
L GND #PWR011
U 1 1 5B455373
P 9150 2500
F 0 "#PWR011" H 9150 2250 50  0001 C CNN
F 1 "GND" H 9150 2350 50  0000 C CNN
F 2 "" H 9150 2500 50  0001 C CNN
F 3 "" H 9150 2500 50  0001 C CNN
	1    9150 2500
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J2
U 1 1 5B45543E
P 1750 5500
F 0 "J2" H 1750 5500 60  0000 C CNN
F 1 "CV1" H 1750 5500 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 1750 5500 60  0001 C CNN
F 3 "" H 1750 5500 60  0000 C CNN
	1    1750 5500
	1    0    0    -1  
$EndComp
$Comp
L Phone_Jack_wSw-PCB J1
U 1 1 5B4555D6
P 1700 6250
F 0 "J1" H 1700 6250 60  0000 C CNN
F 1 "CV2" H 1700 6250 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 1700 6250 60  0001 C CNN
F 3 "" H 1700 6250 60  0000 C CNN
	1    1700 6250
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U1
U 2 2 5B456515
P 3550 5950
F 0 "U1" H 3624 6152 60  0000 C CNN
F 1 "TL052" H 3630 6078 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 3550 5950 60  0001 C CNN
F 3 "" H 3550 5950 60  0000 C CNN
	2    3550 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5B4557F9
P 3300 4250
F 0 "#PWR012" H 3300 4000 50  0001 C CNN
F 1 "GND" H 3300 4100 50  0000 C CNN
F 2 "" H 3300 4250 50  0001 C CNN
F 3 "" H 3300 4250 50  0001 C CNN
	1    3300 4250
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R10
U 1 1 5B4558FB
P 3500 5150
F 0 "R10" H 3550 5300 60  0000 C CNN
F 1 "100K" H 3750 5300 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3500 5150 60  0001 C CNN
F 3 "" H 3500 5150 60  0000 C CNN
	1    3500 5150
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R4
U 1 1 5B4559D9
P 2900 5500
F 0 "R4" H 2900 5200 60  0000 C CNN
F 1 "100K" H 3050 5300 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2900 5500 60  0001 C CNN
F 3 "" H 2900 5500 60  0000 C CNN
	1    2900 5500
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R7
U 1 1 5B455A7A
P 2950 5100
F 0 "R7" H 3000 5000 60  0000 C CNN
F 1 "100K" H 3100 4900 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2950 5100 60  0001 C CNN
F 3 "" H 2950 5100 60  0000 C CNN
	1    2950 5100
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R6
U 1 1 5B455B0A
P 2950 4700
F 0 "R6" H 2950 4400 60  0000 C CNN
F 1 "100K" H 3100 4500 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2950 4700 60  0001 C CNN
F 3 "" H 2950 4700 60  0000 C CNN
	1    2950 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4700 3300 4700
Wire Wire Line
	3300 4700 3300 5500
Wire Wire Line
	3300 5100 3250 5100
Wire Wire Line
	3300 5150 3400 5150
Connection ~ 3300 5100
Wire Wire Line
	3200 5500 3350 5500
Connection ~ 3300 5150
Connection ~ 3300 5500
Wire Wire Line
	2100 5850 2400 5850
Wire Wire Line
	2400 5850 2400 5500
Wire Wire Line
	2400 5500 2800 5500
Wire Wire Line
	2150 5100 2850 5100
Wire Wire Line
	2250 5200 2250 6100
Wire Wire Line
	2250 5200 2150 5200
Wire Wire Line
	2150 5300 2250 5300
Connection ~ 2250 5300
Wire Wire Line
	2100 5950 2250 5950
Connection ~ 2250 5950
Wire Wire Line
	2100 6050 2250 6050
Connection ~ 2250 6050
Wire Wire Line
	3300 5700 3300 5600
Wire Wire Line
	3300 5600 3350 5600
$Comp
L GND #PWR013
U 1 1 5B456303
P 3300 5700
F 0 "#PWR013" H 3300 5450 50  0001 C CNN
F 1 "GND" H 3300 5550 50  0000 C CNN
F 2 "" H 3300 5700 50  0001 C CNN
F 3 "" H 3300 5700 50  0001 C CNN
	1    3300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5550 4150 5550
Wire Wire Line
	4150 5550 4150 5150
Wire Wire Line
	3800 5150 5050 5150
$Comp
L GND #PWR014
U 1 1 5B456420
P 2250 6100
F 0 "#PWR014" H 2250 5850 50  0001 C CNN
F 1 "GND" H 2250 5950 50  0000 C CNN
F 2 "" H 2250 6100 50  0001 C CNN
F 3 "" H 2250 6100 50  0001 C CNN
	1    2250 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3050 5050 3050
Wire Wire Line
	5050 3050 5050 3700
$Comp
L RESISTOR R13
U 1 1 5B456873
P 5050 3800
F 0 "R13" H 5050 3500 60  0000 C CNN
F 1 "10K" H 5200 3600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5050 3800 60  0001 C CNN
F 3 "" H 5050 3800 60  0000 C CNN
	1    5050 3800
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R14
U 1 1 5B45691D
P 5450 3850
F 0 "R14" H 5450 3550 60  0000 C CNN
F 1 "182" H 5600 3650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5450 3850 60  0001 C CNN
F 3 "" H 5450 3850 60  0000 C CNN
	1    5450 3850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR015
U 1 1 5B4569B4
P 5450 4150
F 0 "#PWR015" H 5450 3900 50  0001 C CNN
F 1 "GND" H 5450 4000 50  0000 C CNN
F 2 "" H 5450 4150 50  0001 C CNN
F 3 "" H 5450 4150 50  0001 C CNN
	1    5450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3750 5450 3650
Wire Wire Line
	5450 3650 5050 3650
Connection ~ 5050 3650
Wire Wire Line
	5050 5150 5050 4100
Connection ~ 4150 5150
$Comp
L RESISTOR R9
U 1 1 5B456C33
P 3500 4800
F 0 "R9" H 3550 4950 60  0000 C CNN
F 1 "150K" H 3750 4950 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3500 4800 60  0001 C CNN
F 3 "" H 3500 4800 60  0000 C CNN
	1    3500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4800 3300 4800
Connection ~ 3300 4800
Wire Wire Line
	3900 4800 3800 4800
$Comp
L -15V0 #PWR016
U 1 1 5B456DFC
P 3900 4800
F 0 "#PWR016" H 3900 4650 50  0001 C CNN
F 1 "-15V0" V 3900 5050 50  0000 C CNN
F 2 "" H 3900 4800 50  0000 C CNN
F 3 "" H 3900 4800 50  0000 C CNN
	1    3900 4800
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R5
U 1 1 5B456FF5
P 2950 3300
F 0 "R5" H 2950 3000 60  0000 C CNN
F 1 "182" H 3100 3100 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2950 3300 60  0001 C CNN
F 3 "" H 2950 3300 60  0000 C CNN
	1    2950 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3050 2950 3050
Wire Wire Line
	2950 3050 2950 3200
$Comp
L GND #PWR017
U 1 1 5B4571C5
P 2950 3600
F 0 "#PWR017" H 2950 3350 50  0001 C CNN
F 1 "GND" H 2950 3450 50  0000 C CNN
F 2 "" H 2950 3600 50  0001 C CNN
F 3 "" H 2950 3600 50  0001 C CNN
	1    2950 3600
	1    0    0    -1  
$EndComp
Connection ~ 3700 3050
Connection ~ 4500 3050
Connection ~ 2950 1900
$Comp
L Alpha9mmPotRAtoVert R1
U 1 1 5B458047
P 1400 4600
F 0 "R1" H 1450 4200 60  0000 C CNN
F 1 "Alpha9mmPotRAtoVert" H 1600 4300 60  0000 C CNN
F 2 "FootPrints:IDC5X1" H 1200 4500 60  0001 C CNN
F 3 "" H 1200 4500 60  0000 C CNN
	1    1400 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 4700 2400 4700
Wire Wire Line
	2400 4700 2400 4500
Wire Wire Line
	2400 4500 1600 4500
Wire Wire Line
	2100 4700 2100 4400
Wire Wire Line
	2100 4400 1600 4400
$Comp
L +15V0 #PWR018
U 1 1 5B4583A3
P 1650 4600
F 0 "#PWR018" H 1650 4450 50  0001 C CNN
F 1 "+15V0" V 1650 4850 50  0000 C CNN
F 2 "" H 1650 4600 50  0000 C CNN
F 3 "" H 1650 4600 50  0000 C CNN
	1    1650 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 4600 1600 4600
$Comp
L GND #PWR019
U 1 1 5B45864C
P 2100 4700
F 0 "#PWR019" H 2100 4450 50  0001 C CNN
F 1 "GND" H 2100 4550 50  0000 C CNN
F 2 "" H 2100 4700 50  0001 C CNN
F 3 "" H 2100 4700 50  0001 C CNN
	1    2100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4700 2100 4700
Connection ~ 2100 4700
Wire Wire Line
	1600 4800 1900 4800
Wire Wire Line
	1900 4800 1900 4950
Wire Wire Line
	1900 4950 2250 4950
Wire Wire Line
	2250 4950 2250 4600
Wire Wire Line
	2250 4600 7550 4600
Wire Wire Line
	7550 4600 7550 3900
$Comp
L RESISTOR R19
U 1 1 5B458BE6
P 7550 3600
F 0 "R19" H 7550 3300 60  0000 C CNN
F 1 "RESISTOR" H 7700 3400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7550 3600 60  0001 C CNN
F 3 "" H 7550 3600 60  0000 C CNN
	1    7550 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 3200 7550 3500
Connection ~ 7500 3200
$Comp
L D_ALT D3
U 1 1 5B458D3D
P 7800 4100
F 0 "D3" H 7800 4200 50  0000 C CNN
F 1 "1N914" H 7800 4000 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7800 4100 50  0001 C CNN
F 3 "" H 7800 4100 50  0001 C CNN
	1    7800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4100 7550 4100
Connection ~ 7550 4100
Wire Wire Line
	8000 4200 8000 4100
Wire Wire Line
	8000 4100 7950 4100
$Comp
L GND #PWR020
U 1 1 5B459042
P 8000 4200
F 0 "#PWR020" H 8000 3950 50  0001 C CNN
F 1 "GND" H 8000 4050 50  0000 C CNN
F 2 "" H 8000 4200 50  0001 C CNN
F 3 "" H 8000 4200 50  0001 C CNN
	1    8000 4200
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U2
U 3 2 5B4556F5
P 6500 5300
F 0 "U2" H 6574 5502 60  0000 C CNN
F 1 "TL052" H 6580 5428 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 6500 5300 60  0001 C CNN
F 3 "" H 6500 5300 60  0000 C CNN
	3    6500 5300
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C5
U 1 1 5B4558C0
P 6250 5100
F 0 "C5" H 6275 5200 50  0000 L CNN
F 1 "0.1uF" H 6275 5000 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 6288 4950 50  0001 C CNN
F 3 "" H 6250 5100 50  0000 C CNN
	1    6250 5100
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C7
U 1 1 5B455A4E
P 7000 5100
F 0 "C7" H 7025 5200 50  0000 L CNN
F 1 "0.1uF" H 7025 5000 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 7038 4950 50  0001 C CNN
F 3 "" H 7000 5100 50  0000 C CNN
	1    7000 5100
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR021
U 1 1 5B455ADC
P 6200 4900
F 0 "#PWR021" H 6200 4750 50  0001 C CNN
F 1 "+15V0" V 6200 5150 50  0000 C CNN
F 2 "" H 6200 4900 50  0000 C CNN
F 3 "" H 6200 4900 50  0000 C CNN
	1    6200 4900
	0    -1   -1   0   
$EndComp
$Comp
L -15V0 #PWR022
U 1 1 5B455C8C
P 7050 4900
F 0 "#PWR022" H 7050 4750 50  0001 C CNN
F 1 "-15V0" V 7050 5150 50  0000 C CNN
F 2 "" H 7050 4900 50  0000 C CNN
F 3 "" H 7050 4900 50  0000 C CNN
	1    7050 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 4900 6950 4900
Wire Wire Line
	7000 4950 7000 4900
Connection ~ 7000 4900
Wire Wire Line
	6250 4950 6250 4900
Wire Wire Line
	6200 4900 6300 4900
Connection ~ 6250 4900
$Comp
L GND #PWR023
U 1 1 5B456231
P 6250 5250
F 0 "#PWR023" H 6250 5000 50  0001 C CNN
F 1 "GND" H 6250 5100 50  0000 C CNN
F 2 "" H 6250 5250 50  0001 C CNN
F 3 "" H 6250 5250 50  0001 C CNN
	1    6250 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5B456307
P 7000 5250
F 0 "#PWR024" H 7000 5000 50  0001 C CNN
F 1 "GND" H 7000 5100 50  0000 C CNN
F 2 "" H 7000 5250 50  0001 C CNN
F 3 "" H 7000 5250 50  0001 C CNN
	1    7000 5250
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U1
U 3 2 5B456442
P 6450 6000
F 0 "U1" H 6524 6202 60  0000 C CNN
F 1 "TL052" H 6530 6128 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 6450 6000 60  0001 C CNN
F 3 "" H 6450 6000 60  0000 C CNN
	3    6450 6000
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C4
U 1 1 5B456448
P 6200 5800
F 0 "C4" H 6225 5900 50  0000 L CNN
F 1 "0.1uF" H 6225 5700 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 6238 5650 50  0001 C CNN
F 3 "" H 6200 5800 50  0000 C CNN
	1    6200 5800
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C6
U 1 1 5B45644E
P 6950 5800
F 0 "C6" H 6975 5900 50  0000 L CNN
F 1 "0.1uF" H 6975 5700 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 6988 5650 50  0001 C CNN
F 3 "" H 6950 5800 50  0000 C CNN
	1    6950 5800
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR025
U 1 1 5B456454
P 6150 5600
F 0 "#PWR025" H 6150 5450 50  0001 C CNN
F 1 "+15V0" V 6150 5850 50  0000 C CNN
F 2 "" H 6150 5600 50  0000 C CNN
F 3 "" H 6150 5600 50  0000 C CNN
	1    6150 5600
	0    -1   -1   0   
$EndComp
$Comp
L -15V0 #PWR026
U 1 1 5B45645A
P 7000 5600
F 0 "#PWR026" H 7000 5450 50  0001 C CNN
F 1 "-15V0" V 7000 5850 50  0000 C CNN
F 2 "" H 7000 5600 50  0000 C CNN
F 3 "" H 7000 5600 50  0000 C CNN
	1    7000 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 5600 6900 5600
Wire Wire Line
	6950 5650 6950 5600
Connection ~ 6950 5600
Wire Wire Line
	6200 5650 6200 5600
Wire Wire Line
	6150 5600 6250 5600
Connection ~ 6200 5600
$Comp
L GND #PWR027
U 1 1 5B456466
P 6200 5950
F 0 "#PWR027" H 6200 5700 50  0001 C CNN
F 1 "GND" H 6200 5800 50  0000 C CNN
F 2 "" H 6200 5950 50  0001 C CNN
F 3 "" H 6200 5950 50  0001 C CNN
	1    6200 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5B45646C
P 6950 5950
F 0 "#PWR028" H 6950 5700 50  0001 C CNN
F 1 "GND" H 6950 5800 50  0000 C CNN
F 2 "" H 6950 5950 50  0001 C CNN
F 3 "" H 6950 5950 50  0001 C CNN
	1    6950 5950
	1    0    0    -1  
$EndComp
$Comp
L EurorackPower16pin P1
U 1 1 5B45538C
P 9400 5350
F 0 "P1" H 9415 4710 60  0000 C CNN
F 1 "EurorackPower16pin" H 9475 4815 60  0000 C CNN
F 2 "FootPrints:IDC8x2_Vert" H 9400 5350 60  0001 C CNN
F 3 "" H 9400 5350 60  0000 C CNN
	1    9400 5350
	1    0    0    -1  
$EndComp
$Comp
L -15V0 #PWR029
U 1 1 5B4554D4
P 9900 5050
F 0 "#PWR029" H 9900 4900 50  0001 C CNN
F 1 "-15V0" V 9900 5300 50  0000 C CNN
F 2 "" H 9900 5050 50  0000 C CNN
F 3 "" H 9900 5050 50  0000 C CNN
	1    9900 5050
	0    1    1    0   
$EndComp
$Comp
L +15V0 #PWR030
U 1 1 5B45557E
P 9100 5450
F 0 "#PWR030" H 9100 5300 50  0001 C CNN
F 1 "+15V0" V 9100 5700 50  0000 C CNN
F 2 "" H 9100 5450 50  0000 C CNN
F 3 "" H 9100 5450 50  0000 C CNN
	1    9100 5450
	0    -1   -1   0   
$EndComp
$Comp
L +15V0 #PWR031
U 1 1 5B455628
P 9950 5450
F 0 "#PWR031" H 9950 5300 50  0001 C CNN
F 1 "+15V0" V 9950 5700 50  0000 C CNN
F 2 "" H 9950 5450 50  0000 C CNN
F 3 "" H 9950 5450 50  0000 C CNN
	1    9950 5450
	0    1    1    0   
$EndComp
$Comp
L -15V0 #PWR032
U 1 1 5B4556D2
P 9050 5050
F 0 "#PWR032" H 9050 4900 50  0001 C CNN
F 1 "-15V0" V 9050 5300 50  0000 C CNN
F 2 "" H 9050 5050 50  0000 C CNN
F 3 "" H 9050 5050 50  0000 C CNN
	1    9050 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 5050 9300 5050
Wire Wire Line
	9100 5450 9300 5450
Wire Wire Line
	9700 5050 9900 5050
Wire Wire Line
	9700 5450 9950 5450
Wire Wire Line
	9700 5150 9800 5150
Wire Wire Line
	9800 5150 9800 6000
Wire Wire Line
	9700 5350 9800 5350
Connection ~ 9800 5350
Wire Wire Line
	9700 5250 9800 5250
Connection ~ 9800 5250
Wire Wire Line
	9300 5150 9200 5150
Wire Wire Line
	9200 5150 9200 5950
Wire Wire Line
	9300 5250 9200 5250
Connection ~ 9200 5250
Wire Wire Line
	9300 5350 9200 5350
Connection ~ 9200 5350
$Comp
L GND #PWR033
U 1 1 5B45608C
P 9200 5950
F 0 "#PWR033" H 9200 5700 50  0001 C CNN
F 1 "GND" H 9200 5800 50  0000 C CNN
F 2 "" H 9200 5950 50  0001 C CNN
F 3 "" H 9200 5950 50  0001 C CNN
	1    9200 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 5B456136
P 9800 6000
F 0 "#PWR034" H 9800 5750 50  0001 C CNN
F 1 "GND" H 9800 5850 50  0000 C CNN
F 2 "" H 9800 6000 50  0001 C CNN
F 3 "" H 9800 6000 50  0001 C CNN
	1    9800 6000
	1    0    0    -1  
$EndComp
$Comp
L DG201 U3
U 1 1 5B46241F
P 5700 2050
F 0 "U3" H 5850 1900 60  0000 C CNN
F 1 "DG201" H 5900 1800 60  0000 C CNN
F 2 "FootPrints:DIP-16.3" H 5900 1650 60  0001 C CNN
F 3 "" H 5900 1650 60  0000 C CNN
	1    5700 2050
	1    0    0    1   
$EndComp
Wire Wire Line
	5500 2050 5300 2050
Wire Wire Line
	5900 2050 6150 2050
Wire Wire Line
	4200 1650 4200 1600
Wire Wire Line
	4200 1600 5700 1600
Wire Wire Line
	4950 1550 4950 1650
Connection ~ 4950 1600
Wire Wire Line
	5700 1600 5700 1850
$Comp
L +15V0 #PWR035
U 1 1 5B462D4A
P 4950 1150
F 0 "#PWR035" H 4950 1000 50  0001 C CNN
F 1 "+15V0" H 4950 1300 50  0000 C CNN
F 2 "" H 4950 1150 50  0000 C CNN
F 3 "" H 4950 1150 50  0000 C CNN
	1    4950 1150
	1    0    0    -1  
$EndComp
$Comp
L DG201 U3
U 5 1 5B462DF8
P 5250 6400
F 0 "U3" H 5400 6250 60  0000 C CNN
F 1 "DG201" H 5450 6150 60  0000 C CNN
F 2 "FootPrints:DIP-16.3" H 5450 6000 60  0001 C CNN
F 3 "" H 5450 6000 60  0000 C CNN
	5    5250 6400
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C9
U 1 1 5B463100
P 5650 6600
F 0 "C9" H 5675 6700 50  0000 L CNN
F 1 "0.1uF" H 5675 6500 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 5688 6450 50  0001 C CNN
F 3 "" H 5650 6600 50  0000 C CNN
	1    5650 6600
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C8
U 1 1 5B4631DC
P 4850 6600
F 0 "C8" H 4875 6700 50  0000 L CNN
F 1 "0.1uF" H 4875 6500 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 4888 6450 50  0001 C CNN
F 3 "" H 4850 6600 50  0000 C CNN
	1    4850 6600
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR036
U 1 1 5B4632E1
P 5750 6400
F 0 "#PWR036" H 5750 6250 50  0001 C CNN
F 1 "+15V0" V 5750 6650 50  0000 C CNN
F 2 "" H 5750 6400 50  0000 C CNN
F 3 "" H 5750 6400 50  0000 C CNN
	1    5750 6400
	0    1    1    0   
$EndComp
$Comp
L -15V0 #PWR037
U 1 1 5B463391
P 4750 6400
F 0 "#PWR037" H 4750 6250 50  0001 C CNN
F 1 "-15V0" V 4750 6650 50  0000 C CNN
F 2 "" H 4750 6400 50  0000 C CNN
F 3 "" H 4750 6400 50  0000 C CNN
	1    4750 6400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR038
U 1 1 5B463441
P 4850 6750
F 0 "#PWR038" H 4850 6500 50  0001 C CNN
F 1 "GND" H 4850 6600 50  0000 C CNN
F 2 "" H 4850 6750 50  0001 C CNN
F 3 "" H 4850 6750 50  0001 C CNN
	1    4850 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 5B4634F1
P 5650 6750
F 0 "#PWR039" H 5650 6500 50  0001 C CNN
F 1 "GND" H 5650 6600 50  0000 C CNN
F 2 "" H 5650 6750 50  0001 C CNN
F 3 "" H 5650 6750 50  0001 C CNN
	1    5650 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6400 4950 6400
Wire Wire Line
	4850 6450 4850 6400
Connection ~ 4850 6400
Wire Wire Line
	5550 6400 5750 6400
Wire Wire Line
	5650 6450 5650 6400
Connection ~ 5650 6400
$Comp
L GND #PWR040
U 1 1 5B463957
P 5250 6600
F 0 "#PWR040" H 5250 6350 50  0001 C CNN
F 1 "GND" H 5250 6450 50  0000 C CNN
F 2 "" H 5250 6600 50  0001 C CNN
F 3 "" H 5250 6600 50  0001 C CNN
	1    5250 6600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
