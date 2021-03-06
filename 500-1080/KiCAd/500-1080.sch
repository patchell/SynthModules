EESchema Schematic File Version 2
LIBS:500-1080-rescue
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
LIBS:500-1080-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
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
L DUAL_2N3906 Q11
U 2 1 569ADBC1
P 5700 1800
F 0 "Q11" H 5950 1850 60  0000 C CNN
F 1 "2N3906" H 6050 1750 60  0000 C CNN
F 2 "Footprints:DUAL_TO92" H 5700 1800 60  0001 C CNN
F 3 "" H 5700 1800 60  0000 C CNN
	2    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L NPN Q9
U 1 1 569AE915
P 4400 4000
F 0 "Q9" H 4700 4050 50  0000 R CNN
F 1 "2N3904" H 4850 3950 50  0000 R CNN
F 2 "Footprints:TO92" H 4600 4100 50  0001 C CNN
F 3 "" H 4400 4000 50  0000 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
$Comp
L PNP Q5
U 1 1 569AEDA9
P 2500 2400
F 0 "Q5" H 2800 2450 50  0000 R CNN
F 1 "2N3906" H 3000 2350 50  0000 R CNN
F 2 "Footprints:TO92" H 2700 2500 50  0001 C CNN
F 3 "" H 2500 2400 50  0000 C CNN
	1    2500 2400
	1    0    0    1   
$EndComp
Wire Wire Line
	1400 4800 1400 5000
$Comp
L NPN Q3
U 1 1 569B38DE
P 2200 4000
F 0 "Q3" H 2500 4050 50  0000 R CNN
F 1 "2N3904" H 2650 3950 50  0000 R CNN
F 2 "Footprints:TO92" H 2400 4100 50  0001 C CNN
F 3 "" H 2200 4000 50  0000 C CNN
	1    2200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4600 2000 4600
Wire Wire Line
	1900 4600 1900 4300
Wire Wire Line
	1900 4300 2300 4300
Connection ~ 1900 4600
Wire Wire Line
	2300 4200 2300 4400
Connection ~ 2300 4300
Wire Wire Line
	2000 4000 1400 4000
Connection ~ 1400 4000
Wire Wire Line
	1400 3800 1400 4400
Wire Wire Line
	1900 3300 1900 3500
Wire Wire Line
	1900 3500 2600 3500
Wire Wire Line
	2600 3500 2600 3300
Wire Wire Line
	2300 3800 2300 3500
Connection ~ 2300 3500
Wire Wire Line
	1900 2100 1900 2900
Wire Wire Line
	2600 2100 2600 2200
Wire Wire Line
	1900 2400 2300 2400
Wire Wire Line
	2200 1900 2300 1900
Connection ~ 1900 2400
Wire Wire Line
	2600 2100 2300 2100
Wire Wire Line
	2300 2100 2300 1900
Wire Wire Line
	2600 2600 2600 2900
Wire Wire Line
	1900 1700 1900 1500
Wire Wire Line
	1900 1500 6000 1500
Wire Wire Line
	2600 1500 2600 1700
$Comp
L PAD P1
U 1 1 569B4E7A
P 1300 3100
F 0 "P1" H 1300 2900 60  0000 C CNN
F 1 "+" H 1325 2825 60  0000 C CNN
F 2 "Footprints:PAD" H 1300 2800 60  0001 C CNN
F 3 "" H 1300 2800 60  0000 C CNN
	1    1300 3100
	0    1    1    0   
$EndComp
$Comp
L PAD P4
U 1 1 569B4F11
P 3100 3100
F 0 "P4" V 3200 3000 60  0000 C CNN
F 1 "-" V 3000 3000 60  0000 C CNN
F 2 "Footprints:PAD" H 3100 2800 60  0001 C CNN
F 3 "" H 3100 2800 60  0000 C CNN
	1    3100 3100
	0    -1   1    0   
$EndComp
Wire Wire Line
	1600 3100 1300 3100
$Comp
L PNP Q8
U 1 1 569C25C8
P 4000 2400
F 0 "Q8" H 4300 2450 50  0000 R CNN
F 1 "2N3906" H 4500 2350 50  0000 R CNN
F 2 "Footprints:TO92" H 4200 2500 50  0001 C CNN
F 3 "" H 4000 2400 50  0000 C CNN
	1    4000 2400
	1    0    0    1   
$EndComp
Wire Wire Line
	4100 2800 4100 2900
Wire Wire Line
	3400 2800 4100 2800
Wire Wire Line
	3400 2000 3400 2800
Wire Wire Line
	3800 2400 3400 2400
Connection ~ 3400 2400
Wire Wire Line
	3700 1800 3800 1800
Wire Wire Line
	3800 1800 3800 2100
Wire Wire Line
	3800 2100 4100 2100
Wire Wire Line
	4100 2000 4100 2200
Connection ~ 4100 2100
Wire Wire Line
	3400 1500 3400 1600
Connection ~ 2600 1500
Wire Wire Line
	4100 1500 4100 1600
Connection ~ 3400 1500
Wire Wire Line
	4900 3500 4900 3300
Wire Wire Line
	4100 3500 4900 3500
Wire Wire Line
	4100 3500 4100 3300
Wire Wire Line
	4500 3800 4500 3500
Connection ~ 4500 3500
Wire Wire Line
	4500 4200 4500 4400
Wire Wire Line
	1400 5000 5900 5000
Wire Wire Line
	2300 5000 2300 4800
Wire Wire Line
	4500 5000 4500 4800
Connection ~ 2300 5000
Wire Wire Line
	3600 4800 3600 5000
Connection ~ 3600 5000
Wire Wire Line
	3900 4600 4200 4600
Wire Wire Line
	3600 3900 3600 4400
Wire Wire Line
	3600 4000 4200 4000
Wire Wire Line
	4900 1500 4900 1600
Connection ~ 4100 1500
Wire Wire Line
	5800 1500 5800 1600
Connection ~ 4900 1500
$Comp
L PNP Q13
U 1 1 569C3892
P 5700 2400
F 0 "Q13" H 6000 2450 50  0000 R CNN
F 1 "2N3906" H 6200 2350 50  0000 R CNN
F 2 "Footprints:TO92" H 5900 2500 50  0001 C CNN
F 3 "" H 5700 2400 50  0000 C CNN
	1    5700 2400
	1    0    0    1   
$EndComp
Wire Wire Line
	5800 2000 5800 2200
Wire Wire Line
	5200 1800 5500 1800
Wire Wire Line
	5800 2100 5400 2100
Wire Wire Line
	5400 2100 5400 1800
Connection ~ 5400 1800
Connection ~ 5800 2100
Wire Wire Line
	4900 2000 4900 2900
Wire Wire Line
	5500 2400 4900 2400
Connection ~ 4900 2400
$Comp
L NPN Q14
U 1 1 569C45A4
P 5700 4000
F 0 "Q14" H 6000 4050 50  0000 R CNN
F 1 "2N3904" H 6150 3950 50  0000 R CNN
F 2 "Footprints:TO92" H 5900 4100 50  0001 C CNN
F 3 "" H 5700 4000 50  0000 C CNN
	1    5700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2600 5800 3800
Wire Wire Line
	5800 4300 5400 4300
Wire Wire Line
	5400 4300 5400 4600
Wire Wire Line
	5300 4600 5500 4600
Connection ~ 5400 4600
Wire Wire Line
	5800 4200 5800 4400
Connection ~ 5800 4300
Wire Wire Line
	5000 5000 5000 4800
Connection ~ 4500 5000
Wire Wire Line
	5800 5000 5800 4800
Connection ~ 5000 5000
Wire Wire Line
	5000 3700 5000 4400
Wire Wire Line
	5000 4000 5500 4000
Wire Wire Line
	4100 2600 4100 2700
Wire Wire Line
	4100 2700 4700 2700
Wire Wire Line
	4700 2700 4700 3700
Wire Wire Line
	4700 3700 5000 3700
Connection ~ 5000 4000
Text Notes 6700 7750 0    60   ~ 0
OPEN OTA
Text Notes 6400 7000 0    100  ~ 20
500-1080
Text Notes 6400 7100 0    60   ~ 0
DRAWN BY JIM PATCHELL
$Comp
L PAD P2
U 1 1 569C5700
P 1400 3800
F 0 "P2" H 1400 3600 60  0000 C CNN
F 1 "Iabc1" H 1425 3525 60  0000 C CNN
F 2 "Footprints:PAD" H 1400 3500 60  0001 C CNN
F 3 "" H 1400 3500 60  0000 C CNN
	1    1400 3800
	1    0    0    1   
$EndComp
$Comp
L PAD P3
U 1 1 569C57D4
P 2750 2800
F 0 "P3" H 2750 2600 60  0000 C CNN
F 1 "Io" H 2775 2525 60  0000 C CNN
F 2 "Footprints:PAD" H 2750 2500 60  0001 C CNN
F 3 "" H 2750 2500 60  0000 C CNN
	1    2750 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 2800 2600 2800
Connection ~ 2600 2800
$Comp
L PAD P6
U 1 1 569C595E
P 3650 3100
F 0 "P6" V 3750 3000 60  0000 C CNN
F 1 "-" V 3550 3050 60  0000 C CNN
F 2 "Footprints:PAD" H 3650 2800 60  0001 C CNN
F 3 "" H 3650 2800 60  0000 C CNN
	1    3650 3100
	0    1    1    0   
$EndComp
$Comp
L PAD P7
U 1 1 569C5A0F
P 5350 3100
F 0 "P7" H 5350 2900 60  0000 C CNN
F 1 "+" H 5375 2825 60  0000 C CNN
F 2 "Footprints:PAD" H 5350 2800 60  0001 C CNN
F 3 "" H 5350 2800 60  0000 C CNN
	1    5350 3100
	0    -1   -1   0   
$EndComp
$Comp
L PAD P5
U 1 1 569C5C16
P 3600 3900
F 0 "P5" H 3600 3700 60  0000 C CNN
F 1 "Iabc2" H 3625 3625 60  0000 C CNN
F 2 "Footprints:PAD" H 3600 3600 60  0001 C CNN
F 3 "" H 3600 3600 60  0000 C CNN
	1    3600 3900
	1    0    0    1   
$EndComp
$Comp
L PAD P10
U 1 1 569C5C77
P 6100 3050
F 0 "P10" H 6100 2850 60  0000 C CNN
F 1 "Io2" H 6125 2775 60  0000 C CNN
F 2 "Footprints:PAD" H 6100 2750 60  0001 C CNN
F 3 "" H 6100 2750 60  0000 C CNN
	1    6100 3050
	0    -1   -1   0   
$EndComp
$Comp
L PAD P9
U 1 1 569C5F26
P 6000 1500
F 0 "P9" H 6000 1300 60  0000 C CNN
F 1 "+15" H 6025 1225 60  0000 C CNN
F 2 "Footprints:PAD" H 6000 1200 60  0001 C CNN
F 3 "" H 6000 1200 60  0000 C CNN
	1    6000 1500
	0    -1   -1   0   
$EndComp
$Comp
L PAD P8
U 1 1 569C62EF
P 5900 5000
F 0 "P8" H 5900 4800 60  0000 C CNN
F 1 "-15" H 5925 4725 60  0000 C CNN
F 2 "Footprints:PAD" H 5900 4700 60  0001 C CNN
F 3 "" H 5900 4700 60  0000 C CNN
	1    5900 5000
	0    -1   -1   0   
$EndComp
Connection ~ 5800 5000
Wire Wire Line
	6100 3050 5800 3050
Connection ~ 5800 3050
Wire Wire Line
	5200 3100 5350 3100
Wire Wire Line
	3650 3100 3800 3100
Connection ~ 3600 4000
Connection ~ 5800 1500
Connection ~ 2300 1900
Connection ~ 2600 2100
Connection ~ 3800 1800
Wire Wire Line
	4100 4600 4100 4300
Wire Wire Line
	4100 4300 4500 4300
Connection ~ 4500 4300
Connection ~ 4100 4600
Wire Wire Line
	3100 3100 2900 3100
Text Label 5400 1500 0    60   ~ 0
PLUS15
Text Label 3700 5000 0    60   ~ 0
MINUS15
$Comp
L DUAL_2N3904 Q1
U 2 1 57000E6D
P 2200 4600
F 0 "Q1" H 2393 4653 60  0000 L CNN
F 1 "2N3904" H 2393 4547 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 2200 4500 60  0001 C CNN
F 3 "" H 2200 4500 60  0000 C CNN
	2    2200 4600
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q1
U 1 1 57000EE3
P 1500 4600
F 0 "Q1" H 1694 4653 60  0000 L CNN
F 1 "2N3904" H 1694 4547 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 1500 4500 60  0001 C CNN
F 3 "" H 1500 4500 60  0000 C CNN
	1    1500 4600
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q7
U 2 1 5700186E
P 4400 4600
F 0 "Q7" H 4300 4300 60  0000 L CNN
F 1 "2N3904" H 4100 4400 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 4400 4500 60  0001 C CNN
F 3 "" H 4400 4500 60  0000 C CNN
	2    4400 4600
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q12
U 2 1 57001931
P 5700 4600
F 0 "Q12" H 5893 4653 60  0000 L CNN
F 1 "2N3904" H 5893 4547 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 5700 4500 60  0001 C CNN
F 3 "" H 5700 4500 60  0000 C CNN
	2    5700 4600
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q7
U 1 1 570019CF
P 3700 4600
F 0 "Q7" H 3894 4653 60  0000 L CNN
F 1 "2N3904" H 3894 4547 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 3700 4500 60  0001 C CNN
F 3 "" H 3700 4500 60  0000 C CNN
	1    3700 4600
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q12
U 1 1 57001B58
P 5100 4600
F 0 "Q12" H 5294 4653 60  0000 L CNN
F 1 "2N3904" H 5294 4547 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 5100 4500 60  0001 C CNN
F 3 "" H 5100 4500 60  0000 C CNN
	1    5100 4600
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q4
U 2 1 570022D9
P 2700 3100
F 0 "Q4" H 2894 3153 60  0000 L CNN
F 1 "2N3904" H 2894 3047 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 2700 3000 60  0001 C CNN
F 3 "" H 2700 3000 60  0000 C CNN
	2    2700 3100
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q4
U 1 1 570023E8
P 1800 3100
F 0 "Q4" H 1993 3153 60  0000 L CNN
F 1 "2N3904" H 1993 3047 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 1800 3000 60  0001 C CNN
F 3 "" H 1800 3000 60  0000 C CNN
	1    1800 3100
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q10
U 2 1 57002653
P 5000 3100
F 0 "Q10" H 5194 3153 60  0000 L CNN
F 1 "2N3904" H 5194 3047 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 5000 3000 60  0001 C CNN
F 3 "" H 5000 3000 60  0000 C CNN
	2    5000 3100
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3904 Q10
U 1 1 57002659
P 4000 3100
F 0 "Q10" H 4193 3153 60  0000 L CNN
F 1 "2N3904" H 4193 3047 60  0000 L CNN
F 2 "Footprints:DUAL_TO92" H 4000 3000 60  0001 C CNN
F 3 "" H 4000 3000 60  0000 C CNN
	1    4000 3100
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q11
U 1 1 569ADC29
P 5000 1800
F 0 "Q11" H 5000 1450 60  0000 C CNN
F 1 "2N3906" H 4900 1550 60  0000 C CNN
F 2 "Footprints:DUAL_TO92" H 5000 1800 60  0001 C CNN
F 3 "" H 5000 1800 60  0000 C CNN
	1    5000 1800
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q6
U 2 1 569ADB7D
P 4000 1800
F 0 "Q6" H 4300 1800 60  0000 C CNN
F 1 "2N3906" H 4400 1700 60  0000 C CNN
F 2 "Footprints:DUAL_TO92" H 4000 1800 60  0001 C CNN
F 3 "" H 4000 1800 60  0000 C CNN
	2    4000 1800
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q6
U 1 1 569ADB1C
P 3500 1800
F 0 "Q6" H 3850 1750 60  0000 C CNN
F 1 "2N3906" H 3850 1600 60  0000 C CNN
F 2 "Footprints:DUAL_TO92" H 3500 1800 60  0001 C CNN
F 3 "" H 3500 1800 60  0000 C CNN
	1    3500 1800
	-1   0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q2
U 2 1 569ADA2F
P 2500 1900
F 0 "Q2" H 2350 2050 60  0000 C CNN
F 1 "2N3906" H 2400 2150 60  0000 C CNN
F 2 "Footprints:DUAL_TO92" H 2500 1900 60  0001 C CNN
F 3 "" H 2500 1900 60  0000 C CNN
	2    2500 1900
	1    0    0    -1  
$EndComp
$Comp
L DUAL_2N3906 Q2
U 1 1 569ADAB4
P 2000 1900
F 0 "Q2" H 2250 1950 60  0000 C CNN
F 1 "2N3906" H 2300 2050 60  0000 C CNN
F 2 "Footprints:DUAL_TO92" H 2000 1900 60  0001 C CNN
F 3 "" H 2000 1900 60  0000 C CNN
	1    2000 1900
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
