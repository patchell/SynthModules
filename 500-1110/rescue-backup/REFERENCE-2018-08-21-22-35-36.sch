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
LIBS:500-1110-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 10 10
Title "VOLTAGE REFERENCES"
Date "2017-01-31"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM4041-ADJ U19
U 1 1 5892EF81
P 2100 2300
F 0 "U19" H 2300 2600 60  0000 C CNN
F 1 "LM4041-ADJ" H 2550 2500 60  0000 C CNN
F 2 "FootPrints:TO92" H 2100 2300 60  0001 C CNN
F 3 "" H 2100 2300 60  0000 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
$Comp
L POT-3006 R61
U 1 1 5892EFDE
P 1400 1950
F 0 "R61" H 1400 1650 60  0000 C CNN
F 1 "10K" H 1550 1750 60  0000 C CNN
F 2 "FootPrints:Trimpot-3006" H 1400 1950 60  0001 C CNN
F 3 "" H 1400 1950 60  0000 C CNN
	1    1400 1950
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R60
U 1 1 5892F04B
P 1400 1400
F 0 "R60" H 1400 1100 60  0000 C CNN
F 1 "100K" H 1550 1200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 1400 1400 60  0001 C CNN
F 3 "" H 1400 1400 60  0000 C CNN
	1    1400 1400
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R63
U 1 1 5892F075
P 1950 850
F 0 "R63" H 1950 550 60  0000 C CNN
F 1 "10K" H 2100 650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 1950 850 60  0001 C CNN
F 3 "" H 1950 850 60  0000 C CNN
	1    1950 850 
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R62
U 1 1 5892F0BB
P 1400 2450
F 0 "R62" H 1400 2150 60  0000 C CNN
F 1 "100K" H 1550 2250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 1400 2450 60  0001 C CNN
F 3 "" H 1400 2450 60  0000 C CNN
	1    1400 2450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0120
U 1 1 5892F247
P 2100 2900
F 0 "#PWR0120" H 2100 2650 50  0001 C CNN
F 1 "GND" H 2100 2750 50  0000 C CNN
F 2 "" H 2100 2900 50  0000 C CNN
F 3 "" H 2100 2900 50  0000 C CNN
	1    2100 2900
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR0121
U 1 1 5892F265
P 1950 750
F 0 "#PWR0121" H 1950 600 50  0001 C CNN
F 1 "+15V0" H 1950 900 50  0000 C CNN
F 2 "" H 1950 750 50  0000 C CNN
F 3 "" H 1950 750 50  0000 C CNN
	1    1950 750 
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U20
U 2 1 5892F47D
P 3350 1700
F 0 "U20" H 3424 1902 60  0000 C CNN
F 1 "TL052" H 3430 1828 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 3350 1700 60  0001 C CNN
F 3 "" H 3350 1700 60  0000 C CNN
	2    3350 1700
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U20
U 1 1 5892F4BC
P 4450 2500
F 0 "U20" H 4524 2702 60  0000 C CNN
F 1 "TL052" H 4530 2628 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 4450 2500 60  0001 C CNN
F 3 "" H 4450 2500 60  0000 C CNN
	1    4450 2500
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U21
U 3 1 5892F4FA
P 6850 6200
F 0 "U21" H 6924 6402 60  0000 C CNN
F 1 "TL052" H 6930 6328 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 6850 6200 60  0001 C CNN
F 3 "" H 6850 6200 60  0000 C CNN
	3    6850 6200
	1    0    0    -1  
$EndComp
$Comp
L 500-1117 P18
U 1 1 589147EC
P 1750 3700
F 0 "P18" H 1750 3300 60  0000 C CNN
F 1 "500-1117" H 1750 3400 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 1600 3700 60  0001 C CNN
F 3 "" H 1600 3700 60  0001 C CNN
	1    1750 3700
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U21
U 1 2 58914B13
P 3900 5350
F 0 "U21" H 3974 5552 60  0000 C CNN
F 1 "TL052" H 3980 5478 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 3900 5350 60  0001 C CNN
F 3 "" H 3900 5350 60  0000 C CNN
	1    3900 5350
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U21
U 2 2 58914B19
P 5600 5400
F 0 "U21" H 5674 5602 60  0000 C CNN
F 1 "TL052" H 5680 5528 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 5600 5400 60  0001 C CNN
F 3 "" H 5600 5400 60  0000 C CNN
	2    5600 5400
	1    0    0    -1  
$EndComp
$Comp
L GENDUALOPAMP U20
U 3 1 58914B1F
P 5250 6200
F 0 "U20" H 5324 6402 60  0000 C CNN
F 1 "TL052" H 5330 6328 60  0000 C CNN
F 2 "FootPrints:DIP8.3" H 5250 6200 60  0001 C CNN
F 3 "" H 5250 6200 60  0000 C CNN
	3    5250 6200
	1    0    0    -1  
$EndComp
$Comp
L Cap C40
U 1 1 58914BAF
P 4000 4450
F 0 "C40" V 3890 4610 50  0000 L CNN
F 1 "0.022uF" V 4160 4120 50  0000 L CNN
F 2 "FootPrints:CAP-GREENIE-0.2" H 4038 4300 50  0001 C CNN
F 3 "" H 4000 4450 50  0000 C CNN
	1    4000 4450
	0    -1   -1   0   
$EndComp
$Comp
L JFET Q17
U 1 1 58914C64
P 3900 3950
F 0 "Q17" V 3790 4310 60  0000 C CNN
F 1 "J111" V 3690 4260 60  0000 C CNN
F 2 "FootPrints:TO92" H 3900 3950 60  0001 C CNN
F 3 "" H 3900 3950 60  0000 C CNN
	1    3900 3950
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R78
U 1 1 58915A0D
P 5150 4950
F 0 "R78" H 5150 4650 60  0000 C CNN
F 1 "10K" H 5300 4750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5150 4950 60  0001 C CNN
F 3 "" H 5150 4950 60  0000 C CNN
	1    5150 4950
	-1   0    0    1   
$EndComp
$Comp
L PNP Q18
U 1 1 58915C0F
P 5000 3700
F 0 "Q18" V 5300 3750 50  0000 R CNN
F 1 "2N3906" V 4850 4050 50  0000 R CNN
F 2 "FootPrints:TO92" H 5200 3800 50  0001 C CNN
F 3 "" H 5000 3700 50  0000 C CNN
	1    5000 3700
	0    -1   -1   0   
$EndComp
$Comp
L RESISTOR R75
U 1 1 58915CA8
P 3650 3600
F 0 "R75" H 3650 3300 60  0000 C CNN
F 1 "15.0K" H 3800 3400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3650 3600 60  0001 C CNN
F 3 "" H 3650 3600 60  0000 C CNN
	1    3650 3600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR0122
U 1 1 58915E6D
P 5000 4000
F 0 "#PWR0122" H 5000 3750 50  0001 C CNN
F 1 "GND" H 5000 3850 50  0000 C CNN
F 2 "" H 5000 4000 50  0000 C CNN
F 3 "" H 5000 4000 50  0000 C CNN
	1    5000 4000
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R80
U 1 1 58915EFD
P 5500 3600
F 0 "R80" H 5500 3300 60  0000 C CNN
F 1 "4.99K" H 5650 3400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5500 3600 60  0001 C CNN
F 3 "" H 5500 3600 60  0000 C CNN
	1    5500 3600
	-1   0    0    1   
$EndComp
$Comp
L D_ALT D7
U 1 1 589169B7
P 7050 3400
F 0 "D7" V 7050 3150 50  0000 C CNN
F 1 "1N914" V 7150 3150 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7050 3400 50  0001 C CNN
F 3 "" H 7050 3400 50  0000 C CNN
	1    7050 3400
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R82
U 1 1 58916AD5
P 6800 3200
F 0 "R82" H 6800 2900 60  0000 C CNN
F 1 "4.99K" H 6950 3000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 6800 3200 60  0001 C CNN
F 3 "" H 6800 3200 60  0000 C CNN
	1    6800 3200
	-1   0    0    1   
$EndComp
Text HLabel 850  5650 0    60   Input ~ 0
GATE
$Comp
L GND #PWR0123
U 1 1 589173C8
P 3600 5050
F 0 "#PWR0123" H 3600 4800 50  0001 C CNN
F 1 "GND" H 3600 4900 50  0000 C CNN
F 2 "" H 3600 5050 50  0000 C CNN
F 3 "" H 3600 5050 50  0000 C CNN
	1    3600 5050
	1    0    0    -1  
$EndComp
Text HLabel 9650 4350 2    60   Output ~ 0
G_OUT
$Comp
L D_ALT D8
U 1 1 58916931
P 7200 2950
F 0 "D8" H 7200 3050 50  0000 C CNN
F 1 "D_ALT" H 7200 2850 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 7200 2950 50  0001 C CNN
F 3 "" H 7200 2950 50  0000 C CNN
	1    7200 2950
	0    1    1    0   
$EndComp
$Comp
L 74HC00 U22
U 1 1 58915841
P 8050 4350
F 0 "U22" H 8050 4400 50  0000 C CNN
F 1 "74HC00" H 8050 4250 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 8050 4350 50  0001 C CNN
F 3 "" H 8050 4350 50  0000 C CNN
	1    8050 4350
	1    0    0    -1  
$EndComp
$Comp
L 74HC00 U22
U 2 1 58915745
P 8100 3300
F 0 "U22" H 8100 3350 50  0000 C CNN
F 1 "74HC00" H 8100 3200 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 8100 3300 50  0001 C CNN
F 3 "" H 8100 3300 50  0000 C CNN
	2    8100 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0124
U 1 1 589F788A
P 7050 3550
F 0 "#PWR0124" H 7050 3300 50  0001 C CNN
F 1 "GND" H 7050 3400 50  0000 C CNN
F 2 "" H 7050 3550 50  0000 C CNN
F 3 "" H 7050 3550 50  0000 C CNN
	1    7050 3550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR0125
U 1 1 589F798E
P 7200 2800
F 0 "#PWR0125" H 7200 2650 50  0001 C CNN
F 1 "VCC" H 7200 2950 50  0000 C CNN
F 2 "" H 7200 2800 50  0000 C CNN
F 3 "" H 7200 2800 50  0000 C CNN
	1    7200 2800
	1    0    0    -1  
$EndComp
$Comp
L -15V0 #PWR0126
U 1 1 589F7A92
P 3250 3600
F 0 "#PWR0126" H 3250 3450 50  0001 C CNN
F 1 "-15V0" H 3250 3750 50  0000 C CNN
F 2 "" H 3250 3600 50  0000 C CNN
F 3 "" H 3250 3600 50  0000 C CNN
	1    3250 3600
	0    -1   -1   0   
$EndComp
$Comp
L DUAL_2N3904 Q13
U 1 1 589F7D8C
P 2500 7250
F 0 "Q13" H 2380 7540 60  0000 C CNN
F 1 "2N3904" H 2360 7460 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 2500 7150 60  0001 C CNN
F 3 "" H 2500 7150 60  0000 C CNN
	1    2500 7250
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q13
U 2 1 589F7F46
P 4450 7200
F 0 "Q13" H 4360 7520 60  0000 C CNN
F 1 "2N3904" H 4350 7430 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 4450 7100 60  0000 C CNN
F 3 "" H 4450 7100 60  0000 C CNN
	2    4450 7200
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q15
U 1 1 589F7FC6
P 2950 6800
F 0 "Q15" H 2800 7060 60  0000 C CNN
F 1 "2N3906" H 2820 6990 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 2950 6600 60  0001 C CNN
F 3 "" H 2950 6600 60  0000 C CNN
	1    2950 6800
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q16
U 1 1 589F803A
P 3300 6500
F 0 "Q16" H 3250 6750 60  0000 C CNN
F 1 "2N3906" H 3220 6670 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 3300 6300 60  0001 C CNN
F 3 "" H 3300 6300 60  0000 C CNN
	1    3300 6500
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q15
U 2 1 589F822C
P 4050 6800
F 0 "Q15" H 3940 7080 60  0000 C CNN
F 1 "2N3906" H 3940 6990 60  0000 C CNN
F 2 "" H 4050 6600 60  0000 C CNN
F 3 "" H 4050 6600 60  0000 C CNN
	2    4050 6800
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q16
U 2 1 589F8232
P 3700 6500
F 0 "Q16" H 3650 6800 60  0000 C CNN
F 1 "2N3906" H 3630 6710 60  0000 C CNN
F 2 "FootPrints:DUAL_TO92" H 3700 6300 60  0000 C CNN
F 3 "" H 3700 6300 60  0000 C CNN
	2    3700 6500
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R74
U 1 1 589F8502
P 3500 6050
F 0 "R74" V 3550 5890 60  0000 C CNN
F 1 "4.99K" V 3660 5850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3500 6050 60  0001 C CNN
F 3 "" H 3500 6050 60  0000 C CNN
	1    3500 6050
	0    -1   -1   0   
$EndComp
$Comp
L RESISTOR R71
U 1 1 589F85B6
P 3050 6150
F 0 "R71" V 3110 5990 60  0000 C CNN
F 1 "2.2M" V 3210 5970 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3050 6150 60  0001 C CNN
F 3 "" H 3050 6150 60  0000 C CNN
	1    3050 6150
	0    -1   -1   0   
$EndComp
$Comp
L RESISTOR R77
U 1 1 589F8634
P 3950 6250
F 0 "R77" V 3990 6100 60  0000 C CNN
F 1 "2.2M" V 4100 6070 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3950 6250 60  0001 C CNN
F 3 "" H 3950 6250 60  0000 C CNN
	1    3950 6250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0127
U 1 1 589F9574
P 4750 7300
F 0 "#PWR0127" H 4750 7050 50  0001 C CNN
F 1 "GND" H 4750 7150 50  0000 C CNN
F 2 "" H 4750 7300 50  0000 C CNN
F 3 "" H 4750 7300 50  0000 C CNN
	1    4750 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0128
U 1 1 589F982A
P 3950 7150
F 0 "#PWR0128" H 3950 6900 50  0001 C CNN
F 1 "GND" H 3950 7000 50  0000 C CNN
F 2 "" H 3950 7150 50  0000 C CNN
F 3 "" H 3950 7150 50  0000 C CNN
	1    3950 7150
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R76
U 1 1 589F99CA
P 3800 7800
F 0 "R76" H 3900 7700 60  0000 C CNN
F 1 "10K" H 3900 7900 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3800 7800 60  0001 C CNN
F 3 "" H 3800 7800 60  0000 C CNN
	1    3800 7800
	1    0    0    -1  
$EndComp
$Comp
L -15V0 #PWR0129
U 1 1 589F9ECF
P 4100 7800
F 0 "#PWR0129" H 4100 7650 50  0001 C CNN
F 1 "-15V0" V 4100 8040 50  0000 C CNN
F 2 "" H 4100 7800 50  0000 C CNN
F 3 "" H 4100 7800 50  0000 C CNN
	1    4100 7800
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R69
U 1 1 589FA28F
P 2600 6500
F 0 "R69" V 2660 6680 60  0000 C CNN
F 1 "150K" V 2780 6700 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 6500 60  0001 C CNN
F 3 "" H 2600 6500 60  0000 C CNN
	1    2600 6500
	0    -1   -1   0   
$EndComp
$Comp
L +15V0 #PWR0130
U 1 1 589FAC64
P 2650 5500
F 0 "#PWR0130" H 2650 5350 50  0001 C CNN
F 1 "+15V0" H 2650 5650 50  0000 C CNN
F 2 "" H 2650 5500 50  0000 C CNN
F 3 "" H 2650 5500 50  0000 C CNN
	1    2650 5500
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R70
U 1 1 589FBDF6
P 3050 1800
F 0 "R70" H 3050 1500 60  0000 C CNN
F 1 "10K" H 3200 1600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3050 1800 60  0001 C CNN
F 3 "" H 3050 1800 60  0000 C CNN
	1    3050 1800
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R73
U 1 1 589FBF30
P 3350 1650
F 0 "R73" H 3350 1350 60  0000 C CNN
F 1 "30K" H 3500 1450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3350 1650 60  0001 C CNN
F 3 "" H 3350 1650 60  0000 C CNN
	1    3350 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0131
U 1 1 589FC18D
P 3050 2100
F 0 "#PWR0131" H 3050 1850 50  0001 C CNN
F 1 "GND" H 3050 1950 50  0000 C CNN
F 2 "" H 3050 2100 50  0000 C CNN
F 3 "" H 3050 2100 50  0000 C CNN
	1    3050 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0132
U 1 1 589FC3BF
P 800 4200
F 0 "#PWR0132" H 800 3950 50  0001 C CNN
F 1 "GND" H 800 4050 50  0000 C CNN
F 2 "" H 800 4200 50  0000 C CNN
F 3 "" H 800 4200 50  0000 C CNN
	1    800  4200
	1    0    0    -1  
$EndComp
Text HLabel 9450 1300 2    60   Output ~ 0
+10
Text HLabel 9400 2100 2    60   Output ~ 0
SCALED
$Comp
L Cap_Bypass C41
U 1 1 58A4DFBA
P 4900 6100
F 0 "C41" H 4925 6200 50  0000 L CNN
F 1 ".1uF" H 4925 6000 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 4938 5950 50  0001 C CNN
F 3 "" H 4900 6100 50  0000 C CNN
	1    4900 6100
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C42
U 1 1 58A4E921
P 5800 6100
F 0 "C42" H 5825 6200 50  0000 L CNN
F 1 ".1uF" H 5825 6000 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 5838 5950 50  0001 C CNN
F 3 "" H 5800 6100 50  0000 C CNN
	1    5800 6100
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C43
U 1 1 58A4E9C3
P 6500 6100
F 0 "C43" H 6525 6200 50  0000 L CNN
F 1 ".1uF" H 6525 6000 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 6538 5950 50  0001 C CNN
F 3 "" H 6500 6100 50  0000 C CNN
	1    6500 6100
	1    0    0    -1  
$EndComp
$Comp
L Cap_Bypass C44
U 1 1 58A4EEFA
P 7400 6050
F 0 "C44" H 7425 6150 50  0000 L CNN
F 1 ".1uF" H 7425 5950 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 7438 5900 50  0001 C CNN
F 3 "" H 7400 6050 50  0000 C CNN
	1    7400 6050
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR0133
U 1 1 58A4FA3C
P 4750 5800
F 0 "#PWR0133" H 4750 5650 50  0001 C CNN
F 1 "+15V0" H 4750 5950 50  0000 C CNN
F 2 "" H 4750 5800 50  0000 C CNN
F 3 "" H 4750 5800 50  0000 C CNN
	1    4750 5800
	0    -1   -1   0   
$EndComp
$Comp
L +15V0 #PWR0134
U 1 1 58A4FAC6
P 6400 5800
F 0 "#PWR0134" H 6400 5650 50  0001 C CNN
F 1 "+15V0" H 6400 5950 50  0000 C CNN
F 2 "" H 6400 5800 50  0000 C CNN
F 3 "" H 6400 5800 50  0000 C CNN
	1    6400 5800
	0    -1   -1   0   
$EndComp
$Comp
L -15V0 #PWR0135
U 1 1 58A4FB23
P 5950 5800
F 0 "#PWR0135" H 5950 5650 50  0001 C CNN
F 1 "-15V0" H 5950 5950 50  0000 C CNN
F 2 "" H 5950 5800 50  0000 C CNN
F 3 "" H 5950 5800 50  0000 C CNN
	1    5950 5800
	0    1    1    0   
$EndComp
$Comp
L -15V0 #PWR0136
U 1 1 58A4FBAD
P 7550 5800
F 0 "#PWR0136" H 7550 5650 50  0001 C CNN
F 1 "-15V0" H 7550 5950 50  0000 C CNN
F 2 "" H 7550 5800 50  0000 C CNN
F 3 "" H 7550 5800 50  0000 C CNN
	1    7550 5800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0137
U 1 1 58A4FC30
P 4900 6250
F 0 "#PWR0137" H 4900 6000 50  0001 C CNN
F 1 "GND" H 4900 6100 50  0000 C CNN
F 2 "" H 4900 6250 50  0000 C CNN
F 3 "" H 4900 6250 50  0000 C CNN
	1    4900 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0138
U 1 1 58A4FCB3
P 5800 6250
F 0 "#PWR0138" H 5800 6000 50  0001 C CNN
F 1 "GND" H 5800 6100 50  0000 C CNN
F 2 "" H 5800 6250 50  0000 C CNN
F 3 "" H 5800 6250 50  0000 C CNN
	1    5800 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0139
U 1 1 58A4FD36
P 6500 6250
F 0 "#PWR0139" H 6500 6000 50  0001 C CNN
F 1 "GND" H 6500 6100 50  0000 C CNN
F 2 "" H 6500 6250 50  0000 C CNN
F 3 "" H 6500 6250 50  0000 C CNN
	1    6500 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0140
U 1 1 58A4FDB9
P 7400 6200
F 0 "#PWR0140" H 7400 5950 50  0001 C CNN
F 1 "GND" H 7400 6050 50  0000 C CNN
F 2 "" H 7400 6200 50  0000 C CNN
F 3 "" H 7400 6200 50  0000 C CNN
	1    7400 6200
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R65
U 1 1 58A503D3
P 2100 7600
F 0 "R65" V 2210 7790 60  0000 C CNN
F 1 "1.82K" V 2120 7780 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2100 7600 60  0001 C CNN
F 3 "" H 2100 7600 60  0000 C CNN
	1    2100 7600
	0    -1   -1   0   
$EndComp
$Comp
L RESISTOR R64
U 1 1 58A504FC
P 2100 7050
F 0 "R64" V 2150 7220 60  0000 C CNN
F 1 "100K" V 2250 7230 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2100 7050 60  0001 C CNN
F 3 "" H 2100 7050 60  0000 C CNN
	1    2100 7050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0141
U 1 1 58A50AA2
P 2100 7750
F 0 "#PWR0141" H 2100 7500 50  0001 C CNN
F 1 "GND" H 2100 7600 50  0000 C CNN
F 2 "" H 2100 7750 50  0000 C CNN
F 3 "" H 2100 7750 50  0000 C CNN
	1    2100 7750
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R66
U 1 1 58A50E73
P 2300 3600
F 0 "R66" H 2700 3700 60  0000 C CNN
F 1 "4.99K" H 2450 3700 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2300 3600 60  0001 C CNN
F 3 "" H 2300 3600 60  0000 C CNN
	1    2300 3600
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R67
U 1 1 58A5161F
P 2300 3700
F 0 "R67" H 2600 3750 60  0000 C CNN
F 1 "4.99K" H 2450 4000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2300 3700 60  0001 C CNN
F 3 "" H 2300 3700 60  0000 C CNN
	1    2300 3700
	1    0    0    -1  
$EndComp
$Comp
L +15V0 #PWR0142
U 1 1 58A51858
P 2600 3600
F 0 "#PWR0142" H 2600 3450 50  0001 C CNN
F 1 "+15V0" V 2600 3850 50  0000 C CNN
F 2 "" H 2600 3600 50  0000 C CNN
F 3 "" H 2600 3600 50  0000 C CNN
	1    2600 3600
	0    1    1    0   
$EndComp
$Comp
L -15V0 #PWR0143
U 1 1 58A518C4
P 2600 3700
F 0 "#PWR0143" H 2600 3550 50  0001 C CNN
F 1 "-15V0" V 2600 3950 50  0000 C CNN
F 2 "" H 2600 3700 50  0000 C CNN
F 3 "" H 2600 3700 50  0000 C CNN
	1    2600 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 1300 1400 1250
Wire Wire Line
	1400 1250 3150 1250
Wire Wire Line
	1950 1250 1950 1150
Wire Wire Line
	2100 1250 2100 1800
Connection ~ 1950 1250
Wire Wire Line
	1400 1850 1400 1700
Wire Wire Line
	1400 2350 1400 2250
Wire Wire Line
	1650 2050 1850 2050
Wire Wire Line
	1400 2750 1400 2850
Wire Wire Line
	1400 2850 2100 2850
Wire Wire Line
	2100 2300 2100 2900
Connection ~ 2100 2850
Wire Wire Line
	3750 3600 4800 3600
Wire Wire Line
	3900 3750 3900 3600
Connection ~ 3900 3600
Wire Wire Line
	5000 4000 5000 3900
Wire Wire Line
	3900 4150 3900 4200
Wire Wire Line
	3900 4200 3600 4200
Wire Wire Line
	3600 4200 3600 4900
Wire Wire Line
	3400 4900 3700 4900
Wire Wire Line
	3850 4450 3600 4450
Connection ~ 3600 4450
Wire Wire Line
	4100 4200 4100 4150
Wire Wire Line
	4100 4200 4450 4200
Wire Wire Line
	4450 4200 4450 4950
Wire Wire Line
	4350 4950 4850 4950
Wire Wire Line
	4150 4450 4450 4450
Connection ~ 4450 4450
Wire Wire Line
	5400 4950 5250 4950
Connection ~ 4450 4950
Wire Wire Line
	8700 3300 8900 3300
Wire Wire Line
	8900 2400 8900 3550
Wire Wire Line
	8650 4350 9650 4350
Wire Wire Line
	8900 4350 8900 4100
Wire Wire Line
	7450 4250 7400 4250
Wire Wire Line
	7400 4250 7400 4050
Wire Wire Line
	7400 3400 7500 3400
Wire Wire Line
	7400 3400 7400 3550
Wire Wire Line
	7400 3550 8900 4100
Wire Wire Line
	7400 4050 8900 3550
Wire Wire Line
	6900 3200 7500 3200
Wire Wire Line
	7050 3250 7050 3200
Connection ~ 7050 3200
Wire Wire Line
	6050 5000 6200 5000
Wire Wire Line
	6200 5000 6200 3200
Wire Wire Line
	6200 3200 6500 3200
Wire Wire Line
	850  5650 7350 5650
Wire Wire Line
	7350 5650 7350 4450
Wire Wire Line
	7350 4450 7450 4450
Wire Wire Line
	8900 2400 5850 2400
Wire Wire Line
	5850 2400 5850 3600
Wire Wire Line
	5850 3600 5600 3600
Connection ~ 8900 3300
Wire Wire Line
	3600 5050 3600 5000
Wire Wire Line
	3600 5000 3700 5000
Connection ~ 8900 4350
Connection ~ 7200 3200
Wire Wire Line
	7200 3200 7200 3100
Wire Wire Line
	3250 3600 3350 3600
Wire Wire Line
	3400 6300 3400 6250
Wire Wire Line
	3400 6250 3600 6250
Wire Wire Line
	3600 6250 3600 6300
Wire Wire Line
	3500 6150 3500 6250
Connection ~ 3500 6250
Wire Wire Line
	3950 6350 3950 6600
Wire Wire Line
	3900 6500 3950 6500
Connection ~ 3950 6500
Wire Wire Line
	3050 6250 3050 6600
Wire Wire Line
	3100 6500 3050 6500
Connection ~ 3050 6500
Wire Wire Line
	2600 7450 2600 7550
Wire Wire Line
	2600 7550 4350 7550
Wire Wire Line
	4350 7550 4350 7400
Wire Wire Line
	4350 7000 4350 5550
Wire Wire Line
	4350 5550 3400 5550
Wire Wire Line
	3400 5550 3400 4900
Connection ~ 3600 4900
Wire Wire Line
	3600 6700 3600 7050
Wire Wire Line
	3600 7050 3950 7050
Wire Wire Line
	3950 7000 3950 7150
Connection ~ 3950 7050
Wire Wire Line
	4750 6800 4750 7300
Wire Wire Line
	4750 7200 4650 7200
Wire Wire Line
	3050 7000 3050 7550
Connection ~ 3050 7550
Wire Wire Line
	3400 6700 3400 7550
Connection ~ 3400 7550
Wire Wire Line
	3700 7800 3600 7800
Wire Wire Line
	3600 7800 3600 7550
Connection ~ 3600 7550
Wire Wire Line
	2750 6800 2600 6800
Wire Wire Line
	2600 6600 2600 7050
Connection ~ 2600 6800
Wire Wire Line
	3950 5700 3950 5950
Wire Wire Line
	2600 5700 3950 5700
Wire Wire Line
	3500 5700 3500 5750
Wire Wire Line
	3050 5700 3050 5850
Connection ~ 3500 5700
Wire Wire Line
	2600 6200 2600 5700
Connection ~ 3050 5700
Wire Wire Line
	4250 6800 4750 6800
Connection ~ 4750 7200
Wire Wire Line
	2650 5500 2650 5700
Connection ~ 2650 5700
Connection ~ 2100 1250
Wire Wire Line
	3150 1350 3050 1350
Wire Wire Line
	3050 1350 3050 1700
Wire Wire Line
	3050 1650 3250 1650
Connection ~ 3050 1650
Wire Wire Line
	3650 1650 3900 1650
Wire Wire Line
	3900 1300 3900 3250
Wire Wire Line
	3800 1300 9450 1300
Wire Wire Line
	3900 3250 1100 3250
Wire Wire Line
	1100 3250 1100 3500
Wire Wire Line
	1100 3500 1400 3500
Connection ~ 3900 1650
Wire Wire Line
	800  4200 800  3600
Wire Wire Line
	2200 3200 3850 3200
Wire Wire Line
	3850 3200 3850 2050
Wire Wire Line
	3850 2050 4250 2050
Wire Wire Line
	4250 2150 4150 2150
Wire Wire Line
	4150 2150 4150 2450
Wire Wire Line
	4150 2450 5050 2450
Wire Wire Line
	5050 2450 5050 2100
Wire Wire Line
	4900 2100 9400 2100
Wire Wire Line
	2100 3500 2200 3500
Wire Wire Line
	2200 3500 2200 3200
Wire Wire Line
	800  3600 1400 3600
Connection ~ 3900 1300
Connection ~ 5050 2100
Wire Wire Line
	5800 5950 5800 5800
Wire Wire Line
	5700 5800 5950 5800
Connection ~ 5800 5800
Wire Wire Line
	4900 5950 4900 5800
Wire Wire Line
	4750 5800 5050 5800
Connection ~ 4900 5800
Wire Wire Line
	6500 5950 6500 5800
Wire Wire Line
	6400 5800 6650 5800
Connection ~ 6500 5800
Wire Wire Line
	7400 5900 7400 5800
Wire Wire Line
	7300 5800 7550 5800
Connection ~ 7400 5800
Wire Wire Line
	2300 7250 2100 7250
Wire Wire Line
	2100 7150 2100 7300
Connection ~ 2100 7250
Wire Wire Line
	2100 7750 2100 7700
Wire Wire Line
	2200 3600 2100 3600
Wire Wire Line
	2200 3700 2100 3700
Wire Wire Line
	1400 3700 1050 3700
Wire Wire Line
	1050 3700 1050 6650
Wire Wire Line
	1050 6650 2100 6650
Wire Wire Line
	2100 6650 2100 6750
$Comp
L NPN Q14
U 1 1 58A53CAD
P 2600 4600
F 0 "Q14" H 2900 4650 50  0000 R CNN
F 1 "2N3904" H 3120 4540 50  0000 R CNN
F 2 "FootPrints:TO92" H 2800 4700 50  0001 C CNN
F 3 "" H 2600 4600 50  0000 C CNN
	1    2600 4600
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R72
U 1 1 58A5431E
P 3250 4600
F 0 "R72" H 3340 4530 60  0000 C CNN
F 1 "100K" H 3330 4720 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3250 4600 60  0001 C CNN
F 3 "" H 3250 4600 60  0000 C CNN
	1    3250 4600
	-1   0    0    1   
$EndComp
$Comp
L RESISTOR R68
U 1 1 58A54428
P 2500 4300
F 0 "R68" V 2540 4120 60  0000 C CNN
F 1 "10K" V 2660 4100 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2500 4300 60  0001 C CNN
F 3 "" H 2500 4300 60  0000 C CNN
	1    2500 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 3900 2500 3900
Wire Wire Line
	2500 3900 2500 4000
$Comp
L GND #PWR0144
U 1 1 58A54A6B
P 2500 4800
F 0 "#PWR0144" H 2500 4550 50  0001 C CNN
F 1 "GND" H 2500 4650 50  0000 C CNN
F 2 "" H 2500 4800 50  0000 C CNN
F 3 "" H 2500 4800 50  0000 C CNN
	1    2500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4600 2800 4600
Wire Wire Line
	9300 4350 9300 2250
Wire Wire Line
	9300 2250 5400 2250
Wire Wire Line
	5400 2250 5400 3100
Wire Wire Line
	5400 3100 3000 3100
Wire Wire Line
	3000 3100 3000 4200
Wire Wire Line
	3000 4200 3500 4200
Wire Wire Line
	3500 4200 3500 4600
Wire Wire Line
	3500 4600 3350 4600
Connection ~ 9300 4350
$Comp
L +15V0 #PWR0145
U 1 1 58A55544
P 1400 3900
F 0 "#PWR0145" H 1400 3750 50  0001 C CNN
F 1 "+15V0" V 1300 4000 50  0000 C CNN
F 2 "" H 1400 3900 50  0000 C CNN
F 3 "" H 1400 3900 50  0000 C CNN
	1    1400 3900
	0    -1   -1   0   
$EndComp
$Comp
L Cap_Bypass C45
U 1 1 58A5609C
P 8950 4900
F 0 "C45" H 8975 5000 50  0000 L CNN
F 1 ".1uF" H 8975 4800 50  0000 L CNN
F 2 "FootPrints:CAP-Bypass-0.3" H 8988 4750 50  0001 C CNN
F 3 "" H 8950 4900 50  0000 C CNN
	1    8950 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0146
U 1 1 58A560A2
P 8950 5050
F 0 "#PWR0146" H 8950 4800 50  0001 C CNN
F 1 "GND" H 8950 4900 50  0000 C CNN
F 2 "" H 8950 5050 50  0000 C CNN
F 3 "" H 8950 5050 50  0000 C CNN
	1    8950 5050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR0147
U 1 1 58A561FC
P 8950 4750
F 0 "#PWR0147" H 8950 4600 50  0001 C CNN
F 1 "VCC" H 8950 4900 50  0000 C CNN
F 2 "" H 8950 4750 50  0000 C CNN
F 3 "" H 8950 4750 50  0000 C CNN
	1    8950 4750
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R79
U 1 1 58A56976
P 5250 4400
F 0 "R79" V 5300 4200 60  0000 C CNN
F 1 "4.99K" V 5400 4200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5250 4400 60  0001 C CNN
F 3 "" H 5250 4400 60  0000 C CNN
	1    5250 4400
	0    -1   -1   0   
$EndComp
$Comp
L +15V0 #PWR0148
U 1 1 58A56A37
P 5250 4100
F 0 "#PWR0148" H 5250 3950 50  0001 C CNN
F 1 "+15V0" H 5250 4250 50  0000 C CNN
F 2 "" H 5250 4100 50  0000 C CNN
F 3 "" H 5250 4100 50  0000 C CNN
	1    5250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4500 5250 5400
Wire Wire Line
	5250 5050 5400 5050
$Comp
L RESISTOR R81
U 1 1 58A57385
P 5550 5400
F 0 "R81" H 5650 5300 60  0000 C CNN
F 1 "10K" H 5700 5200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5550 5400 60  0001 C CNN
F 3 "" H 5550 5400 60  0000 C CNN
	1    5550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5400 5450 5400
Connection ~ 5250 5050
Wire Wire Line
	6050 5450 6050 5400
Wire Wire Line
	6050 5400 5850 5400
$Comp
L GND #PWR0149
U 1 1 58A576D8
P 6050 5450
F 0 "#PWR0149" H 6050 5200 50  0001 C CNN
F 1 "GND" H 6050 5300 50  0000 C CNN
F 2 "" H 6050 5450 50  0000 C CNN
F 3 "" H 6050 5450 50  0000 C CNN
	1    6050 5450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
