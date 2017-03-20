EESchema Schematic File Version 2
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
LIBS:wz80-ram-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "WZ80 RAM Board"
Date "2017-03-20"
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L HM62256BLP-7 U1
U 1 1 58CFF43B
P 5800 3650
F 0 "U1" H 5500 4550 50  0000 C CNN
F 1 "HM62256BLP-7" H 6200 2850 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 5800 3650 50  0001 C CIN
F 3 "" H 5800 3650 50  0001 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X32 J1
U 1 1 58CFF4E6
P 8800 2800
F 0 "J1" H 8800 4450 50  0000 C CNN
F 1 "CONN_01X32" V 8900 2800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x32_Pitch2.54mm" H 8800 2800 50  0001 C CNN
F 3 "" H 8800 2800 50  0001 C CNN
	1    8800 2800
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U3
U 1 1 58CFF60A
P 7250 4800
F 0 "U3" H 7400 4900 50  0000 C CNN
F 1 "74HC04" H 7450 4700 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7250 4800 50  0001 C CNN
F 3 "" H 7250 4800 50  0001 C CNN
	1    7250 4800
	-1   0    0    -1  
$EndComp
$Comp
L 74LS32 U2
U 1 1 58CFF6DD
P 6100 5150
F 0 "U2" H 6100 5200 50  0000 C CNN
F 1 "74LS32" H 6100 5100 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6100 5150 50  0001 C CNN
F 3 "" H 6100 5150 50  0001 C CNN
	1    6100 5150
	-1   0    0    -1  
$EndComp
$Comp
L 74LS32 U2
U 2 1 58CFF7DC
P 6100 5600
F 0 "U2" H 6100 5650 50  0000 C CNN
F 1 "74LS32" H 6100 5550 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6100 5600 50  0001 C CNN
F 3 "" H 6100 5600 50  0001 C CNN
	2    6100 5600
	-1   0    0    -1  
$EndComp
Entry Wire Line
	5150 2900 5050 3000
Entry Wire Line
	5150 3000 5050 3100
Entry Wire Line
	5150 3100 5050 3200
Entry Wire Line
	5150 3200 5050 3300
Entry Wire Line
	5150 3300 5050 3400
Entry Wire Line
	5150 3400 5050 3500
Entry Wire Line
	5150 3500 5050 3600
Entry Wire Line
	5150 3600 5050 3700
Entry Wire Line
	5150 3700 5050 3800
Entry Wire Line
	5150 3800 5050 3900
Entry Wire Line
	5150 3900 5050 4000
Entry Wire Line
	5150 4000 5050 4100
Entry Wire Line
	5150 4100 5050 4200
Entry Wire Line
	5150 4200 5050 4300
Entry Wire Line
	5150 4300 5050 4400
Entry Wire Line
	8450 1350 8350 1450
Entry Wire Line
	8450 1450 8350 1550
Entry Wire Line
	8450 1550 8350 1650
Entry Wire Line
	8450 1650 8350 1750
Entry Wire Line
	8450 1750 8350 1850
Entry Wire Line
	8450 1850 8350 1950
Entry Wire Line
	8450 1950 8350 2050
Entry Wire Line
	8450 2050 8350 2150
Entry Wire Line
	8450 2150 8350 2250
Entry Wire Line
	8450 2250 8350 2350
Entry Wire Line
	8450 2350 8350 2450
Entry Wire Line
	8450 2450 8350 2550
Entry Wire Line
	8450 2550 8350 2650
Entry Wire Line
	8450 2650 8350 2750
Entry Wire Line
	8450 2750 8350 2850
Text Label 5150 2900 0    60   ~ 0
A0
Text Label 5150 3000 0    60   ~ 0
A1
Text Label 5150 3100 0    60   ~ 0
A2
Text Label 5150 3200 0    60   ~ 0
A3
Text Label 5150 3300 0    60   ~ 0
A4
Text Label 5150 3400 0    60   ~ 0
A5
Text Label 5150 3500 0    60   ~ 0
A6
Text Label 5150 3600 0    60   ~ 0
A7
Text Label 5150 3700 0    60   ~ 0
A8
Text Label 5150 3800 0    60   ~ 0
A9
Text Label 5150 3900 0    60   ~ 0
A10
Text Label 5150 4000 0    60   ~ 0
A11
Text Label 5150 4100 0    60   ~ 0
A12
Text Label 5150 4200 0    60   ~ 0
A13
Text Label 5150 4300 0    60   ~ 0
A14
Text Label 8450 1250 0    60   ~ 0
A15
Text Label 8450 1350 0    60   ~ 0
A14
Text Label 8450 1450 0    60   ~ 0
A13
Text Label 8450 1550 0    60   ~ 0
A12
Text Label 8450 1650 0    60   ~ 0
A11
Text Label 8450 1750 0    60   ~ 0
A10
Text Label 8450 1850 0    60   ~ 0
A9
Text Label 8450 1950 0    60   ~ 0
A8
Text Label 8450 2050 0    60   ~ 0
A7
Text Label 8450 2150 0    60   ~ 0
A6
Text Label 8450 2250 0    60   ~ 0
A5
Text Label 8450 2350 0    60   ~ 0
A4
Text Label 8450 2450 0    60   ~ 0
A3
Text Label 8450 2550 0    60   ~ 0
A2
Text Label 8450 2650 0    60   ~ 0
A1
Text Label 8450 2750 0    60   ~ 0
A0
Entry Wire Line
	6400 2900 6500 3000
Entry Wire Line
	6400 3000 6500 3100
Entry Wire Line
	6400 3100 6500 3200
Entry Wire Line
	6400 3200 6500 3300
Entry Wire Line
	6400 3300 6500 3400
Entry Wire Line
	6400 3400 6500 3500
Entry Wire Line
	6400 3500 6500 3600
Entry Wire Line
	6400 3600 6500 3700
Entry Wire Line
	8450 2850 8350 2950
Entry Wire Line
	8450 2950 8350 3050
Entry Wire Line
	8450 3050 8350 3150
Entry Wire Line
	8350 3250 8450 3150
Entry Wire Line
	8350 3350 8450 3250
Entry Wire Line
	8350 3450 8450 3350
Entry Wire Line
	8350 3550 8450 3450
Entry Wire Line
	8350 3650 8450 3550
Text Label 8450 2850 0    60   ~ 0
D7
Text Label 8450 2950 0    60   ~ 0
D6
Text Label 8450 3050 0    60   ~ 0
D5
Text Label 8450 3150 0    60   ~ 0
D4
Text Label 8450 3250 0    60   ~ 0
D3
Text Label 8450 3350 0    60   ~ 0
D2
Text Label 8450 3450 0    60   ~ 0
D1
Text Label 8450 3550 0    60   ~ 0
D0
Text Label 6300 2900 0    60   ~ 0
D0
Text Label 6300 3000 0    60   ~ 0
D1
Text Label 6300 3100 0    60   ~ 0
D2
Text Label 6300 3200 0    60   ~ 0
D3
Text Label 6300 3300 0    60   ~ 0
D4
Text Label 6300 3400 0    60   ~ 0
D5
Text Label 6300 3500 0    60   ~ 0
D6
Text Label 6300 3600 0    60   ~ 0
D7
Wire Wire Line
	8600 4150 8150 4150
Wire Wire Line
	8150 4150 8150 5700
Wire Wire Line
	8150 5700 6700 5700
Wire Wire Line
	6700 5250 8050 5250
Wire Wire Line
	7000 5250 7000 5500
Wire Wire Line
	7000 5500 6700 5500
Connection ~ 7000 5250
Wire Wire Line
	6300 3850 6600 3850
Wire Wire Line
	6600 3850 6600 4850
Wire Wire Line
	6600 4850 5300 4850
Wire Wire Line
	5300 4850 5300 5150
Wire Wire Line
	5300 5150 5500 5150
Wire Wire Line
	5500 5600 5200 5600
Wire Wire Line
	5200 5600 5200 4750
Wire Wire Line
	5200 4750 6700 4750
Wire Wire Line
	6700 4750 6700 3750
Wire Wire Line
	6700 3750 6300 3750
Wire Wire Line
	8600 4050 7900 4050
Wire Wire Line
	7900 4050 7900 5050
Wire Wire Line
	7900 5050 6700 5050
Wire Wire Line
	8050 5250 8050 4250
Wire Wire Line
	8050 4250 8600 4250
Wire Wire Line
	7800 1350 7800 4800
Wire Wire Line
	7800 4800 7700 4800
Wire Wire Line
	6800 4800 6750 4800
Wire Wire Line
	6750 4800 6750 4000
Wire Wire Line
	6750 4000 6300 4000
Wire Wire Line
	8450 1250 8600 1250
Wire Wire Line
	8450 1350 8600 1350
Wire Wire Line
	8450 1450 8600 1450
Wire Wire Line
	8450 1550 8600 1550
Wire Wire Line
	8450 1650 8600 1650
Wire Wire Line
	8450 1750 8600 1750
Wire Wire Line
	8450 1850 8600 1850
Wire Wire Line
	8450 1950 8600 1950
Wire Wire Line
	8450 2050 8600 2050
Wire Wire Line
	8450 2150 8600 2150
Wire Wire Line
	8450 2250 8600 2250
Wire Wire Line
	8450 2350 8600 2350
Wire Wire Line
	8450 2450 8600 2450
Wire Wire Line
	8450 2550 8600 2550
Wire Wire Line
	8450 2650 8600 2650
Wire Wire Line
	8450 2750 8600 2750
Wire Wire Line
	5150 2900 5300 2900
Wire Wire Line
	5150 3000 5300 3000
Wire Wire Line
	5150 3100 5300 3100
Wire Wire Line
	5150 3200 5300 3200
Wire Wire Line
	5150 3300 5300 3300
Wire Wire Line
	5150 3400 5300 3400
Wire Wire Line
	5150 3500 5300 3500
Wire Wire Line
	5150 3600 5300 3600
Wire Wire Line
	5150 3700 5300 3700
Wire Wire Line
	5150 3800 5300 3800
Wire Wire Line
	5150 3900 5300 3900
Wire Wire Line
	5150 4000 5300 4000
Wire Wire Line
	5150 4100 5300 4100
Wire Wire Line
	5150 4200 5300 4200
Wire Wire Line
	5150 4300 5300 4300
Wire Wire Line
	8450 1250 8350 1350
Wire Wire Line
	8350 1350 7800 1350
Wire Bus Line
	8350 1450 8350 3650
Wire Bus Line
	8350 1450 5100 1450
Wire Bus Line
	5100 1450 5050 3000
Wire Bus Line
	5050 3000 5050 4400
Wire Wire Line
	6300 2900 6400 2900
Wire Wire Line
	6300 3000 6400 3000
Wire Wire Line
	6300 3100 6400 3100
Wire Wire Line
	6300 3200 6400 3200
Wire Wire Line
	6300 3300 6400 3300
Wire Wire Line
	6300 3400 6400 3400
Wire Wire Line
	6300 3500 6400 3500
Wire Wire Line
	6300 3600 6400 3600
Wire Wire Line
	8450 2850 8600 2850
Wire Wire Line
	8600 2950 8450 2950
Wire Wire Line
	8450 3050 8600 3050
Wire Wire Line
	8450 3150 8600 3150
Wire Wire Line
	8450 3250 8600 3250
Wire Wire Line
	8450 3350 8600 3350
Wire Wire Line
	8450 3450 8600 3450
Wire Wire Line
	8450 3550 8600 3550
Wire Wire Line
	8450 3650 8600 3650
Wire Wire Line
	8450 3750 8600 3750
Wire Bus Line
	6500 1450 6500 3700
Wire Wire Line
	8350 3750 8450 3650
Wire Wire Line
	8250 3850 8350 3850
Wire Wire Line
	8350 3850 8450 3750
NoConn ~ 8600 3850
NoConn ~ 8600 3950
$Comp
L VCC #PWR01
U 1 1 58D030D2
P 8250 3750
F 0 "#PWR01" H 8250 3600 50  0001 C CNN
F 1 "VCC" H 8250 3900 50  0000 C CNN
F 2 "" H 8250 3750 50  0001 C CNN
F 3 "" H 8250 3750 50  0001 C CNN
	1    8250 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58D030F0
P 8250 3850
F 0 "#PWR02" H 8250 3600 50  0001 C CNN
F 1 "GND" H 8250 3700 50  0000 C CNN
F 2 "" H 8250 3850 50  0001 C CNN
F 3 "" H 8250 3850 50  0001 C CNN
	1    8250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3750 8350 3750
NoConn ~ 8600 4350
Text Label 8450 3650 0    60   ~ 0
VCC
Text Label 8450 3750 0    60   ~ 0
GND
Text Label 8450 4050 0    60   ~ 0
WR
Text Label 8450 4150 0    60   ~ 0
RD
Text Label 8350 4250 0    60   ~ 0
MREQ
$EndSCHEMATC
