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
LIBS:Zilog
LIBS:switches
LIBS:crystal
LIBS:wz80-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "WZ80 Mainboard"
Date "2017-03-19"
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Z80CPU U1
U 1 1 58CEFA35
P 3700 3400
F 0 "U1" H 3150 4800 50  0000 L CNN
F 1 "Z80CPU" H 3950 4800 50  0000 L CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 3700 3800 50  0001 C CNN
F 3 "" H 3700 3800 50  0001 C CNN
	1    3700 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X32 J1
U 1 1 58CEFB90
P 7600 3850
F 0 "J1" H 7600 5500 50  0000 C CNN
F 1 "CONN_01X32" V 7700 3850 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x32_Pitch2.54mm" H 7600 3850 50  0001 C CNN
F 3 "" H 7600 3850 50  0001 C CNN
	1    7600 3850
	1    0    0    -1  
$EndComp
Text Label 4400 2200 0    60   ~ 0
A0
Text Label 4400 2300 0    60   ~ 0
A1
Text Label 4400 2400 0    60   ~ 0
A2
Text Label 4400 2500 0    60   ~ 0
A3
Text Label 4400 2600 0    60   ~ 0
A4
Text Label 4400 2700 0    60   ~ 0
A5
Text Label 4400 2800 0    60   ~ 0
A6
Text Label 4400 2900 0    60   ~ 0
A7
Text Label 4400 3000 0    60   ~ 0
A8
Text Label 4400 3100 0    60   ~ 0
A9
Text Label 4400 3200 0    60   ~ 0
A10
Text Label 4400 3300 0    60   ~ 0
A11
Text Label 4400 3400 0    60   ~ 0
A12
Text Label 4400 3500 0    60   ~ 0
A13
Text Label 4400 3600 0    60   ~ 0
A14
Text Label 4400 3700 0    60   ~ 0
A15
Entry Wire Line
	4600 2200 4700 2300
Entry Wire Line
	4600 2300 4700 2400
Entry Wire Line
	4600 2400 4700 2500
Entry Wire Line
	4600 2500 4700 2600
Entry Wire Line
	4600 2600 4700 2700
Entry Wire Line
	4600 2700 4700 2800
Entry Wire Line
	4600 2800 4700 2900
Entry Wire Line
	4600 2900 4700 3000
Entry Wire Line
	4600 3000 4700 3100
Entry Wire Line
	4600 3100 4700 3200
Entry Wire Line
	4600 3200 4700 3300
Entry Wire Line
	4600 3300 4700 3400
Entry Wire Line
	4600 3400 4700 3500
Entry Wire Line
	4600 3500 4700 3600
Entry Wire Line
	4600 3600 4700 3700
Entry Wire Line
	4600 3700 4700 3800
Entry Wire Line
	7000 2200 7100 2300
Entry Wire Line
	7000 2300 7100 2400
Entry Wire Line
	7000 2400 7100 2500
Entry Wire Line
	7000 2500 7100 2600
Entry Wire Line
	7000 2600 7100 2700
Entry Wire Line
	7000 2700 7100 2800
Entry Wire Line
	7000 2800 7100 2900
Entry Wire Line
	7000 2900 7100 3000
Entry Wire Line
	7000 3000 7100 3100
Entry Wire Line
	7000 3100 7100 3200
Entry Wire Line
	7000 3200 7100 3300
Entry Wire Line
	7000 3300 7100 3400
Entry Wire Line
	7000 3400 7100 3500
Entry Wire Line
	7000 3500 7100 3600
Entry Wire Line
	7000 3600 7100 3700
Entry Wire Line
	7000 3700 7100 3800
Text Label 7100 2300 0    60   ~ 0
A15
Text Label 7100 2400 0    60   ~ 0
A14
Text Label 7100 2500 0    60   ~ 0
A13
Text Label 7100 2600 0    60   ~ 0
A12
Text Label 7100 2700 0    60   ~ 0
A11
Text Label 7100 2800 0    60   ~ 0
A10
Text Label 7100 2900 0    60   ~ 0
A9
Text Label 7100 3000 0    60   ~ 0
A8
Text Label 7100 3100 0    60   ~ 0
A7
Text Label 7100 3200 0    60   ~ 0
A6
Text Label 7100 3300 0    60   ~ 0
A5
Text Label 7100 3400 0    60   ~ 0
A4
Text Label 7100 3500 0    60   ~ 0
A3
Text Label 7100 3600 0    60   ~ 0
A2
Text Label 7100 3700 0    60   ~ 0
A1
Text Label 7100 3800 0    60   ~ 0
A0
Entry Wire Line
	4600 3900 4700 4000
Entry Wire Line
	4600 4000 4700 4100
Entry Wire Line
	4600 4100 4700 4200
Entry Wire Line
	4600 4200 4700 4300
Entry Wire Line
	4600 4300 4700 4400
Entry Wire Line
	4600 4400 4700 4500
Entry Wire Line
	4600 4500 4700 4600
Entry Wire Line
	4600 4600 4700 4700
$Comp
L GND #PWR01
U 1 1 58CF0BBF
P 5550 4850
F 0 "#PWR01" H 5550 4600 50  0001 C CNN
F 1 "GND" H 5550 4700 50  0000 C CNN
F 2 "" H 5550 4850 50  0001 C CNN
F 3 "" H 5550 4850 50  0001 C CNN
	1    5550 4850
	1    0    0    -1  
$EndComp
Text Label 4400 3900 0    60   ~ 0
D0
Text Label 4400 4000 0    60   ~ 0
D1
Text Label 4400 4100 0    60   ~ 0
D2
Text Label 4400 4200 0    60   ~ 0
D3
Text Label 4400 4300 0    60   ~ 0
D4
Text Label 4400 4400 0    60   ~ 0
D5
Text Label 4400 4500 0    60   ~ 0
D6
Text Label 4400 4600 0    60   ~ 0
D7
Text Label 7100 3900 0    60   ~ 0
D7
Text Label 7100 4000 0    60   ~ 0
D6
Text Label 7100 4100 0    60   ~ 0
D5
Text Label 7100 4200 0    60   ~ 0
D4
Text Label 7100 4300 0    60   ~ 0
D3
Text Label 7100 4400 0    60   ~ 0
D2
Text Label 7100 4500 0    60   ~ 0
D1
Text Label 7100 4600 0    60   ~ 0
D0
Text Label 7100 4700 0    60   ~ 0
GND
Text Label 7100 4800 0    60   ~ 0
VCC
Text Label 2750 3200 0    60   ~ 0
M1
Text Label 2750 3900 0    60   ~ 0
RD
Text Label 2750 4000 0    60   ~ 0
WR
Text Label 2750 4100 0    60   ~ 0
MREQ
Text Label 7100 4900 0    60   ~ 0
CLK
Entry Wire Line
	2600 3300 2700 3200
Entry Wire Line
	2600 4000 2700 3900
Entry Wire Line
	2600 4100 2700 4000
Entry Wire Line
	2600 4200 2700 4100
Entry Wire Line
	2600 4300 2700 4200
Text Label 2750 4200 0    60   ~ 0
IORQ
Entry Wire Line
	7000 5100 7100 5000
Entry Wire Line
	7000 5200 7100 5100
Entry Wire Line
	7000 5300 7100 5200
Entry Wire Line
	7000 5400 7100 5300
Entry Wire Line
	7000 5500 7100 5400
Text Label 7100 5000 0    60   ~ 0
M1
Text Label 7100 5100 0    60   ~ 0
WR
Text Label 7100 5200 0    60   ~ 0
RD
Text Label 7100 5300 0    60   ~ 0
MREQ
Text Label 7100 5400 0    60   ~ 0
IORQ
$Comp
L VCC #PWR02
U 1 1 58CF1FF6
P 4950 1750
F 0 "#PWR02" H 4950 1600 50  0001 C CNN
F 1 "VCC" H 4950 1900 50  0000 C CNN
F 2 "" H 4950 1750 50  0001 C CNN
F 3 "" H 4950 1750 50  0001 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
NoConn ~ 3000 3500
NoConn ~ 3000 3300
NoConn ~ 3000 4600
$Comp
L R R1
U 1 1 58CF2576
P 2200 2050
F 0 "R1" V 2280 2050 50  0000 C CNN
F 1 "2K2" V 2200 2050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2130 2050 50  0001 C CNN
F 3 "" H 2200 2050 50  0001 C CNN
	1    2200 2050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 58CF2615
P 2850 4400
F 0 "#PWR03" H 2850 4250 50  0001 C CNN
F 1 "VCC" H 2850 4550 50  0000 C CNN
F 2 "" H 2850 4400 50  0001 C CNN
F 3 "" H 2850 4400 50  0001 C CNN
	1    2850 4400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 58CF2631
P 2800 3400
F 0 "#PWR04" H 2800 3250 50  0001 C CNN
F 1 "VCC" H 2800 3550 50  0000 C CNN
F 2 "" H 2800 3400 50  0001 C CNN
F 3 "" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 58CF264D
P 2850 2700
F 0 "#PWR05" H 2850 2550 50  0001 C CNN
F 1 "VCC" H 2850 2850 50  0000 C CNN
F 2 "" H 2850 2700 50  0001 C CNN
F 3 "" H 2850 2700 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58CF26C8
P 2200 2650
F 0 "#PWR06" H 2200 2400 50  0001 C CNN
F 1 "GND" H 2200 2500 50  0000 C CNN
F 2 "" H 2200 2650 50  0001 C CNN
F 3 "" H 2200 2650 50  0001 C CNN
	1    2200 2650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 58CF26E4
P 2200 1900
F 0 "#PWR07" H 2200 1750 50  0001 C CNN
F 1 "VCC" H 2200 2050 50  0000 C CNN
F 2 "" H 2200 1900 50  0001 C CNN
F 3 "" H 2200 1900 50  0001 C CNN
	1    2200 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58CF2D7B
P 1250 4300
F 0 "#PWR08" H 1250 4050 50  0001 C CNN
F 1 "GND" H 1250 4150 50  0000 C CNN
F 2 "" H 1250 4300 50  0001 C CNN
F 3 "" H 1250 4300 50  0001 C CNN
	1    1250 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X32 J2
U 1 1 58CF374E
P 8800 3850
F 0 "J2" H 8800 5500 50  0000 C CNN
F 1 "CONN_01X32" V 8900 3850 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x32_Pitch2.54mm" H 8800 3850 50  0001 C CNN
F 3 "" H 8800 3850 50  0001 C CNN
	1    8800 3850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X32 J3
U 1 1 58CF378C
P 9800 3850
F 0 "J3" H 9800 5500 50  0000 C CNN
F 1 "CONN_01X32" V 9900 3850 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x32_Pitch2.54mm" H 9800 3850 50  0001 C CNN
F 3 "" H 9800 3850 50  0001 C CNN
	1    9800 3850
	1    0    0    -1  
$EndComp
Entry Wire Line
	7000 3800 7100 3900
Entry Wire Line
	7000 3900 7100 4000
Entry Wire Line
	7000 4000 7100 4100
Entry Wire Line
	7000 4100 7100 4200
Entry Wire Line
	7000 4200 7100 4300
Entry Wire Line
	7000 4300 7100 4400
Entry Wire Line
	7000 4400 7100 4500
Entry Wire Line
	7000 4500 7100 4600
Entry Wire Line
	8200 2200 8300 2300
Entry Wire Line
	8200 2300 8300 2400
Entry Wire Line
	8200 2400 8300 2500
Entry Wire Line
	8200 2500 8300 2600
Entry Wire Line
	8200 2600 8300 2700
Entry Wire Line
	8200 2700 8300 2800
Entry Wire Line
	8200 2800 8300 2900
Entry Wire Line
	8200 2900 8300 3000
Entry Wire Line
	8200 3000 8300 3100
Entry Wire Line
	8200 3100 8300 3200
Entry Wire Line
	8200 3200 8300 3300
Entry Wire Line
	8200 3300 8300 3400
Entry Wire Line
	8200 3400 8300 3500
Entry Wire Line
	8200 3500 8300 3600
Entry Wire Line
	8200 3600 8300 3700
Entry Wire Line
	8200 3700 8300 3800
Entry Wire Line
	8200 3800 8300 3900
Entry Wire Line
	8200 3900 8300 4000
Entry Wire Line
	8200 4000 8300 4100
Entry Wire Line
	8200 4100 8300 4200
Entry Wire Line
	8200 4200 8300 4300
Entry Wire Line
	8200 4300 8300 4400
Entry Wire Line
	8200 4400 8300 4500
Entry Wire Line
	8200 4500 8300 4600
Entry Wire Line
	9250 2200 9350 2300
Entry Wire Line
	9250 2300 9350 2400
Entry Wire Line
	9250 2400 9350 2500
Entry Wire Line
	9250 2500 9350 2600
Entry Wire Line
	9250 2600 9350 2700
Entry Wire Line
	9250 2700 9350 2800
Entry Wire Line
	9250 2800 9350 2900
Entry Wire Line
	9250 2900 9350 3000
Entry Wire Line
	9250 3000 9350 3100
Entry Wire Line
	9250 3100 9350 3200
Entry Wire Line
	9250 3200 9350 3300
Entry Wire Line
	9250 3300 9350 3400
Entry Wire Line
	9250 3400 9350 3500
Entry Wire Line
	9250 3500 9350 3600
Entry Wire Line
	9250 3600 9350 3700
Entry Wire Line
	9250 3700 9350 3800
Entry Wire Line
	9250 3800 9350 3900
Entry Wire Line
	9250 3900 9350 4000
Entry Wire Line
	9250 4000 9350 4100
Entry Wire Line
	9250 4100 9350 4200
Entry Wire Line
	9250 4200 9350 4300
Entry Wire Line
	9250 4300 9350 4400
Entry Wire Line
	9250 4400 9350 4500
Entry Wire Line
	9250 4500 9350 4600
Entry Wire Line
	8250 5100 8350 5000
Entry Wire Line
	8250 5200 8350 5100
Entry Wire Line
	8250 5300 8350 5200
Entry Wire Line
	8250 5400 8350 5300
Entry Wire Line
	8250 5500 8350 5400
Entry Wire Line
	9250 5500 9350 5400
Entry Wire Line
	9250 5400 9350 5300
Entry Wire Line
	9250 5300 9350 5200
Entry Wire Line
	9250 5200 9350 5100
Entry Wire Line
	9250 5100 9350 5000
$Comp
L C C1
U 1 1 58CF6366
P 5950 4650
F 0 "C1" H 5975 4750 50  0000 L CNN
F 1 "100nF" H 5975 4550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5988 4500 50  0001 C CNN
F 3 "" H 5950 4650 50  0001 C CNN
	1    5950 4650
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 58CF7047
P 7850 4500
F 0 "C2" H 7875 4600 50  0000 L CNN
F 1 "100nF" H 7875 4400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7888 4350 50  0001 C CNN
F 3 "" H 7850 4500 50  0001 C CNN
	1    7850 4500
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58CF70AB
P 8950 4500
F 0 "C3" H 8975 4600 50  0000 L CNN
F 1 "100nF" H 8975 4400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8988 4350 50  0001 C CNN
F 3 "" H 8950 4500 50  0001 C CNN
	1    8950 4500
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_Dual SW1
U 1 1 58CF84CA
P 2000 2400
F 0 "SW1" H 2050 2500 50  0000 L CNN
F 1 "SW_Push_Dual" H 2000 2130 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_TH_Tactile_Omron_B3F-10xx" H 2000 2600 50  0001 C CNN
F 3 "" H 2000 2600 50  0001 C CNN
	1    2000 2400
	0    -1   -1   0   
$EndComp
Text Label 8300 2300 0    60   ~ 0
A15
Text Label 9350 2300 0    60   ~ 0
A15
Text Label 8300 2400 0    60   ~ 0
A14
Text Label 9350 2400 0    60   ~ 0
A14
Text Label 8300 2500 0    60   ~ 0
A13
Text Label 9350 2500 0    60   ~ 0
A13
Text Label 8300 2600 0    60   ~ 0
A12
Text Label 9350 2600 0    60   ~ 0
A12
Text Label 8300 2700 0    60   ~ 0
A11
Text Label 9350 2700 0    60   ~ 0
A11
Text Label 8300 2800 0    60   ~ 0
A10
Text Label 9350 2800 0    60   ~ 0
A10
Text Label 8300 2900 0    60   ~ 0
A9
Text Label 9350 2900 0    60   ~ 0
A9
Text Label 8300 3000 0    60   ~ 0
A8
Text Label 9350 3000 0    60   ~ 0
A8
Text Label 8300 3100 0    60   ~ 0
A7
Text Label 9350 3100 0    60   ~ 0
A7
Text Label 8300 3200 0    60   ~ 0
A6
Text Label 9350 3200 0    60   ~ 0
A6
Text Label 8300 3300 0    60   ~ 0
A5
Text Label 9350 3300 0    60   ~ 0
A5
Text Label 8300 3400 0    60   ~ 0
A4
Text Label 9350 3400 0    60   ~ 0
A4
Text Label 8300 3500 0    60   ~ 0
A3
Text Label 9350 3500 0    60   ~ 0
A3
Text Label 8300 3600 0    60   ~ 0
A2
Text Label 9350 3600 0    60   ~ 0
A2
Text Label 8300 3700 0    60   ~ 0
A1
Text Label 9350 3700 0    60   ~ 0
A1
Text Label 8300 3800 0    60   ~ 0
A0
Text Label 9350 3800 0    60   ~ 0
A0
Text Label 8300 3900 0    60   ~ 0
D7
Text Label 9350 3900 0    60   ~ 0
D7
Text Label 8300 4000 0    60   ~ 0
D6
Text Label 9350 4000 0    60   ~ 0
D6
Text Label 8300 4100 0    60   ~ 0
D5
Text Label 9350 4100 0    60   ~ 0
D5
Text Label 8300 4200 0    60   ~ 0
D4
Text Label 9350 4200 0    60   ~ 0
D4
Text Label 8300 4300 0    60   ~ 0
D3
Text Label 9350 4300 0    60   ~ 0
D3
Text Label 8300 4400 0    60   ~ 0
D2
Text Label 9350 4400 0    60   ~ 0
D2
Text Label 8300 4500 0    60   ~ 0
D1
Text Label 9350 4500 0    60   ~ 0
D1
Text Label 8300 4600 0    60   ~ 0
D0
Text Label 9350 4600 0    60   ~ 0
D0
Text Label 8350 5000 0    60   ~ 0
M1
Text Label 9350 5000 0    60   ~ 0
M1
Text Label 8350 5100 0    60   ~ 0
WR
Text Label 9350 5100 0    60   ~ 0
WR
Text Label 8350 5200 0    60   ~ 0
RD
Text Label 9350 5200 0    60   ~ 0
RD
Text Label 8350 5300 0    60   ~ 0
MREQ
Text Label 8350 5400 0    60   ~ 0
IORQ
Text Label 9350 5300 0    60   ~ 0
MREQ
Text Label 9350 5400 0    60   ~ 0
IORQ
$Comp
L CONN_01X02 J4
U 1 1 58CFC770
P 10200 4750
F 0 "J4" H 10200 4900 50  0000 C CNN
F 1 "CONN_01X02" V 10300 4750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 10200 4750 50  0001 C CNN
F 3 "" H 10200 4750 50  0001 C CNN
	1    10200 4750
	1    0    0    -1  
$EndComp
Wire Bus Line
	7000 2200 4700 2200
Wire Wire Line
	7100 3800 7400 3800
Wire Wire Line
	7100 3700 7400 3700
Wire Wire Line
	7100 3600 7400 3600
Wire Wire Line
	7100 3500 7400 3500
Wire Wire Line
	7100 3400 7400 3400
Wire Wire Line
	7100 3300 7400 3300
Wire Wire Line
	7100 3200 7400 3200
Wire Wire Line
	7100 3100 7400 3100
Wire Wire Line
	7100 3000 7400 3000
Wire Wire Line
	7100 2900 7400 2900
Wire Wire Line
	7100 2800 7400 2800
Wire Wire Line
	7100 2700 7400 2700
Wire Wire Line
	7100 2600 7400 2600
Wire Wire Line
	7100 2500 7400 2500
Wire Wire Line
	7100 2400 7400 2400
Wire Wire Line
	7100 2300 7400 2300
Wire Wire Line
	4400 3700 4600 3700
Wire Wire Line
	4400 3600 4600 3600
Wire Wire Line
	4400 3500 4600 3500
Wire Wire Line
	4400 3400 4600 3400
Wire Wire Line
	4400 3300 4600 3300
Wire Wire Line
	4400 3200 4600 3200
Wire Wire Line
	4400 3100 4600 3100
Wire Wire Line
	4400 3000 4600 3000
Wire Wire Line
	4400 2900 4600 2900
Wire Wire Line
	4400 2800 4600 2800
Wire Wire Line
	4400 2700 4600 2700
Wire Wire Line
	4400 2600 4600 2600
Wire Wire Line
	4400 2500 4600 2500
Wire Wire Line
	4400 2400 4600 2400
Wire Wire Line
	4400 2300 4600 2300
Wire Wire Line
	4400 2200 4600 2200
Wire Wire Line
	4400 3900 4600 3900
Wire Wire Line
	4400 4000 4600 4000
Wire Wire Line
	4400 4100 4600 4100
Wire Wire Line
	4400 4200 4600 4200
Wire Wire Line
	4400 4300 4600 4300
Wire Wire Line
	4400 4400 4600 4400
Wire Wire Line
	4400 4500 4600 4500
Wire Wire Line
	4400 4600 4600 4600
Wire Wire Line
	7400 3900 7100 3900
Wire Wire Line
	7400 4000 7100 4000
Wire Wire Line
	7400 4100 7100 4100
Wire Wire Line
	7400 4200 7100 4200
Wire Wire Line
	7400 4300 7100 4300
Wire Wire Line
	7400 4400 7100 4400
Wire Wire Line
	7400 4500 7100 4500
Wire Wire Line
	7400 4600 7100 4600
Wire Wire Line
	6950 4950 7100 4800
Wire Wire Line
	7050 4700 10000 4700
Wire Wire Line
	6900 4850 7050 4700
Wire Wire Line
	5400 4850 6900 4850
Wire Wire Line
	3700 1800 5800 1800
Wire Wire Line
	3700 1800 3700 1900
Wire Wire Line
	7100 4900 9600 4900
Wire Wire Line
	7100 4900 6650 5350
Wire Wire Line
	6650 5350 2350 5350
Wire Wire Line
	2350 5350 2350 2500
Wire Wire Line
	2350 2500 3000 2500
Wire Wire Line
	3000 3200 2700 3200
Wire Wire Line
	3000 3900 2700 3900
Wire Wire Line
	3000 4000 2700 4000
Wire Wire Line
	3000 4200 2700 4200
Wire Wire Line
	2700 4100 3000 4100
Wire Bus Line
	2600 3300 2600 5500
Wire Bus Line
	7000 5100 7000 5500
Wire Wire Line
	7100 5000 7400 5000
Wire Wire Line
	7100 5100 7400 5100
Wire Wire Line
	7100 5200 7400 5200
Wire Wire Line
	7100 5300 7400 5300
Wire Wire Line
	7100 5400 7400 5400
Wire Bus Line
	2600 5500 9250 5500
Wire Wire Line
	3000 3400 2800 3400
Wire Wire Line
	2850 2800 3000 2800
Wire Wire Line
	2850 2900 3000 2900
Wire Wire Line
	2850 2700 2850 2900
Wire Wire Line
	2850 4400 2850 4500
Connection ~ 2850 2800
Wire Wire Line
	2850 4500 3000 4500
Wire Wire Line
	4950 1750 4950 1800
Connection ~ 4950 1800
Connection ~ 2850 4500
Wire Wire Line
	2000 2200 3000 2200
Wire Wire Line
	1150 4100 2350 4100
Connection ~ 2350 4100
Connection ~ 7400 4900
Connection ~ 8600 4900
Connection ~ 7400 4800
Connection ~ 8600 4800
Connection ~ 7400 4700
Connection ~ 8600 4700
Wire Bus Line
	8250 5100 8250 5500
Wire Bus Line
	9250 5500 9250 5100
Wire Bus Line
	4700 2200 4700 4700
Wire Bus Line
	7000 2150 9250 2150
Wire Bus Line
	8200 2150 8200 4650
Wire Bus Line
	9250 2150 9250 4650
Wire Bus Line
	7000 2150 7000 4500
Wire Wire Line
	8300 2300 8600 2300
Wire Wire Line
	8300 2400 8600 2400
Wire Wire Line
	8300 2500 8600 2500
Wire Wire Line
	8300 2600 8600 2600
Wire Wire Line
	8300 2700 8600 2700
Wire Wire Line
	8300 2800 8600 2800
Wire Wire Line
	8300 2900 8600 2900
Wire Wire Line
	8300 3000 8600 3000
Wire Wire Line
	8300 3100 8600 3100
Wire Wire Line
	8300 3200 8600 3200
Wire Wire Line
	8300 3300 8600 3300
Wire Wire Line
	8300 3400 8600 3400
Wire Wire Line
	8300 3500 8600 3500
Wire Wire Line
	8300 3600 8600 3600
Wire Wire Line
	8300 3700 8600 3700
Wire Wire Line
	8300 3800 8600 3800
Wire Wire Line
	8300 3900 8600 3900
Wire Wire Line
	8300 4000 8600 4000
Wire Wire Line
	8300 4100 8600 4100
Wire Wire Line
	8300 4200 8600 4200
Wire Wire Line
	8300 4300 8600 4300
Wire Wire Line
	8300 4400 8600 4400
Wire Wire Line
	8300 4500 8600 4500
Wire Wire Line
	8300 4600 8600 4600
Wire Wire Line
	9350 2300 9600 2300
Wire Wire Line
	9350 2400 9600 2400
Wire Wire Line
	9350 2500 9600 2500
Wire Wire Line
	9350 2600 9600 2600
Wire Wire Line
	9350 2700 9600 2700
Wire Wire Line
	9350 2800 9600 2800
Wire Wire Line
	9350 2900 9600 2900
Wire Wire Line
	9350 3000 9600 3000
Wire Wire Line
	9350 3100 9600 3100
Wire Wire Line
	9350 3200 9600 3200
Wire Wire Line
	9350 3300 9600 3300
Wire Wire Line
	9350 3400 9600 3400
Wire Wire Line
	9350 3500 9600 3500
Wire Wire Line
	9350 3600 9600 3600
Wire Wire Line
	9350 3700 9600 3700
Wire Wire Line
	9350 3800 9600 3800
Wire Wire Line
	9350 3900 9600 3900
Wire Wire Line
	9350 4000 9600 4000
Wire Wire Line
	9350 4100 9600 4100
Wire Wire Line
	9350 4200 9600 4200
Wire Wire Line
	9350 4300 9600 4300
Wire Wire Line
	9350 4400 9600 4400
Wire Wire Line
	9350 4500 9600 4500
Wire Wire Line
	9350 4600 9600 4600
Wire Wire Line
	8350 5000 8600 5000
Wire Wire Line
	8350 5100 8600 5100
Wire Wire Line
	8350 5200 8600 5200
Wire Wire Line
	8350 5300 8600 5300
Wire Wire Line
	8350 5400 8600 5400
Wire Wire Line
	9350 5000 9600 5000
Wire Wire Line
	9350 5100 9600 5100
Wire Wire Line
	9350 5200 9600 5200
Wire Wire Line
	9350 5300 9600 5300
Wire Wire Line
	9350 5400 9600 5400
Wire Wire Line
	5950 4800 5950 4850
Connection ~ 5950 4850
Wire Wire Line
	5950 4500 6150 4500
Wire Wire Line
	6150 4500 6150 4950
Connection ~ 6150 4950
Wire Wire Line
	7850 4350 8050 4350
Wire Wire Line
	8050 4350 8050 4800
Wire Wire Line
	8950 4350 9100 4350
Wire Wire Line
	9100 4350 9100 4800
Wire Wire Line
	8950 4650 8950 4700
Connection ~ 8950 4700
Wire Wire Line
	7850 4700 7850 4650
Connection ~ 7850 4700
Wire Wire Line
	7100 4800 10000 4800
Connection ~ 9100 4800
Connection ~ 8050 4800
Connection ~ 2200 2200
Wire Wire Line
	2000 2600 2200 2600
Wire Wire Line
	2200 2600 2200 2650
Wire Wire Line
	3700 4900 5400 4900
Wire Wire Line
	5400 4900 5400 4850
Connection ~ 5550 4850
Wire Wire Line
	5800 4950 6950 4950
Wire Wire Line
	5800 1800 5800 4950
Connection ~ 9600 4700
Connection ~ 9600 4800
Wire Wire Line
	1150 4200 1250 4200
Wire Wire Line
	1250 4200 1250 4300
$Comp
L CONN_01X03 J5
U 1 1 58CFF819
P 950 4100
F 0 "J5" H 950 4300 50  0000 C CNN
F 1 "CONN_01X03" V 1050 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 950 4100 50  0001 C CNN
F 3 "" H 950 4100 50  0001 C CNN
	1    950  4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 4000 1250 4000
Wire Wire Line
	1250 4000 1250 3800
$Comp
L VCC #PWR09
U 1 1 58CFF9EF
P 1250 3800
F 0 "#PWR09" H 1250 3650 50  0001 C CNN
F 1 "VCC" H 1250 3950 50  0000 C CNN
F 2 "" H 1250 3800 50  0001 C CNN
F 3 "" H 1250 3800 50  0001 C CNN
	1    1250 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
