EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L teensy:Teensy4.1 U1
U 1 1 5F937656
P 3350 4000
F 0 "U1" H 2600 6500 50  0000 C CNN
F 1 "Teensy4.1" H 3350 4000 50  0000 C CNN
F 2 "teensy:Teensy41" H 2950 4400 50  0001 C CNN
F 3 "" H 2950 4400 50  0001 C CNN
	1    3350 4000
	1    0    0    -1  
$EndComp
$Comp
L MainMush:DS3231_RTC U3
U 1 1 5F93BFA1
P 6200 4150
F 0 "U3" H 6550 4400 50  0000 L CNN
F 1 "DS3231_RTC" V 6550 3700 50  0000 L CNN
F 2 "MainMush:ds3231" H 6200 4150 50  0001 C CNN
F 3 "" H 6200 4150 50  0001 C CNN
	1    6200 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 5F950B45
P 1500 6850
F 0 "J1" H 1250 6850 50  0000 C CNN
F 1 "POWER JACK 2.1x5.5mm" H 1350 6600 50  0000 C CNN
F 2 "MainMush:BarrelJack_dummyBIGholes" H 1550 6810 50  0001 C CNN
F 3 "~" H 1550 6810 50  0001 C CNN
	1    1500 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F95423E
P 1950 7050
F 0 "#PWR0101" H 1950 6800 50  0001 C CNN
F 1 "GND" H 1955 6877 50  0001 C CNN
F 2 "" H 1950 7050 50  0001 C CNN
F 3 "" H 1950 7050 50  0001 C CNN
	1    1950 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6950 1950 6950
Wire Wire Line
	1950 6950 1950 7050
Wire Wire Line
	1800 6750 2250 6750
$Comp
L power:+5V #PWR0102
U 1 1 5F9557B2
P 3100 6600
F 0 "#PWR0102" H 3100 6450 50  0001 C CNN
F 1 "+5V" H 3115 6773 50  0000 C CNN
F 2 "" H 3100 6600 50  0001 C CNN
F 3 "" H 3100 6600 50  0001 C CNN
	1    3100 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F95654D
P 2250 6900
F 0 "C1" H 2365 6946 50  0000 L CNN
F 1 ".1uf" H 2365 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2288 6750 50  0001 C CNN
F 3 "~" H 2250 6900 50  0001 C CNN
	1    2250 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5F9580F7
P 2750 6900
F 0 "C2" H 2865 6946 50  0000 L CNN
F 1 "100uf" H 2865 6855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2750 6900 50  0001 C CNN
F 3 "~" H 2750 6900 50  0001 C CNN
	1    2750 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F959119
P 2250 7050
F 0 "#PWR0103" H 2250 6800 50  0001 C CNN
F 1 "GND" H 2255 6877 50  0001 C CNN
F 2 "" H 2250 7050 50  0001 C CNN
F 3 "" H 2250 7050 50  0001 C CNN
	1    2250 7050
	1    0    0    -1  
$EndComp
Connection ~ 2250 6750
Wire Wire Line
	2250 6750 2750 6750
$Comp
L power:GND #PWR0104
U 1 1 5F959FD3
P 2750 7050
F 0 "#PWR0104" H 2750 6800 50  0001 C CNN
F 1 "GND" H 2755 6877 50  0001 C CNN
F 2 "" H 2750 7050 50  0001 C CNN
F 3 "" H 2750 7050 50  0001 C CNN
	1    2750 7050
	1    0    0    -1  
$EndComp
Connection ~ 2750 6750
Wire Wire Line
	2750 6750 3100 6750
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5F95B010
P 8250 3500
F 0 "J2" H 8300 3917 50  0001 C CNN
F 1 "Conn_02x05_Odd_Even" H 8300 3826 50  0001 C CNN
F 2 "MainMush:10pin_ribboncable_connector" H 8250 3500 50  0001 C CNN
F 3 "~" H 8250 3500 50  0001 C CNN
	1    8250 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5F96A65C
P 7950 3250
F 0 "#PWR0105" H 7950 3100 50  0001 C CNN
F 1 "+5V" H 7965 3423 50  0000 C CNN
F 2 "" H 7950 3250 50  0001 C CNN
F 3 "" H 7950 3250 50  0001 C CNN
	1    7950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3300 7950 3300
Wire Wire Line
	7950 3300 7950 3250
$Comp
L power:GND #PWR0106
U 1 1 5F96C332
P 8650 3750
F 0 "#PWR0106" H 8650 3500 50  0001 C CNN
F 1 "GND" H 8655 3577 50  0000 C CNN
F 2 "" H 8650 3750 50  0001 C CNN
F 3 "" H 8650 3750 50  0001 C CNN
	1    8650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3300 8650 3300
Wire Wire Line
	8650 3300 8650 3400
Wire Wire Line
	8550 3400 8650 3400
Connection ~ 8650 3400
Wire Wire Line
	8650 3400 8650 3500
Wire Wire Line
	8550 3500 8650 3500
Connection ~ 8650 3500
Wire Wire Line
	8650 3500 8650 3600
Wire Wire Line
	8550 3600 8650 3600
Connection ~ 8650 3600
Wire Wire Line
	8650 3600 8650 3700
Wire Wire Line
	8550 3700 8650 3700
Connection ~ 8650 3700
Wire Wire Line
	8650 3700 8650 3750
Text GLabel 8050 3400 0    50   BiDi ~ 0
A1
Text GLabel 4450 2950 2    50   BiDi ~ 0
A1
Text GLabel 2250 2450 0    50   BiDi ~ 0
D5
Text GLabel 5900 4750 0    50   BiDi ~ 0
D5
NoConn ~ 5900 4650
NoConn ~ 5900 4550
NoConn ~ 5900 4450
$Comp
L power:+5V #PWR0107
U 1 1 5F9703B5
P 5400 1650
F 0 "#PWR0107" H 5400 1500 50  0001 C CNN
F 1 "+5V" H 5415 1823 50  0000 C CNN
F 2 "" H 5400 1650 50  0001 C CNN
F 3 "" H 5400 1650 50  0001 C CNN
	1    5400 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5F971537
P 5800 4000
F 0 "#PWR0108" H 5800 3850 50  0001 C CNN
F 1 "+5V" H 5815 4173 50  0000 C CNN
F 2 "" H 5800 4000 50  0001 C CNN
F 3 "" H 5800 4000 50  0001 C CNN
	1    5800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4000 5800 4050
Wire Wire Line
	5800 4050 5900 4050
Wire Wire Line
	3100 6600 3100 6750
NoConn ~ 4450 1700
NoConn ~ 4450 2450
NoConn ~ 4450 2150
NoConn ~ 4450 2250
Text GLabel 4450 2550 2    50   BiDi ~ 0
SCL
Text GLabel 4450 2650 2    50   BiDi ~ 0
SDA
Text GLabel 4450 3150 2    50   BiDi ~ 0
D13
Text GLabel 8050 3500 0    50   BiDi ~ 0
SDA
Text GLabel 8050 3600 0    50   BiDi ~ 0
SCL
NoConn ~ 8050 3700
Text Notes 9800 3600 2    50   ~ 10
CONNECTION TO \nSATELLITE BOARD
Wire Notes Line
	500  6000 3750 6000
Wire Notes Line
	10000 2250 8950 2250
Wire Notes Line
	8950 2250 8950 4750
Wire Notes Line
	8950 4750 10000 4750
Wire Notes Line
	3750 6000 3750 7750
$Comp
L power:GND #PWR0109
U 1 1 5F98175F
P 5600 4150
F 0 "#PWR0109" H 5600 3900 50  0001 C CNN
F 1 "GND" H 5605 3977 50  0001 C CNN
F 2 "" H 5600 4150 50  0001 C CNN
F 3 "" H 5600 4150 50  0001 C CNN
	1    5600 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F9843F6
P 5500 1800
F 0 "#PWR0110" H 5500 1550 50  0001 C CNN
F 1 "GND" H 5505 1627 50  0001 C CNN
F 2 "" H 5500 1800 50  0001 C CNN
F 3 "" H 5500 1800 50  0001 C CNN
	1    5500 1800
	1    0    0    -1  
$EndComp
Text GLabel 5900 4250 0    50   BiDi ~ 0
SCL
Text GLabel 5900 4350 0    50   BiDi ~ 0
SDA
Text GLabel 2250 3050 0    50   BiDi ~ 0
D11
Text GLabel 2250 3150 0    50   BiDi ~ 0
D12
Text GLabel 2250 2950 0    50   BiDi ~ 0
D10
Text GLabel 2250 2850 0    50   BiDi ~ 0
D9
Text GLabel 5850 1900 0    50   BiDi ~ 0
D10
$Comp
L power:GND #PWR0111
U 1 1 5F98AD30
P 4800 2000
F 0 "#PWR0111" H 4800 1750 50  0001 C CNN
F 1 "GND" H 4805 1827 50  0001 C CNN
F 2 "" H 4800 2000 50  0001 C CNN
F 3 "" H 4800 2000 50  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5F98C589
P 4550 1500
F 0 "#PWR0112" H 4550 1350 50  0001 C CNN
F 1 "+5V" H 4565 1673 50  0000 C CNN
F 2 "" H 4550 1500 50  0001 C CNN
F 3 "" H 4550 1500 50  0001 C CNN
	1    4550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1850 4550 1850
Wire Wire Line
	4550 1850 4550 1500
Text Notes 9950 3150 0    50   ~ 0
Temp/Humidity\n  (SDA/SCL)
Text Notes 10050 4050 0    50   ~ 0
CO2/VOC\n  (D4)
NoConn ~ 2250 1850
NoConn ~ 2250 2250
NoConn ~ 2250 2550
NoConn ~ 2250 2650
NoConn ~ 2250 3250
NoConn ~ 2250 3350
NoConn ~ 2250 3650
NoConn ~ 2250 3550
NoConn ~ 2250 3450
NoConn ~ 2250 4050
NoConn ~ 2250 3950
NoConn ~ 2250 4350
NoConn ~ 2250 4450
NoConn ~ 2250 4600
NoConn ~ 2250 4700
NoConn ~ 2250 4800
NoConn ~ 2250 4900
NoConn ~ 2250 5000
NoConn ~ 3050 5300
NoConn ~ 3200 5300
NoConn ~ 3350 5300
NoConn ~ 3500 5300
NoConn ~ 3650 5300
NoConn ~ 4450 4900
NoConn ~ 4450 4800
NoConn ~ 4450 4700
NoConn ~ 4450 4600
NoConn ~ 4450 4500
NoConn ~ 4450 4400
NoConn ~ 4450 4150
NoConn ~ 4450 4050
NoConn ~ 4450 3950
NoConn ~ 4450 3250
NoConn ~ 4450 3350
NoConn ~ 4450 3450
NoConn ~ 4450 3550
NoConn ~ 4450 3650
NoConn ~ 4450 3050
NoConn ~ 4450 2850
NoConn ~ 4450 2750
NoConn ~ 1800 6850
$Comp
L Switch:SW_Push SW1
U 1 1 5F9CA698
P 1600 1700
F 0 "SW1" H 1600 1893 50  0000 C CNN
F 1 "SW_Push" H 1600 1894 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 1600 1900 50  0001 C CNN
F 3 "~" H 1600 1900 50  0001 C CNN
	1    1600 1700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F9CB620
P 1600 2050
F 0 "SW2" H 1600 2243 50  0000 C CNN
F 1 "SW_Push" H 1600 2244 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 1600 2250 50  0001 C CNN
F 3 "~" H 1600 2250 50  0001 C CNN
	1    1600 2050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5F9CBE94
P 1600 2400
F 0 "SW3" H 1600 2593 50  0000 C CNN
F 1 "SW_Push" H 1600 2594 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 1600 2600 50  0001 C CNN
F 3 "~" H 1600 2600 50  0001 C CNN
	1    1600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1800 5850 1800
Wire Wire Line
	5900 4150 5600 4150
Wire Wire Line
	1800 2050 2250 2050
Wire Wire Line
	1800 2400 1800 2150
Wire Wire Line
	1800 2150 2250 2150
Wire Wire Line
	1800 1700 1800 1950
Wire Wire Line
	1800 1950 2250 1950
Wire Wire Line
	900  2400 1400 2400
Wire Wire Line
	1400 2050 900  2050
Connection ~ 900  2050
Wire Wire Line
	900  2050 900  2400
Wire Wire Line
	1400 1700 900  1700
Wire Wire Line
	900  1700 900  2050
NoConn ~ 2250 2350
NoConn ~ 4450 2350
$Comp
L power:GND #PWR0113
U 1 1 5FA1DDDA
P 900 2400
F 0 "#PWR0113" H 900 2150 50  0001 C CNN
F 1 "GND" H 905 2227 50  0000 C CNN
F 2 "" H 900 2400 50  0001 C CNN
F 3 "" H 900 2400 50  0001 C CNN
	1    900  2400
	1    0    0    -1  
$EndComp
Connection ~ 900  2400
$Comp
L MainMush:320x240_TFT_Touchscreen U2
U 1 1 5FC3543A
P 6300 2350
F 0 "U2" H 6700 3200 50  0000 L CNN
F 1 "320x240_TFT_Touchscreen" V 6700 1850 50  0000 L CNN
F 2 "MainMush:320x240 TFT Touchscreen" H 6300 2350 50  0001 C CNN
F 3 "" H 6300 2350 50  0001 C CNN
	1    6300 2350
	1    0    0    -1  
$EndComp
Text GLabel 5850 2000 0    50   BiDi ~ 0
3.3V
Text GLabel 5850 2100 0    50   BiDi ~ 0
D9
Text GLabel 5850 2200 0    50   BiDi ~ 0
D11
Text GLabel 5850 2500 0    50   BiDi ~ 0
D12
Text GLabel 5850 2600 0    50   BiDi ~ 0
D13
Text GLabel 5850 2700 0    50   BiDi ~ 0
D8
Text GLabel 2250 2750 0    50   BiDi ~ 0
D8
Text GLabel 5850 2300 0    50   BiDi ~ 0
D13
Text GLabel 5850 2800 0    50   BiDi ~ 0
D11
Text GLabel 5850 2900 0    50   BiDi ~ 0
D12
Text GLabel 4450 2050 2    50   BiDi ~ 0
3.3V
Wire Wire Line
	4800 2000 4800 1950
Wire Wire Line
	4800 1950 4450 1950
NoConn ~ 4450 3750
NoConn ~ 4450 3850
NoConn ~ 2250 3750
NoConn ~ 2250 3850
Wire Wire Line
	5400 1650 5400 1700
Wire Wire Line
	5400 1700 5850 1700
$Comp
L Device:R_US R1
U 1 1 5FC42311
P 5400 2050
F 0 "R1" H 5250 2300 50  0000 L CNN
F 1 "100ohm" V 5250 1900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5440 2040 50  0001 C CNN
F 3 "~" H 5400 2050 50  0001 C CNN
	1    5400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1900 5400 1700
Connection ~ 5400 1700
Wire Wire Line
	5400 2200 5400 2400
Wire Wire Line
	5400 2400 5850 2400
Text GLabel 2250 4150 0    50   BiDi ~ 0
D32
Text GLabel 5850 3000 0    50   BiDi ~ 0
D32
$EndSCHEMATC
