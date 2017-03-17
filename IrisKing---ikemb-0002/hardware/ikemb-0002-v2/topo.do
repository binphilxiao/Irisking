edit_pick_net_by_class  ADDR
define (class ADDR (topology (comp_order U1 U9)))
define (class ADDR (topology (comp_order U9 U13)))

edit_pick_net_by_class  DATA
define (class DATA (topology (comp_order U1 U9)))
define (class DATA (topology (comp_order U9 U8)))
define (class DATA (topology (comp_order U9 U13)))

edit_pick_net_by_class  DDR2_CON
define (class DDR2_CON (topology (comp_order U1 U74)))
define (class DDR2_CON (topology (comp_order U74 U75)))
define (class DDR2_CON (topology (comp_order U1 U76)))
define (class DDR2_CON (topology (comp_order U76 U77)))

edit_pick_net_by_class  DDR2_DATA
define (class DDR2_DATA (topology (comp_order U1 U74)))
define (class DDR2_DATA (topology (comp_order U74 U75)))
define (class DDR2_DATA (topology (comp_order U1 U76)))
define (class DDR2_DATA (topology (comp_order U76 U77)))

edit_pick_net_by_class  SDRAM_CON
define (class SDRAM_CON (topology (comp_order RP5 U28)))
define (class SDRAM_CON (topology (comp_order RP5 U29)))
define (class SDRAM_CON (topology (comp_order RP6 U28)))
define (class SDRAM_CON (topology (comp_order RP6 U29)))
define (class SDRAM_CON (topology (comp_order RP7 U28)))
define (class SDRAM_CON (topology (comp_order RP7 U29)))
define (class SDRAM_CON (topology (comp_order RP8 U28)))
define (class SDRAM_CON (topology (comp_order RP8 U29)))
define (class SDRAM_CON (topology (comp_order R105 U28)))
define (class SDRAM_CON (topology (comp_order R105 U29)))
define (class SDRAM_CON (topology (comp_order R106 U28)))
define (class SDRAM_CON (topology (comp_order R106 U29)))


edit_pick_net_by_class  PCI_AD
define (class PCI_AD (topology (comp_order U1 P4)))
define (class PCI_AD (topology (comp_order P4 U18)))

define (net PCI_CLK1 (fromto R299-1 P4-25  (circuit (length 4500 4400 (type actual)))))
define (net PCI_CLK2 (fromto R300-1 U18-C1 (circuit (length 5450 5350 (type actual)))))

define (net PCI_NGNT0 (fromto U1-AC11 U18-H4  (circuit (length 3450 3350 (type actual)))))
define (net PCI_NGNT1 (fromto U1-AE7 P4-30  (circuit (length 2500 2400 (type actual)))))

define (net PCI_NREQ0 (fromto U1-AB10 U18-F1  (type soft) (circuit (length 3450 3350 (type actual)))))
define (net PCI_NREQ1 (fromto U1-AD9 P4-29  (type soft) (circuit (length 2500 2400 (type actual)))))

define (net IRQ1 (fromto U1-K4 U18-G4 (circuit (length 3450 3350 (type actual)))))
define (net IRQ2 (fromto U1-K2 P4-20 (circuit (length 2500 2400 (type actual)))))

define (net PCI_NPME (fromto U1-AD22 P4-34  (type soft) (circuit (length 2500 2400 (type actual)))))

define (net PCI_C/NBE0 (fromto U1-AC19 P4-86  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_C/NBE0 (fromto P4-86 U18-V4  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_C/NBE1 (fromto U1-AB15 P4-73  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_C/NBE1 (fromto P4-73 U18-T2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_C/NBE2 (fromto U1-AF14 P4-59  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_C/NBE2 (fromto P4-59 U18-M1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_C/NBE3 (fromto U1-AF11 P4-45  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_C/NBE3 (fromto P4-45 U18-J2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_PAR (fromto U1-AD16 P4-56  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_PAR (fromto P4-56 U18-P3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_NFRAME (fromto U1-AF16 P4-64  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_NFRAME (fromto P4-64 U18-N4  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_NTRDY (fromto U1-AD13 P4-66  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_NTRDY (fromto P4-66 U18-N3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_NIRDY (fromto U1-AC15 P4-61  (type soft) (circuit (length 2500 2400 (type actual))))) 
define (net PCI_NIRDY (fromto P4-61 U18-N1 (type soft) (circuit (length 1000 900 (type actual))))) 

define (net PCI_NSTOP (fromto U1-AF13 P4-68  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_NSTOP (fromto P4-68 U18-R3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_NDEVSEL (fromto U1-AC14 P4-72  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_NDEVSEL (fromto P4-72 U18-P1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_NSERR (fromto U1-AE15 P4-67  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_NSERR (fromto P4-67 U18-R2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_NPERR (fromto U1-AD15 P4-71  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_NPERR (fromto P4-71 U18-R1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_NRST (fromto U1-AB11 P4-26  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_NRST (fromto P4-26 U18-G3  (type soft) (circuit (length 1000 900 (type actual)))))


define (net PCI_AD0 (fromto U1-AB20 P4-96  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD0 (fromto P4-96 U18-Y3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD1 (fromto U1-AF23 P4-99  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD1 (fromto P4-99 U18-AA1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD2 (fromto U1-AF22 P4-94  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD2 (fromto P4-94 U18-Y4  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD3 (fromto U1-AB19 P4-95  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD3 (fromto P4-95 U18-Y2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD4 (fromto U1-AE22 P4-92  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD4 (fromto P4-92 U18-W3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD5 (fromto U1-AF21 P4-91  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD5 (fromto P4-91 U18-Y1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD6 (fromto U1-AD19 P4-90  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD6 (fromto P4-90 U18-W4  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD7 (fromto U1-AD20 P4-87  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD7 (fromto P4-87 U18-W2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD8 (fromto U1-AC18 P4-85  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD8 (fromto P4-85 U18-V2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD9 (fromto U1-AD18 P4-84  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD9 (fromto P4-84 U18-V3 (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD10 (fromto U1-AB18 P4-81  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD10 (fromto P4-81 U18-V1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD11 (fromto U1-AE19 P4-80  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD11 (fromto P4-80 U18-U4  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD12 (fromto U1-AB17 P4-79  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD12 (fromto P4-79 U18-U2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD13 (fromto U1-AE18 P4-78  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD13 (fromto P4-78 U18-U3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD14 (fromto U1-AD17 P4-75  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD14 (fromto P4-75 U18-U1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD15 (fromto U1-AF19 P4-76  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD15 (fromto P4-76 U18-T3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD16 (fromto U1-AB14 P4-60  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD16 (fromto P4-60 U18-M3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD17 (fromto U1-AF15 P4-57  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD17 (fromto P4-57 U18-M2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD18 (fromto U1-AD14 P4-58  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD18 (fromto P4-58 U18-M4  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD19 (fromto U1-AE14 P4-53  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD19 (fromto P4-53 U18-L2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD20 (fromto U1-AF12 P4-54  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD20 (fromto P4-54 U18-L3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD21 (fromto U1-AE11 P4-51  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD21 (fromto P4-51 U18-K2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD22 (fromto U1-AD12 P4-52  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD22 (fromto P4-52 U18-L4  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD23 (fromto U1-AB13 P4-47  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD23 (fromto P4-47 U18-K1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD24 (fromto U1-AF9 P4-46  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD24 (fromto P4-46 U18-K4  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD25 (fromto U1-AD11 P4-41  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD25 (fromto P4-41 U18-J1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD26 (fromto U1-AE10 P4-44  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD26 (fromto P4-44 U18-J3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD27 (fromto U1-AB12 P4-39  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD27 (fromto P4-39 U18-H2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD28 (fromto U1-AD10 P4-42  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD28 (fromto P4-42 U18-J4  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD29 (fromto U1-AC10 P4-35  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD29 (fromto P4-35 U18-G2  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD30 (fromto U1-AF10 P4-38  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD30 (fromto P4-38 U18-H3  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD31 (fromto U1-AF8 P4-33  (type soft) (circuit (length 2500 2400 (type actual)))))
define (net PCI_AD31 (fromto P4-33 U18-G1  (type soft) (circuit (length 1000 900 (type actual)))))

define (net PCI_AD14 (fromto U1-AD17 R52-2  (type soft) (circuit (length 3050 2950 (type actual)))))
define (net PCI_AD15 (fromto U1-AF19 R351-2  (type soft) (circuit (length 2950 2850 (type actual)))))


SELECT NET *
UNSELECT NET GND
UNSELECT NET GND_EARTH
UNSELECT NET PLLVDD
UNSELECT NET V1.4V
UNSELECT NET V0.9V
UNSELECT NET V12V
UNSELECT NET V1.2V
UNSELECT NET V2.5V
UNSELECT NET V1.8V
UNSELECT NET V1V
UNSELECT NET V5V

UNSELECT NET V3.3V