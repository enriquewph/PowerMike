EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PowerMike"
Date "2021-09-26"
Rev "0.1"
Comp ""
Comment1 "https://github.com/enriquewph/PowerMike"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR05
U 1 1 60CF5D5F
P 2800 5750
F 0 "#PWR05" H 2800 5500 50  0001 C CNN
F 1 "GND" H 2805 5577 50  0000 C CNN
F 2 "" H 2800 5750 50  0001 C CNN
F 3 "" H 2800 5750 50  0001 C CNN
	1    2800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60D22EFD
P 2500 5100
F 0 "R4" H 2570 5146 50  0000 L CNN
F 1 "10k" H 2570 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2430 5100 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 2500 5100 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 2500 5100 50  0001 C CNN "manf#"
	1    2500 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60D235F5
P 2200 5100
F 0 "R3" H 2270 5146 50  0000 L CNN
F 1 "10k" H 2270 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2130 5100 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 2200 5100 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 2200 5100 50  0001 C CNN "manf#"
	1    2200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4950 2500 4900
Wire Wire Line
	2500 5250 2500 5300
Wire Wire Line
	2500 5300 3000 5300
Wire Wire Line
	2200 4950 2200 4900
Wire Wire Line
	2200 5250 2200 5400
Wire Wire Line
	2200 5400 3000 5400
Wire Wire Line
	2200 4900 2500 4900
$Comp
L power:+3V3 #PWR04
U 1 1 60CF6E33
P 2750 4850
F 0 "#PWR04" H 2750 4700 50  0001 C CNN
F 1 "+3V3" H 2765 5023 50  0000 C CNN
F 2 "" H 2750 4850 50  0001 C CNN
F 3 "" H 2750 4850 50  0001 C CNN
	1    2750 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4900 2750 4900
Wire Wire Line
	2750 4900 2750 4850
Connection ~ 2500 4900
Wire Wire Line
	2750 4900 2750 5500
Connection ~ 2750 4900
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 60C734C6
P 3200 5500
F 0 "J4" H 3050 5850 50  0000 L CNN
F 1 "Conn_01x05" H 3280 5451 50  0001 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 3200 5500 50  0001 C CNN
F 3 "https://app.adam-tech.com/products/download/data_sheet/196588/lha-xx-ts-data-sheet.pdf" H 3200 5500 50  0001 C CNN
F 4 "LHA-05-TS" H 3200 5500 50  0001 C CNN "manf#"
	1    3200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5750 2800 5700
Wire Wire Line
	2800 5700 3000 5700
Wire Wire Line
	2750 5500 3000 5500
$Comp
L power:+5V #PWR08
U 1 1 60C8AE42
P 2950 4850
F 0 "#PWR08" H 2950 4700 50  0001 C CNN
F 1 "+5V" H 2965 5023 50  0000 C CNN
F 2 "" H 2950 4850 50  0001 C CNN
F 3 "" H 2950 4850 50  0001 C CNN
	1    2950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4850 2950 5600
Wire Wire Line
	2950 5600 3000 5600
$Comp
L Device:C C8
U 1 1 60CA50A5
P 10200 1500
F 0 "C8" H 10315 1546 50  0000 L CNN
F 1 "100nF" H 10315 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 10238 1350 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 10200 1500 50  0001 C CNN
F 4 "50V" H 10200 1500 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 10200 1500 50  0001 C CNN "manf#"
	1    10200 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 60CDA118
P 10200 1650
F 0 "#PWR037" H 10200 1400 50  0001 C CNN
F 1 "GND" H 10205 1477 50  0000 C CNN
F 2 "" H 10200 1650 50  0001 C CNN
F 3 "" H 10200 1650 50  0001 C CNN
	1    10200 1650
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR036
U 1 1 60D96616
P 10200 1350
F 0 "#PWR036" H 10200 1200 50  0001 C CNN
F 1 "+3V3" H 10215 1523 50  0000 C CNN
F 2 "" H 10200 1350 50  0001 C CNN
F 3 "" H 10200 1350 50  0001 C CNN
	1    10200 1350
	-1   0    0    -1  
$EndComp
Text GLabel 7400 1500 0    39   Input ~ 0
RESET
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 6102D893
P 10100 5800
F 0 "J8" H 10050 6000 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 10180 5751 50  0001 L CNN
F 2 "libs:TerminalBlock_bornier-3_P5.08mm" H 10100 5800 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 10100 5800 50  0001 C CNN
F 4 "796636-3" H 10100 5800 50  0001 C CNN "manf#"
	1    10100 5800
	1    0    0    -1  
$EndComp
Text GLabel 7600 6450 0    39   Input ~ 0
RELAY_2
Text GLabel 5200 6650 2    39   Output ~ 0
RXD0
Text GLabel 5200 6750 2    39   Output ~ 0
GPIO0
Text GLabel 5200 6450 2    39   Output ~ 0
RESET
Text GLabel 5200 6550 2    39   Input ~ 0
TXD0
$Comp
L power:GND #PWR01
U 1 1 60D3B2F3
P 1950 7100
F 0 "#PWR01" H 1950 6850 50  0001 C CNN
F 1 "GND" H 1955 6927 50  0000 C CNN
F 2 "" H 1950 7100 50  0001 C CNN
F 3 "" H 1950 7100 50  0001 C CNN
	1    1950 7100
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60D3B594
P 2250 7100
F 0 "SW2" H 2400 7200 50  0000 C CNN
F 1 "SW_Push" H 2250 7294 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2250 7300 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2250 7300 50  0001 C CNN
F 4 "1-1825910-0" H 2250 7100 50  0001 C CNN "manf#"
	1    2250 7100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60D3BEF3
P 2250 6850
F 0 "SW1" H 2400 6950 50  0000 C CNN
F 1 "SW_Push" H 2250 7044 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2250 7050 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2250 7050 50  0001 C CNN
F 4 "1-1825910-0" H 2250 6850 50  0001 C CNN "manf#"
	1    2250 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7100 2050 7100
Wire Wire Line
	1950 7100 1950 6850
Wire Wire Line
	1950 6850 2050 6850
$Comp
L Device:R R5
U 1 1 60D55C7D
P 2550 6600
F 0 "R5" H 2620 6646 50  0000 L CNN
F 1 "10k" H 2620 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2480 6600 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 2550 6600 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 2550 6600 50  0001 C CNN "manf#"
	1    2550 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60D569B0
P 2850 6600
F 0 "R6" H 2920 6646 50  0000 L CNN
F 1 "10k" H 2920 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2780 6600 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 2850 6600 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 2850 6600 50  0001 C CNN "manf#"
	1    2850 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6750 2550 6850
Wire Wire Line
	2550 6850 2450 6850
Wire Wire Line
	2450 7100 2850 7100
Wire Wire Line
	2850 7100 2850 6750
$Comp
L power:+3V3 #PWR02
U 1 1 60D70363
P 2550 6450
F 0 "#PWR02" H 2550 6300 50  0001 C CNN
F 1 "+3V3" H 2565 6623 50  0000 C CNN
F 2 "" H 2550 6450 50  0001 C CNN
F 3 "" H 2550 6450 50  0001 C CNN
	1    2550 6450
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 60D70DA7
P 2850 6450
F 0 "#PWR06" H 2850 6300 50  0001 C CNN
F 1 "+3V3" H 2865 6623 50  0000 C CNN
F 2 "" H 2850 6450 50  0001 C CNN
F 3 "" H 2850 6450 50  0001 C CNN
	1    2850 6450
	-1   0    0    -1  
$EndComp
Connection ~ 1950 7100
Text GLabel 3000 6850 2    39   Output ~ 0
RESET
Text GLabel 3000 7100 2    39   Output ~ 0
GPIO0
Wire Wire Line
	3000 6850 2550 6850
Connection ~ 2550 6850
Wire Wire Line
	3000 7100 2850 7100
Connection ~ 2850 7100
Text GLabel 2000 5300 0    39   BiDi ~ 0
SCL
Text GLabel 2000 5400 0    39   BiDi ~ 0
SDA
Wire Wire Line
	2000 5400 2200 5400
Connection ~ 2200 5400
Wire Wire Line
	2000 5300 2500 5300
Connection ~ 2500 5300
Text GLabel 9500 1700 2    39   BiDi ~ 0
SCL
Text GLabel 9500 1800 2    39   BiDi ~ 0
SDA
Text GLabel 5900 5150 2    39   Output ~ 0
TEMP
$Comp
L Device:C C9
U 1 1 60D9F4EC
P 10200 2300
F 0 "C9" H 10315 2346 50  0000 L CNN
F 1 "1uF" H 10315 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 10238 2150 50  0001 C CNN
F 3 "https://www.samsungsem.com/resources/file/global/support/product_catalog/MLCC.pdf" H 10200 2300 50  0001 C CNN
F 4 "50V" H 10200 2300 50  0001 C CNN "Voltage"
F 5 "CL31F105ZBFNNNE" H 10200 2300 50  0001 C CNN "manf#"
	1    10200 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 60D9F504
P 10200 2450
F 0 "#PWR039" H 10200 2200 50  0001 C CNN
F 1 "GND" H 10205 2277 50  0000 C CNN
F 2 "" H 10200 2450 50  0001 C CNN
F 3 "" H 10200 2450 50  0001 C CNN
	1    10200 2450
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR038
U 1 1 60D9F50E
P 10200 2150
F 0 "#PWR038" H 10200 2000 50  0001 C CNN
F 1 "+3V3" H 10215 2323 50  0000 C CNN
F 2 "" H 10200 2150 50  0001 C CNN
F 3 "" H 10200 2150 50  0001 C CNN
	1    10200 2150
	-1   0    0    -1  
$EndComp
Text GLabel 9500 1600 2    39   Output ~ 0
RXD0
Text GLabel 9500 1500 2    39   Input ~ 0
TXD0
Text GLabel 9500 1900 2    39   Input ~ 0
GPIO0
$Comp
L power:GND #PWR033
U 1 1 60B6EFE9
P 9500 2600
F 0 "#PWR033" H 9500 2350 50  0001 C CNN
F 1 "GND" H 9505 2427 50  0000 C CNN
F 2 "" H 9500 2600 50  0001 C CNN
F 3 "" H 9500 2600 50  0001 C CNN
	1    9500 2600
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR028
U 1 1 60B6F944
P 7050 1450
F 0 "#PWR028" H 7050 1300 50  0001 C CNN
F 1 "+3V3" H 7065 1623 50  0000 C CNN
F 2 "" H 7050 1450 50  0001 C CNN
F 3 "" H 7050 1450 50  0001 C CNN
	1    7050 1450
	-1   0    0    -1  
$EndComp
$Comp
L ESP8266:ESP-12E U3
U 1 1 61514EB0
P 8500 1800
F 0 "U3" H 8500 2565 50  0000 C CNN
F 1 "ESP-12E" H 8500 2474 50  0000 C CNN
F 2 "ESP8266:ESP-12E_SMD" H 8500 1800 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 8500 1800 50  0001 C CNN
F 4 "ESP-12E" H 8500 1800 50  0001 C CNN "manf#"
	1    8500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2200 9400 2200
Wire Wire Line
	9500 1600 9400 1600
Wire Wire Line
	9400 1500 9500 1500
Wire Wire Line
	9500 1900 9400 1900
Wire Wire Line
	9500 1700 9400 1700
Wire Wire Line
	9500 1800 9400 1800
NoConn ~ 8750 2700
NoConn ~ 8350 2700
NoConn ~ 8650 2700
NoConn ~ 8450 2700
NoConn ~ 8550 2700
NoConn ~ 8250 2700
Text GLabel 7400 1600 0    39   Input ~ 0
TEMP
Wire Wire Line
	7400 1600 7600 1600
$Comp
L Device:R R16
U 1 1 61652449
P 9800 1700
F 0 "R16" H 9870 1746 50  0000 L CNN
F 1 "10k" H 9870 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9730 1700 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 9800 1700 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 9800 1700 50  0001 C CNN "manf#"
	1    9800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2000 9800 2000
$Comp
L power:+3V3 #PWR034
U 1 1 61656891
P 9800 1450
F 0 "#PWR034" H 9800 1300 50  0001 C CNN
F 1 "+3V3" H 9815 1623 50  0000 C CNN
F 2 "" H 9800 1450 50  0001 C CNN
F 3 "" H 9800 1450 50  0001 C CNN
	1    9800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1550 9800 1450
Wire Wire Line
	9800 1850 9800 2000
$Comp
L Device:R R17
U 1 1 6166E9AD
P 9800 2350
F 0 "R17" H 9870 2396 50  0000 L CNN
F 1 "10k" H 9870 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9730 2350 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 9800 2350 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 9800 2350 50  0001 C CNN "manf#"
	1    9800 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 6166F7A3
P 9800 2600
F 0 "#PWR035" H 9800 2350 50  0001 C CNN
F 1 "GND" H 9805 2427 50  0000 C CNN
F 2 "" H 9800 2600 50  0001 C CNN
F 3 "" H 9800 2600 50  0001 C CNN
	1    9800 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 2600 9800 2500
Wire Wire Line
	9500 2200 9500 2600
Wire Wire Line
	9800 2200 9800 2100
Wire Wire Line
	9800 2100 9400 2100
Wire Wire Line
	7400 1500 7500 1500
Wire Wire Line
	7600 1800 7500 1800
Wire Wire Line
	7500 1800 7500 1500
Connection ~ 7500 1500
Wire Wire Line
	7500 1500 7600 1500
Wire Wire Line
	7050 1450 7050 1700
Wire Wire Line
	7050 1700 7600 1700
Wire Wire Line
	7050 1700 7050 2200
Wire Wire Line
	7050 2200 7600 2200
Connection ~ 7050 1700
Text GLabel 7400 1900 0    39   Output ~ 0
RELAY_1
Text GLabel 7400 2100 0    39   Input ~ 0
RDY
Wire Wire Line
	7600 1900 7400 1900
Wire Wire Line
	7600 2100 7400 2100
Wire Wire Line
	7400 2000 7600 2000
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 61701F3F
P 4550 6650
AR Path="/60DD98A5/61701F3F" Ref="J?"  Part="1" 
AR Path="/61701F3F" Ref="J6"  Part="1" 
F 0 "J6" H 4500 6950 50  0000 L CNN
F 1 "ICSP" H 4450 6250 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 4550 6650 50  0001 C CNN
F 3 "~" H 4550 6650 50  0001 C CNN
	1    4550 6650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61701F49
P 4900 7100
AR Path="/60DD98A5/61701F49" Ref="#PWR?"  Part="1" 
AR Path="/61701F49" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 4900 6850 50  0001 C CNN
F 1 "GND" H 4905 6927 50  0000 C CNN
F 2 "" H 4900 7100 50  0001 C CNN
F 3 "" H 4900 7100 50  0001 C CNN
	1    4900 7100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61701F4F
P 5050 6350
AR Path="/60DD98A5/61701F4F" Ref="#PWR?"  Part="1" 
AR Path="/61701F4F" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 5050 6200 50  0001 C CNN
F 1 "+3V3" H 5065 6523 50  0000 C CNN
F 2 "" H 5050 6350 50  0001 C CNN
F 3 "" H 5050 6350 50  0001 C CNN
	1    5050 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6450 5200 6450
Wire Wire Line
	4750 6550 5200 6550
Wire Wire Line
	4750 6650 5200 6650
Wire Wire Line
	4750 6750 5200 6750
Wire Wire Line
	4750 6850 4900 6850
Wire Wire Line
	4900 6850 4900 7100
Wire Wire Line
	4750 6950 5050 6950
Wire Wire Line
	5050 6950 5050 6350
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 617B20F3
P 4450 5150
AR Path="/617B20F3" Ref="J5"  Part="1" 
AR Path="/612F4D6E/617B20F3" Ref="J?"  Part="1" 
AR Path="/61323238/617B20F3" Ref="J?"  Part="1" 
F 0 "J5" H 4400 5400 50  0000 L CNN
F 1 "Conn_01x03" H 4530 5101 50  0001 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 4450 5150 50  0001 C CNN
F 3 "https://app.adam-tech.com/products/download/data_sheet/196588/lha-xx-ts-data-sheet.pdf" H 4450 5150 50  0001 C CNN
F 4 "LHA-03-TS" H 4450 5150 50  0001 C CNN "manf#"
	1    4450 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 5650 4950 5550
Wire Wire Line
	4950 5150 4950 5250
Wire Wire Line
	4650 5150 4950 5150
Wire Wire Line
	4750 5250 4650 5250
Wire Wire Line
	4750 5650 4750 5250
$Comp
L power:+3V3 #PWR023
U 1 1 617B20FE
P 5450 4950
AR Path="/617B20FE" Ref="#PWR023"  Part="1" 
AR Path="/612F4D6E/617B20FE" Ref="#PWR?"  Part="1" 
AR Path="/61323238/617B20FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 5450 4800 50  0001 C CNN
F 1 "+3V3" H 5465 5123 50  0000 C CNN
F 2 "" H 5450 4950 50  0001 C CNN
F 3 "" H 5450 4950 50  0001 C CNN
	1    5450 4950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 617B2104
P 4950 5650
AR Path="/617B2104" Ref="#PWR017"  Part="1" 
AR Path="/612F4D6E/617B2104" Ref="#PWR?"  Part="1" 
AR Path="/61323238/617B2104" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 4950 5400 50  0001 C CNN
F 1 "GND" H 4955 5477 50  0000 C CNN
F 2 "" H 4950 5650 50  0001 C CNN
F 3 "" H 4950 5650 50  0001 C CNN
	1    4950 5650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 617B210A
P 4750 5650
AR Path="/617B210A" Ref="#PWR015"  Part="1" 
AR Path="/612F4D6E/617B210A" Ref="#PWR?"  Part="1" 
AR Path="/61323238/617B210A" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 4750 5400 50  0001 C CNN
F 1 "GND" H 4755 5477 50  0000 C CNN
F 2 "" H 4750 5650 50  0001 C CNN
F 3 "" H 4750 5650 50  0001 C CNN
	1    4750 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 617B2112
P 4950 5400
AR Path="/612F4D6E/617B2112" Ref="C?"  Part="1" 
AR Path="/61323238/617B2112" Ref="C?"  Part="1" 
AR Path="/617B2112" Ref="C4"  Part="1" 
F 0 "C4" H 5065 5446 50  0000 L CNN
F 1 "100nF" H 5065 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4988 5250 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 4950 5400 50  0001 C CNN
F 4 "50V" H 4950 5400 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 4950 5400 50  0001 C CNN "manf#"
	1    4950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5650 5450 5550
$Comp
L power:GND #PWR024
U 1 1 617B2119
P 5450 5650
AR Path="/617B2119" Ref="#PWR024"  Part="1" 
AR Path="/612F4D6E/617B2119" Ref="#PWR?"  Part="1" 
AR Path="/61323238/617B2119" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 5450 5400 50  0001 C CNN
F 1 "GND" H 5455 5477 50  0000 C CNN
F 2 "" H 5450 5650 50  0001 C CNN
F 3 "" H 5450 5650 50  0001 C CNN
	1    5450 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 617B2121
P 5450 5400
AR Path="/612F4D6E/617B2121" Ref="C?"  Part="1" 
AR Path="/61323238/617B2121" Ref="C?"  Part="1" 
AR Path="/617B2121" Ref="C6"  Part="1" 
F 0 "C6" H 5565 5446 50  0000 L CNN
F 1 "100nF" H 5565 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 5488 5250 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 5450 5400 50  0001 C CNN
F 4 "50V" H 5450 5400 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 5450 5400 50  0001 C CNN "manf#"
	1    5450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5250 5450 5050
Wire Wire Line
	4650 5050 5450 5050
Connection ~ 4950 5150
Wire Wire Line
	4950 5150 5900 5150
Wire Wire Line
	5450 4950 5450 5050
Connection ~ 5450 5050
Text Notes 4400 5400 0    50   ~ 0
LM35
$Comp
L Transistor_BJT:BC817 Q2
U 1 1 617CAA26
P 8250 6450
AR Path="/617CAA26" Ref="Q2"  Part="1" 
AR Path="/6102C68D/617CAA26" Ref="Q?"  Part="1" 
AR Path="/610A0B30/617CAA26" Ref="Q?"  Part="1" 
AR Path="/610C441E/617CAA26" Ref="Q?"  Part="1" 
F 0 "Q2" H 8441 6496 50  0000 L CNN
F 1 "BC817" H 8441 6405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8450 6375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC817-16LT1-D.PDF" H 8250 6450 50  0001 L CNN
F 4 "SBC817-40LT1G" H 8250 6450 50  0001 C CNN "manf#"
	1    8250 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 617CAA2D
P 7850 6450
AR Path="/617CAA2D" Ref="R15"  Part="1" 
AR Path="/6102C68D/617CAA2D" Ref="R?"  Part="1" 
AR Path="/610A0B30/617CAA2D" Ref="R?"  Part="1" 
AR Path="/610C441E/617CAA2D" Ref="R?"  Part="1" 
F 0 "R15" V 7750 6350 50  0000 C CNN
F 1 "1k" V 7750 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7780 6450 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 7850 6450 50  0001 C CNN
F 4 "RC1206FR-071KL" H 7850 6450 50  0001 C CNN "manf#"
	1    7850 6450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D5
U 1 1 617CAA34
P 8350 5800
AR Path="/617CAA34" Ref="D5"  Part="1" 
AR Path="/6102C68D/617CAA34" Ref="D?"  Part="1" 
AR Path="/610A0B30/617CAA34" Ref="D?"  Part="1" 
AR Path="/610C441E/617CAA34" Ref="D?"  Part="1" 
F 0 "D5" V 8300 5600 50  0000 L CNN
F 1 "M7" V 8400 5600 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 8350 5625 50  0001 C CNN
F 3 "https://www.vtrons.com/images/DIODE%20M7.pdf" H 8350 5800 50  0001 C CNN
F 4 "M7" H 8350 5800 50  0001 C CNN "manf#"
	1    8350 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 617CAA3A
P 8350 6700
AR Path="/617CAA3A" Ref="#PWR032"  Part="1" 
AR Path="/6102C68D/617CAA3A" Ref="#PWR?"  Part="1" 
AR Path="/610A0B30/617CAA3A" Ref="#PWR?"  Part="1" 
AR Path="/610C441E/617CAA3A" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 8350 6450 50  0001 C CNN
F 1 "GND" H 8355 6527 50  0000 C CNN
F 2 "" H 8350 6700 50  0001 C CNN
F 3 "" H 8350 6700 50  0001 C CNN
	1    8350 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 6100 9000 6200
Wire Wire Line
	9000 5500 9000 5400
Wire Wire Line
	8050 6450 8000 6450
Wire Wire Line
	8350 6700 8350 6650
$Comp
L Relay:SANYOU_SRD_Form_C K2
U 1 1 617CAA45
P 9200 5800
AR Path="/617CAA45" Ref="K2"  Part="1" 
AR Path="/6102C68D/617CAA45" Ref="K?"  Part="1" 
AR Path="/610A0B30/617CAA45" Ref="K?"  Part="1" 
AR Path="/610C441E/617CAA45" Ref="K?"  Part="1" 
F 0 "K2" H 8800 6050 50  0000 L CNN
F 1 "RELAY 0510" H 9630 5755 50  0001 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 9650 5750 50  0001 L CNN
F 3 "https://pdf1.alldatasheet.es/datasheet-pdf/view/1131916/SUNHOLD/RAS-0510ML1.html" H 9200 5800 50  0001 C CNN
F 4 "RAS0510" H 9200 5800 50  0001 C CNN "manf#"
	1    9200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 6200 8350 6250
Wire Wire Line
	8350 6200 8350 5950
Connection ~ 8350 6200
Wire Wire Line
	8350 5650 8350 5400
Connection ~ 8350 5400
Wire Wire Line
	8350 5400 8350 5350
Wire Wire Line
	9700 6200 9400 6200
Wire Wire Line
	9400 6200 9400 6100
Wire Wire Line
	9700 5400 9500 5400
Wire Wire Line
	9500 5400 9500 5500
Wire Wire Line
	9300 5250 9300 5500
Wire Wire Line
	7650 5850 7650 5750
$Comp
L Device:LED D3
U 1 1 617CAA5D
P 7650 5600
AR Path="/617CAA5D" Ref="D3"  Part="1" 
AR Path="/60CF66AD/617CAA5D" Ref="D?"  Part="1" 
AR Path="/6102C68D/617CAA5D" Ref="D?"  Part="1" 
AR Path="/610A0B30/617CAA5D" Ref="D?"  Part="1" 
AR Path="/610C441E/617CAA5D" Ref="D?"  Part="1" 
F 0 "D3" V 7689 5482 50  0000 R CNN
F 1 "LED" V 7598 5482 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7650 5600 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Stanley%20Electric%20PDFs/1101W_Series.pdf" H 7650 5600 50  0001 C CNN
F 4 "BR1101W-TR" H 7650 5600 50  0001 C CNN "manf#"
	1    7650 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 617CAA64
P 7650 6000
AR Path="/617CAA64" Ref="R13"  Part="1" 
AR Path="/60CF66AD/617CAA64" Ref="R?"  Part="1" 
AR Path="/6102C68D/617CAA64" Ref="R?"  Part="1" 
AR Path="/610A0B30/617CAA64" Ref="R?"  Part="1" 
AR Path="/610C441E/617CAA64" Ref="R?"  Part="1" 
F 0 "R13" H 7720 6046 50  0000 L CNN
F 1 "220" H 7720 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7580 6000 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 7650 6000 50  0001 C CNN
F 4 "RC1206FR-07220RL" H 7650 6000 50  0001 C CNN "manf#"
	1    7650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5450 7650 5400
Wire Wire Line
	7650 5400 8350 5400
Wire Wire Line
	7650 6150 7650 6200
Wire Wire Line
	7650 6200 8350 6200
Wire Wire Line
	8350 5400 9000 5400
Wire Wire Line
	8350 6200 9000 6200
$Comp
L power:+5V #PWR031
U 1 1 617CAA71
P 8350 5350
AR Path="/617CAA71" Ref="#PWR031"  Part="1" 
AR Path="/6102C68D/617CAA71" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 8350 5200 50  0001 C CNN
F 1 "+5V" H 8365 5523 50  0000 C CNN
F 2 "" H 8350 5350 50  0001 C CNN
F 3 "" H 8350 5350 50  0001 C CNN
	1    8350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 6450 7700 6450
Wire Wire Line
	9700 6200 9700 5800
Wire Wire Line
	9700 5800 9900 5800
Wire Wire Line
	9700 5400 9700 5700
Wire Wire Line
	9700 5700 9900 5700
Wire Wire Line
	9800 5250 9800 5900
Wire Wire Line
	9800 5900 9900 5900
Wire Wire Line
	9300 5250 9800 5250
Text Notes 2300 5650 0    50   Italic 0
I2C HEADER
$Comp
L power:+3V3 #PWR026
U 1 1 617A71AE
P 6350 2700
F 0 "#PWR026" H 6350 2550 50  0001 C CNN
F 1 "+3V3" H 6365 2873 50  0000 C CNN
F 2 "" H 6350 2700 50  0001 C CNN
F 3 "" H 6350 2700 50  0001 C CNN
	1    6350 2700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 617A71A8
P 6350 3000
F 0 "#PWR027" H 6350 2750 50  0001 C CNN
F 1 "GND" H 6355 2827 50  0000 C CNN
F 2 "" H 6350 3000 50  0001 C CNN
F 3 "" H 6350 3000 50  0001 C CNN
	1    6350 3000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 617A71A2
P 6350 2850
F 0 "C7" H 6465 2896 50  0000 L CNN
F 1 "100nF" H 6465 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6388 2700 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 6350 2850 50  0001 C CNN
F 4 "50V" H 6350 2850 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 6350 2850 50  0001 C CNN "manf#"
	1    6350 2850
	1    0    0    -1  
$EndComp
Text Notes 5550 3300 0    50   ~ 0
0x48
Wire Wire Line
	5950 3100 5850 3100
Wire Wire Line
	5950 3200 5950 3100
$Comp
L power:GND #PWR025
U 1 1 616DB6B4
P 5950 3200
F 0 "#PWR025" H 5950 2950 50  0001 C CNN
F 1 "GND" H 5955 3027 50  0000 C CNN
F 2 "" H 5950 3200 50  0001 C CNN
F 3 "" H 5950 3200 50  0001 C CNN
	1    5950 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 2700 5850 2700
Text GLabel 5900 2700 2    39   Output ~ 0
RDY
Wire Wire Line
	5900 3000 5850 3000
Wire Wire Line
	5900 2900 5850 2900
Text GLabel 5900 3000 2    39   BiDi ~ 0
SDA
Text GLabel 5900 2900 2    39   BiDi ~ 0
SCL
Wire Wire Line
	5450 3350 5450 3300
$Comp
L power:GND #PWR022
U 1 1 616C2EF7
P 5450 3350
F 0 "#PWR022" H 5450 3100 50  0001 C CNN
F 1 "GND" H 5455 3177 50  0000 C CNN
F 2 "" H 5450 3350 50  0001 C CNN
F 3 "" H 5450 3350 50  0001 C CNN
	1    5450 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 2350 5450 2400
Connection ~ 3800 1050
Wire Wire Line
	2950 1050 3400 1050
Connection ~ 5450 1050
Wire Wire Line
	5450 1050 5100 1050
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 6182613C
P 1000 1100
AR Path="/6182613C" Ref="J1"  Part="1" 
AR Path="/60CF66AD/6182613C" Ref="J?"  Part="1" 
F 0 "J1" H 1000 1200 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 918 1226 50  0001 C CNN
F 2 "libs:TerminalBlock_bornier-2_P5.08mm" H 1000 1100 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 1000 1100 50  0001 C CNN
F 4 "796636-2" H 1000 1100 50  0001 C CNN "manf#"
	1    1000 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4700 1600 4700 1450
Connection ~ 4700 1600
Wire Wire Line
	4200 1600 4700 1600
Wire Wire Line
	4200 1200 4200 1600
Wire Wire Line
	4300 1200 4200 1200
Wire Wire Line
	3800 1050 4300 1050
$Comp
L kf33:KF33BD-TR U?
U 1 1 6182612F
P 4700 1050
AR Path="/60CF66AD/6182612F" Ref="U?"  Part="1" 
AR Path="/6182612F" Ref="U1"  Part="1" 
F 0 "U1" H 4700 1315 50  0000 C CNN
F 1 "KF33BD-TR" H 4700 1224 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 4600 1100 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/d7/80/b5/a2/a2/93/49/59/CD00000970.pdf/files/CD00000970.pdf/jcr:content/translations/en.CD00000970.pdf" H 4600 1100 50  0001 C CNN
	1    4700 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61826129
P 3800 1500
AR Path="/61826129" Ref="C2"  Part="1" 
AR Path="/60CF66AD/61826129" Ref="C?"  Part="1" 
F 0 "C2" H 3850 1600 50  0000 L CNN
F 1 "100nF" H 3850 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3838 1350 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 3800 1500 50  0001 C CNN
F 4 "50V" H 3850 1700 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 3850 1700 50  0001 C CNN "manf#"
	1    3800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1050 3400 1100
Wire Wire Line
	2950 1850 2950 1650
Wire Wire Line
	2950 1350 2950 1050
Wire Wire Line
	4700 1850 4700 1600
Wire Wire Line
	5450 1850 5450 1650
Wire Wire Line
	5450 1050 5450 1350
Wire Wire Line
	3800 1650 3800 1850
Wire Wire Line
	3800 1350 3800 1050
Wire Wire Line
	3400 1850 3400 1800
Wire Wire Line
	3400 1500 3400 1400
$Comp
L Device:CP C1
U 1 1 61826116
P 2950 1500
AR Path="/61826116" Ref="C1"  Part="1" 
AR Path="/60CF66AD/61826116" Ref="C?"  Part="1" 
F 0 "C1" H 3000 1600 50  0000 L CNN
F 1 "470uF" H 3000 1400 50  0000 L CNN
F 2 "libs:CAP_10x10_SMD_THT" H 2988 1350 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 2950 1500 50  0001 C CNN
F 4 "25V" H 3000 1300 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 3000 1700 50  0001 C CNN "manf#"
	1    2950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6182610E
P 2950 1850
AR Path="/6182610E" Ref="#PWR07"  Part="1" 
AR Path="/60CF66AD/6182610E" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 2950 1600 50  0001 C CNN
F 1 "GND" H 2955 1677 50  0000 C CNN
F 2 "" H 2950 1850 50  0001 C CNN
F 3 "" H 2950 1850 50  0001 C CNN
	1    2950 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 61826108
P 4700 1850
AR Path="/61826108" Ref="#PWR014"  Part="1" 
AR Path="/60CF66AD/61826108" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 4700 1600 50  0001 C CNN
F 1 "GND" H 4705 1677 50  0000 C CNN
F 2 "" H 4700 1850 50  0001 C CNN
F 3 "" H 4700 1850 50  0001 C CNN
	1    4700 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 61826102
P 5450 1850
AR Path="/61826102" Ref="#PWR020"  Part="1" 
AR Path="/60CF66AD/61826102" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 5450 1600 50  0001 C CNN
F 1 "GND" H 5455 1677 50  0000 C CNN
F 2 "" H 5450 1850 50  0001 C CNN
F 3 "" H 5450 1850 50  0001 C CNN
	1    5450 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 618260FC
P 5450 1500
AR Path="/618260FC" Ref="C5"  Part="1" 
AR Path="/60CF66AD/618260FC" Ref="C?"  Part="1" 
F 0 "C5" H 5568 1591 50  0000 L CNN
F 1 "470uF" H 5568 1500 50  0000 L CNN
F 2 "libs:CAP_10x10_SMD_THT" H 5488 1350 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 5450 1500 50  0001 C CNN
F 4 "25V" H 5568 1409 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 5568 1691 50  0001 C CNN "manf#"
	1    5450 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 618260F4
P 3800 1850
AR Path="/618260F4" Ref="#PWR011"  Part="1" 
AR Path="/60CF66AD/618260F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 3800 1600 50  0001 C CNN
F 1 "GND" H 3805 1677 50  0000 C CNN
F 2 "" H 3800 1850 50  0001 C CNN
F 3 "" H 3800 1850 50  0001 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 618260E7
P 3400 1250
AR Path="/618260E7" Ref="D1"  Part="1" 
AR Path="/60CF66AD/618260E7" Ref="D?"  Part="1" 
F 0 "D1" V 3439 1132 50  0000 R CNN
F 1 "LED" V 3348 1132 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 3400 1250 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Stanley%20Electric%20PDFs/1101W_Series.pdf" H 3400 1250 50  0001 C CNN
F 4 "BR1101W-TR" H 3439 1232 50  0001 C CNN "manf#"
	1    3400 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 618260E0
P 3400 1850
AR Path="/618260E0" Ref="#PWR09"  Part="1" 
AR Path="/60CF66AD/618260E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 3400 1600 50  0001 C CNN
F 1 "GND" H 3405 1677 50  0000 C CNN
F 2 "" H 3400 1850 50  0001 C CNN
F 3 "" H 3400 1850 50  0001 C CNN
	1    3400 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 60DE1027
P 3800 1050
F 0 "#PWR010" H 3800 900 50  0001 C CNN
F 1 "+5V" H 3815 1223 50  0000 C CNN
F 2 "" H 3800 1050 50  0001 C CNN
F 3 "" H 3800 1050 50  0001 C CNN
	1    3800 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR019
U 1 1 60D757EF
P 5450 1050
AR Path="/60D757EF" Ref="#PWR019"  Part="1" 
AR Path="/60CF66AD/60D757EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 5450 900 50  0001 C CNN
F 1 "+3V3" H 5465 1223 50  0000 C CNN
F 2 "" H 5450 1050 50  0001 C CNN
F 3 "" H 5450 1050 50  0001 C CNN
	1    5450 1050
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:ADS1015IDGS U2
U 1 1 618BEFC5
P 5450 2900
F 0 "U2" H 5200 3350 50  0000 C CNN
F 1 "ADS1015IDGS" H 5750 3350 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 5450 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1015.pdf" H 5400 2000 50  0001 C CNN
	1    5450 2900
	1    0    0    -1  
$EndComp
$Comp
L Converter_ACDC:HLK-PM01 PS1
U 1 1 618F52B4
P 2100 1150
F 0 "PS1" H 2100 1475 50  0000 C CNN
F 1 "HLK-PM01" H 2100 1384 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 2100 850 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 2500 800 50  0001 C CNN
	1    2100 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 618FE745
P 3400 1650
AR Path="/618FE745" Ref="R9"  Part="1" 
AR Path="/60CF66AD/618FE745" Ref="R?"  Part="1" 
AR Path="/6102C68D/618FE745" Ref="R?"  Part="1" 
AR Path="/610A0B30/618FE745" Ref="R?"  Part="1" 
AR Path="/610C441E/618FE745" Ref="R?"  Part="1" 
F 0 "R9" H 3470 1696 50  0000 L CNN
F 1 "220" H 3470 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3330 1650 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 3400 1650 50  0001 C CNN
F 4 "RC1206FR-07220RL" H 3400 1650 50  0001 C CNN "manf#"
	1    3400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1050 3800 1050
Connection ~ 3400 1050
$Comp
L power:GND #PWR03
U 1 1 61918958
P 2600 1850
AR Path="/61918958" Ref="#PWR03"  Part="1" 
AR Path="/60CF66AD/61918958" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 2600 1600 50  0001 C CNN
F 1 "GND" H 2605 1677 50  0000 C CNN
F 2 "" H 2600 1850 50  0001 C CNN
F 3 "" H 2600 1850 50  0001 C CNN
	1    2600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1850 2600 1250
Wire Wire Line
	2600 1250 2500 1250
Wire Wire Line
	2500 1050 2950 1050
Connection ~ 2950 1050
Wire Wire Line
	1550 1100 1550 1050
Wire Wire Line
	1550 1050 1700 1050
Wire Wire Line
	1550 1200 1550 1250
Wire Wire Line
	1550 1250 1700 1250
Text GLabel 7400 2000 0    39   Output ~ 0
RELAY_2
$Comp
L Connector:Screw_Terminal_01x03 J7
U 1 1 619792E8
P 10100 3950
F 0 "J7" H 10050 4150 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 10180 3901 50  0001 L CNN
F 2 "libs:TerminalBlock_bornier-3_P5.08mm" H 10100 3950 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 10100 3950 50  0001 C CNN
F 4 "796636-3" H 10100 3950 50  0001 C CNN "manf#"
	1    10100 3950
	1    0    0    -1  
$EndComp
Text GLabel 7600 4600 0    39   Input ~ 0
RELAY_1
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 619792F0
P 8250 4600
AR Path="/619792F0" Ref="Q1"  Part="1" 
AR Path="/6102C68D/619792F0" Ref="Q?"  Part="1" 
AR Path="/610A0B30/619792F0" Ref="Q?"  Part="1" 
AR Path="/610C441E/619792F0" Ref="Q?"  Part="1" 
F 0 "Q1" H 8441 4646 50  0000 L CNN
F 1 "BC817" H 8441 4555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8450 4525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC817-16LT1-D.PDF" H 8250 4600 50  0001 L CNN
F 4 "SBC817-40LT1G" H 8250 4600 50  0001 C CNN "manf#"
	1    8250 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 619792F7
P 7850 4600
AR Path="/619792F7" Ref="R14"  Part="1" 
AR Path="/6102C68D/619792F7" Ref="R?"  Part="1" 
AR Path="/610A0B30/619792F7" Ref="R?"  Part="1" 
AR Path="/610C441E/619792F7" Ref="R?"  Part="1" 
F 0 "R14" V 7750 4500 50  0000 C CNN
F 1 "1k" V 7750 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7780 4600 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 7850 4600 50  0001 C CNN
F 4 "RC1206FR-071KL" H 7850 4600 50  0001 C CNN "manf#"
	1    7850 4600
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D4
U 1 1 619792FE
P 8350 3950
AR Path="/619792FE" Ref="D4"  Part="1" 
AR Path="/6102C68D/619792FE" Ref="D?"  Part="1" 
AR Path="/610A0B30/619792FE" Ref="D?"  Part="1" 
AR Path="/610C441E/619792FE" Ref="D?"  Part="1" 
F 0 "D4" V 8300 3750 50  0000 L CNN
F 1 "M7" V 8400 3750 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 8350 3775 50  0001 C CNN
F 3 "https://www.vtrons.com/images/DIODE%20M7.pdf" H 8350 3950 50  0001 C CNN
F 4 "M7" H 8350 3950 50  0001 C CNN "manf#"
	1    8350 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 61979304
P 8350 4850
AR Path="/61979304" Ref="#PWR030"  Part="1" 
AR Path="/6102C68D/61979304" Ref="#PWR?"  Part="1" 
AR Path="/610A0B30/61979304" Ref="#PWR?"  Part="1" 
AR Path="/610C441E/61979304" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 8350 4600 50  0001 C CNN
F 1 "GND" H 8355 4677 50  0000 C CNN
F 2 "" H 8350 4850 50  0001 C CNN
F 3 "" H 8350 4850 50  0001 C CNN
	1    8350 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4250 9000 4350
Wire Wire Line
	9000 3650 9000 3550
Wire Wire Line
	8050 4600 8000 4600
Wire Wire Line
	8350 4850 8350 4800
$Comp
L Relay:SANYOU_SRD_Form_C K1
U 1 1 6197930F
P 9200 3950
AR Path="/6197930F" Ref="K1"  Part="1" 
AR Path="/6102C68D/6197930F" Ref="K?"  Part="1" 
AR Path="/610A0B30/6197930F" Ref="K?"  Part="1" 
AR Path="/610C441E/6197930F" Ref="K?"  Part="1" 
F 0 "K1" H 8800 4200 50  0000 L CNN
F 1 "RELAY 0510" H 9630 3905 50  0001 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 9650 3900 50  0001 L CNN
F 3 "https://pdf1.alldatasheet.es/datasheet-pdf/view/1131916/SUNHOLD/RAS-0510ML1.html" H 9200 3950 50  0001 C CNN
F 4 "RAS0510" H 9200 3950 50  0001 C CNN "manf#"
	1    9200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4350 8350 4400
Wire Wire Line
	8350 4350 8350 4100
Connection ~ 8350 4350
Wire Wire Line
	8350 3800 8350 3550
Connection ~ 8350 3550
Wire Wire Line
	8350 3550 8350 3500
Wire Wire Line
	9700 4350 9400 4350
Wire Wire Line
	9400 4350 9400 4250
Wire Wire Line
	9700 3550 9500 3550
Wire Wire Line
	9500 3550 9500 3650
Wire Wire Line
	9300 3400 9300 3650
Wire Wire Line
	7650 4000 7650 3900
$Comp
L Device:LED D2
U 1 1 61979322
P 7650 3750
AR Path="/61979322" Ref="D2"  Part="1" 
AR Path="/60CF66AD/61979322" Ref="D?"  Part="1" 
AR Path="/6102C68D/61979322" Ref="D?"  Part="1" 
AR Path="/610A0B30/61979322" Ref="D?"  Part="1" 
AR Path="/610C441E/61979322" Ref="D?"  Part="1" 
F 0 "D2" V 7689 3632 50  0000 R CNN
F 1 "LED" V 7598 3632 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7650 3750 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Stanley%20Electric%20PDFs/1101W_Series.pdf" H 7650 3750 50  0001 C CNN
F 4 "BR1101W-TR" H 7650 3750 50  0001 C CNN "manf#"
	1    7650 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 61979329
P 7650 4150
AR Path="/61979329" Ref="R12"  Part="1" 
AR Path="/60CF66AD/61979329" Ref="R?"  Part="1" 
AR Path="/6102C68D/61979329" Ref="R?"  Part="1" 
AR Path="/610A0B30/61979329" Ref="R?"  Part="1" 
AR Path="/610C441E/61979329" Ref="R?"  Part="1" 
F 0 "R12" H 7720 4196 50  0000 L CNN
F 1 "220" H 7720 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7580 4150 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 7650 4150 50  0001 C CNN
F 4 "RC1206FR-07220RL" H 7650 4150 50  0001 C CNN "manf#"
	1    7650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3600 7650 3550
Wire Wire Line
	7650 3550 8350 3550
Wire Wire Line
	7650 4300 7650 4350
Wire Wire Line
	7650 4350 8350 4350
Wire Wire Line
	8350 3550 9000 3550
Wire Wire Line
	8350 4350 9000 4350
$Comp
L power:+5V #PWR029
U 1 1 61979335
P 8350 3500
AR Path="/61979335" Ref="#PWR029"  Part="1" 
AR Path="/6102C68D/61979335" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 8350 3350 50  0001 C CNN
F 1 "+5V" H 8365 3673 50  0000 C CNN
F 2 "" H 8350 3500 50  0001 C CNN
F 3 "" H 8350 3500 50  0001 C CNN
	1    8350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4600 7700 4600
Wire Wire Line
	9700 4350 9700 3950
Wire Wire Line
	9700 3950 9900 3950
Wire Wire Line
	9700 3550 9700 3850
Wire Wire Line
	9700 3850 9900 3850
Wire Wire Line
	9800 3400 9800 4050
Wire Wire Line
	9800 4050 9900 4050
Wire Wire Line
	9300 3400 9800 3400
$Comp
L ZMPT101B:ZMPT101B T1
U 1 1 6198F6BA
P 2500 2500
F 0 "T1" H 2566 2890 50  0000 C CNN
F 1 "ZMPT101B" H 2566 2799 50  0000 C CNN
F 2 "ZMPT101B:ZMPT101B" H 2500 2500 50  0001 L BNN
F 3 "" H 2500 2500 50  0001 L BNN
F 4 "18.8mm" H 2500 2500 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 2500 2500 50  0001 L BNN "STANDARD"
F 6 "NA" H 2500 2500 50  0001 L BNN "PARTREV"
F 7 "Qingxian Zeming Langxi Electronic" H 2500 2500 50  0001 L BNN "MANUFACTURER"
	1    2500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1200 1250 1200
Wire Wire Line
	1200 1100 1350 1100
Wire Wire Line
	1250 2700 1250 1200
Connection ~ 1250 1200
Wire Wire Line
	1250 1200 1550 1200
Wire Wire Line
	1350 1100 1350 2300
Connection ~ 1350 1100
Wire Wire Line
	1350 1100 1550 1100
$Comp
L Device:R R1
U 1 1 619AE6B0
P 1550 2300
AR Path="/619AE6B0" Ref="R1"  Part="1" 
AR Path="/6102C68D/619AE6B0" Ref="R?"  Part="1" 
AR Path="/610A0B30/619AE6B0" Ref="R?"  Part="1" 
AR Path="/610C441E/619AE6B0" Ref="R?"  Part="1" 
F 0 "R1" V 1450 2200 50  0000 C CNN
F 1 "100k" V 1450 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1480 2300 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1550 2300 50  0001 C CNN
F 4 "RC1206FR-07100KL" H 1550 2300 50  0001 C CNN "manf#"
	1    1550 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2300 1350 2300
Wire Wire Line
	1700 2300 1800 2300
Wire Wire Line
	2100 2300 2200 2300
Wire Wire Line
	1250 2700 2200 2700
$Comp
L Device:R R2
U 1 1 619CF033
P 1950 2300
AR Path="/619CF033" Ref="R2"  Part="1" 
AR Path="/6102C68D/619CF033" Ref="R?"  Part="1" 
AR Path="/610A0B30/619CF033" Ref="R?"  Part="1" 
AR Path="/610C441E/619CF033" Ref="R?"  Part="1" 
F 0 "R2" V 1850 2200 50  0000 C CNN
F 1 "100k" V 1850 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1880 2300 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1950 2300 50  0001 C CNN
F 4 "RC1206FR-07100KL" H 1950 2300 50  0001 C CNN "manf#"
	1    1950 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 619CF2F3
P 3250 2500
AR Path="/619CF2F3" Ref="R7"  Part="1" 
AR Path="/6102C68D/619CF2F3" Ref="R?"  Part="1" 
AR Path="/610A0B30/619CF2F3" Ref="R?"  Part="1" 
AR Path="/610C441E/619CF2F3" Ref="R?"  Part="1" 
F 0 "R7" V 3150 2400 50  0000 C CNN
F 1 "1k" V 3150 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3180 2500 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 3250 2500 50  0001 C CNN
F 4 "RC1206FR-071KL" H 3250 2500 50  0001 C CNN "manf#"
	1    3250 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 2300 3250 2300
Wire Wire Line
	3250 2300 3250 2350
Wire Wire Line
	2800 2700 3250 2700
Wire Wire Line
	3250 2700 3250 2650
$Comp
L power:+3V3 #PWR021
U 1 1 619F98F4
P 5450 2350
AR Path="/619F98F4" Ref="#PWR021"  Part="1" 
AR Path="/60CF66AD/619F98F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 5450 2200 50  0001 C CNN
F 1 "+3V3" H 5465 2523 50  0000 C CNN
F 2 "" H 5450 2350 50  0001 C CNN
F 3 "" H 5450 2350 50  0001 C CNN
	1    5450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2300 4000 2300
Wire Wire Line
	4000 2800 5050 2800
Connection ~ 3250 2300
$Comp
L Device:C C3
U 1 1 61A15A48
P 4000 2550
F 0 "C3" H 4115 2596 50  0000 L CNN
F 1 "1uF" H 4115 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4038 2400 50  0001 C CNN
F 3 "https://www.samsungsem.com/resources/file/global/support/product_catalog/MLCC.pdf" H 4000 2550 50  0001 C CNN
F 4 "50V" H 4000 2550 50  0001 C CNN "Voltage"
F 5 "CL31F105ZBFNNNE" H 4000 2550 50  0001 C CNN "manf#"
	1    4000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2300 4000 2400
Wire Wire Line
	4000 2800 4000 2700
$Comp
L Connector:AudioPlug3 J2
U 1 1 61A29CC2
P 2150 3350
F 0 "J2" H 2207 3717 50  0000 C CNN
F 1 "jack3.5mm" H 2207 3626 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 2250 3300 50  0001 C CNN
F 3 "~" H 2250 3300 50  0001 C CNN
	1    2150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61A2BD32
P 4650 3500
F 0 "R10" H 4720 3546 50  0000 L CNN
F 1 "10k" H 4720 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4580 3500 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4650 3500 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 4650 3500 50  0001 C CNN "manf#"
	1    4650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 61A2BD39
P 4650 3900
F 0 "R11" H 4720 3946 50  0000 L CNN
F 1 "10k" H 4720 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4580 3900 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4650 3900 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 4650 3900 50  0001 C CNN "manf#"
	1    4650 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 61A2BD3F
P 4650 4100
F 0 "#PWR013" H 4650 3850 50  0001 C CNN
F 1 "GND" H 4655 3927 50  0000 C CNN
F 2 "" H 4650 4100 50  0001 C CNN
F 3 "" H 4650 4100 50  0001 C CNN
	1    4650 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 4100 4650 4050
$Comp
L power:+3V3 #PWR012
U 1 1 61A2BD4A
P 4650 3300
AR Path="/61A2BD4A" Ref="#PWR012"  Part="1" 
AR Path="/60CF66AD/61A2BD4A" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 4650 3150 50  0001 C CNN
F 1 "+3V3" H 4665 3473 50  0000 C CNN
F 2 "" H 4650 3300 50  0001 C CNN
F 3 "" H 4650 3300 50  0001 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3300 4650 3350
NoConn ~ 2750 3350
Wire Wire Line
	2750 3450 3000 3450
Wire Wire Line
	3000 3450 3000 3700
Wire Wire Line
	3000 3700 3250 3700
$Comp
L Device:R R8
U 1 1 61AADFAA
P 3250 3400
F 0 "R8" H 3320 3446 50  0000 L CNN
F 1 "?" H 3320 3355 50  0001 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3180 3400 50  0001 C CNN
F 3 "" H 3250 3400 50  0001 C CNN
F 4 "" H 3250 3400 50  0001 C CNN "manf#"
	1    3250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3250 3250 3050
Wire Wire Line
	3250 3550 3250 3700
Wire Wire Line
	4650 3650 4650 3700
Wire Wire Line
	4650 3700 4950 3700
Wire Wire Line
	4950 3700 4950 3100
Wire Wire Line
	4950 3100 5050 3100
Connection ~ 4650 3700
Wire Wire Line
	4650 3700 4650 3750
Wire Wire Line
	3250 2700 3900 2700
Wire Wire Line
	3900 2700 3900 3700
Wire Wire Line
	3900 3700 4650 3700
Connection ~ 3250 2700
Wire Wire Line
	3250 3700 3900 3700
Connection ~ 3250 3700
Connection ~ 3900 3700
Wire Wire Line
	3250 3050 4000 3050
Wire Wire Line
	4000 3050 4000 2900
Wire Wire Line
	4000 2900 5050 2900
Connection ~ 3250 3050
NoConn ~ 5050 3000
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 61B8F9E7
P 2500 3750
AR Path="/61B8F9E7" Ref="J3"  Part="1" 
AR Path="/60CF66AD/61B8F9E7" Ref="J?"  Part="1" 
F 0 "J3" H 2500 3850 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2418 3876 50  0001 C CNN
F 2 "libs:TerminalBlock_bornier-2_P5.08mm" H 2500 3750 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 2500 3750 50  0001 C CNN
F 4 "796636-2" H 2500 3750 50  0001 C CNN "manf#"
	1    2500 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2700 3750 2850 3750
Wire Wire Line
	2850 3750 2850 3250
Wire Wire Line
	2850 3250 2750 3250
Wire Wire Line
	2700 3850 3000 3850
Wire Wire Line
	3000 3850 3000 3700
Connection ~ 3000 3700
Wire Wire Line
	2850 3050 2850 3250
Wire Wire Line
	2850 3050 3250 3050
Connection ~ 2850 3250
$EndSCHEMATC
