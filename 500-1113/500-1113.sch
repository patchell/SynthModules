EESchema Schematic File Version 4
LIBS:500-1113-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Quadrature Encoder/2 Digit Display with I2C"
Date "2017-01-17"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SynthMod:ROTARY-ENCODER-RGB-SPARKFUN E1
U 1 1 587ED5FD
P 3700 4300
F 0 "E1" H 3700 4300 60  0000 C CNN
F 1 "ROTARY-ENCODER-RGB-SPARKFUN" H 3700 4300 60  0000 C CNN
F 2 "FootPrints:Rotary-Encoder-RGB-Sparkfun" H 3700 4300 60  0001 C CNN
F 3 "" H 3700 4300 60  0001 C CNN
	1    3700 4300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:KWA-541-CBB D1
U 1 1 587ED626
P 9350 2400
F 0 "D1" H 9650 3400 60  0000 C CNN
F 1 "KWA-541-CBB" H 9650 3250 60  0000 C CNN
F 2 "FootPrints:LED-DISPLAY-DUAL-DIGIT" H 9350 2400 60  0001 C CNN
F 3 "" H 9350 2400 60  0001 C CNN
	1    9350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2950 9350 3400
Wire Wire Line
	9950 2950 9950 3550
Wire Wire Line
	8750 1250 6450 1250
Wire Wire Line
	6450 1250 6450 1600
Wire Wire Line
	6550 1600 6550 1300
Wire Wire Line
	6550 1300 8450 1300
Wire Wire Line
	8450 1300 8450 1350
Wire Wire Line
	8450 1350 8750 1350
Wire Wire Line
	8750 1450 8400 1450
Wire Wire Line
	8400 1450 8400 1350
Wire Wire Line
	8400 1350 6650 1350
Wire Wire Line
	6650 1350 6650 1600
Wire Wire Line
	6750 1600 6750 1400
Wire Wire Line
	6750 1400 8350 1400
Wire Wire Line
	8350 1400 8350 1550
Wire Wire Line
	8350 1550 8750 1550
Wire Wire Line
	6450 2650 8750 2650
Wire Wire Line
	6450 2650 6450 2300
Wire Wire Line
	6550 2300 6550 2600
Wire Wire Line
	6550 2600 8450 2600
Wire Wire Line
	8450 2600 8450 2550
Wire Wire Line
	8450 2550 8750 2550
Wire Wire Line
	8750 2450 8400 2450
Wire Wire Line
	8400 2450 8400 2550
Wire Wire Line
	8400 2550 6650 2550
Wire Wire Line
	6650 2550 6650 2300
Wire Wire Line
	6750 2300 6750 2500
Wire Wire Line
	6750 2500 8350 2500
Wire Wire Line
	8350 2500 8350 2350
Wire Wire Line
	8350 2350 8750 2350
Wire Wire Line
	8750 1650 8300 1650
Wire Wire Line
	8300 1650 8300 1450
Wire Wire Line
	8300 1450 6850 1450
Wire Wire Line
	6850 1450 6850 1600
Wire Wire Line
	6850 2300 6850 2450
Wire Wire Line
	6850 2450 8300 2450
Wire Wire Line
	8300 2450 8300 2250
Wire Wire Line
	8300 2250 8750 2250
Wire Wire Line
	8750 2150 8250 2150
Wire Wire Line
	8250 2150 8250 2400
Wire Wire Line
	8250 2400 6950 2400
Wire Wire Line
	6950 2400 6950 2300
Wire Wire Line
	7050 2300 7050 2350
Wire Wire Line
	7050 2350 8200 2350
Wire Wire Line
	8200 2350 8200 2050
Wire Wire Line
	8200 2050 8750 2050
Wire Wire Line
	8750 1750 8250 1750
Wire Wire Line
	8250 1750 8250 1500
Wire Wire Line
	8250 1500 6950 1500
Wire Wire Line
	6950 1500 6950 1600
Wire Wire Line
	7050 1600 7050 1550
Wire Wire Line
	7050 1550 8200 1550
Wire Wire Line
	8200 1550 8200 1850
Wire Wire Line
	8200 1850 8750 1850
Wire Wire Line
	8750 1950 8150 1950
Wire Wire Line
	8150 1950 8150 2850
Wire Wire Line
	8150 2850 7150 2850
Wire Wire Line
	7150 2850 7150 2300
Wire Wire Line
	7250 2300 7250 3400
Wire Wire Line
	7250 3400 9350 3400
Wire Wire Line
	9950 3550 7650 3550
Wire Wire Line
	7650 3550 7650 1050
Wire Wire Line
	7650 1050 7250 1050
Wire Wire Line
	7250 1050 7250 1600
Wire Wire Line
	3350 4200 2500 4200
Wire Wire Line
	3350 4100 2500 4100
Wire Wire Line
	3350 4000 2500 4000
Wire Wire Line
	3350 3850 2900 3850
Wire Wire Line
	2900 3850 2900 3900
Wire Wire Line
	2900 3900 2500 3900
Wire Wire Line
	2500 3800 2800 3800
Wire Wire Line
	2800 3800 2800 3750
Wire Wire Line
	2800 3750 3350 3750
Wire Wire Line
	4100 3800 4250 3800
Wire Wire Line
	4250 3800 4250 3400
Wire Wire Line
	4250 3400 1650 3400
Wire Wire Line
	1650 3400 1650 3800
Wire Wire Line
	1650 3800 1850 3800
Wire Wire Line
	1650 3900 1850 3900
Connection ~ 1650 3800
Wire Wire Line
	1700 4000 1850 4000
Wire Wire Line
	1700 4000 1700 4100
Wire Wire Line
	1700 4100 1850 4100
Wire Wire Line
	1700 4200 1850 4200
Connection ~ 1700 4100
Wire Wire Line
	1700 4700 4300 4700
Wire Wire Line
	4300 4700 4300 4100
Wire Wire Line
	4300 4100 4100 4100
Connection ~ 1700 4200
$Comp
L SynthMod:500-1113-AQBKNOB P2
U 1 1 5880E5F3
P 6900 1950
F 0 "P2" H 6900 1300 60  0000 C CNN
F 1 "500-1113-AQBKNOB" H 6900 1400 60  0000 C CNN
F 2 "FootPrints:IDC10x2-Vert" H 6900 1050 60  0001 C CNN
F 3 "" H 6900 1050 60  0001 C CNN
	1    6900 1950
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:500-1113-AQB P1
U 1 1 5880F471
P 2200 4000
F 0 "P1" H 2200 3600 60  0000 C CNN
F 1 "500-1113-AQB" H 2200 3700 60  0000 C CNN
F 2 "" H 2200 3850 60  0001 C CNN
F 3 "" H 2200 3850 60  0001 C CNN
	1    2200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3800 1650 3900
Wire Wire Line
	1700 4100 1700 4200
Wire Wire Line
	1700 4200 1700 4700
$EndSCHEMATC
