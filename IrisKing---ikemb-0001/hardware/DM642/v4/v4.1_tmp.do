define (class LDATA[0-15]  (add_net  LDATA0 LDATA1 LDATA2 LDATA3 LDATA4 LDATA5 LDATA6 LDATA7 LDATA8 LDATA9 LDATA10 LDATA11 LDATA12 LDATA13 LDATA14 LDATA15))
define (class LDATA[16-31] (add_net  LDATA16 LDATA17 LDATA18 LDATA19 LDATA20 LDATA21 LDATA22 LDATA23 LDATA24 LDATA25 LDATA26 LDATA27 LDATA28 LDATA29 LDATA30 LDATA31))

define (class LADDR[2-9]    (add_net  LADDR2 LADDR3 LADDR4 LADDR5 LADDR6 LADDR7 LADDR8 LADDR9 LADDR10 LADDR11 LADDR12 LADDR13 LADDR14))
define (class LADDR[10-14]  (add_net  LADDR2 LADDR3 LADDR4 LADDR5 LADDR6 LADDR7 LADDR8 LADDR9 LADDR10 LADDR11 LADDR12 LADDR13 LADDR14))
define (class LADDR[24,25]  (add_net  LADDR24 LADDR25))
define (class LDATA[0-15]  (topology (comp_order U1 U14)))
define (class LDATA[0-15]  (topology (comp_order U14 U2)))
define (class LDATA[16-31] (topology (comp_order U1 U15)))
define (class LDATA[16-31] (topology (comp_order U15 U4)))

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

select net  ARM_A2 ARM_A3 ARM_A4 ARM_A5 ARM_A6 ARM_A7 ARM_A8 ARM_A9 ARM_A10 ARM_A11 ARM_A12 ARM_A13 ARM_A14 ARM_A23 ARM_A24 ARM_A25
select net  LADDR0 LADDR1 LADDR2 LADDR3 LADDR4 LADDR5 LADDR6 LADDR7 LADDR8 LADDR9 LADDR10 LADDR11 LADDR12 LADDR13 LADDR14 LADDR15 LADDR16 LADDR17 LADDR18 LADDR19 LADDR20 LADDR21 LADDR22 LADDR23 LADDR24 LADDR25 LADDR26
select net  LDATA0 LDATA1 LDATA2 LDATA3 LDATA4 LDATA5 LDATA6 LDATA7 LDATA8 LDATA9 LDATA10 LDATA11 LDATA12 LDATA13 LDATA14 LDATA15 LDATA16 LDATA17 LDATA18 LDATA19 LDATA20 LDATA21 LDATA22 LDATA23 LDATA24 LDATA25 LDATA26 LDATA27 LDATA28 LDATA29 LDATA30 LDATA31
select net  LNWBE0 LNWBE1 LNWBE2 LNWBE3
select net  ARM_NBE0 ARM_NBE1 ARM_NBE2 ARM_NBE3
select net  ARM_SCAS
select net  ARM_SCKE
select net  ARM_SCLK0
select net  ARM_SCLK1
select net  ARM_SRAS
select net  ARM_GCS6
select net  ARM_GCS7
select net  NWE
select net  LNSCAS
select net  LNSRAS
select net  LNGCS6
select net  LNWE
select net  LSCKE
select net  LSCLK0
select net  LSCLK1

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


