EESchema Schematic File Version 4
LIBS:500-1017-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 5
Title "Midi To CV"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3900 800  850  1000
U 5A986428
F0 "SPI DAC" 60
F1 "DacSpi.sch" 60
F2 "LdDac" I L 3900 900 60 
F3 "GateClock" I L 3900 1000 60 
F4 "SPIclk" I L 3900 1200 60 
F5 "SPIdat" I L 3900 1100 60 
F6 "DacOut" O R 4750 1300 60 
F7 "SHgate" O R 4750 1400 60 
F8 "IRQ" O R 4750 1600 60 
F9 "CLR_IRQ" I L 3900 1750 60 
$EndSheet
$Comp
L SynthMod:DIN5 P3
U 1 1 5B3F9797
P 1150 5250
F 0 "P3" H 900 5550 60  0000 C CNN
F 1 "MIDI IN" H 925 5150 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 1150 5250 60  0001 C CNN
F 3 "" H 1150 5250 60  0000 C CNN
	1    1150 5250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DIN5 P1
U 1 1 5B3F9891
P 1100 6250
F 0 "P1" H 850 6550 60  0000 C CNN
F 1 "THRU" H 875 6150 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 1100 6250 60  0001 C CNN
F 3 "" H 1100 6250 60  0000 C CNN
	1    1100 6250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DIN5 P2
U 1 1 5B3F98F5
P 1100 7300
F 0 "P2" H 850 7600 60  0000 C CNN
F 1 "OUT" H 875 7200 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 1100 7300 60  0001 C CNN
F 3 "" H 1100 7300 60  0000 C CNN
	1    1100 7300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:PC900 U2
U 1 1 5B3F9961
P 3100 5050
F 0 "U2" H 3100 4750 60  0000 C CNN
F 1 "PC900" H 3100 4650 60  0000 C CNN
F 2 "FootPrints:DIP-6.3" H 3100 5050 60  0001 C CNN
F 3 "" H 3100 5050 60  0000 C CNN
	1    3100 5050
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:74HC05 U1
U 2 1 5B3F99C0
P 2950 6050
F 0 "U1" H 3100 6150 50  0000 C CNN
F 1 "74HC05" H 3150 5950 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 2950 6050 50  0001 C CNN
F 3 "" H 2950 6050 50  0000 C CNN
	2    2950 6050
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:74HC05 U1
U 3 1 5B3F9A96
P 2900 7100
F 0 "U1" H 3050 7200 50  0000 C CNN
F 1 "74HC05" H 3100 7000 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 2900 7100 50  0001 C CNN
F 3 "" H 2900 7100 50  0000 C CNN
	3    2900 7100
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R5
U 1 1 5B3F9C25
P 2250 4850
F 0 "R5" H 2250 4550 60  0000 C CNN
F 1 "220" H 2400 4650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2250 4850 60  0001 C CNN
F 3 "" H 2250 4850 60  0000 C CNN
	1    2250 4850
	1    0    0    -1  
$EndComp
$Comp
L device1:D_ALT D1
U 1 1 5B3F9D28
P 2700 5050
F 0 "D1" H 2700 5150 50  0000 C CNN
F 1 "1N914" H 2700 4950 50  0000 C CNN
F 2 "FootPrints:DIODE0.4" H 2700 5050 50  0001 C CNN
F 3 "" H 2700 5050 50  0001 C CNN
	1    2700 5050
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R2
U 1 1 5B3FA10E
P 2100 6050
F 0 "R2" H 2100 5750 60  0000 C CNN
F 1 "220" H 2250 5850 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2100 6050 60  0001 C CNN
F 3 "" H 2100 6050 60  0000 C CNN
	1    2100 6050
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R4
U 1 1 5B3FA229
P 2100 7100
F 0 "R4" H 2100 6800 60  0000 C CNN
F 1 "220" H 2250 6900 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2100 7100 60  0001 C CNN
F 3 "" H 2100 7100 60  0000 C CNN
	1    2100 7100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R1
U 1 1 5B3FA2B3
P 2100 5850
F 0 "R1" H 2100 5550 60  0000 C CNN
F 1 "220" H 2250 5650 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2100 5850 60  0001 C CNN
F 3 "" H 2100 5850 60  0000 C CNN
	1    2100 5850
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R3
U 1 1 5B3FA31E
P 2100 6900
F 0 "R3" H 2100 6600 60  0000 C CNN
F 1 "220" H 2250 6700 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 2100 6900 60  0001 C CNN
F 3 "" H 2100 6900 60  0000 C CNN
	1    2100 6900
	1    0    0    -1  
$EndComp
$Comp
L power1:VCC #PWR02
U 1 1 5B3FA5EC
P 2400 6900
F 0 "#PWR02" H 2400 6750 50  0001 C CNN
F 1 "VCC" H 2400 7050 50  0000 C CNN
F 2 "" H 2400 6900 50  0001 C CNN
F 3 "" H 2400 6900 50  0001 C CNN
	1    2400 6900
	0    1    1    0   
$EndComp
$Comp
L power1:VCC #PWR01
U 1 1 5B3FA67D
P 2400 5850
F 0 "#PWR01" H 2400 5700 50  0001 C CNN
F 1 "VCC" H 2400 6000 50  0000 C CNN
F 2 "" H 2400 5850 50  0001 C CNN
F 3 "" H 2400 5850 50  0001 C CNN
	1    2400 5850
	0    1    1    0   
$EndComp
$Comp
L SynthMod:RESISTOR R7
U 1 1 5B3FA9E9
P 3350 5700
F 0 "R7" H 3350 5400 60  0000 C CNN
F 1 "3.3K" H 3500 5500 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3350 5700 60  0001 C CNN
F 3 "" H 3350 5700 60  0000 C CNN
	1    3350 5700
	0    1    1    0   
$EndComp
$Comp
L SynthMod:74HC05 U1
U 1 1 5B3FAB3A
P 3650 6050
F 0 "U1" H 3800 6150 50  0000 C CNN
F 1 "74HC05" H 3850 5950 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 3650 6050 50  0001 C CNN
F 3 "" H 3650 6050 50  0000 C CNN
	1    3650 6050
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R6
U 1 1 5B3FAC64
P 3300 6750
F 0 "R6" H 3300 6450 60  0000 C CNN
F 1 "3.3K" H 3450 6550 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3300 6750 60  0001 C CNN
F 3 "" H 3300 6750 60  0000 C CNN
	1    3300 6750
	0    1    1    0   
$EndComp
$Comp
L SynthMod:74HC05 U1
U 4 1 5B3FAD05
P 3600 7100
F 0 "U1" H 3750 7200 50  0000 C CNN
F 1 "74HC05" H 3800 7000 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 3600 7100 50  0001 C CNN
F 3 "" H 3600 7100 50  0000 C CNN
	4    3600 7100
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:74HC05 U1
U 7 1 5B3FAF95
P 3100 7550
F 0 "U1" H 3250 7650 50  0000 C CNN
F 1 "74HC05" H 3300 7450 50  0000 C CNN
F 2 "FootPrints:DIP-14.3" H 3100 7550 50  0001 C CNN
F 3 "" H 3100 7550 50  0000 C CNN
	7    3100 7550
	-1   0    0    -1  
$EndComp
$Comp
L power1:VCC #PWR07
U 1 1 5B3FB08B
P 3350 5600
F 0 "#PWR07" H 3350 5450 50  0001 C CNN
F 1 "VCC" H 3350 5750 50  0000 C CNN
F 2 "" H 3350 5600 50  0001 C CNN
F 3 "" H 3350 5600 50  0001 C CNN
	1    3350 5600
	1    0    0    -1  
$EndComp
$Comp
L power1:VCC #PWR06
U 1 1 5B3FB0FF
P 3300 6650
F 0 "#PWR06" H 3300 6500 50  0001 C CNN
F 1 "VCC" H 3300 6800 50  0000 C CNN
F 2 "" H 3300 6650 50  0001 C CNN
F 3 "" H 3300 6650 50  0001 C CNN
	1    3300 6650
	1    0    0    -1  
$EndComp
$Comp
L power1:VCC #PWR04
U 1 1 5B3FB3F4
P 3200 4850
F 0 "#PWR04" H 3200 4700 50  0001 C CNN
F 1 "VCC" H 3200 5000 50  0000 C CNN
F 2 "" H 3200 4850 50  0001 C CNN
F 3 "" H 3200 4850 50  0001 C CNN
	1    3200 4850
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR05
U 1 1 5B3FB4A9
P 3200 5250
F 0 "#PWR05" H 3200 5000 50  0001 C CNN
F 1 "GND" H 3200 5100 50  0000 C CNN
F 2 "" H 3200 5250 50  0001 C CNN
F 3 "" H 3200 5250 50  0001 C CNN
	1    3200 5250
	1    0    0    -1  
$EndComp
$Comp
L power1:VCC #PWR08
U 1 1 5B3FB578
P 3350 7550
F 0 "#PWR08" H 3350 7400 50  0001 C CNN
F 1 "VCC" H 3350 7700 50  0000 C CNN
F 2 "" H 3350 7550 50  0001 C CNN
F 3 "" H 3350 7550 50  0001 C CNN
	1    3350 7550
	0    1    1    0   
$EndComp
$Comp
L power1:GND #PWR03
U 1 1 5B3FB657
P 2700 7600
F 0 "#PWR03" H 2700 7350 50  0001 C CNN
F 1 "GND" H 2700 7450 50  0000 C CNN
F 2 "" H 2700 7600 50  0001 C CNN
F 3 "" H 2700 7600 50  0001 C CNN
	1    2700 7600
	1    0    0    -1  
$EndComp
$Sheet
S 5700 700  1050 1050
U 5B4132CC
F0 "SampleHold" 60
F1 "SampleHold.sch" 60
F2 "VIN" I L 5700 850 60 
F3 "SEL0" I L 5700 1150 60 
F4 "SEL1" I L 5700 1250 60 
F5 "SEL2" I L 5700 1350 60 
F6 "STROBE" I L 5700 1500 60 
F7 "OUT0" O R 6750 800 60 
F8 "OUT1" O R 6750 900 60 
F9 "OUT2" O R 6750 1000 60 
F10 "OUT3" O R 6750 1100 60 
F11 "OUT4" O R 6750 1200 60 
F12 "OUT5" O R 6750 1300 60 
F13 "OUT6" O R 6750 1400 60 
F14 "OUT7" O R 6750 1500 60 
$EndSheet
$Sheet
S 1100 800  1100 1600
U 5B41E664
F0 "CPU" 60
F1 "cpu.sch" 60
F2 "MIDI_IN" I L 1100 900 60 
F3 "MIDI_OUT" O R 2200 1000 60 
F4 "SPIDATA" O R 2200 1100 60 
F5 "SPICLK" O R 2200 1200 60 
F6 "DACDONE" I L 1100 1300 60 
F7 "DACCLK" O R 2200 1400 60 
F8 "DACSEL0" O R 2200 1500 60 
F9 "DACSEL1" O R 2200 1600 60 
F10 "DACSEL2" O R 2200 1700 60 
F11 "LD_DAC" O R 2200 900 60 
F12 "CLR_IRQ" O R 2200 1300 60 
F13 "GATE[0..7]" O R 2200 1800 60 
F14 "TRIG[0..7]" O R 2200 1900 60 
F15 "TRIG[8..15]" O R 2200 2000 60 
$EndSheet
$Comp
L SynthMod:RESISTOR R8
U 1 1 5B41ECD2
P 3650 4650
F 0 "R8" H 3650 4350 60  0000 C CNN
F 1 "270" H 3800 4450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 3650 4650 60  0001 C CNN
F 3 "" H 3650 4650 60  0000 C CNN
	1    3650 4650
	0    1    1    0   
$EndComp
$Comp
L power1:VCC #PWR09
U 1 1 5B41EF23
P 3650 4550
F 0 "#PWR09" H 3650 4400 50  0001 C CNN
F 1 "VCC" H 3650 4700 50  0000 C CNN
F 2 "" H 3650 4550 50  0001 C CNN
F 3 "" H 3650 4550 50  0001 C CNN
	1    3650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4850 2150 4850
Wire Wire Line
	2550 4850 2700 4850
Wire Wire Line
	2700 4850 2700 4900
Wire Wire Line
	1950 5050 2200 5050
Wire Wire Line
	2200 5050 2200 5250
Wire Wire Line
	2200 5250 2700 5250
Wire Wire Line
	2700 5250 2700 5200
Connection ~ 2700 4850
Connection ~ 2700 5250
Wire Wire Line
	2750 6050 2400 6050
Wire Wire Line
	2000 6050 1900 6050
Wire Wire Line
	1900 5850 2000 5850
Wire Wire Line
	2700 7100 2400 7100
Wire Wire Line
	2000 7100 1900 7100
Wire Wire Line
	1900 6900 2000 6900
Wire Wire Line
	3150 6050 3350 6050
Wire Wire Line
	3350 6050 3350 6000
Connection ~ 3350 6050
Wire Wire Line
	3100 7100 3300 7100
Wire Wire Line
	3300 7050 3300 7100
Connection ~ 3300 7100
Wire Wire Line
	3400 5050 3650 5050
Wire Wire Line
	3950 5050 3950 6050
Wire Wire Line
	3950 6050 3850 6050
Wire Wire Line
	2700 7600 2700 7550
Wire Wire Line
	2700 7550 2800 7550
Wire Wire Line
	3650 4950 3650 5050
Connection ~ 3650 5050
Wire Wire Line
	3850 5050 3850 4050
Wire Wire Line
	3850 4050 700  4050
Wire Wire Line
	700  4050 700  900 
Connection ~ 3850 5050
Wire Wire Line
	2200 1000 2450 1000
Wire Wire Line
	2450 1000 2450 2550
Wire Wire Line
	800  2550 800  3950
Wire Wire Line
	800  3950 3950 3950
Wire Wire Line
	3950 3950 3950 4950
Wire Wire Line
	3950 4950 4000 4950
Wire Wire Line
	4000 4950 4000 7100
Wire Wire Line
	4000 7100 3800 7100
Wire Wire Line
	3900 1100 2200 1100
Wire Wire Line
	2200 1200 3900 1200
Wire Wire Line
	4750 1300 5150 1300
Wire Wire Line
	5150 1300 5150 850 
Wire Wire Line
	5150 850  5700 850 
Wire Wire Line
	4750 1400 5200 1400
Wire Wire Line
	5200 1400 5200 1500
Wire Wire Line
	5200 1500 5700 1500
Wire Wire Line
	5000 1600 5000 2650
Wire Wire Line
	5000 1600 4750 1600
Wire Wire Line
	2200 1400 2600 1400
Wire Wire Line
	2600 1400 2600 1000
Wire Wire Line
	2600 1000 3900 1000
Wire Wire Line
	2450 2550 800  2550
Wire Wire Line
	700  900  1100 900 
Wire Wire Line
	5000 2650 600  2650
Wire Wire Line
	600  2650 600  1300
Wire Wire Line
	600  1300 1100 1300
Wire Wire Line
	2200 900  3900 900 
Wire Wire Line
	2200 1300 3350 1300
Wire Wire Line
	3350 1300 3350 1750
Wire Wire Line
	3350 1750 3900 1750
Wire Wire Line
	2200 1500 3300 1500
Wire Wire Line
	3300 1500 3300 1950
Wire Wire Line
	3300 1950 5250 1950
Wire Wire Line
	5250 1950 5250 1150
Wire Wire Line
	5250 1150 5700 1150
Wire Wire Line
	2200 1600 3250 1600
Wire Wire Line
	3250 1600 3250 2000
Wire Wire Line
	3250 2000 5300 2000
Wire Wire Line
	5300 2000 5300 1250
Wire Wire Line
	5300 1250 5700 1250
Wire Wire Line
	2200 1700 3200 1700
Wire Wire Line
	3200 1700 3200 2050
Wire Wire Line
	3200 2050 5350 2050
Wire Wire Line
	5350 2050 5350 1350
Wire Wire Line
	5350 1350 5700 1350
Wire Wire Line
	6750 800  8350 800 
Wire Wire Line
	6750 900  8350 900 
Wire Wire Line
	6750 1000 8300 1000
Wire Wire Line
	6750 1100 8250 1100
Wire Wire Line
	6750 1200 8200 1200
Wire Wire Line
	6750 1300 8150 1300
Wire Wire Line
	6750 1400 8100 1400
Wire Wire Line
	6750 1500 8050 1500
Text Label 7000 800  0    60   ~ 0
PITCH1
Text Label 7000 900  0    60   ~ 0
VELO1
Text Label 7000 1000 0    60   ~ 0
PRES1
Text Label 7000 1100 0    60   ~ 0
BEND1
Text Label 7000 1200 0    60   ~ 0
PITCH2
Text Label 7000 1300 0    60   ~ 0
VELO2
Text Label 7000 1400 0    60   ~ 0
PRES2
Text Label 7000 1500 0    60   ~ 0
BEND2
$Comp
L SynthMod:Phone_Jack_wSw-PCB J4
U 1 1 5B6A8B89
P 9800 1100
F 0 "J4" H 9800 1100 60  0000 C CNN
F 1 "PITCH" H 9800 1200 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 9800 1100 60  0001 C CNN
F 3 "" H 9800 1100 60  0000 C CNN
	1    9800 1100
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J5
U 1 1 5B6A8D6D
P 9800 1700
F 0 "J5" H 9800 1700 60  0000 C CNN
F 1 "VELOCITY" H 9800 1800 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 9800 1700 60  0001 C CNN
F 3 "" H 9800 1700 60  0000 C CNN
	1    9800 1700
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J3
U 1 1 5B6A8EB3
P 9750 2300
F 0 "J3" H 9750 2300 60  0000 C CNN
F 1 "PRESSURE" H 9750 2400 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 9750 2300 60  0001 C CNN
F 3 "" H 9750 2300 60  0000 C CNN
	1    9750 2300
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J1
U 1 1 5B6A9008
P 9700 2900
F 0 "J1" H 9700 2900 60  0000 C CNN
F 1 "WHEEL" H 9700 3000 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 9700 2900 60  0001 C CNN
F 3 "" H 9700 2900 60  0000 C CNN
	1    9700 2900
	-1   0    0    -1  
$EndComp
$Comp
L SynthMod:Phone_Jack_wSw-PCB J2
U 1 1 5B6A9140
P 9700 3500
F 0 "J2" H 9700 3500 60  0000 C CNN
F 1 "GATE" H 9700 3650 60  0000 C CNN
F 2 "FootPrints:PHONE-SC112A" H 9700 3500 60  0001 C CNN
F 3 "" H 9700 3500 60  0000 C CNN
	1    9700 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8350 800  8350 700 
Wire Wire Line
	8350 700  9400 700 
Wire Wire Line
	8350 900  8350 1300
Wire Wire Line
	8350 1300 9400 1300
Wire Wire Line
	8300 1000 8300 1900
Wire Wire Line
	8300 1900 9350 1900
Wire Wire Line
	8250 1100 8250 2500
Wire Wire Line
	8250 2500 9300 2500
Wire Wire Line
	8500 3100 9300 3100
Text Label 8750 3100 0    60   ~ 0
GATE0
$Comp
L device1:LED_ALT D2
U 1 1 5B6AA0DF
P 9700 3650
F 0 "D2" H 9700 3750 50  0000 C CNN
F 1 "LED_ALT" H 9700 3550 50  0000 C CNN
F 2 "FootPrints:LED_5.0mm" H 9700 3650 50  0001 C CNN
F 3 "" H 9700 3650 50  0001 C CNN
	1    9700 3650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:NPN Q2
U 1 1 5B6AA280
P 8800 3900
F 0 "Q2" H 9100 3950 50  0000 R CNN
F 1 "2N3904" H 9300 3750 50  0000 R CNN
F 2 "FootPrints:TO92" H 9000 4000 50  0001 C CNN
F 3 "" H 8800 3900 50  0000 C CNN
	1    8800 3900
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R12
U 1 1 5B6AA3C9
P 9100 3650
F 0 "R12" H 9100 3350 60  0000 C CNN
F 1 "10K" H 9250 3450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 9100 3650 60  0001 C CNN
F 3 "" H 9100 3650 60  0000 C CNN
	1    9100 3650
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R11
U 1 1 5B6AA54E
P 8500 3500
F 0 "R11" H 8500 3200 60  0000 C CNN
F 1 "100K" H 8650 3300 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8500 3500 60  0001 C CNN
F 3 "" H 8500 3500 60  0000 C CNN
	1    8500 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 3100 8500 3400
Wire Wire Line
	8500 3800 8500 3900
Wire Wire Line
	8500 3900 8600 3900
Wire Wire Line
	8900 3700 8900 3650
Wire Wire Line
	8900 3650 9000 3650
Wire Wire Line
	9400 3650 9550 3650
$Comp
L power1:GND #PWR011
U 1 1 5B6AACC6
P 8900 4100
F 0 "#PWR011" H 8900 3850 50  0001 C CNN
F 1 "GND" H 8900 3950 50  0000 C CNN
F 2 "" H 8900 4100 50  0001 C CNN
F 3 "" H 8900 4100 50  0001 C CNN
	1    8900 4100
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR015
U 1 1 5B6AAE69
P 9850 3650
F 0 "#PWR015" H 9850 3500 50  0001 C CNN
F 1 "+15V0" V 9850 3900 50  0000 C CNN
F 2 "" H 9850 3650 50  0000 C CNN
F 3 "" H 9850 3650 50  0000 C CNN
	1    9850 3650
	0    1    1    0   
$EndComp
$Comp
L power1:GND #PWR012
U 1 1 5B6AAF9E
P 9250 3350
F 0 "#PWR012" H 9250 3100 50  0001 C CNN
F 1 "GND" H 9250 3200 50  0000 C CNN
F 2 "" H 9250 3350 50  0001 C CNN
F 3 "" H 9250 3350 50  0001 C CNN
	1    9250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 900  9250 1500
Wire Wire Line
	9250 3300 9300 3300
Wire Wire Line
	9250 2700 9300 2700
Connection ~ 9250 3300
Wire Wire Line
	9250 2100 9350 2100
Connection ~ 9250 2700
Wire Wire Line
	9250 1500 9400 1500
Connection ~ 9250 2100
Wire Wire Line
	9250 900  9400 900 
Connection ~ 9250 1500
$Comp
L SynthMod:500-1126-QuintJack P4
U 1 1 5B6AC653
P 8950 5000
F 0 "P4" H 8950 4350 60  0000 C CNN
F 1 "500-1126-QuintJack" H 8950 4450 60  0000 C CNN
F 2 "FootPrints:IDC10x2-Vert" H 8800 5150 60  0001 C CNN
F 3 "" H 8800 5150 60  0000 C CNN
	1    8950 5000
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:500-1126-LED P5
U 1 1 5B6AC895
P 9100 6050
F 0 "P5" H 9100 5700 60  0000 C CNN
F 1 "500-1126-LED" H 9100 5600 60  0000 C CNN
F 2 "FootPrints:IDC5x2_Vert" H 9100 6050 60  0001 C CNN
F 3 "" H 9100 6050 60  0000 C CNN
	1    9100 6050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 1200 8200 4550
Wire Wire Line
	8200 4550 8600 4550
Wire Wire Line
	8150 1300 8150 4750
Wire Wire Line
	8150 4750 8600 4750
Wire Wire Line
	8100 1400 8100 4950
Wire Wire Line
	8100 4950 8600 4950
Wire Wire Line
	8050 1500 8050 5150
Wire Wire Line
	8050 5150 8600 5150
Wire Wire Line
	8600 5350 7400 5350
Text Label 7400 5350 0    60   ~ 0
GATE1
$Comp
L SynthMod:RESISTOR R10
U 1 1 5B6AD06D
P 8100 6250
F 0 "R10" H 8100 5950 60  0000 C CNN
F 1 "10K" H 8250 6050 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 8100 6250 60  0001 C CNN
F 3 "" H 8100 6250 60  0000 C CNN
	1    8100 6250
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:NPN Q1
U 1 1 5B6AD439
P 7700 6400
F 0 "Q1" H 8000 6450 50  0000 R CNN
F 1 "2N3904" H 8050 6350 50  0000 R CNN
F 2 "FootPrints:TO92" H 7900 6500 50  0001 C CNN
F 3 "" H 7700 6400 50  0000 C CNN
	1    7700 6400
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R9
U 1 1 5B6AD745
P 7400 5950
F 0 "R9" H 7400 5650 60  0000 C CNN
F 1 "100K" H 7550 5750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 7400 5950 60  0001 C CNN
F 3 "" H 7400 5950 60  0000 C CNN
	1    7400 5950
	0    1    1    0   
$EndComp
$Comp
L power1:GND #PWR010
U 1 1 5B6AD919
P 7800 6600
F 0 "#PWR010" H 7800 6350 50  0001 C CNN
F 1 "GND" H 7800 6450 50  0000 C CNN
F 2 "" H 7800 6600 50  0001 C CNN
F 3 "" H 7800 6600 50  0001 C CNN
	1    7800 6600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR013
U 1 1 5B6ADA56
P 9300 6250
F 0 "#PWR013" H 9300 6100 50  0001 C CNN
F 1 "+15V0" V 9300 6500 50  0000 C CNN
F 2 "" H 9300 6250 50  0000 C CNN
F 3 "" H 9300 6250 50  0000 C CNN
	1    9300 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 6250 8400 6250
Wire Wire Line
	7800 6200 7800 6150
Wire Wire Line
	7800 6150 7950 6150
Wire Wire Line
	7950 6150 7950 6250
Wire Wire Line
	7950 6250 8000 6250
Wire Wire Line
	7400 6250 7400 6400
Wire Wire Line
	7400 6400 7500 6400
Wire Wire Line
	7400 5350 7400 5850
$Comp
L power1:GND #PWR014
U 1 1 5B6AE510
P 9500 5550
F 0 "#PWR014" H 9500 5300 50  0001 C CNN
F 1 "GND" H 9500 5400 50  0000 C CNN
F 2 "" H 9500 5550 50  0001 C CNN
F 3 "" H 9500 5550 50  0001 C CNN
	1    9500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4550 9500 4750
Wire Wire Line
	9500 5350 9300 5350
Wire Wire Line
	9500 4550 9300 4550
Connection ~ 9500 5350
Wire Wire Line
	9300 4750 9500 4750
Connection ~ 9500 4750
Wire Wire Line
	9300 4950 9500 4950
Connection ~ 9500 4950
Wire Wire Line
	9300 5150 9500 5150
Connection ~ 9500 5150
Wire Wire Line
	2700 4850 3000 4850
Wire Wire Line
	2700 5250 3000 5250
Wire Wire Line
	3350 6050 3450 6050
Wire Wire Line
	3300 7100 3400 7100
Wire Wire Line
	3650 5050 3850 5050
Wire Wire Line
	3850 5050 3950 5050
Wire Wire Line
	9250 3300 9250 3350
Wire Wire Line
	9250 2700 9250 3300
Wire Wire Line
	9250 2100 9250 2700
Wire Wire Line
	9250 1500 9250 2100
Wire Wire Line
	9500 5350 9500 5550
Wire Wire Line
	9500 4750 9500 4950
Wire Wire Line
	9500 4950 9500 5150
Wire Wire Line
	9500 5150 9500 5350
$Comp
L SynthMod:DIN5 P2
U 2 1 5B6E801E
P 4300 7450
F 0 "P2" H 4050 7750 60  0000 C CNN
F 1 "OUT" H 4950 7550 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 4300 7450 60  0001 C CNN
F 3 "" H 4300 7450 60  0000 C CNN
	2    4300 7450
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DIN5 P1
U 2 1 5B6E814A
P 4300 6850
F 0 "P1" H 4050 7150 60  0000 C CNN
F 1 "THRU" H 4950 6950 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 4300 6850 60  0001 C CNN
F 3 "" H 4300 6850 60  0000 C CNN
	2    4300 6850
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:DIN5 P3
U 2 1 5B6E81B2
P 4350 6300
F 0 "P3" H 4100 6600 60  0000 C CNN
F 1 "MIDI IN" H 4950 6450 60  0000 C CNN
F 2 "FootPrints:DIN-5-PIN" H 4350 6300 60  0001 C CNN
F 3 "" H 4350 6300 60  0000 C CNN
	2    4350 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7500 4750 7350
Wire Wire Line
	4750 5800 4650 5800
$Comp
L power1:GND #PWR080
U 1 1 5B6ECC67
P 4750 7500
F 0 "#PWR080" H 4750 7250 50  0001 C CNN
F 1 "GND" H 4750 7350 50  0000 C CNN
F 2 "" H 4750 7500 50  0001 C CNN
F 3 "" H 4750 7500 50  0001 C CNN
	1    4750 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5900 4750 5900
Connection ~ 4750 5900
Wire Wire Line
	4750 5900 4750 5800
Wire Wire Line
	4650 6000 4750 6000
Connection ~ 4750 6000
Wire Wire Line
	4750 6000 4750 5900
Wire Wire Line
	4650 6100 4750 6100
Connection ~ 4750 6100
Wire Wire Line
	4750 6100 4750 6000
Wire Wire Line
	4650 6200 4750 6200
Connection ~ 4750 6200
Wire Wire Line
	4750 6200 4750 6100
Wire Wire Line
	4600 6350 4750 6350
Connection ~ 4750 6350
Wire Wire Line
	4750 6350 4750 6200
Wire Wire Line
	4600 6450 4750 6450
Connection ~ 4750 6450
Wire Wire Line
	4750 6450 4750 6350
Wire Wire Line
	4600 6550 4750 6550
Connection ~ 4750 6550
Wire Wire Line
	4750 6550 4750 6450
Wire Wire Line
	4600 6650 4750 6650
Connection ~ 4750 6650
Wire Wire Line
	4750 6650 4750 6550
Wire Wire Line
	4600 6750 4750 6750
Connection ~ 4750 6750
Wire Wire Line
	4750 6750 4750 6650
Wire Wire Line
	4600 6950 4750 6950
Connection ~ 4750 6950
Wire Wire Line
	4750 6950 4750 6750
Wire Wire Line
	4600 7050 4750 7050
Connection ~ 4750 7050
Wire Wire Line
	4750 7050 4750 6950
Wire Wire Line
	4600 7150 4750 7150
Connection ~ 4750 7150
Wire Wire Line
	4750 7150 4750 7050
Wire Wire Line
	4600 7250 4750 7250
Connection ~ 4750 7250
Wire Wire Line
	4750 7250 4750 7150
Wire Wire Line
	4600 7350 4750 7350
Connection ~ 4750 7350
Wire Wire Line
	4750 7350 4750 7250
Wire Wire Line
	1900 5950 1950 5950
Wire Wire Line
	1950 5950 1950 7000
Wire Wire Line
	1900 7000 1950 7000
Connection ~ 1950 7000
Wire Wire Line
	1950 7000 1950 7400
$Comp
L power1:GND #PWR0101
U 1 1 5B74D89B
P 1950 7400
F 0 "#PWR0101" H 1950 7150 50  0001 C CNN
F 1 "GND" H 1950 7250 50  0000 C CNN
F 2 "" H 1950 7400 50  0001 C CNN
F 3 "" H 1950 7400 50  0001 C CNN
	1    1950 7400
	1    0    0    -1  
$EndComp
$Sheet
S 5650 2150 1250 1050
U 5B6E56AB
F0 "TRIGGERS" 50
F1 "TRIGGERS.sch" 50
F2 "TRIG[0..7]" I L 5650 2300 50 
F3 "TRIG[8..15]" I L 5650 2500 50 
$EndSheet
Wire Bus Line
	2200 1900 3050 1900
Wire Bus Line
	3050 1900 3050 2300
Wire Bus Line
	3050 2300 5650 2300
Wire Bus Line
	5650 2500 3000 2500
Wire Bus Line
	3000 2500 3000 2000
Wire Bus Line
	3000 2000 2200 2000
Text Label 3500 2300 0    50   ~ 0
TRIG[0..7]
Text Label 3500 2500 0    50   ~ 0
TRIG[8..15]
Wire Bus Line
	2200 1800 3100 1800
Text Label 2550 1800 0    50   ~ 0
GATE[0..7]
$Comp
L SynthMod:500-1033-Triple-Jack P7
U 1 1 5B80B020
P 6800 4350
F 0 "P7" H 6950 4897 60  0000 C CNN
F 1 "500-1033" H 6950 4791 60  0000 C CNN
F 2 "FootPrints:IDC8x2_Vert" H 6800 4350 60  0001 C CNN
F 3 "" H 6800 4350 60  0000 C CNN
	1    6800 4350
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:NPN Q4
U 1 1 5B80B62E
P 5150 3850
F 0 "Q4" H 5450 3900 50  0000 R CNN
F 1 "2N3904" H 5650 3700 50  0000 R CNN
F 2 "FootPrints:TO92" H 5350 3950 50  0001 C CNN
F 3 "" H 5150 3850 50  0000 C CNN
	1    5150 3850
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R34
U 1 1 5B80B634
P 5450 3600
F 0 "R34" H 5500 3800 60  0000 C CNN
F 1 "10K" H 5550 3700 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5450 3600 60  0001 C CNN
F 3 "" H 5450 3600 60  0000 C CNN
	1    5450 3600
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R31
U 1 1 5B80B63A
P 4850 3850
F 0 "R31" H 4900 3650 60  0000 C CNN
F 1 "100K" H 4950 3750 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4850 3850 60  0001 C CNN
F 3 "" H 4850 3850 60  0000 C CNN
	1    4850 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 3650 5250 3600
Wire Wire Line
	5250 3600 5350 3600
$Comp
L power1:GND #PWR082
U 1 1 5B80B644
P 5250 4050
F 0 "#PWR082" H 5250 3800 50  0001 C CNN
F 1 "GND" H 5250 3900 50  0000 C CNN
F 2 "" H 5250 4050 50  0001 C CNN
F 3 "" H 5250 4050 50  0001 C CNN
	1    5250 4050
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:NPN Q3
U 1 1 5B813815
P 5100 4550
F 0 "Q3" H 5400 4600 50  0000 R CNN
F 1 "2N3904" H 5600 4400 50  0000 R CNN
F 2 "FootPrints:TO92" H 5300 4650 50  0001 C CNN
F 3 "" H 5100 4550 50  0000 C CNN
	1    5100 4550
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R33
U 1 1 5B81381B
P 5400 4300
F 0 "R33" H 5450 4500 60  0000 C CNN
F 1 "10K" H 5500 4400 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5400 4300 60  0001 C CNN
F 3 "" H 5400 4300 60  0000 C CNN
	1    5400 4300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R30
U 1 1 5B813821
P 4800 4550
F 0 "R30" H 4850 4350 60  0000 C CNN
F 1 "100K" H 4900 4450 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 4800 4550 60  0001 C CNN
F 3 "" H 4800 4550 60  0000 C CNN
	1    4800 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 4350 5200 4300
Wire Wire Line
	5200 4300 5300 4300
$Comp
L power1:GND #PWR081
U 1 1 5B813829
P 5200 4750
F 0 "#PWR081" H 5200 4500 50  0001 C CNN
F 1 "GND" H 5200 4600 50  0000 C CNN
F 2 "" H 5200 4750 50  0001 C CNN
F 3 "" H 5200 4750 50  0001 C CNN
	1    5200 4750
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:NPN Q5
U 1 1 5B81B676
P 5300 5300
F 0 "Q5" H 5600 5350 50  0000 R CNN
F 1 "2N3904" H 5800 5150 50  0000 R CNN
F 2 "FootPrints:TO92" H 5500 5400 50  0001 C CNN
F 3 "" H 5300 5300 50  0000 C CNN
	1    5300 5300
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R35
U 1 1 5B81B67C
P 5600 5050
F 0 "R35" H 5650 5250 60  0000 C CNN
F 1 "10K" H 5700 5150 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5600 5050 60  0001 C CNN
F 3 "" H 5600 5050 60  0000 C CNN
	1    5600 5050
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:RESISTOR R32
U 1 1 5B81B682
P 5000 5300
F 0 "R32" H 5050 5100 60  0000 C CNN
F 1 "100K" H 5100 5200 60  0000 C CNN
F 2 "FootPrints:AXIAL0.4" H 5000 5300 60  0001 C CNN
F 3 "" H 5000 5300 60  0000 C CNN
	1    5000 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 5100 5400 5050
Wire Wire Line
	5400 5050 5500 5050
$Comp
L power1:GND #PWR083
U 1 1 5B81B68A
P 5400 5500
F 0 "#PWR083" H 5400 5250 50  0001 C CNN
F 1 "GND" H 5400 5350 50  0000 C CNN
F 2 "" H 5400 5500 50  0001 C CNN
F 3 "" H 5400 5500 50  0001 C CNN
	1    5400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4050 6600 4050
Text Label 6400 4050 0    50   ~ 0
GATE2
Wire Wire Line
	7550 4050 7300 4050
Text Label 7350 4050 0    50   ~ 0
GATE3
Wire Wire Line
	6350 4350 6600 4350
Text Label 6350 4350 0    50   ~ 0
GATE4
Wire Wire Line
	5750 3600 7750 3600
Wire Wire Line
	7750 3600 7750 4550
Wire Wire Line
	7750 4550 7300 4550
Wire Wire Line
	5700 4300 5800 4300
Wire Wire Line
	5800 4300 5800 3650
Wire Wire Line
	5800 3650 7800 3650
Wire Wire Line
	7800 3650 7800 4650
Wire Wire Line
	7800 4650 7300 4650
Wire Wire Line
	5900 5050 7650 5050
Wire Wire Line
	7650 5050 7650 4750
Wire Wire Line
	7650 4750 7300 4750
$Comp
L SynthMod:+15V0 #PWR085
U 1 1 5B857969
P 6600 4550
F 0 "#PWR085" H 6600 4400 50  0001 C CNN
F 1 "+15V0" V 6600 4800 50  0000 C CNN
F 2 "" H 6600 4550 50  0000 C CNN
F 3 "" H 6600 4550 50  0000 C CNN
	1    6600 4550
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR086
U 1 1 5B857ADC
P 6600 4650
F 0 "#PWR086" H 6600 4500 50  0001 C CNN
F 1 "+15V0" V 6600 4900 50  0000 C CNN
F 2 "" H 6600 4650 50  0000 C CNN
F 3 "" H 6600 4650 50  0000 C CNN
	1    6600 4650
	0    -1   -1   0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR087
U 1 1 5B857B41
P 6600 4750
F 0 "#PWR087" H 6600 4600 50  0001 C CNN
F 1 "+15V0" V 6600 5000 50  0000 C CNN
F 2 "" H 6600 4750 50  0000 C CNN
F 3 "" H 6600 4750 50  0000 C CNN
	1    6600 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 3850 4550 3850
Entry Wire Line
	4150 3750 4250 3850
Wire Wire Line
	4200 4550 4500 4550
Entry Wire Line
	4100 4450 4200 4550
Wire Wire Line
	4400 5300 4700 5300
Entry Wire Line
	4300 5200 4400 5300
Text Label 4350 3850 0    50   ~ 0
GATE2
Text Label 4300 4550 0    50   ~ 0
GATE3
Text Label 4450 5300 0    50   ~ 0
GATE4
Wire Bus Line
	3100 1800 3100 2150
Wire Bus Line
	3100 2150 4150 2150
Wire Bus Line
	4150 4300 4100 4300
Wire Bus Line
	4100 4950 4300 4950
Wire Bus Line
	4300 4950 4300 5200
Entry Wire Line
	6250 3950 6350 4050
Entry Wire Line
	6250 4250 6350 4350
Entry Wire Line
	7550 4050 7650 3950
Wire Bus Line
	7650 3950 7650 3700
Wire Bus Line
	7650 3700 6250 3700
Wire Bus Line
	4150 3350 6250 3350
Wire Bus Line
	6250 3350 6250 3700
Wire Bus Line
	4150 2150 4150 3350
Connection ~ 4150 3350
Connection ~ 6250 3700
$Comp
L power1:GND #PWR088
U 1 1 5B89CA55
P 7450 4850
F 0 "#PWR088" H 7450 4600 50  0001 C CNN
F 1 "GND" H 7450 4700 50  0000 C CNN
F 2 "" H 7450 4850 50  0001 C CNN
F 3 "" H 7450 4850 50  0001 C CNN
	1    7450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4850 7450 4350
Wire Wire Line
	7450 4350 7300 4350
Wire Wire Line
	7300 4250 7450 4250
Wire Wire Line
	7450 4250 7450 4350
Connection ~ 7450 4350
Wire Wire Line
	6600 4250 6350 4250
Wire Wire Line
	6350 4250 6350 4200
Wire Wire Line
	6350 4200 6150 4200
Wire Wire Line
	6150 4200 6150 4750
$Comp
L power1:GND #PWR084
U 1 1 5B8BBBE1
P 6150 4750
F 0 "#PWR084" H 6150 4500 50  0001 C CNN
F 1 "GND" H 6150 4600 50  0000 C CNN
F 2 "" H 6150 4750 50  0001 C CNN
F 3 "" H 6150 4750 50  0001 C CNN
	1    6150 4750
	1    0    0    -1  
$EndComp
Text Label 6650 3600 0    50   ~ 0
MIDI_CLOCK
Text Label 7500 4650 0    50   ~ 0
STARTSTOP
Text Label 6800 5050 0    50   ~ 0
MIDI_RESET
Entry Wire Line
	8400 3000 8500 3100
Wire Bus Line
	6250 3350 7500 3350
Wire Bus Line
	7500 3350 7500 3000
Wire Bus Line
	7500 3000 8400 3000
Connection ~ 6250 3350
Entry Wire Line
	7300 5250 7400 5350
Wire Bus Line
	7650 3700 7950 3700
Wire Bus Line
	7950 3700 7950 5100
Wire Bus Line
	7950 5100 7300 5100
Wire Bus Line
	7300 5100 7300 5250
Connection ~ 7650 3700
$Comp
L SynthMod:EurorackPower16pin P16
U 1 1 5B750D61
P 5650 6200
F 0 "P16" H 5750 6787 60  0000 C CNN
F 1 "EurorackPower16pin" H 5750 6681 60  0000 C CNN
F 2 "FootPrints:IDC8x2_Vert" H 5750 6681 60  0001 C CNN
F 3 "" H 5650 6200 60  0000 C CNN
	1    5650 6200
	1    0    0    -1  
$EndComp
$Comp
L SynthMod:+15V0 #PWR0134
U 1 1 5B750EFC
P 6300 6300
F 0 "#PWR0134" H 6300 6150 50  0001 C CNN
F 1 "+15V0" V 6317 6428 50  0000 L CNN
F 2 "" H 6300 6300 50  0000 C CNN
F 3 "" H 6300 6300 50  0000 C CNN
	1    6300 6300
	0    1    1    0   
$EndComp
$Comp
L SynthMod:+15V0 #PWR0130
U 1 1 5B750F98
P 5200 6300
F 0 "#PWR0130" H 5200 6150 50  0001 C CNN
F 1 "+15V0" V 5218 6428 50  0000 L CNN
F 2 "" H 5200 6300 50  0000 C CNN
F 3 "" H 5200 6300 50  0000 C CNN
	1    5200 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 6300 5550 6300
Wire Wire Line
	6300 6300 5950 6300
$Comp
L SynthMod:-15V0 #PWR0133
U 1 1 5B766F42
P 6300 5900
F 0 "#PWR0133" H 6300 5750 50  0001 C CNN
F 1 "-15V0" V 6317 6028 50  0000 L CNN
F 2 "" H 6300 5900 50  0000 C CNN
F 3 "" H 6300 5900 50  0000 C CNN
	1    6300 5900
	0    1    1    0   
$EndComp
$Comp
L SynthMod:-15V0 #PWR0129
U 1 1 5B766FDE
P 5200 5900
F 0 "#PWR0129" H 5200 5750 50  0001 C CNN
F 1 "-15V0" V 5218 6028 50  0000 L CNN
F 2 "" H 5200 5900 50  0000 C CNN
F 3 "" H 5200 5900 50  0000 C CNN
	1    5200 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 5900 5550 5900
Wire Wire Line
	5950 5900 6300 5900
$Comp
L power1:GND #PWR0131
U 1 1 5B77D792
P 5400 6750
F 0 "#PWR0131" H 5400 6500 50  0001 C CNN
F 1 "GND" H 5400 6600 50  0000 C CNN
F 2 "" H 5400 6750 50  0001 C CNN
F 3 "" H 5400 6750 50  0001 C CNN
	1    5400 6750
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR0132
U 1 1 5B77D7F9
P 6100 6750
F 0 "#PWR0132" H 6100 6500 50  0001 C CNN
F 1 "GND" H 6100 6600 50  0000 C CNN
F 2 "" H 6100 6750 50  0001 C CNN
F 3 "" H 6100 6750 50  0001 C CNN
	1    6100 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6750 6100 6200
Wire Wire Line
	6100 6000 5950 6000
Wire Wire Line
	5950 6100 6100 6100
Connection ~ 6100 6100
Wire Wire Line
	6100 6100 6100 6000
Wire Wire Line
	5950 6200 6100 6200
Connection ~ 6100 6200
Wire Wire Line
	6100 6200 6100 6100
Wire Wire Line
	5400 6750 5400 6200
Wire Wire Line
	5400 6000 5550 6000
Wire Wire Line
	5550 6100 5400 6100
Connection ~ 5400 6100
Wire Wire Line
	5400 6100 5400 6000
Wire Wire Line
	5550 6200 5400 6200
Connection ~ 5400 6200
Wire Wire Line
	5400 6200 5400 6100
Wire Bus Line
	4100 4300 4100 4950
Wire Bus Line
	6250 3700 6250 4250
Wire Bus Line
	4150 3350 4150 4300
$EndSCHEMATC