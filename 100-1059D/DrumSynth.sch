EESchema Schematic File Version 4
LIBS:100-1059D_Cheezy-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 13 22
Title "Drum Synth"
Date "2016-05-07"
Rev "E"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2200 850  1050 500 
U 5BD63266
F0 "DRUM1" 50
F1 "DRUM.sch" 50
F2 "PITCH_CV" I L 2200 1000 50 
F3 "TRIG" I L 2200 1150 50 
F4 "OUT" O R 3250 1000 50 
$EndSheet
$Sheet
S 2200 1750 1050 550 
U 5BE16060
F0 "Drum2" 50
F1 "DRUM2.sch" 50
F2 "PITCH_CV" I L 2200 1900 50 
F3 "TRIG" I L 2200 2150 50 
F4 "OUT" O R 3250 1950 50 
$EndSheet
$Sheet
S 2200 2600 1050 500 
U 5BE16063
F0 "Drum3" 50
F1 "DRUM3.sch" 50
F2 "PITCH_CV" I L 2200 2800 50 
F3 "TRIG" I L 2200 3000 50 
F4 "OUT" O R 3250 2800 50 
$EndSheet
$Sheet
S 2150 3600 1000 750 
U 5BE43A06
F0 "CYMBAL" 50
F1 "CYMBAL.sch" 50
F2 "NOISE" I L 2150 3750 50 
F3 "TRIG" I L 2150 3900 50 
F4 "OUT" O R 3150 3750 50 
F5 "LFO" I L 2150 4050 50 
F6 "PITCH" I L 2150 4200 50 
$EndSheet
Text HLabel 1150 1000 0    50   Input ~ 0
DRM1_CV
Text HLabel 1150 1150 0    50   Input ~ 0
DRM1_TRIG
Text HLabel 1100 1900 0    50   Input ~ 0
DRM2_CV
Text HLabel 1100 2150 0    50   Input ~ 0
DRM2_TRIG
Text HLabel 1050 2800 0    50   Input ~ 0
DRM3_CV
Text HLabel 1050 3000 0    50   Input ~ 0
DRM3_TRIG
Text HLabel 1000 3750 0    50   Input ~ 0
NOISE
Text HLabel 1100 4750 0    50   Input ~ 0
CYMBAL_TRIG
Text HLabel 1000 4050 0    50   Input ~ 0
LFO
Text HLabel 1100 4200 0    50   Input ~ 0
CYMBAL_PITCH
Wire Wire Line
	2200 1000 1150 1000
Wire Wire Line
	1150 1150 2200 1150
Wire Wire Line
	1100 1900 2200 1900
Wire Wire Line
	1100 2150 2200 2150
Wire Wire Line
	2200 2800 1050 2800
Wire Wire Line
	2200 3000 1050 3000
Wire Wire Line
	2150 3750 1000 3750
Wire Wire Line
	2150 4200 1100 4200
Wire Wire Line
	1000 4050 2150 4050
$Comp
L SynthMod:500-1138 P18
U 1 1 5BCB63CE
P 4950 2600
F 0 "P18" H 4950 3025 50  0000 C CNN
F 1 "500-1138" H 4950 2934 50  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 4900 2150 50  0001 C CNN
F 3 "" H 4900 2150 50  0001 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
Text Notes 4850 2950 0    50   ~ 0
MIXER\n
Wire Wire Line
	3250 1000 4050 1000
Wire Wire Line
	4050 1000 4050 2500
Wire Wire Line
	4050 2500 4550 2500
Wire Wire Line
	3250 1950 4000 1950
Wire Wire Line
	4000 1950 4000 2600
Wire Wire Line
	4000 2600 4550 2600
Wire Wire Line
	3250 2800 4000 2800
Wire Wire Line
	4000 2800 4000 2700
Wire Wire Line
	4000 2700 4550 2700
Wire Wire Line
	3150 3750 4050 3750
Wire Wire Line
	4050 3750 4050 2800
Wire Wire Line
	4050 2800 4550 2800
$Comp
L power:GND #PWR0292
U 1 1 5BCB6B77
P 5500 2900
F 0 "#PWR0292" H 5500 2650 50  0001 C CNN
F 1 "GND" H 5505 2727 50  0000 C CNN
F 2 "" H 5500 2900 50  0001 C CNN
F 3 "" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2900 5500 2700
Wire Wire Line
	5500 2700 5350 2700
Wire Wire Line
	5350 2600 5500 2600
Wire Wire Line
	5500 2600 5500 2700
Connection ~ 5500 2700
Wire Wire Line
	5350 2500 5500 2500
Wire Wire Line
	5500 2500 5500 2600
Connection ~ 5500 2600
$Comp
L SynthMod:+15V0 #PWR0291
U 1 1 5BCB788F
P 4450 2300
F 0 "#PWR0291" H 4450 2150 50  0001 C CNN
F 1 "+15V0" H 4467 2473 50  0000 C CNN
F 2 "" H 4450 2300 50  0000 C CNN
F 3 "" H 4450 2300 50  0000 C CNN
	1    4450 2300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:-15V0 #PWR0293
U 1 1 5BCB78DD
P 5600 2800
F 0 "#PWR0293" H 5600 2650 50  0001 C CNN
F 1 "-15V0" V 5617 2928 50  0000 L CNN
F 2 "" H 5600 2800 50  0000 C CNN
F 3 "" H 5600 2800 50  0000 C CNN
	1    5600 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2400 7450 2400
Wire Wire Line
	4450 2300 4450 2400
Wire Wire Line
	4450 2400 4550 2400
Wire Wire Line
	5600 2800 5350 2800
Text HLabel 7450 2400 2    50   Output ~ 0
OUT
$Comp
L SynthMod:NPN Q36
U 1 1 5BE479F9
P 1700 4750
F 0 "Q36" H 1895 4796 50  0000 L CNN
F 1 "2N3904" H 1895 4705 50  0000 L CNN
F 2 "FootPrints:TO92" H 1900 4850 50  0001 C CNN
F 3 "" H 1700 4750 50  0000 C CNN
	1    1700 4750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R188
U 1 1 5BE47F6C
P 1200 4750
F 0 "R188" H 1300 4967 60  0000 C CNN
F 1 "33K" H 1300 4861 60  0000 C CNN
F 2 "FootPrints:AXIAL0_4" H 1300 4861 60  0001 C CNN
F 3 "" H 1200 4750 60  0000 C CNN
	1    1200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4550 1800 3900
Wire Wire Line
	1800 3900 2150 3900
$Comp
L SynthMod:RESISTOR R203
U 1 1 5BE4849D
P 1800 3300
F 0 "R203" V 1847 3358 60  0000 L CNN
F 1 "10K" V 1953 3358 60  0000 L CNN
F 2 "FootPrints:AXIAL0_4" H 1900 3411 60  0001 C CNN
F 3 "" H 1800 3300 60  0000 C CNN
	1    1800 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 3900 1800 3600
Connection ~ 1800 3900
$Comp
L power:GND #PWR0371
U 1 1 5BE48A06
P 1800 4950
F 0 "#PWR0371" H 1800 4700 50  0001 C CNN
F 1 "GND" H 1805 4777 50  0000 C CNN
F 2 "" H 1800 4950 50  0001 C CNN
F 3 "" H 1800 4950 50  0001 C CNN
	1    1800 4950
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR0369
U 1 1 5BE48A4F
P 1800 3200
F 0 "#PWR0369" H 1800 3050 50  0001 C CNN
F 1 "+15V0" H 1817 3373 50  0000 C CNN
F 2 "" H 1800 3200 50  0000 C CNN
F 3 "" H 1800 3200 50  0000 C CNN
	1    1800 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
