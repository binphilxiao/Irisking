;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Tue Oct 16 17:38:23 2007                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=near --mem_model:data=far --quiet --silicon_version=6400 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64xx                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : Optimized w/Profiling Info                           *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("vportcap.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	IR_1,32
	.field  	_VPORTCAP_Fxns+0,32
	.field  	_mdBindDev,32		; _VPORTCAP_Fxns._mdBindDev @ 0
	.field  	_IOM_mdNotImpl,32		; _VPORTCAP_Fxns._mdUnBindDev @ 32
	.field  	_mdControlChan,32		; _VPORTCAP_Fxns._mdControlChan @ 64
	.field  	_mdCreateChan,32		; _VPORTCAP_Fxns._mdCreateChan @ 96
	.field  	_mdDeleteChan,32		; _VPORTCAP_Fxns._mdDeleteChan @ 128
	.field  	_mdSubmitChan,32		; _VPORTCAP_Fxns._mdSubmitChan @ 160
IR_1:	.set	24

	.sect	".cinit"
	.align	8
	.field  	IR_2,32
	.field  	_portObjs+0,32
	.field  	0,32			; _portObjs[0]._status @ 0
	.field  	29622272,32			; _portObjs[0]._base @ 32
	.field  	0,32			; _portObjs[0]._chanObj[0]._status @ 64
	.field  	0,32			; _portObjs[0]._chanObj[0]._portNum @ 96
	.field  	0,32			; _portObjs[0]._chanObj[0]._chanNum @ 128
	.field  	29622528,32			; _portObjs[0]._chanObj[0]._base @ 160
	.field  	16,32			; _portObjs[0]._chanObj[0]._edmaChanNum[0] @ 192
	.field  	17,32			; _portObjs[0]._chanObj[0]._edmaChanNum[1] @ 224
	.field  	18,32			; _portObjs[0]._chanObj[0]._edmaChanNum[2] @ 256
	.field  	1946157056,32			; _portObjs[0]._chanObj[0]._edmaAddr[0] @ 288
	.field  	1946157064,32			; _portObjs[0]._chanObj[0]._edmaAddr[1] @ 320
	.field  	1946157072,32			; _portObjs[0]._chanObj[0]._edmaAddr[2] @ 352
IR_2:	.set	48

	.sect	".cinit"
	.align	8
	.field  	IR_3,32
	.field  	_portObjs+608,32
	.field  	0,32
	.field  	0,32			; _portObjs[0]._chanObj[1]._status @ 4896
	.field  	0,32			; _portObjs[0]._chanObj[1]._portNum @ 4928
	.field  	1,32			; _portObjs[0]._chanObj[1]._chanNum @ 4960
	.field  	29622592,32			; _portObjs[0]._chanObj[1]._base @ 4992
	.field  	24,32			; _portObjs[0]._chanObj[1]._edmaChanNum[0] @ 5024
	.field  	25,32			; _portObjs[0]._chanObj[1]._edmaChanNum[1] @ 5056
	.field  	26,32			; _portObjs[0]._chanObj[1]._edmaChanNum[2] @ 5088
	.field  	1979711488,32			; _portObjs[0]._chanObj[1]._edmaAddr[0] @ 5120
	.field  	1979711496,32			; _portObjs[0]._chanObj[1]._edmaAddr[1] @ 5152
	.field  	1979711504,32			; _portObjs[0]._chanObj[1]._edmaAddr[2] @ 5184
IR_3:	.set	44

	.sect	".cinit"
	.align	8
	.field  	IR_4,32
	.field  	_portObjs+1216,32
	.field  	0,32			; _portObjs[1]._status @ 9728
	.field  	29638656,32			; _portObjs[1]._base @ 9760
	.field  	0,32			; _portObjs[1]._chanObj[0]._status @ 9792
	.field  	1,32			; _portObjs[1]._chanObj[0]._portNum @ 9824
	.field  	0,32			; _portObjs[1]._chanObj[0]._chanNum @ 9856
	.field  	29638912,32			; _portObjs[1]._chanObj[0]._base @ 9888
	.field  	56,32			; _portObjs[1]._chanObj[0]._edmaChanNum[0] @ 9920
	.field  	57,32			; _portObjs[1]._chanObj[0]._edmaChanNum[1] @ 9952
	.field  	58,32			; _portObjs[1]._chanObj[0]._edmaChanNum[2] @ 9984
	.field  	2013265920,32			; _portObjs[1]._chanObj[0]._edmaAddr[0] @ 10016
	.field  	2013265928,32			; _portObjs[1]._chanObj[0]._edmaAddr[1] @ 10048
	.field  	2013265936,32			; _portObjs[1]._chanObj[0]._edmaAddr[2] @ 10080
IR_4:	.set	48

	.sect	".cinit"
	.align	8
	.field  	IR_5,32
	.field  	_portObjs+1824,32
	.field  	0,32
	.field  	0,32			; _portObjs[1]._chanObj[1]._status @ 14624
	.field  	1,32			; _portObjs[1]._chanObj[1]._portNum @ 14656
	.field  	1,32			; _portObjs[1]._chanObj[1]._chanNum @ 14688
	.field  	29638976,32			; _portObjs[1]._chanObj[1]._base @ 14720
	.field  	38,32			; _portObjs[1]._chanObj[1]._edmaChanNum[0] @ 14752
	.field  	39,32			; _portObjs[1]._chanObj[1]._edmaChanNum[1] @ 14784
	.field  	40,32			; _portObjs[1]._chanObj[1]._edmaChanNum[2] @ 14816
	.field  	2046820352,32			; _portObjs[1]._chanObj[1]._edmaAddr[0] @ 14848
	.field  	2046820360,32			; _portObjs[1]._chanObj[1]._edmaAddr[1] @ 14880
	.field  	2046820368,32			; _portObjs[1]._chanObj[1]._edmaAddr[2] @ 14912
IR_5:	.set	44

	.sect	".cinit"
	.align	8
	.field  	IR_6,32
	.field  	_portObjs+2432,32
	.field  	0,32			; _portObjs[2]._status @ 19456
	.field  	29655040,32			; _portObjs[2]._base @ 19488
	.field  	0,32			; _portObjs[2]._chanObj[0]._status @ 19520
	.field  	2,32			; _portObjs[2]._chanObj[0]._portNum @ 19552
	.field  	0,32			; _portObjs[2]._chanObj[0]._chanNum @ 19584
	.field  	29655296,32			; _portObjs[2]._chanObj[0]._base @ 19616
	.field  	59,32			; _portObjs[2]._chanObj[0]._edmaChanNum[0] @ 19648
	.field  	60,32			; _portObjs[2]._chanObj[0]._edmaChanNum[1] @ 19680
	.field  	61,32			; _portObjs[2]._chanObj[0]._edmaChanNum[2] @ 19712
	.field  	2080374784,32			; _portObjs[2]._chanObj[0]._edmaAddr[0] @ 19744
	.field  	2080374792,32			; _portObjs[2]._chanObj[0]._edmaAddr[1] @ 19776
	.field  	2080374800,32			; _portObjs[2]._chanObj[0]._edmaAddr[2] @ 19808
IR_6:	.set	48

	.sect	".cinit"
	.align	8
	.field  	IR_7,32
	.field  	_portObjs+3040,32
	.field  	0,32
	.field  	0,32			; _portObjs[2]._chanObj[1]._status @ 24352
	.field  	2,32			; _portObjs[2]._chanObj[1]._portNum @ 24384
	.field  	1,32			; _portObjs[2]._chanObj[1]._chanNum @ 24416
	.field  	29655360,32			; _portObjs[2]._chanObj[1]._base @ 24448
	.field  	41,32			; _portObjs[2]._chanObj[1]._edmaChanNum[0] @ 24480
	.field  	42,32			; _portObjs[2]._chanObj[1]._edmaChanNum[1] @ 24512
	.field  	43,32			; _portObjs[2]._chanObj[1]._edmaChanNum[2] @ 24544
	.field  	2113929216,32			; _portObjs[2]._chanObj[1]._edmaAddr[0] @ 24576
	.field  	2113929224,32			; _portObjs[2]._chanObj[1]._edmaAddr[1] @ 24608
	.field  	2113929232,32			; _portObjs[2]._chanObj[1]._edmaAddr[2] @ 24640
IR_7:	.set	44


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert"), DW_AT_symbol_name("__assert")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$130)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_free"), DW_AT_symbol_name("_MEM_free")
	.dwattr DW$4, DW_AT_type(*DW$T$41)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$4


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_valloc"), DW_AT_symbol_name("_MEM_valloc")
	.dwattr DW$8, DW_AT_type(*DW$T$37)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$8


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_pend"), DW_AT_symbol_name("_SEM_pend")
	.dwattr DW$13, DW_AT_type(*DW$T$41)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$182)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$13


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("HWI_dispatchPlug"), DW_AT_symbol_name("_HWI_dispatchPlug")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$88)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$134)
	.dwendtag DW$16


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("CLK_getltime"), DW_AT_symbol_name("_CLK_getltime")
	.dwattr DW$21, DW_AT_type(*DW$T$235)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_map"), DW_AT_symbol_name("_IRQ_map")
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$22


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_open"), DW_AT_symbol_name("_EDMA_open")
	.dwattr DW$25, DW_AT_type(*DW$T$69)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$25


DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_close"), DW_AT_symbol_name("_EDMA_close")
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$28


DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_allocTable"), DW_AT_symbol_name("_EDMA_allocTable")
	.dwattr DW$30, DW_AT_type(*DW$T$69)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_freeTable"), DW_AT_symbol_name("_EDMA_freeTable")
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$32


DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intAlloc"), DW_AT_symbol_name("_EDMA_intAlloc")
	.dwattr DW$34, DW_AT_type(*DW$T$10)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$34


DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intFree"), DW_AT_symbol_name("_EDMA_intFree")
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$36


DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intHook"), DW_AT_symbol_name("_EDMA_intHook")
	.dwattr DW$38, DW_AT_type(*DW$T$144)
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$144)
	.dwendtag DW$38


DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intDispatcher"), DW_AT_symbol_name("_EDMA_intDispatcher")
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("IOM_mdNotImpl"), DW_AT_symbol_name("_IOM_mdNotImpl")
	.dwattr DW$42, DW_AT_type(*DW$T$22)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("TSK_timerSem"), DW_AT_symbol_name("_TSK_timerSem")
	.dwattr DW$43, DW_AT_type(*DW$T$257)
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("HWI_ATTRS"), DW_AT_symbol_name("_HWI_ATTRS")
	.dwattr DW$44, DW_AT_type(*DW$T$133)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("_IRQ_eventTable"), DW_AT_symbol_name("__IRQ_eventTable")
	.dwattr DW$45, DW_AT_type(*DW$T$234)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("cr_reg"), DW_AT_symbol_name("_cr_reg")
	.dwattr DW$46, DW_AT_type(*DW$T$10)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
	.global	_VPORTCAP_Fxns
_VPORTCAP_Fxns:	.usect	".far",24,4
DW$47	.dwtag  DW_TAG_variable, DW_AT_name("VPORTCAP_Fxns"), DW_AT_symbol_name("_VPORTCAP_Fxns")
	.dwattr DW$47, DW_AT_location[DW_OP_addr _VPORTCAP_Fxns]
	.dwattr DW$47, DW_AT_type(*DW$T$279)
	.dwattr DW$47, DW_AT_external(0x01)
_portObjs:	.usect	".far",3648,8
DW$48	.dwtag  DW_TAG_variable, DW_AT_name("portObjs"), DW_AT_symbol_name("_portObjs")
	.dwattr DW$48, DW_AT_type(*DW$T$281)
	.dwattr DW$48, DW_AT_location[DW_OP_addr _portObjs]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI9602 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI9604 
	.sect	".text"

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("_covrRecover"), DW_AT_symbol_name("__covrRecover")
	.dwattr DW$49, DW_AT_low_pc(__covrRecover)
	.dwattr DW$49, DW_AT_high_pc(0x00)
	.dwattr DW$49, DW_AT_begin_file("vportcap.c")
	.dwattr DW$49, DW_AT_begin_line(0x41c)
	.dwattr DW$49, DW_AT_begin_column(0x0c)
	.dwattr DW$49, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$49, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",1053,1

;******************************************************************************
;* FUNCTION NAME: __covrRecover                                               *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,SP,A16, *
;*                           A17,A18,A19,A20,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B30,B31                              *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,SP,  *
;*                           A16,A17,A18,A19,A20,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B30,B31                          *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
__covrRecover:
;** --------------------------------------------------------------------------*
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$50, DW_AT_type(*DW$T$37)
	.dwattr DW$50, DW_AT_location[DW_OP_reg4]
;* 1054	-----------------------    chan = (struct $$fake3 *)chanp;
;* 1054	-----------------------    Q$4 = 113;
;* 1054	-----------------------    Q$3 = 98;
;* 1054	-----------------------    Q$2 = 99;
;* 1054	-----------------------    Q$1 = 112;
;* 1056	-----------------------    C$10 = (portObjs[(*chan).portNum]).base;
;* 1056	-----------------------    base = (volatile int *)(C$10+200);
;* 1057	-----------------------    cbase = (volatile int *)((*chan).base+4);
;* 1063	-----------------------    C$9 = (volatile int *)C$10+200;
;* 1063	-----------------------    *C$9 = *C$9&~(2<<((*chan).chanNum<<4));
;* 1065	-----------------------    *cbase = *cbase|0x40000000;
;* 1068	-----------------------    tccIntNum = C$8 = *((int (* const)[3])chanp+448);
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (unsigned)C$8 < 32u ) goto g3;  // [12]
;** 664	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u&~(1u<<(unsigned)C$8-32u);  // [26]
;** 664	-----------------------    K$46 = 0xffffffffu;  // [26]
;** 664	-----------------------    goto g4;  // [26]
;**	-----------------------g3:
;** 663	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u&~(1u<<tccIntNum);  // [26]
;** 663	-----------------------    K$46 = 0xffffffffu;  // [26]
;**	-----------------------g4:
;** 360	-----------------------    CSR = CSR&(K$35 = 0xfffffffeu)|gie&1u;  // [13]
;** 360	-----------------------    tccIntNum = *(Q$4*4+(int (*)[3])chan);  // [13]
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&K$35;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    U$54 = (int (*)[3])chan+452;  // [12]
;** 356	-----------------------    C$7 = *U$54;  // [12]
;** 356	-----------------------    if ( (unsigned)C$7 < (K$38 = 32u) ) goto g6;  // [12]
;** 664	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u&(1u<<(unsigned)C$7-32u^K$46);  // [26]
;** 664	-----------------------    goto g7;  // [26]
;**	-----------------------g6:
;** 663	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u&(1u<<tccIntNum^K$46);  // [26]
;**	-----------------------g7:
;** 360	-----------------------    CSR = CSR&K$35|gie&1u;  // [13]
;** 360	-----------------------    ((*chan).mode&2) ? (numEdmaChans = 1) : (numEdmaChans = 3);  // [13]
;* 1072	-----------------------    i = 0;
;* 1075	-----------------------    if ( i >= numEdmaChans ) goto g16;
;**  	-----------------------    K$91 = (-32);
;**  	-----------------------    U$77 = (unsigned (*)[3])chan+388;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D1T1   *+A4(4),A3        ; |1056| 
           MVK     .S1     1216,A5           ; |1056| 
           MVKL    .S2     _portObjs+4,B4    ; |1056| 
           MVKH    .S2     _portObjs+4,B4    ; |1056| 
           MVK     .S2     112,B7            ; |1068| 
           MPYLI   .M1     A5,A3,A7:A6       ; |1056| 
           LDW     .D1T1   *+A4(8),A3        ; |1063| 
           MVK     .S1     0x70,A9           ; |1054| 
           MVK     .S1     0x62,A16          ; |1054| 
           MVK     .S1     0x63,A17          ; |1054| 
           ADD     .L2X    B4,A6,B4          ; |1056| 
           LDW     .D2T2   *B4,B5            ; |1056| 
           NOP             3
           MVK     .L1     2,A6              ; |1063| 
           ADDAD   .D2     B5,25,B4          ; |1063| 
           LDW     .D2T2   *B4,B6            ; |1063| 
           LDW     .D1T1   *+A4(12),A5       ; |1057| 
           SHL     .S1     A3,4,A3           ; |1063| 
           SHL     .S1     A6,A3,A3          ; |1063| 
           NOP             1
           ANDN    .L2X    B6,A3,B6          ; |1063| 

           ADD     .L2X    4,A5,B6           ; |1057| 
||         STW     .D2T2   B6,*B4            ; |1063| 

           LDW     .D2T1   *B6,A3            ; |1065| 
           NOP             3
           MV      .L2X    A4,B4             ; |1053| 
           SET     .S1     A3,30,30,A3       ; |1065| 
           STW     .D2T1   A3,*B6            ; |1065| 
           LDW     .D2T2   *+B4[B7],B4       ; |1068| 
           NOP             4

           MVC     .S2     CSR,B5            ; |354| 
||         MV      .L1X    B4,A5             ; |1068| 
||         ADDAD   .D2     B5,25,B7          ; |1056| 
||         MVK     .S1     0x71,A3           ; |1054| 
||         SUB     .L2     SP,8,SP           ; |1053| 

           MVC     .S2     CSR,B8            ; |355| 
||         AND     .L2     1,B5,B5           ; |354| 

           AND     .L2     -2,B8,B8          ; |355| 
           MVC     .S2     B8,CSR            ; |355| 

           MVK     .S1     32,A6             ; |356| 
||         MVKL    .S2     0x1a0ffa8,B8      ; |664| 

           MVKL    .S2     0x1a0ffe8,B16     ; |663| 

           CMPLTU  .L2X    B4,A6,B0          ; |356| 
||         MVKH    .S2     0x1a0ffa8,B8      ; |664| 

   [!B0]   LDW     .D2T2   *B8,B8            ; |664| 
||         MVKH    .S2     0x1a0ffe8,B16     ; |663| 
||         MVK     .L2     1,B9              ; |664| 

   [ B0]   LDW     .D2T2   *B16,B8           ; |663| 
||         MVKL    .S1     0x1a0ffa8,A6      ; |664| 
||         SUB     .L1X    B4,A6,A7          ; |664| 

           SHL     .S1X    B9,A7,A8          ; |664| 
||         MVK     .L2     1,B4              ; |663| 

           MVKH    .S1     0x1a0ffa8,A6      ; |664| 
           SHL     .S1X    B4,A5,A5          ; |663| 

   [!B0]   ANDN    .L2X    B8,A8,B8          ; |664| 
||         MVKL    .S1     0x1a0ffe8,A7      ; |663| 

   [!B0]   STW     .D1T2   B8,*A6            ; |664| 
|| [ B0]   ANDN    .L2X    B8,A5,B5          ; |663| 
||         MV      .S2     B5,B4             ; |356| 
||         MVKH    .S1     0x1a0ffe8,A7      ; |663| 

           MVC     .S2     CSR,B5            ; |360| 
|| [ B0]   STW     .D1T2   B5,*A7            ; |663| 
||         MVK     .L2     0xfffffffe,B9     ; |360| 
||         MVK     .D2     0xffffffff,B17    ; |664| 

           AND     .L2     B9,B5,B4          ; |360| 
||         AND     .S2     1,B4,B5           ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *+A4[A3],A5       ; |360| 
           NOP             3
           MVC     .S2     CSR,B4            ; |354| 

           MVC     .S2     CSR,B5            ; |355| 
||         AND     .L2     1,B4,B4           ; |354| 

           AND     .L2     B9,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 
           MVK     .S1     452,A3            ; |356| 
           ADD     .L1     A3,A4,A18         ; |356| 
           LDW     .D1T1   *A18,A3           ; |356| 
           MVK     .S2     0x20,B16          ; |356| 
           MVKL    .S2     0x1a0ffe8,B5      ; |663| 
           MVKH    .S2     0x1a0ffe8,B5      ; |663| 
           MVK     .S1     32,A7             ; |664| 
           CMPLTU  .L1X    A3,B16,A0         ; |356| 

           MVKL    .S2     0x1a0ffa8,B5      ; |664| 
|| [ A0]   LDW     .D2T2   *B5,B18           ; |663| 

           MVKH    .S2     0x1a0ffa8,B5      ; |664| 
||         MVK     .L1     1,A8              ; |663| 

   [!A0]   LDW     .D2T2   *B5,B5            ; |664| 
||         SHL     .S1     A8,A5,A7          ; |663| 
||         SUB     .L1     A3,A7,A3          ; |664| 
||         MVK     .L2     1,B8              ; |664| 

           MVKL    .S1     0x1a0ffe8,A6      ; |663| 
           SHL     .S1X    B8,A3,A5          ; |664| 

           MVKH    .S1     0x1a0ffe8,A6      ; |663| 
||         XOR     .L2X    B17,A7,B8         ; |663| 

   [ A0]   AND     .L2     B8,B18,B5         ; |663| 
||         XOR     .L1X    B17,A5,A5         ; |664| 
||         MVKL    .S1     0x1a0ffa8,A3      ; |664| 

   [ A0]   STW     .D1T2   B5,*A6            ; |663| 
|| [!A0]   AND     .L1X    A5,B5,A5          ; |664| 
||         MVKH    .S1     0x1a0ffa8,A3      ; |664| 

           MVC     .S2     CSR,B5            ; |360| 
|| [!A0]   STW     .D1T1   A5,*A3            ; |664| 

           AND     .L2     B9,B5,B4          ; |360| 
||         AND     .S2     1,B4,B5           ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           MVK     .S1     134,A3            ; |360| 

           LDW     .D1T1   *+A4[A3],A3       ; |360| 
||         ZERO    .L2     B4                ; |1072| 

           STW     .D2T2   B4,*+SP(4)        ; |1072| 
           LDW     .D2T2   *+SP(4),B4        ; |1075| 
           MVK     .S1     0x1,A7            ; |360| 
           MVK     .S2     388,B5
           AND     .L1     2,A3,A0           ; |360| 
   [!A0]   MVK     .L1     0x3,A7            ; |360| 
           CMPLT   .L1X    B4,A7,A0          ; |1075| 
   [!A0]   BNOP    .S1     L2,3              ; |1075| 
           ADD     .L2X    B5,A4,B19
           MVK     .S1     0xffffffe0,A5
           ; BRANCHCC OCCURS {L2}            ; |1075| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
L1:    
DW$L$__covrRecover$2$B:
	.dwpsn	"vportcap.c",1075,0
;**	-----------------------g9:
;* 1076	-----------------------    hEdma = U$77[i];
;** 559	-----------------------    chaNum = C$6 = _extu(hEdma, 8u, 24u);  // [23]
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$1 = CSR&K$35;  // [12]
;** 355	-----------------------    CSR = a$1;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (int)C$6 < (int)K$38 ) goto g11;  // [12]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$6+K$91^K$46);  // [23]
;**  	-----------------------    goto g12;
;**	-----------------------g11:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<chaNum^K$46);  // [23]
;**	-----------------------g12:
;** 360	-----------------------    a$2 = CSR&K$35|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$2;  // [13]
;** 360	-----------------------    hEdma = U$77[i];  // [13]
;** 615	-----------------------    chaNum = C$5 = _extu(hEdma, 8u, 24u);  // [24]
;** 618	-----------------------    if ( (int)C$5 < (int)K$38 ) goto g14;  // [24]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$5+K$91;  // [24]
;**  	-----------------------    goto g15;
;**	-----------------------g14:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [24]
;**	-----------------------g15:
;* 1075	-----------------------    i = i+1;
;* 1075	-----------------------    if ( i < numEdmaChans ) goto g9;
           LDW     .D2T2   *+SP(4),B4        ; |1076| 
           NOP             4
           LDW     .D2T2   *+B19[B4],B4      ; |1076| 
           NOP             4
           EXTU    .S2     B4,8,24,B4        ; |559| 
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B5           ; |354| 
||         MVC     .S2     CSR,B8            ; |355| 

           AND     .L2     B9,B8,B8          ; |355| 
           MVC     .S2     B8,CSR            ; |355| 

           CMPLT   .L2     B4,B16,B0         ; |356| 
||         MVK     .S2     1,B18             ; |565| 
||         MVK     .L1     1,A6              ; |566| 

   [!B0]   MVKL    .S2     0x1a0ffb4,B8      ; |566| 
|| [ B0]   MVKL    .S1     0x1a0fff4,A3      ; |565| 

   [!B0]   MVKH    .S2     0x1a0ffb4,B8      ; |566| 
|| [ B0]   MVKH    .S1     0x1a0fff4,A3      ; |565| 

   [!B0]   LDW     .D2T2   *B8,B8            ; |566| 
|| [ B0]   LDW     .D1T1   *A3,A8            ; |565| 
||         ADD     .L1X    A5,B4,A3          ; |566| 
|| [ B0]   SHL     .S2     B18,B4,B4         ; |565| 

   [!B0]   SHL     .S1     A6,A3,A3          ; |566| 
|| [ B0]   XOR     .L2     B17,B4,B8         ; |565| 
|| [ B0]   MVKL    .S2     0x1a0fff4,B4      ; |565| 

   [ B0]   MVKH    .S2     0x1a0fff4,B4      ; |565| 

   [!B0]   XOR     .L2X    B17,A3,B4         ; |566| 
|| [!B0]   MVKL    .S1     0x1a0ffb4,A3      ; |566| 

   [!B0]   MVKH    .S1     0x1a0ffb4,A3      ; |566| 

   [!B0]   AND     .L2     B4,B8,B4          ; |566| 
|| [ B0]   AND     .L1X    B8,A8,A3          ; |565| 

   [!B0]   STW     .D1T2   B4,*A3            ; |566| 
|| [ B0]   STW     .D2T1   A3,*B4            ; |565| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B5,B5           ; |360| 
||         AND     .S2     B9,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D2T2   *+SP(4),B4        ; |360| 
||         MVK     .L1     1,A19             ; |619| 

           NOP             4
           LDW     .D2T1   *+B19[B4],A3      ; |360| 
           NOP             4
           EXTU    .S1     A3,8,24,A3        ; |615| 
           ADD     .L1     A5,A3,A8          ; |619| 
           CMPLT   .L2X    A3,B16,B0         ; |618| 

   [ B0]   MVKL    .S1     0x1a0fff8,A6      ; |618| 
|| [!B0]   MVKL    .S2     0x1a0ffb8,B4      ; |619| 

           MVK     .L1     1,A8              ; |618| 
|| [!B0]   SHL     .S1     A19,A8,A3         ; |619| 
|| [!B0]   MVKH    .S2     0x1a0ffb8,B4      ; |619| 

   [ B0]   MVKH    .S1     0x1a0fff8,A6      ; |618| 
|| [!B0]   STW     .D2T1   A3,*B4            ; |619| 

   [ B0]   SHL     .S1     A8,A3,A3          ; |618| 
   [ B0]   STW     .D1T1   A3,*A6            ; |618| 
           LDW     .D2T2   *+SP(4),B4        ; |1075| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1075| 
           STW     .D2T2   B4,*+SP(4)        ; |1075| 
           LDW     .D2T2   *+SP(4),B4        ; |1075| 
           NOP             4
           CMPLT   .L1X    B4,A7,A0          ; |1075| 
	.dwpsn	"vportcap.c",1078,0
   [ A0]   BNOP    .S1     L1,5              ; |1075| 
           ; BRANCHCC OCCURS {L1}            ; |1075| 
DW$L$__covrRecover$2$E:
;** --------------------------------------------------------------------------*
L2:    
;**	-----------------------g16:
;**  	-----------------------    U$77 = (unsigned (*)[3])chan+388;
;* 1079	-----------------------    ((*chan).mergeFlds) ? (numEvents = (int)(*chan).numEventsFld1) : (numEvents = (int)(*chan).numEvents);
;* 1081	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*U$77+0x1a0000cu) = (unsigned)(*(*chan).curViop).frame.iFrm.y1;
;* 1087	-----------------------    C$4 = ((unsigned)numEvents<<15)-32768u;
;* 1087	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*U$77+0x1a00008u) = (_extu((*chan).yThrld, 17u, 17u)|C$4)*2u;
;* 1089	-----------------------    if ( (*chan).mode&2 ) goto g18;

           MVK     .S1     131,A3            ; |1081| 
||         MVK     .S2     388,B31
||         ADDAW   .D1     A4,A17,A19        ; |1091| 

           LDW     .D1T1   *+A4[A3],A5       ; |1081| 
||         MVK     .S2     460,B4            ; |1079| 
||         ADD     .L2X    B31,A4,B8
||         MVKL    .S1     0x1a0000c,A31     ; |1081| 

           MVKH    .S1     0x1a0000c,A31     ; |1081| 
||         MVKL    .S2     0x1a00008,B30     ; |1087| 

           ADD     .L1X    B4,A4,A3          ; |1079| 
||         LDHU    .D2T2   *B8,B4            ; |1081| 
||         MVK     .S1     128,A6            ; |1079| 
||         MVKH    .S2     0x1a00008,B30     ; |1087| 

           LDHU    .D1T1   *A3,A0            ; |1079| 
||         MVK     .S1     127,A3            ; |1079| 
||         MVK     .S2     131,B18           ; |1090| 

           MVK     .S1     129,A30           ; |1087| 
||         MVKL    .S2     0x1a0000c,B17     ; |1091| 

           LDW     .D1T1   *+A5(8),A8        ; |1081| 
||         MVK     .S1     8192,A29          ; |1087| 
||         MVKL    .S2     0x1a00008,B21     ; |1092| 

           MVK     .S1     134,A28           ; |1089| 
||         MVKH    .S2     0x1a0000c,B17     ; |1091| 

           ADD     .L1X    A31,B4,A5         ; |1081| 
||         MVKH    .S2     0x1a00008,B21     ; |1092| 
||         MVK     .S1     130,A20           ; |1092| 

   [ A0]   LDW     .D1T1   *+A4[A6],A3       ; |1079| 
||         MVK     .S2     130,B22           ; |1094| 

   [!A0]   LDW     .D1T1   *+A4[A3],A3       ; |1079| 
||         MVK     .S2     131,B20           ; |1091| 

           STW     .D1T1   A8,*A5            ; |1081| 
||         MVKL    .S1     0x1a0000c,A8      ; |1090| 

           LDW     .D1T1   *+A4[A30],A6      ; |1087| 
||         LDHU    .D2T2   *B8,B5            ; |1087| 
||         MVKH    .S1     0x1a0000c,A8      ; |1090| 

           NOP             2
           SHL     .S1     A3,15,A3          ; |1087| 
           SUBAW   .D1     A3,A29,A3         ; |1087| 

           MVKL    .S2     0x1a00008,B5      ; |1094| 
||         ADD     .L2     B30,B5,B4         ; |1087| 
||         EXTU    .S1     A6,17,17,A5       ; |1087| 

           MVKH    .S2     0x1a00008,B5      ; |1094| 
||         OR      .L1     A3,A5,A5          ; |1087| 

           ADD     .L1     A5,A5,A5          ; |1087| 

           ADDAW   .D1     A4,A16,A5         ; |1090| 
||         MV      .L2X    A4,B4
||         STW     .D2T1   A5,*B4            ; |1087| 

           LDW     .D1T1   *+A4[A28],A6      ; |1089| 
           NOP             3
           ADDAW   .D1     A4,A16,A16        ; |1092| 

           ADDAW   .D1     A4,A17,A6         ; |1094| 
||         AND     .L1     2,A6,A0           ; |1089| 

   [!A0]   LDW     .D2T2   *+B4[B18],B18     ; |1090| 
|| [ A0]   B       .S1     L3                ; |1089| 
|| [ A0]   LDW     .D1T1   *+A4[A9],A3       ; |1098| 

   [!A0]   LDHU    .D1T2   *A5,B19           ; |1090| 
           NOP             3
   [!A0]   LDW     .D2T2   *+B18(12),B18     ; |1090| 
           ; BRANCHCC OCCURS {L3}            ; |1089| 
;** --------------------------------------------------------------------------*
;* 1090	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$3*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).curViop).frame.iFrm.cb1;
;* 1091	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$2*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).curViop).frame.iFrm.cr1;
;* 1092	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$3*4+(unsigned (*)[3])chan)+0x1a00008u) = (_extu((*chan).cThrld, 17u, 17u)|C$4)*2u;
;* 1094	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$2*4+(unsigned (*)[3])chan)+0x1a00008u) = (_extu((*chan).cThrld, 17u, 17u)|C$4)*2u;
           NOP             2
           ADD     .L2X    A8,B19,B19        ; |1090| 
           MV      .L1X    B20,A5
           STW     .D2T2   B18,*B19          ; |1090| 
           LDW     .D1T1   *+A4[A5],A8       ; |1091| 
           LDHU    .D1T1   *A19,A5           ; |1091| 
           NOP             3
           LDW     .D1T1   *+A8(16),A8       ; |1091| 
           NOP             3
           ADD     .L1X    B17,A5,A5         ; |1091| 
           STW     .D1T1   A8,*A5            ; |1091| 
           LDW     .D1T1   *+A4[A20],A5      ; |1092| 
           LDHU    .D1T1   *A16,A8           ; |1092| 
           NOP             3
           EXTU    .S1     A5,17,17,A5       ; |1092| 

           OR      .L1     A3,A5,A5          ; |1092| 
||         ADD     .S1X    B21,A8,A8         ; |1092| 

           ADD     .L1     A5,A5,A5          ; |1092| 
           STW     .D1T1   A5,*A8            ; |1092| 

           LDW     .D2T2   *+B4[B22],B4      ; |1094| 
||         LDHU    .D1T1   *A6,A5            ; |1094| 

           NOP             4
           EXTU    .S2     B4,17,17,B4       ; |1094| 
           NOP             1
           OR      .L1X    A3,B4,A3          ; |1094| 

           ADD     .L1     A3,A3,A5          ; |1094| 
||         ADD     .S1X    B5,A5,A3          ; |1094| 

           STW     .D1T1   A5,*A3            ; |1094| 
           LDW     .D1T1   *+A4[A9],A3       ; |1098| 
;** --------------------------------------------------------------------------*
L3:    
;**	-----------------------g18:
;* 1098	-----------------------    tccIntNum = C$3 = *(Q$1*4+(int (*)[3])chan);
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&K$35;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (unsigned)C$3 < K$38 ) goto g20;  // [12]
;** 649	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u|1u<<(unsigned)C$3-32u;  // [25]
;** 649	-----------------------    goto g21;  // [25]
;**	-----------------------g20:
;** 648	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u|1u<<tccIntNum;  // [25]
;**	-----------------------g21:
;** 360	-----------------------    CSR = CSR&K$35|gie&1u;  // [13]
;** 360	-----------------------    tccIntNum = C$2 = *U$54;  // [13]
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&K$35;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (unsigned)C$2 < K$38 ) goto g23;  // [12]
;** 649	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u|1u<<(unsigned)C$2-32u;  // [25]
;** 649	-----------------------    goto g24;  // [25]
;**	-----------------------g23:
;** 648	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u|1u<<tccIntNum;  // [25]
;**	-----------------------g24:
;** 360	-----------------------    CSR = CSR&K$35|gie&1u;  // [13]
;** 360	-----------------------    i = 0;  // [13]
;* 1100	-----------------------    if ( i >= numEdmaChans ) goto g30;
;**  	-----------------------    K$91 = (-32);
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B9,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x1a0ffe8,B5      ; |648| 
||         CMPLTU  .L2X    A3,B16,B0         ; |356| 
||         MVK     .D2     1,B17             ; |648| 
||         MVK     .S1     32,A8             ; |649| 
||         MVK     .L1     1,A30             ; |649| 

           MVKH    .S2     0x1a0ffe8,B5      ; |648| 
||         SUB     .L1     A3,A8,A31         ; |649| 
||         MVKL    .S1     0x1a0ffe8,A5      ; |648| 

   [ B0]   LDW     .D2T2   *B5,B18           ; |648| 
||         MVKL    .S2     0x1a0ffa8,B5      ; |649| 
||         SHL     .S1X    B17,A3,A9         ; |648| 

           MVKH    .S2     0x1a0ffa8,B5      ; |649| 
||         SHL     .S1     A30,A31,A3        ; |649| 

   [!B0]   LDW     .D2T2   *B5,B5            ; |649| 
||         MVKL    .S1     0x1a0ffa8,A6      ; |649| 

           MVKH    .S1     0x1a0ffe8,A5      ; |648| 
           MVKH    .S1     0x1a0ffa8,A6      ; |649| 
   [ B0]   OR      .L2X    A9,B18,B5         ; |648| 
   [ B0]   STW     .D1T2   B5,*A5            ; |648| 
   [!B0]   OR      .L2X    A3,B5,B5          ; |649| 

   [!B0]   STW     .D1T2   B5,*A6            ; |649| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B9,B5,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *A18,A3           ; |360| 
           NOP             3
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B9,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S1     0x1a0ffe8,A5      ; |648| 
||         MVKL    .S2     0x1a0ffa8,B5      ; |649| 
||         CMPLTU  .L2X    A3,B16,B0         ; |356| 
||         MVK     .L1     1,A6              ; |648| 

           MVKH    .S1     0x1a0ffe8,A5      ; |648| 
||         MVKH    .S2     0x1a0ffa8,B5      ; |649| 

   [!B0]   LDW     .D2T2   *B5,B17           ; |649| 
|| [ B0]   LDW     .D1T1   *A5,A16           ; |648| 
||         MVK     .L2     1,B5              ; |649| 
||         MVK     .S1     32,A8             ; |649| 

           SHL     .S1     A6,A3,A9          ; |648| 
||         SUB     .L1     A3,A8,A3          ; |649| 

           SHL     .S1X    B5,A3,A3          ; |649| 
           MVKL    .S1     0x1a0ffa8,A28     ; |649| 
           MVKL    .S1     0x1a0ffe8,A29     ; |648| 

   [!B0]   OR      .L2X    A3,B17,B5         ; |649| 
||         MVKH    .S1     0x1a0ffa8,A28     ; |649| 
|| [ B0]   OR      .L1     A9,A16,A8         ; |648| 

           MVKH    .S1     0x1a0ffe8,A29     ; |648| 
|| [!B0]   STW     .D1T2   B5,*A28           ; |649| 

   [ B0]   STW     .D1T1   A8,*A29           ; |648| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B9,B5,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           ZERO    .L2     B4                ; |360| 
||         MVK     .S1     0xffffffe0,A3

           STW     .D2T2   B4,*+SP(4)        ; |360| 
           LDW     .D2T2   *+SP(4),B4        ; |1100| 
           NOP             4
           CMPLT   .L1X    B4,A7,A0          ; |1100| 
   [!A0]   BNOP    .S1     L5,5              ; |1100| 
           ; BRANCHCC OCCURS {L5}            ; |1100| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
L4:    
DW$L$__covrRecover$6$B:
	.dwpsn	"vportcap.c",1100,0
;**	-----------------------g26:
;* 1101	-----------------------    hEdma = U$77[i];
;** 489	-----------------------    chaNum = C$1 = _extu(hEdma, 8u, 24u);  // [22]
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$3 = CSR&K$35;  // [12]
;** 355	-----------------------    CSR = a$3;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (int)C$1 < (int)K$38 ) goto g28;  // [12]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$1+K$91;  // [22]
;**  	-----------------------    goto g29;
;**	-----------------------g28:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [22]
;**	-----------------------g29:
;** 360	-----------------------    a$4 = CSR&K$35|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$4;  // [13]
;** 360	-----------------------    i = i+1;  // [13]
;* 1100	-----------------------    if ( i < numEdmaChans ) goto g26;
           LDW     .D2T2   *+SP(4),B4        ; |1101| 
           NOP             4
           LDW     .D2T2   *+B8[B4],B4       ; |1101| 
           NOP             4
           EXTU    .S2     B4,8,24,B4        ; |489| 
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B17          ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B9,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           CMPLT   .L2     B4,B16,B0         ; |356| 
||         ADD     .L1X    A3,B4,A6          ; |494| 
||         MVK     .S1     1,A8              ; |494| 
||         MVK     .S2     1,B18             ; |493| 
||         MV      .D2     B17,B31           ; |356| 

   [!B0]   MVKL    .S2     0x1a0ffb4,B5      ; |494| 
|| [ B0]   MVKL    .S1     0x1a0fff4,A5      ; |493| 

   [!B0]   MVKH    .S2     0x1a0ffb4,B5      ; |494| 
|| [ B0]   MVKH    .S1     0x1a0fff4,A5      ; |493| 

   [!B0]   LDW     .D2T2   *B5,B5            ; |494| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |493| 
|| [ B0]   SHL     .S2     B18,B4,B18        ; |493| 
|| [!B0]   SHL     .S1     A8,A6,A6          ; |494| 

   [ B0]   MVKL    .S2     0x1a0fff4,B5      ; |493| 
   [!B0]   MVKL    .S1     0x1a0ffb4,A5      ; |494| 
   [ B0]   MVKH    .S2     0x1a0fff4,B5      ; |493| 
   [!B0]   MVKH    .S1     0x1a0ffb4,A5      ; |494| 

   [!B0]   OR      .L2X    A6,B5,B5          ; |494| 
|| [ B0]   OR      .L1X    B18,A5,A5         ; |493| 

   [!B0]   STW     .D1T2   B5,*A5            ; |494| 
|| [ B0]   STW     .D2T1   A5,*B5            ; |493| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     B9,B5,B4          ; |360| 
||         AND     .S2     1,B31,B5          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *+SP(4),B4        ; |360| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |360| 
           STW     .D2T2   B4,*+SP(4)        ; |360| 
           LDW     .D2T2   *+SP(4),B4        ; |1100| 
           NOP             4
           CMPLT   .L1X    B4,A7,A0          ; |1100| 
	.dwpsn	"vportcap.c",1102,0
   [ A0]   BNOP    .S1     L4,5              ; |1100| 
           ; BRANCHCC OCCURS {L4}            ; |1100| 
DW$L$__covrRecover$6$E:
;** --------------------------------------------------------------------------*
L5:    
;**	-----------------------g30:
;* 1105	-----------------------    if ( (*chan).chanNum ) goto g32;
;* 1106	-----------------------    base[1] = base[1]|2;
;* 1107	-----------------------    goto g33;
;**	-----------------------g32:
;* 1108	-----------------------    base[1] = base[1]|0x20000;
;**	-----------------------g33:
;* 1111	-----------------------    *cbase = *cbase&0xbfffffff;
;* 1114	-----------------------    *base = *base|2<<((*chan).chanNum<<4);
;* 1115	-----------------------    return 0;
           LDW     .D1T1   *+A4(8),A0        ; |1105| 
           NOP             3
           ADD     .L2     8,SP,SP           ; |1116| 
   [!A0]   LDW     .D2T2   *+B7(4),B4        ; |1106| 
   [ A0]   LDW     .D2T2   *+B7(4),B4        ; |1108| 
           NOP             3
   [!A0]   OR      .L2     2,B4,B4           ; |1106| 

   [!A0]   STW     .D2T2   B4,*+B7(4)        ; |1106| 
|| [ A0]   SET     .S2     B4,17,17,B4       ; |1108| 

   [ A0]   STW     .D2T2   B4,*+B7(4)        ; |1108| 
           LDW     .D2T2   *B6,B4            ; |1111| 
           NOP             4
           CLR     .S2     B4,30,30,B4       ; |1111| 
           STW     .D2T2   B4,*B6            ; |1111| 
           LDW     .D1T1   *+A4(8),A3        ; |1114| 
           NOP             1
           LDW     .D2T2   *B7,B4            ; |1114| 
           MVK     .L1     2,A4              ; |1114| 
           RET     .S2     B3                ; |1116| 
           SHL     .S1     A3,4,A3           ; |1114| 
           SHL     .S1     A4,A3,A3          ; |1114| 
           ZERO    .L1     A4                ; |1115| 
           OR      .L2X    A3,B4,B4          ; |1114| 
	.dwpsn	"vportcap.c",1116,1
           STW     .D2T2   B4,*B7            ; |1114| 
           ; BRANCH OCCURS {B3}              ; |1116| 

DW$51	.dwtag  DW_TAG_loop
	.dwattr DW$51, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L4:1:1192527503")
	.dwattr DW$51, DW_AT_begin_file("vportcap.c")
	.dwattr DW$51, DW_AT_begin_line(0x44c)
	.dwattr DW$51, DW_AT_end_line(0x44e)
DW$52	.dwtag  DW_TAG_loop_range
	.dwattr DW$52, DW_AT_low_pc(DW$L$__covrRecover$6$B)
	.dwattr DW$52, DW_AT_high_pc(DW$L$__covrRecover$6$E)
	.dwendtag DW$51


DW$53	.dwtag  DW_TAG_loop
	.dwattr DW$53, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L1:1:1192527503")
	.dwattr DW$53, DW_AT_begin_file("vportcap.c")
	.dwattr DW$53, DW_AT_begin_line(0x433)
	.dwattr DW$53, DW_AT_end_line(0x436)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$__covrRecover$2$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$__covrRecover$2$E)
	.dwendtag DW$53

	.dwattr DW$49, DW_AT_end_file("vportcap.c")
	.dwattr DW$49, DW_AT_end_line(0x45c)
	.dwattr DW$49, DW_AT_end_column(0x01)
	.dwendtag DW$49

	.sect	".text"

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$55, DW_AT_low_pc(_mdSubmitChan)
	.dwattr DW$55, DW_AT_high_pc(0x00)
	.dwattr DW$55, DW_AT_begin_file("vportcap.c")
	.dwattr DW$55, DW_AT_begin_line(0x145)
	.dwattr DW$55, DW_AT_begin_column(0x0d)
	.dwattr DW$55, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr DW$55, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",326,1

;******************************************************************************
;* FUNCTION NAME: _mdSubmitChan                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 40 Save = 40 byte                  *
;******************************************************************************
_mdSubmitChan:
;** --------------------------------------------------------------------------*
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$56, DW_AT_type(*DW$T$37)
	.dwattr DW$56, DW_AT_location[DW_OP_reg4]
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("packet"), DW_AT_symbol_name("_packet")
	.dwattr DW$57, DW_AT_type(*DW$T$75)
	.dwattr DW$57, DW_AT_location[DW_OP_reg20]
;** 328	-----------------------    chan = (struct $$fake3 *)chanp;
;** 328	-----------------------    Q$1 = 92;
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 332	-----------------------    offset = (*chan).nextEDMARlds*2;
;** 336	-----------------------    capStatReg = *(volatile int *)(*chan).base;
;** 338	-----------------------    vpis = *((volatile int *)(portObjs[(*chan).portNum]).base+204);
;** 351	-----------------------    notToLate = (short)(_mpyu((*chan).numLinesFld1, (unsigned)capStatReg>>12u&1u)+_extu((unsigned)capStatReg, 4u, 20u)) < (*chan).lastLineNum-5;
;** 353	-----------------------    assert((*chan).status&4u);

           MV      .L1X    SP,A31            ; |326| 
||         STW     .D2T1   A14,*SP--(40)     ; |326| 

           STDW    .D1T1   A13:A12,*-A31(24)
||         STDW    .D2T2   B13:B12,*+SP(32)
||         MV      .L1     A4,A13            ; |326| 

           STDW    .D1T1   A11:A10,*-A31(32)
||         STDW    .D2T2   B11:B10,*+SP(24)
||         MV      .L1     A4,A10            ; |326| 
||         MV      .S1X    B4,A11            ; |326| 
||         MVK     .S2     0x5c,B10          ; |328| 

           STW     .D2T2   B3,*+SP(4)
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B12          ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     -2,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           LDW     .D1T1   *+A10(12),A3      ; |336| 
||         MVK     .S1     125,A4            ; |351| 
||         MVK     .S2     1216,B4           ; |338| 

           LDW     .D1T1   *+A10(4),A5       ; |338| 
||         MVK     .S2     51,B5             ; |338| 

           NOP             1
           LDW     .D1T1   *+A10[A4],A4      ; |351| 
           LDW     .D1T1   *A10,A8           ; |353| 
           LDW     .D1T1   *A3,A3            ; |336| 

           MVK     .S1     141,A5            ; |351| 
||         MVKL    .S2     _portObjs+4,B4    ; |338| 
||         MPYLI   .M2X    B4,A5,B7:B6       ; |338| 

           LDW     .D1T1   *+A10[A5],A6      ; |351| 
           MVKH    .S2     _portObjs+4,B4    ; |338| 
           AND     .L1     4,A8,A0           ; |353| 

           EXTU    .S1     A3,19,31,A5       ; |351| 
||         ADD     .L2     B4,B6,B4          ; |338| 

           LDW     .D2T2   *B4,B4            ; |338| 
||         MVK     .S1     142,A4            ; |332| 
||         MPYU    .M1     A4,A5,A7          ; |351| 

           EXTU    .S1     A3,4,20,A3        ; |351| 
|| [ A0]   B       .S2     L6                ; |353| 
||         LDW     .D1T1   *+A10[A4],A5      ; |332| 

           MVKL    .S1     SL1+0,A4          ; |353| 
||         ADD     .L1     A3,A7,A3          ; |351| 

           SUB     .L1     A6,5,A3           ; |351| 
||         EXT     .S1     A3,16,16,A7       ; |351| 

           MVKH    .S1     SL1+0,A4          ; |353| 
|| [ A0]   LDW     .D1T1   *+A11(24),A3      ; |354| 
||         CMPLT   .L1     A7,A3,A12         ; |351| 
|| [!A0]   CALL    .S2     __abort_msg       ; |353| 

   [ A0]   MVK     .S1     129,A4            ; |354| 
||         LDW     .D2T2   *+B4[B5],B13      ; |338| 

           ADD     .L1     A5,A5,A14         ; |332| 
           ; BRANCHCC OCCURS {L6}            ; |353| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL0,B3,2          ; |353| 
RL0:       ; CALL OCCURS {__abort_msg}       ; |353| 

           LDW     .D1T1   *+A11(24),A3      ; |354| 
||         MVK     .S1     129,A4            ; |354| 

           NOP             2
;** --------------------------------------------------------------------------*
L6:    
;** 354	-----------------------    C$13 = (*packet).cmd;
;** 354	-----------------------    if ( !((C$13 != 128u)&(C$13 != 129u)&(C$13 != 130u)) ) goto g3;
;** 358	-----------------------    return (-9);

           MVK     .S1     130,A5            ; |354| 
||         MVK     .S2     128,B4            ; |354| 

           MVKL    .S2     0x7a120,B11       ; |361| 

           CMPEQ   .L1     A3,A4,A4          ; |354| 
||         CMPEQ   .L2X    A3,B4,B4          ; |354| 
||         MVKH    .S2     0x7a120,B11       ; |361| 

           CMPEQ   .L1     A3,A5,A3          ; |354| 

           OR      .L2X    B4,A4,B4
||         MVK     .L1     0xfffffff7,A4     ; |358| 

           OR      .L2X    B4,A3,B0
   [!B0]   B       .S1     L17               ; |358| 
   [ B0]   CALL    .S1     _CLK_getltime     ; |361| 
           NOP             4
           ; BRANCHCC OCCURS {L17}           ; |358| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 361	-----------------------    if ( CLK_getltime() <= 500000u ) goto g5;
           ADDKPC  .S2     RL1,B3,0          ; |361| 
RL1:       ; CALL OCCURS {_CLK_getltime}     ; |361| 
;** --------------------------------------------------------------------------*

           CMPGTU  .L1X    A4,B11,A0         ; |361| 
||         MVKL    .S1     _TSK_timerSem,A3  ; |363| 
||         MVKL    .S2     _cr_reg,B4        ; |363| 

   [!A0]   B       .S2     L7                ; |361| 
||         MVKH    .S1     _TSK_timerSem,A3  ; |363| 

           MVKH    .S2     _cr_reg,B4        ; |363| 
||         MV      .L1     A3,A4             ; |363| 
|| [!A0]   LDW     .D1T1   *+A11(24),A3      ; |365| 

   [!A0]   MVK     .S2     476,B4            ; |367| 
|| [!A0]   MVK     .S1     0x80,A4           ; |365| 
|| [ A0]   LDW     .D2T2   *B4,B4            ; |363| 

           MVKL    .S2     0xbad00,B5        ; |363| 
|| [!A0]   ADD     .L2X    B4,A10,B4         ; |367| 

   [ A0]   CALL    .S1     _SEM_pend         ; |363| 
||         MVKH    .S2     0xbad00,B5        ; |363| 

           NOP             1
           ; BRANCHCC OCCURS {L7}            ; |361| 
;** --------------------------------------------------------------------------*
;** 363	-----------------------    SEM_pend(&TSK_timerSem, (unsigned)(cr_reg<<4)^0xbad00u);
           ADDKPC  .S2     RL2,B3,1          ; |363| 
           SHL     .S2     B4,4,B4           ; |363| 
           XOR     .L2     B5,B4,B4          ; |363| 
RL2:       ; CALL OCCURS {_SEM_pend}         ; |363| 

           LDW     .D1T1   *+A11(24),A3      ; |365| 
||         MVK     .S2     476,B4            ; |367| 
||         MVK     .S1     0x80,A4           ; |365| 

           NOP             3
           ADD     .L2X    B4,A10,B4         ; |367| 
;** --------------------------------------------------------------------------*
L7:    
;**	-----------------------g5:
;** 365	-----------------------    v$1 = (*packet).cmd;
;** 365	-----------------------    U$50 = v$1;
;** 333	-----------------------    nextViopChanged = 0u;
;** 354	-----------------------    K$53 = 129u;
;** 355	-----------------------    K$6 = 0xfffffffeu;  // [12]
;** 365	-----------------------    if ( U$50 == (K$51 = 128u) ) goto g11;

           CMPEQ   .L1     A3,A4,A0          ; |365| 
||         MVK     .D1     0x1,A21           ; |356| 
||         MVK     .L2     0xfffffffe,B23    ; |355| 
||         MVK     .S1     0x81,A5           ; |354| 
||         ZERO    .S2     B1                ; |333| 

   [ A0]   BNOP    .S2     L9,4              ; |365| 
|| [!A0]   LDW     .D1T1   *+A11(8),A4       ; |366| 
|| [!A0]   LDHU    .D2T2   *B4,B0            ; |367| 
|| [!A0]   MVK     .S1     132,A7            ; |369| 

   [!A0]   LDW     .D1T1   *A4,A4            ; |366| 
|| [!A0]   ZERO    .L1     A0

           ; BRANCHCC OCCURS {L9}            ; |365| 
;** --------------------------------------------------------------------------*
;** 366	-----------------------    viop = (struct _FVID_Frame *)*(void **)(*packet).addr;
;** 367	-----------------------    if ( !(*chan).queEmpty ) goto g9;
;** 367	-----------------------    if ( !notToLate ) goto g9;
;** 369	-----------------------    (*chan).nextViop = viop;
;** 370	-----------------------    nextViopChanged = 1u;
;** 371	-----------------------    goto g10;
   [ B0]   MV      .L1     A12,A0            ; |369| 

   [ A0]   BNOP    .S2     L8,1              ; |371| 
|| [!A0]   MV      .L1X    B10,A3
|| [!A0]   MVK     .S1     364,A7            ; |143| 
|| [ A0]   MVK     .L2     0x1,B1            ; |370| 
|| [ A0]   ZERO    .D1     A31               ; |375| 

   [!A0]   LDW     .D1T1   *+A10[A3],A6      ; |141| 
|| [!A0]   ADD     .L1     A7,A10,A7         ; |143| 

   [ A0]   STW     .D1T1   A4,*+A10[A7]      ; |369| 
|| [ A0]   MVK     .S1     476,A4            ; |375| 

   [ A0]   ADD     .L1     A4,A10,A6         ; |375| 
   [ A0]   STH     .D1T1   A31,*A6           ; |375| 
           ; BRANCHCC OCCURS {L8}            ; |371| 
;** --------------------------------------------------------------------------*
;**	-----------------------g9:
;** 141	-----------------------    prev = *(Q$1*4+(struct _QUE_Elem **)chan);  // [4]
;** 143	-----------------------    (*(struct _QUE_Elem *)(void *)viop).next = (struct _QUE_Elem *)chan+364;  // [4]
;** 144	-----------------------    (*(struct _QUE_Elem *)(void *)viop).prev = prev;  // [4]
;** 145	-----------------------    (*prev).next = (struct _QUE_Elem *)(void *)viop;  // [4]
;** 146	-----------------------    *(Q$1*4+(struct _QUE_Elem **)chan) = (struct _QUE_Elem *)(void *)viop;  // [4]
;**  	-----------------------    U$50 = (*packet).cmd;

           STW     .D1T1   A7,*A4            ; |143| 
||         ZERO    .L1     A31               ; |375| 

           STW     .D1T1   A6,*+A4(4)        ; |144| 
           STW     .D1T1   A4,*A6            ; |145| 

           STW     .D1T1   A4,*+A10[A3]      ; |146| 
||         MVK     .S1     476,A4            ; |375| 

           LDW     .D1T1   *+A11(24),A3
||         ADD     .L1     A4,A10,A6         ; |375| 

           NOP             2
           STH     .D1T1   A31,*A6           ; |375| 
;** --------------------------------------------------------------------------*
L8:    
;**	-----------------------g10:
;** 375	-----------------------    (*chan).queEmpty = C$12 = 0;
;** 376	-----------------------    (*packet).status = C$12;
;** 376	-----------------------    v$1 = U$50;
;** 376	-----------------------    retVal = 0;
;** 376	-----------------------    goto g12;
;**	-----------------------g11:
;** 356	-----------------------    retVal = 1;  // [12]

           ZERO    .L1     A21               ; |376| 
||         STW     .D1T1   A31,*+A11(28)     ; |376| 

;** --------------------------------------------------------------------------*
L9:    
;**	-----------------------g12:
;** 378	-----------------------    if ( v$1 == K$53 ) goto g22;

           MV      .L2X    A10,B4
||         MVK     .S2     133,B5            ; |379| 
||         CMPEQ   .L1     A3,A5,A0          ; |378| 
||         MVK     .D2     0xffffffff,B6     ; |379| 

   [ A0]   BNOP    .S1     L11,4             ; |378| 
|| [!A0]   LDW     .D2T2   *+B4[B5],B5       ; |379| 

           CMPEQ   .L2     B5,B6,B0          ; |379| 
           ; BRANCHCC OCCURS {L11}           ; |378| 
;** --------------------------------------------------------------------------*
;** 379	-----------------------    U$99 = (*chan).mrViop;
;** 379	-----------------------    if ( U$99 == (K$101 = (void *)0xffffffffu) ) goto g21;

   [ B0]   B       .S2     L11               ; |379| 
||         MVK     .S1     137,A3            ; |381| 
||         MVK     .L1     0x1,A21           ; |407| 
|| [ B0]   MV      .L2X    A11,B4

   [!B0]   LDW     .D1T1   *+A10[A3],A3      ; |381| 
||         MVK     .S2     137,B7            ; |406| 
|| [ B0]   MV      .L2X    A10,B5

           NOP             1
   [!B0]   MVK     .S2     132,B7            ; |382| 
   [ B0]   STW     .D2T2   B4,*+B5[B7]       ; |406| 
   [ B0]   STW     .D1T1   A21,*+A11(28)     ; |407| 
           ; BRANCHCC OCCURS {L11}           ; |379| 
;** --------------------------------------------------------------------------*
;** 381	-----------------------    if ( (*chan).packetIOM != K$101 ) goto g20;

           CMPEQ   .L2X    A3,B6,B0          ; |381| 
||         MVK     .L1     0xfffffff4,A21    ; |404| 

   [!B0]   BNOP    .S2     L11,4             ; |381| 
|| [ B0]   LDW     .D2T2   *+B4[B7],B4       ; |382| 
|| [ B0]   LDW     .D1T1   *+A11(8),A3       ; |382| 
|| [ B0]   MVK     .S1     133,A5            ; |384| 

           CMPEQ   .L2     B4,B5,B0          ; |382| 
           ; BRANCHCC OCCURS {L11}           ; |381| 
;** --------------------------------------------------------------------------*
;** 382	-----------------------    v$2 = (*packet).addr;
;** 382	-----------------------    if ( (*chan).nextViop != U$99 ) goto g19;

   [!B0]   B       .S1     L10               ; |382| 
||         MVK     .S2     32,B4             ; |385| 
|| [!B0]   STW     .D1T2   B5,*A3            ; |383| 
||         ZERO    .L1     A4                ; |386| 

   [!B0]   BNOP    .S2     L12,2             ; |387| 
||         MV      .L1     A12,A0
||         ZERO    .S1     A21               ; |386| 
|| [!B0]   STW     .D1T2   B6,*+A10[A5]      ; |384| 

   [!B0]   STW     .D1T2   B4,*+A11(12)      ; |385| 
   [!B0]   STW     .D1T1   A4,*+A11(28)      ; |386| 
           ; BRANCHCC OCCURS {L10}           ; |382| 
;** --------------------------------------------------------------------------*
;** 388	-----------------------    if ( notToLate ) goto g18;
;** 398	-----------------------    (*chan).mrViop = (struct _FVID_Frame *)K$101;
;** 399	-----------------------    (*chan).packetIOM = packet;
;** 400	-----------------------    (*packet).status = retVal = 1;
;** 400	-----------------------    goto g22;
;**	-----------------------g18:
;** 389	-----------------------    *(void **)v$2 = (void *)U$99;
;** 390	-----------------------    (*chan).mrViop = (struct _FVID_Frame *)K$101;
;** 391	-----------------------    (*packet).size = 32u;
;** 392	-----------------------    (*packet).status = 0;
;** 396	-----------------------    (*chan).nextViop = (*chan).curViop;
;** 392	-----------------------    retVal = 0;
;** 397	-----------------------    goto g22;

   [ A0]   STW     .D1T2   B5,*A3            ; |389| 
||         MVK     .S1     133,A31           ; |390| 
||         ZERO    .L1     A30               ; |392| 

   [ A0]   STW     .D1T2   B6,*+A10[A31]     ; |390| 
||         MVK     .S1     131,A29           ; |396| 
||         MVK     .L1     0x1,A21           ; |400| 

   [ A0]   STW     .D1T2   B4,*+A11(12)      ; |391| 
||         MVK     .S1     133,A27           ; |398| 
|| [ A0]   ZERO    .L1     A21               ; |392| 

   [ A0]   STW     .D1T1   A30,*+A11(28)     ; |392| 
||         MVK     .S1     137,A28           ; |399| 

           BNOP    .S2     L11,1             ; |397| 
|| [ A0]   LDW     .D1T1   *+A10[A29],A4     ; |396| 
||         MVK     .S1     132,A26           ; |396| 

   [!A0]   STW     .D1T2   B6,*+A10[A27]     ; |398| 
   [!A0]   STW     .D1T1   A11,*+A10[A28]    ; |399| 
   [!A0]   STW     .D1T1   A21,*+A11(28)     ; |400| 
   [ A0]   STW     .D1T1   A4,*+A10[A26]     ; |396| 
           ; BRANCH OCCURS {L11}             ; |397| 
;** --------------------------------------------------------------------------*
L10:    
;**	-----------------------g19:
;** 383	-----------------------    *(void **)v$2 = (void *)U$99;
;** 384	-----------------------    (*chan).mrViop = (struct _FVID_Frame *)K$101;
;** 385	-----------------------    (*packet).size = 32u;
;** 386	-----------------------    (*packet).status = 0;
;** 386	-----------------------    retVal = 0;
;** 387	-----------------------    goto g22;
;**	-----------------------g20:
;** 404	-----------------------    retVal = (-12);
;** 404	-----------------------    goto g22;

   [!B1]   B       .S2     L14               ; |410| 
||         MVK     .S1     132,A3

           ; BRANCH OCCURS {L12}             ; |387| 
;**	-----------------------g21:
;** 406	-----------------------    (*chan).packetIOM = packet;
;** 407	-----------------------    (*packet).status = retVal = 1;
;** --------------------------------------------------------------------------*
L11:    

           MVK     .S1     132,A3
|| [!B1]   B       .S2     L14               ; |410| 

;** --------------------------------------------------------------------------*
L12:    
;**	-----------------------g22:
;** 410	-----------------------    if ( !nextViopChanged ) goto g26;

           MVK     .S2     231,B6            ; |412| 
|| [ B1]   MV      .L2X    A10,B4

   [ B1]   LDHU    .D2T2   *+B4[B6],B0       ; |412| 
|| [!B1]   EXTU    .S2     B13,25,31,B0      ; |435| 

           NOP             3
           ; BRANCHCC OCCURS {L14}           ; |410| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$82 = (*chan).nextViop;
;** 412	-----------------------    if ( (*chan).interlaced ) goto g25;

           LDW     .D1T1   *+A10[A3],A3
||         MVK     .S1     400,A7            ; |426| 
||         MVKL    .S2     0x1a0000c,B7      ; |426| 

           ADDAW   .D1     A10,A14,A6        ; |426| 
||         MVK     .S1     400,A17           ; |413| 
||         MVKH    .S2     0x1a0000c,B7      ; |426| 

           ADD     .L1     A7,A6,A6          ; |426| 
||         ADDAW   .D1     A10,A14,A18       ; |413| 
||         MVK     .S1     132,A5            ; |428| 
||         MVKL    .S2     0x1a0000c,B9      ; |413| 

           ADD     .L1     A17,A18,A7        ; |413| 
|| [!B0]   LDHU    .D1T1   *A6,A7            ; |426| 
||         MVKL    .S1     0x1a0000c,A4      ; |428| 
||         MVKL    .S2     0x1a0000c,B5      ; |430| 

           MVKL    .S1     0x1a0000c,A9      ; |419| 
||         MVKL    .S2     0x1a0000c,B16     ; |417| 

           MVKL    .S1     0x1a0000c,A8      ; |423| 
||         MVK     .S2     132,B8            ; |430| 
|| [!B0]   LDW     .D1T2   *+A3(8),B6        ; |426| 

           MVKL    .S1     0x1a0000c,A16     ; |415| 
||         MVKL    .S2     0x1a0000c,B18     ; |421| 
|| [ B0]   LDW     .D1T2   *+A3(8),B4        ; |413| 

           MVKH    .S1     0x1a0000c,A4      ; |428| 
||         MVKH    .S2     0x1a0000c,B9      ; |413| 
|| [ B0]   LDHU    .D1T1   *A7,A4            ; |413| 

   [!B0]   ADD     .L2X    B7,A7,B4          ; |426| 
||         MVKH    .S1     0x1a0000c,A9      ; |419| 
||         MVKH    .S2     0x1a0000c,B5      ; |430| 

   [ B0]   B       .S2     L13               ; |412| 
||         MVKH    .S1     0x1a0000c,A8      ; |423| 

   [!B0]   STW     .D2T2   B6,*B4            ; |426| 
||         MVKH    .S2     0x1a0000c,B16     ; |417| 
||         MVKH    .S1     0x1a0000c,A16     ; |415| 

   [!B0]   LDW     .D1T2   *+A10[A5],B4      ; |428| 
||         MVKH    .S2     0x1a0000c,B18     ; |421| 
||         MVK     .S1     132,A22           ; |423| 

   [!B0]   LDHU    .D1T1   *+A6(16),A5       ; |428| 
||         MVK     .S2     132,B17           ; |417| 
||         MVK     .S1     132,A20           ; |419| 
|| [ B0]   ADD     .L2X    B9,A4,B5          ; |413| 

           MVK     .S2     132,B19           ; |421| 
||         MVK     .S1     132,A19           ; |415| 
|| [ B0]   STW     .D2T2   B4,*B5            ; |413| 

   [ B0]   LDW     .D1T1   *+A10[A19],A4     ; |415| 
           ; BRANCHCC OCCURS {L13}           ; |412| 
;** --------------------------------------------------------------------------*
;** 426	-----------------------    C$11 = offset*4+(unsigned (*)[12])chan+400;
;** 426	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*C$11+0x1a0000cu) = (unsigned)(*U$82).frame.iFrm.y1;
;** 428	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$11[4]+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb1;
;** 430	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$11[8]+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr1;
;** 430	-----------------------    goto g26;

           MV      .L1X    B8,A3
||         EXTU    .S2     B13,25,31,B0      ; |435| 

           LDW     .D2T2   *+B4(12),B4       ; |428| 
           ADD     .L1     A4,A5,A4          ; |428| 
           NOP             3
           STW     .D1T2   B4,*A4            ; |428| 
           LDW     .D1T1   *+A10[A3],A4      ; |430| 
           LDHU    .D1T1   *+A6(32),A3       ; |430| 
           NOP             3

           LDW     .D1T1   *+A4(16),A4       ; |430| 
||         B       .S1     L15               ; |430| 

   [!B0]   BNOP    .S1     L16,3             ; |435| 
||         ADD     .L1X    B5,A3,A3          ; |430| 

           MV      .L1     A13,A4            ; |436| 
||         STW     .D1T1   A4,*A3            ; |430| 

           ; BRANCH OCCURS {L15}             ; |430| 
;** --------------------------------------------------------------------------*
L13:    
;**	-----------------------g25:
;** 413	-----------------------    C$10 = offset*4+(unsigned (*)[12])chan+400;
;** 413	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*C$10+0x1a0000cu) = (unsigned)(*U$82).frame.iFrm.y1;
;** 415	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$10[1]+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.y2;
;** 417	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$10[4]+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb1;
;** 419	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$10[5]+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb2;
;** 421	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$10[8]+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr1;
;** 423	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$10[9]+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr2;

           LDHU    .D1T1   *+A7(4),A3        ; |415| 
||         MV      .L2X    A10,B31
||         EXTU    .S2     B13,25,31,B0      ; |435| 

           NOP             3
           LDW     .D1T1   *+A4(20),A4       ; |415| 
           NOP             3
           ADD     .L1     A16,A3,A3         ; |415| 
           STW     .D1T1   A4,*A3            ; |415| 

           LDW     .D2T2   *+B31[B17],B5     ; |417| 
||         LDHU    .D1T1   *+A7(16),A3       ; |417| 

           NOP             4

           ADD     .L2X    B16,A3,B5         ; |417| 
||         LDW     .D2T2   *+B5(12),B6       ; |417| 

           NOP             4
           STW     .D2T2   B6,*B5            ; |417| 
           LDW     .D1T1   *+A10[A20],A4     ; |419| 
           LDHU    .D1T1   *+A7(20),A3       ; |419| 
           NOP             3
           LDW     .D1T1   *+A4(24),A4       ; |419| 
           NOP             3
           ADD     .L1     A9,A3,A3          ; |419| 
           STW     .D1T1   A4,*A3            ; |419| 

           LDW     .D2T2   *+B31[B19],B4     ; |421| 
||         LDHU    .D1T1   *+A7(32),A3       ; |421| 

           NOP             4

           ADD     .L2X    B18,A3,B4         ; |421| 
||         LDW     .D2T2   *+B4(16),B5       ; |421| 

           NOP             4
           STW     .D2T2   B5,*B4            ; |421| 
           LDW     .D1T1   *+A10[A22],A4     ; |423| 
           LDHU    .D1T1   *+A7(36),A3       ; |423| 
           NOP             3
           LDW     .D1T1   *+A4(28),A4       ; |423| 
           ADD     .L1     A8,A3,A3          ; |423| 
           NOP             3
           STW     .D1T1   A4,*A3            ; |423| 
;** --------------------------------------------------------------------------*
L14:    
   [!B0]   BNOP    .S1     L16,3             ; |435| 
           MV      .L1     A13,A4            ; |436| 
;** --------------------------------------------------------------------------*
L15:    
;**	-----------------------g26:
;** 435	-----------------------    if ( !(vpis&0x40) ) goto g28;
   [ B0]   CALL    .S1     __covrRecover     ; |436| 
           ; BRANCHCC OCCURS {L16}           ; |435| 
;** --------------------------------------------------------------------------*
;** 436	-----------------------    _covrRecover(chanp);
           NOP             4
           ADDKPC  .S2     RL3,B3,0          ; |436| 
RL3:       ; CALL OCCURS {__covrRecover}     ; |436| 
;** --------------------------------------------------------------------------*
L16:    
;**	-----------------------g28:
;** 360	-----------------------    CSR = CSR&K$6|gie&1u;  // [13]
;** 360	-----------------------    return retVal;  // [13]
           MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B12,B5          ; |360| 
||         AND     .S2     B23,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           MV      .L1     A21,A4            ; |360| 
;** --------------------------------------------------------------------------*
L17:    
           LDW     .D2T2   *+SP(4),B3        ; |441| 
           MV      .L1X    SP,A31            ; |441| 
           LDDW    .D1T1   *+A31(16),A13:A12 ; |441| 
           LDDW    .D2T2   *+SP(32),B13:B12  ; |441| 
           LDDW    .D1T1   *+A31(8),A11:A10  ; |441| 

           RET     .S2     B3                ; |441| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |441| 

           LDW     .D2T1   *++SP(40),A14     ; |441| 
	.dwpsn	"vportcap.c",441,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |441| 
	.dwattr DW$55, DW_AT_end_file("vportcap.c")
	.dwattr DW$55, DW_AT_end_line(0x1b9)
	.dwattr DW$55, DW_AT_end_column(0x01)
	.dwendtag DW$55

	.sect	".text"

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("_stopVPCapture"), DW_AT_symbol_name("__stopVPCapture")
	.dwattr DW$58, DW_AT_low_pc(__stopVPCapture)
	.dwattr DW$58, DW_AT_high_pc(0x00)
	.dwattr DW$58, DW_AT_begin_file("vportcap.c")
	.dwattr DW$58, DW_AT_begin_line(0x4c1)
	.dwattr DW$58, DW_AT_begin_column(0x0c)
	.dwattr DW$58, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$58, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",1218,1

;******************************************************************************
;* FUNCTION NAME: __stopVPCapture                                             *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,A16,B16 *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,A16, *
;*                           B16                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
__stopVPCapture:
;** --------------------------------------------------------------------------*
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$59, DW_AT_type(*DW$T$37)
	.dwattr DW$59, DW_AT_location[DW_OP_reg4]
;* 1219	-----------------------    chan = (struct $$fake3 *)chanp;
;* 1219	-----------------------    Q$2 = 112;
;* 1219	-----------------------    Q$1 = 113;
;* 1221	-----------------------    C$6 = (*chan).base;
;* 1221	-----------------------    cbase = (volatile int *)(C$6+4);
;* 1222	-----------------------    base = (volatile int *)((portObjs[(*chan).portNum]).base+200);
;* 1225	-----------------------    *((volatile int *)C$6+4) |= 0x40000000;
;* 1228	-----------------------    *cbase &= 0xffff7fff;
;* 1232	-----------------------    *base &= 0xfffffffe;
;* 1233	-----------------------    base[1] |= 0xffffffff;
;** 324	-----------------------    IER;  // [10]
;** 325	-----------------------    C$5 = _IRQ_eventTable[(*chan).portNum+25u];  // [10]
;** 325	-----------------------    IER &= ~C$5;  // [10]
;** 342	-----------------------    ICR = C$5;  // [11]
;** 342	-----------------------    tccIntNum = C$4 = *((int (* const)[3])chanp+448);  // [11]
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 325	-----------------------    K$35 = 0xffffffffu;  // [10]
;** 356	-----------------------    if ( (unsigned)C$4 < 32u ) goto g3;  // [12]
;** 664	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u&~(1u<<(unsigned)C$4-32u);  // [26]
;** 664	-----------------------    goto g4;  // [26]
;**	-----------------------g3:
;** 663	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u&(1u<<tccIntNum^K$35);  // [26]
;**	-----------------------g4:
;** 360	-----------------------    CSR = CSR&(K$43 = 0xfffffffeu)|gie&1u;  // [13]
;** 360	-----------------------    tccIntNum = C$3 = *(Q$2*4+(int (*)[3])chan);  // [13]
;** 675	-----------------------    if ( (unsigned)C$3 < (K$46 = 32u) ) goto g6;  // [27]
;** 676	-----------------------    *(volatile unsigned *)0x1a0ffa4u = 1u<<(unsigned)C$3-32u;  // [27]
;** 676	-----------------------    goto g7;  // [27]
;**	-----------------------g6:
;** 675	-----------------------    *(volatile unsigned *)0x1a0ffe4u = 1u<<tccIntNum;  // [27]
;**	-----------------------g7:
;* 1244	-----------------------    tccIntNum = *(Q$1*4+(int (*)[3])chan);
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&K$43;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    U$74 = (int (*)[3])chan+452;  // [12]
;** 356	-----------------------    C$2 = *U$74;  // [12]
;** 356	-----------------------    if ( (unsigned)C$2 < K$46 ) goto g9;  // [12]
;** 664	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u&(1u<<(unsigned)C$2-32u^K$35);  // [26]
;** 664	-----------------------    goto g10;  // [26]
;**	-----------------------g9:
;** 663	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u&(1u<<tccIntNum^K$35);  // [26]
;**	-----------------------g10:
;** 360	-----------------------    CSR = CSR&K$43|gie&1u;  // [13]
;** 360	-----------------------    tccIntNum = C$1 = *U$74;  // [13]
;** 675	-----------------------    if ( (unsigned)C$1 >= K$46 ) goto g12;  // [27]
;** 675	-----------------------    *(volatile unsigned *)0x1a0ffe4u = 1u<<(unsigned)C$1;  // [27]
;** 675	-----------------------    return 0;  // [27]
;**	-----------------------g12:
;** 676	-----------------------    *(volatile unsigned *)0x1a0ffa4u = 1u<<tccIntNum-32u;  // [27]
;** 676	-----------------------    return 0;  // [27]
           LDW     .D1T1   *+A4(4),A5        ; |1222| 
           LDW     .D1T1   *+A4(12),A3       ; |1221| 
           NOP             1
           MVK     .S1     1216,A6           ; |1222| 
           MVKL    .S2     _portObjs+4,B4    ; |1222| 
           MVKH    .S2     _portObjs+4,B4    ; |1222| 

           LDW     .D1T1   *+A3(4),A5        ; |1225| 
||         MPYLI   .M1     A6,A5,A7:A6       ; |1222| 

           NOP             4

           SET     .S1     A5,30,30,A5       ; |1225| 
||         ADD     .L2X    B4,A6,B4          ; |1222| 

           ADD     .L1     4,A3,A3           ; |1221| 
||         STW     .D1T1   A5,*+A3(4)        ; |1225| 
||         LDW     .D2T2   *B4,B4            ; |1222| 

           LDW     .D1T1   *A3,A5            ; |1228| 
           NOP             3
           MVK     .S1     0x71,A7           ; |1219| 
           CLR     .S1     A5,15,15,A5       ; |1228| 

           ADDAD   .D2     B4,25,B4          ; |1222| 
||         STW     .D1T1   A5,*A3            ; |1228| 

           LDW     .D2T2   *B4,B6            ; |1232| 
           NOP             4
           AND     .L2     -2,B6,B6          ; |1232| 

           MVK     .L2     -1,B6             ; |1233| 
||         STW     .D2T2   B6,*B4            ; |1232| 

           MVC     .S2     IER,B4            ; |324| 
||         STW     .D2T2   B6,*+B4(4)        ; |1233| 
||         MVK     .S1     0x70,A3           ; |1219| 
||         MV      .L2X    A4,B5             ; |1218| 

           LDW     .D1T1   *+A4(4),A5        ; |325| 
           NOP             2
           MVKL    .S1     __IRQ_eventTable,A6 ; |325| 
           MVKH    .S1     __IRQ_eventTable,A6 ; |325| 
           SHL     .S1     A5,2,A5           ; |325| 
           ADDK    .S1     100,A5            ; |325| 
           ADD     .L1     A6,A5,A5          ; |325| 
           LDW     .D1T1   *A5,A5            ; |325| 
           NOP             3
           MVC     .S2     IER,B4            ; |325| 
           ANDN    .L2X    B4,A5,B4          ; |325| 
           MVC     .S2     B4,IER            ; |325| 
           MVC     .S2X    A5,ICR            ; |342| 
           MVK     .S2     112,B4            ; |342| 
           LDW     .D2T2   *+B5[B4],B4       ; |342| 
           NOP             4

           MVC     .S2     CSR,B5            ; |354| 
||         MV      .L1X    B4,A5             ; |342| 

           MVC     .S2     CSR,B6            ; |355| 
||         AND     .L2     1,B5,B5           ; |354| 

           AND     .L2     -2,B6,B6          ; |355| 
           MVC     .S2     B6,CSR            ; |355| 
           MVK     .S2     32,B7             ; |356| 

           MVKL    .S1     0x1a0ffa8,A6      ; |664| 
||         MVKL    .S2     0x1a0ffe8,B6      ; |663| 

           CMPLTU  .L2     B4,B7,B0          ; |356| 
||         MVKH    .S1     0x1a0ffa8,A6      ; |664| 
||         MVKH    .S2     0x1a0ffe8,B6      ; |663| 

   [ B0]   LDW     .D2T2   *B6,B7            ; |663| 
|| [!B0]   LDW     .D1T1   *A6,A8            ; |664| 

           MVK     .S1     32,A6             ; |664| 
||         MVK     .L1     1,A9              ; |663| 

           MVK     .L2     1,B6              ; |664| 
||         MVK     .D1     0xffffffff,A6     ; |325| 
||         SUB     .L1X    B4,A6,A16         ; |664| 
||         SHL     .S1     A9,A5,A9          ; |663| 

           XOR     .L1     A6,A9,A9          ; |663| 
||         MVKL    .S1     0x1a0ffe8,A5      ; |663| 

           MVKL    .S2     0x1a0ffa8,B6      ; |664| 
||         SHL     .S1X    B6,A16,A16        ; |664| 

   [ B0]   AND     .L2X    A9,B7,B5          ; |663| 
|| [!B0]   ANDN    .L1     A8,A16,A8         ; |664| 
||         MVKH    .S2     0x1a0ffa8,B6      ; |664| 
||         MV      .D2     B5,B4             ; |356| 
||         MVKH    .S1     0x1a0ffe8,A5      ; |663| 

           MVC     .S2     CSR,B5            ; |360| 
|| [ B0]   STW     .D1T2   B5,*A5            ; |663| 
||         MVK     .L2     0xfffffffe,B6     ; |360| 
|| [!B0]   STW     .D2T1   A8,*B6            ; |664| 

           AND     .L2     B6,B5,B4          ; |360| 
||         AND     .S2     1,B4,B5           ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *+A4[A3],A3       ; |360| 
           MVKL    .S1     0x1a0ffe4,A8      ; |675| 
           MVK     .S1     0x20,A5           ; |675| 
           MVK     .S1     32,A9             ; |676| 

           MVKH    .S1     0x1a0ffe4,A8      ; |675| 
||         MVK     .L2     1,B5              ; |676| 
||         MVK     .L1     1,A16             ; |675| 

           SHL     .S1     A16,A3,A9         ; |675| 
||         SUB     .D1     A3,A9,A3          ; |676| 
||         CMPLTU  .L1     A3,A5,A0          ; |675| 
||         MVKL    .S2     0x1a0ffa4,B4      ; |676| 

   [ A0]   STW     .D1T1   A9,*A8            ; |675| 
||         SHL     .S1X    B5,A3,A3          ; |676| 
||         MVKH    .S2     0x1a0ffa4,B4      ; |676| 

   [!A0]   STW     .D2T1   A3,*B4            ; |676| 
           LDW     .D1T1   *+A4[A7],A3       ; |1244| 
           NOP             3
           MVC     .S2     CSR,B4            ; |354| 

           MVC     .S2     CSR,B4            ; |355| 
||         AND     .L2     1,B4,B8           ; |354| 

           AND     .L2     B6,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 
           MVK     .S2     452,B4            ; |356| 
           ADD     .L2X    B4,A4,B5          ; |356| 
           LDW     .D2T2   *B5,B4            ; |356| 
           MVKL    .S2     0x1a0ffa8,B7      ; |664| 
           MVKL    .S2     0x1a0ffe8,B16     ; |663| 
           MVK     .S1     32,A4             ; |664| 
           MVKH    .S2     0x1a0ffa8,B7      ; |664| 

           MVKH    .S2     0x1a0ffe8,B16     ; |663| 
||         CMPLTU  .L2X    B4,A5,B0          ; |356| 

           MVK     .L2     1,B4              ; |664| 
||         SUB     .S2X    B4,A4,B7          ; |664| 
|| [!B0]   LDW     .D2T2   *B7,B9            ; |664| 

   [ B0]   LDW     .D2T2   *B16,B7           ; |663| 
||         SHL     .S2     B4,B7,B4          ; |664| 
||         MVK     .L1     1,A7              ; |663| 

           SHL     .S1     A7,A3,A3          ; |663| 
           MVKL    .S1     0x1a0ffa8,A4      ; |664| 

           MVKL    .S1     0x1a0ffe8,A7      ; |663| 
||         XOR     .L1X    A6,B4,A8          ; |664| 

   [!B0]   AND     .L1X    A8,B9,A6          ; |664| 
||         MVKH    .S1     0x1a0ffa8,A4      ; |664| 
||         XOR     .D1     A6,A3,A3          ; |663| 

   [!B0]   STW     .D1T1   A6,*A4            ; |664| 
|| [ B0]   AND     .L1X    A3,B7,A3          ; |663| 
||         MVKH    .S1     0x1a0ffe8,A7      ; |663| 

           MVC     .S2     CSR,B7            ; |360| 
|| [ B0]   STW     .D1T1   A3,*A7            ; |663| 
||         MV      .L2     B8,B4             ; |356| 

           AND     .L2     B6,B7,B4          ; |360| 
||         AND     .S2     1,B4,B6           ; |360| 

           OR      .L2     B6,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *B5,B4            ; |360| 
           MVK     .S1     32,A3             ; |676| 
           MVKL    .S1     0x1a0ffe4,A4      ; |675| 
           RETNOP  .S2     B3,1              ; |1248| 

           MVKH    .S1     0x1a0ffe4,A4      ; |675| 
||         SUB     .L2X    B4,A3,B5          ; |676| 
||         MVK     .S2     1,B6              ; |675| 

           MVK     .D2     1,B4              ; |676| 
||         MVKL    .S1     0x1a0ffa4,A3      ; |676| 
||         CMPLTU  .L2X    B4,A5,B0          ; |675| 
||         SHL     .S2     B6,B4,B6          ; |675| 

   [ B0]   STW     .D1T2   B6,*A4            ; |675| 
||         SHL     .S2     B4,B5,B4          ; |676| 
||         MVKH    .S1     0x1a0ffa4,A3      ; |676| 

	.dwpsn	"vportcap.c",1248,1

   [!B0]   STW     .D1T2   B4,*A3            ; |676| 
||         ZERO    .L1     A4                ; |675| 

           ; BRANCH OCCURS {B3}              ; |1248| 
	.dwattr DW$58, DW_AT_end_file("vportcap.c")
	.dwattr DW$58, DW_AT_end_line(0x4e0)
	.dwattr DW$58, DW_AT_end_column(0x01)
	.dwendtag DW$58

	.sect	".text"

DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("_setVIntCb"), DW_AT_symbol_name("__setVIntCb")
	.dwattr DW$60, DW_AT_low_pc(__setVIntCb)
	.dwattr DW$60, DW_AT_high_pc(0x00)
	.dwattr DW$60, DW_AT_begin_file("vportcap.c")
	.dwattr DW$60, DW_AT_begin_line(0x474)
	.dwattr DW$60, DW_AT_begin_column(0x0c)
	.dwattr DW$60, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$60, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",1141,1

;******************************************************************************
;* FUNCTION NAME: __setVIntCb                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 12 Auto + 20 Save = 32 byte                 *
;******************************************************************************
__setVIntCb:
;** --------------------------------------------------------------------------*
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$61, DW_AT_type(*DW$T$37)
	.dwattr DW$61, DW_AT_location[DW_OP_reg4]
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$62, DW_AT_type(*DW$T$37)
	.dwattr DW$62, DW_AT_location[DW_OP_reg20]
;* 1142	-----------------------    chan = (struct $$fake3 *)chanp;
;* 1144	-----------------------    base = (volatile int *)((portObjs[(*chan).portNum]).base+200);
;* 1145	-----------------------    cBase = (volatile int *)((*chan).base+24);
;* 1146	-----------------------    vIntCbParams = (struct _VPORT_VIntCbParams *)args;
;* 1147	-----------------------    mask = (*vIntCbParams).vIntMask;
;* 1149	-----------------------    attrs = HWI_ATTRS;
;* 1153	-----------------------    if ( mask&0x10 ) goto g3;
;* 1148	-----------------------    vInt1 = vif1 = 0u;
;**  	-----------------------    goto g4;
;**	-----------------------g3:
;* 1155	-----------------------    vInt1 = (*(struct _VPORT_VIntCbParams *)args).vIntLine;
;* 1154	-----------------------    vif1 = 1u;
;**	-----------------------g4:
;* 1157	-----------------------    if ( mask&0x20 ) goto g6;
;* 1148	-----------------------    vInt2 = vif2 = 0u;
;**  	-----------------------    goto g7;
;**	-----------------------g6:
;* 1159	-----------------------    vInt2 = (*vIntCbParams).vIntLine;
;* 1158	-----------------------    vif2 = 1u;
;**	-----------------------g7:
;* 1163	-----------------------    *cBase = (int)(vif2<<31)|(int)_extu((~vif1&vif2)<<30, 1u, 1u)|(int)_extu(vInt2<<16, 4u, 4u)|(int)(vif1<<15)&0x8000|(int)_extu(vInt1, 20u, 20u);
;* 1166	-----------------------    if ( (*chan).chanNum != 1u ) goto g9;
;* 1167	-----------------------    mask <<= 16;
;**	-----------------------g9:
;* 1169	-----------------------    (*chan).vIntMask = mask;
;* 1170	-----------------------    if ( !mask ) goto g11;

           MV      .L1X    SP,A31            ; |1141| 
||         STW     .D2T1   A11,*SP--(32)     ; |1141| 
||         MVK     .S2     1216,B6           ; |1144| 
||         MVKL    .S1     _portObjs+4,A3    ; |1144| 

           STDW    .D2T2   B11:B10,*+SP(24)
||         MV      .L2X    A4,B10            ; |1141| 
||         MVKH    .S1     _portObjs+4,A3    ; |1144| 
||         MV      .S2     B4,B11            ; |1141| 
||         STW     .D1T1   A10,*-A31(16)
||         MV      .L1X    B4,A6             ; |1141| 

           LDW     .D2T2   *+B10(4),B5       ; |1144| 
||         MVKL    .S1     _HWI_ATTRS,A4     ; |1149| 
||         ZERO    .L2     B4                ; |1148| 

           MVKH    .S1     _HWI_ATTRS,A4     ; |1149| 
           STW     .D2T2   B13,*+SP(20)
           MV      .L2     B3,B13
           LDW     .D1T1   *+A4(8),A8        ; |1149| 

           ADD     .L2     4,SP,B5           ; |1149| 
||         MPYLI   .M2     B6,B5,B7:B6       ; |1144| 

           NOP             4

           LDHU    .D2T1   *+B11(8),A3       ; |1147| 
||         ADD     .L1X    A3,B6,A5          ; |1144| 

           LDW     .D1T1   *A5,A7            ; |1144| 
||         LDW     .D2T2   *+B10(12),B6      ; |1145| 

           NOP             1
           LDNDW   .D1T1   *A4,A5:A4         ; |1149| 
           STW     .D2T1   A8,*+B5(8)        ; |1149| 

           EXTU    .S1     A3,26,31,A0       ; |1157| 
||         MV      .L1     A3,A10            ; |1144| 

           ZERO    .L1     A3                ; |1148| 
||         EXTU    .S1     A3,27,31,A1       ; |1153| 
||         ADDAD   .D1     A7,25,A11         ; |1144| 

   [ A1]   MVK     .L1     0x1,A3            ; |1154| 

           ZERO    .L1     A4                ; |1148| 
||         ZERO    .S1     A5                ; |1148| 
||         MVKL    .S2     0x8000,B5         ; |1163| 
||         STNDW   .D2T1   A5:A4,*B5         ; |1149| 

   [ A0]   LDHU    .D2T2   *+B11(10),B4      ; |1159| 
|| [ A0]   MVK     .L1     0x1,A4            ; |1158| 
|| [ A1]   LDHU    .D1T1   *+A6(10),A5       ; |1155| 
||         SHL     .S2X    A3,15,B7          ; |1163| 

           ANDN    .L1     A4,A3,A6          ; |1163| 

           MVKH    .S2     0x8000,B5         ; |1163| 
||         SHL     .S1     A4,31,A4          ; |1163| 

           EXTU    .S1     A6,31,1,A6        ; |1163| 
           OR      .L1     A6,A4,A3          ; |1163| 
           EXTU    .S2     B4,20,4,B4        ; |1163| 

           EXTU    .S1     A5,20,20,A3       ; |1163| 
||         OR      .L2X    B4,A3,B5          ; |1163| 
||         AND     .S2     B5,B7,B4          ; |1163| 

           OR      .L2     B4,B5,B4          ; |1163| 

           ADD     .D2     B6,24,B4          ; |1145| 
||         OR      .L2X    A3,B4,B5          ; |1163| 

           STW     .D2T2   B5,*B4            ; |1163| 
           LDW     .D2T2   *+B10(8),B4       ; |1166| 
           NOP             4
           CMPEQ   .L2     B4,1,B0           ; |1166| 
   [ B0]   MV      .L1     A10,A3            ; |1166| 
   [ B0]   SHL     .S1     A3,16,A3          ; |1167| 

           MVKL    .S1     _IRQ_map,A3       ; |1173| 
|| [ B0]   MV      .L1     A3,A10            ; |1167| 

           MVKH    .S1     _IRQ_map,A3       ; |1173| 
||         MV      .L1     A10,A0            ; |1167| 

   [!A0]   B       .S1     L18               ; |1170| 
|| [ A0]   LDW     .D2T2   *+B10(4),B5       ; |1172| 

           STW     .D2T1   A0,*+B10(40)      ; |1169| 

   [!A0]   LDW     .D1T1   *A11,A3           ; |1178| 
|| [ A0]   LDW     .D2T2   *+B11(12),B4      ; |1173| 
|| [ A0]   CALL    .S2X    A3                ; |1173| 

           NOP             2
   [ A0]   ADD     .D2     B5,25,B6          ; |1173| 
           ; BRANCHCC OCCURS {L18}           ; |1170| 
;** --------------------------------------------------------------------------*
;* 1171	-----------------------    mask |= 1;
;* 1172	-----------------------    attrs.arg = C$2 = (*chan).portNum;
;* 1173	-----------------------    IRQ_map(C$2+25u, (unsigned)(*vIntCbParams).irqId);
;* 1174	-----------------------    HWI_dispatchPlug((*vIntCbParams).irqId, (int (*)())&captureISR, (-1), &attrs);
;** 324	-----------------------    IER;  // [10]
;** 325	-----------------------    C$1 = _IRQ_eventTable[(*chan).portNum+25u];  // [10]
;** 325	-----------------------    IER &= C$1^(K$45 = 0xffffffffu);  // [10]
;** 342	-----------------------    ICR = C$1;  // [11]
           ADDKPC  .S2     RL4,B3,0          ; |1173| 

           MV      .L1X    B6,A4             ; |1173| 
||         STW     .D2T2   B5,*+SP(12)       ; |1172| 

RL4:       ; CALL OCCURS {_IRQ_map}          ; |1173| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _HWI_dispatchPlug ; |1174| 
           LDW     .D2T1   *+B11(12),A4      ; |1174| 
           MVKL    .S2     _captureISR,B4    ; |1174| 
           MVKH    .S2     _captureISR,B4    ; |1174| 
           ADDKPC  .S2     RL5,B3,0          ; |1174| 

           ADD     .L2     4,SP,B6           ; |1174| 
||         MVK     .L1     0xffffffff,A6     ; |1174| 

RL5:       ; CALL OCCURS {_HWI_dispatchPlug}  ; |1174| 
;** --------------------------------------------------------------------------*

           MVC     .S2     IER,B4            ; |324| 
||         OR      .L1     1,A10,A3          ; |1171| 

           LDW     .D2T2   *+B10(4),B4       ; |325| 
           NOP             1
           MV      .L1     A3,A10            ; |324| 
           MVKL    .S1     __IRQ_eventTable,A3 ; |325| 
           MVK     .L1     0xffffffff,A4     ; |325| 
           SHL     .S2     B4,2,B4           ; |325| 
           ADDK    .S2     100,B4            ; |325| 
           MVKH    .S1     __IRQ_eventTable,A3 ; |325| 
           ADD     .L1X    A3,B4,A3          ; |325| 
           LDW     .D1T1   *A3,A3            ; |325| 
           NOP             4
           XOR     .L1     A4,A3,A4          ; |325| 
           MVC     .S2     IER,B4            ; |325| 
           AND     .L2X    A4,B4,B4          ; |325| 
           MVC     .S2     B4,IER            ; |325| 
           MVC     .S2X    A3,ICR            ; |342| 
           LDW     .D1T1   *A11,A3           ; |1178| 
           NOP             3
;** --------------------------------------------------------------------------*
L18:    
;**	-----------------------g11:
;* 1178	-----------------------    *base |= mask;
;* 1179	-----------------------    (*chan).vIntFxn = (*vIntCbParams).vIntCbFxn;
;* 1180	-----------------------    (*chan).vIntCbArg = (*vIntCbParams).cbArg;
;* 1181	-----------------------    return 0;

           MVK     .S2     118,B5            ; |1179| 
||         MV      .L2     B13,B3            ; |1182| 
||         MV      .L1X    SP,A31            ; |1182| 
||         ZERO    .S1     A4                ; |1181| 

           OR      .L1     A10,A3,A3         ; |1178| 
           STW     .D1T1   A3,*A11           ; |1178| 
           LDW     .D2T2   *+B11(4),B4       ; |1179| 
           NOP             4

           MVK     .S2     138,B5            ; |1180| 
||         STW     .D2T2   B4,*+B10[B5]      ; |1179| 

           LDW     .D2T2   *B11,B4           ; |1180| 
           NOP             4
           STW     .D2T2   B4,*+B10[B5]      ; |1180| 

           LDW     .D1T1   *+A31(16),A10     ; |1182| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |1182| 

           LDW     .D2T2   *+SP(20),B13      ; |1182| 
||         RET     .S2     B3                ; |1182| 

           LDW     .D2T1   *++SP(32),A11     ; |1182| 
	.dwpsn	"vportcap.c",1182,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1182| 
	.dwattr DW$60, DW_AT_end_file("vportcap.c")
	.dwattr DW$60, DW_AT_end_line(0x49e)
	.dwattr DW$60, DW_AT_end_column(0x01)
	.dwendtag DW$60

	.sect	".text"

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("_delay"), DW_AT_symbol_name("__delay")
	.dwattr DW$63, DW_AT_low_pc(__delay)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("vportcap.c")
	.dwattr DW$63, DW_AT_begin_line(0x4fa)
	.dwattr DW$63, DW_AT_begin_column(0x0d)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",1275,1

;******************************************************************************
;* FUNCTION NAME: __delay                                                     *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
__delay:
;** --------------------------------------------------------------------------*
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("delayTime"), DW_AT_symbol_name("_delayTime")
	.dwattr DW$64, DW_AT_type(*DW$T$22)
	.dwattr DW$64, DW_AT_location[DW_OP_reg4]
;* 1276	-----------------------    asm("loop1: BDEC loop1, A4");
;* 1277	-----------------------    asm(" NOP 5");
;* 1277	-----------------------    return;
loop1: BDEC loop1, A4
 NOP 5
	.dwpsn	"vportcap.c",1279,1
           RETNOP  .S2     B3,5              ; |1279| 
           ; BRANCH OCCURS {B3}              ; |1279| 
	.dwattr DW$63, DW_AT_end_file("vportcap.c")
	.dwattr DW$63, DW_AT_end_line(0x4ff)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("_configCh"), DW_AT_symbol_name("__configCh")
	.dwattr DW$65, DW_AT_low_pc(__configCh)
	.dwattr DW$65, DW_AT_high_pc(0x00)
	.dwattr DW$65, DW_AT_begin_file("vportcap.c")
	.dwattr DW$65, DW_AT_begin_line(0x227)
	.dwattr DW$65, DW_AT_begin_column(0x0c)
	.dwattr DW$65, DW_AT_frame_base[DW_OP_breg31 64]
	.dwattr DW$65, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",555,1

;******************************************************************************
;* FUNCTION NAME: __configCh                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 20 Auto + 40 Save = 60 byte                 *
;******************************************************************************
__configCh:
;** --------------------------------------------------------------------------*
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$66, DW_AT_type(*DW$T$37)
	.dwattr DW$66, DW_AT_location[DW_OP_reg4]
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$67, DW_AT_type(*DW$T$191)
	.dwattr DW$67, DW_AT_location[DW_OP_reg20]
;** 556	-----------------------    chan = (struct $$fake3 *)chanp;
;** 558	-----------------------    base = (volatile int *)((*chan).base+4);
;** 563	-----------------------    if ( !((*chan).status&1u) ) goto g34;

           MV      .L1X    SP,A31            ; |555| 
||         STW     .D2T1   A14,*SP--(64)     ; |555| 
||         MVK     .S1     476,A18           ; |567| 
||         MVK     .S2     134,B8            ; |572| 
||         MVK     .L2     -1,B9             ; |570| 
||         ZERO    .D1     A6                ; |564| 

           STDW    .D1T1   A11:A10,*-A31(32)
||         MV      .L1     A4,A10            ; |555| 
||         STDW    .D2T2   B11:B10,*+SP(48)
||         MV      .L2     B4,B10            ; |555| 
||         MVK     .S2     364,B4            ; |565| 
||         MVK     .S1     134,A9            ; |573| 

           LDW     .D1T1   *A10,A5           ; |563| 
||         STW     .D2T2   B3,*+SP(28)
||         MVK     .S2     138,B16           ; |570| 
||         MVK     .S1     92,A8             ; |565| 
||         MVK     .L2     0xffffffff,B6     ; |566| 

           LDW     .D1T1   *+A10(12),A3      ; |558| 
||         MVK     .S1     140,A17           ; |571| 
||         ADD     .L2X    B4,A10,B5         ; |565| 
||         STDW    .D2T2   B13:B12,*+SP(56)
||         MVK     .S2     133,B17           ; |568| 

           STDW    .D1T1   A13:A12,*-A31(24)

           MVK     .S2     91,B7             ; |565| 
||         MVK     .S1     118,A7            ; |566| 
||         MV      .L2X    A10,B4

           MVK     .S1     137,A16           ; |569| 

           AND     .L1     1,A5,A0           ; |563| 
||         ADD     .S1     A18,A10,A5        ; |567| 

   [!A0]   B       .S2     L37               ; |563| 
||         MV      .L1X    B5,A3
||         MV      .L2X    A4,B5
|| [ A0]   STW     .D1T2   B6,*+A10[A16]     ; |569| 
||         ADD     .S1     4,A3,A11          ; |558| 

   [ A0]   STW     .D2T1   A3,*+B5[B7]       ; |565| 
|| [ A0]   STW     .D1T2   B6,*+A10[A7]      ; |566| 

   [ A0]   STW     .D2T2   B6,*+B4[B17]      ; |568| 
|| [ A0]   STW     .D1T1   A3,*+A4[A8]       ; |565| 

   [ A0]   STH     .D1T1   A6,*A5            ; |567| 
|| [ A0]   STW     .D2T2   B9,*+B4[B16]      ; |570| 

   [ A0]   STW     .D1T1   A6,*+A10(40)      ; |564| 
   [ A0]   STW     .D1T1   A6,*+A10[A17]     ; |571| 
           ; BRANCHCC OCCURS {L37}           ; |563| 
;** --------------------------------------------------------------------------*
;** 564	-----------------------    (*chan).vIntMask = C$24 = 0u;
;** 565	-----------------------    C$26 = (struct _QUE_Elem **)chan;
;** 565	-----------------------    (*((struct _QUE_Elem *)C$26+364)).next = C$26[92] = (struct _QUE_Elem *)chan+364;
;** 566	-----------------------    (*chan).vIntFxn = C$25 = (void (*)())0xffffffffu;
;** 567	-----------------------    (*chan).queEmpty = C$24;
;** 568	-----------------------    (*chan).mrViop = (struct _FVID_Frame *)C$25;
;** 569	-----------------------    (*chan).packetIOM = (struct _DEV_Frame *)C$25;
;** 570	-----------------------    (*chan).vIntCbArg = (-1);
;** 571	-----------------------    (*chan).bufSz = C$24;
;** 572	-----------------------    (*chan).mode = U$34 = (*params).cmode;
;** 573	-----------------------    if ( (*chan).mode&2 ) goto g4;
;** 576	-----------------------    (*chan).autoSyncEnable = (*params).autoSyncEnable;
;** 576	-----------------------    goto g5;
;**	-----------------------g4:
;** 574	-----------------------    (*chan).autoSyncEnable = 0u;
;**	-----------------------g5:
;** 579	-----------------------    if ( (*chan).mode&2 ) goto g23;

           LDW     .D2T2   *B10,B5           ; |572| 
||         MVK     .S2     576,B30           ; |576| 
||         MVK     .S1     134,A31           ; |579| 
||         ZERO    .L2     B17               ; |581| 
||         ZERO    .L1     A16               ; |581| 
||         ZERO    .D1     A18               ; |693| 

           ADDAW   .D2     B10,21,B31        ; |576| 
||         ADD     .L2X    B30,A10,B6        ; |576| 
||         MVK     .S1     576,A5            ; |574| 
||         MVK     .S2     480,B29           ; |693| 

           ADD     .L1     A5,A10,A5         ; |574| 
||         ADD     .L2     B29,B4,B16        ; |693| 
||         MVKL    .S1     0x40001880,A17    ; |581| 
||         MVKH    .S2     0x20000,B17       ; |581| 

           MVKL    .S1     0x8000,A7         ; |686| 
||         MVK     .S2     256,B22           ; |581| 

           MVKH    .S1     0x40001880,A17    ; |581| 
||         MVK     .S2     24576,B23         ; |581| 

           STW     .D2T2   B5,*+B4[B8]       ; |572| 
||         AND     .L2     7,B5,B21          ; |581| 
||         MVKL    .S2     0x40000080,B8     ; |678| 
||         MVKH    .S1     0x8000,A7         ; |686| 

           LDW     .D1T1   *+A10[A9],A3      ; |573| 
||         ZERO    .L1     A9                ; |581| 
||         MVKH    .S2     0x40000080,B8     ; |678| 
||         MVKH    .S1     0x40000,A16       ; |581| 

           MVKH    .S1     0x100000,A9       ; |581| 
||         MVK     .S2     24576,B9          ; |678| 

           MVK     .S1     239,A19           ; |694| 
           MVK     .S1     1024,A8           ; |581| 
           MVK     .S1     0x7d0,A4          ; |684| 
           AND     .L1     2,A3,A0           ; |573| 

   [!A0]   LDHU    .D2T2   *B31,B7           ; |576| 
|| [ A0]   STH     .D1T1   A6,*A5            ; |574| 

           NOP             4

           ZERO    .S2     B6                ; |581| 
||         ZERO    .L2     B7                ; |581| 
|| [!A0]   STH     .D2T2   B7,*B6            ; |576| 

           MVKH    .S2     0x80000,B7        ; |581| 
||         LDW     .D1T1   *+A10[A31],A3     ; |579| 

           NOP             3
           MVKH    .S2     0x10000,B6        ; |581| 
           AND     .L1     2,A3,A0           ; |579| 

   [!A0]   LDW     .D2T2   *+B10(32),B5      ; |581| 
|| [ A0]   B       .S1     L28               ; |579| 

   [!A0]   LDW     .D2T2   *+B10(36),B4      ; |581| 
   [!A0]   LDW     .D2T2   *+B10(28),B20     ; |581| 
   [!A0]   LDW     .D2T2   *+B10(24),B18     ; |581| 
   [!A0]   LDW     .D2T2   *+B10(20),B16     ; |581| 

           SHL     .S2     B5,19,B19         ; |581| 
|| [!A0]   LDW     .D2T2   *+B10(16),B8      ; |581| 

           ; BRANCHCC OCCURS {L28}           ; |579| 
;** --------------------------------------------------------------------------*
;** 581	-----------------------    C$23 = (*params).fldOp;
;** 581	-----------------------    vcCtl = (int)((unsigned)(*params).fldInv<<20)&0x100000|(int)((unsigned)(*params).extCtl<<19)&0x80000|(int)((unsigned)(*params).fldDect<<18)&0x40000|(int)((unsigned)(*params).vCtRst<<17)&0x20000|(int)((unsigned)(*params).hCtRst<<16)&0x10000|(int)((unsigned)(*params).bpk10Bit<<13)&0x6000|(int)((unsigned)(*params).resmpl<<10)&0x400|(int)((unsigned)(*params).scale<<8)&0x100|_extu((unsigned)C$23, 29u, 31u)<<6|_extu((unsigned)C$23, 30u, 31u)<<5|_extu((unsigned)C$23, 31u, 31u)<<4|U$34&7|0x40001880;
;** 590	-----------------------    C$19 = (*params).fldXStrt1;
;** 590	-----------------------    fld1Strt = ((int)(*params).fldYStrt1<<16)+C$19;
;** 591	-----------------------    C$21 = (*params).fldXStop1;
;** 591	-----------------------    fld1Stop = ((int)(*params).fldYStop1<<16)+C$21;
;** 592	-----------------------    C$20 = (*params).fldXStrt2;
;** 592	-----------------------    fld2Strt = ((int)(*params).fldYStrt2<<16)+C$20;
;** 593	-----------------------    C$22 = (*params).fldXStop2;
;** 593	-----------------------    fld2Stop = ((int)(*params).fldYStop2<<16)+C$22;
;** 594	-----------------------    if ( C$23 != 4 ) goto g8;

           LDW     .D2T2   *+B10(12),B9      ; |581| 
||         SHL     .S2     B4,20,B5          ; |581| 
||         AND     .L2     B7,B19,B7         ; |581| 

           SHL     .S2     B20,18,B31        ; |581| 
||         LDW     .D2T2   *+B10(8),B30      ; |581| 

           SHL     .S2     B18,17,B18        ; |581| 
||         AND     .L1X    A9,B5,A4          ; |581| 
||         AND     .L2X    A16,B31,B5        ; |581| 
||         LDW     .D2T1   *+B10(4),A3       ; |581| 

           SHL     .S2     B16,16,B16        ; |581| 
||         OR      .L1X    B7,A4,A4          ; |581| 
||         AND     .L2     B17,B18,B29       ; |581| 
||         LDHU    .D2T2   *+B10(42),B25     ; |590| 

           SHL     .S2     B8,13,B27         ; |581| 
||         OR      .L1X    B5,A4,A4          ; |581| 
||         AND     .L2     B6,B16,B28        ; |581| 
||         LDHU    .D2T2   *+B10(52),B20     ; |593| 

           SHL     .S2     B9,10,B26         ; |581| 
||         OR      .L1X    B29,A4,A4         ; |581| 
||         AND     .L2     B23,B27,B6        ; |581| 
||         LDHU    .D2T2   *+B10(54),B0      ; |593| 

           AND     .L2X    A8,B26,B5         ; |581| 
||         OR      .L1X    B28,A4,A4         ; |581| 
||         SHL     .S2     B30,8,B4          ; |581| 
||         LDHU    .D2T2   *+B10(48),B2      ; |591| 

           OR      .D1X    B6,A4,A5          ; |581| 
||         AND     .L2     B22,B4,B4         ; |581| 
||         EXTU    .S1     A3,29,31,A31      ; |581| 
||         LDHU    .D2T2   *+B10(40),B12     ; |590| 
||         CMPEQ   .L1     A3,4,A0           ; |594| 

           OR      .L1X    B5,A5,A6          ; |581| 
||         SHL     .S1     A31,6,A4          ; |581| 
||         LDHU    .D2T2   *+B10(50),B24     ; |591| 
||         SHL     .S2     B25,16,B8         ; |590| 

           OR      .L1X    B4,A6,A6          ; |581| 
||         EXTU    .S1     A3,30,31,A30      ; |581| 
||         LDHU    .D2T2   *+B10(46),B1      ; |592| 

           OR      .L1     A4,A6,A5          ; |581| 
||         SHL     .S1     A30,5,A4          ; |581| 
||         LDHU    .D2T2   *+B10(44),B11     ; |592| 
||         SHL     .S2     B0,16,B6          ; |593| 

           OR      .L1     A4,A5,A5          ; |581| 
||         EXTU    .S1     A3,31,27,A29      ; |581| 
||         CMPEQ   .L2     B2,B20,B0         ; |595| 
||         ADD     .S2     B20,B6,B6         ; |593| 

           OR      .L1     A29,A5,A4         ; |581| 
||         ADD     .L2     B12,B8,B9         ; |590| 
|| [!A0]   ZERO    .S2     B0                ; |595| nullify predicate

           OR      .L1X    B21,A4,A4         ; |581| 
||         SHL     .S2     B24,16,B8         ; |591| 

           OR      .L1     A17,A4,A4         ; |581| 
|| [!A0]   B       .S1     L20               ; |594| 
||         ADD     .L2     B2,B8,B7          ; |591| 
||         SHL     .S2     B1,16,B8          ; |592| 

           STW     .D2T1   A4,*+SP(4)        ; |581| 
||         ADD     .L2     B11,B8,B19        ; |592| 
|| [ A0]   MVKL    .S1     SL2+0,A4          ; |595| 

           STW     .D2T2   B9,*+SP(8)        ; |590| 
|| [ A0]   MVKH    .S1     SL2+0,A4          ; |595| 

   [ B0]   B       .S1     L19               ; |595| 
||         STW     .D2T2   B7,*+SP(16)       ; |591| 

           STW     .D2T2   B19,*+SP(12)      ; |592| 
           STW     .D2T2   B6,*+SP(20)       ; |593| 
           ; BRANCHCC OCCURS {L20}           ; |594| 
;** --------------------------------------------------------------------------*
;** 595	-----------------------    assert(C$21 == C$22);

   [!B0]   CALL    .S2     __abort_msg       ; |595| 
|| [ B0]   MVKL    .S1     SL3+0,A4          ; |596| 

   [ B0]   MVKH    .S1     SL3+0,A4          ; |596| 
   [ B0]   CMPEQ   .L2     B12,B11,B0        ; |596| 
           ; BRANCHCC OCCURS {L19}           ; |595| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL6,B3,2          ; |595| 
RL6:       ; CALL OCCURS {__abort_msg}       ; |595| 

           MVKL    .S1     SL3+0,A4          ; |596| 
||         CMPEQ   .L2     B12,B11,B0        ; |596| 

           MVKH    .S1     SL3+0,A4          ; |596| 
;** --------------------------------------------------------------------------*
L19:    
;** 596	-----------------------    assert(C$19 == C$20);
   [ B0]   B       .S1     L21               ; |596| 

   [ B0]   LDW     .D1T1   *A11,A3           ; |599| 
|| [!B0]   CALL    .S1     __abort_msg       ; |596| 

   [ B0]   CALL    .S1     __delay           ; |601| 
           NOP             3
           ; BRANCHCC OCCURS {L21}           ; |596| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL7,B3,0          ; |596| 
RL7:       ; CALL OCCURS {__abort_msg}       ; |596| 
;** --------------------------------------------------------------------------*
L20:    
           LDW     .D1T1   *A11,A3           ; |599| 
           CALL    .S1     __delay           ; |601| 
           NOP             3
;** --------------------------------------------------------------------------*
L21:    
;**	-----------------------g8:
;** 599	-----------------------    *base |= 0x80000000;
;** 601	-----------------------    _delay(2000);
;** 602	-----------------------    *base = vcCtl;
;** 603	-----------------------    base[1] = fld1Strt;
;** 604	-----------------------    base[2] = fld1Stop;
;** 605	-----------------------    base[3] = fld2Strt;
;** 606	-----------------------    base[4] = fld2Stop;
;** 607	-----------------------    numPixels = (*params).fldXStop1-(*params).fldXStrt1+1;
;** 610	-----------------------    if ( (U$98 = (*params).fldOp-4) != (-2) ) goto g10;
;**  	-----------------------    U$123 = (*params).fldYStop1;
;** 608	-----------------------    numLines = 0;
;**  	-----------------------    goto g11;
;**	-----------------------g10:
;** 611	-----------------------    U$123 = (*params).fldYStop1;
;** 611	-----------------------    numLines = U$123-(*params).fldYStrt1+1;
;**	-----------------------g11:
;** 613	-----------------------    (*chan).numLinesFld1 = U$163 = numLines;
;** 614	-----------------------    (*chan).numTotalLinesFld1 = U$123;
;** 616	-----------------------    U$139 = U$98 == 0;
;** 616	-----------------------    if ( !((U$98 == (-2))|U$139) ) goto g13;
;** 618	-----------------------    numLines = (*params).fldYStop2-(*params).fldYStrt2+numLines+1;
;**  	-----------------------    U$163 = numLines;
;**	-----------------------g13:
;** 620	-----------------------    (*chan).resmpl = (*params).resmpl;
;** 621	-----------------------    (*chan).scale = (*params).scale;
;** 622	-----------------------    (*chan).numLines = U$163;
;** 623	-----------------------    numPixels >>= (*params).scale;
;** 624	-----------------------    numCPixels = numPixels>>1;
;** 626	-----------------------    (*chan).numPixels = U$178 = numPixels;
;** 627	-----------------------    (*chan).lastLineNum = U$174 = (*chan).numLines;
;** 628	-----------------------    if ( !((*params).cmode&1) ) goto g17;
           SET     .S1     A3,31,31,A3       ; |599| 

           STW     .D1T1   A3,*A11           ; |599| 
||         MVK     .S1     0x7d0,A4          ; |601| 
||         ADDKPC  .S2     RL8,B3,0          ; |601| 

RL8:       ; CALL OCCURS {__delay}           ; |601| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A3        ; |602| 
||         MVK     .S1     143,A31           ; |614| 
||         MVK     .S2     480,B9            ; |620| 

           MVK     .S1     239,A29           ; |621| 
||         MVK     .S2     122,B17           ; |640| 

           ADD     .L1X    B9,A10,A5         ; |620| 
||         MVK     .S1     123,A30           ; |622| 

           MVK     .S1     123,A28           ; |627| 
           MVK     .S1     124,A26           ; |626| 

           STW     .D1T1   A3,*A11           ; |602| 
||         MVK     .S1     141,A27           ; |627| 

           LDW     .D2T1   *+SP(8),A3        ; |603| 
           NOP             4
           STW     .D1T1   A3,*+A11(4)       ; |603| 
           LDW     .D2T1   *+SP(16),A3       ; |604| 
           NOP             4
           STW     .D1T1   A3,*+A11(8)       ; |604| 
           LDW     .D2T1   *+SP(12),A3       ; |605| 
           NOP             4
           STW     .D1T1   A3,*+A11(12)      ; |605| 
           LDW     .D2T1   *+SP(20),A3       ; |606| 
           NOP             4

           MVK     .S1     125,A3            ; |613| 
||         STW     .D1T1   A3,*+A11(16)      ; |606| 

           LDW     .D2T2   *+B10(4),B6       ; |610| 
           LDHU    .D2T2   *+B10(48),B31     ; |607| 
           LDHU    .D2T2   *+B10(40),B7      ; |607| 
           NOP             2

           CMPEQ   .L2     B6,4,B16          ; |616| 
||         CMPEQ   .L1X    B6,2,A0           ; |610| 

           SUB     .L1X    B6,4,A12          ; |610| 
|| [!A0]   LDHU    .D2T2   *+B10(42),B4      ; |611| 

           SUB     .L2     B31,B7,B30        ; |607| 
|| [!A0]   LDHU    .D2T2   *+B10(50),B5      ; |611| 

   [ A0]   LDHU    .D2T2   *+B10(50),B5
           NOP             3

           ZERO    .S2     B4                ; |608| 
|| [!A0]   SUB     .L2     B5,B4,B8          ; |611| 

           CMPEQ   .L2     B6,2,B5           ; |616| 
||         MVK     .S2     121,B8            ; |639| 
|| [!A0]   ADD     .D2     1,B8,B4           ; |611| 
||         STW     .D1T2   B5,*+A10[A31]     ; |614| 

           STW     .D1T2   B4,*+A10[A3]      ; |613| 
||         OR      .L2     B16,B5,B0         ; |616| 

           LDHU    .D2T1   *+B10(12),A4      ; |620| 
   [ B0]   LDHU    .D2T1   *+B10(54),A3      ; |618| 
   [ B0]   LDHU    .D2T2   *+B10(46),B5      ; |618| 
           NOP             2
           STH     .D1T1   A4,*A5            ; |620| 
           LDHU    .D2T1   *+B10(8),A4       ; |621| 
   [ B0]   SUB     .L2X    A3,B5,B5          ; |618| 
   [ B0]   ADD     .L2     B4,B5,B5          ; |618| 
   [ B0]   ADD     .L2     1,B5,B4           ; |618| 

           ADD     .L2     1,B30,B4          ; |607| 
||         STW     .D1T2   B4,*+A10[A30]     ; |622| 

           STH     .D1T1   A4,*+A10[A29]     ; |621| 
           LDW     .D2T2   *+B10(8),B5       ; |623| 
           NOP             1
           LDW     .D1T2   *+A10[A28],B11    ; |627| 
           NOP             2
           SHR     .S2     B4,B5,B4          ; |623| 

           STW     .D1T2   B4,*+A10[A26]     ; |626| 
||         ADD     .L2     7,B4,B9           ; |639| 
||         SHR     .S2     B4,1,B5           ; |624| 

           STW     .D1T2   B11,*+A10[A27]    ; |627| 
||         AND     .L2     -8,B9,B6          ; |639| 
||         ADD     .S2     7,B5,B18          ; |640| 

           LDW     .D2T2   *B10,B7           ; |628| 
           NOP             4

           AND     .S2     -8,B18,B7         ; |640| 
||         AND     .L2     1,B7,B0           ; |628| 

           MV      .L2     B0,B1             ; |628| branch predicate copy
|| [ B0]   LDW     .D2T2   *+B10(16),B6      ; |630| 
|| [!B0]   B       .S1     L22               ; |628| 

   [!B1]   MV      .L2X    A10,B4
   [!B1]   STW     .D2T2   B6,*+B4[B8]       ; |639| 
           NOP             1
   [!B1]   STW     .D2T2   B7,*+B4[B17]      ; |640| 
           AND     .L2     -2,B6,B0          ; |630| 
           ; BRANCHCC OCCURS {L22}           ; |628| 
;** --------------------------------------------------------------------------*
;** 630	-----------------------    if ( (*params).bpk10Bit&0xfffffffe ) goto g16;
;** 632	-----------------------    (*chan).yPitch = (unsigned)(numPixels*2)+7u&0xfffffff8u;
;** 633	-----------------------    (*chan).cPitch = ((unsigned)numPixels&0xfffffffeu)+7u&0xfffffff8u;
;** 634	-----------------------    goto g18;

           AND     .L2     -2,B4,B7          ; |633| 
||         MVK     .D2     7,B31             ; |632| 
||         SHL     .S2     B4,2,B9           ; |635| 
|| [!B0]   MVK     .S1     129,A31           ; |642| 

           ADD     .L2     7,B7,B8           ; |633| 
||         ADDAH   .D2     B31,B4,B4         ; |632| 
||         MVK     .S1     122,A3            ; |633| 
|| [!B0]   B       .S2     L23               ; |634| 

           AND     .L2     -8,B8,B30         ; |633| 
||         AND     .D2     -8,B4,B4          ; |632| 
||         MV      .L1X    B9,A4             ; |635| 
||         MVK     .S2     122,B7            ; |636| 
|| [ B0]   CALL    .S1     __divi            ; |635| 

   [!B0]   STW     .D1T2   B30,*+A10[A3]     ; |633| 
||         SHL     .S2     B5,2,B6           ; |636| 
||         MVK     .S1     121,A3            ; |632| 

   [!B0]   STW     .D1T2   B4,*+A10[A3]      ; |632| 
||         MVK     .L2     0x3,B4            ; |635| 
|| [!B0]   MVK     .L1     1,A3              ; |643| 
|| [!B0]   MVK     .S1     231,A4            ; |643| 

   [!B0]   LDHU    .D2T2   *+B10(56),B4      ; |642| 
           NOP             1
           ; BRANCHCC OCCURS {L23}           ; |634| 
;** --------------------------------------------------------------------------*
;**	-----------------------g16:
;** 635	-----------------------    (*chan).yPitch = (unsigned)(numPixels*4/3)+7u&0xfffffff8u;
;** 636	-----------------------    (*chan).cPitch = (unsigned)(numCPixels*4/3)+7u&0xfffffff8u;
;** 636	-----------------------    goto g18;
           ADDKPC  .S2     RL9,B3,0          ; |635| 
RL9:       ; CALL OCCURS {__divi}            ; |635| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __divi            ; |636| 
           ADDKPC  .S2     RL10,B3,0         ; |636| 
           MVK     .L2     0x3,B4            ; |636| 
           ADD     .L1     7,A4,A4           ; |635| 
           AND     .L1     -8,A4,A5          ; |635| 

           STW     .D1T1   A5,*+A10[A3]      ; |635| 
||         MV      .L1X    B6,A4             ; |636| 

RL10:      ; CALL OCCURS {__divi}            ; |636| 
;** --------------------------------------------------------------------------*

           BNOP    .S2     L23,1             ; |636| 
||         ADD     .L1     7,A4,A3           ; |636| 
||         MV      .D1X    B7,A31
||         MVK     .S1     231,A4            ; |643| 

           AND     .L1     -8,A3,A3          ; |636| 

           STW     .D1T1   A3,*+A10[A31]     ; |636| 
||         MVK     .L1     1,A3              ; |643| 
||         MVK     .S1     129,A31           ; |642| 

           LDHU    .D2T2   *+B10(56),B4      ; |642| 
           NOP             1
           ; BRANCH OCCURS {L23}             ; |636| 
;** --------------------------------------------------------------------------*
L22:    
;**	-----------------------g17:
;** 639	-----------------------    (*chan).yPitch = U$178+7u&0xfffffff8u;
;** 640	-----------------------    (*chan).cPitch = (unsigned)numCPixels+7u&0xfffffff8u;

           LDHU    .D2T2   *+B10(56),B4      ; |642| 
||         MVK     .S1     129,A31           ; |642| 
||         MVK     .L1     1,A3              ; |643| 

           MVK     .S1     231,A4            ; |643| 
;** --------------------------------------------------------------------------*
L23:    
;**	-----------------------g18:
;** 642	-----------------------    (*chan).yThrld = (*params).thrld;
;** 643	-----------------------    (*chan).interlaced = 1u;
;** 644	-----------------------    if ( ((U$218 = (*params).mergeFlds) != 0)&U$139 ) goto g21;

           STH     .D1T1   A3,*+A10[A4]      ; |643| 
||         MVK     .S2     121,B5            ; |652| 
||         MVK     .S1     125,A3            ; |652| 

           MVK     .S2     129,B6            ; |652| 
||         MVK     .S1     121,A5            ; |648| 

           MVK     .S2     129,B9
||         MVK     .S1     127,A7            ; |650| 

           STW     .D1T2   B4,*+A10[A31]     ; |642| 
||         MVK     .S2     128,B8            ; |649| 
||         MVK     .S1     125,A4            ; |649| 

           LDW     .D2T2   *+B10(68),B12     ; |644| 
||         MVK     .S2     129,B7            ; |648| 

           NOP             4
           CMPEQ   .L2     B12,0,B4          ; |644| 
           XOR     .L2     1,B4,B4           ; |644| 

           MV      .S2X    A10,B4
||         AND     .L2     B16,B4,B0         ; |644| 

   [ B0]   B       .S1     L26               ; |644| 
|| [!B0]   LDW     .D1T1   *+A10[A3],A3      ; |652| 
|| [!B0]   LDW     .D2T2   *+B4[B5],B10      ; |652| 

   [ B0]   LDW     .D1T1   *+A10[A5],A5      ; |648| 
           NOP             1
   [ B0]   LDW     .D1T1   *+A10[A4],A6      ; |649| 
   [!B0]   LDW     .D2T1   *+B4[B6],A14      ; |652| 

           MPYLH   .M2X    B10,A3,B4         ; |652| 
|| [!B0]   MPYLH   .M1X    A3,B10,A4         ; |652| 
|| [!B0]   CALL    .S1     __divu            ; |652| 

           ; BRANCHCC OCCURS {L26}           ; |644| 
;** --------------------------------------------------------------------------*
;** 652	-----------------------    C$17 = (*chan).yPitch;
;** 652	-----------------------    C$18 = (*chan).numLinesFld1*C$17;
;** 652	-----------------------    C$16 = (*chan).yThrld;
;** 652	-----------------------    C$15 = C$16<<3;
;** 652	-----------------------    C$13 = C$18/C$15;
;** 652	-----------------------    assert(C$13*C$16<<3 == C$18);
           MPYU    .M1X    B10,A3,A5         ; |652| 
           ADDKPC  .S2     RL11,B3,0         ; |652| 
           ADD     .L1X    B4,A4,A4          ; |652| 

           SHL     .S2X    A14,3,B13         ; |652| 
||         SHL     .S1     A4,16,A3          ; |652| 

           MV      .L2     B13,B4            ; |652| 
||         ADD     .L1     A5,A3,A4          ; |652| 

RL11:      ; CALL OCCURS {__divu}            ; |652| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A13            ; |652| 
||         ADD     .S1     A5,A3,A3          ; |652| 

           MPYLH   .M1     A13,A14,A4        ; |652| 
           MPYLH   .M1     A14,A13,A5        ; |652| 
           MPYU    .M1     A14,A13,A31       ; |652| 
           ADD     .L1     A5,A4,A4          ; |652| 
           SHL     .S1     A4,16,A4          ; |652| 

           ADD     .L1     A31,A4,A5         ; |652| 
||         MVKL    .S1     SL4+0,A4          ; |652| 

           SHL     .S1     A5,3,A5           ; |652| 

           CMPEQ   .L1     A5,A3,A0          ; |652| 
||         MVKH    .S1     SL4+0,A4          ; |652| 

   [ A0]   MPYLH   .M2     B10,B11,B4        ; |654| 
|| [ A0]   B       .S1     L24               ; |652| 

   [ A0]   MPYLH   .M2     B11,B10,B5        ; |654| 
|| [!A0]   CALL    .S1     __abort_msg       ; |652| 

   [ A0]   CALL    .S1     __divu            ; |654| 
|| [ A0]   MPYU    .M2     B11,B10,B31       ; |654| 

   [ A0]   ADD     .L2     B5,B4,B4          ; |654| 
   [ A0]   SHL     .S2     B4,16,B4          ; |654| 
   [ A0]   ADD     .L2     B31,B4,B5         ; |654| 
           ; BRANCHCC OCCURS {L24}           ; |652| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL12,B3,0         ; |652| 
RL12:      ; CALL OCCURS {__abort_msg}       ; |652| 
           MPYLH   .M2     B10,B11,B4        ; |654| 
           MPYLH   .M2     B11,B10,B5        ; |654| 

           CALL    .S1     __divu            ; |654| 
||         MPYU    .M2     B11,B10,B31       ; |654| 

           ADD     .L2     B5,B4,B4          ; |654| 
           SHL     .S2     B4,16,B4          ; |654| 
           ADD     .L2     B31,B4,B5         ; |654| 
;** --------------------------------------------------------------------------*
L24:    
;** 654	-----------------------    C$14 = C$17*U$174;
;** 654	-----------------------    assert(C$14/C$15*C$16<<3 == C$14);
           MV      .L2     B13,B4            ; |654| 

           MV      .L1X    B5,A4             ; |654| 
||         ADDKPC  .S2     RL13,B3,0         ; |654| 

RL13:      ; CALL OCCURS {__divu}            ; |654| 
;** --------------------------------------------------------------------------*
           MPYLH   .M1     A14,A4,A5         ; |654| 
           MPYLH   .M1     A4,A14,A3         ; |654| 
           MPYU    .M1     A14,A4,A4         ; |654| 
           ADD     .L1     A5,A3,A3          ; |654| 
           SHL     .S1     A3,16,A3          ; |654| 

           ADD     .L1     A4,A3,A3          ; |654| 
||         MVKL    .S1     SL5+0,A4          ; |654| 

           SHL     .S1     A3,3,A3           ; |654| 
           MVKH    .S1     SL5+0,A4          ; |654| 
           CMPEQ   .L2X    A3,B5,B0          ; |654| 

   [ B0]   MVK     .S1     121,A3            ; |658| 
|| [ B0]   B       .S2     L25               ; |654| 

   [ B0]   LDW     .D1T1   *+A10[A3],A3      ; |658| 
|| [!B0]   CALL    .S2     __abort_msg       ; |654| 
|| [ B0]   MVK     .S1     129,A4            ; |658| 

   [ B0]   LDW     .D1T2   *+A10[A4],B5      ; |658| 
           NOP             3
           ; BRANCHCC OCCURS {L25}           ; |654| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL14,B3,0         ; |654| 
RL14:      ; CALL OCCURS {__abort_msg}       ; |654| 
           MVK     .S1     121,A3            ; |658| 

           LDW     .D1T1   *+A10[A3],A3      ; |658| 
||         MVK     .S1     129,A4            ; |658| 

           NOP             2
           LDW     .D1T2   *+A10[A4],B5      ; |658| 
           NOP             1
;** --------------------------------------------------------------------------*
L25:    
;** 656	-----------------------    (*chan).numEventsFld1 = C$13;
;** 658	-----------------------    U$216 = (*chan).yThrld;
;** 658	-----------------------    (*chan).numEvents = (*chan).yPitch*U$174/(U$216<<3);
;** 660	-----------------------    if ( !U$98 ) goto g22;
;** 661	-----------------------    (*chan).interlaced = 0u;
;** 661	-----------------------    goto g22;

           MPYLH   .M1X    B11,A3,A4         ; |658| 
||         MPYLH   .M2X    A3,B11,B4         ; |658| 
||         MVK     .S1     128,A30           ; |656| 

           CALL    .S1     __divu            ; |658| 
||         MPYU    .M1X    B11,A3,A31        ; |658| 
||         STW     .D1T1   A13,*+A10[A30]    ; |656| 

           ADDKPC  .S2     RL15,B3,0         ; |658| 

           SHL     .S2     B5,3,B4           ; |658| 
||         ADD     .L2X    A4,B4,B6          ; |658| 

           SHL     .S2     B6,16,B6          ; |658| 
           NOP             1
           ADD     .L1X    A31,B6,A4         ; |658| 
RL15:      ; CALL OCCURS {__divu}            ; |658| 
;** --------------------------------------------------------------------------*

           B       .S2     L27               ; |661| 
||         MVK     .S1     127,A28           ; |658| 
||         ZERO    .L1     A29               ; |661| 
||         MV      .D1     A12,A0            ; |658| 

           STW     .D1T1   A4,*+A10[A28]     ; |658| 
||         MVK     .S1     231,A5            ; |661| 

   [ A0]   STH     .D1T1   A29,*+A10[A5]     ; |661| 
||         MVK     .S1     128,A31           ; |666| 

           MVK     .S1     127,A3            ; |666| 
           LDW     .D1T1   *+A10[A3],A5      ; |666| 
           LDW     .D1T1   *+A10[A31],A3     ; |666| 
           ; BRANCH OCCURS {L27}             ; |661| 
;** --------------------------------------------------------------------------*
L26:    
;**	-----------------------g21:
;** 648	-----------------------    (*chan).yThrld = (*chan).yPitch>>3;
;** 649	-----------------------    (*chan).numEventsFld1 = (*chan).numLinesFld1;
;** 650	-----------------------    (*chan).numEvents = U$174;
;**  	-----------------------    U$216 = (*chan).yThrld;

           MV      .L1X    B7,A3
||         SHRU    .S1     A5,3,A5           ; |648| 
||         STW     .D1T2   B11,*+A10[A7]     ; |650| 

           MV      .L2X    A10,B4
||         STW     .D1T1   A5,*+A10[A3]      ; |648| 
||         MV      .L1X    B8,A4
||         MVK     .S1     127,A3            ; |666| 

           LDW     .D2T2   *+B4[B9],B5
||         STW     .D1T1   A6,*+A10[A4]      ; |649| 
||         MVK     .S1     128,A31           ; |666| 

           NOP             2
           LDW     .D1T1   *+A10[A3],A5      ; |666| 
           LDW     .D1T1   *+A10[A31],A3     ; |666| 
;** --------------------------------------------------------------------------*
L27:    
;**	-----------------------g22:
;** 664	-----------------------    (*chan).mergeFlds = U$218;
;** 665	-----------------------    (*chan).cThrld = U$216+1u>>1;
;** 666	-----------------------    C$12 = (*chan).numEventsFld1;
;** 666	-----------------------    base[7] = (int)_extu((*chan).numEvents-C$12<<16, 4u, 4u)|(int)_extu(C$12, 20u, 20u);
;** 668	-----------------------    C$11 = (*chan).yThrld;
;** 668	-----------------------    base[6] = (int)_extu(C$11<<16, 6u, 6u)|(int)_extu(C$11, 22u, 22u);
;** 669	-----------------------    goto g33;

           MVK     .S2     460,B4            ; |664| 
||         ADD     .L2     1,B5,B5           ; |665| 
||         MVK     .S1     130,A4            ; |665| 

           ADD     .L2X    B4,A10,B4         ; |664| 
||         SHRU    .S2     B5,1,B31          ; |665| 
||         MVK     .S1     129,A30           ; |668| 

           STH     .D2T2   B12,*B4           ; |664| 
           STW     .D1T2   B31,*+A10[A4]     ; |665| 

           EXTU    .S1     A3,20,20,A5       ; |666| 
||         SUB     .L1     A5,A3,A3          ; |666| 

           EXTU    .S1     A3,20,4,A3        ; |666| 
           OR      .L1     A5,A3,A3          ; |666| 
           STW     .D1T1   A3,*+A11(28)      ; |666| 
           LDW     .D1T2   *+A10[A30],B4     ; |668| 
           NOP             2
           BNOP    .S1     L36,1             ; |669| 
           EXTU    .S2     B4,22,6,B5        ; |668| 
           EXTU    .S2     B4,22,22,B4       ; |668| 
           OR      .L2     B4,B5,B4          ; |668| 
           STW     .D1T2   B4,*+A11(24)      ; |668| 
           ; BRANCH OCCURS {L36}             ; |669| 
;** --------------------------------------------------------------------------*
L28:    
;**	-----------------------g23:
;** 670	-----------------------    paramsRaw = (struct $$fake4 *)params;
;** 671	-----------------------    totalNumPixels = _mpyu((*paramsRaw).lineSz, (*paramsRaw).numLines);
;** 678	-----------------------    vcCtl = (int)((unsigned)(*paramsRaw).bpk10Bit<<13)&0x6000|(*paramsRaw).cmode&7|0x40000080;
;** 682	-----------------------    *base |= 0x80000000;
;** 684	-----------------------    _delay(2000);
;** 685	-----------------------    *base = vcCtl;
;** 686	-----------------------    base[1] = (int)((unsigned)(*paramsRaw).startupSyncEnable<<15)&0x8000|(int)_extu((unsigned)(*paramsRaw).blankperiod, 20u, 20u)|0x10000;
;** 690	-----------------------    base[2] = _extu((unsigned)totalNumPixels<<4, 4u, 20u)<<16|(int)_extu((unsigned)totalNumPixels, 20u, 20u);
;** 693	-----------------------    (*chan).resmpl = C$10 = 0u;
;** 694	-----------------------    (*chan).scale = C$10;
;** 696	-----------------------    if ( (C$9 = (*paramsRaw).cmode) == 6 ) goto g31;
           LDW     .D2T2   *+B10(16),B5      ; |678| 
           LDW     .D2T2   *B10,B4           ; |678| 
           NOP             1
           LDHU    .D2T2   *+B10(8),B31      ; |671| 
           LDHU    .D2T2   *+B10(10),B30     ; |671| 
           SHL     .S1X    B5,13,A3          ; |678| 

           AND     .L2     7,B4,B4           ; |678| 
||         AND     .L1X    B9,A3,A3          ; |678| 

           NOP             1
           OR      .L2X    B4,A3,B4          ; |678| 
           OR      .L2     B8,B4,B4          ; |678| 
           STW     .D2T2   B4,*+SP(4)        ; |678| 
           LDW     .D1T1   *A11,A3           ; |682| 
           CALL    .S1     __delay           ; |684| 
           ADDKPC  .S2     RL16,B3,2         ; |684| 
           SET     .S1     A3,31,31,A3       ; |682| 
           STW     .D1T1   A3,*A11           ; |682| 
RL16:      ; CALL OCCURS {__delay}           ; |684| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A3        ; |685| 
||         MPYU    .M2     B31,B30,B4        ; |671| 

           NOP             2
           EXTU    .S2     B4,8,20,B29       ; |690| 
           EXTU    .S2     B4,20,20,B28      ; |690| 
           STW     .D1T1   A3,*A11           ; |685| 
           LDHU    .D2T2   *+B10(4),B6       ; |686| 
           LDHU    .D2T2   *+B10(6),B7       ; |686| 
           NOP             3
           SHL     .S2     B6,15,B5          ; |686| 
           EXTU    .S2     B7,20,20,B6       ; |686| 

           SHL     .S2     B29,16,B5         ; |690| 
||         AND     .L1X    A7,B5,A3          ; |686| 

           OR      .L1X    B6,A3,A3          ; |686| 
||         OR      .L2     B28,B5,B4         ; |690| 

           SET     .S1     A3,16,16,A3       ; |686| 
           STW     .D1T1   A3,*+A11(4)       ; |686| 
           STW     .D1T2   B4,*+A11(8)       ; |690| 
           STH     .D2T1   A18,*B16          ; |693| 
           STH     .D1T1   A18,*+A10[A19]    ; |694| 
           LDW     .D2T2   *B10,B4           ; |696| 
           NOP             4

           CMPEQ   .L1X    B4,7,A0           ; |698| 
||         CMPEQ   .L2     B4,6,B0           ; |696| 

   [!B0]   CMPEQ   .L2     B4,3,B0           ; |700| 
||         MV      .D2     B0,B2             ; |696| branch predicate copy
||         MV      .S2     B0,B1             ; guard predicate rewrite
|| [ B0]   B       .S1     L32               ; |696| 

   [ B2]   LDHU    .D2T1   *+B10(8),A3       ; |697| 
|| [ B1]   ZERO    .L1     A0                ; |700| nullify predicate

   [ A0]   BNOP    .S1     L31,3             ; |698| 
|| [ B2]   LDHU    .D2T2   *+B10(10),B4      ; |697| 

           ; BRANCHCC OCCURS {L32}           ; |696| 
;** --------------------------------------------------------------------------*
;** 698	-----------------------    if ( C$9 == 7 ) goto g30;

   [ A0]   LDHU    .D2T2   *+B10(8),B5       ; |699| 
|| [ A0]   MVK     .L2     0x1,B0            ; nullify predicate

   [ A0]   LDHU    .D2T2   *+B10(10),B4      ; |699| 
|| [!B0]   B       .S1     L30               ; |700| 

           ; BRANCHCC OCCURS {L31}           ; |698| 
;** --------------------------------------------------------------------------*
;** 700	-----------------------    if ( C$9 != 3 ) goto g29;
   [ B0]   LDW     .D2T2   *+B10(16),B5      ; |701| 
   [!B0]   LDHU    .D2T1   *+B10(8),A3       ; |713| 

   [!B0]   BNOP    .S1     L33,2             ; |713| 
|| [!B0]   LDHU    .D2T2   *+B10(10),B4      ; |713| 

           ; BRANCHCC OCCURS {L30}           ; |700| 
;** --------------------------------------------------------------------------*
;** 701	-----------------------    if ( (*paramsRaw).bpk10Bit&0xfffffffe ) goto g28;
;** 704	-----------------------    totalBytesPerFrame = _mpyu((*paramsRaw).lineSz, (*paramsRaw).numLines)*2;
;** 705	-----------------------    goto g32;
           AND     .L2     -2,B5,B0          ; |701| 
   [!B0]   LDHU    .D2T1   *+B10(8),A3       ; |704| 
   [!B0]   LDHU    .D2T2   *+B10(10),B4      ; |704| 
   [ B0]   LDHU    .D2T1   *+B10(10),A12     ; |707| 

   [!B0]   BNOP    .S1     L33,1             ; |705| 
|| [ B0]   LDHU    .D2T1   *+B10(8),A13      ; |707| 

   [ B0]   CALL    .S1     __divi            ; |707| 

           MPYU    .M1X    A3,B4,A3          ; |704| 
||         MVK     .L2     0x3,B4            ; |707| 
|| [!B0]   LDHU    .D2T2   *+B10(12),B4      ; |717| 

           NOP             1

   [ B0]   MPYU    .M1     A12,A13,A3        ; |707| 
||         ADD     .L1     A3,A3,A3          ; |704| 

           ; BRANCHCC OCCURS {L33}           ; |705| 
;** --------------------------------------------------------------------------*
;**	-----------------------g28:
;** 707	-----------------------    C$7 = (*paramsRaw).numLines;
;** 707	-----------------------    C$6 = (*paramsRaw).lineSz;
;** 707	-----------------------    C$8 = C$6*C$7;
;** 707	-----------------------    assert(C$8/3*3 == C$8);
           ADDKPC  .S2     RL17,B3,0         ; |707| 
           MV      .L1     A3,A4             ; |707| 
RL17:      ; CALL OCCURS {__divi}            ; |707| 
;** --------------------------------------------------------------------------*

           ADDAH   .D1     A4,A4,A5          ; |707| 
||         MVKL    .S1     SL6+0,A4          ; |707| 

           CMPEQ   .L1     A5,A3,A0          ; |707| 
||         MVKH    .S1     SL6+0,A4          ; |707| 

   [ A0]   B       .S1     L29               ; |707| 
|| [ A0]   MPYU    .M1     A13,A12,A3        ; |709| 

   [!A0]   CALL    .S1     __abort_msg       ; |707| 
   [ A0]   CALL    .S1     __divi            ; |709| 
           NOP             3
           ; BRANCHCC OCCURS {L29}           ; |707| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL18,B3,0         ; |707| 
RL18:      ; CALL OCCURS {__abort_msg}       ; |707| 

           CALL    .S1     __divi            ; |709| 
||         MPYU    .M1     A13,A12,A3        ; |709| 

           NOP             3
;** --------------------------------------------------------------------------*
L29:    
;** 709	-----------------------    totalBytesPerFrame = _mpyu(C$6, C$7)*4/3;
;** 709	-----------------------    goto g32;
           ADDKPC  .S2     RL19,B3,0         ; |709| 

           MVK     .L2     0x3,B4            ; |709| 
||         SHL     .S1     A3,2,A4           ; |709| 

RL19:      ; CALL OCCURS {__divi}            ; |709| 
;** --------------------------------------------------------------------------*

           BNOP    .S2     L34,3             ; |709| 
||         LDHU    .D2T2   *+B10(12),B4      ; |717| 
||         MVK     .S1     122,A31           ; |718| 
||         MV      .L1     A4,A3             ; |709| 
||         ZERO    .D1     A6                ; |718| 

           MVK     .S1     121,A4            ; |717| 
           SHL     .S2     B4,3,B4           ; |717| 
           ; BRANCH OCCURS {L34}             ; |709| 
;** --------------------------------------------------------------------------*
L30:    
;**	-----------------------g29:
;** 713	-----------------------    totalBytesPerFrame = _mpyu((*paramsRaw).lineSz, (*paramsRaw).numLines);
;** 713	-----------------------    goto g32;
           NOP             2

           LDHU    .D2T2   *+B10(12),B4      ; |717| 
||         MPYU    .M1X    A3,B4,A3          ; |713| 

           ; BRANCH OCCURS {L33}             ; |713| 
;** --------------------------------------------------------------------------*
L31:    
;**	-----------------------g30:
;** 699	-----------------------    totalBytesPerFrame = _mpyu((*paramsRaw).lineSz, (*paramsRaw).numLines)*4;
;** 700	-----------------------    goto g32;
           NOP             2
           BNOP    .S1     L33,1             ; |700| 
           MPYU    .M2     B5,B4,B4          ; |699| 
           NOP             2

           LDHU    .D2T2   *+B10(12),B4      ; |717| 
||         SHL     .S1X    B4,2,A3           ; |699| 

           ; BRANCH OCCURS {L33}             ; |700| 
;** --------------------------------------------------------------------------*
L32:    
;**	-----------------------g31:
;** 697	-----------------------    totalBytesPerFrame = _mpyu((*paramsRaw).lineSz, (*paramsRaw).numLines)*2;
           NOP             1

           LDHU    .D2T2   *+B10(12),B4      ; |717| 
||         MPYU    .M1X    A3,B4,A3          ; |697| 

           NOP             1
           ADD     .L1     A3,A3,A3          ; |697| 
;** --------------------------------------------------------------------------*
L33:    
           NOP             1
           MVK     .S1     122,A31           ; |718| 
           MVK     .S1     121,A4            ; |717| 
           ZERO    .L1     A6                ; |718| 
           SHL     .S2     B4,3,B4           ; |717| 
;** --------------------------------------------------------------------------*
L34:    
;**	-----------------------g32:
;** 717	-----------------------    (*chan).yPitch = (int)(*paramsRaw).thrld<<3;
;** 718	-----------------------    (*chan).cPitch = C$4 = 0u;
;** 719	-----------------------    (*chan).yThrld = (*paramsRaw).thrld;
;** 720	-----------------------    (*chan).interlaced = C$5 = 0u;
;** 721	-----------------------    (*chan).mergeFlds = C$5;
;** 722	-----------------------    (*chan).cThrld = C$4;
;** 724	-----------------------    C$3 = (*chan).yPitch;
;** 724	-----------------------    C$2 = (unsigned)totalBytesPerFrame/C$3;
;** 724	-----------------------    assert(C$2*C$3 == (unsigned)totalBytesPerFrame);

           STW     .D1T2   B4,*+A10[A4]      ; |717| 
||         MVK     .S1     121,A30           ; |724| 
||         MVK     .S2     460,B31           ; |721| 
||         ZERO    .L2     B6                ; |720| 
||         MV      .L1     A3,A4             ; |724| 

           STW     .D1T1   A6,*+A10[A31]     ; |718| 
||         ADD     .L2X    B31,A10,B4        ; |721| 
||         MVK     .S1     231,A5            ; |720| 

           LDHU    .D2T2   *+B10(12),B5      ; |719| 
||         LDW     .D1T1   *+A10[A30],A7     ; |724| 
||         CALL    .S2     __divu            ; |724| 
||         MVK     .S1     130,A29           ; |722| 

           MVK     .S1     129,A28           ; |719| 
||         STH     .D1T2   B6,*+A10[A5]      ; |720| 

           STW     .D1T1   A6,*+A10[A29]     ; |722| 
||         STH     .D2T2   B6,*B4            ; |721| 

           ADDKPC  .S2     RL20,B3,1         ; |724| 

           MV      .L2X    A7,B4             ; |724| 
||         STW     .D1T2   B5,*+A10[A28]     ; |719| 

RL20:      ; CALL OCCURS {__divu}            ; |724| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A12            ; |724| 
           MPYLH   .M1     A12,A7,A4         ; |724| 
           MPYLH   .M1     A7,A12,A5         ; |724| 
           MPYU    .M1     A7,A12,A27        ; |724| 
           ADD     .L1     A5,A4,A4          ; |724| 
           SHL     .S1     A4,16,A4          ; |724| 

           ADD     .L1     A27,A4,A5         ; |724| 
||         MVKL    .S1     SL7+0,A4          ; |724| 

           CMPEQ   .L1     A5,A3,A0          ; |724| 
||         MVKH    .S1     SL7+0,A4          ; |724| 

   [ A0]   MVK     .S1     123,A4            ; |725| 
|| [ A0]   B       .S2     L35               ; |724| 

   [!A0]   CALL    .S2     __abort_msg       ; |724| 
|| [ A0]   MVK     .S1     129,A3            ; |727| 
|| [ A0]   STW     .D1T1   A12,*+A10[A4]     ; |725| 

   [ A0]   LDW     .D1T1   *+A10[A3],A3      ; |727| 
   [ A0]   LDW     .D1T1   *+A10[A4],A5      ; |726| 
           NOP             2
           ; BRANCHCC OCCURS {L35}           ; |724| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL21,B3,0         ; |724| 
RL21:      ; CALL OCCURS {__abort_msg}       ; |724| 
           MVK     .S1     123,A4            ; |725| 

           MVK     .S1     129,A3            ; |727| 
||         STW     .D1T1   A12,*+A10[A4]     ; |725| 

           LDW     .D1T1   *+A10[A3],A3      ; |727| 
           LDW     .D1T1   *+A10[A4],A5      ; |726| 
           NOP             2
;** --------------------------------------------------------------------------*
L35:    
;** 725	-----------------------    (*chan).numLines = C$2;
;** 726	-----------------------    (*chan).numEvents = (*chan).numLines;
;** 727	-----------------------    C$1 = (*chan).yThrld;
;** 727	-----------------------    base[6] = (int)_extu(C$1<<16, 6u, 6u)|(int)_extu(C$1, 22u, 22u);
           MVK     .S1     127,A6            ; |726| 
           EXTU    .S1     A3,22,22,A4       ; |727| 

           EXTU    .S1     A3,22,6,A3        ; |727| 
||         STW     .D1T1   A5,*+A10[A6]      ; |726| 

           OR      .L1     A4,A3,A3          ; |727| 
           STW     .D1T1   A3,*+A11(24)      ; |727| 
;** --------------------------------------------------------------------------*
L36:    
;**	-----------------------g33:
;** 731	-----------------------    (*chan).status = (*chan).status|2u;
;**	-----------------------g34:
;** 734	-----------------------    return;
           LDW     .D1T1   *A10,A3           ; |731| 
           NOP             4
           OR      .L1     2,A3,A3           ; |731| 
           STW     .D1T1   A3,*A10           ; |731| 
;** --------------------------------------------------------------------------*
L37:    
           LDW     .D2T2   *+SP(28),B3       ; |736| 
           MV      .L1X    SP,A31            ; |736| 
           LDDW    .D1T1   *+A31(40),A13:A12 ; |736| 
           LDDW    .D2T2   *+SP(56),B13:B12  ; |736| 
           LDDW    .D1T1   *+A31(32),A11:A10 ; |736| 

           RET     .S2     B3                ; |736| 
||         LDDW    .D2T2   *+SP(48),B11:B10  ; |736| 

           LDW     .D2T1   *++SP(64),A14     ; |736| 
	.dwpsn	"vportcap.c",736,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |736| 
	.dwattr DW$65, DW_AT_end_file("vportcap.c")
	.dwattr DW$65, DW_AT_end_line(0x2e0)
	.dwattr DW$65, DW_AT_end_column(0x01)
	.dwendtag DW$65

	.sect	".text"

DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("_configTransfer"), DW_AT_symbol_name("__configTransfer")
	.dwattr DW$68, DW_AT_low_pc(__configTransfer)
	.dwattr DW$68, DW_AT_high_pc(0x00)
	.dwattr DW$68, DW_AT_begin_file("vportcap.c")
	.dwattr DW$68, DW_AT_begin_line(0x31d)
	.dwattr DW$68, DW_AT_begin_column(0x0c)
	.dwattr DW$68, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$68, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",801,1

;******************************************************************************
;* FUNCTION NAME: __configTransfer                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 44 Save = 44 byte                  *
;******************************************************************************
__configTransfer:
;** --------------------------------------------------------------------------*
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$69, DW_AT_type(*DW$T$37)
	.dwattr DW$69, DW_AT_location[DW_OP_reg4]
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$70, DW_AT_type(*DW$T$191)
	.dwattr DW$70, DW_AT_location[DW_OP_reg20]
;** 802	-----------------------    chan = (struct $$fake3 *)chanp;
;** 802	-----------------------    Q$2 = 112;
;** 802	-----------------------    Q$1 = 113;
;** 808	-----------------------    paramsRaw = (struct $$fake4 *)params;
;** 815	-----------------------    if ( (*params).cmode&2 ) goto g3;
;** 816	-----------------------    numFrmBufs = (*params).numFrmBufs;
;** 817	-----------------------    segId = (*params).segId;
;** 818	-----------------------    alignment = (*params).alignment;
;** 819	-----------------------    irqId = (*params).irqId;
;** 820	-----------------------    edmaPri = (*params).edmaPri;
;** 821	-----------------------    goto g4;
;**	-----------------------g3:
;** 822	-----------------------    numFrmBufs = (*paramsRaw).numFrmBufs;
;** 823	-----------------------    segId = (*paramsRaw).segId;
;** 824	-----------------------    alignment = (*paramsRaw).alignment;
;** 825	-----------------------    irqId = (*paramsRaw).irqId;
;** 826	-----------------------    edmaPri = (*paramsRaw).edmaPri;
;**	-----------------------g4:
;** 828	-----------------------    if ( !((*chan).status&2u) ) goto g82;

           MV      .L1X    SP,A31            ; |801| 
||         STW     .D2T1   A15,*SP--(48)     ; |801| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         MV      .L1     A4,A10            ; |801| 
||         STDW    .D2T2   B11:B10,*+SP(32)
||         MVK     .S2     0x70,B10          ; |802| 

           STDW    .D1T1   A13:A12,*-A31(32)
||         MV      .L1X    B4,A13            ; |801| 
||         STDW    .D2T2   B13:B12,*+SP(40)
||         MVK     .S1     0x71,A12          ; |802| 

           LDW     .D1T2   *A10,B5           ; |828| 

           LDW     .D1T1   *A13,A3           ; |815| 
||         STW     .D2T2   B3,*+SP(28)

           NOP             2
           STW     .D1T1   A14,*-A31(24)
           AND     .L2     2,B5,B0           ; |828| 
           AND     .L1     2,A3,A0           ; |815| 

   [ A0]   LDW     .D2T2   *+B4(32),B11      ; |826| 
|| [!A0]   LDW     .D1T1   *+A13(60),A14     ; |816| 

   [!A0]   LDW     .D1T2   *+A13(64),B13     ; |818| 
|| [!B0]   B       .S1     L70               ; |828| 
|| [ A0]   LDW     .D2T1   *+B4(20),A14      ; |822| 

   [ A0]   LDW     .D2T2   *+B4(24),B13      ; |824| 
|| [!A0]   LDW     .D1T1   *+A13(72),A15     ; |817| 

   [!A0]   LDW     .D1T2   *+A13(80),B12     ; |819| 
|| [ A0]   LDW     .D2T1   *+B4(28),A15      ; |823| 

   [!A0]   LDW     .D1T2   *+A13(76),B11     ; |820| 
   [ A0]   LDW     .D2T2   *+B4(36),B12      ; |825| 
           CMPLT   .L1     A14,2,A0          ; |830| 
           ; BRANCHCC OCCURS {L70}           ; |828| 
;** --------------------------------------------------------------------------*
;** 830	-----------------------    assert(numFrmBufs >= 2);

   [!A0]   B       .S2     L38               ; |830| 
||         MVKL    .S1     SL8+0,A4          ; |830| 
||         MV      .L1     A0,A1             ; guard predicate rewrite

   [ A0]   CALL    .S2     __abort_msg       ; |830| 
||         MVKH    .S1     SL8+0,A4          ; |830| 

   [!A0]   MVKL    .S1     SL8+0,A4          ; |830| 

   [!A0]   MVKH    .S1     SL8+0,A4          ; |830| 
|| [!A0]   CMPGT   .L1     A14,10,A0         ; |830| 

   [ A1]   MVK     .L1     0x1,A0            ; |830| nullify predicate
   [!A0]   B       .S1     L39               ; |830| 
           ; BRANCHCC OCCURS {L38}           ; |830| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL22,B3,0         ; |830| 
RL22:      ; CALL OCCURS {__abort_msg}       ; |830| 

           CMPGT   .L1     A14,10,A0         ; |830| 
||         MVKL    .S1     SL8+0,A4          ; |830| 

   [!A0]   B       .S2     L39               ; |830| 
||         MVKH    .S1     SL8+0,A4          ; |830| 

;** --------------------------------------------------------------------------*
L38:    
;** 830	-----------------------    assert(numFrmBufs <= 10);

   [!A0]   MVK     .S2     364,B4            ; |832| 
|| [!A0]   MVK     .L2     0xffffffff,B28    ; |834| 
|| [ A0]   CALL    .S1     __abort_msg       ; |830| 

   [!A0]   ADD     .L2X    B4,A10,B31        ; |832| 
|| [!A0]   MVK     .S1     92,A4             ; |832| 
|| [!A0]   MVK     .S2     476,B5            ; |833| 

   [!A0]   STW     .D1T2   B31,*+A10[A4]     ; |832| 
|| [!A0]   MVK     .S1     91,A31            ; |832| 
|| [!A0]   ADD     .L2X    B5,A10,B30        ; |833| 

   [!A0]   STW     .D1T2   B31,*+A10[A31]    ; |832| 
|| [!A0]   MVK     .S1     137,A28           ; |835| 

   [!A0]   MVK     .S1     133,A29           ; |834| 
           ; BRANCHCC OCCURS {L39}           ; |830| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL23,B3,0         ; |830| 
RL23:      ; CALL OCCURS {__abort_msg}       ; |830| 
;** --------------------------------------------------------------------------*

           MVK     .S1     92,A4             ; |832| 
||         MVK     .S2     364,B4            ; |832| 

           ADD     .L2X    B4,A10,B31        ; |832| 
||         MVK     .S1     91,A31            ; |832| 

           STW     .D1T2   B31,*+A10[A4]     ; |832| 
||         MVK     .S1     137,A28           ; |835| 
||         MVK     .S2     476,B5            ; |833| 

           STW     .D1T2   B31,*+A10[A31]    ; |832| 
||         ADD     .L2X    B5,A10,B30        ; |833| 
||         MVK     .S1     133,A29           ; |834| 
||         MVK     .S2     0xffffffff,B28    ; |834| 

;** --------------------------------------------------------------------------*
L39:    
;** 832	-----------------------    C$28 = (struct _QUE_Elem **)chan;
;** 832	-----------------------    (*((struct _QUE_Elem *)C$28+364)).next = C$28[92] = U$41 = (struct _QUE_Elem *)chan+364;
;** 833	-----------------------    (*chan).queEmpty = 0;
;** 834	-----------------------    (*chan).mrViop = C$27 = (struct _FVID_Frame *)0xffffffffu;
;** 835	-----------------------    (*chan).packetIOM = (struct _DEV_Frame *)C$27;
;** 836	-----------------------    (*chan).segId = segId;
;** 838	-----------------------    tccIntNum = *(Q$2*4+(int (*)[3])chan);
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    U$55 = (int (*)[3])chan+448;  // [12]
;** 834	-----------------------    K$49 = 0xffffffffu;
;** 356	-----------------------    C$26 = *U$55;  // [12]
;** 356	-----------------------    if ( (unsigned)C$26 < 32u ) goto g7;  // [12]
;** 664	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u&~(1u<<(unsigned)C$26-32u);  // [26]
;** 664	-----------------------    goto g8;  // [26]
;**	-----------------------g7:
;** 663	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u&(1u<<tccIntNum^K$49);  // [26]
;**	-----------------------g8:
;** 360	-----------------------    CSR = CSR&(K$60 = 0xfffffffeu)|gie&1u;  // [13]
;** 360	-----------------------    tccIntNum = *(Q$1*4+(int (*)[3])chan);  // [13]
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&K$60;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    U$78 = (int (*)[3])chan+452;  // [12]
;** 356	-----------------------    C$25 = *U$78;  // [12]
;** 356	-----------------------    if ( (unsigned)C$25 < (K$63 = 32u) ) goto g10;  // [12]
;** 664	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u&(1u<<(unsigned)C$25-32u^K$49);  // [26]
;** 664	-----------------------    goto g11;  // [26]
;**	-----------------------g10:
;** 663	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u&(1u<<tccIntNum^K$49);  // [26]
;**	-----------------------g11:
;** 360	-----------------------    CSR = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    if ( U$92 = (*chan).numFrms ) goto g22;  // [13]

           ZERO    .L2     B29               ; |833| 
||         MVK     .S1     139,A30           ; |836| 
||         STW     .D1T2   B28,*+A10[A28]    ; |835| 
||         MV      .L1X    B10,A3

           STH     .D2T2   B29,*B30          ; |833| 
||         STW     .D1T1   A15,*+A10[A30]    ; |836| 
||         ADD     .L1X    B4,A10,A11        ; |832| 

           STW     .D1T2   B28,*+A10[A29]    ; |834| 
           LDW     .D1T1   *+A10[A3],A3      ; |838| 
           NOP             3
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B5           ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     -2,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVK     .S2     448,B4            ; |356| 
||         MVK     .S1     32,A4             ; |356| 
||         MVK     .L1     1,A6              ; |663| 
||         MVK     .L2     1,B8              ; |664| 
||         MVK     .D1     0xffffffff,A25    ; |834| 
||         MV      .D2     B5,B27            ; |356| 

           ADD     .L2X    B4,A10,B10        ; |356| 
||         MVKL    .S2     0x1a0ffa8,B6      ; |664| 
||         MVK     .S1     32,A5             ; |664| 
||         MVK     .D2     0xfffffffe,B26    ; |360| 

           LDW     .D2T2   *B10,B4           ; |356| 
||         MVKH    .S2     0x1a0ffa8,B6      ; |664| 
||         SHL     .S1     A6,A3,A6          ; |663| 

           MVKL    .S1     0x1a0ffa8,A27     ; |664| 
           MVKL    .S1     0x1a0ffe8,A26     ; |663| 
           MVKH    .S1     0x1a0ffa8,A27     ; |664| 
           MVKH    .S1     0x1a0ffe8,A26     ; |663| 

           CMPLTU  .L2X    B4,A4,B0          ; |356| 
||         SUB     .L1X    B4,A5,A3          ; |664| 

   [!B0]   LDW     .D2T2   *B6,B7            ; |664| 
||         MVKL    .S2     0x1a0ffe8,B6      ; |663| 
||         SHL     .S1X    B8,A3,A7          ; |664| 
||         XOR     .L1     A25,A6,A3         ; |663| 

           MVKH    .S2     0x1a0ffe8,B6      ; |663| 
   [ B0]   LDW     .D2T2   *B6,B6            ; |663| 
           NOP             2
   [!B0]   ANDN    .L2X    B7,A7,B6          ; |664| 
   [!B0]   STW     .D1T2   B6,*A27           ; |664| 
   [ B0]   AND     .L1X    A3,B6,A3          ; |663| 

   [ B0]   STW     .D1T1   A3,*A26           ; |663| 
||         MVC     .S2     CSR,B6            ; |360| 

           AND     .L2     1,B27,B5          ; |360| 
||         AND     .S2     B26,B6,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *+A10[A12],A4     ; |360| 
           NOP             3
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           MVK     .L2     0xfffffffe,B5     ; |360| 
           AND     .L2     B5,B6,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVK     .S1     452,A3            ; |356| 
||         MVKL    .S2     0x1a0ffa8,B5      ; |664| 
||         MVK     .L2     1,B7              ; |663| 
||         MVK     .L1     1,A6              ; |664| 
||         MVK     .D1     0xffffffff,A22    ; |834| 

           ADD     .L1     A3,A10,A12        ; |356| 
||         MVK     .S1     0x20,A5           ; |356| 
||         MVKH    .S2     0x1a0ffa8,B5      ; |664| 

           LDW     .D1T1   *A12,A3           ; |356| 
||         MVK     .S1     32,A24            ; |664| 

           SHL     .S1X    B7,A4,A7          ; |663| 
           MVKL    .S1     0x1a0ffa8,A23     ; |664| 
           MVKL    .S1     0x1a0ffe8,A21     ; |663| 
           MVKH    .S1     0x1a0ffa8,A23     ; |664| 

           CMPLTU  .L1     A3,A5,A0          ; |356| 
||         SUB     .D1     A3,A24,A3         ; |664| 
||         MVKH    .S1     0x1a0ffe8,A21     ; |663| 

   [!A0]   LDW     .D2T2   *B5,B6            ; |664| 
||         MVKL    .S2     0x1a0ffe8,B5      ; |663| 
||         SHL     .S1     A6,A3,A6          ; |664| 
||         XOR     .L1     A22,A7,A3         ; |663| 

           MVKH    .S2     0x1a0ffe8,B5      ; |663| 
||         XOR     .L1     A22,A6,A4         ; |664| 

   [ A0]   LDW     .D2T2   *B5,B5            ; |663| 
           NOP             2
   [!A0]   AND     .L1X    A4,B6,A4          ; |664| 
   [!A0]   STW     .D1T1   A4,*A23           ; |664| 
   [ A0]   AND     .L1X    A3,B5,A3          ; |663| 

   [ A0]   STW     .D1T1   A3,*A21           ; |663| 
||         MVC     .S2     CSR,B6            ; |360| 

           MVK     .L2     0xfffffffe,B5     ; |360| 

           AND     .L2     B5,B6,B4          ; |360| 
||         AND     .S2     1,B4,B5           ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           MVK     .S1     126,A3            ; |360| 
||         MVK     .S2     123,B5            ; |845| 

           LDW     .D1T1   *+A10[A3],A0      ; |360| 
||         MVK     .S1     140,A5            ; |845| 
||         MVK     .S2     368,B4

           MVK     .S1     368,A3
           MVK     .S2     126,B7            ; |847| 

           MVK     .S1     122,A6            ; |845| 
||         ADD     .L1     A3,A10,A7
||         MVK     .S2     121,B6            ; |845| 

           MVK     .S1     126,A4            ; |842| 

   [ A0]   ADDAW   .D1     A10,27,A5
|| [ A0]   ADD     .L2X    B4,A10,B5
||         MV      .L1     A0,A1             ; guard predicate rewrite
||         MV      .S1     A0,A2             ; branch predicate copy
||         MVK     .S2     0x2,B4            ; |890| 

           CMPGTU  .L1     A0,2,A0           ; |890| 
|| [ A0]   B       .S1     L46               ; |360| 
|| [!A2]   MV      .L2X    A10,B4
|| [!A2]   STW     .D1T1   A14,*+A10[A4]     ; |842| 

   [!A1]   MVK     .L1     0x1,A0            ; |890| nullify predicate
||         MV      .S1X    B5,A3
|| [!A2]   LDW     .D2T2   *+B4[B6],B5       ; |845| 
|| [!A2]   LDW     .D1T1   *+A10[A6],A7      ; |845| 

   [!A0]   B       .S1     L50               ; |890| 
|| [!A2]   LDW     .D1T1   *+A10[A3],A3      ; |845| 

   [!A2]   LDW     .D2T1   *+B4[B7],A0       ; |847| 
           NOP             2
           ; BRANCHCC OCCURS {L46}           ; |360| 
;** --------------------------------------------------------------------------*
;** 842	-----------------------    (*chan).numFrms = numFrmBufs;
;** 845	-----------------------    C$24 = (*chan).numLines;
;** 845	-----------------------    (*chan).bufSz = (int)((*chan).yPitch*C$24)+(int)((*chan).cPitch*C$24*2u);
;** 847	-----------------------    if ( !(U$92 = (*chan).numFrms) ) goto g22;
;**  	-----------------------    U$107 = alignment;
;** 847	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
           ZERO    .L1     A14               ; |847| 

           MPYLH   .M1X    A3,B5,A6          ; |845| 
||         MPYLH   .M2X    B5,A3,B6          ; |845| 

           MPYLH   .M1     A7,A3,A8          ; |845| 
           MPYLH   .M1     A3,A7,A9          ; |845| 

           MPYU    .M1X    A3,B5,A6          ; |845| 
||         ADD     .L2X    A6,B6,B5          ; |845| 
|| [!A0]   B       .S1     L45               ; |847| 

           SHL     .S2     B5,16,B5          ; |845| 
||         ADD     .L1     A9,A8,A31         ; |845| 
||         MPYU    .M1     A3,A7,A4          ; |845| 

           SHL     .S1     A31,16,A3         ; |845| 

           ADD     .L1     A4,A3,A4          ; |845| 
||         ADD     .S1X    A6,B5,A3          ; |845| 

           ADDAH   .D1     A3,A4,A3          ; |845| 
           STW     .D1T1   A3,*+A10[A5]      ; |845| 
           ; BRANCHCC OCCURS {L45}           ; |847| 
;** --------------------------------------------------------------------------*

           MVK     .S1     140,A3            ; |848| 
||         CALL    .S2     _MEM_valloc       ; |848| 

           LDW     .D1T2   *+A10[A3],B4      ; |848| 
	.dwpsn	"vportcap.c",847,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L40:    
DW$L$__configTransfer$10$B:
;**	-----------------------g14:
;** 848	-----------------------    curAddr = MEM_valloc(segId, (unsigned)(*chan).bufSz, U$107, 0);
;** 848	-----------------------    if ( curAddr == NULL ) goto g82;

           ZERO    .L2     B6                ; |848| 
||         MV      .L1X    B13,A6            ; |848| 
||         MV      .S1     A15,A4            ; |848| 
||         ADDKPC  .S2     RL24,B3,0         ; |848| 

RL24:      ; CALL OCCURS {_MEM_valloc}       ; |848| 
DW$L$__configTransfer$10$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$11$B:

           MV      .L1     A4,A0             ; |848| 
||         SHL     .S1     A14,5,A3          ; |853| 

   [!A0]   B       .S1     L70               ; |848| 
||         ADD     .L1     A10,A3,A3         ; |853| 

           ADDAW   .D1     A3,13,A3          ; |853| 
   [ A0]   STW     .D1T1   A0,*A3            ; |853| 
   [ A0]   LDW     .D1T1   *A13,A4           ; |854| 
           NOP             2
           ; BRANCHCC OCCURS {L70}           ; |848| 
DW$L$__configTransfer$11$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$12$B:
;** 853	-----------------------    U$116 = (i<<5)+(union $$fake2 *)(struct _FVID_Frame (*)[10])chan+52;
;** 853	-----------------------    (*U$116).iFrm.y1 = curAddr;
;** 854	-----------------------    if ( (*params).cmode&2 ) goto g21;
           NOP             1
           MVK     .S1     121,A31           ; |855| 

           MVK     .S1     123,A4            ; |855| 
||         AND     .L1     2,A4,A1           ; |854| 

   [ A1]   ADD     .L1     1,A14,A14         ; |847| 
|| [ A1]   MVK     .S1     126,A3            ; |847| 
|| [!A1]   LDW     .D1T1   *+A10[A4],A5      ; |855| 
|| [ A1]   B       .S2     L44               ; |854| 

   [!A1]   LDW     .D1T1   *+A10[A31],A4     ; |855| 
   [ A1]   LDW     .D1T1   *+A10[A3],A0      ; |847| 
           NOP             3
           ; BRANCHCC OCCURS {L44}           ; |854| 
DW$L$__configTransfer$12$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$13$B:
;** 855	-----------------------    curAddr += (*chan).numLines*(*chan).yPitch;
;** 856	-----------------------    (*U$116).iFrm.cb1 = curAddr;
;** 857	-----------------------    curAddr += (*chan).numLines*(*chan).cPitch;
;** 858	-----------------------    (*U$116).iFrm.cr1 = curAddr;
;** 861	-----------------------    if ( (*params).fldOp == 2 ) goto g20;

           MPYLH   .M1     A5,A4,A6          ; |855| 
||         MVK     .S1     123,A29           ; |857| 

           MPYLH   .M1     A4,A5,A7          ; |855| 
||         MVK     .S1     122,A30           ; |857| 

           MPYU    .M1     A4,A5,A5          ; |855| 
           ADD     .L1     A7,A6,A4          ; |855| 
           SHL     .S1     A4,16,A4          ; |855| 
           ADD     .L1     A5,A4,A4          ; |855| 
           ADD     .L1     A4,A0,A4          ; |855| 
           STW     .D1T1   A4,*+A3(4)        ; |856| 
           LDW     .D1T1   *+A10[A30],A5     ; |857| 
           LDW     .D1T2   *+A10[A29],B4     ; |857| 
           NOP             4
           MPYLH   .M2X    A5,B4,B6          ; |857| 

           MPYU    .M1X    A5,B4,A5          ; |857| 
||         MPYLH   .M2X    B4,A5,B5          ; |857| 

           NOP             1
           ADD     .L2     B6,B5,B5          ; |857| 
           SHL     .S2     B5,16,B4          ; |857| 
           NOP             1
           ADD     .L1X    A5,B4,A5          ; |857| 
           ADD     .L1     A5,A4,A4          ; |857| 
           STW     .D1T1   A4,*+A3(8)        ; |858| 
           LDW     .D1T1   *+A13(4),A4       ; |861| 
           NOP             4

           MVK     .S1     460,A4            ; |869| 
||         CMPEQ   .L1     A4,2,A0           ; |861| 

   [ A0]   B       .S1     L42               ; |861| 
||         ADD     .L1     A4,A10,A4         ; |869| 
||         MV      .D1     A0,A1             ; |861| branch predicate copy

   [!A0]   LDHU    .D1T1   *A4,A0            ; |869| 
   [ A1]   LDW     .D1T1   *+A3(8),A6        ; |866| 
   [ A1]   LDW     .D1T1   *+A3(4),A4        ; |864| 
   [ A1]   LDW     .D1T1   *A3,A5            ; |862| 
           NOP             1
           ; BRANCHCC OCCURS {L42}           ; |861| 
DW$L$__configTransfer$13$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$14$B:
;** 869	-----------------------    if ( (*chan).mergeFlds ) goto g19;

           MVK     .S1     125,A4            ; |870| 
|| [ A0]   LDW     .D1T1   *A3,A4            ; |880| 
|| [ A0]   B       .S2     L41               ; |869| 

           MVK     .S1     121,A5            ; |870| 
|| [!A0]   LDW     .D1T1   *+A10[A4],A4      ; |870| 

   [!A0]   LDW     .D1T1   *+A10[A5],A5      ; |870| 
|| [ A0]   MVK     .S1     121,A5            ; |880| 

   [ A0]   LDW     .D1T1   *+A10[A5],A5      ; |880| 
           NOP             2
           ; BRANCHCC OCCURS {L41}           ; |869| 
DW$L$__configTransfer$14$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$15$B:
;** 870	-----------------------    (*U$116).iFrm.y2 = (*chan).numLinesFld1*(*chan).yPitch+(*U$116).iFrm.y1;
;** 873	-----------------------    (*U$116).iFrm.cb2 = (*chan).numLinesFld1*(*chan).cPitch+(*U$116).iFrm.cb1;
;** 876	-----------------------    (*U$116).iFrm.cr2 = (*chan).numLinesFld1*(*chan).cPitch+(*U$116).iFrm.cr1;
;** 879	-----------------------    goto g21;

           LDW     .D1T1   *A3,A6            ; |870| 
||         MVK     .S1     125,A30           ; |873| 

           MPYLH   .M1     A5,A4,A8          ; |870| 
||         MVK     .S1     122,A31           ; |873| 
||         LDW     .D1T1   *+A3(4),A29       ; |873| 

           MPYLH   .M1     A4,A5,A7          ; |870| 
||         MVK     .S1     122,A27           ; |876| 
||         LDW     .D1T1   *+A3(8),A26       ; |876| 

           MPYU    .M1     A5,A4,A5          ; |870| 
||         MVK     .S1     125,A28           ; |876| 

           ADD     .L1     A8,A7,A4          ; |870| 
           SHL     .S1     A4,16,A4          ; |870| 
           ADD     .L1     A5,A4,A4          ; |870| 
           ADD     .L1     A6,A4,A4          ; |870| 
           STW     .D1T1   A4,*+A3(12)       ; |870| 
           LDW     .D1T1   *+A10[A31],A4     ; |873| 
           LDW     .D1T2   *+A10[A30],B4     ; |873| 
           NOP             4

           MPYU    .M1X    A4,B4,A5          ; |873| 
||         MPYLH   .M2X    B4,A4,B5          ; |873| 

           MPYLH   .M2X    A4,B4,B6          ; |873| 
           NOP             1
           ADD     .L2     B6,B5,B4          ; |873| 
           SHL     .S2     B4,16,B4          ; |873| 
           ADD     .L2X    A5,B4,B4          ; |873| 
           NOP             1
           ADD     .L1X    A29,B4,A4         ; |873| 
           STW     .D1T1   A4,*+A3(16)       ; |873| 
           LDW     .D1T1   *+A10[A27],A6     ; |876| 
           LDW     .D1T1   *+A10[A28],A4     ; |876| 
           NOP             4
           MPYLH   .M1     A6,A4,A8          ; |876| 
           MPYLH   .M1     A4,A6,A7          ; |876| 

           B       .S1     L43               ; |879| 
||         MPYU    .M1     A6,A4,A6          ; |876| 

           ADD     .L1     A8,A7,A4          ; |876| 
           SHL     .S1     A4,16,A4          ; |876| 
           ADD     .L1     A6,A4,A4          ; |876| 
           ADD     .L1     A26,A4,A4         ; |876| 

           MVK     .S1     126,A3            ; |847| 
||         STW     .D1T1   A4,*+A3(20)       ; |876| 

           ; BRANCH OCCURS {L43}             ; |879| 
DW$L$__configTransfer$15$E:
;** --------------------------------------------------------------------------*
L41:    
DW$L$__configTransfer$16$B:
;**	-----------------------g19:
;** 880	-----------------------    (*U$116).iFrm.y2 = (*U$116).iFrm.y1+(*chan).yPitch;
;** 882	-----------------------    (*U$116).iFrm.cb2 = (*U$116).iFrm.cb1+(*chan).cPitch;
;** 884	-----------------------    (*U$116).iFrm.cr2 = (*U$116).iFrm.cr1+(*chan).cPitch;
;** 884	-----------------------    goto g21;

           MVK     .S1     122,A30           ; |882| 
||         LDW     .D1T1   *+A3(4),A31       ; |882| 

           MVK     .S1     122,A28           ; |884| 
||         LDW     .D1T1   *+A3(8),A29       ; |884| 

           ADD     .L1     A5,A4,A4          ; |880| 
           STW     .D1T1   A4,*+A3(12)       ; |880| 
           LDW     .D1T1   *+A10[A30],A4     ; |882| 
           NOP             4
           ADD     .L1     A4,A31,A4         ; |882| 
           STW     .D1T1   A4,*+A3(16)       ; |882| 
           LDW     .D1T1   *+A10[A28],A4     ; |884| 
           BNOP    .S1     L43,3             ; |884| 
           ADD     .L1     A4,A29,A4         ; |884| 

           MVK     .S1     126,A3            ; |847| 
||         STW     .D1T1   A4,*+A3(20)       ; |884| 

           ; BRANCH OCCURS {L43}             ; |884| 
DW$L$__configTransfer$16$E:
;** --------------------------------------------------------------------------*
L42:    
DW$L$__configTransfer$17$B:
;**	-----------------------g20:
;** 862	-----------------------    (*U$116).iFrm.y2 = (*U$116).iFrm.y1;
;** 864	-----------------------    (*U$116).iFrm.cb2 = (*U$116).iFrm.cb1;
;** 866	-----------------------    (*U$116).iFrm.cr2 = (*U$116).iFrm.cr1;
           NOP             1
           STW     .D1T1   A6,*+A3(20)       ; |866| 
           STW     .D1T1   A4,*+A3(16)       ; |864| 

           MVK     .S1     126,A3            ; |847| 
||         STW     .D1T1   A5,*+A3(12)       ; |862| 

DW$L$__configTransfer$17$E:
;** --------------------------------------------------------------------------*
L43:    
DW$L$__configTransfer$18$B:

           LDW     .D1T1   *+A10[A3],A0      ; |847| 
||         ADD     .L1     1,A14,A14         ; |847| 

           NOP             3
DW$L$__configTransfer$18$E:
;** --------------------------------------------------------------------------*
L44:    
DW$L$__configTransfer$19$B:
;**	-----------------------g21:
;** 847	-----------------------    U$92 = (*chan).numFrms;
;** 847	-----------------------    if ( (unsigned)(++i) < U$92 ) goto g14;
           NOP             1
           CMPLTU  .L1     A14,A0,A1         ; |847| 

   [ A1]   MVK     .S1     140,A3            ; |848| 
|| [ A1]   B       .S2     L40               ; |847| 

   [ A1]   LDW     .D1T2   *+A10[A3],B4      ; |848| 
|| [ A1]   CALL    .S1     _MEM_valloc       ; |848| 

	.dwpsn	"vportcap.c",888,0
           NOP             4
           ; BRANCHCC OCCURS {L40}           ; |847| 
DW$L$__configTransfer$19$E:
;** --------------------------------------------------------------------------*
L45:    
           CMPGTU  .L1     A0,2,A0           ; |890| 
   [!A0]   BNOP    .S1     L50,1             ; |890| 

           MVK     .S1     368,A3
||         MVK     .S2     368,B4

           MVK     .L2     0x2,B4            ; |890| 
||         ADD     .L1     A3,A10,A7
||         ADD     .S2X    B4,A10,B5
||         ADDAW   .D1     A10,27,A5

;** --------------------------------------------------------------------------*
L46:    
;**	-----------------------g22:
;** 890	-----------------------    if ( U$92 <= 2u ) goto g25;
;**  	-----------------------    U$148 = (struct _QUE_Elem **)chan+368;
;**  	-----------------------    U$154 = (struct _FVID_Frame *)((struct _FVID_Frame (*)[10])chan+44)+64;
;**  	-----------------------    U$161 = (struct _QUE_Elem **)chan+368;
;** 890	-----------------------    i = 2;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           NOP             1
           MVK     .S1     134,A3            ; |896| 
           ; BRANCHCC OCCURS {L50}           ; |890| 
;** --------------------------------------------------------------------------*
;**	-----------------------g24:
;** 141	-----------------------    prev = *U$148;  // [4]
;** 143	-----------------------    (*(struct _QUE_Elem *)U$154).next = U$41;  // [4]
;** 144	-----------------------    (*(struct _QUE_Elem *)U$154).prev = prev;  // [4]
;** 145	-----------------------    (*prev).next = (struct _QUE_Elem *)U$154;  // [4]
;** 146	-----------------------    *U$161 = (struct _QUE_Elem *)U$154;  // [4]
;** 146	-----------------------    U$154 += 32;  // [4]
;** 890	-----------------------    if ( (unsigned)(++i) < (*chan).numFrms ) goto g24;

           LDW     .D2T2   *B5,B31           ; |141| (P) <0,0>  ^ 
||         MV      .L1X    B4,A4
||         MV      .L2X    A5,B4
||         MVC     .S2     CSR,B7
||         MV      .S1     A11,A8
||         MVK     .D1     0x1,A0

           AND     .L2     -2,B7,B6
           MVK     .S1     126,A9            ; |890| (P) <0,7> 
           MV      .L1     A10,A6
           MVC     .S2     B6,CSR            ; interrupts off
           STW     .D2T2   B31,*+B4(4)       ; |144| (P) <0,5>  ^ 

   [ A0]   STW     .D1T1   A8,*A5            ; |143| (P) <0,6> 
|| [ A0]   STW     .D2T2   B4,*B31           ; |145| (P) <0,6>  ^ 

           STW     .D1T1   A5,*A7            ; |146| (P) <0,7>  ^ 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 890
;*      Loop opening brace source line   : 890
;*      Loop closing brace source line   : 893
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 8
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     2        1     
;*      .D units                     3*       3*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             3*       3*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        1     
;*      Bound(.L .S .D .LS .LSD)     3*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Did not find schedule
;*         ii = 9  Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 2
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L47:    ; PIPED LOOP PROLOG

           ZERO    .L1     A3
|| [ A0]   LDW     .D1T1   *+A6[A9],A3       ; |890| (P) <0,8> 

           LDW     .D2T2   *B5,B6            ; |141| (P) <1,0>  ^ 
	.dwpsn	"vportcap.c",890,0
           NOP             1
;** --------------------------------------------------------------------------*
L48:    ; PIPED LOOP KERNEL
DW$L$__configTransfer$24$B:
           NOP             1
           ADD     .L1     1,A4,A4           ; |890| <0,12> 

           ADDK    .S2     32,B4             ; |146| <0,13> 
||         CMPLTU  .L1     A4,A3,A0          ; |890| <0,13> 

           ADDK    .S1     32,A5             ; |146| <0,14> Define a twin register
|| [ A0]   B       .S2     L48               ; |890| <0,14> 
|| [ A0]   STW     .D2T2   B6,*+B4(4)        ; |144| <1,5>  ^ 

   [ A0]   STW     .D1T1   A8,*A5            ; |143| <1,6> 
|| [ A0]   STW     .D2T2   B4,*B6            ; |145| <1,6>  ^ 

           MVK     .S1     126,A9            ; |890| <1,7> 
|| [ A0]   STW     .D1T1   A5,*A7            ; |146| <1,7>  ^ 

   [ A0]   LDW     .D1T1   *+A6[A9],A3       ; |890| <1,8> 
           LDW     .D2T2   *B5,B6            ; |141| <2,0>  ^ 
	.dwpsn	"vportcap.c",893,0
           NOP             1
DW$L$__configTransfer$24$E:
;** --------------------------------------------------------------------------*
L49:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MV      .L1     A6,A10
           MVC     .S2     B7,CSR            ; interrupts on
;** --------------------------------------------------------------------------*
           MVK     .S1     134,A3            ; |896| 
;** --------------------------------------------------------------------------*
L50:    
;**	-----------------------g25:
;** 894	-----------------------    (*chan).curViop = (struct _FVID_Frame *)((struct _FVID_Frame (*)[10])chan+44);
;** 895	-----------------------    (*chan).nextViop = (struct _FVID_Frame *)((struct _FVID_Frame (*)[10])chan+44)+32;
;** 896	-----------------------    ((*chan).mode&2) ? (numEdmaChans = 1) : (numEdmaChans = 3);
;** 898	-----------------------    l$5 = numEdmaChans;
;**  	-----------------------    K$173 = 0x20000000u;
;**  	-----------------------    U$177 = (int)((unsigned)edmaPri<<29)|(K$176 = 10485762);
;**  	-----------------------    U$186 = (unsigned)edmaPri<<9;
;**  	-----------------------    K$194 = 983040;
;**  	-----------------------    K$200 = 24576;
;**  	-----------------------    U$222 = (unsigned *)chan+28;
;**  	-----------------------    K$234 = 0xffff8000u;
;**  	-----------------------    U$250 = (unsigned (*)[12])chan+408;
;**  	-----------------------    U$258 = (unsigned (*)[3])chan+388;
;**  	-----------------------    U$259 = U$258;
;**  	-----------------------    K$263 = 0x10000000u;
;**  	-----------------------    U$307 = (unsigned (*)[12])chan+400;
;**  	-----------------------    U$336 = (int *)chan+84;
;**  	-----------------------    U$249 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 3, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           LDW     .D1T1   *+A10[A3],A17     ; |896| 
||         MVKL    .S2     0xa00002,B8
||         SHL     .S1X    B11,29,A16
||         MV      .L2X    A10,B4
||         ZERO    .L1     A9
||         ZERO    .D2     B9

           MVKH    .S2     0xa00002,B8
||         ADDAW   .D1     A10,19,A31        ; |895| 
||         MVK     .S1     132,A5            ; |895| 
||         ZERO    .L2     B19
||         ADD     .D2     B4,28,B18
||         ZERO    .L1     A0

           SHL     .S2     B11,9,B20
||         MVK     .L2     0x1,B11           ; |896| 
||         ADDAW   .D1     A10,11,A4         ; |894| 
||         MVK     .S1     388,A6

           MVK     .S2     400,B5
||         MVK     .S1     131,A7            ; |894| 
||         STW     .D1T1   A31,*+A10[A5]     ; |895| 
||         ADD     .L1     A6,A10,A8

           MVK     .S2     408,B6
||         MVKH    .S1     0x10000000,A9
||         STW     .D1T1   A4,*+A10[A7]      ; |894| 
||         ADD     .L2X    B5,A10,B16
||         OR      .L1X    B8,A16,A4

           AND     .L1     2,A17,A1          ; |896| 
||         ADDAW   .D1     A10,21,A6
||         MVKH    .S2     0x20000000,B9
||         ADD     .L2X    B6,A10,B17
||         ADD     .S1     A6,A10,A11

   [!A1]   MVK     .L2     0x3,B11           ; |896| 
||         MVKH    .S2     0xf0000,B19
||         MVK     .S1     0xffff8000,A18

	.dwpsn	"vportcap.c",901,0

           MV      .L2     B11,B1            ; |898| 
||         MVK     .S1     0x6000,A19

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L51:    
DW$L$__configTransfer$29$B:
;**	-----------------------g26:
;** 902	-----------------------    optFld1 = U$177;
;** 920	-----------------------    if ( U$249 ) goto g28;
;** 920	-----------------------    S$3 = *U$55;
;** 920	-----------------------    goto g29;
;**	-----------------------g28:
;** 920	-----------------------    S$3 = 0u;
;**	-----------------------g29:
;** 920	-----------------------    U$249 ? (S$4 = 0u) : (S$4 = *U$55>>4);
;** 920	-----------------------    U$190 = C$23 = ((U$249 == 0)|U$186)<<20;
;** 920	-----------------------    optFld2a = (int)C$23|(int)(S$3<<16)&K$194|(int)(S$4<<13)&K$200|K$176;
;** 937	-----------------------    if ( U$249 ) goto g31;
;** 937	-----------------------    S$1 = *U$78;
;** 937	-----------------------    goto g32;
;**	-----------------------g31:
;** 937	-----------------------    S$1 = 0u;
;**	-----------------------g32:
;** 937	-----------------------    U$249 ? (S$2 = 0u) : (S$2 = *U$78>>4);
;** 937	-----------------------    optFld2b = (int)(S$1<<16)&K$194|(int)(S$2<<13)&K$200|U$190|K$176;
;** 955	-----------------------    U$249 ? (thrld = (int)(*chan).cThrld) : (thrld = (int)(*chan).yThrld);
;** 955	-----------------------    CSU$cfgEdma$src = *U$222;
;** 957	-----------------------    if ( (*chan).interlaced ) goto g42;

           MVK     .S1     231,A31           ; |957| 
|| [!A0]   LDW     .D1T1   *A12,A3           ; |937| 
|| [!A0]   LDW     .D2T2   *B10,B5           ; |920| 
|| [ A0]   ZERO    .L1     A5                ; |937| 
|| [ A0]   ZERO    .S2     B6                ; |920| 
||         CMPEQ   .L2X    A0,0,B4           ; |920| 

           LDHU    .D1T1   *+A10[A31],A1     ; |957| 
|| [!A0]   LDW     .D2T2   *B10,B6           ; |920| 
|| [ A0]   ZERO    .L1     A3                ; |937| 
|| [ A0]   ZERO    .L2     B5                ; |920| 
||         OR      .S2     B20,B4,B4         ; |920| 

           NOP             1
   [!A0]   LDW     .D1T1   *A12,A5           ; |937| 

           SHL     .S2     B4,20,B4          ; |920| 
||         LDW     .D2T2   *B18,B21          ; |955| 

   [!A0]   SHR     .S2     B5,4,B5           ; |920| 
|| [!A0]   SHR     .S1     A3,4,A3           ; |937| 

           SHL     .S2     B6,16,B7          ; |920| 
||         SHL     .S1     A3,13,A3          ; |937| 

           AND     .L2     B19,B7,B7         ; |920| 
|| [ A1]   B       .S1     L57               ; |957| 
||         SHL     .S2     B5,13,B5          ; |920| 
||         AND     .L1     A19,A3,A3         ; |937| 

           OR      .L2     B7,B4,B7          ; |920| 
||         MVK     .S1     127,A5            ; |1003| 
||         SHL     .S2X    A5,16,B6          ; |937| 

   [ A1]   MVK     .S1     128,A5            ; |964| 
|| [!A1]   LDW     .D1T1   *+A10[A5],A7      ; |1003| 
||         AND     .L2X    A19,B5,B6         ; |920| 
||         AND     .S2     B19,B6,B5         ; |937| 

           OR      .S2     B6,B7,B31         ; |920| 
|| [!A1]   LDW     .D1T1   *A8,A5            ; |1010| 
|| [!A0]   MVK     .S1     129,A3            ; |955| 
||         OR      .L2X    A3,B5,B5          ; |937| 

           OR      .S2     B8,B31,B7         ; |920| 
|| [!A0]   LDW     .D1T1   *+A10[A3],A3      ; |955| 
|| [ A0]   MVK     .S1     130,A3            ; |955| 
||         OR      .L2     B4,B5,B4          ; |937| 

   [ A0]   LDW     .D1T1   *+A10[A3],A3      ; |955| 
||         OR      .L2     B8,B4,B5          ; |937| 

           ; BRANCHCC OCCURS {L57}           ; |957| 
DW$L$__configTransfer$29$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$30$B:
;* 1002	-----------------------    CSU$cfgEdma$opt = optFld2a;
;* 1003	-----------------------    CSU$cfgEdma$cnt = (((*chan).numEvents<<15)+K$234|_extu((unsigned)(thrld*2), 16u, 17u))*2u;
;* 1004	-----------------------    CSU$cfgEdma$idx = (unsigned)thrld<<19;
;* 1005	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$250;
;* 1008	-----------------------    CSU$cfgEdma$dst = *((int *)U$222+24);
;* 1010	-----------------------    hEdma = *U$259;
;** 742	-----------------------    if ( (hEdma == K$173)|(hEdma == K$263) ) goto g35;  // [29]
           LDHU    .D2T2   *B17,B25          ; |1005| 

           SHL     .S1     A7,15,A7          ; |1003| 
||         LDW     .D2T2   *+B18(24),B24     ; |1008| 

           CMPEQ   .L1     A5,A9,A30         ; |742| 
||         CMPEQ   .L2X    A5,B9,B4          ; |742| 
||         ADD     .S1     A18,A7,A16        ; |1003| 

           NOP             1

           EXTU    .S1     A3,17,17,A31      ; |1003| 
||         OR      .L2X    A30,B4,B0         ; |742| 

   [ B0]   BNOP    .S1     L52,4             ; |742| 
||         OR      .L1     A31,A16,A3        ; |1003| 
||         SHL     .S2X    A3,19,B22         ; |1004| 

           ADD     .L1     A3,A3,A16         ; |1003| 
           ; BRANCHCC OCCURS {L52}           ; |742| 
DW$L$__configTransfer$30$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$31$B:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$19 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$19;  // [12]
;** 756	-----------------------    C$22 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [29]
;** 756	-----------------------    *(volatile unsigned *)C$22 = 0u;  // [29]
;** 757	-----------------------    *((volatile unsigned *)C$22+4) = CSU$cfgEdma$src;  // [29]
;** 758	-----------------------    *((volatile unsigned *)C$22+8) = CSU$cfgEdma$cnt;  // [29]
;** 759	-----------------------    *((volatile unsigned *)C$22+12) = CSU$cfgEdma$dst;  // [29]
;** 760	-----------------------    *((volatile unsigned *)C$22+16) = CSU$cfgEdma$idx;  // [29]
;** 761	-----------------------    *((volatile unsigned *)C$22+20) = CSU$cfgEdma$rld;  // [29]
;** 762	-----------------------    *(volatile unsigned *)C$22 = optFld2a;  // [29]
;** 360	-----------------------    a$20 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$20;  // [13]
;** 360	-----------------------    goto g36;  // [13]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B6           ; |354| 
||         MVC     .S2     CSR,B23           ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B23,B4         ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           ZERO    .L1     A3                ; |756| 
||         EXTU    .S1     A5,16,16,A5       ; |756| 
||         ZERO    .D1     A31               ; |756| 

           MVKH    .S1     0x1a00000,A3      ; |756| 
           ADD     .L1     A3,A5,A3          ; |756| 
           STW     .D1T1   A31,*A3           ; |756| 
           STW     .D1T2   B21,*+A3(4)       ; |757| 
           STW     .D1T1   A16,*+A3(8)       ; |758| 
           STW     .D1T2   B24,*+A3(12)      ; |759| 
           STW     .D1T2   B22,*+A3(16)      ; |760| 
           STW     .D1T2   B25,*+A3(20)      ; |761| 

           STW     .D1T2   B7,*A3            ; |762| 
||         MVC     .S2     CSR,B23           ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B6,B6           ; |360| 

           AND     .L2     B4,B23,B4         ; |360| 
           OR      .L2     B6,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L53,4             ; |360| 
||         LDW     .D2T2   *B16,B4           ; |1011| 

           CMPEQ   .L2     B4,B9,B6          ; |742| 
||         CMPEQ   .L1X    B4,A9,A3          ; |742| 

           ; BRANCH OCCURS {L53}             ; |360| 
DW$L$__configTransfer$31$E:
;** --------------------------------------------------------------------------*
L52:    
DW$L$__configTransfer$32$B:
;**	-----------------------g35:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$21 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$21;  // [12]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [30]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [30]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [30]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [30]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [30]
;** 360	-----------------------    a$22 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$22;  // [13]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B6           ; |354| 
||         MVC     .S2     CSR,B23           ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B23,B4         ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S1     0x2000004,A3      ; |830| 
||         MVKL    .S2     0x2000008,B4      ; |831| 

           MVKH    .S1     0x2000004,A3      ; |830| 
||         MVKH    .S2     0x2000008,B4      ; |831| 

           MVKL    .S1     0x200000c,A7      ; |832| 
||         STW     .D1T2   B21,*A3           ; |830| 

           MVKH    .S1     0x200000c,A7      ; |832| 
||         STW     .D2T1   A16,*B4           ; |831| 

           MVKL    .S1     0x2000010,A5      ; |833| 
||         STW     .D1T2   B24,*A7           ; |832| 

           MVKH    .S1     0x2000010,A5      ; |833| 

           MVKL    .S1     0x2000020,A31     ; |834| 
||         STW     .D1T2   B22,*A5           ; |833| 

           MVKH    .S1     0x2000020,A31     ; |834| 

           STW     .D1T2   B7,*A31           ; |834| 
||         MVC     .S2     CSR,B23           ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B6,B6           ; |360| 

           AND     .L2     B4,B23,B4         ; |360| 
           OR      .L2     B6,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *B16,B4           ; |1011| 
           NOP             4

           CMPEQ   .L2     B4,B9,B6          ; |742| 
||         CMPEQ   .L1X    B4,A9,A3          ; |742| 

DW$L$__configTransfer$32$E:
;** --------------------------------------------------------------------------*
L53:    
DW$L$__configTransfer$33$B:
;**	-----------------------g36:
;* 1011	-----------------------    hEdma = *U$307;
;** 742	-----------------------    if ( (hEdma == K$173)|(hEdma == K$263) ) goto g38;  // [29]
           NOP             1
           OR      .L1X    A3,B6,A1          ; |742| 
   [ A1]   BNOP    .S1     L54,5             ; |742| 
           ; BRANCHCC OCCURS {L54}           ; |742| 
DW$L$__configTransfer$33$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$34$B:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$23 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$23;  // [12]
;** 756	-----------------------    C$21 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [29]
;** 756	-----------------------    *(volatile unsigned *)C$21 = 0u;  // [29]
;** 757	-----------------------    *((volatile unsigned *)C$21+4) = CSU$cfgEdma$src;  // [29]
;** 758	-----------------------    *((volatile unsigned *)C$21+8) = CSU$cfgEdma$cnt;  // [29]
;** 759	-----------------------    *((volatile unsigned *)C$21+12) = CSU$cfgEdma$dst;  // [29]
;** 760	-----------------------    *((volatile unsigned *)C$21+16) = CSU$cfgEdma$idx;  // [29]
;** 761	-----------------------    *((volatile unsigned *)C$21+20) = CSU$cfgEdma$rld;  // [29]
;** 762	-----------------------    *(volatile unsigned *)C$21 = CSU$cfgEdma$opt;  // [29]
;** 360	-----------------------    a$24 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$24;  // [13]
;** 360	-----------------------    goto g39;  // [13]
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B23          ; |354| 
||         MVC     .S2     CSR,B26           ; |355| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
           AND     .L2     B6,B26,B6         ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           ZERO    .L1     A3                ; |756| 
||         EXTU    .S2     B4,16,16,B4       ; |756| 
||         ZERO    .L2     B6                ; |756| 

           MVKH    .S1     0x1a00000,A3      ; |756| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |756| 
           STW     .D2T2   B6,*B4            ; |756| 
           STW     .D2T2   B21,*+B4(4)       ; |757| 
           STW     .D2T1   A16,*+B4(8)       ; |758| 
           STW     .D2T2   B24,*+B4(12)      ; |759| 
           STW     .D2T2   B22,*+B4(16)      ; |760| 
           STW     .D2T2   B25,*+B4(20)      ; |761| 

           STW     .D2T2   B7,*B4            ; |762| 
||         MVC     .S2     CSR,B6            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B23,B31         ; |360| 

           AND     .L2     B4,B6,B4          ; |360| 
           OR      .L2     B31,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L55,4             ; |360| 
||         LDW     .D2T2   *B17,B4           ; |1017| 

           CMPEQ   .L2     B4,B9,B6          ; |742| 
||         CMPEQ   .L1X    B4,A9,A3          ; |742| 

           ; BRANCH OCCURS {L55}             ; |360| 
DW$L$__configTransfer$34$E:
;** --------------------------------------------------------------------------*
L54:    
DW$L$__configTransfer$35$B:
;**	-----------------------g38:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$25 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$25;  // [12]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [30]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [30]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [30]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [30]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [30]
;** 360	-----------------------    a$26 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$26;  // [13]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B23          ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B6,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S1     0x2000004,A3      ; |830| 
||         MVKL    .S2     0x2000008,B4      ; |831| 

           MVKH    .S1     0x2000004,A3      ; |830| 
||         MVKH    .S2     0x2000008,B4      ; |831| 

           MVKL    .S1     0x200000c,A7      ; |832| 
||         STW     .D1T2   B21,*A3           ; |830| 

           MVKH    .S1     0x200000c,A7      ; |832| 
||         STW     .D2T1   A16,*B4           ; |831| 

           MVKL    .S1     0x2000010,A5      ; |833| 
||         STW     .D1T2   B24,*A7           ; |832| 

           MVKH    .S1     0x2000010,A5      ; |833| 

           MVKL    .S1     0x2000020,A31     ; |834| 
||         STW     .D1T2   B22,*A5           ; |833| 

           MVKH    .S1     0x2000020,A31     ; |834| 

           STW     .D1T2   B7,*A31           ; |834| 
||         MVC     .S2     CSR,B6            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B23,B31         ; |360| 

           AND     .L2     B4,B6,B4          ; |360| 
           OR      .L2     B31,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *B17,B4           ; |1017| 
           NOP             4

           CMPEQ   .L2     B4,B9,B6          ; |742| 
||         CMPEQ   .L1X    B4,A9,A3          ; |742| 

DW$L$__configTransfer$35$E:
;** --------------------------------------------------------------------------*
L55:    
DW$L$__configTransfer$36$B:
;**	-----------------------g39:
;* 1013	-----------------------    CSU$cfgEdma$opt = optFld2b;
;* 1014	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$307;
;* 1015	-----------------------    CSU$cfgEdma$dst = *U$336;
;* 1017	-----------------------    hEdma = *U$250;
;** 742	-----------------------    if ( (hEdma == K$173)|(hEdma == K$263) ) goto g41;  // [29]
           LDHU    .D2T2   *B16,B7           ; |1014| 

           OR      .L1X    A3,B6,A1          ; |742| 
||         LDW     .D1T1   *A6,A3            ; |1015| 

   [ A1]   BNOP    .S1     L56,5             ; |742| 
           ; BRANCHCC OCCURS {L56}           ; |742| 
DW$L$__configTransfer$36$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$37$B:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$27 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$27;  // [12]
;** 756	-----------------------    C$20 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [29]
;** 756	-----------------------    *(volatile unsigned *)C$20 = 0u;  // [29]
;** 757	-----------------------    *((volatile unsigned *)C$20+4) = CSU$cfgEdma$src;  // [29]
;** 758	-----------------------    *((volatile unsigned *)C$20+8) = CSU$cfgEdma$cnt;  // [29]
;** 759	-----------------------    *((volatile unsigned *)C$20+12) = CSU$cfgEdma$dst;  // [29]
;** 760	-----------------------    *((volatile unsigned *)C$20+16) = CSU$cfgEdma$idx;  // [29]
;** 761	-----------------------    *((volatile unsigned *)C$20+20) = CSU$cfgEdma$rld;  // [29]
;** 762	-----------------------    *(volatile unsigned *)C$20 = optFld2b;  // [29]
;** 360	-----------------------    a$28 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$28;  // [13]
;** 360	-----------------------    goto g57;  // [13]
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B23          ; |354| 
||         MVC     .S2     CSR,B24           ; |355| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
           AND     .L2     B6,B24,B6         ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           ZERO    .L1     A5                ; |756| 
||         EXTU    .S2     B4,16,16,B4       ; |756| 
||         ZERO    .L2     B6                ; |756| 

           MVKH    .S1     0x1a00000,A5      ; |756| 
           NOP             1
           ADD     .L2X    A5,B4,B4          ; |756| 
           STW     .D2T2   B6,*B4            ; |756| 
           STW     .D2T2   B21,*+B4(4)       ; |757| 
           STW     .D2T1   A16,*+B4(8)       ; |758| 
           STW     .D2T1   A3,*+B4(12)       ; |759| 
           STW     .D2T2   B22,*+B4(16)      ; |760| 
           STW     .D2T2   B7,*+B4(20)       ; |761| 

           STW     .D2T2   B5,*B4            ; |762| 
||         MVC     .S2     CSR,B5            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B23,B31         ; |360| 

           AND     .L2     B4,B5,B4          ; |360| 
           OR      .L2     B31,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L67,5             ; |360| 
||         SUB     .L2     B1,1,B1           ; |901| 

           ; BRANCH OCCURS {L67}             ; |360| 
DW$L$__configTransfer$37$E:
;** --------------------------------------------------------------------------*
L56:    
DW$L$__configTransfer$38$B:
;**	-----------------------g41:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$29 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$29;  // [12]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [30]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [30]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [30]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [30]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [30]
;** 360	-----------------------    a$30 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$30;  // [13]
;** 360	-----------------------    goto g57;  // [13]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B6           ; |354| 
||         MVC     .S2     CSR,B7            ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B7,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S1     0x2000004,A5      ; |830| 
||         MVKL    .S2     0x2000008,B7      ; |831| 

           MVKH    .S1     0x2000004,A5      ; |830| 
||         MVKH    .S2     0x2000008,B7      ; |831| 

           STW     .D1T2   B21,*A5           ; |830| 
||         MVKL    .S2     0x200000c,B4      ; |832| 
||         MVKL    .S1     0x2000010,A7      ; |833| 

           STW     .D2T1   A16,*B7           ; |831| 
||         MVKH    .S2     0x200000c,B4      ; |832| 
||         MVKH    .S1     0x2000010,A7      ; |833| 

           MVKL    .S1     0x2000020,A31     ; |834| 
||         STW     .D2T1   A3,*B4            ; |832| 
||         STW     .D1T2   B22,*A7           ; |833| 

           MVKH    .S1     0x2000020,A31     ; |834| 

           STW     .D1T2   B5,*A31           ; |834| 
||         MVC     .S2     CSR,B5            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B6,B31          ; |360| 

           AND     .L2     B4,B5,B4          ; |360| 
           OR      .L2     B31,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L67,5             ; |360| 
||         SUB     .L2     B1,1,B1           ; |901| 

           ; BRANCH OCCURS {L67}             ; |360| 
DW$L$__configTransfer$38$E:
;** --------------------------------------------------------------------------*
L57:    
DW$L$__configTransfer$39$B:
;**	-----------------------g42:
;** 964	-----------------------    U$240 = _extu((unsigned)(thrld*2), 16u, 17u);
;** 964	-----------------------    CSU$cfgEdma$cnt = (((*chan).numEventsFld1<<15)+K$234|U$240)*2u;
;**  	-----------------------    C$19 = (unsigned (*)[12])chan+U$249;
;**  	-----------------------    U$375 = &C$19[101];
;**  	-----------------------    U$417 = &C$19[103];
;** 966	-----------------------    ((*chan).mergeFlds) ? (CSU$cfgEdma$idx = (unsigned)thrld<<20) : (CSU$cfgEdma$idx = (unsigned)thrld<<19);
;** 968	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$375;
;** 975	-----------------------    CSU$cfgEdma$opt = optFld1;
;** 976	-----------------------    CSU$cfgEdma$dst = *((int *)U$222+24);
;** 978	-----------------------    hEdma = *U$259;
;** 742	-----------------------    if ( (hEdma == K$173)|(hEdma == K$263) ) goto g44;  // [29]

           LDW     .D1T1   *+A10[A5],A16     ; |964| 
||         ADD     .L1     A0,A10,A31
||         MVK     .S2     460,B4            ; |966| 
||         LDW     .D2T2   *+B18(24),B25     ; |976| 

           LDW     .D1T1   *A8,A5            ; |978| 
||         MVK     .S2     412,B6

           ADD     .L2X    B6,A31,B23
||         ADD     .L1X    B4,A10,A7         ; |966| 
||         MVK     .S2     404,B31

           LDHU    .D1T1   *A7,A1            ; |966| 
||         ADD     .L2X    B31,A31,B24

           EXTU    .S1     A3,17,17,A20      ; |964| 
||         LDHU    .D2T2   *B24,B26          ; |968| 
||         MV      .L2X    A4,B4             ; |975| 

           SHL     .S1     A16,15,A16        ; |964| 

           CMPEQ   .L1     A5,A9,A30         ; |742| 
||         CMPEQ   .L2X    A5,B9,B6          ; |742| 
||         ADD     .S1     A18,A16,A7        ; |964| 

           OR      .L1     A20,A7,A7         ; |964| 

           OR      .L2X    A30,B6,B0         ; |742| 
|| [ A1]   SHL     .S1     A3,20,A17         ; |966| 
||         ADD     .L1     A7,A7,A7          ; |964| 

   [ B0]   BNOP    .S2     L58,5             ; |742| 
|| [!A1]   SHL     .S1     A3,19,A17         ; |966| 

           ; BRANCHCC OCCURS {L58}           ; |742| 
DW$L$__configTransfer$39$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$40$B:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$3 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$3;  // [12]
;** 756	-----------------------    C$18 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [29]
;** 756	-----------------------    *(volatile unsigned *)C$18 = 0u;  // [29]
;** 757	-----------------------    *((volatile unsigned *)C$18+4) = CSU$cfgEdma$src;  // [29]
;** 758	-----------------------    *((volatile unsigned *)C$18+8) = CSU$cfgEdma$cnt;  // [29]
;** 759	-----------------------    *((volatile unsigned *)C$18+12) = CSU$cfgEdma$dst;  // [29]
;** 760	-----------------------    *((volatile unsigned *)C$18+16) = CSU$cfgEdma$idx;  // [29]
;** 761	-----------------------    *((volatile unsigned *)C$18+20) = CSU$cfgEdma$rld;  // [29]
;** 762	-----------------------    *(volatile unsigned *)C$18 = optFld1;  // [29]
;** 360	-----------------------    a$4 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$4;  // [13]
;** 360	-----------------------    goto g45;  // [13]
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B22          ; |354| 
||         MVC     .S2     CSR,B27           ; |355| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
           AND     .L2     B6,B27,B6         ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           ZERO    .L1     A3                ; |756| 
||         EXTU    .S1     A5,16,16,A5       ; |756| 
||         ZERO    .D1     A31               ; |756| 

           MVKH    .S1     0x1a00000,A3      ; |756| 
           ADD     .L1     A3,A5,A3          ; |756| 
           STW     .D1T1   A31,*A3           ; |756| 
           STW     .D1T2   B21,*+A3(4)       ; |757| 
           STW     .D1T1   A7,*+A3(8)        ; |758| 
           STW     .D1T2   B25,*+A3(12)      ; |759| 
           STW     .D1T1   A17,*+A3(16)      ; |760| 
           STW     .D1T2   B26,*+A3(20)      ; |761| 

           STW     .D1T1   A4,*A3            ; |762| 
||         MVC     .S2     CSR,B27           ; |360| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
||         AND     .S2     1,B22,B22         ; |360| 

           AND     .L2     B6,B27,B6         ; |360| 
           OR      .L2     B22,B6,B6         ; |360| 
           MVC     .S2     B6,CSR            ; |360| 

           BNOP    .S1     L59,4             ; |360| 
||         LDW     .D2T2   *B16,B22          ; |979| 

           CMPEQ   .L2     B22,B9,B6         ; |742| 
||         CMPEQ   .L1X    B22,A9,A3         ; |742| 

           ; BRANCH OCCURS {L59}             ; |360| 
DW$L$__configTransfer$40$E:
;** --------------------------------------------------------------------------*
L58:    
DW$L$__configTransfer$41$B:
;**	-----------------------g44:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$5 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$5;  // [12]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [30]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [30]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [30]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [30]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [30]
;** 360	-----------------------    a$6 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$6;  // [13]
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B27          ; |354| 
||         MVC     .S2     CSR,B22           ; |355| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
           AND     .L2     B6,B22,B6         ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           MVKL    .S1     0x2000004,A16     ; |830| 
||         MVKL    .S2     0x2000008,B6      ; |831| 

           MVKH    .S1     0x2000004,A16     ; |830| 
||         MVKH    .S2     0x2000008,B6      ; |831| 

           MVKL    .S1     0x200000c,A5      ; |832| 
||         STW     .D1T2   B21,*A16          ; |830| 
||         MVKL    .S2     0x2000010,B22     ; |833| 

           MVKH    .S1     0x200000c,A5      ; |832| 
||         STW     .D2T1   A7,*B6            ; |831| 
||         MVKH    .S2     0x2000010,B22     ; |833| 

           MVKL    .S1     0x2000020,A3      ; |834| 
||         STW     .D1T2   B25,*A5           ; |832| 

           MVKH    .S1     0x2000020,A3      ; |834| 
||         STW     .D2T1   A17,*B22          ; |833| 

           STW     .D1T2   B4,*A3            ; |834| 
||         MVC     .S2     CSR,B22           ; |360| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
||         AND     .S2     1,B27,B31         ; |360| 

           AND     .L2     B6,B22,B6         ; |360| 
           OR      .L2     B31,B6,B6         ; |360| 
           MVC     .S2     B6,CSR            ; |360| 
           LDW     .D2T2   *B16,B22          ; |979| 
           NOP             4

           CMPEQ   .L2     B22,B9,B6         ; |742| 
||         CMPEQ   .L1X    B22,A9,A3         ; |742| 

DW$L$__configTransfer$41$E:
;** --------------------------------------------------------------------------*
L59:    
DW$L$__configTransfer$42$B:
;**	-----------------------g45:
;** 979	-----------------------    hEdma = *U$307;
;** 742	-----------------------    if ( (hEdma == K$173)|(hEdma == K$263) ) goto g47;  // [29]
           NOP             1
           OR      .L1X    A3,B6,A1          ; |742| 
   [ A1]   BNOP    .S1     L60,5             ; |742| 
           ; BRANCHCC OCCURS {L60}           ; |742| 
DW$L$__configTransfer$42$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$43$B:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$7 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$7;  // [12]
;** 756	-----------------------    C$17 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [29]
;** 756	-----------------------    *(volatile unsigned *)C$17 = 0u;  // [29]
;** 757	-----------------------    *((volatile unsigned *)C$17+4) = CSU$cfgEdma$src;  // [29]
;** 758	-----------------------    *((volatile unsigned *)C$17+8) = CSU$cfgEdma$cnt;  // [29]
;** 759	-----------------------    *((volatile unsigned *)C$17+12) = CSU$cfgEdma$dst;  // [29]
;** 760	-----------------------    *((volatile unsigned *)C$17+16) = CSU$cfgEdma$idx;  // [29]
;** 761	-----------------------    *((volatile unsigned *)C$17+20) = CSU$cfgEdma$rld;  // [29]
;** 762	-----------------------    *(volatile unsigned *)C$17 = CSU$cfgEdma$opt;  // [29]
;** 360	-----------------------    a$8 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$8;  // [13]
;** 360	-----------------------    goto g48;  // [13]
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B28          ; |354| 
||         MVC     .S2     CSR,B27           ; |355| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
           AND     .L2     B6,B27,B6         ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           ZERO    .L1     A3                ; |756| 
||         EXTU    .S2     B22,16,16,B6      ; |756| 
||         ZERO    .L2     B22               ; |756| 

           MVKH    .S1     0x1a00000,A3      ; |756| 
           NOP             1
           ADD     .L2X    A3,B6,B6          ; |756| 
           STW     .D2T2   B22,*B6           ; |756| 
           STW     .D2T2   B21,*+B6(4)       ; |757| 
           STW     .D2T1   A7,*+B6(8)        ; |758| 
           STW     .D2T2   B25,*+B6(12)      ; |759| 
           STW     .D2T1   A17,*+B6(16)      ; |760| 
           STW     .D2T2   B26,*+B6(20)      ; |761| 

           STW     .D2T2   B4,*B6            ; |762| 
||         MVC     .S2     CSR,B22           ; |360| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
||         AND     .S2     1,B28,B31         ; |360| 

           AND     .L2     B6,B22,B6         ; |360| 
           OR      .L2     B31,B6,B6         ; |360| 
           MVC     .S2     B6,CSR            ; |360| 

           BNOP    .S1     L61,4             ; |360| 
||         LDW     .D2T2   *B17,B22          ; |983| 

           CMPEQ   .L2     B22,B9,B6         ; |742| 
||         CMPEQ   .L1X    B22,A9,A3         ; |742| 

           ; BRANCH OCCURS {L61}             ; |360| 
DW$L$__configTransfer$43$E:
;** --------------------------------------------------------------------------*
L60:    
DW$L$__configTransfer$44$B:
;**	-----------------------g47:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$9 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$9;  // [12]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [30]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [30]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [30]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [30]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [30]
;** 360	-----------------------    a$10 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$10;  // [13]
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B26          ; |354| 
||         MVC     .S2     CSR,B22           ; |355| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
           AND     .L2     B6,B22,B6         ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           MVKL    .S1     0x2000004,A16     ; |830| 
||         MVKL    .S2     0x2000008,B22     ; |831| 

           MVKH    .S1     0x2000004,A16     ; |830| 
||         MVKH    .S2     0x2000008,B22     ; |831| 

           MVKL    .S1     0x200000c,A5      ; |832| 
||         STW     .D1T2   B21,*A16          ; |830| 
||         MVKL    .S2     0x2000010,B6      ; |833| 

           MVKH    .S1     0x200000c,A5      ; |832| 
||         STW     .D2T1   A7,*B22           ; |831| 
||         MVKH    .S2     0x2000010,B6      ; |833| 

           MVKL    .S1     0x2000020,A3      ; |834| 
||         STW     .D1T2   B25,*A5           ; |832| 

           MVKH    .S1     0x2000020,A3      ; |834| 
||         STW     .D2T1   A17,*B6           ; |833| 

           STW     .D1T2   B4,*A3            ; |834| 
||         MVC     .S2     CSR,B22           ; |360| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
||         AND     .S2     1,B26,B31         ; |360| 

           AND     .L2     B6,B22,B6         ; |360| 
           OR      .L2     B31,B6,B6         ; |360| 
           MVC     .S2     B6,CSR            ; |360| 
           LDW     .D2T2   *B17,B22          ; |983| 
           NOP             4

           CMPEQ   .L2     B22,B9,B6         ; |742| 
||         CMPEQ   .L1X    B22,A9,A3         ; |742| 

DW$L$__configTransfer$44$E:
;** --------------------------------------------------------------------------*
L61:    
DW$L$__configTransfer$45$B:
;**	-----------------------g48:
;** 980	-----------------------    CSU$cfgEdma$dst = *U$336;
;** 982	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$417;
;** 983	-----------------------    hEdma = *U$250;
;** 742	-----------------------    if ( (hEdma == K$173)|(hEdma == K$263) ) goto g50;  // [29]
           LDHU    .D2T2   *B23,B25          ; |982| 

           OR      .L1X    A3,B6,A1          ; |742| 
||         LDW     .D1T1   *A6,A3            ; |980| 

   [ A1]   BNOP    .S1     L62,5             ; |742| 
           ; BRANCHCC OCCURS {L62}           ; |742| 
DW$L$__configTransfer$45$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$46$B:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$11 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$11;  // [12]
;** 756	-----------------------    C$16 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [29]
;** 756	-----------------------    *(volatile unsigned *)C$16 = 0u;  // [29]
;** 757	-----------------------    *((volatile unsigned *)C$16+4) = CSU$cfgEdma$src;  // [29]
;** 758	-----------------------    *((volatile unsigned *)C$16+8) = CSU$cfgEdma$cnt;  // [29]
;** 759	-----------------------    *((volatile unsigned *)C$16+12) = CSU$cfgEdma$dst;  // [29]
;** 760	-----------------------    *((volatile unsigned *)C$16+16) = CSU$cfgEdma$idx;  // [29]
;** 761	-----------------------    *((volatile unsigned *)C$16+20) = CSU$cfgEdma$rld;  // [29]
;** 762	-----------------------    *(volatile unsigned *)C$16 = CSU$cfgEdma$opt;  // [29]
;** 360	-----------------------    a$12 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$12;  // [13]
;** 360	-----------------------    goto g51;  // [13]
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B26          ; |354| 
||         MVC     .S2     CSR,B27           ; |355| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
           AND     .L2     B6,B27,B6         ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           ZERO    .L1     A5                ; |756| 
||         EXTU    .S2     B22,16,16,B6      ; |756| 
||         ZERO    .L2     B22               ; |756| 

           MVKH    .S1     0x1a00000,A5      ; |756| 
           NOP             1
           ADD     .L2X    A5,B6,B6          ; |756| 
           STW     .D2T2   B22,*B6           ; |756| 
           STW     .D2T2   B21,*+B6(4)       ; |757| 
           STW     .D2T1   A7,*+B6(8)        ; |758| 
           STW     .D2T1   A3,*+B6(12)       ; |759| 
           STW     .D2T1   A17,*+B6(16)      ; |760| 
           STW     .D2T2   B25,*+B6(20)      ; |761| 

           STW     .D2T2   B4,*B6            ; |762| 
||         MVC     .S2     CSR,B6            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B26,B31         ; |360| 

           AND     .L2     B4,B6,B4          ; |360| 
           OR      .L2     B31,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D2T2   *B24,B6           ; |993| 
||         MVK     .S1     127,A5            ; |987| 
||         B       .S2     L63               ; |360| 

           MVK     .S1     128,A3            ; |987| 
||         LDW     .D1T1   *+A10[A5],A5      ; |987| 

           LDW     .D1T1   *+A10[A3],A3      ; |987| 
           NOP             2

           CMPEQ   .L2     B6,B9,B4          ; |742| 
||         CMPEQ   .L1X    B6,A9,A31         ; |742| 

           ; BRANCH OCCURS {L63}             ; |360| 
DW$L$__configTransfer$46$E:
;** --------------------------------------------------------------------------*
L62:    
DW$L$__configTransfer$47$B:
;**	-----------------------g50:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$13 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$13;  // [12]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [30]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [30]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [30]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [30]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [30]
;** 360	-----------------------    a$14 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$14;  // [13]
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B25          ; |354| 
||         MVC     .S2     CSR,B22           ; |355| 

           MVK     .L2     0xfffffffe,B6     ; |360| 
           AND     .L2     B6,B22,B6         ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           MVKL    .S1     0x2000004,A5      ; |830| 
||         MVKL    .S2     0x2000008,B22     ; |831| 

           MVKH    .S1     0x2000004,A5      ; |830| 
||         MVKH    .S2     0x2000008,B22     ; |831| 

           STW     .D1T2   B21,*A5           ; |830| 
||         MVKL    .S2     0x200000c,B26     ; |832| 
||         MVKL    .S1     0x2000020,A31     ; |834| 

           STW     .D2T1   A7,*B22           ; |831| 
||         MVKH    .S2     0x200000c,B26     ; |832| 
||         MVKH    .S1     0x2000020,A31     ; |834| 

           MVKL    .S2     0x2000010,B6      ; |833| 
||         STW     .D2T1   A3,*B26           ; |832| 

           MVKH    .S2     0x2000010,B6      ; |833| 

           STW     .D2T1   A17,*B6           ; |833| 
||         STW     .D1T2   B4,*A31           ; |834| 
||         MVC     .S2     CSR,B6            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B25,B31         ; |360| 

           AND     .L2     B4,B6,B4          ; |360| 
           OR      .L2     B31,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D2T2   *B24,B6           ; |993| 
||         MVK     .S1     127,A5            ; |987| 

           MVK     .S1     128,A3            ; |987| 
||         LDW     .D1T1   *+A10[A5],A5      ; |987| 

           LDW     .D1T1   *+A10[A3],A3      ; |987| 
           NOP             2

           CMPEQ   .L2     B6,B9,B4          ; |742| 
||         CMPEQ   .L1X    B6,A9,A31         ; |742| 

DW$L$__configTransfer$47$E:
;** --------------------------------------------------------------------------*
L63:    
DW$L$__configTransfer$48$B:
;**	-----------------------g51:
;** 986	-----------------------    CSU$cfgEdma$opt = optFld2a;
;** 987	-----------------------    CSU$cfgEdma$cnt = (((*chan).numEvents-(*chan).numEventsFld1<<15)+K$234|U$240)*2u;
;** 990	-----------------------    CSU$cfgEdma$dst = *((int *)U$222+36);
;** 992	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$250;
;** 993	-----------------------    hEdma = *U$375;
;** 742	-----------------------    if ( (hEdma == K$173)|(hEdma == K$263) ) goto g53;  // [29]
           LDHU    .D2T2   *B17,B22          ; |992| 

           OR      .L2X    A31,B4,B0         ; |742| 
||         SUB     .L1     A5,A3,A3          ; |987| 
||         LDW     .D2T2   *+B18(36),B24     ; |990| 

   [ B0]   BNOP    .S2     L64,2             ; |742| 
||         SHL     .S1     A3,15,A3          ; |987| 

           ADD     .L1     A18,A3,A3         ; |987| 
           OR      .L1     A20,A3,A3         ; |987| 
           ADD     .L1     A3,A3,A5          ; |987| 
           ; BRANCHCC OCCURS {L64}           ; |742| 
DW$L$__configTransfer$48$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$49$B:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$15 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$15;  // [12]
;** 756	-----------------------    C$15 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [29]
;** 756	-----------------------    *(volatile unsigned *)C$15 = 0u;  // [29]
;** 757	-----------------------    *((volatile unsigned *)C$15+4) = CSU$cfgEdma$src;  // [29]
;** 758	-----------------------    *((volatile unsigned *)C$15+8) = CSU$cfgEdma$cnt;  // [29]
;** 759	-----------------------    *((volatile unsigned *)C$15+12) = CSU$cfgEdma$dst;  // [29]
;** 760	-----------------------    *((volatile unsigned *)C$15+16) = CSU$cfgEdma$idx;  // [29]
;** 761	-----------------------    *((volatile unsigned *)C$15+20) = CSU$cfgEdma$rld;  // [29]
;** 762	-----------------------    *(volatile unsigned *)C$15 = optFld2a;  // [29]
;** 360	-----------------------    a$16 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$16;  // [13]
;** 360	-----------------------    goto g54;  // [13]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B26          ; |354| 
||         MVC     .S2     CSR,B25           ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B25,B4         ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           ZERO    .L1     A3                ; |756| 
||         EXTU    .S2     B6,16,16,B4       ; |756| 
||         ZERO    .L2     B6                ; |756| 

           MVKH    .S1     0x1a00000,A3      ; |756| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |756| 
           STW     .D2T2   B6,*B4            ; |756| 
           STW     .D2T2   B21,*+B4(4)       ; |757| 
           STW     .D2T1   A5,*+B4(8)        ; |758| 
           STW     .D2T2   B24,*+B4(12)      ; |759| 
           STW     .D2T1   A17,*+B4(16)      ; |760| 
           STW     .D2T2   B22,*+B4(20)      ; |761| 

           STW     .D2T2   B7,*B4            ; |762| 
||         MVC     .S2     CSR,B6            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B26,B31         ; |360| 

           AND     .L2     B4,B6,B4          ; |360| 
           OR      .L2     B31,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L65,4             ; |360| 
||         LDW     .D2T2   *B23,B6           ; |998| 

           CMPEQ   .L2     B6,B9,B4          ; |742| 
||         CMPEQ   .L1X    B6,A9,A3          ; |742| 

           ; BRANCH OCCURS {L65}             ; |360| 
DW$L$__configTransfer$49$E:
;** --------------------------------------------------------------------------*
L64:    
DW$L$__configTransfer$50$B:
;**	-----------------------g53:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$17 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$17;  // [12]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [30]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [30]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [30]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [30]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [30]
;** 360	-----------------------    a$18 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$18;  // [13]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B22          ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B6,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S1     0x2000004,A16     ; |830| 
||         MVKL    .S2     0x2000008,B4      ; |831| 

           MVKH    .S1     0x2000004,A16     ; |830| 
||         MVKH    .S2     0x2000008,B4      ; |831| 

           MVKL    .S1     0x200000c,A7      ; |832| 
||         STW     .D1T2   B21,*A16          ; |830| 
||         MVKL    .S2     0x2000010,B6      ; |833| 

           MVKH    .S1     0x200000c,A7      ; |832| 
||         STW     .D2T1   A5,*B4            ; |831| 
||         MVKH    .S2     0x2000010,B6      ; |833| 

           MVKL    .S1     0x2000020,A3      ; |834| 
||         STW     .D1T2   B24,*A7           ; |832| 

           MVKH    .S1     0x2000020,A3      ; |834| 
||         STW     .D2T1   A17,*B6           ; |833| 

           STW     .D1T2   B7,*A3            ; |834| 
||         MVC     .S2     CSR,B6            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B22,B31         ; |360| 

           AND     .L2     B4,B6,B4          ; |360| 
           OR      .L2     B31,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *B23,B6           ; |998| 
           NOP             4

           CMPEQ   .L2     B6,B9,B4          ; |742| 
||         CMPEQ   .L1X    B6,A9,A3          ; |742| 

DW$L$__configTransfer$50$E:
;** --------------------------------------------------------------------------*
L65:    
DW$L$__configTransfer$51$B:
;**	-----------------------g54:
;** 994	-----------------------    CSU$cfgEdma$opt = optFld2b;
;** 995	-----------------------    CSU$cfgEdma$dst = U$336[3];
;** 997	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$307;
;** 998	-----------------------    hEdma = *U$417;
;** 742	-----------------------    if ( (hEdma == K$173)|(hEdma == K$263) ) goto g56;  // [29]
           LDHU    .D2T2   *B16,B7           ; |997| 

           OR      .L1X    A3,B4,A1          ; |742| 
||         LDW     .D1T1   *+A6(12),A3       ; |995| 

   [ A1]   BNOP    .S1     L66,5             ; |742| 
           ; BRANCHCC OCCURS {L66}           ; |742| 
DW$L$__configTransfer$51$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$52$B:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$31 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$31;  // [12]
;** 756	-----------------------    C$14 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [29]
;** 756	-----------------------    *(volatile unsigned *)C$14 = 0u;  // [29]
;** 757	-----------------------    *((volatile unsigned *)C$14+4) = CSU$cfgEdma$src;  // [29]
;** 758	-----------------------    *((volatile unsigned *)C$14+8) = CSU$cfgEdma$cnt;  // [29]
;** 759	-----------------------    *((volatile unsigned *)C$14+12) = CSU$cfgEdma$dst;  // [29]
;** 760	-----------------------    *((volatile unsigned *)C$14+16) = CSU$cfgEdma$idx;  // [29]
;** 761	-----------------------    *((volatile unsigned *)C$14+20) = CSU$cfgEdma$rld;  // [29]
;** 762	-----------------------    *(volatile unsigned *)C$14 = optFld2b;  // [29]
;** 360	-----------------------    a$32 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$32;  // [13]
;** 360	-----------------------    goto g57;  // [13]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B22          ; |354| 
||         MVC     .S2     CSR,B23           ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B23,B4         ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           ZERO    .L1     A7                ; |756| 
||         EXTU    .S2     B6,16,16,B4       ; |756| 
||         ZERO    .L2     B6                ; |756| 

           MVKH    .S1     0x1a00000,A7      ; |756| 
           NOP             1
           ADD     .L2X    A7,B4,B4          ; |756| 
           STW     .D2T2   B6,*B4            ; |756| 
           STW     .D2T2   B21,*+B4(4)       ; |757| 
           STW     .D2T1   A5,*+B4(8)        ; |758| 
           STW     .D2T1   A3,*+B4(12)       ; |759| 
           STW     .D2T1   A17,*+B4(16)      ; |760| 
           STW     .D2T2   B7,*+B4(20)       ; |761| 

           STW     .D2T2   B5,*B4            ; |762| 
||         MVC     .S2     CSR,B5            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B22,B31         ; |360| 

           AND     .L2     B4,B5,B4          ; |360| 
           OR      .L2     B31,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           B       .S2     L68               ; |360| 
||         SUB     .L2     B1,1,B1           ; |901| 
||         ADDK    .S1     16,A0             ; |901| 
||         ADD     .L1     4,A8,A8           ; |901| 
||         ADD     .D1     4,A6,A6           ; |901| 
||         ADD     .D2     4,B18,B18         ; |901| 

   [ B1]   BNOP    .S1     L51,3             ; |901| 
||         ADDK    .S2     16,B16            ; |901| 

           ADDK    .S2     16,B17            ; |901| 
           ; BRANCH OCCURS {L68}             ; |360| 
DW$L$__configTransfer$52$E:
;** --------------------------------------------------------------------------*
L66:    
DW$L$__configTransfer$53$B:
;**	-----------------------g56:
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$33 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$33;  // [12]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [30]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [30]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [30]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [30]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [30]
;** 360	-----------------------    a$34 = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$34;  // [13]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B7           ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B6,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S1     0x2000004,A7      ; |830| 
||         MVKL    .S2     0x2000008,B6      ; |831| 

           MVKH    .S1     0x2000004,A7      ; |830| 
||         MVKH    .S2     0x2000008,B6      ; |831| 

           STW     .D1T2   B21,*A7           ; |830| 
||         MVKL    .S2     0x200000c,B22     ; |832| 
||         MVKL    .S1     0x2000020,A31     ; |834| 

           STW     .D2T1   A5,*B6            ; |831| 
||         MVKH    .S2     0x200000c,B22     ; |832| 
||         MVKH    .S1     0x2000020,A31     ; |834| 

           MVKL    .S2     0x2000010,B4      ; |833| 
||         STW     .D2T1   A3,*B22           ; |832| 

           MVKH    .S2     0x2000010,B4      ; |833| 

           STW     .D2T1   A17,*B4           ; |833| 
||         STW     .D1T2   B5,*A31           ; |834| 
||         MVC     .S2     CSR,B5            ; |360| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B7,B31          ; |360| 

           AND     .L2     B4,B5,B5          ; |360| 
           OR      .L2     B31,B5,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           SUB     .L2     B1,1,B1           ; |901| 
DW$L$__configTransfer$53$E:
;** --------------------------------------------------------------------------*
L67:    
DW$L$__configTransfer$54$B:

   [ B1]   BNOP    .S2     L51,2             ; |901| 
||         ADDK    .S1     16,A0             ; |901| 
||         ADD     .L1     4,A8,A8           ; |901| 
||         ADD     .D1     4,A6,A6           ; |901| 
||         ADD     .L2     4,B18,B18         ; |901| 

           ADDK    .S2     16,B16            ; |901| 
           ADDK    .S2     16,B17            ; |901| 
DW$L$__configTransfer$54$E:
;** --------------------------------------------------------------------------*
L68:    
DW$L$__configTransfer$55$B:
;**	-----------------------g57:
;** 901	-----------------------    ++U$222;
;** 901	-----------------------    U$249 += 16;
;** 901	-----------------------    U$250 += 4;
;** 901	-----------------------    ++U$259;
;** 901	-----------------------    U$307 += 4;
;** 901	-----------------------    ++U$336;
;** 901	-----------------------    if ( --l$5 ) goto g26;
;* 1020	-----------------------    (*chan).nextEDMARlds = 1;
	.dwpsn	"vportcap.c",1019,0
   [!B1]   MVKL    .S1     _IRQ_map,A3       ; |1026| 
           ; BRANCHCC OCCURS {L51}           ; |901| 
DW$L$__configTransfer$55$E:
;** --------------------------------------------------------------------------*
;* 1026	-----------------------    IRQ_map(8u, (unsigned)irqId);
;* 1027	-----------------------    HWI_dispatchPlug(irqId, (int (*)())&EDMA_intDispatcher, (-1), NULL);
;* 1029	-----------------------    tccIntNum = C$13 = *U$55;
;** 675	-----------------------    if ( (unsigned)C$13 < (K$63 = 32u) ) goto g60;  // [27]
;** 676	-----------------------    *(volatile unsigned *)0x1a0ffa4u = 1u<<(unsigned)C$13-32u;  // [27]
;** 676	-----------------------    goto g61;  // [27]
;**	-----------------------g60:
;** 675	-----------------------    *(volatile unsigned *)0x1a0ffe4u = 1u<<tccIntNum;  // [27]
;**	-----------------------g61:
;* 1030	-----------------------    EDMA_intHook(*U$55, &captureEdmaISR);
;* 1031	-----------------------    tccIntNum = C$12 = *U$55;
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&K$60;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (unsigned)C$12 < K$63 ) goto g63;  // [12]
;** 649	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u|1u<<(unsigned)C$12-32u;  // [25]
;** 649	-----------------------    goto g64;  // [25]
;**	-----------------------g63:
;** 648	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u|1u<<tccIntNum;  // [25]
;**	-----------------------g64:
;** 360	-----------------------    CSR = CSR&K$60|gie&1u;  // [13]
;** 360	-----------------------    tccIntNum = C$11 = *U$78;  // [13]
;** 675	-----------------------    if ( (unsigned)C$11 < K$63 ) goto g66;  // [27]
;** 676	-----------------------    *(volatile unsigned *)0x1a0ffa4u = 1u<<(unsigned)C$11-32u;  // [27]
;** 676	-----------------------    goto g67;  // [27]
;**	-----------------------g66:
;** 675	-----------------------    *(volatile unsigned *)0x1a0ffe4u = 1u<<tccIntNum;  // [27]
;**	-----------------------g67:
;* 1030	-----------------------    K$516 = &captureEdmaISR;
;* 1033	-----------------------    EDMA_intHook(*U$78, K$516);
;* 1034	-----------------------    tccIntNum = C$10 = *U$78;
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    CSR = CSR&K$60;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (unsigned)C$10 < K$63 ) goto g69;  // [12]
;** 649	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u|1u<<(unsigned)C$10-32u;  // [25]
;** 649	-----------------------    goto g70;  // [25]
;**	-----------------------g69:
;** 648	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u|1u<<tccIntNum;  // [25]
;**	-----------------------g70:
;** 360	-----------------------    CSR = CSR&K$60|gie&1u;  // [13]
;**  	-----------------------    l$6 = numEdmaChans;
;**  	-----------------------    K$541 = (-32);
;**  	-----------------------    U$259 = &U$258[-1];
;**  	-----------------------    #pragma MUST_ITERATE(1, 3, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MVKH    .S1     _IRQ_map,A3       ; |1026| 
||         MVK     .L1     1,A4              ; |1020| 

           MVK     .S1     142,A5            ; |1020| 
           CALL    .S2X    A3                ; |1026| 
           ADDKPC  .S2     RL25,B3,1         ; |1026| 
           STW     .D1T1   A4,*+A10[A5]      ; |1020| 
           MVK     .L1     0x8,A4            ; |1026| 
           MV      .L2     B12,B4            ; |1026| 
RL25:      ; CALL OCCURS {_IRQ_map}          ; |1026| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _HWI_dispatchPlug ; |1027| 
           MVKL    .S2     _EDMA_intDispatcher,B4 ; |1027| 
           MVKH    .S2     _EDMA_intDispatcher,B4 ; |1027| 
           ADDKPC  .S2     RL26,B3,0         ; |1027| 
           ZERO    .L2     B6                ; |1027| 

           MVK     .L1     0xffffffff,A6     ; |1027| 
||         MV      .S1X    B12,A4            ; |1027| 

RL26:      ; CALL OCCURS {_HWI_dispatchPlug}  ; |1027| 
           LDW     .D2T1   *B10,A3           ; |1029| 
           MVKL    .S1     0x1a0ffa4,A5      ; |676| 
           MVKL    .S1     _EDMA_intHook,A7  ; |1030| 

           MVKL    .S1     0x1a0ffe4,A4      ; |675| 
||         MVK     .S2     0x20,B12          ; |675| 

           MVKH    .S1     0x1a0ffa4,A5      ; |676| 
||         MVK     .S2     32,B4             ; |676| 

           MVKH    .S1     _EDMA_intHook,A7  ; |1030| 
||         SUB     .L2X    A3,B4,B6          ; |676| 
||         MVK     .S2     1,B5              ; |676| 

           MVKH    .S1     0x1a0ffe4,A4      ; |675| 
||         SHL     .S2     B5,B6,B5          ; |676| 
||         CMPLTU  .L1X    A3,B12,A0         ; |675| 
||         MVK     .D1     1,A6              ; |675| 

   [!A0]   STW     .D1T2   B5,*A5            ; |676| 
||         SHL     .S1     A6,A3,A3          ; |675| 

           CALL    .S2X    A7                ; |1030| 
|| [ A0]   STW     .D1T1   A3,*A4            ; |675| 

           LDW     .D2T1   *B10,A4           ; |1030| 
           MVKL    .S2     _captureEdmaISR,B4 ; |1030| 
           MVKH    .S2     _captureEdmaISR,B4 ; |1030| 
           ADDKPC  .S2     RL27,B3,1         ; |1030| 
RL27:      ; CALL OCCURS {_EDMA_intHook}     ; |1030| 
           LDW     .D2T2   *B10,B4           ; |1031| 
           NOP             4

           MVC     .S2     CSR,B5            ; |354| 
||         MV      .L1X    B4,A3             ; |1031| 

           MVC     .S2     CSR,B7            ; |355| 
||         AND     .L2     1,B5,B6           ; |354| 

           MVK     .L2     0xfffffffe,B5     ; |360| 
           AND     .L2     B5,B7,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 
           MVKL    .S2     0x1a0ffa8,B5      ; |649| 
           MVKL    .S2     0x1a0ffe8,B31     ; |648| 

           CMPLTU  .L2     B4,B12,B0         ; |356| 
||         MVKH    .S2     0x1a0ffa8,B5      ; |649| 

   [!B0]   LDW     .D2T2   *B5,B7            ; |649| 
||         MVKH    .S2     0x1a0ffe8,B31     ; |648| 
||         MVK     .S1     32,A4             ; |649| 

   [ B0]   LDW     .D2T2   *B31,B4           ; |648| 
||         SUB     .L1X    B4,A4,A6          ; |649| 
||         MVK     .D1     1,A31             ; |649| 
||         MVKL    .S1     0x1a0ffa8,A5      ; |649| 

           SHL     .S1     A31,A6,A6         ; |649| 

           MVKL    .S1     0x1a0ffe8,A30     ; |648| 
||         MVK     .L1     1,A7              ; |648| 

           SHL     .S1     A7,A3,A3          ; |648| 

   [!B0]   OR      .L2X    A6,B7,B4          ; |649| 
||         MVKH    .S1     0x1a0ffa8,A5      ; |649| 

   [!B0]   STW     .D1T2   B4,*A5            ; |649| 
|| [ B0]   OR      .L2X    A3,B4,B4          ; |648| 
||         MVKH    .S1     0x1a0ffe8,A30     ; |648| 

           MVC     .S2     CSR,B6            ; |360| 
|| [ B0]   STW     .D1T2   B4,*A30           ; |648| 
||         MV      .L2     B6,B30            ; |356| 

           MVK     .L2     0xfffffffe,B4     ; |360| 

           AND     .L2     B4,B6,B4          ; |360| 
||         AND     .S2     1,B30,B5          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *A12,A3           ; |360| 
           MVK     .L2     1,B8              ; |675| 
           MVKL    .S1     0x1a0ffe4,A4      ; |675| 
           MVKH    .S1     0x1a0ffe4,A4      ; |675| 
           MVK     .S2     32,B6             ; |676| 
           CMPLTU  .L1X    A3,B12,A0         ; |675| 

           SHL     .S1X    B8,A3,A3          ; |675| 
||         SUB     .L2X    A3,B6,B6          ; |676| 

           MVKL    .S1     _EDMA_intHook,A3  ; |1033| 
|| [ A0]   STW     .D1T1   A3,*A4            ; |675| 
||         MVKL    .S2     0x1a0ffa4,B5      ; |676| 

           MVKH    .S1     _EDMA_intHook,A3  ; |1033| 
||         MVK     .L2     1,B7              ; |676| 
||         MVKH    .S2     0x1a0ffa4,B5      ; |676| 

           SHL     .S2     B7,B6,B6          ; |676| 

           CALL    .S2X    A3                ; |1033| 
|| [!A0]   STW     .D2T2   B6,*B5            ; |676| 

           LDW     .D1T1   *A12,A4           ; |1033| 
           MVKL    .S2     _captureEdmaISR,B4 ; |1030| 
           MVKH    .S2     _captureEdmaISR,B4 ; |1030| 
           ADDKPC  .S2     RL28,B3,1         ; |1033| 
RL28:      ; CALL OCCURS {_EDMA_intHook}     ; |1033| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *A12,A3           ; |1034| 
           NOP             3
           MVC     .S2     CSR,B4            ; |354| 

           MVC     .S2     CSR,B6            ; |355| 
||         AND     .L2     1,B4,B5           ; |354| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B6,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 
           MVKL    .S1     0x1a0ffe8,A4      ; |648| 

           CMPLTU  .L1X    A3,B12,A0         ; |356| 
||         MVKH    .S1     0x1a0ffe8,A4      ; |648| 
||         MVKL    .S2     0x1a0ffa8,B4      ; |649| 

   [ A0]   LDW     .D1T1   *A4,A8            ; |648| 
||         MVKH    .S2     0x1a0ffa8,B4      ; |649| 
||         MVK     .S1     32,A6             ; |649| 
||         MVK     .L1     1,A31             ; |648| 

           MVK     .L2     1,B4              ; |649| 
|| [!A0]   LDW     .D2T2   *B4,B6            ; |649| 
||         SHL     .S1     A31,A3,A7         ; |648| 

           MVKL    .S1     0x1a0ffe8,A5      ; |648| 
||         SUB     .L1     A3,A6,A30         ; |649| 

           SHL     .S1X    B4,A30,A3         ; |649| 
           MVKH    .S1     0x1a0ffe8,A5      ; |648| 

           MVKL    .S1     0x1a0ffa8,A30     ; |649| 
|| [ A0]   OR      .L1     A7,A8,A6          ; |648| 

   [!A0]   OR      .L2X    A3,B6,B4          ; |649| 
||         MVKH    .S1     0x1a0ffa8,A30     ; |649| 
|| [ A0]   STW     .D1T1   A6,*A5            ; |648| 

           MVC     .S2     CSR,B6            ; |360| 
|| [!A0]   STW     .D1T2   B4,*A30           ; |649| 

           MVK     .L2     0xfffffffe,B4     ; |360| 

           AND     .L2     B4,B6,B4          ; |360| 
||         AND     .S2     1,B5,B5           ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
	.dwpsn	"vportcap.c",1035,0

           MVK     .S1     0xffffffe0,A8
||         SUB     .L1     A11,4,A7
||         MV      .L2     B11,B1

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
L69:    
DW$L$__configTransfer$59$B:
;**	-----------------------g71:
;* 1036	-----------------------    chaNum = C$9 = _extu(*(++U$259), 8u, 24u);
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$35 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$35;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (int)C$9 < (int)K$63 ) goto g73;  // [12]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$9+K$541^K$49);  // [23]
;** 566	-----------------------    goto g74;  // [23]
;**	-----------------------g73:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<chaNum^K$49);  // [23]
;**	-----------------------g74:
;** 570	-----------------------    a$36 = CSR&K$60|gie&1u;  // [23]
;** 360	-----------------------    CSR = a$36;  // [13]
;** 615	-----------------------    chaNum = C$8 = _extu(*U$259, 8u, 24u);  // [24]
;** 618	-----------------------    if ( (int)C$8 < (int)K$63 ) goto g76;  // [24]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$8+K$541;  // [24]
;** 619	-----------------------    goto g77;  // [24]
;**	-----------------------g76:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [24]
;**	-----------------------g77:
;* 1038	-----------------------    chaNum = C$7 = _extu(*U$259, 8u, 24u);
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$37 = CSR&K$60;  // [12]
;** 355	-----------------------    CSR = a$37;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (int)C$7 < (int)K$63 ) goto g79;  // [12]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$7+K$541;  // [22]
;** 494	-----------------------    goto g80;  // [22]
;**	-----------------------g79:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [22]
;**	-----------------------g80:
;** 498	-----------------------    a$38 = CSR&K$60|gie&1u;  // [22]
;** 360	-----------------------    CSR = a$38;  // [13]
;* 1035	-----------------------    if ( --l$6 ) goto g71;
;* 1040	-----------------------    (*chan).status = (*chan).status|4u;
           LDW     .D1T1   *++A7,A3          ; |1036| 
           NOP             4

           EXTU    .S1     A3,8,24,A3        ; |1036| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B5           ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B6,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           CMPLT   .L2X    A3,B12,B0         ; |356| 
||         ADD     .L1     A8,A3,A4          ; |566| 
||         MVK     .S2     1,B6              ; |565| 
||         MVK     .S1     1,A6              ; |566| 

   [ B0]   MVKL    .S2     0x1a0fff4,B4      ; |565| 
|| [!B0]   SHL     .S1     A6,A4,A3          ; |566| 
||         MVK     .L1     0xffffffff,A4     ; |834| 

   [!B0]   MVKL    .S2     0x1a0ffb4,B4      ; |566| 
|| [!B0]   XOR     .L1     A4,A3,A4          ; |566| 
|| [ B0]   SHL     .S1X    B6,A3,A5          ; |565| 
||         MVK     .D1     0xffffffff,A3     ; |834| 

   [!B0]   MVKH    .S2     0x1a0ffb4,B4      ; |566| 
|| [ B0]   XOR     .L1     A3,A5,A3          ; |565| 
|| [ B0]   MVKL    .S1     0x1a0fff4,A4      ; |565| 

   [ B0]   MVKH    .S2     0x1a0fff4,B4      ; |565| 
|| [!B0]   LDW     .D2T2   *B4,B4            ; |566| 
|| [!B0]   MVKL    .S1     0x1a0ffb4,A5      ; |566| 

   [ B0]   LDW     .D2T2   *B4,B4            ; |565| 
|| [ B0]   MVKH    .S1     0x1a0fff4,A4      ; |565| 

           NOP             2
   [!B0]   MVKH    .S1     0x1a0ffb4,A5      ; |566| 
   [!B0]   AND     .L2X    A4,B4,B4          ; |566| 

   [!B0]   STW     .D1T2   B4,*A5            ; |566| 
|| [ B0]   AND     .L2X    A3,B4,B4          ; |565| 

   [ B0]   STW     .D1T2   B4,*A4            ; |565| 
||         MVC     .S2     CSR,B6            ; |570| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B5,B5           ; |570| 

           AND     .L2     B4,B6,B4          ; |570| 
           OR      .L2     B5,B4,B4          ; |570| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T1   *A7,A3            ; |615| 
||         MVK     .L2     1,B4              ; |618| 

           NOP             4
           EXTU    .S1     A3,8,24,A3        ; |615| 
           ADD     .L1     A8,A3,A5          ; |619| 
           CMPLT   .L2X    A3,B12,B0         ; |618| 

   [!B0]   MVKL    .S2     0x1a0ffb8,B4      ; |619| 
|| [ B0]   MVKL    .S1     0x1a0fff8,A4      ; |618| 

   [!B0]   MVKH    .S2     0x1a0ffb8,B4      ; |619| 
|| [ B0]   MVKH    .S1     0x1a0fff8,A4      ; |618| 

   [!B0]   SHL     .S1     A6,A5,A3          ; |619| 

   [!B0]   STW     .D2T1   A3,*B4            ; |619| 
|| [ B0]   SHL     .S1X    B4,A3,A3          ; |618| 

   [ B0]   STW     .D1T1   A3,*A4            ; |618| 
           LDW     .D1T1   *A7,A3            ; |1038| 
           NOP             4

           EXTU    .S1     A3,8,24,A3        ; |1038| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B5           ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
           AND     .L2     B4,B6,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           CMPLT   .L2X    A3,B12,B0         ; |356| 
||         ADD     .L1     A8,A3,A5          ; |494| 
||         MVK     .S2     1,B6              ; |494| 

   [ B0]   MVKL    .S1     0x1a0fff4,A4      ; |493| 
|| [!B0]   MVKL    .S2     0x1a0ffb4,B4      ; |494| 

   [ B0]   MVKH    .S1     0x1a0fff4,A4      ; |493| 
|| [!B0]   MVKH    .S2     0x1a0ffb4,B4      ; |494| 

   [!B0]   LDW     .D2T2   *B4,B4            ; |494| 
|| [ B0]   LDW     .D1T1   *A4,A5            ; |493| 
|| [!B0]   SHL     .S1X    B6,A5,A4          ; |494| 

   [ B0]   MVKL    .S1     0x1a0fff4,A4      ; |493| 
   [ B0]   SHL     .S1     A6,A3,A3          ; |493| 
   [!B0]   MVKL    .S1     0x1a0ffb4,A3      ; |494| 
   [ B0]   MVKH    .S1     0x1a0fff4,A4      ; |493| 

   [!B0]   OR      .L2X    A4,B4,B4          ; |494| 
|| [ B0]   OR      .L1     A3,A5,A3          ; |493| 
|| [!B0]   MVKH    .S1     0x1a0ffb4,A3      ; |494| 

   [!B0]   STW     .D1T2   B4,*A3            ; |494| 

   [ B0]   STW     .D1T1   A3,*A4            ; |493| 
||         MVC     .S2     CSR,B6            ; |498| 

           MVK     .L2     0xfffffffe,B4     ; |360| 
||         AND     .S2     1,B5,B5           ; |498| 

           AND     .L2     B4,B6,B4          ; |498| 
           OR      .L2     B5,B4,B4          ; |498| 
           MVC     .S2     B4,CSR            ; |360| 
           SUB     .L2     B1,1,B1           ; |1035| 

   [ B1]   BNOP    .S1     L69,4             ; |1035| 
|| [!B1]   LDW     .D1T1   *A10,A3           ; |1040| 

	.dwpsn	"vportcap.c",1039,0
   [!B1]   OR      .L1     4,A3,A3           ; |1040| 
           ; BRANCHCC OCCURS {L69}           ; |1035| 
DW$L$__configTransfer$59$E:
;** --------------------------------------------------------------------------*
;** 320	-----------------------    IER = IER|_IRQ_eventTable[8];  // [9]
;**	-----------------------g82:
;* 1044	-----------------------    return;

           STW     .D1T1   A3,*A10           ; |1040| 
||         MVC     .S2     IER,B4            ; |320| 

           MVKL    .S1     __IRQ_eventTable+32,A3 ; |320| 
           MVKH    .S1     __IRQ_eventTable+32,A3 ; |320| 
           LDW     .D1T1   *A3,A3            ; |320| 
           NOP             4
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
;** --------------------------------------------------------------------------*
L70:    
           LDW     .D2T2   *+SP(28),B3       ; |1046| 
           MV      .L1X    SP,A31            ; |1046| 
           LDDW    .D1T1   *+A31(16),A13:A12 ; |1046| 
           LDW     .D1T1   *+A31(24),A14     ; |1046| 
           LDDW    .D2T2   *+SP(40),B13:B12  ; |1046| 

           RET     .S2     B3                ; |1046| 
||         LDDW    .D1T1   *+A31(8),A11:A10  ; |1046| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |1046| 

           LDW     .D2T1   *++SP(48),A15     ; |1046| 
	.dwpsn	"vportcap.c",1046,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1046| 

DW$71	.dwtag  DW_TAG_loop
	.dwattr DW$71, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L69:1:1192527503")
	.dwattr DW$71, DW_AT_begin_file("vportcap.c")
	.dwattr DW$71, DW_AT_begin_line(0x40b)
	.dwattr DW$71, DW_AT_end_line(0x40f)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$__configTransfer$59$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$__configTransfer$59$E)
	.dwendtag DW$71


DW$73	.dwtag  DW_TAG_loop
	.dwattr DW$73, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L51:1:1192527503")
	.dwattr DW$73, DW_AT_begin_file("vportcap.c")
	.dwattr DW$73, DW_AT_begin_line(0x385)
	.dwattr DW$73, DW_AT_end_line(0x3fb)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$__configTransfer$29$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$__configTransfer$29$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$__configTransfer$30$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$__configTransfer$30$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$__configTransfer$31$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$__configTransfer$31$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$__configTransfer$32$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$__configTransfer$32$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$__configTransfer$33$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$__configTransfer$33$E)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$__configTransfer$34$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$__configTransfer$34$E)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$__configTransfer$35$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$__configTransfer$35$E)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$__configTransfer$36$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$__configTransfer$36$E)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$__configTransfer$37$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$__configTransfer$37$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$__configTransfer$38$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$__configTransfer$38$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$__configTransfer$53$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$__configTransfer$53$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$__configTransfer$39$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$__configTransfer$39$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$__configTransfer$40$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$__configTransfer$40$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$__configTransfer$41$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$__configTransfer$41$E)
DW$88	.dwtag  DW_TAG_loop_range
	.dwattr DW$88, DW_AT_low_pc(DW$L$__configTransfer$42$B)
	.dwattr DW$88, DW_AT_high_pc(DW$L$__configTransfer$42$E)
DW$89	.dwtag  DW_TAG_loop_range
	.dwattr DW$89, DW_AT_low_pc(DW$L$__configTransfer$43$B)
	.dwattr DW$89, DW_AT_high_pc(DW$L$__configTransfer$43$E)
DW$90	.dwtag  DW_TAG_loop_range
	.dwattr DW$90, DW_AT_low_pc(DW$L$__configTransfer$44$B)
	.dwattr DW$90, DW_AT_high_pc(DW$L$__configTransfer$44$E)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$__configTransfer$45$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$__configTransfer$45$E)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$__configTransfer$46$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$__configTransfer$46$E)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$__configTransfer$47$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$__configTransfer$47$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$__configTransfer$48$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$__configTransfer$48$E)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$__configTransfer$49$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$__configTransfer$49$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$__configTransfer$50$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$__configTransfer$50$E)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$__configTransfer$51$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$__configTransfer$51$E)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$__configTransfer$52$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$__configTransfer$52$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$__configTransfer$54$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$__configTransfer$54$E)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$__configTransfer$55$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$__configTransfer$55$E)
	.dwendtag DW$73


DW$101	.dwtag  DW_TAG_loop
	.dwattr DW$101, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L48:1:1192527503")
	.dwattr DW$101, DW_AT_begin_file("vportcap.c")
	.dwattr DW$101, DW_AT_begin_line(0x37a)
	.dwattr DW$101, DW_AT_end_line(0x37d)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$__configTransfer$24$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$__configTransfer$24$E)
	.dwendtag DW$101


DW$103	.dwtag  DW_TAG_loop
	.dwattr DW$103, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L40:1:1192527503")
	.dwattr DW$103, DW_AT_begin_file("vportcap.c")
	.dwattr DW$103, DW_AT_begin_line(0x34f)
	.dwattr DW$103, DW_AT_end_line(0x378)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$__configTransfer$10$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$__configTransfer$10$E)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$__configTransfer$13$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$__configTransfer$13$E)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$__configTransfer$14$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$__configTransfer$14$E)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$__configTransfer$15$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$__configTransfer$15$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$__configTransfer$16$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$__configTransfer$16$E)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$__configTransfer$17$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$__configTransfer$17$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$__configTransfer$11$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$__configTransfer$11$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$__configTransfer$12$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$__configTransfer$12$E)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$__configTransfer$18$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$__configTransfer$18$E)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$__configTransfer$19$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$__configTransfer$19$E)
	.dwendtag DW$103

	.dwattr DW$68, DW_AT_end_file("vportcap.c")
	.dwattr DW$68, DW_AT_end_line(0x416)
	.dwattr DW$68, DW_AT_end_column(0x01)
	.dwendtag DW$68

	.sect	".text"

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("_autoSync"), DW_AT_symbol_name("__autoSync")
	.dwattr DW$114, DW_AT_low_pc(__autoSync)
	.dwattr DW$114, DW_AT_high_pc(0x00)
	.dwattr DW$114, DW_AT_begin_file("vportcap.c")
	.dwattr DW$114, DW_AT_begin_line(0x501)
	.dwattr DW$114, DW_AT_begin_column(0x0d)
	.dwattr DW$114, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$114, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",1282,1

;******************************************************************************
;* FUNCTION NAME: __autoSync                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A3,A5,A6,B0,B4,B5,B6,SP,A30,A31,B29,B30,B31       *
;*   Regs Used         : A0,A3,A4,A5,A6,B0,B3,B4,B5,B6,SP,A30,A31,B29,B30,B31 *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                    *
;******************************************************************************
__autoSync:
;** --------------------------------------------------------------------------*
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$115, DW_AT_type(*DW$T$157)
	.dwattr DW$115, DW_AT_location[DW_OP_reg4]
;* 1284	-----------------------    C$7 = (*chan).base;
;* 1284	-----------------------    fid_stat = (unsigned)*(volatile int *)C$7>>12u&1;
;* 1287	-----------------------    ypos = _extu((unsigned)*(volatile int *)C$7, 4u, 20u);
;* 1290	-----------------------    offset = (*chan).nextEDMARlds*2;
;* 1292	-----------------------    if ( !(*chan).interlaced ) goto g7;

           LDW     .D1T1   *+A4(12),A3       ; |1284| 
||         MVK     .S1     231,A6            ; |1292| 
||         SUB     .L2     SP,8,SP           ; |1282| 

           NOP             3
           LDHU    .D1T1   *+A4[A6],A0       ; |1292| 
           LDW     .D1T2   *A3,B4            ; |1284| 
           NOP             4
           EXTU    .S2     B4,19,31,B4       ; |1284| 
           STW     .D2T2   B4,*+SP(4)        ; |1284| 

           MVK     .S1     142,A3            ; |1290| 
||         LDW     .D1T1   *A3,A5            ; |1287| 

   [!A0]   BNOP    .S1     L72,3             ; |1292| 
||         LDW     .D1T1   *+A4[A3],A3       ; |1290| 

           EXTU    .S1     A5,4,20,A5        ; |1287| 

           STW     .D2T1   A5,*+SP(8)        ; |1287| 
||         ADD     .L1     A3,A3,A3          ; |1290| 

           ; BRANCHCC OCCURS {L72}           ; |1292| 
;** --------------------------------------------------------------------------*
;* 1292	-----------------------    if ( fid_stat ) goto g4;
;* 1292	-----------------------    if ( ypos >= (*chan).numTotalLinesFld1 ) goto g6;

           LDW     .D2T2   *+SP(4),B0        ; |1292| 
||         MVK     .S1     143,A5            ; |1292| 

           NOP             4

   [!B0]   LDW     .D2T2   *+SP(8),B5        ; |1292| 
|| [!B0]   LDW     .D1T1   *+A4[A5],A5       ; |1292| 

           NOP             4
   [!B0]   CMPLT   .L2X    B5,A5,B4          ; |1292| 
           OR      .L2     B4,B0,B0          ; |1292| 

   [!B0]   BNOP    .S1     L71,4             ; |1292| 
|| [ B0]   LDW     .D2T2   *+SP(4),B4        ; |1292| 

           CMPEQ   .L2     B4,1,B0           ; |1292| 
           ; BRANCHCC OCCURS {L71}           ; |1292| 
;** --------------------------------------------------------------------------*
;**	-----------------------g4:
;* 1292	-----------------------    if ( fid_stat != 1 ) goto g7;

   [!B0]   BNOP    .S1     L72,1             ; |1292| 
||         MVK     .S2     125,B4            ; |1292| 

           MV      .L1X    B4,A5
|| [ B0]   LDW     .D2T2   *+SP(8),B4        ; |1292| 

   [ B0]   LDW     .D1T1   *+A4[A5],A5       ; |1292| 
           NOP             2
           ; BRANCHCC OCCURS {L72}           ; |1292| 
;** --------------------------------------------------------------------------*
;* 1292	-----------------------    if ( (unsigned)ypos > (*chan).numLinesFld1 ) goto g7;
           NOP             2
           CMPGTU  .L1X    B4,A5,A0          ; |1292| 

   [ A0]   ADD     .L2     8,SP,SP           ; |1299| 
|| [ A0]   B       .S1     L73               ; |1292| 

   [ A0]   RETNOP  .S2     B3,4              ; |1299| 
           ; BRANCHCC OCCURS {L73}           ; |1292| 
;** --------------------------------------------------------------------------*
L71:    
;**	-----------------------g6:
;** 732	-----------------------    C$3 = offset*4+(unsigned (* const)[12])chan+400;  // [28]
;** 732	-----------------------    C$5 = (unsigned (* const)[3])chan+388;  // [28]
;** 732	-----------------------    C$6 = (unsigned)(unsigned short)*C$5+0x1a00014u;  // [28]
;** 732	-----------------------    *(volatile unsigned *)C$6 = *(volatile unsigned *)C$6&0xffff0000u|(unsigned)(unsigned short)*C$3;  // [28]
;** 732	-----------------------    C$4 = (unsigned)(unsigned short)C$5[1]+0x1a00014u;  // [28]
;** 732	-----------------------    C$2 = (unsigned (* const)[3])chan+392;  // [28]
;** 732	-----------------------    *(volatile unsigned *)C$4 = *(volatile unsigned *)C$4&0xffff0000u|(unsigned)(unsigned short)C$3[4];  // [28]
;** 732	-----------------------    C$1 = (unsigned)(unsigned short)C$2[1]+0x1a00014u;  // [28]
;** 732	-----------------------    *(volatile unsigned *)C$1 = *(volatile unsigned *)C$1&0xffff0000u|(unsigned)(unsigned short)C$3[8];  // [28]
;**	-----------------------g7:
;**  	-----------------------    return;
           MVK     .S2     388,B4            ; |732| 
           ADD     .L2X    B4,A4,B4          ; |732| 
           LDHU    .D2T2   *B4,B6            ; |732| 
           ADDAW   .D1     A4,A3,A3          ; |732| 
           MVKL    .S1     0x1a00014,A5      ; |732| 
           MVKH    .S1     0x1a00014,A5      ; |732| 
           MVK     .S2     400,B5            ; |732| 

           ADD     .L1X    A5,B6,A3          ; |732| 
||         ADD     .L2X    B5,A3,B5          ; |732| 

           LDW     .D1T1   *A3,A5            ; |732| 
||         LDHU    .D2T2   *B5,B31           ; |732| 

           MVKL    .S1     0x1a00014,A31     ; |732| 
           MVKH    .S1     0x1a00014,A31     ; |732| 
           MVK     .S1     392,A6            ; |732| 
           ADD     .L1     A6,A4,A30         ; |732| 
           PACKHL2 .L1X    A5,B31,A5         ; |732| 
           STW     .D1T1   A5,*A3            ; |732| 
           LDHU    .D2T2   *+B4(4),B4        ; |732| 
           NOP             1
           LDHU    .D2T2   *+B5(16),B30      ; |732| 
           MVKL    .S2     0x1a00014,B29     ; |732| 
           MVKH    .S2     0x1a00014,B29     ; |732| 
           ADD     .L1X    A31,B4,A5         ; |732| 
           LDW     .D1T1   *A5,A3            ; |732| 
           NOP             4
           PACKHL2 .L1X    A3,B30,A3         ; |732| 
           STW     .D1T1   A3,*A5            ; |732| 
           LDHU    .D1T1   *+A30(4),A3       ; |732| 
           NOP             3
           LDHU    .D2T2   *+B5(32),B5       ; |732| 
           ADD     .L2X    B29,A3,B6         ; |732| 
           LDW     .D2T2   *B6,B4            ; |732| 
           NOP             4
           PACKHL2 .L2     B4,B5,B4          ; |732| 
           STW     .D2T2   B4,*B6            ; |732| 
;** --------------------------------------------------------------------------*
L72:    
           RETNOP  .S2     B3,3              ; |1299| 
           ADD     .L2     8,SP,SP           ; |1299| 
;** --------------------------------------------------------------------------*
L73:    
	.dwpsn	"vportcap.c",1299,1
           NOP             1
           ; BRANCH OCCURS {B3}              ; |1299| 
	.dwattr DW$114, DW_AT_end_file("vportcap.c")
	.dwattr DW$114, DW_AT_end_line(0x513)
	.dwattr DW$114, DW_AT_end_column(0x01)
	.dwendtag DW$114

	.sect	".text"

DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$116, DW_AT_low_pc(_mdBindDev)
	.dwattr DW$116, DW_AT_high_pc(0x00)
	.dwattr DW$116, DW_AT_begin_file("vportcap.c")
	.dwattr DW$116, DW_AT_begin_line(0x8d)
	.dwattr DW$116, DW_AT_begin_column(0x0c)
	.dwattr DW$116, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$116, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",142,1

;******************************************************************************
;* FUNCTION NAME: _mdBindDev                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                    *
;******************************************************************************
_mdBindDev:
;** --------------------------------------------------------------------------*
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$117, DW_AT_type(*DW$T$90)
	.dwattr DW$117, DW_AT_location[DW_OP_reg4]
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devid"), DW_AT_symbol_name("_devid")
	.dwattr DW$118, DW_AT_type(*DW$T$22)
	.dwattr DW$118, DW_AT_location[DW_OP_reg20]
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devParams"), DW_AT_symbol_name("_devParams")
	.dwattr DW$119, DW_AT_type(*DW$T$37)
	.dwattr DW$119, DW_AT_location[DW_OP_reg6]
;** 148	-----------------------    K$9 = C$10 = &portObjs[devid];
;** 148	-----------------------    *((volatile int *)(*(struct _PortObj *)(void *)C$10).base+192) = 32768;
;** 150	-----------------------    i = 0;
;** 150	-----------------------    if ( i >= 100000 ) goto g4;
;** 150	-----------------------    K$16 = 100000;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MVK     .S2     1216,B5           ; |148| 
||         MVKL    .S1     _portObjs,A3      ; |148| 
||         STW     .D2T2   B3,*SP--(8)       ; |142| 

           MPYLI   .M2     B5,B4,B5:B4       ; |148| 
||         MVKH    .S1     _portObjs,A3      ; |148| 
||         MVKL    .S2     0x186a0,B6        ; |150| 

           NOP             2
           MVK     .S1     48,A5             ; |148| 
           MVKH    .S2     0x186a0,B6        ; |150| 

           MVKL    .S2     0x8000,B4         ; |148| 
||         ADD     .L1X    A3,B4,A7          ; |148| 

           MVKH    .S2     0x8000,B4         ; |148| 
||         LDW     .D1T1   *+A7(4),A3        ; |148| 

           NOP             4

           ZERO    .L1     A3                ; |150| 
||         MVKL    .S1     0x186a0,A5        ; |150| 
||         STW     .D1T2   B4,*+A3[A5]       ; |148| 

           MV      .D1     A7,A4             ; |148| 
||         MV      .L1     A4,A3             ; |142| 
||         STW     .D2T1   A3,*+SP(4)        ; |150| 
||         MVKH    .S1     0x186a0,A5        ; |150| 

           LDW     .D2T2   *+SP(4),B4        ; |150| 
           NOP             4
           CMPLT   .L2X    B4,A5,B0          ; |150| 

   [!B0]   BNOP    .S1     L77,4             ; |150| 
|| [ B0]   LDW     .D2T2   *+SP(4),B5        ; |150| (P) <0,0>  ^ 

           ADD     .L2     1,B5,B7           ; |150| (P) <0,5>  ^ 
           ; BRANCHCC OCCURS {L77}           ; |150| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 150	-----------------------    i = i+1;
;** 150	-----------------------    if ( i < K$16 ) goto g3;

           STW     .D2T2   B7,*+SP(4)        ; |150| (P) <0,6>  ^ 
||         MVK     .L1     0x1,A1

           LDW     .D2T2   *+SP(4),B4        ; |150| (P) <0,7>  ^ 
           NOP             4
           CMPLT   .L2     B4,B6,B0          ; |150| (P) <0,12>  ^ 
   [!B0]   ZERO    .L1     A1                ; |150| (P) <0,13>  ^ 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 150
;*      Loop closing brace source line   : 150
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        0     
;*      .D units                     0        3*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        3*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop is interruptible
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L74:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L75:    ; PIPED LOOP KERNEL
DW$L$_mdBindDev$4$B:
   [ A1]   LDW     .D2T2   *+SP(4),B5        ; |150| <1,0>  ^ 
           NOP             3
           MV      .L1     A1,A0             ; |150| <0,18> Split a long life
           ADD     .L2     1,B5,B7           ; |150| <1,5>  ^ 
   [ A0]   STW     .D2T2   B7,*+SP(4)        ; |150| <1,6>  ^ 
   [ A0]   LDW     .D2T2   *+SP(4),B4        ; |150| <1,7>  ^ 
   [ A1]   BNOP    .S1     L75,3             ; |150| <0,22> 
           CMPLT   .L2     B4,B6,B0          ; |150| <1,12>  ^ 
   [!B0]   ZERO    .L1     A1                ; |150| <1,13>  ^ 
DW$L$_mdBindDev$4$E:
;** --------------------------------------------------------------------------*
L76:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L77:    
;**	-----------------------g4:
;** 152	-----------------------    *devp = K$9;
;** 153	-----------------------    return mdControlChan(K$9, 0x10000002u, devParams);
           CALL    .S1     _mdControlChan    ; |153| 
           ADDKPC  .S2     RL29,B3,1         ; |153| 
           STW     .D1T1   A4,*A3            ; |152| 
           MVKL    .S2     0x10000002,B4     ; |153| 
           MVKH    .S2     0x10000002,B4     ; |153| 
RL29:      ; CALL OCCURS {_mdControlChan}    ; |153| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(8),B3       ; |154| 
           NOP             4
	.dwpsn	"vportcap.c",154,1
           RETNOP  .S2     B3,5              ; |154| 
           ; BRANCH OCCURS {B3}              ; |154| 

DW$120	.dwtag  DW_TAG_loop
	.dwattr DW$120, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L75:1:1192527503")
	.dwattr DW$120, DW_AT_begin_file("vportcap.c")
	.dwattr DW$120, DW_AT_begin_line(0x96)
	.dwattr DW$120, DW_AT_end_line(0x96)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_mdBindDev$4$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_mdBindDev$4$E)
	.dwendtag DW$120

	.dwattr DW$116, DW_AT_end_file("vportcap.c")
	.dwattr DW$116, DW_AT_end_line(0x9a)
	.dwattr DW$116, DW_AT_end_column(0x01)
	.dwendtag DW$116

	.sect	".text"

DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$122, DW_AT_low_pc(_mdCreateChan)
	.dwattr DW$122, DW_AT_high_pc(0x00)
	.dwattr DW$122, DW_AT_begin_file("vportcap.c")
	.dwattr DW$122, DW_AT_begin_line(0xce)
	.dwattr DW$122, DW_AT_begin_column(0x0d)
	.dwattr DW$122, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$122, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",208,1

;******************************************************************************
;* FUNCTION NAME: _mdCreateChan                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A11,A12,A13,A14,A15,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Local Frame Size  : 0 Args + 4 Auto + 40 Save = 44 byte                  *
;******************************************************************************
_mdCreateChan:
;** --------------------------------------------------------------------------*
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$123, DW_AT_type(*DW$T$90)
	.dwattr DW$123, DW_AT_location[DW_OP_reg4]
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$124, DW_AT_type(*DW$T$37)
	.dwattr DW$124, DW_AT_location[DW_OP_reg20]
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$125, DW_AT_type(*DW$T$58)
	.dwattr DW$125, DW_AT_location[DW_OP_reg6]
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$126, DW_AT_type(*DW$T$22)
	.dwattr DW$126, DW_AT_location[DW_OP_reg22]
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanParams"), DW_AT_symbol_name("_chanParams")
	.dwattr DW$127, DW_AT_type(*DW$T$37)
	.dwattr DW$127, DW_AT_location[DW_OP_reg8]
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$128, DW_AT_type(*DW$T$78)
	.dwattr DW$128, DW_AT_location[DW_OP_reg24]
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$129, DW_AT_type(*DW$T$37)
	.dwattr DW$129, DW_AT_location[DW_OP_reg10]
;** 208	-----------------------    name = name;
;** 215	-----------------------    if ( mode != 1 ) goto g3;
;** 218	-----------------------    if ( *name++ == 47 ) goto g4;

           MV      .L1X    SP,A31            ; |208| 
||         STW     .D2T1   A11,*SP--(48)     ; |208| 
||         CMPEQ   .L2     B6,1,B0           ; |215| 
||         ZERO    .D1     A0                ; |223| 
||         MVK     .S1     47,A5             ; |218| 

           STDW    .D1T1   A13:A12,*-A31(32)
||         STW     .D2T2   B3,*+SP(12)
||         MV      .L1     A6,A12            ; |208| 

           STDW    .D1T1   A15:A14,*-A31(24)
||         STDW    .D2T2   B11:B10,*+SP(32)
||         MV      .L2X    A4,B11            ; |208| 
||         MV      .S2     B8,B10            ; |208| 

           STDW    .D2T2   B13:B12,*+SP(40)
||         MV      .L2     B4,B13            ; |208| 
|| [ B0]   MVK     .S2     65,B4             ; |223| 

   [ B0]   LDB     .D1T1   *A12++,A3         ; |218| 
||         MV      .L2X    A8,B12            ; |208| 

           NOP             4
   [ B0]   CMPEQ   .L1     A3,A5,A0          ; |218| 

   [!A0]   LDDW    .D2T2   *+SP(32),B11:B10  ; |276| 
|| [ A0]   B       .S2     L78               ; |218| 
|| [!A0]   MV      .L1X    SP,A31            ; |276| 
|| [ A0]   MVKL    .S1     SL9+0,A4          ; |223| 
|| [ A0]   LDB     .D1T1   *A12,A3           ; |223| 

   [!A0]   LDDW    .D2T2   *+SP(40),B13:B12  ; |276| 
|| [!A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |276| 
|| [ A0]   MVKH    .S1     SL9+0,A4          ; |223| 

   [!A0]   LDDW    .D1T1   *+A31(24),A15:A14 ; |276| 
           NOP             1
   [!A0]   RET     .S2     B3                ; |276| 

   [!A0]   LDW     .D2T1   *++SP(48),A11     ; |276| 
|| [!A0]   MVK     .S1     0xfffffff6,A3     ; |219| 
||         SUB     .L1X    A3,B4,A11         ; |223| 

           ; BRANCHCC OCCURS {L78}           ; |218| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 219	-----------------------    return (-10);
           NOP             3
           MV      .L1     A3,A4             ; |275| 
           ; BRANCH OCCURS {B3}              ; |276| 
;** --------------------------------------------------------------------------*
L78:    
;**	-----------------------g4:
;** 223	-----------------------    C$14 = *name-65;
;** 223	-----------------------    assert(C$14 < 2);
           CMPLT   .L1     A11,2,A0          ; |223| 

   [ A0]   B       .S2     L79               ; |223| 
|| [ A0]   MVK     .S1     604,A3            ; |226| 

   [!A0]   CALL    .S1     __abort_msg       ; |223| 
|| [ A0]   MPYLI   .M1     A3,A11,A7:A6      ; |226| 

           NOP             4
           ; BRANCHCC OCCURS {L79}           ; |223| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL30,B3,0         ; |223| 
RL30:      ; CALL OCCURS {__abort_msg}       ; |223| 
           MVK     .S1     604,A3            ; |226| 
           MPYLI   .M1     A3,A11,A7:A6      ; |226| 
           NOP             4
;** --------------------------------------------------------------------------*
L79:    
;** 225	-----------------------    port = (struct _PortObj *)devp;
;** 226	-----------------------    C$13 = _mpyli(604, C$14);
;** 226	-----------------------    U$31 = _lo(C$13);
;** 226	-----------------------    U$33 = *(_lo(C$13)+port+548);
;** 226	-----------------------    if ( (void *)U$33 == (K$36 = (void *)0xffffffffu) ) goto g6;

           MVK     .S2     137,B5            ; |226| 
||         ADD     .L2X    B13,A6,B4         ; |226| 
||         MV      .L1X    B13,A11           ; |225| 
||         ADD     .S1     1,A12,A4          ; |228| 
||         MV      .D1     A6,A12            ; |226| 

           LDW     .D2T2   *+B4[B5],B5       ; |226| 
||         MVK     .L2     0xffffffff,B4     ; |226| 
||         ADD     .L1X    B13,A6,A13        ; |228| 
||         MVK     .S2     138,B13           ; |228| 

           NOP             4
           CMPEQ   .L2     B5,B4,B0          ; |226| 

   [ B0]   BNOP    .S1     L80,4             ; |226| 
|| [ B0]   LDW     .D1T1   *A11,A3           ; |231| 
|| [!B0]   LDW     .D2T2   *B5,B5            ; |228| 

           AND     .L1     1,A3,A0           ; |231| 
|| [!B0]   CALL    .S2     B5                ; |228| 

           ; BRANCHCC OCCURS {L80}           ; |226| 
;** --------------------------------------------------------------------------*
;** 228	-----------------------    *(U$31+port+552) = (*(*U$33).open)(++name, (-1));
           ADDKPC  .S2     RL31,B3,4         ; |228| 
RL31:      ; CALL OCCURS {A3}                ; |228| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B13,A3
           STW     .D1T1   A4,*+A13[A3]      ; |228| 
           LDW     .D1T1   *A11,A3           ; |231| 
           NOP             4
           AND     .L1     1,A3,A0           ; |231| 
;** --------------------------------------------------------------------------*
L80:    
;**	-----------------------g6:
;** 231	-----------------------    C$12 = (*port).status;
;** 231	-----------------------    if ( C$12&1 ) goto g8;

           OR      .L1     1,A3,A4           ; |232| 
|| [!A0]   LDW     .D1T1   *+A11(4),A3       ; |233| 
|| [ A0]   B       .S2     L81               ; |231| 
||         MVK     .S1     260,A5            ; |237| 

   [!A0]   STW     .D1T1   A4,*A11           ; |232| 
||         MVK     .S2     324,B4            ; |233| 

           NOP             3

   [ A0]   ADD     .S1     A12,A11,A3        ; |243| 
||         ADD     .L1     A5,A3,A4          ; |237| 

           ; BRANCHCC OCCURS {L81}           ; |231| 
;** --------------------------------------------------------------------------*
;** 232	-----------------------    (*port).status = C$12|1;
;** 233	-----------------------    C$11 = (*port).base;
;** 233	-----------------------    base = (volatile int *)(C$11+324);
;** 237	-----------------------    C$10 = (volatile int *)C$11+260;
;** 237	-----------------------    *C$10 = *C$10|0x80000000;
;** 239	-----------------------    *base = *base|0x80000000;

           LDW     .D1T1   *A4,A5            ; |237| 
||         ADD     .L2X    B4,A3,B4          ; |233| 
||         ADD     .L1     A12,A11,A3        ; |243| 

           NOP             4
           SET     .S1     A5,31,31,A5       ; |237| 
           STW     .D1T1   A5,*A4            ; |237| 
           LDW     .D2T2   *B4,B5            ; |239| 
           NOP             4
           SET     .S2     B5,31,31,B5       ; |239| 
           STW     .D2T2   B5,*B4            ; |239| 
;** --------------------------------------------------------------------------*
L81:    
;**	-----------------------g8:
;** 212	-----------------------    retVal = 0;
;** 243	-----------------------    if ( *((struct $$fake3 *)(struct $$fake3 (*)[2])port+U$31+8)&1u ) goto g23;

           LDW     .D1T1   *+A3(8),A4        ; |243| 
||         ADD     .L1     A12,A11,A5        ; |247| 
||         ADD     .S1     A12,A11,A31       ; |245| 
||         MVK     .S2     126,B7            ; |250| 
||         ADD     .L2X    8,A11,B13         ; |250| 
||         ZERO    .D2     B6                ; |250| 

           ADD     .L1     8,A31,A14         ; |245| 

           MVK     .S1     384,A6
||         ZERO    .D1     A30               ; |212| 
||         MVK     .S2     117,B8            ; |249| 

           ADD     .L2X    8,A5,B4           ; |247| 
||         ADD     .L1     12,A14,A12
||         ADD     .S1     A6,A14,A13
||         STW     .D2T1   A30,*+SP(4)       ; |212| 
||         ZERO    .D1     A15               ; |251| 
||         MVK     .S2     116,B9            ; |248| 

           ADD     .L1     8,A31,A11         ; |245| 
           AND     .L1     1,A4,A0           ; |243| 

   [ A0]   BNOP    .S1     L86,4             ; |243| 
|| [!A0]   LDW     .D2T2   *B4,B5            ; |247| 

           OR      .L2     1,B5,B5           ; |247| 
           ; BRANCHCC OCCURS {L86}           ; |243| 
;** --------------------------------------------------------------------------*
;** 245	-----------------------    C$8 = (struct $$fake3 *)((struct $$fake3 (*)[2])port+8)+U$31;
;** 245	-----------------------    chan = (struct $$fake3 *)C$8;
;** 247	-----------------------    C$9 = (struct $$fake3 *)(struct $$fake3 (*)[2])port+U$31+8;
;** 247	-----------------------    (*C$9).status = (*C$9).status|1u;
;** 248	-----------------------    (*C$9).cbFxn = cbFxn;
;** 249	-----------------------    (*C$9).cbArg = (int)cbArg;
;** 250	-----------------------    U$69 = (struct $$fake3 (*)[2])port+8;
;** 250	-----------------------    U$71 = (struct $$fake3 *)C$8;
;** 250	-----------------------    (*chan).numFrms = 0u;
;**  	-----------------------    U$85 = (unsigned *)C$8+12;
;**  	-----------------------    U$91 = (unsigned (*)[3])C$8+384;
;** 251	-----------------------    j = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           STW     .D2T2   B5,*B4            ; |247| 
||         MVKL    .S2     _EDMA_open,B5     ; |253| 
||         MV      .L1X    B7,A4

           MVKH    .S2     _EDMA_open,B5     ; |253| 
||         STW     .D2T1   A10,*+B4[B8]      ; |249| 
||         MV      .L1X    B6,A3

           STW     .D2T2   B10,*+B4[B9]      ; |248| 

           CALL    .S2     B5                ; |253| 
||         STW     .D1T1   A3,*+A11[A4]      ; |250| 

           LDW     .D1T1   *++A12,A4         ; |253| 
	.dwpsn	"vportcap.c",251,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L82:    
DW$L$_mdCreateChan$12$B:
;**	-----------------------g10:
;** 253	-----------------------    *(++U$91) = T$1 = EDMA_open((int)*(++U$85), 1u);
;** 253	-----------------------    if ( !T$1 ) goto g16;

           MVK     .L2     0x1,B4            ; |253| 
||         ADDKPC  .S2     RL32,B3,0         ; |253| 

RL32:      ; CALL OCCURS {_EDMA_open}        ; |253| 
DW$L$_mdCreateChan$12$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$13$B:

           MVKL    .S2     _EDMA_allocTable,B4 ; |253| 
||         MV      .L1     A4,A0             ; |253| 

           MVKH    .S2     _EDMA_allocTable,B4 ; |253| 
|| [!A0]   B       .S1     L83               ; |253| 
||         STW     .D1T1   A0,*++A13         ; |253| 
|| [!A0]   MVK     .L1     0xfffffffb,A3     ; |260| 

   [ A0]   CALL    .S2     B4                ; |253| 
|| [!A0]   STW     .D2T1   A3,*+SP(4)        ; |260| 

           NOP             4
           ; BRANCHCC OCCURS {L83}           ; |253| 
DW$L$_mdCreateChan$13$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$14$B:
;** 253	-----------------------    C$7 = (j<<4)+(unsigned (*)[12])chan+400;
;** 253	-----------------------    *C$7 = T$2 = EDMA_allocTable((-1));
;** 253	-----------------------    if ( !T$2 ) goto g16;

           MVK     .L1     0xffffffff,A4     ; |253| 
||         ADDKPC  .S2     RL33,B3,0         ; |253| 

RL33:      ; CALL OCCURS {_EDMA_allocTable}  ; |253| 
DW$L$_mdCreateChan$14$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$15$B:

           SHL     .S1     A15,4,A3          ; |253| 
||         MV      .L1     A4,A0             ; |253| 

   [!A0]   B       .S1     L83               ; |253| 
||         ADD     .L1     A11,A3,A3         ; |253| 

           MVK     .S2     400,B4            ; |253| 

           ADD     .L2X    B4,A3,B10         ; |253| 
|| [ A0]   MVKL    .S2     _EDMA_allocTable,B4 ; |253| 
|| [!A0]   MVK     .L1     0xfffffffb,A3     ; |260| 

   [ A0]   MVKH    .S2     _EDMA_allocTable,B4 ; |253| 
||         STW     .D2T1   A0,*B10           ; |253| 

   [ A0]   CALL    .S2     B4                ; |253| 
|| [!A0]   STW     .D2T1   A3,*+SP(4)        ; |260| 

           NOP             1
           ; BRANCHCC OCCURS {L83}           ; |253| 
DW$L$_mdCreateChan$15$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$16$B:
;** 253	-----------------------    C$7[1] = T$3 = EDMA_allocTable((-1));
;** 253	-----------------------    if ( !T$3 ) goto g16;
           ADDKPC  .S2     RL34,B3,2         ; |253| 
           MVK     .L1     0xffffffff,A4     ; |253| 
RL34:      ; CALL OCCURS {_EDMA_allocTable}  ; |253| 
DW$L$_mdCreateChan$16$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$17$B:

           MVKL    .S2     _EDMA_allocTable,B4 ; |253| 
||         MV      .L1     A4,A0             ; |253| 

   [!A0]   B       .S1     L83               ; |253| 
||         MVKH    .S2     _EDMA_allocTable,B4 ; |253| 
||         STW     .D2T1   A0,*+B10(4)       ; |253| 
|| [!A0]   MVK     .L1     0xfffffffb,A3     ; |260| 

   [ A0]   CALL    .S2     B4                ; |253| 
|| [!A0]   STW     .D2T1   A3,*+SP(4)        ; |260| 

           NOP             4
           ; BRANCHCC OCCURS {L83}           ; |253| 
DW$L$_mdCreateChan$17$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$18$B:
;** 253	-----------------------    C$7[2] = T$4 = EDMA_allocTable((-1));
;** 253	-----------------------    if ( !T$4 ) goto g16;

           MVK     .L1     0xffffffff,A4     ; |253| 
||         ADDKPC  .S2     RL35,B3,0         ; |253| 

RL35:      ; CALL OCCURS {_EDMA_allocTable}  ; |253| 
DW$L$_mdCreateChan$18$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$19$B:

           MVKL    .S2     _EDMA_allocTable,B4 ; |253| 
||         MV      .L1     A4,A0             ; |253| 

   [!A0]   B       .S1     L83               ; |253| 
||         MVKH    .S2     _EDMA_allocTable,B4 ; |253| 
||         STW     .D2T1   A0,*+B10(8)       ; |253| 
|| [!A0]   MVK     .L1     0xfffffffb,A3     ; |260| 

   [ A0]   CALL    .S2     B4                ; |253| 
|| [!A0]   STW     .D2T1   A3,*+SP(4)        ; |260| 

           NOP             4
           ; BRANCHCC OCCURS {L83}           ; |253| 
DW$L$_mdCreateChan$19$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$20$B:
;** 253	-----------------------    C$7[3] = T$5 = EDMA_allocTable((-1));
;** 253	-----------------------    if ( !T$5 ) goto g16;

           MVK     .L1     0xffffffff,A4     ; |253| 
||         ADDKPC  .S2     RL36,B3,0         ; |253| 

RL36:      ; CALL OCCURS {_EDMA_allocTable}  ; |253| 
DW$L$_mdCreateChan$20$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$21$B:

           MVKL    .S2     _EDMA_intAlloc,B4 ; |253| 
||         MV      .L1     A4,A0             ; |253| 

   [!A0]   B       .S1     L83               ; |253| 
||         MVKH    .S2     _EDMA_intAlloc,B4 ; |253| 
||         STW     .D2T1   A0,*+B10(12)      ; |253| 
|| [!A0]   MVK     .L1     0xfffffffb,A3     ; |260| 

   [ A0]   CALL    .S2     B4                ; |253| 
|| [ A0]   LDW     .D1T1   *A12,A4           ; |253| 

           NOP             2
   [!A0]   STW     .D2T1   A3,*+SP(4)        ; |260| 
           NOP             1
           ; BRANCHCC OCCURS {L83}           ; |253| 
DW$L$_mdCreateChan$21$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$22$B:
;** 253	-----------------------    *(j*4+(int (*)[3])chan+448) = T$6 = EDMA_intAlloc((int)*U$85);
;** 253	-----------------------    if ( T$6 != (-1) ) goto g17;
           ADDKPC  .S2     RL37,B3,0         ; |253| 
RL37:      ; CALL OCCURS {_EDMA_intAlloc}    ; |253| 
DW$L$_mdCreateChan$22$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$23$B:

           CMPEQ   .L1     A4,-1,A0          ; |253| 
||         MVK     .S1     112,A5            ; |253| 
||         ADDAW   .D1     A11,A15,A3        ; |253| 

   [!A0]   BNOP    .S2     L84,1             ; |253| 
||         STW     .D1T1   A4,*+A3[A5]       ; |253| 
|| [ A0]   MVK     .L1     0xfffffffb,A3     ; |260| 
|| [!A0]   ADD     .S1     1,A15,A15         ; |251| 

   [!A0]   LDW     .D2T1   *+SP(4),A3
           NOP             2
   [ A0]   STW     .D2T1   A3,*+SP(4)        ; |260| 
           ; BRANCHCC OCCURS {L84}           ; |253| 
DW$L$_mdCreateChan$23$E:
;** --------------------------------------------------------------------------*
L83:    
DW$L$_mdCreateChan$24$B:
;**	-----------------------g16:
;** 260	-----------------------    retVal = (-5);

           LDW     .D2T1   *+SP(4),A3
||         ADD     .L1     1,A15,A15         ; |251| 

           NOP             3
DW$L$_mdCreateChan$24$E:
;** --------------------------------------------------------------------------*
L84:    
DW$L$_mdCreateChan$25$B:
;**	-----------------------g17:
;** 251	-----------------------    U$135 = retVal == 0;
;** 251	-----------------------    if ( ((++j) < 3)&U$135 ) goto g10;
;** 263	-----------------------    if ( !((chanParams != K$36)&U$135) ) goto g20;

           CMPLT   .L1     A15,3,A31         ; |251| 
||         MVKL    .S2     _EDMA_open,B5     ; |253| 

           CMPEQ   .L1     A3,0,A5           ; |251| 
||         MVKH    .S2     _EDMA_open,B5     ; |253| 

           AND     .L1     A5,A31,A0         ; |251| 

   [ A0]   B       .S1     L82               ; |251| 
|| [ A0]   LDW     .D1T1   *++A12,A4         ; |253| 
|| [!A0]   MVK     .L2     0xffffffff,B4     ; |226| 
|| [!A0]   ZERO    .L1     A3                ; |263| 

   [ A0]   CALL    .S2     B5                ; |253| 
|| [!A0]   CMPEQ   .L2     B12,B4,B0         ; |263| 

	.dwpsn	"vportcap.c",262,0
           NOP             4
           ; BRANCHCC OCCURS {L82}           ; |251| 
DW$L$_mdCreateChan$25$E:
;** --------------------------------------------------------------------------*

   [!B0]   MVK     .L1     0x1,A3            ; |263| 
||         MVKL    .S2     0x10000003,B4     ; |264| 
||         MV      .S1X    B12,A6            ; |264| 
||         MV      .D1     A14,A4            ; |264| 

           AND     .L1     A5,A3,A0          ; |263| 
||         MVKH    .S2     0x10000003,B4     ; |264| 

   [!A0]   B       .S1     L85               ; |263| 

   [ A0]   CALL    .S1     _mdControlChan    ; |264| 
|| [!A0]   LDW     .D2T1   *+SP(4),A0

           NOP             4
           ; BRANCHCC OCCURS {L85}           ; |263| 
;** --------------------------------------------------------------------------*
;** 264	-----------------------    retVal = mdControlChan(U$71, 0x10000003u, chanParams);
           ADDKPC  .S2     RL38,B3,0         ; |264| 
RL38:      ; CALL OCCURS {_mdControlChan}    ; |264| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+SP(4)        ; |264| 
           LDW     .D2T1   *+SP(4),A0
           NOP             4
;** --------------------------------------------------------------------------*
L85:    
;**	-----------------------g20:
;** 267	-----------------------    if ( retVal ) goto g22;
;** 269	-----------------------    *chanp = U$71;
;** 270	-----------------------    return retVal;

   [!A0]   B       .S1     L87               ; |270| 
|| [!A0]   LDW     .D2T2   *+SP(12),B3       ; |276| 
|| [!A0]   MV      .L1X    SP,A31            ; |276| 
||         MV      .D1     A0,A3             ; |270| 

   [ A0]   CALL    .S1     _mdDeleteChan     ; |271| 
|| [!A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |276| 
||         MV      .L1X    B13,A4            ; |271| 
|| [!A0]   LDDW    .D2T2   *+SP(40),B13:B12  ; |276| 

   [!A0]   STW     .D2T1   A14,*B11          ; |269| 
|| [!A0]   MV      .L1     A3,A4             ; |275| 

   [!A0]   LDDW    .D1T1   *+A31(24),A15:A14 ; |276| 
|| [!A0]   LDDW    .D2T2   *+SP(32),B11:B10  ; |276| 

   [!A0]   LDW     .D2T1   *++SP(48),A11     ; |276| 
   [!A0]   RET     .S2     B3                ; |276| 
           ; BRANCHCC OCCURS {L87}           ; |270| 
;** --------------------------------------------------------------------------*
;**	-----------------------g22:
;** 271	-----------------------    mdDeleteChan(U$69);
;** 272	-----------------------    *chanp = K$36;
           ADDKPC  .S2     RL39,B3,0         ; |271| 
RL39:      ; CALL OCCURS {_mdDeleteChan}     ; |271| 
;** --------------------------------------------------------------------------*
           MVK     .L2     0xffffffff,B4     ; |226| 
           STW     .D2T2   B4,*B11           ; |272| 
;** --------------------------------------------------------------------------*
L86:    
;**	-----------------------g23:
;** 275	-----------------------    return retVal;
           LDW     .D2T2   *+SP(12),B3       ; |276| 
           LDW     .D2T1   *+SP(4),A3
           MV      .L1X    SP,A31            ; |276| 
           LDDW    .D1T1   *+A31(24),A15:A14 ; |276| 
           LDDW    .D2T2   *+SP(32),B11:B10  ; |276| 

           LDDW    .D1T1   *+A31(16),A13:A12 ; |276| 
||         LDDW    .D2T2   *+SP(40),B13:B12  ; |276| 

           RET     .S2     B3                ; |276| 
||         LDW     .D2T1   *++SP(48),A11     ; |276| 
||         MV      .L1     A3,A4             ; |275| 

;** --------------------------------------------------------------------------*
L87:    
	.dwpsn	"vportcap.c",276,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |276| 

DW$130	.dwtag  DW_TAG_loop
	.dwattr DW$130, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L82:1:1192527503")
	.dwattr DW$130, DW_AT_begin_file("vportcap.c")
	.dwattr DW$130, DW_AT_begin_line(0xfb)
	.dwattr DW$130, DW_AT_end_line(0x106)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_mdCreateChan$12$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_mdCreateChan$12$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_mdCreateChan$13$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_mdCreateChan$13$E)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_mdCreateChan$14$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_mdCreateChan$14$E)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$_mdCreateChan$15$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$_mdCreateChan$15$E)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$_mdCreateChan$16$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$_mdCreateChan$16$E)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_mdCreateChan$17$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_mdCreateChan$17$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_mdCreateChan$18$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_mdCreateChan$18$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_mdCreateChan$19$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_mdCreateChan$19$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_mdCreateChan$20$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_mdCreateChan$20$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_mdCreateChan$21$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_mdCreateChan$21$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_mdCreateChan$22$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_mdCreateChan$22$E)
DW$142	.dwtag  DW_TAG_loop_range
	.dwattr DW$142, DW_AT_low_pc(DW$L$_mdCreateChan$23$B)
	.dwattr DW$142, DW_AT_high_pc(DW$L$_mdCreateChan$23$E)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$_mdCreateChan$24$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$_mdCreateChan$24$E)
DW$144	.dwtag  DW_TAG_loop_range
	.dwattr DW$144, DW_AT_low_pc(DW$L$_mdCreateChan$25$B)
	.dwattr DW$144, DW_AT_high_pc(DW$L$_mdCreateChan$25$E)
	.dwendtag DW$130

	.dwattr DW$122, DW_AT_end_file("vportcap.c")
	.dwattr DW$122, DW_AT_end_line(0x114)
	.dwattr DW$122, DW_AT_end_column(0x01)
	.dwendtag DW$122

	.sect	".text"

DW$145	.dwtag  DW_TAG_subprogram, DW_AT_name("captureEdmaISR"), DW_AT_symbol_name("_captureEdmaISR")
	.dwattr DW$145, DW_AT_low_pc(_captureEdmaISR)
	.dwattr DW$145, DW_AT_high_pc(0x00)
	.dwattr DW$145, DW_AT_begin_file("vportcap.c")
	.dwattr DW$145, DW_AT_begin_line(0x1c0)
	.dwattr DW$145, DW_AT_begin_column(0x0d)
	.dwattr DW$145, DW_AT_frame_base[DW_OP_breg31 56]
	.dwattr DW$145, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",449,1

;******************************************************************************
;* FUNCTION NAME: _captureEdmaISR                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Local Frame Size  : 0 Args + 12 Auto + 44 Save = 56 byte                 *
;******************************************************************************
_captureEdmaISR:
;** --------------------------------------------------------------------------*
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$146, DW_AT_type(*DW$T$22)
	.dwattr DW$146, DW_AT_location[DW_OP_reg4]
;**  	-----------------------    U$10 = &portObjs+8;
;**  	-----------------------    U$11 = (struct $$fake3 *)U$10;
;** 455	-----------------------    L$1 = 3;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           STW     .D2T1   A15,*SP--(56)     ; |449| 
||         MV      .L1X    SP,A31            ; |449| 

           STDW    .D2T2   B11:B10,*+SP(40)

           STW     .D2T2   B3,*+SP(36)
||         MVKL    .S1     _portObjs+8,A13
||         STDW    .D1T1   A13:A12,*-A31(32)

           MVKH    .S1     _portObjs+8,A13
||         STDW    .D2T2   B13:B12,*+SP(48)
||         MVK     .L2     0x3,B4            ; |455| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         MVK     .L2     0x2,B4
||         STW     .D2T2   B4,*+SP(4)

           MV      .L2X    A13,B10
||         STW     .D2T2   B4,*+SP(8)
||         STW     .D1T1   A14,*-A31(24)

           LDW     .D2T2   *B10,B4           ; |459| 
           MV      .L1     A13,A11
           ZERO    .S1     A10
	.dwpsn	"vportcap.c",455,0

           ADD     .L1     A10,A11,A3        ; |459| 
||         MVK     .S1     448,A4            ; |459| 
||         MV      .D1     A4,A12            ; |449| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L88
;** --------------------------------------------------------------------------*
L88:    
DW$L$_captureEdmaISR$2$B:
;**	-----------------------g2:
;**  	-----------------------    U$14 = U$11;
;**  	-----------------------    L$2 = 2;
;**  	-----------------------    U$13 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 2, 2)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwpsn	"vportcap.c",456,0
           NOP             1
DW$L$_captureEdmaISR$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L89:    
DW$L$_captureEdmaISR$3$B:
;**	-----------------------g3:
;** 457	-----------------------    chan = U$14;
;** 457	-----------------------    Q$2 = 112;
;** 457	-----------------------    Q$1 = 92;
;** 459	-----------------------    if ( !((*chan).status&4u) ) goto g26;

           ADD     .L1     A4,A3,A3          ; |459| 
||         AND     .L2     4,B4,B0           ; |459| 
||         MVK     .S2     0x5c,B7           ; |457| 
||         MVK     .S1     0x70,A7           ; |457| 

   [!B0]   BNOP    .S1     L97,4             ; |459| 
|| [ B0]   LDW     .D1T1   *A3,A4            ; |459| 
|| [!B0]   LDW     .D2T2   *+SP(8),B4

           CMPEQ   .L1     A12,A4,A0         ; |459| 
           ; BRANCHCC OCCURS {L97}           ; |459| 
DW$L$_captureEdmaISR$3$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$4$B:
;** 459	-----------------------    U$11 = (struct $$fake3 *)U$10;
;** 459	-----------------------    C$6 = U$11+U$13+448;
;** 459	-----------------------    if ( tcc == *C$6 ) goto g6;
;** 459	-----------------------    if ( tcc != C$6[1] ) goto g26;

   [!A0]   LDW     .D1T2   *+A3(4),B4        ; |459| 
||         MV      .L1     A11,A13           ; |459| 

           NOP             4

           MVK     .S2     576,B4            ; |462| 
|| [!A0]   CMPEQ   .L1X    A12,B4,A3         ; |459| 

           ADD     .L2     B4,B10,B4         ; |462| 
|| [!A0]   STW     .D2T1   A3,*+SP(12)       ; |459| 

           LDW     .D2T1   *+SP(12),A3       ; |459| 
           NOP             4
           OR      .L1     A3,A0,A0          ; |459| 

   [ A0]   LDHU    .D2T2   *B4,B0            ; |462| 
|| [!A0]   B       .S2     L97               ; |459| 
|| [ A0]   MVKL    .S1     0x1a0000c,A14
|| [!A0]   MVK     .L2     0x1,B0            ; nullify predicate

   [ A0]   MVKH    .S1     0x1a0000c,A14
|| [!A0]   LDW     .D2T2   *+SP(8),B4

           NOP             3
   [!B0]   B       .S1     L90               ; |462| 
           ; BRANCHCC OCCURS {L97}           ; |459| 
DW$L$_captureEdmaISR$4$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$5$B:
;**	-----------------------g6:
;**  	-----------------------    K$117 = 0x1a0000cu;
;** 462	-----------------------    if ( !(*chan).autoSyncEnable ) goto g8;

   [ B0]   CALL    .S2     __autoSync        ; |463| 
|| [!B0]   MVK     .S1     132,A31           ; |475| 
|| [!B0]   MV      .L1X    B10,A3

   [!B0]   MVK     .S2     133,B4            ; |478| 
|| [!B0]   MVK     .S1     131,A5            ; |474| 
|| [!B0]   LDW     .D1T1   *+A3[A31],A9      ; |475| 

   [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |478| 
|| [!B0]   LDW     .D1T1   *+A3[A7],A4       ; |469| 

   [!B0]   LDW     .D1T2   *+A3[A5],B8       ; |474| 
           NOP             1
           ; BRANCHCC OCCURS {L90}           ; |462| 
DW$L$_captureEdmaISR$5$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$6$B:
;** 463	-----------------------    _autoSync(chan);

           ADDKPC  .S2     RL40,B3,0         ; |463| 
||         MV      .L1X    B10,A4            ; |463| 

RL40:      ; CALL OCCURS {__autoSync}        ; |463| 

           MVK     .S1     132,A31           ; |475| 
||         MV      .L1X    B10,A3
||         MVK     .S2     133,B4            ; |478| 

           LDW     .D1T1   *+A3[A31],A9      ; |475| 
||         LDW     .D2T2   *+B10[B4],B4      ; |478| 
||         MVK     .S1     131,A5            ; |474| 

           LDW     .D1T1   *+A3[A7],A4       ; |469| 
           LDW     .D1T2   *+A3[A5],B8       ; |474| 
           NOP             1
DW$L$_captureEdmaISR$6$E:
;** --------------------------------------------------------------------------*
L90:    
DW$L$_captureEdmaISR$7$B:
;**	-----------------------g8:
;** 469	-----------------------    (*chan).nextEDMARlds = tcc != *(Q$2*4+(int (*)[3])chan);
;** 470	-----------------------    offset = (*chan).nextEDMARlds*2;
;** 474	-----------------------    curViop = (*chan).curViop;
;** 475	-----------------------    (*chan).curViop = (*chan).nextViop;
;** 478	-----------------------    C$5 = (*chan).mrViop;
;** 478	-----------------------    if ( !((curViop != C$5)&((void *)C$5 != (K$52 = (void *)0xffffffffu))) ) goto g10;
;** 479	-----------------------    elem = (void *)C$5;
;** 141	-----------------------    prev = *(Q$1*4+(struct _QUE_Elem **)chan);  // [4]
;** 143	-----------------------    (*(struct _QUE_Elem *)elem).next = (struct _QUE_Elem *)chan+364;  // [4]
;** 144	-----------------------    (*(struct _QUE_Elem *)elem).prev = prev;  // [4]
;** 145	-----------------------    (*prev).next = (struct _QUE_Elem *)elem;  // [4]
;** 146	-----------------------    *(Q$1*4+(struct _QUE_Elem **)chan) = (struct _QUE_Elem *)elem;  // [4]
;**	-----------------------g10:
;** 481	-----------------------    (*chan).mrViop = curViop;
;** 95	-----------------------    C$4 = (struct _QUE_Elem *)chan+364;  // [3]
;** 95	-----------------------    elem = *C$4;  // [3]
;** 96	-----------------------    next = (*elem).next;  // [3]
;** 98	-----------------------    *C$4 = next;  // [3]
;** 99	-----------------------    (*next).prev = (struct _QUE_Elem *)C$4;  // [3]
;** 101	-----------------------    viop = (struct _FVID_Frame *)(void *)elem;  // [3]
;** 101	-----------------------    if ( viop != (struct _FVID_Frame *)C$4 ) goto g14;  // [3]

           MVK     .L2     0xffffffff,B5     ; |478| 
||         ZERO    .L1     A5                ; |478| 
||         MVK     .S1     131,A8            ; |475| 
||         MVK     .S2     364,B31           ; |95| 

           MVK     .S1     142,A6            ; |469| 
||         STW     .D1T1   A9,*+A3[A8]       ; |475| 

           CMPEQ   .L1     A12,A4,A4         ; |469| 
||         CMPEQ   .L2     B4,B5,B0          ; |478| 
||         MVK     .S1     364,A30           ; |143| 

           CMPEQ   .L2     B8,B4,B1          ; |478| 
||         XOR     .L1     1,A4,A7           ; |469| 
||         ZERO    .D1     A4                ; |478| 
||         MVK     .S1     142,A29           ; |470| 

   [!B1]   MVK     .L1     0x1,A5            ; |478| 
|| [!B0]   MVK     .S1     0x1,A4            ; |478| 
||         STW     .D1T1   A7,*+A3[A6]       ; |469| 
||         ADD     .L2X    A30,B10,B6        ; |143| 

           AND     .L1     A4,A5,A0          ; |478| 
||         LDW     .D1T1   *+A3[A29],A4      ; |470| 
||         MVK     .S1     133,A28           ; |481| 

   [ A0]   LDW     .D2T2   *+B10[B7],B5      ; |141| 
           NOP             2
   [ A0]   STW     .D2T2   B6,*B4            ; |143| 
           ADD     .L1     A4,A4,A15         ; |470| 
   [ A0]   STW     .D2T2   B5,*+B4(4)        ; |144| 

           ADD     .L2     B31,B10,B5        ; |95| 
|| [ A0]   STW     .D2T2   B4,*B5            ; |145| 

   [ A0]   STW     .D2T2   B4,*+B10[B7]      ; |146| 
           STW     .D1T2   B8,*+A3[A28]      ; |481| 
           LDW     .D2T2   *B5,B4            ; |95| 
           NOP             4

           CMPEQ   .L2     B4,B5,B0          ; |101| 
||         LDW     .D2T2   *B4,B6            ; |96| 

   [!B0]   BNOP    .S1     L91,3             ; |101| 
           STW     .D2T2   B6,*B5            ; |98| 

   [ B0]   MVK     .S2     137,B5            ; |488| 
||         STW     .D2T2   B5,*+B6(4)        ; |99| 

           ; BRANCHCC OCCURS {L91}           ; |101| 
DW$L$_captureEdmaISR$7$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$8$B:
;** 488	-----------------------    if ( (*chan).packetIOM != K$52 ) goto g13;
;** 492	-----------------------    (*chan).nextViop = curViop;
;**	-----------------------g13:
;** 494	-----------------------    (*chan).queEmpty = 1;
;** 494	-----------------------    goto g15;

           LDW     .D2T2   *+B10[B5],B5      ; |488| 
||         MVK     .L2     0xffffffff,B6     ; |478| 
||         MVK     .S1     476,A3            ; |494| 
||         MVK     .S2     132,B31           ; |492| 
||         MVK     .L1     1,A4              ; |494| 

           NOP             2
           ADD     .L1X    A3,B10,A3         ; |494| 
           STH     .D1T1   A4,*A3            ; |494| 
           CMPEQ   .L2     B5,B6,B1          ; |488| 
   [ B1]   STW     .D2T2   B8,*+B10[B31]     ; |492| 
DW$L$_captureEdmaISR$8$E:
;** --------------------------------------------------------------------------*
L91:    
DW$L$_captureEdmaISR$9$B:
;**	-----------------------g14:
;** 486	-----------------------    (*chan).nextViop = viop;
;**	-----------------------g15:
;** 498	-----------------------    if ( curViop == (*chan).curViop ) goto g20;
           MVK     .S2     131,B5            ; |498| 

           LDW     .D2T2   *+B10[B5],B5      ; |498| 
|| [!B0]   MVK     .S2     132,B6            ; |486| 

           NOP             2
   [!B0]   STW     .D2T2   B4,*+B10[B6]      ; |486| 
           MVK     .S2     137,B4            ; |499| 
           CMPEQ   .L2     B8,B5,B0          ; |498| 

   [ B0]   BNOP    .S1     L92,2             ; |498| 
|| [!B0]   MVK     .S2     0xffffffff,B5     ; |478| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
|| [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |499| 

           MV      .L2     B0,B2             ; |499| branch predicate copy
|| [!B1]   ZERO    .L1     A0
|| [!B0]   MVK     .S1     476,A3            ; |507| 

   [!B1]   ADD     .L1X    A3,B10,A3         ; |507| 

   [ B2]   MVK     .D2     0xffffffff,B4     ; |478| 
|| [ B2]   MVK     .S2     133,B5            ; |511| 
||         CMPEQ   .L2     B4,B5,B0          ; |499| 

           ; BRANCHCC OCCURS {L92}           ; |498| 
DW$L$_captureEdmaISR$9$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$10$B:
;** 499	-----------------------    U$85 = (*chan).packetIOM;
;** 499	-----------------------    if ( (void *)U$85 != K$52 ) goto g19;
;** 507	-----------------------    if ( !(*chan).queEmpty ) goto g21;
;** 508	-----------------------    (*chan).nextViop = (*chan).mrViop;
;** 508	-----------------------    goto g21;

   [ B0]   LDHU    .D1T1   *A3,A0            ; |507| 
|| [ B0]   MVK     .S2     231,B4            ; |514| 

           NOP             4
   [ A0]   MVK     .S2     133,B12           ; |508| 

   [ A0]   MVK     .S2     132,B13           ; |508| 
|| [ B0]   B       .S1     L94               ; |508| 
|| [ A0]   LDW     .D2T2   *+B10[B12],B11    ; |508| 

   [ B0]   LDHU    .D2T2   *+B10[B4],B0      ; |514| 
           NOP             3
   [ A0]   STW     .D2T2   B11,*+B10[B13]    ; |508| 
           ; BRANCHCC OCCURS {L94}           ; |508| 
DW$L$_captureEdmaISR$10$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$11$B:
;**	-----------------------g19:
;** 501	-----------------------    *(*U$85).addr = (void *)curViop;
;** 502	-----------------------    (*(*chan).packetIOM).size = 32u;
;** 503	-----------------------    (*(*chan).packetIOM).status = 0;
;** 504	-----------------------    (*(*chan).cbFxn)((void *)(*chan).cbArg, (*chan).packetIOM);
;** 505	-----------------------    (*chan).packetIOM = (struct _DEV_Frame *)K$52;
;** 506	-----------------------    (*chan).mrViop = (struct _FVID_Frame *)K$52;
;** 507	-----------------------    goto g21;

           LDW     .D2T2   *+B4(8),B4        ; |501| 
||         MVK     .S2     137,B31           ; |502| 
||         MVK     .S1     32,A3             ; |502| 
||         ZERO    .L2     B5                ; |503| 

           MVK     .S2     137,B30           ; |503| 
           MVK     .S2     116,B29           ; |504| 
           MVK     .S2     117,B6            ; |504| 
           MVK     .S2     137,B28           ; |504| 
           STW     .D2T2   B8,*B4            ; |501| 
           LDW     .D2T2   *+B10[B31],B4     ; |502| 
           NOP             4
           STW     .D2T1   A3,*+B4(12)       ; |502| 
           LDW     .D2T2   *+B10[B30],B4     ; |503| 
           NOP             4
           STW     .D2T2   B5,*+B4(28)       ; |503| 
           LDW     .D2T2   *+B10[B29],B5     ; |504| 
           NOP             2
           LDW     .D2T1   *+B10[B6],A4      ; |504| 
           LDW     .D2T2   *+B10[B28],B4     ; |504| 
           CALL    .S2     B5                ; |504| 
           ADDKPC  .S2     RL41,B3,4         ; |504| 
RL41:      ; CALL OCCURS {A3}                ; |504| 
DW$L$_captureEdmaISR$11$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$12$B:

           B       .S1     L93               ; |507| 
||         MVK     .S2     137,B31           ; |505| 
||         MVK     .L2     0xffffffff,B4     ; |478| 

           MVK     .S2     133,B5            ; |506| 
||         STW     .D2T2   B4,*+B10[B31]     ; |505| 

           STW     .D2T2   B4,*+B10[B5]      ; |506| 
||         MVK     .S2     231,B4            ; |514| 

           LDHU    .D2T2   *+B10[B4],B0      ; |514| 
           NOP             2
           ; BRANCH OCCURS {L93}             ; |507| 
DW$L$_captureEdmaISR$12$E:
;** --------------------------------------------------------------------------*
L92:    
DW$L$_captureEdmaISR$13$B:
;**	-----------------------g20:
;** 511	-----------------------    (*chan).mrViop = (struct _FVID_Frame *)K$52;

           STW     .D2T2   B4,*+B10[B5]      ; |511| 
||         MVK     .S2     231,B4            ; |514| 

           LDHU    .D2T2   *+B10[B4],B0      ; |514| 
           NOP             2
DW$L$_captureEdmaISR$13$E:
;** --------------------------------------------------------------------------*
L93:    
DW$L$_captureEdmaISR$14$B:
           NOP             2
DW$L$_captureEdmaISR$14$E:
;** --------------------------------------------------------------------------*
L94:    
DW$L$_captureEdmaISR$15$B:
;**	-----------------------g21:
;** 514	-----------------------    if ( (*chan).interlaced ) goto g24;

           MVK     .S2     132,B4            ; |530| 
|| [ B0]   MVK     .S1     132,A3            ; |515| 
|| [!B0]   MV      .L1X    B10,A4

   [!B0]   ADDAW   .D1     A4,A15,A3         ; |530| 
|| [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |530| 
|| [ B0]   MV      .L1X    B10,A4
|| [ B0]   B       .S2     L95               ; |514| 
|| [!B0]   MVK     .S1     400,A5            ; |530| 

   [ B0]   LDW     .D1T1   *+A4[A3],A6       ; |515| 
|| [!B0]   ADD     .L1     A5,A3,A3          ; |530| 
|| [ B0]   MVK     .S1     400,A5            ; |515| 

   [!B0]   LDHU    .D1T1   *A3,A5            ; |530| 
   [ B0]   ADDAW   .D1     A4,A15,A3         ; |515| 
   [ B0]   ADD     .L1     A5,A3,A3          ; |515| 

   [!B0]   LDW     .D2T2   *+B4(8),B4        ; |530| 
|| [ B0]   LDHU    .D1T1   *A3,A5            ; |515| 

           ; BRANCHCC OCCURS {L95}           ; |514| 
DW$L$_captureEdmaISR$15$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$16$B:
;** 530	-----------------------    C$3 = offset*4+(unsigned (*)[12])chan+400;
;** 530	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*C$3+K$117) = (unsigned)(*(*chan).nextViop).frame.iFrm.y1;
;** 532	-----------------------    if ( (*chan).mode&2 ) goto g26;
           MVK     .S1     134,A31           ; |532| 
           ADD     .L1     A14,A5,A5         ; |530| 
           NOP             2

           MVK     .S2     132,B4            ; |533| 
||         STW     .D1T2   B4,*A5            ; |530| 

           LDW     .D1T1   *+A4[A31],A4      ; |532| 
           NOP             4
           AND     .L1     2,A4,A0           ; |532| 

   [!A0]   LDW     .D2T1   *+B10[B4],A4      ; |533| 
|| [ A0]   B       .S1     L97               ; |532| 

   [!A0]   LDHU    .D1T1   *+A3(16),A6       ; |533| 
|| [ A0]   LDW     .D2T2   *+SP(8),B4

           NOP             3
   [!A0]   LDW     .D1T1   *+A4(12),A5       ; |533| 
           ; BRANCHCC OCCURS {L97}           ; |532| 
DW$L$_captureEdmaISR$16$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$17$B:
;** 533	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$3[4]+K$117) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb1;
;** 535	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$3[8]+K$117) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr1;
;** 535	-----------------------    goto g26;
           NOP             3
           ADD     .L1     A14,A6,A31        ; |533| 
           STW     .D1T1   A5,*A31           ; |533| 

           LDHU    .D1T1   *+A3(32),A3       ; |535| 
||         LDW     .D2T2   *+B10[B4],B4      ; |535| 

           NOP             4

           BNOP    .S1     L96,4             ; |535| 
||         LDW     .D2T2   *+B4(16),B4       ; |535| 
||         ADD     .L1     A14,A3,A3         ; |535| 

           STW     .D1T2   B4,*A3            ; |535| 
           ; BRANCH OCCURS {L96}             ; |535| 
DW$L$_captureEdmaISR$17$E:
;** --------------------------------------------------------------------------*
L95:    
DW$L$_captureEdmaISR$18$B:
;**	-----------------------g24:
;** 515	-----------------------    C$2 = offset*4+(unsigned (*)[12])chan+400;
;** 515	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*C$2+K$117) = (unsigned)(*(*chan).nextViop).frame.iFrm.y1;
;** 517	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$2[1]+K$117) = (unsigned)(*(*chan).nextViop).frame.iFrm.y2;
;** 519	-----------------------    if ( (*chan).mode&2 ) goto g26;

           LDW     .D1T1   *+A6(8),A6        ; |515| 
||         MVK     .S2     132,B4            ; |517| 
||         MVK     .S1     134,A31           ; |519| 

           NOP             3
           ADD     .L1     A14,A5,A5         ; |515| 
           STW     .D1T1   A6,*A5            ; |515| 

           LDHU    .D1T1   *+A3(4),A5        ; |517| 
||         LDW     .D2T2   *+B10[B4],B4      ; |517| 

           NOP             4

           LDW     .D2T2   *+B4(20),B4       ; |517| 
||         ADD     .L1     A14,A5,A5         ; |517| 

           NOP             4

           MVK     .S2     132,B4            ; |520| 
||         STW     .D1T2   B4,*A5            ; |517| 

           LDW     .D1T1   *+A4[A31],A4      ; |519| 
           NOP             4
           AND     .L1     2,A4,A0           ; |519| 

   [!A0]   LDHU    .D1T2   *+A3(16),B31      ; |520| 
|| [!A0]   LDW     .D2T1   *+B10[B4],A4      ; |520| 
|| [ A0]   B       .S1     L97               ; |519| 

   [ A0]   LDW     .D2T2   *+SP(8),B4
           NOP             3

   [!A0]   ADD     .L1X    A14,B31,A5        ; |520| 
|| [!A0]   LDW     .D1T1   *+A4(12),A4       ; |520| 

           ; BRANCHCC OCCURS {L97}           ; |519| 
DW$L$_captureEdmaISR$18$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$19$B:
;** 520	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$2[4]+K$117) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb1;
;** 522	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$2[5]+K$117) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb2;
;** 524	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$2[8]+K$117) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr1;
;** 526	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)C$2[9]+K$117) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr2;
           NOP             2
           MVK     .S2     132,B30           ; |522| 
           MVK     .S2     132,B29           ; |524| 
           STW     .D1T1   A4,*A5            ; |520| 

           LDHU    .D1T2   *+A3(20),B4       ; |522| 
||         LDW     .D2T1   *+B10[B30],A4     ; |522| 

           NOP             4

           LDW     .D1T1   *+A4(24),A4       ; |522| 
||         ADD     .L1X    A14,B4,A5         ; |522| 

           NOP             4
           STW     .D1T1   A4,*A5            ; |522| 
           LDW     .D2T1   *+B10[B29],A5     ; |524| 
           LDHU    .D1T1   *+A3(32),A4       ; |524| 
           NOP             3
           LDW     .D1T1   *+A5(16),A5       ; |524| 
           NOP             3
           ADD     .L1     A14,A4,A4         ; |524| 
           STW     .D1T1   A5,*A4            ; |524| 

           LDHU    .D1T1   *+A3(36),A3       ; |526| 
||         LDW     .D2T2   *+B10[B29],B4     ; |526| 

           NOP             4

           LDW     .D2T2   *+B4(28),B4       ; |526| 
||         ADD     .L1     A14,A3,A3         ; |526| 

           NOP             4
           STW     .D1T2   B4,*A3            ; |526| 
DW$L$_captureEdmaISR$19$E:
;** --------------------------------------------------------------------------*
L96:    
DW$L$_captureEdmaISR$20$B:
           LDW     .D2T2   *+SP(8),B4
           NOP             4
DW$L$_captureEdmaISR$20$E:
;** --------------------------------------------------------------------------*
L97:    
DW$L$_captureEdmaISR$21$B:
;**	-----------------------g26:
;** 456	-----------------------    U$13 += 604;
;** 456	-----------------------    U$14 += 604;
;** 456	-----------------------    if ( --L$2 ) goto g3;
;** 455	-----------------------    U$10 += 1216;

           SUB     .L1X    B4,1,A0           ; |456| 
||         ADDK    .S2     604,B10           ; |456| 
||         SUB     .L2     B4,1,B4           ; |456| 
||         ADDK    .S1     604,A10           ; |456| 

           STW     .D2T2   B4,*+SP(8)        ; |456| 
|| [!A0]   ADDK    .S1     1216,A11          ; |455| 
|| [ A0]   B       .S2     L89               ; |456| 
|| [ A0]   ADD     .L1     A10,A11,A3        ; |459| 

   [ A0]   LDW     .D2T2   *B10,B4           ; |459| 
|| [!A0]   ADDK    .S1     1216,A13          ; |455| 

   [!A0]   LDW     .D2T2   *+SP(4),B4        ; |455| 
|| [ A0]   MVK     .S1     448,A4            ; |459| 

	.dwpsn	"vportcap.c",542,0
           NOP             3
           ; BRANCHCC OCCURS {L89}           ; |456| 
DW$L$_captureEdmaISR$21$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$22$B:
;** 455	-----------------------    U$11 += 1216;
;** 455	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    return;
           NOP             1

           SUB     .L2     B4,1,B4           ; |455| 
||         SUB     .L1X    B4,1,A0           ; |455| 

   [ A0]   MV      .S2X    A13,B10
||         MVK     .L2     0x2,B4
||         STW     .D2T2   B4,*+SP(4)        ; |455| 
|| [ A0]   ZERO    .L1     A10
|| [ A0]   B       .S1     L88               ; |455| 

   [ A0]   STW     .D2T2   B4,*+SP(8)
|| [ A0]   MVK     .S1     448,A4            ; |459| 
|| [ A0]   ADD     .L1     A10,A11,A3        ; |459| 

   [ A0]   LDW     .D2T2   *B10,B4           ; |459| 
   [!A0]   LDW     .D2T2   *+SP(36),B3       ; |544| 
	.dwpsn	"vportcap.c",543,0
           NOP             2
           ; BRANCHCC OCCURS {L88}           ; |455| 
DW$L$_captureEdmaISR$22$E:
;** --------------------------------------------------------------------------*

           MV      .L1X    SP,A31            ; |544| 
||         LDDW    .D2T2   *+SP(48),B13:B12  ; |544| 

           LDW     .D1T1   *+A31(32),A14     ; |544| 
||         LDDW    .D2T2   *+SP(40),B11:B10  ; |544| 

           LDDW    .D1T1   *+A31(24),A13:A12 ; |544| 

           LDDW    .D1T1   *+A31(16),A11:A10 ; |544| 
||         RET     .S2     B3                ; |544| 

           LDW     .D2T1   *++SP(56),A15     ; |544| 
	.dwpsn	"vportcap.c",544,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |544| 

DW$147	.dwtag  DW_TAG_loop
	.dwattr DW$147, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L88:1:1192527503")
	.dwattr DW$147, DW_AT_begin_file("vportcap.c")
	.dwattr DW$147, DW_AT_begin_line(0x1c7)
	.dwattr DW$147, DW_AT_end_line(0x21f)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$_captureEdmaISR$2$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$_captureEdmaISR$2$E)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$_captureEdmaISR$22$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$_captureEdmaISR$22$E)

DW$150	.dwtag  DW_TAG_loop
	.dwattr DW$150, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L89:2:1192527503")
	.dwattr DW$150, DW_AT_begin_file("vportcap.c")
	.dwattr DW$150, DW_AT_begin_line(0x1c8)
	.dwattr DW$150, DW_AT_end_line(0x21e)
DW$151	.dwtag  DW_TAG_loop_range
	.dwattr DW$151, DW_AT_low_pc(DW$L$_captureEdmaISR$3$B)
	.dwattr DW$151, DW_AT_high_pc(DW$L$_captureEdmaISR$3$E)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$_captureEdmaISR$17$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$_captureEdmaISR$17$E)
DW$153	.dwtag  DW_TAG_loop_range
	.dwattr DW$153, DW_AT_low_pc(DW$L$_captureEdmaISR$19$B)
	.dwattr DW$153, DW_AT_high_pc(DW$L$_captureEdmaISR$19$E)
DW$154	.dwtag  DW_TAG_loop_range
	.dwattr DW$154, DW_AT_low_pc(DW$L$_captureEdmaISR$11$B)
	.dwattr DW$154, DW_AT_high_pc(DW$L$_captureEdmaISR$11$E)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_captureEdmaISR$12$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_captureEdmaISR$12$E)
DW$156	.dwtag  DW_TAG_loop_range
	.dwattr DW$156, DW_AT_low_pc(DW$L$_captureEdmaISR$13$B)
	.dwattr DW$156, DW_AT_high_pc(DW$L$_captureEdmaISR$13$E)
DW$157	.dwtag  DW_TAG_loop_range
	.dwattr DW$157, DW_AT_low_pc(DW$L$_captureEdmaISR$5$B)
	.dwattr DW$157, DW_AT_high_pc(DW$L$_captureEdmaISR$5$E)
DW$158	.dwtag  DW_TAG_loop_range
	.dwattr DW$158, DW_AT_low_pc(DW$L$_captureEdmaISR$6$B)
	.dwattr DW$158, DW_AT_high_pc(DW$L$_captureEdmaISR$6$E)
DW$159	.dwtag  DW_TAG_loop_range
	.dwattr DW$159, DW_AT_low_pc(DW$L$_captureEdmaISR$7$B)
	.dwattr DW$159, DW_AT_high_pc(DW$L$_captureEdmaISR$7$E)
DW$160	.dwtag  DW_TAG_loop_range
	.dwattr DW$160, DW_AT_low_pc(DW$L$_captureEdmaISR$8$B)
	.dwattr DW$160, DW_AT_high_pc(DW$L$_captureEdmaISR$8$E)
DW$161	.dwtag  DW_TAG_loop_range
	.dwattr DW$161, DW_AT_low_pc(DW$L$_captureEdmaISR$9$B)
	.dwattr DW$161, DW_AT_high_pc(DW$L$_captureEdmaISR$9$E)
DW$162	.dwtag  DW_TAG_loop_range
	.dwattr DW$162, DW_AT_low_pc(DW$L$_captureEdmaISR$10$B)
	.dwattr DW$162, DW_AT_high_pc(DW$L$_captureEdmaISR$10$E)
DW$163	.dwtag  DW_TAG_loop_range
	.dwattr DW$163, DW_AT_low_pc(DW$L$_captureEdmaISR$14$B)
	.dwattr DW$163, DW_AT_high_pc(DW$L$_captureEdmaISR$14$E)
DW$164	.dwtag  DW_TAG_loop_range
	.dwattr DW$164, DW_AT_low_pc(DW$L$_captureEdmaISR$15$B)
	.dwattr DW$164, DW_AT_high_pc(DW$L$_captureEdmaISR$15$E)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$_captureEdmaISR$4$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$_captureEdmaISR$4$E)
DW$166	.dwtag  DW_TAG_loop_range
	.dwattr DW$166, DW_AT_low_pc(DW$L$_captureEdmaISR$16$B)
	.dwattr DW$166, DW_AT_high_pc(DW$L$_captureEdmaISR$16$E)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_captureEdmaISR$18$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_captureEdmaISR$18$E)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$_captureEdmaISR$20$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$_captureEdmaISR$20$E)
DW$169	.dwtag  DW_TAG_loop_range
	.dwattr DW$169, DW_AT_low_pc(DW$L$_captureEdmaISR$21$B)
	.dwattr DW$169, DW_AT_high_pc(DW$L$_captureEdmaISR$21$E)
	.dwendtag DW$150

	.dwendtag DW$147

	.dwattr DW$145, DW_AT_end_file("vportcap.c")
	.dwattr DW$145, DW_AT_end_line(0x220)
	.dwattr DW$145, DW_AT_end_column(0x01)
	.dwendtag DW$145

	.sect	".text"

DW$170	.dwtag  DW_TAG_subprogram, DW_AT_name("captureISR"), DW_AT_symbol_name("_captureISR")
	.dwattr DW$170, DW_AT_low_pc(_captureISR)
	.dwattr DW$170, DW_AT_high_pc(0x00)
	.dwattr DW$170, DW_AT_begin_file("vportcap.c")
	.dwattr DW$170, DW_AT_begin_line(0x4e7)
	.dwattr DW$170, DW_AT_begin_column(0x0d)
	.dwattr DW$170, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$170, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",1256,1

;******************************************************************************
;* FUNCTION NAME: _captureISR                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                  *
;******************************************************************************
_captureISR:
;** --------------------------------------------------------------------------*
DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$171, DW_AT_type(*DW$T$22)
	.dwattr DW$171, DW_AT_location[DW_OP_reg4]
;* 1257	-----------------------    C$4 = &portObjs[0];
;* 1257	-----------------------    C$3 = portNum*1216;
;* 1257	-----------------------    C$6 = (*(C$3+C$4)).base;
;* 1257	-----------------------    base = (volatile int *)(C$6+204);
;* 1259	-----------------------    vpis = *((volatile int *)C$6+204);
;* 1260	-----------------------    mask = vpis;
;* 1261	-----------------------    C$5 = C$3+C$4;
;* 1261	-----------------------    chanObjs = (struct $$fake3 *)(C$5+8);
;* 1263	-----------------------    K$5 = C$5;
;* 1263	-----------------------    if ( (((unsigned)mask&*((struct $$fake3 *)C$4+C$3+48)) != 0u)&((void *)*((void (**)())K$5+480) != (K$27 = (void *)0xffffffffu)) ) goto g5;

           MVK     .S1     1216,A3           ; |1257| 
||         MVKL    .S2     _portObjs,B4      ; |1257| 
||         MV      .L1X    SP,A31            ; |1256| 
||         STW     .D2T1   A11,*SP--(24)     ; |1256| 

           MPYLI   .M1     A3,A4,A5:A4       ; |1257| 
||         MVKH    .S2     _portObjs,B4      ; |1257| 
||         STW     .D1T1   A10,*-A31(16)
||         STW     .D2T2   B13,*+SP(12)
||         MVK     .S1     652,A6            ; |1266| 
||         MV      .L2     B3,B13

           NOP             1
           STDW    .D2T2   B11:B10,*+SP(16)
           MVK     .S2     51,B7             ; |1259| 
           ADD     .L1X    A4,B4,A3          ; |1263| 

           LDW     .D1T1   *+A3(48),A3       ; |1263| 
||         ADD     .L2X    B4,A4,B5          ; |1257| 

           ADD     .L2X    B4,A4,B6          ; |1261| 
||         LDW     .D2T2   *+B5(4),B5        ; |1257| 

           NOP             2
           ADD     .S2     8,B6,B10          ; |1261| 
           ADD     .L2X    A6,B6,B11         ; |1266| 

           MVK     .S2     120,B7            ; |1263| 
||         LDW     .D2T2   *+B5[B7],B4       ; |1259| 

           MVK     .L2     0xffffffff,B7     ; |1263| 
||         LDW     .D2T2   *+B6[B7],B8       ; |1263| 

           NOP             3
           MV      .L1X    B4,A10            ; |1260| 

           CMPEQ   .L2     B8,B7,B0          ; |1263| 
||         AND     .L1     A3,A10,A3         ; |1263| 

           ZERO    .S1     A3                ; |1263| 
||         CMPEQ   .L1     A3,0,A4           ; |1263| 

           MVK     .S1     204,A4            ; |1257| 
|| [!B0]   MVK     .D1     0x1,A3            ; |1263| 
||         XOR     .L1     1,A4,A5           ; |1263| 

           MVK     .S1     118,A3            ; |1264| 
||         MVK     .S2     138,B5            ; |1264| 
||         ADD     .D1X    A4,B5,A11         ; |1257| 
||         AND     .L1     A3,A5,A0          ; |1263| 

   [ A0]   BNOP    .S1     L98,3             ; |1263| 
||         MV      .L1X    B10,A4
|| [!A0]   MVK     .S2     1084,B4           ; |1266| 
|| [!A0]   LDW     .D2T2   *B11,B5           ; |1266| 

   [!A0]   ADD     .L2     B4,B6,B6          ; |1266| 
           AND     .L1X    B5,A10,A0         ; |1266| 
           ; BRANCHCC OCCURS {L98}           ; |1263| 
;** --------------------------------------------------------------------------*
;* 1266	-----------------------    K$34 = &((unsigned *)K$5)[163];
;* 1266	-----------------------    if ( !((unsigned)mask&*K$34) ) goto g6;

   [!A0]   BNOP    .S1     L99,4             ; |1266| 
|| [ A0]   LDW     .D2T2   *B6,B5            ; |1266| 

           CMPEQ   .L2     B5,B7,B0          ; |1266| 
           ; BRANCHCC OCCURS {L99}           ; |1266| 
;** --------------------------------------------------------------------------*
;* 1266	-----------------------    C$2 = &((void (**)())K$5)[271];
;* 1266	-----------------------    C$1 = *C$2;
;* 1266	-----------------------    if ( (void *)C$1 == K$27 ) goto g6;

   [ B0]   B       .S1     L101              ; |1266| 
||         SHR     .S2X    A10,16,B4         ; |1267| 
|| [ B0]   LDW     .D1T1   *A11,A3           ; |1271| 
|| [ B0]   MV      .L2     B13,B3            ; |1272| 

   [!B0]   CALL    .S2     B5                ; |1267| 
|| [!B0]   LDW     .D2T1   *+B6(80),A4       ; |1267| 

           NOP             3
   [ B0]   OR      .L1     A10,A3,A3         ; |1271| 
           ; BRANCHCC OCCURS {L101}          ; |1266| 
;** --------------------------------------------------------------------------*
;* 1267	-----------------------    (*C$1)(((int *)C$2)[20], mask>>16);
;* 1268	-----------------------    mask &= (int)*K$34;
;* 1268	-----------------------    goto g6;
           ADDKPC  .S2     RL42,B3,0         ; |1267| 
RL42:      ; CALL OCCURS {B5}                ; |1267| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     L100,4            ; |1268| 
||         LDW     .D2T2   *B11,B4           ; |1268| 
||         LDW     .D1T1   *A11,A3           ; |1271| 

           AND     .L1X    B4,A10,A10        ; |1268| 
           ; BRANCH OCCURS {L100}            ; |1268| 
;** --------------------------------------------------------------------------*
L98:    
;**	-----------------------g5:
;* 1264	-----------------------    (*(*chanObjs).vIntFxn)((*chanObjs).vIntCbArg, vpis);
;* 1265	-----------------------    mask &= (int)(*chanObjs).vIntMask;
           LDW     .D1T1   *+A4[A3],A3       ; |1264| 
           NOP             3
           LDW     .D2T1   *+B10[B5],A4      ; |1264| 
           CALL    .S2X    A3                ; |1264| 
           ADDKPC  .S2     RL43,B3,4         ; |1264| 
RL43:      ; CALL OCCURS {A3}                ; |1264| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+B10(40),B4      ; |1265| 
           NOP             4
           AND     .L1X    B4,A10,A10        ; |1265| 
;** --------------------------------------------------------------------------*
L99:    
           LDW     .D1T1   *A11,A3           ; |1271| 
           NOP             4
;** --------------------------------------------------------------------------*
L100:    

           OR      .L1     A10,A3,A3         ; |1271| 
||         MV      .L2     B13,B3            ; |1272| 

;** --------------------------------------------------------------------------*
L101:    
;**	-----------------------g6:
;* 1271	-----------------------    *base |= mask;
;* 1271	-----------------------    return;

           MV      .L1X    SP,A31            ; |1272| 
||         STW     .D1T1   A3,*A11           ; |1271| 
||         LDDW    .D2T2   *+SP(16),B11:B10  ; |1272| 

           LDW     .D1T1   *+A31(8),A10      ; |1272| 
||         LDW     .D2T2   *+SP(12),B13      ; |1272| 
||         RET     .S2     B3                ; |1272| 

           LDW     .D2T1   *++SP(24),A11     ; |1272| 
	.dwpsn	"vportcap.c",1272,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1272| 
	.dwattr DW$170, DW_AT_end_file("vportcap.c")
	.dwattr DW$170, DW_AT_end_line(0x4f8)
	.dwattr DW$170, DW_AT_end_column(0x01)
	.dwendtag DW$170

	.sect	".text"

DW$172	.dwtag  DW_TAG_subprogram, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$172, DW_AT_low_pc(_mdControlChan)
	.dwattr DW$172, DW_AT_high_pc(0x00)
	.dwattr DW$172, DW_AT_begin_file("vportcap.c")
	.dwattr DW$172, DW_AT_begin_line(0xa0)
	.dwattr DW$172, DW_AT_begin_column(0x0c)
	.dwattr DW$172, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$172, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",161,1

;******************************************************************************
;* FUNCTION NAME: _mdControlChan                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_mdControlChan:
;** --------------------------------------------------------------------------*
DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$173, DW_AT_type(*DW$T$37)
	.dwattr DW$173, DW_AT_location[DW_OP_reg4]
DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$174, DW_AT_type(*DW$T$31)
	.dwattr DW$174, DW_AT_location[DW_OP_reg20]
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$175, DW_AT_type(*DW$T$37)
	.dwattr DW$175, DW_AT_location[DW_OP_reg6]
;** 163	-----------------------    chan = (struct $$fake3 *)chanp;
;** 165	-----------------------    switch ( cmd ) {case 0x10000002u: goto g16;, case 0x10000003u: goto g2;, case 0x10000004u: goto g3;, case 0x10000005u: goto g4;, case 0x10000006u: goto g5;, case 0x10000008u: goto g6;, case 0x10000009u: goto g10;, DEFAULT goto g7};

           MVKL    .S1     0x10000005,A7     ; |165| 
||         MV      .L2     B4,B7             ; |161| 
||         STW     .D2T1   A12,*SP--(16)     ; |161| 
||         MV      .L1     A6,A12            ; |161| 
||         MV      .S2     B4,B6             ; |161| 

           MVKH    .S1     0x10000005,A7     ; |165| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |161| 
||         MV      .L1     A4,A11            ; |161| 

           MVKL    .S1     0x10000005,A3     ; |165| 
||         STW     .D2T2   B13,*+SP(4)       ; |161| 
||         MV      .L2     B3,B13            ; |161| 

           CMPGT   .L2X    B4,A7,B1          ; |165| 
||         MVKH    .S1     0x10000005,A3     ; |165| 

   [ B1]   B       .S2     L102              ; |165| 
||         MVKL    .S1     0x10000006,A5     ; |165| 

           CMPEQ   .L2X    B4,A3,B2          ; |165| 
|| [!B1]   MVKL    .S1     0x10000002,A3     ; |165| 

           MVKH    .S1     0x10000006,A5     ; |165| 
|| [ B1]   ZERO    .L2     B2                ; |165| nullify predicate

   [!B1]   MVKH    .S1     0x10000002,A3     ; |165| 

   [ B2]   B       .S1     L105              ; |165| 
||         CMPEQ   .L2X    B4,A5,B0          ; |165| 

   [!B1]   CMPEQ   .L2X    B7,A3,B0          ; |165| 
           ; BRANCHCC OCCURS {L102}          ; |165| 
;** --------------------------------------------------------------------------*

   [!B2]   MVKL    .S1     0x10000003,A3     ; |165| 
|| [ B2]   ZERO    .L2     B0                ; |764| nullify predicate
|| [!B2]   MVK     .S2     548,B4            ; |764| 
|| [!B2]   MV      .L1     A12,A7            ; |767| 

   [ B0]   B       .S2     L114              ; |165| 
|| [!B2]   MVKH    .S1     0x10000003,A3     ; |165| 

   [!B2]   ADD     .L1X    B4,A11,A8         ; |764| 
|| [!B2]   MVK     .S2     0x97,B5           ; |764| 
|| [ B2]   CALL    .S1     __stopVPCapture   ; |170| 

   [!B2]   CMPEQ   .L2X    B7,A3,B1          ; |165| 
           ; BRANCHCC OCCURS {L105}          ; |165| 
;** --------------------------------------------------------------------------*

   [!B0]   MVKL    .S1     0x10000004,A3     ; |165| 
||         MV      .L2     B0,B2             ; guard predicate rewrite
|| [!B0]   MV      .S2X    A12,B4            ; |750| 
|| [ B0]   LDW     .D1T1   *+A11(4),A3       ; |765| 

   [ B2]   ZERO    .L2     B1                ; |754| nullify predicate
|| [!B0]   MVKH    .S1     0x10000004,A3     ; |165| 
|| [!B2]   ZERO    .L1     A10               ; |754| 

   [ B1]   B       .S1     L103              ; |165| 
           ; BRANCHCC OCCURS {L114}          ; |165| 
;** --------------------------------------------------------------------------*

           CMPEQ   .L2X    B7,A3,B0          ; |165| 
|| [ B1]   CALL    .S1     __configCh        ; |750| 

   [ B1]   ZERO    .L2     B0                ; nullify predicate
   [ B0]   BNOP    .S1     L104,2            ; |165| 
           ; BRANCHCC OCCURS {L103}          ; |165| 
;** --------------------------------------------------------------------------*

   [!B0]   B       .S1     L108              ; |165| 
|| [ B0]   LDW     .D1T1   *+A11(12),A3      ; |1193| 

   [ B0]   LDW     .D1T1   *+A11(4),A4       ; |1192| 
           NOP             1
           ; BRANCHCC OCCURS {L104}          ; |165| 
;** --------------------------------------------------------------------------*

           MVK     .S1     135,A3            ; |190| 
||         MVK     .L1     -1,A5             ; |190| 

           LDW     .D1T1   *+A4[A3],A3       ; |190| 
           NOP             1
           ; BRANCH OCCURS {L108}            ; |165| 
;** --------------------------------------------------------------------------*
L102:    

           MVKL    .S1     0x10000008,A3     ; |165| 
|| [ B0]   B       .S2     L106              ; |165| 
||         MV      .L2     B0,B2             ; guard predicate rewrite
||         MV      .D2X    A12,B4            ; |173| 

           MVKH    .S1     0x10000008,A3     ; |165| 
|| [ B0]   CALL    .S2     __setVIntCb       ; |173| 

           NOP             1

   [!B0]   MVKL    .S1     0x10000009,A3     ; |165| 
||         CMPEQ   .L2X    B7,A3,B1          ; |165| 

   [!B0]   MVKH    .S1     0x10000009,A3     ; |165| 
|| [ B2]   ZERO    .L2     B1                ; |165| nullify predicate

   [ B1]   B       .S1     L107              ; |165| 
           ; BRANCHCC OCCURS {L106}          ; |165| 
;** --------------------------------------------------------------------------*

           CMPEQ   .L2X    B7,A3,B0          ; |165| 
|| [ B1]   CALL    .S2     __covrRecover     ; |179| 
|| [!B1]   MVK     .S1     364,A3            ; |1127| 
|| [!B1]   ZERO    .D2     B4                ; |1126| 

   [ B1]   ZERO    .L2     B0                ; |1125| nullify predicate
|| [!B1]   ADD     .L1     A3,A11,A5         ; |1127| 
|| [!B1]   MVK     .S2     91,B5             ; |1125| 

   [ B0]   BNOP    .S1     L109,2            ; |165| 
           ; BRANCHCC OCCURS {L107}          ; |165| 
;** --------------------------------------------------------------------------*

   [!B0]   B       .S1     L108              ; |165| 
|| [ B0]   MV      .L1X    B5,A3

   [ B0]   LDW     .D1T1   *+A11[A3],A3      ; |1125| 
           NOP             1
           ; BRANCHCC OCCURS {L109}          ; |165| 
;** --------------------------------------------------------------------------*

           MVK     .S1     135,A3            ; |190| 
||         MVK     .L1     -1,A5             ; |190| 

           LDW     .D1T1   *+A4[A3],A3       ; |190| 
           NOP             1
           ; BRANCH OCCURS {L108}            ; |165| 
;** --------------------------------------------------------------------------*
L103:    
;**	-----------------------g2:
;** 750	-----------------------    _configCh(chanp, (struct $$fake1 *)args);  // [39]
;** 753	-----------------------    _configTransfer(chanp, (struct $$fake1 *)args);  // [39]
;** 754	-----------------------    return 0;  // [39]
           ADDKPC  .S2     RL44,B3,0         ; |750| 
RL44:      ; CALL OCCURS {__configCh}        ; |750| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __configTransfer  ; |753| 
           ADDKPC  .S2     RL45,B3,2         ; |753| 
           MV      .L2X    A12,B4            ; |753| 
           MV      .L1     A11,A4            ; |753| 
RL45:      ; CALL OCCURS {__configTransfer}  ; |753| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |199| 
||         MV      .L2     B13,B3            ; |199| 
||         MV      .L1     A10,A4            ; |788| 

           RET     .S2     B3                ; |199| 
||         LDW     .D2T2   *+SP(4),B13       ; |199| 

           LDW     .D2T1   *++SP(16),A12     ; |199| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |199| 
;** --------------------------------------------------------------------------*
L104:    
;**	-----------------------g3:
;* 1192	-----------------------    base = (volatile int *)((portObjs[(*(struct $$fake3 *)chanp).portNum]).base+200);  // [45]
;* 1193	-----------------------    C$42 = (*(struct $$fake3 *)chanp).base;  // [45]
;* 1193	-----------------------    cbase = (volatile int *)(C$42+4);  // [45]
;* 1196	-----------------------    C$41 = (volatile int *)C$42+4;  // [45]
;* 1196	-----------------------    *C$41 = *C$41|0x8000;  // [45]
;* 1200	-----------------------    *cbase = *cbase&0xbfffffff;  // [45]
;* 1203	-----------------------    *base = *base|1;  // [45]
;* 1204	-----------------------    base[1];  // [45]
;* 1204	-----------------------    base[1] = (-1);  // [45]
;** 342	-----------------------    ICR = C$40 = _IRQ_eventTable[(*(struct $$fake3 *)chanp).portNum+25u];  // [11]
;** 320	-----------------------    IER = IER|C$40;  // [9]
;* 1210	-----------------------    return 0;  // [45]

           MVK     .S1     1216,A5           ; |1192| 
||         MVKL    .S2     _portObjs+4,B4    ; |1192| 
||         MVK     .L2     -1,B6             ; |1204| 

           MVKH    .S2     _portObjs+4,B4    ; |1192| 

           ADD     .L1     4,A3,A6           ; |1196| 
||         ADD     .S1     4,A3,A3           ; |1193| 

           MPYLI   .M1     A5,A4,A5:A4       ; |1192| 
||         LDW     .D1T1   *A6,A7            ; |1196| 

           NOP             4

           SET     .S1     A7,15,15,A4       ; |1196| 
||         ADD     .L2X    B4,A4,B4          ; |1192| 

           STW     .D1T1   A4,*A6            ; |1196| 
||         LDW     .D2T2   *B4,B4            ; |1192| 

           LDW     .D1T1   *A3,A4            ; |1200| 
           NOP             3
           ADDAD   .D2     B4,25,B4          ; |1192| 
           CLR     .S1     A4,30,30,A4       ; |1200| 

           MVKL    .S1     __IRQ_eventTable,A3 ; |342| 
||         STW     .D1T1   A4,*A3            ; |1200| 

           LDW     .D2T2   *B4,B5            ; |1203| 
||         MVKH    .S1     __IRQ_eventTable,A3 ; |342| 

           NOP             4
           OR      .L2     1,B5,B5           ; |1203| 
           STW     .D2T2   B5,*B4            ; |1203| 
           LDW     .D2T2   *+B4(4),B5        ; |1204| 
           STW     .D2T2   B6,*+B4(4)        ; |1204| 
           LDW     .D1T1   *+A11(4),A4       ; |342| 
           NOP             4
           SHL     .S1     A4,2,A4           ; |342| 
           ADDK    .S1     100,A4            ; |342| 
           ADD     .L1     A3,A4,A3          ; |342| 
           LDW     .D1T1   *A3,A3            ; |342| 
           NOP             4
           MVC     .S2X    A3,ICR            ; |342| 
           MVC     .S2     IER,B4            ; |320| 
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 

           MV      .L1     A10,A4            ; |788| 
||         LDDW    .D2T1   *+SP(8),A11:A10   ; |199| 

           LDW     .D2T2   *+SP(4),B13       ; |199| 
||         RET     .S2     B3                ; |199| 

           LDW     .D2T1   *++SP(16),A12     ; |199| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |199| 
;** --------------------------------------------------------------------------*
L105:    
;**	-----------------------g4:
;** 170	-----------------------    retVal = _stopVPCapture(chanp);
;** 171	-----------------------    return retVal;
           ADDKPC  .S2     RL46,B3,3         ; |170| 
RL46:      ; CALL OCCURS {__stopVPCapture}   ; |170| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |199| 
||         MV      .L2     B13,B3            ; |199| 

           RET     .S2     B3                ; |199| 
||         LDW     .D2T2   *+SP(4),B13       ; |199| 

           LDW     .D2T1   *++SP(16),A12     ; |199| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |199| 
;** --------------------------------------------------------------------------*
L106:    
;**	-----------------------g5:
;** 173	-----------------------    retVal = _setVIntCb(chanp, args);
;** 174	-----------------------    return retVal;
           ADDKPC  .S2     RL47,B3,0         ; |173| 
RL47:      ; CALL OCCURS {__setVIntCb}       ; |173| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |199| 
||         MV      .L2     B13,B3            ; |199| 

           RET     .S2     B3                ; |199| 
||         LDW     .D2T2   *+SP(4),B13       ; |199| 

           LDW     .D2T1   *++SP(16),A12     ; |199| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |199| 
;** --------------------------------------------------------------------------*
L107:    
;**	-----------------------g6:
;** 179	-----------------------    retVal = _covrRecover(chanp);
;** 180	-----------------------    return retVal;
           ADDKPC  .S2     RL48,B3,0         ; |179| 
RL48:      ; CALL OCCURS {__covrRecover}     ; |179| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |199| 
||         MV      .L2     B13,B3            ; |199| 

           RET     .S2     B3                ; |199| 
||         LDW     .D2T2   *+SP(4),B13       ; |199| 

           LDW     .D2T1   *++SP(16),A12     ; |199| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |199| 
;** --------------------------------------------------------------------------*
L108:    
;**	-----------------------g7:
;** 190	-----------------------    C$39 = (*chan).edcFxns;
;** 190	-----------------------    if ( (void *)C$39 == (void *)0xffffffffu ) goto g9;

           ZERO    .L2     B4                ; |191| 
||         MVK     .L1     0xfffffff7,A10    ; |194| 

           MVKH    .S2     0x80000000,B4     ; |191| 
           ADD     .L2     B4,B6,B4          ; |191| 

           CMPEQ   .L1     A3,A5,A0          ; |190| 
||         MVK     .S1     136,A5            ; |191| 

   [!A0]   LDW     .D1T1   *+A3(8),A3        ; |191| 
|| [ A0]   B       .S1     L119              ; |190| 
|| [ A0]   MV      .L2     B13,B3            ; |199| 
|| [ A0]   LDW     .D2T2   *+SP(4),B13       ; |199| 
|| [ A0]   MV      .L1     A10,A4            ; |788| 

   [ A0]   LDDW    .D2T1   *+SP(8),A11:A10   ; |199| 

   [!A0]   LDW     .D1T1   *+A4[A5],A4       ; |191| 
|| [ A0]   RET     .S2     B3                ; |199| 

   [ A0]   LDW     .D2T1   *++SP(16),A12     ; |199| 
           NOP             1
   [!A0]   CALL    .S2X    A3                ; |191| 
           ; BRANCHCC OCCURS {L119}          ; |190| 
;** --------------------------------------------------------------------------*
;** 191	-----------------------    retVal = (*(*C$39).ctrl)((*chan).edcHandle, cmd+0x80000000u, (int)args);
;** 193	-----------------------    return retVal;
;**	-----------------------g9:
;** 194	-----------------------    return (-9);
           ADDKPC  .S2     RL49,B3,4         ; |191| 
RL49:      ; CALL OCCURS {A3}                ; |191| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |199| 
||         MV      .L2     B13,B3            ; |199| 

           RET     .S2     B3                ; |199| 
||         LDW     .D2T2   *+SP(4),B13       ; |199| 

           LDW     .D2T1   *++SP(16),A12     ; |199| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |199| 
;** --------------------------------------------------------------------------*
L109:    
;**	-----------------------g10:
;* 1124	-----------------------    chan = (struct $$fake3 *)chanp;  // [43]
;* 1125	-----------------------    nextElem = (struct _QUE_Elem *)((struct _QUE_Elem **)chan)[91];  // [43]
;* 1126	-----------------------    i = 0;  // [43]
;* 1127	-----------------------    if ( nextElem == chan+364 ) goto g13;  // [43]
;**  	-----------------------    U$73 = (struct _QUE_Elem *)chan+364;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           NOP             1
           MVK     .S1     364,A4
           ADD     .L1     A4,A11,A4
           CMPEQ   .L1     A3,A5,A0          ; |1127| 

   [ A0]   BNOP    .S1     L113,5            ; |1127| 
|| [!A0]   LDW     .D1T1   *A3,A3            ; |1128| (P) <0,0>  ^ 

           ; BRANCHCC OCCURS {L113}          ; |1127| 
;** --------------------------------------------------------------------------*
;**	-----------------------g12:
;* 1128	-----------------------    nextElem = (struct _QUE_Elem *)(*nextElem).next;  // [43]
;* 1128	-----------------------    ++i;  // [43]
;* 1128	-----------------------    if ( nextElem != U$73 ) goto g12;  // [43]

           MVC     .S2     CSR,B5
||         CMPEQ   .L1     A3,A4,A0          ; |1128| (P) <0,5> 

           AND     .L2     -2,B5,B6
           MVC     .S2     B6,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 1127
;*      Loop opening brace source line   : 1127
;*      Loop closing brace source line   : 1130
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 5
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1*       0     
;*      .S units                     0        1*    
;*      .D units                     1*       0     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       1*    
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L110:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L111:    ; PIPED LOOP KERNEL
DW$L$_mdControlChan$27$B:
	.dwpsn	"vportcap.c",1127,0

   [!A0]   BNOP    .S2     L111,4            ; |1128| <0,6> 
|| [!A0]   LDW     .D1T1   *A3,A3            ; |1128| <1,0>  ^ 

	.dwpsn	"vportcap.c",1130,0

           ADD     .L2     1,B4,B4           ; |1128| <0,11> 
||         CMPEQ   .L1     A3,A4,A0          ; |1128| <1,5> 

DW$L$_mdControlChan$27$E:
;** --------------------------------------------------------------------------*
L112:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B5,CSR            ; interrupts on
;** --------------------------------------------------------------------------*
L113:    
;**	-----------------------g13:
;* 1131	-----------------------    if ( (*chan).curViop == (*chan).nextViop ) goto g15;  // [43]
;* 1131	-----------------------    ++i;  // [43]
;**	-----------------------g15:
;* 1132	-----------------------    *(int *)args = i;  // [43]
;* 1133	-----------------------    return 0;  // [43]
           MVK     .S1     132,A3            ; |1131| 

           MVK     .S1     131,A3            ; |1131| 
||         LDW     .D1T1   *+A11[A3],A4      ; |1131| 

           LDW     .D1T1   *+A11[A3],A3      ; |1131| 
           NOP             1
           MV      .S2     B13,B3            ; |199| 
           LDW     .D2T2   *+SP(4),B13       ; |199| 
           LDDW    .D2T1   *+SP(8),A11:A10   ; |199| 
           CMPEQ   .L1     A3,A4,A0          ; |1131| 
   [!A0]   ADD     .L2     1,B4,B4           ; |1131| 

           STW     .D1T2   B4,*A12           ; |1132| 
||         RET     .S2     B3                ; |199| 

           LDW     .D2T1   *++SP(16),A12     ; |199| 
           NOP             3
           ZERO    .L1     A4                ; |1133| 
           ; BRANCH OCCURS {B3}              ; |199| 
;** --------------------------------------------------------------------------*
L114:    
;**	-----------------------g16:
;** 764	-----------------------    port = (struct _PortObj *)(chanp+548);  // [40]
;** 764	-----------------------    Q$1 = 151;  // [40]
;** 765	-----------------------    C$38 = (*(struct _PortObj *)chanp).base;  // [40]
;** 765	-----------------------    base = (volatile int *)(C$38+192);  // [40]
;** 767	-----------------------    portParams = (struct _VPORT_PortParams *)args;  // [40]
;** 771	-----------------------    C$37 = (volatile int *)C$38+4;  // [40]
;** 771	-----------------------    *C$37 = *C$37|4;  // [40]
;** 774	-----------------------    *base = *base|0x8000;  // [40]
;** 776	-----------------------    if ( !(*base&0x8000) ) goto g19;  // [40]
;** 774	-----------------------    K$23 = 32768;  // [40]
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           NOP             2

           ADDAD   .D1     A3,24,A4          ; |765| 
||         ADD     .L2X    4,A3,B4           ; |771| 

           LDW     .D2T2   *B4,B6            ; |771| 
           NOP             4
           OR      .L2     4,B6,B6           ; |771| 

           MVKL    .S2     0x8000,B4         ; |774| 
||         STW     .D2T2   B6,*B4            ; |771| 

           LDW     .D1T1   *A4,A3            ; |774| 
||         MVKH    .S2     0x8000,B4         ; |774| 

           NOP             4
           SET     .S1     A3,15,15,A3       ; |774| 
           STW     .D1T1   A3,*A4            ; |774| 
           LDW     .D1T2   *A4,B6            ; |776| 
           NOP             4
           EXTU    .S2     B6,16,31,B0       ; |776| 

   [!B0]   BNOP    .S1     L118,4            ; |776| 
|| [ B0]   MVK     .S2     0x1,B0
|| [ B0]   LDW     .D1T1   *A4,A3            ; |776| (P) <0,0>  ^ 
||         MV      .L2     B0,B1             ; guard predicate rewrite
|| [ B0]   MV      .L1X    B4,A5

   [ B1]   AND     .L1     A5,A3,A0          ; |776| (P) <0,5>  ^ 
           ; BRANCHCC OCCURS {L118}          ; |776| 
;**	-----------------------g18:
;** 776	-----------------------    if ( *base&K$23 ) goto g18;  // [40]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 776
;*      Loop closing brace source line   : 776
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 7
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1*    
;*      .D units                     1*       0     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1*    
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop is interruptible
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L115:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L116:    ; PIPED LOOP KERNEL
DW$L$_mdControlChan$33$B:
   [!A0]   ZERO    .L2     B0                ; |776| <0,6>  ^ 

   [ B0]   BNOP    .S2     L116,4            ; |776| <0,7> 
|| [ B0]   LDW     .D1T1   *A4,A3            ; |776| <1,0>  ^ 

           AND     .L1     A5,A3,A0          ; |776| <1,5>  ^ 
DW$L$_mdControlChan$33$E:
;** --------------------------------------------------------------------------*
L117:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L118:    
;**	-----------------------g19:
;** 778	-----------------------    *base = ((_extu((*portParams).vc3Polarity, 31u, 31u)*2|_extu((*portParams).vc2Polarity, 31u, 31u))*2|_extu((*portParams).vc1Polarity, 31u, 31u))<<4|(*portParams).dualChanEnable&1;  // [40]
;** 783	-----------------------    *base = *base|0x4000;  // [40]
;** 784	-----------------------    *(struct _EDC_Fxns **)port = ((struct _EDC_Fxns **)portParams)[4];  // [40]
;** 785	-----------------------    ((struct _EDC_Fxns **)port)[Q$1] = ((struct _EDC_Fxns **)portParams)[5];  // [40]
;** 342	-----------------------    ICR = _IRQ_eventTable[8];  // [11]
;** 788	-----------------------    return 0;  // [40]
           LDW     .D1T1   *+A7(12),A3       ; |778| 
           LDW     .D1T2   *+A7(8),B4        ; |778| 
           LDW     .D1T2   *+A7(4),B6        ; |778| 
           LDHU    .D1T1   *A7,A5            ; |778| 
           MV      .L2X    A7,B31
           EXTU    .S1     A3,31,30,A3       ; |778| 
           EXTU    .S2     B4,31,31,B4       ; |778| 
           OR      .L2X    B4,A3,B4          ; |778| 

           EXTU    .S2     B6,31,31,B6       ; |778| 
||         ADD     .L2     B4,B4,B4          ; |778| 

           OR      .L2     B6,B4,B4          ; |778| 
           SHL     .S2     B4,4,B4           ; |778| 
           AND     .L1     1,A5,A31          ; |778| 
           OR      .L1X    A31,B4,A3         ; |778| 
           STW     .D1T1   A3,*A4            ; |778| 
           LDW     .D1T2   *A4,B4            ; |783| 
           NOP             1
           MVKL    .S2     __IRQ_eventTable+32,B30 ; |342| 
           MVKH    .S2     __IRQ_eventTable+32,B30 ; |342| 
           MV      .L2X    A8,B29
           SET     .S2     B4,14,14,B4       ; |783| 
           STW     .D1T2   B4,*A4            ; |783| 
           LDW     .D2T1   *+B31(16),A3      ; |784| 
           NOP             3
           LDW     .D2T1   *B30,A30          ; |342| 
           STW     .D1T1   A3,*A8            ; |784| 
           LDW     .D2T2   *+B31(20),B4      ; |785| 
           NOP             4

           MVC     .S2X    A30,ICR           ; |342| 
||         STW     .D2T2   B4,*+B29[B5]      ; |785| 

           LDW     .D2T2   *+SP(4),B13       ; |199| 
||         ZERO    .L1     A10               ; |788| 
||         MV      .L2     B13,B3            ; |199| 

           RET     .S2     B3                ; |199| 
||         LDDW    .D2T1   *+SP(8),A11:A10   ; |199| 
||         MV      .L1     A10,A4            ; |788| 

           LDW     .D2T1   *++SP(16),A12     ; |199| 
           NOP             2
;** --------------------------------------------------------------------------*
L119:    
	.dwpsn	"vportcap.c",199,1
           NOP             2
           ; BRANCH OCCURS {B3}              ; |199| 

DW$176	.dwtag  DW_TAG_loop
	.dwattr DW$176, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L116:1:1192527503")
	.dwattr DW$176, DW_AT_begin_file("vportcap.c")
	.dwattr DW$176, DW_AT_begin_line(0x308)
	.dwattr DW$176, DW_AT_end_line(0x308)
DW$177	.dwtag  DW_TAG_loop_range
	.dwattr DW$177, DW_AT_low_pc(DW$L$_mdControlChan$33$B)
	.dwattr DW$177, DW_AT_high_pc(DW$L$_mdControlChan$33$E)
	.dwendtag DW$176


DW$178	.dwtag  DW_TAG_loop
	.dwattr DW$178, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L111:1:1192527503")
	.dwattr DW$178, DW_AT_begin_file("vportcap.c")
	.dwattr DW$178, DW_AT_begin_line(0x467)
	.dwattr DW$178, DW_AT_end_line(0x46a)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$_mdControlChan$27$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$_mdControlChan$27$E)
	.dwendtag DW$178

	.dwattr DW$172, DW_AT_end_file("vportcap.c")
	.dwattr DW$172, DW_AT_end_line(0xc7)
	.dwattr DW$172, DW_AT_end_column(0x01)
	.dwendtag DW$172

	.sect	".text"

DW$180	.dwtag  DW_TAG_subprogram, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$180, DW_AT_low_pc(_mdDeleteChan)
	.dwattr DW$180, DW_AT_high_pc(0x00)
	.dwattr DW$180, DW_AT_begin_file("vportcap.c")
	.dwattr DW$180, DW_AT_begin_line(0x11c)
	.dwattr DW$180, DW_AT_begin_column(0x0d)
	.dwattr DW$180, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$180, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap.c",285,1

;******************************************************************************
;* FUNCTION NAME: _mdDeleteChan                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Local Frame Size  : 0 Args + 4 Auto + 44 Save = 48 byte                  *
;******************************************************************************
_mdDeleteChan:
;** --------------------------------------------------------------------------*
DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$181, DW_AT_type(*DW$T$37)
	.dwattr DW$181, DW_AT_location[DW_OP_reg4]
;** 286	-----------------------    chan = (struct $$fake3 *)chanp;
;** 287	-----------------------    port = &portObjs[(*chan).portNum];
;** 291	-----------------------    if ( !((*chan).status&1u) ) goto g15;

           MV      .L1X    SP,A31            ; |285| 
||         STW     .D2T1   A15,*SP--(48)     ; |285| 
||         MVK     .S1     1216,A6           ; |287| 
||         MVKL    .S2     _portObjs,B5      ; |287| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         MV      .L1     A4,A11            ; |285| 
||         MVKH    .S2     _portObjs,B5      ; |287| 
||         STW     .D2T2   B3,*+SP(28)
||         MVK     .S1     134,A10           ; |294| 

           LDW     .D1T1   *A11,A3           ; |291| 
||         MVKL    .S2     0x10000005,B4     ; |293| 
||         STDW    .D2T2   B11:B10,*+SP(32)

           LDW     .D1T1   *+A11(4),A5       ; |287| 
||         STDW    .D2T2   B13:B12,*+SP(40)
||         MVKH    .S2     0x10000005,B4     ; |293| 

           NOP             1
           STDW    .D1T1   A13:A12,*-A31(32)
           STW     .D1T1   A14,*-A31(24)
           AND     .L1     1,A3,A0           ; |291| 

           ZERO    .L1     A6                ; |293| 
||         MPYLI   .M1     A6,A5,A9:A8       ; |287| 
|| [!A0]   B       .S1     L123              ; |291| 

   [ A0]   CALL    .S1     _mdControlChan    ; |293| 
           NOP             2

           ZERO    .L2     B5                ; |292| 
||         ADD     .L1X    B5,A8,A12         ; |287| 

           NOP             1
           ; BRANCHCC OCCURS {L123}          ; |291| 
;** --------------------------------------------------------------------------*
;** 292	-----------------------    (*chan).status = 0u;
;** 293	-----------------------    mdControlChan(chanp, 0x10000005u, NULL);
;** 294	-----------------------    ((*chan).mode&2) ? (numEdmaChans = 1) : (numEdmaChans = 3);
;** 294	-----------------------    K$47 = (-32);
;**  	-----------------------    K$50 = 0xffffffffu;
;**  	-----------------------    U$33 = (unsigned (*)[3])chan+388;
;**  	-----------------------    K$38 = 0xfffffffeu;
;**  	-----------------------    K$42 = 32;
;**  	-----------------------    U$68 = (unsigned (*)[12])chan+400;
;**  	-----------------------    U$72 = (unsigned (*)[12])chan+404;
;**  	-----------------------    U$76 = (unsigned (*)[12])chan+408;
;**  	-----------------------    U$80 = (unsigned (*)[12])chan+412;
;**  	-----------------------    U$84 = (int (*)[3])chan+448;
;**  	-----------------------    L$1 = numEdmaChans;
;**  	-----------------------    #pragma MUST_ITERATE(1, 3, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           STW     .D1T2   B5,*A11           ; |292| 
||         ADDKPC  .S2     RL50,B3,0         ; |293| 

RL50:      ; CALL OCCURS {_mdControlChan}    ; |293| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A11[A10],A6     ; |294| 
           MVK     .S1     0x1,A3            ; |294| 
           MVK     .S1     388,A9
           ADD     .L1     A9,A11,A10
           MVK     .S2     448,B31
           AND     .L1     2,A6,A0           ; |294| 
   [!A0]   MVK     .L1     0x3,A3            ; |294| 
           STW     .D2T1   A3,*+SP(4)
           LDW     .D1T1   *A10,A3           ; |296| 
           MVK     .S2     408,B5
           MVK     .S1     404,A8
           ADD     .L1     A8,A11,A15

           ADD     .L2X    B31,A11,B10
||         MVK     .D1     0xffffffff,A5
||         MVK     .S1     412,A7
||         MVK     .S2     400,B4

	.dwpsn	"vportcap.c",295,0

           EXTU    .S1     A3,8,24,A3        ; |296| 
||         ADD     .L1X    B5,A11,A14
||         ADD     .L2X    B4,A11,B11
||         ADD     .D1     A7,A11,A13
||         MVK     .D2     0xfffffffe,B13
||         MVK     .S2     0xffffffe0,B12    ; |294| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
L120:    
DW$L$_mdDeleteChan$4$B:
;**	-----------------------g3:
;** 296	-----------------------    chaNum = C$3 = _extu(*U$33, 8u, 24u);
;** 354	-----------------------    gie = CSR&1u;  // [12]
;** 355	-----------------------    a$1 = CSR&K$38;  // [12]
;** 355	-----------------------    CSR = a$1;  // [12]
;** 356	-----------------------    gie = gie;  // [12]
;** 356	-----------------------    if ( (int)C$3 < K$42 ) goto g5;  // [12]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$3+K$47^K$50);  // [23]
;**  	-----------------------    goto g6;
;**	-----------------------g5:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<chaNum^K$50);  // [23]
;**	-----------------------g6:
;** 360	-----------------------    a$2 = CSR&K$38|gie&1u;  // [13]
;** 360	-----------------------    CSR = a$2;  // [13]
;** 615	-----------------------    chaNum = C$2 = _extu(*U$33, 8u, 24u);  // [24]
;** 618	-----------------------    if ( (int)C$2 < K$42 ) goto g8;  // [24]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$2+K$47;  // [24]
;**  	-----------------------    goto g9;
;**	-----------------------g8:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [24]
;**	-----------------------g9:
;** 298	-----------------------    EDMA_close(*U$33++);
;** 299	-----------------------    EDMA_freeTable(*U$68++{4});
;** 300	-----------------------    EDMA_freeTable(*U$72++{4});
;** 301	-----------------------    EDMA_freeTable(*U$76++{4});
;** 302	-----------------------    EDMA_freeTable(*U$80++{4});
;** 303	-----------------------    EDMA_intFree(*U$84++);
;** 295	-----------------------    if ( --L$1 ) goto g3;
;** 305	-----------------------    if ( !(*chan).numFrms ) goto g13;
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B13,B5,B5         ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVK     .S1     0x20,A4
||         MVK     .L1     1,A31             ; |565| 
||         MVK     .L2     1,B6              ; |566| 

           CMPLT   .L1     A3,A4,A0          ; |356| 

   [ A0]   MVKL    .S2     0x1a0fff4,B5      ; |565| 
|| [!A0]   MVKL    .S1     0x1a0ffb4,A4      ; |566| 

   [ A0]   MVKH    .S2     0x1a0fff4,B5      ; |565| 
|| [!A0]   MVKH    .S1     0x1a0ffb4,A4      ; |566| 

   [ A0]   LDW     .D2T2   *B5,B7            ; |565| 
|| [!A0]   LDW     .D1T1   *A4,A5            ; |566| 
||         ADD     .L2X    B12,A3,B5         ; |566| 
||         MVK     .L1     0xffffffff,A4
|| [ A0]   SHL     .S1     A31,A3,A5         ; |565| 

   [!A0]   SHL     .S2     B6,B5,B5          ; |566| 
||         MVK     .L1     0xffffffff,A3

   [ A0]   XOR     .L1     A3,A5,A4          ; |565| 
|| [ A0]   MVKL    .S1     0x1a0fff4,A3      ; |565| 

   [!A0]   XOR     .L1X    A4,B5,A3          ; |566| 
|| [!A0]   MVKL    .S2     0x1a0ffb4,B5      ; |566| 
|| [ A0]   MVKH    .S1     0x1a0fff4,A3      ; |565| 

   [!A0]   MVKH    .S2     0x1a0ffb4,B5      ; |566| 

   [ A0]   AND     .L2X    A4,B7,B5          ; |565| 
|| [!A0]   AND     .L1     A3,A5,A3          ; |566| 

   [ A0]   STW     .D1T2   B5,*A3            ; |565| 
|| [!A0]   STW     .D2T1   A3,*B5            ; |566| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B13,B5,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T2   *A10,B4           ; |615| 
||         MVK     .S1     0x20,A3
||         MVK     .L2     1,B7              ; |619| 

           NOP             4
           EXTU    .S2     B4,8,24,B4        ; |615| 
           ADD     .L2     B12,B4,B6         ; |619| 
           CMPLT   .L1X    B4,A3,A0          ; |618| 

           MVK     .L2     1,B6              ; |618| 
|| [!A0]   SHL     .S2     B7,B6,B4          ; |619| 
|| [!A0]   MVKL    .S1     0x1a0ffb8,A3      ; |619| 

   [ A0]   MVKL    .S2     0x1a0fff8,B5      ; |618| 
|| [!A0]   MVKH    .S1     0x1a0ffb8,A3      ; |619| 

   [ A0]   MVKH    .S2     0x1a0fff8,B5      ; |618| 
||         MVKL    .S1     _EDMA_close,A3    ; |298| 
|| [!A0]   STW     .D1T2   B4,*A3            ; |619| 

   [ A0]   SHL     .S2     B6,B4,B4          ; |618| 
||         MVKH    .S1     _EDMA_close,A3    ; |298| 

   [ A0]   STW     .D2T2   B4,*B5            ; |618| 

           LDW     .D1T1   *A10++,A4         ; |298| 
||         CALL    .S2X    A3                ; |298| 

           ADDKPC  .S2     RL51,B3,4         ; |298| 
RL51:      ; CALL OCCURS {_EDMA_close}       ; |298| 
DW$L$_mdDeleteChan$4$E:
;** --------------------------------------------------------------------------*
DW$L$_mdDeleteChan$5$B:
           MVKL    .S1     _EDMA_freeTable,A3 ; |299| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |299| 
           LDW     .D2T1   *B11++(16),A4     ; |299| 
           CALL    .S2X    A3                ; |299| 
           ADDKPC  .S2     RL52,B3,4         ; |299| 
RL52:      ; CALL OCCURS {_EDMA_freeTable}   ; |299| 
           MVKL    .S1     _EDMA_freeTable,A3 ; |300| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |300| 
           LDW     .D1T1   *A15++(16),A4     ; |300| 
           CALL    .S2X    A3                ; |300| 
           ADDKPC  .S2     RL53,B3,4         ; |300| 
RL53:      ; CALL OCCURS {_EDMA_freeTable}   ; |300| 
           MVKL    .S1     _EDMA_freeTable,A3 ; |301| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |301| 
           LDW     .D1T1   *A14++(16),A4     ; |301| 
           CALL    .S2X    A3                ; |301| 
           ADDKPC  .S2     RL54,B3,4         ; |301| 
RL54:      ; CALL OCCURS {_EDMA_freeTable}   ; |301| 
           MVKL    .S1     _EDMA_freeTable,A3 ; |302| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |302| 
           LDW     .D1T1   *A13++(16),A4     ; |302| 
           CALL    .S2X    A3                ; |302| 
           ADDKPC  .S2     RL55,B3,4         ; |302| 
RL55:      ; CALL OCCURS {_EDMA_freeTable}   ; |302| 
           MVKL    .S1     _EDMA_intFree,A3  ; |303| 
           MVKH    .S1     _EDMA_intFree,A3  ; |303| 
           LDW     .D2T1   *B10++,A4         ; |303| 
           CALL    .S2X    A3                ; |303| 
           ADDKPC  .S2     RL56,B3,4         ; |303| 
RL56:      ; CALL OCCURS {_EDMA_intFree}     ; |303| 
DW$L$_mdDeleteChan$5$E:
;** --------------------------------------------------------------------------*
DW$L$_mdDeleteChan$6$B:
           LDW     .D2T1   *+SP(4),A3        ; |303| 
           NOP             4
           SUB     .L1     A3,1,A0           ; |295| 

   [!A0]   MVK     .S1     126,A3            ; |305| 
|| [ A0]   B       .S2     L120              ; |295| 
|| [ A0]   LDW     .D1T1   *A10,A3           ; |296| 

           STW     .D2T1   A0,*+SP(4)        ; |295| 
           NOP             3
	.dwpsn	"vportcap.c",304,0

   [ A0]   EXTU    .S1     A3,8,24,A3        ; |296| 
|| [!A0]   LDW     .D1T1   *+A11[A3],A0      ; |305| 

           ; BRANCHCC OCCURS {L120}          ; |295| 
DW$L$_mdDeleteChan$6$E:
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$99 = (union $$fake2 *)(struct _FVID_Frame (*)[10])chan+52;
;** 305	-----------------------    j = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MV      .L2X    A11,B4
           ZERO    .L1     A10               ; |305| 
           MVK     .S1     140,A3            ; |306| 
           ADDAW   .D2     B4,13,B10
   [!A0]   BNOP    .S1     L122,5            ; |305| 
           ; BRANCHCC OCCURS {L122}          ; |305| 
;** --------------------------------------------------------------------------*

           LDW     .D1T1   *+A11[A3],A6      ; |306| 
||         MVK     .S1     139,A3            ; |306| 
||         CALL    .S2     _MEM_free         ; |306| 
||         LDW     .D2T2   *B10,B4           ; |306| 

           LDW     .D1T1   *+A11[A3],A4      ; |306| 
	.dwpsn	"vportcap.c",305,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L121:    
DW$L$_mdDeleteChan$9$B:
;**	-----------------------g12:
;** 306	-----------------------    MEM_free((*chan).segId, (*U$99).iFrm.y1, (unsigned)(*chan).bufSz);
;** 305	-----------------------    U$99 += 32;
;** 305	-----------------------    if ( (unsigned)(++j) < (*chan).numFrms ) goto g12;
           ADDKPC  .S2     RL57,B3,0         ; |306| 
RL57:      ; CALL OCCURS {_MEM_free}         ; |306| 
DW$L$_mdDeleteChan$9$E:
;** --------------------------------------------------------------------------*
DW$L$_mdDeleteChan$10$B:

           MVK     .S1     126,A3            ; |305| 
||         ADD     .L1     1,A10,A10         ; |305| 
||         ADDK    .S2     32,B10            ; |305| 

           LDW     .D1T1   *+A11[A3],A3      ; |305| 
           NOP             4

           MVK     .S1     140,A3            ; |306| 
||         CMPLTU  .L1     A10,A3,A0         ; |305| 

   [ A0]   LDW     .D2T2   *B10,B4           ; |306| 
||         MVK     .S1     139,A3            ; |306| 
|| [ A0]   LDW     .D1T1   *+A11[A3],A6      ; |306| 
|| [ A0]   B       .S2     L121              ; |305| 

   [ A0]   LDW     .D1T1   *+A11[A3],A4      ; |306| 
|| [ A0]   CALL    .S1     _MEM_free         ; |306| 

	.dwpsn	"vportcap.c",307,0
           NOP             4
           ; BRANCHCC OCCURS {L121}          ; |305| 
DW$L$_mdDeleteChan$10$E:
;** --------------------------------------------------------------------------*
L122:    
;**	-----------------------g13:
;** 309	-----------------------    C$1 = (*chan).edcFxns;
;** 309	-----------------------    if ( (void *)C$1 == (void *)K$50 ) goto g15;

           MVK     .S1     135,A3            ; |309| 
||         MVK     .L1     0xffffffff,A4
||         MVK     .S2     136,B4            ; |310| 

           LDW     .D1T1   *+A11[A3],A3      ; |309| 
           NOP             4
           CMPEQ   .L1     A3,A4,A0          ; |309| 

   [ A0]   B       .S1     L124              ; |309| 
|| [!A0]   MV      .L1X    B4,A3
|| [!A0]   LDW     .D1T1   *+A3(4),A5        ; |310| 

   [!A0]   LDW     .D1T1   *+A11[A3],A4      ; |310| 
   [ A0]   LDW     .D1T1   *+A12(8),A4       ; |314| 
           NOP             2
   [!A0]   CALL    .S2X    A5                ; |310| 
           ; BRANCHCC OCCURS {L124}          ; |309| 
;** --------------------------------------------------------------------------*
;** 310	-----------------------    (*(*C$1).close)((*chan).edcHandle);
           ADDKPC  .S2     RL58,B3,4         ; |310| 
RL58:      ; CALL OCCURS {A3}                ; |310| 
;** --------------------------------------------------------------------------*
L123:    
           LDW     .D1T1   *+A12(8),A4       ; |314| 
           NOP             3
;** --------------------------------------------------------------------------*
L124:    
;**	-----------------------g15:
;** 314	-----------------------    if ( *((struct $$fake3 *)(struct $$fake3 (*)[2])port+8)&1u ) goto g18;
;** 314	-----------------------    if ( *((struct $$fake3 *)(struct $$fake3 (*)[2])port+612)&1u ) goto g18;
;** 316	-----------------------    (*port).status = 0;
;**	-----------------------g18:
;** 318	-----------------------    return 0;

           LDW     .D2T2   *+SP(28),B3       ; |319| 
||         MV      .L1X    SP,A31            ; |319| 

           AND     .L1     1,A4,A0           ; |314| 
||         MVK     .S1     153,A4            ; |314| 
||         LDW     .D1T1   *+A31(24),A14     ; |319| 
||         LDDW    .D2T2   *+SP(40),B13:B12  ; |319| 

   [!A0]   LDW     .D1T1   *+A12[A4],A4      ; |314| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |319| 

           NOP             3
           LDDW    .D1T1   *+A31(8),A11:A10  ; |319| 

           ZERO    .S1     A4                ; |318| 
|| [!A0]   AND     .L1     1,A4,A3           ; |314| 

           ZERO    .S1     A3                ; |316| 
||         OR      .L1     A3,A0,A0

   [!A0]   STW     .D1T1   A3,*A12           ; |316| 

           RET     .S2     B3                ; |319| 
||         LDDW    .D1T1   *+A31(16),A13:A12 ; |319| 

           LDW     .D2T1   *++SP(48),A15     ; |319| 
	.dwpsn	"vportcap.c",319,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |319| 

DW$182	.dwtag  DW_TAG_loop
	.dwattr DW$182, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L121:1:1192527503")
	.dwattr DW$182, DW_AT_begin_file("vportcap.c")
	.dwattr DW$182, DW_AT_begin_line(0x131)
	.dwattr DW$182, DW_AT_end_line(0x133)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$_mdDeleteChan$9$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$_mdDeleteChan$9$E)
DW$184	.dwtag  DW_TAG_loop_range
	.dwattr DW$184, DW_AT_low_pc(DW$L$_mdDeleteChan$10$B)
	.dwattr DW$184, DW_AT_high_pc(DW$L$_mdDeleteChan$10$E)
	.dwendtag DW$182


DW$185	.dwtag  DW_TAG_loop
	.dwattr DW$185, DW_AT_name("D:\pred\dsp\vport\vportcap.asm:L120:1:1192527503")
	.dwattr DW$185, DW_AT_begin_file("vportcap.c")
	.dwattr DW$185, DW_AT_begin_line(0x127)
	.dwattr DW$185, DW_AT_end_line(0x130)
DW$186	.dwtag  DW_TAG_loop_range
	.dwattr DW$186, DW_AT_low_pc(DW$L$_mdDeleteChan$4$B)
	.dwattr DW$186, DW_AT_high_pc(DW$L$_mdDeleteChan$4$E)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$_mdDeleteChan$5$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$_mdDeleteChan$5$E)
DW$188	.dwtag  DW_TAG_loop_range
	.dwattr DW$188, DW_AT_low_pc(DW$L$_mdDeleteChan$6$B)
	.dwattr DW$188, DW_AT_high_pc(DW$L$_mdDeleteChan$6$E)
	.dwendtag DW$185

	.dwattr DW$180, DW_AT_end_file("vportcap.c")
	.dwattr DW$180, DW_AT_end_line(0x13f)
	.dwattr DW$180, DW_AT_end_column(0x01)
	.dwendtag DW$180

;; Inlined function references:
;; [  3] QUE_dequeue
;; [  4] QUE_enqueue
;; [  9] IRQ_enable
;; [ 10] IRQ_disable
;; [ 11] IRQ_clear
;; [ 12] IRQ_globalDisable
;; [ 13] IRQ_globalRestore
;; [ 22] EDMA_enableChannel
;; [ 23] EDMA_disableChannel
;; [ 24] EDMA_clearChannel
;; [ 25] EDMA_intEnable
;; [ 26] EDMA_intDisable
;; [ 27] EDMA_intClear
;; [ 28] EDMA_link
;; [ 29] EDMA_config
;; [ 30] EDMA_qdmaConfig
;; [ 39] _configChan
;; [ 40] _configPort
;; [ 43] _getNumPendingIORqsts
;; [ 45] _startVPCapture
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Assertion failed, (chan->status & 4), file vportcap.c, line"
	.string	" 353",10,0
SL2:	.string	"Assertion failed, (params->fldXStop1 == params->fldXStop2),"
	.string	" file vportcap.c, line 595",10,0
SL3:	.string	"Assertion failed, (params->fldXStrt1 == params->fldXStrt2),"
	.string	" file vportcap.c, line 596",10,0
SL4:	.string	"Assertion failed, (((chan->yPitch*chan->numLinesFld1) / (ch"
	.string	"an->yThrld << 3)) *(chan->yThrld << 3) == (chan->yPitch * c"
	.string	"han->numLinesFld1)), file vportcap.c, line 652",10,0
SL5:	.string	"Assertion failed, (((chan->yPitch * chan->numLines) / (chan"
	.string	"->yThrld << 3)) *(chan->yThrld << 3) == (chan->yPitch * cha"
	.string	"n->numLines)), file vportcap.c, line 654",10,0
SL6:	.string	"Assertion failed, ((paramsRaw->lineSz * paramsRaw->numLines"
	.string	" / 3) * 3 == paramsRaw->lineSz * paramsRaw->numLines), file"
	.string	" vportcap.c, line 707",10,0
SL7:	.string	"Assertion failed, (totalBytesPerFrame / chan->yPitch * chan"
	.string	"->yPitch == totalBytesPerFrame), file vportcap.c, line 724",10
	.string	0
SL8:	.string	"Assertion failed, (numFrmBufs >= 2 && numFrmBufs <= 10), fi"
	.string	"le vportcap.c, line 830",10,0
SL9:	.string	"Assertion failed, (chanNum < 2), file vportcap.c, line 223",10
	.string	0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_MEM_free
	.global	_MEM_valloc
	.global	_SEM_pend
	.global	_HWI_dispatchPlug
	.global	_CLK_getltime
	.global	_IRQ_map
	.global	_EDMA_open
	.global	_EDMA_close
	.global	_EDMA_allocTable
	.global	_EDMA_freeTable
	.global	_EDMA_intAlloc
	.global	_EDMA_intFree
	.global	_EDMA_intHook
	.global	_EDMA_intDispatcher
	.global	_IOM_mdNotImpl
	.global	_TSK_timerSem
	.global	_HWI_ATTRS
	.global	__IRQ_eventTable
	.global	_cr_reg
	.global	__abort_msg
	.global	__divi
	.global	__divu

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$T$90	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$90, DW_AT_address_class(0x20)

DW$T$114	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$114, DW_AT_language(DW_LANG_C)
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$T$114


DW$T$116	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
	.dwendtag DW$T$116

DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TiomCallback"), DW_AT_type(*DW$T$77)
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)

DW$T$131	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$131, DW_AT_language(DW_LANG_C)
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$130)
	.dwendtag DW$T$131


DW$T$132	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$132


DW$T$135	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$135, DW_AT_language(DW_LANG_C)
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$88)
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$134)
	.dwendtag DW$T$135


DW$T$137	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$137, DW_AT_language(DW_LANG_C)
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$137


DW$T$139	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$139, DW_AT_language(DW_LANG_C)
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$139


DW$T$140	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$140, DW_AT_language(DW_LANG_C)
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$T$140


DW$T$142	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$142, DW_AT_language(DW_LANG_C)
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$142

DW$T$144	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_IntHandler"), DW_AT_type(*DW$T$143)
	.dwattr DW$T$144, DW_AT_language(DW_LANG_C)

DW$T$145	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$144)
	.dwattr DW$T$145, DW_AT_language(DW_LANG_C)
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$144)
	.dwendtag DW$T$145


DW$T$148	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$148, DW_AT_language(DW_LANG_C)

DW$T$150	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$T$150


DW$T$153	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$153, DW_AT_language(DW_LANG_C)
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$152)
	.dwendtag DW$T$153


DW$T$154	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$154, DW_AT_language(DW_LANG_C)
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$152)
	.dwendtag DW$T$154


DW$T$155	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)
DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$T$155


DW$T$158	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$158, DW_AT_language(DW_LANG_C)
DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$157)
	.dwendtag DW$T$158

DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("Bool"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)

DW$T$180	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$41)
	.dwattr DW$T$180, DW_AT_language(DW_LANG_C)
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$180


DW$T$183	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$41)
	.dwattr DW$T$183, DW_AT_language(DW_LANG_C)
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$182)
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$183

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Int"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)

DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$61

DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn"), DW_AT_type(*DW$T$87)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)

DW$T$91	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
DW$222	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$90)
DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$91


DW$T$95	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$95


DW$T$98	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$90)
DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$231	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$78)
DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$98


DW$T$102	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)
DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$75)
	.dwendtag DW$T$102


DW$T$189	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$189, DW_AT_language(DW_LANG_C)

DW$T$192	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$192, DW_AT_language(DW_LANG_C)
DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$191)
	.dwendtag DW$T$192


DW$T$193	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$193, DW_AT_language(DW_LANG_C)
DW$239	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$240	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$193


DW$T$197	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$197, DW_AT_language(DW_LANG_C)
DW$241	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$197

DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Uns"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Handle"), DW_AT_type(*DW$T$34)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)

DW$T$230	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$230, DW_AT_language(DW_LANG_C)
DW$242	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$243	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$230


DW$T$231	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$231, DW_AT_language(DW_LANG_C)
DW$244	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$231


DW$T$232	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$232, DW_AT_language(DW_LANG_C)
DW$245	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$232


DW$T$233	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$233, DW_AT_language(DW_LANG_C)

DW$T$234	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$234, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$234, DW_AT_byte_size(0x84)
DW$246	.dwtag  DW_TAG_subrange_type
	.dwattr DW$246, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$234

DW$T$235	.dwtag  DW_TAG_typedef, DW_AT_name("LgUns"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$235, DW_AT_language(DW_LANG_C)

DW$T$236	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$235)
	.dwattr DW$T$236, DW_AT_language(DW_LANG_C)
DW$T$237	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$237, DW_AT_type(*DW$T$11)
DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Handle"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$T$182	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle"), DW_AT_type(*DW$T$181)
	.dwattr DW$T$182, DW_AT_language(DW_LANG_C)
DW$T$257	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$257, DW_AT_language(DW_LANG_C)
DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_Attrs"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)
DW$T$134	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$133)
	.dwattr DW$T$134, DW_AT_address_class(0x20)
DW$T$152	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$151)
	.dwattr DW$T$152, DW_AT_address_class(0x20)
DW$T$75	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$74)
	.dwattr DW$T$75, DW_AT_address_class(0x20)
DW$T$191	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$190)
	.dwattr DW$T$191, DW_AT_address_class(0x20)
DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("Char"), DW_AT_type(*DW$T$43)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("String"), DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$T$130	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$129)
	.dwattr DW$T$130, DW_AT_address_class(0x20)
DW$T$157	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$157, DW_AT_address_class(0x20)
DW$T$279	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Fxns"), DW_AT_type(*DW$T$105)
	.dwattr DW$T$279, DW_AT_language(DW_LANG_C)

DW$T$281	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$280)
	.dwattr DW$T$281, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$281, DW_AT_byte_size(0xe40)
DW$247	.dwtag  DW_TAG_subrange_type
	.dwattr DW$247, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$281

DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)
DW$T$77	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$76)
	.dwattr DW$T$77, DW_AT_address_class(0x20)
DW$T$143	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$142)
	.dwattr DW$T$143, DW_AT_address_class(0x20)
DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("MdUns"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$T$87	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$86)
	.dwattr DW$T$87, DW_AT_address_class(0x20)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$19	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$19, DW_AT_address_class(0x20)

DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("SEM_Obj")
	.dwattr DW$T$30, DW_AT_byte_size(0x1c)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$248, DW_AT_name("job"), DW_AT_symbol_name("_job")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$249, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$250, DW_AT_name("pendQ"), DW_AT_symbol_name("_pendQ")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30

DW$T$181	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$181, DW_AT_address_class(0x20)

DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("HWI_Attrs")
	.dwattr DW$T$33, DW_AT_byte_size(0x0c)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$251, DW_AT_name("intrMask"), DW_AT_symbol_name("_intrMask")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$252, DW_AT_name("ccMask"), DW_AT_symbol_name("_ccMask")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$253, DW_AT_name("arg"), DW_AT_symbol_name("_arg")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33

DW$T$151	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Config"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$151, DW_AT_language(DW_LANG_C)
DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Packet"), DW_AT_type(*DW$T$73)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$190	.dwtag  DW_TAG_typedef, DW_AT_name("VPORTCAP_Params"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$190, DW_AT_language(DW_LANG_C)
DW$T$43	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$43, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$T$57	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$43)
	.dwattr DW$T$57, DW_AT_address_class(0x20)
DW$T$129	.dwtag  DW_TAG_const_type
	.dwattr DW$T$129, DW_AT_type(*DW$T$43)
DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("_VPORT_ChanObj"), DW_AT_type(*DW$T$89)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)

DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$105, DW_AT_name("IOM_Fxns")
	.dwattr DW$T$105, DW_AT_byte_size(0x18)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$93)
	.dwattr DW$254, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$255, DW_AT_name("mdUnBindDev"), DW_AT_symbol_name("_mdUnBindDev")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$256, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$100)
	.dwattr DW$257, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$101)
	.dwattr DW$258, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$104)
	.dwattr DW$259, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$105

DW$T$280	.dwtag  DW_TAG_typedef, DW_AT_name("PortObj"), DW_AT_type(*DW$T$108)
	.dwattr DW$T$280, DW_AT_language(DW_LANG_C)

DW$T$76	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$260	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$261	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$75)
	.dwendtag DW$T$76

DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x02)
DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("Arg"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdUnBindDev"), DW_AT_type(*DW$T$62)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)
DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdDeleteChan"), DW_AT_type(*DW$T$62)
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)

DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdBindDev"), DW_AT_type(*DW$T$92)
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdControlChan"), DW_AT_type(*DW$T$96)
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdCreateChan"), DW_AT_type(*DW$T$99)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdSubmitChan"), DW_AT_type(*DW$T$103)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("QUE_Elem")
	.dwattr DW$T$20, DW_AT_byte_size(0x08)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$262, DW_AT_name("next"), DW_AT_symbol_name("_next")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$263, DW_AT_name("prev"), DW_AT_symbol_name("_prev")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)

DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x18)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$264, DW_AT_name("opt"), DW_AT_symbol_name("_opt")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$265, DW_AT_name("src"), DW_AT_symbol_name("_src")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$266, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$267, DW_AT_name("dst"), DW_AT_symbol_name("_dst")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$268, DW_AT_name("idx"), DW_AT_symbol_name("_idx")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$269, DW_AT_name("rld"), DW_AT_symbol_name("_rld")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35

DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Frame"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)

DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_byte_size(0x58)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$270, DW_AT_name("cmode"), DW_AT_symbol_name("_cmode")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$271, DW_AT_name("fldOp"), DW_AT_symbol_name("_fldOp")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$272, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$273, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$274, DW_AT_name("bpk10Bit"), DW_AT_symbol_name("_bpk10Bit")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$275, DW_AT_name("hCtRst"), DW_AT_symbol_name("_hCtRst")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$276, DW_AT_name("vCtRst"), DW_AT_symbol_name("_vCtRst")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$277, DW_AT_name("fldDect"), DW_AT_symbol_name("_fldDect")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$278, DW_AT_name("extCtl"), DW_AT_symbol_name("_extCtl")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$279, DW_AT_name("fldInv"), DW_AT_symbol_name("_fldInv")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$280, DW_AT_name("fldXStrt1"), DW_AT_symbol_name("_fldXStrt1")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$281, DW_AT_name("fldYStrt1"), DW_AT_symbol_name("_fldYStrt1")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$282, DW_AT_name("fldXStrt2"), DW_AT_symbol_name("_fldXStrt2")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$283, DW_AT_name("fldYStrt2"), DW_AT_symbol_name("_fldYStrt2")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$284, DW_AT_name("fldXStop1"), DW_AT_symbol_name("_fldXStop1")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$285, DW_AT_name("fldYStop1"), DW_AT_symbol_name("_fldYStop1")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$286, DW_AT_name("fldXStop2"), DW_AT_symbol_name("_fldXStop2")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$287, DW_AT_name("fldYStop2"), DW_AT_symbol_name("_fldYStop2")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$288, DW_AT_name("thrld"), DW_AT_symbol_name("_thrld")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$289, DW_AT_name("numFrmBufs"), DW_AT_symbol_name("_numFrmBufs")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$290, DW_AT_name("alignment"), DW_AT_symbol_name("_alignment")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$291, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$292, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$293, DW_AT_name("edmaPri"), DW_AT_symbol_name("_edmaPri")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$294, DW_AT_name("irqId"), DW_AT_symbol_name("_irqId")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$295, DW_AT_name("autoSyncEnable"), DW_AT_symbol_name("_autoSyncEnable")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$89, DW_AT_byte_size(0x25c)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$296, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$297, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$298, DW_AT_name("chanNum"), DW_AT_symbol_name("_chanNum")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$299, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$300, DW_AT_name("edmaChanNum"), DW_AT_symbol_name("_edmaChanNum")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$301, DW_AT_name("edmaAddr"), DW_AT_symbol_name("_edmaAddr")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$302, DW_AT_name("vIntMask"), DW_AT_symbol_name("_vIntMask")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$303, DW_AT_name("viops"), DW_AT_symbol_name("_viops")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$304, DW_AT_name("qIn"), DW_AT_symbol_name("_qIn")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x16c]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$305, DW_AT_name("qOut"), DW_AT_symbol_name("_qOut")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x174]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$306, DW_AT_name("qPullDown"), DW_AT_symbol_name("_qPullDown")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x17c]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$307, DW_AT_name("hEdma"), DW_AT_symbol_name("_hEdma")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x184]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$308, DW_AT_name("hRld"), DW_AT_symbol_name("_hRld")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x190]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$309, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c0]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$310, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x1cc]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$311, DW_AT_name("interlaced"), DW_AT_symbol_name("_interlaced")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ce]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$78)
	.dwattr DW$312, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$313, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d4]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$314, DW_AT_name("vIntFxn"), DW_AT_symbol_name("_vIntFxn")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d8]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$82)
	.dwattr DW$315, DW_AT_name("queEmpty"), DW_AT_symbol_name("_queEmpty")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x1dc]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$316, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x1de]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$317, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$318, DW_AT_name("yPitch"), DW_AT_symbol_name("_yPitch")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e4]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$319, DW_AT_name("cPitch"), DW_AT_symbol_name("_cPitch")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e8]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$320, DW_AT_name("numLines"), DW_AT_symbol_name("_numLines")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ec]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$321, DW_AT_name("numPixels"), DW_AT_symbol_name("_numPixels")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$322, DW_AT_name("numLinesFld1"), DW_AT_symbol_name("_numLinesFld1")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f4]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$323, DW_AT_name("numFrms"), DW_AT_symbol_name("_numFrms")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f8]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$324, DW_AT_name("numEvents"), DW_AT_symbol_name("_numEvents")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x1fc]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$325, DW_AT_name("numEventsFld1"), DW_AT_symbol_name("_numEventsFld1")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x200]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$326, DW_AT_name("yThrld"), DW_AT_symbol_name("_yThrld")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x204]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$327, DW_AT_name("cThrld"), DW_AT_symbol_name("_cThrld")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x208]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$328, DW_AT_name("curViop"), DW_AT_symbol_name("_curViop")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x20c]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$329, DW_AT_name("nextViop"), DW_AT_symbol_name("_nextViop")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x210]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$330, DW_AT_name("mrViop"), DW_AT_symbol_name("_mrViop")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x214]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$331, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x218]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$85)
	.dwattr DW$332, DW_AT_name("edcFxns"), DW_AT_symbol_name("_edcFxns")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x21c]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$333, DW_AT_name("edcHandle"), DW_AT_symbol_name("_edcHandle")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x220]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$334, DW_AT_name("packetIOM"), DW_AT_symbol_name("_packetIOM")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x224]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$335, DW_AT_name("vIntCbArg"), DW_AT_symbol_name("_vIntCbArg")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x228]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$336, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x22c]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$337, DW_AT_name("bufSz"), DW_AT_symbol_name("_bufSz")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x230]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$338, DW_AT_name("lastLineNum"), DW_AT_symbol_name("_lastLineNum")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x234]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$339, DW_AT_name("nextEDMARlds"), DW_AT_symbol_name("_nextEDMARlds")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x238]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$340, DW_AT_name("numTotalLinesFld1"), DW_AT_symbol_name("_numTotalLinesFld1")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x23c]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$341, DW_AT_name("autoSyncEnable"), DW_AT_symbol_name("_autoSyncEnable")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x240]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$342, DW_AT_name("asyncModeEnable"), DW_AT_symbol_name("_asyncModeEnable")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x242]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$343, DW_AT_name("pullDownMode"), DW_AT_symbol_name("_pullDownMode")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x244]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$344, DW_AT_name("asyncFrameCt"), DW_AT_symbol_name("_asyncFrameCt")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x248]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$88)
	.dwattr DW$345, DW_AT_name("asyncCallBackFxn"), DW_AT_symbol_name("_asyncCallBackFxn")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x24c]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$346, DW_AT_name("frmSz"), DW_AT_symbol_name("_frmSz")
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x250]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$347, DW_AT_name("asyncCbArg"), DW_AT_symbol_name("_asyncCbArg")
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x254]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$348, DW_AT_name("startFlag"), DW_AT_symbol_name("_startFlag")
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x258]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$89


DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$108, DW_AT_name("PortObj")
	.dwattr DW$T$108, DW_AT_byte_size(0x4c0)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$349, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$350, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$107)
	.dwattr DW$351, DW_AT_name("chanObj"), DW_AT_symbol_name("_chanObj")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$108

DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("VPORT_IntCallBack"), DW_AT_type(*DW$T$80)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$82	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$82, DW_AT_type(*DW$T$41)
DW$T$62	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$61)
	.dwattr DW$T$62, DW_AT_address_class(0x20)

DW$T$72	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$72, DW_AT_byte_size(0x0c)
DW$352	.dwtag  DW_TAG_subrange_type
	.dwattr DW$352, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$72

DW$T$92	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$91)
	.dwattr DW$T$92, DW_AT_address_class(0x20)
DW$T$96	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$95)
	.dwattr DW$T$96, DW_AT_address_class(0x20)
DW$T$99	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$98)
	.dwattr DW$T$99, DW_AT_address_class(0x20)
DW$T$103	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$102)
	.dwattr DW$T$103, DW_AT_address_class(0x20)

DW$T$66	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$66, DW_AT_byte_size(0x0c)
DW$353	.dwtag  DW_TAG_subrange_type
	.dwattr DW$353, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$66


DW$T$70	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$70, DW_AT_byte_size(0x0c)
DW$354	.dwtag  DW_TAG_subrange_type
	.dwattr DW$354, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$70


DW$T$71	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$71, DW_AT_byte_size(0x30)
DW$355	.dwtag  DW_TAG_subrange_type
	.dwattr DW$355, DW_AT_upper_bound(0x0b)
	.dwendtag DW$T$71

DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("KNL_Job")
	.dwattr DW$T$28, DW_AT_byte_size(0x10)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$356, DW_AT_name("wListElem"), DW_AT_symbol_name("_wListElem")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$357, DW_AT_name("wCount"), DW_AT_symbol_name("_wCount")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$358, DW_AT_name("fxn"), DW_AT_symbol_name("_fxn")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("DEV_Frame")
	.dwattr DW$T$38, DW_AT_byte_size(0x20)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$359, DW_AT_name("link"), DW_AT_symbol_name("_link")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$360, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$361, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$362, DW_AT_name("misc"), DW_AT_symbol_name("_misc")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$363, DW_AT_name("arg"), DW_AT_symbol_name("_arg")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$364, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$365, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$68	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$68, DW_AT_byte_size(0x140)
DW$366	.dwtag  DW_TAG_subrange_type
	.dwattr DW$366, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$68

DW$T$83	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$83, DW_AT_address_class(0x20)
DW$T$85	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$84)
	.dwattr DW$T$85, DW_AT_address_class(0x20)

DW$T$107	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$107, DW_AT_byte_size(0x4b8)
DW$367	.dwtag  DW_TAG_subrange_type
	.dwattr DW$367, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$107

DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$T$80	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$79)
	.dwattr DW$T$80, DW_AT_address_class(0x20)
DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_Frame"), DW_AT_type(*DW$T$55)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Fxns"), DW_AT_type(*DW$T$65)
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$26, DW_AT_address_class(0x20)

DW$T$79	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
DW$368	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
DW$369	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$79


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_name("FVID_Frame")
	.dwattr DW$T$55, DW_AT_byte_size(0x20)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$370, DW_AT_name("queElement"), DW_AT_symbol_name("_queElement")
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$371, DW_AT_name("frame"), DW_AT_symbol_name("_frame")
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("EDC_Fxns")
	.dwattr DW$T$65, DW_AT_byte_size(0x0c)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$372, DW_AT_name("open"), DW_AT_symbol_name("_open")
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$373, DW_AT_name("close"), DW_AT_symbol_name("_close")
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$374, DW_AT_name("ctrl"), DW_AT_symbol_name("_ctrl")
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65

DW$T$60	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$59)
	.dwattr DW$T$60, DW_AT_address_class(0x20)

DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$375	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$25

DW$T$64	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_address_class(0x20)
DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)

DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr DW$T$54, DW_AT_byte_size(0x18)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$376, DW_AT_name("iFrm"), DW_AT_symbol_name("_iFrm")
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$377, DW_AT_name("pFrm"), DW_AT_symbol_name("_pFrm")
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$378, DW_AT_name("riFrm"), DW_AT_symbol_name("_riFrm")
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$379, DW_AT_name("rpFrm"), DW_AT_symbol_name("_rpFrm")
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$59	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$56)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$380	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$381	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$59


DW$T$63	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$382	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$383	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$384	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$63

DW$T$23	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$23, DW_AT_address_class(0x20)
DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_IFrame"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_PFrame"), DW_AT_type(*DW$T$47)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_RawIFrame"), DW_AT_type(*DW$T$48)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_RawPFrame"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Handle"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)

DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("FVID_IFrame")
	.dwattr DW$T$46, DW_AT_byte_size(0x18)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$385, DW_AT_name("y1"), DW_AT_symbol_name("_y1")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$386, DW_AT_name("cb1"), DW_AT_symbol_name("_cb1")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$387, DW_AT_name("cr1"), DW_AT_symbol_name("_cr1")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$388, DW_AT_name("y2"), DW_AT_symbol_name("_y2")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$389, DW_AT_name("cb2"), DW_AT_symbol_name("_cb2")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$390, DW_AT_name("cr2"), DW_AT_symbol_name("_cr2")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("FVID_PFrame")
	.dwattr DW$T$47, DW_AT_byte_size(0x0c)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$391, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$392, DW_AT_name("cb"), DW_AT_symbol_name("_cb")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$393, DW_AT_name("cr"), DW_AT_symbol_name("_cr")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("FVID_RawIFrame")
	.dwattr DW$T$48, DW_AT_byte_size(0x08)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$394, DW_AT_name("buf1"), DW_AT_symbol_name("_buf1")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$395, DW_AT_name("buf2"), DW_AT_symbol_name("_buf2")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_name("FVID_RawPFrame")
	.dwattr DW$T$49, DW_AT_byte_size(0x04)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$396, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49

DW$T$45	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$44)
	.dwattr DW$T$45, DW_AT_address_class(0x20)

	.dwattr DW$65, DW_AT_type(*DW$T$22)
	.dwattr DW$68, DW_AT_type(*DW$T$22)
	.dwattr DW$49, DW_AT_type(*DW$T$22)
	.dwattr DW$60, DW_AT_type(*DW$T$22)
	.dwattr DW$58, DW_AT_type(*DW$T$22)
	.dwattr DW$116, DW_AT_type(*DW$T$22)
	.dwattr DW$172, DW_AT_type(*DW$T$22)
	.dwattr DW$122, DW_AT_type(*DW$T$22)
	.dwattr DW$180, DW_AT_type(*DW$T$22)
	.dwattr DW$55, DW_AT_type(*DW$T$22)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$397	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$397, DW_AT_location[DW_OP_reg0]
DW$398	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$398, DW_AT_location[DW_OP_reg1]
DW$399	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$399, DW_AT_location[DW_OP_reg2]
DW$400	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$400, DW_AT_location[DW_OP_reg3]
DW$401	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$401, DW_AT_location[DW_OP_reg4]
DW$402	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$402, DW_AT_location[DW_OP_reg5]
DW$403	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$403, DW_AT_location[DW_OP_reg6]
DW$404	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$404, DW_AT_location[DW_OP_reg7]
DW$405	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$405, DW_AT_location[DW_OP_reg8]
DW$406	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$406, DW_AT_location[DW_OP_reg9]
DW$407	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$407, DW_AT_location[DW_OP_reg10]
DW$408	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$408, DW_AT_location[DW_OP_reg11]
DW$409	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$409, DW_AT_location[DW_OP_reg12]
DW$410	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$410, DW_AT_location[DW_OP_reg13]
DW$411	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$411, DW_AT_location[DW_OP_reg14]
DW$412	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$412, DW_AT_location[DW_OP_reg15]
DW$413	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$413, DW_AT_location[DW_OP_reg16]
DW$414	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$414, DW_AT_location[DW_OP_reg17]
DW$415	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$415, DW_AT_location[DW_OP_reg18]
DW$416	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$416, DW_AT_location[DW_OP_reg19]
DW$417	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$417, DW_AT_location[DW_OP_reg20]
DW$418	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$418, DW_AT_location[DW_OP_reg21]
DW$419	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$419, DW_AT_location[DW_OP_reg22]
DW$420	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$420, DW_AT_location[DW_OP_reg23]
DW$421	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$421, DW_AT_location[DW_OP_reg24]
DW$422	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$422, DW_AT_location[DW_OP_reg25]
DW$423	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$423, DW_AT_location[DW_OP_reg26]
DW$424	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$424, DW_AT_location[DW_OP_reg27]
DW$425	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$425, DW_AT_location[DW_OP_reg28]
DW$426	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$426, DW_AT_location[DW_OP_reg29]
DW$427	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$427, DW_AT_location[DW_OP_reg30]
DW$428	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$428, DW_AT_location[DW_OP_reg31]
DW$429	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$429, DW_AT_location[DW_OP_regx 0x20]
DW$430	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$430, DW_AT_location[DW_OP_regx 0x21]
DW$431	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$431, DW_AT_location[DW_OP_regx 0x22]
DW$432	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$432, DW_AT_location[DW_OP_regx 0x23]
DW$433	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$433, DW_AT_location[DW_OP_regx 0x24]
DW$434	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$434, DW_AT_location[DW_OP_regx 0x25]
DW$435	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$435, DW_AT_location[DW_OP_regx 0x26]
DW$436	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$436, DW_AT_location[DW_OP_regx 0x27]
DW$437	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$437, DW_AT_location[DW_OP_regx 0x28]
DW$438	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$438, DW_AT_location[DW_OP_regx 0x29]
DW$439	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$439, DW_AT_location[DW_OP_regx 0x2a]
DW$440	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$440, DW_AT_location[DW_OP_regx 0x2b]
DW$441	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$441, DW_AT_location[DW_OP_regx 0x2c]
DW$442	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$442, DW_AT_location[DW_OP_regx 0x2d]
DW$443	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$443, DW_AT_location[DW_OP_regx 0x2e]
DW$444	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$444, DW_AT_location[DW_OP_regx 0x2f]
DW$445	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$445, DW_AT_location[DW_OP_regx 0x30]
DW$446	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$446, DW_AT_location[DW_OP_regx 0x31]
DW$447	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$447, DW_AT_location[DW_OP_regx 0x32]
DW$448	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$448, DW_AT_location[DW_OP_regx 0x33]
DW$449	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$449, DW_AT_location[DW_OP_regx 0x34]
DW$450	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$450, DW_AT_location[DW_OP_regx 0x35]
DW$451	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$451, DW_AT_location[DW_OP_regx 0x36]
DW$452	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$452, DW_AT_location[DW_OP_regx 0x37]
DW$453	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$453, DW_AT_location[DW_OP_regx 0x38]
DW$454	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$454, DW_AT_location[DW_OP_regx 0x39]
DW$455	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$455, DW_AT_location[DW_OP_regx 0x3a]
DW$456	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$456, DW_AT_location[DW_OP_regx 0x3b]
DW$457	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$457, DW_AT_location[DW_OP_regx 0x3c]
DW$458	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$458, DW_AT_location[DW_OP_regx 0x3d]
DW$459	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$459, DW_AT_location[DW_OP_regx 0x3e]
DW$460	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$460, DW_AT_location[DW_OP_regx 0x3f]
DW$461	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$461, DW_AT_location[DW_OP_regx 0x40]
DW$462	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$462, DW_AT_location[DW_OP_regx 0x41]
DW$463	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$463, DW_AT_location[DW_OP_regx 0x42]
DW$464	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$464, DW_AT_location[DW_OP_regx 0x43]
DW$465	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$465, DW_AT_location[DW_OP_regx 0x44]
DW$466	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$466, DW_AT_location[DW_OP_regx 0x45]
DW$467	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$467, DW_AT_location[DW_OP_regx 0x46]
DW$468	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$468, DW_AT_location[DW_OP_regx 0x47]
DW$469	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$469, DW_AT_location[DW_OP_regx 0x48]
DW$470	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$470, DW_AT_location[DW_OP_regx 0x49]
DW$471	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$471, DW_AT_location[DW_OP_regx 0x4a]
DW$472	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$472, DW_AT_location[DW_OP_regx 0x4b]
DW$473	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$473, DW_AT_location[DW_OP_regx 0x4c]
DW$474	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$474, DW_AT_location[DW_OP_regx 0x4d]
DW$475	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$475, DW_AT_location[DW_OP_regx 0x4e]
DW$476	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$476, DW_AT_location[DW_OP_regx 0x4f]
DW$477	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$477, DW_AT_location[DW_OP_regx 0x50]
DW$478	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$478, DW_AT_location[DW_OP_regx 0x51]
DW$479	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$479, DW_AT_location[DW_OP_regx 0x52]
DW$480	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$480, DW_AT_location[DW_OP_regx 0x53]
DW$481	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$481, DW_AT_location[DW_OP_regx 0x54]
DW$482	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$482, DW_AT_location[DW_OP_regx 0x55]
DW$483	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$483, DW_AT_location[DW_OP_regx 0x56]
DW$484	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$484, DW_AT_location[DW_OP_regx 0x57]
DW$485	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$485, DW_AT_location[DW_OP_regx 0x58]
DW$486	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$486, DW_AT_location[DW_OP_regx 0x59]
DW$487	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$487, DW_AT_location[DW_OP_regx 0x5a]
DW$488	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$488, DW_AT_location[DW_OP_regx 0x5b]
DW$489	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$489, DW_AT_location[DW_OP_regx 0x5c]
DW$490	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$490, DW_AT_location[DW_OP_regx 0x5d]
DW$491	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$491, DW_AT_location[DW_OP_regx 0x5e]
DW$492	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$492, DW_AT_location[DW_OP_regx 0x5f]
DW$493	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$493, DW_AT_location[DW_OP_regx 0x60]
DW$494	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$494, DW_AT_location[DW_OP_regx 0x61]
DW$495	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$495, DW_AT_location[DW_OP_regx 0x62]
DW$496	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$496, DW_AT_location[DW_OP_regx 0x63]
DW$497	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$497, DW_AT_location[DW_OP_regx 0x64]
DW$498	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$498, DW_AT_location[DW_OP_regx 0x65]
DW$499	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$499, DW_AT_location[DW_OP_regx 0x66]
DW$500	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$500, DW_AT_location[DW_OP_regx 0x67]
DW$501	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$501, DW_AT_location[DW_OP_regx 0x68]
DW$502	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$502, DW_AT_location[DW_OP_regx 0x69]
DW$503	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$503, DW_AT_location[DW_OP_regx 0x6a]
DW$504	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$504, DW_AT_location[DW_OP_regx 0x6b]
DW$505	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$505, DW_AT_location[DW_OP_regx 0x6c]
DW$506	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$506, DW_AT_location[DW_OP_regx 0x6d]
DW$507	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$507, DW_AT_location[DW_OP_regx 0x6e]
DW$508	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$508, DW_AT_location[DW_OP_regx 0x6f]
DW$509	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$509, DW_AT_location[DW_OP_regx 0x70]
DW$510	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$510, DW_AT_location[DW_OP_regx 0x71]
DW$511	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$511, DW_AT_location[DW_OP_regx 0x72]
DW$512	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$512, DW_AT_location[DW_OP_regx 0x73]
DW$513	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$513, DW_AT_location[DW_OP_regx 0x74]
DW$514	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$514, DW_AT_location[DW_OP_regx 0x75]
DW$515	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$515, DW_AT_location[DW_OP_regx 0x76]
DW$516	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$516, DW_AT_location[DW_OP_regx 0x77]
DW$517	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$517, DW_AT_location[DW_OP_regx 0x78]
DW$518	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$518, DW_AT_location[DW_OP_regx 0x79]
DW$519	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$519, DW_AT_location[DW_OP_regx 0x7a]
DW$520	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$520, DW_AT_location[DW_OP_regx 0x7b]
DW$521	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$521, DW_AT_location[DW_OP_regx 0x7c]
DW$522	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$522, DW_AT_location[DW_OP_regx 0x7d]
DW$523	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$523, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

