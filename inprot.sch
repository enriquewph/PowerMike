EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L Diode:BAT54S D?
U 1 1 60E60B36
P 5700 3900
AR Path="/60E45CE9/60E60B36" Ref="D?"  Part="1" 
AR Path="/61276139/60E60B36" Ref="D?"  Part="1" 
AR Path="/612F6239/60E60B36" Ref="D5"  Part="1" 
AR Path="/6132323D/60E60B36" Ref="D?"  Part="1" 
F 0 "D5" V 5746 3988 50  0000 L CNN
F 1 "BAT54S" V 5655 3988 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5775 4025 50  0001 L CNN
F 3 "https://rocelec.widen.net/view/pdf/gyex6hm7nf/PHGLS25648-1.pdf?t.download=true&u=5oefqw" H 5580 3900 50  0001 C CNN
F 4 "BAT54S,215" H 5700 3900 50  0001 C CNN "manf#"
	1    5700 3900
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60E62337
P 5250 4350
AR Path="/60E45CE9/60E62337" Ref="R?"  Part="1" 
AR Path="/61276139/60E62337" Ref="R?"  Part="1" 
AR Path="/612F6239/60E62337" Ref="R10"  Part="1" 
AR Path="/6132323D/60E62337" Ref="R?"  Part="1" 
F 0 "R10" V 5150 4250 50  0000 C CNN
F 1 "1k" V 5150 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5180 4350 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 5250 4350 50  0001 C CNN
F 4 "RC1206FR-071KL" H 5250 4350 50  0001 C CNN "manf#"
	1    5250 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60E62A46
P 6100 4350
AR Path="/60E45CE9/60E62A46" Ref="R?"  Part="1" 
AR Path="/61276139/60E62A46" Ref="R?"  Part="1" 
AR Path="/612F6239/60E62A46" Ref="R11"  Part="1" 
AR Path="/6132323D/60E62A46" Ref="R?"  Part="1" 
F 0 "R11" V 6000 4250 50  0000 C CNN
F 1 "1k" V 6000 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6030 4350 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 6100 4350 50  0001 C CNN
F 4 "RC1206FR-071KL" H 6100 4350 50  0001 C CNN "manf#"
	1    6100 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E632B2
P 5700 4500
AR Path="/60E45CE9/60E632B2" Ref="#PWR?"  Part="1" 
AR Path="/61276139/60E632B2" Ref="#PWR?"  Part="1" 
AR Path="/612F6239/60E632B2" Ref="#PWR046"  Part="1" 
AR Path="/6132323D/60E632B2" Ref="#PWR?"  Part="1" 
F 0 "#PWR046" H 5700 4250 50  0001 C CNN
F 1 "GND" H 5705 4327 50  0000 C CNN
F 2 "" H 5700 4500 50  0001 C CNN
F 3 "" H 5700 4500 50  0001 C CNN
	1    5700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4200 5700 4500
$Comp
L power:+3V3 #PWR?
U 1 1 60E63A61
P 5700 3450
AR Path="/60E45CE9/60E63A61" Ref="#PWR?"  Part="1" 
AR Path="/61276139/60E63A61" Ref="#PWR?"  Part="1" 
AR Path="/612F6239/60E63A61" Ref="#PWR045"  Part="1" 
AR Path="/6132323D/60E63A61" Ref="#PWR?"  Part="1" 
F 0 "#PWR045" H 5700 3300 50  0001 C CNN
F 1 "+3V3" H 5715 3623 50  0000 C CNN
F 2 "" H 5700 3450 50  0001 C CNN
F 3 "" H 5700 3450 50  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3450 5700 3600
Text HLabel 5000 4350 0    39   Input ~ 0
IN
Text HLabel 6350 4350 2    39   Output ~ 0
OUT
Wire Wire Line
	6350 4350 6250 4350
Wire Wire Line
	5950 4350 5450 4350
Wire Wire Line
	5100 4350 5000 4350
Wire Wire Line
	5500 3900 5450 3900
Wire Wire Line
	5450 3900 5450 4350
Connection ~ 5450 4350
Wire Wire Line
	5450 4350 5400 4350
$EndSCHEMATC
