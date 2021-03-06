EESchema Schematic File Version 5
LIBS:300-1006-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Device:LED_ALT D8
U 1 1 5D5FA8CC
P 3600 4850
F 0 "D8" H 3593 4595 50  0000 C CNN
F 1 "LED" H 3593 4686 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 3600 4850 50  0001 C CNN
F 3 "~" H 3600 4850 50  0001 C CNN
	1    3600 4850
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R10
U 1 1 5D5FB2E8
P 4100 4850
F 0 "R10" H 4200 5067 60  0000 C CNN
F 1 "470" H 4200 4961 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4100 4850 60  0001 C CNN
F 3 "" H 4100 4850 60  0000 C CNN
	1    4100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4850 4000 4850
Wire Wire Line
	3250 4850 3450 4850
$Comp
L power:GND #PWR029
U 1 1 5D5FC06E
P 4500 4900
F 0 "#PWR029" H 4500 4650 50  0001 C CNN
F 1 "GND" H 4505 4727 50  0000 C CNN
F 2 "" H 4500 4900 50  0001 C CNN
F 3 "" H 4500 4900 50  0001 C CNN
	1    4500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4850 4500 4850
Wire Wire Line
	4500 4850 4500 4900
Text HLabel 3250 4850 0    50   Input ~ 0
D7
$Comp
L Device:LED_ALT D1
U 1 1 5D5FC448
P 3400 1750
F 0 "D1" H 3393 1495 50  0000 C CNN
F 1 "LED" H 3393 1586 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 3400 1750 50  0001 C CNN
F 3 "~" H 3400 1750 50  0001 C CNN
	1    3400 1750
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R3
U 1 1 5D5FC452
P 3900 1750
F 0 "R3" H 4000 1967 60  0000 C CNN
F 1 "470" H 4000 1861 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3900 1750 60  0001 C CNN
F 3 "" H 3900 1750 60  0000 C CNN
	1    3900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1750 3800 1750
Wire Wire Line
	3050 1750 3250 1750
$Comp
L power:GND #PWR022
U 1 1 5D5FC45E
P 4300 1800
F 0 "#PWR022" H 4300 1550 50  0001 C CNN
F 1 "GND" H 4305 1627 50  0000 C CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "" H 4300 1800 50  0001 C CNN
	1    4300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1750 4300 1750
Wire Wire Line
	4300 1750 4300 1800
Text HLabel 3050 1750 0    50   Input ~ 0
D0
$Comp
L Device:LED_ALT D2
U 1 1 5D5FD06E
P 3400 2200
F 0 "D2" H 3393 1945 50  0000 C CNN
F 1 "LED" H 3393 2036 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 3400 2200 50  0001 C CNN
F 3 "~" H 3400 2200 50  0001 C CNN
	1    3400 2200
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R4
U 1 1 5D5FD078
P 3900 2200
F 0 "R4" H 4000 2417 60  0000 C CNN
F 1 "470" H 4000 2311 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3900 2200 60  0001 C CNN
F 3 "" H 3900 2200 60  0000 C CNN
	1    3900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2200 3800 2200
Wire Wire Line
	3050 2200 3250 2200
$Comp
L power:GND #PWR023
U 1 1 5D5FD084
P 4300 2250
F 0 "#PWR023" H 4300 2000 50  0001 C CNN
F 1 "GND" H 4305 2077 50  0000 C CNN
F 2 "" H 4300 2250 50  0001 C CNN
F 3 "" H 4300 2250 50  0001 C CNN
	1    4300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2200 4300 2200
Wire Wire Line
	4300 2200 4300 2250
Text HLabel 3050 2200 0    50   Input ~ 0
D1
$Comp
L Device:LED_ALT D3
U 1 1 5D5FD091
P 3450 2650
F 0 "D3" H 3443 2395 50  0000 C CNN
F 1 "LED" H 3443 2486 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 3450 2650 50  0001 C CNN
F 3 "~" H 3450 2650 50  0001 C CNN
	1    3450 2650
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R5
U 1 1 5D5FD09B
P 3950 2650
F 0 "R5" H 4050 2867 60  0000 C CNN
F 1 "470" H 4050 2761 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 3950 2650 60  0001 C CNN
F 3 "" H 3950 2650 60  0000 C CNN
	1    3950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2650 3850 2650
Wire Wire Line
	3100 2650 3300 2650
$Comp
L power:GND #PWR024
U 1 1 5D5FD0A7
P 4350 2700
F 0 "#PWR024" H 4350 2450 50  0001 C CNN
F 1 "GND" H 4355 2527 50  0000 C CNN
F 2 "" H 4350 2700 50  0001 C CNN
F 3 "" H 4350 2700 50  0001 C CNN
	1    4350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2650 4350 2650
Wire Wire Line
	4350 2650 4350 2700
Text HLabel 3100 2650 0    50   Input ~ 0
D2
$Comp
L Device:LED_ALT D4
U 1 1 5D5FF394
P 3500 3050
F 0 "D4" H 3493 2795 50  0000 C CNN
F 1 "LED" H 3493 2886 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 3500 3050 50  0001 C CNN
F 3 "~" H 3500 3050 50  0001 C CNN
	1    3500 3050
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R6
U 1 1 5D5FF39E
P 4000 3050
F 0 "R6" H 4100 3267 60  0000 C CNN
F 1 "470" H 4100 3161 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4000 3050 60  0001 C CNN
F 3 "" H 4000 3050 60  0000 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3050 3900 3050
Wire Wire Line
	3150 3050 3350 3050
$Comp
L power:GND #PWR025
U 1 1 5D5FF3AA
P 4400 3100
F 0 "#PWR025" H 4400 2850 50  0001 C CNN
F 1 "GND" H 4405 2927 50  0000 C CNN
F 2 "" H 4400 3100 50  0001 C CNN
F 3 "" H 4400 3100 50  0001 C CNN
	1    4400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3050 4400 3050
Wire Wire Line
	4400 3050 4400 3100
Text HLabel 3150 3050 0    50   Input ~ 0
D3
$Comp
L Device:LED_ALT D5
U 1 1 5D5FF3B7
P 3550 3500
F 0 "D5" H 3543 3245 50  0000 C CNN
F 1 "LED" H 3543 3336 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 3550 3500 50  0001 C CNN
F 3 "~" H 3550 3500 50  0001 C CNN
	1    3550 3500
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R7
U 1 1 5D5FF3C1
P 4050 3500
F 0 "R7" H 4150 3717 60  0000 C CNN
F 1 "470" H 4150 3611 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4050 3500 60  0001 C CNN
F 3 "" H 4050 3500 60  0000 C CNN
	1    4050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3500 3950 3500
Wire Wire Line
	3200 3500 3400 3500
$Comp
L power:GND #PWR026
U 1 1 5D5FF3CD
P 4450 3550
F 0 "#PWR026" H 4450 3300 50  0001 C CNN
F 1 "GND" H 4455 3377 50  0000 C CNN
F 2 "" H 4450 3550 50  0001 C CNN
F 3 "" H 4450 3550 50  0001 C CNN
	1    4450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3500 4450 3500
Wire Wire Line
	4450 3500 4450 3550
Text HLabel 3200 3500 0    50   Input ~ 0
D4
$Comp
L Device:LED_ALT D6
U 1 1 5D5FF3DA
P 3550 3950
F 0 "D6" H 3543 3695 50  0000 C CNN
F 1 "LED" H 3543 3786 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 3550 3950 50  0001 C CNN
F 3 "~" H 3550 3950 50  0001 C CNN
	1    3550 3950
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R8
U 1 1 5D5FF3E4
P 4050 3950
F 0 "R8" H 4150 4167 60  0000 C CNN
F 1 "470" H 4150 4061 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4050 3950 60  0001 C CNN
F 3 "" H 4050 3950 60  0000 C CNN
	1    4050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3950 3950 3950
Wire Wire Line
	3200 3950 3400 3950
$Comp
L power:GND #PWR027
U 1 1 5D5FF3F0
P 4450 4000
F 0 "#PWR027" H 4450 3750 50  0001 C CNN
F 1 "GND" H 4455 3827 50  0000 C CNN
F 2 "" H 4450 4000 50  0001 C CNN
F 3 "" H 4450 4000 50  0001 C CNN
	1    4450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3950 4450 3950
Wire Wire Line
	4450 3950 4450 4000
Text HLabel 3200 3950 0    50   Input ~ 0
D5
$Comp
L Device:LED_ALT D7
U 1 1 5D5FF3FD
P 3600 4400
F 0 "D7" H 3593 4145 50  0000 C CNN
F 1 "LED" H 3593 4236 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 3600 4400 50  0001 C CNN
F 3 "~" H 3600 4400 50  0001 C CNN
	1    3600 4400
	-1   0    0    1   
$EndComp
$Comp
L SynthMod:RESISTOR R9
U 1 1 5D5FF407
P 4100 4400
F 0 "R9" H 4200 4617 60  0000 C CNN
F 1 "470" H 4200 4511 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 4100 4400 60  0001 C CNN
F 3 "" H 4100 4400 60  0000 C CNN
	1    4100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4400 4000 4400
Wire Wire Line
	3250 4400 3450 4400
$Comp
L power:GND #PWR028
U 1 1 5D5FF413
P 4500 4450
F 0 "#PWR028" H 4500 4200 50  0001 C CNN
F 1 "GND" H 4505 4277 50  0000 C CNN
F 2 "" H 4500 4450 50  0001 C CNN
F 3 "" H 4500 4450 50  0001 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4400 4500 4400
Wire Wire Line
	4500 4400 4500 4450
Text HLabel 3250 4400 0    50   Input ~ 0
D6
$Comp
L SynthMod:SW-SPDT SW1
U 1 1 5D56788A
P 6600 2000
F 0 "SW1" H 6350 2263 60  0000 C CNN
F 1 "SW-SPDT" H 6350 2157 60  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 6325 1350 60  0001 C CNN
F 3 "" H 6325 1350 60  0001 C CNN
	1    6600 2000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:SW-SPDT SW2
U 1 1 5D568BA3
P 6600 2500
F 0 "SW2" H 6350 2763 60  0000 C CNN
F 1 "SW-SPDT" H 6350 2657 60  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 6325 1850 60  0001 C CNN
F 3 "" H 6325 1850 60  0001 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:SW-SPDT SW3
U 1 1 5D569035
P 6600 2950
F 0 "SW3" H 6350 3213 60  0000 C CNN
F 1 "SW-SPDT" H 6350 3107 60  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 6325 2300 60  0001 C CNN
F 3 "" H 6325 2300 60  0001 C CNN
	1    6600 2950
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:SW-SPDT SW4
U 1 1 5D56903F
P 6600 3450
F 0 "SW4" H 6350 3713 60  0000 C CNN
F 1 "SW-SPDT" H 6350 3607 60  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 6325 2800 60  0001 C CNN
F 3 "" H 6325 2800 60  0001 C CNN
	1    6600 3450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:SW-SPDT SW5
U 1 1 5D56AC75
P 6600 3800
F 0 "SW5" H 6350 4063 60  0000 C CNN
F 1 "SW-SPDT" H 6350 3957 60  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 6325 3150 60  0001 C CNN
F 3 "" H 6325 3150 60  0001 C CNN
	1    6600 3800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:SW-SPDT SW6
U 1 1 5D56AC7F
P 6600 4300
F 0 "SW6" H 6350 4563 60  0000 C CNN
F 1 "SW-SPDT" H 6350 4457 60  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 6325 3650 60  0001 C CNN
F 3 "" H 6325 3650 60  0001 C CNN
	1    6600 4300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:SW-SPDT SW7
U 1 1 5D56AC89
P 6600 4750
F 0 "SW7" H 6350 5013 60  0000 C CNN
F 1 "SW-SPDT" H 6350 4907 60  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 6325 4100 60  0001 C CNN
F 3 "" H 6325 4100 60  0001 C CNN
	1    6600 4750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:SW-SPDT SW8
U 1 1 5D56AC93
P 6600 5250
F 0 "SW8" H 6350 5513 60  0000 C CNN
F 1 "SW-SPDT" H 6350 5407 60  0000 C CNN
F 2 "FootPrints:SWITCH_SPDT-OS102011MS2QN1" H 6325 4600 60  0001 C CNN
F 3 "" H 6325 4600 60  0001 C CNN
	1    6600 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5D576127
P 5950 5400
F 0 "#PWR031" H 5950 5150 50  0001 C CNN
F 1 "GND" H 5955 5227 50  0000 C CNN
F 2 "" H 5950 5400 50  0001 C CNN
F 3 "" H 5950 5400 50  0001 C CNN
	1    5950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5400 5950 5300
Wire Wire Line
	5950 5300 6100 5300
Wire Wire Line
	5950 5300 5950 4800
Wire Wire Line
	5950 4800 6100 4800
Connection ~ 5950 5300
Wire Wire Line
	5950 4800 5950 4350
Wire Wire Line
	5950 4350 6100 4350
Connection ~ 5950 4800
Wire Wire Line
	5950 4350 5950 3850
Wire Wire Line
	5950 3850 6100 3850
Connection ~ 5950 4350
Wire Wire Line
	5950 3850 5950 3500
Wire Wire Line
	5950 3500 6100 3500
Connection ~ 5950 3850
Wire Wire Line
	5950 3500 5950 3000
Wire Wire Line
	5950 3000 6100 3000
Connection ~ 5950 3500
Wire Wire Line
	5950 3000 5950 2550
Wire Wire Line
	5950 2550 6100 2550
Connection ~ 5950 3000
Wire Wire Line
	5950 2550 5950 2050
Wire Wire Line
	5950 2050 6100 2050
Connection ~ 5950 2550
$Comp
L SynthMod:+5V0 #PWR030
U 1 1 5D57F206
P 7300 1850
F 0 "#PWR030" H 7300 1700 50  0001 C CNN
F 1 "+5V0" H 7317 2023 50  0000 C CNN
F 2 "" H 7300 1850 50  0000 C CNN
F 3 "" H 7300 1850 50  0000 C CNN
	1    7300 1850
	0    1    1    0   
$EndComp
Text HLabel 6800 2000 2    50   Output ~ 0
S1
Text HLabel 6800 2500 2    50   Output ~ 0
S2
Text HLabel 6850 2950 2    50   Output ~ 0
S3
Text HLabel 6950 3450 2    50   Output ~ 0
S4
Text HLabel 6950 3800 2    50   Output ~ 0
S5
Text HLabel 7000 4300 2    50   Output ~ 0
S6
Text HLabel 7100 4750 2    50   Output ~ 0
S7
Text HLabel 7100 5250 2    50   Output ~ 0
S8
Wire Wire Line
	7100 5250 6750 5250
Wire Wire Line
	7100 4750 6750 4750
Wire Wire Line
	7000 4300 6750 4300
Wire Wire Line
	6950 3800 6750 3800
Wire Wire Line
	6950 3450 6750 3450
Wire Wire Line
	6850 2950 6750 2950
Wire Wire Line
	6800 2500 6750 2500
Wire Wire Line
	6800 2000 6750 2000
NoConn ~ 6100 5200
NoConn ~ 6100 4700
NoConn ~ 6100 4250
NoConn ~ 6100 3750
NoConn ~ 6100 3400
NoConn ~ 6100 2900
NoConn ~ 6100 2450
NoConn ~ 6100 1950
$Comp
L SynthMod:RESISTOR R11
U 1 1 5D59E2DE
P 6900 1850
F 0 "R11" H 7000 2067 60  0000 C CNN
F 1 "4.7K" H 7000 1961 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6900 1850 60  0001 C CNN
F 3 "" H 6900 1850 60  0000 C CNN
	1    6900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1850 7200 1850
Wire Wire Line
	6800 1850 6750 1850
Wire Wire Line
	6750 1850 6750 2000
Connection ~ 6750 2000
Wire Wire Line
	6750 2000 6600 2000
$Comp
L SynthMod:RESISTOR R12
U 1 1 5D5A31A7
P 6900 2350
F 0 "R12" H 7000 2567 60  0000 C CNN
F 1 "4.7K" H 7000 2461 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6900 2350 60  0001 C CNN
F 3 "" H 6900 2350 60  0000 C CNN
	1    6900 2350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+5V0 #PWR032
U 1 1 5D5A31A8
P 7300 2350
F 0 "#PWR032" H 7300 2200 50  0001 C CNN
F 1 "+5V0" H 7317 2523 50  0000 C CNN
F 2 "" H 7300 2350 50  0000 C CNN
F 3 "" H 7300 2350 50  0000 C CNN
	1    7300 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 2350 7200 2350
Wire Wire Line
	6750 2350 6750 2500
Wire Wire Line
	6800 2350 6750 2350
Connection ~ 6750 2500
Wire Wire Line
	6750 2500 6600 2500
$Comp
L SynthMod:RESISTOR R13
U 1 1 5D5A461D
P 6900 2800
F 0 "R13" H 7000 3017 60  0000 C CNN
F 1 "4.7K" H 7000 2911 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6900 2800 60  0001 C CNN
F 3 "" H 6900 2800 60  0000 C CNN
	1    6900 2800
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+5V0 #PWR033
U 1 1 5D5A461E
P 7300 2800
F 0 "#PWR033" H 7300 2650 50  0001 C CNN
F 1 "+5V0" H 7317 2973 50  0000 C CNN
F 2 "" H 7300 2800 50  0000 C CNN
F 3 "" H 7300 2800 50  0000 C CNN
	1    7300 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 2800 7200 2800
Wire Wire Line
	6750 2800 6750 2950
Wire Wire Line
	6800 2800 6750 2800
Connection ~ 6750 2950
Wire Wire Line
	6750 2950 6600 2950
$Comp
L SynthMod:RESISTOR R14
U 1 1 5D5A53F9
P 6900 3300
F 0 "R14" H 7000 3517 60  0000 C CNN
F 1 "4.7K" H 7000 3411 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6900 3300 60  0001 C CNN
F 3 "" H 6900 3300 60  0000 C CNN
	1    6900 3300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+5V0 #PWR034
U 1 1 5D5A53FA
P 7300 3300
F 0 "#PWR034" H 7300 3150 50  0001 C CNN
F 1 "+5V0" H 7317 3473 50  0000 C CNN
F 2 "" H 7300 3300 50  0000 C CNN
F 3 "" H 7300 3300 50  0000 C CNN
	1    7300 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3300 7200 3300
Wire Wire Line
	6750 3300 6750 3450
Wire Wire Line
	6800 3300 6750 3300
Connection ~ 6750 3450
Wire Wire Line
	6750 3450 6600 3450
$Comp
L SynthMod:RESISTOR R15
U 1 1 5D5A5E7D
P 6900 3650
F 0 "R15" H 7000 3867 60  0000 C CNN
F 1 "4.7K" H 7000 3761 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6900 3650 60  0001 C CNN
F 3 "" H 6900 3650 60  0000 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+5V0 #PWR035
U 1 1 5D5A5E7E
P 7300 3650
F 0 "#PWR035" H 7300 3500 50  0001 C CNN
F 1 "+5V0" H 7317 3823 50  0000 C CNN
F 2 "" H 7300 3650 50  0000 C CNN
F 3 "" H 7300 3650 50  0000 C CNN
	1    7300 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3650 7200 3650
Wire Wire Line
	6750 3650 6750 3800
Wire Wire Line
	6800 3650 6750 3650
Connection ~ 6750 3800
Wire Wire Line
	6750 3800 6600 3800
$Comp
L SynthMod:RESISTOR R16
U 1 1 5D5A676C
P 6900 4150
F 0 "R16" H 7000 4367 60  0000 C CNN
F 1 "4.7K" H 7000 4261 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6900 4150 60  0001 C CNN
F 3 "" H 6900 4150 60  0000 C CNN
	1    6900 4150
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+5V0 #PWR036
U 1 1 5D5A676D
P 7300 4150
F 0 "#PWR036" H 7300 4000 50  0001 C CNN
F 1 "+5V0" H 7317 4323 50  0000 C CNN
F 2 "" H 7300 4150 50  0000 C CNN
F 3 "" H 7300 4150 50  0000 C CNN
	1    7300 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 4150 7200 4150
Wire Wire Line
	6750 4150 6750 4300
Wire Wire Line
	6800 4150 6750 4150
Connection ~ 6750 4300
Wire Wire Line
	6750 4300 6600 4300
$Comp
L SynthMod:RESISTOR R17
U 1 1 5D5A8FD2
P 6900 4600
F 0 "R17" H 7000 4817 60  0000 C CNN
F 1 "4.7K" H 7000 4711 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6900 4600 60  0001 C CNN
F 3 "" H 6900 4600 60  0000 C CNN
	1    6900 4600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+5V0 #PWR037
U 1 1 5D5A8FD3
P 7300 4600
F 0 "#PWR037" H 7300 4450 50  0001 C CNN
F 1 "+5V0" H 7317 4773 50  0000 C CNN
F 2 "" H 7300 4600 50  0000 C CNN
F 3 "" H 7300 4600 50  0000 C CNN
	1    7300 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 4600 7200 4600
Wire Wire Line
	6750 4600 6750 4750
Wire Wire Line
	6800 4600 6750 4600
Connection ~ 6750 4750
Wire Wire Line
	6750 4750 6600 4750
$Comp
L SynthMod:RESISTOR R18
U 1 1 5D5A9FF5
P 6900 5100
F 0 "R18" H 7000 5317 60  0000 C CNN
F 1 "4.7K" H 7000 5211 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 6900 5100 60  0001 C CNN
F 3 "" H 6900 5100 60  0000 C CNN
	1    6900 5100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+5V0 #PWR038
U 1 1 5D5A9FF6
P 7300 5100
F 0 "#PWR038" H 7300 4950 50  0001 C CNN
F 1 "+5V0" H 7317 5273 50  0000 C CNN
F 2 "" H 7300 5100 50  0000 C CNN
F 3 "" H 7300 5100 50  0000 C CNN
	1    7300 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 5100 7200 5100
Wire Wire Line
	6750 5100 6750 5250
Wire Wire Line
	6800 5100 6750 5100
Connection ~ 6750 5250
Wire Wire Line
	6750 5250 6600 5250
$EndSCHEMATC
