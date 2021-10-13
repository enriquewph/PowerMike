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
L power:GND #PWR04
U 1 1 60CF5D5F
P 1700 7450
F 0 "#PWR04" H 1700 7200 50  0001 C CNN
F 1 "GND" H 1705 7277 50  0000 C CNN
F 2 "" H 1700 7450 50  0001 C CNN
F 3 "" H 1700 7450 50  0001 C CNN
	1    1700 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60D22EFD
P 1400 6800
F 0 "R2" H 1470 6846 50  0000 L CNN
F 1 "10k" H 1470 6755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1330 6800 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1400 6800 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 1400 6800 50  0001 C CNN "manf#"
	1    1400 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60D235F5
P 1100 6800
F 0 "R1" H 1170 6846 50  0000 L CNN
F 1 "10k" H 1170 6755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1030 6800 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1100 6800 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 1100 6800 50  0001 C CNN "manf#"
	1    1100 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6650 1400 6600
Wire Wire Line
	1400 6950 1400 7000
Wire Wire Line
	1400 7000 1900 7000
Wire Wire Line
	1100 6650 1100 6600
Wire Wire Line
	1100 6950 1100 7100
Wire Wire Line
	1100 7100 1900 7100
Wire Wire Line
	1100 6600 1400 6600
$Comp
L power:+3V3 #PWR03
U 1 1 60CF6E33
P 1650 6550
F 0 "#PWR03" H 1650 6400 50  0001 C CNN
F 1 "+3V3" H 1665 6723 50  0000 C CNN
F 2 "" H 1650 6550 50  0001 C CNN
F 3 "" H 1650 6550 50  0001 C CNN
	1    1650 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6600 1650 6600
Wire Wire Line
	1650 6600 1650 6550
Connection ~ 1400 6600
Wire Wire Line
	1650 6600 1650 7200
Connection ~ 1650 6600
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 60C734C6
P 2100 7200
F 0 "J3" H 1950 7550 50  0000 L CNN
F 1 "Conn_01x05" H 2180 7151 50  0001 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 2100 7200 50  0001 C CNN
F 3 "https://app.adam-tech.com/products/download/data_sheet/196588/lha-xx-ts-data-sheet.pdf" H 2100 7200 50  0001 C CNN
F 4 "LHA-05-TS" H 2100 7200 50  0001 C CNN "manf#"
	1    2100 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7450 1700 7400
Wire Wire Line
	1700 7400 1900 7400
Wire Wire Line
	1650 7200 1900 7200
$Comp
L power:+5V #PWR05
U 1 1 60C8AE42
P 1850 6550
F 0 "#PWR05" H 1850 6400 50  0001 C CNN
F 1 "+5V" H 1865 6723 50  0000 C CNN
F 2 "" H 1850 6550 50  0001 C CNN
F 3 "" H 1850 6550 50  0001 C CNN
	1    1850 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6550 1850 7300
Wire Wire Line
	1850 7300 1900 7300
$Comp
L Device:C C10
U 1 1 60CA50A5
P 10750 1650
F 0 "C10" H 10865 1696 50  0000 L CNN
F 1 "100nF" H 10865 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 10788 1500 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 10750 1650 50  0001 C CNN
F 4 "50V" H 10750 1650 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 10750 1650 50  0001 C CNN "manf#"
	1    10750 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 60CDA118
P 10750 1800
F 0 "#PWR041" H 10750 1550 50  0001 C CNN
F 1 "GND" H 10755 1627 50  0000 C CNN
F 2 "" H 10750 1800 50  0001 C CNN
F 3 "" H 10750 1800 50  0001 C CNN
	1    10750 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR040
U 1 1 60D96616
P 10750 1500
F 0 "#PWR040" H 10750 1350 50  0001 C CNN
F 1 "+3V3" H 10765 1673 50  0000 C CNN
F 2 "" H 10750 1500 50  0001 C CNN
F 3 "" H 10750 1500 50  0001 C CNN
	1    10750 1500
	-1   0    0    -1  
$EndComp
Text GLabel 7950 1650 0    39   Input ~ 0
RESET
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 6102D893
P 10700 6050
F 0 "J8" H 10650 6250 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 10780 6001 50  0001 L CNN
F 2 "libs:TerminalBlock_bornier-3_P5.08mm" H 10700 6050 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 10700 6050 50  0001 C CNN
F 4 "796636-3" H 10700 6050 50  0001 C CNN "manf#"
	1    10700 6050
	1    0    0    -1  
$EndComp
Text GLabel 8200 6700 0    39   Input ~ 0
RELAY_2
Text GLabel 6450 7100 2    39   Output ~ 0
RXD0
Text GLabel 5700 7100 2    39   Output ~ 0
GPIO0
Text GLabel 5700 6800 2    39   Output ~ 0
RESET
Text GLabel 6450 6800 2    39   Input ~ 0
TXD0
Text GLabel 900  7000 0    39   BiDi ~ 0
SCL
Text GLabel 900  7100 0    39   BiDi ~ 0
SDA
Wire Wire Line
	900  7100 1100 7100
Connection ~ 1100 7100
Wire Wire Line
	900  7000 1400 7000
Connection ~ 1400 7000
Text GLabel 10050 1850 2    39   BiDi ~ 0
SCL
Text GLabel 10050 1950 2    39   BiDi ~ 0
SDA
Text GLabel 2400 5150 2    39   Output ~ 0
TEMP
$Comp
L Device:C C11
U 1 1 60D9F4EC
P 10750 2450
F 0 "C11" H 10865 2496 50  0000 L CNN
F 1 "1uF" H 10865 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 10788 2300 50  0001 C CNN
F 3 "https://www.samsungsem.com/resources/file/global/support/product_catalog/MLCC.pdf" H 10750 2450 50  0001 C CNN
F 4 "50V" H 10750 2450 50  0001 C CNN "Voltage"
F 5 "CL31F105ZBFNNNE" H 10750 2450 50  0001 C CNN "manf#"
	1    10750 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 60D9F504
P 10750 2600
F 0 "#PWR043" H 10750 2350 50  0001 C CNN
F 1 "GND" H 10755 2427 50  0000 C CNN
F 2 "" H 10750 2600 50  0001 C CNN
F 3 "" H 10750 2600 50  0001 C CNN
	1    10750 2600
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR042
U 1 1 60D9F50E
P 10750 2300
F 0 "#PWR042" H 10750 2150 50  0001 C CNN
F 1 "+3V3" H 10765 2473 50  0000 C CNN
F 2 "" H 10750 2300 50  0001 C CNN
F 3 "" H 10750 2300 50  0001 C CNN
	1    10750 2300
	-1   0    0    -1  
$EndComp
Text GLabel 10050 1750 2    39   Output ~ 0
RXD0
Text GLabel 10050 1650 2    39   Input ~ 0
TXD0
Text GLabel 10050 2050 2    39   Input ~ 0
GPIO0
$Comp
L power:GND #PWR037
U 1 1 60B6EFE9
P 10050 2750
F 0 "#PWR037" H 10050 2500 50  0001 C CNN
F 1 "GND" H 10055 2577 50  0000 C CNN
F 2 "" H 10050 2750 50  0001 C CNN
F 3 "" H 10050 2750 50  0001 C CNN
	1    10050 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR032
U 1 1 60B6F944
P 7600 1600
F 0 "#PWR032" H 7600 1450 50  0001 C CNN
F 1 "+3V3" H 7615 1773 50  0000 C CNN
F 2 "" H 7600 1600 50  0001 C CNN
F 3 "" H 7600 1600 50  0001 C CNN
	1    7600 1600
	-1   0    0    -1  
$EndComp
$Comp
L ESP8266:ESP-12E U3
U 1 1 61514EB0
P 9050 1950
F 0 "U3" H 9050 2715 50  0000 C CNN
F 1 "ESP-12E" H 9050 2624 50  0000 C CNN
F 2 "ESP8266:ESP-12E_SMD" H 9050 1950 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 9050 1950 50  0001 C CNN
F 4 "ESP-12E" H 9050 1950 50  0001 C CNN "manf#"
	1    9050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2350 9950 2350
Wire Wire Line
	10050 1750 9950 1750
Wire Wire Line
	9950 1650 10050 1650
Wire Wire Line
	10050 2050 9950 2050
Wire Wire Line
	10050 1850 9950 1850
Wire Wire Line
	10050 1950 9950 1950
NoConn ~ 9300 2850
NoConn ~ 8900 2850
NoConn ~ 9200 2850
NoConn ~ 9000 2850
NoConn ~ 9100 2850
NoConn ~ 8800 2850
Text GLabel 7950 1750 0    39   Input ~ 0
TEMP
Wire Wire Line
	7950 1750 8150 1750
$Comp
L Device:R R24
U 1 1 61652449
P 10350 1850
F 0 "R24" H 10420 1896 50  0000 L CNN
F 1 "10k" H 10420 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 10280 1850 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 10350 1850 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 10350 1850 50  0001 C CNN "manf#"
	1    10350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2150 10350 2150
$Comp
L power:+3V3 #PWR038
U 1 1 61656891
P 10350 1600
F 0 "#PWR038" H 10350 1450 50  0001 C CNN
F 1 "+3V3" H 10365 1773 50  0000 C CNN
F 2 "" H 10350 1600 50  0001 C CNN
F 3 "" H 10350 1600 50  0001 C CNN
	1    10350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1700 10350 1600
Wire Wire Line
	10350 2000 10350 2150
$Comp
L Device:R R25
U 1 1 6166E9AD
P 10350 2500
F 0 "R25" H 10420 2546 50  0000 L CNN
F 1 "10k" H 10420 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 10280 2500 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 10350 2500 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 10350 2500 50  0001 C CNN "manf#"
	1    10350 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 6166F7A3
P 10350 2750
F 0 "#PWR039" H 10350 2500 50  0001 C CNN
F 1 "GND" H 10355 2577 50  0000 C CNN
F 2 "" H 10350 2750 50  0001 C CNN
F 3 "" H 10350 2750 50  0001 C CNN
	1    10350 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10350 2750 10350 2650
Wire Wire Line
	10050 2350 10050 2750
Wire Wire Line
	10350 2350 10350 2250
Wire Wire Line
	10350 2250 9950 2250
Wire Wire Line
	7950 1650 8050 1650
Wire Wire Line
	8150 1950 8050 1950
Wire Wire Line
	8050 1950 8050 1650
Connection ~ 8050 1650
Wire Wire Line
	8050 1650 8150 1650
Wire Wire Line
	7600 1600 7600 1850
Wire Wire Line
	7600 1850 8150 1850
Wire Wire Line
	7600 1850 7600 2350
Wire Wire Line
	7600 2350 8150 2350
Connection ~ 7600 1850
Text GLabel 7950 2050 0    39   Output ~ 0
RELAY_1
Text GLabel 7950 2250 0    39   Input ~ 0
RDY
Wire Wire Line
	8150 2050 7950 2050
Wire Wire Line
	8150 2250 7950 2250
Wire Wire Line
	7950 2150 8150 2150
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 61701F3F
P 5050 7000
AR Path="/60DD98A5/61701F3F" Ref="J?"  Part="1" 
AR Path="/61701F3F" Ref="J6"  Part="1" 
F 0 "J6" H 5000 7300 50  0000 L CNN
F 1 "ICSP" H 4950 6600 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5050 7000 50  0001 C CNN
F 3 "~" H 5050 7000 50  0001 C CNN
	1    5050 7000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61701F49
P 5400 7450
AR Path="/60DD98A5/61701F49" Ref="#PWR?"  Part="1" 
AR Path="/61701F49" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 5400 7200 50  0001 C CNN
F 1 "GND" H 5405 7277 50  0000 C CNN
F 2 "" H 5400 7450 50  0001 C CNN
F 3 "" H 5400 7450 50  0001 C CNN
	1    5400 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61701F4F
P 5550 6700
AR Path="/60DD98A5/61701F4F" Ref="#PWR?"  Part="1" 
AR Path="/61701F4F" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 5550 6550 50  0001 C CNN
F 1 "+3V3" H 5565 6873 50  0000 C CNN
F 2 "" H 5550 6700 50  0001 C CNN
F 3 "" H 5550 6700 50  0001 C CNN
	1    5550 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6800 5700 6800
Wire Wire Line
	5250 7100 5700 7100
Wire Wire Line
	5250 7200 5400 7200
Wire Wire Line
	5400 7200 5400 7450
Wire Wire Line
	5250 7300 5550 7300
Wire Wire Line
	5550 7300 5550 6700
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 617B20F3
P 950 5150
AR Path="/617B20F3" Ref="J1"  Part="1" 
AR Path="/612F4D6E/617B20F3" Ref="J?"  Part="1" 
AR Path="/61323238/617B20F3" Ref="J?"  Part="1" 
F 0 "J1" H 900 5400 50  0000 L CNN
F 1 "Conn_01x03" H 1030 5101 50  0001 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 950 5150 50  0001 C CNN
F 3 "https://app.adam-tech.com/products/download/data_sheet/196588/lha-xx-ts-data-sheet.pdf" H 950 5150 50  0001 C CNN
F 4 "LHA-03-TS" H 950 5150 50  0001 C CNN "manf#"
	1    950  5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 5650 1450 5550
Wire Wire Line
	1450 5150 1450 5250
Wire Wire Line
	1150 5150 1450 5150
Wire Wire Line
	1250 5250 1150 5250
Wire Wire Line
	1250 5650 1250 5250
$Comp
L power:+3V3 #PWR06
U 1 1 617B20FE
P 1950 4950
AR Path="/617B20FE" Ref="#PWR06"  Part="1" 
AR Path="/612F4D6E/617B20FE" Ref="#PWR?"  Part="1" 
AR Path="/61323238/617B20FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 1950 4800 50  0001 C CNN
F 1 "+3V3" H 1965 5123 50  0000 C CNN
F 2 "" H 1950 4950 50  0001 C CNN
F 3 "" H 1950 4950 50  0001 C CNN
	1    1950 4950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 617B2104
P 1450 5650
AR Path="/617B2104" Ref="#PWR02"  Part="1" 
AR Path="/612F4D6E/617B2104" Ref="#PWR?"  Part="1" 
AR Path="/61323238/617B2104" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 1450 5400 50  0001 C CNN
F 1 "GND" H 1455 5477 50  0000 C CNN
F 2 "" H 1450 5650 50  0001 C CNN
F 3 "" H 1450 5650 50  0001 C CNN
	1    1450 5650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 617B210A
P 1250 5650
AR Path="/617B210A" Ref="#PWR01"  Part="1" 
AR Path="/612F4D6E/617B210A" Ref="#PWR?"  Part="1" 
AR Path="/61323238/617B210A" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 1250 5400 50  0001 C CNN
F 1 "GND" H 1255 5477 50  0000 C CNN
F 2 "" H 1250 5650 50  0001 C CNN
F 3 "" H 1250 5650 50  0001 C CNN
	1    1250 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 617B2112
P 1450 5400
AR Path="/612F4D6E/617B2112" Ref="C?"  Part="1" 
AR Path="/61323238/617B2112" Ref="C?"  Part="1" 
AR Path="/617B2112" Ref="C1"  Part="1" 
F 0 "C1" H 1565 5446 50  0000 L CNN
F 1 "100nF" H 1565 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1488 5250 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 1450 5400 50  0001 C CNN
F 4 "50V" H 1450 5400 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 1450 5400 50  0001 C CNN "manf#"
	1    1450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5650 1950 5550
$Comp
L power:GND #PWR07
U 1 1 617B2119
P 1950 5650
AR Path="/617B2119" Ref="#PWR07"  Part="1" 
AR Path="/612F4D6E/617B2119" Ref="#PWR?"  Part="1" 
AR Path="/61323238/617B2119" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 1950 5400 50  0001 C CNN
F 1 "GND" H 1955 5477 50  0000 C CNN
F 2 "" H 1950 5650 50  0001 C CNN
F 3 "" H 1950 5650 50  0001 C CNN
	1    1950 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 617B2121
P 1950 5400
AR Path="/612F4D6E/617B2121" Ref="C?"  Part="1" 
AR Path="/61323238/617B2121" Ref="C?"  Part="1" 
AR Path="/617B2121" Ref="C2"  Part="1" 
F 0 "C2" H 2065 5446 50  0000 L CNN
F 1 "100nF" H 2065 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1988 5250 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 1950 5400 50  0001 C CNN
F 4 "50V" H 1950 5400 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 1950 5400 50  0001 C CNN "manf#"
	1    1950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5250 1950 5050
Wire Wire Line
	1150 5050 1950 5050
Connection ~ 1450 5150
Wire Wire Line
	1450 5150 2400 5150
Wire Wire Line
	1950 4950 1950 5050
Connection ~ 1950 5050
Text Notes 900  5400 0    50   ~ 0
LM35
$Comp
L Transistor_BJT:BC817 Q2
U 1 1 617CAA26
P 8850 6700
AR Path="/617CAA26" Ref="Q2"  Part="1" 
AR Path="/6102C68D/617CAA26" Ref="Q?"  Part="1" 
AR Path="/610A0B30/617CAA26" Ref="Q?"  Part="1" 
AR Path="/610C441E/617CAA26" Ref="Q?"  Part="1" 
F 0 "Q2" H 9041 6746 50  0000 L CNN
F 1 "BC817" H 9041 6655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9050 6625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC817-16LT1-D.PDF" H 8850 6700 50  0001 L CNN
F 4 "SBC817-40LT1G" H 8850 6700 50  0001 C CNN "manf#"
	1    8850 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 617CAA2D
P 8450 6700
AR Path="/617CAA2D" Ref="R23"  Part="1" 
AR Path="/6102C68D/617CAA2D" Ref="R?"  Part="1" 
AR Path="/610A0B30/617CAA2D" Ref="R?"  Part="1" 
AR Path="/610C441E/617CAA2D" Ref="R?"  Part="1" 
F 0 "R23" V 8350 6600 50  0000 C CNN
F 1 "1k" V 8350 6800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8380 6700 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 8450 6700 50  0001 C CNN
F 4 "RC1206FR-071KL" H 8450 6700 50  0001 C CNN "manf#"
	1    8450 6700
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D5
U 1 1 617CAA34
P 8950 6050
AR Path="/617CAA34" Ref="D5"  Part="1" 
AR Path="/6102C68D/617CAA34" Ref="D?"  Part="1" 
AR Path="/610A0B30/617CAA34" Ref="D?"  Part="1" 
AR Path="/610C441E/617CAA34" Ref="D?"  Part="1" 
F 0 "D5" V 8900 5850 50  0000 L CNN
F 1 "M7" V 9000 5850 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 8950 5875 50  0001 C CNN
F 3 "https://www.vtrons.com/images/DIODE%20M7.pdf" H 8950 6050 50  0001 C CNN
F 4 "M7" H 8950 6050 50  0001 C CNN "manf#"
	1    8950 6050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 617CAA3A
P 8950 6950
AR Path="/617CAA3A" Ref="#PWR036"  Part="1" 
AR Path="/6102C68D/617CAA3A" Ref="#PWR?"  Part="1" 
AR Path="/610A0B30/617CAA3A" Ref="#PWR?"  Part="1" 
AR Path="/610C441E/617CAA3A" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 8950 6700 50  0001 C CNN
F 1 "GND" H 8955 6777 50  0000 C CNN
F 2 "" H 8950 6950 50  0001 C CNN
F 3 "" H 8950 6950 50  0001 C CNN
	1    8950 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 6350 9600 6450
Wire Wire Line
	9600 5750 9600 5650
Wire Wire Line
	8650 6700 8600 6700
Wire Wire Line
	8950 6950 8950 6900
$Comp
L Relay:SANYOU_SRD_Form_C K2
U 1 1 617CAA45
P 9800 6050
AR Path="/617CAA45" Ref="K2"  Part="1" 
AR Path="/6102C68D/617CAA45" Ref="K?"  Part="1" 
AR Path="/610A0B30/617CAA45" Ref="K?"  Part="1" 
AR Path="/610C441E/617CAA45" Ref="K?"  Part="1" 
F 0 "K2" H 9400 6300 50  0000 L CNN
F 1 "RELAY 0510" H 10230 6005 50  0001 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 10250 6000 50  0001 L CNN
F 3 "https://pdf1.alldatasheet.es/datasheet-pdf/view/1131916/SUNHOLD/RAS-0510ML1.html" H 9800 6050 50  0001 C CNN
F 4 "RAS0510" H 9800 6050 50  0001 C CNN "manf#"
	1    9800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6450 8950 6500
Wire Wire Line
	8950 6450 8950 6200
Connection ~ 8950 6450
Wire Wire Line
	8950 5900 8950 5650
Connection ~ 8950 5650
Wire Wire Line
	8950 5650 8950 5600
Wire Wire Line
	10300 6450 10000 6450
Wire Wire Line
	10000 6450 10000 6350
Wire Wire Line
	10300 5650 10100 5650
Wire Wire Line
	10100 5650 10100 5750
Wire Wire Line
	9900 5500 9900 5750
Wire Wire Line
	8250 6100 8250 6000
$Comp
L Device:LED D3
U 1 1 617CAA5D
P 8250 5850
AR Path="/617CAA5D" Ref="D3"  Part="1" 
AR Path="/60CF66AD/617CAA5D" Ref="D?"  Part="1" 
AR Path="/6102C68D/617CAA5D" Ref="D?"  Part="1" 
AR Path="/610A0B30/617CAA5D" Ref="D?"  Part="1" 
AR Path="/610C441E/617CAA5D" Ref="D?"  Part="1" 
F 0 "D3" V 8289 5732 50  0000 R CNN
F 1 "LED" V 8198 5732 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8250 5850 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Stanley%20Electric%20PDFs/1101W_Series.pdf" H 8250 5850 50  0001 C CNN
F 4 "BR1101W-TR" H 8250 5850 50  0001 C CNN "manf#"
	1    8250 5850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R21
U 1 1 617CAA64
P 8250 6250
AR Path="/617CAA64" Ref="R21"  Part="1" 
AR Path="/60CF66AD/617CAA64" Ref="R?"  Part="1" 
AR Path="/6102C68D/617CAA64" Ref="R?"  Part="1" 
AR Path="/610A0B30/617CAA64" Ref="R?"  Part="1" 
AR Path="/610C441E/617CAA64" Ref="R?"  Part="1" 
F 0 "R21" H 8320 6296 50  0000 L CNN
F 1 "220" H 8320 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8180 6250 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 8250 6250 50  0001 C CNN
F 4 "RC1206FR-07220RL" H 8250 6250 50  0001 C CNN "manf#"
	1    8250 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5700 8250 5650
Wire Wire Line
	8250 5650 8950 5650
Wire Wire Line
	8250 6400 8250 6450
Wire Wire Line
	8250 6450 8950 6450
Wire Wire Line
	8950 5650 9600 5650
Wire Wire Line
	8950 6450 9600 6450
$Comp
L power:+5V #PWR035
U 1 1 617CAA71
P 8950 5600
AR Path="/617CAA71" Ref="#PWR035"  Part="1" 
AR Path="/6102C68D/617CAA71" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 8950 5450 50  0001 C CNN
F 1 "+5V" H 8965 5773 50  0000 C CNN
F 2 "" H 8950 5600 50  0001 C CNN
F 3 "" H 8950 5600 50  0001 C CNN
	1    8950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 6700 8300 6700
Wire Wire Line
	10300 6450 10300 6050
Wire Wire Line
	10300 6050 10500 6050
Wire Wire Line
	10300 5650 10300 5950
Wire Wire Line
	10300 5950 10500 5950
Wire Wire Line
	10400 5500 10400 6150
Wire Wire Line
	10400 6150 10500 6150
Wire Wire Line
	9900 5500 10400 5500
Text Notes 1200 7350 0    50   Italic 0
I2C HEADER
$Comp
L power:+3V3 #PWR028
U 1 1 617A71AE
P 6800 3200
F 0 "#PWR028" H 6800 3050 50  0001 C CNN
F 1 "+3V3" H 6815 3373 50  0000 C CNN
F 2 "" H 6800 3200 50  0001 C CNN
F 3 "" H 6800 3200 50  0001 C CNN
	1    6800 3200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 617A71A8
P 6800 3500
F 0 "#PWR029" H 6800 3250 50  0001 C CNN
F 1 "GND" H 6805 3327 50  0000 C CNN
F 2 "" H 6800 3500 50  0001 C CNN
F 3 "" H 6800 3500 50  0001 C CNN
	1    6800 3500
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 617A71A2
P 6800 3350
F 0 "C9" H 6915 3396 50  0000 L CNN
F 1 "100nF" H 6915 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6838 3200 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 6800 3350 50  0001 C CNN
F 4 "50V" H 6800 3350 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 6800 3350 50  0001 C CNN "manf#"
	1    6800 3350
	1    0    0    -1  
$EndComp
Text Notes 6150 3500 0    50   ~ 0
0x48
Wire Wire Line
	6550 3300 6450 3300
Wire Wire Line
	6550 3400 6550 3300
$Comp
L power:GND #PWR026
U 1 1 616DB6B4
P 6550 3400
F 0 "#PWR026" H 6550 3150 50  0001 C CNN
F 1 "GND" H 6555 3227 50  0000 C CNN
F 2 "" H 6550 3400 50  0001 C CNN
F 3 "" H 6550 3400 50  0001 C CNN
	1    6550 3400
	-1   0    0    -1  
$EndComp
Text GLabel 7000 2900 2    39   Output ~ 0
RDY
Wire Wire Line
	6500 3200 6450 3200
Wire Wire Line
	6500 3100 6450 3100
Text GLabel 6500 3200 2    39   BiDi ~ 0
SDA
Text GLabel 6500 3100 2    39   BiDi ~ 0
SCL
Wire Wire Line
	6050 3550 6050 3500
$Comp
L power:GND #PWR022
U 1 1 616C2EF7
P 6050 3550
F 0 "#PWR022" H 6050 3300 50  0001 C CNN
F 1 "GND" H 6055 3377 50  0000 C CNN
F 2 "" H 6050 3550 50  0001 C CNN
F 3 "" H 6050 3550 50  0001 C CNN
	1    6050 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 2550 6050 2600
Connection ~ 4900 950 
Wire Wire Line
	4050 950  4500 950 
Connection ~ 6550 950 
Wire Wire Line
	6550 950  6200 950 
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 6182613C
P 1000 1300
AR Path="/6182613C" Ref="J2"  Part="1" 
AR Path="/60CF66AD/6182613C" Ref="J?"  Part="1" 
F 0 "J2" H 1000 1400 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 918 1426 50  0001 C CNN
F 2 "libs:TerminalBlock_bornier-2_P5.08mm" H 1000 1300 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 1000 1300 50  0001 C CNN
F 4 "796636-2" H 1000 1300 50  0001 C CNN "manf#"
	1    1000 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 1500 5800 1350
Connection ~ 5800 1500
Wire Wire Line
	5300 1500 5800 1500
Wire Wire Line
	5300 1100 5300 1500
Wire Wire Line
	5400 1100 5300 1100
Wire Wire Line
	4900 950  5400 950 
$Comp
L kf33:KF33BD-TR U?
U 1 1 6182612F
P 5800 950
AR Path="/60CF66AD/6182612F" Ref="U?"  Part="1" 
AR Path="/6182612F" Ref="U1"  Part="1" 
F 0 "U1" H 5800 1215 50  0000 C CNN
F 1 "KF33BD-TR" H 5800 1124 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 5700 1000 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/d7/80/b5/a2/a2/93/49/59/CD00000970.pdf/files/CD00000970.pdf/jcr:content/translations/en.CD00000970.pdf" H 5700 1000 50  0001 C CNN
F 4 "KF33BD-TR" H 5800 950 50  0001 C CNN "manf#"
	1    5800 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 61826129
P 4900 1400
AR Path="/61826129" Ref="C6"  Part="1" 
AR Path="/60CF66AD/61826129" Ref="C?"  Part="1" 
F 0 "C6" H 4950 1500 50  0000 L CNN
F 1 "100nF" H 4950 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4938 1250 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 4900 1400 50  0001 C CNN
F 4 "50V" H 4950 1600 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 4950 1600 50  0001 C CNN "manf#"
	1    4900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 950  4500 1000
Wire Wire Line
	4050 1750 4050 1550
Wire Wire Line
	4050 1250 4050 950 
Wire Wire Line
	5800 1750 5800 1500
Wire Wire Line
	6550 1750 6550 1550
Wire Wire Line
	6550 950  6550 1250
Wire Wire Line
	4900 1550 4900 1750
Wire Wire Line
	4900 1250 4900 950 
Wire Wire Line
	4500 1750 4500 1700
Wire Wire Line
	4500 1400 4500 1300
$Comp
L Device:CP C3
U 1 1 61826116
P 4050 1400
AR Path="/61826116" Ref="C3"  Part="1" 
AR Path="/60CF66AD/61826116" Ref="C?"  Part="1" 
F 0 "C3" H 4100 1500 50  0000 L CNN
F 1 "470uF" H 4100 1300 50  0000 L CNN
F 2 "libs:CAP_10x10_SMD_THT" H 4088 1250 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 4050 1400 50  0001 C CNN
F 4 "25V" H 4100 1200 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 4100 1600 50  0001 C CNN "manf#"
	1    4050 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6182610E
P 4050 1750
AR Path="/6182610E" Ref="#PWR012"  Part="1" 
AR Path="/60CF66AD/6182610E" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 4050 1500 50  0001 C CNN
F 1 "GND" H 4055 1577 50  0000 C CNN
F 2 "" H 4050 1750 50  0001 C CNN
F 3 "" H 4050 1750 50  0001 C CNN
	1    4050 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 61826108
P 5800 1750
AR Path="/61826108" Ref="#PWR020"  Part="1" 
AR Path="/60CF66AD/61826108" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 5800 1500 50  0001 C CNN
F 1 "GND" H 5805 1577 50  0000 C CNN
F 2 "" H 5800 1750 50  0001 C CNN
F 3 "" H 5800 1750 50  0001 C CNN
	1    5800 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 61826102
P 6550 1750
AR Path="/61826102" Ref="#PWR025"  Part="1" 
AR Path="/60CF66AD/61826102" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 6550 1500 50  0001 C CNN
F 1 "GND" H 6555 1577 50  0000 C CNN
F 2 "" H 6550 1750 50  0001 C CNN
F 3 "" H 6550 1750 50  0001 C CNN
	1    6550 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 618260FC
P 6550 1400
AR Path="/618260FC" Ref="C8"  Part="1" 
AR Path="/60CF66AD/618260FC" Ref="C?"  Part="1" 
F 0 "C8" H 6668 1491 50  0000 L CNN
F 1 "470uF" H 6668 1400 50  0000 L CNN
F 2 "libs:CAP_10x10_SMD_THT" H 6588 1250 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 6550 1400 50  0001 C CNN
F 4 "25V" H 6668 1309 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 6668 1591 50  0001 C CNN "manf#"
	1    6550 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 618260F4
P 4900 1750
AR Path="/618260F4" Ref="#PWR017"  Part="1" 
AR Path="/60CF66AD/618260F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 4900 1500 50  0001 C CNN
F 1 "GND" H 4905 1577 50  0000 C CNN
F 2 "" H 4900 1750 50  0001 C CNN
F 3 "" H 4900 1750 50  0001 C CNN
	1    4900 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 618260E7
P 4500 1150
AR Path="/618260E7" Ref="D1"  Part="1" 
AR Path="/60CF66AD/618260E7" Ref="D?"  Part="1" 
F 0 "D1" V 4539 1032 50  0000 R CNN
F 1 "LED" V 4448 1032 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 4500 1150 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Stanley%20Electric%20PDFs/1101W_Series.pdf" H 4500 1150 50  0001 C CNN
F 4 "BR1101W-TR" H 4539 1132 50  0001 C CNN "manf#"
	1    4500 1150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 618260E0
P 4500 1750
AR Path="/618260E0" Ref="#PWR015"  Part="1" 
AR Path="/60CF66AD/618260E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 4500 1500 50  0001 C CNN
F 1 "GND" H 4505 1577 50  0000 C CNN
F 2 "" H 4500 1750 50  0001 C CNN
F 3 "" H 4500 1750 50  0001 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 60DE1027
P 4900 950
F 0 "#PWR016" H 4900 800 50  0001 C CNN
F 1 "+5V" H 4915 1123 50  0000 C CNN
F 2 "" H 4900 950 50  0001 C CNN
F 3 "" H 4900 950 50  0001 C CNN
	1    4900 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR024
U 1 1 60D757EF
P 6550 950
AR Path="/60D757EF" Ref="#PWR024"  Part="1" 
AR Path="/60CF66AD/60D757EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 6550 800 50  0001 C CNN
F 1 "+3V3" H 6565 1123 50  0000 C CNN
F 2 "" H 6550 950 50  0001 C CNN
F 3 "" H 6550 950 50  0001 C CNN
	1    6550 950 
	1    0    0    -1  
$EndComp
$Comp
L Converter_ACDC:HLK-PM01 PS1
U 1 1 618F52B4
P 3200 1050
F 0 "PS1" H 3200 1375 50  0000 C CNN
F 1 "HLK-PM01" H 3200 1284 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 3200 750 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 3600 700 50  0001 C CNN
F 4 "HLK-PM01" H 3200 1050 50  0001 C CNN "manf#"
	1    3200 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 618FE745
P 4500 1550
AR Path="/618FE745" Ref="R14"  Part="1" 
AR Path="/60CF66AD/618FE745" Ref="R?"  Part="1" 
AR Path="/6102C68D/618FE745" Ref="R?"  Part="1" 
AR Path="/610A0B30/618FE745" Ref="R?"  Part="1" 
AR Path="/610C441E/618FE745" Ref="R?"  Part="1" 
F 0 "R14" H 4570 1596 50  0000 L CNN
F 1 "220" H 4570 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4430 1550 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4500 1550 50  0001 C CNN
F 4 "RC1206FR-07220RL" H 4500 1550 50  0001 C CNN "manf#"
	1    4500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 950  4900 950 
Connection ~ 4500 950 
$Comp
L power:GND #PWR010
U 1 1 61918958
P 3700 1750
AR Path="/61918958" Ref="#PWR010"  Part="1" 
AR Path="/60CF66AD/61918958" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 3700 1500 50  0001 C CNN
F 1 "GND" H 3705 1577 50  0000 C CNN
F 2 "" H 3700 1750 50  0001 C CNN
F 3 "" H 3700 1750 50  0001 C CNN
	1    3700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1750 3700 1150
Wire Wire Line
	3700 1150 3600 1150
Wire Wire Line
	3600 950  4050 950 
Connection ~ 4050 950 
Text GLabel 7950 2150 0    39   Output ~ 0
RELAY_2
$Comp
L Connector:Screw_Terminal_01x03 J7
U 1 1 619792E8
P 10700 4200
F 0 "J7" H 10650 4400 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 10780 4151 50  0001 L CNN
F 2 "libs:TerminalBlock_bornier-3_P5.08mm" H 10700 4200 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 10700 4200 50  0001 C CNN
F 4 "796636-3" H 10700 4200 50  0001 C CNN "manf#"
	1    10700 4200
	1    0    0    -1  
$EndComp
Text GLabel 8200 4850 0    39   Input ~ 0
RELAY_1
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 619792F0
P 8850 4850
AR Path="/619792F0" Ref="Q1"  Part="1" 
AR Path="/6102C68D/619792F0" Ref="Q?"  Part="1" 
AR Path="/610A0B30/619792F0" Ref="Q?"  Part="1" 
AR Path="/610C441E/619792F0" Ref="Q?"  Part="1" 
F 0 "Q1" H 9041 4896 50  0000 L CNN
F 1 "BC817" H 9041 4805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9050 4775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC817-16LT1-D.PDF" H 8850 4850 50  0001 L CNN
F 4 "SBC817-40LT1G" H 8850 4850 50  0001 C CNN "manf#"
	1    8850 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 619792F7
P 8450 4850
AR Path="/619792F7" Ref="R22"  Part="1" 
AR Path="/6102C68D/619792F7" Ref="R?"  Part="1" 
AR Path="/610A0B30/619792F7" Ref="R?"  Part="1" 
AR Path="/610C441E/619792F7" Ref="R?"  Part="1" 
F 0 "R22" V 8350 4750 50  0000 C CNN
F 1 "1k" V 8350 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8380 4850 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 8450 4850 50  0001 C CNN
F 4 "RC1206FR-071KL" H 8450 4850 50  0001 C CNN "manf#"
	1    8450 4850
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D4
U 1 1 619792FE
P 8950 4200
AR Path="/619792FE" Ref="D4"  Part="1" 
AR Path="/6102C68D/619792FE" Ref="D?"  Part="1" 
AR Path="/610A0B30/619792FE" Ref="D?"  Part="1" 
AR Path="/610C441E/619792FE" Ref="D?"  Part="1" 
F 0 "D4" V 8900 4000 50  0000 L CNN
F 1 "M7" V 9000 4000 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 8950 4025 50  0001 C CNN
F 3 "https://www.vtrons.com/images/DIODE%20M7.pdf" H 8950 4200 50  0001 C CNN
F 4 "M7" H 8950 4200 50  0001 C CNN "manf#"
	1    8950 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 61979304
P 8950 5100
AR Path="/61979304" Ref="#PWR034"  Part="1" 
AR Path="/6102C68D/61979304" Ref="#PWR?"  Part="1" 
AR Path="/610A0B30/61979304" Ref="#PWR?"  Part="1" 
AR Path="/610C441E/61979304" Ref="#PWR?"  Part="1" 
F 0 "#PWR034" H 8950 4850 50  0001 C CNN
F 1 "GND" H 8955 4927 50  0000 C CNN
F 2 "" H 8950 5100 50  0001 C CNN
F 3 "" H 8950 5100 50  0001 C CNN
	1    8950 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4500 9600 4600
Wire Wire Line
	9600 3900 9600 3800
Wire Wire Line
	8650 4850 8600 4850
Wire Wire Line
	8950 5100 8950 5050
$Comp
L Relay:SANYOU_SRD_Form_C K1
U 1 1 6197930F
P 9800 4200
AR Path="/6197930F" Ref="K1"  Part="1" 
AR Path="/6102C68D/6197930F" Ref="K?"  Part="1" 
AR Path="/610A0B30/6197930F" Ref="K?"  Part="1" 
AR Path="/610C441E/6197930F" Ref="K?"  Part="1" 
F 0 "K1" H 9400 4450 50  0000 L CNN
F 1 "RELAY 0510" H 10230 4155 50  0001 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 10250 4150 50  0001 L CNN
F 3 "https://pdf1.alldatasheet.es/datasheet-pdf/view/1131916/SUNHOLD/RAS-0510ML1.html" H 9800 4200 50  0001 C CNN
F 4 "RAS0510" H 9800 4200 50  0001 C CNN "manf#"
	1    9800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4600 8950 4650
Wire Wire Line
	8950 4600 8950 4350
Connection ~ 8950 4600
Wire Wire Line
	8950 4050 8950 3800
Connection ~ 8950 3800
Wire Wire Line
	8950 3800 8950 3750
Wire Wire Line
	10300 4600 10000 4600
Wire Wire Line
	10000 4600 10000 4500
Wire Wire Line
	10300 3800 10100 3800
Wire Wire Line
	10100 3800 10100 3900
Wire Wire Line
	9900 3650 9900 3900
Wire Wire Line
	8250 4250 8250 4150
$Comp
L Device:LED D2
U 1 1 61979322
P 8250 4000
AR Path="/61979322" Ref="D2"  Part="1" 
AR Path="/60CF66AD/61979322" Ref="D?"  Part="1" 
AR Path="/6102C68D/61979322" Ref="D?"  Part="1" 
AR Path="/610A0B30/61979322" Ref="D?"  Part="1" 
AR Path="/610C441E/61979322" Ref="D?"  Part="1" 
F 0 "D2" V 8289 3882 50  0000 R CNN
F 1 "LED" V 8198 3882 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8250 4000 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Stanley%20Electric%20PDFs/1101W_Series.pdf" H 8250 4000 50  0001 C CNN
F 4 "BR1101W-TR" H 8250 4000 50  0001 C CNN "manf#"
	1    8250 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 61979329
P 8250 4400
AR Path="/61979329" Ref="R20"  Part="1" 
AR Path="/60CF66AD/61979329" Ref="R?"  Part="1" 
AR Path="/6102C68D/61979329" Ref="R?"  Part="1" 
AR Path="/610A0B30/61979329" Ref="R?"  Part="1" 
AR Path="/610C441E/61979329" Ref="R?"  Part="1" 
F 0 "R20" H 8320 4446 50  0000 L CNN
F 1 "220" H 8320 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8180 4400 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 8250 4400 50  0001 C CNN
F 4 "RC1206FR-07220RL" H 8250 4400 50  0001 C CNN "manf#"
	1    8250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3850 8250 3800
Wire Wire Line
	8250 3800 8950 3800
Wire Wire Line
	8250 4550 8250 4600
Wire Wire Line
	8250 4600 8950 4600
Wire Wire Line
	8950 3800 9600 3800
Wire Wire Line
	8950 4600 9600 4600
$Comp
L power:+5V #PWR033
U 1 1 61979335
P 8950 3750
AR Path="/61979335" Ref="#PWR033"  Part="1" 
AR Path="/6102C68D/61979335" Ref="#PWR?"  Part="1" 
F 0 "#PWR033" H 8950 3600 50  0001 C CNN
F 1 "+5V" H 8965 3923 50  0000 C CNN
F 2 "" H 8950 3750 50  0001 C CNN
F 3 "" H 8950 3750 50  0001 C CNN
	1    8950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4850 8300 4850
Wire Wire Line
	10300 4600 10300 4200
Wire Wire Line
	10300 4200 10500 4200
Wire Wire Line
	10300 3800 10300 4100
Wire Wire Line
	10300 4100 10500 4100
Wire Wire Line
	10400 3650 10400 4300
Wire Wire Line
	10400 4300 10500 4300
Wire Wire Line
	9900 3650 10400 3650
$Comp
L ZMPT101B:ZMPT101B T1
U 1 1 6198F6BA
P 2150 2700
F 0 "T1" H 2216 3090 50  0000 C CNN
F 1 "ZMPT101B" H 2216 2999 50  0000 C CNN
F 2 "ZMPT101B:ZMPT101B" H 2150 2700 50  0001 L BNN
F 3 "" H 2150 2700 50  0001 L BNN
F 4 "18.8mm" H 2150 2700 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 2150 2700 50  0001 L BNN "STANDARD"
F 6 "NA" H 2150 2700 50  0001 L BNN "PARTREV"
F 7 "Qingxian Zeming Langxi Electronic" H 2150 2700 50  0001 L BNN "MANUFACTURER"
F 8 "ZMPT101B" H 2150 2700 50  0001 C CNN "manf#"
	1    2150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1300 1350 1300
Wire Wire Line
	1350 1300 1350 2500
Wire Wire Line
	1750 2500 1850 2500
$Comp
L Device:R R3
U 1 1 619CF033
P 1600 2500
AR Path="/619CF033" Ref="R3"  Part="1" 
AR Path="/6102C68D/619CF033" Ref="R?"  Part="1" 
AR Path="/610A0B30/619CF033" Ref="R?"  Part="1" 
AR Path="/610C441E/619CF033" Ref="R?"  Part="1" 
F 0 "R3" V 1500 2400 50  0000 C CNN
F 1 "220k" V 1500 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1530 2500 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1600 2500 50  0001 C CNN
F 4 "RC1206FR-07220KL" H 1600 2500 50  0001 C CNN "manf#"
	1    1600 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 619CF2F3
P 2900 2700
AR Path="/619CF2F3" Ref="R4"  Part="1" 
AR Path="/6102C68D/619CF2F3" Ref="R?"  Part="1" 
AR Path="/610A0B30/619CF2F3" Ref="R?"  Part="1" 
AR Path="/610C441E/619CF2F3" Ref="R?"  Part="1" 
F 0 "R4" V 2800 2600 50  0000 C CNN
F 1 "1k" V 2800 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2830 2700 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 2900 2700 50  0001 C CNN
F 4 "RC1206FR-071KL" H 2900 2700 50  0001 C CNN "manf#"
	1    2900 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 2500 2900 2500
Wire Wire Line
	2900 2500 2900 2550
Wire Wire Line
	2450 2900 2900 2900
Wire Wire Line
	2900 2900 2900 2850
$Comp
L power:+3V3 #PWR021
U 1 1 619F98F4
P 6050 2550
AR Path="/619F98F4" Ref="#PWR021"  Part="1" 
AR Path="/60CF66AD/619F98F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 6050 2400 50  0001 C CNN
F 1 "+3V3" H 6065 2723 50  0000 C CNN
F 2 "" H 6050 2550 50  0001 C CNN
F 3 "" H 6050 2550 50  0001 C CNN
	1    6050 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioPlug3 J4
U 1 1 61A29CC2
P 2150 3900
F 0 "J4" H 2207 4267 50  0000 C CNN
F 1 "jack3.5mm" H 2207 4176 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 2250 3850 50  0001 C CNN
F 3 "~" H 2250 3850 50  0001 C CNN
	1    2150 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 61A2BD32
P 6800 4350
F 0 "R18" H 6870 4396 50  0000 L CNN
F 1 "10k" H 6870 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6730 4350 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 6800 4350 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 6800 4350 50  0001 C CNN "manf#"
	1    6800 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 61A2BD39
P 6800 4750
F 0 "R19" H 6870 4796 50  0000 L CNN
F 1 "10k" H 6870 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6730 4750 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 6800 4750 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 6800 4750 50  0001 C CNN "manf#"
	1    6800 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 61A2BD3F
P 6800 4900
F 0 "#PWR031" H 6800 4650 50  0001 C CNN
F 1 "GND" H 6805 4727 50  0000 C CNN
F 2 "" H 6800 4900 50  0001 C CNN
F 3 "" H 6800 4900 50  0001 C CNN
	1    6800 4900
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR030
U 1 1 61A2BD4A
P 6800 4150
AR Path="/61A2BD4A" Ref="#PWR030"  Part="1" 
AR Path="/60CF66AD/61A2BD4A" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 6800 4000 50  0001 C CNN
F 1 "+3V3" H 6815 4323 50  0000 C CNN
F 2 "" H 6800 4150 50  0001 C CNN
F 3 "" H 6800 4150 50  0001 C CNN
	1    6800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4150 6800 4200
NoConn ~ 2750 3900
Wire Wire Line
	2750 4000 3000 4000
$Comp
L Device:R R5
U 1 1 61AADFAA
P 3250 4100
F 0 "R5" H 3320 4146 50  0000 L CNN
F 1 "?" H 3320 4055 50  0001 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3180 4100 50  0001 C CNN
F 3 "" H 3250 4100 50  0001 C CNN
F 4 "" H 3250 4100 50  0001 C CNN "manf#"
	1    3250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4250 3250 4400
Connection ~ 2900 2900
NoConn ~ 5650 3200
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 61B8F9E7
P 2500 4300
AR Path="/61B8F9E7" Ref="J5"  Part="1" 
AR Path="/60CF66AD/61B8F9E7" Ref="J?"  Part="1" 
F 0 "J5" H 2500 4400 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2418 4426 50  0001 C CNN
F 2 "libs:TerminalBlock_bornier-2_P5.08mm" H 2500 4300 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 2500 4300 50  0001 C CNN
F 4 "796636-2" H 2500 4300 50  0001 C CNN "manf#"
	1    2500 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2700 4300 2850 4300
Wire Wire Line
	2850 4300 2850 3800
Wire Wire Line
	2850 3800 2750 3800
Wire Wire Line
	2700 4400 3000 4400
Connection ~ 2850 3800
Connection ~ 3950 7350
Wire Wire Line
	4100 7350 3950 7350
Connection ~ 3650 7100
Wire Wire Line
	4100 7100 3650 7100
Text GLabel 4100 7350 2    39   Output ~ 0
GPIO0
Text GLabel 4100 7100 2    39   Output ~ 0
RESET
Connection ~ 2500 7350
$Comp
L power:+3V3 #PWR011
U 1 1 60D70DA7
P 3950 6700
F 0 "#PWR011" H 3950 6550 50  0001 C CNN
F 1 "+3V3" H 3965 6873 50  0000 C CNN
F 2 "" H 3950 6700 50  0001 C CNN
F 3 "" H 3950 6700 50  0001 C CNN
	1    3950 6700
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 60D70363
P 3650 6700
F 0 "#PWR09" H 3650 6550 50  0001 C CNN
F 1 "+3V3" H 3665 6873 50  0000 C CNN
F 2 "" H 3650 6700 50  0001 C CNN
F 3 "" H 3650 6700 50  0001 C CNN
	1    3650 6700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 7350 3950 7000
Wire Wire Line
	3650 7000 3650 7100
$Comp
L Device:R R9
U 1 1 60D569B0
P 3950 6850
F 0 "R9" H 4020 6896 50  0000 L CNN
F 1 "10k" H 4020 6805 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3880 6850 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 3950 6850 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 3950 6850 50  0001 C CNN "manf#"
	1    3950 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 60D55C7D
P 3650 6850
F 0 "R8" H 3720 6896 50  0000 L CNN
F 1 "10k" H 3720 6805 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3580 6850 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 3650 6850 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 3650 6850 50  0001 C CNN "manf#"
	1    3650 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7100 2600 7100
Wire Wire Line
	2500 7350 2500 7100
Wire Wire Line
	2500 7350 2600 7350
$Comp
L Switch:SW_Push SW1
U 1 1 60D3BEF3
P 2800 7100
F 0 "SW1" H 2950 7200 50  0000 C CNN
F 1 "SW_Push" H 2800 7294 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2800 7300 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2800 7300 50  0001 C CNN
F 4 "1-1825910-0" H 2800 7100 50  0001 C CNN "manf#"
	1    2800 7100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60D3B594
P 2800 7350
F 0 "SW2" H 2950 7450 50  0000 C CNN
F 1 "SW_Push" H 2800 7544 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2800 7550 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2800 7550 50  0001 C CNN
F 4 "1-1825910-0" H 2800 7350 50  0001 C CNN "manf#"
	1    2800 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60D3B2F3
P 2500 7350
F 0 "#PWR08" H 2500 7100 50  0001 C CNN
F 1 "GND" H 2505 7177 50  0000 C CNN
F 2 "" H 2500 7350 50  0001 C CNN
F 3 "" H 2500 7350 50  0001 C CNN
	1    2500 7350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61636741
P 3300 7100
AR Path="/61636741" Ref="R6"  Part="1" 
AR Path="/6102C68D/61636741" Ref="R?"  Part="1" 
AR Path="/610A0B30/61636741" Ref="R?"  Part="1" 
AR Path="/610C441E/61636741" Ref="R?"  Part="1" 
F 0 "R6" V 3200 7000 50  0000 C CNN
F 1 "470" V 3200 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3230 7100 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 3300 7100 50  0001 C CNN
F 4 "RC1206FR-07470RL" H 3300 7100 50  0001 C CNN "manf#"
	1    3300 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 7100 3650 7100
Wire Wire Line
	3150 7100 3000 7100
Wire Wire Line
	3450 7350 3950 7350
Wire Wire Line
	3150 7350 3000 7350
$Comp
L Device:R R7
U 1 1 6166900B
P 3300 7350
AR Path="/6166900B" Ref="R7"  Part="1" 
AR Path="/6102C68D/6166900B" Ref="R?"  Part="1" 
AR Path="/610A0B30/6166900B" Ref="R?"  Part="1" 
AR Path="/610C441E/6166900B" Ref="R?"  Part="1" 
F 0 "R7" V 3200 7250 50  0000 C CNN
F 1 "470" V 3200 7450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3230 7350 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 3300 7350 50  0001 C CNN
F 4 "RC1206FR-07470RL" H 3300 7350 50  0001 C CNN "manf#"
	1    3300 7350
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 616695EE
P 6300 6800
AR Path="/616695EE" Ref="R15"  Part="1" 
AR Path="/6102C68D/616695EE" Ref="R?"  Part="1" 
AR Path="/610A0B30/616695EE" Ref="R?"  Part="1" 
AR Path="/610C441E/616695EE" Ref="R?"  Part="1" 
F 0 "R15" V 6200 6700 50  0000 C CNN
F 1 "470" V 6200 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6230 6800 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 6300 6800 50  0001 C CNN
F 4 "RC1206FR-07470RL" H 6300 6800 50  0001 C CNN "manf#"
	1    6300 6800
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 61669B29
P 6300 7100
AR Path="/61669B29" Ref="R16"  Part="1" 
AR Path="/6102C68D/61669B29" Ref="R?"  Part="1" 
AR Path="/610A0B30/61669B29" Ref="R?"  Part="1" 
AR Path="/610C441E/61669B29" Ref="R?"  Part="1" 
F 0 "R16" V 6200 7000 50  0000 C CNN
F 1 "470" V 6200 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6230 7100 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 6300 7100 50  0001 C CNN
F 4 "RC1206FR-07470RL" H 6300 7100 50  0001 C CNN "manf#"
	1    6300 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 6800 6050 6800
Wire Wire Line
	6050 6800 6050 6900
Wire Wire Line
	5250 6900 6050 6900
Wire Wire Line
	6050 7000 6050 7100
Wire Wire Line
	6050 7100 6150 7100
Wire Wire Line
	5250 7000 6050 7000
$Comp
L Device:R R17
U 1 1 616385EA
P 6750 2700
F 0 "R17" H 6820 2746 50  0000 L CNN
F 1 "10k" H 6820 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6680 2700 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 6750 2700 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 6750 2700 50  0001 C CNN "manf#"
	1    6750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2900 6750 2900
Wire Wire Line
	6750 2900 6750 2850
Connection ~ 6750 2900
Wire Wire Line
	6750 2900 7000 2900
$Comp
L power:+3V3 #PWR027
U 1 1 61652AF9
P 6750 2550
AR Path="/61652AF9" Ref="#PWR027"  Part="1" 
AR Path="/60CF66AD/61652AF9" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 6750 2400 50  0001 C CNN
F 1 "+3V3" H 6765 2723 50  0000 C CNN
F 2 "" H 6750 2550 50  0001 C CNN
F 3 "" H 6750 2550 50  0001 C CNN
	1    6750 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 61653EED
P 4450 2500
AR Path="/61653EED" Ref="R12"  Part="1" 
AR Path="/6102C68D/61653EED" Ref="R?"  Part="1" 
AR Path="/610A0B30/61653EED" Ref="R?"  Part="1" 
AR Path="/610C441E/61653EED" Ref="R?"  Part="1" 
F 0 "R12" V 4350 2400 50  0000 C CNN
F 1 "1k" V 4350 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4380 2500 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4450 2500 50  0001 C CNN
F 4 "RC1206FR-071KL" H 4450 2500 50  0001 C CNN "manf#"
	1    4450 2500
	0    1    1    0   
$EndComp
Text Notes 3100 4550 0    50   ~ 0
Opcional
Text Notes 1700 3050 0    50   ~ 0
Vout=(Vin/Rin)*Rout
Text Notes 1450 2300 0    50   ~ 0
Rin
Text Notes 2850 3050 0    50   ~ 0
Rout
Wire Notes Line
	2800 3100 2800 2450
Wire Notes Line
	2800 2450 3100 2450
Wire Notes Line
	3100 2450 3100 3100
Wire Notes Line
	3100 3100 2800 3100
Text Notes 1600 3150 0    50   ~ 0
1.65Vp=(363Vp/220k)*1k
Wire Notes Line
	3050 4600 3050 3650
Wire Notes Line
	3050 3650 3500 3650
Wire Notes Line
	3500 3650 3500 4600
Wire Notes Line
	3500 4600 3050 4600
Text Notes 6900 4550 0    50   ~ 0
Vref
Text Notes 6900 4650 0    50   ~ 0
+1.65V
Wire Notes Line
	7700 7200 7700 3400
Wire Notes Line
	7700 3400 11100 3400
Wire Notes Line
	11100 3400 11100 7200
Wire Notes Line
	11100 7200 7700 7200
Text Notes 9850 7150 0    50   ~ 10
Opcional, para aprovechar PCB
Wire Notes Line
	4700 6300 6900 6300
Wire Notes Line
	6900 6300 6900 7750
Wire Notes Line
	6900 7750 4700 7750
Wire Notes Line
	4700 7750 4700 6300
Text Notes 4750 6400 0    50   ~ 10
Conexión a computadora
Wire Notes Line
	4600 6350 4600 7750
Text Notes 2400 6450 0    50   ~ 10
Botones de programación
Wire Notes Line
	550  7750 550  6150
Wire Notes Line
	2250 6150 2250 7750
Text Notes 600  6300 0    50   ~ 10
Conector de expansión
Wire Notes Line
	550  6050 550  4600
Wire Notes Line
	550  4600 2750 4600
Wire Notes Line
	2750 4600 2750 6050
Wire Notes Line
	2750 6050 550  6050
Text Notes 1500 6000 0    50   ~ 10
Opcional, para aprovechar PCB
Text Notes 1750 4200 0    50   ~ 0
Vout=1Vp/100A
Wire Wire Line
	1200 1400 1250 1400
Wire Wire Line
	1250 2900 1250 1400
Wire Notes Line
	1400 2200 1850 2200
Wire Notes Line
	1850 2550 1400 2550
Connection ~ 2900 2500
$Comp
L Device:R R10
U 1 1 61804C3F
P 4050 2500
AR Path="/61804C3F" Ref="R10"  Part="1" 
AR Path="/6102C68D/61804C3F" Ref="R?"  Part="1" 
AR Path="/610A0B30/61804C3F" Ref="R?"  Part="1" 
AR Path="/610C441E/61804C3F" Ref="R?"  Part="1" 
F 0 "R10" V 3950 2400 50  0000 C CNN
F 1 "27k" V 3950 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3980 2500 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4050 2500 50  0001 C CNN
F 4 "RC1206FR-0727KL" H 4050 2500 50  0001 C CNN "manf#"
	1    4050 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 61805164
P 4050 3350
AR Path="/61805164" Ref="R11"  Part="1" 
AR Path="/6102C68D/61805164" Ref="R?"  Part="1" 
AR Path="/610A0B30/61805164" Ref="R?"  Part="1" 
AR Path="/610C441E/61805164" Ref="R?"  Part="1" 
F 0 "R11" V 3950 3250 50  0000 C CNN
F 1 "27k" V 3950 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3980 3350 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4050 3350 50  0001 C CNN
F 4 "RC1206FR-0727KL" H 4050 3350 50  0001 C CNN "manf#"
	1    4050 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 618217C4
P 4250 3550
F 0 "C5" H 4365 3596 50  0000 L CNN
F 1 "100nF" H 4365 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4288 3400 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 4250 3550 50  0001 C CNN
F 4 "50V" H 4250 3550 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 4250 3550 50  0001 C CNN "manf#"
	1    4250 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 618431B6
P 4250 2700
F 0 "C4" H 4365 2746 50  0000 L CNN
F 1 "100nF" H 4365 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4288 2550 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 4250 2700 50  0001 C CNN
F 4 "50V" H 4250 2700 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 4250 2700 50  0001 C CNN "manf#"
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 61851192
P 4250 3700
F 0 "#PWR014" H 4250 3450 50  0001 C CNN
F 1 "GND" H 4255 3527 50  0000 C CNN
F 2 "" H 4250 3700 50  0001 C CNN
F 3 "" H 4250 3700 50  0001 C CNN
	1    4250 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 618514A3
P 4250 2850
F 0 "#PWR013" H 4250 2600 50  0001 C CNN
F 1 "GND" H 4255 2677 50  0000 C CNN
F 2 "" H 4250 2850 50  0001 C CNN
F 3 "" H 4250 2850 50  0001 C CNN
	1    4250 2850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61653268
P 4450 3350
AR Path="/61653268" Ref="R13"  Part="1" 
AR Path="/6102C68D/61653268" Ref="R?"  Part="1" 
AR Path="/610A0B30/61653268" Ref="R?"  Part="1" 
AR Path="/610C441E/61653268" Ref="R?"  Part="1" 
F 0 "R13" V 4350 3250 50  0000 C CNN
F 1 "1k" V 4350 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4380 3350 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4450 3350 50  0001 C CNN
F 4 "RC1206FR-071KL" H 4450 3350 50  0001 C CNN "manf#"
	1    4450 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3350 4250 3350
Wire Wire Line
	4250 3400 4250 3350
Connection ~ 4250 3350
Wire Wire Line
	4250 3350 4300 3350
Wire Wire Line
	4250 2550 4250 2500
Wire Wire Line
	4250 2500 4300 2500
Wire Wire Line
	4250 2500 4200 2500
Connection ~ 4250 2500
Wire Wire Line
	2850 3350 2850 3800
Wire Wire Line
	3000 4000 3000 4400
Wire Wire Line
	2850 3350 3250 3350
Wire Wire Line
	3000 4400 3250 4400
Connection ~ 3000 4400
Wire Wire Line
	3250 4400 3550 4400
Connection ~ 3250 4400
Wire Wire Line
	3250 3350 3250 3950
Connection ~ 3250 3350
Wire Wire Line
	3250 3350 3900 3350
Wire Wire Line
	1350 2500 1450 2500
Wire Wire Line
	1250 2900 1850 2900
Wire Wire Line
	2900 2900 3550 2900
Wire Wire Line
	2900 2500 3900 2500
Wire Notes Line
	2250 7750 550  7750
Wire Notes Line
	550  6150 2250 6150
Wire Notes Line
	2350 7750 2350 6350
Wire Notes Line
	2350 6350 4600 6350
Wire Notes Line
	4600 7750 2350 7750
Wire Notes Line
	3850 2300 4700 2300
Wire Notes Line
	4700 2300 4700 4000
Wire Notes Line
	4700 4000 3850 4000
Text Notes 3850 4150 0    50   ~ 10
Filtro LP
Wire Notes Line
	3850 4850 5500 4850
Wire Notes Line
	3850 4000 3850 2300
Wire Notes Line style solid
	3850 4150 4350 4150
Text Notes 3900 5050 0    50   ~ 0
Fc=1/2piRC=1/(2pi*27000*100*10^-9)\nFc=58.94Hz
Text Notes 3900 5250 0    50   ~ 0
Xc=1/2pi*f*C=1/(2pi*50*100*10^-9)\nXc=31831 ohm
Text Notes 3900 5450 0    50   ~ 0
Vout=Vin*Xc/Sqrt(R^2+Xc^2)\nVout=Vin*0.7626051 @ 50Hz (-2.35dB)
Wire Notes Line
	3850 5500 5500 5500
Wire Notes Line
	5500 4850 5500 5500
Wire Notes Line
	3850 4850 3850 5500
Text Notes 4450 5600 0    50   Italic 10
Calculos filtro Pasa-Bajos
Wire Notes Line
	11100 3100 7300 3100
Wire Notes Line
	7300 3100 7300 900 
Wire Notes Line
	7300 900  11100 900 
Wire Notes Line
	11100 900  11100 3100
Text Notes 7350 1000 0    50   ~ 10
Microcontrolador ESP8266
Text Notes 7450 2950 0    50   ~ 0
Características:\n- 4MB FLASH\n- 128KB RAM\n- 32bits, 160MHz\n- ADC 10bit SAR\n- WiFi, I2C, I2S, SPI, ULP
Wire Notes Line style solid
	4350 4150 4350 4850
Wire Wire Line
	1250 1400 1250 950 
Wire Wire Line
	1250 950  2800 950 
Connection ~ 1250 1400
Wire Wire Line
	2800 1150 1350 1150
Wire Wire Line
	1350 1150 1350 1300
Connection ~ 1350 1300
Wire Notes Line
	750  1650 750  800 
Wire Notes Line
	750  800  1650 800 
Wire Notes Line
	1650 800  1650 1650
Wire Notes Line
	1650 1650 750  1650
Wire Notes Line
	2650 550  7050 550 
Wire Notes Line
	7050 550  7050 2100
Text Notes 800  900  0    50   ~ 10
Entrada 220v
Text Notes 2700 650  0    50   ~ 10
Fuente de alimentación
Wire Wire Line
	5350 3300 5650 3300
Wire Wire Line
	5050 3100 5050 3350
Wire Wire Line
	5050 3350 4600 3350
Wire Wire Line
	5050 3100 5650 3100
Wire Wire Line
	5050 3000 5050 2500
Wire Wire Line
	5050 2500 4600 2500
Wire Wire Line
	5050 3000 5650 3000
Wire Notes Line
	5500 3800 5500 2250
Wire Notes Line
	5500 2250 7200 2250
Wire Notes Line
	7200 2250 7200 3800
Wire Notes Line
	7200 3800 5500 3800
Text Notes 5550 2350 0    50   ~ 10
ADC
Wire Wire Line
	3550 2900 3550 4400
Wire Wire Line
	6800 4500 6800 4550
Wire Wire Line
	3550 4400 5350 4400
Wire Wire Line
	5350 4400 5350 3300
Connection ~ 3550 4400
Connection ~ 6800 4550
Wire Wire Line
	6800 4550 6800 4600
Wire Notes Line
	7200 3900 7200 5200
Text Notes 5950 4100 0    50   ~ 10
Referencia de\nTensión
Wire Notes Line
	5900 5200 5900 3900
Wire Wire Line
	5350 4550 5350 4400
Wire Wire Line
	5350 4550 6200 4550
Connection ~ 5350 4400
Wire Notes Line
	3200 3250 3200 1950
Wire Notes Line
	3200 1950 750  1950
Wire Notes Line
	750  1950 750  3250
Wire Notes Line
	750  3250 3200 3250
Wire Notes Line
	1550 3300 2950 3300
Wire Notes Line
	2950 3300 2950 4550
Wire Notes Line
	2950 4550 1550 4550
Wire Notes Line
	1550 4550 1550 3300
Text Notes 1600 3500 0    50   ~ 10
Transformador de\nCorriente
Text Notes 1450 2050 0    50   ~ 10
Transformador de corriente
Text Notes 1650 2150 0    50   Italic 10
(conversor de tensión)
Wire Notes Line
	1850 2200 1850 2550
Wire Notes Line
	1400 2550 1400 2200
Wire Notes Line
	7050 2100 3200 2100
Wire Notes Line
	2650 550  2650 1950
$Comp
L power:GND #PWR023
U 1 1 61D9324B
P 6200 4900
F 0 "#PWR023" H 6200 4650 50  0001 C CNN
F 1 "GND" H 6205 4727 50  0000 C CNN
F 2 "" H 6200 4900 50  0001 C CNN
F 3 "" H 6200 4900 50  0001 C CNN
	1    6200 4900
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 61D93257
P 6200 4750
F 0 "C7" H 6315 4796 50  0000 L CNN
F 1 "100nF" H 6315 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6238 4600 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 6200 4750 50  0001 C CNN
F 4 "50V" H 6200 4750 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 6200 4750 50  0001 C CNN "manf#"
	1    6200 4750
	1    0    0    -1  
$EndComp
Wire Notes Line
	5900 5200 7200 5200
Wire Notes Line
	5900 3900 7200 3900
Wire Wire Line
	6200 4600 6200 4550
Connection ~ 6200 4550
Wire Wire Line
	6200 4550 6800 4550
Text Notes 5550 3750 0    50   Italic 10
ADS1015
$Comp
L Analog_ADC:ADS1015IDGS U2
U 1 1 618BEFC5
P 6050 3100
F 0 "U2" H 5800 3550 50  0000 C CNN
F 1 "ADS1015IDGS" H 6350 3550 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 6050 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1015.pdf" H 6000 2200 50  0001 C CNN
F 4 "ADS1015IDGS" H 6050 3100 50  0001 C CNN "manf#"
	1    6050 3100
	1    0    0    -1  
$EndComp
Text Notes 10050 1100 0    50   Italic 0
*No poner plano de masa\n debajo de la antena
Text Notes 7750 3550 0    50   ~ 10
Salidas de RELAY
Text Notes 600  4700 0    50   ~ 10
Entrada Analógica
$EndSCHEMATC
