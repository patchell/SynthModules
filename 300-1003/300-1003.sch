EESchema Schematic File Version 4
LIBS:300-1003-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "ATmega32U4"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U1
U 1 1 5CC0A7D2
P 2700 2650
F 0 "U1" H 2650 1650 50  0000 C CNN
F 1 "ATmega32U4-AU" H 2600 1550 50  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 2700 2650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 2700 2650 50  0001 C CNN
	1    2700 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1
U 1 1 5CC0ABD5
P 850 2150
F 0 "J1" H 907 2617 50  0000 C CNN
F 1 "USB_B" H 907 2526 50  0000 C CNN
F 2 "Connectors:USB_B" H 1000 2100 50  0001 C CNN
F 3 " ~" H 1000 2100 50  0001 C CNN
	1    850  2150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R1
U 1 1 5CC0CCD1
P 1750 2150
F 0 "R1" H 1800 2250 60  0000 C CNN
F 1 "22" H 1950 2250 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1750 2150 60  0001 C CNN
F 3 "" H 1750 2150 60  0000 C CNN
	1    1750 2150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R2
U 1 1 5CC0E41E
P 1750 2250
F 0 "R2" H 1700 2150 60  0000 C CNN
F 1 "22" H 1850 2150 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1750 2250 60  0001 C CNN
F 3 "" H 1750 2250 60  0000 C CNN
	1    1750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2150 1650 2150
Wire Wire Line
	1150 2250 1650 2250
Wire Wire Line
	1150 1950 2100 1950
Wire Wire Line
	1800 2600 1800 2450
Wire Wire Line
	1800 2450 2100 2450
Wire Wire Line
	2050 2150 2100 2150
Wire Wire Line
	2050 2250 2100 2250
$Comp
L power:GND #PWR0101
U 1 1 5CC10F55
P 2600 4800
F 0 "#PWR0101" H 2600 4550 50  0001 C CNN
F 1 "GND" H 2605 4627 50  0000 C CNN
F 2 "" H 2600 4800 50  0001 C CNN
F 3 "" H 2600 4800 50  0001 C CNN
	1    2600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4800 2600 4700
Wire Wire Line
	2600 4550 850  4550
Wire Wire Line
	850  4550 850  2550
Connection ~ 2600 4550
Wire Wire Line
	2600 4550 2600 4450
$Comp
L power:GND #PWR0102
U 1 1 5CC11E6D
P 750 2550
F 0 "#PWR0102" H 750 2300 50  0001 C CNN
F 1 "GND" H 755 2377 50  0000 C CNN
F 2 "" H 750 2550 50  0001 C CNN
F 3 "" H 750 2550 50  0001 C CNN
	1    750  2550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:AVR-JTAG J2
U 1 1 5CC12C5F
P 4900 3900
F 0 "J2" H 4900 4347 60  0000 C CNN
F 1 "AVR-JTAG" H 4900 4241 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 4700 3850 60  0001 C CNN
F 3 "" H 4700 3850 60  0001 C CNN
	1    4900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4050 4100 4050
Wire Wire Line
	4100 4050 4100 4100
Wire Wire Line
	4100 4100 4500 4100
Wire Wire Line
	3300 3950 3500 3950
Wire Wire Line
	4150 3950 4150 3800
Wire Wire Line
	4150 3800 4500 3800
Wire Wire Line
	3300 3850 3750 3850
Wire Wire Line
	4250 3850 4250 3900
Wire Wire Line
	4250 3900 4500 3900
Wire Wire Line
	3300 3750 3550 3750
Wire Wire Line
	4150 3750 4150 3700
Wire Wire Line
	4150 3700 4500 3700
Wire Wire Line
	5300 3700 5500 3700
Wire Wire Line
	5500 3700 5500 4100
Wire Wire Line
	5300 4100 5500 4100
Connection ~ 5500 4100
Wire Wire Line
	5500 4100 5500 4200
$Comp
L power:GND #PWR0103
U 1 1 5CC1702B
P 5500 4200
F 0 "#PWR0103" H 5500 3950 50  0001 C CNN
F 1 "GND" H 5505 4027 50  0000 C CNN
F 2 "" H 5500 4200 50  0001 C CNN
F 3 "" H 5500 4200 50  0001 C CNN
	1    5500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3800 5300 3800
Wire Wire Line
	2100 1150 1850 1150
Wire Wire Line
	1850 1150 1850 700 
Wire Wire Line
	6000 3900 5300 3900
Wire Wire Line
	1850 700  6000 700 
$Comp
L SynthMod:Cap C3
U 1 1 5CC2511F
P 1800 2750
F 0 "C3" H 1915 2796 50  0000 L CNN
F 1 "1uF" H 1915 2705 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0_2" H 1838 2600 50  0001 C CNN
F 3 "" H 1800 2750 50  0000 C CNN
	1    1800 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5CC26909
P 1800 2900
F 0 "#PWR0104" H 1800 2650 50  0001 C CNN
F 1 "GND" H 1805 2727 50  0000 C CNN
F 2 "" H 1800 2900 50  0001 C CNN
F 3 "" H 1800 2900 50  0001 C CNN
	1    1800 2900
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:HEADER-5X2 P2
U 1 1 5CC271AD
P 4800 1350
F 0 "P2" H 4800 1797 60  0000 C CNN
F 1 "PORTB" H 4800 1691 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 4650 1050 60  0001 C CNN
F 3 "" H 4650 1050 60  0000 C CNN
	1    4800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1150 4450 1150
Wire Wire Line
	3300 1250 3900 1250
Wire Wire Line
	3900 1250 3900 800 
Wire Wire Line
	3900 800  5450 800 
Wire Wire Line
	5450 800  5450 1150
Wire Wire Line
	5450 1150 5150 1150
Wire Wire Line
	3300 1350 3950 1350
Wire Wire Line
	3950 1350 3950 1250
Wire Wire Line
	3950 1250 4450 1250
Wire Wire Line
	3300 1450 3800 1450
Wire Wire Line
	3800 1450 3800 750 
Wire Wire Line
	3800 750  5550 750 
Wire Wire Line
	5550 750  5550 1250
Wire Wire Line
	5550 1250 5150 1250
Wire Wire Line
	4050 1550 4050 1350
Wire Wire Line
	4050 1350 4450 1350
Wire Wire Line
	3300 1550 4050 1550
Wire Wire Line
	3300 1650 5550 1650
Wire Wire Line
	5550 1650 5550 1350
Wire Wire Line
	5550 1350 5150 1350
Wire Wire Line
	4150 1750 4150 1450
Wire Wire Line
	4150 1450 4450 1450
Wire Wire Line
	3300 1750 4150 1750
Wire Wire Line
	3300 1850 5500 1850
Wire Wire Line
	5500 1850 5500 1450
Wire Wire Line
	5500 1450 5150 1450
$Comp
L power:GND #PWR0105
U 1 1 5CC31B9C
P 4400 1700
F 0 "#PWR0105" H 4400 1450 50  0001 C CNN
F 1 "GND" H 4405 1527 50  0000 C CNN
F 2 "" H 4400 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0001 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1700 4400 1550
Wire Wire Line
	4400 1550 4450 1550
$Comp
L SynthMod:HEADER-5X2 P3
U 1 1 5CC34FF5
P 4800 2550
F 0 "P3" H 4800 2997 60  0000 C CNN
F 1 "PORTD" H 4800 2891 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 4650 2250 60  0001 C CNN
F 3 "" H 4650 2250 60  0000 C CNN
	1    4800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2350 4450 2350
Wire Wire Line
	3300 2450 3900 2450
Wire Wire Line
	3900 2450 3900 2000
Wire Wire Line
	3900 2000 5450 2000
Wire Wire Line
	5450 2000 5450 2350
Wire Wire Line
	5450 2350 5150 2350
Wire Wire Line
	3300 2550 3950 2550
Wire Wire Line
	3950 2550 3950 2450
Wire Wire Line
	3950 2450 4450 2450
Wire Wire Line
	3300 2650 3800 2650
Wire Wire Line
	3800 2650 3800 1950
Wire Wire Line
	3800 1950 5550 1950
Wire Wire Line
	5550 1950 5550 2450
Wire Wire Line
	5550 2450 5150 2450
Wire Wire Line
	4050 2750 4050 2550
Wire Wire Line
	4050 2550 4450 2550
Wire Wire Line
	3300 2750 4050 2750
Wire Wire Line
	3300 2850 5550 2850
Wire Wire Line
	5550 2850 5550 2550
Wire Wire Line
	5550 2550 5150 2550
Wire Wire Line
	4150 2950 4150 2650
Wire Wire Line
	4150 2650 4450 2650
Wire Wire Line
	3300 2950 4150 2950
Wire Wire Line
	3300 3050 5500 3050
Wire Wire Line
	5500 3050 5500 2650
Wire Wire Line
	5500 2650 5150 2650
$Comp
L power:GND #PWR0106
U 1 1 5CC35019
P 4400 2900
F 0 "#PWR0106" H 4400 2650 50  0001 C CNN
F 1 "GND" H 4405 2727 50  0000 C CNN
F 2 "" H 4400 2900 50  0001 C CNN
F 3 "" H 4400 2900 50  0001 C CNN
	1    4400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2900 4400 2750
Wire Wire Line
	4400 2750 4450 2750
Wire Wire Line
	6000 700  6000 3900
$Comp
L SynthMod:HEADER-5X2 P1
U 1 1 5CC42683
P 4000 4650
F 0 "P1" H 4000 5097 60  0000 C CNN
F 1 "PORTF" H 4000 4991 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 3850 4350 60  0001 C CNN
F 3 "" H 3850 4350 60  0000 C CNN
	1    4000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3550 3300 3550
Wire Wire Line
	3650 3550 3650 4450
Wire Wire Line
	4350 4450 4400 4450
Wire Wire Line
	4400 4250 3700 4250
Wire Wire Line
	3700 4250 3700 3650
Wire Wire Line
	3700 3650 3300 3650
Wire Wire Line
	4400 4250 4400 4450
Wire Wire Line
	3650 4650 3550 4650
Wire Wire Line
	3550 4650 3550 3750
Connection ~ 3550 3750
Wire Wire Line
	3550 3750 4150 3750
Wire Wire Line
	3500 3950 3500 4750
Wire Wire Line
	3500 4750 3650 4750
Connection ~ 3500 3950
Wire Wire Line
	3750 4200 4450 4200
Wire Wire Line
	4450 4200 4450 4650
Wire Wire Line
	4450 4650 4350 4650
Wire Wire Line
	4350 4750 4500 4750
Wire Wire Line
	4500 4100 4500 4750
Connection ~ 4500 4100
$Comp
L power:GND #PWR0107
U 1 1 5CC59188
P 3600 4900
F 0 "#PWR0107" H 3600 4650 50  0001 C CNN
F 1 "GND" H 3605 4727 50  0000 C CNN
F 2 "" H 3600 4900 50  0001 C CNN
F 3 "" H 3600 4900 50  0001 C CNN
	1    3600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4850 3600 4850
Wire Wire Line
	3600 4850 3600 4900
$Comp
L Device:LED_ALT D1
U 1 1 5CCABD33
P 6850 900
F 0 "D1" H 6843 1116 50  0000 C CNN
F 1 "LED" H 6843 1025 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 6850 900 50  0001 C CNN
F 3 "~" H 6850 900 50  0001 C CNN
	1    6850 900 
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R3
U 1 1 5CCAD63B
P 7200 900
F 0 "R3" H 7300 1117 60  0000 C CNN
F 1 "470" H 7300 1011 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7200 900 60  0001 C CNN
F 3 "" H 7200 900 60  0000 C CNN
	1    7200 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 900  7000 900 
$Comp
L Device:LED_ALT D2
U 1 1 5CCB1AC3
P 6850 1200
F 0 "D2" H 6843 1416 50  0000 C CNN
F 1 "LED" H 6843 1325 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 6850 1200 50  0001 C CNN
F 3 "~" H 6850 1200 50  0001 C CNN
	1    6850 1200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R4
U 1 1 5CCB1ACD
P 7200 1200
F 0 "R4" H 7300 1417 60  0000 C CNN
F 1 "470" H 7300 1311 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7200 1200 60  0001 C CNN
F 3 "" H 7200 1200 60  0000 C CNN
	1    7200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1200 7000 1200
$Comp
L Device:LED_ALT D3
U 1 1 5CCB65F2
P 6850 1500
F 0 "D3" H 6843 1716 50  0000 C CNN
F 1 "LED" H 6843 1625 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 6850 1500 50  0001 C CNN
F 3 "~" H 6850 1500 50  0001 C CNN
	1    6850 1500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R5
U 1 1 5CCB65FC
P 7200 1500
F 0 "R5" H 7300 1717 60  0000 C CNN
F 1 "470" H 7300 1611 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7200 1500 60  0001 C CNN
F 3 "" H 7200 1500 60  0000 C CNN
	1    7200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1500 7000 1500
$Comp
L Device:LED_ALT D4
U 1 1 5CCB6607
P 6850 1800
F 0 "D4" H 6843 2016 50  0000 C CNN
F 1 "LED" H 6843 1925 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 6850 1800 50  0001 C CNN
F 3 "~" H 6850 1800 50  0001 C CNN
	1    6850 1800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R6
U 1 1 5CCB6611
P 7200 1800
F 0 "R6" H 7300 2017 60  0000 C CNN
F 1 "470" H 7300 1911 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7200 1800 60  0001 C CNN
F 3 "" H 7200 1800 60  0000 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1800 7000 1800
$Comp
L Device:LED_ALT D5
U 1 1 5CCF2370
P 6850 2100
F 0 "D5" H 6843 2316 50  0000 C CNN
F 1 "LED" H 6843 2225 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 6850 2100 50  0001 C CNN
F 3 "~" H 6850 2100 50  0001 C CNN
	1    6850 2100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R7
U 1 1 5CCF237A
P 7200 2100
F 0 "R7" H 7300 2317 60  0000 C CNN
F 1 "470" H 7300 2211 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7200 2100 60  0001 C CNN
F 3 "" H 7200 2100 60  0000 C CNN
	1    7200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2100 7000 2100
$Comp
L Device:LED_ALT D6
U 1 1 5CCF2385
P 6850 2400
F 0 "D6" H 6843 2616 50  0000 C CNN
F 1 "LED" H 6843 2525 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 6850 2400 50  0001 C CNN
F 3 "~" H 6850 2400 50  0001 C CNN
	1    6850 2400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R8
U 1 1 5CCF238F
P 7200 2400
F 0 "R8" H 7300 2617 60  0000 C CNN
F 1 "470" H 7300 2511 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7200 2400 60  0001 C CNN
F 3 "" H 7200 2400 60  0000 C CNN
	1    7200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2400 7000 2400
$Comp
L Device:LED_ALT D7
U 1 1 5CCFDBB5
P 6850 2700
F 0 "D7" H 6843 2916 50  0000 C CNN
F 1 "LED" H 6843 2825 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 6850 2700 50  0001 C CNN
F 3 "~" H 6850 2700 50  0001 C CNN
	1    6850 2700
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R9
U 1 1 5CCFDBBF
P 7200 2700
F 0 "R9" H 7300 2917 60  0000 C CNN
F 1 "470" H 7300 2811 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7200 2700 60  0001 C CNN
F 3 "" H 7200 2700 60  0000 C CNN
	1    7200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2700 7000 2700
$Comp
L Device:LED_ALT D8
U 1 1 5CCFDBCA
P 6850 3000
F 0 "D8" H 6843 3216 50  0000 C CNN
F 1 "LED" H 6843 3125 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 6850 3000 50  0001 C CNN
F 3 "~" H 6850 3000 50  0001 C CNN
	1    6850 3000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R10
U 1 1 5CCFDBD4
P 7200 3000
F 0 "R10" H 7300 3217 60  0000 C CNN
F 1 "470" H 7300 3111 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 7200 3000 60  0001 C CNN
F 3 "" H 7200 3000 60  0000 C CNN
	1    7200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3000 7000 3000
$Comp
L SynthMod:HEADER-5X2 P5
U 1 1 5CD0F5A5
P 7100 3800
F 0 "P5" H 7100 4247 60  0000 C CNN
F 1 "LEDS" H 7100 4141 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 6950 3500 60  0001 C CNN
F 3 "" H 6950 3500 60  0000 C CNN
	1    7100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3900 7750 3900
Wire Wire Line
	7750 3900 7750 3200
Wire Wire Line
	7750 3200 6600 3200
Wire Wire Line
	6600 3200 6600 3000
Wire Wire Line
	6600 3000 6700 3000
Wire Wire Line
	6750 3900 6550 3900
Wire Wire Line
	6550 3900 6550 2700
Wire Wire Line
	6550 2700 6700 2700
Wire Wire Line
	7450 3800 7700 3800
Wire Wire Line
	7700 3800 7700 3250
Wire Wire Line
	7700 3250 6450 3250
Wire Wire Line
	6450 2400 6700 2400
Wire Wire Line
	6450 2400 6450 3250
Wire Wire Line
	6750 3800 6500 3800
Wire Wire Line
	6500 3800 6500 2100
Wire Wire Line
	6500 2100 6700 2100
Wire Wire Line
	7450 3700 7650 3700
Wire Wire Line
	7650 3700 7650 3300
Wire Wire Line
	7650 3300 6400 3300
Wire Wire Line
	6400 3300 6400 1800
Wire Wire Line
	6400 1800 6700 1800
Wire Wire Line
	6750 3700 6350 3700
Wire Wire Line
	6350 3700 6350 1500
Wire Wire Line
	6350 1500 6700 1500
Wire Wire Line
	7450 3600 7600 3600
Wire Wire Line
	7600 3600 7600 3350
Wire Wire Line
	7600 3350 6300 3350
Wire Wire Line
	6300 3350 6300 1200
Wire Wire Line
	6300 1200 6700 1200
Wire Wire Line
	6700 900  6250 900 
Wire Wire Line
	6250 900  6250 3600
Wire Wire Line
	6250 3600 6750 3600
Wire Wire Line
	7500 3000 7650 3000
Wire Wire Line
	7650 3000 7650 2700
Wire Wire Line
	7500 900  7650 900 
Connection ~ 7650 900 
Wire Wire Line
	7650 900  7650 800 
Wire Wire Line
	7500 1200 7650 1200
Connection ~ 7650 1200
Wire Wire Line
	7650 1200 7650 900 
Wire Wire Line
	7500 1500 7650 1500
Connection ~ 7650 1500
Wire Wire Line
	7650 1500 7650 1200
Wire Wire Line
	7500 1800 7650 1800
Connection ~ 7650 1800
Wire Wire Line
	7650 1800 7650 1500
Wire Wire Line
	7500 2100 7650 2100
Connection ~ 7650 2100
Wire Wire Line
	7650 2100 7650 1800
Wire Wire Line
	7500 2400 7650 2400
Connection ~ 7650 2400
Wire Wire Line
	7650 2400 7650 2100
Wire Wire Line
	7500 2700 7650 2700
Connection ~ 7650 2700
Wire Wire Line
	7650 2700 7650 2400
$Comp
L Switch:SW_SPDT SW1
U 1 1 5CD74A93
P 9750 850
F 0 "SW1" H 9750 1135 50  0000 C CNN
F 1 "SW_SPDT" H 9750 1044 50  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 9750 850 50  0001 C CNN
F 3 "~" H 9750 850 50  0001 C CNN
	1    9750 850 
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R11
U 1 1 5CD7626E
P 9200 750
F 0 "R11" H 9300 533 60  0000 C CNN
F 1 "4.99K" H 9300 639 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 9200 750 60  0001 C CNN
F 3 "" H 9200 750 60  0000 C CNN
	1    9200 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 750  9350 750 
Wire Wire Line
	9350 900  9350 750 
Connection ~ 9350 750 
Wire Wire Line
	9350 750  9550 750 
$Comp
L Switch:SW_SPDT SW2
U 1 1 5CD8D314
P 9750 1350
F 0 "SW2" H 9750 1635 50  0000 C CNN
F 1 "SW_SPDT" H 9750 1544 50  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 9750 1350 50  0001 C CNN
F 3 "~" H 9750 1350 50  0001 C CNN
	1    9750 1350
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R12
U 1 1 5CD8D31E
P 9200 1250
F 0 "R12" H 9300 1033 60  0000 C CNN
F 1 "4.99K" H 9300 1139 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 9200 1250 60  0001 C CNN
F 3 "" H 9200 1250 60  0000 C CNN
	1    9200 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 1250 9350 1250
Wire Wire Line
	9350 1400 9350 1250
Connection ~ 9350 1250
Wire Wire Line
	9350 1250 9550 1250
$Comp
L Switch:SW_SPDT SW3
U 1 1 5CDA8B49
P 9750 1850
F 0 "SW3" H 9750 2135 50  0000 C CNN
F 1 "SW_SPDT" H 9750 2044 50  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 9750 1850 50  0001 C CNN
F 3 "~" H 9750 1850 50  0001 C CNN
	1    9750 1850
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R13
U 1 1 5CDA8B53
P 9200 1750
F 0 "R13" H 9300 1533 60  0000 C CNN
F 1 "4.99K" H 9300 1639 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 9200 1750 60  0001 C CNN
F 3 "" H 9200 1750 60  0000 C CNN
	1    9200 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 1750 9350 1750
Wire Wire Line
	9350 1900 9350 1750
Connection ~ 9350 1750
Wire Wire Line
	9350 1750 9550 1750
$Comp
L Switch:SW_SPDT SW4
U 1 1 5CDA8B62
P 9750 2350
F 0 "SW4" H 9750 2635 50  0000 C CNN
F 1 "SW_SPDT" H 9750 2544 50  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 9750 2350 50  0001 C CNN
F 3 "~" H 9750 2350 50  0001 C CNN
	1    9750 2350
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R14
U 1 1 5CDA8B6C
P 9200 2250
F 0 "R14" H 9300 2033 60  0000 C CNN
F 1 "4.99K" H 9300 2139 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 9200 2250 60  0001 C CNN
F 3 "" H 9200 2250 60  0000 C CNN
	1    9200 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 2250 9350 2250
Wire Wire Line
	9350 2400 9350 2250
Connection ~ 9350 2250
Wire Wire Line
	9350 2250 9550 2250
$Comp
L Switch:SW_SPDT SW5
U 1 1 5CDB7C9D
P 9750 2950
F 0 "SW5" H 9750 3235 50  0000 C CNN
F 1 "SW_SPDT" H 9750 3144 50  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 9750 2950 50  0001 C CNN
F 3 "~" H 9750 2950 50  0001 C CNN
	1    9750 2950
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R15
U 1 1 5CDB7CA7
P 9200 2850
F 0 "R15" H 9300 2633 60  0000 C CNN
F 1 "4.99K" H 9300 2739 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 9200 2850 60  0001 C CNN
F 3 "" H 9200 2850 60  0000 C CNN
	1    9200 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 2850 9350 2850
Wire Wire Line
	9350 3000 9350 2850
Connection ~ 9350 2850
Wire Wire Line
	9350 2850 9550 2850
$Comp
L Switch:SW_SPDT SW6
U 1 1 5CDB7CB6
P 9750 3450
F 0 "SW6" H 9750 3735 50  0000 C CNN
F 1 "SW_SPDT" H 9750 3644 50  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 9750 3450 50  0001 C CNN
F 3 "~" H 9750 3450 50  0001 C CNN
	1    9750 3450
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R16
U 1 1 5CDB7CC0
P 9200 3350
F 0 "R16" H 9300 3133 60  0000 C CNN
F 1 "4.99K" H 9300 3239 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 9200 3350 60  0001 C CNN
F 3 "" H 9200 3350 60  0000 C CNN
	1    9200 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 3350 9350 3350
Wire Wire Line
	9350 3500 9350 3350
Connection ~ 9350 3350
Wire Wire Line
	9350 3350 9550 3350
$Comp
L Switch:SW_SPDT SW7
U 1 1 5CDB7CCF
P 9750 3950
F 0 "SW7" H 9750 4235 50  0000 C CNN
F 1 "SW_SPDT" H 9750 4144 50  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 9750 3950 50  0001 C CNN
F 3 "~" H 9750 3950 50  0001 C CNN
	1    9750 3950
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R17
U 1 1 5CDB7CD9
P 9200 3850
F 0 "R17" H 9300 3633 60  0000 C CNN
F 1 "4.99K" H 9300 3739 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 9200 3850 60  0001 C CNN
F 3 "" H 9200 3850 60  0000 C CNN
	1    9200 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 3850 9350 3850
Wire Wire Line
	9350 4000 9350 3850
Connection ~ 9350 3850
Wire Wire Line
	9350 3850 9550 3850
$Comp
L Switch:SW_SPDT SW8
U 1 1 5CDB7CE8
P 9750 4450
F 0 "SW8" H 9750 4735 50  0000 C CNN
F 1 "SW_SPDT" H 9750 4644 50  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 9750 4450 50  0001 C CNN
F 3 "~" H 9750 4450 50  0001 C CNN
	1    9750 4450
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R18
U 1 1 5CDB7CF2
P 9200 4350
F 0 "R18" H 9300 4133 60  0000 C CNN
F 1 "4.99K" H 9300 4239 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 9200 4350 60  0001 C CNN
F 3 "" H 9200 4350 60  0000 C CNN
	1    9200 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 4350 9350 4350
Wire Wire Line
	9350 4500 9350 4350
Connection ~ 9350 4350
Wire Wire Line
	9350 4350 9550 4350
$Comp
L SynthMod:HEADER-5X2 P6
U 1 1 5CDCBF7B
P 9250 5500
F 0 "P6" H 9250 5947 60  0000 C CNN
F 1 "SWITCHES" H 9250 5841 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 9100 5200 60  0001 C CNN
F 3 "" H 9100 5200 60  0000 C CNN
	1    9250 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5300 8200 5300
Wire Wire Line
	8200 5300 8200 900 
Wire Wire Line
	8200 900  9350 900 
Wire Wire Line
	8250 1400 8250 5000
Wire Wire Line
	8250 5000 9900 5000
Wire Wire Line
	9900 5000 9900 5300
Wire Wire Line
	9900 5300 9600 5300
Wire Wire Line
	8250 1400 9350 1400
Wire Wire Line
	8900 5400 8300 5400
Wire Wire Line
	8300 5400 8300 1900
Wire Wire Line
	8300 1900 9350 1900
Wire Wire Line
	8350 2400 8350 4950
Wire Wire Line
	8350 4950 9950 4950
Wire Wire Line
	9950 4950 9950 5400
Wire Wire Line
	9950 5400 9600 5400
Wire Wire Line
	8350 2400 9350 2400
Wire Wire Line
	8900 5500 8400 5500
Wire Wire Line
	8400 5500 8400 3000
Wire Wire Line
	8400 3000 9350 3000
Wire Wire Line
	8450 3500 8450 4900
Wire Wire Line
	8450 4900 10000 4900
Wire Wire Line
	10000 4900 10000 5500
Wire Wire Line
	10000 5500 9600 5500
Wire Wire Line
	8450 3500 9350 3500
Wire Wire Line
	8900 5600 8500 5600
Wire Wire Line
	8500 5600 8500 4000
Wire Wire Line
	8500 4000 9350 4000
Wire Wire Line
	8550 4500 8550 4850
Wire Wire Line
	8550 4850 10050 4850
Wire Wire Line
	10050 4850 10050 5600
Wire Wire Line
	10050 5600 9600 5600
Wire Wire Line
	8550 4500 9350 4500
Wire Wire Line
	8900 4350 8700 4350
Wire Wire Line
	8700 4350 8700 3850
Wire Wire Line
	8900 750  8700 750 
Connection ~ 8700 750 
Wire Wire Line
	8700 750  8700 700 
Wire Wire Line
	8900 1250 8700 1250
Connection ~ 8700 1250
Wire Wire Line
	8700 1250 8700 750 
Wire Wire Line
	8900 1750 8700 1750
Connection ~ 8700 1750
Wire Wire Line
	8700 1750 8700 1250
Wire Wire Line
	8900 2250 8700 2250
Connection ~ 8700 2250
Wire Wire Line
	8700 2250 8700 1750
Wire Wire Line
	8900 2850 8700 2850
Connection ~ 8700 2850
Wire Wire Line
	8700 2850 8700 2250
Wire Wire Line
	8900 3350 8700 3350
Connection ~ 8700 3350
Wire Wire Line
	8700 3350 8700 2850
Wire Wire Line
	8900 3850 8700 3850
Connection ~ 8700 3850
Wire Wire Line
	8700 3850 8700 3350
Wire Wire Line
	9950 4450 10150 4450
Wire Wire Line
	10150 4450 10150 3950
Wire Wire Line
	10150 850  9950 850 
Wire Wire Line
	9950 1350 10150 1350
Connection ~ 10150 1350
Wire Wire Line
	10150 1350 10150 850 
Wire Wire Line
	9950 1850 10150 1850
Connection ~ 10150 1850
Wire Wire Line
	10150 1850 10150 1350
Wire Wire Line
	9950 2350 10150 2350
Connection ~ 10150 2350
Wire Wire Line
	10150 2350 10150 1850
Wire Wire Line
	9950 3950 10150 3950
Connection ~ 10150 3950
Wire Wire Line
	10150 3950 10150 3450
Wire Wire Line
	9950 3450 10150 3450
Connection ~ 10150 3450
Wire Wire Line
	10150 3450 10150 2950
Wire Wire Line
	9950 2950 10150 2950
Connection ~ 10150 2950
Wire Wire Line
	10150 2950 10150 2350
Wire Wire Line
	10150 4550 10150 4450
Connection ~ 10150 4450
$Comp
L power:GND #PWR0108
U 1 1 5CEFEF4F
P 8800 5750
F 0 "#PWR0108" H 8800 5500 50  0001 C CNN
F 1 "GND" H 8805 5577 50  0000 C CNN
F 2 "" H 8800 5750 50  0001 C CNN
F 3 "" H 8800 5750 50  0001 C CNN
	1    8800 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5CEFFAA1
P 10150 4550
F 0 "#PWR0109" H 10150 4300 50  0001 C CNN
F 1 "GND" H 10155 4377 50  0000 C CNN
F 2 "" H 10150 4550 50  0001 C CNN
F 3 "" H 10150 4550 50  0001 C CNN
	1    10150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5750 8800 5700
Wire Wire Line
	8800 5700 8900 5700
$Comp
L power:VCC #PWR0110
U 1 1 5CF1253F
P 7450 4000
F 0 "#PWR0110" H 7450 3850 50  0001 C CNN
F 1 "VCC" V 7467 4128 50  0000 L CNN
F 2 "" H 7450 4000 50  0001 C CNN
F 3 "" H 7450 4000 50  0001 C CNN
	1    7450 4000
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 5CF138B7
P 5600 3800
F 0 "#PWR0111" H 5600 3650 50  0001 C CNN
F 1 "VCC" V 5617 3928 50  0000 L CNN
F 2 "" H 5600 3800 50  0001 C CNN
F 3 "" H 5600 3800 50  0001 C CNN
	1    5600 3800
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5CF14927
P 5150 2750
F 0 "#PWR0112" H 5150 2600 50  0001 C CNN
F 1 "VCC" V 5167 2878 50  0000 L CNN
F 2 "" H 5150 2750 50  0001 C CNN
F 3 "" H 5150 2750 50  0001 C CNN
	1    5150 2750
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 5CF150DE
P 4350 4850
F 0 "#PWR0113" H 4350 4700 50  0001 C CNN
F 1 "VCC" V 4367 4978 50  0000 L CNN
F 2 "" H 4350 4850 50  0001 C CNN
F 3 "" H 4350 4850 50  0001 C CNN
	1    4350 4850
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 5CF15B9E
P 9600 5700
F 0 "#PWR0114" H 9600 5550 50  0001 C CNN
F 1 "VCC" V 9617 5828 50  0000 L CNN
F 2 "" H 9600 5700 50  0001 C CNN
F 3 "" H 9600 5700 50  0001 C CNN
	1    9600 5700
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0115
U 1 1 5CF16667
P 5150 1550
F 0 "#PWR0115" H 5150 1400 50  0001 C CNN
F 1 "VCC" V 5167 1678 50  0000 L CNN
F 2 "" H 5150 1550 50  0001 C CNN
F 3 "" H 5150 1550 50  0001 C CNN
	1    5150 1550
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0116
U 1 1 5CF16C1E
P 7650 800
F 0 "#PWR0116" H 7650 650 50  0001 C CNN
F 1 "VCC" H 7667 973 50  0000 C CNN
F 2 "" H 7650 800 50  0001 C CNN
F 3 "" H 7650 800 50  0001 C CNN
	1    7650 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 5CF17C4C
P 8700 700
F 0 "#PWR0117" H 8700 550 50  0001 C CNN
F 1 "VCC" H 8717 873 50  0000 C CNN
F 2 "" H 8700 700 50  0001 C CNN
F 3 "" H 8700 700 50  0001 C CNN
	1    8700 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5CF1855D
P 1350 1250
F 0 "Y1" H 1350 1518 50  0000 C CNN
F 1 "16MHz" H 1350 1427 50  0000 C CNN
F 2 "FootPrints:XTAL" H 1350 1250 50  0001 C CNN
F 3 "~" H 1350 1250 50  0001 C CNN
	1    1350 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1250 1700 1350
Wire Wire Line
	1700 1350 2100 1350
Wire Wire Line
	2100 1550 1100 1550
Wire Wire Line
	1100 1550 1100 1250
Wire Wire Line
	1100 1250 1200 1250
$Comp
L SynthMod:Cap C1
U 1 1 5CF3ABF6
P 800 1300
F 0 "C1" H 915 1346 50  0000 L CNN
F 1 "27pF" H 915 1255 50  0000 L CNN
F 2 "FootPrints:CAP-0.1" H 838 1150 50  0001 C CNN
F 3 "" H 800 1300 50  0000 C CNN
	1    800  1300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C2
U 1 1 5CF3BF11
P 1600 1750
F 0 "C2" H 1715 1796 50  0000 L CNN
F 1 "27pF" H 1715 1705 50  0000 L CNN
F 2 "FootPrints:CAP-0.1" H 1638 1600 50  0001 C CNN
F 3 "" H 1600 1750 50  0000 C CNN
	1    1600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1600 1600 1250
Wire Wire Line
	1500 1250 1600 1250
Connection ~ 1600 1250
Wire Wire Line
	1600 1250 1700 1250
Wire Wire Line
	1100 1250 1100 1050
Wire Wire Line
	1100 1050 800  1050
Wire Wire Line
	800  1050 800  1150
Connection ~ 1100 1250
$Comp
L power:GND #PWR0118
U 1 1 5CF5EC72
P 1600 2000
F 0 "#PWR0118" H 1600 1750 50  0001 C CNN
F 1 "GND" H 1450 1950 50  0000 C CNN
F 2 "" H 1600 2000 50  0001 C CNN
F 3 "" H 1600 2000 50  0001 C CNN
	1    1600 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5CF5F2B5
P 800 1500
F 0 "#PWR0119" H 800 1250 50  0001 C CNN
F 1 "GND" H 805 1327 50  0000 C CNN
F 2 "" H 800 1500 50  0001 C CNN
F 3 "" H 800 1500 50  0001 C CNN
	1    800  1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1500 800  1450
Wire Wire Line
	1600 2000 1600 1900
$Comp
L power:VCC #PWR0120
U 1 1 5CF8258F
P 2100 1750
F 0 "#PWR0120" H 2100 1600 50  0001 C CNN
F 1 "VCC" V 2118 1877 50  0000 L CNN
F 2 "" H 2100 1750 50  0001 C CNN
F 3 "" H 2100 1750 50  0001 C CNN
	1    2100 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0121
U 1 1 5CF83A95
P 2600 850
F 0 "#PWR0121" H 2600 700 50  0001 C CNN
F 1 "VCC" H 2617 1023 50  0000 C CNN
F 2 "" H 2600 850 50  0001 C CNN
F 3 "" H 2600 850 50  0001 C CNN
	1    2600 850 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0122
U 1 1 5CF846BA
P 2700 850
F 0 "#PWR0122" H 2700 700 50  0001 C CNN
F 1 "VCC" H 2717 1023 50  0000 C CNN
F 2 "" H 2700 850 50  0001 C CNN
F 3 "" H 2700 850 50  0001 C CNN
	1    2700 850 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0123
U 1 1 5CF84A9A
P 2800 850
F 0 "#PWR0123" H 2800 700 50  0001 C CNN
F 1 "VCC" H 2817 1023 50  0000 C CNN
F 2 "" H 2800 850 50  0001 C CNN
F 3 "" H 2800 850 50  0001 C CNN
	1    2800 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4450 2700 4700
Wire Wire Line
	2700 4700 2600 4700
Connection ~ 2600 4700
Wire Wire Line
	2600 4700 2600 4550
$Comp
L SynthMod:HEADER-5X2 P4
U 1 1 5CF96BDD
P 6100 4950
F 0 "P4" H 6100 5397 60  0000 C CNN
F 1 "PORTC/E" H 6100 5291 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 5950 4650 60  0001 C CNN
F 3 "" H 5950 4650 60  0000 C CNN
	1    6100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4850 5500 4850
Wire Wire Line
	5750 5050 5500 5050
Text Label 5600 4850 0    50   ~ 0
PE2
Text Label 5600 5050 0    50   ~ 0
PE6
Wire Wire Line
	5550 4750 5750 4750
Wire Wire Line
	5500 4950 5750 4950
Text Label 5600 4750 0    50   ~ 0
PC6
Text Label 5600 4950 0    50   ~ 0
PC7
Wire Wire Line
	3600 3250 3300 3250
Wire Wire Line
	3600 3350 3300 3350
Text Label 3350 3250 0    50   ~ 0
PE2
Text Label 3350 3350 0    50   ~ 0
PE6
Wire Wire Line
	3550 2050 3300 2050
Wire Wire Line
	3550 2150 3300 2150
Text Label 3350 2050 0    50   ~ 0
PC6
Text Label 3350 2150 0    50   ~ 0
PC7
Wire Wire Line
	6650 4100 6650 4000
Wire Wire Line
	6650 4000 6750 4000
$Comp
L power:GND #PWR0124
U 1 1 5D048551
P 6650 4100
F 0 "#PWR0124" H 6650 3850 50  0001 C CNN
F 1 "GND" H 6655 3927 50  0000 C CNN
F 2 "" H 6650 4100 50  0001 C CNN
F 3 "" H 6650 4100 50  0001 C CNN
	1    6650 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5D048A15
P 5650 5250
F 0 "#PWR0125" H 5650 5000 50  0001 C CNN
F 1 "GND" H 5655 5077 50  0000 C CNN
F 2 "" H 5650 5250 50  0001 C CNN
F 3 "" H 5650 5250 50  0001 C CNN
	1    5650 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0126
U 1 1 5D04912F
P 6450 5150
F 0 "#PWR0126" H 6450 5000 50  0001 C CNN
F 1 "VCC" V 6467 5278 50  0000 L CNN
F 2 "" H 6450 5150 50  0001 C CNN
F 3 "" H 6450 5150 50  0001 C CNN
	1    6450 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 5150 5650 5150
Wire Wire Line
	5650 5150 5650 5250
$Comp
L Connector:Jack-DC J3
U 1 1 5CC38F9C
P 950 5800
F 0 "J3" H 1007 6125 50  0000 C CNN
F 1 "Jack-DC" H 1007 6034 50  0000 C CNN
F 2 "FootPrints:DC-JACK-CUI-PJ-085AH" H 1000 5760 50  0001 C CNN
F 3 "~" H 1000 5760 50  0001 C CNN
F 4 "PJ-084ah" H 950 5550 50  0000 C CNN "MFG-PN"
	1    950  5800
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D9
U 1 1 5CC39CF7
P 1450 5350
F 0 "D9" V 1404 5429 50  0000 L CNN
F 1 "1N4003" V 1495 5429 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 1450 5350 50  0001 C CNN
F 3 "~" H 1450 5350 50  0001 C CNN
	1    1450 5350
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D11
U 1 1 5CC3B61E
P 1900 5350
F 0 "D11" V 1854 5429 50  0000 L CNN
F 1 "1N4003" V 1945 5429 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 1900 5350 50  0001 C CNN
F 3 "~" H 1900 5350 50  0001 C CNN
	1    1900 5350
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D10
U 1 1 5CC3BC00
P 1450 6150
F 0 "D10" V 1404 6229 50  0000 L CNN
F 1 "1N4003" V 1495 6229 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 1450 6150 50  0001 C CNN
F 3 "~" H 1450 6150 50  0001 C CNN
	1    1450 6150
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D12
U 1 1 5CC3CD4F
P 1900 6150
F 0 "D12" V 1854 6229 50  0000 L CNN
F 1 "1N4003" V 1945 6229 50  0000 L CNN
F 2 "FootPrints:DIODE0.4" H 1900 6150 50  0001 C CNN
F 3 "~" H 1900 6150 50  0001 C CNN
	1    1900 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 5700 1450 5700
Wire Wire Line
	1450 5700 1450 5500
Wire Wire Line
	1450 5700 1450 6000
Connection ~ 1450 5700
Wire Wire Line
	1250 5900 1900 5900
Wire Wire Line
	1900 5900 1900 5500
Wire Wire Line
	1900 6000 1900 5900
Connection ~ 1900 5900
Wire Wire Line
	1450 6300 1450 6600
Wire Wire Line
	1450 6600 1900 6600
Wire Wire Line
	1900 6600 1900 6300
Wire Wire Line
	1450 5200 1450 5100
Wire Wire Line
	1450 5100 1900 5100
Wire Wire Line
	1900 5100 1900 5200
$Comp
L SynthMod:LM78L05-SYNTHMOD U2
U 1 1 5CCD98EC
P 3150 5550
F 0 "U2" H 3150 5955 50  0000 C CNN
F 1 "LM78L05-SYNTHMOD" H 3150 5864 50  0000 C CNN
F 2 "FootPrints:TO92" H 3150 5550 50  0001 C CNN
F 3 "regulator\\lm78xx.pdf" H 3150 5773 50  0000 C CNN
	1    3150 5550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Polarized C4
U 1 1 5CCDADC0
P 2500 5750
F 0 "C4" H 2615 5796 50  0000 L CNN
F 1 "Cap_Polarized" H 2615 5705 50  0000 L CNN
F 2 "FootPrints:Cap-Pol-Rad-0.2_0.1" H 2538 5600 50  0001 C CNN
F 3 "" H 2500 5750 50  0000 C CNN
	1    2500 5750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Polarized C5
U 1 1 5CCDC0E6
P 3700 5750
F 0 "C5" H 3815 5796 50  0000 L CNN
F 1 "Cap_Polarized" H 3815 5705 50  0000 L CNN
F 2 "FootPrints:Cap-Pol-Rad-0.2_0.1" H 3738 5600 50  0001 C CNN
F 3 "" H 3700 5750 50  0000 C CNN
	1    3700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5500 2500 5500
Wire Wire Line
	2500 5500 2500 5600
Wire Wire Line
	2500 5500 2500 5100
Wire Wire Line
	2500 5100 1900 5100
Connection ~ 2500 5500
Connection ~ 1900 5100
Wire Wire Line
	3550 5500 3700 5500
Wire Wire Line
	3700 5500 3700 5600
Wire Wire Line
	3700 5900 3700 6000
Wire Wire Line
	3700 6000 3150 6000
Wire Wire Line
	3150 6000 3150 5800
Wire Wire Line
	3150 6000 2500 6000
Wire Wire Line
	2500 6000 2500 5900
Connection ~ 3150 6000
Wire Wire Line
	1900 6600 2500 6600
Wire Wire Line
	2500 6600 2500 6000
Connection ~ 1900 6600
Connection ~ 2500 6000
Wire Wire Line
	3700 6150 3700 6000
Connection ~ 3700 6000
Wire Wire Line
	3800 5500 3700 5500
Connection ~ 3700 5500
$Comp
L power:GND #PWR0127
U 1 1 5CDA06E5
P 3700 6150
F 0 "#PWR0127" H 3700 5900 50  0001 C CNN
F 1 "GND" H 3705 5977 50  0000 C CNN
F 2 "" H 3700 6150 50  0001 C CNN
F 3 "" H 3700 6150 50  0001 C CNN
	1    3700 6150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0128
U 1 1 5CDA0EBB
P 3800 5500
F 0 "#PWR0128" H 3800 5350 50  0001 C CNN
F 1 "VCC" V 3817 5628 50  0000 L CNN
F 2 "" H 3800 5500 50  0001 C CNN
F 3 "" H 3800 5500 50  0001 C CNN
	1    3800 5500
	0    1    1    0   
$EndComp
$Comp
L SynthMod:PAD P8
U 1 1 5CC3B026
P 8800 6350
F 0 "P8" H 8735 6183 60  0000 R CNN
F 1 "PAD" H 8735 6289 60  0000 R CNN
F 2 "FootPrints:MountingHole_140" H 8735 6395 60  0000 R CNN
F 3 "" H 8800 6050 60  0000 C CNN
	1    8800 6350
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:PAD P9
U 1 1 5CC3C303
P 9300 6350
F 0 "P9" H 9235 6183 60  0000 R CNN
F 1 "PAD" H 9235 6289 60  0000 R CNN
F 2 "FootPrints:MountingHole_140" H 9235 6395 60  0000 R CNN
F 3 "" H 9300 6050 60  0000 C CNN
	1    9300 6350
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:PAD P10
U 1 1 5CC3C66A
P 9600 6350
F 0 "P10" H 9535 6183 60  0000 R CNN
F 1 "PAD" H 9535 6289 60  0000 R CNN
F 2 "FootPrints:MountingHole_140" H 9535 6395 60  0000 R CNN
F 3 "" H 9600 6050 60  0000 C CNN
	1    9600 6350
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:PAD P7
U 1 1 5CC3CA20
P 8450 6350
F 0 "P7" H 8385 6183 60  0000 R CNN
F 1 "PAD" H 8385 6289 60  0000 R CNN
F 2 "FootPrints:MountingHole_140" H 8385 6395 60  0000 R CNN
F 3 "" H 8450 6050 60  0000 C CNN
	1    8450 6350
	-1   0    0    1   
$EndComp
NoConn ~ 8450 6350
NoConn ~ 9300 6350
NoConn ~ 9600 6350
NoConn ~ 8800 6350
Wire Wire Line
	3500 3950 4150 3950
Wire Wire Line
	3750 4200 3750 3850
Connection ~ 3750 3850
Wire Wire Line
	3750 3850 4250 3850
Text Label 1350 5700 0    50   ~ 0
A
Text Label 1350 5900 0    50   ~ 0
B
Text Label 1700 5100 0    50   ~ 0
C
$EndSCHEMATC
