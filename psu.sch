EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L power:GND #PWR?
U 1 1 60D14BB9
P 5100 4150
AR Path="/60D14BB9" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14BB9" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 5100 3900 50  0001 C CNN
F 1 "GND" H 5105 3977 50  0000 C CNN
F 2 "" H 5100 4150 50  0001 C CNN
F 3 "" H 5100 4150 50  0001 C CNN
	1    5100 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 60D14BBF
P 5100 3550
AR Path="/60D14BBF" Ref="D?"  Part="1" 
AR Path="/60CF66AD/60D14BBF" Ref="D2"  Part="1" 
F 0 "D2" V 5139 3432 50  0000 R CNN
F 1 "LED" V 5048 3432 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 5100 3550 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Stanley%20Electric%20PDFs/1101W_Series.pdf" H 5100 3550 50  0001 C CNN
F 4 "BR1101W-TR" H 5139 3532 50  0001 C CNN "manf#"
	1    5100 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60D14BC5
P 5100 3950
AR Path="/60D14BC5" Ref="R?"  Part="1" 
AR Path="/60CF66AD/60D14BC5" Ref="R7"  Part="1" 
F 0 "R7" H 5170 3996 50  0000 L CNN
F 1 "1k" H 5170 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5030 3950 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 5100 3950 50  0001 C CNN
F 4 "RC1206FR-071KL" H 5170 4096 50  0001 C CNN "manf#"
	1    5100 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14BD2
P 6900 3550
AR Path="/60D14BD2" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14BD2" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 6900 3300 50  0001 C CNN
F 1 "GND" H 6905 3377 50  0000 C CNN
F 2 "" H 6900 3550 50  0001 C CNN
F 3 "" H 6900 3550 50  0001 C CNN
	1    6900 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60D14C36
P 8550 3200
AR Path="/60D14C36" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D14C36" Ref="C9"  Part="1" 
F 0 "C9" H 8668 3291 50  0000 L CNN
F 1 "470uF" H 8668 3200 50  0000 L CNN
F 2 "libs:CAP_10x10_SMD_THT" H 8588 3050 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 8550 3200 50  0001 C CNN
F 4 "25V" H 8668 3109 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 8668 3391 50  0001 C CNN "manf#"
	1    8550 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C3D
P 8550 3550
AR Path="/60D14C3D" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C3D" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 8550 3300 50  0001 C CNN
F 1 "GND" H 8555 3377 50  0000 C CNN
F 2 "" H 8550 3550 50  0001 C CNN
F 3 "" H 8550 3550 50  0001 C CNN
	1    8550 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C49
P 7800 3550
AR Path="/60D14C49" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C49" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 7800 3300 50  0001 C CNN
F 1 "GND" H 7805 3377 50  0000 C CNN
F 2 "" H 7800 3550 50  0001 C CNN
F 3 "" H 7800 3550 50  0001 C CNN
	1    7800 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C83
P 4650 4150
AR Path="/60D14C83" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C83" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 4650 3900 50  0001 C CNN
F 1 "GND" H 4655 3977 50  0000 C CNN
F 2 "" H 4650 4150 50  0001 C CNN
F 3 "" H 4650 4150 50  0001 C CNN
	1    4650 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60D14C8A
P 4650 3800
AR Path="/60D14C8A" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D14C8A" Ref="C6"  Part="1" 
F 0 "C6" H 4700 3900 50  0000 L CNN
F 1 "470uF" H 4700 3700 50  0000 L CNN
F 2 "libs:CAP_10x10_SMD_THT" H 4688 3650 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 4650 3800 50  0001 C CNN
F 4 "25V" H 4700 3600 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 4700 4000 50  0001 C CNN "manf#"
	1    4650 3800
	1    0    0    -1  
$EndComp
Text HLabel 8800 2750 2    39   Output ~ 0
VOUT
Wire Wire Line
	5100 3800 5100 3700
Wire Wire Line
	5100 4150 5100 4100
Wire Wire Line
	6900 3050 6900 2750
Wire Wire Line
	6900 3350 6900 3550
Wire Wire Line
	8550 2750 8550 3050
Wire Wire Line
	8550 3550 8550 3350
Wire Wire Line
	7800 3550 7800 3300
Wire Wire Line
	4650 3650 4650 3350
Wire Wire Line
	4650 4150 4650 3950
Wire Wire Line
	5100 3350 5100 3400
$Comp
L Device:C C?
U 1 1 60D14BD8
P 6900 3200
AR Path="/60D14BD8" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D14BD8" Ref="C7"  Part="1" 
F 0 "C7" H 6950 3300 50  0000 L CNN
F 1 "100nF" H 6950 3100 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6938 3050 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 6900 3200 50  0001 C CNN
F 4 "50V" H 6950 3400 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 6950 3400 50  0001 C CNN "manf#"
	1    6900 3200
	1    0    0    -1  
$EndComp
$Comp
L kf33:KF33BD-TR U4
U 1 1 617377F7
P 7800 2750
F 0 "U4" H 7800 3015 50  0000 C CNN
F 1 "KF33BD-TR" H 7800 2924 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 7700 2800 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/d7/80/b5/a2/a2/93/49/59/CD00000970.pdf/files/CD00000970.pdf/jcr:content/translations/en.CD00000970.pdf" H 7700 2800 50  0001 C CNN
	1    7800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2750 7400 2750
Wire Wire Line
	7400 2900 7300 2900
Wire Wire Line
	7300 2900 7300 3300
Wire Wire Line
	7300 3300 7800 3300
Connection ~ 7800 3300
Wire Wire Line
	7800 3300 7800 3150
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 6176FE3B
P 2300 3750
AR Path="/6176FE3B" Ref="J?"  Part="1" 
AR Path="/60CF66AD/6176FE3B" Ref="J4"  Part="1" 
F 0 "J4" H 2300 3850 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2218 3876 50  0001 C CNN
F 2 "libs:TerminalBlock_bornier-2_P5.08mm" H 2300 3750 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 2300 3750 50  0001 C CNN
F 4 "796636-2" H 2300 3750 50  0001 C CNN "manf#"
	1    2300 3750
	-1   0    0    -1  
$EndComp
$Comp
L Diode_Bridge:MB6S D1
U 1 1 6176FE41
P 3700 3800
AR Path="/60CF66AD/6176FE41" Ref="D1"  Part="1" 
AR Path="/6176FE41" Ref="D?"  Part="1" 
F 0 "D1" H 3450 4000 50  0000 L CNN
F 1 "MB6S" H 3850 3600 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-269AA" H 3850 3925 50  0001 L CNN
F 3 "http://www.vishay.com/docs/88573/dfs.pdf" H 3700 3800 50  0001 C CNN
	1    3700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3750 2600 3750
Wire Wire Line
	2600 3750 2600 3400
Wire Wire Line
	3700 3400 3700 3500
Wire Wire Line
	2500 3850 2600 3850
Wire Wire Line
	2600 3850 2600 4200
Wire Wire Line
	3700 4200 3700 4100
Wire Wire Line
	2600 3400 3700 3400
Wire Wire Line
	2600 4200 3700 4200
Wire Wire Line
	8800 2750 8550 2750
Wire Wire Line
	8550 2750 8200 2750
Connection ~ 8550 2750
$Comp
L power:GND #PWR?
U 1 1 617851FA
P 6900 5000
AR Path="/617851FA" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/617851FA" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 6900 4750 50  0001 C CNN
F 1 "GND" H 6905 4827 50  0000 C CNN
F 2 "" H 6900 5000 50  0001 C CNN
F 3 "" H 6900 5000 50  0001 C CNN
	1    6900 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 61785202
P 8550 4650
AR Path="/61785202" Ref="C?"  Part="1" 
AR Path="/60CF66AD/61785202" Ref="C10"  Part="1" 
F 0 "C10" H 8668 4741 50  0000 L CNN
F 1 "470uF" H 8668 4650 50  0000 L CNN
F 2 "libs:CAP_10x10_SMD_THT" H 8588 4500 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 8550 4650 50  0001 C CNN
F 4 "25V" H 8668 4559 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 8668 4841 50  0001 C CNN "manf#"
	1    8550 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61785208
P 8550 5000
AR Path="/61785208" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/61785208" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 8550 4750 50  0001 C CNN
F 1 "GND" H 8555 4827 50  0000 C CNN
F 2 "" H 8550 5000 50  0001 C CNN
F 3 "" H 8550 5000 50  0001 C CNN
	1    8550 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6178520E
P 7800 5000
AR Path="/6178520E" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/6178520E" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 7800 4750 50  0001 C CNN
F 1 "GND" H 7805 4827 50  0000 C CNN
F 2 "" H 7800 5000 50  0001 C CNN
F 3 "" H 7800 5000 50  0001 C CNN
	1    7800 5000
	1    0    0    -1  
$EndComp
Text HLabel 8800 4200 2    39   Output ~ 0
VOUT_5V
Wire Wire Line
	6900 4500 6900 4200
Wire Wire Line
	6900 4800 6900 5000
Wire Wire Line
	8550 4200 8550 4500
Wire Wire Line
	8550 5000 8550 4800
Wire Wire Line
	7800 5000 7800 4750
$Comp
L Device:C C?
U 1 1 6178521C
P 6900 4650
AR Path="/6178521C" Ref="C?"  Part="1" 
AR Path="/60CF66AD/6178521C" Ref="C8"  Part="1" 
F 0 "C8" H 6950 4750 50  0000 L CNN
F 1 "100nF" H 6950 4550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6938 4500 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 6900 4650 50  0001 C CNN
F 4 "50V" H 6950 4850 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 6950 4850 50  0001 C CNN "manf#"
	1    6900 4650
	1    0    0    -1  
$EndComp
$Comp
L kf33:KF33BD-TR U5
U 1 1 61785222
P 7800 4200
F 0 "U5" H 7800 4465 50  0000 C CNN
F 1 "KF50BD-TR" H 7800 4374 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 7700 4250 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/d7/80/b5/a2/a2/93/49/59/CD00000970.pdf/files/CD00000970.pdf/jcr:content/translations/en.CD00000970.pdf" H 7700 4250 50  0001 C CNN
	1    7800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4200 7400 4200
Wire Wire Line
	7400 4350 7300 4350
Wire Wire Line
	7300 4350 7300 4750
Wire Wire Line
	7300 4750 7800 4750
Connection ~ 7800 4750
Wire Wire Line
	7800 4750 7800 4600
Wire Wire Line
	8800 4200 8550 4200
Wire Wire Line
	8550 4200 8200 4200
Connection ~ 8550 4200
$Comp
L power:GND #PWR?
U 1 1 6178DDB5
P 4250 4150
AR Path="/6178DDB5" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/6178DDB5" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4250 3900 50  0001 C CNN
F 1 "GND" H 4255 3977 50  0000 C CNN
F 2 "" H 4250 4150 50  0001 C CNN
F 3 "" H 4250 4150 50  0001 C CNN
	1    4250 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 6178DDBD
P 4250 3800
AR Path="/6178DDBD" Ref="C?"  Part="1" 
AR Path="/60CF66AD/6178DDBD" Ref="C5"  Part="1" 
F 0 "C5" H 4300 3900 50  0000 L CNN
F 1 "470uF" H 4300 3700 50  0000 L CNN
F 2 "libs:CAP_10x10_SMD_THT" H 4288 3650 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 4250 3800 50  0001 C CNN
F 4 "25V" H 4300 3600 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 4300 4000 50  0001 C CNN "manf#"
	1    4250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3650 4250 3350
Wire Wire Line
	4250 4150 4250 3950
Wire Wire Line
	4250 3350 4650 3350
Connection ~ 4650 3350
Wire Wire Line
	4650 3350 5100 3350
$Comp
L power:GND #PWR?
U 1 1 617902C1
P 3300 3900
AR Path="/617902C1" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/617902C1" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 3300 3650 50  0001 C CNN
F 1 "GND" H 3305 3727 50  0000 C CNN
F 2 "" H 3300 3900 50  0001 C CNN
F 3 "" H 3300 3900 50  0001 C CNN
	1    3300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3900 3300 3800
Wire Wire Line
	3300 3800 3400 3800
Wire Wire Line
	4000 3800 4100 3800
Wire Wire Line
	4100 3800 4100 3350
Wire Wire Line
	4100 3350 4250 3350
Connection ~ 4250 3350
Wire Wire Line
	5100 3350 6600 3350
Wire Wire Line
	6600 3350 6600 2750
Wire Wire Line
	6600 2750 6900 2750
Connection ~ 5100 3350
Connection ~ 6900 2750
Wire Wire Line
	6600 3350 6600 4200
Wire Wire Line
	6600 4200 6900 4200
Connection ~ 6600 3350
Connection ~ 6900 4200
$EndSCHEMATC
