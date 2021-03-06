EESchema Schematic File Version 5
LIBS:300-1002-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 2
Title "ATmega1284 Dev Board"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:ATMEGA1284P-DIP40 U1
U 1 1 5CB81960
P 800 1850
F 0 "U1" H 1341 3037 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 1341 2931 60  0000 C CNN
F 2 "FootPrints:DIP-40" H 800 1850 60  0001 C CNN
F 3 "" H 800 1850 60  0000 C CNN
	1    800  1850
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:ATMEGA1284P-DIP40 U1
U 2 1 5CB81AC3
P 650 3150
F 0 "U1" H 1241 4287 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 1241 4181 60  0000 C CNN
F 2 "FootPrints:DIP-40" H 650 3150 60  0001 C CNN
F 3 "" H 650 3150 60  0000 C CNN
	2    650  3150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:ATMEGA1284P-DIP40 U1
U 3 1 5CB81C40
P 650 4650
F 0 "U1" H 1450 5750 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 1141 5681 60  0000 C CNN
F 2 "FootPrints:DIP-40" H 650 4650 60  0001 C CNN
F 3 "" H 650 4650 60  0000 C CNN
	3    650  4650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:ATMEGA1284P-DIP40 U1
U 4 1 5CB81D6D
P 700 5950
F 0 "U1" H 1291 7087 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 1291 6981 60  0000 C CNN
F 2 "FootPrints:DIP-40" H 700 5950 60  0001 C CNN
F 3 "" H 700 5950 60  0000 C CNN
	4    700  5950
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:ATMEGA1284P-DIP40 U1
U 5 1 5CB81EEF
P 2000 7450
F 0 "U1" H 2275 8337 60  0000 C CNN
F 1 "ATMEGA1284P-DIP40" H 2275 8231 60  0000 C CNN
F 2 "FootPrints:DIP-40" H 2000 7450 60  0001 C CNN
F 3 "" H 2000 7450 60  0000 C CNN
	5    2000 7450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:HEADER-5X2 P2
U 1 1 5CB82246
P 2850 1150
F 0 "P2" H 2850 1597 60  0000 C CNN
F 1 "PORTA" H 2850 1491 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 2700 850 60  0001 C CNN
F 3 "" H 2700 850 60  0000 C CNN
	1    2850 1150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:HEADER-5X2 P1
U 1 1 5CB82366
P 2750 4000
F 0 "P1" H 2750 4447 60  0000 C CNN
F 1 "PORTC" H 2750 4341 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 2600 3700 60  0001 C CNN
F 3 "" H 2600 3700 60  0000 C CNN
	1    2750 4000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:HEADER-5X2 P4
U 1 1 5CB823D2
P 3100 5300
F 0 "P4" H 3100 5747 60  0000 C CNN
F 1 "PORTD" H 3100 5641 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 2950 5000 60  0001 C CNN
F 3 "" H 2950 5000 60  0000 C CNN
	1    3100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 950  2500 950 
Wire Wire Line
	1900 1050 1950 1050
Wire Wire Line
	1950 1050 1950 650 
Wire Wire Line
	1950 650  3350 650 
Wire Wire Line
	3350 650  3350 950 
Wire Wire Line
	3350 950  3200 950 
Wire Wire Line
	1900 1150 2000 1150
Wire Wire Line
	2000 1150 2000 1050
Wire Wire Line
	2000 1050 2500 1050
Wire Wire Line
	1900 1250 2050 1250
Wire Wire Line
	2050 1250 2050 600 
Wire Wire Line
	2050 600  3400 600 
Wire Wire Line
	3400 600  3400 1050
Wire Wire Line
	3400 1050 3200 1050
Wire Wire Line
	1900 1350 2100 1350
Wire Wire Line
	2100 1350 2100 1150
Wire Wire Line
	2100 1150 2500 1150
Wire Wire Line
	1900 1450 2150 1450
Wire Wire Line
	2150 1450 2150 550 
Wire Wire Line
	2150 550  3450 550 
Wire Wire Line
	3450 550  3450 1150
Wire Wire Line
	3450 1150 3200 1150
Wire Wire Line
	1900 1550 2200 1550
Wire Wire Line
	2200 1550 2200 1250
Wire Wire Line
	2200 1250 2500 1250
Wire Wire Line
	1900 1650 3550 1650
Wire Wire Line
	3550 1650 3550 1250
Wire Wire Line
	3550 1250 3200 1250
$Comp
L power:GND #PWR04
U 1 1 5CB90065
P 2350 1400
F 0 "#PWR04" H 2350 1150 50  0001 C CNN
F 1 "GND" H 2355 1227 50  0000 C CNN
F 2 "" H 2350 1400 50  0001 C CNN
F 3 "" H 2350 1400 50  0001 C CNN
	1    2350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1400 2350 1350
Wire Wire Line
	2350 1350 2500 1350
$Comp
L power:VCC #PWR013
U 1 1 5CB9043E
P 3250 1350
F 0 "#PWR013" H 3250 1200 50  0001 C CNN
F 1 "VCC" V 3267 1478 50  0000 L CNN
F 2 "" H 3250 1350 50  0001 C CNN
F 3 "" H 3250 1350 50  0001 C CNN
	1    3250 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 1350 3200 1350
$Comp
L SynthMod:HEADER-5X2 P3
U 1 1 5CB90C37
P 2850 2500
F 0 "P3" H 2850 2947 60  0000 C CNN
F 1 "PORTB" H 2850 2841 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 2700 2200 60  0001 C CNN
F 3 "" H 2700 2200 60  0000 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2300 2500 2300
Wire Wire Line
	1950 2400 2000 2400
Wire Wire Line
	2000 2400 2000 2000
Wire Wire Line
	2000 2000 3400 2000
Wire Wire Line
	3400 2000 3400 2300
Wire Wire Line
	3400 2300 3200 2300
Wire Wire Line
	1950 2500 2050 2500
Wire Wire Line
	2050 2500 2050 2400
Wire Wire Line
	2050 2400 2500 2400
Wire Wire Line
	1950 2600 2100 2600
Wire Wire Line
	2100 2600 2100 1950
Wire Wire Line
	2100 1950 3450 1950
Wire Wire Line
	3450 1950 3450 2400
Wire Wire Line
	3450 2400 3200 2400
Wire Wire Line
	1950 2700 2150 2700
Wire Wire Line
	2150 2700 2150 2500
Wire Wire Line
	2150 2500 2500 2500
Wire Wire Line
	1950 2800 3550 2800
Wire Wire Line
	3550 2800 3550 2500
Wire Wire Line
	3550 2500 3200 2500
Wire Wire Line
	1950 2900 2200 2900
Wire Wire Line
	2200 2900 2200 2600
Wire Wire Line
	2200 2600 2500 2600
Wire Wire Line
	1950 3000 3600 3000
Wire Wire Line
	3600 3000 3600 2600
Wire Wire Line
	3600 2600 3200 2600
$Comp
L power:GND #PWR05
U 1 1 5CB95547
P 2350 2850
F 0 "#PWR05" H 2350 2600 50  0001 C CNN
F 1 "GND" H 2355 2677 50  0000 C CNN
F 2 "" H 2350 2850 50  0001 C CNN
F 3 "" H 2350 2850 50  0001 C CNN
	1    2350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2850 2350 2700
Wire Wire Line
	2350 2700 2500 2700
$Comp
L power:VCC #PWR014
U 1 1 5CB96438
P 3250 2700
F 0 "#PWR014" H 3250 2550 50  0001 C CNN
F 1 "VCC" V 3267 2828 50  0000 L CNN
F 2 "" H 3250 2700 50  0001 C CNN
F 3 "" H 3250 2700 50  0001 C CNN
	1    3250 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2700 3200 2700
Wire Wire Line
	1750 3800 2100 3800
Wire Wire Line
	1750 3900 1800 3900
Wire Wire Line
	1800 3900 1800 3500
Wire Wire Line
	1800 3500 3450 3500
Wire Wire Line
	3450 3500 3450 3800
Wire Wire Line
	3450 3800 3100 3800
Wire Wire Line
	1750 4000 1850 4000
Wire Wire Line
	1850 4000 1850 3900
Wire Wire Line
	1850 3900 2400 3900
Wire Wire Line
	1750 4100 1900 4100
Wire Wire Line
	1900 4100 1900 3450
Wire Wire Line
	1900 3450 3500 3450
Wire Wire Line
	3500 3450 3500 3900
Wire Wire Line
	3500 3900 3100 3900
Wire Wire Line
	1750 4200 1950 4200
Wire Wire Line
	1950 4200 1950 4000
Wire Wire Line
	1950 4000 2400 4000
Wire Wire Line
	1750 4300 2000 4300
Wire Wire Line
	2000 4300 2000 3400
Wire Wire Line
	2000 3400 3550 3400
Wire Wire Line
	3550 3400 3550 3600
Wire Wire Line
	3550 4000 3100 4000
Wire Wire Line
	1750 4400 2050 4400
Wire Wire Line
	2050 4400 2050 4100
Wire Wire Line
	2050 4100 2400 4100
Wire Wire Line
	1750 4500 3550 4500
Wire Wire Line
	3550 4500 3550 4100
Wire Wire Line
	3550 4100 3100 4100
$Comp
L power:GND #PWR06
U 1 1 5CBA6C16
P 2350 4250
F 0 "#PWR06" H 2350 4000 50  0001 C CNN
F 1 "GND" H 2355 4077 50  0000 C CNN
F 2 "" H 2350 4250 50  0001 C CNN
F 3 "" H 2350 4250 50  0001 C CNN
	1    2350 4250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 5CBA6C35
P 3200 4200
F 0 "#PWR012" H 3200 4050 50  0001 C CNN
F 1 "VCC" V 3217 4328 50  0000 L CNN
F 2 "" H 3200 4200 50  0001 C CNN
F 3 "" H 3200 4200 50  0001 C CNN
	1    3200 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 4200 3100 4200
Wire Wire Line
	2350 4250 2350 4200
Wire Wire Line
	2350 4200 2400 4200
Wire Wire Line
	2000 5100 2750 5100
Wire Wire Line
	2000 5200 2050 5200
Wire Wire Line
	2050 5200 2050 4800
Wire Wire Line
	2050 4800 3900 4800
Wire Wire Line
	3900 4800 3900 5100
Wire Wire Line
	3900 5100 3450 5100
Wire Wire Line
	2100 5300 2100 5200
Wire Wire Line
	2100 5200 2750 5200
Wire Wire Line
	2000 5300 2100 5300
Wire Wire Line
	2000 5400 2150 5400
Wire Wire Line
	2150 5400 2150 4750
Wire Wire Line
	2150 4750 3950 4750
Wire Wire Line
	3950 4750 3950 5200
Wire Wire Line
	3950 5200 3450 5200
Wire Wire Line
	2000 5500 2200 5500
Wire Wire Line
	2200 5500 2200 5300
Wire Wire Line
	2200 5300 2750 5300
Wire Wire Line
	2000 5600 2250 5600
Wire Wire Line
	2250 5600 2250 4700
Wire Wire Line
	2250 4700 4000 4700
Wire Wire Line
	4000 4700 4000 5300
Wire Wire Line
	4000 5300 3450 5300
Wire Wire Line
	2000 5700 2300 5700
Wire Wire Line
	2300 5700 2300 5400
Wire Wire Line
	2300 5400 2750 5400
Wire Wire Line
	2000 5800 4000 5800
Wire Wire Line
	4000 5800 4000 5400
Wire Wire Line
	4000 5400 3450 5400
$Comp
L power:GND #PWR07
U 1 1 5CBC6834
P 2700 5550
F 0 "#PWR07" H 2700 5300 50  0001 C CNN
F 1 "GND" H 2705 5377 50  0000 C CNN
F 2 "" H 2700 5550 50  0001 C CNN
F 3 "" H 2700 5550 50  0001 C CNN
	1    2700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5500 2700 5500
Wire Wire Line
	2700 5500 2700 5550
$Comp
L power:VCC #PWR015
U 1 1 5CBCAB2E
P 3600 5500
F 0 "#PWR015" H 3600 5350 50  0001 C CNN
F 1 "VCC" V 3617 5628 50  0000 L CNN
F 2 "" H 3600 5500 50  0001 C CNN
F 3 "" H 3600 5500 50  0001 C CNN
	1    3600 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 5500 3450 5500
$Comp
L Device:Crystal Y1
U 1 1 5CBCF321
P 1100 7400
F 0 "Y1" H 1100 7668 50  0000 C CNN
F 1 "16MHz" H 1100 7577 50  0000 C CNN
F 2 "FootPrints:XTAL" H 1100 7400 50  0001 C CNN
F 3 "~" H 1100 7400 50  0001 C CNN
	1    1100 7400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C1
U 1 1 5CBCF3BC
P 750 7650
F 0 "C1" H 865 7696 50  0000 L CNN
F 1 "27" H 865 7605 50  0000 L CNN
F 2 "FootPrints:CAP-0.1" H 788 7500 50  0001 C CNN
F 3 "" H 750 7650 50  0000 C CNN
	1    750  7650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C2
U 1 1 5CBCF438
P 1350 7650
F 0 "C2" H 1465 7696 50  0000 L CNN
F 1 "27pF" H 1465 7605 50  0000 L CNN
F 2 "FootPrints:CAP-0.1" H 1388 7500 50  0001 C CNN
F 3 "" H 1350 7650 50  0000 C CNN
	1    1350 7650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5CBCF47A
P 750 7800
F 0 "#PWR01" H 750 7550 50  0001 C CNN
F 1 "GND" H 755 7627 50  0000 C CNN
F 2 "" H 750 7800 50  0001 C CNN
F 3 "" H 750 7800 50  0001 C CNN
	1    750  7800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CBCF49F
P 1350 7800
F 0 "#PWR03" H 1350 7550 50  0001 C CNN
F 1 "GND" H 1355 7627 50  0000 C CNN
F 2 "" H 1350 7800 50  0001 C CNN
F 3 "" H 1350 7800 50  0001 C CNN
	1    1350 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7500 1350 7400
Wire Wire Line
	1350 7400 1250 7400
Wire Wire Line
	950  7400 750  7400
Wire Wire Line
	750  7400 750  7500
Wire Wire Line
	1700 7050 750  7050
Wire Wire Line
	750  7050 750  7400
Connection ~ 750  7400
Wire Wire Line
	1350 7400 1350 7250
Wire Wire Line
	1350 7250 1700 7250
Connection ~ 1350 7400
$Comp
L power:VCC #PWR09
U 1 1 5CBEAF4E
P 3100 6850
F 0 "#PWR09" H 3100 6700 50  0001 C CNN
F 1 "VCC" V 3117 6978 50  0000 L CNN
F 2 "" H 3100 6850 50  0001 C CNN
F 3 "" H 3100 6850 50  0001 C CNN
	1    3100 6850
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 5CBEAF73
P 3100 6950
F 0 "#PWR010" H 3100 6800 50  0001 C CNN
F 1 "VCC" V 3117 7078 50  0000 L CNN
F 2 "" H 3100 6950 50  0001 C CNN
F 3 "" H 3100 6950 50  0001 C CNN
	1    3100 6950
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5CBEAF98
P 3100 7050
F 0 "#PWR011" H 3100 6900 50  0001 C CNN
F 1 "VCC" V 3117 7178 50  0000 L CNN
F 2 "" H 3100 7050 50  0001 C CNN
F 3 "" H 3100 7050 50  0001 C CNN
	1    3100 7050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5CBEAFBD
P 3050 7350
F 0 "#PWR08" H 3050 7100 50  0001 C CNN
F 1 "GND" H 3055 7177 50  0000 C CNN
F 2 "" H 3050 7350 50  0001 C CNN
F 3 "" H 3050 7350 50  0001 C CNN
	1    3050 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7150 3050 7150
Wire Wire Line
	3050 7150 3050 7250
Wire Wire Line
	2850 7250 3050 7250
Connection ~ 3050 7250
Wire Wire Line
	3050 7250 3050 7350
Wire Wire Line
	2850 7050 3100 7050
Wire Wire Line
	2850 6950 3100 6950
Wire Wire Line
	2850 6850 3100 6850
$Comp
L SynthMod:AVR-JTAG J1
U 1 1 5CC056BD
P 4200 3400
F 0 "J1" H 4200 3847 60  0000 C CNN
F 1 "AVR-JTAG" H 4200 3741 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 4000 3350 60  0001 C CNN
F 3 "" H 4000 3350 60  0001 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3350 3100 3200
Wire Wire Line
	3100 3200 3800 3200
Wire Wire Line
	1850 3350 1850 3900
Wire Wire Line
	1850 3350 3100 3350
Connection ~ 1850 3900
Wire Wire Line
	3500 3450 3600 3450
Wire Wire Line
	3600 3450 3600 3400
Wire Wire Line
	3600 3400 3800 3400
Connection ~ 3500 3450
Wire Wire Line
	1950 4000 1950 3300
Wire Wire Line
	1950 3300 3800 3300
Connection ~ 1950 4000
Wire Wire Line
	3800 3600 3550 3600
Connection ~ 3550 3600
Wire Wire Line
	3550 3600 3550 4000
$Comp
L power:VCC #PWR017
U 1 1 5CC1E0B1
P 4750 3300
F 0 "#PWR017" H 4750 3150 50  0001 C CNN
F 1 "VCC" V 4767 3428 50  0000 L CNN
F 2 "" H 4750 3300 50  0001 C CNN
F 3 "" H 4750 3300 50  0001 C CNN
	1    4750 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5CC246AC
P 4650 3650
F 0 "#PWR016" H 4650 3400 50  0001 C CNN
F 1 "GND" H 4655 3477 50  0000 C CNN
F 2 "" H 4650 3650 50  0001 C CNN
F 3 "" H 4650 3650 50  0001 C CNN
	1    4650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3650 4650 3600
Wire Wire Line
	4650 3600 4600 3600
Wire Wire Line
	4650 3600 4650 3200
Wire Wire Line
	4650 3200 4600 3200
Connection ~ 4650 3600
Wire Wire Line
	4750 3300 4600 3300
Wire Wire Line
	1700 6850 1550 6850
Wire Wire Line
	1550 6850 1550 6150
Wire Wire Line
	1550 6150 4100 6150
Wire Wire Line
	4100 6150 4100 3900
Wire Wire Line
	4100 3900 4850 3900
Wire Wire Line
	4850 3900 4850 3400
Wire Wire Line
	4850 3400 4600 3400
$Comp
L SynthMod:LM78L05-SYNTHMOD U2
U 1 1 5CBD3447
P 6900 5500
F 0 "U2" H 6900 5906 50  0000 C CNN
F 1 "LM78L05" H 6900 5815 50  0000 C CNN
F 2 "FootPrints:TO92" H 6900 5500 50  0001 C CNN
F 3 "regulator\\lm78xx.pdf" H 6900 5724 50  0000 C CNN
	1    6900 5500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Polarized C3
U 1 1 5CBD3694
P 6350 5750
F 0 "C3" H 6465 5796 50  0000 L CNN
F 1 "10uF" H 6465 5705 50  0000 L CNN
F 2 "FootPrints:Cap-Pol-Rad-0.2_0.1" H 6388 5600 50  0001 C CNN
F 3 "" H 6350 5750 50  0000 C CNN
	1    6350 5750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Polarized C4
U 1 1 5CBD378A
P 7500 5750
F 0 "C4" H 7615 5796 50  0000 L CNN
F 1 "10uF" H 7615 5705 50  0000 L CNN
F 2 "FootPrints:Cap-Pol-Rad-0.2_0.1" H 7538 5600 50  0001 C CNN
F 3 "" H 7500 5750 50  0000 C CNN
	1    7500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5750 6900 6000
Wire Wire Line
	6900 6000 6350 6000
Wire Wire Line
	6350 6000 6350 5900
Wire Wire Line
	6900 6000 7500 6000
Wire Wire Line
	7500 6000 7500 5900
Connection ~ 6900 6000
Wire Wire Line
	7500 5600 7500 5450
Wire Wire Line
	7500 5450 7300 5450
Wire Wire Line
	6350 5600 6350 5450
Wire Wire Line
	6350 5450 6500 5450
$Comp
L power:GND #PWR018
U 1 1 5CC318DF
P 6350 6050
F 0 "#PWR018" H 6350 5800 50  0001 C CNN
F 1 "GND" H 6355 5877 50  0000 C CNN
F 2 "" H 6350 6050 50  0001 C CNN
F 3 "" H 6350 6050 50  0001 C CNN
	1    6350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6050 6350 6000
Connection ~ 6350 6000
$Comp
L power:VCC #PWR019
U 1 1 5CC49BA1
P 8250 5450
F 0 "#PWR019" H 8250 5300 50  0001 C CNN
F 1 "VCC" V 8267 5578 50  0000 L CNN
F 2 "" H 8250 5450 50  0001 C CNN
F 3 "" H 8250 5450 50  0001 C CNN
	1    8250 5450
	0    1    1    0   
$EndComp
$Comp
L SynthMod:Cap_Bypass C5
U 1 1 5CC49C43
P 7950 5750
F 0 "C5" H 8065 5796 50  0000 L CNN
F 1 "0.1uF" H 8065 5705 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 7988 5600 50  0001 C CNN
F 3 "" H 7950 5750 50  0000 C CNN
	1    7950 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5900 7950 6000
Wire Wire Line
	7950 6000 7500 6000
Connection ~ 7500 6000
Wire Wire Line
	7500 5450 7950 5450
Wire Wire Line
	7950 5450 7950 5600
Connection ~ 7500 5450
Wire Wire Line
	7950 5450 8250 5450
Connection ~ 7950 5450
$Comp
L Connector:Jack-DC J2
U 1 1 5CC9422A
P 4750 5700
F 0 "J2" H 4520 5658 50  0000 R CNN
F 1 "9V DC" H 4520 5749 50  0000 R CNN
F 2 "FootPrints:DC-JACK-CUI-PJ-085AH" H 4800 5660 50  0001 C CNN
F 3 "~" H 4800 5660 50  0001 C CNN
F 4 "PJ-084AH" H 4750 5700 50  0001 C CNN "Part#"
F 5 "Mouser" H 4750 5700 50  0001 C CNN "Vendor"
	1    4750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6000 6350 6000
Connection ~ 6350 5450
$Comp
L Device:D_ALT D10
U 1 1 5CC29425
P 5750 5250
F 0 "D10" V 5800 5050 50  0000 L CNN
F 1 "1N4003" V 5900 4950 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 5750 5250 50  0001 C CNN
F 3 "~" H 5750 5250 50  0001 C CNN
	1    5750 5250
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D9
U 1 1 5CC445C9
P 5350 5250
F 0 "D9" V 5250 5050 50  0000 L CNN
F 1 "1N4003" V 5350 4850 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 5350 5250 50  0001 C CNN
F 3 "~" H 5350 5250 50  0001 C CNN
	1    5350 5250
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D12
U 1 1 5CC44A75
P 5750 6100
F 0 "D12" V 5750 5850 50  0000 L CNN
F 1 "1N4003" V 5850 5800 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 5750 6100 50  0001 C CNN
F 3 "~" H 5750 6100 50  0001 C CNN
	1    5750 6100
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D11
U 1 1 5CC44A7F
P 5350 6100
F 0 "D11" V 5350 5850 50  0000 L CNN
F 1 "1N4003" V 5450 5750 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 5350 6100 50  0001 C CNN
F 3 "~" H 5350 6100 50  0001 C CNN
	1    5350 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 5600 5350 5400
Wire Wire Line
	5050 5600 5350 5600
Wire Wire Line
	5350 5950 5350 5600
Connection ~ 5350 5600
Wire Wire Line
	5050 5800 5750 5800
Wire Wire Line
	5750 5800 5750 5950
Wire Wire Line
	5750 5800 5750 5400
Connection ~ 5750 5800
Wire Wire Line
	5350 5100 5350 5000
Wire Wire Line
	5350 5000 5750 5000
Wire Wire Line
	5750 5000 5750 5100
Wire Wire Line
	5750 5000 6000 5000
Wire Wire Line
	6000 5000 6000 5450
Wire Wire Line
	6000 5450 6350 5450
Connection ~ 5750 5000
Wire Wire Line
	5350 6250 5350 6400
Wire Wire Line
	5350 6400 5750 6400
Wire Wire Line
	5750 6400 5750 6250
Wire Wire Line
	6050 6000 6050 6400
Wire Wire Line
	6050 6400 5750 6400
Connection ~ 5750 6400
Text Label 5200 5600 0    50   ~ 0
A
Text Label 5150 5800 0    50   ~ 0
B
Text Label 5600 5000 0    50   ~ 0
VI
$Comp
L SynthMod:PAD P7
U 1 1 5CE19701
P 5850 4450
F 0 "P7" H 5915 4443 60  0000 L CNN
F 1 "PAD" H 5915 4337 60  0000 L CNN
F 2 "FootPrints:MountingHole_140" H 5850 4150 60  0001 C CNN
F 3 "" H 5850 4150 60  0000 C CNN
	1    5850 4450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:PAD P8
U 1 1 5CE1ABC8
P 5550 4450
F 0 "P8" H 5615 4443 60  0000 L CNN
F 1 "PAD" H 5615 4337 60  0000 L CNN
F 2 "FootPrints:MountingHole_140" H 5550 4150 60  0001 C CNN
F 3 "" H 5550 4150 60  0000 C CNN
	1    5550 4450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:PAD P9
U 1 1 5CE1AF5B
P 5250 4450
F 0 "P9" H 5315 4443 60  0000 L CNN
F 1 "PAD" H 5315 4337 60  0000 L CNN
F 2 "FootPrints:MountingHole_140" H 5250 4150 60  0001 C CNN
F 3 "" H 5250 4150 60  0000 C CNN
	1    5250 4450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:PAD P10
U 1 1 5CE1B250
P 4950 4450
F 0 "P10" H 5015 4443 60  0000 L CNN
F 1 "PAD" H 5015 4337 60  0000 L CNN
F 2 "FootPrints:MountingHole_140" H 4950 4150 60  0001 C CNN
F 3 "" H 4950 4150 60  0000 C CNN
	1    4950 4450
	1    0    0    -1  
$EndComp
$Sheet
S 7200 1200 1350 1000
U 5D0B6082
F0 "SwitchesLeds" 50
F1 "switches_leds.sch" 50
$EndSheet
Wire Wire Line
	2100 3800 2100 3550
Wire Wire Line
	2100 3550 1700 3550
Wire Wire Line
	1700 3550 1700 3500
Wire Wire Line
	1700 3500 1350 3500
Connection ~ 2100 3800
Wire Wire Line
	2100 3800 2400 3800
Wire Wire Line
	1800 3500 1800 3250
Wire Wire Line
	1800 3250 1350 3250
Connection ~ 1800 3500
Wire Wire Line
	800  3250 900  3250
Wire Wire Line
	900  3250 900  3500
Wire Wire Line
	900  3500 950  3500
Connection ~ 900  3250
Wire Wire Line
	900  3250 950  3250
$Comp
L power:VCC #PWR02
U 1 1 5D297699
P 800 3250
F 0 "#PWR02" H 800 3100 50  0001 C CNN
F 1 "VCC" V 817 3378 50  0000 L CNN
F 2 "" H 800 3250 50  0001 C CNN
F 3 "" H 800 3250 50  0001 C CNN
	1    800  3250
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:RESISTOR R17
U 1 1 5D1BEBB1
P 1050 3250
F 0 "R17" H 1000 3300 60  0000 C CNN
F 1 "3.3K" H 1350 3300 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1050 3250 60  0001 C CNN
F 3 "" H 1050 3250 60  0000 C CNN
	1    1050 3250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R18
U 1 1 5D1BFDFA
P 1050 3500
F 0 "R18" H 1000 3550 60  0000 C CNN
F 1 "3.3K" H 1350 3600 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1050 3500 60  0001 C CNN
F 3 "" H 1050 3500 60  0000 C CNN
	1    1050 3500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
