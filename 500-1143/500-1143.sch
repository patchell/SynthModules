EESchema Schematic File Version 4
LIBS:500-1143-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Snare Drum Module"
Date "2019-02-26"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:Phone_Jack_wSw-PCB J?
U 1 1 5CB94555
P 1350 1650
F 0 "J?" H 1419 2263 60  0000 C CNN
F 1 "Phone_Jack_wSw-PCB" H 1419 2157 60  0000 C CNN
F 2 "" H 1350 1650 60  0000 C CNN
F 3 "" H 1350 1650 60  0000 C CNN
	1    1350 1650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J?
U 1 1 5CB94638
P 9000 2350
F 0 "J?" H 8697 2703 60  0000 R CNN
F 1 "OUT" H 8697 2597 60  0000 R CNN
F 2 "" H 9000 2350 60  0000 C CNN
F 3 "" H 9000 2350 60  0000 C CNN
	1    9000 2350
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U?
U 1 2 5CB9474F
P 3050 2500
F 0 "U?" H 3175 3249 60  0000 C CNN
F 1 "TL052" H 3175 3143 60  0000 C CNN
F 2 "" H 3050 2500 60  0000 C CNN
F 3 "" H 3050 2500 60  0000 C CNN
	1    3050 2500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5CB948A1
P 3050 750
F 0 "R?" H 3150 967 60  0000 C CNN
F 1 "RESISTOR" H 3150 861 60  0000 C CNN
F 2 "" H 3050 750 60  0000 C CNN
F 3 "" H 3050 750 60  0000 C CNN
	1    3050 750 
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C?
U 1 1 5CB94961
P 2800 1050
F 0 "C?" V 3052 1050 50  0000 C CNN
F 1 "Cap" V 2961 1050 50  0000 C CNN
F 2 "" H 2838 900 50  0000 C CNN
F 3 "" H 2800 1050 50  0000 C CNN
	1    2800 1050
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:Cap C?
U 1 1 5CB94A21
P 3450 1050
F 0 "C?" V 3702 1050 50  0000 C CNN
F 1 "Cap" V 3611 1050 50  0000 C CNN
F 2 "" H 3488 900 50  0000 C CNN
F 3 "" H 3450 1050 50  0000 C CNN
	1    3450 1050
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5CB94A5F
P 3150 1200
F 0 "R?" V 3197 1258 60  0000 L CNN
F 1 "RESISTOR" V 3303 1258 60  0000 L CNN
F 2 "" H 3150 1200 60  0000 C CNN
F 3 "" H 3150 1200 60  0000 C CNN
	1    3150 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1050 2550 1050
Wire Wire Line
	2550 1050 2550 750 
Wire Wire Line
	2550 750  2950 750 
Wire Wire Line
	3350 750  3800 750 
Wire Wire Line
	3800 750  3800 1050
Wire Wire Line
	3800 1050 3600 1050
Wire Wire Line
	2950 1050 3150 1050
Wire Wire Line
	3150 1100 3150 1050
Connection ~ 3150 1050
Wire Wire Line
	3150 1050 3300 1050
Wire Wire Line
	2550 1050 2550 2050
Wire Wire Line
	2550 2050 2850 2050
Connection ~ 2550 1050
Wire Wire Line
	3800 1050 3800 2100
Wire Wire Line
	3800 2100 3500 2100
Connection ~ 3800 1050
$Comp
L power:GND #PWR?
U 1 1 5CB94CA3
P 3150 1550
F 0 "#PWR?" H 3150 1300 50  0001 C CNN
F 1 "GND" H 3155 1377 50  0000 C CNN
F 2 "" H 3150 1550 50  0001 C CNN
F 3 "" H 3150 1550 50  0001 C CNN
	1    3150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1500 3150 1550
Wire Wire Line
	2850 2150 2700 2150
Wire Wire Line
	2450 2150 2450 1250
$Comp
L SynthMod:RESISTOR R?
U 1 1 5CB95070
P 2700 2300
F 0 "R?" V 2747 2358 60  0000 L CNN
F 1 "RESISTOR" V 2853 2358 60  0000 L CNN
F 2 "" H 2700 2300 60  0000 C CNN
F 3 "" H 2700 2300 60  0000 C CNN
	1    2700 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2200 2700 2150
Connection ~ 2700 2150
Wire Wire Line
	2700 2150 2450 2150
$Comp
L power:GND #PWR?
U 1 1 5CB95225
P 2700 2600
F 0 "#PWR?" H 2700 2350 50  0001 C CNN
F 1 "GND" H 2705 2427 50  0000 C CNN
F 2 "" H 2700 2600 50  0001 C CNN
F 3 "" H 2700 2600 50  0001 C CNN
	1    2700 2600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U?
U 1 2 5CB9572C
P 3050 4950
F 0 "U?" H 3175 5699 60  0000 C CNN
F 1 "TL052" H 3175 5593 60  0000 C CNN
F 2 "" H 3050 4950 60  0000 C CNN
F 3 "" H 3050 4950 60  0000 C CNN
	1    3050 4950
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5CB95732
P 3050 3200
F 0 "R?" H 3150 3417 60  0000 C CNN
F 1 "RESISTOR" H 3150 3311 60  0000 C CNN
F 2 "" H 3050 3200 60  0000 C CNN
F 3 "" H 3050 3200 60  0000 C CNN
	1    3050 3200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C?
U 1 1 5CB95738
P 2800 3500
F 0 "C?" V 3052 3500 50  0000 C CNN
F 1 "Cap" V 2961 3500 50  0000 C CNN
F 2 "" H 2838 3350 50  0000 C CNN
F 3 "" H 2800 3500 50  0000 C CNN
	1    2800 3500
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:Cap C?
U 1 1 5CB9573E
P 3450 3500
F 0 "C?" V 3702 3500 50  0000 C CNN
F 1 "Cap" V 3611 3500 50  0000 C CNN
F 2 "" H 3488 3350 50  0000 C CNN
F 3 "" H 3450 3500 50  0000 C CNN
	1    3450 3500
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5CB95744
P 3150 3650
F 0 "R?" V 3197 3708 60  0000 L CNN
F 1 "RESISTOR" V 3303 3708 60  0000 L CNN
F 2 "" H 3150 3650 60  0000 C CNN
F 3 "" H 3150 3650 60  0000 C CNN
	1    3150 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 3500 2550 3500
Wire Wire Line
	2550 3500 2550 3200
Wire Wire Line
	2550 3200 2950 3200
Wire Wire Line
	3350 3200 3800 3200
Wire Wire Line
	3800 3200 3800 3500
Wire Wire Line
	3800 3500 3600 3500
Wire Wire Line
	2950 3500 3150 3500
Wire Wire Line
	3150 3550 3150 3500
Connection ~ 3150 3500
Wire Wire Line
	3150 3500 3300 3500
Wire Wire Line
	2550 3500 2550 4500
Wire Wire Line
	2550 4500 2850 4500
Connection ~ 2550 3500
Wire Wire Line
	3800 3500 3800 4550
Wire Wire Line
	3800 4550 3500 4550
Connection ~ 3800 3500
$Comp
L power:GND #PWR?
U 1 1 5CB9575A
P 3150 4000
F 0 "#PWR?" H 3150 3750 50  0001 C CNN
F 1 "GND" H 3155 3827 50  0000 C CNN
F 2 "" H 3150 4000 50  0001 C CNN
F 3 "" H 3150 4000 50  0001 C CNN
	1    3150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3950 3150 4000
Wire Wire Line
	2850 4600 2700 4600
$Comp
L SynthMod:RESISTOR R?
U 1 1 5CB95762
P 2700 4750
F 0 "R?" V 2747 4808 60  0000 L CNN
F 1 "RESISTOR" V 2853 4808 60  0000 L CNN
F 2 "" H 2700 4750 60  0000 C CNN
F 3 "" H 2700 4750 60  0000 C CNN
	1    2700 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 4650 2700 4600
Connection ~ 2700 4600
Wire Wire Line
	2700 4600 2450 4600
$Comp
L power:GND #PWR?
U 1 1 5CB9576B
P 2700 5050
F 0 "#PWR?" H 2700 4800 50  0001 C CNN
F 1 "GND" H 2705 4877 50  0000 C CNN
F 2 "" H 2700 5050 50  0001 C CNN
F 3 "" H 2700 5050 50  0001 C CNN
	1    2700 5050
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:74HC164 U?
U 1 1 5CB95DE1
P 3900 6650
F 0 "U?" H 3925 7225 50  0000 C CNN
F 1 "74HC164" H 3925 7134 50  0000 C CNN
F 2 "" H 3950 6250 50  0001 C CNN
F 3 "" H 3950 6250 50  0001 C CNN
	1    3900 6650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:74HC164 U?
U 1 1 5CB960D2
P 5500 6650
F 0 "U?" H 5525 7225 50  0000 C CNN
F 1 "74HC164" H 5525 7134 50  0000 C CNN
F 2 "" H 5550 6250 50  0001 C CNN
F 3 "" H 5550 6250 50  0001 C CNN
	1    5500 6650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 4 1 5CB961E8
P 3150 6300
F 0 "U?" H 3150 6625 50  0000 C CNN
F 1 "74HC86" H 3150 6534 50  0000 C CNN
F 2 "" H 3150 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 3150 6300 50  0001 C CNN
	4    3150 6300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 3 1 5CB9696D
P 2350 6200
F 0 "U?" H 2350 6525 50  0000 C CNN
F 1 "74HC86" H 2350 6434 50  0000 C CNN
F 2 "" H 2350 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 2350 6200 50  0001 C CNN
	3    2350 6200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 2 1 5CB969C1
P 1600 5850
F 0 "U?" H 1600 6175 50  0000 C CNN
F 1 "74HC86" H 1600 6084 50  0000 C CNN
F 2 "" H 1600 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 1600 5850 50  0001 C CNN
	2    1600 5850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 1 1 5CB96A27
P 1600 6500
F 0 "U?" H 1600 6825 50  0000 C CNN
F 1 "74HC86" H 1600 6734 50  0000 C CNN
F 2 "" H 1600 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 1600 6500 50  0001 C CNN
	1    1600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5850 2000 5850
Wire Wire Line
	2000 5850 2000 6100
Wire Wire Line
	2000 6100 2050 6100
Wire Wire Line
	1900 6500 1950 6500
Wire Wire Line
	1950 6500 1950 6300
Wire Wire Line
	1950 6300 2050 6300
Wire Wire Line
	2650 6200 2850 6200
Wire Wire Line
	3450 6300 3500 6300
Wire Wire Line
	3500 6300 3500 6400
Wire Wire Line
	3500 6400 3550 6400
Connection ~ 3500 6300
Wire Wire Line
	3500 6300 3550 6300
Wire Wire Line
	4300 7000 4650 7000
Wire Wire Line
	4650 7000 4650 6300
Wire Wire Line
	4650 6300 5100 6300
Wire Wire Line
	5150 6400 5100 6400
Wire Wire Line
	5100 6400 5100 6300
Connection ~ 5100 6300
Wire Wire Line
	5100 6300 5150 6300
Wire Wire Line
	5900 7000 6050 7000
Wire Wire Line
	6050 7000 6050 7400
Wire Wire Line
	6050 7400 1200 7400
Wire Wire Line
	1200 7400 1200 6600
Wire Wire Line
	1200 6600 1300 6600
Wire Wire Line
	5900 6900 6100 6900
Wire Wire Line
	6100 6900 6100 7450
Wire Wire Line
	1150 7450 1150 6400
Wire Wire Line
	1150 6400 1300 6400
Wire Wire Line
	5900 6700 6150 6700
Wire Wire Line
	6150 6700 6150 7500
Wire Wire Line
	6150 7500 1100 7500
Wire Wire Line
	1100 7500 1100 5950
Wire Wire Line
	1100 5950 1300 5950
Wire Wire Line
	4300 6600 4500 6600
Wire Wire Line
	4500 6600 4500 7350
Wire Wire Line
	4500 7350 1050 7350
Wire Wire Line
	1050 7350 1050 5750
Wire Wire Line
	1050 5750 1300 5750
$Comp
L power:VCC #PWR?
U 1 1 5CB9F9DF
P 2800 6400
F 0 "#PWR?" H 2800 6250 50  0001 C CNN
F 1 "VCC" V 2818 6527 50  0000 L CNN
F 2 "" H 2800 6400 50  0001 C CNN
F 3 "" H 2800 6400 50  0001 C CNN
	1    2800 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 6400 2850 6400
Wire Wire Line
	3550 6550 3400 6550
Wire Wire Line
	3400 6550 3400 7250
Wire Wire Line
	3400 7250 4550 7250
Wire Wire Line
	4550 7250 4550 6550
Wire Wire Line
	4550 6550 5150 6550
$Comp
L SynthMod:RESISTOR R?
U 1 1 5CBA3156
P 6550 6200
F 0 "R?" H 6650 6417 60  0000 C CNN
F 1 "RESISTOR" H 6650 6311 60  0000 C CNN
F 2 "" H 6550 6200 60  0000 C CNN
F 3 "" H 6550 6200 60  0000 C CNN
	1    6550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 6200 6050 6200
Wire Wire Line
	6050 6200 6050 7000
Connection ~ 6050 7000
$Comp
L SynthMod:Cap C?
U 1 1 5CBA50E6
P 6900 6400
F 0 "C?" H 7015 6446 50  0000 L CNN
F 1 "Cap" H 7015 6355 50  0000 L CNN
F 2 "" H 6938 6250 50  0000 C CNN
F 3 "" H 6900 6400 50  0000 C CNN
	1    6900 6400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5CBA52FC
P 5000 7050
F 0 "C?" H 5115 7096 50  0000 L CNN
F 1 "0.1uF" H 5115 7005 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 5115 6959 50  0001 L CNN
F 3 "" H 5000 7050 50  0000 C CNN
	1    5000 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6850 5000 6850
Wire Wire Line
	5000 6850 5000 6900
Wire Wire Line
	5000 6850 5150 6850
Connection ~ 5000 6850
Wire Wire Line
	5150 7000 5150 7250
Wire Wire Line
	5150 7250 5000 7250
Wire Wire Line
	5000 7250 5000 7200
$Comp
L power:VCC #PWR?
U 1 1 5CBAF3BB
P 4950 6850
F 0 "#PWR?" H 4950 6700 50  0001 C CNN
F 1 "VCC" V 4968 6977 50  0000 L CNN
F 2 "" H 4950 6850 50  0001 C CNN
F 3 "" H 4950 6850 50  0001 C CNN
	1    4950 6850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CBAF46E
P 5000 7250
F 0 "#PWR?" H 5000 7000 50  0001 C CNN
F 1 "GND" H 5005 7077 50  0000 C CNN
F 2 "" H 5000 7250 50  0001 C CNN
F 3 "" H 5000 7250 50  0001 C CNN
	1    5000 7250
	1    0    0    -1  
$EndComp
Connection ~ 5000 7250
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5CBAF4A7
P 3100 7050
F 0 "C?" H 3215 7096 50  0000 L CNN
F 1 "0.1uF" H 3215 7005 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 3215 6959 50  0001 L CNN
F 3 "" H 3100 7050 50  0000 C CNN
	1    3100 7050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5CBAF513
P 3000 6850
F 0 "#PWR?" H 3000 6700 50  0001 C CNN
F 1 "VCC" V 3018 6977 50  0000 L CNN
F 2 "" H 3000 6850 50  0001 C CNN
F 3 "" H 3000 6850 50  0001 C CNN
	1    3000 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 6850 3100 6850
Wire Wire Line
	3100 6900 3100 6850
Connection ~ 3100 6850
Wire Wire Line
	3100 6850 3000 6850
Wire Wire Line
	3100 7200 3550 7200
Wire Wire Line
	3550 7200 3550 7000
$Comp
L power:GND #PWR?
U 1 1 5CBB5F95
P 3100 7200
F 0 "#PWR?" H 3100 6950 50  0001 C CNN
F 1 "GND" H 3105 7027 50  0000 C CNN
F 2 "" H 3100 7200 50  0001 C CNN
F 3 "" H 3100 7200 50  0001 C CNN
	1    3100 7200
	1    0    0    -1  
$EndComp
Connection ~ 3100 7200
$Comp
L 74xx:74HC86 U?
U 5 1 5CBB6000
P 2150 7050
F 0 "U?" V 2517 7050 50  0000 C CNN
F 1 "74HC86" V 2426 7050 50  0000 C CNN
F 2 "" H 2150 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 2150 7050 50  0001 C CNN
	5    2150 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 7450 6100 7450
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5CBBD536
P 1550 7700
F 0 "C?" H 1665 7746 50  0000 L CNN
F 1 "0.1uF" H 1665 7655 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 1665 7609 50  0001 L CNN
F 3 "" H 1550 7700 50  0000 C CNN
	1    1550 7700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CBBD5C2
P 1550 7850
F 0 "#PWR?" H 1550 7600 50  0001 C CNN
F 1 "GND" H 1555 7677 50  0000 C CNN
F 2 "" H 1550 7850 50  0001 C CNN
F 3 "" H 1550 7850 50  0001 C CNN
	1    1550 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CBBD601
P 2700 7100
F 0 "#PWR?" H 2700 6850 50  0001 C CNN
F 1 "GND" H 2705 6927 50  0000 C CNN
F 2 "" H 2700 7100 50  0001 C CNN
F 3 "" H 2700 7100 50  0001 C CNN
	1    2700 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7100 2700 7050
Wire Wire Line
	2700 7050 2650 7050
Wire Wire Line
	1550 7550 1550 7050
Wire Wire Line
	1550 7050 1650 7050
$Comp
L power:VCC #PWR?
U 1 1 5CBC26C0
P 1500 7050
F 0 "#PWR?" H 1500 6900 50  0001 C CNN
F 1 "VCC" V 1518 7177 50  0000 L CNN
F 2 "" H 1500 7050 50  0001 C CNN
F 3 "" H 1500 7050 50  0001 C CNN
	1    1500 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 7050 1550 7050
Connection ~ 1550 7050
Wire Wire Line
	5150 6700 4700 6700
Wire Wire Line
	4700 6700 4700 7550
Wire Wire Line
	4700 7550 3450 7550
Wire Wire Line
	3450 7550 3450 6700
Wire Wire Line
	3450 6700 3550 6700
$Comp
L SynthMod:Cap_Bypass C?
U 1 1 5CBC8259
P 4700 7750
F 0 "C?" H 4815 7796 50  0000 L CNN
F 1 "0.1uF" H 4815 7705 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0_3" H 4815 7659 50  0001 L CNN
F 3 "" H 4700 7750 50  0000 C CNN
	1    4700 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7550 4700 7600
Connection ~ 4700 7550
$Comp
L power:GND #PWR?
U 1 1 5CBCE1E7
P 4700 7900
F 0 "#PWR?" H 4700 7650 50  0001 C CNN
F 1 "GND" H 4705 7727 50  0000 C CNN
F 2 "" H 4700 7900 50  0001 C CNN
F 3 "" H 4700 7900 50  0001 C CNN
	1    4700 7900
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5CBCE294
P 2950 7800
F 0 "R?" H 3050 8017 60  0000 C CNN
F 1 "RESISTOR" H 3050 7911 60  0000 C CNN
F 2 "" H 2950 7800 60  0000 C CNN
F 3 "" H 2950 7800 60  0000 C CNN
	1    2950 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 7800 3450 7800
Wire Wire Line
	3450 7800 3450 7550
Connection ~ 3450 7550
$Comp
L power:VCC #PWR?
U 1 1 5CBD1592
P 2850 7800
F 0 "#PWR?" H 2850 7650 50  0001 C CNN
F 1 "VCC" V 2868 7927 50  0000 L CNN
F 2 "" H 2850 7800 50  0001 C CNN
F 3 "" H 2850 7800 50  0001 C CNN
	1    2850 7800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CBD185D
P 6900 6550
F 0 "#PWR?" H 6900 6300 50  0001 C CNN
F 1 "GND" H 6905 6377 50  0000 C CNN
F 2 "" H 6900 6550 50  0001 C CNN
F 3 "" H 6900 6550 50  0001 C CNN
	1    6900 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 6200 6900 6200
Wire Wire Line
	6900 6200 6900 6250
$Comp
L SynthMod:Cap C?
U 1 1 5CBD4DCE
P 2300 4600
F 0 "C?" V 2552 4600 50  0000 C CNN
F 1 "Cap" V 2461 4600 50  0000 C CNN
F 2 "" H 2338 4450 50  0000 C CNN
F 3 "" H 2300 4600 50  0000 C CNN
	1    2300 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 4600 1950 4600
Wire Wire Line
	1950 4600 1950 5750
Wire Wire Line
	1950 5750 6900 5750
Wire Wire Line
	6900 5750 6900 6200
Connection ~ 6900 6200
$Comp
L SynthMod:Cap C?
U 1 1 5CBD858D
P 2150 1250
F 0 "C?" V 2402 1250 50  0000 C CNN
F 1 ",047uF" V 2311 1250 50  0000 C CNN
F 2 "" H 2188 1100 50  0000 C CNN
F 3 "" H 2150 1250 50  0000 C CNN
	1    2150 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 1250 1750 1250
Wire Wire Line
	2450 1250 2300 1250
Wire Wire Line
	1900 1650 1900 1450
Wire Wire Line
	1900 1450 1750 1450
$Comp
L power:GND #PWR?
U 1 1 5CBE3015
P 1900 1650
F 0 "#PWR?" H 1900 1400 50  0001 C CNN
F 1 "GND" H 1905 1477 50  0000 C CNN
F 2 "" H 1900 1650 50  0001 C CNN
F 3 "" H 1900 1650 50  0001 C CNN
	1    1900 1650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U?
U 1 2 5C765E7E
P 5250 5650
F 0 "U?" H 5375 6399 60  0000 C CNN
F 1 "TL052" H 5375 6293 60  0000 C CNN
F 2 "" H 5250 5650 60  0000 C CNN
F 3 "" H 5250 5650 60  0000 C CNN
	1    5250 5650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U?
U 1 1 5C765F06
P 6750 5700
F 0 "U?" H 6875 6449 60  0000 C CNN
F 1 "TL052" H 6875 6343 60  0000 C CNN
F 2 "" H 6750 5700 60  0000 C CNN
F 3 "" H 6750 5700 60  0000 C CNN
	1    6750 5700
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:Cap C?
U 1 1 5C765FE0
P 5350 4650
F 0 "C?" V 5602 4650 50  0000 C CNN
F 1 "Cap" V 5511 4650 50  0000 C CNN
F 2 "" H 5388 4500 50  0000 C CNN
F 3 "" H 5350 4650 50  0000 C CNN
	1    5350 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 4650 4950 4650
Wire Wire Line
	4950 4650 4950 5200
Wire Wire Line
	4950 5200 5050 5200
Wire Wire Line
	5500 4650 5800 4650
Wire Wire Line
	5800 4650 5800 5250
Wire Wire Line
	5800 5250 5700 5250
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C76DD62
P 4500 5200
F 0 "R?" H 4600 5417 60  0000 C CNN
F 1 "RESISTOR" H 4600 5311 60  0000 C CNN
F 2 "" H 4500 5200 60  0000 C CNN
F 3 "" H 4500 5200 60  0000 C CNN
	1    4500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5200 4950 5200
Connection ~ 4950 5200
$Comp
L SynthMod:POT-ALPHA-16mm-RA R?
U 1 1 5C771F4D
P 4150 5100
F 0 "R?" V 4197 5042 60  0000 R CNN
F 1 "POT-ALPHA-16mm-RA" V 4303 5042 60  0000 R CNN
F 2 "" H 4150 5100 60  0000 C CNN
F 3 "" H 4150 5100 60  0000 C CNN
	1    4150 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 5000 4150 4200
Wire Wire Line
	4150 4200 7300 4200
Wire Wire Line
	7300 4200 7300 4800
Wire Wire Line
	7300 5300 7200 5300
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C776421
P 6100 5250
F 0 "R?" H 6200 5467 60  0000 C CNN
F 1 "RESISTOR" H 6200 5361 60  0000 C CNN
F 2 "" H 6100 5250 60  0000 C CNN
F 3 "" H 6100 5250 60  0000 C CNN
	1    6100 5250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C77AA21
P 6850 4800
F 0 "R?" H 6950 5017 60  0000 C CNN
F 1 "RESISTOR" H 6950 4911 60  0000 C CNN
F 2 "" H 6850 4800 60  0000 C CNN
F 3 "" H 6850 4800 60  0000 C CNN
	1    6850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4800 7150 4800
Connection ~ 7300 4800
Wire Wire Line
	7300 4800 7300 5300
Wire Wire Line
	6750 4800 6500 4800
Wire Wire Line
	6500 4800 6500 5250
Wire Wire Line
	6500 5250 6400 5250
Wire Wire Line
	6550 5250 6500 5250
Connection ~ 6500 5250
Wire Wire Line
	6000 5250 5800 5250
Connection ~ 5800 5250
Wire Wire Line
	6500 5450 6500 5350
Wire Wire Line
	6500 5350 6550 5350
Wire Wire Line
	4950 5350 4950 5300
Wire Wire Line
	4950 5300 5050 5300
$Comp
L power:GND #PWR?
U 1 1 5C7963E6
P 4150 5400
F 0 "#PWR?" H 4150 5150 50  0001 C CNN
F 1 "GND" H 4155 5227 50  0000 C CNN
F 2 "" H 4150 5400 50  0001 C CNN
F 3 "" H 4150 5400 50  0001 C CNN
	1    4150 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C79643B
P 4950 5350
F 0 "#PWR?" H 4950 5100 50  0001 C CNN
F 1 "GND" H 4955 5177 50  0000 C CNN
F 2 "" H 4950 5350 50  0001 C CNN
F 3 "" H 4950 5350 50  0001 C CNN
	1    4950 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C796490
P 6500 5450
F 0 "#PWR?" H 6500 5200 50  0001 C CNN
F 1 "GND" H 6505 5277 50  0000 C CNN
F 2 "" H 6500 5450 50  0001 C CNN
F 3 "" H 6500 5450 50  0001 C CNN
	1    6500 5450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:LM13600-DIP U?
U 1 1 5C79B85A
P 4900 2200
F 0 "U?" H 5450 2737 60  0000 C CNN
F 1 "LM13600-DIP" H 5450 2631 60  0000 C CNN
F 2 "" H 5200 2250 60  0000 C CNN
F 3 "" H 5200 2250 60  0000 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:PNP Q?
U 1 1 5C7A5971
P 5500 2700
F 0 "Q?" H 5695 2746 50  0000 L CNN
F 1 "2N3906" H 5695 2655 50  0000 L CNN
F 2 "" H 5700 2800 50  0000 C CNN
F 3 "" H 5500 2700 50  0000 C CNN
	1    5500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2500 5600 2400
Wire Wire Line
	5200 3050 5600 3050
Wire Wire Line
	5600 3050 5600 2900
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C7AFA40
P 4900 3050
F 0 "R?" H 5000 3267 60  0000 C CNN
F 1 "33K" H 5000 3161 60  0000 C CNN
F 2 "" H 4900 3050 60  0000 C CNN
F 3 "" H 4900 3050 60  0000 C CNN
	1    4900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C7AFBC0
P 5250 2750
F 0 "#PWR?" H 5250 2500 50  0001 C CNN
F 1 "GND" H 5255 2577 50  0000 C CNN
F 2 "" H 5250 2750 50  0001 C CNN
F 3 "" H 5250 2750 50  0001 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2750 5250 2700
Wire Wire Line
	5250 2700 5300 2700
Text Notes 5750 5500 0    50   ~ 0
LFO\n
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C85DCE5
P 4300 1900
F 0 "R?" H 4400 2117 60  0000 C CNN
F 1 "33K" H 4400 2011 60  0000 C CNN
F 2 "" H 4300 1900 60  0000 C CNN
F 3 "" H 4300 1900 60  0000 C CNN
	1    4300 1900
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C868BCD
P 4650 2250
F 0 "R?" H 4800 2050 60  0000 C CNN
F 1 "100" H 4750 2150 60  0000 C CNN
F 2 "" H 4650 2250 60  0000 C CNN
F 3 "" H 4650 2250 60  0000 C CNN
	1    4650 2250
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C868CDB
P 4800 2250
F 0 "R?" H 4900 2467 60  0000 C CNN
F 1 "100" H 4900 2361 60  0000 C CNN
F 2 "" H 4800 2250 60  0000 C CNN
F 3 "" H 4800 2250 60  0000 C CNN
	1    4800 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 2150 4650 2100
Wire Wire Line
	4650 1900 4600 1900
Wire Wire Line
	4800 2150 4800 1900
Wire Wire Line
	4800 1900 4900 1900
Wire Wire Line
	4900 2100 4650 2100
Connection ~ 4650 2100
Wire Wire Line
	4650 2100 4650 1900
$Comp
L power:GND #PWR?
U 1 1 5C87A0FE
P 4650 2550
F 0 "#PWR?" H 4650 2300 50  0001 C CNN
F 1 "GND" H 4655 2377 50  0000 C CNN
F 2 "" H 4650 2550 50  0001 C CNN
F 3 "" H 4650 2550 50  0001 C CNN
	1    4650 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C87A165
P 4800 2550
F 0 "#PWR?" H 4800 2300 50  0001 C CNN
F 1 "GND" H 4805 2377 50  0000 C CNN
F 2 "" H 4800 2550 50  0001 C CNN
F 3 "" H 4800 2550 50  0001 C CNN
	1    4800 2550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:LM13600-DIP U?
U 1 1 5C8800E2
P 8250 5750
F 0 "U?" H 8800 6287 60  0000 C CNN
F 1 "LM13600-DIP" H 8800 6181 60  0000 C CNN
F 2 "" H 8550 5800 60  0000 C CNN
F 3 "" H 8550 5800 60  0000 C CNN
	1    8250 5750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:PNP Q?
U 1 1 5C8800E8
P 8850 6250
F 0 "Q?" H 9045 6296 50  0000 L CNN
F 1 "2N3906" H 9045 6205 50  0000 L CNN
F 2 "" H 9050 6350 50  0000 C CNN
F 3 "" H 8850 6250 50  0000 C CNN
	1    8850 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6050 8950 5950
Wire Wire Line
	8550 6600 8950 6600
Wire Wire Line
	8950 6600 8950 6450
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C8800F1
P 8250 6600
F 0 "R?" H 8350 6817 60  0000 C CNN
F 1 "33K" H 8350 6711 60  0000 C CNN
F 2 "" H 8250 6600 60  0000 C CNN
F 3 "" H 8250 6600 60  0000 C CNN
	1    8250 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C8800F7
P 8600 6300
F 0 "#PWR?" H 8600 6050 50  0001 C CNN
F 1 "GND" H 8605 6127 50  0000 C CNN
F 2 "" H 8600 6300 50  0001 C CNN
F 3 "" H 8600 6300 50  0001 C CNN
	1    8600 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 6300 8600 6250
Wire Wire Line
	8600 6250 8650 6250
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C8800FF
P 7650 5450
F 0 "R?" H 7750 5667 60  0000 C CNN
F 1 "33K" H 7750 5561 60  0000 C CNN
F 2 "" H 7650 5450 60  0000 C CNN
F 3 "" H 7650 5450 60  0000 C CNN
	1    7650 5450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C880105
P 8000 5800
F 0 "R?" H 8150 5600 60  0000 C CNN
F 1 "100" H 8100 5700 60  0000 C CNN
F 2 "" H 8000 5800 60  0000 C CNN
F 3 "" H 8000 5800 60  0000 C CNN
	1    8000 5800
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C88010B
P 8150 5800
F 0 "R?" H 8250 6017 60  0000 C CNN
F 1 "100" H 8250 5911 60  0000 C CNN
F 2 "" H 8150 5800 60  0000 C CNN
F 3 "" H 8150 5800 60  0000 C CNN
	1    8150 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 5700 8000 5650
Wire Wire Line
	8000 5450 7950 5450
Wire Wire Line
	8150 5700 8150 5450
Wire Wire Line
	8150 5450 8250 5450
Wire Wire Line
	8250 5650 8000 5650
Connection ~ 8000 5650
Wire Wire Line
	8000 5650 8000 5450
$Comp
L power:GND #PWR?
U 1 1 5C880118
P 8000 6100
F 0 "#PWR?" H 8000 5850 50  0001 C CNN
F 1 "GND" H 8005 5927 50  0000 C CNN
F 2 "" H 8000 6100 50  0001 C CNN
F 3 "" H 8000 6100 50  0001 C CNN
	1    8000 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C88011E
P 8150 6100
F 0 "#PWR?" H 8150 5850 50  0001 C CNN
F 1 "GND" H 8155 5927 50  0000 C CNN
F 2 "" H 8150 6100 50  0001 C CNN
F 3 "" H 8150 6100 50  0001 C CNN
	1    8150 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5300 7500 5300
Wire Wire Line
	7500 5300 7500 5450
Wire Wire Line
	7500 5450 7550 5450
Connection ~ 7300 5300
$Comp
L SynthMod:GENDUALOPAMP U?
U 1 2 5C89312D
P 9700 6000
F 0 "U?" H 9825 6749 60  0000 C CNN
F 1 "TL052" H 9825 6643 60  0000 C CNN
F 2 "" H 9700 6000 60  0000 C CNN
F 3 "" H 9700 6000 60  0000 C CNN
	1    9700 6000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C8932A5
P 9650 4900
F 0 "R?" H 9750 5117 60  0000 C CNN
F 1 "33K" H 9750 5011 60  0000 C CNN
F 2 "" H 9650 4900 60  0000 C CNN
F 3 "" H 9650 4900 60  0000 C CNN
	1    9650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5550 9350 5550
Wire Wire Line
	9500 5550 9400 5550
Connection ~ 9400 5550
Wire Wire Line
	9400 5750 9400 5650
Wire Wire Line
	9400 5650 9500 5650
$Comp
L power:GND #PWR?
U 1 1 5C8A7321
P 9400 5750
F 0 "#PWR?" H 9400 5500 50  0001 C CNN
F 1 "GND" H 9405 5577 50  0000 C CNN
F 2 "" H 9400 5750 50  0001 C CNN
F 3 "" H 9400 5750 50  0001 C CNN
	1    9400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5600 10200 5600
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C8AE423
P 9650 4500
F 0 "R?" H 9750 4717 60  0000 C CNN
F 1 "33K" H 9750 4611 60  0000 C CNN
F 2 "" H 9650 4500 60  0000 C CNN
F 3 "" H 9650 4500 60  0000 C CNN
	1    9650 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D?
U 1 1 5C8AE4D0
P 10200 5250
F 0 "D?" V 10154 5329 50  0000 L CNN
F 1 "1N914" V 10245 5329 50  0000 L CNN
F 2 "" H 10200 5250 50  0001 C CNN
F 3 "~" H 10200 5250 50  0001 C CNN
	1    10200 5250
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D?
U 1 1 5C8AE9C3
P 10400 5250
F 0 "D?" V 10446 5171 50  0000 R CNN
F 1 "1N914" V 10355 5171 50  0000 R CNN
F 2 "" H 10400 5250 50  0001 C CNN
F 3 "~" H 10400 5250 50  0001 C CNN
	1    10400 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 4900 9550 4900
Wire Wire Line
	9400 4900 9400 5550
Wire Wire Line
	9550 4500 9400 4500
Wire Wire Line
	9400 4500 9400 4900
Connection ~ 9400 4900
Wire Wire Line
	10200 5100 10200 4900
Wire Wire Line
	10200 4900 9950 4900
Wire Wire Line
	10400 5100 10400 4500
Wire Wire Line
	10400 4500 9950 4500
Wire Wire Line
	10200 4900 10200 4650
Wire Wire Line
	8600 4650 8600 4150
Wire Wire Line
	8600 4150 3900 4150
Wire Wire Line
	3900 4150 3900 3050
Wire Wire Line
	3900 3050 4800 3050
Wire Wire Line
	8600 4650 10200 4650
Connection ~ 10200 4900
Wire Wire Line
	3800 3200 3800 2200
Wire Wire Line
	3800 2200 3900 2200
Wire Wire Line
	3900 2200 3900 1900
Wire Wire Line
	3900 1900 4200 1900
Connection ~ 3800 3200
$Comp
L SynthMod:GENDUALOPAMP U?
U 1 2 5C836F0F
P 6400 2450
F 0 "U?" H 6525 3199 60  0000 C CNN
F 1 "TL052" H 6525 3093 60  0000 C CNN
F 2 "" H 6400 2450 60  0000 C CNN
F 3 "" H 6400 2450 60  0000 C CNN
	1    6400 2450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C83708F
P 6400 1550
F 0 "R?" H 6500 1767 60  0000 C CNN
F 1 "33K" H 6500 1661 60  0000 C CNN
F 2 "" H 6400 1550 60  0000 C CNN
F 3 "" H 6400 1550 60  0000 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2000 6050 2000
Wire Wire Line
	6050 2000 6050 1550
Wire Wire Line
	6050 1550 6300 1550
Connection ~ 6050 2000
Wire Wire Line
	6050 2000 6000 2000
Wire Wire Line
	6000 2350 6000 2100
Wire Wire Line
	6000 2100 6200 2100
$Comp
L power:GND #PWR?
U 1 1 5C8506EA
P 6000 2350
F 0 "#PWR?" H 6000 2100 50  0001 C CNN
F 1 "GND" H 6005 2177 50  0000 C CNN
F 2 "" H 6000 2350 50  0001 C CNN
F 3 "" H 6000 2350 50  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1550 6950 1550
Wire Wire Line
	6950 1550 6950 1950
Wire Wire Line
	6950 2050 6850 2050
$Comp
L SynthMod:GENDUALOPAMP U?
U 1 1 5C85969D
P 1650 3100
F 0 "U?" H 1775 3849 60  0000 C CNN
F 1 "TL052" H 1775 3743 60  0000 C CNN
F 2 "" H 1650 3100 60  0000 C CNN
F 3 "" H 1650 3100 60  0000 C CNN
	1    1650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2750 1300 2750
Wire Wire Line
	1300 2750 1300 2900
Wire Wire Line
	1300 3050 2250 3050
Wire Wire Line
	2250 3050 2250 2700
Wire Wire Line
	2250 2700 2100 2700
Wire Wire Line
	1450 2650 1300 2650
Wire Wire Line
	1300 2650 1300 2200
Wire Wire Line
	1300 2200 2250 2200
Wire Wire Line
	10200 5400 10200 5600
Connection ~ 10200 5600
Wire Wire Line
	10400 5600 10400 5400
Wire Wire Line
	10200 5600 10400 5600
$Comp
L Device:D_ALT D?
U 1 1 5C882B4F
P 800 3250
F 0 "D?" V 754 3329 50  0000 L CNN
F 1 "1N914" V 845 3329 50  0000 L CNN
F 2 "" H 800 3250 50  0001 C CNN
F 3 "~" H 800 3250 50  0001 C CNN
	1    800  3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 2900 800  2900
Wire Wire Line
	800  2900 800  3100
Connection ~ 1300 2900
Wire Wire Line
	1300 2900 1300 3050
$Comp
L SynthMod:Cap C?
U 1 1 5C88E08B
P 800 3800
F 0 "C?" V 1052 3800 50  0000 C CNN
F 1 ",047uF" V 961 3800 50  0000 C CNN
F 2 "" H 838 3650 50  0000 C CNN
F 3 "" H 800 3800 50  0000 C CNN
	1    800  3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2150 2250 2200
Wire Wire Line
	2250 2150 2350 2150
Connection ~ 2450 2150
$Comp
L Device:D_ALT D?
U 1 1 5C8A466C
P 2350 2400
F 0 "D?" V 2304 2479 50  0000 L CNN
F 1 "1N914" V 2395 2479 50  0000 L CNN
F 2 "" H 2350 2400 50  0001 C CNN
F 3 "~" H 2350 2400 50  0001 C CNN
	1    2350 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 2250 2350 2150
Connection ~ 2350 2150
Wire Wire Line
	2350 2150 2450 2150
Wire Wire Line
	2350 2550 2350 2600
Wire Wire Line
	2350 2600 2700 2600
Connection ~ 2700 2600
$Comp
L SynthMod:POT-ALPHA-16mm-RA R?
U 1 1 5C8BB463
P 1450 3650
F 0 "R?" V 1497 3592 60  0000 R CNN
F 1 "1M" V 1603 3592 60  0000 R CNN
F 2 "" H 1450 3650 60  0000 C CNN
F 3 "" H 1450 3650 60  0000 C CNN
	1    1450 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	800  3400 800  3450
Wire Wire Line
	800  3450 1450 3450
Wire Wire Line
	1450 3450 1450 3550
Connection ~ 800  3450
Wire Wire Line
	800  3450 800  3650
Wire Wire Line
	1450 3450 1850 3450
Wire Wire Line
	1850 3450 1850 3750
Wire Wire Line
	1850 3750 1700 3750
Connection ~ 1450 3450
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C8DFD1D
P 1450 4150
F 0 "R?" H 1600 3950 60  0000 C CNN
F 1 "1K" H 1550 4050 60  0000 C CNN
F 2 "" H 1450 4150 60  0000 C CNN
F 3 "" H 1450 4150 60  0000 C CNN
	1    1450 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 4050 1450 3950
Wire Wire Line
	800  3950 800  4600
Wire Wire Line
	800  4600 1150 4600
Wire Wire Line
	1450 4600 1450 4450
Wire Wire Line
	1150 4750 1150 4600
Connection ~ 1150 4600
Wire Wire Line
	1150 4600 1450 4600
$Comp
L power:GND #PWR?
U 1 1 5C9149A3
P 1150 4750
F 0 "#PWR?" H 1150 4500 50  0001 C CNN
F 1 "GND" H 1155 4577 50  0000 C CNN
F 2 "" H 1150 4750 50  0001 C CNN
F 3 "" H 1150 4750 50  0001 C CNN
	1    1150 4750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:GENDUALOPAMP U?
U 1 1 5C914B65
P 4950 4000
F 0 "U?" H 5075 4749 60  0000 C CNN
F 1 "TL052" H 5075 4643 60  0000 C CNN
F 2 "" H 4950 4000 60  0000 C CNN
F 3 "" H 4950 4000 60  0000 C CNN
	1    4950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3650 4700 3650
Wire Wire Line
	4700 3650 4700 3900
Wire Wire Line
	4700 3900 5450 3900
Wire Wire Line
	5450 3900 5450 3750
Wire Wire Line
	5450 3600 5400 3600
Wire Wire Line
	1850 3450 2400 3450
Wire Wire Line
	2400 3450 2400 2850
Wire Wire Line
	2400 2850 4400 2850
Wire Wire Line
	4400 2850 4400 3550
Wire Wire Line
	4400 3550 4750 3550
Connection ~ 1850 3450
Wire Wire Line
	8150 6600 7400 6600
Wire Wire Line
	7400 6600 7400 3750
Wire Wire Line
	7400 3750 5450 3750
Connection ~ 5450 3750
Wire Wire Line
	5450 3750 5450 3600
$Comp
L SynthMod:RESISTOR R?
U 1 1 5C94198C
P 8100 1950
F 0 "R?" H 8200 2167 60  0000 C CNN
F 1 "1K" H 8200 2061 60  0000 C CNN
F 2 "" H 8100 1950 60  0000 C CNN
F 3 "" H 8100 1950 60  0000 C CNN
	1    8100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1950 8400 1950
Wire Wire Line
	8000 1950 6950 1950
Connection ~ 6950 1950
Wire Wire Line
	6950 1950 6950 2050
Wire Wire Line
	8500 2250 8500 2150
Wire Wire Line
	8500 2150 8600 2150
$Comp
L power:GND #PWR?
U 1 1 5C97064B
P 8500 2250
F 0 "#PWR?" H 8500 2000 50  0001 C CNN
F 1 "GND" H 8505 2077 50  0000 C CNN
F 2 "" H 8500 2250 50  0001 C CNN
F 3 "" H 8500 2250 50  0001 C CNN
	1    8500 2250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
