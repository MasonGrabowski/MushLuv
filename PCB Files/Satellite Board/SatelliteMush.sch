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
L SatelliteMush:DHT22 U1
U 1 1 5F99421E
P 5900 2800
F 0 "U1" V 5600 3150 50  0000 L CNN
F 1 "DHT22" H 5800 2950 50  0000 L CNN
F 2 "SatelliteMush:DHT22" H 5900 2800 50  0001 C CNN
F 3 "" H 5900 2800 50  0001 C CNN
	1    5900 2800
	0    1    1    0   
$EndComp
$Comp
L SatelliteMush:CCS811 U2
U 1 1 5F994631
P 5950 4300
F 0 "U2" V 5400 4450 50  0000 L CNN
F 1 "CCS811" H 5800 4450 50  0000 L CNN
F 2 "SatelliteMush:CCS811" H 5950 4300 50  0001 C CNN
F 3 "" H 5950 4300 50  0001 C CNN
	1    5950 4300
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5F994C8B
P 2800 3700
F 0 "J1" H 2850 3275 50  0001 C CNN
F 1 "Conn_02x05_Odd_Even" H 2850 3367 50  0001 C CNN
F 2 "SatelliteMush:10pin_ribboncable_connector" H 2800 3700 50  0001 C CNN
F 3 "~" H 2800 3700 50  0001 C CNN
	1    2800 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F997501
P 2400 4000
F 0 "#PWR0101" H 2400 3750 50  0001 C CNN
F 1 "GND" H 2405 3827 50  0000 C CNN
F 2 "" H 2400 4000 50  0001 C CNN
F 3 "" H 2400 4000 50  0001 C CNN
	1    2400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4000 2400 3900
Wire Wire Line
	2400 3500 2500 3500
Wire Wire Line
	2500 3600 2400 3600
Connection ~ 2400 3600
Wire Wire Line
	2400 3600 2400 3500
Wire Wire Line
	2500 3700 2400 3700
Connection ~ 2400 3700
Wire Wire Line
	2400 3700 2400 3600
Wire Wire Line
	2500 3800 2400 3800
Connection ~ 2400 3800
Wire Wire Line
	2400 3800 2400 3700
Wire Wire Line
	2500 3900 2400 3900
Connection ~ 2400 3900
Wire Wire Line
	2400 3900 2400 3800
Text GLabel 3000 3800 2    50   BiDi ~ 0
D4
Text GLabel 3200 3700 2    50   BiDi ~ 0
SDA
Text GLabel 3450 3600 2    50   BiDi ~ 0
SCL
NoConn ~ 3000 3500
$Comp
L power:+5V #PWR0102
U 1 1 5F93BE66
P 3850 3350
F 0 "#PWR0102" H 3850 3200 50  0001 C CNN
F 1 "+5V" H 3865 3523 50  0000 C CNN
F 2 "" H 3850 3350 50  0001 C CNN
F 3 "" H 3850 3350 50  0001 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3900 3850 3350
Wire Wire Line
	3000 3900 3200 3900
Wire Wire Line
	3450 3600 3000 3600
Wire Wire Line
	3200 3700 3000 3700
$Comp
L power:+5V #PWR0103
U 1 1 5F948D47
P 5250 2300
F 0 "#PWR0103" H 5250 2150 50  0001 C CNN
F 1 "+5V" H 5265 2473 50  0000 C CNN
F 2 "" H 5250 2300 50  0001 C CNN
F 3 "" H 5250 2300 50  0001 C CNN
	1    5250 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5F94A9C4
P 5250 3750
F 0 "#PWR0104" H 5250 3600 50  0001 C CNN
F 1 "+5V" H 5265 3923 50  0000 C CNN
F 2 "" H 5250 3750 50  0001 C CNN
F 3 "" H 5250 3750 50  0001 C CNN
	1    5250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3750 5250 3950
Wire Wire Line
	5250 3950 5450 3950
NoConn ~ 5450 4050
$Comp
L power:GND #PWR0105
U 1 1 5F94AFA7
P 5000 4750
F 0 "#PWR0105" H 5000 4500 50  0001 C CNN
F 1 "GND" H 5005 4577 50  0000 C CNN
F 2 "" H 5000 4750 50  0001 C CNN
F 3 "" H 5000 4750 50  0001 C CNN
	1    5000 4750
	1    0    0    -1  
$EndComp
NoConn ~ 5450 2850
Text GLabel 5200 2750 0    50   BiDi ~ 0
D4
Text GLabel 5300 4250 0    50   BiDi ~ 0
SDA
Text GLabel 5400 4350 0    50   BiDi ~ 0
SCL
NoConn ~ 5450 4550
NoConn ~ 5450 4650
Wire Wire Line
	5400 4350 5450 4350
Wire Wire Line
	5300 4250 5450 4250
Wire Wire Line
	5450 2950 5000 2950
Wire Wire Line
	5000 2950 5000 4150
Wire Wire Line
	5450 4450 5000 4450
Connection ~ 5000 4450
Wire Wire Line
	5000 4450 5000 4750
Wire Wire Line
	5450 4150 5000 4150
Connection ~ 5000 4150
Wire Wire Line
	5000 4150 5000 4450
Wire Notes Line
	2100 4700 2100 2850
Wire Notes Line
	2100 2850 1100 2850
Wire Notes Line
	2100 4700 1100 4700
Text Notes 1350 3800 0    50   ~ 10
Main Board\n (teensy)
Wire Wire Line
	5200 2750 5250 2750
$Comp
L Device:R_US R1
U 1 1 5F981BA4
P 5250 2600
F 0 "R1" H 5318 2646 50  0001 L CNN
F 1 "10k" H 5318 2600 50  0000 L CNN
F 2 "SatelliteMush:resistor" V 5290 2590 50  0001 C CNN
F 3 "~" H 5250 2600 50  0001 C CNN
	1    5250 2600
	1    0    0    -1  
$EndComp
Connection ~ 5250 2750
Wire Wire Line
	5250 2750 5450 2750
Wire Wire Line
	5450 2650 5450 2450
Wire Wire Line
	5450 2450 5250 2450
Wire Wire Line
	5250 2300 5250 2450
Connection ~ 5250 2450
$Comp
L Device:CP1 C2
U 1 1 5F9EF152
P 3600 4050
F 0 "C2" H 3715 4096 50  0000 L CNN
F 1 "100uf" H 3715 4005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3600 4050 50  0001 C CNN
F 3 "~" H 3600 4050 50  0001 C CNN
	1    3600 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F9EFFEE
P 3200 4050
F 0 "C1" H 3315 4096 50  0000 L CNN
F 1 "0.1uf" H 3315 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3238 3900 50  0001 C CNN
F 3 "~" H 3200 4050 50  0001 C CNN
	1    3200 4050
	1    0    0    -1  
$EndComp
Connection ~ 3200 3900
Wire Wire Line
	3200 3900 3600 3900
Connection ~ 3600 3900
Wire Wire Line
	3600 3900 3850 3900
$Comp
L power:GND #PWR0106
U 1 1 5F9F3450
P 3200 4200
F 0 "#PWR0106" H 3200 3950 50  0001 C CNN
F 1 "GND" H 3205 4027 50  0000 C CNN
F 2 "" H 3200 4200 50  0001 C CNN
F 3 "" H 3200 4200 50  0001 C CNN
	1    3200 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F9F406E
P 3600 4200
F 0 "#PWR0107" H 3600 3950 50  0001 C CNN
F 1 "GND" H 3605 4027 50  0000 C CNN
F 2 "" H 3600 4200 50  0001 C CNN
F 3 "" H 3600 4200 50  0001 C CNN
	1    3600 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
