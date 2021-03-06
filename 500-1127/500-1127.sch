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
LIBS:500-1127-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "500-1127 Duscrete Opamp"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DUAL_2N3904 Q1
U 1 1 5A635C8D
P 4300 3900
F 0 "Q1" H 3950 3800 60  0000 C CNN
F 1 "DUAL_2N3904" H 4100 3725 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4300 3800 60  0001 C CNN
F 3 "" H 4300 3800 60  0000 C CNN
	1    4300 3900
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q4
U 1 1 5A635CDC
P 4300 3250
F 0 "Q4" H 4100 3025 60  0000 C CNN
F 1 "DUAL_2N3906" H 4025 2950 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4300 3050 60  0001 C CNN
F 3 "" H 4300 3050 60  0000 C CNN
	1    4300 3250
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q4
U 2 1 5A635D65
P 4900 3250
F 0 "Q4" H 4700 3025 60  0000 C CNN
F 1 "DUAL_2N3906" H 4625 2950 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4900 3050 60  0001 C CNN
F 3 "" H 4900 3050 60  0000 C CNN
	2    4900 3250
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q1
U 2 1 5A635D90
P 4900 3900
F 0 "Q1" H 4700 3800 60  0000 C CNN
F 1 "DUAL_2N3904" H 4700 3725 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4900 3800 60  0001 C CNN
F 3 "" H 4900 3800 60  0000 C CNN
	2    4900 3900
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q2
U 1 1 5A635DBA
P 5050 2500
F 0 "Q2" H 4850 2275 60  0000 C CNN
F 1 "DUAL_2N3906" H 4775 2200 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 5050 2300 60  0001 C CNN
F 3 "" H 5050 2300 60  0000 C CNN
	1    5050 2500
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q2
U 2 1 5A635DFB
P 4200 2500
F 0 "Q2" H 4000 2275 60  0000 C CNN
F 1 "DUAL_2N3906" H 3925 2200 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4200 2300 60  0001 C CNN
F 3 "" H 4200 2300 60  0000 C CNN
	2    4200 2500
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q3
U 1 1 5A635F58
P 4200 4750
F 0 "Q3" H 4000 4650 60  0000 C CNN
F 1 "DUAL_2N3904" H 4000 4575 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4200 4650 60  0001 C CNN
F 3 "" H 4200 4650 60  0000 C CNN
	1    4200 4750
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q3
U 2 1 5A635FB9
P 5000 4750
F 0 "Q3" H 4800 4650 60  0000 C CNN
F 1 "DUAL_2N3904" H 4800 4575 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 5000 4650 60  0001 C CNN
F 3 "" H 5000 4650 60  0000 C CNN
	2    5000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3250 4100 3250
Wire Wire Line
	3950 3250 3950 3900
Wire Wire Line
	3950 3900 4100 3900
Wire Wire Line
	5100 3250 5300 3250
Wire Wire Line
	5300 3000 5300 3900
Wire Wire Line
	5300 3900 5100 3900
Wire Wire Line
	4400 4100 4400 4200
Wire Wire Line
	4400 4200 4800 4200
Wire Wire Line
	4800 4200 4800 4100
Wire Wire Line
	4400 3050 4400 2950
Wire Wire Line
	4400 2950 4800 2950
Wire Wire Line
	4800 2950 4800 3050
Wire Wire Line
	4400 3700 4400 3650
Wire Wire Line
	4400 3650 4100 3650
Wire Wire Line
	4100 3650 4100 2700
Wire Wire Line
	4800 3700 4800 3650
Wire Wire Line
	4800 3650 5150 3650
Wire Wire Line
	5150 3650 5150 2700
$Comp
L DUAL_2N3906 Q6
U 2 1 5A6360BE
P 4550 2100
F 0 "Q6" H 4900 2200 60  0000 C CNN
F 1 "DUAL_2N3906" H 5100 2100 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4550 1900 60  0001 C CNN
F 3 "" H 4550 1900 60  0000 C CNN
	2    4550 2100
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q6
U 1 1 5A636109
P 3750 2100
F 0 "Q6" H 4100 2250 60  0000 C CNN
F 1 "DUAL_2N3906" H 3950 2150 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 3750 1900 60  0001 C CNN
F 3 "" H 3750 1900 60  0000 C CNN
	1    3750 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 2300 4100 1850
Wire Wire Line
	3650 1850 8050 1850
Wire Wire Line
	4650 1850 4650 1900
Wire Wire Line
	3650 1900 3650 1850
Connection ~ 4100 1850
Wire Wire Line
	5150 1850 5150 2300
Connection ~ 4650 1850
Wire Wire Line
	4400 2500 4850 2500
Wire Wire Line
	3950 2100 4350 2100
Wire Wire Line
	4050 2100 4050 2350
Wire Wire Line
	4050 2350 3650 2350
Wire Wire Line
	3650 2300 3650 5100
Connection ~ 4050 2100
Wire Wire Line
	4650 2300 4650 2950
Connection ~ 4650 2950
$Comp
L DUAL_2N3904 Q5
U 1 1 5A636254
P 4550 5300
F 0 "Q5" H 4350 5200 60  0000 C CNN
F 1 "DUAL_2N3904" H 4350 5125 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4550 5200 60  0001 C CNN
F 3 "" H 4550 5200 60  0000 C CNN
	1    4550 5300
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q5
U 2 1 5A6362A5
P 3750 5300
F 0 "Q5" H 3550 5200 60  0000 C CNN
F 1 "DUAL_2N3904" H 3550 5125 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 3750 5200 60  0001 C CNN
F 3 "" H 3750 5200 60  0000 C CNN
	2    3750 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 5100 4650 4200
Connection ~ 4650 4200
Wire Wire Line
	4800 4750 4400 4750
Wire Wire Line
	4400 3450 4400 3500
Wire Wire Line
	4400 3500 4550 3500
Wire Wire Line
	4550 3500 4550 4750
Wire Wire Line
	4550 4350 4100 4350
Wire Wire Line
	4100 4350 4100 4550
Wire Wire Line
	4800 3450 4800 3500
Wire Wire Line
	4800 3500 4650 3500
Wire Wire Line
	4650 3500 4650 4100
Wire Wire Line
	4650 4100 4700 4100
Wire Wire Line
	4700 4100 4700 4350
Wire Wire Line
	4700 4350 5500 4350
Wire Wire Line
	5100 4350 5100 4550
Wire Wire Line
	4100 4950 4100 5650
Wire Wire Line
	3050 5650 8000 5650
Wire Wire Line
	3650 5650 3650 5500
Wire Wire Line
	4650 5650 4650 5500
Connection ~ 4100 5650
Wire Wire Line
	5100 5650 5100 4950
Connection ~ 4650 5650
Wire Wire Line
	3050 5500 3050 5650
Connection ~ 3650 5650
Wire Wire Line
	3350 5300 3450 5300
Wire Wire Line
	3450 5300 3450 4950
Wire Wire Line
	3050 4550 3050 5100
Wire Wire Line
	4050 4950 4050 5300
Wire Wire Line
	3950 5300 4350 5300
Connection ~ 3450 4950
Connection ~ 4050 5300
Connection ~ 4550 4750
Connection ~ 4550 4350
Wire Wire Line
	4100 2800 4450 2800
Wire Wire Line
	4450 2800 4450 2500
Connection ~ 4450 2500
Connection ~ 4100 2800
Connection ~ 3950 3250
Wire Wire Line
	3450 3000 5300 3000
Connection ~ 5300 3250
Wire Wire Line
	5900 3000 5900 3150
Wire Wire Line
	5900 3100 6300 3100
Wire Wire Line
	6000 2550 5900 2550
Wire Wire Line
	5900 2550 5900 2600
$Comp
L RESISTOR R5
U 1 1 5A636944
P 6300 2050
F 0 "R5" H 6300 1750 60  0000 C CNN
F 1 "100" H 6450 1850 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 6300 2050 60  0001 C CNN
F 3 "" H 6300 2050 60  0000 C CNN
	1    6300 2050
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R4
U 1 1 5A6369DB
P 5950 2050
F 0 "R4" H 5950 1750 60  0000 C CNN
F 1 "10K" H 6100 1850 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 5950 2050 60  0001 C CNN
F 3 "" H 5950 2050 60  0000 C CNN
	1    5950 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 1850 5950 1950
Connection ~ 5150 1850
Wire Wire Line
	6300 1850 6300 1950
Connection ~ 5950 1850
Wire Wire Line
	5950 2350 5950 2550
Connection ~ 5950 2550
Wire Wire Line
	5150 2800 5600 2800
Connection ~ 5150 2800
Connection ~ 6300 3100
Connection ~ 5100 4350
Wire Wire Line
	5800 4550 5800 5050
Wire Wire Line
	5800 4700 6000 4700
$Comp
L RESISTOR R6
U 1 1 5A636E63
P 6300 5150
F 0 "R6" H 6300 4850 60  0000 C CNN
F 1 "100" H 6450 4950 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 6300 5150 60  0001 C CNN
F 3 "" H 6300 5150 60  0000 C CNN
	1    6300 5150
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R1
U 1 1 5A636F1B
P 5800 5150
F 0 "R1" H 5800 4850 60  0000 C CNN
F 1 "10K" H 5950 4950 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 5800 5150 60  0001 C CNN
F 3 "" H 5800 5150 60  0000 C CNN
	1    5800 5150
	0    1    1    0   
$EndComp
Connection ~ 5800 4700
$Comp
L RESISTOR R3
U 1 1 5A63707E
P 5900 3750
F 0 "R3" H 5900 3450 60  0000 C CNN
F 1 "10K" H 6050 3550 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 5900 3750 60  0001 C CNN
F 3 "" H 5900 3750 60  0000 C CNN
	1    5900 3750
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R2
U 1 1 5A637112
P 5900 3250
F 0 "R2" H 5900 2950 60  0000 C CNN
F 1 "39K" H 6050 3050 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 5900 3250 60  0001 C CNN
F 3 "" H 5900 3250 60  0000 C CNN
	1    5900 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 4150 5800 4100
Wire Wire Line
	5800 4100 6300 4100
Wire Wire Line
	5900 4100 5900 4050
Wire Wire Line
	6300 3800 6300 4500
Connection ~ 5900 4100
Connection ~ 6300 4100
Wire Wire Line
	5900 3650 5900 3550
Wire Wire Line
	6000 3600 5900 3600
Connection ~ 5900 3600
Wire Wire Line
	6300 2750 6300 3400
Connection ~ 5900 3100
Wire Wire Line
	6300 5650 6300 5450
Connection ~ 5100 5650
Wire Wire Line
	5800 5450 5800 5650
Connection ~ 5800 5650
Wire Wire Line
	7000 2400 6900 2400
Wire Wire Line
	6900 2400 6900 2900
Wire Wire Line
	6300 2850 6900 2850
Connection ~ 6900 2850
Connection ~ 6300 2850
Wire Wire Line
	7300 2600 7300 3150
Wire Wire Line
	7300 2700 7500 2700
Wire Wire Line
	7300 1850 7300 2200
Connection ~ 6300 1850
Wire Wire Line
	7800 1850 7800 2500
Connection ~ 7300 1850
Wire Wire Line
	6900 3300 6900 3950
Wire Wire Line
	7200 4150 7800 4150
Wire Wire Line
	7800 4100 7800 4250
Wire Wire Line
	7500 4450 7400 4450
Wire Wire Line
	7400 4100 7400 4550
Wire Wire Line
	6900 4350 6900 4750
Wire Wire Line
	6900 4750 7100 4750
Wire Wire Line
	6900 4400 6300 4400
Connection ~ 6300 4400
Connection ~ 6900 4400
Wire Wire Line
	7200 3100 7800 3100
Wire Wire Line
	7800 2900 7800 3150
$Comp
L RESISTOR R9
U 1 1 5A63818B
P 7800 3250
F 0 "R9" H 7800 2950 60  0000 C CNN
F 1 "10" H 7950 3050 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 7800 3250 60  0001 C CNN
F 3 "" H 7800 3250 60  0000 C CNN
	1    7800 3250
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R10
U 1 1 5A63823A
P 7800 3800
F 0 "R10" H 7800 3500 60  0000 C CNN
F 1 "10" H 7950 3600 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 7800 3800 60  0001 C CNN
F 3 "" H 7800 3800 60  0000 C CNN
	1    7800 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 3550 7800 3700
Wire Wire Line
	7800 3600 6900 3600
Connection ~ 6900 3600
Connection ~ 7800 3600
Wire Wire Line
	7800 3650 8250 3650
Connection ~ 7800 3650
$Comp
L RESISTOR R8
U 1 1 5A6385A0
P 7400 3800
F 0 "R8" H 7400 3500 60  0000 C CNN
F 1 "1K" H 7550 3600 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 7400 3800 60  0001 C CNN
F 3 "" H 7400 3800 60  0000 C CNN
	1    7400 3800
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R7
U 1 1 5A638623
P 7300 3250
F 0 "R7" H 7300 2950 60  0000 C CNN
F 1 "1K" H 7450 3050 60  0000 C CNN
F 2 "FootPrints:RAD_R" H 7300 3250 60  0001 C CNN
F 3 "" H 7300 3250 60  0000 C CNN
	1    7300 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3550 7300 3600
Connection ~ 7300 3600
Wire Wire Line
	7400 3700 7400 3600
Connection ~ 7400 3600
Connection ~ 7300 2700
Connection ~ 7400 4450
Wire Wire Line
	6300 5050 6300 4900
Connection ~ 3050 4950
Wire Wire Line
	7800 5650 7800 4650
Connection ~ 6300 5650
Wire Wire Line
	7400 4950 7400 5650
Connection ~ 7400 5650
Wire Wire Line
	6600 4400 6600 6150
Connection ~ 6600 4400
$Comp
L PAD P2
U 1 1 5A6369AC
P 3450 3000
F 0 "P2" H 3450 2800 60  0000 C CNN
F 1 "+" H 3475 2725 60  0000 C CNN
F 2 "FootPrints:PAD" H 3450 2700 60  0001 C CNN
F 3 "" H 3450 2700 60  0000 C CNN
	1    3450 3000
	0    1    1    0   
$EndComp
$Comp
L PAD P3
U 1 1 5A636B0F
P 3450 3250
F 0 "P3" H 3450 3050 60  0000 C CNN
F 1 "-" H 3475 2975 60  0000 C CNN
F 2 "FootPrints:PAD" H 3450 2950 60  0001 C CNN
F 3 "" H 3450 2950 60  0000 C CNN
	1    3450 3250
	0    1    1    0   
$EndComp
$Comp
L PAD P1
U 1 1 5A636B91
P 3050 4550
F 0 "P1" H 3050 4350 60  0000 C CNN
F 1 "BIAS" H 3075 4275 60  0000 C CNN
F 2 "FootPrints:PAD" H 3050 4250 60  0001 C CNN
F 3 "" H 3050 4250 60  0000 C CNN
	1    3050 4550
	-1   0    0    1   
$EndComp
$Comp
L PAD P5
U 1 1 5A636C74
P 8250 3650
F 0 "P5" H 8250 3450 60  0000 C CNN
F 1 "OUT" H 8275 3375 60  0000 C CNN
F 2 "FootPrints:PAD" H 8250 3350 60  0001 C CNN
F 3 "" H 8250 3350 60  0000 C CNN
	1    8250 3650
	0    -1   -1   0   
$EndComp
$Comp
L PAD P4
U 1 1 5A636F22
P 6600 6150
F 0 "P4" H 6600 5950 60  0000 C CNN
F 1 "COMP" H 6625 5875 60  0000 C CNN
F 2 "FootPrints:PAD" H 6600 5850 60  0001 C CNN
F 3 "" H 6600 5850 60  0000 C CNN
	1    6600 6150
	1    0    0    -1  
$EndComp
Connection ~ 7800 4150
Connection ~ 7800 3100
Connection ~ 3650 2350
Wire Wire Line
	3050 4950 4050 4950
$Comp
L PAD P7
U 1 1 5A63F480
P 8050 1850
F 0 "P7" H 8050 1650 60  0000 C CNN
F 1 "V+" H 8075 1575 60  0000 C CNN
F 2 "FootPrints:PAD" H 8050 1550 60  0001 C CNN
F 3 "" H 8050 1550 60  0000 C CNN
	1    8050 1850
	0    -1   -1   0   
$EndComp
$Comp
L PAD P6
U 1 1 5A63F566
P 8000 5650
F 0 "P6" H 8000 5450 60  0000 C CNN
F 1 "V-" H 8025 5375 60  0000 C CNN
F 2 "FootPrints:PAD" H 8000 5350 60  0001 C CNN
F 3 "" H 8000 5350 60  0000 C CNN
	1    8000 5650
	0    -1   -1   0   
$EndComp
Connection ~ 7800 5650
Connection ~ 7800 1850
$Comp
L NPN Q12
U 1 1 5A63F9F4
P 7000 3100
F 0 "Q12" H 7300 3150 50  0000 R CNN
F 1 "2N3904" H 7350 3050 50  0000 R CNN
F 2 "FootPrints:TO92" H 7200 3200 50  0001 C CNN
F 3 "" H 7000 3100 50  0000 C CNN
	1    7000 3100
	-1   0    0    -1  
$EndComp
$Comp
L PNP Q13
U 1 1 5A63FB23
P 7000 4150
F 0 "Q13" H 7300 4200 50  0000 R CNN
F 1 "2N3906" H 7600 4100 50  0000 R CNN
F 2 "FootPrints:TO92" H 7200 4250 50  0001 C CNN
F 3 "" H 7000 4150 50  0000 C CNN
	1    7000 4150
	-1   0    0    1   
$EndComp
$Comp
L NPN Q10
U 1 1 5A63FCC1
P 6200 3600
F 0 "Q10" H 6500 3650 50  0000 R CNN
F 1 "2N3904" H 6550 3550 50  0000 R CNN
F 2 "FootPrints:TO92" H 6400 3700 50  0001 C CNN
F 3 "" H 6200 3600 50  0000 C CNN
	1    6200 3600
	1    0    0    -1  
$EndComp
$Comp
L NPN Q18
U 1 1 5A63FD96
P 3150 5300
F 0 "Q18" H 3450 5350 50  0000 R CNN
F 1 "2N3904" H 3500 5250 50  0000 R CNN
F 2 "FootPrints:TO92" H 3350 5400 50  0001 C CNN
F 3 "" H 3150 5300 50  0000 C CNN
	1    3150 5300
	-1   0    0    -1  
$EndComp
$Comp
L NPN Q14
U 1 1 5A63FF4E
P 7200 2400
F 0 "Q14" H 7500 2450 50  0000 R CNN
F 1 "2N3904" H 7550 2350 50  0000 R CNN
F 2 "FootPrints:TO92" H 7400 2500 50  0001 C CNN
F 3 "" H 7200 2400 50  0000 C CNN
	1    7200 2400
	1    0    0    -1  
$EndComp
$Comp
L NPN Q16
U 1 1 5A63FFFE
P 7700 2700
F 0 "Q16" H 8000 2750 50  0000 R CNN
F 1 "2N3904" H 8050 2650 50  0000 R CNN
F 2 "FootPrints:TO92" H 7900 2800 50  0001 C CNN
F 3 "" H 7700 2700 50  0000 C CNN
	1    7700 2700
	1    0    0    -1  
$EndComp
$Comp
L PNP Q15
U 1 1 5A6400F2
P 7300 4750
F 0 "Q15" H 7600 4800 50  0000 R CNN
F 1 "2N3906" H 7900 4700 50  0000 R CNN
F 2 "FootPrints:TO92" H 7500 4850 50  0001 C CNN
F 3 "" H 7300 4750 50  0000 C CNN
	1    7300 4750
	1    0    0    1   
$EndComp
$Comp
L PNP Q17
U 1 1 5A64019C
P 7700 4450
F 0 "Q17" H 8000 4500 50  0000 R CNN
F 1 "2N3906" H 8300 4400 50  0000 R CNN
F 2 "FootPrints:TO92" H 7900 4550 50  0001 C CNN
F 3 "" H 7700 4450 50  0000 C CNN
	1    7700 4450
	1    0    0    1   
$EndComp
$Comp
L NPN Q7
U 1 1 5A640290
P 5700 4350
F 0 "Q7" H 6000 4400 50  0000 R CNN
F 1 "2N3904" H 6050 4300 50  0000 R CNN
F 2 "FootPrints:TO92" H 5900 4450 50  0001 C CNN
F 3 "" H 5700 4350 50  0000 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
$Comp
L NPN Q11
U 1 1 5A64039D
P 6200 4700
F 0 "Q11" H 6500 4750 50  0000 R CNN
F 1 "2N3904" H 6550 4650 50  0000 R CNN
F 2 "FootPrints:TO92" H 6400 4800 50  0001 C CNN
F 3 "" H 6200 4700 50  0000 C CNN
	1    6200 4700
	1    0    0    -1  
$EndComp
$Comp
L PNP Q8
U 1 1 5A64043E
P 5800 2800
F 0 "Q8" H 6100 2850 50  0000 R CNN
F 1 "2N3906" H 6400 2750 50  0000 R CNN
F 2 "FootPrints:TO92" H 6000 2900 50  0001 C CNN
F 3 "" H 5800 2800 50  0000 C CNN
	1    5800 2800
	1    0    0    1   
$EndComp
$Comp
L PNP Q9
U 1 1 5A640520
P 6200 2550
F 0 "Q9" H 6500 2600 50  0000 R CNN
F 1 "2N3906" H 6800 2500 50  0000 R CNN
F 2 "FootPrints:TO92" H 6400 2650 50  0001 C CNN
F 3 "" H 6200 2550 50  0000 C CNN
	1    6200 2550
	1    0    0    1   
$EndComp
Text Label 7000 1850 0    60   ~ 0
V+
Text Label 6900 5650 0    60   ~ 0
V-
$EndSCHEMATC
