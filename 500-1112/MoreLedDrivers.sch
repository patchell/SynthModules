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
LIBS:500-1112-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 4
Title "LED Drivers"
Date "2017-03-28"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PNP Q22
U 1 1 58DB28A6
P 3200 1350
F 0 "Q22" H 3500 1400 50  0000 R CNN
F 1 "2N3906" H 3650 1300 50  0000 R CNN
F 2 "FootPrints:TO92" H 3400 1450 50  0001 C CNN
F 3 "" H 3200 1350 50  0000 C CNN
	1    3200 1350
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R49
U 1 1 58DB28F0
P 2600 1350
F 0 "R49" H 2700 1450 60  0000 C CNN
F 1 "100K" H 2700 1250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 1350 60  0001 C CNN
F 3 "" H 2600 1350 60  0000 C CNN
	1    2600 1350
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R58
U 1 1 58DB292D
P 3550 1100
F 0 "R58" H 3700 1200 60  0000 C CNN
F 1 "470" H 3650 1000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3550 1100 60  0001 C CNN
F 3 "" H 3550 1100 60  0000 C CNN
	1    3550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1350 3000 1350
Wire Wire Line
	3300 1150 3300 1100
Wire Wire Line
	3300 1100 3450 1100
Wire Wire Line
	4100 1100 3850 1100
Entry Wire Line
	4100 1100 4200 1000
Wire Wire Line
	2300 1350 2500 1350
Entry Wire Line
	2200 1250 2300 1350
$Comp
L PNP Q23
U 1 1 58DB2DC2
P 3200 1950
F 0 "Q23" H 3500 2000 50  0000 R CNN
F 1 "2N3906" H 3650 1900 50  0000 R CNN
F 2 "FootPrints:TO92" H 3400 2050 50  0001 C CNN
F 3 "" H 3200 1950 50  0000 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R50
U 1 1 58DB2DC8
P 2600 1950
F 0 "R50" H 2700 2050 60  0000 C CNN
F 1 "100K" H 2700 1850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 1950 60  0001 C CNN
F 3 "" H 2600 1950 60  0000 C CNN
	1    2600 1950
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R59
U 1 1 58DB2DCE
P 3550 1700
F 0 "R59" H 3700 1800 60  0000 C CNN
F 1 "470" H 3650 1600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3550 1700 60  0001 C CNN
F 3 "" H 3550 1700 60  0000 C CNN
	1    3550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1950 3000 1950
Wire Wire Line
	3300 1750 3300 1700
Wire Wire Line
	3300 1700 3450 1700
Wire Wire Line
	4100 1700 3850 1700
Entry Wire Line
	4100 1700 4200 1600
Wire Wire Line
	2300 1950 2500 1950
Entry Wire Line
	2200 1850 2300 1950
$Comp
L PNP Q24
U 1 1 58DB3300
P 3200 2550
F 0 "Q24" H 3500 2600 50  0000 R CNN
F 1 "2N3906" H 3650 2500 50  0000 R CNN
F 2 "FootPrints:TO92" H 3400 2650 50  0001 C CNN
F 3 "" H 3200 2550 50  0000 C CNN
	1    3200 2550
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R51
U 1 1 58DB3306
P 2600 2550
F 0 "R51" H 2700 2650 60  0000 C CNN
F 1 "100K" H 2700 2450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 2550 60  0001 C CNN
F 3 "" H 2600 2550 60  0000 C CNN
	1    2600 2550
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R60
U 1 1 58DB330C
P 3550 2300
F 0 "R60" H 3700 2400 60  0000 C CNN
F 1 "470" H 3650 2200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3550 2300 60  0001 C CNN
F 3 "" H 3550 2300 60  0000 C CNN
	1    3550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2550 3000 2550
Wire Wire Line
	3300 2350 3300 2300
Wire Wire Line
	3300 2300 3450 2300
Wire Wire Line
	4100 2300 3850 2300
Entry Wire Line
	4100 2300 4200 2200
Wire Wire Line
	2300 2550 2500 2550
Entry Wire Line
	2200 2450 2300 2550
$Comp
L PNP Q25
U 1 1 58DB3319
P 3200 3150
F 0 "Q25" H 3500 3200 50  0000 R CNN
F 1 "2N3906" H 3650 3100 50  0000 R CNN
F 2 "FootPrints:TO92" H 3400 3250 50  0001 C CNN
F 3 "" H 3200 3150 50  0000 C CNN
	1    3200 3150
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R52
U 1 1 58DB331F
P 2600 3150
F 0 "R52" H 2700 3250 60  0000 C CNN
F 1 "100K" H 2700 3050 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 3150 60  0001 C CNN
F 3 "" H 2600 3150 60  0000 C CNN
	1    2600 3150
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R61
U 1 1 58DB3325
P 3550 2900
F 0 "R61" H 3700 3000 60  0000 C CNN
F 1 "470" H 3650 2800 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3550 2900 60  0001 C CNN
F 3 "" H 3550 2900 60  0000 C CNN
	1    3550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3150 3000 3150
Wire Wire Line
	3300 2950 3300 2900
Wire Wire Line
	3300 2900 3450 2900
Wire Wire Line
	4100 2900 3850 2900
Entry Wire Line
	4100 2900 4200 2800
Wire Wire Line
	2300 3150 2500 3150
Entry Wire Line
	2200 3050 2300 3150
$Comp
L PNP Q26
U 1 1 58DB388A
P 3200 3750
F 0 "Q26" H 3500 3800 50  0000 R CNN
F 1 "2N3904" H 3650 3700 50  0000 R CNN
F 2 "FootPrints:TO92" H 3400 3850 50  0001 C CNN
F 3 "" H 3200 3750 50  0000 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R53
U 1 1 58DB3890
P 2600 3750
F 0 "R53" H 2700 3850 60  0000 C CNN
F 1 "100K" H 2700 3650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 3750 60  0001 C CNN
F 3 "" H 2600 3750 60  0000 C CNN
	1    2600 3750
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R62
U 1 1 58DB3896
P 3550 3500
F 0 "R62" H 3700 3600 60  0000 C CNN
F 1 "470" H 3650 3400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3550 3500 60  0001 C CNN
F 3 "" H 3550 3500 60  0000 C CNN
	1    3550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3750 3000 3750
Wire Wire Line
	3300 3550 3300 3500
Wire Wire Line
	3300 3500 3450 3500
Wire Wire Line
	4100 3500 3850 3500
Entry Wire Line
	4100 3500 4200 3400
Wire Wire Line
	2300 3750 2500 3750
Entry Wire Line
	2200 3650 2300 3750
$Comp
L PNP Q27
U 1 1 58DB38A3
P 3200 4350
F 0 "Q27" H 3500 4400 50  0000 R CNN
F 1 "2N3906" H 3650 4300 50  0000 R CNN
F 2 "FootPrints:TO92" H 3400 4450 50  0001 C CNN
F 3 "" H 3200 4350 50  0000 C CNN
	1    3200 4350
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R54
U 1 1 58DB38A9
P 2600 4350
F 0 "R54" H 2700 4450 60  0000 C CNN
F 1 "100K" H 2700 4250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 4350 60  0001 C CNN
F 3 "" H 2600 4350 60  0000 C CNN
	1    2600 4350
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R63
U 1 1 58DB38AF
P 3550 4100
F 0 "R63" H 3700 4200 60  0000 C CNN
F 1 "470" H 3650 4000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3550 4100 60  0001 C CNN
F 3 "" H 3550 4100 60  0000 C CNN
	1    3550 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4350 3000 4350
Wire Wire Line
	3300 4150 3300 4100
Wire Wire Line
	3300 4100 3450 4100
Wire Wire Line
	4100 4100 3850 4100
Entry Wire Line
	4100 4100 4200 4000
Wire Wire Line
	2300 4350 2500 4350
Entry Wire Line
	2200 4250 2300 4350
$Comp
L PNP Q28
U 1 1 58DB38C8
P 3200 4950
F 0 "Q28" H 3500 5000 50  0000 R CNN
F 1 "2N3906" H 3650 4900 50  0000 R CNN
F 2 "FootPrints:TO92" H 3400 5050 50  0001 C CNN
F 3 "" H 3200 4950 50  0000 C CNN
	1    3200 4950
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R55
U 1 1 58DB38CE
P 2600 4950
F 0 "R55" H 2700 5050 60  0000 C CNN
F 1 "100K" H 2700 4850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 4950 60  0001 C CNN
F 3 "" H 2600 4950 60  0000 C CNN
	1    2600 4950
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R64
U 1 1 58DB38D4
P 3550 4700
F 0 "R64" H 3700 4800 60  0000 C CNN
F 1 "470" H 3650 4600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3550 4700 60  0001 C CNN
F 3 "" H 3550 4700 60  0000 C CNN
	1    3550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4950 3000 4950
Wire Wire Line
	3300 4750 3300 4700
Wire Wire Line
	3300 4700 3450 4700
Wire Wire Line
	4100 4700 3850 4700
Entry Wire Line
	4100 4700 4200 4600
Wire Wire Line
	2300 4950 2500 4950
Entry Wire Line
	2200 4850 2300 4950
$Comp
L PNP Q29
U 1 1 58DB38E1
P 3200 5550
F 0 "Q29" H 3500 5600 50  0000 R CNN
F 1 "2N3906" H 3650 5500 50  0000 R CNN
F 2 "FootPrints:TO92" H 3400 5650 50  0001 C CNN
F 3 "" H 3200 5550 50  0000 C CNN
	1    3200 5550
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R56
U 1 1 58DB38E7
P 2600 5550
F 0 "R56" H 2700 5650 60  0000 C CNN
F 1 "100K" H 2700 5450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 5550 60  0001 C CNN
F 3 "" H 2600 5550 60  0000 C CNN
	1    2600 5550
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R65
U 1 1 58DB38ED
P 3550 5300
F 0 "R65" H 3700 5400 60  0000 C CNN
F 1 "470" H 3650 5200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3550 5300 60  0001 C CNN
F 3 "" H 3550 5300 60  0000 C CNN
	1    3550 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5550 3000 5550
Wire Wire Line
	3300 5350 3300 5300
Wire Wire Line
	3300 5300 3450 5300
Wire Wire Line
	4100 5300 3850 5300
Entry Wire Line
	4100 5300 4200 5200
Wire Wire Line
	2300 5550 2500 5550
Entry Wire Line
	2200 5450 2300 5550
$Comp
L PNP Q31
U 1 1 58DB4462
P 5200 1350
F 0 "Q31" H 5500 1400 50  0000 R CNN
F 1 "2N3906" H 5650 1300 50  0000 R CNN
F 2 "FootPrints:TO92" H 5400 1450 50  0001 C CNN
F 3 "" H 5200 1350 50  0000 C CNN
	1    5200 1350
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R75
U 1 1 58DB4468
P 5800 1350
F 0 "R75" H 5900 1450 60  0000 C CNN
F 1 "100K" H 5900 1250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5800 1350 60  0001 C CNN
F 3 "" H 5800 1350 60  0000 C CNN
	1    5800 1350
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R67
U 1 1 58DB446E
P 4850 1100
F 0 "R67" H 5000 1200 60  0000 C CNN
F 1 "470" H 4950 1000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4850 1100 60  0001 C CNN
F 3 "" H 4850 1100 60  0000 C CNN
	1    4850 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 1350 5400 1350
Wire Wire Line
	5100 1150 5100 1100
Wire Wire Line
	5100 1100 4950 1100
Wire Wire Line
	4300 1100 4550 1100
Entry Wire Line
	4300 1100 4200 1000
Wire Wire Line
	6100 1350 5900 1350
Entry Wire Line
	6200 1250 6100 1350
$Comp
L PNP Q32
U 1 1 58DB447B
P 5200 1950
F 0 "Q32" H 5500 2000 50  0000 R CNN
F 1 "2N3906" H 5650 1900 50  0000 R CNN
F 2 "FootPrints:TO92" H 5400 2050 50  0001 C CNN
F 3 "" H 5200 1950 50  0000 C CNN
	1    5200 1950
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R76
U 1 1 58DB4481
P 5800 1950
F 0 "R76" H 5900 2050 60  0000 C CNN
F 1 "100K" H 5900 1850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5800 1950 60  0001 C CNN
F 3 "" H 5800 1950 60  0000 C CNN
	1    5800 1950
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R68
U 1 1 58DB4487
P 4850 1700
F 0 "R68" H 5000 1800 60  0000 C CNN
F 1 "470" H 4950 1600 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4850 1700 60  0001 C CNN
F 3 "" H 4850 1700 60  0000 C CNN
	1    4850 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 1950 5400 1950
Wire Wire Line
	5100 1750 5100 1700
Wire Wire Line
	5100 1700 4950 1700
Wire Wire Line
	4300 1700 4550 1700
Entry Wire Line
	4300 1700 4200 1600
Wire Wire Line
	6100 1950 5900 1950
Entry Wire Line
	6200 1850 6100 1950
$Comp
L PNP Q33
U 1 1 58DB44A0
P 5200 2550
F 0 "Q33" H 5500 2600 50  0000 R CNN
F 1 "2N3906" H 5650 2500 50  0000 R CNN
F 2 "FootPrints:TO92" H 5400 2650 50  0001 C CNN
F 3 "" H 5200 2550 50  0000 C CNN
	1    5200 2550
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R77
U 1 1 58DB44A6
P 5800 2550
F 0 "R77" H 5900 2650 60  0000 C CNN
F 1 "100K" H 5900 2450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5800 2550 60  0001 C CNN
F 3 "" H 5800 2550 60  0000 C CNN
	1    5800 2550
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R69
U 1 1 58DB44AC
P 4850 2300
F 0 "R69" H 5000 2400 60  0000 C CNN
F 1 "470" H 4950 2200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4850 2300 60  0001 C CNN
F 3 "" H 4850 2300 60  0000 C CNN
	1    4850 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 2550 5400 2550
Wire Wire Line
	5100 2350 5100 2300
Wire Wire Line
	5100 2300 4950 2300
Wire Wire Line
	4300 2300 4550 2300
Entry Wire Line
	4300 2300 4200 2200
Wire Wire Line
	6100 2550 5900 2550
Entry Wire Line
	6200 2450 6100 2550
$Comp
L PNP Q34
U 1 1 58DB44B9
P 5200 3150
F 0 "Q34" H 5500 3200 50  0000 R CNN
F 1 "2N3906" H 5650 3100 50  0000 R CNN
F 2 "FootPrints:TO92" H 5400 3250 50  0001 C CNN
F 3 "" H 5200 3150 50  0000 C CNN
	1    5200 3150
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R78
U 1 1 58DB44BF
P 5800 3150
F 0 "R78" H 5900 3250 60  0000 C CNN
F 1 "100K" H 5900 3050 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5800 3150 60  0001 C CNN
F 3 "" H 5800 3150 60  0000 C CNN
	1    5800 3150
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R70
U 1 1 58DB44C5
P 4850 2900
F 0 "R70" H 5000 3000 60  0000 C CNN
F 1 "470" H 4950 2800 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4850 2900 60  0001 C CNN
F 3 "" H 4850 2900 60  0000 C CNN
	1    4850 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 3150 5400 3150
Wire Wire Line
	5100 2950 5100 2900
Wire Wire Line
	5100 2900 4950 2900
Wire Wire Line
	4300 2900 4550 2900
Entry Wire Line
	4300 2900 4200 2800
Wire Wire Line
	6100 3150 5900 3150
Entry Wire Line
	6200 3050 6100 3150
$Comp
L PNP Q35
U 1 1 58DB44DE
P 5200 3750
F 0 "Q35" H 5500 3800 50  0000 R CNN
F 1 "2N3906" H 5650 3700 50  0000 R CNN
F 2 "FootPrints:TO92" H 5400 3850 50  0001 C CNN
F 3 "" H 5200 3750 50  0000 C CNN
	1    5200 3750
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R79
U 1 1 58DB44E4
P 5800 3750
F 0 "R79" H 5900 3850 60  0000 C CNN
F 1 "100K" H 5900 3650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5800 3750 60  0001 C CNN
F 3 "" H 5800 3750 60  0000 C CNN
	1    5800 3750
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R71
U 1 1 58DB44EA
P 4850 3500
F 0 "R71" H 5000 3600 60  0000 C CNN
F 1 "470" H 4950 3400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4850 3500 60  0001 C CNN
F 3 "" H 4850 3500 60  0000 C CNN
	1    4850 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 3750 5400 3750
Wire Wire Line
	5100 3550 5100 3500
Wire Wire Line
	5100 3500 4950 3500
Wire Wire Line
	4300 3500 4550 3500
Entry Wire Line
	4300 3500 4200 3400
Wire Wire Line
	6100 3750 5900 3750
Entry Wire Line
	6200 3650 6100 3750
$Comp
L PNP Q36
U 1 1 58DB44F7
P 5200 4350
F 0 "Q36" H 5500 4400 50  0000 R CNN
F 1 "2N3906" H 5650 4300 50  0000 R CNN
F 2 "FootPrints:TO92" H 5400 4450 50  0001 C CNN
F 3 "" H 5200 4350 50  0000 C CNN
	1    5200 4350
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R80
U 1 1 58DB44FD
P 5800 4350
F 0 "R80" H 5900 4450 60  0000 C CNN
F 1 "100K" H 5900 4250 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5800 4350 60  0001 C CNN
F 3 "" H 5800 4350 60  0000 C CNN
	1    5800 4350
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R72
U 1 1 58DB4503
P 4850 4100
F 0 "R72" H 5000 4200 60  0000 C CNN
F 1 "470" H 4950 4000 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4850 4100 60  0001 C CNN
F 3 "" H 4850 4100 60  0000 C CNN
	1    4850 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 4350 5400 4350
Wire Wire Line
	5100 4150 5100 4100
Wire Wire Line
	5100 4100 4950 4100
Wire Wire Line
	4300 4100 4550 4100
Entry Wire Line
	4300 4100 4200 4000
Wire Wire Line
	6100 4350 5900 4350
Entry Wire Line
	6200 4250 6100 4350
$Comp
L NPN Q37
U 1 1 58DB451C
P 5200 4950
F 0 "Q37" H 5500 5000 50  0000 R CNN
F 1 "2N3904" H 5650 4900 50  0000 R CNN
F 2 "FootPrints:TO92" H 5400 5050 50  0001 C CNN
F 3 "" H 5200 4950 50  0000 C CNN
	1    5200 4950
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R81
U 1 1 58DB4522
P 5800 4950
F 0 "R81" H 5900 5050 60  0000 C CNN
F 1 "100K" H 5900 4850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5800 4950 60  0001 C CNN
F 3 "" H 5800 4950 60  0000 C CNN
	1    5800 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 4950 5400 4950
Wire Wire Line
	5100 4700 5100 4750
Wire Wire Line
	4300 4700 5100 4700
Entry Wire Line
	4300 4700 4200 4600
Wire Wire Line
	6100 4950 5900 4950
Entry Wire Line
	6200 4850 6100 4950
$Comp
L NPN Q38
U 1 1 58DB4535
P 5200 5550
F 0 "Q38" H 5500 5600 50  0000 R CNN
F 1 "2N3904" H 5650 5500 50  0000 R CNN
F 2 "FootPrints:TO92" H 5400 5650 50  0001 C CNN
F 3 "" H 5200 5550 50  0000 C CNN
	1    5200 5550
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R82
U 1 1 58DB453B
P 5800 5550
F 0 "R82" H 5900 5650 60  0000 C CNN
F 1 "100K" H 5900 5450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5800 5550 60  0001 C CNN
F 3 "" H 5800 5550 60  0000 C CNN
	1    5800 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 5550 5400 5550
Wire Wire Line
	5100 5300 5100 5350
Wire Wire Line
	4300 5300 5100 5300
Entry Wire Line
	4300 5300 4200 5200
Wire Wire Line
	6100 5550 5900 5550
Entry Wire Line
	6200 5450 6100 5550
$Comp
L GND #PWR85
U 1 1 58DB454E
P 5100 5750
F 0 "#PWR85" H 5100 5500 50  0001 C CNN
F 1 "GND" H 5000 5750 50  0000 C CNN
F 2 "" H 5100 5750 50  0001 C CNN
F 3 "" H 5100 5750 50  0001 C CNN
	1    5100 5750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR84
U 1 1 58DB4554
P 5100 5150
F 0 "#PWR84" H 5100 4900 50  0001 C CNN
F 1 "GND" H 5000 5150 50  0000 C CNN
F 2 "" H 5100 5150 50  0001 C CNN
F 3 "" H 5100 5150 50  0001 C CNN
	1    5100 5150
	-1   0    0    -1  
$EndComp
$Comp
L PNP Q30
U 1 1 58DB5292
P 3200 6150
F 0 "Q30" H 3500 6200 50  0000 R CNN
F 1 "2N3906" H 3650 6100 50  0000 R CNN
F 2 "FootPrints:TO92" H 3400 6250 50  0001 C CNN
F 3 "" H 3200 6150 50  0000 C CNN
	1    3200 6150
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R57
U 1 1 58DB5298
P 2600 6150
F 0 "R57" H 2700 6250 60  0000 C CNN
F 1 "100K" H 2700 6050 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2600 6150 60  0001 C CNN
F 3 "" H 2600 6150 60  0000 C CNN
	1    2600 6150
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R66
U 1 1 58DB529E
P 3550 5900
F 0 "R66" H 3700 6000 60  0000 C CNN
F 1 "470" H 3650 5800 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3550 5900 60  0001 C CNN
F 3 "" H 3550 5900 60  0000 C CNN
	1    3550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6150 3000 6150
Wire Wire Line
	3300 5950 3300 5900
Wire Wire Line
	3300 5900 3450 5900
Wire Wire Line
	4100 5900 3850 5900
Entry Wire Line
	4100 5900 4200 5800
Wire Wire Line
	2300 6150 2500 6150
Entry Wire Line
	2200 6050 2300 6150
Text HLabel 1100 800  0    60   Input ~ 0
L[0..16]
Text HLabel 9900 850  2    60   Output ~ 0
LD[0..16]
Wire Bus Line
	9900 850  9400 850 
Wire Bus Line
	9400 850  9400 600 
Wire Bus Line
	9400 600  4200 600 
Wire Bus Line
	4200 600  4200 5800
Wire Bus Line
	1100 800  6200 800 
Wire Bus Line
	2200 800  2200 6050
Wire Bus Line
	6200 800  6200 5450
Text Label 2450 1350 2    60   ~ 0
L0
Text Label 2450 1950 2    60   ~ 0
L1
Text Label 2450 2550 2    60   ~ 0
L2
Text Label 2450 3150 2    60   ~ 0
L3
Text Label 2450 3750 2    60   ~ 0
L4
Text Label 2450 4350 2    60   ~ 0
L5
Text Label 2450 4950 2    60   ~ 0
L6
Text Label 2450 5550 2    60   ~ 0
L7
Text Label 2450 6150 2    60   ~ 0
L8
Text Label 6000 1350 2    60   ~ 0
L9
Text Label 6050 1950 2    60   ~ 0
L10
Text Label 6050 2550 2    60   ~ 0
L11
Text Label 6050 3150 2    60   ~ 0
L12
Text Label 6050 3750 2    60   ~ 0
L13
Text Label 6050 4350 2    60   ~ 0
L14
Text Label 6050 4950 2    60   ~ 0
L15
Text Label 6050 5550 2    60   ~ 0
L16
Text Label 4050 1100 2    60   ~ 0
LD0
Text Label 4050 1700 2    60   ~ 0
LD1
Text Label 4050 2300 2    60   ~ 0
LD2
Text Label 4050 2900 2    60   ~ 0
LD3
Text Label 4050 3500 2    60   ~ 0
LD4
Text Label 4050 4100 2    60   ~ 0
LD5
Text Label 4050 4700 2    60   ~ 0
LD6
Text Label 4050 5300 2    60   ~ 0
LD7
Text Label 4050 5900 2    60   ~ 0
LD8
Text Label 4500 1100 2    60   ~ 0
LD9
Text Label 4550 1700 2    60   ~ 0
LD10
Text Label 4550 2300 2    60   ~ 0
LD11
Text Label 4550 2900 2    60   ~ 0
LD12
Text Label 4550 3500 2    60   ~ 0
LD13
Text Label 4550 4100 2    60   ~ 0
LD14
Text Label 4550 4700 2    60   ~ 0
LD15
Text Label 4550 5300 2    60   ~ 0
LD16
$Comp
L +5V0 #PWR69
U 1 1 5A51825D
P 3300 1550
F 0 "#PWR69" H 3300 1400 50  0001 C CNN
F 1 "+5V0" H 3300 1700 50  0000 C CNN
F 2 "" H 3300 1550 50  0000 C CNN
F 3 "" H 3300 1550 50  0000 C CNN
	1    3300 1550
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR70
U 1 1 5A5183D4
P 3300 2150
F 0 "#PWR70" H 3300 2000 50  0001 C CNN
F 1 "+5V0" H 3300 2300 50  0000 C CNN
F 2 "" H 3300 2150 50  0000 C CNN
F 3 "" H 3300 2150 50  0000 C CNN
	1    3300 2150
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR71
U 1 1 5A518478
P 3300 2750
F 0 "#PWR71" H 3300 2600 50  0001 C CNN
F 1 "+5V0" H 3300 2900 50  0000 C CNN
F 2 "" H 3300 2750 50  0000 C CNN
F 3 "" H 3300 2750 50  0000 C CNN
	1    3300 2750
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR72
U 1 1 5A51851C
P 3300 3350
F 0 "#PWR72" H 3300 3200 50  0001 C CNN
F 1 "+5V0" H 3300 3500 50  0000 C CNN
F 2 "" H 3300 3350 50  0000 C CNN
F 3 "" H 3300 3350 50  0000 C CNN
	1    3300 3350
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR73
U 1 1 5A5185C0
P 3300 3950
F 0 "#PWR73" H 3300 3800 50  0001 C CNN
F 1 "+5V0" H 3300 4100 50  0000 C CNN
F 2 "" H 3300 3950 50  0000 C CNN
F 3 "" H 3300 3950 50  0000 C CNN
	1    3300 3950
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR74
U 1 1 5A518730
P 3300 4550
F 0 "#PWR74" H 3300 4400 50  0001 C CNN
F 1 "+5V0" H 3300 4700 50  0000 C CNN
F 2 "" H 3300 4550 50  0000 C CNN
F 3 "" H 3300 4550 50  0000 C CNN
	1    3300 4550
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR75
U 1 1 5A5187D4
P 3300 5150
F 0 "#PWR75" H 3300 5000 50  0001 C CNN
F 1 "+5V0" H 3300 5300 50  0000 C CNN
F 2 "" H 3300 5150 50  0000 C CNN
F 3 "" H 3300 5150 50  0000 C CNN
	1    3300 5150
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR76
U 1 1 5A518878
P 3300 5750
F 0 "#PWR76" H 3300 5600 50  0001 C CNN
F 1 "+5V0" H 3300 5900 50  0000 C CNN
F 2 "" H 3300 5750 50  0000 C CNN
F 3 "" H 3300 5750 50  0000 C CNN
	1    3300 5750
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR77
U 1 1 5A51891C
P 3300 6350
F 0 "#PWR77" H 3300 6200 50  0001 C CNN
F 1 "+5V0" H 3300 6500 50  0000 C CNN
F 2 "" H 3300 6350 50  0000 C CNN
F 3 "" H 3300 6350 50  0000 C CNN
	1    3300 6350
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR83
U 1 1 5A5189C0
P 5100 4550
F 0 "#PWR83" H 5100 4400 50  0001 C CNN
F 1 "+5V0" H 5100 4700 50  0000 C CNN
F 2 "" H 5100 4550 50  0000 C CNN
F 3 "" H 5100 4550 50  0000 C CNN
	1    5100 4550
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR82
U 1 1 5A518A64
P 5100 3950
F 0 "#PWR82" H 5100 3800 50  0001 C CNN
F 1 "+5V0" H 5100 4100 50  0000 C CNN
F 2 "" H 5100 3950 50  0000 C CNN
F 3 "" H 5100 3950 50  0000 C CNN
	1    5100 3950
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR81
U 1 1 5A518B08
P 5100 3350
F 0 "#PWR81" H 5100 3200 50  0001 C CNN
F 1 "+5V0" H 5100 3500 50  0000 C CNN
F 2 "" H 5100 3350 50  0000 C CNN
F 3 "" H 5100 3350 50  0000 C CNN
	1    5100 3350
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR78
U 1 1 5A518BAC
P 5100 1550
F 0 "#PWR78" H 5100 1400 50  0001 C CNN
F 1 "+5V0" H 5100 1700 50  0000 C CNN
F 2 "" H 5100 1550 50  0000 C CNN
F 3 "" H 5100 1550 50  0000 C CNN
	1    5100 1550
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR79
U 1 1 5A518D82
P 5100 2150
F 0 "#PWR79" H 5100 2000 50  0001 C CNN
F 1 "+5V0" H 5100 2300 50  0000 C CNN
F 2 "" H 5100 2150 50  0000 C CNN
F 3 "" H 5100 2150 50  0000 C CNN
	1    5100 2150
	-1   0    0    1   
$EndComp
$Comp
L +5V0 #PWR80
U 1 1 5A518E26
P 5100 2750
F 0 "#PWR80" H 5100 2600 50  0001 C CNN
F 1 "+5V0" H 5100 2900 50  0000 C CNN
F 2 "" H 5100 2750 50  0000 C CNN
F 3 "" H 5100 2750 50  0000 C CNN
	1    5100 2750
	-1   0    0    1   
$EndComp
$EndSCHEMATC
