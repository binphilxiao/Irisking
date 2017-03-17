define (class LDATA[0-15]  (add_net  LDATA0 LDATA1 LDATA2 LDATA3 LDATA4 LDATA5 LDATA6 LDATA7 LDATA8 LDATA9 LDATA10 LDATA11 LDATA12 LDATA13 LDATA14 LDATA15))
define (class LDATA[16-31] (add_net  LDATA16 LDATA17 LDATA18 LDATA19 LDATA20 LDATA21 LDATA22 LDATA23 LDATA24 LDATA25 LDATA26 LDATA27 LDATA28 LDATA29 LDATA30 LDATA31))
define (class LDATA[0-15]  (topology (comp_order U1 U14)))
define (class LDATA[0-15]  (topology (comp_order U14 U2)))
define (class LDATA[16-31] (topology (comp_order U1 15)))
define (class LDATA[16-31] (topology (comp_order U15 U4)))

define (class DATA[0-7]    (add_net  DATA0 DATA1 DATA2 DATA3 DATA4 DATA5 DATA6 DATA7))
define (class DATA[8-15]   (add_net  DATA8 DATA9 DATA10 DATA11 DATA12 DATA13 DATA14 DATA15))
define (class DATA[16-23]  (add_net  DATA16 DATA17 DATA18 DATA19 DATA20 DATA21 DATA22 DATA23))
define (class DATA[24-31]  (add_net  DATA24 DATA25 DATA26 DATA27 DATA28 DATA29 DATA30 DATA31))
define (class DATA[0-7]    (topology (comp_order U2 U8)))
define (class DATA[0-7]    (topology (comp_order U8 U88)))
define (class DATA[0-7]    (topology (comp_order U88 U89)))
define (class DATA[0-7]    (topology (comp_order U89 U13)))
define (class DATA[0-7]    (topology (comp_order U13 U18)))
define (class DATA[0-7]    (topology (comp_order U18 U7)))
define (class DATA[8-15]   (topology (comp_order U2 U88)))
define (class DATA[8-15]   (topology (comp_order U88 U89)))
define (class DATA[8-15]   (topology (comp_order U89 U18)))
define (class DATA[8-15]   (topology (comp_order U18 U7)))
define (class DATA[16-23]  (topology (comp_order U4 U90)))
define (class DATA[16-23]  (topology (comp_order U90 U91)))
define (class DATA[16-23]  (topology (comp_order U91 U18)))
define (class DATA[24-31]  (topology (comp_order U4 U90)))
define (class DATA[24-31]  (topology (comp_order U90 U91)))
define (class DATA[24-31]  (topology (comp_order U91 U18)))

define (class LADDR[2-9]    (add_net  LADDR2 LADDR3 LADDR4 LADDR5 LADDR6 LADDR7 LADDR8 LADDR9 LADDR10 LADDR11 LADDR12 LADDR13 LADDR14))
define (class LADDR[10-14]  (add_net  LADDR2 LADDR3 LADDR4 LADDR5 LADDR6 LADDR7 LADDR8 LADDR9 LADDR10 LADDR11 LADDR12 LADDR13 LADDR14))
define (class LADDR[24,25]  (add_net  LADDR24 LADDR25))
define (class LADDR[2-9]    (topology (comp_order RP2 U14)))
define (class LADDR[2-9]    (topology (comp_order RP2 U15)))
define (class LADDR[2-9]    (topology (comp_order RP2 U19)))
define (class LADDR[10-14]  (topology (comp_order RP4 U14)))
define (class LADDR[10-14]  (topology (comp_order RP4 U15)))
define (class LADDR[10-14]  (topology (comp_order RP4 U19)))
define (class LADDR[24,25]  (topology (comp_order RP4 U14)))
define (class LADDR[24,25]  (topology (comp_order RP4 U15)))
define (class LADDR[24,25]  (topology (comp_order RP4 U3)))
define (net LNWBE0 (comp_order RP44 U3))
define (net LNWBE0 (comp_order RP44 U14))
define (net LNWBE1 (comp_order RP44 U3))
define (net LNWBE1 (comp_order RP44 U14))
define (net LNWBE2 (comp_order RP44 U3))
define (net LNWBE2 (comp_order RP44 U15))
define (net LNWBE3 (comp_order RP9 U3))
define (net LNWBE3 (comp_order RP9 U15))
define (net LNGCS6 (comp_order RP9 U15))
define (net LNGCS6 (comp_order RP9 U14))
define (net LNGCS6 (comp_order RP9 U15))
define (net LNSCAS (comp_order RP9 U14))
define (net LNSCAS (comp_order RP9 U15))
define (net LNSRAS (comp_order RP9 U14))
define (net LNSRAS (comp_order RP9 U15))
define (net LSCKE  (comp_order RP9 U14))
define (net LSCKE  (comp_order RP9 U15))

define (class TEA[3-6]   (add_net  TEA3 TEA4 TEA5 TEA6))
define (class TEA[3-6]   (topology (comp_order RP5 U28)))
define (class TEA[3-6]   (topology (comp_order RP5 U29)))
define (class TEA[7-14]  (add_net  TEA7 TEA8 TEA9 TEA10 TEA11 TEA12 TEA13 TEA14))
define (class TEA[7-14]  (topology (comp_order RP6 U28)))
define (class TEA[7-14]  (topology (comp_order RP6 U29)))
define (class TEA[15,16] (add_net  TEA15 TEA16))
define (class TEA[15,16] (topology (comp_order RP7 U28)))
define (class TEA[15,16] (topology (comp_order RP7 U29)))
define (net TCE0      (comp_order RP5 U28))
define (net TCE0      (comp_order RP5 U29))
define (net TSDRAS    (comp_order R97 U28))
define (net TSDRAS    (comp_order R97 U29))
define (net TSDCAS    (comp_order R98 U28))
define (net TSDCAS    (comp_order R98 U29))
define (net TSDCKE    (comp_order R100 U28))
define (net TSDCKE    (comp_order R100 U29))
define (net TSDWE     (comp_order R99 U28))
define (net TSDWE     (comp_order R99 U29))
define (net TECLKOUT1 (comp_order R105 U28))
define (net TECLKOUT1 (comp_order R105 U29))

define (class VP0D[2-5] (add_net  VP0D2 VP0D3 VP0D4 VP0D5))
define (class VP0D[6-9] (add_net  VP0D6 VP0D7 VP0D8 VP0D9))
define (class VP1D[2-5] (add_net  VP1D2 VP1D3 VP1D4 VP1D5))
define (class VP1D[6-9] (add_net  VP1D6 VP1D7 VP1D8 VP1D9))
define (class VP0D[2-5] (topology (comp_order U18 RP11)))
define (class VP0D[2-5] (topology (comp_order RP11 J53)))
define (class VP0D[6-9] (topology (comp_order U18 RP12)))
define (class VP0D[6-9] (topology (comp_order RP12 J53)))
define (class VP1D[2-5] (topology (comp_order U18 RP1)))
define (class VP1D[2-5] (topology (comp_order RP1 J52)))
define (class VP1D[6-9] (topology (comp_order U18 RP10)))
define (class VP1D[6-9] (topology (comp_order RP10 J52)))
define (net VP0CLK0     (comp_order U18 R73))
define (net VP0CLK0     (comp_order R73 J53))
define (net VP0CTL0     (comp_order U18 R69))
define (net VP0CTL0     (comp_order R69 J53))
define (net VP0CTL1     (comp_order U18 R70))
define (net VP0CTL1     (comp_order R70 J53))
define (net VP0CTL2     (comp_order U18 R89))
define (net VP0CTL2     (comp_order R89 J53))
define (net VP1CLK0     (comp_order U18 R67))
define (net VP1CLK0     (comp_order R67 J52))
define (net VP1CTL0     (comp_order U18 R65))
define (net VP1CTL0     (comp_order R65 J52))
define (net VP1CTL1     (comp_order U18 R66))
define (net VP1CTL1     (comp_order R66 J52))
define (net VP1CTL2     (comp_order U18 R68))
define (net VP1CTL2     (comp_order R68 J52))

define (class ADDR[0-15]  (add_net  ADDR0 ADDR1 ADDR2 ADDR3 ADDR4 ADDR5 ADDR6 ADDR7 ADDR8 ADDR9 ADDR10 ADDR11 ADDR12 ADDR13 ADDR14 ADDR15))
define (class ADDR[16-25] (add_net  ADDR16 ADDR17 ADDR18 ADDR19 ADDR20 ADDR21 ADDR22 ADDR23 ADDR24 ADDR25))
define (class BUS_CON     (add_net  nOE nWE))
define (class ADDR[0-15]       (topology (comp_order U19 U90)))
define (class ADDR[0-15]       (topology (comp_order U90 U91)))
define (class ADDR[0-15]       (topology (comp_order U91 U88)))
define (class ADDR[0-15]       (topology (comp_order U88 U89)))
define (class ADDR[0-15]       (topology (comp_order U89 U13)))
define (class ADDR[0-15]       (topology (comp_order U13 U18)))
define (class ADDR[0-15]       (topology (comp_order U18 U7)))
define (class ADDR[16-25]       (topology (comp_order U3 U90)))
define (class ADDR[16-25]       (topology (comp_order U90 U91)))
define (class ADDR[16-25]       (topology (comp_order U91 U88)))
define (class ADDR[16-25]       (topology (comp_order U88 U89)))
define (class ADDR[16-25]       (topology (comp_order U89 U13)))
define (class ADDR[16-25]       (topology (comp_order U13 U18)))
define (class ADDR[16-25]       (topology (comp_order U18 U7)))
define (class BUS_CON       (topology (comp_order U3 U90)))
define (class BUS_CON       (topology (comp_order U90 U91)))
define (class BUS_CON       (topology (comp_order U91 U88)))
define (class BUS_CON       (topology (comp_order U88 U89)))
define (class BUS_CON       (topology (comp_order U89 U13)))
define (class BUS_CON       (topology (comp_order U13 U18)))
define (class BUS_CON       (topology (comp_order U18 U7)))

select net *

unselect net  VCCA_PLL2
unselect net  VCCA_PLL1
unselect net  VCC5V
unselect net  V12V
unselect net  V5V
unselect net  V1.4V
unselect net  V3.3V
unselect net  V1.2V
unselect net  ARM_V1.8V
unselect net  GND_EARTH
unselect net  GND_485
unselect net  GND2
unselect net  GND1
unselect net  GND

direction TOP orthogonal
select layer TOP
direction LAYER1 orthogonal
select layer LAYER1
direction LAYER2 orthogonal
select layer LAYER2
direction LAYER3 orthogonal
select layer LAYER3
direction LAYER4 orthogonal
select layer LAYER4
direction BOTTOM orthogonal
select layer BOTTOM


