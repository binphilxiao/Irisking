edit_pick_net_by_class  DDR2_DATA
define (class DDR2_DATA (topology (comp_order U1 U74)))
define (class DDR2_DATA (topology (comp_order U74 U75)))
define (class DDR2_DATA (topology (comp_order U1 U76)))
define (class DDR2_DATA (topology (comp_order U76 U77)))

edit_pick_net_by_class  PCI_AD
define (class PCI_AD (topology (comp_order U1 U80)))
define (class PCI_AD (topology (comp_order U80 U62)))
define (class PCI_AD (topology (comp_order U62 U18)))

edit_pick_net_by_class  SDRAM_CON
define (class SDRAM_CON (topology (comp_order RP5 U28)))
define (class SDRAM_CON (topology (comp_order RP5 U29)))
define (class SDRAM_CON (topology (comp_order RP8 U28)))
define (class SDRAM_CON (topology (comp_order RP8 U29)))
define (class SDRAM_CON (topology (comp_order RP6 U28)))
define (class SDRAM_CON (topology (comp_order RP6 U29)))
define (class SDRAM_CON (topology (comp_order RP7 U28)))
define (class SDRAM_CON (topology (comp_order RP7 U29)))
define (class SDRAM_CON (topology (comp_order R97 U28)))
define (class SDRAM_CON (topology (comp_order R97 U29)))
define (class SDRAM_CON (topology (comp_order R98 U28)))
define (class SDRAM_CON (topology (comp_order R98 U29)))
define (class SDRAM_CON (topology (comp_order R105 U28)))
define (class SDRAM_CON (topology (comp_order R105 U29)))
define (class SDRAM_CON (topology (comp_order R99 U28)))
define (class SDRAM_CON (topology (comp_order R99 U29)))
define (class SDRAM_CON (topology (comp_order R100 U28)))
define (class SDRAM_CON (topology (comp_order R100 U29)))


define (net PCI_CLK1 (fromto RP1-6 U80-B16  (circuit (length 5450 5350 (type actual)))))
define (net PCI_NGNT1 (fromto U1-AE7 U80-A17  (circuit (length 3350 3250 (type actual)))))
define (net PCI_NREQ1 (fromto U1-AD9 U80-B18  (type soft) (circuit (length 3350 3250 (type actual)))))

define (net PCI_CLK2 (fromto U62-120 RP1-5  (circuit (length 7950 7850 (type actual)))))
define (net PCI_NGNT2 (fromto U1-AD7 U62-121  (circuit (length 4650 4550 (type actual)))))
define (net PCI_NREQ2 (fromto U1-AD8 U62-122  (type soft) (circuit (length 4650 4550 (type actual)))))

define (net PCI_CLK0 (fromto U18-C1 RP1-7  (circuit (length 7950 7850 (type actual)))))
define (net PCI_NGNT0 (fromto U1-AC11 U18-H4  (circuit (length 7950 7850 (type actual)))))
define (net PCI_NREQ0 (fromto U18-F1 U1-AB10  (type soft) (circuit (length 7950 7850 (type actual)))))

define (net PCI_NPERR (fromto U1-AD15 U80-B40  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_NPERR (fromto U18-R1 U80-B40  (type soft) (circuit (length 4650 4550 (type actual)))))

define (net PCI_NSERR (fromto U80-B42 U1-AE15  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_NSERR (fromto U18-R2 U80-B42  (type soft) (circuit (length 4650 4550 (type actual)))))

define (net IRQ1 (fromto U80-A6 U1-K4  (circuit (length 3350 3250 (type actual)))))
define (net IRQ2 (fromto U62-117 U1-K2  (circuit (length 6450 6350 (type actual)))))
define (net IRQ0 (fromto U18-G4 U1-K5  (circuit (length 7950 7850 (type actual)))))

define (net PCI_NSTOP (fromto U1-AF13 U80-A38  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_NSTOP (fromto U62-29 U80-A38  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_NSTOP (fromto U18-R3 U62-29  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_NPME (fromto U1-AD22 U80-A19  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_NPME (fromto U62-123 U80-A19  (type soft) (circuit (length 3150 3050 (type actual)))))

define (net PCI_NRST (fromto U1-AB11 U80-A15  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_NRST (fromto U80-A15 U62-119  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_NRST (fromto U18-G3 U62-119  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_NFRAME (fromto U1-AF16 U80-A34  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_NFRAME (fromto U62-23 U80-A34  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_NFRAME (fromto U18-N4 U62-23  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_PAR (fromto U1-AD16 U80-A43  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_PAR (fromto U80-A43 U62-30  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_PAR (fromto U18-P3 U62-30  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_NDEVSEL (fromto U1-AC14 U80-B37  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_NDEVSEL (fromto U80-B37 U62-26  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_NDEVSEL (fromto U18-P1 U62-26  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_NIRDY (fromto U1-AC15 U80-B35  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_NIRDY (fromto U62-24 U80-B35  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_NIRDY (fromto U18-N1 U62-24  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_NTRDY (fromto U1-AD13 U80-A36  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_NTRDY (fromto U62-25 U80-A36  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_NTRDY (fromto U18-N3 U62-25  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_C/NBE0 (fromto U1-AC19 U80-A52  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_C/NBE0 (fromto U80-A52 U62-42  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_C/NBE0 (fromto U62-42 U18-V4  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_C/NBE1 (fromto U1-AB15 U80-B44  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_C/NBE1 (fromto U62-31 U80-B44  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_C/NBE1 (fromto U62-31 U18-T2  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_C/NBE2 (fromto U1-AF14 U80-B33  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_C/NBE2 (fromto U80-B33 U62-22  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_C/NBE2 (fromto U62-22 U18-M1  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_C/NBE3 (fromto U1-AF11 U80-B26  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_C/NBE3 (fromto U80-B26 U62-8  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_C/NBE3 (fromto U62-8 U18-J2  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD0 (fromto U1-AB20 U80-A58  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD0 (fromto U62-52 U80-A58  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD0 (fromto U62-52 U18-Y3  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD1 (fromto U80-B58 U1-AF23  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD1 (fromto U62-51 U80-B58  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD1 (fromto U18-AA1 U62-51  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD2 (fromto U1-AF22 U80-A57  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD2 (fromto U80-A57 U62-50  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD2 (fromto U18-Y4 U62-50  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD3 (fromto U1-AB19 U80-B56  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD3 (fromto U80-B56 U62-49  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD3 (fromto U18-Y2 U62-49  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD4 (fromto U1-AE22 U80-A55  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD4 (fromto U80-A55 U62-48  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD4 (fromto U18-W3 U62-48  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD5 (fromto U1-AF21 U80-B55  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD5 (fromto U62-47 U80-B55  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD5 (fromto U18-Y1 U62-47  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD6 (fromto U1-AD19 U80-A54  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD6 (fromto U62-44 U80-A54  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD6 (fromto U62-44 U18-W4  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD7 (fromto U1-AD20 U80-B53  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD7 (fromto U62-43 U80-B53  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD7 (fromto U62-43 U18-W2  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD8 (fromto U80-B52 U1-AC18  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD8 (fromto U62-41 U80-B52  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD8 (fromto U62-41 U18-V2  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD9 (fromto U1-AD18 U80-A49  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD9 (fromto U80-A49 U62-40  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD9 (fromto U18-V3 U62-40  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD10 (fromto U1-AB18 U80-B48  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD10 (fromto U80-B48 U62-39  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD10 (fromto U18-V1 U62-39  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD11 (fromto U1-AE19 U80-A47  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD11 (fromto U80-A47 U62-38  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD11 (fromto U18-U4 U62-38  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD12 (fromto U1-AB17 U80-B47  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD12 (fromto U62-35 U80-B47  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD12 (fromto U62-35 U18-U2  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD13 (fromto U1-AE18 U80-A46  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD13 (fromto U80-A46 U62-34  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD13 (fromto U62-34 U18-U3  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD14 (fromto U1-AD17 U80-B45  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD14 (fromto U80-B45 U62-33  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD14 (fromto U62-33 U18-U1  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD15 (fromto U1-AF19 U80-A44  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD15 (fromto U80-A44 U62-32  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD15 (fromto U18-T3 U62-32  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD16 (fromto U1-AB14 U80-A32  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD16 (fromto U80-A32 U62-21  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD16 (fromto U18-M3 U62-21  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD17 (fromto U1-AF15 U80-B32  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD17 (fromto U62-20 U80-B32  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD17 (fromto U18-M2 U62-20  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD18 (fromto U1-AD14 U80-A31  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD18 (fromto U62-19 U80-A31  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD18 (fromto U62-19 U18-M4  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD19 (fromto U1-AE14 U80-B30  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD19 (fromto U62-16 U80-B30  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD19 (fromto U18-L2 U62-16  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD20 (fromto U1-AF12 U80-A29  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD20 (fromto U62-15 U80-A29  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD20 (fromto U18-L3 U62-15  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD21 (fromto U80-B29 U1-AE11  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD21 (fromto U62-14 U80-B29  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD21 (fromto U18-K2 U62-14  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD22 (fromto U1-AD12 U80-A28  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD22 (fromto U62-13 U80-A28  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD22 (fromto U18-L4 U62-13  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD23 (fromto U1-AB13 U80-B27  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD23 (fromto U80-B27 U62-12  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD23 (fromto U18-K1 U62-12  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD24 (fromto U1-AF9 U80-A25  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD24 (fromto U80-A25 U62-7  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD24 (fromto U18-K4 U62-7  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD25 (fromto U1-AD11 U80-B24  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD25 (fromto U62-6 U80-B24  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD25 (fromto U62-6 U18-J1  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD26 (fromto U1-AE10 U80-A23  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD26 (fromto U62-5 U80-A23  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD26 (fromto U18-J3 U62-5  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD27 (fromto U1-AB12 U80-B23  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD27 (fromto U80-B23 U62-2  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD27 (fromto U18-H2 U62-2  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD28 (fromto U1-AD10 U80-A22  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD28 (fromto U80-A22 U62-1  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD28 (fromto U18-J4 U62-1  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD29 (fromto U1-AC10 U80-B21  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD29 (fromto U80-B21 U62-128  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD29 (fromto U18-G2 U62-128  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD30 (fromto U1-AF10 U80-A20  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD30 (fromto U62-127 U80-A20  (type soft) (circuit (length 3150 3050 (type actual)))))
define (net PCI_AD30 (fromto U62-127 U18-H3  (type soft) (circuit (length 1650 1550 (type actual)))))

define (net PCI_AD31 (fromto U1-AF8 U80-B20  (type soft) (circuit (length 3350 3250 (type actual)))))
define (net PCI_AD31 (fromto U80-B20 U62-126  (type soft) (circuit (length 3150 3050  (type actual)))))
define (net PCI_AD31 (fromto U18-G1 U62-126  (type soft) (circuit (length 1650 1550 (type actual)))))









