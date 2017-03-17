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

edit_pick_net_by_class  PPC_DATA
define (class PPC_DATA (topology (comp_order U1 U9)))
define (class PPC_DATA (topology (comp_order U9 U8)))
define (class PPC_DATA (topology (comp_order U9 U13)))

edit_pick_net_by_class  PPC_ADDR
define (class PPC_ADDR (topology (comp_order U1 U9)))
define (class PPC_ADDR (topology (comp_order U9 U13)))

edit_pick_net_by_class  PCI_AD
define (class PCI_AD (topology (comp_order U1 U5)))
define (class PCI_AD (topology (comp_order U5 U7)))
define (class PCI_AD (topology (comp_order U7 U18)))




SELECT NET *
UNSELECT NET GND
UNSELECT NET GND_EARTH
UNSELECT NET AVDD1
UNSELECT NET AVDD2
UNSELECT NET AV3.3V
UNSELECT NET AV5V
UNSELECT NET ICV3.3V
UNSELECT NET LCD_GND
UNSELECT NET PLLVDD
UNSELECT NET V0.9V
UNSELECT NET V1.2V
UNSELECT NET V1.4V
UNSELECT NET V1.8V
UNSELECT NET V1V
UNSELECT NET V1V_USB
UNSELECT NET V3.3V_USB
UNSELECT NET V3.3V
UNSELECT NET V5V
UNSELECT NET V12V
UNSELECT NET V22V
UNSELECT NET V25V
UNSELECT NET 1.8VA_DDEC_A
UNSELECT NET 1.8VA_DDEC_B
UNSELECT NET 1.8VA_DDEC_C
UNSELECT NET 1.8VA_DDEC_D
