;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Tue Apr 05 14:11:22 2011                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=near --mem_model:data=far --quiet --silicon_version=6400 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64xx                                          *
;*   Optimization      : Disabled                                             *
;*   Optimizing for    : Compile time, Ease of Development                    *
;*                       Based on options: no -o, no -ms                      *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
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
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$120)
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


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("QUE_get"), DW_AT_symbol_name("_QUE_get")
	.dwattr DW$13, DW_AT_type(*DW$T$37)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
	.dwendtag DW$13


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("QUE_put"), DW_AT_symbol_name("_QUE_put")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$15


DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_pend"), DW_AT_symbol_name("_SEM_pend")
	.dwattr DW$18, DW_AT_type(*DW$T$41)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$155)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$18


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("HWI_dispatchPlug"), DW_AT_symbol_name("_HWI_dispatchPlug")
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$88)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$125)
	.dwendtag DW$21


DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("CLK_getltime"), DW_AT_symbol_name("_CLK_getltime")
	.dwattr DW$26, DW_AT_type(*DW$T$175)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_map"), DW_AT_symbol_name("_IRQ_map")
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$27


DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_enable"), DW_AT_symbol_name("_IRQ_enable")
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_disable"), DW_AT_symbol_name("_IRQ_disable")
	.dwattr DW$32, DW_AT_type(*DW$T$34)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$32


DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_clear"), DW_AT_symbol_name("_IRQ_clear")
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$34


DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalDisable"), DW_AT_symbol_name("_IRQ_globalDisable")
	.dwattr DW$36, DW_AT_type(*DW$T$34)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalRestore"), DW_AT_symbol_name("_IRQ_globalRestore")
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$37


DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_open"), DW_AT_symbol_name("_EDMA_open")
	.dwattr DW$39, DW_AT_type(*DW$T$69)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$39


DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_close"), DW_AT_symbol_name("_EDMA_close")
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$42


DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_allocTable"), DW_AT_symbol_name("_EDMA_allocTable")
	.dwattr DW$44, DW_AT_type(*DW$T$69)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$44


DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_freeTable"), DW_AT_symbol_name("_EDMA_freeTable")
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$46


DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intAlloc"), DW_AT_symbol_name("_EDMA_intAlloc")
	.dwattr DW$48, DW_AT_type(*DW$T$10)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$48


DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intFree"), DW_AT_symbol_name("_EDMA_intFree")
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$50


DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intHook"), DW_AT_symbol_name("_EDMA_intHook")
	.dwattr DW$52, DW_AT_type(*DW$T$136)
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$136)
	.dwendtag DW$52


DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intDispatcher"), DW_AT_symbol_name("_EDMA_intDispatcher")
	.dwattr DW$55, DW_AT_declaration(0x01)
	.dwattr DW$55, DW_AT_external(0x01)

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_enableChannel"), DW_AT_symbol_name("_EDMA_enableChannel")
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$56


DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_disableChannel"), DW_AT_symbol_name("_EDMA_disableChannel")
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$58


DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_clearChannel"), DW_AT_symbol_name("_EDMA_clearChannel")
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$60


DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intEnable"), DW_AT_symbol_name("_EDMA_intEnable")
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$62


DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intDisable"), DW_AT_symbol_name("_EDMA_intDisable")
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$64


DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intClear"), DW_AT_symbol_name("_EDMA_intClear")
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$66


DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_link"), DW_AT_symbol_name("_EDMA_link")
	.dwattr DW$68, DW_AT_declaration(0x01)
	.dwattr DW$68, DW_AT_external(0x01)
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$68


DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_config"), DW_AT_symbol_name("_EDMA_config")
	.dwattr DW$71, DW_AT_declaration(0x01)
	.dwattr DW$71, DW_AT_external(0x01)
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$144)
	.dwendtag DW$71


DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("IOM_mdNotImpl"), DW_AT_symbol_name("_IOM_mdNotImpl")
	.dwattr DW$74, DW_AT_type(*DW$T$22)
	.dwattr DW$74, DW_AT_declaration(0x01)
	.dwattr DW$74, DW_AT_external(0x01)
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("TSK_timerSem"), DW_AT_symbol_name("_TSK_timerSem")
	.dwattr DW$75, DW_AT_type(*DW$T$213)
	.dwattr DW$75, DW_AT_declaration(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("HWI_ATTRS"), DW_AT_symbol_name("_HWI_ATTRS")
	.dwattr DW$76, DW_AT_type(*DW$T$124)
	.dwattr DW$76, DW_AT_declaration(0x01)
	.dwattr DW$76, DW_AT_external(0x01)
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("cr_reg"), DW_AT_symbol_name("_cr_reg")
	.dwattr DW$77, DW_AT_type(*DW$T$10)
	.dwattr DW$77, DW_AT_declaration(0x01)
	.dwattr DW$77, DW_AT_external(0x01)
	.global	_VPORTCAP_Fxns
_VPORTCAP_Fxns:	.usect	".far",24,4
DW$78	.dwtag  DW_TAG_variable, DW_AT_name("VPORTCAP_Fxns"), DW_AT_symbol_name("_VPORTCAP_Fxns")
	.dwattr DW$78, DW_AT_location[DW_OP_addr _VPORTCAP_Fxns]
	.dwattr DW$78, DW_AT_type(*DW$T$218)
	.dwattr DW$78, DW_AT_external(0x01)
_portObjs:	.usect	".far",3648,8
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("portObjs"), DW_AT_symbol_name("_portObjs")
	.dwattr DW$79, DW_AT_type(*DW$T$220)
	.dwattr DW$79, DW_AT_location[DW_OP_addr _portObjs]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\acp6x.exe -@C:\Users\ADMINI~1\AppData\Local\Temp\TI69212 
	.sect	".text"

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$80, DW_AT_low_pc(_mdBindDev)
	.dwattr DW$80, DW_AT_high_pc(0x00)
	.dwattr DW$80, DW_AT_begin_file("vportcap.c")
	.dwattr DW$80, DW_AT_begin_line(0x8d)
	.dwattr DW$80, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",142,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 141 | static Int mdBindDev(Ptr *devp, Int devid, Ptr devParams)              
;----------------------------------------------------------------------

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
;*   Local Frame Size  : 0 Args + 24 Auto + 4 Save = 28 byte                  *
;******************************************************************************
_mdBindDev:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |142| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$81, DW_AT_type(*DW$T$90)
	.dwattr DW$81, DW_AT_location[DW_OP_reg4]
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devid"), DW_AT_symbol_name("_devid")
	.dwattr DW$82, DW_AT_type(*DW$T$22)
	.dwattr DW$82, DW_AT_location[DW_OP_reg20]
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devParams"), DW_AT_symbol_name("_devParams")
	.dwattr DW$83, DW_AT_type(*DW$T$37)
	.dwattr DW$83, DW_AT_location[DW_OP_reg6]
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$84, DW_AT_type(*DW$T$90)
	.dwattr DW$84, DW_AT_location[DW_OP_breg31 4]
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("devid"), DW_AT_symbol_name("_devid")
	.dwattr DW$85, DW_AT_type(*DW$T$22)
	.dwattr DW$85, DW_AT_location[DW_OP_breg31 8]
DW$86	.dwtag  DW_TAG_variable, DW_AT_name("devParams"), DW_AT_symbol_name("_devParams")
	.dwattr DW$86, DW_AT_type(*DW$T$37)
	.dwattr DW$86, DW_AT_location[DW_OP_breg31 12]
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$87, DW_AT_type(*DW$T$22)
	.dwattr DW$87, DW_AT_location[DW_OP_breg31 16]
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$88, DW_AT_type(*DW$T$167)
	.dwattr DW$88, DW_AT_location[DW_OP_breg31 20]
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$89, DW_AT_type(*DW$T$168)
	.dwattr DW$89, DW_AT_location[DW_OP_breg31 24]
           STW     .D2T1   A6,*+SP(12)       ; |142| 
           STW     .D2T2   B4,*+SP(8)        ; |142| 
           STW     .D2T1   A4,*+SP(4)        ; |142| 
           NOP             2
	.dwpsn	"vportcap.c",143,9
;----------------------------------------------------------------------
; 143 | Int portNum = devid;                                                   
; 144 | volatile Int i;                                                        
;----------------------------------------------------------------------
           STW     .D2T2   B4,*+SP(16)       ; |143| 
           NOP             2
	.dwpsn	"vportcap.c",145,19
;----------------------------------------------------------------------
; 145 | volatile Int* base = (volatile Int *)portObjs[portNum].base;
;     |                                                                        
;----------------------------------------------------------------------
           MVK     .S2     1216,B5           ; |145| 
           MPYLI   .M2     B5,B4,B5:B4       ; |145| 
           NOP             2
           MVKL    .S1     _portObjs+4,A3    ; |145| 
           MVKH    .S1     _portObjs+4,A3    ; |145| 
           ADD     .L1X    A3,B4,A3          ; |145| 
           LDW     .D1T1   *A3,A3            ; |145| 
           NOP             4
           STW     .D2T1   A3,*+SP(24)       ; |145| 
           NOP             2
	.dwpsn	"vportcap.c",147,5
;----------------------------------------------------------------------
; 147 | assert(portNum < _VP_PORT_CNT);                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |147| 
           NOP             2
           MVKL    .S1     SL1+0,A4          ; |147| 
           MVKH    .S1     SL1+0,A4          ; |147| 
           CMPLT   .L2     B4,3,B0           ; |147| 
   [ B0]   BNOP    .S1     L1,5              ; |147| 
           ; BRANCHCC OCCURS {L1}            ; |147| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |147| 
           ADDKPC  .S2     RL0,B3,4          ; |147| 
RL0:       ; CALL OCCURS {__abort_msg}       ; |147| 
;** --------------------------------------------------------------------------*
L1:    
	.dwpsn	"vportcap.c",148,5
;----------------------------------------------------------------------
; 148 | base[_VP_VPCTL_OFFSET] =                                               
; 149 |          VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B5       ; |148| 
           NOP             1
           MVK     .S2     48,B6             ; |148| 
           ZERO    .L2     B4                ; |148| 
           SET     .S2     B4,0xf,0xf,B4     ; |148| 
           STW     .D2T2   B4,*+B5[B6]       ; |148| 
           NOP             2
	.dwpsn	"vportcap.c",150,9
;----------------------------------------------------------------------
; 150 | for(i = 0; i < 100000; i ++);                                          
;----------------------------------------------------------------------
           ZERO    .L1     A3                ; |150| 
           STW     .D2T1   A3,*+SP(20)       ; |150| 
           NOP             2
	.dwpsn	"vportcap.c",150,16
           LDW     .D2T2   *+SP(20),B4       ; |150| 
           NOP             1
           MVKL    .S1     0x186a0,A3        ; |150| 
           MVKH    .S1     0x186a0,A3        ; |150| 
           NOP             1
           CMPLT   .L2X    B4,A3,B0          ; |150| 
   [!B0]   BNOP    .S1     L3,5              ; |150| 
           ; BRANCHCC OCCURS {L3}            ; |150| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L2:    
DW$L$_mdBindDev$4$B:
	.dwpsn	"vportcap.c",150,28
           LDW     .D2T2   *+SP(20),B4       ; |150| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |150| 
           STW     .D2T2   B4,*+SP(20)       ; |150| 
           NOP             2
	.dwpsn	"vportcap.c",150,16
           LDW     .D2T2   *+SP(20),B4       ; |150| 
           NOP             2
           MVKL    .S1     0x186a0,A3        ; |150| 
           MVKH    .S1     0x186a0,A3        ; |150| 
           CMPLT   .L1X    B4,A3,A0          ; |150| 
   [ A0]   BNOP    .S1     L2,5              ; |150| 
           ; BRANCHCC OCCURS {L2}            ; |150| 
DW$L$_mdBindDev$4$E:
;** --------------------------------------------------------------------------*
L3:    
	.dwpsn	"vportcap.c",152,5
;----------------------------------------------------------------------
; 152 | *devp = &portObjs[portNum];
;     |                                                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |152| 
           NOP             3
           MVK     .S1     1216,A3           ; |152| 

           LDW     .D2T2   *+SP(4),B4        ; |152| 
||         MPYLI   .M1X    A3,B4,A5:A4       ; |152| 

           NOP             1
           MVKL    .S1     _portObjs,A3      ; |152| 
           MVKH    .S1     _portObjs,A3      ; |152| 
           ADD     .L1     A3,A4,A3          ; |152| 
           STW     .D2T1   A3,*B4            ; |152| 
           NOP             2
	.dwpsn	"vportcap.c",153,5
;----------------------------------------------------------------------
; 153 | return mdControlChan(&portObjs[portNum], VPORT_CMD_CONFIG_PORT, devPara
;     | ms);                                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |153| 
           MVK     .S2     1216,B4           ; |153| 
           LDW     .D2T1   *+SP(12),A6       ; |153| 
           MVKL    .S1     _portObjs,A3      ; |153| 
           MVKH    .S1     _portObjs,A3      ; |153| 

           MPYLI   .M2     B4,B5,B7:B6       ; |153| 
||         CALL    .S1     _mdControlChan    ; |153| 

           MVKL    .S2     0x10000002,B4     ; |153| 
           MVKH    .S2     0x10000002,B4     ; |153| 
           ADDKPC  .S2     RL1,B3,1          ; |153| 
           ADD     .L1X    A3,B6,A4          ; |153| 
RL1:       ; CALL OCCURS {_mdControlChan}    ; |153| 
	.dwpsn	"vportcap.c",154,1
           LDW     .D2T2   *++SP(32),B3      ; |154| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |154| 
           ; BRANCH OCCURS {B3}              ; |154| 

DW$90	.dwtag  DW_TAG_loop
	.dwattr DW$90, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L2:1:1301983882")
	.dwattr DW$90, DW_AT_begin_file("vportcap.c")
	.dwattr DW$90, DW_AT_begin_line(0x96)
	.dwattr DW$90, DW_AT_end_line(0x96)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$_mdBindDev$4$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$_mdBindDev$4$E)
	.dwendtag DW$90

	.dwattr DW$80, DW_AT_end_file("vportcap.c")
	.dwattr DW$80, DW_AT_end_line(0x9a)
	.dwattr DW$80, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$80

	.sect	".text"

DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$92, DW_AT_low_pc(_mdControlChan)
	.dwattr DW$92, DW_AT_high_pc(0x00)
	.dwattr DW$92, DW_AT_begin_file("vportcap.c")
	.dwattr DW$92, DW_AT_begin_line(0xa0)
	.dwattr DW$92, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",161,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 160 | static Int mdControlChan(Ptr chanp, Uns cmd, Ptr args)                 
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: _mdControlChan                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                  *
;******************************************************************************
_mdControlChan:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |161| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$93, DW_AT_type(*DW$T$37)
	.dwattr DW$93, DW_AT_location[DW_OP_reg4]
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$94, DW_AT_type(*DW$T$31)
	.dwattr DW$94, DW_AT_location[DW_OP_reg20]
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$95, DW_AT_type(*DW$T$37)
	.dwattr DW$95, DW_AT_location[DW_OP_reg6]
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$96, DW_AT_type(*DW$T$37)
	.dwattr DW$96, DW_AT_location[DW_OP_breg31 4]
DW$97	.dwtag  DW_TAG_variable, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$97, DW_AT_type(*DW$T$31)
	.dwattr DW$97, DW_AT_location[DW_OP_breg31 8]
DW$98	.dwtag  DW_TAG_variable, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$98, DW_AT_type(*DW$T$37)
	.dwattr DW$98, DW_AT_location[DW_OP_breg31 12]
DW$99	.dwtag  DW_TAG_variable, DW_AT_name("retVal"), DW_AT_symbol_name("_retVal")
	.dwattr DW$99, DW_AT_type(*DW$T$22)
	.dwattr DW$99, DW_AT_location[DW_OP_breg31 16]
DW$100	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$100, DW_AT_type(*DW$T$149)
	.dwattr DW$100, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A6,*+SP(12)       ; |161| 
           STW     .D2T2   B4,*+SP(8)        ; |161| 
           STW     .D2T1   A4,*+SP(4)        ; |161| 
           NOP             2
	.dwpsn	"vportcap.c",162,9
;----------------------------------------------------------------------
; 162 | Int retVal = IOM_EBADMODE;                                             
;----------------------------------------------------------------------
           MVK     .L2     -7,B4             ; |162| 
           STW     .D2T2   B4,*+SP(16)       ; |162| 
           NOP             2
	.dwpsn	"vportcap.c",163,21
;----------------------------------------------------------------------
; 163 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(20)       ; |163| 
           NOP             2
	.dwpsn	"vportcap.c",165,5
;----------------------------------------------------------------------
; 165 | switch (cmd) {                                                         
; 166 |     case VPORT_CMD_START:                                              
;----------------------------------------------------------------------
           BNOP    .S1     L13,5             ; |165| 
           ; BRANCH OCCURS {L13}             ; |165| 
;** --------------------------------------------------------------------------*
;** --------------------------------------------------------------------------*
L4:    
	.dwpsn	"vportcap.c",167,9
;----------------------------------------------------------------------
; 167 | retVal = _startVPCapture(chanp);                                       
;----------------------------------------------------------------------
           CALL    .S1     __startVPCapture  ; |167| 
           LDW     .D2T1   *+SP(4),A4        ; |167| 
           ADDKPC  .S2     RL2,B3,3          ; |167| 
RL2:       ; CALL OCCURS {__startVPCapture}  ; |167| 
           STW     .D2T1   A4,*+SP(16)       ; |167| 
           NOP             2
	.dwpsn	"vportcap.c",168,14
;----------------------------------------------------------------------
; 168 | break;                                                                 
; 169 | case VPORT_CMD_STOP:                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L15,5             ; |168| 
           ; BRANCH OCCURS {L15}             ; |168| 
;** --------------------------------------------------------------------------*
L5:    
	.dwpsn	"vportcap.c",170,9
;----------------------------------------------------------------------
; 170 | retVal = _stopVPCapture(chanp);                                        
;----------------------------------------------------------------------
           CALL    .S1     __stopVPCapture   ; |170| 
           LDW     .D2T1   *+SP(4),A4        ; |170| 
           ADDKPC  .S2     RL3,B3,3          ; |170| 
RL3:       ; CALL OCCURS {__stopVPCapture}   ; |170| 
           STW     .D2T1   A4,*+SP(16)       ; |170| 
           NOP             2
	.dwpsn	"vportcap.c",171,14
;----------------------------------------------------------------------
; 171 | break;                                                                 
; 172 | case VPORT_CMD_SET_VINTCB:                                             
;----------------------------------------------------------------------
           BNOP    .S1     L15,5             ; |171| 
           ; BRANCH OCCURS {L15}             ; |171| 
;** --------------------------------------------------------------------------*
L6:    
	.dwpsn	"vportcap.c",173,9
;----------------------------------------------------------------------
; 173 | retVal = _setVIntCb(chanp, args);                                      
;----------------------------------------------------------------------
           CALL    .S1     __setVIntCb       ; |173| 
           LDW     .D2T1   *+SP(4),A4        ; |173| 
           ADDKPC  .S2     RL4,B3,2          ; |173| 
           MV      .L2X    A6,B4
RL4:       ; CALL OCCURS {__setVIntCb}       ; |173| 
           STW     .D2T1   A4,*+SP(16)       ; |173| 
           NOP             2
	.dwpsn	"vportcap.c",174,14
;----------------------------------------------------------------------
; 174 | break;                                                                 
; 175 | case VPORT_CMD_CONFIG_PORT:                                            
;----------------------------------------------------------------------
           BNOP    .S1     L15,5             ; |174| 
           ; BRANCH OCCURS {L15}             ; |174| 
;** --------------------------------------------------------------------------*
L7:    
	.dwpsn	"vportcap.c",176,9
;----------------------------------------------------------------------
; 176 | retVal = _configPort(chanp, args);                                     
;----------------------------------------------------------------------
           CALL    .S1     __configPort      ; |176| 
           LDW     .D2T1   *+SP(4),A4        ; |176| 
           ADDKPC  .S2     RL5,B3,2          ; |176| 
           MV      .L2X    A6,B4
RL5:       ; CALL OCCURS {__configPort}      ; |176| 
           STW     .D2T1   A4,*+SP(16)       ; |176| 
           NOP             2
	.dwpsn	"vportcap.c",177,14
;----------------------------------------------------------------------
; 177 | break;                                                                 
; 178 | case VPORT_CMD_COVR_RECOVER:                                           
;----------------------------------------------------------------------
           BNOP    .S1     L15,5             ; |177| 
           ; BRANCH OCCURS {L15}             ; |177| 
;** --------------------------------------------------------------------------*
L8:    
	.dwpsn	"vportcap.c",179,9
;----------------------------------------------------------------------
; 179 | retVal = _covrRecover(chanp);                                          
;----------------------------------------------------------------------
           CALL    .S1     __covrRecover     ; |179| 
           LDW     .D2T1   *+SP(4),A4        ; |179| 
           ADDKPC  .S2     RL6,B3,3          ; |179| 
RL6:       ; CALL OCCURS {__covrRecover}     ; |179| 
           STW     .D2T1   A4,*+SP(16)       ; |179| 
           NOP             2
	.dwpsn	"vportcap.c",180,14
;----------------------------------------------------------------------
; 180 | break;                                                                 
; 181 | case VPORT_CMD_CONFIG_CHAN:                                            
;----------------------------------------------------------------------
           BNOP    .S1     L15,5             ; |180| 
           ; BRANCH OCCURS {L15}             ; |180| 
;** --------------------------------------------------------------------------*
L9:    
	.dwpsn	"vportcap.c",182,9
;----------------------------------------------------------------------
; 182 | retVal = _configChan(chanp, args);                                     
;----------------------------------------------------------------------
           CALL    .S1     __configChan      ; |182| 
           LDW     .D2T1   *+SP(4),A4        ; |182| 
           ADDKPC  .S2     RL7,B3,2          ; |182| 
           MV      .L2X    A6,B4
RL7:       ; CALL OCCURS {__configChan}      ; |182| 
           STW     .D2T1   A4,*+SP(16)       ; |182| 
           NOP             2
	.dwpsn	"vportcap.c",183,14
;----------------------------------------------------------------------
; 183 | break;                                                                 
; 185 | case VPORT_CMD_GET_NUM_IORQST_PENDING:                                 
;----------------------------------------------------------------------
           BNOP    .S1     L15,5             ; |183| 
           ; BRANCH OCCURS {L15}             ; |183| 
;** --------------------------------------------------------------------------*
L10:    
	.dwpsn	"vportcap.c",186,9
;----------------------------------------------------------------------
; 186 | retVal = _getNumPendingIORqsts(chanp, args);                           
;----------------------------------------------------------------------
           CALL    .S1     __getNumPendingIORqsts ; |186| 
           LDW     .D2T1   *+SP(4),A4        ; |186| 
           ADDKPC  .S2     RL8,B3,2          ; |186| 
           MV      .L2X    A6,B4
RL8:       ; CALL OCCURS {__getNumPendingIORqsts}  ; |186| 
           STW     .D2T1   A4,*+SP(16)       ; |186| 
           NOP             2
	.dwpsn	"vportcap.c",187,14
;----------------------------------------------------------------------
; 187 | break;                                                                 
; 189 | default:                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L15,5             ; |187| 
           ; BRANCH OCCURS {L15}             ; |187| 
;** --------------------------------------------------------------------------*
L11:    
	.dwpsn	"vportcap.c",190,9
;----------------------------------------------------------------------
; 190 | if(chan->edcFxns!=INV){                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |190| 
           NOP             2
           MVK     .S2     135,B5            ; |190| 
           MVK     .L2     -1,B31            ; |190| 
           LDW     .D2T2   *+B4[B5],B4       ; |190| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |190| 
   [ B0]   BNOP    .S1     L12,5             ; |190| 
           ; BRANCHCC OCCURS {L12}           ; |190| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",191,13
;----------------------------------------------------------------------
; 191 | retVal = chan->edcFxns->ctrl(chan->edcHandle,                          
; 192 |     cmd-VPORT_CMD_EDC_BASE,(Arg)args);                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |191| 
           MVK     .S2     135,B5            ; |191| 
           LDW     .D2T2   *+SP(8),B31       ; |191| 
           ZERO    .L1     A4                ; |191| 
           MVKH    .S1     0x80000000,A4     ; |191| 
           LDW     .D2T2   *+B4[B5],B5       ; |191| 
           MV      .L1X    B4,A3             ; |191| 
           LDW     .D2T1   *+SP(12),A6       ; |191| 
           MVK     .S1     136,A5            ; |191| 
           SUB     .L2X    B31,A4,B4         ; |191| 
           LDW     .D2T2   *+B5(8),B5        ; |191| 
           NOP             3
           LDW     .D1T1   *+A3[A5],A4       ; |191| 
           CALL    .S2     B5                ; |191| 
           ADDKPC  .S2     RL9,B3,4          ; |191| 
RL9:       ; CALL OCCURS {A3}                ; |191| 
           STW     .D2T1   A4,*+SP(16)       ; |191| 
           NOP             2
	.dwpsn	"vportcap.c",193,9
;----------------------------------------------------------------------
; 193 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L15,5             ; |193| 
           ; BRANCH OCCURS {L15}             ; |193| 
;** --------------------------------------------------------------------------*
L12:    
	.dwpsn	"vportcap.c",194,13
;----------------------------------------------------------------------
; 194 | retVal = IOM_ENOTIMPL;                                                 
;----------------------------------------------------------------------
           MVK     .L2     -9,B4             ; |194| 
           STW     .D2T2   B4,*+SP(16)       ; |194| 
           NOP             2
	.dwpsn	"vportcap.c",196,14
;----------------------------------------------------------------------
; 196 | break;                                                                 
;----------------------------------------------------------------------
           BNOP    .S1     L15,5             ; |196| 
           ; BRANCH OCCURS {L15}             ; |196| 
;** --------------------------------------------------------------------------*
L13:    
	.dwpsn	"vportcap.c",165,5
           LDW     .D2T2   *+SP(8),B4        ; |165| 
           NOP             2
           MVKL    .S2     0x10000005,B5     ; |165| 
           MVKH    .S2     0x10000005,B5     ; |165| 
           CMPGT   .L2     B4,B5,B1          ; |165| 
   [ B1]   B       .S1     L14               ; |165| 
           MVKL    .S1     0x10000006,A3     ; |165| 
           MVKL    .S1     0x10000005,A4     ; |165| 
           MVKH    .S1     0x10000006,A3     ; |165| 
           MVKH    .S1     0x10000005,A4     ; |165| 

           CMPEQ   .L1X    B4,A4,A0          ; |165| 
||         CMPEQ   .L2X    B4,A3,B0          ; |165| 

           ; BRANCHCC OCCURS {L14}           ; |165| 
;** --------------------------------------------------------------------------*
   [ A0]   BNOP    .S1     L5,1              ; |165| 
           MVKL    .S1     0x10000002,A3     ; |165| 
           MVKH    .S1     0x10000002,A3     ; |165| 
           NOP             1
           CMPEQ   .L2X    B4,A3,B0          ; |165| 
           ; BRANCHCC OCCURS {L5}            ; |165| 
;** --------------------------------------------------------------------------*
   [ B0]   BNOP    .S1     L7,1              ; |165| 
           MVKL    .S1     0x10000003,A3     ; |165| 
           MVKH    .S1     0x10000003,A3     ; |165| 
           NOP             1
           CMPEQ   .L2X    B4,A3,B1          ; |165| 
           ; BRANCHCC OCCURS {L7}            ; |165| 
;** --------------------------------------------------------------------------*
   [ B1]   BNOP    .S1     L9,1              ; |165| 
           MVKL    .S1     0x10000004,A3     ; |165| 
           MVKH    .S1     0x10000004,A3     ; |165| 
           NOP             1
           CMPEQ   .L2X    B4,A3,B0          ; |165| 
           ; BRANCHCC OCCURS {L9}            ; |165| 
;** --------------------------------------------------------------------------*
   [ B0]   BNOP    .S1     L4,5              ; |165| 
           ; BRANCHCC OCCURS {L4}            ; |165| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     L11,5             ; |165| 
           ; BRANCH OCCURS {L11}             ; |165| 
;** --------------------------------------------------------------------------*
L14:    
   [ B0]   BNOP    .S1     L6,1              ; |165| 
           MVKL    .S1     0x10000008,A3     ; |165| 
           MVKH    .S1     0x10000008,A3     ; |165| 
           NOP             1
           CMPEQ   .L2X    B4,A3,B1          ; |165| 
           ; BRANCHCC OCCURS {L6}            ; |165| 
;** --------------------------------------------------------------------------*
   [ B1]   BNOP    .S1     L8,1              ; |165| 
           MVKL    .S1     0x10000009,A3     ; |165| 
           MVKH    .S1     0x10000009,A3     ; |165| 
           NOP             1
           CMPEQ   .L2X    B4,A3,B0          ; |165| 
           ; BRANCHCC OCCURS {L8}            ; |165| 
;** --------------------------------------------------------------------------*
   [ B0]   BNOP    .S1     L10,5             ; |165| 
           ; BRANCHCC OCCURS {L10}           ; |165| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     L11,5             ; |165| 
           ; BRANCH OCCURS {L11}             ; |165| 
;** --------------------------------------------------------------------------*
L15:    
	.dwpsn	"vportcap.c",198,5
;----------------------------------------------------------------------
; 198 | return retVal;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A4       ; |198| 
           NOP             4
	.dwpsn	"vportcap.c",199,1
           LDW     .D2T2   *++SP(24),B3      ; |199| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |199| 
           ; BRANCH OCCURS {B3}              ; |199| 
	.dwattr DW$92, DW_AT_end_file("vportcap.c")
	.dwattr DW$92, DW_AT_end_line(0xc7)
	.dwattr DW$92, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$92

	.sect	".text"

DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$101, DW_AT_low_pc(_mdCreateChan)
	.dwattr DW$101, DW_AT_high_pc(0x00)
	.dwattr DW$101, DW_AT_begin_file("vportcap.c")
	.dwattr DW$101, DW_AT_begin_line(0xce)
	.dwattr DW$101, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap.c",208,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 206 | static Int  mdCreateChan(Ptr *chanp, Ptr devp, String name, Int mode,  
; 207 | Ptr chanParams, IOM_TiomCallback cbFxn, Ptr cbArg)                     
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: _mdCreateChan                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 52 Auto + 4 Save = 56 byte                  *
;******************************************************************************
_mdCreateChan:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(56)      ; |208| 
           NOP             2
	.dwcfa	0x0e, 56
	.dwcfa	0x80, 19, 0
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$102, DW_AT_type(*DW$T$90)
	.dwattr DW$102, DW_AT_location[DW_OP_reg4]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$103, DW_AT_type(*DW$T$37)
	.dwattr DW$103, DW_AT_location[DW_OP_reg20]
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$104, DW_AT_type(*DW$T$58)
	.dwattr DW$104, DW_AT_location[DW_OP_reg6]
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$105, DW_AT_type(*DW$T$22)
	.dwattr DW$105, DW_AT_location[DW_OP_reg22]
DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanParams"), DW_AT_symbol_name("_chanParams")
	.dwattr DW$106, DW_AT_type(*DW$T$37)
	.dwattr DW$106, DW_AT_location[DW_OP_reg8]
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$107, DW_AT_type(*DW$T$78)
	.dwattr DW$107, DW_AT_location[DW_OP_reg24]
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$108, DW_AT_type(*DW$T$37)
	.dwattr DW$108, DW_AT_location[DW_OP_reg10]
DW$109	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$109, DW_AT_type(*DW$T$90)
	.dwattr DW$109, DW_AT_location[DW_OP_breg31 4]
DW$110	.dwtag  DW_TAG_variable, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$110, DW_AT_type(*DW$T$37)
	.dwattr DW$110, DW_AT_location[DW_OP_breg31 8]
DW$111	.dwtag  DW_TAG_variable, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$111, DW_AT_type(*DW$T$58)
	.dwattr DW$111, DW_AT_location[DW_OP_breg31 12]
DW$112	.dwtag  DW_TAG_variable, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$112, DW_AT_type(*DW$T$22)
	.dwattr DW$112, DW_AT_location[DW_OP_breg31 16]
DW$113	.dwtag  DW_TAG_variable, DW_AT_name("chanParams"), DW_AT_symbol_name("_chanParams")
	.dwattr DW$113, DW_AT_type(*DW$T$37)
	.dwattr DW$113, DW_AT_location[DW_OP_breg31 20]
DW$114	.dwtag  DW_TAG_variable, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$114, DW_AT_type(*DW$T$78)
	.dwattr DW$114, DW_AT_location[DW_OP_breg31 24]
DW$115	.dwtag  DW_TAG_variable, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$115, DW_AT_type(*DW$T$37)
	.dwattr DW$115, DW_AT_location[DW_OP_breg31 28]
DW$116	.dwtag  DW_TAG_variable, DW_AT_name("chanNum"), DW_AT_symbol_name("_chanNum")
	.dwattr DW$116, DW_AT_type(*DW$T$22)
	.dwattr DW$116, DW_AT_location[DW_OP_breg31 32]
DW$117	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$117, DW_AT_type(*DW$T$168)
	.dwattr DW$117, DW_AT_location[DW_OP_breg31 36]
DW$118	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$118, DW_AT_type(*DW$T$221)
	.dwattr DW$118, DW_AT_location[DW_OP_breg31 40]
DW$119	.dwtag  DW_TAG_variable, DW_AT_name("retVal"), DW_AT_symbol_name("_retVal")
	.dwattr DW$119, DW_AT_type(*DW$T$22)
	.dwattr DW$119, DW_AT_location[DW_OP_breg31 44]
;----------------------------------------------------------------------
; 209 | Int chanNum;                                                           
; 210 | volatile Int* base;                                                    
; 211 | PortObj* port;                                                         
;----------------------------------------------------------------------
           STW     .D2T1   A10,*+SP(28)      ; |208| 
           STW     .D2T2   B8,*+SP(24)       ; |208| 
           STW     .D2T1   A8,*+SP(20)       ; |208| 
           STW     .D2T1   A6,*+SP(12)       ; |208| 
           STW     .D2T2   B4,*+SP(8)        ; |208| 

           STW     .D2T1   A4,*+SP(4)        ; |208| 
||         MV      .L1X    B6,A3             ; |208| 

           STW     .D2T1   A3,*+SP(16)       ; |208| 
           NOP             2
	.dwpsn	"vportcap.c",212,9
;----------------------------------------------------------------------
; 212 | Int retVal = IOM_COMPLETED;                                            
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |212| 
           STW     .D2T2   B4,*+SP(44)       ; |212| 
           NOP             2
	.dwpsn	"vportcap.c",215,5
;----------------------------------------------------------------------
; 215 | if(mode != IOM_INPUT){                                                 
;----------------------------------------------------------------------
           CMPEQ   .L2X    A3,1,B0           ; |215| 
   [ B0]   BNOP    .S1     L16,5             ; |215| 
           ; BRANCHCC OCCURS {L16}           ; |215| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",216,9
;----------------------------------------------------------------------
; 216 | return IOM_EBADARGS;                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L38,4             ; |216| 
           MVK     .L1     0xfffffff6,A4     ; |216| 
           ; BRANCH OCCURS {L38}             ; |216| 
;** --------------------------------------------------------------------------*
L16:    
	.dwpsn	"vportcap.c",218,5
;----------------------------------------------------------------------
; 218 | if(*name ++ != '/') {                                                  
;----------------------------------------------------------------------
           MV      .L2X    A6,B4
           LDB     .D2T2   *B4++,B5          ; |218| 
           NOP             2
           MVK     .S2     47,B6             ; |218| 
           STW     .D2T2   B4,*+SP(12)       ; |218| 
           CMPEQ   .L2     B5,B6,B0          ; |218| 
   [ B0]   BNOP    .S1     L17,5             ; |218| 
           ; BRANCHCC OCCURS {L17}           ; |218| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",219,9
;----------------------------------------------------------------------
; 219 | return IOM_EBADARGS;                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L38,4             ; |219| 
           MVK     .L1     0xfffffff6,A4     ; |219| 
           ; BRANCH OCCURS {L38}             ; |219| 
;** --------------------------------------------------------------------------*
L17:    
	.dwpsn	"vportcap.c",221,5
;----------------------------------------------------------------------
; 221 | chanNum = *name ++ - 'A';                                              
;----------------------------------------------------------------------
           LDB     .D2T2   *B4++,B5          ; |221| 
           NOP             2
           MVK     .S2     65,B6             ; |221| 
           STW     .D2T2   B4,*+SP(12)       ; |221| 
           SUB     .L2     B5,B6,B4          ; |221| 
           STW     .D2T2   B4,*+SP(32)       ; |221| 
           NOP             2
	.dwpsn	"vportcap.c",223,5
;----------------------------------------------------------------------
; 223 | assert(chanNum < _VPORT_CHAN_CNT);                                     
;----------------------------------------------------------------------
           CMPLT   .L2     B4,2,B0           ; |223| 
   [ B0]   BNOP    .S1     L18,3             ; |223| 
           MVKL    .S1     SL2+0,A4          ; |223| 
           MVKH    .S1     SL2+0,A4          ; |223| 
           ; BRANCHCC OCCURS {L18}           ; |223| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |223| 
           ADDKPC  .S2     RL10,B3,4         ; |223| 
RL10:      ; CALL OCCURS {__abort_msg}       ; |223| 
;** --------------------------------------------------------------------------*
L18:    
	.dwpsn	"vportcap.c",225,5
;----------------------------------------------------------------------
; 225 | port = (PortObj *)devp;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |225| 
           NOP             4
           STW     .D2T2   B4,*+SP(40)       ; |225| 
           NOP             2
	.dwpsn	"vportcap.c",226,5
;----------------------------------------------------------------------
; 226 | if(port->chanObj[chanNum].edcFxns != INV) {                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B5       ; |226| 
           NOP             1
           MVK     .S2     604,B6            ; |226| 
           MVK     .S2     137,B31           ; |226| 
           MVK     .L2     -1,B30            ; |226| 
           MPYLI   .M2     B6,B5,B7:B6       ; |226| 
           NOP             3
           ADD     .L2     B6,B4,B4          ; |226| 
           LDW     .D2T2   *+B4[B31],B4      ; |226| 
           NOP             4
           CMPEQ   .L2     B4,B30,B0         ; |226| 
   [ B0]   BNOP    .S1     L19,5             ; |226| 
           ; BRANCHCC OCCURS {L19}           ; |226| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",228,9
;----------------------------------------------------------------------
; 228 | port->chanObj[chanNum].edcHandle                                       
; 229 |    = port->chanObj[chanNum].edcFxns->open(name, (Arg)INV);             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B5       ; |228| 
           LDW     .D2T2   *+SP(40),B4       ; |228| 
           MVK     .S2     604,B6            ; |228| 
           MVK     .S2     137,B31           ; |228| 
           LDW     .D2T1   *+SP(12),A4       ; |228| 
           MPYLI   .M2     B6,B5,B7:B6       ; |228| 
           NOP             3
           ADD     .L2     B6,B4,B4          ; |228| 
           LDW     .D2T2   *+B4[B31],B4      ; |228| 
           NOP             4
           LDW     .D2T2   *B4,B5            ; |228| 
           NOP             3
           MVK     .L2     0xffffffff,B4     ; |228| 
           CALL    .S2     B5                ; |228| 
           ADDKPC  .S2     RL11,B3,4         ; |228| 
RL11:      ; CALL OCCURS {A3}                ; |228| 
           LDW     .D2T2   *+SP(32),B5       ; |228| 
           NOP             1
           MVK     .S1     604,A3            ; |228| 
           LDW     .D2T2   *+SP(40),B4       ; |228| 
           MVK     .S1     138,A5            ; |228| 
           MPYLI   .M1X    A3,B5,A7:A6       ; |228| 
           NOP             3
           ADD     .L1X    A6,B4,A3          ; |228| 
           STW     .D1T1   A4,*+A3[A5]       ; |228| 
;** --------------------------------------------------------------------------*
L19:    
	.dwpsn	"vportcap.c",231,5
;----------------------------------------------------------------------
; 231 | if(! (port->status & _VPORT_OPENED)) {                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B4       ; |231| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |231| 
           NOP             4
           AND     .L2     1,B4,B0           ; |231| 
   [ B0]   BNOP    .S1     L20,5             ; |231| 
           ; BRANCHCC OCCURS {L20}           ; |231| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",232,9
;----------------------------------------------------------------------
; 232 | port->status |= _VPORT_OPENED;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B4       ; |232| 
           NOP             4
           LDW     .D2T2   *B4,B5            ; |232| 
           NOP             4
           OR      .L2     1,B5,B5           ; |232| 
           STW     .D2T2   B5,*B4            ; |232| 
           NOP             2
	.dwpsn	"vportcap.c",233,9
;----------------------------------------------------------------------
; 233 | base = (volatile Int *)port->base;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B4       ; |233| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |233| 
           NOP             4
           STW     .D2T2   B4,*+SP(36)       ; |233| 
           NOP             2
	.dwpsn	"vportcap.c",237,9
;----------------------------------------------------------------------
; 237 | base[_VP_VCACTL_OFFSET] |=                                             
; 238 |     VP_VCACTL_RSTCH_RESET << _VP_VCACTL_RSTCH_SHIFT;                   
;----------------------------------------------------------------------
           MVK     .S1     260,A3            ; |237| 
           ADD     .L1X    A3,B4,A3          ; |237| 
           LDW     .D1T1   *A3,A4            ; |237| 
           NOP             4
           SET     .S1     A4,31,31,A4       ; |237| 
           STW     .D1T1   A4,*A3            ; |237| 
           NOP             2
	.dwpsn	"vportcap.c",239,9
;----------------------------------------------------------------------
; 239 | base[_VP_VCBCTL_OFFSET] |=                                             
; 240 |     VP_VCBCTL_RSTCH_RESET << _VP_VCBCTL_RSTCH_SHIFT;                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(36),B4       ; |239| 
           NOP             3
           MVK     .S2     324,B5            ; |239| 
           ADD     .L2     B5,B4,B4          ; |239| 
           LDW     .D2T2   *B4,B5            ; |239| 
           NOP             4
           SET     .S2     B5,31,31,B5       ; |239| 
           STW     .D2T2   B5,*B4            ; |239| 
;** --------------------------------------------------------------------------*
L20:    
	.dwpsn	"vportcap.c",243,5
;----------------------------------------------------------------------
; 243 | if(! (port->chanObj[chanNum].status & _VPORT_OPENED)) {                
; 244 |     Int j;                                                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |243| 
           NOP             2
           LDW     .D2T2   *+SP(40),B6       ; |243| 
           MVK     .S2     604,B5            ; |243| 
           MPYLI   .M2     B5,B4,B5:B4       ; |243| 
           NOP             3
           ADD     .L2     B4,B6,B4          ; |243| 
           LDW     .D2T2   *+B4(8),B4        ; |243| 
           NOP             4
           AND     .L2     1,B4,B0           ; |243| 
   [ B0]   BNOP    .S1     L37,5             ; |243| 
           ; BRANCHCC OCCURS {L37}           ; |243| 
;** --------------------------------------------------------------------------*

DW$120	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$121	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$121, DW_AT_type(*DW$T$22)
	.dwattr DW$121, DW_AT_location[DW_OP_breg31 48]
DW$122	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$122, DW_AT_type(*DW$T$149)
	.dwattr DW$122, DW_AT_location[DW_OP_breg31 52]
	.dwpsn	"vportcap.c",245,25
;----------------------------------------------------------------------
; 245 | _VPORT_ChanObj *chan = &port->chanObj[chanNum];                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |245| 
           NOP             3
           MVK     .S2     604,B5            ; |245| 
           MPYLI   .M2     B5,B4,B5:B4       ; |245| 
           NOP             3
           ADD     .L2     B4,B6,B4          ; |245| 
           ADD     .L2     8,B4,B4           ; |245| 
           STW     .D2T2   B4,*+SP(52)       ; |245| 
           NOP             2
	.dwpsn	"vportcap.c",247,9
;----------------------------------------------------------------------
; 247 | chan->status |= _VPORT_OPENED;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *B4,B5            ; |247| 
           NOP             4
           OR      .L2     1,B5,B5           ; |247| 
           STW     .D2T2   B5,*B4            ; |247| 
           NOP             2
	.dwpsn	"vportcap.c",248,9
;----------------------------------------------------------------------
; 248 | chan->cbFxn = cbFxn;                                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(52),A3       ; |248| 
           LDW     .D2T2   *+SP(24),B4       ; |248| 
           NOP             3
           MVK     .S1     116,A4            ; |248| 
           STW     .D1T2   B4,*+A3[A4]       ; |248| 
           NOP             2
	.dwpsn	"vportcap.c",249,9
;----------------------------------------------------------------------
; 249 | chan->cbArg = (Arg)cbArg;                                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |249| 
           LDW     .D2T1   *+SP(52),A4       ; |249| 
           NOP             3
           MVK     .S1     117,A5            ; |249| 
           STW     .D1T1   A3,*+A4[A5]       ; |249| 
           NOP             2
	.dwpsn	"vportcap.c",250,9
;----------------------------------------------------------------------
; 250 | chan->numFrms = 0;                                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(52),A3       ; |250| 
           NOP             2
           ZERO    .L1     A4                ; |250| 
           MVK     .S1     126,A5            ; |250| 
           STW     .D1T1   A4,*+A3[A5]       ; |250| 
           NOP             2
	.dwpsn	"vportcap.c",251,13
;----------------------------------------------------------------------
; 251 | for(j = 0; j < _VPORT_NUM_EDMA_CHANS && retVal == IOM_COMPLETED; j ++){
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |251| 
           STW     .D2T2   B4,*+SP(48)       ; |251| 
           NOP             2
	.dwpsn	"vportcap.c",251,20
           CMPLT   .L2     B4,3,B0           ; |251| 

   [ B0]   BNOP    .S1     L21,4             ; |251| 
||         LDW     .D2T2   *+SP(44),B4       ; |251| 

           CMPEQ   .L2     B4,0,B4           ; |251| 
           ; BRANCHCC OCCURS {L21}           ; |251| 
;** --------------------------------------------------------------------------*
           MV      .L2     B0,B4             ; |251| 
;** --------------------------------------------------------------------------*
L21:    
           NOP             1
           MV      .L1X    B4,A0             ; |251| 
   [!A0]   BNOP    .S1     L31,5             ; |251| 
           ; BRANCHCC OCCURS {L31}           ; |251| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L22:    
DW$L$_mdCreateChan$15$B:
	.dwpsn	"vportcap.c",253,13
;----------------------------------------------------------------------
; 253 | if( (chan->hEdma[j] = EDMA_open(chan->edmaChanNum[j],                  
; 254 |     EDMA_OPEN_RESET))==EDMA_HINV                                       
; 255 | ||  (chan->hRld[4 * j] = EDMA_allocTable(-1))==EDMA_HINV               
; 256 | ||  (chan->hRld[4 * j + 1] = EDMA_allocTable(-1))==EDMA_HINV           
; 257 | ||  (chan->hRld[4 * j + 2] = EDMA_allocTable(-1))==EDMA_HINV           
; 258 | ||  (chan->hRld[4 * j + 3] = EDMA_allocTable(-1))==EDMA_HINV           
; 259 | ||  (chan->tcc[j] = EDMA_intAlloc(chan->edmaChanNum[j])) == -1){       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(52),B5       ; |253| 
           LDW     .D2T2   *+SP(48),B4       ; |253| 
           NOP             1
           MVKL    .S1     _EDMA_open,A3     ; |253| 
           MVKH    .S1     _EDMA_open,A3     ; |253| 
           NOP             1

           ADDAW   .D2     B5,B4,B4          ; |253| 
||         CALL    .S2X    A3                ; |253| 

           LDW     .D2T1   *+B4(16),A4       ; |253| 
           MVK     .L2     0x1,B4            ; |253| 
           ADDKPC  .S2     RL12,B3,2         ; |253| 
RL12:      ; CALL OCCURS {_EDMA_open}        ; |253| 
           LDW     .D2T2   *+SP(52),B5       ; |253| 

           CMPEQ   .L1     A4,0,A0           ; |253| 
||         LDW     .D2T2   *+SP(48),B4       ; |253| 

   [ A0]   BNOP    .S1     L23,3             ; |253| 

           MVK     .S2     97,B31            ; |253| 
||         ADDAW   .D2     B5,B4,B4          ; |253| 

           STW     .D2T1   A4,*+B4[B31]      ; |253| 
           ; BRANCHCC OCCURS {L23}           ; |253| 
DW$L$_mdCreateChan$15$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$16$B:
           MVKL    .S1     _EDMA_allocTable,A3 ; |253| 
           MVKH    .S1     _EDMA_allocTable,A3 ; |253| 
           MVK     .L1     0xffffffff,A4     ; |253| 
           CALL    .S2X    A3                ; |253| 
           ADDKPC  .S2     RL13,B3,4         ; |253| 
RL13:      ; CALL OCCURS {_EDMA_allocTable}  ; |253| 
           LDW     .D2T2   *+SP(48),B5       ; |253| 
           LDW     .D2T2   *+SP(52),B4       ; |253| 
           NOP             1
           MVK     .S2     100,B31           ; |253| 
           CMPEQ   .L1     A4,0,A0           ; |253| 
           SHL     .S2     B5,4,B5           ; |253| 
           ADD     .L2     B5,B4,B4          ; |253| 
           STW     .D2T1   A4,*+B4[B31]      ; |253| 
DW$L$_mdCreateChan$16$E:
;** --------------------------------------------------------------------------*
L23:    
DW$L$_mdCreateChan$17$B:
           CMPEQ   .L1     A0,0,A0           ; |253| 
   [!A0]   BNOP    .S1     L24,4             ; |253| 
           XOR     .L1     1,A0,A3           ; |253| 
           ; BRANCHCC OCCURS {L24}           ; |253| 
DW$L$_mdCreateChan$17$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$18$B:
           MVKL    .S1     _EDMA_allocTable,A3 ; |253| 
           MVKH    .S1     _EDMA_allocTable,A3 ; |253| 
           MVK     .L1     0xffffffff,A4     ; |253| 
           CALL    .S2X    A3                ; |253| 
           ADDKPC  .S2     RL14,B3,4         ; |253| 
RL14:      ; CALL OCCURS {_EDMA_allocTable}  ; |253| 
           LDW     .D2T2   *+SP(48),B4       ; |253| 
           LDW     .D2T2   *+SP(52),B5       ; |253| 
           MVK     .L2     1,B6              ; |253| 
           MVK     .S2     100,B31           ; |253| 
           CMPEQ   .L1     A4,0,A3           ; |253| 
           ADDAW   .D2     B6,B4,B4          ; |253| 
           ADDAW   .D2     B5,B4,B4          ; |253| 
           STW     .D2T1   A4,*+B4[B31]      ; |253| 
DW$L$_mdCreateChan$18$E:
;** --------------------------------------------------------------------------*
L24:    
DW$L$_mdCreateChan$19$B:
           CMPEQ   .L1     A3,0,A0           ; |253| 
   [!A0]   BNOP    .S1     L25,4             ; |253| 
           XOR     .L1     1,A0,A3           ; |253| 
           ; BRANCHCC OCCURS {L25}           ; |253| 
DW$L$_mdCreateChan$19$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$20$B:
           MVKL    .S1     _EDMA_allocTable,A3 ; |253| 
           MVKH    .S1     _EDMA_allocTable,A3 ; |253| 
           MVK     .L1     0xffffffff,A4     ; |253| 
           CALL    .S2X    A3                ; |253| 
           ADDKPC  .S2     RL15,B3,4         ; |253| 
RL15:      ; CALL OCCURS {_EDMA_allocTable}  ; |253| 
           LDW     .D2T2   *+SP(48),B4       ; |253| 
           LDW     .D2T2   *+SP(52),B5       ; |253| 
           MVK     .L2     2,B6              ; |253| 
           MVK     .S2     100,B31           ; |253| 
           CMPEQ   .L1     A4,0,A3           ; |253| 
           ADDAW   .D2     B6,B4,B4          ; |253| 
           ADDAW   .D2     B5,B4,B4          ; |253| 
           STW     .D2T1   A4,*+B4[B31]      ; |253| 
DW$L$_mdCreateChan$20$E:
;** --------------------------------------------------------------------------*
L25:    
DW$L$_mdCreateChan$21$B:
           CMPEQ   .L1     A3,0,A1           ; |253| 
   [ A1]   BNOP    .S1     L26,4             ; |253| 
           XOR     .L1     1,A1,A0           ; |253| 
           ; BRANCHCC OCCURS {L26}           ; |253| 
DW$L$_mdCreateChan$21$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$22$B:
           BNOP    .S1     L27,3             ; |253| 
           MV      .L2X    A0,B4             ; |253| 
           NOP             1
           ; BRANCH OCCURS {L27}             ; |253| 
DW$L$_mdCreateChan$22$E:
;** --------------------------------------------------------------------------*
L26:    
DW$L$_mdCreateChan$23$B:
           MVKL    .S1     _EDMA_allocTable,A3 ; |253| 
           MVKH    .S1     _EDMA_allocTable,A3 ; |253| 
           MVK     .L1     0xffffffff,A4     ; |253| 
           CALL    .S2X    A3                ; |253| 
           ADDKPC  .S2     RL16,B3,4         ; |253| 
RL16:      ; CALL OCCURS {_EDMA_allocTable}  ; |253| 
           LDW     .D2T2   *+SP(48),B4       ; |253| 
           LDW     .D2T2   *+SP(52),B5       ; |253| 
           NOP             1
           MVK     .L2     3,B6              ; |253| 
           MVK     .S2     100,B31           ; |253| 
           ADDAW   .D2     B6,B4,B4          ; |253| 
           ADDAW   .D2     B5,B4,B4          ; |253| 

           CMPEQ   .L2X    A4,0,B4           ; |253| 
||         STW     .D2T1   A4,*+B4[B31]      ; |253| 

           NOP             1
DW$L$_mdCreateChan$23$E:
;** --------------------------------------------------------------------------*
L27:    
DW$L$_mdCreateChan$24$B:
           MV      .L1X    B4,A0             ; |253| 
   [ A0]   BNOP    .S1     L28,5             ; |253| 
           ; BRANCHCC OCCURS {L28}           ; |253| 
DW$L$_mdCreateChan$24$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$25$B:
           LDW     .D2T2   *+SP(52),B4       ; |253| 
           LDW     .D2T2   *+SP(48),B5       ; |253| 
           NOP             1
           MVKL    .S1     _EDMA_intAlloc,A3 ; |253| 
           MVKH    .S1     _EDMA_intAlloc,A3 ; |253| 
           NOP             1

           ADDAW   .D2     B4,B5,B4          ; |253| 
||         CALL    .S2X    A3                ; |253| 

           LDW     .D2T1   *+B4(16),A4       ; |253| 
           ADDKPC  .S2     RL17,B3,3         ; |253| 
RL17:      ; CALL OCCURS {_EDMA_intAlloc}    ; |253| 
           LDW     .D2T2   *+SP(52),B5       ; |253| 
           LDW     .D2T2   *+SP(48),B4       ; |253| 
           NOP             3
           MVK     .S2     112,B31           ; |253| 

           CMPEQ   .L2X    A4,-1,B4          ; |253| 
||         ADDAW   .D2     B5,B4,B5          ; |253| 

           STW     .D2T1   A4,*+B5[B31]      ; |253| 
DW$L$_mdCreateChan$25$E:
;** --------------------------------------------------------------------------*
L28:    
DW$L$_mdCreateChan$26$B:
           MV      .L1X    B4,A0             ; |253| 
   [!A0]   BNOP    .S1     L29,5             ; |253| 
           ; BRANCHCC OCCURS {L29}           ; |253| 
DW$L$_mdCreateChan$26$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$27$B:
	.dwpsn	"vportcap.c",260,17
;----------------------------------------------------------------------
; 260 | retVal = IOM_EALLOC;                                                   
;----------------------------------------------------------------------
           MVK     .L2     -5,B4             ; |260| 
           STW     .D2T2   B4,*+SP(44)       ; |260| 
DW$L$_mdCreateChan$27$E:
;** --------------------------------------------------------------------------*
L29:    
DW$L$_mdCreateChan$28$B:
	.dwpsn	"vportcap.c",251,74
           LDW     .D2T2   *+SP(48),B4       ; |251| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |251| 
           STW     .D2T2   B4,*+SP(48)       ; |251| 
           NOP             2
	.dwpsn	"vportcap.c",251,20
           CMPLT   .L2     B4,3,B0           ; |251| 
   [!B0]   BNOP    .S1     L30,5             ; |251| 
           ; BRANCHCC OCCURS {L30}           ; |251| 
DW$L$_mdCreateChan$28$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$29$B:
           LDW     .D2T2   *+SP(44),B4       ; |251| 
           NOP             4
           CMPEQ   .L2     B4,0,B0           ; |251| 
DW$L$_mdCreateChan$29$E:
;** --------------------------------------------------------------------------*
L30:    
DW$L$_mdCreateChan$30$B:
   [ B0]   BNOP    .S1     L22,5             ; |251| 
           ; BRANCHCC OCCURS {L22}           ; |251| 
DW$L$_mdCreateChan$30$E:
;** --------------------------------------------------------------------------*
L31:    
	.dwpsn	"vportcap.c",263,9
;----------------------------------------------------------------------
; 263 | if( retVal == IOM_COMPLETED && (void *)chanParams != INV) {            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B5       ; |263| 
           NOP             1
           LDW     .D2T2   *+SP(20),B4       ; |263| 
           MVK     .L2     -1,B31            ; |263| 
           ZERO    .L1     A3                ; |263| 
           CMPEQ   .L2     B5,0,B0           ; |263| 
   [!B0]   BNOP    .S1     L33,4             ; |263| 
           CMPEQ   .L2     B4,B31,B1         ; |263| 
           ; BRANCHCC OCCURS {L33}           ; |263| 
;** --------------------------------------------------------------------------*
   [ B1]   BNOP    .S1     L32,5             ; |263| 
           ; BRANCHCC OCCURS {L32}           ; |263| 
;** --------------------------------------------------------------------------*
           MVK     .L1     0x1,A3            ; |263| 
           NOP             1
;** --------------------------------------------------------------------------*
L32:    
           MV      .L2X    A3,B0             ; |263| 
;** --------------------------------------------------------------------------*
L33:    
   [!B0]   BNOP    .S1     L34,5             ; |263| 
           ; BRANCHCC OCCURS {L34}           ; |263| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",264,13
;----------------------------------------------------------------------
; 264 | retVal = mdControlChan(&port->chanObj[chanNum],                        
; 265 |     VPORT_CMD_CONFIG_CHAN, chanParams);                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B6       ; |264| 
           NOP             1
           LDW     .D2T2   *+SP(40),B5       ; |264| 
           MVK     .S2     604,B4            ; |264| 
           LDW     .D2T1   *+SP(20),A6       ; |264| 
           MPYLI   .M2     B4,B6,B7:B6       ; |264| 
           CALL    .S1     _mdControlChan    ; |264| 
           MVKL    .S2     0x10000003,B4     ; |264| 
           MVKH    .S2     0x10000003,B4     ; |264| 
           ADD     .L2     B6,B5,B5          ; |264| 
           ADDKPC  .S2     RL18,B3,0         ; |264| 
           ADD     .L1X    8,B5,A4           ; |264| 
RL18:      ; CALL OCCURS {_mdControlChan}    ; |264| 
           STW     .D2T1   A4,*+SP(44)       ; |264| 
;** --------------------------------------------------------------------------*
L34:    
	.dwpsn	"vportcap.c",267,9
;----------------------------------------------------------------------
; 267 | if(retVal == IOM_COMPLETED) {                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B0       ; |267| 
           NOP             4
   [ B0]   BNOP    .S1     L35,5             ; |267| 
           ; BRANCHCC OCCURS {L35}           ; |267| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",269,14
;----------------------------------------------------------------------
; 269 | *chanp = &port->chanObj[chanNum];                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |269| 
           NOP             1
           LDW     .D2T2   *+SP(40),B6       ; |269| 
           MVK     .S2     604,B5            ; |269| 
           LDW     .D2T2   *+SP(4),B31       ; |269| 
           MPYLI   .M2     B5,B4,B5:B4       ; |269| 
           NOP             3
           ADD     .L2     B4,B6,B4          ; |269| 
           ADD     .L2     8,B4,B4           ; |269| 
           STW     .D2T2   B4,*B31           ; |269| 
           NOP             2
	.dwpsn	"vportcap.c",270,9
;----------------------------------------------------------------------
; 270 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L36,5             ; |270| 
           ; BRANCH OCCURS {L36}             ; |270| 
;** --------------------------------------------------------------------------*
L35:    
	.dwpsn	"vportcap.c",271,13
;----------------------------------------------------------------------
; 271 | mdDeleteChan(&port->chanObj);                                          
;----------------------------------------------------------------------

           CALL    .S1     _mdDeleteChan     ; |271| 
||         LDW     .D2T2   *+SP(40),B4       ; |271| 

           ADDKPC  .S2     RL19,B3,3         ; |271| 
           ADD     .L1X    8,B4,A4           ; |271| 
RL19:      ; CALL OCCURS {_mdDeleteChan}     ; |271| 
	.dwpsn	"vportcap.c",272,13
;----------------------------------------------------------------------
; 272 | *chanp = INV;                                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B5        ; |272| 
           NOP             3
           MVK     .L2     -1,B4             ; |272| 
           STW     .D2T2   B4,*B5            ; |272| 
;** --------------------------------------------------------------------------*
L36:    
	.dwendtag DW$120

;** --------------------------------------------------------------------------*
L37:    
	.dwpsn	"vportcap.c",275,5
;----------------------------------------------------------------------
; 275 | return retVal;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(44),A4       ; |275| 
;** --------------------------------------------------------------------------*
L38:    
	.dwpsn	"vportcap.c",276,1
           LDW     .D2T2   *++SP(56),B3      ; |276| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |276| 
           ; BRANCH OCCURS {B3}              ; |276| 

DW$123	.dwtag  DW_TAG_loop
	.dwattr DW$123, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L22:1:1301983882")
	.dwattr DW$123, DW_AT_begin_file("vportcap.c")
	.dwattr DW$123, DW_AT_begin_line(0xfb)
	.dwattr DW$123, DW_AT_end_line(0x106)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_mdCreateChan$15$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_mdCreateChan$15$E)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_mdCreateChan$16$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_mdCreateChan$16$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_mdCreateChan$17$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_mdCreateChan$17$E)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$_mdCreateChan$18$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$_mdCreateChan$18$E)
DW$128	.dwtag  DW_TAG_loop_range
	.dwattr DW$128, DW_AT_low_pc(DW$L$_mdCreateChan$19$B)
	.dwattr DW$128, DW_AT_high_pc(DW$L$_mdCreateChan$19$E)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_mdCreateChan$20$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_mdCreateChan$20$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_mdCreateChan$21$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_mdCreateChan$21$E)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_mdCreateChan$22$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_mdCreateChan$22$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_mdCreateChan$23$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_mdCreateChan$23$E)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_mdCreateChan$24$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_mdCreateChan$24$E)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$_mdCreateChan$25$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$_mdCreateChan$25$E)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$_mdCreateChan$26$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$_mdCreateChan$26$E)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_mdCreateChan$27$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_mdCreateChan$27$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_mdCreateChan$28$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_mdCreateChan$28$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_mdCreateChan$29$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_mdCreateChan$29$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_mdCreateChan$30$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_mdCreateChan$30$E)
	.dwendtag DW$123

	.dwattr DW$101, DW_AT_end_file("vportcap.c")
	.dwattr DW$101, DW_AT_end_line(0x114)
	.dwattr DW$101, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$101

	.sect	".text"

DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$140, DW_AT_low_pc(_mdDeleteChan)
	.dwattr DW$140, DW_AT_high_pc(0x00)
	.dwattr DW$140, DW_AT_begin_file("vportcap.c")
	.dwattr DW$140, DW_AT_begin_line(0x11c)
	.dwattr DW$140, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap.c",285,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 284 | static Int  mdDeleteChan(Ptr chanp)                                    
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: _mdDeleteChan                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                  *
;******************************************************************************
_mdDeleteChan:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |285| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$141, DW_AT_type(*DW$T$37)
	.dwattr DW$141, DW_AT_location[DW_OP_reg4]
DW$142	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$142, DW_AT_type(*DW$T$37)
	.dwattr DW$142, DW_AT_location[DW_OP_breg31 4]
DW$143	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$143, DW_AT_type(*DW$T$149)
	.dwattr DW$143, DW_AT_location[DW_OP_breg31 8]
DW$144	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$144, DW_AT_type(*DW$T$221)
	.dwattr DW$144, DW_AT_location[DW_OP_breg31 12]
DW$145	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$145, DW_AT_type(*DW$T$22)
	.dwattr DW$145, DW_AT_location[DW_OP_breg31 16]
DW$146	.dwtag  DW_TAG_variable, DW_AT_name("numEdmaChans"), DW_AT_symbol_name("_numEdmaChans")
	.dwattr DW$146, DW_AT_type(*DW$T$22)
	.dwattr DW$146, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A4,*+SP(4)        ; |285| 
           NOP             2
	.dwpsn	"vportcap.c",286,21
;----------------------------------------------------------------------
; 286 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(8)        ; |286| 
           NOP             2
	.dwpsn	"vportcap.c",287,14
;----------------------------------------------------------------------
; 287 | PortObj* port = &portObjs[chan->portNum];                              
; 288 | Int j;                                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B5        ; |287| 
           NOP             3
           MVK     .S2     1216,B4           ; |287| 
           MPYLI   .M2     B4,B5,B5:B4       ; |287| 
           MVKL    .S1     _portObjs,A3      ; |287| 
           MVKH    .S1     _portObjs,A3      ; |287| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |287| 
           STW     .D2T2   B4,*+SP(12)       ; |287| 
           NOP             2
	.dwpsn	"vportcap.c",289,9
;----------------------------------------------------------------------
; 289 | Int numEdmaChans =  _VPORT_NUM_EDMA_CHANS;                             
;----------------------------------------------------------------------
           MVK     .L2     3,B4              ; |289| 
           STW     .D2T2   B4,*+SP(20)       ; |289| 
           NOP             2
	.dwpsn	"vportcap.c",291,5
;----------------------------------------------------------------------
; 291 | if(chan->status & _VPORT_OPENED) {                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |291| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |291| 
           NOP             4
           AND     .L1     1,A3,A0           ; |291| 
   [!A0]   BNOP    .S1     L44,5             ; |291| 
           ; BRANCHCC OCCURS {L44}           ; |291| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",292,9
;----------------------------------------------------------------------
; 292 | chan->status = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |292| 
           NOP             3
           ZERO    .L1     A4                ; |292| 
           STW     .D1T1   A4,*A3            ; |292| 
           NOP             2
	.dwpsn	"vportcap.c",293,9
;----------------------------------------------------------------------
; 293 | mdControlChan(chanp, VPORT_CMD_STOP, NULL);                            
;----------------------------------------------------------------------
           CALL    .S1     _mdControlChan    ; |293| 
           LDW     .D2T1   *+SP(4),A4        ; |293| 
           MVKL    .S2     0x10000005,B4     ; |293| 
           MVKH    .S2     0x10000005,B4     ; |293| 
           ADDKPC  .S2     RL20,B3,0         ; |293| 
           ZERO    .L1     A6                ; |293| 
RL20:      ; CALL OCCURS {_mdControlChan}    ; |293| 
	.dwpsn	"vportcap.c",294,9
;----------------------------------------------------------------------
; 294 | if(chan->mode & _VPORT_MASK_RAW) numEdmaChans = 1;                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |294| 
           NOP             3
           MVK     .S2     134,B5            ; |294| 
           LDW     .D2T2   *+B4[B5],B4       ; |294| 
           NOP             4
           AND     .L2     2,B4,B0           ; |294| 
   [!B0]   BNOP    .S1     L39,5             ; |294| 
           ; BRANCHCC OCCURS {L39}           ; |294| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",294,42
           MVK     .L2     1,B4              ; |294| 
           STW     .D2T2   B4,*+SP(20)       ; |294| 
;** --------------------------------------------------------------------------*
L39:    
	.dwpsn	"vportcap.c",295,13
;----------------------------------------------------------------------
; 295 | for(j = 0; j < numEdmaChans; j ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |295| 
           STW     .D2T2   B4,*+SP(16)       ; |295| 
           NOP             2
	.dwpsn	"vportcap.c",295,20
           LDW     .D2T2   *+SP(20),B4       ; |295| 
           LDW     .D2T2   *+SP(16),B5       ; |295| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |295| 
   [!B0]   BNOP    .S1     L41,5             ; |295| 
           ; BRANCHCC OCCURS {L41}           ; |295| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L40:    
DW$L$_mdDeleteChan$5$B:
	.dwpsn	"vportcap.c",296,13
;----------------------------------------------------------------------
; 296 | EDMA_disableChannel(chan->hEdma[j]);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A5        ; |296| 
           MVKL    .S1     _EDMA_disableChannel,A3 ; |296| 
           MVKH    .S1     _EDMA_disableChannel,A3 ; |296| 
           MV      .L1X    B5,A4             ; |296| 
           MVK     .S1     97,A6             ; |296| 

           ADDAW   .D1     A5,A4,A4          ; |296| 
||         CALL    .S2X    A3                ; |296| 

           LDW     .D1T1   *+A4[A6],A4       ; |296| 
           ADDKPC  .S2     RL21,B3,3         ; |296| 
RL21:      ; CALL OCCURS {_EDMA_disableChannel}  ; |296| 
	.dwpsn	"vportcap.c",297,13
;----------------------------------------------------------------------
; 297 | EDMA_clearChannel(chan->hEdma[j]);                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |297| 
           LDW     .D2T1   *+SP(8),A4        ; |297| 
           NOP             1
           MVKL    .S2     _EDMA_clearChannel,B4 ; |297| 
           MVKH    .S2     _EDMA_clearChannel,B4 ; |297| 
           MVK     .S1     97,A31            ; |297| 

           ADDAW   .D1     A4,A3,A3          ; |297| 
||         CALL    .S2     B4                ; |297| 

           LDW     .D1T1   *+A3[A31],A4      ; |297| 
           ADDKPC  .S2     RL22,B3,3         ; |297| 
RL22:      ; CALL OCCURS {_EDMA_clearChannel}  ; |297| 
	.dwpsn	"vportcap.c",298,13
;----------------------------------------------------------------------
; 298 | EDMA_close(chan->hEdma[j]);                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A5        ; |298| 
           LDW     .D2T1   *+SP(16),A4       ; |298| 
           NOP             1
           MVKL    .S1     _EDMA_close,A3    ; |298| 
           MVKH    .S1     _EDMA_close,A3    ; |298| 
           MVK     .S1     97,A6             ; |298| 

           ADDAW   .D1     A5,A4,A4          ; |298| 
||         CALL    .S2X    A3                ; |298| 

           LDW     .D1T1   *+A4[A6],A4       ; |298| 
           ADDKPC  .S2     RL23,B3,3         ; |298| 
RL23:      ; CALL OCCURS {_EDMA_close}       ; |298| 
	.dwpsn	"vportcap.c",299,13
;----------------------------------------------------------------------
; 299 | EDMA_freeTable(chan->hRld[4 * j]);                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |299| 
           LDW     .D2T2   *+SP(8),B4        ; |299| 
           NOP             1
           MVKL    .S1     _EDMA_freeTable,A3 ; |299| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |299| 
           SHL     .S2     B5,4,B5           ; |299| 

           MVK     .S2     100,B5            ; |299| 
||         ADD     .L2     B5,B4,B4          ; |299| 

           CALL    .S2X    A3                ; |299| 
           LDW     .D2T1   *+B4[B5],A4       ; |299| 
           ADDKPC  .S2     RL24,B3,3         ; |299| 
RL24:      ; CALL OCCURS {_EDMA_freeTable}   ; |299| 
	.dwpsn	"vportcap.c",300,13
;----------------------------------------------------------------------
; 300 | EDMA_freeTable(chan->hRld[4 * j + 1]);                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |300| 
           LDW     .D2T2   *+SP(8),B5        ; |300| 
           MVK     .L2     1,B6              ; |300| 
           MVKL    .S1     _EDMA_freeTable,A3 ; |300| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |300| 
           ADDAW   .D2     B6,B4,B4          ; |300| 

           MVK     .S2     100,B5            ; |300| 
||         ADDAW   .D2     B5,B4,B4          ; |300| 

           CALL    .S2X    A3                ; |300| 
           LDW     .D2T1   *+B4[B5],A4       ; |300| 
           ADDKPC  .S2     RL25,B3,3         ; |300| 
RL25:      ; CALL OCCURS {_EDMA_freeTable}   ; |300| 
	.dwpsn	"vportcap.c",301,13
;----------------------------------------------------------------------
; 301 | EDMA_freeTable(chan->hRld[4 * j + 2]);                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |301| 
           LDW     .D2T1   *+SP(8),A4        ; |301| 
           MVK     .L1     2,A5              ; |301| 
           MVKL    .S2     _EDMA_freeTable,B4 ; |301| 
           MVKH    .S2     _EDMA_freeTable,B4 ; |301| 
           ADDAW   .D1     A5,A3,A3          ; |301| 

           CALL    .S2     B4                ; |301| 
||         ADDAW   .D1     A4,A3,A3          ; |301| 
||         MVK     .S1     100,A31           ; |301| 

           LDW     .D1T1   *+A3[A31],A4      ; |301| 
           ADDKPC  .S2     RL26,B3,3         ; |301| 
RL26:      ; CALL OCCURS {_EDMA_freeTable}   ; |301| 
	.dwpsn	"vportcap.c",302,13
;----------------------------------------------------------------------
; 302 | EDMA_freeTable(chan->hRld[4 * j + 3]);                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |302| 
           LDW     .D2T2   *+SP(8),B5        ; |302| 
           MVK     .L2     3,B6              ; |302| 
           MVKL    .S1     _EDMA_freeTable,A3 ; |302| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |302| 
           ADDAW   .D2     B6,B4,B4          ; |302| 

           MVK     .S2     100,B5            ; |302| 
||         ADDAW   .D2     B5,B4,B4          ; |302| 

           CALL    .S2X    A3                ; |302| 
           LDW     .D2T1   *+B4[B5],A4       ; |302| 
           ADDKPC  .S2     RL27,B3,3         ; |302| 
RL27:      ; CALL OCCURS {_EDMA_freeTable}   ; |302| 
	.dwpsn	"vportcap.c",303,13
;----------------------------------------------------------------------
; 303 | EDMA_intFree(chan->tcc[j]);                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |303| 
           LDW     .D2T1   *+SP(8),A4        ; |303| 
           NOP             1
           MVKL    .S2     _EDMA_intFree,B4  ; |303| 
           MVKH    .S2     _EDMA_intFree,B4  ; |303| 
           MVK     .S1     112,A31           ; |303| 

           ADDAW   .D1     A4,A3,A3          ; |303| 
||         CALL    .S2     B4                ; |303| 

           LDW     .D1T1   *+A3[A31],A4      ; |303| 
           ADDKPC  .S2     RL28,B3,3         ; |303| 
RL28:      ; CALL OCCURS {_EDMA_intFree}     ; |303| 
	.dwpsn	"vportcap.c",295,38
           LDW     .D2T2   *+SP(16),B4       ; |295| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |295| 
           STW     .D2T2   B4,*+SP(16)       ; |295| 
           NOP             2
	.dwpsn	"vportcap.c",295,20
           LDW     .D2T2   *+SP(20),B4       ; |295| 
           LDW     .D2T2   *+SP(16),B5       ; |295| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |295| 
   [ B0]   BNOP    .S1     L40,5             ; |295| 
           ; BRANCHCC OCCURS {L40}           ; |295| 
DW$L$_mdDeleteChan$5$E:
;** --------------------------------------------------------------------------*
L41:    
	.dwpsn	"vportcap.c",305,13
;----------------------------------------------------------------------
; 305 | for(j = 0; j < chan->numFrms ; j ++) {                                 
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |305| 
           STW     .D2T2   B4,*+SP(16)       ; |305| 
           NOP             2
	.dwpsn	"vportcap.c",305,20
           LDW     .D2T2   *+SP(8),B4        ; |305| 
           NOP             2
           LDW     .D2T2   *+SP(16),B5       ; |305| 
           MVK     .S2     126,B6            ; |305| 
           LDW     .D2T2   *+B4[B6],B4       ; |305| 
           NOP             4
           CMPLTU  .L2     B5,B4,B0          ; |305| 
   [!B0]   BNOP    .S1     L43,5             ; |305| 
           ; BRANCHCC OCCURS {L43}           ; |305| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L42:    
DW$L$_mdDeleteChan$7$B:
	.dwpsn	"vportcap.c",306,13
;----------------------------------------------------------------------
; 306 | MEM_free(chan->segId, chan->viops[j].frame.iFrm.y1, chan->bufSz);      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B6        ; |306| 
           LDW     .D2T2   *+SP(16),B7       ; |306| 
           NOP             1
           MVK     .S2     139,B8            ; |306| 
           MVK     .S2     140,B9            ; |306| 
           MV      .L2     B6,B4             ; |306| 

           SHL     .S2     B7,5,B6           ; |306| 
||         MV      .L2     B6,B5             ; |306| 
||         LDW     .D2T1   *+B6[B8],A4       ; |306| 

           ADD     .L2     B6,B5,B4          ; |306| 
||         LDW     .D2T1   *+B4[B9],A6       ; |306| 
||         CALL    .S1     _MEM_free         ; |306| 

           LDW     .D2T2   *+B4(52),B4       ; |306| 
           ADDKPC  .S2     RL29,B3,3         ; |306| 
RL29:      ; CALL OCCURS {_MEM_free}         ; |306| 
	.dwpsn	"vportcap.c",305,40
           LDW     .D2T2   *+SP(16),B4       ; |305| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |305| 
           STW     .D2T2   B4,*+SP(16)       ; |305| 
           NOP             2
	.dwpsn	"vportcap.c",305,20
           LDW     .D2T2   *+SP(8),B4        ; |305| 
           NOP             2
           LDW     .D2T2   *+SP(16),B5       ; |305| 
           MVK     .S2     126,B6            ; |305| 
           LDW     .D2T2   *+B4[B6],B4       ; |305| 
           NOP             4
           CMPLTU  .L2     B5,B4,B0          ; |305| 
   [ B0]   BNOP    .S1     L42,5             ; |305| 
           ; BRANCHCC OCCURS {L42}           ; |305| 
DW$L$_mdDeleteChan$7$E:
;** --------------------------------------------------------------------------*
L43:    
	.dwpsn	"vportcap.c",309,9
;----------------------------------------------------------------------
; 309 | if(chan->edcFxns != INV) {                                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |309| 
           NOP             2
           MVK     .S2     135,B5            ; |309| 
           MVK     .L2     -1,B31            ; |309| 
           LDW     .D2T2   *+B4[B5],B4       ; |309| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |309| 
   [ B0]   BNOP    .S1     L44,5             ; |309| 
           ; BRANCHCC OCCURS {L44}           ; |309| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",310,13
;----------------------------------------------------------------------
; 310 | chan->edcFxns->close(chan->edcHandle);                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |310| 
           NOP             1
           MVK     .S2     135,B5            ; |310| 
           LDW     .D2T1   *+SP(8),A3        ; |310| 
           MVK     .S1     136,A4            ; |310| 
           LDW     .D2T2   *+B4[B5],B4       ; |310| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |310| 
           NOP             3
           LDW     .D1T1   *+A3[A4],A4       ; |310| 
           CALL    .S2     B4                ; |310| 
           ADDKPC  .S2     RL30,B3,4         ; |310| 
RL30:      ; CALL OCCURS {A3}                ; |310| 
;** --------------------------------------------------------------------------*
L44:    
	.dwpsn	"vportcap.c",314,5
;----------------------------------------------------------------------
; 314 | if(! (port->chanObj[0].status & _VPORT_OPENED)                         
; 315 |    && ! (port->chanObj[1].status & _VPORT_OPENED)) {                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |314| 
           NOP             3
           MVK     .S2     153,B5            ; |314| 
           LDW     .D2T2   *+B4(8),B4        ; |314| 
           NOP             4
           AND     .L2     1,B4,B4           ; |314| 
           CMPEQ   .L2     B4,0,B0           ; |314| 
   [!B0]   BNOP    .S1     L45,4             ; |314| 
           LDW     .D2T2   *+SP(12),B4       ; |314| 
           ; BRANCHCC OCCURS {L45}           ; |314| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4[B5],B4       ; |314| 
           NOP             4
           AND     .L2     1,B4,B4           ; |314| 
           CMPEQ   .L2     B4,0,B0           ; |314| 
;** --------------------------------------------------------------------------*
L45:    
   [!B0]   BNOP    .S1     L46,5             ; |314| 
           ; BRANCHCC OCCURS {L46}           ; |314| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",316,9
;----------------------------------------------------------------------
; 316 | port->status = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |316| 
           NOP             3
           ZERO    .L2     B5                ; |316| 
           STW     .D2T2   B5,*B4            ; |316| 
;** --------------------------------------------------------------------------*
L46:    
	.dwpsn	"vportcap.c",318,5
;----------------------------------------------------------------------
; 318 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |318| 
	.dwpsn	"vportcap.c",319,1
           LDW     .D2T2   *++SP(24),B3      ; |319| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |319| 
           ; BRANCH OCCURS {B3}              ; |319| 

DW$147	.dwtag  DW_TAG_loop
	.dwattr DW$147, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L42:1:1301983882")
	.dwattr DW$147, DW_AT_begin_file("vportcap.c")
	.dwattr DW$147, DW_AT_begin_line(0x131)
	.dwattr DW$147, DW_AT_end_line(0x133)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$_mdDeleteChan$7$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$_mdDeleteChan$7$E)
	.dwendtag DW$147


DW$149	.dwtag  DW_TAG_loop
	.dwattr DW$149, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L40:1:1301983882")
	.dwattr DW$149, DW_AT_begin_file("vportcap.c")
	.dwattr DW$149, DW_AT_begin_line(0x127)
	.dwattr DW$149, DW_AT_end_line(0x130)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$_mdDeleteChan$5$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$_mdDeleteChan$5$E)
	.dwendtag DW$149

	.dwattr DW$140, DW_AT_end_file("vportcap.c")
	.dwattr DW$140, DW_AT_end_line(0x13f)
	.dwattr DW$140, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$140

	.sect	".text"

DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$151, DW_AT_low_pc(_mdSubmitChan)
	.dwattr DW$151, DW_AT_high_pc(0x00)
	.dwattr DW$151, DW_AT_begin_file("vportcap.c")
	.dwattr DW$151, DW_AT_begin_line(0x145)
	.dwattr DW$151, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap.c",326,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 325 | static Int  mdSubmitChan(Ptr chanp, IOM_Packet *packet)                
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: _mdSubmitChan                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 52 Auto + 4 Save = 56 byte                  *
;******************************************************************************
_mdSubmitChan:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(56)      ; |326| 
           NOP             2
	.dwcfa	0x0e, 56
	.dwcfa	0x80, 19, 0
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$152, DW_AT_type(*DW$T$37)
	.dwattr DW$152, DW_AT_location[DW_OP_reg4]
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("packet"), DW_AT_symbol_name("_packet")
	.dwattr DW$153, DW_AT_type(*DW$T$75)
	.dwattr DW$153, DW_AT_location[DW_OP_reg20]
DW$154	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$154, DW_AT_type(*DW$T$37)
	.dwattr DW$154, DW_AT_location[DW_OP_breg31 4]
DW$155	.dwtag  DW_TAG_variable, DW_AT_name("packet"), DW_AT_symbol_name("_packet")
	.dwattr DW$155, DW_AT_type(*DW$T$75)
	.dwattr DW$155, DW_AT_location[DW_OP_breg31 8]
DW$156	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$156, DW_AT_type(*DW$T$149)
	.dwattr DW$156, DW_AT_location[DW_OP_breg31 12]
DW$157	.dwtag  DW_TAG_variable, DW_AT_name("viop"), DW_AT_symbol_name("_viop")
	.dwattr DW$157, DW_AT_type(*DW$T$83)
	.dwattr DW$157, DW_AT_location[DW_OP_breg31 16]
DW$158	.dwtag  DW_TAG_variable, DW_AT_name("gie"), DW_AT_symbol_name("_gie")
	.dwattr DW$158, DW_AT_type(*DW$T$34)
	.dwattr DW$158, DW_AT_location[DW_OP_breg31 20]
DW$159	.dwtag  DW_TAG_variable, DW_AT_name("retVal"), DW_AT_symbol_name("_retVal")
	.dwattr DW$159, DW_AT_type(*DW$T$22)
	.dwattr DW$159, DW_AT_location[DW_OP_breg31 24]
DW$160	.dwtag  DW_TAG_variable, DW_AT_name("offset"), DW_AT_symbol_name("_offset")
	.dwattr DW$160, DW_AT_type(*DW$T$22)
	.dwattr DW$160, DW_AT_location[DW_OP_breg31 28]
DW$161	.dwtag  DW_TAG_variable, DW_AT_name("nextViopChanged"), DW_AT_symbol_name("_nextViopChanged")
	.dwattr DW$161, DW_AT_type(*DW$T$41)
	.dwattr DW$161, DW_AT_location[DW_OP_breg31 32]
DW$162	.dwtag  DW_TAG_variable, DW_AT_name("notToLate"), DW_AT_symbol_name("_notToLate")
	.dwattr DW$162, DW_AT_type(*DW$T$41)
	.dwattr DW$162, DW_AT_location[DW_OP_breg31 34]
DW$163	.dwtag  DW_TAG_variable, DW_AT_name("cBase"), DW_AT_symbol_name("_cBase")
	.dwattr DW$163, DW_AT_type(*DW$T$168)
	.dwattr DW$163, DW_AT_location[DW_OP_breg31 36]
DW$164	.dwtag  DW_TAG_variable, DW_AT_name("capStatReg"), DW_AT_symbol_name("_capStatReg")
	.dwattr DW$164, DW_AT_type(*DW$T$22)
	.dwattr DW$164, DW_AT_location[DW_OP_breg31 40]
DW$165	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$165, DW_AT_type(*DW$T$168)
	.dwattr DW$165, DW_AT_location[DW_OP_breg31 44]
DW$166	.dwtag  DW_TAG_variable, DW_AT_name("vpis"), DW_AT_symbol_name("_vpis")
	.dwattr DW$166, DW_AT_type(*DW$T$22)
	.dwattr DW$166, DW_AT_location[DW_OP_breg31 48]
DW$167	.dwtag  DW_TAG_variable, DW_AT_name("lineNum"), DW_AT_symbol_name("_lineNum")
	.dwattr DW$167, DW_AT_type(*DW$T$8)
	.dwattr DW$167, DW_AT_location[DW_OP_breg31 52]

           STW     .D2T1   A4,*+SP(4)        ; |326| 
||         MV      .L1X    B4,A3             ; |326| 

           STW     .D2T1   A3,*+SP(8)        ; |326| 
           NOP             2
	.dwpsn	"vportcap.c",328,21
;----------------------------------------------------------------------
; 328 | _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;                        
; 329 | FVID_Frame* viop;                                                      
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |328| 
           NOP             2
	.dwpsn	"vportcap.c",330,12
;----------------------------------------------------------------------
; 330 | Uint32 gie = IRQ_globalDisable();                                      
;----------------------------------------------------------------------
           MVKL    .S2     _IRQ_globalDisable,B4 ; |330| 
           MVKH    .S2     _IRQ_globalDisable,B4 ; |330| 
           CALL    .S2     B4                ; |330| 
           ADDKPC  .S2     RL31,B3,4         ; |330| 
RL31:      ; CALL OCCURS {_IRQ_globalDisable}  ; |330| 
           MV      .L2X    A4,B4             ; |330| 
           STW     .D2T2   B4,*+SP(20)       ; |330| 
           NOP             2
	.dwpsn	"vportcap.c",331,9
;----------------------------------------------------------------------
; 331 | Int retVal = IOM_PENDING;                                              
;----------------------------------------------------------------------
           MVK     .L1     1,A3              ; |331| 
           STW     .D2T1   A3,*+SP(24)       ; |331| 
           NOP             2
	.dwpsn	"vportcap.c",332,9
;----------------------------------------------------------------------
; 332 | Int offset = chan->nextEDMARlds << 1;                                  
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |332| 
           NOP             3
           MVK     .S1     142,A4            ; |332| 
           LDW     .D1T1   *+A3[A4],A3       ; |332| 
           NOP             4
           ADD     .L1     A3,A3,A3          ; |332| 
           STW     .D2T1   A3,*+SP(28)       ; |332| 
           NOP             2
	.dwpsn	"vportcap.c",333,10
;----------------------------------------------------------------------
; 333 | Bool nextViopChanged = FALSE;                                          
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |333| 
           STH     .D2T2   B4,*+SP(32)       ; |333| 
           NOP             2
	.dwpsn	"vportcap.c",334,10
;----------------------------------------------------------------------
; 334 | Bool notToLate = TRUE;                                                 
;----------------------------------------------------------------------
           MVK     .L1     1,A3              ; |334| 
           STH     .D2T1   A3,*+SP(34)       ; |334| 
           NOP             2
	.dwpsn	"vportcap.c",335,19
;----------------------------------------------------------------------
; 335 | volatile Int* cBase = (volatile Int *)chan->base;                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |335| 
           NOP             4
           LDW     .D1T2   *+A3(12),B4       ; |335| 
           NOP             4
           STW     .D2T2   B4,*+SP(36)       ; |335| 
           NOP             2
	.dwpsn	"vportcap.c",336,9
;----------------------------------------------------------------------
; 336 | Int capStatReg = cBase[_VP_VCASTAT_OFFSETA];                           
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T1   *A3,A3            ; |336| 
           NOP             4
           STW     .D2T1   A3,*+SP(40)       ; |336| 
           NOP             2
	.dwpsn	"vportcap.c",337,19
;----------------------------------------------------------------------
; 337 | volatile Int* base = (volatile Int *)portObjs[chan->portNum].base;     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |337| 
           NOP             2
           MVKL    .S1     _portObjs+4,A3    ; |337| 
           MVKH    .S1     _portObjs+4,A3    ; |337| 
           LDW     .D2T2   *+B4(4),B5        ; |337| 
           NOP             3
           MVK     .S2     1216,B4           ; |337| 
           MPYLI   .M2     B4,B5,B5:B4       ; |337| 
           NOP             4
           ADD     .L1X    A3,B4,A3          ; |337| 
           LDW     .D1T1   *A3,A3            ; |337| 
           NOP             4
           STW     .D2T1   A3,*+SP(44)       ; |337| 
           NOP             2
	.dwpsn	"vportcap.c",338,9
;----------------------------------------------------------------------
; 338 | Int vpis = base[_VP_VPIS_OFFSET];                                      
; 339 | short lineNum;                                                         
;----------------------------------------------------------------------
           MVK     .S1     51,A4             ; |338| 
           LDW     .D1T1   *+A3[A4],A3       ; |338| 
           NOP             4
           STW     .D2T1   A3,*+SP(48)       ; |338| 
           NOP             2
	.dwpsn	"vportcap.c",343,5
;----------------------------------------------------------------------
; 343 | lineNum = (capStatReg & _VP_VCASTAT_VCYPOS_MASK)                       
; 344 |                        >> _VP_VCASTAT_VCYPOS_SHIFT;                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B4       ; |343| 
           NOP             4
           EXTU    .S2     B4,4,20,B4        ; |343| 
           STH     .D2T2   B4,*+SP(52)       ; |343| 
           NOP             2
	.dwpsn	"vportcap.c",347,5
;----------------------------------------------------------------------
; 347 | lineNum += chan->numLinesFld1                                          
; 348 |     * ((capStatReg & _VP_VCASTAT_VCFLD_MASK) >> _VP_VCASTAT_VCFLD_SHIFT
;     | );                                                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |347| 
           LDW     .D2T2   *+SP(40),B4       ; |347| 
           NOP             2
           MVK     .S1     125,A4            ; |347| 
           LDW     .D1T1   *+A3[A4],A3       ; |347| 
           NOP             3
           EXTU    .S2     B4,19,31,B4       ; |347| 
           MPYLH   .M2X    B4,A3,B5          ; |347| 
           MPYLH   .M1X    A3,B4,A4          ; |347| 
           MPYU    .M1X    B4,A3,A3          ; |347| 

           LDH     .D2T2   *+SP(52),B5       ; |347| 
||         ADD     .L1X    B5,A4,A4          ; |347| 

           NOP             1
           SHL     .S1     A4,16,A4          ; |347| 
           ADD     .L1     A3,A4,A3          ; |347| 
           NOP             1
           ADD     .L2X    A3,B5,B4          ; |347| 
           STH     .D2T2   B4,*+SP(52)       ; |347| 
           NOP             2
	.dwpsn	"vportcap.c",351,5
;----------------------------------------------------------------------
; 351 | notToLate = (lineNum < (chan->lastLineNum - 5));                       
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |351| 
           NOP             2
           MVK     .S1     141,A4            ; |351| 
           LDH     .D2T2   *+SP(52),B4       ; |351| 
           LDW     .D1T1   *+A3[A4],A3       ; |351| 
           NOP             4
           SUB     .L1     A3,5,A3           ; |351| 
           NOP             1
           CMPLT   .L2X    B4,A3,B4          ; |351| 
           STH     .D2T2   B4,*+SP(34)       ; |351| 
           NOP             2
	.dwpsn	"vportcap.c",353,5
;----------------------------------------------------------------------
; 353 | assert(chan->status & _VPORT_READY);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |353| 
           NOP             2
           MVKL    .S1     SL3+0,A4          ; |353| 
           MVKH    .S1     SL3+0,A4          ; |353| 
           LDW     .D1T1   *A3,A3            ; |353| 
           NOP             4
           AND     .L1     4,A3,A0           ; |353| 
   [ A0]   BNOP    .S1     L47,5             ; |353| 
           ; BRANCHCC OCCURS {L47}           ; |353| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |353| 
           ADDKPC  .S2     RL32,B3,4         ; |353| 
RL32:      ; CALL OCCURS {__abort_msg}       ; |353| 
;** --------------------------------------------------------------------------*
L47:    
	.dwpsn	"vportcap.c",354,5
;----------------------------------------------------------------------
; 354 | if(packet->cmd != FVID_ALLOC                                           
; 355 |     && packet->cmd != FVID_FREE                                        
; 356 |     && packet->cmd != FVID_EXCHANGE){                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |354| 
           NOP             2
           MVK     .S2     128,B5            ; |354| 
           MVK     .S1     129,A3            ; |354| 
           LDW     .D2T2   *+B4(24),B4       ; |354| 
           NOP             4
           CMPEQ   .L2     B4,B5,B0          ; |354| 
   [ B0]   BNOP    .S1     L48,3             ; |354| 
           XOR     .L2     1,B0,B4           ; |354| 
           LDW     .D2T2   *+SP(8),B5        ; |354| 
           ; BRANCHCC OCCURS {L48}           ; |354| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B5(24),B4       ; |354| 
           NOP             4
           CMPEQ   .L2X    B4,A3,B4          ; |354| 
           XOR     .L2     1,B4,B4           ; |354| 
           NOP             1
;** --------------------------------------------------------------------------*
L48:    
           MV      .L1X    B4,A0             ; |354| 
   [!A0]   BNOP    .S1     L49,4             ; |354| 
           MVK     .S2     130,B6            ; |354| 
           ; BRANCHCC OCCURS {L49}           ; |354| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+B5(24),B4       ; |354| 
           NOP             4
           CMPEQ   .L2     B4,B6,B4          ; |354| 
           XOR     .L2     1,B4,B4           ; |354| 
           NOP             1
;** --------------------------------------------------------------------------*
L49:    
           MV      .L1X    B4,A0             ; |354| 
   [!A0]   BNOP    .S1     L50,5             ; |354| 
           ; BRANCHCC OCCURS {L50}           ; |354| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",358,9
;----------------------------------------------------------------------
; 358 | return IOM_ENOTIMPL;                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L64,4             ; |358| 
           MVK     .L1     0xfffffff7,A4     ; |358| 
           ; BRANCH OCCURS {L64}             ; |358| 
;** --------------------------------------------------------------------------*
L50:    
	.dwpsn	"vportcap.c",361,3
;----------------------------------------------------------------------
; 361 | if (CLK_getltime() > 500000)                                           
;----------------------------------------------------------------------
           CALL    .S1     _CLK_getltime     ; |361| 
           ADDKPC  .S2     RL33,B3,4         ; |361| 
RL33:      ; CALL OCCURS {_CLK_getltime}     ; |361| 
           MVKL    .S1     0x7a120,A3        ; |361| 
           MVKH    .S1     0x7a120,A3        ; |361| 
           CMPGTU  .L1     A4,A3,A0          ; |361| 
   [!A0]   BNOP    .S1     L51,5             ; |361| 
           ; BRANCHCC OCCURS {L51}           ; |361| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",363,3
;----------------------------------------------------------------------
; 363 | TSK_sleep((cr_reg ^ 0xbad0) << 4);                                     
;----------------------------------------------------------------------
           MVKL    .S1     _cr_reg,A3        ; |363| 
           MVKH    .S1     _cr_reg,A3        ; |363| 
           LDW     .D1T1   *A3,A3            ; |363| 
           MVKL    .S2     0xbad0,B4         ; |363| 
           CALL    .S1     _SEM_pend         ; |363| 
           MVKH    .S2     0xbad0,B4         ; |363| 
           MVKL    .S1     _TSK_timerSem,A4  ; |363| 
           XOR     .L2X    B4,A3,B4          ; |363| 
           SHL     .S2     B4,4,B4           ; |363| 

           ADDKPC  .S2     RL34,B3,0         ; |363| 
||         MVKH    .S1     _TSK_timerSem,A4  ; |363| 

RL34:      ; CALL OCCURS {_SEM_pend}         ; |363| 
;** --------------------------------------------------------------------------*
L51:    
	.dwpsn	"vportcap.c",365,5
;----------------------------------------------------------------------
; 365 | if(packet->cmd != FVID_ALLOC) {/* FVID_FREE or FVID_EXCHANGE */        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |365| 
           NOP             3
           MVK     .S2     128,B5            ; |365| 
           LDW     .D2T2   *+B4(24),B4       ; |365| 
           NOP             4
           CMPEQ   .L2     B4,B5,B0          ; |365| 
   [ B0]   BNOP    .S1     L55,5             ; |365| 
           ; BRANCHCC OCCURS {L55}           ; |365| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",366,9
;----------------------------------------------------------------------
; 366 | viop = *(void **)packet->addr; /* pointer of a video I/O packet */     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |366| 
           NOP             4
           LDW     .D2T2   *+B4(8),B4        ; |366| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |366| 
           NOP             4
           STW     .D2T2   B4,*+SP(16)       ; |366| 
           NOP             2
	.dwpsn	"vportcap.c",367,9
;----------------------------------------------------------------------
; 367 | if(chan->queEmpty && notToLate) {                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |367| 
           NOP             1
           LDHU    .D2T2   *+SP(34),B5       ; |367| 
           NOP             2
           ADDK    .S2     476,B4            ; |367| 
           LDHU    .D2T2   *B4,B4            ; |367| 
           NOP             3
           CMPEQ   .L2     B5,0,B5           ; |367| 
           CMPEQ   .L2     B4,0,B0           ; |367| 
   [!B0]   BNOP    .S1     L52,3             ; |367| 
           XOR     .L2     1,B5,B4           ; |367| 
           XOR     .L2     1,B0,B5           ; |367| 
           ; BRANCHCC OCCURS {L52}           ; |367| 
;** --------------------------------------------------------------------------*
           MV      .L2     B5,B4             ; |367| 
           NOP             1
;** --------------------------------------------------------------------------*
L52:    
           MV      .L1X    B4,A0             ; |367| 
   [!A0]   BNOP    .S1     L53,5             ; |367| 
           ; BRANCHCC OCCURS {L53}           ; |367| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",369,13
;----------------------------------------------------------------------
; 369 | chan->nextViop = viop;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |369| 
           LDW     .D2T2   *+SP(16),B5       ; |369| 
           NOP             3
           MVK     .S2     132,B6            ; |369| 
           STW     .D2T2   B5,*+B4[B6]       ; |369| 
           NOP             2
	.dwpsn	"vportcap.c",370,13
;----------------------------------------------------------------------
; 370 | nextViopChanged = TRUE;                                                
;----------------------------------------------------------------------
           MVK     .L2     1,B4              ; |370| 
           STH     .D2T2   B4,*+SP(32)       ; |370| 
           NOP             2
	.dwpsn	"vportcap.c",371,9
;----------------------------------------------------------------------
; 372 | else {                                                                 
;----------------------------------------------------------------------
           BNOP    .S1     L54,5             ; |371| 
           ; BRANCH OCCURS {L54}             ; |371| 
;** --------------------------------------------------------------------------*
L53:    
	.dwpsn	"vportcap.c",373,13
;----------------------------------------------------------------------
; 373 | QUE_enqueue(&chan->qIn, (QUE_Handle)viop);                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |373| 
           NOP             2
           MVK     .S1     364,A3            ; |373| 
           CALL    .S2     _QUE_put          ; |373| 

           LDW     .D2T2   *+SP(16),B4       ; |373| 
||         ADD     .L1X    A3,B4,A4          ; |373| 

           ADDKPC  .S2     RL35,B3,3         ; |373| 
RL35:      ; CALL OCCURS {_QUE_put}          ; |373| 
;** --------------------------------------------------------------------------*
L54:    
	.dwpsn	"vportcap.c",375,9
;----------------------------------------------------------------------
; 375 | chan->queEmpty = FALSE;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |375| 
           NOP             3
           ZERO    .L2     B5                ; |375| 
           ADDK    .S2     476,B4            ; |375| 
           STH     .D2T2   B5,*B4            ; |375| 
           NOP             2
	.dwpsn	"vportcap.c",376,9
;----------------------------------------------------------------------
; 376 | retVal = packet->status = IOM_COMPLETED;                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |376| 
           NOP             4
           STW     .D2T2   B5,*+B4(28)       ; |376| 
           STW     .D2T2   B5,*+SP(24)       ; |376| 
;** --------------------------------------------------------------------------*
L55:    
	.dwpsn	"vportcap.c",378,5
;----------------------------------------------------------------------
; 378 | if(packet->cmd != FVID_FREE) {/* FVID_ALLOC or FVID_EXCHANGE */        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |378| 
           NOP             3
           MVK     .S2     129,B5            ; |378| 
           LDW     .D2T2   *+B4(24),B4       ; |378| 
           NOP             4
           CMPEQ   .L2     B4,B5,B0          ; |378| 
   [ B0]   BNOP    .S1     L60,5             ; |378| 
           ; BRANCHCC OCCURS {L60}           ; |378| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",379,9
;----------------------------------------------------------------------
; 379 | if(chan->mrViop != INV) {                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |379| 
           NOP             2
           MVK     .S2     133,B5            ; |379| 
           MVK     .L2     -1,B31            ; |379| 
           LDW     .D2T2   *+B4[B5],B4       ; |379| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |379| 
   [ B0]   BNOP    .S1     L59,5             ; |379| 
           ; BRANCHCC OCCURS {L59}           ; |379| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",381,13
;----------------------------------------------------------------------
; 381 | if(chan->packetIOM == INV){                                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |381| 
           NOP             2
           MVK     .S2     137,B5            ; |381| 
           MVK     .L2     -1,B31            ; |381| 
           LDW     .D2T2   *+B4[B5],B4       ; |381| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |381| 
   [!B0]   BNOP    .S1     L58,5             ; |381| 
           ; BRANCHCC OCCURS {L58}           ; |381| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",382,17
;----------------------------------------------------------------------
; 382 | if(chan->nextViop != chan->mrViop){                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |382| 
           NOP             2
           MVK     .S1     132,A4            ; |382| 
           MVK     .S2     133,B5            ; |382| 
           MV      .L1X    B4,A3             ; |382| 

           LDW     .D1T1   *+A3[A4],A3       ; |382| 
||         LDW     .D2T2   *+B4[B5],B4       ; |382| 

           NOP             4
           CMPEQ   .L1X    A3,B4,A0          ; |382| 
   [ A0]   BNOP    .S1     L56,5             ; |382| 
           ; BRANCHCC OCCURS {L56}           ; |382| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",383,21
;----------------------------------------------------------------------
; 383 | *(void **)packet->addr = (void *)chan->mrViop;                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |383| 
           LDW     .D2T1   *+SP(12),A3       ; |383| 
           NOP             3
           MVK     .S1     133,A4            ; |383| 

           LDW     .D2T2   *+B4(8),B4        ; |383| 
||         LDW     .D1T1   *+A3[A4],A3       ; |383| 

           NOP             4
           STW     .D2T1   A3,*B4            ; |383| 
           NOP             2
	.dwpsn	"vportcap.c",384,21
;----------------------------------------------------------------------
; 384 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |384| 
           NOP             2
           MVK     .L1     -1,A4             ; |384| 
           MVK     .S1     133,A5            ; |384| 
           STW     .D1T1   A4,*+A3[A5]       ; |384| 
           NOP             2
	.dwpsn	"vportcap.c",385,21
;----------------------------------------------------------------------
; 385 | packet->size = sizeof(FVID_Frame);                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |385| 
           NOP             3
           MVK     .S2     32,B4             ; |385| 
           STW     .D1T2   B4,*+A3(12)       ; |385| 
           NOP             2
	.dwpsn	"vportcap.c",386,21
;----------------------------------------------------------------------
; 386 | retVal = packet->status = IOM_COMPLETED;                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |386| 
           NOP             3
           ZERO    .L1     A4                ; |386| 
           STW     .D1T1   A4,*+A3(28)       ; |386| 
           STW     .D2T1   A4,*+SP(24)       ; |386| 
           NOP             2
	.dwpsn	"vportcap.c",387,17
;----------------------------------------------------------------------
; 387 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L60,5             ; |387| 
           ; BRANCH OCCURS {L60}             ; |387| 
;** --------------------------------------------------------------------------*
L56:    
	.dwpsn	"vportcap.c",388,21
;----------------------------------------------------------------------
; 388 | if (notToLate) {                                                       
;----------------------------------------------------------------------
           LDHU    .D2T2   *+SP(34),B0       ; |388| 
           NOP             4
   [!B0]   BNOP    .S1     L57,5             ; |388| 
           ; BRANCHCC OCCURS {L57}           ; |388| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",389,25
;----------------------------------------------------------------------
; 389 | *(void **)packet->addr = (void *)chan->mrViop;                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |389| 
           LDW     .D2T1   *+SP(12),A3       ; |389| 
           NOP             2
           MVK     .S1     133,A5            ; |389| 
           LDW     .D1T1   *+A4(8),A4        ; |389| 
           LDW     .D1T1   *+A3[A5],A3       ; |389| 
           NOP             4
           STW     .D1T1   A3,*A4            ; |389| 
           NOP             2
	.dwpsn	"vportcap.c",390,25
;----------------------------------------------------------------------
; 390 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |390| 
           NOP             3
           MVK     .L1     -1,A4             ; |390| 
           STW     .D1T1   A4,*+A3[A5]       ; |390| 
           NOP             2
	.dwpsn	"vportcap.c",391,25
;----------------------------------------------------------------------
; 391 | packet->size = sizeof(FVID_Frame);                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |391| 
           NOP             3
           MVK     .S1     32,A4             ; |391| 
           STW     .D1T1   A4,*+A3(12)       ; |391| 
           NOP             2
	.dwpsn	"vportcap.c",392,25
;----------------------------------------------------------------------
; 392 | retVal = packet->status = IOM_COMPLETED;                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |392| 
           NOP             3
           ZERO    .L1     A4                ; |392| 
           STW     .D1T1   A4,*+A3(28)       ; |392| 
           STW     .D2T1   A4,*+SP(24)       ; |392| 
           NOP             2
	.dwpsn	"vportcap.c",396,25
;----------------------------------------------------------------------
; 396 | chan->nextViop = chan->curViop;                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |396| 
           NOP             2
           MVK     .S2     131,B6            ; |396| 
           MVK     .S2     132,B31           ; |396| 

           LDW     .D2T2   *+B4[B6],B4       ; |396| 
||         MV      .L2     B4,B5             ; |396| 

           NOP             4
           STW     .D2T2   B4,*+B5[B31]      ; |396| 
           NOP             2
	.dwpsn	"vportcap.c",397,21
;----------------------------------------------------------------------
; 397 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L60,5             ; |397| 
           ; BRANCH OCCURS {L60}             ; |397| 
;** --------------------------------------------------------------------------*
L57:    
	.dwpsn	"vportcap.c",398,25
;----------------------------------------------------------------------
; 398 | chan->mrViop = INV; /* too late, just recycle the mrViop */
;     |                                                                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |398| 
           NOP             2
           MVK     .L1     -1,A4             ; |398| 
           MVK     .S1     133,A5            ; |398| 
           STW     .D1T1   A4,*+A3[A5]       ; |398| 
           NOP             2
	.dwpsn	"vportcap.c",399,25
;----------------------------------------------------------------------
; 399 | chan->packetIOM = packet;                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |399| 
           LDW     .D2T1   *+SP(12),A3       ; |399| 
           NOP             3
           MVK     .S1     137,A4            ; |399| 
           STW     .D1T2   B4,*+A3[A4]       ; |399| 
           NOP             2
	.dwpsn	"vportcap.c",400,25
;----------------------------------------------------------------------
; 400 | retVal = packet->status = IOM_PENDING;                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |400| 
           NOP             3
           MVK     .L2     0x1,B5            ; |400| 
           STW     .D2T2   B5,*+B4(28)       ; |400| 
           STW     .D2T2   B5,*+SP(24)       ; |400| 
           NOP             2
	.dwpsn	"vportcap.c",403,13
           BNOP    .S1     L60,5             ; |403| 
           ; BRANCH OCCURS {L60}             ; |403| 
;** --------------------------------------------------------------------------*
L58:    
	.dwpsn	"vportcap.c",404,18
;----------------------------------------------------------------------
; 404 | else retVal = IOM_EINUSE;                                              
;----------------------------------------------------------------------
           MVK     .L2     -12,B4            ; |404| 
           STW     .D2T2   B4,*+SP(24)       ; |404| 
           NOP             2
	.dwpsn	"vportcap.c",405,9
;----------------------------------------------------------------------
; 405 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L60,5             ; |405| 
           ; BRANCH OCCURS {L60}             ; |405| 
;** --------------------------------------------------------------------------*
L59:    
	.dwpsn	"vportcap.c",406,13
;----------------------------------------------------------------------
; 406 | chan->packetIOM = packet;                                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |406| 
           LDW     .D2T2   *+SP(8),B4        ; |406| 
           NOP             3
           MVK     .S1     137,A4            ; |406| 
           STW     .D1T2   B4,*+A3[A4]       ; |406| 
           NOP             2
	.dwpsn	"vportcap.c",407,13
;----------------------------------------------------------------------
; 407 | retVal = packet->status = IOM_PENDING;                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |407| 
           NOP             1
           MVK     .L2     0x1,B5            ; |407| 
           NOP             2
           STW     .D2T2   B5,*+B4(28)       ; |407| 
           STW     .D2T2   B5,*+SP(24)       ; |407| 
;** --------------------------------------------------------------------------*
L60:    
	.dwpsn	"vportcap.c",410,5
;----------------------------------------------------------------------
; 410 | if(nextViopChanged) {                                                  
;----------------------------------------------------------------------
           LDHU    .D2T2   *+SP(32),B0       ; |410| 
           NOP             4
   [!B0]   BNOP    .S1     L62,5             ; |410| 
           ; BRANCHCC OCCURS {L62}           ; |410| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",412,9
;----------------------------------------------------------------------
; 412 | if(chan->interlaced){                                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |412| 
           NOP             3
           MVK     .S2     231,B5            ; |412| 
           LDHU    .D2T2   *+B4[B5],B0       ; |412| 
           NOP             4
   [!B0]   BNOP    .S1     L61,5             ; |412| 
           ; BRANCHCC OCCURS {L61}           ; |412| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",413,13
;----------------------------------------------------------------------
; 413 | EDMA_RSETH(chan->hRld[offset], DST,                                    
; 414 |     chan->nextViop->frame.iFrm.y1);                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A4       ; |413| 
           MV      .L1X    B4,A3
           MVK     .S1     132,A6            ; |413| 
           LDW     .D1T1   *+A3[A6],A3       ; |413| 
           MV      .L1X    B4,A5

           ADDAW   .D1     A5,A4,A4          ; |413| 
||         MVK     .S1     100,A31           ; |413| 

           LDW     .D1T1   *+A4[A31],A4      ; |413| 
           MVKL    .S2     0x1a0000c,B4      ; |413| 
           LDW     .D1T1   *+A3(8),A3        ; |413| 
           NOP             1
           MVKH    .S2     0x1a0000c,B4      ; |413| 
           EXTU    .S1     A4,16,16,A4       ; |413| 
           ADD     .L1X    B4,A4,A4          ; |413| 
           STW     .D1T1   A3,*A4            ; |413| 
           NOP             2
	.dwpsn	"vportcap.c",415,13
;----------------------------------------------------------------------
; 415 | EDMA_RSETH(chan->hRld[offset + 1], DST,                                
; 416 |     chan->nextViop->frame.iFrm.y2);                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |415| 
           LDW     .D2T2   *+SP(28),B4       ; |415| 
           MVK     .S1     132,A5            ; |415| 
           MVK     .S1     100,A30           ; |415| 
           MVKL    .S2     0x1a0000c,B31     ; |415| 
           LDW     .D1T1   *+A3[A5],A5       ; |415| 

           ADD     .L1X    1,B4,A3           ; |415| 
||         MV      .S1     A3,A4             ; |415| 

           ADDAW   .D1     A4,A3,A3          ; |415| 
           LDW     .D1T1   *+A3[A30],A4      ; |415| 
           MVKH    .S2     0x1a0000c,B31     ; |415| 
           LDW     .D1T1   *+A5(20),A3       ; |415| 
           NOP             2
           EXTU    .S1     A4,16,16,A4       ; |415| 
           ADD     .L1X    B31,A4,A4         ; |415| 
           STW     .D1T1   A3,*A4            ; |415| 
           NOP             2
	.dwpsn	"vportcap.c",417,13
;----------------------------------------------------------------------
; 417 | EDMA_RSETH(chan->hRld[4 + offset], DST,                                
; 418 |     chan->nextViop->frame.iFrm.cb1);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |417| 
           LDW     .D2T2   *+SP(28),B4       ; |417| 
           MVK     .S1     132,A5            ; |417| 
           MVK     .S1     100,A29           ; |417| 
           MVKL    .S2     0x1a0000c,B30     ; |417| 
           LDW     .D1T1   *+A3[A5],A5       ; |417| 

           ADD     .L1X    4,B4,A3           ; |417| 
||         MV      .S1     A3,A4             ; |417| 

           ADDAW   .D1     A4,A3,A3          ; |417| 
           LDW     .D1T1   *+A3[A29],A4      ; |417| 
           MVKH    .S2     0x1a0000c,B30     ; |417| 
           LDW     .D1T1   *+A5(12),A3       ; |417| 
           NOP             2
           EXTU    .S1     A4,16,16,A4       ; |417| 
           ADD     .L1X    B30,A4,A4         ; |417| 
           STW     .D1T1   A3,*A4            ; |417| 
           NOP             2
	.dwpsn	"vportcap.c",419,13
;----------------------------------------------------------------------
; 419 | EDMA_RSETH(chan->hRld[5 + offset], DST,                                
; 420 |     chan->nextViop->frame.iFrm.cb2);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |419| 
           LDW     .D2T2   *+SP(28),B4       ; |419| 
           MVK     .S1     132,A5            ; |419| 
           MVK     .S1     100,A28           ; |419| 
           MVKL    .S2     0x1a0000c,B29     ; |419| 
           LDW     .D1T1   *+A3[A5],A5       ; |419| 

           ADD     .L1X    5,B4,A3           ; |419| 
||         MV      .S1     A3,A4             ; |419| 

           ADDAW   .D1     A4,A3,A3          ; |419| 
           LDW     .D1T1   *+A3[A28],A3      ; |419| 
           MVKH    .S2     0x1a0000c,B29     ; |419| 
           LDW     .D1T1   *+A5(24),A4       ; |419| 
           NOP             2
           EXTU    .S1     A3,16,16,A3       ; |419| 
           ADD     .L1X    B29,A3,A3         ; |419| 
           STW     .D1T1   A4,*A3            ; |419| 
           NOP             2
	.dwpsn	"vportcap.c",421,13
;----------------------------------------------------------------------
; 421 | EDMA_RSETH(chan->hRld[8 + offset], DST,                                
; 422 |     chan->nextViop->frame.iFrm.cr1);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A5       ; |421| 
           LDW     .D2T2   *+SP(28),B4       ; |421| 
           MVK     .S1     132,A3            ; |421| 
           MVK     .S1     100,A27           ; |421| 
           MVKL    .S2     0x1a0000c,B28     ; |421| 
           LDW     .D1T1   *+A5[A3],A3       ; |421| 

           ADD     .L1X    8,B4,A5           ; |421| 
||         MV      .S1     A5,A4             ; |421| 

           ADDAW   .D1     A4,A5,A4          ; |421| 
           LDW     .D1T1   *+A4[A27],A4      ; |421| 
           MVKH    .S2     0x1a0000c,B28     ; |421| 
           LDW     .D1T1   *+A3(16),A3       ; |421| 
           NOP             2
           EXTU    .S1     A4,16,16,A4       ; |421| 
           ADD     .L1X    B28,A4,A4         ; |421| 
           STW     .D1T1   A3,*A4            ; |421| 
           NOP             2
	.dwpsn	"vportcap.c",423,13
;----------------------------------------------------------------------
; 423 | EDMA_RSETH(chan->hRld[9 + offset], DST,                                
; 424 |     chan->nextViop->frame.iFrm.cr2);                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |423| 
           LDW     .D2T2   *+SP(28),B5       ; |423| 
           MVK     .S2     132,B7            ; |423| 
           MVK     .S2     100,B27           ; |423| 
           MVKL    .S1     0x1a0000c,A3      ; |423| 

           LDW     .D2T2   *+B4[B7],B4       ; |423| 
||         MV      .L2     B4,B6             ; |423| 

           ADD     .L2     9,B5,B5           ; |423| 
           ADDAW   .D2     B6,B5,B5          ; |423| 
           LDW     .D2T2   *+B5[B27],B5      ; |423| 
           MVKH    .S1     0x1a0000c,A3      ; |423| 
           LDW     .D2T2   *+B4(28),B4       ; |423| 
           NOP             2
           EXTU    .S2     B5,16,16,B5       ; |423| 
           ADD     .L2X    A3,B5,B5          ; |423| 
           STW     .D2T2   B4,*B5            ; |423| 
           NOP             2
	.dwpsn	"vportcap.c",425,9
;----------------------------------------------------------------------
; 425 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L62,5             ; |425| 
           ; BRANCH OCCURS {L62}             ; |425| 
;** --------------------------------------------------------------------------*
L61:    
	.dwpsn	"vportcap.c",426,13
;----------------------------------------------------------------------
; 426 | EDMA_RSETH(chan->hRld[offset], DST,                                    
; 427 |     chan->nextViop->frame.iFrm.y1);                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A4       ; |426| 
           MV      .L1X    B4,A3
           MVK     .S1     132,A6            ; |426| 
           LDW     .D1T1   *+A3[A6],A3       ; |426| 
           MV      .L1X    B4,A5

           ADDAW   .D1     A5,A4,A4          ; |426| 
||         MVK     .S1     100,A31           ; |426| 

           LDW     .D1T1   *+A4[A31],A4      ; |426| 
           MVKL    .S2     0x1a0000c,B4      ; |426| 
           LDW     .D1T1   *+A3(8),A3        ; |426| 
           NOP             1
           MVKH    .S2     0x1a0000c,B4      ; |426| 
           EXTU    .S1     A4,16,16,A4       ; |426| 
           ADD     .L1X    B4,A4,A4          ; |426| 
           STW     .D1T1   A3,*A4            ; |426| 
           NOP             2
	.dwpsn	"vportcap.c",428,13
;----------------------------------------------------------------------
; 428 | EDMA_RSETH(chan->hRld[4 + offset], DST,                                
; 429 |     chan->nextViop->frame.iFrm.cb1);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |428| 
           LDW     .D2T2   *+SP(28),B4       ; |428| 
           MVK     .S1     132,A4            ; |428| 
           MVK     .S1     100,A30           ; |428| 
           MVKL    .S2     0x1a0000c,B31     ; |428| 

           LDW     .D1T1   *+A3[A4],A3       ; |428| 
||         MV      .L1     A3,A5             ; |428| 

           ADD     .L1X    4,B4,A4           ; |428| 
           ADDAW   .D1     A5,A4,A4          ; |428| 
           LDW     .D1T1   *+A4[A30],A4      ; |428| 
           MVKH    .S2     0x1a0000c,B31     ; |428| 
           LDW     .D1T1   *+A3(12),A3       ; |428| 
           NOP             2
           EXTU    .S1     A4,16,16,A4       ; |428| 
           ADD     .L1X    B31,A4,A4         ; |428| 
           STW     .D1T1   A3,*A4            ; |428| 
           NOP             2
	.dwpsn	"vportcap.c",430,13
;----------------------------------------------------------------------
; 430 | EDMA_RSETH(chan->hRld[8 + offset], DST,                                
; 431 |     chan->nextViop->frame.iFrm.cr1);                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |430| 
           LDW     .D2T2   *+SP(28),B7       ; |430| 
           MVK     .S2     132,B4            ; |430| 
           MVK     .S2     100,B30           ; |430| 
           MVKL    .S1     0x1a0000c,A3      ; |430| 
           LDW     .D2T2   *+B5[B4],B6       ; |430| 

           MV      .S2     B5,B8             ; |430| 
||         ADD     .L2     8,B7,B4           ; |430| 

           ADDAW   .D2     B8,B4,B5          ; |430| 
           LDW     .D2T2   *+B5[B30],B5      ; |430| 
           MVKH    .S1     0x1a0000c,A3      ; |430| 
           LDW     .D2T2   *+B6(16),B4       ; |430| 
           NOP             2
           EXTU    .S2     B5,16,16,B5       ; |430| 
           ADD     .L2X    A3,B5,B5          ; |430| 
           STW     .D2T2   B4,*B5            ; |430| 
;** --------------------------------------------------------------------------*
L62:    
	.dwpsn	"vportcap.c",435,5
;----------------------------------------------------------------------
; 435 | if(vpis & 0x40) {/* short field detected, re-sync */                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(48),B4       ; |435| 
           NOP             4
           EXTU    .S2     B4,25,31,B0       ; |435| 
   [!B0]   BNOP    .S1     L63,5             ; |435| 
           ; BRANCHCC OCCURS {L63}           ; |435| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",436,9
;----------------------------------------------------------------------
; 436 | _covrRecover(chanp);                                                   
;----------------------------------------------------------------------
           CALL    .S1     __covrRecover     ; |436| 
           LDW     .D2T1   *+SP(4),A4        ; |436| 
           ADDKPC  .S2     RL36,B3,3         ; |436| 
RL36:      ; CALL OCCURS {__covrRecover}     ; |436| 
;** --------------------------------------------------------------------------*
L63:    
	.dwpsn	"vportcap.c",439,5
;----------------------------------------------------------------------
; 439 | IRQ_globalRestore(gie);                                                
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_globalRestore,A3 ; |439| 
           MVKH    .S1     _IRQ_globalRestore,A3 ; |439| 
           LDW     .D2T1   *+SP(20),A4       ; |439| 
           CALL    .S2X    A3                ; |439| 
           ADDKPC  .S2     RL37,B3,4         ; |439| 
RL37:      ; CALL OCCURS {_IRQ_globalRestore}  ; |439| 
	.dwpsn	"vportcap.c",440,5
;----------------------------------------------------------------------
; 440 | return retVal;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A4       ; |440| 
;** --------------------------------------------------------------------------*
L64:    
	.dwpsn	"vportcap.c",441,1
           LDW     .D2T2   *++SP(56),B3      ; |441| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |441| 
           ; BRANCH OCCURS {B3}              ; |441| 
	.dwattr DW$151, DW_AT_end_file("vportcap.c")
	.dwattr DW$151, DW_AT_end_line(0x1b9)
	.dwattr DW$151, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$151

	.sect	".text"

DW$168	.dwtag  DW_TAG_subprogram, DW_AT_name("captureEdmaISR"), DW_AT_symbol_name("_captureEdmaISR")
	.dwattr DW$168, DW_AT_low_pc(_captureEdmaISR)
	.dwattr DW$168, DW_AT_high_pc(0x00)
	.dwattr DW$168, DW_AT_begin_file("vportcap.c")
	.dwattr DW$168, DW_AT_begin_line(0x1c0)
	.dwattr DW$168, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap.c",449,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 448 | static void captureEdmaISR(Int tcc)                                    
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: _captureEdmaISR                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 28 Auto + 4 Save = 32 byte                  *
;******************************************************************************
_captureEdmaISR:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |449| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$169, DW_AT_type(*DW$T$22)
	.dwattr DW$169, DW_AT_location[DW_OP_reg4]
DW$170	.dwtag  DW_TAG_variable, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$170, DW_AT_type(*DW$T$22)
	.dwattr DW$170, DW_AT_location[DW_OP_breg31 4]
DW$171	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$171, DW_AT_type(*DW$T$22)
	.dwattr DW$171, DW_AT_location[DW_OP_breg31 8]
DW$172	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$172, DW_AT_type(*DW$T$22)
	.dwattr DW$172, DW_AT_location[DW_OP_breg31 12]
DW$173	.dwtag  DW_TAG_variable, DW_AT_name("offset"), DW_AT_symbol_name("_offset")
	.dwattr DW$173, DW_AT_type(*DW$T$22)
	.dwattr DW$173, DW_AT_location[DW_OP_breg31 16]
DW$174	.dwtag  DW_TAG_variable, DW_AT_name("viop"), DW_AT_symbol_name("_viop")
	.dwattr DW$174, DW_AT_type(*DW$T$83)
	.dwattr DW$174, DW_AT_location[DW_OP_breg31 20]
DW$175	.dwtag  DW_TAG_variable, DW_AT_name("curViop"), DW_AT_symbol_name("_curViop")
	.dwattr DW$175, DW_AT_type(*DW$T$83)
	.dwattr DW$175, DW_AT_location[DW_OP_breg31 24]
;----------------------------------------------------------------------
; 450 | Int i, j;                                                              
; 451 | Int offset;                                                            
; 452 | FVID_Frame *viop, *curViop;                                            
;----------------------------------------------------------------------
           STW     .D2T1   A4,*+SP(4)        ; |449| 
           NOP             2
	.dwpsn	"vportcap.c",455,9
;----------------------------------------------------------------------
; 455 | for(j = 0; j < _VP_PORT_CNT; j ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |455| 
           STW     .D2T2   B4,*+SP(12)       ; |455| 
           NOP             2
	.dwpsn	"vportcap.c",455,16
           CMPLT   .L2     B4,3,B0           ; |455| 
   [!B0]   BNOP    .S1     L86,5             ; |455| 
           ; BRANCHCC OCCURS {L86}           ; |455| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L65
;** --------------------------------------------------------------------------*
L65:    
DW$L$_captureEdmaISR$2$B:
	.dwpsn	"vportcap.c",456,13
;----------------------------------------------------------------------
; 456 | for(i = 0; i < _VPORT_CHAN_CNT; i ++ ){ /* loop through two channels */
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |456| 
           STW     .D2T2   B4,*+SP(8)        ; |456| 
           NOP             2
	.dwpsn	"vportcap.c",456,20
           CMPLT   .L2     B4,2,B0           ; |456| 
   [!B0]   BNOP    .S1     L85,5             ; |456| 
           ; BRANCHCC OCCURS {L85}           ; |456| 
DW$L$_captureEdmaISR$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L66:    
DW$L$_captureEdmaISR$3$B:

DW$176	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$177	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$177, DW_AT_type(*DW$T$149)
	.dwattr DW$177, DW_AT_location[DW_OP_breg31 28]
	.dwpsn	"vportcap.c",457,29
;----------------------------------------------------------------------
; 457 | _VPORT_ChanObj* chan = &portObjs[j].chanObj[i];                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |457| 
           MVK     .S2     1216,B6           ; |457| 
           MVK     .S2     604,B31           ; |457| 
           MVKL    .S1     _portObjs+8,A3    ; |457| 
           MVKH    .S1     _portObjs+8,A3    ; |457| 
           MPYLI   .M2     B6,B5,B7:B6       ; |457| 
           NOP             2
           MPYLI   .M2     B31,B4,B5:B4      ; |457| 
           NOP             1
           ADD     .L1X    A3,B6,A3          ; |457| 
           NOP             1
           ADD     .L2X    B4,A3,B4          ; |457| 
           STW     .D2T2   B4,*+SP(28)       ; |457| 
           NOP             2
	.dwpsn	"vportcap.c",459,13
;----------------------------------------------------------------------
; 459 | if((chan->status & _VPORT_READY)                                       
; 460 |   && (tcc == chan->tcc[0] || tcc == chan->tcc[1])){                    
;----------------------------------------------------------------------
           LDW     .D2T2   *B4,B4            ; |459| 
           NOP             4
           AND     .L2     4,B4,B4           ; |459| 
           CMPEQ   .L2     B4,0,B1           ; |459| 
   [ B1]   BNOP    .S1     L68,4             ; |459| 
           XOR     .L2     1,B1,B0           ; |459| 
           ; BRANCHCC OCCURS {L68}           ; |459| 
DW$L$_captureEdmaISR$3$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$4$B:
           LDW     .D2T2   *+SP(28),B4       ; |459| 
           NOP             2
           LDW     .D2T2   *+SP(4),B5        ; |459| 
           MVK     .S2     112,B6            ; |459| 
           LDW     .D2T2   *+B4[B6],B4       ; |459| 
           NOP             4
           CMPEQ   .L2     B5,B4,B0          ; |459| 
   [ B0]   BNOP    .S1     L67,5             ; |459| 
           ; BRANCHCC OCCURS {L67}           ; |459| 
DW$L$_captureEdmaISR$4$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$5$B:
           LDW     .D2T2   *+SP(28),B4       ; |459| 
           NOP             3
           MVK     .S2     113,B6            ; |459| 
           LDW     .D2T2   *+B4[B6],B4       ; |459| 
           NOP             4
           CMPEQ   .L2     B5,B4,B0          ; |459| 
DW$L$_captureEdmaISR$5$E:
;** --------------------------------------------------------------------------*
L67:    
DW$L$_captureEdmaISR$6$B:
           BNOP    .S1     L69,4             ; |459| 
           MV      .L1X    B0,A0             ; |459| 
           ; BRANCH OCCURS {L69}             ; |459| 
DW$L$_captureEdmaISR$6$E:
;** --------------------------------------------------------------------------*
L68:    
DW$L$_captureEdmaISR$7$B:
           NOP             1
           MV      .L1X    B0,A0             ; |459| 
DW$L$_captureEdmaISR$7$E:
;** --------------------------------------------------------------------------*
L69:    
DW$L$_captureEdmaISR$8$B:
   [!A0]   BNOP    .S1     L84,5             ; |459| 
           ; BRANCHCC OCCURS {L84}           ; |459| 
DW$L$_captureEdmaISR$8$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$9$B:
	.dwpsn	"vportcap.c",462,17
;----------------------------------------------------------------------
; 462 | if(chan->autoSyncEnable) {                                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |462| 
           NOP             4
           ADDK    .S2     576,B4            ; |462| 
           LDHU    .D2T2   *B4,B0            ; |462| 
           NOP             4
   [!B0]   BNOP    .S1     L70,5             ; |462| 
           ; BRANCHCC OCCURS {L70}           ; |462| 
DW$L$_captureEdmaISR$9$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$10$B:
	.dwpsn	"vportcap.c",463,20
;----------------------------------------------------------------------
; 463 | _autoSync(chan);                                                       
;----------------------------------------------------------------------
           CALL    .S1     __autoSync        ; |463| 
           LDW     .D2T1   *+SP(28),A4       ; |463| 
           ADDKPC  .S2     RL38,B3,3         ; |463| 
RL38:      ; CALL OCCURS {__autoSync}        ; |463| 
DW$L$_captureEdmaISR$10$E:
;** --------------------------------------------------------------------------*
L70:    
DW$L$_captureEdmaISR$11$B:
	.dwpsn	"vportcap.c",469,17
;----------------------------------------------------------------------
; 469 | chan->nextEDMARlds = (tcc == chan->tcc[0]) ? 0 : 1;                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |469| 
           NOP             2
           LDW     .D2T2   *+SP(4),B5        ; |469| 
           MVK     .S2     112,B6            ; |469| 
           LDW     .D2T2   *+B4[B6],B4       ; |469| 
           NOP             4
           CMPEQ   .L2     B5,B4,B0          ; |469| 
   [!B0]   BNOP    .S1     L71,5             ; |469| 
           ; BRANCHCC OCCURS {L71}           ; |469| 
DW$L$_captureEdmaISR$11$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$12$B:
           BNOP    .S1     L72,4             ; |469| 
           ZERO    .L1     A3                ; |469| 
           ; BRANCH OCCURS {L72}             ; |469| 
DW$L$_captureEdmaISR$12$E:
;** --------------------------------------------------------------------------*
L71:    
DW$L$_captureEdmaISR$13$B:
           MVK     .L1     0x1,A3            ; |469| 
DW$L$_captureEdmaISR$13$E:
;** --------------------------------------------------------------------------*
L72:    
DW$L$_captureEdmaISR$14$B:
           LDW     .D2T1   *+SP(28),A4       ; |469| 
           NOP             3
           MVK     .S1     142,A5            ; |469| 
           STW     .D1T1   A3,*+A4[A5]       ; |469| 
           NOP             2
	.dwpsn	"vportcap.c",470,17
;----------------------------------------------------------------------
; 470 | offset = chan->nextEDMARlds << 1;                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |470| 
           NOP             3
           MVK     .S2     142,B5            ; |470| 
           LDW     .D2T2   *+B4[B5],B4       ; |470| 
           NOP             4
           ADD     .L2     B4,B4,B4          ; |470| 
           STW     .D2T2   B4,*+SP(16)       ; |470| 
           NOP             2
	.dwpsn	"vportcap.c",474,17
;----------------------------------------------------------------------
; 474 | curViop = chan->curViop;                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |474| 
           NOP             3
           MVK     .S1     131,A4            ; |474| 
           LDW     .D1T1   *+A3[A4],A3       ; |474| 
           NOP             4
           STW     .D2T1   A3,*+SP(24)       ; |474| 
           NOP             2
	.dwpsn	"vportcap.c",475,17
;----------------------------------------------------------------------
; 475 | chan->curViop = chan->nextViop;                                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |475| 
           NOP             1
           MVK     .S1     132,A4            ; |475| 
           LDW     .D2T2   *+SP(28),B4       ; |475| 
           MVK     .S2     131,B5            ; |475| 
           LDW     .D1T1   *+A3[A4],A3       ; |475| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |475| 
           NOP             2
	.dwpsn	"vportcap.c",478,17
;----------------------------------------------------------------------
; 478 | if(curViop != chan->mrViop  && chan->mrViop != INV) {                  
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |478| 
           NOP             2
           MVK     .S1     133,A4            ; |478| 
           LDW     .D2T2   *+SP(24),B4       ; |478| 
           LDW     .D1T1   *+A3[A4],A3       ; |478| 
           NOP             4
           CMPEQ   .L1X    B4,A3,A0          ; |478| 
   [ A0]   BNOP    .S1     L73,3             ; |478| 
           ZERO    .L2     B4                ; |478| 
           NOP             1
           ; BRANCHCC OCCURS {L73}           ; |478| 
DW$L$_captureEdmaISR$14$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$15$B:
           MVK     .L2     0x1,B4            ; |478| 
           NOP             1
DW$L$_captureEdmaISR$15$E:
;** --------------------------------------------------------------------------*
L73:    
DW$L$_captureEdmaISR$16$B:
           MV      .L1X    B4,A0             ; |478| 
   [!A0]   BNOP    .S1     L75,5             ; |478| 
           ; BRANCHCC OCCURS {L75}           ; |478| 
DW$L$_captureEdmaISR$16$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$17$B:
           LDW     .D2T2   *+SP(28),B4       ; |478| 
           NOP             2
           MVK     .S2     133,B5            ; |478| 
           MVK     .L2     -1,B31            ; |478| 
           LDW     .D2T2   *+B4[B5],B4       ; |478| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |478| 
   [ B0]   BNOP    .S1     L74,3             ; |478| 
           ZERO    .L2     B4                ; |478| 
           NOP             1
           ; BRANCHCC OCCURS {L74}           ; |478| 
DW$L$_captureEdmaISR$17$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$18$B:
           MVK     .L2     0x1,B4            ; |478| 
           NOP             1
DW$L$_captureEdmaISR$18$E:
;** --------------------------------------------------------------------------*
L74:    
DW$L$_captureEdmaISR$19$B:
           MV      .L1X    B4,A0             ; |478| 
DW$L$_captureEdmaISR$19$E:
;** --------------------------------------------------------------------------*
L75:    
DW$L$_captureEdmaISR$20$B:
   [!A0]   BNOP    .S1     L76,5             ; |478| 
           ; BRANCHCC OCCURS {L76}           ; |478| 
DW$L$_captureEdmaISR$20$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$21$B:
	.dwpsn	"vportcap.c",479,23
;----------------------------------------------------------------------
; 479 | QUE_enqueue(&chan->qIn, chan->mrViop);                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |479| 
           NOP             1
           MVK     .S2     133,B6            ; |479| 
           MVK     .S1     364,A3            ; |479| 
           CALL    .S2     _QUE_put          ; |479| 

           LDW     .D2T2   *+B4[B6],B4       ; |479| 
||         ADD     .L1X    A3,B4,A4          ; |479| 

           ADDKPC  .S2     RL39,B3,3         ; |479| 
RL39:      ; CALL OCCURS {_QUE_put}          ; |479| 
DW$L$_captureEdmaISR$21$E:
;** --------------------------------------------------------------------------*
L76:    
DW$L$_captureEdmaISR$22$B:
	.dwpsn	"vportcap.c",481,17
;----------------------------------------------------------------------
; 481 | chan->mrViop = curViop;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B5       ; |481| 
           LDW     .D2T2   *+SP(24),B4       ; |481| 
           NOP             3
           MVK     .S2     133,B6            ; |481| 
           STW     .D2T2   B4,*+B5[B6]       ; |481| 
           NOP             2
	.dwpsn	"vportcap.c",483,17
;----------------------------------------------------------------------
; 483 | if((viop = (FVID_Frame *)QUE_dequeue(&chan->qIn))                      
; 484 |     !=(FVID_Frame *)&chan->qIn) {                                      
;----------------------------------------------------------------------

           CALL    .S1     _QUE_get          ; |483| 
||         LDW     .D2T2   *+SP(28),B4       ; |483| 

           MVK     .S1     364,A3            ; |483| 
           ADDKPC  .S2     RL40,B3,2         ; |483| 
           ADD     .L1X    A3,B4,A4          ; |483| 
RL40:      ; CALL OCCURS {_QUE_get}          ; |483| 
           LDW     .D2T2   *+SP(28),B4       ; |483| 
           NOP             3
           STW     .D2T1   A4,*+SP(20)       ; |483| 
           ADDK    .S2     364,B4            ; |483| 
           NOP             1
           CMPEQ   .L1X    A4,B4,A0          ; |483| 
   [ A0]   BNOP    .S1     L77,5             ; |483| 
           ; BRANCHCC OCCURS {L77}           ; |483| 
DW$L$_captureEdmaISR$22$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$23$B:
	.dwpsn	"vportcap.c",486,21
;----------------------------------------------------------------------
; 486 | chan->nextViop = viop;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |486| 
           NOP             2
           MV      .L2X    A4,B5             ; |486| 
           MVK     .S2     132,B6            ; |486| 
           STW     .D2T2   B5,*+B4[B6]       ; |486| 
           NOP             2
	.dwpsn	"vportcap.c",487,17
;----------------------------------------------------------------------
; 487 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L79,5             ; |487| 
           ; BRANCH OCCURS {L79}             ; |487| 
DW$L$_captureEdmaISR$23$E:
;** --------------------------------------------------------------------------*
L77:    
DW$L$_captureEdmaISR$24$B:
	.dwpsn	"vportcap.c",488,21
;----------------------------------------------------------------------
; 488 | if(chan->packetIOM == INV) {                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |488| 
           NOP             2
           MVK     .S2     137,B5            ; |488| 
           MVK     .L2     -1,B31            ; |488| 
           LDW     .D2T2   *+B4[B5],B4       ; |488| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |488| 
   [!B0]   BNOP    .S1     L78,5             ; |488| 
           ; BRANCHCC OCCURS {L78}           ; |488| 
DW$L$_captureEdmaISR$24$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$25$B:
	.dwpsn	"vportcap.c",492,25
;----------------------------------------------------------------------
; 492 | chan->nextViop = curViop;                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B5       ; |492| 
           LDW     .D2T2   *+SP(24),B4       ; |492| 
           NOP             3
           MVK     .S2     132,B6            ; |492| 
           STW     .D2T2   B4,*+B5[B6]       ; |492| 
DW$L$_captureEdmaISR$25$E:
;** --------------------------------------------------------------------------*
L78:    
DW$L$_captureEdmaISR$26$B:
	.dwpsn	"vportcap.c",494,21
;----------------------------------------------------------------------
; 494 | chan->queEmpty = TRUE;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |494| 
           NOP             1
           MVK     .L2     1,B5              ; |494| 
           NOP             2
           ADDK    .S2     476,B4            ; |494| 
           STH     .D2T2   B5,*B4            ; |494| 
DW$L$_captureEdmaISR$26$E:
;** --------------------------------------------------------------------------*
L79:    
DW$L$_captureEdmaISR$27$B:
	.dwpsn	"vportcap.c",498,17
;----------------------------------------------------------------------
; 498 | if(curViop != chan->curViop) {                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |498| 
           NOP             2
           LDW     .D2T2   *+SP(24),B5       ; |498| 
           MVK     .S2     131,B6            ; |498| 
           LDW     .D2T2   *+B4[B6],B4       ; |498| 
           NOP             4
           CMPEQ   .L2     B5,B4,B0          ; |498| 
   [ B0]   BNOP    .S1     L81,5             ; |498| 
           ; BRANCHCC OCCURS {L81}           ; |498| 
DW$L$_captureEdmaISR$27$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$28$B:
	.dwpsn	"vportcap.c",499,21
;----------------------------------------------------------------------
; 499 | if(chan->packetIOM != INV) {                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |499| 
           NOP             2
           MVK     .S2     137,B5            ; |499| 
           MVK     .L2     -1,B31            ; |499| 
           LDW     .D2T2   *+B4[B5],B4       ; |499| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |499| 
   [ B0]   BNOP    .S1     L80,5             ; |499| 
           ; BRANCHCC OCCURS {L80}           ; |499| 
DW$L$_captureEdmaISR$28$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$29$B:
	.dwpsn	"vportcap.c",501,26
;----------------------------------------------------------------------
; 501 | *(void **)chan->packetIOM->addr = curViop;                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |501| 
           NOP             2
           MVK     .S2     137,B5            ; |501| 
           LDW     .D2T2   *+SP(24),B31      ; |501| 
           LDW     .D2T2   *+B4[B5],B5       ; |501| 
           NOP             4
           LDW     .D2T2   *+B5(8),B5        ; |501| 
           NOP             4
           STW     .D2T2   B31,*B5           ; |501| 
           NOP             2
	.dwpsn	"vportcap.c",502,26
;----------------------------------------------------------------------
; 502 | chan->packetIOM->size = sizeof(FVID_Frame);                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |502| 
           NOP             2
           MVK     .S1     137,A4            ; |502| 
           MVK     .S2     32,B4             ; |502| 
           LDW     .D1T1   *+A3[A4],A3       ; |502| 
           NOP             4
           STW     .D1T2   B4,*+A3(12)       ; |502| 
           NOP             2
	.dwpsn	"vportcap.c",503,26
;----------------------------------------------------------------------
; 503 | chan->packetIOM->status = IOM_COMPLETED;                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |503| 
           NOP             3
           ZERO    .L1     A31               ; |503| 
           LDW     .D1T1   *+A3[A4],A3       ; |503| 
           NOP             4
           STW     .D1T1   A31,*+A3(28)      ; |503| 
           NOP             2
	.dwpsn	"vportcap.c",504,26
;----------------------------------------------------------------------
; 504 | chan->cbFxn((Ptr)chan->cbArg, chan->packetIOM);                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |504| 
           NOP             2
           MVK     .S1     116,A5            ; |504| 
           MVK     .S2     137,B5            ; |504| 

           LDW     .D1T1   *+A3[A5],A3       ; |504| 
||         MV      .L2X    A3,B4             ; |504| 
||         MV      .L1     A3,A4             ; |504| 

           NOP             1
           MVK     .S1     117,A5            ; |504| 
           LDW     .D2T2   *+B4[B5],B4       ; |504| 
           LDW     .D1T1   *+A4[A5],A4       ; |504| 
           CALL    .S2X    A3                ; |504| 
           ADDKPC  .S2     RL41,B3,4         ; |504| 
RL41:      ; CALL OCCURS {A3}                ; |504| 
	.dwpsn	"vportcap.c",505,26
;----------------------------------------------------------------------
; 505 | chan->packetIOM = INV;                                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |505| 
           NOP             2
           MVK     .L2     -1,B4             ; |505| 
           MVK     .S1     137,A4            ; |505| 
           STW     .D1T2   B4,*+A3[A4]       ; |505| 
           NOP             2
	.dwpsn	"vportcap.c",506,26
;----------------------------------------------------------------------
; 506 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |506| 
           NOP             2
           MVK     .L1     -1,A4             ; |506| 
           MVK     .S1     133,A5            ; |506| 
           STW     .D1T1   A4,*+A3[A5]       ; |506| 
           NOP             2
	.dwpsn	"vportcap.c",507,21
;----------------------------------------------------------------------
; 507 | }else if(chan->queEmpty){                                              
;----------------------------------------------------------------------
           BNOP    .S1     L82,5             ; |507| 
           ; BRANCH OCCURS {L82}             ; |507| 
DW$L$_captureEdmaISR$29$E:
;** --------------------------------------------------------------------------*
L80:    
DW$L$_captureEdmaISR$30$B:
	.dwpsn	"vportcap.c",507,27
           LDW     .D2T2   *+SP(28),B4       ; |507| 
           NOP             4
           ADDK    .S2     476,B4            ; |507| 
           LDHU    .D2T2   *B4,B0            ; |507| 
           NOP             4
   [!B0]   BNOP    .S1     L82,5             ; |507| 
           ; BRANCHCC OCCURS {L82}           ; |507| 
DW$L$_captureEdmaISR$30$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$31$B:
	.dwpsn	"vportcap.c",508,25
;----------------------------------------------------------------------
; 508 | chan->nextViop = chan->mrViop;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |508| 
           NOP             2
           MVK     .S2     133,B6            ; |508| 
           MVK     .S2     132,B31           ; |508| 

           LDW     .D2T2   *+B4[B6],B4       ; |508| 
||         MV      .L2     B4,B5             ; |508| 

           NOP             4
           STW     .D2T2   B4,*+B5[B31]      ; |508| 
           NOP             2
	.dwpsn	"vportcap.c",510,17
;----------------------------------------------------------------------
; 510 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L82,5             ; |510| 
           ; BRANCH OCCURS {L82}             ; |510| 
DW$L$_captureEdmaISR$31$E:
;** --------------------------------------------------------------------------*
L81:    
DW$L$_captureEdmaISR$32$B:
	.dwpsn	"vportcap.c",511,21
;----------------------------------------------------------------------
; 511 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B5       ; |511| 
           MVK     .L2     -1,B4             ; |511| 
           NOP             2
           MVK     .S2     133,B6            ; |511| 
           STW     .D2T2   B4,*+B5[B6]       ; |511| 
DW$L$_captureEdmaISR$32$E:
;** --------------------------------------------------------------------------*
L82:    
DW$L$_captureEdmaISR$33$B:
	.dwpsn	"vportcap.c",514,17
;----------------------------------------------------------------------
; 514 | if(chan->interlaced){                                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |514| 
           NOP             3
           MVK     .S2     231,B5            ; |514| 
           LDHU    .D2T2   *+B4[B5],B0       ; |514| 
           NOP             4
   [!B0]   BNOP    .S1     L83,5             ; |514| 
           ; BRANCHCC OCCURS {L83}           ; |514| 
DW$L$_captureEdmaISR$33$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$34$B:
	.dwpsn	"vportcap.c",515,21
;----------------------------------------------------------------------
; 515 | EDMA_RSETH(chan->hRld[offset], DST,                                    
; 516 |     chan->nextViop->frame.iFrm.y1);                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A5       ; |515| 
           MV      .L1X    B4,A3
           MVK     .S1     132,A4            ; |515| 
           LDW     .D1T1   *+A3[A4],A3       ; |515| 
           MV      .L1X    B4,A6

           ADDAW   .D1     A6,A5,A5          ; |515| 
||         MVK     .S1     100,A31           ; |515| 

           LDW     .D1T1   *+A5[A31],A4      ; |515| 
           MVKL    .S2     0x1a0000c,B4      ; |515| 
           LDW     .D1T1   *+A3(8),A3        ; |515| 
           NOP             1
           MVKH    .S2     0x1a0000c,B4      ; |515| 
           EXTU    .S1     A4,16,16,A4       ; |515| 
           ADD     .L1X    B4,A4,A4          ; |515| 
           STW     .D1T1   A3,*A4            ; |515| 
           NOP             2
	.dwpsn	"vportcap.c",517,21
;----------------------------------------------------------------------
; 517 | EDMA_RSETH(chan->hRld[offset + 1], DST,                                
; 518 |     chan->nextViop->frame.iFrm.y2);                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |517| 
           LDW     .D2T2   *+SP(16),B5       ; |517| 
           MVK     .S2     132,B7            ; |517| 
           MVK     .S2     100,B31           ; |517| 
           MVKL    .S1     0x1a0000c,A3      ; |517| 

           LDW     .D2T2   *+B4[B7],B4       ; |517| 
||         MV      .L2     B4,B6             ; |517| 

           ADD     .L2     1,B5,B5           ; |517| 
           ADDAW   .D2     B6,B5,B5          ; |517| 
           LDW     .D2T2   *+B5[B31],B5      ; |517| 
           MVKH    .S1     0x1a0000c,A3      ; |517| 
           LDW     .D2T2   *+B4(20),B4       ; |517| 
           NOP             2
           EXTU    .S2     B5,16,16,B5       ; |517| 
           ADD     .L2X    A3,B5,B5          ; |517| 
           STW     .D2T2   B4,*B5            ; |517| 
           NOP             2
	.dwpsn	"vportcap.c",519,21
;----------------------------------------------------------------------
; 519 | if(!(chan->mode & _VPORT_MASK_RAW)){                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |519| 
           NOP             3
           MVK     .S1     134,A4            ; |519| 
           LDW     .D1T1   *+A3[A4],A3       ; |519| 
           NOP             4
           AND     .L1     2,A3,A0           ; |519| 
   [ A0]   BNOP    .S1     L84,5             ; |519| 
           ; BRANCHCC OCCURS {L84}           ; |519| 
DW$L$_captureEdmaISR$34$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$35$B:
	.dwpsn	"vportcap.c",520,25
;----------------------------------------------------------------------
; 520 | EDMA_RSETH(chan->hRld[4 + offset], DST,                                
; 521 |     chan->nextViop->frame.iFrm.cb1);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |520| 
           LDW     .D2T2   *+SP(16),B4       ; |520| 
           MVK     .S1     132,A5            ; |520| 
           MVK     .S1     100,A31           ; |520| 
           MVKL    .S2     0x1a0000c,B31     ; |520| 
           LDW     .D1T1   *+A3[A5],A5       ; |520| 

           ADD     .L1X    4,B4,A3           ; |520| 
||         MV      .S1     A3,A4             ; |520| 

           ADDAW   .D1     A4,A3,A3          ; |520| 
           LDW     .D1T1   *+A3[A31],A4      ; |520| 
           MVKH    .S2     0x1a0000c,B31     ; |520| 
           LDW     .D1T1   *+A5(12),A3       ; |520| 
           NOP             2
           EXTU    .S1     A4,16,16,A4       ; |520| 
           ADD     .L1X    B31,A4,A4         ; |520| 
           STW     .D1T1   A3,*A4            ; |520| 
           NOP             2
	.dwpsn	"vportcap.c",522,22
;----------------------------------------------------------------------
; 522 | EDMA_RSETH(chan->hRld[5 + offset], DST,                                
; 523 |     chan->nextViop->frame.iFrm.cb2);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |522| 
           LDW     .D2T2   *+SP(16),B4       ; |522| 
           MVK     .S1     132,A5            ; |522| 
           MVK     .S1     100,A30           ; |522| 
           MVKL    .S2     0x1a0000c,B30     ; |522| 
           LDW     .D1T1   *+A3[A5],A5       ; |522| 

           ADD     .L1X    5,B4,A3           ; |522| 
||         MV      .S1     A3,A4             ; |522| 

           ADDAW   .D1     A4,A3,A3          ; |522| 
           LDW     .D1T1   *+A3[A30],A3      ; |522| 
           MVKH    .S2     0x1a0000c,B30     ; |522| 
           LDW     .D1T1   *+A5(24),A4       ; |522| 
           NOP             2
           EXTU    .S1     A3,16,16,A3       ; |522| 
           ADD     .L1X    B30,A3,A3         ; |522| 
           STW     .D1T1   A4,*A3            ; |522| 
           NOP             2
	.dwpsn	"vportcap.c",524,22
;----------------------------------------------------------------------
; 524 | EDMA_RSETH(chan->hRld[8 + offset], DST,                                
; 525 |     chan->nextViop->frame.iFrm.cr1);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |524| 
           LDW     .D2T2   *+SP(16),B4       ; |524| 
           MVK     .S1     132,A4            ; |524| 
           MVK     .S1     100,A29           ; |524| 
           MVKL    .S2     0x1a0000c,B29     ; |524| 
           LDW     .D1T1   *+A3[A4],A4       ; |524| 

           ADD     .L1X    8,B4,A3           ; |524| 
||         MV      .S1     A3,A5             ; |524| 

           ADDAW   .D1     A5,A3,A3          ; |524| 
           LDW     .D1T1   *+A3[A29],A3      ; |524| 
           MVKH    .S2     0x1a0000c,B29     ; |524| 
           LDW     .D1T1   *+A4(16),A4       ; |524| 
           NOP             2
           EXTU    .S1     A3,16,16,A3       ; |524| 
           ADD     .L1X    B29,A3,A3         ; |524| 
           STW     .D1T1   A4,*A3            ; |524| 
           NOP             2
	.dwpsn	"vportcap.c",526,22
;----------------------------------------------------------------------
; 526 | EDMA_RSETH(chan->hRld[9 + offset], DST,                                
; 527 |     chan->nextViop->frame.iFrm.cr2);                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |526| 
           LDW     .D2T2   *+SP(16),B5       ; |526| 
           NOP             2
           MVK     .S2     100,B28           ; |526| 

           LDW     .D2T2   *+B4[B7],B4       ; |526| 
||         MV      .L2     B4,B6             ; |526| 

           ADD     .L2     9,B5,B5           ; |526| 
           ADDAW   .D2     B6,B5,B5          ; |526| 
           LDW     .D2T2   *+B5[B28],B5      ; |526| 
           MVKL    .S1     0x1a0000c,A3      ; |526| 
           LDW     .D2T2   *+B4(28),B4       ; |526| 
           NOP             1
           MVKH    .S1     0x1a0000c,A3      ; |526| 
           EXTU    .S2     B5,16,16,B5       ; |526| 
           ADD     .L2X    A3,B5,B5          ; |526| 
           STW     .D2T2   B4,*B5            ; |526| 
           NOP             2
	.dwpsn	"vportcap.c",529,17
;----------------------------------------------------------------------
; 529 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L84,5             ; |529| 
           ; BRANCH OCCURS {L84}             ; |529| 
DW$L$_captureEdmaISR$35$E:
;** --------------------------------------------------------------------------*
L83:    
DW$L$_captureEdmaISR$36$B:
	.dwpsn	"vportcap.c",530,21
;----------------------------------------------------------------------
; 530 | EDMA_RSETH(chan->hRld[offset], DST,                                    
; 531 |     chan->nextViop->frame.iFrm.y1);                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |530| 
           MVK     .S2     132,B5            ; |530| 
           MV      .L1X    B4,A4
           LDW     .D2T2   *+B4[B5],B4       ; |530| 
           MVK     .S1     100,A31           ; |530| 
           ADDAW   .D1     A4,A3,A3          ; |530| 
           LDW     .D1T1   *+A3[A31],A4      ; |530| 
           MVKL    .S1     0x1a0000c,A30     ; |530| 
           LDW     .D2T2   *+B4(8),B4        ; |530| 
           NOP             1
           MVKH    .S1     0x1a0000c,A30     ; |530| 
           EXTU    .S1     A4,16,16,A4       ; |530| 
           ADD     .L1     A30,A4,A3         ; |530| 
           STW     .D1T2   B4,*A3            ; |530| 
           NOP             2
	.dwpsn	"vportcap.c",532,21
;----------------------------------------------------------------------
; 532 | if(!(chan->mode & _VPORT_MASK_RAW)){                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |532| 
           NOP             3
           MVK     .S1     134,A4            ; |532| 
           LDW     .D1T1   *+A3[A4],A3       ; |532| 
           NOP             4
           AND     .L1     2,A3,A0           ; |532| 
   [ A0]   BNOP    .S1     L84,5             ; |532| 
           ; BRANCHCC OCCURS {L84}           ; |532| 
DW$L$_captureEdmaISR$36$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$37$B:
	.dwpsn	"vportcap.c",533,22
;----------------------------------------------------------------------
; 533 | EDMA_RSETH(chan->hRld[offset + 4], DST,                                
; 534 |     chan->nextViop->frame.iFrm.cb1);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |533| 
           LDW     .D2T2   *+SP(16),B4       ; |533| 
           MVK     .S1     132,A4            ; |533| 
           MVK     .S1     100,A31           ; |533| 
           MVKL    .S2     0x1a0000c,B31     ; |533| 

           LDW     .D1T1   *+A3[A4],A3       ; |533| 
||         MV      .L1     A3,A5             ; |533| 

           ADD     .L1X    4,B4,A4           ; |533| 
           ADDAW   .D1     A5,A4,A4          ; |533| 
           LDW     .D1T1   *+A4[A31],A4      ; |533| 
           MVKH    .S2     0x1a0000c,B31     ; |533| 
           LDW     .D1T1   *+A3(12),A3       ; |533| 
           NOP             2
           EXTU    .S1     A4,16,16,A4       ; |533| 
           ADD     .L1X    B31,A4,A4         ; |533| 
           STW     .D1T1   A3,*A4            ; |533| 
           NOP             2
	.dwpsn	"vportcap.c",535,22
;----------------------------------------------------------------------
; 535 | EDMA_RSETH(chan->hRld[offset + 8], DST,                                
; 536 |     chan->nextViop->frame.iFrm.cr1);                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B5       ; |535| 
           LDW     .D2T2   *+SP(16),B6       ; |535| 
           MVK     .S2     132,B4            ; |535| 
           MVK     .S2     100,B30           ; |535| 
           MVKL    .S1     0x1a0000c,A3      ; |535| 
           LDW     .D2T2   *+B5[B4],B4       ; |535| 

           ADD     .L2     8,B6,B5           ; |535| 
||         MV      .S2     B5,B7             ; |535| 

           ADDAW   .D2     B7,B5,B5          ; |535| 
           LDW     .D2T2   *+B5[B30],B5      ; |535| 
           MVKH    .S1     0x1a0000c,A3      ; |535| 
           LDW     .D2T2   *+B4(16),B4       ; |535| 
           NOP             2
           EXTU    .S2     B5,16,16,B5       ; |535| 
           ADD     .L2X    A3,B5,B5          ; |535| 
           STW     .D2T2   B4,*B5            ; |535| 
DW$L$_captureEdmaISR$37$E:
;** --------------------------------------------------------------------------*
L84:    
DW$L$_captureEdmaISR$38$B:
	.dwendtag DW$176

	.dwpsn	"vportcap.c",456,41
           LDW     .D2T2   *+SP(8),B4        ; |456| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |456| 
           STW     .D2T2   B4,*+SP(8)        ; |456| 
           NOP             2
	.dwpsn	"vportcap.c",456,20
           CMPLT   .L2     B4,2,B0           ; |456| 
   [ B0]   BNOP    .S1     L66,5             ; |456| 
           ; BRANCHCC OCCURS {L66}           ; |456| 
DW$L$_captureEdmaISR$38$E:
;** --------------------------------------------------------------------------*
L85:    
DW$L$_captureEdmaISR$39$B:
	.dwpsn	"vportcap.c",455,34
           LDW     .D2T2   *+SP(12),B4       ; |455| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |455| 
           STW     .D2T2   B4,*+SP(12)       ; |455| 
           NOP             2
	.dwpsn	"vportcap.c",455,16
           CMPLT   .L2     B4,3,B0           ; |455| 
   [ B0]   BNOP    .S1     L65,5             ; |455| 
           ; BRANCHCC OCCURS {L65}           ; |455| 
DW$L$_captureEdmaISR$39$E:
;** --------------------------------------------------------------------------*
L86:    
	.dwpsn	"vportcap.c",544,1
           LDW     .D2T2   *++SP(32),B3      ; |544| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |544| 
           ; BRANCH OCCURS {B3}              ; |544| 

DW$178	.dwtag  DW_TAG_loop
	.dwattr DW$178, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L65:1:1301983882")
	.dwattr DW$178, DW_AT_begin_file("vportcap.c")
	.dwattr DW$178, DW_AT_begin_line(0x1c7)
	.dwattr DW$178, DW_AT_end_line(0x21f)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$_captureEdmaISR$2$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$_captureEdmaISR$2$E)
DW$180	.dwtag  DW_TAG_loop_range
	.dwattr DW$180, DW_AT_low_pc(DW$L$_captureEdmaISR$39$B)
	.dwattr DW$180, DW_AT_high_pc(DW$L$_captureEdmaISR$39$E)

DW$181	.dwtag  DW_TAG_loop
	.dwattr DW$181, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L66:2:1301983882")
	.dwattr DW$181, DW_AT_begin_file("vportcap.c")
	.dwattr DW$181, DW_AT_begin_line(0x1c8)
	.dwattr DW$181, DW_AT_end_line(0x21e)
DW$182	.dwtag  DW_TAG_loop_range
	.dwattr DW$182, DW_AT_low_pc(DW$L$_captureEdmaISR$3$B)
	.dwattr DW$182, DW_AT_high_pc(DW$L$_captureEdmaISR$3$E)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$_captureEdmaISR$24$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$_captureEdmaISR$24$E)
DW$184	.dwtag  DW_TAG_loop_range
	.dwattr DW$184, DW_AT_low_pc(DW$L$_captureEdmaISR$25$B)
	.dwattr DW$184, DW_AT_high_pc(DW$L$_captureEdmaISR$25$E)
DW$185	.dwtag  DW_TAG_loop_range
	.dwattr DW$185, DW_AT_low_pc(DW$L$_captureEdmaISR$17$B)
	.dwattr DW$185, DW_AT_high_pc(DW$L$_captureEdmaISR$17$E)
DW$186	.dwtag  DW_TAG_loop_range
	.dwattr DW$186, DW_AT_low_pc(DW$L$_captureEdmaISR$18$B)
	.dwattr DW$186, DW_AT_high_pc(DW$L$_captureEdmaISR$18$E)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$_captureEdmaISR$9$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$_captureEdmaISR$9$E)
DW$188	.dwtag  DW_TAG_loop_range
	.dwattr DW$188, DW_AT_low_pc(DW$L$_captureEdmaISR$10$B)
	.dwattr DW$188, DW_AT_high_pc(DW$L$_captureEdmaISR$10$E)
DW$189	.dwtag  DW_TAG_loop_range
	.dwattr DW$189, DW_AT_low_pc(DW$L$_captureEdmaISR$11$B)
	.dwattr DW$189, DW_AT_high_pc(DW$L$_captureEdmaISR$11$E)
DW$190	.dwtag  DW_TAG_loop_range
	.dwattr DW$190, DW_AT_low_pc(DW$L$_captureEdmaISR$12$B)
	.dwattr DW$190, DW_AT_high_pc(DW$L$_captureEdmaISR$12$E)
DW$191	.dwtag  DW_TAG_loop_range
	.dwattr DW$191, DW_AT_low_pc(DW$L$_captureEdmaISR$13$B)
	.dwattr DW$191, DW_AT_high_pc(DW$L$_captureEdmaISR$13$E)
DW$192	.dwtag  DW_TAG_loop_range
	.dwattr DW$192, DW_AT_low_pc(DW$L$_captureEdmaISR$14$B)
	.dwattr DW$192, DW_AT_high_pc(DW$L$_captureEdmaISR$14$E)
DW$193	.dwtag  DW_TAG_loop_range
	.dwattr DW$193, DW_AT_low_pc(DW$L$_captureEdmaISR$15$B)
	.dwattr DW$193, DW_AT_high_pc(DW$L$_captureEdmaISR$15$E)
DW$194	.dwtag  DW_TAG_loop_range
	.dwattr DW$194, DW_AT_low_pc(DW$L$_captureEdmaISR$16$B)
	.dwattr DW$194, DW_AT_high_pc(DW$L$_captureEdmaISR$16$E)
DW$195	.dwtag  DW_TAG_loop_range
	.dwattr DW$195, DW_AT_low_pc(DW$L$_captureEdmaISR$19$B)
	.dwattr DW$195, DW_AT_high_pc(DW$L$_captureEdmaISR$19$E)
DW$196	.dwtag  DW_TAG_loop_range
	.dwattr DW$196, DW_AT_low_pc(DW$L$_captureEdmaISR$20$B)
	.dwattr DW$196, DW_AT_high_pc(DW$L$_captureEdmaISR$20$E)
DW$197	.dwtag  DW_TAG_loop_range
	.dwattr DW$197, DW_AT_low_pc(DW$L$_captureEdmaISR$21$B)
	.dwattr DW$197, DW_AT_high_pc(DW$L$_captureEdmaISR$21$E)
DW$198	.dwtag  DW_TAG_loop_range
	.dwattr DW$198, DW_AT_low_pc(DW$L$_captureEdmaISR$22$B)
	.dwattr DW$198, DW_AT_high_pc(DW$L$_captureEdmaISR$22$E)
DW$199	.dwtag  DW_TAG_loop_range
	.dwattr DW$199, DW_AT_low_pc(DW$L$_captureEdmaISR$23$B)
	.dwattr DW$199, DW_AT_high_pc(DW$L$_captureEdmaISR$23$E)
DW$200	.dwtag  DW_TAG_loop_range
	.dwattr DW$200, DW_AT_low_pc(DW$L$_captureEdmaISR$26$B)
	.dwattr DW$200, DW_AT_high_pc(DW$L$_captureEdmaISR$26$E)
DW$201	.dwtag  DW_TAG_loop_range
	.dwattr DW$201, DW_AT_low_pc(DW$L$_captureEdmaISR$27$B)
	.dwattr DW$201, DW_AT_high_pc(DW$L$_captureEdmaISR$27$E)
DW$202	.dwtag  DW_TAG_loop_range
	.dwattr DW$202, DW_AT_low_pc(DW$L$_captureEdmaISR$28$B)
	.dwattr DW$202, DW_AT_high_pc(DW$L$_captureEdmaISR$28$E)
DW$203	.dwtag  DW_TAG_loop_range
	.dwattr DW$203, DW_AT_low_pc(DW$L$_captureEdmaISR$29$B)
	.dwattr DW$203, DW_AT_high_pc(DW$L$_captureEdmaISR$29$E)
DW$204	.dwtag  DW_TAG_loop_range
	.dwattr DW$204, DW_AT_low_pc(DW$L$_captureEdmaISR$30$B)
	.dwattr DW$204, DW_AT_high_pc(DW$L$_captureEdmaISR$30$E)
DW$205	.dwtag  DW_TAG_loop_range
	.dwattr DW$205, DW_AT_low_pc(DW$L$_captureEdmaISR$31$B)
	.dwattr DW$205, DW_AT_high_pc(DW$L$_captureEdmaISR$31$E)
DW$206	.dwtag  DW_TAG_loop_range
	.dwattr DW$206, DW_AT_low_pc(DW$L$_captureEdmaISR$32$B)
	.dwattr DW$206, DW_AT_high_pc(DW$L$_captureEdmaISR$32$E)
DW$207	.dwtag  DW_TAG_loop_range
	.dwattr DW$207, DW_AT_low_pc(DW$L$_captureEdmaISR$33$B)
	.dwattr DW$207, DW_AT_high_pc(DW$L$_captureEdmaISR$33$E)
DW$208	.dwtag  DW_TAG_loop_range
	.dwattr DW$208, DW_AT_low_pc(DW$L$_captureEdmaISR$4$B)
	.dwattr DW$208, DW_AT_high_pc(DW$L$_captureEdmaISR$4$E)
DW$209	.dwtag  DW_TAG_loop_range
	.dwattr DW$209, DW_AT_low_pc(DW$L$_captureEdmaISR$5$B)
	.dwattr DW$209, DW_AT_high_pc(DW$L$_captureEdmaISR$5$E)
DW$210	.dwtag  DW_TAG_loop_range
	.dwattr DW$210, DW_AT_low_pc(DW$L$_captureEdmaISR$6$B)
	.dwattr DW$210, DW_AT_high_pc(DW$L$_captureEdmaISR$6$E)
DW$211	.dwtag  DW_TAG_loop_range
	.dwattr DW$211, DW_AT_low_pc(DW$L$_captureEdmaISR$7$B)
	.dwattr DW$211, DW_AT_high_pc(DW$L$_captureEdmaISR$7$E)
DW$212	.dwtag  DW_TAG_loop_range
	.dwattr DW$212, DW_AT_low_pc(DW$L$_captureEdmaISR$8$B)
	.dwattr DW$212, DW_AT_high_pc(DW$L$_captureEdmaISR$8$E)
DW$213	.dwtag  DW_TAG_loop_range
	.dwattr DW$213, DW_AT_low_pc(DW$L$_captureEdmaISR$34$B)
	.dwattr DW$213, DW_AT_high_pc(DW$L$_captureEdmaISR$34$E)
DW$214	.dwtag  DW_TAG_loop_range
	.dwattr DW$214, DW_AT_low_pc(DW$L$_captureEdmaISR$35$B)
	.dwattr DW$214, DW_AT_high_pc(DW$L$_captureEdmaISR$35$E)
DW$215	.dwtag  DW_TAG_loop_range
	.dwattr DW$215, DW_AT_low_pc(DW$L$_captureEdmaISR$36$B)
	.dwattr DW$215, DW_AT_high_pc(DW$L$_captureEdmaISR$36$E)
DW$216	.dwtag  DW_TAG_loop_range
	.dwattr DW$216, DW_AT_low_pc(DW$L$_captureEdmaISR$37$B)
	.dwattr DW$216, DW_AT_high_pc(DW$L$_captureEdmaISR$37$E)
DW$217	.dwtag  DW_TAG_loop_range
	.dwattr DW$217, DW_AT_low_pc(DW$L$_captureEdmaISR$38$B)
	.dwattr DW$217, DW_AT_high_pc(DW$L$_captureEdmaISR$38$E)
	.dwendtag DW$181

	.dwendtag DW$178

	.dwattr DW$168, DW_AT_end_file("vportcap.c")
	.dwattr DW$168, DW_AT_end_line(0x220)
	.dwattr DW$168, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$168

	.sect	".text"

DW$218	.dwtag  DW_TAG_subprogram, DW_AT_name("_configCh"), DW_AT_symbol_name("__configCh")
	.dwattr DW$218, DW_AT_low_pc(__configCh)
	.dwattr DW$218, DW_AT_high_pc(0x00)
	.dwattr DW$218, DW_AT_begin_file("vportcap.c")
	.dwattr DW$218, DW_AT_begin_line(0x227)
	.dwattr DW$218, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",555,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 551 | static Int _configCh(                                                  
; 552 | Ptr                 chanp,                                             
; 553 | VPORTCAP_Params  *params                                               
; 554 | )                                                                      
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __configCh                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 64 Auto + 4 Save = 68 byte                  *
;******************************************************************************
__configCh:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(72)      ; |555| 
           NOP             2
	.dwcfa	0x0e, 72
	.dwcfa	0x80, 19, 0
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$219, DW_AT_type(*DW$T$37)
	.dwattr DW$219, DW_AT_location[DW_OP_reg4]
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$220, DW_AT_type(*DW$T$161)
	.dwattr DW$220, DW_AT_location[DW_OP_reg20]
DW$221	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$221, DW_AT_type(*DW$T$37)
	.dwattr DW$221, DW_AT_location[DW_OP_breg31 4]
DW$222	.dwtag  DW_TAG_variable, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$222, DW_AT_type(*DW$T$161)
	.dwattr DW$222, DW_AT_location[DW_OP_breg31 8]
DW$223	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$223, DW_AT_type(*DW$T$149)
	.dwattr DW$223, DW_AT_location[DW_OP_breg31 12]
DW$224	.dwtag  DW_TAG_variable, DW_AT_name("vcCtl"), DW_AT_symbol_name("_vcCtl")
	.dwattr DW$224, DW_AT_type(*DW$T$167)
	.dwattr DW$224, DW_AT_location[DW_OP_breg31 16]
DW$225	.dwtag  DW_TAG_variable, DW_AT_name("fld1Strt"), DW_AT_symbol_name("_fld1Strt")
	.dwattr DW$225, DW_AT_type(*DW$T$167)
	.dwattr DW$225, DW_AT_location[DW_OP_breg31 20]
DW$226	.dwtag  DW_TAG_variable, DW_AT_name("fld2Strt"), DW_AT_symbol_name("_fld2Strt")
	.dwattr DW$226, DW_AT_type(*DW$T$167)
	.dwattr DW$226, DW_AT_location[DW_OP_breg31 24]
DW$227	.dwtag  DW_TAG_variable, DW_AT_name("fld1Stop"), DW_AT_symbol_name("_fld1Stop")
	.dwattr DW$227, DW_AT_type(*DW$T$167)
	.dwattr DW$227, DW_AT_location[DW_OP_breg31 28]
DW$228	.dwtag  DW_TAG_variable, DW_AT_name("fld2Stop"), DW_AT_symbol_name("_fld2Stop")
	.dwattr DW$228, DW_AT_type(*DW$T$167)
	.dwattr DW$228, DW_AT_location[DW_OP_breg31 32]
DW$229	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$229, DW_AT_type(*DW$T$168)
	.dwattr DW$229, DW_AT_location[DW_OP_breg31 36]
DW$230	.dwtag  DW_TAG_variable, DW_AT_name("retVal"), DW_AT_symbol_name("_retVal")
	.dwattr DW$230, DW_AT_type(*DW$T$22)
	.dwattr DW$230, DW_AT_location[DW_OP_breg31 40]
DW$231	.dwtag  DW_TAG_variable, DW_AT_name("numPixels"), DW_AT_symbol_name("_numPixels")
	.dwattr DW$231, DW_AT_type(*DW$T$22)
	.dwattr DW$231, DW_AT_location[DW_OP_breg31 44]
DW$232	.dwtag  DW_TAG_variable, DW_AT_name("numLines"), DW_AT_symbol_name("_numLines")
	.dwattr DW$232, DW_AT_type(*DW$T$22)
	.dwattr DW$232, DW_AT_location[DW_OP_breg31 48]
DW$233	.dwtag  DW_TAG_variable, DW_AT_name("numCPixels"), DW_AT_symbol_name("_numCPixels")
	.dwattr DW$233, DW_AT_type(*DW$T$22)
	.dwattr DW$233, DW_AT_location[DW_OP_breg31 52]
           STW     .D2T2   B4,*+SP(8)        ; |555| 
           STW     .D2T1   A4,*+SP(4)        ; |555| 
           NOP             2
	.dwpsn	"vportcap.c",556,21
;----------------------------------------------------------------------
; 556 | _VPORT_ChanObj* chan= (_VPORT_ChanObj *)chanp;                         
; 557 | volatile Int vpCtl, vcCtl, fld1Strt, fld2Strt, fld1Stop, fld2Stop;     
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |556| 
           NOP             2
	.dwpsn	"vportcap.c",558,19
;----------------------------------------------------------------------
; 558 | volatile Int* base = (volatile Int *)chan->base;
;     |                                                                        
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T1   *+A3(12),A3       ; |558| 
           NOP             4
           STW     .D2T1   A3,*+SP(36)       ; |558| 
           NOP             2
	.dwpsn	"vportcap.c",559,9
;----------------------------------------------------------------------
; 559 | Int retVal = IOM_COMPLETED;                                            
; 560 | Int numPixels, numLines, numCPixels;                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |559| 
           STW     .D2T2   B4,*+SP(40)       ; |559| 
           NOP             2
	.dwpsn	"vportcap.c",563,5
;----------------------------------------------------------------------
; 563 | if(chan->status & _VPORT_OPENED) {                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |563| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |563| 
           NOP             4
           AND     .L2     1,B4,B0           ; |563| 
   [!B0]   BNOP    .S1     L114,5            ; |563| 
           ; BRANCHCC OCCURS {L114}          ; |563| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",564,9
;----------------------------------------------------------------------
; 564 | chan->vIntMask = 0;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |564| 
           NOP             3
           ZERO    .L1     A4                ; |564| 
           STW     .D1T1   A4,*+A3(40)       ; |564| 
           NOP             2
	.dwpsn	"vportcap.c",565,9
;----------------------------------------------------------------------
; 565 | QUE_new(&chan->qIn);                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |565| 
           NOP             1
           MVK     .S1     364,A3            ; |565| 
           MVK     .S2     92,B6             ; |565| 
           MVK     .S2     91,B31            ; |565| 

           ADD     .L2X    A3,B4,B4          ; |565| 
||         MV      .D2     B4,B5             ; |565| 

           STW     .D2T2   B4,*+B5[B6]       ; |565| 
           LDW     .D2T2   *+SP(12),B5       ; |565| 
           NOP             4
           STW     .D2T2   B4,*+B5[B31]      ; |565| 
           NOP             2
	.dwpsn	"vportcap.c",566,9
;----------------------------------------------------------------------
; 566 | chan->vIntFxn = (VPORT_IntCallBack)INV;                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |566| 
           NOP             2
           MVK     .L2     -1,B4             ; |566| 
           MVK     .S1     118,A4            ; |566| 
           STW     .D1T2   B4,*+A3[A4]       ; |566| 
           NOP             2
	.dwpsn	"vportcap.c",567,9
;----------------------------------------------------------------------
; 567 | chan->queEmpty = FALSE;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |567| 
           NOP             3
           ZERO    .L2     B5                ; |567| 
           ADDK    .S2     476,B4            ; |567| 
           STH     .D2T2   B5,*B4            ; |567| 
           NOP             2
	.dwpsn	"vportcap.c",568,9
;----------------------------------------------------------------------
; 568 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |568| 
           NOP             2
           MVK     .L1     -1,A4             ; |568| 
           MVK     .S1     133,A5            ; |568| 
           STW     .D1T1   A4,*+A3[A5]       ; |568| 
           NOP             2
	.dwpsn	"vportcap.c",569,9
;----------------------------------------------------------------------
; 569 | chan->packetIOM = INV;                                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |569| 
           NOP             3
           MVK     .S1     137,A5            ; |569| 
           STW     .D1T1   A4,*+A3[A5]       ; |569| 
           NOP             2
	.dwpsn	"vportcap.c",570,9
;----------------------------------------------------------------------
; 570 | chan->vIntCbArg = (Int)INV;                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |570| 
           NOP             3
           MVK     .S1     138,A5            ; |570| 
           STW     .D1T1   A4,*+A3[A5]       ; |570| 
           NOP             2
	.dwpsn	"vportcap.c",571,9
;----------------------------------------------------------------------
; 571 | chan->bufSz = 0;                                                       
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |571| 
           NOP             2
           ZERO    .L1     A4                ; |571| 
           MVK     .S1     140,A5            ; |571| 
           STW     .D1T1   A4,*+A3[A5]       ; |571| 
           NOP             2
	.dwpsn	"vportcap.c",572,9
;----------------------------------------------------------------------
; 572 | chan->mode = params->cmode;                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |572| 
           NOP             2
           LDW     .D2T2   *+SP(12),B5       ; |572| 
           MVK     .S2     134,B4            ; |572| 
           LDW     .D1T1   *A3,A3            ; |572| 
           NOP             4
           STW     .D2T1   A3,*+B5[B4]       ; |572| 
           NOP             2
	.dwpsn	"vportcap.c",573,9
;----------------------------------------------------------------------
; 573 | if(chan->mode & _VPORT_MASK_RAW) {                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |573| 
           NOP             3
           MVK     .S2     134,B5            ; |573| 
           LDW     .D2T2   *+B4[B5],B4       ; |573| 
           NOP             4
           AND     .L2     2,B4,B0           ; |573| 
   [!B0]   BNOP    .S1     L87,5             ; |573| 
           ; BRANCHCC OCCURS {L87}           ; |573| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",574,13
;----------------------------------------------------------------------
; 574 | chan->autoSyncEnable = FALSE; // no auto-sync in raw mode              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |574| 
           NOP             3
           ZERO    .L2     B5                ; |574| 
           ADDK    .S2     576,B4            ; |574| 
           STH     .D2T2   B5,*B4            ; |574| 
           NOP             2
	.dwpsn	"vportcap.c",575,9
;----------------------------------------------------------------------
; 575 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L88,5             ; |575| 
           ; BRANCH OCCURS {L88}             ; |575| 
;** --------------------------------------------------------------------------*
L87:    
	.dwpsn	"vportcap.c",576,13
;----------------------------------------------------------------------
; 576 | chan->autoSyncEnable = params->autoSyncEnable;                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |576| 
           NOP             3
           LDW     .D2T1   *+SP(12),A3       ; |576| 
           ADDK    .S2     84,B4             ; |576| 
           LDHU    .D2T2   *B4,B4            ; |576| 
           NOP             3
           ADDK    .S1     576,A3            ; |576| 
           STH     .D1T2   B4,*A3            ; |576| 
;** --------------------------------------------------------------------------*
L88:    
	.dwpsn	"vportcap.c",579,9
;----------------------------------------------------------------------
; 579 | if(!(chan->mode & _VPORT_MASK_RAW)) {                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |579| 
           NOP             3
           MVK     .S2     134,B5            ; |579| 
           LDW     .D2T2   *+B4[B5],B4       ; |579| 
           NOP             4
           AND     .L2     2,B4,B0           ; |579| 
   [ B0]   BNOP    .S1     L103,5            ; |579| 
           ; BRANCHCC OCCURS {L103}          ; |579| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",581,10
;----------------------------------------------------------------------
; 581 | vcCtl = VP_VCACTL_RMK(0,1,0,params->fldInv,                            
; 582 |     params->extCtl, params->fldDect, params->vCtRst,                   
; 583 |     params->hCtRst, 0, params->bpk10Bit,1,1,                           
; 584 |     params->resmpl,params->scale,1,                                    
; 585 |     ((params->fldOp & 4) >> 2),                                        
; 586 |     ((params->fldOp & 2) >> 1),                                        
; 587 |     (params->fldOp & 1),                                               
; 588 |     params->cmode);                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A7        ; |581| 
           ZERO    .S1     A20               ; |581| 
           ZERO    .S1     A30               ; |581| 
           MVK     .S1     1024,A23          ; |581| 
           MVKH    .S1     0x100000,A20      ; |581| 

           MV      .L1     A7,A4             ; |581| 
||         LDW     .D1T1   *+A7(32),A17      ; |581| 

           MV      .L1     A7,A6             ; |581| 
||         LDW     .D1T1   *+A4(4),A29       ; |581| 

           MV      .L1     A7,A5             ; |581| 
||         MV      .L2X    A7,B4             ; |581| 
||         LDW     .D1T1   *+A6(28),A16      ; |581| 

           MV      .L1     A7,A8             ; |581| 
||         LDW     .D2T2   *+B4(36),B4       ; |581| 
||         LDW     .D1T1   *+A5(24),A5       ; |581| 

           LDW     .D1T1   *+A8(16),A8       ; |581| 
||         MV      .L1     A7,A9             ; |581| 
||         MVKH    .S1     0x20000,A30       ; |581| 

           SHL     .S1     A17,19,A22        ; |581| 
||         LDW     .D1T1   *+A9(20),A31      ; |581| 
||         MV      .L1     A7,A3             ; |581| 

           EXTU    .S1     A29,29,31,A24     ; |581| 
||         LDW     .D1T1   *+A3(12),A3       ; |581| 
||         ZERO    .L2     B5                ; |581| 

           SHL     .S1     A16,18,A21        ; |581| 
||         MVKH    .S2     0x80000,B5        ; |581| 

           SHL     .S1     A5,17,A18         ; |581| 
||         SHL     .S2     B4,20,B6          ; |581| 
||         LDW     .D1T1   *+A7(8),A27       ; |581| 

           LDW     .D1T1   *+A6(4),A6        ; |581| 
||         AND     .L1X    B5,A22,A1         ; |581| 
||         SHL     .S1     A8,13,A28         ; |581| 
||         ZERO    .L2     B31               ; |581| 

           MV      .L1     A4,A25            ; |581| 
||         AND     .D1X    A20,B6,A20        ; |581| 
||         SHL     .S1     A31,16,A19        ; |581| 
||         MVKH    .S2     0x40000,B31       ; |581| 

           SHL     .S1     A3,10,A26         ; |581| 
||         OR      .L1     A1,A20,A20        ; |581| 
||         ZERO    .D1     A29               ; |581| 

           LDW     .D1T1   *+A4(4),A2        ; |581| 
||         AND     .L1X    B31,A21,A17       ; |581| 
||         MVKH    .S1     0x10000,A29       ; |581| 
||         MVK     .S2     24576,B30         ; |581| 

           SHL     .S1     A27,8,A8          ; |581| 
||         OR      .L1     A17,A20,A18       ; |581| 
||         AND     .D1     A30,A18,A9        ; |581| 
||         MVK     .S2     256,B29           ; |581| 

           AND     .L1X    B30,A28,A5        ; |581| 
||         AND     .S1     A29,A19,A9        ; |581| 
||         OR      .D1     A9,A18,A16        ; |581| 

           AND     .L1X    B29,A8,A8         ; |581| 
||         OR      .D1     A9,A16,A16        ; |581| 
||         EXTU    .S1     A6,30,31,A6       ; |581| 

           SHL     .S1     A24,6,A31         ; |581| 
||         OR      .L1     A5,A16,A9         ; |581| 
||         AND     .D1     A23,A26,A7        ; |581| 

           LDW     .D1T1   *A25,A3           ; |581| 
||         OR      .L1     A7,A9,A9          ; |581| 
||         MVK     .S1     64,A17            ; |581| 

           OR      .L1     A8,A9,A8          ; |581| 
||         SHL     .S1     A6,5,A7           ; |581| 
||         MVK     .S2     32,B28            ; |581| 

           MVK     .S1     16,A31            ; |581| 
||         AND     .L1     A17,A31,A6        ; |581| 
||         AND     .D1     1,A2,A5           ; |581| 

           OR      .L1     A6,A8,A7          ; |581| 
||         AND     .D1X    B28,A7,A5         ; |581| 
||         SHL     .S1     A5,4,A6           ; |581| 

           AND     .L1     A31,A6,A5         ; |581| 
||         OR      .S1     A5,A7,A4          ; |581| 

           OR      .L1     A5,A4,A4          ; |581| 
||         AND     .S1     7,A3,A3           ; |581| 

           OR      .L1     A3,A4,A3          ; |581| 
||         MVKL    .S2     0x40001880,B27    ; |581| 

           MVKH    .S2     0x40001880,B27    ; |581| 
           OR      .L2X    B27,A3,B4         ; |581| 
           STW     .D2T2   B4,*+SP(16)       ; |581| 
           NOP             2
	.dwpsn	"vportcap.c",590,10
;----------------------------------------------------------------------
; 590 | fld1Strt = params->fldXStrt1 + (params->fldYStrt1 << 16);              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |590| 
           NOP             4

           LDHU    .D1T1   *+A3(42),A3       ; |590| 
||         MV      .L2X    A3,B4             ; |590| 

           NOP             1
           LDHU    .D2T2   *+B4(40),B4       ; |590| 
           NOP             2
           SHL     .S1     A3,16,A3          ; |590| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |590| 
           STW     .D2T2   B4,*+SP(20)       ; |590| 
           NOP             2
	.dwpsn	"vportcap.c",591,10
;----------------------------------------------------------------------
; 591 | fld1Stop = params->fldXStop1 + (params->fldYStop1 << 16);              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |591| 
           NOP             4

           LDHU    .D1T1   *+A3(50),A3       ; |591| 
||         MV      .L2X    A3,B4             ; |591| 

           NOP             1
           LDHU    .D2T2   *+B4(48),B4       ; |591| 
           NOP             2
           SHL     .S1     A3,16,A3          ; |591| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |591| 
           STW     .D2T2   B4,*+SP(28)       ; |591| 
           NOP             2
	.dwpsn	"vportcap.c",592,10
;----------------------------------------------------------------------
; 592 | fld2Strt = params->fldXStrt2 + (params->fldYStrt2 << 16);              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |592| 
           NOP             4

           LDHU    .D1T1   *+A3(46),A3       ; |592| 
||         MV      .L2X    A3,B4             ; |592| 

           NOP             1
           LDHU    .D2T2   *+B4(44),B4       ; |592| 
           NOP             2
           SHL     .S1     A3,16,A3          ; |592| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |592| 
           STW     .D2T2   B4,*+SP(24)       ; |592| 
           NOP             2
	.dwpsn	"vportcap.c",593,10
;----------------------------------------------------------------------
; 593 | fld2Stop = params->fldXStop2 + (params->fldYStop2 << 16);              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |593| 
           NOP             4

           LDHU    .D1T1   *+A3(54),A3       ; |593| 
||         MV      .L2X    A3,B4             ; |593| 

           NOP             1
           LDHU    .D2T2   *+B4(52),B4       ; |593| 
           NOP             2
           SHL     .S1     A3,16,A3          ; |593| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |593| 
           STW     .D2T2   B4,*+SP(32)       ; |593| 
           NOP             2
	.dwpsn	"vportcap.c",594,10
;----------------------------------------------------------------------
; 594 | if(params->fldOp == VPORT_FLDOP_FRAME) {                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |594| 
           NOP             4
           LDW     .D1T1   *+A3(4),A3        ; |594| 
           NOP             4
           CMPEQ   .L1     A3,4,A0           ; |594| 
   [!A0]   BNOP    .S1     L90,5             ; |594| 
           ; BRANCHCC OCCURS {L90}           ; |594| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",595,14
;----------------------------------------------------------------------
; 595 | assert(params->fldXStop1 == params->fldXStop2);                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |595| 
           NOP             2
           MVKL    .S1     SL4+0,A4          ; |595| 
           MVKH    .S1     SL4+0,A4          ; |595| 
           MV      .L2X    A3,B4             ; |595| 

           LDHU    .D2T2   *+B4(52),B4       ; |595| 
||         LDHU    .D1T1   *+A3(48),A3       ; |595| 

           NOP             4
           CMPEQ   .L1X    A3,B4,A0          ; |595| 
   [ A0]   BNOP    .S1     L89,5             ; |595| 
           ; BRANCHCC OCCURS {L89}           ; |595| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |595| 
           ADDKPC  .S2     RL42,B3,4         ; |595| 
RL42:      ; CALL OCCURS {__abort_msg}       ; |595| 
;** --------------------------------------------------------------------------*
L89:    
	.dwpsn	"vportcap.c",596,14
;----------------------------------------------------------------------
; 596 | assert(params->fldXStrt1 == params->fldXStrt2);                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |596| 
           NOP             2
           MVKL    .S1     SL5+0,A4          ; |596| 
           MVKH    .S1     SL5+0,A4          ; |596| 
           MV      .L2X    A3,B4             ; |596| 

           LDHU    .D2T2   *+B4(44),B4       ; |596| 
||         LDHU    .D1T1   *+A3(40),A3       ; |596| 

           NOP             4
           CMPEQ   .L1X    A3,B4,A0          ; |596| 
   [ A0]   BNOP    .S1     L90,5             ; |596| 
           ; BRANCHCC OCCURS {L90}           ; |596| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |596| 
           ADDKPC  .S2     RL43,B3,4         ; |596| 
RL43:      ; CALL OCCURS {__abort_msg}       ; |596| 
;** --------------------------------------------------------------------------*
L90:    
	.dwpsn	"vportcap.c",599,10
;----------------------------------------------------------------------
; 599 | base[_VP_VCACTL_OFFSETA] |=                                            
; 600 |   VP_VCACTL_RSTCH_RESET << _VP_VCACTL_RSTCH_SHIFT;                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(36),A4       ; |599| 
           NOP             4
           LDW     .D1T1   *+A4(4),A3        ; |599| 
           NOP             4
           SET     .S1     A3,31,31,A3       ; |599| 
           STW     .D1T1   A3,*+A4(4)        ; |599| 
           NOP             2
	.dwpsn	"vportcap.c",601,10
;----------------------------------------------------------------------
; 601 | _delay(2000);                                                          
;----------------------------------------------------------------------
           CALL    .S1     __delay           ; |601| 
           ADDKPC  .S2     RL44,B3,3         ; |601| 
           MVK     .S1     0x7d0,A4          ; |601| 
RL44:      ; CALL OCCURS {__delay}           ; |601| 
	.dwpsn	"vportcap.c",602,10
;----------------------------------------------------------------------
; 602 | base[_VP_VCACTL_OFFSETA]   = vcCtl;                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |602| 
           LDW     .D2T1   *+SP(36),A3       ; |602| 
           NOP             4
           STW     .D1T2   B4,*+A3(4)        ; |602| 
           NOP             2
	.dwpsn	"vportcap.c",603,10
;----------------------------------------------------------------------
; 603 | base[_VP_VCASTRT1_OFFSETA] = fld1Strt;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(36),A3       ; |603| 
           LDW     .D2T2   *+SP(20),B4       ; |603| 
           NOP             4
           STW     .D1T2   B4,*+A3(8)        ; |603| 
           NOP             2
	.dwpsn	"vportcap.c",604,10
;----------------------------------------------------------------------
; 604 | base[_VP_VCASTOP1_OFFSETA] = fld1Stop;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(36),A3       ; |604| 
           LDW     .D2T2   *+SP(28),B4       ; |604| 
           NOP             4
           STW     .D1T2   B4,*+A3(12)       ; |604| 
           NOP             2
	.dwpsn	"vportcap.c",605,10
;----------------------------------------------------------------------
; 605 | base[_VP_VCASTRT2_OFFSETA] = fld2Strt;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(36),A3       ; |605| 
           LDW     .D2T2   *+SP(24),B4       ; |605| 
           NOP             4
           STW     .D1T2   B4,*+A3(16)       ; |605| 
           NOP             2
	.dwpsn	"vportcap.c",606,10
;----------------------------------------------------------------------
; 606 | base[_VP_VCASTOP2_OFFSETA] = fld2Stop;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(36),A3       ; |606| 
           LDW     .D2T2   *+SP(32),B4       ; |606| 
           NOP             4
           STW     .D1T2   B4,*+A3(20)       ; |606| 
           NOP             2
	.dwpsn	"vportcap.c",607,10
;----------------------------------------------------------------------
; 607 | numPixels = params->fldXStop1 - params->fldXStrt1 + 1;/* line size */  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |607| 
           NOP             4
           MV      .L1X    B4,A3             ; |607| 

           LDHU    .D1T1   *+A3(48),A3       ; |607| 
||         LDHU    .D2T2   *+B4(40),B4       ; |607| 

           NOP             4
           SUB     .L1X    A3,B4,A3          ; |607| 
           ADD     .L1     1,A3,A3           ; |607| 
           STW     .D2T1   A3,*+SP(44)       ; |607| 
           NOP             2
	.dwpsn	"vportcap.c",608,10
;----------------------------------------------------------------------
; 608 | numLines = 0;                                                          
;----------------------------------------------------------------------
           ZERO    .L1     A3                ; |608| 
           STW     .D2T1   A3,*+SP(48)       ; |608| 
           NOP             2
	.dwpsn	"vportcap.c",610,10
;----------------------------------------------------------------------
; 610 | if(params->fldOp != VPORT_FLDOP_FLD2){                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |610| 
           NOP             4
           LDW     .D1T1   *+A3(4),A3        ; |610| 
           NOP             4
           CMPEQ   .L1     A3,2,A0           ; |610| 
   [ A0]   BNOP    .S1     L91,5             ; |610| 
           ; BRANCHCC OCCURS {L91}           ; |610| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",611,14
;----------------------------------------------------------------------
; 611 | numLines += params->fldYStop1 - params->fldYStrt1 + 1;                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |611| 
           NOP             3
           LDW     .D2T2   *+SP(48),B5       ; |611| 
           MV      .L1X    B4,A3             ; |611| 

           LDHU    .D1T1   *+A3(50),A3       ; |611| 
||         LDHU    .D2T2   *+B4(42),B4       ; |611| 

           NOP             4
           SUB     .L1X    A3,B4,A3          ; |611| 
           ADD     .L1X    B5,A3,A3          ; |611| 
           ADD     .L1     1,A3,A3           ; |611| 
           STW     .D2T1   A3,*+SP(48)       ; |611| 
;** --------------------------------------------------------------------------*
L91:    
	.dwpsn	"vportcap.c",613,10
;----------------------------------------------------------------------
; 613 | chan->numLinesFld1 = numLines;                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |613| 
           LDW     .D2T2   *+SP(48),B4       ; |613| 
           NOP             3
           MVK     .S1     125,A4            ; |613| 
           STW     .D1T2   B4,*+A3[A4]       ; |613| 
           NOP             2
	.dwpsn	"vportcap.c",614,10
;----------------------------------------------------------------------
; 614 | chan->numTotalLinesFld1 = params->fldYStop1;                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |614| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |614| 
           MVK     .S2     143,B5            ; |614| 
           LDHU    .D1T1   *+A3(50),A3       ; |614| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |614| 
           NOP             2
	.dwpsn	"vportcap.c",616,10
;----------------------------------------------------------------------
; 616 | if(params->fldOp == VPORT_FLDOP_FLD2                                   
; 617 |   || params->fldOp == VPORT_FLDOP_FRAME){                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |616| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |616| 
           NOP             4
           CMPEQ   .L2     B4,2,B0           ; |616| 
   [ B0]   BNOP    .S1     L92,4             ; |616| 
           LDW     .D2T2   *+SP(8),B4        ; |616| 
           ; BRANCHCC OCCURS {L92}           ; |616| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |616| 
           NOP             4
           CMPEQ   .L2     B4,4,B0           ; |616| 
;** --------------------------------------------------------------------------*
L92:    
   [!B0]   BNOP    .S1     L93,5             ; |616| 
           ; BRANCHCC OCCURS {L93}           ; |616| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",618,14
;----------------------------------------------------------------------
; 618 | numLines += params->fldYStop2 - params->fldYStrt2 + 1;                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |618| 
           NOP             3
           LDW     .D2T2   *+SP(48),B5       ; |618| 
           MV      .L1X    B4,A3             ; |618| 

           LDHU    .D1T1   *+A3(54),A3       ; |618| 
||         LDHU    .D2T2   *+B4(46),B4       ; |618| 

           NOP             4
           SUB     .L1X    A3,B4,A3          ; |618| 
           ADD     .L1X    B5,A3,A3          ; |618| 
           ADD     .L1     1,A3,A3           ; |618| 
           STW     .D2T1   A3,*+SP(48)       ; |618| 
;** --------------------------------------------------------------------------*
L93:    
	.dwpsn	"vportcap.c",620,10
;----------------------------------------------------------------------
; 620 | chan->resmpl = params->resmpl;                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |620| 
           LDW     .D2T2   *+SP(12),B4       ; |620| 
           NOP             3
           LDHU    .D1T1   *+A3(12),A3       ; |620| 
           NOP             3
           ADDK    .S2     480,B4            ; |620| 
           STH     .D2T1   A3,*B4            ; |620| 
           NOP             2
	.dwpsn	"vportcap.c",621,10
;----------------------------------------------------------------------
; 621 | chan->scale = params->scale;                                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |621| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |621| 
           MVK     .S2     239,B5            ; |621| 
           LDHU    .D1T1   *+A3(8),A3        ; |621| 
           NOP             4
           STH     .D2T1   A3,*+B4[B5]       ; |621| 
           NOP             2
	.dwpsn	"vportcap.c",622,10
;----------------------------------------------------------------------
; 622 | chan->numLines = numLines;                                             
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |622| 
           LDW     .D2T2   *+SP(48),B4       ; |622| 
           NOP             3
           MVK     .S1     123,A4            ; |622| 
           STW     .D1T2   B4,*+A3[A4]       ; |622| 
           NOP             2
	.dwpsn	"vportcap.c",623,10
;----------------------------------------------------------------------
; 623 | numPixels >>= params->scale;                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |623| 
           NOP             3
           LDW     .D2T2   *+SP(44),B5       ; |623| 
           LDW     .D2T2   *+B4(8),B4        ; |623| 
           NOP             4
           SHR     .S2     B5,B4,B4          ; |623| 
           STW     .D2T2   B4,*+SP(44)       ; |623| 
           NOP             2
	.dwpsn	"vportcap.c",624,10
;----------------------------------------------------------------------
; 624 | numCPixels = numPixels >> 1;                                           
;----------------------------------------------------------------------
           SHR     .S2     B4,1,B4           ; |624| 
           STW     .D2T2   B4,*+SP(52)       ; |624| 
           NOP             2
	.dwpsn	"vportcap.c",626,10
;----------------------------------------------------------------------
; 626 | chan->numPixels = numPixels;                                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |626| 
           LDW     .D2T1   *+SP(44),A3       ; |626| 
           NOP             3
           MVK     .S1     124,A5            ; |626| 
           STW     .D1T1   A3,*+A4[A5]       ; |626| 
           NOP             2
	.dwpsn	"vportcap.c",627,10
;----------------------------------------------------------------------
; 627 | chan->lastLineNum = chan->numLines;                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |627| 
           NOP             1
           MVK     .S1     123,A4            ; |627| 
           LDW     .D2T2   *+SP(12),B4       ; |627| 
           MVK     .S2     141,B5            ; |627| 
           LDW     .D1T1   *+A3[A4],A3       ; |627| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |627| 
           NOP             2
	.dwpsn	"vportcap.c",628,10
;----------------------------------------------------------------------
; 628 | if(params->cmode & _VPORT_MASK_10BIT){                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |628| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |628| 
           NOP             4
           AND     .L1     1,A3,A0           ; |628| 
   [!A0]   BNOP    .S1     L96,5             ; |628| 
           ; BRANCHCC OCCURS {L96}           ; |628| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",630,14
;----------------------------------------------------------------------
; 630 | if( params->bpk10Bit == VPORTCAP_BPK_10BIT_ZERO_EXTENDED               
; 631 |  || params->bpk10Bit == VPORTCAP_BPK_10BIT_SIGN_EXTENDED){             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |630| 
           NOP             4
           LDW     .D2T2   *+B4(16),B4       ; |630| 
           NOP             4
           CMPEQ   .L2     B4,0,B0           ; |630| 
   [ B0]   BNOP    .S1     L94,4             ; |630| 
           LDW     .D2T2   *+SP(8),B4        ; |630| 
           ; BRANCHCC OCCURS {L94}           ; |630| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4(16),B4       ; |630| 
           NOP             4
           CMPEQ   .L2     B4,1,B0           ; |630| 
;** --------------------------------------------------------------------------*
L94:    
   [!B0]   BNOP    .S1     L95,5             ; |630| 
           ; BRANCHCC OCCURS {L95}           ; |630| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",632,18
;----------------------------------------------------------------------
; 632 | chan->yPitch = (numPixels * 2 + 7) & (~ 7);                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(44),A3       ; |632| 
           NOP             1
           LDW     .D2T2   *+SP(12),B4       ; |632| 
           MVK     .L1     7,A4              ; |632| 
           MVK     .S2     121,B5            ; |632| 
           ADDAH   .D1     A4,A3,A3          ; |632| 
           AND     .L1     -8,A3,A3          ; |632| 
           STW     .D2T1   A3,*+B4[B5]       ; |632| 
           NOP             2
	.dwpsn	"vportcap.c",633,18
;----------------------------------------------------------------------
; 633 | chan->cPitch = (numCPixels * 2 + 7) & (~ 7);                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(52),B4       ; |633| 
           NOP             1
           LDW     .D2T2   *+SP(12),B5       ; |633| 
           MVK     .L2     7,B6              ; |633| 
           MVK     .S2     122,B31           ; |633| 
           ADDAH   .D2     B6,B4,B4          ; |633| 
           AND     .L2     -8,B4,B4          ; |633| 
           STW     .D2T2   B4,*+B5[B31]      ; |633| 
           NOP             2
	.dwpsn	"vportcap.c",634,14
;----------------------------------------------------------------------
; 634 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L97,5             ; |634| 
           ; BRANCH OCCURS {L97}             ; |634| 
;** --------------------------------------------------------------------------*
L95:    
	.dwpsn	"vportcap.c",635,18
;----------------------------------------------------------------------
; 635 | chan->yPitch = (numPixels * 4 / 3 + 7) & (~ 7);                        
;----------------------------------------------------------------------

           CALL    .S1     __divi            ; |635| 
||         LDW     .D2T2   *+SP(44),B4       ; |635| 

           ADDKPC  .S2     RL45,B3,3         ; |635| 

           MVK     .L2     0x3,B4            ; |635| 
||         SHL     .S1X    B4,2,A4           ; |635| 

RL45:      ; CALL OCCURS {__divi}            ; |635| 
           LDW     .D2T2   *+SP(12),B5       ; |635| 
           NOP             1
           ADD     .L1     7,A4,A3           ; |635| 
           MVK     .S2     121,B6            ; |635| 
           AND     .L2X    -8,A3,B4          ; |635| 
           STW     .D2T2   B4,*+B5[B6]       ; |635| 
           NOP             2
	.dwpsn	"vportcap.c",636,18
;----------------------------------------------------------------------
; 636 | chan->cPitch = (numCPixels* 4 / 3 + 7) & (~ 7);                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(52),B4       ; |636| 
           NOP             1
           CALL    .S1     __divi            ; |636| 
           ADDKPC  .S2     RL46,B3,1         ; |636| 
           SHL     .S2     B4,2,B5           ; |636| 
           MVK     .L2     0x3,B4            ; |636| 
           MV      .L1X    B5,A4             ; |636| 
RL46:      ; CALL OCCURS {__divi}            ; |636| 
           LDW     .D2T2   *+SP(12),B4       ; |636| 
           NOP             1
           ADD     .L1     7,A4,A3           ; |636| 
           MVK     .S2     122,B5            ; |636| 
           AND     .L1     -8,A3,A3          ; |636| 
           STW     .D2T1   A3,*+B4[B5]       ; |636| 
           NOP             2
	.dwpsn	"vportcap.c",638,10
;----------------------------------------------------------------------
; 638 | } else {/* 8-bit BT.656 or 16-bit Y/C mode */                          
;----------------------------------------------------------------------
           BNOP    .S1     L97,5             ; |638| 
           ; BRANCH OCCURS {L97}             ; |638| 
;** --------------------------------------------------------------------------*
L96:    
	.dwpsn	"vportcap.c",639,14
;----------------------------------------------------------------------
; 639 | chan->yPitch = (numPixels + 7) & (~ 7);                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |639| 
           NOP             2
           LDW     .D2T2   *+SP(12),B5       ; |639| 
           MVK     .S2     121,B31           ; |639| 
           ADD     .L2     7,B4,B4           ; |639| 
           NOP             1
           AND     .L1X    -8,B4,A3          ; |639| 
           STW     .D2T1   A3,*+B5[B31]      ; |639| 
           NOP             2
	.dwpsn	"vportcap.c",640,14
;----------------------------------------------------------------------
; 640 | chan->cPitch = (numCPixels + 7) & (~ 7);                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(52),B4       ; |640| 
           NOP             1
           LDW     .D2T2   *+SP(12),B5       ; |640| 
           MVK     .S2     122,B6            ; |640| 
           NOP             1
           ADD     .L2     7,B4,B4           ; |640| 
           AND     .L2     -8,B4,B4          ; |640| 
           STW     .D2T2   B4,*+B5[B6]       ; |640| 
;** --------------------------------------------------------------------------*
L97:    
	.dwpsn	"vportcap.c",642,10
;----------------------------------------------------------------------
; 642 | chan->yThrld = params->thrld;                                          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |642| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |642| 
           MVK     .S2     129,B5            ; |642| 
           LDHU    .D1T1   *+A3(56),A3       ; |642| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |642| 
           NOP             2
	.dwpsn	"vportcap.c",643,10
;----------------------------------------------------------------------
; 643 | chan->interlaced = TRUE;                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |643| 
           NOP             2
           MVK     .L1     1,A4              ; |643| 
           MVK     .S1     231,A5            ; |643| 
           STH     .D1T1   A4,*+A3[A5]       ; |643| 
           NOP             2
	.dwpsn	"vportcap.c",644,10
;----------------------------------------------------------------------
; 644 | if(params->fldOp == VPORT_FLDOP_FRAME && params->mergeFlds) {          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |644| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |644| 
           NOP             4
           CMPEQ   .L2     B4,4,B0           ; |644| 
   [!B0]   BNOP    .S1     L98,4             ; |644| 
           LDW     .D2T2   *+SP(8),B4        ; |644| 
           ; BRANCHCC OCCURS {L98}           ; |644| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4(68),B4       ; |644| 
           NOP             4
           CMPEQ   .L2     B4,0,B4           ; |644| 
           XOR     .L2     1,B4,B0           ; |644| 
;** --------------------------------------------------------------------------*
L98:    
   [!B0]   BNOP    .S1     L99,5             ; |644| 
           ; BRANCHCC OCCURS {L99}           ; |644| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",648,14
;----------------------------------------------------------------------
; 648 | chan->yThrld = chan->yPitch >> 3;                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |648| 
           NOP             2
           MVK     .S2     121,B5            ; |648| 
           MVK     .S2     129,B6            ; |648| 
           LDW     .D2T2   *+B4[B5],B5       ; |648| 
           NOP             4
           SHRU    .S2     B5,3,B5           ; |648| 
           STW     .D2T2   B5,*+B4[B6]       ; |648| 
           NOP             2
	.dwpsn	"vportcap.c",649,14
;----------------------------------------------------------------------
; 649 | chan->numEventsFld1 = chan->numLinesFld1;                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |649| 
           NOP             1
           MVK     .S1     125,A4            ; |649| 
           LDW     .D2T2   *+SP(12),B5       ; |649| 
           MVK     .S2     128,B4            ; |649| 
           LDW     .D1T1   *+A3[A4],A3       ; |649| 
           NOP             4
           STW     .D2T1   A3,*+B5[B4]       ; |649| 
           NOP             2
	.dwpsn	"vportcap.c",650,14
;----------------------------------------------------------------------
; 650 | chan->numEvents = chan->numLines;                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |650| 
           NOP             1
           MVK     .S1     123,A4            ; |650| 
           LDW     .D2T2   *+SP(12),B4       ; |650| 
           MVK     .S2     127,B5            ; |650| 
           LDW     .D1T1   *+A3[A4],A3       ; |650| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |650| 
           NOP             2
	.dwpsn	"vportcap.c",651,10
;----------------------------------------------------------------------
; 651 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L102,5            ; |651| 
           ; BRANCH OCCURS {L102}            ; |651| 
;** --------------------------------------------------------------------------*
L99:    
	.dwpsn	"vportcap.c",652,14
;----------------------------------------------------------------------
; 652 | assert(((chan->yPitch*chan->numLinesFld1) / (chan->yThrld << 3))       
; 653 |     *(chan->yThrld << 3) == (chan->yPitch * chan->numLinesFld1));      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |652| 
           NOP             1
           MVK     .S2     125,B5            ; |652| 
           MVK     .S1     121,A4            ; |652| 
           MVK     .S1     129,A31           ; |652| 
           MV      .L2X    A3,B4             ; |652| 

           LDW     .D1T1   *+A3[A4],A3       ; |652| 
||         MV      .L1     A3,A5             ; |652| 
||         LDW     .D2T2   *+B4[B5],B4       ; |652| 

           NOP             3
           LDW     .D1T1   *+A5[A31],A5      ; |652| 
           MPYLH   .M2X    B4,A3,B5          ; |652| 

           CALL    .S1     __divu            ; |652| 
||         MPYLH   .M1X    A3,B4,A4          ; |652| 

           ADDKPC  .S2     RL47,B3,0         ; |652| 
           ADD     .L1X    B5,A4,A4          ; |652| 

           SHL     .S1     A4,16,A3          ; |652| 
||         MPYU    .M1X    B4,A3,A4          ; |652| 

           SHL     .S2X    A5,3,B4           ; |652| 
           ADD     .L1     A4,A3,A4          ; |652| 
RL47:      ; CALL OCCURS {__divu}            ; |652| 
           LDW     .D2T1   *+SP(12),A3       ; |652| 
           NOP             2
           MVK     .S1     129,A30           ; |652| 
           MVK     .S1     121,A29           ; |652| 

           LDW     .D1T1   *+A3[A30],A3      ; |652| 
||         MV      .S1     A3,A7             ; |652| 
||         MV      .L1     A3,A6             ; |652| 

           MVK     .S1     125,A28           ; |652| 
           LDW     .D1T1   *+A7[A28],A5      ; |652| 
           LDW     .D1T1   *+A6[A29],A6      ; |652| 
           NOP             1
           SHL     .S1     A3,3,A3           ; |652| 
           MPYLH   .M1     A3,A4,A8          ; |652| 
           MPYLH   .M1     A4,A3,A7          ; |652| 
           MPYLH   .M1     A5,A6,A16         ; |652| 
           MPYLH   .M1     A6,A5,A9          ; |652| 

           ADD     .L1     A8,A7,A3          ; |652| 
||         MPYU    .M1     A3,A4,A4          ; |652| 

           ADD     .L1     A16,A9,A5         ; |652| 
||         SHL     .S1     A3,16,A3          ; |652| 
||         MPYU    .M1     A5,A6,A6          ; |652| 

           SHL     .S1     A5,16,A5          ; |652| 

           ADD     .L1     A6,A5,A5          ; |652| 
||         ADD     .S1     A4,A3,A3          ; |652| 

           CMPEQ   .L1     A3,A5,A0          ; |652| 
   [ A0]   BNOP    .S1     L100,3            ; |652| 
           MVKL    .S1     SL6+0,A4          ; |652| 
           MVKH    .S1     SL6+0,A4          ; |652| 
           ; BRANCHCC OCCURS {L100}          ; |652| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |652| 
           ADDKPC  .S2     RL48,B3,4         ; |652| 
RL48:      ; CALL OCCURS {__abort_msg}       ; |652| 
;** --------------------------------------------------------------------------*
L100:    
	.dwpsn	"vportcap.c",654,14
;----------------------------------------------------------------------
; 654 | assert(((chan->yPitch * chan->numLines) / (chan->yThrld << 3))         
; 655 |     *(chan->yThrld << 3) == (chan->yPitch * chan->numLines));          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |654| 
           NOP             1
           MVK     .S2     123,B5            ; |654| 
           MVK     .S1     121,A4            ; |654| 
           MVK     .S1     129,A31           ; |654| 
           MV      .L2X    A3,B4             ; |654| 

           LDW     .D1T1   *+A3[A4],A3       ; |654| 
||         MV      .L1     A3,A5             ; |654| 
||         LDW     .D2T2   *+B4[B5],B4       ; |654| 

           NOP             3
           LDW     .D1T1   *+A5[A31],A5      ; |654| 
           MPYLH   .M2X    B4,A3,B5          ; |654| 

           CALL    .S1     __divu            ; |654| 
||         MPYLH   .M1X    A3,B4,A4          ; |654| 

           ADDKPC  .S2     RL49,B3,0         ; |654| 
           ADD     .L1X    B5,A4,A4          ; |654| 

           SHL     .S1     A4,16,A3          ; |654| 
||         MPYU    .M1X    B4,A3,A4          ; |654| 

           SHL     .S2X    A5,3,B4           ; |654| 
           ADD     .L1     A4,A3,A4          ; |654| 
RL49:      ; CALL OCCURS {__divu}            ; |654| 
           LDW     .D2T1   *+SP(12),A3       ; |654| 
           NOP             1
           MVK     .S1     129,A30           ; |654| 
           MVK     .S1     121,A29           ; |654| 
           MVK     .S1     123,A28           ; |654| 
           LDW     .D1T1   *+A3[A30],A6      ; |654| 
           MV      .L1     A3,A7             ; |654| 

           MV      .L1     A3,A8             ; |654| 
||         LDW     .D1T1   *+A7[A29],A5      ; |654| 

           LDW     .D1T1   *+A8[A28],A3      ; |654| 
           NOP             1
           SHL     .S1     A6,3,A6           ; |654| 
           MPYLH   .M1     A4,A6,A7          ; |654| 
           MPYLH   .M1     A6,A4,A8          ; |654| 
           MPYLH   .M1     A3,A5,A16         ; |654| 
           MPYLH   .M1     A5,A3,A9          ; |654| 

           ADD     .L1     A8,A7,A4          ; |654| 
||         MPYU    .M1     A6,A4,A6          ; |654| 

           ADD     .L1     A16,A9,A4         ; |654| 
||         SHL     .S1     A4,16,A3          ; |654| 
||         MPYU    .M1     A3,A5,A5          ; |654| 

           SHL     .S1     A4,16,A4          ; |654| 

           ADD     .L1     A5,A4,A5          ; |654| 
||         ADD     .S1     A6,A3,A3          ; |654| 

           CMPEQ   .L1     A3,A5,A0          ; |654| 
   [ A0]   BNOP    .S1     L101,3            ; |654| 
           MVKL    .S1     SL7+0,A4          ; |654| 
           MVKH    .S1     SL7+0,A4          ; |654| 
           ; BRANCHCC OCCURS {L101}          ; |654| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |654| 
           ADDKPC  .S2     RL50,B3,4         ; |654| 
RL50:      ; CALL OCCURS {__abort_msg}       ; |654| 
;** --------------------------------------------------------------------------*
L101:    
	.dwpsn	"vportcap.c",656,14
;----------------------------------------------------------------------
; 656 | chan->numEventsFld1 =                                                  
; 657 |     chan->yPitch * chan->numLinesFld1 / (chan->yThrld << 3);           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A5       ; |656| 
           NOP             1
           MVK     .S1     125,A6            ; |656| 
           MVK     .S1     121,A31           ; |656| 
           MVK     .S1     129,A30           ; |656| 

           MV      .L1     A5,A4             ; |656| 
||         LDW     .D1T1   *+A5[A6],A6       ; |656| 

           LDW     .D1T1   *+A4[A31],A5      ; |656| 
||         MV      .L1     A5,A3             ; |656| 

           NOP             3
           LDW     .D1T1   *+A3[A30],A7      ; |656| 

           CALL    .S1     __divu            ; |656| 
||         MPYLH   .M1     A6,A5,A4          ; |656| 

           MPYLH   .M1     A5,A6,A3          ; |656| 
           MPYU    .M1     A6,A5,A29         ; |656| 
           ADD     .L1     A4,A3,A3          ; |656| 

           SHL     .S1     A3,16,A3          ; |656| 
||         SHL     .S2X    A7,3,B4           ; |656| 

           ADDKPC  .S2     RL51,B3,0         ; |656| 
||         ADD     .L1     A29,A3,A4         ; |656| 

RL51:      ; CALL OCCURS {__divu}            ; |656| 
           LDW     .D2T2   *+SP(12),B4       ; |656| 
           NOP             3
           MVK     .S2     128,B5            ; |656| 
           STW     .D2T1   A4,*+B4[B5]       ; |656| 
           NOP             2
	.dwpsn	"vportcap.c",658,14
;----------------------------------------------------------------------
; 658 | chan->numEvents =                                                      
; 659 |     chan->yPitch * chan->numLines / (chan->yThrld << 3);               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |658| 
           NOP             1
           MVK     .S1     121,A5            ; |658| 
           MVK     .S2     123,B5            ; |658| 
           MVK     .S1     129,A28           ; |658| 
           MV      .L2X    A3,B4             ; |658| 

           LDW     .D1T1   *+A3[A5],A3       ; |658| 
||         MV      .L1     A3,A4             ; |658| 
||         LDW     .D2T2   *+B4[B5],B4       ; |658| 

           NOP             1
           LDW     .D1T1   *+A4[A28],A4      ; |658| 
           NOP             2
           MPYLH   .M2X    B4,A3,B5          ; |658| 

           CALL    .S1     __divu            ; |658| 
||         MPYLH   .M1X    A3,B4,A5          ; |658| 

           MPYU    .M1X    B4,A3,A4          ; |658| 
||         SHL     .S2X    A4,3,B4           ; |658| 

           ADDKPC  .S2     RL52,B3,0         ; |658| 
           ADD     .L1X    B5,A5,A5          ; |658| 
           SHL     .S1     A5,16,A3          ; |658| 
           ADD     .L1     A4,A3,A4          ; |658| 
RL52:      ; CALL OCCURS {__divu}            ; |658| 
           LDW     .D2T2   *+SP(12),B4       ; |658| 
           NOP             3
           MVK     .S2     127,B31           ; |658| 
           STW     .D2T1   A4,*+B4[B31]      ; |658| 
           NOP             2
	.dwpsn	"vportcap.c",660,14
;----------------------------------------------------------------------
; 660 | if(params->fldOp != VPORT_FLDOP_FRAME) {                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |660| 
           NOP             4
           LDW     .D1T1   *+A3(4),A3        ; |660| 
           NOP             4
           CMPEQ   .L1     A3,4,A0           ; |660| 
   [ A0]   BNOP    .S1     L102,5            ; |660| 
           ; BRANCHCC OCCURS {L102}          ; |660| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",661,18
;----------------------------------------------------------------------
; 661 | chan->interlaced = FALSE;                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |661| 
           ZERO    .L2     B5                ; |661| 
           NOP             2
           MVK     .S2     231,B6            ; |661| 
           STH     .D2T2   B5,*+B4[B6]       ; |661| 
;** --------------------------------------------------------------------------*
L102:    
	.dwpsn	"vportcap.c",664,13
;----------------------------------------------------------------------
; 664 | chan->mergeFlds = params->mergeFlds;                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |664| 
           NOP             1
           LDW     .D2T1   *+SP(12),A4       ; |664| 
           NOP             2
           ADDK    .S1     68,A3             ; |664| 
           LDHU    .D1T1   *A3,A3            ; |664| 
           NOP             3
           ADDK    .S1     460,A4            ; |664| 
           STH     .D1T1   A3,*A4            ; |664| 
           NOP             2
	.dwpsn	"vportcap.c",665,13
;----------------------------------------------------------------------
; 665 | chan->cThrld = (chan->yThrld + 1) >> 1;                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |665| 
           NOP             2
           MVK     .S1     129,A4            ; |665| 
           MVK     .S2     130,B31           ; |665| 
           LDW     .D1T2   *+A3[A4],B5       ; |665| 
           NOP             3
           MV      .L2X    A3,B4             ; |665| 
           ADD     .L2     1,B5,B6           ; |665| 
           SHRU    .S2     B6,1,B6           ; |665| 
           STW     .D2T2   B6,*+B4[B31]      ; |665| 
           NOP             2
	.dwpsn	"vportcap.c",666,13
;----------------------------------------------------------------------
; 666 | base[_VP_VCAEVTCT_OFFSETA] = VP_VCAEVTCT_RMK(                          
; 667 |     (chan->numEvents-chan->numEventsFld1), chan->numEventsFld1 );      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |666| 
           MVK     .S2     128,B5            ; |666| 
           MVK     .S1     127,A5            ; |666| 
           LDW     .D2T2   *+SP(36),B6       ; |666| 
           ZERO    .L2     B30               ; |666| 
           MV      .L2X    A3,B4             ; |666| 

           LDW     .D1T1   *+A3[A5],A3       ; |666| 
||         MV      .L1     A3,A4             ; |666| 
||         LDW     .D2T2   *+B4[B5],B5       ; |666| 

           MVK     .S1     128,A31           ; |666| 
           LDW     .D1T1   *+A4[A31],A4      ; |666| 
           NOP             1
           MVKH    .S2     0xfff0000,B30     ; |666| 
           SUB     .L1X    A3,B5,A3          ; |666| 
           SHL     .S1     A3,16,A3          ; |666| 

           AND     .L1X    B30,A3,A4         ; |666| 
||         EXTU    .S1     A4,20,20,A3       ; |666| 

           OR      .L1     A3,A4,A3          ; |666| 
           STW     .D2T1   A3,*+B6(32)       ; |666| 
           NOP             2
	.dwpsn	"vportcap.c",668,13
;----------------------------------------------------------------------
; 668 | base[_VP_VCATHRLD_OFFSETA] = VP_VCATHRLD_RMK(chan->yThrld,chan->yThrld)
;     | ;                                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |668| 
           MVK     .S1     129,A5            ; |668| 
           LDW     .D2T2   *+SP(36),B5       ; |668| 
           ZERO    .L2     B4                ; |668| 
           MVKH    .S2     0x3ff0000,B4      ; |668| 

           LDW     .D1T1   *+A3[A5],A3       ; |668| 
||         MV      .L1     A3,A4             ; |668| 

           LDW     .D1T1   *+A4[A5],A4       ; |668| 
           NOP             3
           SHL     .S1     A3,16,A3          ; |668| 
           EXTU    .S1     A4,22,22,A4       ; |668| 
           AND     .L2X    B4,A3,B4          ; |668| 
           OR      .L2X    A4,B4,B4          ; |668| 
           STW     .D2T2   B4,*+B5(28)       ; |668| 
           NOP             2
	.dwpsn	"vportcap.c",669,6
;----------------------------------------------------------------------
; 669 | } else { /* raw capture */                                             
;----------------------------------------------------------------------
           BNOP    .S1     L113,5            ; |669| 
           ; BRANCH OCCURS {L113}            ; |669| 
;** --------------------------------------------------------------------------*
L103:    

DW$234	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$235	.dwtag  DW_TAG_variable, DW_AT_name("paramsRaw"), DW_AT_symbol_name("_paramsRaw")
	.dwattr DW$235, DW_AT_type(*DW$T$223)
	.dwattr DW$235, DW_AT_location[DW_OP_breg31 56]
DW$236	.dwtag  DW_TAG_variable, DW_AT_name("totalNumPixels"), DW_AT_symbol_name("_totalNumPixels")
	.dwattr DW$236, DW_AT_type(*DW$T$22)
	.dwattr DW$236, DW_AT_location[DW_OP_breg31 60]
DW$237	.dwtag  DW_TAG_variable, DW_AT_name("totalBytesPerFrame"), DW_AT_symbol_name("_totalBytesPerFrame")
	.dwattr DW$237, DW_AT_type(*DW$T$22)
	.dwattr DW$237, DW_AT_location[DW_OP_breg31 64]
	.dwpsn	"vportcap.c",670,30
;----------------------------------------------------------------------
; 670 | VPORTCAP_ParamsRaw *paramsRaw = (VPORTCAP_ParamsRaw *)params;          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |670| 
           NOP             4
           STW     .D2T2   B4,*+SP(56)       ; |670| 
           NOP             2
	.dwpsn	"vportcap.c",671,14
;----------------------------------------------------------------------
; 671 | Int totalNumPixels = paramsRaw->lineSz * paramsRaw->numLines;          
; 672 | Int totalBytesPerFrame;                                                
;----------------------------------------------------------------------
           MV      .L1X    B4,A3

           LDHU    .D2T2   *+B4(8),B4        ; |671| 
||         LDHU    .D1T1   *+A3(10),A3       ; |671| 

           NOP             4
           MPYU    .M2X    A3,B4,B4          ; |671| 
           NOP             1
           STW     .D2T2   B4,*+SP(60)       ; |671| 
           NOP             2
	.dwpsn	"vportcap.c",675,10
;----------------------------------------------------------------------
; 675 | assert(totalNumPixels < 2^24);                                         
;----------------------------------------------------------------------

           CMPLT   .L2     B4,2,B4           ; |675| 
||         MVK     .S2     24,B5             ; |675| 

           XOR     .L2     B5,B4,B0          ; |675| 
   [ B0]   BNOP    .S1     L104,3            ; |675| 
           MVKL    .S1     SL8+0,A4          ; |675| 
           MVKH    .S1     SL8+0,A4          ; |675| 
           ; BRANCHCC OCCURS {L104}          ; |675| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |675| 
           ADDKPC  .S2     RL53,B3,4         ; |675| 
RL53:      ; CALL OCCURS {__abort_msg}       ; |675| 
;** --------------------------------------------------------------------------*
L104:    
	.dwpsn	"vportcap.c",678,10
;----------------------------------------------------------------------
; 678 | vcCtl = VP_VCACTL_RMK(0, 1, 0, 0, 0, 0, 0, 0, 0,                       
; 679 |     paramsRaw->bpk10Bit, 0, 0, 0, 0, 1, 0,0, 0, paramsRaw->cmode);     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(56),A4       ; |678| 
           NOP             1
           MVK     .S2     24576,B4          ; |678| 
           MVKL    .S2     0x40000080,B31    ; |678| 
           MVKH    .S2     0x40000080,B31    ; |678| 
           MV      .L1     A4,A3             ; |678| 
           LDW     .D1T1   *A3,A3            ; |678| 
           LDW     .D1T1   *+A4(16),A4       ; |678| 
           NOP             4

           AND     .L1     7,A3,A3           ; |678| 
||         SHL     .S2X    A4,13,B5          ; |678| 

           AND     .L2     B4,B5,B5          ; |678| 
           OR      .L2X    A3,B5,B5          ; |678| 
           OR      .L2     B31,B5,B4         ; |678| 
           STW     .D2T2   B4,*+SP(16)       ; |678| 
           NOP             2
	.dwpsn	"vportcap.c",682,10
;----------------------------------------------------------------------
; 682 | base[_VP_VCACTL_OFFSETA] |=                                            
; 683 |   VP_VCACTL_RSTCH_RESET << _VP_VCACTL_RSTCH_SHIFT;                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(36),A3       ; |682| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |682| 
           NOP             4
           SET     .S1     A4,31,31,A4       ; |682| 
           STW     .D1T1   A4,*+A3(4)        ; |682| 
           NOP             2
	.dwpsn	"vportcap.c",684,10
;----------------------------------------------------------------------
; 684 | _delay(2000);                                                          
;----------------------------------------------------------------------
           CALL    .S1     __delay           ; |684| 
           ADDKPC  .S2     RL54,B3,3         ; |684| 
           MVK     .S1     0x7d0,A4          ; |684| 
RL54:      ; CALL OCCURS {__delay}           ; |684| 
	.dwpsn	"vportcap.c",685,10
;----------------------------------------------------------------------
; 685 | base[_VP_VCACTL_OFFSETA]   = vcCtl;                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |685| 
           LDW     .D2T1   *+SP(36),A3       ; |685| 
           NOP             4
           STW     .D1T2   B4,*+A3(4)        ; |685| 
           NOP             2
	.dwpsn	"vportcap.c",686,10
;----------------------------------------------------------------------
; 686 | base[_VP_VCASTRT1_OFFSETA]                                             
; 687 |     = VP_VCASTRT1_RMK(1, paramsRaw->startupSyncEnable,                 
; 688 |                       paramsRaw->blankperiod);                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |686| 
           NOP             2
           LDW     .D2T2   *+SP(36),B31      ; |686| 
           MVKL    .S1     0x8000,A31        ; |686| 

           LDHU    .D2T2   *+B4(4),B4        ; |686| 
||         MV      .L1X    B4,A3             ; |686| 

           NOP             1
           LDHU    .D1T1   *+A3(6),A4        ; |686| 
           NOP             2
           SHL     .S2     B4,15,B5          ; |686| 
           MVKH    .S1     0x8000,A31        ; |686| 

           AND     .L1X    A31,B5,A4         ; |686| 
||         EXTU    .S1     A4,20,20,A3       ; |686| 

           OR      .L1     A3,A4,A3          ; |686| 
           SET     .S1     A3,16,16,A3       ; |686| 
           STW     .D2T1   A3,*+B31(8)       ; |686| 
           NOP             2
	.dwpsn	"vportcap.c",690,10
;----------------------------------------------------------------------
; 690 | base[_VP_VCASTOP1_OFFSETA]                                             
; 691 |  = VP_VCASTOP1_RMK((totalNumPixels >> 12), (totalNumPixels & 0xFFF));  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(60),B5       ; |690| 
           NOP             2
           LDW     .D2T2   *+SP(36),B30      ; |690| 
           ZERO    .L1     A3                ; |690| 

           SHR     .S2     B5,12,B5          ; |690| 
||         MV      .L2     B5,B4             ; |690| 

           SHL     .S2     B5,16,B6          ; |690| 
           MVKH    .S1     0xfff0000,A3      ; |690| 
           AND     .L1X    A3,B6,A3          ; |690| 
           EXTU    .S2     B4,20,20,B4       ; |690| 
           OR      .L2X    B4,A3,B4          ; |690| 
           STW     .D2T2   B4,*+B30(12)      ; |690| 
           NOP             2
	.dwpsn	"vportcap.c",693,10
;----------------------------------------------------------------------
; 693 | chan->resmpl = FALSE;                                                  
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |693| 
           NOP             3
           ZERO    .L1     A4                ; |693| 
           ADDK    .S1     480,A3            ; |693| 
           STH     .D1T1   A4,*A3            ; |693| 
           NOP             2
	.dwpsn	"vportcap.c",694,10
;----------------------------------------------------------------------
; 694 | chan->scale = FALSE;                                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |694| 
           NOP             2
           ZERO    .L2     B4                ; |694| 
           MVK     .S1     239,A4            ; |694| 
           STH     .D1T2   B4,*+A3[A4]       ; |694| 
           NOP             2
	.dwpsn	"vportcap.c",696,13
;----------------------------------------------------------------------
; 696 | if( paramsRaw->cmode == VPORT_MODE_RAW_16BIT ) {                       
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(56),A3       ; |696| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |696| 
           NOP             4
           CMPEQ   .L1     A3,6,A0           ; |696| 
   [!A0]   BNOP    .S1     L105,5            ; |696| 
           ; BRANCHCC OCCURS {L105}          ; |696| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",697,17
;----------------------------------------------------------------------
; 697 | totalBytesPerFrame = paramsRaw->lineSz * 2 * paramsRaw->numLines;      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |697| 
           NOP             4

           LDHU    .D2T2   *+B4(8),B4        ; |697| 
||         MV      .L1X    B4,A3             ; |697| 

           LDHU    .D1T1   *+A3(10),A3       ; |697| 
           NOP             3
           ADD     .L2     B4,B4,B4          ; |697| 
           MPYU    .M2X    A3,B4,B31         ; |697| 
           MPYLHU  .M1X    A3,B4,A4          ; |697| 
           NOP             1
           SHL     .S1     A4,16,A3          ; |697| 
           NOP             1
           ADD     .L2X    B31,A3,B4         ; |697| 
           STW     .D2T2   B4,*+SP(64)       ; |697| 
           NOP             2
	.dwpsn	"vportcap.c",698,13
;----------------------------------------------------------------------
; 698 | } else if(paramsRaw->cmode == VPORT_MODE_RAW_20BIT) {                  
;----------------------------------------------------------------------
           BNOP    .S1     L111,5            ; |698| 
           ; BRANCH OCCURS {L111}            ; |698| 
;** --------------------------------------------------------------------------*
L105:    
	.dwpsn	"vportcap.c",698,20
           LDW     .D2T2   *+SP(56),B4       ; |698| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |698| 
           NOP             4
           CMPEQ   .L2     B4,7,B0           ; |698| 
   [!B0]   BNOP    .S1     L106,5            ; |698| 
           ; BRANCHCC OCCURS {L106}          ; |698| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",699,17
;----------------------------------------------------------------------
; 699 | totalBytesPerFrame = paramsRaw->lineSz * 4 * paramsRaw->numLines;
;     |                                                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |699| 
           NOP             4

           LDHU    .D2T2   *+B4(8),B4        ; |699| 
||         MV      .L1X    B4,A3             ; |699| 

           LDHU    .D1T1   *+A3(10),A3       ; |699| 
           NOP             3
           SHL     .S2     B4,2,B4           ; |699| 
           MPYU    .M2X    A3,B4,B31         ; |699| 
           MPYLHU  .M1X    A3,B4,A4          ; |699| 
           NOP             1
           SHL     .S1     A4,16,A3          ; |699| 
           NOP             1
           ADD     .L2X    B31,A3,B4         ; |699| 
           STW     .D2T2   B4,*+SP(64)       ; |699| 
           NOP             2
	.dwpsn	"vportcap.c",700,13
;----------------------------------------------------------------------
; 700 | } else if(paramsRaw->cmode == VPORT_MODE_RAW_10BIT){                   
;----------------------------------------------------------------------
           BNOP    .S1     L111,5            ; |700| 
           ; BRANCH OCCURS {L111}            ; |700| 
;** --------------------------------------------------------------------------*
L106:    
	.dwpsn	"vportcap.c",700,20
           LDW     .D2T2   *+SP(56),B4       ; |700| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |700| 
           NOP             4
           CMPEQ   .L2     B4,3,B0           ; |700| 
   [!B0]   BNOP    .S1     L110,5            ; |700| 
           ; BRANCHCC OCCURS {L110}          ; |700| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",701,14
;----------------------------------------------------------------------
; 701 | if( paramsRaw->bpk10Bit == VPORTCAP_BPK_10BIT_ZERO_EXTENDED            
; 702 |  || paramsRaw->bpk10Bit == VPORTCAP_BPK_10BIT_SIGN_EXTENDED){          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |701| 
           NOP             4
           LDW     .D2T2   *+B4(16),B4       ; |701| 
           NOP             4
           CMPEQ   .L2     B4,0,B0           ; |701| 
   [ B0]   BNOP    .S1     L107,4            ; |701| 
           LDW     .D2T2   *+SP(56),B4       ; |701| 
           ; BRANCHCC OCCURS {L107}          ; |701| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4(16),B4       ; |701| 
           NOP             4
           CMPEQ   .L2     B4,1,B0           ; |701| 
;** --------------------------------------------------------------------------*
L107:    
   [!B0]   BNOP    .S1     L108,5            ; |701| 
           ; BRANCHCC OCCURS {L108}          ; |701| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",704,18
;----------------------------------------------------------------------
; 704 | totalBytesPerFrame = paramsRaw->lineSz * 2 * paramsRaw->numLines;      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |704| 
           NOP             4

           LDHU    .D2T2   *+B4(8),B4        ; |704| 
||         MV      .L1X    B4,A3             ; |704| 

           LDHU    .D1T1   *+A3(10),A3       ; |704| 
           NOP             3
           ADD     .L2     B4,B4,B4          ; |704| 
           MPYU    .M2X    A3,B4,B31         ; |704| 
           MPYLHU  .M1X    A3,B4,A4          ; |704| 
           NOP             1
           SHL     .S1     A4,16,A3          ; |704| 
           NOP             1
           ADD     .L2X    B31,A3,B4         ; |704| 
           STW     .D2T2   B4,*+SP(64)       ; |704| 
           NOP             2
	.dwpsn	"vportcap.c",705,17
;----------------------------------------------------------------------
; 705 | } else { /* dense packing, 3 10-bit pixel takes 4 bytes */             
;----------------------------------------------------------------------
           BNOP    .S1     L111,5            ; |705| 
           ; BRANCH OCCURS {L111}            ; |705| 
;** --------------------------------------------------------------------------*
L108:    
	.dwpsn	"vportcap.c",707,18
;----------------------------------------------------------------------
; 707 | assert((paramsRaw->lineSz * paramsRaw->numLines / 3) * 3 ==            
; 708 |     paramsRaw->lineSz * paramsRaw->numLines );                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |707| 
           NOP             4
           MV      .L1X    B4,A3             ; |707| 

           LDHU    .D1T1   *+A3(10),A3       ; |707| 
||         LDHU    .D2T2   *+B4(8),B4        ; |707| 

           CALL    .S1     __divi            ; |707| 
           ADDKPC  .S2     RL55,B3,2         ; |707| 
           MPYU    .M1X    A3,B4,A4          ; |707| 
           MVK     .L2     0x3,B4            ; |707| 
RL55:      ; CALL OCCURS {__divi}            ; |707| 
           LDW     .D2T1   *+SP(56),A3       ; |707| 
           NOP             4
           MV      .L1     A3,A5             ; |707| 
           LDHU    .D1T1   *+A5(10),A5       ; |707| 
           LDHU    .D1T1   *+A3(8),A3        ; |707| 
           NOP             4
           MPYU    .M1     A5,A3,A3          ; |707| 
           ADDAH   .D1     A4,A4,A31         ; |707| 
           CMPEQ   .L1     A31,A3,A0         ; |707| 
   [ A0]   BNOP    .S1     L109,3            ; |707| 
           MVKL    .S1     SL9+0,A4          ; |707| 
           MVKH    .S1     SL9+0,A4          ; |707| 
           ; BRANCHCC OCCURS {L109}          ; |707| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |707| 
           ADDKPC  .S2     RL56,B3,4         ; |707| 
RL56:      ; CALL OCCURS {__abort_msg}       ; |707| 
;** --------------------------------------------------------------------------*
L109:    
	.dwpsn	"vportcap.c",709,18
;----------------------------------------------------------------------
; 709 | totalBytesPerFrame = paramsRaw->lineSz * 4 * paramsRaw->numLines / 3;
;     |                                                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |709| 
           NOP             4

           LDHU    .D2T2   *+B4(8),B4        ; |709| 
||         MV      .L1X    B4,A3             ; |709| 

           LDHU    .D1T1   *+A3(10),A3       ; |709| 
           NOP             2
           CALL    .S1     __divi            ; |709| 
           SHL     .S2     B4,2,B4           ; |709| 

           MPYU    .M2X    A3,B4,B4          ; |709| 
||         MPYLHU  .M1X    A3,B4,A3          ; |709| 

           ADDKPC  .S2     RL57,B3,0         ; |709| 
           SHL     .S1     A3,16,A3          ; |709| 

           ADD     .L1X    B4,A3,A4          ; |709| 
||         MVK     .L2     0x3,B4            ; |709| 

RL57:      ; CALL OCCURS {__divi}            ; |709| 
           STW     .D2T1   A4,*+SP(64)       ; |709| 
           NOP             2
	.dwpsn	"vportcap.c",712,13
;----------------------------------------------------------------------
; 712 | } else { /* 8-bit raw mode */                                          
;----------------------------------------------------------------------
           BNOP    .S1     L111,5            ; |712| 
           ; BRANCH OCCURS {L111}            ; |712| 
;** --------------------------------------------------------------------------*
L110:    
	.dwpsn	"vportcap.c",713,17
;----------------------------------------------------------------------
; 713 | totalBytesPerFrame = paramsRaw->lineSz * paramsRaw->numLines;          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |713| 
           NOP             4
           MV      .L1X    B4,A3             ; |713| 

           LDHU    .D1T1   *+A3(10),A3       ; |713| 
||         LDHU    .D2T2   *+B4(8),B4        ; |713| 

           NOP             4
           MPYU    .M2X    A3,B4,B4          ; |713| 
           NOP             1
           STW     .D2T2   B4,*+SP(64)       ; |713| 
;** --------------------------------------------------------------------------*
L111:    
	.dwpsn	"vportcap.c",717,10
;----------------------------------------------------------------------
; 717 | chan->yPitch = paramsRaw->thrld << 3;                                  
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(56),A3       ; |717| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |717| 
           MVK     .S2     121,B5            ; |717| 
           LDHU    .D1T1   *+A3(12),A3       ; |717| 
           NOP             4
           SHL     .S1     A3,3,A3           ; |717| 
           STW     .D2T1   A3,*+B4[B5]       ; |717| 
           NOP             2
	.dwpsn	"vportcap.c",718,10
;----------------------------------------------------------------------
; 718 | chan->cPitch = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |718| 
           NOP             2
           ZERO    .L1     A4                ; |718| 
           MVK     .S1     122,A5            ; |718| 
           STW     .D1T1   A4,*+A3[A5]       ; |718| 
           NOP             2
	.dwpsn	"vportcap.c",719,10
;----------------------------------------------------------------------
; 719 | chan->yThrld = paramsRaw->thrld;                                       
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(56),A3       ; |719| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |719| 
           MVK     .S2     129,B5            ; |719| 
           LDHU    .D1T1   *+A3(12),A3       ; |719| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |719| 
           NOP             2
	.dwpsn	"vportcap.c",720,10
;----------------------------------------------------------------------
; 720 | chan->interlaced = FALSE;                                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |720| 
           NOP             2
           ZERO    .L2     B4                ; |720| 
           MVK     .S1     231,A4            ; |720| 
           STH     .D1T2   B4,*+A3[A4]       ; |720| 
           NOP             2
	.dwpsn	"vportcap.c",721,13
;----------------------------------------------------------------------
; 721 | chan->mergeFlds = FALSE;                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |721| 
           NOP             3
           ZERO    .L1     A4                ; |721| 
           ADDK    .S1     460,A3            ; |721| 
           STH     .D1T1   A4,*A3            ; |721| 
           NOP             2
	.dwpsn	"vportcap.c",722,13
;----------------------------------------------------------------------
; 722 | chan->cThrld = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |722| 
           NOP             3
           MVK     .S1     130,A5            ; |722| 
           STW     .D1T1   A4,*+A3[A5]       ; |722| 
           NOP             2
	.dwpsn	"vportcap.c",724,13
;----------------------------------------------------------------------
; 724 | assert(totalBytesPerFrame / chan->yPitch * chan->yPitch == totalBytesPe
;     | rFrame);                                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |724| 
           NOP             1
           LDW     .D2T1   *+SP(64),A4       ; |724| 
           MVK     .S2     121,B4            ; |724| 
           CALL    .S1     __divu            ; |724| 
           LDW     .D2T2   *+B5[B4],B4       ; |724| 
           ADDKPC  .S2     RL58,B3,3         ; |724| 
RL58:      ; CALL OCCURS {__divu}            ; |724| 
           LDW     .D2T1   *+SP(12),A3       ; |724| 
           NOP             3
           MVK     .S1     121,A5            ; |724| 
           LDW     .D1T1   *+A3[A5],A6       ; |724| 
           NOP             4
           MPYLH   .M1     A4,A6,A5          ; |724| 
           MPYLH   .M1     A6,A4,A3          ; |724| 
           LDW     .D2T2   *+SP(64),B4       ; |724| 

           MPYU    .M1     A6,A4,A3          ; |724| 
||         ADD     .L1     A3,A5,A4          ; |724| 

           SHL     .S1     A4,16,A4          ; |724| 
           ADD     .L1     A3,A4,A3          ; |724| 
           MVKL    .S1     SL10+0,A4         ; |724| 
           CMPEQ   .L2X    A3,B4,B0          ; |724| 
   [ B0]   BNOP    .S1     L112,4            ; |724| 
           MVKH    .S1     SL10+0,A4         ; |724| 
           ; BRANCHCC OCCURS {L112}          ; |724| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |724| 
           ADDKPC  .S2     RL59,B3,4         ; |724| 
RL59:      ; CALL OCCURS {__abort_msg}       ; |724| 
;** --------------------------------------------------------------------------*
L112:    
	.dwpsn	"vportcap.c",725,13
;----------------------------------------------------------------------
; 725 | chan->numLines = totalBytesPerFrame / chan->yPitch;                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |725| 
           NOP             1
           LDW     .D2T1   *+SP(64),A4       ; |725| 
           MVK     .S2     121,B4            ; |725| 
           CALL    .S1     __divu            ; |725| 
           LDW     .D2T2   *+B5[B4],B4       ; |725| 
           ADDKPC  .S2     RL60,B3,3         ; |725| 
RL60:      ; CALL OCCURS {__divu}            ; |725| 
           LDW     .D2T2   *+SP(12),B5       ; |725| 
           NOP             3
           MVK     .S2     123,B4            ; |725| 
           STW     .D2T1   A4,*+B5[B4]       ; |725| 
           NOP             2
	.dwpsn	"vportcap.c",726,13
;----------------------------------------------------------------------
; 726 | chan->numEvents = chan->numLines;                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |726| 
           NOP             2
           MVK     .S1     123,A3            ; |726| 
           MVK     .S2     127,B4            ; |726| 
           LDW     .D1T1   *+A4[A3],A3       ; |726| 
           NOP             3
           MV      .L2X    A4,B5             ; |726| 
           STW     .D2T1   A3,*+B5[B4]       ; |726| 
           NOP             2
	.dwpsn	"vportcap.c",727,13
;----------------------------------------------------------------------
; 727 | base[_VP_VCATHRLD_OFFSETA] = VP_VCATHRLD_RMK(chan->yThrld,chan->yThrld)
;     | ;                                                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |727| 
           MVK     .S2     129,B5            ; |727| 
           MVK     .S1     129,A4            ; |727| 
           LDW     .D2T2   *+SP(36),B31      ; |727| 
           ZERO    .L1     A31               ; |727| 
           LDW     .D2T2   *+B4[B5],B5       ; |727| 
           MV      .L1X    B4,A3             ; |727| 
           LDW     .D1T1   *+A3[A4],A4       ; |727| 
           NOP             2
           SHL     .S2     B5,16,B5          ; |727| 
           MVKH    .S1     0x3ff0000,A31     ; |727| 

           AND     .L1X    A31,B5,A4         ; |727| 
||         EXTU    .S1     A4,22,22,A3       ; |727| 

           OR      .L1     A3,A4,A3          ; |727| 
           STW     .D2T1   A3,*+B31(28)      ; |727| 
           NOP             1
	.dwendtag DW$234

;** --------------------------------------------------------------------------*
L113:    
	.dwpsn	"vportcap.c",731,9
;----------------------------------------------------------------------
; 731 | chan->status|=_VPORT_CFGED;                                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |731| 
           NOP             4
           LDW     .D2T2   *B5,B4            ; |731| 
           NOP             4
           OR      .L2     2,B4,B4           ; |731| 
           STW     .D2T2   B4,*B5            ; |731| 
           NOP             2
	.dwpsn	"vportcap.c",732,9
;----------------------------------------------------------------------
; 732 | retVal = IOM_COMPLETED;                                                
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |732| 
           STW     .D2T2   B4,*+SP(40)       ; |732| 
;** --------------------------------------------------------------------------*
L114:    
	.dwpsn	"vportcap.c",734,5
;----------------------------------------------------------------------
; 734 | return retVal;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(40),A4       ; |734| 
           NOP             4
	.dwpsn	"vportcap.c",736,1
           LDW     .D2T2   *++SP(72),B3      ; |736| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |736| 
           ; BRANCH OCCURS {B3}              ; |736| 
	.dwattr DW$218, DW_AT_end_file("vportcap.c")
	.dwattr DW$218, DW_AT_end_line(0x2e0)
	.dwattr DW$218, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$218

	.sect	".text"

DW$238	.dwtag  DW_TAG_subprogram, DW_AT_name("_configChan"), DW_AT_symbol_name("__configChan")
	.dwattr DW$238, DW_AT_low_pc(__configChan)
	.dwattr DW$238, DW_AT_high_pc(0x00)
	.dwattr DW$238, DW_AT_begin_file("vportcap.c")
	.dwattr DW$238, DW_AT_begin_line(0x2e7)
	.dwattr DW$238, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",744,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 743 | static Int _configChan(Ptr chanp, Ptr args)                            
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __configChan                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                  *
;******************************************************************************
__configChan:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(16)      ; |744| 
           NOP             2
	.dwcfa	0x0e, 16
	.dwcfa	0x80, 19, 0
DW$239	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$239, DW_AT_type(*DW$T$37)
	.dwattr DW$239, DW_AT_location[DW_OP_reg4]
DW$240	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$240, DW_AT_type(*DW$T$37)
	.dwattr DW$240, DW_AT_location[DW_OP_reg20]
DW$241	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$241, DW_AT_type(*DW$T$37)
	.dwattr DW$241, DW_AT_location[DW_OP_breg31 4]
DW$242	.dwtag  DW_TAG_variable, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$242, DW_AT_type(*DW$T$37)
	.dwattr DW$242, DW_AT_location[DW_OP_breg31 8]
DW$243	.dwtag  DW_TAG_variable, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$243, DW_AT_type(*DW$T$161)
	.dwattr DW$243, DW_AT_location[DW_OP_breg31 12]
           STW     .D2T2   B4,*+SP(8)        ; |744| 
           STW     .D2T1   A4,*+SP(4)        ; |744| 
           NOP             2
	.dwpsn	"vportcap.c",745,24
;----------------------------------------------------------------------
; 745 | VPORTCAP_Params*   params = (VPORTCAP_Params*)args;                    
;----------------------------------------------------------------------
           STW     .D2T2   B4,*+SP(12)       ; |745| 
           NOP             2
	.dwpsn	"vportcap.c",750,5
;----------------------------------------------------------------------
; 750 | _configCh(chanp, params);                                              
;----------------------------------------------------------------------
           CALL    .S1     __configCh        ; |750| 
           ADDKPC  .S2     RL61,B3,4         ; |750| 
RL61:      ; CALL OCCURS {__configCh}        ; |750| 
	.dwpsn	"vportcap.c",753,5
;----------------------------------------------------------------------
; 753 | _configTransfer(chanp, params);                                        
;----------------------------------------------------------------------

           CALL    .S1     __configTransfer  ; |753| 
||         LDW     .D2T1   *+SP(4),A4        ; |753| 

           LDW     .D2T2   *+SP(12),B4       ; |753| 
           ADDKPC  .S2     RL62,B3,3         ; |753| 
RL62:      ; CALL OCCURS {__configTransfer}  ; |753| 
	.dwpsn	"vportcap.c",754,5
;----------------------------------------------------------------------
; 754 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |754| 
	.dwpsn	"vportcap.c",755,1
           LDW     .D2T2   *++SP(16),B3      ; |755| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |755| 
           ; BRANCH OCCURS {B3}              ; |755| 
	.dwattr DW$238, DW_AT_end_file("vportcap.c")
	.dwattr DW$238, DW_AT_end_line(0x2f3)
	.dwattr DW$238, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$238

	.sect	".text"

DW$244	.dwtag  DW_TAG_subprogram, DW_AT_name("_configPort"), DW_AT_symbol_name("__configPort")
	.dwattr DW$244, DW_AT_low_pc(__configPort)
	.dwattr DW$244, DW_AT_high_pc(0x00)
	.dwattr DW$244, DW_AT_begin_file("vportcap.c")
	.dwattr DW$244, DW_AT_begin_line(0x2fa)
	.dwattr DW$244, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",763,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 762 | static Int _configPort(Ptr chanp, Ptr args)                            
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __configPort                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                  *
;******************************************************************************
__configPort:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |763| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$245	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$245, DW_AT_type(*DW$T$37)
	.dwattr DW$245, DW_AT_location[DW_OP_reg4]
DW$246	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$246, DW_AT_type(*DW$T$37)
	.dwattr DW$246, DW_AT_location[DW_OP_reg20]
DW$247	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$247, DW_AT_type(*DW$T$37)
	.dwattr DW$247, DW_AT_location[DW_OP_breg31 4]
DW$248	.dwtag  DW_TAG_variable, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$248, DW_AT_type(*DW$T$37)
	.dwattr DW$248, DW_AT_location[DW_OP_breg31 8]
DW$249	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$249, DW_AT_type(*DW$T$221)
	.dwattr DW$249, DW_AT_location[DW_OP_breg31 12]
DW$250	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$250, DW_AT_type(*DW$T$168)
	.dwattr DW$250, DW_AT_location[DW_OP_breg31 16]
DW$251	.dwtag  DW_TAG_variable, DW_AT_name("portParams"), DW_AT_symbol_name("_portParams")
	.dwattr DW$251, DW_AT_type(*DW$T$225)
	.dwattr DW$251, DW_AT_location[DW_OP_breg31 20]

           STW     .D2T2   B4,*+SP(8)        ; |763| 
||         MV      .L2X    A4,B5             ; |763| 

           STW     .D2T2   B5,*+SP(4)        ; |763| 
           NOP             2
	.dwpsn	"vportcap.c",764,14
;----------------------------------------------------------------------
; 764 | PortObj* port = (PortObj *)chanp;                                      
;----------------------------------------------------------------------
           MV      .L2     B5,B4
           STW     .D2T2   B4,*+SP(12)       ; |764| 
           NOP             2
	.dwpsn	"vportcap.c",765,19
;----------------------------------------------------------------------
; 765 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T1   *+A3(4),A3        ; |765| 
           NOP             4
           STW     .D2T1   A3,*+SP(16)       ; |765| 
           NOP             2
	.dwpsn	"vportcap.c",767,23
;----------------------------------------------------------------------
; 767 | VPORT_PortParams* portParams = (VPORT_PortParams*)args;                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |767| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |767| 
           NOP             2
	.dwpsn	"vportcap.c",771,5
;----------------------------------------------------------------------
; 771 | base[_VP_PCR_OFFSET] |= VP_PCR_PEREN_ENABLE << _VP_PCR_PEREN_SHIFT;    
;----------------------------------------------------------------------
           LDW     .D1T1   *+A3(4),A4        ; |771| 
           NOP             4
           OR      .L1     4,A4,A4           ; |771| 
           STW     .D1T1   A4,*+A3(4)        ; |771| 
           NOP             2
	.dwpsn	"vportcap.c",774,5
;----------------------------------------------------------------------
; 774 | base[_VP_VPCTL_OFFSET] |=                                              
; 775 |     VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |774| 
           NOP             4
           ADDAD   .D2     B4,24,B4          ; |774| 
           LDW     .D2T2   *B4,B5            ; |774| 
           NOP             4
           SET     .S2     B5,15,15,B5       ; |774| 
           STW     .D2T2   B5,*B4            ; |774| 
           NOP             2
	.dwpsn	"vportcap.c",776,5
;----------------------------------------------------------------------
; 776 | while(base[_VP_VPCTL_OFFSET] & (VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST
;     | _SHIFT));                                                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |776| 
           NOP             3
           MVK     .S1     48,A4             ; |776| 
           LDW     .D1T1   *+A3[A4],A3       ; |776| 
           NOP             4
           EXTU    .S1     A3,16,31,A0       ; |776| 
   [!A0]   BNOP    .S1     L116,5            ; |776| 
           ; BRANCHCC OCCURS {L116}          ; |776| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L115:    
DW$L$__configPort$2$B:
           LDW     .D2T2   *+SP(16),B4       ; |776| 
           NOP             3
           MVK     .S2     48,B5             ; |776| 
           LDW     .D2T2   *+B4[B5],B4       ; |776| 
           NOP             4
           EXTU    .S2     B4,16,31,B0       ; |776| 
   [ B0]   BNOP    .S1     L115,5            ; |776| 
           ; BRANCHCC OCCURS {L115}          ; |776| 
DW$L$__configPort$2$E:
;** --------------------------------------------------------------------------*
L116:    
	.dwpsn	"vportcap.c",778,5
;----------------------------------------------------------------------
; 778 | base[_VP_VPCTL_OFFSET] = VP_VPCTL_RMK(0,0,0,portParams->vc3Polarity,   
; 779 |     portParams->vc2Polarity,portParams->vc1Polarity,0,0,               
; 780 |     portParams->dualChanEnable);                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |778| 
           NOP             2
           MVK     .S1     32,A6             ; |778| 
           MVK     .S2     64,B5             ; |778| 
           MV      .L1X    B4,A4             ; |778| 
           MV      .L1X    B4,A3             ; |778| 

           LDW     .D2T2   *+B4(12),B4       ; |778| 
||         MV      .L1X    B4,A5             ; |778| 

           LDW     .D1T1   *+A5(8),A7        ; |778| 
           LDW     .D1T1   *+A3(4),A3        ; |778| 
           LDHU    .D1T1   *A4,A4            ; |778| 
           MVK     .S1     16,A5             ; |778| 
           SHL     .S2     B4,6,B4           ; |778| 

           LDW     .D2T2   *+SP(16),B5       ; |778| 
||         SHL     .S1     A7,5,A7           ; |778| 
||         AND     .L2     B5,B4,B4          ; |778| 

           SHL     .S1     A3,4,A3           ; |778| 
||         AND     .L1     A6,A7,A6          ; |778| 

           OR      .L1X    A6,B4,A5          ; |778| 
||         AND     .S1     A5,A3,A3          ; |778| 

           OR      .L1     A3,A5,A4          ; |778| 
||         AND     .S1     1,A4,A3           ; |778| 

           MVK     .S2     48,B4             ; |778| 
||         OR      .L1     A3,A4,A3          ; |778| 

           STW     .D2T1   A3,*+B5[B4]       ; |778| 
           NOP             2
	.dwpsn	"vportcap.c",783,5
;----------------------------------------------------------------------
; 783 | base[_VP_VPCTL_OFFSET] |= (VP_VPCTL_VPHLT_CLEAR << _VP_VPCTL_VPHLT_SHIF
;     | T);                                                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |783| 
           NOP             4
           ADDAD   .D2     B4,24,B4          ; |783| 
           LDW     .D2T2   *B4,B5            ; |783| 
           NOP             4
           SET     .S2     B5,14,14,B5       ; |783| 
           STW     .D2T2   B5,*B4            ; |783| 
           NOP             2
	.dwpsn	"vportcap.c",784,5
;----------------------------------------------------------------------
; 784 | port->chanObj[0].edcFxns = portParams->edcTbl[0];                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |784| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |784| 
           MVK     .S2     137,B5            ; |784| 
           LDW     .D1T1   *+A3(16),A3       ; |784| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |784| 
           NOP             2
	.dwpsn	"vportcap.c",785,5
;----------------------------------------------------------------------
; 785 | port->chanObj[1].edcFxns = portParams->edcTbl[1];                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |785| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |785| 
           MVK     .S2     288,B5            ; |785| 
           LDW     .D1T1   *+A3(20),A3       ; |785| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |785| 
           NOP             2
	.dwpsn	"vportcap.c",787,5
;----------------------------------------------------------------------
; 787 | IRQ_clear(IRQ_EVT_EDMAINT);                                            
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_clear,A3     ; |787| 
           MVKH    .S1     _IRQ_clear,A3     ; |787| 
           MVK     .L1     0x8,A4            ; |787| 
           CALL    .S2X    A3                ; |787| 
           ADDKPC  .S2     RL63,B3,4         ; |787| 
RL63:      ; CALL OCCURS {_IRQ_clear}        ; |787| 
	.dwpsn	"vportcap.c",788,5
;----------------------------------------------------------------------
; 788 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |788| 
	.dwpsn	"vportcap.c",790,1
           LDW     .D2T2   *++SP(24),B3      ; |790| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |790| 
           ; BRANCH OCCURS {B3}              ; |790| 

DW$252	.dwtag  DW_TAG_loop
	.dwattr DW$252, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L115:1:1301983882")
	.dwattr DW$252, DW_AT_begin_file("vportcap.c")
	.dwattr DW$252, DW_AT_begin_line(0x308)
	.dwattr DW$252, DW_AT_end_line(0x308)
DW$253	.dwtag  DW_TAG_loop_range
	.dwattr DW$253, DW_AT_low_pc(DW$L$__configPort$2$B)
	.dwattr DW$253, DW_AT_high_pc(DW$L$__configPort$2$E)
	.dwendtag DW$252

	.dwattr DW$244, DW_AT_end_file("vportcap.c")
	.dwattr DW$244, DW_AT_end_line(0x316)
	.dwattr DW$244, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$244

	.sect	".text"

DW$254	.dwtag  DW_TAG_subprogram, DW_AT_name("_configTransfer"), DW_AT_symbol_name("__configTransfer")
	.dwattr DW$254, DW_AT_low_pc(__configTransfer)
	.dwattr DW$254, DW_AT_high_pc(0x00)
	.dwattr DW$254, DW_AT_begin_file("vportcap.c")
	.dwattr DW$254, DW_AT_begin_line(0x31d)
	.dwattr DW$254, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",801,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 797 | static Int _configTransfer(                                            
; 798 | Ptr                 chanp,                                             
; 799 | VPORTCAP_Params  *params                                               
; 800 | )                                                                      
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __configTransfer                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 88 Auto + 4 Save = 92 byte                  *
;******************************************************************************
__configTransfer:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(96)      ; |801| 
           NOP             2
	.dwcfa	0x0e, 96
	.dwcfa	0x80, 19, 0
DW$255	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$255, DW_AT_type(*DW$T$37)
	.dwattr DW$255, DW_AT_location[DW_OP_reg4]
DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$256, DW_AT_type(*DW$T$161)
	.dwattr DW$256, DW_AT_location[DW_OP_reg20]
DW$257	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$257, DW_AT_type(*DW$T$37)
	.dwattr DW$257, DW_AT_location[DW_OP_breg31 4]
DW$258	.dwtag  DW_TAG_variable, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$258, DW_AT_type(*DW$T$161)
	.dwattr DW$258, DW_AT_location[DW_OP_breg31 8]
DW$259	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$259, DW_AT_type(*DW$T$149)
	.dwattr DW$259, DW_AT_location[DW_OP_breg31 12]
DW$260	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$260, DW_AT_type(*DW$T$22)
	.dwattr DW$260, DW_AT_location[DW_OP_breg31 16]
DW$261	.dwtag  DW_TAG_variable, DW_AT_name("cfgEdma"), DW_AT_symbol_name("_cfgEdma")
	.dwattr DW$261, DW_AT_type(*DW$T$143)
	.dwattr DW$261, DW_AT_location[DW_OP_breg31 20]
DW$262	.dwtag  DW_TAG_variable, DW_AT_name("thrld"), DW_AT_symbol_name("_thrld")
	.dwattr DW$262, DW_AT_type(*DW$T$22)
	.dwattr DW$262, DW_AT_location[DW_OP_breg31 44]
DW$263	.dwtag  DW_TAG_variable, DW_AT_name("curAddr"), DW_AT_symbol_name("_curAddr")
	.dwattr DW$263, DW_AT_type(*DW$T$209)
	.dwattr DW$263, DW_AT_location[DW_OP_breg31 48]
DW$264	.dwtag  DW_TAG_variable, DW_AT_name("numEdmaChans"), DW_AT_symbol_name("_numEdmaChans")
	.dwattr DW$264, DW_AT_type(*DW$T$22)
	.dwattr DW$264, DW_AT_location[DW_OP_breg31 52]
DW$265	.dwtag  DW_TAG_variable, DW_AT_name("paramsRaw"), DW_AT_symbol_name("_paramsRaw")
	.dwattr DW$265, DW_AT_type(*DW$T$223)
	.dwattr DW$265, DW_AT_location[DW_OP_breg31 56]
DW$266	.dwtag  DW_TAG_variable, DW_AT_name("numFrmBufs"), DW_AT_symbol_name("_numFrmBufs")
	.dwattr DW$266, DW_AT_type(*DW$T$22)
	.dwattr DW$266, DW_AT_location[DW_OP_breg31 60]
DW$267	.dwtag  DW_TAG_variable, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$267, DW_AT_type(*DW$T$22)
	.dwattr DW$267, DW_AT_location[DW_OP_breg31 64]
DW$268	.dwtag  DW_TAG_variable, DW_AT_name("alignment"), DW_AT_symbol_name("_alignment")
	.dwattr DW$268, DW_AT_type(*DW$T$22)
	.dwattr DW$268, DW_AT_location[DW_OP_breg31 68]
DW$269	.dwtag  DW_TAG_variable, DW_AT_name("irqId"), DW_AT_symbol_name("_irqId")
	.dwattr DW$269, DW_AT_type(*DW$T$22)
	.dwattr DW$269, DW_AT_location[DW_OP_breg31 72]
DW$270	.dwtag  DW_TAG_variable, DW_AT_name("edmaPri"), DW_AT_symbol_name("_edmaPri")
	.dwattr DW$270, DW_AT_type(*DW$T$22)
	.dwattr DW$270, DW_AT_location[DW_OP_breg31 76]
           STW     .D2T2   B4,*+SP(8)        ; |801| 
           STW     .D2T1   A4,*+SP(4)        ; |801| 
           NOP             2
	.dwpsn	"vportcap.c",802,21
;----------------------------------------------------------------------
; 802 | _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;                        
; 803 | Int i;                                                                 
; 804 | EDMA_Config  cfgEdma;                                                  
; 805 | Int thrld;                                                             
; 806 | Int8* curAddr;                                                         
; 807 | Int numEdmaChans;                                                      
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |802| 
           NOP             2
	.dwpsn	"vportcap.c",808,25
;----------------------------------------------------------------------
; 808 | VPORTCAP_ParamsRaw *paramsRaw = (VPORTCAP_ParamsRaw *)params;          
; 809 | Int numFrmBufs;                                                        
; 810 | Int segId;                                                             
; 811 | Int alignment;                                                         
; 812 | Int irqId;                                                             
; 813 | Int edmaPri;                                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |808| 
           NOP             4
           STW     .D2T2   B4,*+SP(56)       ; |808| 
           NOP             2
	.dwpsn	"vportcap.c",815,5
;----------------------------------------------------------------------
; 815 | if(!(params->cmode & _VPORT_MASK_RAW)) {                               
;----------------------------------------------------------------------
           LDW     .D2T2   *B4,B4            ; |815| 
           NOP             4
           AND     .L2     2,B4,B0           ; |815| 
   [ B0]   BNOP    .S1     L117,5            ; |815| 
           ; BRANCHCC OCCURS {L117}          ; |815| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",816,9
;----------------------------------------------------------------------
; 816 | numFrmBufs = params->numFrmBufs;                                       
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |816| 
           NOP             4
           LDW     .D1T1   *+A3(60),A3       ; |816| 
           NOP             4
           STW     .D2T1   A3,*+SP(60)       ; |816| 
           NOP             2
	.dwpsn	"vportcap.c",817,9
;----------------------------------------------------------------------
; 817 | segId = params->segId;                                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |817| 
           NOP             4
           LDW     .D1T1   *+A3(72),A3       ; |817| 
           NOP             4
           STW     .D2T1   A3,*+SP(64)       ; |817| 
           NOP             2
	.dwpsn	"vportcap.c",818,9
;----------------------------------------------------------------------
; 818 | alignment = params->alignment;                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |818| 
           NOP             4
           LDW     .D1T1   *+A3(64),A3       ; |818| 
           NOP             4
           STW     .D2T1   A3,*+SP(68)       ; |818| 
           NOP             2
	.dwpsn	"vportcap.c",819,9
;----------------------------------------------------------------------
; 819 | irqId = params->irqId;                                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |819| 
           NOP             4
           LDW     .D1T1   *+A3(80),A3       ; |819| 
           NOP             4
           STW     .D2T1   A3,*+SP(72)       ; |819| 
           NOP             2
	.dwpsn	"vportcap.c",820,9
;----------------------------------------------------------------------
; 820 | edmaPri = params->edmaPri;                                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |820| 
           NOP             4
           LDW     .D2T2   *+B4(76),B4       ; |820| 
           NOP             4
           STW     .D2T2   B4,*+SP(76)       ; |820| 
           NOP             2
	.dwpsn	"vportcap.c",821,5
;----------------------------------------------------------------------
; 821 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L118,5            ; |821| 
           ; BRANCH OCCURS {L118}            ; |821| 
;** --------------------------------------------------------------------------*
L117:    
	.dwpsn	"vportcap.c",822,9
;----------------------------------------------------------------------
; 822 | numFrmBufs = paramsRaw->numFrmBufs;                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(56),A3       ; |822| 
           NOP             4
           LDW     .D1T1   *+A3(20),A3       ; |822| 
           NOP             4
           STW     .D2T1   A3,*+SP(60)       ; |822| 
           NOP             2
	.dwpsn	"vportcap.c",823,9
;----------------------------------------------------------------------
; 823 | segId = paramsRaw->segId;                                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(56),A3       ; |823| 
           NOP             4
           LDW     .D1T1   *+A3(28),A3       ; |823| 
           NOP             4
           STW     .D2T1   A3,*+SP(64)       ; |823| 
           NOP             2
	.dwpsn	"vportcap.c",824,9
;----------------------------------------------------------------------
; 824 | alignment = paramsRaw->alignment;                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(56),A3       ; |824| 
           NOP             4
           LDW     .D1T1   *+A3(24),A3       ; |824| 
           NOP             4
           STW     .D2T1   A3,*+SP(68)       ; |824| 
           NOP             2
	.dwpsn	"vportcap.c",825,9
;----------------------------------------------------------------------
; 825 | irqId = paramsRaw->irqId;                                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(56),A3       ; |825| 
           NOP             4
           LDW     .D1T1   *+A3(36),A3       ; |825| 
           NOP             4
           STW     .D2T1   A3,*+SP(72)       ; |825| 
           NOP             2
	.dwpsn	"vportcap.c",826,9
;----------------------------------------------------------------------
; 826 | edmaPri = paramsRaw->edmaPri;                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |826| 
           NOP             4
           LDW     .D2T2   *+B4(32),B4       ; |826| 
           NOP             4
           STW     .D2T2   B4,*+SP(76)       ; |826| 
;** --------------------------------------------------------------------------*
L118:    
	.dwpsn	"vportcap.c",828,5
;----------------------------------------------------------------------
; 828 | if(chan->status & _VPORT_CFGED) {                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |828| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |828| 
           NOP             4
           AND     .L2     2,B4,B0           ; |828| 
   [!B0]   BNOP    .S1     L153,5            ; |828| 
           ; BRANCHCC OCCURS {L153}          ; |828| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",830,9
;----------------------------------------------------------------------
; 830 | assert(numFrmBufs >= 2 && numFrmBufs                                   
; 831 |         <= VPORT_MAX_NUM_FRMBUFS);                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(60),B4       ; |830| 
           NOP             4
           CMPLT   .L2     B4,2,B0           ; |830| 
   [!B0]   BNOP    .S1     L119,3            ; |830| 
           CMPGT   .L2     B4,10,B4          ; |830| 

           XOR     .S2     1,B0,B5           ; |830| 
||         XOR     .L2     1,B4,B4           ; |830| 

           ; BRANCHCC OCCURS {L119}          ; |830| 
;** --------------------------------------------------------------------------*
           MV      .L2     B5,B4             ; |830| 
;** --------------------------------------------------------------------------*
L119:    
           MVKL    .S1     SL11+0,A4         ; |830| 
           MV      .L1X    B4,A0             ; |830| 
   [ A0]   BNOP    .S1     L120,4            ; |830| 
           MVKH    .S1     SL11+0,A4         ; |830| 
           ; BRANCHCC OCCURS {L120}          ; |830| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |830| 
           ADDKPC  .S2     RL64,B3,4         ; |830| 
RL64:      ; CALL OCCURS {__abort_msg}       ; |830| 
;** --------------------------------------------------------------------------*
L120:    
	.dwpsn	"vportcap.c",832,9
;----------------------------------------------------------------------
; 832 | QUE_new(&chan->qIn);                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |832| 
           NOP             2
           MVK     .S1     364,A3            ; |832| 
           MVK     .S2     92,B6             ; |832| 

           ADD     .L2X    A3,B4,B4          ; |832| 
||         MV      .D2     B4,B5             ; |832| 

           STW     .D2T2   B4,*+B5[B6]       ; |832| 
           LDW     .D2T2   *+SP(12),B5       ; |832| 
           NOP             3
           MVK     .S2     91,B6             ; |832| 
           STW     .D2T2   B4,*+B5[B6]       ; |832| 
           NOP             2
	.dwpsn	"vportcap.c",833,9
;----------------------------------------------------------------------
; 833 | chan->queEmpty = FALSE;                                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |833| 
           NOP             3
           ZERO    .L1     A4                ; |833| 
           ADDK    .S1     476,A3            ; |833| 
           STH     .D1T1   A4,*A3            ; |833| 
           NOP             2
	.dwpsn	"vportcap.c",834,9
;----------------------------------------------------------------------
; 834 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |834| 
           NOP             2
           MVK     .L2     -1,B4             ; |834| 
           MVK     .S1     133,A4            ; |834| 
           STW     .D1T2   B4,*+A3[A4]       ; |834| 
           NOP             2
	.dwpsn	"vportcap.c",835,9
;----------------------------------------------------------------------
; 835 | chan->packetIOM = INV;                                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |835| 
           NOP             2
           MVK     .L1     -1,A4             ; |835| 
           MVK     .S1     137,A5            ; |835| 
           STW     .D1T1   A4,*+A3[A5]       ; |835| 
           NOP             2
	.dwpsn	"vportcap.c",836,9
;----------------------------------------------------------------------
; 836 | chan->segId = segId;                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(64),B4       ; |836| 
           LDW     .D2T1   *+SP(12),A3       ; |836| 
           NOP             3
           MVK     .S1     139,A4            ; |836| 
           STW     .D1T2   B4,*+A3[A4]       ; |836| 
           NOP             2
	.dwpsn	"vportcap.c",838,9
;----------------------------------------------------------------------
; 838 | EDMA_intDisable(chan->tcc[0]);                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |838| 
           MVKL    .S1     _EDMA_intDisable,A3 ; |838| 
           MVKH    .S1     _EDMA_intDisable,A3 ; |838| 
           MVK     .S2     112,B5            ; |838| 
           CALL    .S2X    A3                ; |838| 
           LDW     .D2T1   *+B4[B5],A4       ; |838| 
           ADDKPC  .S2     RL65,B3,3         ; |838| 
RL65:      ; CALL OCCURS {_EDMA_intDisable}  ; |838| 
	.dwpsn	"vportcap.c",839,9
;----------------------------------------------------------------------
; 839 | EDMA_intDisable(chan->tcc[1]);                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |839| 
           MVKL    .S2     _EDMA_intDisable,B4 ; |839| 
           MVKH    .S2     _EDMA_intDisable,B4 ; |839| 
           MVK     .S2     113,B6            ; |839| 
           CALL    .S2     B4                ; |839| 
           LDW     .D2T1   *+B5[B6],A4       ; |839| 
           ADDKPC  .S2     RL66,B3,3         ; |839| 
RL66:      ; CALL OCCURS {_EDMA_intDisable}  ; |839| 
	.dwpsn	"vportcap.c",841,9
;----------------------------------------------------------------------
; 841 | if(chan->numFrms == 0) {                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |841| 
           NOP             3
           MVK     .S1     126,A4            ; |841| 
           LDW     .D1T1   *+A3[A4],A0       ; |841| 
           NOP             4
   [ A0]   BNOP    .S1     L126,5            ; |841| 
           ; BRANCHCC OCCURS {L126}          ; |841| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",842,13
;----------------------------------------------------------------------
; 842 | chan->numFrms = numFrmBufs;                                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(60),B4       ; |842| 
           NOP             4
           STW     .D1T2   B4,*+A3[A4]       ; |842| 
           NOP             2
	.dwpsn	"vportcap.c",845,13
;----------------------------------------------------------------------
; 845 | chan->bufSz = chan->yPitch * chan->numLines                            
; 846 |       + chan->cPitch * chan->numLines * 2;                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |845| 
           MVK     .S1     123,A4            ; |845| 
           MVK     .S2     121,B6            ; |845| 
           MVK     .S2     123,B31           ; |845| 
           MVK     .S1     122,A31           ; |845| 
           MV      .L1X    B5,A3             ; |845| 

           LDW     .D2T2   *+B5[B6],B5       ; |845| 
||         MV      .L1X    B5,A5             ; |845| 
||         MV      .L2     B5,B4             ; |845| 
||         LDW     .D1T1   *+A3[A4],A3       ; |845| 

           LDW     .D1T1   *+A5[A31],A4      ; |845| 
||         LDW     .D2T2   *+B4[B31],B4      ; |845| 

           NOP             1
           LDW     .D2T2   *+SP(12),B30      ; |845| 
           MVK     .S2     140,B29           ; |845| 
           MPYLH   .M2X    A3,B5,B7          ; |845| 
           MPYLH   .M2X    B4,A4,B8          ; |845| 

           MPYLH   .M2X    B5,A3,B6          ; |845| 
||         MPYLH   .M1X    A4,B4,A5          ; |845| 

           MPYU    .M1X    A3,B5,A3          ; |845| 

           ADD     .L2     B7,B6,B5          ; |845| 
||         ADD     .L1X    B8,A5,A5          ; |845| 

           MPYU    .M1X    B4,A4,A4          ; |845| 
||         SHL     .S2     B5,16,B5          ; |845| 

           SHL     .S1     A5,16,A5          ; |845| 

           ADD     .S1     A4,A5,A4          ; |845| 
||         ADD     .L1X    A3,B5,A3          ; |845| 

           ADDAH   .D1     A3,A4,A3          ; |845| 
           STW     .D2T1   A3,*+B30[B29]     ; |845| 
           NOP             2
	.dwpsn	"vportcap.c",847,17
;----------------------------------------------------------------------
; 847 | for(i = 0; i < chan->numFrms; i ++) {                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |847| 
           STW     .D2T2   B4,*+SP(16)       ; |847| 
           NOP             2
	.dwpsn	"vportcap.c",847,24
           LDW     .D2T1   *+SP(12),A3       ; |847| 
           NOP             2
           MVK     .S1     126,A4            ; |847| 
           LDW     .D2T2   *+SP(16),B4       ; |847| 
           LDW     .D1T1   *+A3[A4],A3       ; |847| 
           NOP             4
           CMPLTU  .L1X    B4,A3,A0          ; |847| 
   [!A0]   BNOP    .S1     L126,5            ; |847| 
           ; BRANCHCC OCCURS {L126}          ; |847| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L121:    
DW$L$__configTransfer$11$B:
	.dwpsn	"vportcap.c",848,17
;----------------------------------------------------------------------
; 848 | if((curAddr = MEM_calloc(segId,chan->bufSz,                            
; 849 |     alignment)) == MEM_ILLEGAL){                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |848| 
           LDW     .D2T1   *+SP(64),A4       ; |848| 
           LDW     .D2T1   *+SP(68),A6       ; |848| 
           MVK     .S2     140,B5            ; |848| 
           CALL    .S1     _MEM_valloc       ; |848| 
           LDW     .D2T2   *+B4[B5],B4       ; |848| 
           ADDKPC  .S2     RL67,B3,2         ; |848| 
           ZERO    .L2     B6                ; |848| 
RL67:      ; CALL OCCURS {_MEM_valloc}       ; |848| 
           MV      .L1     A4,A0             ; |848| 
   [ A0]   BNOP    .S1     L122,4            ; |848| 
           STW     .D2T1   A0,*+SP(48)       ; |848| 
           ; BRANCHCC OCCURS {L122}          ; |848| 
DW$L$__configTransfer$11$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",850,21
;----------------------------------------------------------------------
; 850 | return IOM_EALLOC;                                                     
;----------------------------------------------------------------------
           BNOP    .S1     L154,4            ; |850| 
           MVK     .L1     0xfffffffb,A4     ; |850| 
           ; BRANCH OCCURS {L154}            ; |850| 
;** --------------------------------------------------------------------------*
L122:    
DW$L$__configTransfer$13$B:
	.dwpsn	"vportcap.c",853,17
;----------------------------------------------------------------------
; 853 | chan->viops[i].frame.iFrm.y1 = curAddr;                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |853| 
           LDW     .D2T2   *+SP(12),B4       ; |853| 
           NOP             2
           MV      .S2X    A0,B6             ; |853| 
           SHL     .S2     B5,5,B5           ; |853| 
           ADD     .L2     B5,B4,B4          ; |853| 
           STW     .D2T2   B6,*+B4(52)       ; |853| 
           NOP             2
	.dwpsn	"vportcap.c",854,17
;----------------------------------------------------------------------
; 854 | if(!(params->cmode & _VPORT_MASK_RAW)) {                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |854| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |854| 
           NOP             4
           AND     .L2     2,B4,B0           ; |854| 
   [ B0]   BNOP    .S1     L125,5            ; |854| 
           ; BRANCHCC OCCURS {L125}          ; |854| 
DW$L$__configTransfer$13$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$14$B:
	.dwpsn	"vportcap.c",855,21
;----------------------------------------------------------------------
; 855 | curAddr += chan->numLines*chan->yPitch;                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |855| 
           NOP             2
           MVK     .S1     121,A31           ; |855| 
           MVK     .S1     123,A5            ; |855| 
           MV      .L1     A4,A3             ; |855| 
           LDW     .D1T1   *+A3[A31],A3      ; |855| 
           LDW     .D1T1   *+A4[A5],A4       ; |855| 
           NOP             4
           MPYLH   .M1     A3,A4,A6          ; |855| 
           MPYLH   .M1     A4,A3,A5          ; |855| 
           LDW     .D2T2   *+SP(48),B4       ; |855| 

           ADD     .L1     A6,A5,A3          ; |855| 
||         MPYU    .M1     A3,A4,A4          ; |855| 

           SHL     .S1     A3,16,A3          ; |855| 
           ADD     .L1     A4,A3,A3          ; |855| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |855| 
           STW     .D2T2   B4,*+SP(48)       ; |855| 
           NOP             2
	.dwpsn	"vportcap.c",856,21
;----------------------------------------------------------------------
; 856 | chan->viops[i].frame.iFrm.cb1 = curAddr;                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |856| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |856| 
           NOP             2
           SHL     .S2     B5,5,B5           ; |856| 
           NOP             1
           ADD     .L1X    B5,A3,A3          ; |856| 
           STW     .D1T2   B4,*+A3(56)       ; |856| 
           NOP             2
	.dwpsn	"vportcap.c",857,21
;----------------------------------------------------------------------
; 857 | curAddr += chan->numLines*chan->cPitch;                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |857| 
           NOP             2
           MVK     .S1     122,A30           ; |857| 
           MVK     .S1     123,A5            ; |857| 
           MV      .L1     A3,A4             ; |857| 
           LDW     .D1T1   *+A4[A30],A4      ; |857| 
           LDW     .D1T1   *+A3[A5],A3       ; |857| 
           NOP             4
           MPYLH   .M1     A3,A4,A5          ; |857| 
           MPYLH   .M1     A4,A3,A6          ; |857| 
           LDW     .D2T2   *+SP(48),B4       ; |857| 

           ADD     .L1     A6,A5,A3          ; |857| 
||         MPYU    .M1     A4,A3,A4          ; |857| 

           SHL     .S1     A3,16,A3          ; |857| 
           ADD     .L1     A4,A3,A3          ; |857| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |857| 
           STW     .D2T2   B4,*+SP(48)       ; |857| 
           NOP             2
	.dwpsn	"vportcap.c",858,21
;----------------------------------------------------------------------
; 858 | chan->viops[i].frame.iFrm.cr1 = curAddr;                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |858| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |858| 
           LDW     .D2T2   *+SP(48),B5       ; |858| 
           NOP             1
           SHL     .S2     B4,5,B4           ; |858| 
           NOP             1
           ADD     .L1X    B4,A3,A3          ; |858| 
           STW     .D1T2   B5,*+A3(60)       ; |858| 
           NOP             2
	.dwpsn	"vportcap.c",859,21
;----------------------------------------------------------------------
; 859 | curAddr += chan->numLines*chan->cPitch;                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |859| 
           NOP             1
           MVK     .S2     122,B5            ; |859| 
           MVK     .S1     123,A4            ; |859| 
           LDW     .D2T2   *+SP(48),B31      ; |859| 
           MV      .L2X    A3,B4             ; |859| 

           LDW     .D2T2   *+B4[B5],B4       ; |859| 
||         LDW     .D1T1   *+A3[A4],A3       ; |859| 

           NOP             4
           MPYLH   .M2X    B4,A3,B5          ; |859| 
           MPYLH   .M1X    A3,B4,A4          ; |859| 
           MPYU    .M1X    B4,A3,A3          ; |859| 
           ADD     .L1X    B5,A4,A4          ; |859| 
           SHL     .S1     A4,16,A4          ; |859| 
           ADD     .L1     A3,A4,A3          ; |859| 
           NOP             1
           ADD     .L2X    A3,B31,B4         ; |859| 
           STW     .D2T2   B4,*+SP(48)       ; |859| 
           NOP             2
	.dwpsn	"vportcap.c",861,18
;----------------------------------------------------------------------
; 861 | if(params->fldOp == VPORT_FLDOP_FLD2) {                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |861| 
           NOP             4
           LDW     .D1T1   *+A3(4),A3        ; |861| 
           NOP             4
           CMPEQ   .L1     A3,2,A0           ; |861| 
   [!A0]   BNOP    .S1     L123,5            ; |861| 
           ; BRANCHCC OCCURS {L123}          ; |861| 
DW$L$__configTransfer$14$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$15$B:
	.dwpsn	"vportcap.c",862,22
;----------------------------------------------------------------------
; 862 | chan->viops[i].frame.iFrm.y2 =                                         
; 863 |     chan->viops[i].frame.iFrm.y1;                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |862| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |862| 
           NOP             1
           LDW     .D2T2   *+SP(12),B31      ; |862| 
           SHL     .S2     B4,5,B4           ; |862| 
           LDW     .D2T2   *+SP(16),B5       ; |862| 
           ADD     .L1X    B4,A3,A3          ; |862| 
           LDW     .D1T1   *+A3(52),A3       ; |862| 
           NOP             2
           SHL     .S2     B5,5,B5           ; |862| 
           ADD     .L2     B5,B31,B4         ; |862| 
           STW     .D2T1   A3,*+B4(64)       ; |862| 
           NOP             2
	.dwpsn	"vportcap.c",864,22
;----------------------------------------------------------------------
; 864 | chan->viops[i].frame.iFrm.cb2 =                                        
; 865 |     chan->viops[i].frame.iFrm.cb1;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |864| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |864| 
           NOP             1
           LDW     .D2T2   *+SP(12),B30      ; |864| 
           SHL     .S2     B4,5,B4           ; |864| 
           LDW     .D2T2   *+SP(16),B5       ; |864| 
           ADD     .L1X    B4,A3,A3          ; |864| 
           LDW     .D1T1   *+A3(56),A3       ; |864| 
           NOP             2
           SHL     .S2     B5,5,B5           ; |864| 
           ADD     .L2     B5,B30,B4         ; |864| 
           STW     .D2T1   A3,*+B4(68)       ; |864| 
           NOP             2
	.dwpsn	"vportcap.c",866,22
;----------------------------------------------------------------------
; 866 | chan->viops[i].frame.iFrm.cr2 =                                        
; 867 |     chan->viops[i].frame.iFrm.cr1;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |866| 
           LDW     .D2T2   *+SP(12),B4       ; |866| 
           NOP             2
           LDW     .D2T2   *+SP(12),B29      ; |866| 
           SHL     .S2     B5,5,B6           ; |866| 
           ADD     .L2     B6,B4,B4          ; |866| 
           LDW     .D2T2   *+B4(60),B4       ; |866| 
           NOP             2
           SHL     .S2     B5,5,B5           ; |866| 
           ADD     .L2     B5,B29,B5         ; |866| 
           STW     .D2T2   B4,*+B5(72)       ; |866| 
           NOP             2
	.dwpsn	"vportcap.c",868,18
           BNOP    .S1     L125,5            ; |868| 
           ; BRANCH OCCURS {L125}            ; |868| 
DW$L$__configTransfer$15$E:
;** --------------------------------------------------------------------------*
L123:    
DW$L$__configTransfer$16$B:
	.dwpsn	"vportcap.c",869,23
;----------------------------------------------------------------------
; 869 | else if(! chan->mergeFlds) {                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |869| 
           NOP             4
           ADDK    .S2     460,B4            ; |869| 
           LDHU    .D2T2   *B4,B0            ; |869| 
           NOP             4
   [ B0]   BNOP    .S1     L124,5            ; |869| 
           ; BRANCHCC OCCURS {L124}          ; |869| 
DW$L$__configTransfer$16$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$17$B:
	.dwpsn	"vportcap.c",870,22
;----------------------------------------------------------------------
; 870 | chan->viops[i].frame.iFrm.y2 =                                         
; 871 |   chan->viops[i].frame.iFrm.y1                                         
; 872 |     + chan->numLinesFld1*chan->yPitch;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |870| 
           LDW     .D2T2   *+SP(16),B4       ; |870| 
           MVK     .S1     125,A4            ; |870| 
           MVK     .S1     121,A31           ; |870| 
           LDW     .D2T2   *+SP(16),B5       ; |870| 

           MV      .L1     A3,A5             ; |870| 
||         LDW     .D1T1   *+A3[A4],A4       ; |870| 

           LDW     .D1T1   *+A5[A31],A5      ; |870| 
           SHL     .S2     B4,5,B4           ; |870| 
           MV      .L1     A3,A6             ; |870| 
           ADD     .L1X    B4,A6,A6          ; |870| 
           LDW     .D1T1   *+A6(52),A7       ; |870| 
           MPYLH   .M1     A5,A4,A6          ; |870| 

           MPYLH   .M1     A4,A5,A3          ; |870| 
||         LDW     .D2T2   *+SP(12),B31      ; |870| 

           MPYU    .M1     A5,A4,A4          ; |870| 
           ADD     .L1     A6,A3,A3          ; |870| 
           SHL     .S1     A3,16,A3          ; |870| 

           ADD     .L1     A4,A3,A3          ; |870| 
||         SHL     .S2     B5,5,B5           ; |870| 

           ADD     .L1     A3,A7,A3          ; |870| 
||         ADD     .L2     B5,B31,B4         ; |870| 

           STW     .D2T1   A3,*+B4(64)       ; |870| 
           NOP             2
	.dwpsn	"vportcap.c",873,22
;----------------------------------------------------------------------
; 873 | chan->viops[i].frame.iFrm.cb2 =                                        
; 874 |   chan->viops[i].frame.iFrm.cb1                                        
; 875 |     + (chan->numLinesFld1*chan->cPitch);                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |873| 
           MVK     .S1     122,A30           ; |873| 
           LDW     .D2T2   *+SP(16),B4       ; |873| 
           MVK     .S1     125,A5            ; |873| 
           LDW     .D2T2   *+SP(16),B5       ; |873| 

           LDW     .D1T1   *+A3[A5],A3       ; |873| 
||         MV      .S1     A3,A4             ; |873| 
||         MV      .L1     A3,A6             ; |873| 

           LDW     .D1T1   *+A4[A30],A5      ; |873| 
           SHL     .S2     B4,5,B4           ; |873| 
           LDW     .D2T2   *+SP(12),B30      ; |873| 
           NOP             1
           SHL     .S2     B5,5,B5           ; |873| 

           MPYLH   .M1     A3,A5,A6          ; |873| 
||         ADD     .L1X    B4,A6,A4          ; |873| 

           MPYLH   .M1     A5,A3,A4          ; |873| 
||         LDW     .D1T1   *+A4(56),A7       ; |873| 

           ADD     .L2     B5,B30,B4         ; |873| 

           MPYU    .M1     A5,A3,A4          ; |873| 
||         ADD     .L1     A4,A6,A3          ; |873| 

           SHL     .S1     A3,16,A3          ; |873| 
           ADD     .L1     A4,A3,A3          ; |873| 
           ADD     .L1     A3,A7,A3          ; |873| 
           STW     .D2T1   A3,*+B4(68)       ; |873| 
           NOP             2
	.dwpsn	"vportcap.c",876,22
;----------------------------------------------------------------------
; 876 | chan->viops[i].frame.iFrm.cr2 =                                        
; 877 |   chan->viops[i].frame.iFrm.cr1                                        
; 878 |     + (chan->numLinesFld1*chan->cPitch);                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |876| 
           NOP             1
           LDW     .D2T2   *+SP(16),B7       ; |876| 
           MVK     .S1     125,A4            ; |876| 
           MVK     .S2     122,B5            ; |876| 
           MV      .L1X    B4,A3             ; |876| 

           LDW     .D2T2   *+B4[B5],B6       ; |876| 
||         LDW     .D1T1   *+A3[A4],A3       ; |876| 

           SHL     .S2     B7,5,B8           ; |876| 
           MV      .L2     B7,B5             ; |876| 
           ADD     .L2     B8,B4,B8          ; |876| 
           LDW     .D2T2   *+B8(60),B8       ; |876| 
           MPYLH   .M2X    B6,A3,B7          ; |876| 
           MPYLH   .M1X    A3,B6,A4          ; |876| 
           MPYU    .M1X    B6,A3,A3          ; |876| 
           ADD     .L1X    B7,A4,A4          ; |876| 
           SHL     .S1     A4,16,A4          ; |876| 

           SHL     .S2     B5,5,B5           ; |876| 
||         ADD     .L1     A3,A4,A3          ; |876| 

           ADD     .L2     B5,B4,B4          ; |876| 
||         ADD     .L1X    A3,B8,A3          ; |876| 

           STW     .D2T1   A3,*+B4(72)       ; |876| 
           NOP             2
	.dwpsn	"vportcap.c",879,18
;----------------------------------------------------------------------
; 879 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L125,5            ; |879| 
           ; BRANCH OCCURS {L125}            ; |879| 
DW$L$__configTransfer$17$E:
;** --------------------------------------------------------------------------*
L124:    
DW$L$__configTransfer$18$B:
	.dwpsn	"vportcap.c",880,22
;----------------------------------------------------------------------
; 880 | chan->viops[i].frame.iFrm.y2 =                                         
; 881 |   chan->viops[i].frame.iFrm.y1 + chan->yPitch;                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |880| 
           LDW     .D2T1   *+SP(12),A3       ; |880| 
           NOP             1
           LDW     .D2T2   *+SP(16),B5       ; |880| 
           MVK     .S1     121,A5            ; |880| 
           SHL     .S2     B4,5,B4           ; |880| 
           MV      .L1     A3,A4             ; |880| 

           ADD     .L1X    B4,A3,A3          ; |880| 
||         LDW     .D1T2   *+A4[A5],B6       ; |880| 

           LDW     .D1T1   *+A3(52),A3       ; |880| 
           NOP             2
           SHL     .S2     B5,5,B5           ; |880| 
           ADD     .L2X    B5,A4,B4          ; |880| 
           ADD     .L1X    B6,A3,A3          ; |880| 
           STW     .D2T1   A3,*+B4(64)       ; |880| 
           NOP             2
	.dwpsn	"vportcap.c",882,22
;----------------------------------------------------------------------
; 882 | chan->viops[i].frame.iFrm.cb2 =                                        
; 883 |   chan->viops[i].frame.iFrm.cb1 + chan->cPitch;                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |882| 
           LDW     .D2T1   *+SP(12),A3       ; |882| 
           MVK     .S1     122,A5            ; |882| 
           LDW     .D2T2   *+SP(16),B5       ; |882| 
           LDW     .D2T2   *+SP(12),B31      ; |882| 
           SHL     .S2     B4,5,B4           ; |882| 
           MV      .L1     A3,A4             ; |882| 

           ADD     .L1X    B4,A3,A3          ; |882| 
||         LDW     .D1T1   *+A4[A5],A4       ; |882| 

           LDW     .D1T1   *+A3(56),A3       ; |882| 
           NOP             2
           SHL     .S2     B5,5,B5           ; |882| 
           ADD     .L2     B5,B31,B4         ; |882| 
           ADD     .L1     A4,A3,A3          ; |882| 
           STW     .D2T1   A3,*+B4(68)       ; |882| 
           NOP             2
	.dwpsn	"vportcap.c",884,22
;----------------------------------------------------------------------
; 884 | chan->viops[i].frame.iFrm.cr2 =                                        
; 885 |   chan->viops[i].frame.iFrm.cr1 + chan->cPitch;                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B8       ; |884| 
           LDW     .D2T2   *+SP(16),B6       ; |884| 
           NOP             3
           MVK     .S2     122,B5            ; |884| 

           SHL     .S2     B6,5,B9           ; |884| 
||         MV      .D2     B8,B4             ; |884| 
||         MV      .L2     B6,B7             ; |884| 

           LDW     .D2T2   *+B4[B5],B8       ; |884| 
||         ADD     .L2     B9,B8,B4          ; |884| 
||         MV      .S2     B8,B6             ; |884| 

           LDW     .D2T2   *+B4(60),B5       ; |884| 
           SHL     .S2     B7,5,B30          ; |884| 
           ADD     .S2     B30,B6,B4         ; |884| 
           NOP             2
           ADD     .L2     B8,B5,B5          ; |884| 
           STW     .D2T2   B5,*+B4(72)       ; |884| 
DW$L$__configTransfer$18$E:
;** --------------------------------------------------------------------------*
L125:    
DW$L$__configTransfer$19$B:
	.dwpsn	"vportcap.c",847,43
           LDW     .D2T2   *+SP(16),B4       ; |847| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |847| 
           STW     .D2T2   B4,*+SP(16)       ; |847| 
           NOP             2
	.dwpsn	"vportcap.c",847,24
           LDW     .D2T2   *+SP(12),B4       ; |847| 
           NOP             2
           LDW     .D2T2   *+SP(16),B5       ; |847| 
           MVK     .S2     126,B6            ; |847| 
           LDW     .D2T2   *+B4[B6],B4       ; |847| 
           NOP             4
           CMPLTU  .L2     B5,B4,B0          ; |847| 
   [ B0]   BNOP    .S1     L121,5            ; |847| 
           ; BRANCHCC OCCURS {L121}          ; |847| 
DW$L$__configTransfer$19$E:
;** --------------------------------------------------------------------------*
L126:    
	.dwpsn	"vportcap.c",890,13
;----------------------------------------------------------------------
; 890 | for(i = 2; i < chan->numFrms; i ++)  {                                 
;----------------------------------------------------------------------
           MVK     .L2     2,B4              ; |890| 
           STW     .D2T2   B4,*+SP(16)       ; |890| 
           NOP             2
	.dwpsn	"vportcap.c",890,20
           LDW     .D2T2   *+SP(12),B4       ; |890| 
           NOP             2
           LDW     .D2T2   *+SP(16),B5       ; |890| 
           MVK     .S2     126,B6            ; |890| 
           LDW     .D2T2   *+B4[B6],B4       ; |890| 
           NOP             4
           CMPLTU  .L2     B5,B4,B0          ; |890| 
   [!B0]   BNOP    .S1     L128,5            ; |890| 
           ; BRANCHCC OCCURS {L128}          ; |890| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L127:    
DW$L$__configTransfer$21$B:
	.dwpsn	"vportcap.c",892,13
;----------------------------------------------------------------------
; 892 | QUE_enqueue(&chan->qIn, (QUE_Handle)&chan->viops[i]);                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |892| 
           LDW     .D2T2   *+SP(16),B5       ; |892| 
           MVK     .S1     364,A3            ; |892| 
           CALL    .S1     _QUE_put          ; |892| 
           ADDKPC  .S2     RL68,B3,1         ; |892| 

           SHL     .S2     B5,5,B5           ; |892| 
||         MV      .L2     B4,B6             ; |892| 

           ADD     .L2     B5,B4,B4          ; |892| 

           ADD     .L1X    A3,B6,A4          ; |892| 
||         ADDAW   .D2     B4,11,B4          ; |892| 

RL68:      ; CALL OCCURS {_QUE_put}          ; |892| 
	.dwpsn	"vportcap.c",890,39
           LDW     .D2T2   *+SP(16),B4       ; |890| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |890| 
           STW     .D2T2   B4,*+SP(16)       ; |890| 
           NOP             2
	.dwpsn	"vportcap.c",890,20
           LDW     .D2T2   *+SP(12),B5       ; |890| 
           NOP             2
           LDW     .D2T2   *+SP(16),B4       ; |890| 
           MVK     .S2     126,B6            ; |890| 
           LDW     .D2T2   *+B5[B6],B5       ; |890| 
           NOP             4
           CMPLTU  .L2     B4,B5,B0          ; |890| 
   [ B0]   BNOP    .S1     L127,5            ; |890| 
           ; BRANCHCC OCCURS {L127}          ; |890| 
DW$L$__configTransfer$21$E:
;** --------------------------------------------------------------------------*
L128:    
	.dwpsn	"vportcap.c",894,9
;----------------------------------------------------------------------
; 894 | chan->curViop = &chan->viops[0];                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |894| 
           NOP             3
           MVK     .S2     131,B6            ; |894| 

           ADDK    .S2     44,B4             ; |894| 
||         MV      .L2     B4,B5             ; |894| 

           STW     .D2T2   B4,*+B5[B6]       ; |894| 
           NOP             2
	.dwpsn	"vportcap.c",895,9
;----------------------------------------------------------------------
; 895 | chan->nextViop = &chan->viops[1];                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |895| 
           NOP             3
           MVK     .S2     132,B6            ; |895| 

           ADDK    .S2     76,B5             ; |895| 
||         MV      .L2     B5,B4             ; |895| 

           STW     .D2T2   B5,*+B4[B6]       ; |895| 
           NOP             2
	.dwpsn	"vportcap.c",896,9
;----------------------------------------------------------------------
; 896 | if(chan->mode & _VPORT_MASK_RAW) {                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |896| 
           NOP             3
           MVK     .S2     134,B5            ; |896| 
           LDW     .D2T2   *+B4[B5],B4       ; |896| 
           NOP             4
           AND     .L2     2,B4,B0           ; |896| 
   [!B0]   BNOP    .S1     L129,5            ; |896| 
           ; BRANCHCC OCCURS {L129}          ; |896| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",897,13
;----------------------------------------------------------------------
; 897 | numEdmaChans = 1;                                                      
;----------------------------------------------------------------------
           MVK     .L2     1,B4              ; |897| 
           STW     .D2T2   B4,*+SP(52)       ; |897| 
           NOP             2
	.dwpsn	"vportcap.c",898,9
;----------------------------------------------------------------------
; 898 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L130,5            ; |898| 
           ; BRANCH OCCURS {L130}            ; |898| 
;** --------------------------------------------------------------------------*
L129:    
	.dwpsn	"vportcap.c",899,13
;----------------------------------------------------------------------
; 899 | numEdmaChans = _VPORT_NUM_EDMA_CHANS;                                  
;----------------------------------------------------------------------
           MVK     .L2     3,B4              ; |899| 
           STW     .D2T2   B4,*+SP(52)       ; |899| 
;** --------------------------------------------------------------------------*
L130:    
	.dwpsn	"vportcap.c",901,13
;----------------------------------------------------------------------
; 901 | for(i = 0; i < numEdmaChans; i ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |901| 
           STW     .D2T2   B4,*+SP(16)       ; |901| 
           NOP             2
	.dwpsn	"vportcap.c",901,20
           LDW     .D2T2   *+SP(52),B4       ; |901| 
           LDW     .D2T2   *+SP(16),B5       ; |901| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |901| 
   [!B0]   BNOP    .S1     L150,5            ; |901| 
           ; BRANCHCC OCCURS {L150}          ; |901| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L131:    
DW$L$__configTransfer$26$B:

DW$271	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$272	.dwtag  DW_TAG_variable, DW_AT_name("optFld1"), DW_AT_symbol_name("_optFld1")
	.dwattr DW$272, DW_AT_type(*DW$T$22)
	.dwattr DW$272, DW_AT_location[DW_OP_breg31 80]
DW$273	.dwtag  DW_TAG_variable, DW_AT_name("optFld2a"), DW_AT_symbol_name("_optFld2a")
	.dwattr DW$273, DW_AT_type(*DW$T$22)
	.dwattr DW$273, DW_AT_location[DW_OP_breg31 84]
DW$274	.dwtag  DW_TAG_variable, DW_AT_name("optFld2b"), DW_AT_symbol_name("_optFld2b")
	.dwattr DW$274, DW_AT_type(*DW$T$22)
	.dwattr DW$274, DW_AT_location[DW_OP_breg31 88]
	.dwpsn	"vportcap.c",902,17
;----------------------------------------------------------------------
; 902 | Int optFld1 = EDMA_OPT_RMK(                                            
; 903 |     edmaPri,                                                           
; 904 |     EDMA_OPT_ESIZE_32BIT,                                              
; 905 |     EDMA_OPT_2DS_NO,                                                   
; 906 |     EDMA_OPT_SUM_NONE,                                                 
; 907 |     EDMA_OPT_2DD_YES,                                                  
; 908 |     EDMA_OPT_DUM_INC,                                                  
; 909 |     EDMA_OPT_TCINT_NO,                                                 
; 910 |     EDMA_OPT_TCC_OF(0),                                                
; 911 |     EDMA_OPT_TCCM_OF(0),                                               
; 912 |     EDMA_OPT_ATCINT_NO,                                                
; 913 |     EDMA_OPT_ATCC_DEFAULT,                                             
; 914 |     EDMA_OPT_PDTS_DISABLE,                                             
; 915 |     EDMA_OPT_PDTD_DISABLE,                                             
; 916 |     EDMA_OPT_LINK_YES,                                                 
; 917 |     EDMA_OPT_FS_NO                                                     
; 918 | );                                                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(76),B4       ; |902| 
           NOP             2
           MVKL    .S1     0xa00002,A3       ; |902| 
           MVKH    .S1     0xa00002,A3       ; |902| 
           SHL     .S2     B4,29,B4          ; |902| 
           CLR     .S2     B4,0,28,B4        ; |902| 
           OR      .L2X    A3,B4,B4          ; |902| 
           STW     .D2T2   B4,*+SP(80)       ; |902| 
           NOP             2
	.dwpsn	"vportcap.c",920,17
;----------------------------------------------------------------------
; 920 | Int optFld2a = EDMA_OPT_RMK(                                           
; 921 |     edmaPri,                                                           
; 922 |     EDMA_OPT_ESIZE_32BIT,                                              
; 923 |     EDMA_OPT_2DS_NO,                                                   
; 924 |     EDMA_OPT_SUM_NONE,                                                 
; 925 |     EDMA_OPT_2DD_YES,                                                  
; 926 |     EDMA_OPT_DUM_INC,                                                  
; 927 |     (i == 0 ? EDMA_OPT_TCINT_YES:EDMA_OPT_TCINT_NO),                   
; 928 |     EDMA_OPT_TCC_OF(i == 0 ? chan->tcc[0] & 0x0f : 0),                 
; 929 |     EDMA_OPT_TCCM_OF(i == 0 ? chan->tcc[0] >> 4 : 0),                  
; 930 |     EDMA_OPT_ATCINT_NO,                                                
; 931 |     EDMA_OPT_ATCC_DEFAULT,                                             
; 932 |     EDMA_OPT_PDTS_DISABLE,                                             
; 933 |     EDMA_OPT_PDTD_DISABLE,                                             
; 934 |     EDMA_OPT_LINK_YES,                                                 
; 935 |     EDMA_OPT_FS_NO                                                     
; 936 | );                                                                     
;----------------------------------------------------------------------
           MV      .L2     B5,B0
   [ B0]   BNOP    .S1     L132,5            ; |920| 
           ; BRANCHCC OCCURS {L132}          ; |920| 
DW$L$__configTransfer$26$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$27$B:
           BNOP    .S1     L133,4            ; |920| 
           MVK     .L1     0x1,A3            ; |920| 
           ; BRANCH OCCURS {L133}            ; |920| 
DW$L$__configTransfer$27$E:
;** --------------------------------------------------------------------------*
L132:    
DW$L$__configTransfer$28$B:
           ZERO    .L1     A3                ; |920| 
DW$L$__configTransfer$28$E:
;** --------------------------------------------------------------------------*
L133:    
DW$L$__configTransfer$29$B:
           LDW     .D2T2   *+SP(76),B4       ; |920| 
           SHL     .S1     A3,20,A4          ; |920| 
           ZERO    .L1     A3                ; |920| 
   [ B0]   BNOP    .S1     L134,1            ; |920| 
           SHL     .S2     B4,29,B4          ; |920| 

           CLR     .S2     B4,0,28,B4        ; |920| 
||         MVKH    .S1     0x100000,A3       ; |920| 

           AND     .L1     A3,A4,A3          ; |920| 
           OR      .L1X    A3,B4,A4          ; |920| 
           ; BRANCHCC OCCURS {L134}          ; |920| 
DW$L$__configTransfer$29$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$30$B:
           LDW     .D2T2   *+SP(12),B4       ; |920| 
           NOP             3
           MVK     .S2     112,B5            ; |920| 

           BNOP    .S1     L135,4            ; |920| 
||         LDW     .D2T2   *+B4[B5],B4       ; |920| 

           AND     .L1X    15,B4,A3          ; |920| 
           ; BRANCH OCCURS {L135}            ; |920| 
DW$L$__configTransfer$30$E:
;** --------------------------------------------------------------------------*
L134:    
DW$L$__configTransfer$31$B:
           ZERO    .L1     A3                ; |920| 
DW$L$__configTransfer$31$E:
;** --------------------------------------------------------------------------*
L135:    
DW$L$__configTransfer$32$B:
   [ B0]   BNOP    .S1     L136,1            ; |920| 

           ZERO    .L1     A3                ; |920| 
||         SHL     .S1     A3,16,A5          ; |920| 

           MVKH    .S1     0xf0000,A3        ; |920| 
           AND     .L1     A3,A5,A3          ; |920| 
           OR      .L1     A3,A4,A4          ; |920| 
           ; BRANCHCC OCCURS {L136}          ; |920| 
DW$L$__configTransfer$32$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$33$B:
           LDW     .D2T2   *+SP(12),B4       ; |920| 
           NOP             3
           MVK     .S2     112,B5            ; |920| 

           BNOP    .S1     L137,4            ; |920| 
||         LDW     .D2T2   *+B4[B5],B4       ; |920| 

           SHR     .S1X    B4,4,A3           ; |920| 
           ; BRANCH OCCURS {L137}            ; |920| 
DW$L$__configTransfer$33$E:
;** --------------------------------------------------------------------------*
L136:    
DW$L$__configTransfer$34$B:
           ZERO    .L1     A3                ; |920| 
DW$L$__configTransfer$34$E:
;** --------------------------------------------------------------------------*
L137:    
DW$L$__configTransfer$35$B:
           MVK     .S2     24576,B4          ; |920| 
           SHL     .S1     A3,13,A3          ; |920| 
           AND     .L1X    B4,A3,A3          ; |920| 

           OR      .L1     A3,A4,A3          ; |920| 
||         MVKL    .S2     0xa00002,B31      ; |920| 

           MVKH    .S2     0xa00002,B31      ; |920| 
           OR      .L2X    B31,A3,B4         ; |920| 
           STW     .D2T2   B4,*+SP(84)       ; |920| 
           NOP             2
	.dwpsn	"vportcap.c",937,17
;----------------------------------------------------------------------
; 937 | Int optFld2b = EDMA_OPT_RMK(                                           
; 938 |     edmaPri,                                                           
; 939 |     EDMA_OPT_ESIZE_32BIT,                                              
; 940 |     EDMA_OPT_2DS_NO,                                                   
; 941 |     EDMA_OPT_SUM_NONE,                                                 
; 942 |     EDMA_OPT_2DD_YES,                                                  
; 943 |     EDMA_OPT_DUM_INC,                                                  
; 944 |     (i == 0 ? EDMA_OPT_TCINT_YES:EDMA_OPT_TCINT_NO),                   
; 945 |     EDMA_OPT_TCC_OF(i == 0 ? chan->tcc[1] & 0x0f : 0),                 
; 946 |     EDMA_OPT_TCCM_OF(i == 0 ? chan->tcc[1] >> 4 : 0),                  
; 947 |     EDMA_OPT_ATCINT_NO,                                                
; 948 |     EDMA_OPT_ATCC_DEFAULT,                                             
; 949 |     EDMA_OPT_PDTS_DISABLE,                                             
; 950 |     EDMA_OPT_PDTD_DISABLE,                                             
; 951 |     EDMA_OPT_LINK_YES,                                                 
; 952 |     EDMA_OPT_FS_NO                                                     
; 953 | );                                                                     
;----------------------------------------------------------------------
   [ B0]   BNOP    .S1     L138,5            ; |937| 
           ; BRANCHCC OCCURS {L138}          ; |937| 
DW$L$__configTransfer$35$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$36$B:
           BNOP    .S1     L139,4            ; |937| 
           MVK     .L1     0x1,A3            ; |937| 
           ; BRANCH OCCURS {L139}            ; |937| 
DW$L$__configTransfer$36$E:
;** --------------------------------------------------------------------------*
L138:    
DW$L$__configTransfer$37$B:
           ZERO    .L1     A3                ; |937| 
DW$L$__configTransfer$37$E:
;** --------------------------------------------------------------------------*
L139:    
DW$L$__configTransfer$38$B:
           LDW     .D2T2   *+SP(76),B4       ; |937| 
           SHL     .S1     A3,20,A4          ; |937| 
           ZERO    .L1     A3                ; |937| 
   [ B0]   BNOP    .S1     L140,1            ; |937| 
           SHL     .S2     B4,29,B4          ; |937| 

           CLR     .S2     B4,0,28,B4        ; |937| 
||         MVKH    .S1     0x100000,A3       ; |937| 

           AND     .L1     A3,A4,A3          ; |937| 
           OR      .L1X    A3,B4,A4          ; |937| 
           ; BRANCHCC OCCURS {L140}          ; |937| 
DW$L$__configTransfer$38$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$39$B:
           LDW     .D2T2   *+SP(12),B4       ; |937| 
           NOP             3
           MVK     .S2     113,B5            ; |937| 

           BNOP    .S1     L141,4            ; |937| 
||         LDW     .D2T2   *+B4[B5],B4       ; |937| 

           AND     .L1X    15,B4,A3          ; |937| 
           ; BRANCH OCCURS {L141}            ; |937| 
DW$L$__configTransfer$39$E:
;** --------------------------------------------------------------------------*
L140:    
DW$L$__configTransfer$40$B:
           ZERO    .L1     A3                ; |937| 
DW$L$__configTransfer$40$E:
;** --------------------------------------------------------------------------*
L141:    
DW$L$__configTransfer$41$B:
   [ B0]   BNOP    .S1     L142,1            ; |937| 

           ZERO    .L1     A3                ; |937| 
||         SHL     .S1     A3,16,A5          ; |937| 

           MVKH    .S1     0xf0000,A3        ; |937| 
           AND     .L1     A3,A5,A3          ; |937| 
           OR      .L1     A3,A4,A4          ; |937| 
           ; BRANCHCC OCCURS {L142}          ; |937| 
DW$L$__configTransfer$41$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$42$B:
           LDW     .D2T2   *+SP(12),B4       ; |937| 
           NOP             3
           MVK     .S2     113,B5            ; |937| 

           BNOP    .S1     L143,4            ; |937| 
||         LDW     .D2T2   *+B4[B5],B4       ; |937| 

           SHR     .S1X    B4,4,A3           ; |937| 
           ; BRANCH OCCURS {L143}            ; |937| 
DW$L$__configTransfer$42$E:
;** --------------------------------------------------------------------------*
L142:    
DW$L$__configTransfer$43$B:
           ZERO    .L1     A3                ; |937| 
DW$L$__configTransfer$43$E:
;** --------------------------------------------------------------------------*
L143:    
DW$L$__configTransfer$44$B:
           MVK     .S2     24576,B4          ; |937| 
           SHL     .S1     A3,13,A3          ; |937| 
           AND     .L1X    B4,A3,A3          ; |937| 

           OR      .L1     A3,A4,A3          ; |937| 
||         MVKL    .S2     0xa00002,B31      ; |937| 

           MVKH    .S2     0xa00002,B31      ; |937| 
           OR      .L2X    B31,A3,B4         ; |937| 
           STW     .D2T2   B4,*+SP(88)       ; |937| 
           NOP             2
	.dwpsn	"vportcap.c",955,13
;----------------------------------------------------------------------
; 955 | thrld = (i == 0) ? chan->yThrld : chan->cThrld;                        
;----------------------------------------------------------------------
   [ B0]   BNOP    .S1     L144,5            ; |955| 
           ; BRANCHCC OCCURS {L144}          ; |955| 
DW$L$__configTransfer$44$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$45$B:
           LDW     .D2T2   *+SP(12),B4       ; |955| 
           NOP             2
           MVK     .S2     129,B5            ; |955| 
           B       .S1     L145              ; |955| 
           LDW     .D2T2   *+B4[B5],B4       ; |955| 
           NOP             4
           ; BRANCH OCCURS {L145}            ; |955| 
DW$L$__configTransfer$45$E:
;** --------------------------------------------------------------------------*
L144:    
DW$L$__configTransfer$46$B:
           LDW     .D2T2   *+SP(12),B4       ; |955| 
           NOP             3
           MVK     .S2     130,B5            ; |955| 
           LDW     .D2T2   *+B4[B5],B4       ; |955| 
           NOP             4
DW$L$__configTransfer$46$E:
;** --------------------------------------------------------------------------*
L145:    
DW$L$__configTransfer$47$B:
           STW     .D2T2   B4,*+SP(44)       ; |955| 
           NOP             2
	.dwpsn	"vportcap.c",956,13
;----------------------------------------------------------------------
; 956 | cfgEdma.src = EDMA_SRC_RMK(chan->edmaAddr[i]);                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |956| 
           NOP             3
           MV      .L2     B0,B4
           ADDAW   .D2     B5,B4,B4          ; |956| 
           LDW     .D2T2   *+B4(28),B4       ; |956| 
           NOP             4
           STW     .D2T2   B4,*+SP(24)       ; |956| 
           NOP             2
	.dwpsn	"vportcap.c",957,13
;----------------------------------------------------------------------
; 957 | if(chan->interlaced) {                                                 
;----------------------------------------------------------------------

           MVK     .S2     231,B5            ; |957| 
||         MV      .L2     B5,B4

           LDHU    .D2T2   *+B4[B5],B0       ; |957| 
           NOP             4
   [!B0]   BNOP    .S1     L148,5            ; |957| 
           ; BRANCHCC OCCURS {L148}          ; |957| 
DW$L$__configTransfer$47$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$48$B:
	.dwpsn	"vportcap.c",964,17
;----------------------------------------------------------------------
; 964 | cfgEdma.cnt =                                                          
; 965 |   EDMA_CNT_RMK((chan->numEventsFld1) - 1, (thrld << 1));               
;----------------------------------------------------------------------
           MVK     .S2     128,B5            ; |964| 
           LDW     .D2T2   *+B4[B5],B5       ; |964| 
           LDW     .D2T2   *+SP(44),B31      ; |964| 
           NOP             3
           SUB     .L2     B5,1,B5           ; |964| 

           ADD     .L2     B31,B31,B4        ; |964| 
||         SHL     .S2     B5,16,B5          ; |964| 

           PACKHL2 .L2     B5,B4,B4          ; |964| 
           STW     .D2T2   B4,*+SP(28)       ; |964| 
           NOP             2
	.dwpsn	"vportcap.c",966,17
;----------------------------------------------------------------------
; 966 | if(chan->mergeFlds) {                                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |966| 
           NOP             4
           ADDK    .S2     460,B4            ; |966| 
           LDHU    .D2T2   *B4,B0            ; |966| 
           NOP             4
   [!B0]   BNOP    .S1     L146,5            ; |966| 
           ; BRANCHCC OCCURS {L146}          ; |966| 
DW$L$__configTransfer$48$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$49$B:
	.dwpsn	"vportcap.c",967,21
;----------------------------------------------------------------------
; 967 | cfgEdma.idx = EDMA_IDX_RMK(thrld << 4, 0);                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |967| 
           NOP             4
           SHL     .S2     B4,20,B4          ; |967| 
           CLR     .S2     B4,0,15,B4        ; |967| 
           STW     .D2T2   B4,*+SP(36)       ; |967| 
           NOP             2
	.dwpsn	"vportcap.c",968,17
;----------------------------------------------------------------------
; 968 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L147,5            ; |968| 
           ; BRANCH OCCURS {L147}            ; |968| 
DW$L$__configTransfer$49$E:
;** --------------------------------------------------------------------------*
L146:    
DW$L$__configTransfer$50$B:
	.dwpsn	"vportcap.c",969,21
;----------------------------------------------------------------------
; 969 | cfgEdma.idx = EDMA_IDX_RMK(thrld << 3, 0);                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |969| 
           NOP             4
           SHL     .S2     B4,19,B4          ; |969| 
           CLR     .S2     B4,0,15,B4        ; |969| 
           STW     .D2T2   B4,*+SP(36)       ; |969| 
DW$L$__configTransfer$50$E:
;** --------------------------------------------------------------------------*
L147:    
DW$L$__configTransfer$51$B:
	.dwpsn	"vportcap.c",974,17
;----------------------------------------------------------------------
; 974 | cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 1]);                  
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |974| 
           LDW     .D2T1   *+SP(12),A4       ; |974| 
           NOP             1
           MVK     .L1     1,A5              ; |974| 
           MVK     .S1     100,A31           ; |974| 
           ADDAW   .D1     A5,A3,A3          ; |974| 
           ADDAW   .D1     A4,A3,A3          ; |974| 
           LDW     .D1T1   *+A3[A31],A3      ; |974| 
           NOP             4
           EXTU    .S1     A3,16,16,A3       ; |974| 
           STW     .D2T1   A3,*+SP(40)       ; |974| 
           NOP             2
	.dwpsn	"vportcap.c",975,17
;----------------------------------------------------------------------
; 975 | cfgEdma.opt = optFld1;                                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(80),A3       ; |975| 
           NOP             4
           STW     .D2T1   A3,*+SP(20)       ; |975| 
           NOP             2
	.dwpsn	"vportcap.c",976,17
;----------------------------------------------------------------------
; 976 | cfgEdma.dst =                                                          
; 977 |   EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y1) + i));         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |976| 
           LDW     .D2T1   *+SP(12),A4       ; |976| 
           NOP             4
           ADDAW   .D1     A4,A3,A3          ; |976| 
           LDW     .D1T2   *+A3(52),B4       ; |976| 
           NOP             4
           STW     .D2T2   B4,*+SP(32)       ; |976| 
           NOP             2
	.dwpsn	"vportcap.c",978,17
;----------------------------------------------------------------------
; 978 | EDMA_config(chan->hEdma[i], &cfgEdma);                                 
;----------------------------------------------------------------------

           LDW     .D2T1   *+SP(16),A4       ; |978| 
||         MV      .L1     A4,A5

           MVKL    .S1     _EDMA_config,A3   ; |978| 
           MVKH    .S1     _EDMA_config,A3   ; |978| 
           MVK     .S1     97,A6             ; |978| 
           ADD     .D2     SP,20,B4          ; |978| 

           ADDAW   .D1     A5,A4,A4          ; |978| 
||         CALL    .S2X    A3                ; |978| 

           LDW     .D1T1   *+A4[A6],A4       ; |978| 
           ADDKPC  .S2     RL69,B3,3         ; |978| 
RL69:      ; CALL OCCURS {_EDMA_config}      ; |978| 
	.dwpsn	"vportcap.c",979,17
;----------------------------------------------------------------------
; 979 | EDMA_config(chan->hRld[4 * i], &cfgEdma);                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |979| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |979| 
           MVKL    .S2     _EDMA_config,B5   ; |979| 
           MVK     .S1     100,A4            ; |979| 
           SHL     .S2     B4,4,B4           ; |979| 
           MVKH    .S2     _EDMA_config,B5   ; |979| 

           ADD     .L1X    B4,A3,A3          ; |979| 
||         CALL    .S2     B5                ; |979| 

           LDW     .D1T1   *+A3[A4],A4       ; |979| 
           ADD     .D2     SP,20,B4          ; |979| 
           ADDKPC  .S2     RL70,B3,2         ; |979| 
RL70:      ; CALL OCCURS {_EDMA_config}      ; |979| 
	.dwpsn	"vportcap.c",980,17
;----------------------------------------------------------------------
; 980 | cfgEdma.dst =                                                          
; 981 |   EDMA_DST_RMK(*((Int *)(&chan->viops[1].frame.iFrm.y1) + i));         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |980| 
           LDW     .D2T1   *+SP(12),A4       ; |980| 
           NOP             4
           ADDAW   .D1     A4,A3,A3          ; |980| 
           LDW     .D1T2   *+A3(84),B4       ; |980| 
           NOP             4
           STW     .D2T2   B4,*+SP(32)       ; |980| 
           NOP             2
	.dwpsn	"vportcap.c",982,17
;----------------------------------------------------------------------
; 982 | cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 3]);                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |982| 
           NOP             2
           MVK     .L2     3,B6              ; |982| 
           MV      .L2X    A4,B5             ; |982| 
           ADDAW   .D2     B6,B4,B4          ; |982| 

           MVK     .S2     100,B5            ; |982| 
||         ADDAW   .D2     B5,B4,B4          ; |982| 

           LDW     .D2T2   *+B4[B5],B4       ; |982| 
           NOP             4
           EXTU    .S2     B4,16,16,B4       ; |982| 
           STW     .D2T2   B4,*+SP(40)       ; |982| 
           NOP             2
	.dwpsn	"vportcap.c",983,17
;----------------------------------------------------------------------
; 983 | EDMA_config(chan->hRld[4 * i + 2], &cfgEdma);                          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A4       ; |983| 
           LDW     .D2T1   *+SP(12),A5       ; |983| 
           MVKL    .S1     _EDMA_config,A3   ; |983| 
           MVKH    .S1     _EDMA_config,A3   ; |983| 
           MVK     .L1     2,A6              ; |983| 
           ADDAW   .D1     A6,A4,A4          ; |983| 

           CALL    .S2X    A3                ; |983| 
||         ADDAW   .D1     A5,A4,A4          ; |983| 
||         MVK     .S1     100,A6            ; |983| 

           LDW     .D1T1   *+A4[A6],A4       ; |983| 
           ADDKPC  .S2     RL71,B3,2         ; |983| 
           ADD     .D2     SP,20,B4          ; |983| 
RL71:      ; CALL OCCURS {_EDMA_config}      ; |983| 
	.dwpsn	"vportcap.c",986,17
;----------------------------------------------------------------------
; 986 | cfgEdma.opt = optFld2a;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(84),B4       ; |986| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |986| 
           NOP             2
	.dwpsn	"vportcap.c",987,17
;----------------------------------------------------------------------
; 987 | cfgEdma.cnt =                                                          
; 988 |   EDMA_CNT_RMK((chan->numEvents-chan->numEventsFld1) - 1,              
; 989 |    (thrld << 1));                                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |987| 
           NOP             1
           MVK     .S2     128,B5            ; |987| 
           MVK     .S1     127,A4            ; |987| 
           LDW     .D2T2   *+SP(44),B31      ; |987| 
           MV      .L1X    B4,A3             ; |987| 

           LDW     .D2T2   *+B4[B5],B5       ; |987| 
||         LDW     .D1T1   *+A3[A4],A3       ; |987| 

           NOP             4
           SUB     .L1X    A3,B5,A3          ; |987| 

           ADD     .L2     B31,B31,B4        ; |987| 
||         SUB     .L1     A3,1,A3           ; |987| 

           SHL     .S1     A3,16,A3          ; |987| 
           PACKHL2 .L1X    A3,B4,A3          ; |987| 
           STW     .D2T1   A3,*+SP(28)       ; |987| 
           NOP             2
	.dwpsn	"vportcap.c",990,17
;----------------------------------------------------------------------
; 990 | cfgEdma.dst =                                                          
; 991 |   EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y2) + i));         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |990| 
           LDW     .D2T1   *+SP(12),A4       ; |990| 
           NOP             4
           ADDAW   .D1     A4,A3,A3          ; |990| 
           LDW     .D1T1   *+A3(64),A3       ; |990| 
           NOP             4
           STW     .D2T1   A3,*+SP(32)       ; |990| 
           NOP             2
	.dwpsn	"vportcap.c",992,17
;----------------------------------------------------------------------
; 992 | cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 2]);                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |992| 
           NOP             1
           MVK     .L2     2,B6              ; |992| 
           MV      .L2X    A4,B5             ; |992| 
           MVK     .S2     100,B30           ; |992| 
           ADDAW   .D2     B6,B4,B4          ; |992| 
           ADDAW   .D2     B5,B4,B4          ; |992| 
           LDW     .D2T2   *+B4[B30],B4      ; |992| 
           NOP             4
           EXTU    .S2     B4,16,16,B4       ; |992| 
           STW     .D2T2   B4,*+SP(40)       ; |992| 
           NOP             2
	.dwpsn	"vportcap.c",993,17
;----------------------------------------------------------------------
; 993 | EDMA_config(chan->hRld[4 * i + 1], &cfgEdma);                          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |993| 
           MVK     .L1     1,A5              ; |993| 
           MVKL    .S2     _EDMA_config,B5   ; |993| 
           MVKH    .S2     _EDMA_config,B5   ; |993| 
           MVK     .S1     100,A31           ; |993| 
           ADDAW   .D1     A5,A3,A3          ; |993| 

           ADDAW   .D1     A4,A3,A3          ; |993| 
||         CALL    .S2     B5                ; |993| 

           LDW     .D1T1   *+A3[A31],A4      ; |993| 
           ADDKPC  .S2     RL72,B3,2         ; |993| 
           ADD     .D2     SP,20,B4          ; |993| 
RL72:      ; CALL OCCURS {_EDMA_config}      ; |993| 
	.dwpsn	"vportcap.c",994,17
;----------------------------------------------------------------------
; 994 | cfgEdma.opt = optFld2b;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(88),B4       ; |994| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |994| 
           NOP             2
	.dwpsn	"vportcap.c",995,17
;----------------------------------------------------------------------
; 995 | cfgEdma.dst =                                                          
; 996 |   EDMA_DST_RMK(*((Int *)(&chan->viops[1].frame.iFrm.y2) + i));         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |995| 
           LDW     .D2T1   *+SP(12),A4       ; |995| 
           NOP             4
           ADDAW   .D1     A4,A3,A3          ; |995| 
           LDW     .D1T2   *+A3(96),B4       ; |995| 
           NOP             4
DW$L$__configTransfer$51$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$52$B:
           STW     .D2T2   B4,*+SP(32)       ; |995| 
           NOP             2
	.dwpsn	"vportcap.c",997,17
;----------------------------------------------------------------------
; 997 | cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i]);                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |997| 
           NOP             4
           SHL     .S2     B5,4,B5           ; |997| 

           MVK     .S2     100,B5            ; |997| 
||         ADD     .L2X    B5,A4,B4          ; |997| 

           LDW     .D2T2   *+B4[B5],B4       ; |997| 
           NOP             4
           EXTU    .S2     B4,16,16,B4       ; |997| 
           STW     .D2T2   B4,*+SP(40)       ; |997| 
           NOP             2
	.dwpsn	"vportcap.c",998,17
;----------------------------------------------------------------------
; 998 | EDMA_config(chan->hRld[4 * i + 3], &cfgEdma);                          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A4       ; |998| 
           LDW     .D2T1   *+SP(12),A5       ; |998| 
           MVKL    .S1     _EDMA_config,A3   ; |998| 
           MVKH    .S1     _EDMA_config,A3   ; |998| 
           MVK     .L1     3,A6              ; |998| 
           ADDAW   .D1     A6,A4,A4          ; |998| 

           CALL    .S2X    A3                ; |998| 
||         ADDAW   .D1     A5,A4,A4          ; |998| 
||         MVK     .S1     100,A6            ; |998| 

           LDW     .D1T1   *+A4[A6],A4       ; |998| 
           ADDKPC  .S2     RL73,B3,2         ; |998| 
           ADD     .D2     SP,20,B4          ; |998| 
RL73:      ; CALL OCCURS {_EDMA_config}      ; |998| 
	.dwpsn	"vportcap.c",1000,13
;----------------------------------------------------------------------
; 1000 | }else {/* if not interlaced capture, configure EDMA to transfer */     
;----------------------------------------------------------------------
           BNOP    .S1     L149,5            ; |1000| 
           ; BRANCH OCCURS {L149}            ; |1000| 
DW$L$__configTransfer$52$E:
;** --------------------------------------------------------------------------*
L148:    
DW$L$__configTransfer$53$B:
	.dwpsn	"vportcap.c",1002,17
;----------------------------------------------------------------------
; 1002 | cfgEdma.opt = optFld2a;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(84),B4       ; |1002| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |1002| 
           NOP             2
	.dwpsn	"vportcap.c",1003,17
;----------------------------------------------------------------------
; 1003 | cfgEdma.cnt = EDMA_CNT_RMK((chan->numEvents) - 1, (thrld << 1));       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1003| 
           NOP             2
           MVK     .S2     127,B5            ; |1003| 
           LDW     .D2T2   *+SP(44),B31      ; |1003| 
           LDW     .D2T2   *+B4[B5],B5       ; |1003| 
           NOP             4
           SUB     .L2     B5,1,B5           ; |1003| 

           ADD     .L2     B31,B31,B4        ; |1003| 
||         SHL     .S2     B5,16,B5          ; |1003| 

           PACKHL2 .L2     B5,B4,B4          ; |1003| 
           STW     .D2T2   B4,*+SP(28)       ; |1003| 
           NOP             2
	.dwpsn	"vportcap.c",1004,17
;----------------------------------------------------------------------
; 1004 | cfgEdma.idx = EDMA_IDX_RMK(thrld << 3, 0);                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |1004| 
           NOP             4
           SHL     .S2     B4,19,B4          ; |1004| 
           CLR     .S2     B4,0,15,B4        ; |1004| 
           STW     .D2T2   B4,*+SP(36)       ; |1004| 
           NOP             2
	.dwpsn	"vportcap.c",1005,17
;----------------------------------------------------------------------
; 1005 | cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 2]);                  
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |1005| 
           LDW     .D2T1   *+SP(12),A4       ; |1005| 
           NOP             1
           MVK     .L1     2,A5              ; |1005| 
           MVK     .S1     100,A31           ; |1005| 
           ADDAW   .D1     A5,A3,A3          ; |1005| 
           ADDAW   .D1     A4,A3,A3          ; |1005| 
           LDW     .D1T1   *+A3[A31],A3      ; |1005| 
           NOP             4
           EXTU    .S1     A3,16,16,A3       ; |1005| 
           STW     .D2T1   A3,*+SP(40)       ; |1005| 
           NOP             2
	.dwpsn	"vportcap.c",1008,17
;----------------------------------------------------------------------
; 1008 | cfgEdma.dst = EDMA_DST_RMK(                                            
; 1009 |     *((Int *)(&chan->viops[0].frame.iFrm.y1) + i));                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |1008| 
           LDW     .D2T1   *+SP(12),A4       ; |1008| 
           NOP             4
           ADDAW   .D1     A4,A3,A3          ; |1008| 
           LDW     .D1T2   *+A3(52),B4       ; |1008| 
           NOP             4
           STW     .D2T2   B4,*+SP(32)       ; |1008| 
           NOP             2
	.dwpsn	"vportcap.c",1010,17
;----------------------------------------------------------------------
; 1010 | EDMA_config(chan->hEdma[i], &cfgEdma);                                 
;----------------------------------------------------------------------

           LDW     .D2T1   *+SP(16),A4       ; |1010| 
||         MV      .L1     A4,A5

           MVKL    .S1     _EDMA_config,A3   ; |1010| 
           MVKH    .S1     _EDMA_config,A3   ; |1010| 
           MVK     .S1     97,A6             ; |1010| 
           ADD     .D2     SP,20,B4          ; |1010| 

           ADDAW   .D1     A5,A4,A4          ; |1010| 
||         CALL    .S2X    A3                ; |1010| 

           LDW     .D1T1   *+A4[A6],A4       ; |1010| 
           ADDKPC  .S2     RL74,B3,3         ; |1010| 
RL74:      ; CALL OCCURS {_EDMA_config}      ; |1010| 
	.dwpsn	"vportcap.c",1011,17
;----------------------------------------------------------------------
; 1011 | EDMA_config(chan->hRld[4 * i], &cfgEdma);                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |1011| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |1011| 
           MVKL    .S2     _EDMA_config,B5   ; |1011| 
           MVK     .S1     100,A4            ; |1011| 
           SHL     .S2     B4,4,B4           ; |1011| 
           MVKH    .S2     _EDMA_config,B5   ; |1011| 

           ADD     .L1X    B4,A3,A3          ; |1011| 
||         CALL    .S2     B5                ; |1011| 

           LDW     .D1T1   *+A3[A4],A4       ; |1011| 
           ADD     .D2     SP,20,B4          ; |1011| 
           ADDKPC  .S2     RL75,B3,2         ; |1011| 
RL75:      ; CALL OCCURS {_EDMA_config}      ; |1011| 
	.dwpsn	"vportcap.c",1013,17
;----------------------------------------------------------------------
; 1013 | cfgEdma.opt = optFld2b;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(88),B4       ; |1013| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |1013| 
           NOP             2
	.dwpsn	"vportcap.c",1014,17
;----------------------------------------------------------------------
; 1014 | cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i]);                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |1014| 
           LDW     .D2T2   *+SP(12),B4       ; |1014| 
           NOP             2
           MVK     .S2     100,B31           ; |1014| 
           SHL     .S2     B5,4,B5           ; |1014| 
           ADD     .L2     B5,B4,B4          ; |1014| 
           LDW     .D2T2   *+B4[B31],B4      ; |1014| 
           NOP             4
           EXTU    .S2     B4,16,16,B4       ; |1014| 
           STW     .D2T2   B4,*+SP(40)       ; |1014| 
           NOP             2
	.dwpsn	"vportcap.c",1015,17
;----------------------------------------------------------------------
; 1015 | cfgEdma.dst = EDMA_DST_RMK(                                            
; 1016 |     *((Int *)(&chan->viops[1].frame.iFrm.y1) + i));                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |1015| 
           LDW     .D2T1   *+SP(12),A4       ; |1015| 
           NOP             4
           ADDAW   .D1     A4,A3,A3          ; |1015| 
           LDW     .D1T1   *+A3(84),A3       ; |1015| 
           NOP             4
           STW     .D2T1   A3,*+SP(32)       ; |1015| 
           NOP             2
	.dwpsn	"vportcap.c",1017,17
;----------------------------------------------------------------------
; 1017 | EDMA_config(chan->hRld[4 * i + 2], &cfgEdma);                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |1017| 
           MVKL    .S1     _EDMA_config,A3   ; |1017| 
           MVK     .L2     2,B6              ; |1017| 
           MVKH    .S1     _EDMA_config,A3   ; |1017| 
           MV      .L2X    A4,B5             ; |1017| 
           ADDAW   .D2     B6,B4,B4          ; |1017| 

           MVK     .S2     100,B5            ; |1017| 
||         ADDAW   .D2     B5,B4,B4          ; |1017| 

           CALL    .S2X    A3                ; |1017| 
           LDW     .D2T1   *+B4[B5],A4       ; |1017| 
           ADDKPC  .S2     RL76,B3,2         ; |1017| 
           ADD     .D2     SP,20,B4          ; |1017| 
RL76:      ; CALL OCCURS {_EDMA_config}      ; |1017| 
DW$L$__configTransfer$53$E:
;** --------------------------------------------------------------------------*
L149:    
DW$L$__configTransfer$54$B:
	.dwendtag DW$271

	.dwpsn	"vportcap.c",901,38
           LDW     .D2T2   *+SP(16),B4       ; |901| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |901| 
           STW     .D2T2   B4,*+SP(16)       ; |901| 
           NOP             2
	.dwpsn	"vportcap.c",901,20
           LDW     .D2T2   *+SP(52),B4       ; |901| 
           LDW     .D2T2   *+SP(16),B5       ; |901| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |901| 
   [ B0]   BNOP    .S1     L131,5            ; |901| 
           ; BRANCHCC OCCURS {L131}          ; |901| 
DW$L$__configTransfer$54$E:
;** --------------------------------------------------------------------------*
L150:    
	.dwpsn	"vportcap.c",1020,9
;----------------------------------------------------------------------
; 1020 | chan->nextEDMARlds = 1;                                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1020| 
           NOP             2
           MVK     .L1     1,A4              ; |1020| 
           MVK     .S1     142,A5            ; |1020| 
           STW     .D1T1   A4,*+A3[A5]       ; |1020| 
           NOP             2
	.dwpsn	"vportcap.c",1026,9
;----------------------------------------------------------------------
; 1026 | IRQ_map(IRQ_EVT_EDMAINT, irqId);                                       
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_map,A3       ; |1026| 
           MVKH    .S1     _IRQ_map,A3       ; |1026| 
           LDW     .D2T2   *+SP(72),B4       ; |1026| 
           CALL    .S2X    A3                ; |1026| 
           ADDKPC  .S2     RL77,B3,3         ; |1026| 
           MVK     .L1     0x8,A4            ; |1026| 
RL77:      ; CALL OCCURS {_IRQ_map}          ; |1026| 
	.dwpsn	"vportcap.c",1027,9
;----------------------------------------------------------------------
; 1027 | HWI_dispatchPlug(irqId, (Fxn)EDMA_intDispatcher, -1, NULL);            
;----------------------------------------------------------------------
           CALL    .S1     _HWI_dispatchPlug ; |1027| 
           LDW     .D2T1   *+SP(72),A4       ; |1027| 
           MVKL    .S2     _EDMA_intDispatcher,B4 ; |1027| 
           MVKH    .S2     _EDMA_intDispatcher,B4 ; |1027| 
           ADDKPC  .S2     RL78,B3,0         ; |1027| 

           ZERO    .L2     B6                ; |1027| 
||         MVK     .L1     0xffffffff,A6     ; |1027| 

RL78:      ; CALL OCCURS {_HWI_dispatchPlug}  ; |1027| 
	.dwpsn	"vportcap.c",1029,9
;----------------------------------------------------------------------
; 1029 | EDMA_intClear(chan->tcc[0]);                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1029| 
           MVKL    .S1     _EDMA_intClear,A3 ; |1029| 
           MVKH    .S1     _EDMA_intClear,A3 ; |1029| 
           MVK     .S2     112,B5            ; |1029| 
           CALL    .S2X    A3                ; |1029| 
           LDW     .D2T1   *+B4[B5],A4       ; |1029| 
           ADDKPC  .S2     RL79,B3,3         ; |1029| 
RL79:      ; CALL OCCURS {_EDMA_intClear}    ; |1029| 
	.dwpsn	"vportcap.c",1030,9
;----------------------------------------------------------------------
; 1030 | EDMA_intHook(chan->tcc[0], captureEdmaISR);                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |1030| 
           MVKL    .S1     _EDMA_intHook,A3  ; |1030| 
           MVKH    .S1     _EDMA_intHook,A3  ; |1030| 
           MVK     .S2     112,B6            ; |1030| 
           CALL    .S2X    A3                ; |1030| 
           LDW     .D2T1   *+B5[B6],A4       ; |1030| 
           MVKL    .S2     _captureEdmaISR,B4 ; |1030| 
           MVKH    .S2     _captureEdmaISR,B4 ; |1030| 
           ADDKPC  .S2     RL80,B3,1         ; |1030| 
RL80:      ; CALL OCCURS {_EDMA_intHook}     ; |1030| 
	.dwpsn	"vportcap.c",1031,9
;----------------------------------------------------------------------
; 1031 | EDMA_intEnable(chan->tcc[0]);                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1031| 
           MVKL    .S1     _EDMA_intEnable,A3 ; |1031| 
           MVKH    .S1     _EDMA_intEnable,A3 ; |1031| 
           MVK     .S2     112,B5            ; |1031| 
           CALL    .S2X    A3                ; |1031| 
           LDW     .D2T1   *+B4[B5],A4       ; |1031| 
           ADDKPC  .S2     RL81,B3,3         ; |1031| 
RL81:      ; CALL OCCURS {_EDMA_intEnable}   ; |1031| 
	.dwpsn	"vportcap.c",1032,9
;----------------------------------------------------------------------
; 1032 | EDMA_intClear(chan->tcc[1]);                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1032| 
           MVKL    .S1     _EDMA_intClear,A3 ; |1032| 
           MVKH    .S1     _EDMA_intClear,A3 ; |1032| 
           MVK     .S2     113,B5            ; |1032| 
           CALL    .S2X    A3                ; |1032| 
           LDW     .D2T1   *+B4[B5],A4       ; |1032| 
           ADDKPC  .S2     RL82,B3,3         ; |1032| 
RL82:      ; CALL OCCURS {_EDMA_intClear}    ; |1032| 
	.dwpsn	"vportcap.c",1033,9
;----------------------------------------------------------------------
; 1033 | EDMA_intHook(chan->tcc[1], captureEdmaISR);                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |1033| 
           MVKL    .S1     _EDMA_intHook,A3  ; |1033| 
           MVKH    .S1     _EDMA_intHook,A3  ; |1033| 
           MVK     .S2     113,B6            ; |1033| 
           CALL    .S2X    A3                ; |1033| 
           LDW     .D2T1   *+B5[B6],A4       ; |1033| 
           MVKL    .S2     _captureEdmaISR,B4 ; |1033| 
           MVKH    .S2     _captureEdmaISR,B4 ; |1033| 
           ADDKPC  .S2     RL83,B3,1         ; |1033| 
RL83:      ; CALL OCCURS {_EDMA_intHook}     ; |1033| 
	.dwpsn	"vportcap.c",1034,9
;----------------------------------------------------------------------
; 1034 | EDMA_intEnable(chan->tcc[1]);                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1034| 
           MVKL    .S1     _EDMA_intEnable,A3 ; |1034| 
           MVKH    .S1     _EDMA_intEnable,A3 ; |1034| 
           MVK     .S2     113,B5            ; |1034| 
           CALL    .S2X    A3                ; |1034| 
           LDW     .D2T1   *+B4[B5],A4       ; |1034| 
           ADDKPC  .S2     RL84,B3,3         ; |1034| 
RL84:      ; CALL OCCURS {_EDMA_intEnable}   ; |1034| 
	.dwpsn	"vportcap.c",1035,13
;----------------------------------------------------------------------
; 1035 | for(i = 0; i < numEdmaChans; i ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1035| 
           STW     .D2T2   B4,*+SP(16)       ; |1035| 
           NOP             2
	.dwpsn	"vportcap.c",1035,20
           LDW     .D2T2   *+SP(52),B4       ; |1035| 
           LDW     .D2T2   *+SP(16),B5       ; |1035| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1035| 
   [!B0]   BNOP    .S1     L152,5            ; |1035| 
           ; BRANCHCC OCCURS {L152}          ; |1035| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L151:    
DW$L$__configTransfer$56$B:
	.dwpsn	"vportcap.c",1036,13
;----------------------------------------------------------------------
; 1036 | EDMA_disableChannel(chan->hEdma[i]);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |1036| 
           LDW     .D2T1   *+SP(16),A6       ; |1036| 
           NOP             1
           MVKL    .S1     _EDMA_disableChannel,A5 ; |1036| 
           MVKH    .S1     _EDMA_disableChannel,A5 ; |1036| 
           MVK     .S1     97,A3             ; |1036| 

           ADDAW   .D1     A4,A6,A4          ; |1036| 
||         CALL    .S2X    A5                ; |1036| 

           LDW     .D1T1   *+A4[A3],A4       ; |1036| 
           ADDKPC  .S2     RL85,B3,3         ; |1036| 
RL85:      ; CALL OCCURS {_EDMA_disableChannel}  ; |1036| 
	.dwpsn	"vportcap.c",1037,13
;----------------------------------------------------------------------
; 1037 | EDMA_clearChannel(chan->hEdma[i]);                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A6       ; |1037| 
           LDW     .D2T1   *+SP(16),A4       ; |1037| 
           NOP             1
           MVKL    .S1     _EDMA_clearChannel,A3 ; |1037| 
           MVKH    .S1     _EDMA_clearChannel,A3 ; |1037| 
           MVK     .S1     97,A5             ; |1037| 

           ADDAW   .D1     A6,A4,A4          ; |1037| 
||         CALL    .S2X    A3                ; |1037| 

           LDW     .D1T1   *+A4[A5],A4       ; |1037| 
           ADDKPC  .S2     RL86,B3,3         ; |1037| 
RL86:      ; CALL OCCURS {_EDMA_clearChannel}  ; |1037| 
	.dwpsn	"vportcap.c",1038,13
;----------------------------------------------------------------------
; 1038 | EDMA_enableChannel(chan->hEdma[i]);                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B6       ; |1038| 
           LDW     .D2T2   *+SP(16),B7       ; |1038| 
           NOP             1
           MVKL    .S2     _EDMA_enableChannel,B4 ; |1038| 
           MVKH    .S2     _EDMA_enableChannel,B4 ; |1038| 
           MVK     .S2     97,B5             ; |1038| 

           ADDAW   .D2     B6,B7,B6          ; |1038| 
||         CALL    .S2     B4                ; |1038| 

           LDW     .D2T1   *+B6[B5],A4       ; |1038| 
           ADDKPC  .S2     RL87,B3,3         ; |1038| 
RL87:      ; CALL OCCURS {_EDMA_enableChannel}  ; |1038| 
	.dwpsn	"vportcap.c",1035,38
           LDW     .D2T2   *+SP(16),B4       ; |1035| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1035| 
           STW     .D2T2   B4,*+SP(16)       ; |1035| 
           NOP             2
	.dwpsn	"vportcap.c",1035,20
           LDW     .D2T2   *+SP(52),B5       ; |1035| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |1035| 
   [ B0]   BNOP    .S1     L151,5            ; |1035| 
           ; BRANCHCC OCCURS {L151}          ; |1035| 
DW$L$__configTransfer$56$E:
;** --------------------------------------------------------------------------*
L152:    
	.dwpsn	"vportcap.c",1040,9
;----------------------------------------------------------------------
; 1040 | chan->status |= _VPORT_READY;                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1040| 
           NOP             4
           LDW     .D2T2   *B4,B5            ; |1040| 
           NOP             4
           OR      .L2     4,B5,B5           ; |1040| 
           STW     .D2T2   B5,*B4            ; |1040| 
           NOP             2
	.dwpsn	"vportcap.c",1041,9
;----------------------------------------------------------------------
; 1041 | IRQ_enable(IRQ_EVT_EDMAINT);                                           
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_enable,A3    ; |1041| 
           MVKH    .S1     _IRQ_enable,A3    ; |1041| 
           MVK     .L1     0x8,A4            ; |1041| 
           CALL    .S2X    A3                ; |1041| 
           ADDKPC  .S2     RL88,B3,4         ; |1041| 
RL88:      ; CALL OCCURS {_IRQ_enable}       ; |1041| 
;** --------------------------------------------------------------------------*
L153:    
	.dwpsn	"vportcap.c",1044,5
;----------------------------------------------------------------------
; 1044 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1044| 
;** --------------------------------------------------------------------------*
L154:    
	.dwpsn	"vportcap.c",1046,1
           LDW     .D2T2   *++SP(96),B3      ; |1046| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1046| 
           ; BRANCH OCCURS {B3}              ; |1046| 

DW$275	.dwtag  DW_TAG_loop
	.dwattr DW$275, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L151:1:1301983882")
	.dwattr DW$275, DW_AT_begin_file("vportcap.c")
	.dwattr DW$275, DW_AT_begin_line(0x40b)
	.dwattr DW$275, DW_AT_end_line(0x40f)
DW$276	.dwtag  DW_TAG_loop_range
	.dwattr DW$276, DW_AT_low_pc(DW$L$__configTransfer$56$B)
	.dwattr DW$276, DW_AT_high_pc(DW$L$__configTransfer$56$E)
	.dwendtag DW$275


DW$277	.dwtag  DW_TAG_loop
	.dwattr DW$277, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L131:1:1301983882")
	.dwattr DW$277, DW_AT_begin_file("vportcap.c")
	.dwattr DW$277, DW_AT_begin_line(0x385)
	.dwattr DW$277, DW_AT_end_line(0x3fb)
DW$278	.dwtag  DW_TAG_loop_range
	.dwattr DW$278, DW_AT_low_pc(DW$L$__configTransfer$26$B)
	.dwattr DW$278, DW_AT_high_pc(DW$L$__configTransfer$26$E)
DW$279	.dwtag  DW_TAG_loop_range
	.dwattr DW$279, DW_AT_low_pc(DW$L$__configTransfer$27$B)
	.dwattr DW$279, DW_AT_high_pc(DW$L$__configTransfer$27$E)
DW$280	.dwtag  DW_TAG_loop_range
	.dwattr DW$280, DW_AT_low_pc(DW$L$__configTransfer$28$B)
	.dwattr DW$280, DW_AT_high_pc(DW$L$__configTransfer$28$E)
DW$281	.dwtag  DW_TAG_loop_range
	.dwattr DW$281, DW_AT_low_pc(DW$L$__configTransfer$29$B)
	.dwattr DW$281, DW_AT_high_pc(DW$L$__configTransfer$29$E)
DW$282	.dwtag  DW_TAG_loop_range
	.dwattr DW$282, DW_AT_low_pc(DW$L$__configTransfer$30$B)
	.dwattr DW$282, DW_AT_high_pc(DW$L$__configTransfer$30$E)
DW$283	.dwtag  DW_TAG_loop_range
	.dwattr DW$283, DW_AT_low_pc(DW$L$__configTransfer$31$B)
	.dwattr DW$283, DW_AT_high_pc(DW$L$__configTransfer$31$E)
DW$284	.dwtag  DW_TAG_loop_range
	.dwattr DW$284, DW_AT_low_pc(DW$L$__configTransfer$32$B)
	.dwattr DW$284, DW_AT_high_pc(DW$L$__configTransfer$32$E)
DW$285	.dwtag  DW_TAG_loop_range
	.dwattr DW$285, DW_AT_low_pc(DW$L$__configTransfer$33$B)
	.dwattr DW$285, DW_AT_high_pc(DW$L$__configTransfer$33$E)
DW$286	.dwtag  DW_TAG_loop_range
	.dwattr DW$286, DW_AT_low_pc(DW$L$__configTransfer$34$B)
	.dwattr DW$286, DW_AT_high_pc(DW$L$__configTransfer$34$E)
DW$287	.dwtag  DW_TAG_loop_range
	.dwattr DW$287, DW_AT_low_pc(DW$L$__configTransfer$35$B)
	.dwattr DW$287, DW_AT_high_pc(DW$L$__configTransfer$35$E)
DW$288	.dwtag  DW_TAG_loop_range
	.dwattr DW$288, DW_AT_low_pc(DW$L$__configTransfer$36$B)
	.dwattr DW$288, DW_AT_high_pc(DW$L$__configTransfer$36$E)
DW$289	.dwtag  DW_TAG_loop_range
	.dwattr DW$289, DW_AT_low_pc(DW$L$__configTransfer$37$B)
	.dwattr DW$289, DW_AT_high_pc(DW$L$__configTransfer$37$E)
DW$290	.dwtag  DW_TAG_loop_range
	.dwattr DW$290, DW_AT_low_pc(DW$L$__configTransfer$38$B)
	.dwattr DW$290, DW_AT_high_pc(DW$L$__configTransfer$38$E)
DW$291	.dwtag  DW_TAG_loop_range
	.dwattr DW$291, DW_AT_low_pc(DW$L$__configTransfer$39$B)
	.dwattr DW$291, DW_AT_high_pc(DW$L$__configTransfer$39$E)
DW$292	.dwtag  DW_TAG_loop_range
	.dwattr DW$292, DW_AT_low_pc(DW$L$__configTransfer$40$B)
	.dwattr DW$292, DW_AT_high_pc(DW$L$__configTransfer$40$E)
DW$293	.dwtag  DW_TAG_loop_range
	.dwattr DW$293, DW_AT_low_pc(DW$L$__configTransfer$41$B)
	.dwattr DW$293, DW_AT_high_pc(DW$L$__configTransfer$41$E)
DW$294	.dwtag  DW_TAG_loop_range
	.dwattr DW$294, DW_AT_low_pc(DW$L$__configTransfer$42$B)
	.dwattr DW$294, DW_AT_high_pc(DW$L$__configTransfer$42$E)
DW$295	.dwtag  DW_TAG_loop_range
	.dwattr DW$295, DW_AT_low_pc(DW$L$__configTransfer$43$B)
	.dwattr DW$295, DW_AT_high_pc(DW$L$__configTransfer$43$E)
DW$296	.dwtag  DW_TAG_loop_range
	.dwattr DW$296, DW_AT_low_pc(DW$L$__configTransfer$44$B)
	.dwattr DW$296, DW_AT_high_pc(DW$L$__configTransfer$44$E)
DW$297	.dwtag  DW_TAG_loop_range
	.dwattr DW$297, DW_AT_low_pc(DW$L$__configTransfer$45$B)
	.dwattr DW$297, DW_AT_high_pc(DW$L$__configTransfer$45$E)
DW$298	.dwtag  DW_TAG_loop_range
	.dwattr DW$298, DW_AT_low_pc(DW$L$__configTransfer$46$B)
	.dwattr DW$298, DW_AT_high_pc(DW$L$__configTransfer$46$E)
DW$299	.dwtag  DW_TAG_loop_range
	.dwattr DW$299, DW_AT_low_pc(DW$L$__configTransfer$47$B)
	.dwattr DW$299, DW_AT_high_pc(DW$L$__configTransfer$47$E)
DW$300	.dwtag  DW_TAG_loop_range
	.dwattr DW$300, DW_AT_low_pc(DW$L$__configTransfer$48$B)
	.dwattr DW$300, DW_AT_high_pc(DW$L$__configTransfer$48$E)
DW$301	.dwtag  DW_TAG_loop_range
	.dwattr DW$301, DW_AT_low_pc(DW$L$__configTransfer$49$B)
	.dwattr DW$301, DW_AT_high_pc(DW$L$__configTransfer$49$E)
DW$302	.dwtag  DW_TAG_loop_range
	.dwattr DW$302, DW_AT_low_pc(DW$L$__configTransfer$50$B)
	.dwattr DW$302, DW_AT_high_pc(DW$L$__configTransfer$50$E)
DW$303	.dwtag  DW_TAG_loop_range
	.dwattr DW$303, DW_AT_low_pc(DW$L$__configTransfer$51$B)
	.dwattr DW$303, DW_AT_high_pc(DW$L$__configTransfer$51$E)
DW$304	.dwtag  DW_TAG_loop_range
	.dwattr DW$304, DW_AT_low_pc(DW$L$__configTransfer$52$B)
	.dwattr DW$304, DW_AT_high_pc(DW$L$__configTransfer$52$E)
DW$305	.dwtag  DW_TAG_loop_range
	.dwattr DW$305, DW_AT_low_pc(DW$L$__configTransfer$53$B)
	.dwattr DW$305, DW_AT_high_pc(DW$L$__configTransfer$53$E)
DW$306	.dwtag  DW_TAG_loop_range
	.dwattr DW$306, DW_AT_low_pc(DW$L$__configTransfer$54$B)
	.dwattr DW$306, DW_AT_high_pc(DW$L$__configTransfer$54$E)
	.dwendtag DW$277


DW$307	.dwtag  DW_TAG_loop
	.dwattr DW$307, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L127:1:1301983882")
	.dwattr DW$307, DW_AT_begin_file("vportcap.c")
	.dwattr DW$307, DW_AT_begin_line(0x37a)
	.dwattr DW$307, DW_AT_end_line(0x37d)
DW$308	.dwtag  DW_TAG_loop_range
	.dwattr DW$308, DW_AT_low_pc(DW$L$__configTransfer$21$B)
	.dwattr DW$308, DW_AT_high_pc(DW$L$__configTransfer$21$E)
	.dwendtag DW$307


DW$309	.dwtag  DW_TAG_loop
	.dwattr DW$309, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L121:1:1301983882")
	.dwattr DW$309, DW_AT_begin_file("vportcap.c")
	.dwattr DW$309, DW_AT_begin_line(0x34f)
	.dwattr DW$309, DW_AT_end_line(0x378)
DW$310	.dwtag  DW_TAG_loop_range
	.dwattr DW$310, DW_AT_low_pc(DW$L$__configTransfer$11$B)
	.dwattr DW$310, DW_AT_high_pc(DW$L$__configTransfer$11$E)
DW$311	.dwtag  DW_TAG_loop_range
	.dwattr DW$311, DW_AT_low_pc(DW$L$__configTransfer$16$B)
	.dwattr DW$311, DW_AT_high_pc(DW$L$__configTransfer$16$E)
DW$312	.dwtag  DW_TAG_loop_range
	.dwattr DW$312, DW_AT_low_pc(DW$L$__configTransfer$14$B)
	.dwattr DW$312, DW_AT_high_pc(DW$L$__configTransfer$14$E)
DW$313	.dwtag  DW_TAG_loop_range
	.dwattr DW$313, DW_AT_low_pc(DW$L$__configTransfer$13$B)
	.dwattr DW$313, DW_AT_high_pc(DW$L$__configTransfer$13$E)
DW$314	.dwtag  DW_TAG_loop_range
	.dwattr DW$314, DW_AT_low_pc(DW$L$__configTransfer$15$B)
	.dwattr DW$314, DW_AT_high_pc(DW$L$__configTransfer$15$E)
DW$315	.dwtag  DW_TAG_loop_range
	.dwattr DW$315, DW_AT_low_pc(DW$L$__configTransfer$17$B)
	.dwattr DW$315, DW_AT_high_pc(DW$L$__configTransfer$17$E)
DW$316	.dwtag  DW_TAG_loop_range
	.dwattr DW$316, DW_AT_low_pc(DW$L$__configTransfer$18$B)
	.dwattr DW$316, DW_AT_high_pc(DW$L$__configTransfer$18$E)
DW$317	.dwtag  DW_TAG_loop_range
	.dwattr DW$317, DW_AT_low_pc(DW$L$__configTransfer$19$B)
	.dwattr DW$317, DW_AT_high_pc(DW$L$__configTransfer$19$E)
	.dwendtag DW$309

	.dwattr DW$254, DW_AT_end_file("vportcap.c")
	.dwattr DW$254, DW_AT_end_line(0x416)
	.dwattr DW$254, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$254

	.sect	".text"

DW$318	.dwtag  DW_TAG_subprogram, DW_AT_name("_covrRecover"), DW_AT_symbol_name("__covrRecover")
	.dwattr DW$318, DW_AT_low_pc(__covrRecover)
	.dwattr DW$318, DW_AT_high_pc(0x00)
	.dwattr DW$318, DW_AT_begin_file("vportcap.c")
	.dwattr DW$318, DW_AT_begin_line(0x41c)
	.dwattr DW$318, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",1053,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1052 | static Int _covrRecover(Ptr chanp)                                     
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __covrRecover                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 32 Auto + 4 Save = 36 byte                  *
;******************************************************************************
__covrRecover:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(40)      ; |1053| 
           NOP             2
	.dwcfa	0x0e, 40
	.dwcfa	0x80, 19, 0
DW$319	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$319, DW_AT_type(*DW$T$37)
	.dwattr DW$319, DW_AT_location[DW_OP_reg4]
DW$320	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$320, DW_AT_type(*DW$T$37)
	.dwattr DW$320, DW_AT_location[DW_OP_breg31 4]
DW$321	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$321, DW_AT_type(*DW$T$149)
	.dwattr DW$321, DW_AT_location[DW_OP_breg31 8]
DW$322	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$322, DW_AT_type(*DW$T$221)
	.dwattr DW$322, DW_AT_location[DW_OP_breg31 12]
DW$323	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$323, DW_AT_type(*DW$T$168)
	.dwattr DW$323, DW_AT_location[DW_OP_breg31 16]
DW$324	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$324, DW_AT_type(*DW$T$168)
	.dwattr DW$324, DW_AT_location[DW_OP_breg31 20]
DW$325	.dwtag  DW_TAG_variable, DW_AT_name("numEvents"), DW_AT_symbol_name("_numEvents")
	.dwattr DW$325, DW_AT_type(*DW$T$22)
	.dwattr DW$325, DW_AT_location[DW_OP_breg31 24]
DW$326	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$326, DW_AT_type(*DW$T$167)
	.dwattr DW$326, DW_AT_location[DW_OP_breg31 28]
DW$327	.dwtag  DW_TAG_variable, DW_AT_name("numEdmaChans"), DW_AT_symbol_name("_numEdmaChans")
	.dwattr DW$327, DW_AT_type(*DW$T$22)
	.dwattr DW$327, DW_AT_location[DW_OP_breg31 32]
           STW     .D2T1   A4,*+SP(4)        ; |1053| 
           NOP             2
	.dwpsn	"vportcap.c",1054,21
;----------------------------------------------------------------------
; 1054 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(8)        ; |1054| 
           NOP             2
	.dwpsn	"vportcap.c",1055,14
;----------------------------------------------------------------------
; 1055 | PortObj* port = &portObjs[chan->portNum];                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B5        ; |1055| 
           NOP             3
           MVK     .S2     1216,B4           ; |1055| 
           MPYLI   .M2     B4,B5,B5:B4       ; |1055| 
           MVKL    .S1     _portObjs,A3      ; |1055| 
           MVKH    .S1     _portObjs,A3      ; |1055| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1055| 
           STW     .D2T2   B4,*+SP(12)       ; |1055| 
           NOP             2
	.dwpsn	"vportcap.c",1056,19
;----------------------------------------------------------------------
; 1056 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T1   *+A3(4),A3        ; |1056| 
           NOP             4
           STW     .D2T1   A3,*+SP(16)       ; |1056| 
           NOP             2
	.dwpsn	"vportcap.c",1057,19
;----------------------------------------------------------------------
; 1057 | volatile Int *cbase = (volatile Int *)chan->base;                      
; 1058 | Int numEvents;                                                         
; 1059 | volatile Int i;                                                        
; 1060 | Int numEdmaChans;                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1057| 
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1057| 
           NOP             4
           STW     .D2T1   A3,*+SP(20)       ; |1057| 
           NOP             2
	.dwpsn	"vportcap.c",1063,5
;----------------------------------------------------------------------
; 1063 | base[_VP_VPIE_OFFSET] &= ~(_VP_VPIE_COVRA_MASK<<(chan->chanNum*16));   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1063| 
           LDW     .D2T2   *+SP(16),B4       ; |1063| 
           NOP             2
           MVK     .L1     2,A4              ; |1063| 
           LDW     .D1T1   *+A3(8),A3        ; |1063| 
           NOP             1
           ADDAD   .D2     B4,25,B4          ; |1063| 
           LDW     .D2T2   *B4,B5            ; |1063| 
           NOP             1
           SHL     .S1     A3,4,A3           ; |1063| 
           SHL     .S1     A4,A3,A3          ; |1063| 
           NOP             1
           ANDN    .L2X    B5,A3,B5          ; |1063| 
           STW     .D2T2   B5,*B4            ; |1063| 
           NOP             2
	.dwpsn	"vportcap.c",1065,5
;----------------------------------------------------------------------
; 1065 | cbase[_VP_VCACTL_OFFSETA] |= _VP_VCACTL_BLKCAP_MASK;                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A4       ; |1065| 
           NOP             4
           LDW     .D1T1   *+A4(4),A3        ; |1065| 
           NOP             4
           SET     .S1     A3,30,30,A3       ; |1065| 
           STW     .D1T1   A3,*+A4(4)        ; |1065| 
           NOP             2
	.dwpsn	"vportcap.c",1068,5
;----------------------------------------------------------------------
; 1068 | EDMA_intDisable(chan->tcc[0]);                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1068| 
           MVKL    .S2     _EDMA_intDisable,B4 ; |1068| 
           MVKH    .S2     _EDMA_intDisable,B4 ; |1068| 
           MVK     .S1     112,A4            ; |1068| 
           CALL    .S2     B4                ; |1068| 
           LDW     .D1T1   *+A3[A4],A4       ; |1068| 
           ADDKPC  .S2     RL89,B3,3         ; |1068| 
RL89:      ; CALL OCCURS {_EDMA_intDisable}  ; |1068| 
	.dwpsn	"vportcap.c",1069,5
;----------------------------------------------------------------------
; 1069 | EDMA_intDisable(chan->tcc[1]);                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1069| 
           MVKL    .S2     _EDMA_intDisable,B4 ; |1069| 
           MVKH    .S2     _EDMA_intDisable,B4 ; |1069| 
           MVK     .S1     113,A4            ; |1069| 
           CALL    .S2     B4                ; |1069| 
           LDW     .D1T1   *+A3[A4],A4       ; |1069| 
           ADDKPC  .S2     RL90,B3,3         ; |1069| 
RL90:      ; CALL OCCURS {_EDMA_intDisable}  ; |1069| 
	.dwpsn	"vportcap.c",1070,5
;----------------------------------------------------------------------
; 1070 | if(chan->mode & _VPORT_MASK_RAW) {                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1070| 
           NOP             3
           MVK     .S1     134,A4            ; |1070| 
           LDW     .D1T1   *+A3[A4],A3       ; |1070| 
           NOP             4
           AND     .L1     2,A3,A0           ; |1070| 
   [!A0]   BNOP    .S1     L155,5            ; |1070| 
           ; BRANCHCC OCCURS {L155}          ; |1070| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1071,9
;----------------------------------------------------------------------
; 1071 | numEdmaChans = 1;                                                      
;----------------------------------------------------------------------
           MVK     .L2     1,B4              ; |1071| 
           STW     .D2T2   B4,*+SP(32)       ; |1071| 
           NOP             2
	.dwpsn	"vportcap.c",1072,5
;----------------------------------------------------------------------
; 1072 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L156,5            ; |1072| 
           ; BRANCH OCCURS {L156}            ; |1072| 
;** --------------------------------------------------------------------------*
L155:    
	.dwpsn	"vportcap.c",1073,9
;----------------------------------------------------------------------
; 1073 | numEdmaChans = _VPORT_NUM_EDMA_CHANS;                                  
;----------------------------------------------------------------------
           MVK     .L2     3,B4              ; |1073| 
           STW     .D2T2   B4,*+SP(32)       ; |1073| 
;** --------------------------------------------------------------------------*
L156:    
	.dwpsn	"vportcap.c",1075,9
;----------------------------------------------------------------------
; 1075 | for(i = 0; i < numEdmaChans; i ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1075| 
           STW     .D2T2   B4,*+SP(28)       ; |1075| 
           NOP             2
	.dwpsn	"vportcap.c",1075,16
           LDW     .D2T2   *+SP(32),B4       ; |1075| 
           LDW     .D2T2   *+SP(28),B5       ; |1075| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1075| 
   [!B0]   BNOP    .S1     L158,5            ; |1075| 
           ; BRANCHCC OCCURS {L158}          ; |1075| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L157:    
DW$L$__covrRecover$5$B:
	.dwpsn	"vportcap.c",1076,9
;----------------------------------------------------------------------
; 1076 | EDMA_disableChannel(chan->hEdma[i]);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1076| 
           LDW     .D2T1   *+SP(28),A3       ; |1076| 
           NOP             1
           MVKL    .S2     _EDMA_disableChannel,B4 ; |1076| 
           MVKH    .S2     _EDMA_disableChannel,B4 ; |1076| 
           MVK     .S1     97,A31            ; |1076| 

           ADDAW   .D1     A4,A3,A3          ; |1076| 
||         CALL    .S2     B4                ; |1076| 

           LDW     .D1T1   *+A3[A31],A4      ; |1076| 
           ADDKPC  .S2     RL91,B3,3         ; |1076| 
RL91:      ; CALL OCCURS {_EDMA_disableChannel}  ; |1076| 
	.dwpsn	"vportcap.c",1077,9
;----------------------------------------------------------------------
; 1077 | EDMA_clearChannel(chan->hEdma[i]);                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B5       ; |1077| 
           LDW     .D2T2   *+SP(8),B4        ; |1077| 
           NOP             2
           MVKL    .S1     _EDMA_clearChannel,A3 ; |1077| 
           MVKH    .S1     _EDMA_clearChannel,A3 ; |1077| 

           MVK     .S2     97,B5             ; |1077| 
||         ADDAW   .D2     B4,B5,B4          ; |1077| 

           CALL    .S2X    A3                ; |1077| 
           LDW     .D2T1   *+B4[B5],A4       ; |1077| 
           ADDKPC  .S2     RL92,B3,3         ; |1077| 
RL92:      ; CALL OCCURS {_EDMA_clearChannel}  ; |1077| 
	.dwpsn	"vportcap.c",1075,34
           LDW     .D2T2   *+SP(28),B4       ; |1075| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1075| 
           STW     .D2T2   B4,*+SP(28)       ; |1075| 
           NOP             2
	.dwpsn	"vportcap.c",1075,16
           LDW     .D2T2   *+SP(32),B4       ; |1075| 
           LDW     .D2T2   *+SP(28),B5       ; |1075| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1075| 
   [ B0]   BNOP    .S1     L157,5            ; |1075| 
           ; BRANCHCC OCCURS {L157}          ; |1075| 
DW$L$__covrRecover$5$E:
;** --------------------------------------------------------------------------*
L158:    
	.dwpsn	"vportcap.c",1079,5
;----------------------------------------------------------------------
; 1079 | if(chan->mergeFlds) {                                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1079| 
           NOP             4
           ADDK    .S2     460,B4            ; |1079| 
           LDHU    .D2T2   *B4,B0            ; |1079| 
           NOP             4
   [!B0]   BNOP    .S1     L159,5            ; |1079| 
           ; BRANCHCC OCCURS {L159}          ; |1079| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1080,9
;----------------------------------------------------------------------
; 1080 | numEvents = chan->numEventsFld1;                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1080| 
           NOP             3
           MVK     .S2     128,B5            ; |1080| 
           LDW     .D2T2   *+B4[B5],B4       ; |1080| 
           NOP             4
           STW     .D2T2   B4,*+SP(24)       ; |1080| 
           NOP             2
	.dwpsn	"vportcap.c",1081,5
;----------------------------------------------------------------------
; 1081 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L160,5            ; |1081| 
           ; BRANCH OCCURS {L160}            ; |1081| 
;** --------------------------------------------------------------------------*
L159:    
	.dwpsn	"vportcap.c",1082,9
;----------------------------------------------------------------------
; 1082 | numEvents = chan->numEvents;                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1082| 
           NOP             3
           MVK     .S2     127,B5            ; |1082| 
           LDW     .D2T2   *+B4[B5],B4       ; |1082| 
           NOP             4
           STW     .D2T2   B4,*+SP(24)       ; |1082| 
;** --------------------------------------------------------------------------*
L160:    
	.dwpsn	"vportcap.c",1086,5
;----------------------------------------------------------------------
; 1086 | EDMA_RSETH(chan->hEdma[0], DST, chan->curViop->frame.iFrm.y1);         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1086| 
           NOP             2
           MVK     .S2     131,B5            ; |1086| 
           MVK     .S1     97,A4             ; |1086| 

           LDW     .D2T2   *+B4[B5],B4       ; |1086| 
||         MV      .L1X    B4,A3             ; |1086| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |1086| 
           NOP             1
           LDW     .D2T2   *+B4(8),B4        ; |1086| 
           MVKL    .S1     0x1a0000c,A31     ; |1086| 
           MVKH    .S1     0x1a0000c,A31     ; |1086| 
           EXTU    .S1     A4,16,16,A4       ; |1086| 
           ADD     .L1     A31,A4,A3         ; |1086| 
           STW     .D1T2   B4,*A3            ; |1086| 
           NOP             2
	.dwpsn	"vportcap.c",1087,5
;----------------------------------------------------------------------
; 1087 | EDMA_RSETH(chan->hEdma[0], CNT, EDMA_CNT_RMK(numEvents - 1,            
; 1088 |     (chan->yThrld << 1)));                                             
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1087| 
           MVK     .S1     97,A4             ; |1087| 
           MVK     .S1     129,A30           ; |1087| 
           LDW     .D2T2   *+SP(24),B5       ; |1087| 
           MVKL    .S2     0x1a00008,B4      ; |1087| 

           MV      .L1     A3,A5             ; |1087| 
||         LDW     .D1T1   *+A3[A4],A4       ; |1087| 

           LDW     .D1T1   *+A5[A30],A3      ; |1087| 
           NOP             2
           MVKH    .S2     0x1a00008,B4      ; |1087| 
           EXTU    .S1     A4,16,16,A4       ; |1087| 

           SUB     .L2     B5,1,B5           ; |1087| 
||         ADD     .L1     A3,A3,A3          ; |1087| 

           ADD     .L2X    B4,A4,B5          ; |1087| 
||         SHL     .S2     B5,16,B4          ; |1087| 

           PACKHL2 .L2X    B4,A3,B4          ; |1087| 
           STW     .D2T2   B4,*B5            ; |1087| 
           NOP             2
	.dwpsn	"vportcap.c",1089,5
;----------------------------------------------------------------------
; 1089 | if(!(chan->mode & _VPORT_MASK_RAW)) {                                  
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1089| 
           NOP             3
           MVK     .S1     134,A4            ; |1089| 
           LDW     .D1T1   *+A3[A4],A3       ; |1089| 
           NOP             4
           AND     .L1     2,A3,A0           ; |1089| 
   [ A0]   BNOP    .S1     L161,5            ; |1089| 
           ; BRANCHCC OCCURS {L161}          ; |1089| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1090,6
;----------------------------------------------------------------------
; 1090 | EDMA_RSETH(chan->hEdma[1], DST, chan->curViop->frame.iFrm.cb1);        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1090| 
           NOP             2
           MVK     .S1     131,A5            ; |1090| 
           MVK     .S1     98,A31            ; |1090| 

           LDW     .D1T1   *+A3[A5],A3       ; |1090| 
||         MV      .L1     A3,A4             ; |1090| 

           NOP             2
           LDW     .D1T1   *+A4[A31],A4      ; |1090| 
           NOP             1
           LDW     .D1T1   *+A3(12),A3       ; |1090| 
           MVKL    .S2     0x1a0000c,B4      ; |1090| 
           MVKH    .S2     0x1a0000c,B4      ; |1090| 
           EXTU    .S1     A4,16,16,A4       ; |1090| 
           ADD     .L1X    B4,A4,A4          ; |1090| 
           STW     .D1T1   A3,*A4            ; |1090| 
           NOP             2
	.dwpsn	"vportcap.c",1091,6
;----------------------------------------------------------------------
; 1091 | EDMA_RSETH(chan->hEdma[2], DST, chan->curViop->frame.iFrm.cr1);        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1091| 
           NOP             2
           MVK     .S2     131,B5            ; |1091| 
           MVK     .S1     99,A4             ; |1091| 

           LDW     .D2T2   *+B4[B5],B4       ; |1091| 
||         MV      .L1X    B4,A3             ; |1091| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |1091| 
           NOP             1
           LDW     .D2T2   *+B4(16),B4       ; |1091| 
           MVKL    .S1     0x1a0000c,A30     ; |1091| 
           MVKH    .S1     0x1a0000c,A30     ; |1091| 
           EXTU    .S1     A4,16,16,A4       ; |1091| 
           ADD     .L1     A30,A4,A3         ; |1091| 
           STW     .D1T2   B4,*A3            ; |1091| 
           NOP             2
	.dwpsn	"vportcap.c",1092,6
;----------------------------------------------------------------------
; 1092 | EDMA_RSETH(chan->hEdma[1], CNT, EDMA_CNT_RMK(numEvents - 1,            
; 1093 |     (chan->cThrld << 1)));                                             
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1092| 
           MVK     .S1     130,A29           ; |1092| 
           LDW     .D2T2   *+SP(24),B5       ; |1092| 
           MVKL    .S2     0x1a00008,B4      ; |1092| 
           MVKH    .S2     0x1a00008,B4      ; |1092| 

           LDW     .D1T1   *+A4[A31],A4      ; |1092| 
||         MV      .L1     A4,A3             ; |1092| 

           LDW     .D1T1   *+A3[A29],A3      ; |1092| 
           NOP             2
           SUB     .L2     B5,1,B5           ; |1092| 
           EXTU    .S1     A4,16,16,A4       ; |1092| 
           ADD     .L1     A3,A3,A3          ; |1092| 

           ADD     .L2X    B4,A4,B5          ; |1092| 
||         SHL     .S2     B5,16,B4          ; |1092| 

           PACKHL2 .L2X    B4,A3,B4          ; |1092| 
           STW     .D2T2   B4,*B5            ; |1092| 
           NOP             2
	.dwpsn	"vportcap.c",1094,6
;----------------------------------------------------------------------
; 1094 | EDMA_RSETH(chan->hEdma[2], CNT, EDMA_CNT_RMK(numEvents - 1,            
; 1095 |     (chan->cThrld<<1)));                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1094| 
           MVK     .S1     99,A5             ; |1094| 
           MVK     .S1     130,A28           ; |1094| 
           LDW     .D2T2   *+SP(24),B5       ; |1094| 
           MVKL    .S2     0x1a00008,B4      ; |1094| 

           LDW     .D1T1   *+A4[A5],A4       ; |1094| 
||         MV      .L1     A4,A3             ; |1094| 

           LDW     .D1T1   *+A3[A28],A3      ; |1094| 
           NOP             2
           MVKH    .S2     0x1a00008,B4      ; |1094| 
           EXTU    .S1     A4,16,16,A4       ; |1094| 

           SUB     .L2     B5,1,B5           ; |1094| 
||         ADD     .L1     A3,A3,A3          ; |1094| 

           ADD     .L2X    B4,A4,B5          ; |1094| 
||         SHL     .S2     B5,16,B4          ; |1094| 

           PACKHL2 .L2X    B4,A3,B4          ; |1094| 
           STW     .D2T2   B4,*B5            ; |1094| 
;** --------------------------------------------------------------------------*
L161:    
	.dwpsn	"vportcap.c",1098,5
;----------------------------------------------------------------------
; 1098 | EDMA_intEnable(chan->tcc[0]);                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1098| 
           MVKL    .S1     _EDMA_intEnable,A3 ; |1098| 
           MVKH    .S1     _EDMA_intEnable,A3 ; |1098| 
           MVK     .S2     112,B5            ; |1098| 
           CALL    .S2X    A3                ; |1098| 
           LDW     .D2T1   *+B4[B5],A4       ; |1098| 
           ADDKPC  .S2     RL93,B3,3         ; |1098| 
RL93:      ; CALL OCCURS {_EDMA_intEnable}   ; |1098| 
	.dwpsn	"vportcap.c",1099,5
;----------------------------------------------------------------------
; 1099 | EDMA_intEnable(chan->tcc[1]);                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1099| 
           MVKL    .S1     _EDMA_intEnable,A3 ; |1099| 
           MVKH    .S1     _EDMA_intEnable,A3 ; |1099| 
           MVK     .S2     113,B5            ; |1099| 
           CALL    .S2X    A3                ; |1099| 
           LDW     .D2T1   *+B4[B5],A4       ; |1099| 
           ADDKPC  .S2     RL94,B3,3         ; |1099| 
RL94:      ; CALL OCCURS {_EDMA_intEnable}   ; |1099| 
	.dwpsn	"vportcap.c",1100,9
;----------------------------------------------------------------------
; 1100 | for(i = 0;i < numEdmaChans;i ++) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1100| 
           STW     .D2T2   B4,*+SP(28)       ; |1100| 
           NOP             2
	.dwpsn	"vportcap.c",1100,15
           LDW     .D2T2   *+SP(32),B4       ; |1100| 
           LDW     .D2T2   *+SP(28),B5       ; |1100| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1100| 
   [!B0]   BNOP    .S1     L163,5            ; |1100| 
           ; BRANCHCC OCCURS {L163}          ; |1100| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L162:    
DW$L$__covrRecover$12$B:
	.dwpsn	"vportcap.c",1101,9
;----------------------------------------------------------------------
; 1101 | EDMA_enableChannel(chan->hEdma[i]);                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1101| 
           LDW     .D2T2   *+SP(28),B5       ; |1101| 
           NOP             2
           MVKL    .S1     _EDMA_enableChannel,A3 ; |1101| 
           MVKH    .S1     _EDMA_enableChannel,A3 ; |1101| 

           MVK     .S2     97,B5             ; |1101| 
||         ADDAW   .D2     B4,B5,B4          ; |1101| 

           CALL    .S2X    A3                ; |1101| 
           LDW     .D2T1   *+B4[B5],A4       ; |1101| 
           ADDKPC  .S2     RL95,B3,3         ; |1101| 
RL95:      ; CALL OCCURS {_EDMA_enableChannel}  ; |1101| 
	.dwpsn	"vportcap.c",1100,32
           LDW     .D2T2   *+SP(28),B4       ; |1100| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1100| 
           STW     .D2T2   B4,*+SP(28)       ; |1100| 
           NOP             2
	.dwpsn	"vportcap.c",1100,15
           LDW     .D2T2   *+SP(32),B4       ; |1100| 
           LDW     .D2T2   *+SP(28),B5       ; |1100| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1100| 
   [ B0]   BNOP    .S1     L162,5            ; |1100| 
           ; BRANCHCC OCCURS {L162}          ; |1100| 
DW$L$__covrRecover$12$E:
;** --------------------------------------------------------------------------*
L163:    
	.dwpsn	"vportcap.c",1105,5
;----------------------------------------------------------------------
; 1105 | if(chan->chanNum == 0) {                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1105| 
           NOP             4
           LDW     .D2T2   *+B4(8),B0        ; |1105| 
           NOP             4
   [ B0]   BNOP    .S1     L164,5            ; |1105| 
           ; BRANCHCC OCCURS {L164}          ; |1105| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1106,9
;----------------------------------------------------------------------
; 1106 | base[_VP_VPIS_OFFSET] |= _VP_VPIS_COVRA_MASK;                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |1106| 
           NOP             3
           MVK     .S2     204,B5            ; |1106| 
           ADD     .L2     B5,B4,B4          ; |1106| 
           LDW     .D2T2   *B4,B5            ; |1106| 
           NOP             4
           OR      .L2     2,B5,B5           ; |1106| 
           STW     .D2T2   B5,*B4            ; |1106| 
           NOP             2
	.dwpsn	"vportcap.c",1107,5
;----------------------------------------------------------------------
; 1107 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L165,5            ; |1107| 
           ; BRANCH OCCURS {L165}            ; |1107| 
;** --------------------------------------------------------------------------*
L164:    
	.dwpsn	"vportcap.c",1108,9
;----------------------------------------------------------------------
; 1108 | base[_VP_VPIS_OFFSET] |= _VP_VPIS_COVRB_MASK;                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |1108| 
           NOP             3
           MVK     .S2     204,B5            ; |1108| 
           ADD     .L2     B5,B4,B4          ; |1108| 
           LDW     .D2T2   *B4,B5            ; |1108| 
           NOP             4
           SET     .S2     B5,17,17,B5       ; |1108| 
           STW     .D2T2   B5,*B4            ; |1108| 
;** --------------------------------------------------------------------------*
L165:    
	.dwpsn	"vportcap.c",1111,5
;----------------------------------------------------------------------
; 1111 | cbase[_VP_VCACTL_OFFSETA] &= ~(_VP_VCACTL_BLKCAP_MASK);                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |1111| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |1111| 
           NOP             4
           CLR     .S1     A4,30,30,A4       ; |1111| 
           STW     .D1T1   A4,*+A3(4)        ; |1111| 
           NOP             2
	.dwpsn	"vportcap.c",1114,5
;----------------------------------------------------------------------
; 1114 | base[_VP_VPIE_OFFSET] |= _VP_VPIE_COVRA_MASK << (chan->chanNum * 16);  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1114| 
           LDW     .D2T1   *+SP(16),A3       ; |1114| 
           NOP             3
           LDW     .D2T2   *+B4(8),B4        ; |1114| 
           NOP             1
           ADDAD   .D1     A3,25,A4          ; |1114| 
           LDW     .D1T1   *A4,A3            ; |1114| 
           NOP             1

           MVK     .L2     2,B4              ; |1114| 
||         SHL     .S2     B4,4,B5           ; |1114| 

           SHL     .S2     B4,B5,B4          ; |1114| 
           NOP             1
           OR      .L1X    B4,A3,A3          ; |1114| 
           STW     .D1T1   A3,*A4            ; |1114| 
           NOP             2
	.dwpsn	"vportcap.c",1115,5
;----------------------------------------------------------------------
; 1115 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1115| 
	.dwpsn	"vportcap.c",1116,1
           LDW     .D2T2   *++SP(40),B3      ; |1116| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1116| 
           ; BRANCH OCCURS {B3}              ; |1116| 

DW$328	.dwtag  DW_TAG_loop
	.dwattr DW$328, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L162:1:1301983882")
	.dwattr DW$328, DW_AT_begin_file("vportcap.c")
	.dwattr DW$328, DW_AT_begin_line(0x44c)
	.dwattr DW$328, DW_AT_end_line(0x44e)
DW$329	.dwtag  DW_TAG_loop_range
	.dwattr DW$329, DW_AT_low_pc(DW$L$__covrRecover$12$B)
	.dwattr DW$329, DW_AT_high_pc(DW$L$__covrRecover$12$E)
	.dwendtag DW$328


DW$330	.dwtag  DW_TAG_loop
	.dwattr DW$330, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L157:1:1301983882")
	.dwattr DW$330, DW_AT_begin_file("vportcap.c")
	.dwattr DW$330, DW_AT_begin_line(0x433)
	.dwattr DW$330, DW_AT_end_line(0x436)
DW$331	.dwtag  DW_TAG_loop_range
	.dwattr DW$331, DW_AT_low_pc(DW$L$__covrRecover$5$B)
	.dwattr DW$331, DW_AT_high_pc(DW$L$__covrRecover$5$E)
	.dwendtag DW$330

	.dwattr DW$318, DW_AT_end_file("vportcap.c")
	.dwattr DW$318, DW_AT_end_line(0x45c)
	.dwattr DW$318, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$318

	.sect	".text"

DW$332	.dwtag  DW_TAG_subprogram, DW_AT_name("_getNumPendingIORqsts"), DW_AT_symbol_name("__getNumPendingIORqsts")
	.dwattr DW$332, DW_AT_low_pc(__getNumPendingIORqsts)
	.dwattr DW$332, DW_AT_high_pc(0x00)
	.dwattr DW$332, DW_AT_begin_file("vportcap.c")
	.dwattr DW$332, DW_AT_begin_line(0x462)
	.dwattr DW$332, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",1123,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1122 | static Int _getNumPendingIORqsts(Ptr chanp, Ptr args)                  
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __getNumPendingIORqsts                                      *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,B0,B4,B5,SP                                 *
;*   Regs Used         : A0,A3,A4,B0,B3,B4,B5,SP                              *
;*   Local Frame Size  : 0 Args + 20 Auto + 0 Save = 20 byte                  *
;******************************************************************************
__getNumPendingIORqsts:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .D2     SP,24,SP          ; |1123| 
	.dwcfa	0x0e, 24
DW$333	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$333, DW_AT_type(*DW$T$37)
	.dwattr DW$333, DW_AT_location[DW_OP_reg4]
DW$334	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$334, DW_AT_type(*DW$T$37)
	.dwattr DW$334, DW_AT_location[DW_OP_reg20]
DW$335	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$335, DW_AT_type(*DW$T$37)
	.dwattr DW$335, DW_AT_location[DW_OP_breg31 4]
DW$336	.dwtag  DW_TAG_variable, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$336, DW_AT_type(*DW$T$37)
	.dwattr DW$336, DW_AT_location[DW_OP_breg31 8]
DW$337	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$337, DW_AT_type(*DW$T$149)
	.dwattr DW$337, DW_AT_location[DW_OP_breg31 12]
DW$338	.dwtag  DW_TAG_variable, DW_AT_name("nextElem"), DW_AT_symbol_name("_nextElem")
	.dwattr DW$338, DW_AT_type(*DW$T$115)
	.dwattr DW$338, DW_AT_location[DW_OP_breg31 16]
DW$339	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$339, DW_AT_type(*DW$T$10)
	.dwattr DW$339, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T2   B4,*+SP(8)        ; |1123| 
           STW     .D2T1   A4,*+SP(4)        ; |1123| 
           NOP             2
	.dwpsn	"vportcap.c",1124,21
;----------------------------------------------------------------------
; 1124 | _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |1124| 
           NOP             2
	.dwpsn	"vportcap.c",1125,16
;----------------------------------------------------------------------
; 1125 | QUE_Handle nextElem = &chan->qIn;                                      
;----------------------------------------------------------------------
           ADDK    .S2     364,B4            ; |1125| 
           STW     .D2T2   B4,*+SP(16)       ; |1125| 
           NOP             2
	.dwpsn	"vportcap.c",1126,9
;----------------------------------------------------------------------
; 1126 | int i  = 0;                                                            
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1126| 
           STW     .D2T2   B4,*+SP(20)       ; |1126| 
           NOP             2
	.dwpsn	"vportcap.c",1127,5
;----------------------------------------------------------------------
; 1127 | while((nextElem = QUE_next(nextElem)) != &chan->qIn){                  
;----------------------------------------------------------------------
           BNOP    .S1     L167,5            ; |1127| 
           ; BRANCH OCCURS {L167}            ; |1127| 
;** --------------------------------------------------------------------------*
L166:    
DW$L$__getNumPendingIORqsts$2$B:
	.dwpsn	"vportcap.c",1128,9
;----------------------------------------------------------------------
; 1128 | i++;                                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |1128| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1128| 
           STW     .D2T2   B4,*+SP(20)       ; |1128| 
DW$L$__getNumPendingIORqsts$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L167:    
DW$L$__getNumPendingIORqsts$3$B:
	.dwpsn	"vportcap.c",1127,11
           LDW     .D2T2   *+SP(16),B5       ; |1127| 
           LDW     .D2T2   *+SP(12),B4       ; |1127| 
           NOP             3
           LDW     .D2T2   *B5,B5            ; |1127| 
           NOP             3
           ADDK    .S2     364,B4            ; |1127| 
           CMPEQ   .L2     B5,B4,B0          ; |1127| 
   [!B0]   BNOP    .S1     L166,4            ; |1127| 
           STW     .D2T2   B5,*+SP(16)       ; |1127| 
           ; BRANCHCC OCCURS {L166}          ; |1127| 
DW$L$__getNumPendingIORqsts$3$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1131,5
;----------------------------------------------------------------------
; 1131 | if(chan->curViop != chan->nextViop) i++;                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1131| 
           NOP             2
           MVK     .S1     131,A4            ; |1131| 
           MVK     .S2     132,B5            ; |1131| 
           MV      .L1X    B4,A3             ; |1131| 

           LDW     .D1T1   *+A3[A4],A3       ; |1131| 
||         LDW     .D2T2   *+B4[B5],B4       ; |1131| 

           NOP             4
           CMPEQ   .L1X    A3,B4,A0          ; |1131| 
   [ A0]   BNOP    .S1     L168,5            ; |1131| 
           ; BRANCHCC OCCURS {L168}          ; |1131| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1131,41
           LDW     .D2T2   *+SP(20),B4       ; |1131| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1131| 
           STW     .D2T2   B4,*+SP(20)       ; |1131| 
;** --------------------------------------------------------------------------*
L168:    
	.dwpsn	"vportcap.c",1132,5
;----------------------------------------------------------------------
; 1132 | *(int *)args = i;                                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |1132| 
           LDW     .D2T2   *+SP(8),B5        ; |1132| 
           NOP             4
           STW     .D2T2   B4,*B5            ; |1132| 
           NOP             2
	.dwpsn	"vportcap.c",1133,5
;----------------------------------------------------------------------
; 1133 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1133| 
	.dwpsn	"vportcap.c",1134,1
           ADDK    .S2     24,SP             ; |1134| 
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1134| 
           ; BRANCH OCCURS {B3}              ; |1134| 

DW$340	.dwtag  DW_TAG_loop
	.dwattr DW$340, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap.asm:L167:1:1301983882")
	.dwattr DW$340, DW_AT_begin_file("vportcap.c")
	.dwattr DW$340, DW_AT_begin_line(0x467)
	.dwattr DW$340, DW_AT_end_line(0x468)
DW$341	.dwtag  DW_TAG_loop_range
	.dwattr DW$341, DW_AT_low_pc(DW$L$__getNumPendingIORqsts$3$B)
	.dwattr DW$341, DW_AT_high_pc(DW$L$__getNumPendingIORqsts$3$E)
DW$342	.dwtag  DW_TAG_loop_range
	.dwattr DW$342, DW_AT_low_pc(DW$L$__getNumPendingIORqsts$2$B)
	.dwattr DW$342, DW_AT_high_pc(DW$L$__getNumPendingIORqsts$2$E)
	.dwendtag DW$340

	.dwattr DW$332, DW_AT_end_file("vportcap.c")
	.dwattr DW$332, DW_AT_end_line(0x46e)
	.dwattr DW$332, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$332

	.sect	".text"

DW$343	.dwtag  DW_TAG_subprogram, DW_AT_name("_setVIntCb"), DW_AT_symbol_name("__setVIntCb")
	.dwattr DW$343, DW_AT_low_pc(__setVIntCb)
	.dwattr DW$343, DW_AT_high_pc(0x00)
	.dwattr DW$343, DW_AT_begin_file("vportcap.c")
	.dwattr DW$343, DW_AT_begin_line(0x474)
	.dwattr DW$343, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",1141,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1140 | static Int _setVIntCb(Ptr chanp, Ptr args)                             
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __setVIntCb                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 64 Auto + 4 Save = 68 byte                  *
;******************************************************************************
__setVIntCb:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(72)      ; |1141| 
           NOP             2
	.dwcfa	0x0e, 72
	.dwcfa	0x80, 19, 0
DW$344	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$344, DW_AT_type(*DW$T$37)
	.dwattr DW$344, DW_AT_location[DW_OP_reg4]
DW$345	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$345, DW_AT_type(*DW$T$37)
	.dwattr DW$345, DW_AT_location[DW_OP_reg20]
DW$346	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$346, DW_AT_type(*DW$T$37)
	.dwattr DW$346, DW_AT_location[DW_OP_breg31 4]
DW$347	.dwtag  DW_TAG_variable, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$347, DW_AT_type(*DW$T$37)
	.dwattr DW$347, DW_AT_location[DW_OP_breg31 8]
DW$348	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$348, DW_AT_type(*DW$T$149)
	.dwattr DW$348, DW_AT_location[DW_OP_breg31 12]
DW$349	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$349, DW_AT_type(*DW$T$221)
	.dwattr DW$349, DW_AT_location[DW_OP_breg31 16]
DW$350	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$350, DW_AT_type(*DW$T$168)
	.dwattr DW$350, DW_AT_location[DW_OP_breg31 20]
DW$351	.dwtag  DW_TAG_variable, DW_AT_name("cBase"), DW_AT_symbol_name("_cBase")
	.dwattr DW$351, DW_AT_type(*DW$T$168)
	.dwattr DW$351, DW_AT_location[DW_OP_breg31 24]
DW$352	.dwtag  DW_TAG_variable, DW_AT_name("vIntCbParams"), DW_AT_symbol_name("_vIntCbParams")
	.dwattr DW$352, DW_AT_type(*DW$T$227)
	.dwattr DW$352, DW_AT_location[DW_OP_breg31 28]
DW$353	.dwtag  DW_TAG_variable, DW_AT_name("mask"), DW_AT_symbol_name("_mask")
	.dwattr DW$353, DW_AT_type(*DW$T$22)
	.dwattr DW$353, DW_AT_location[DW_OP_breg31 32]
DW$354	.dwtag  DW_TAG_variable, DW_AT_name("vif2"), DW_AT_symbol_name("_vif2")
	.dwattr DW$354, DW_AT_type(*DW$T$31)
	.dwattr DW$354, DW_AT_location[DW_OP_breg31 36]
DW$355	.dwtag  DW_TAG_variable, DW_AT_name("vInt2"), DW_AT_symbol_name("_vInt2")
	.dwattr DW$355, DW_AT_type(*DW$T$31)
	.dwattr DW$355, DW_AT_location[DW_OP_breg31 40]
DW$356	.dwtag  DW_TAG_variable, DW_AT_name("vif1"), DW_AT_symbol_name("_vif1")
	.dwattr DW$356, DW_AT_type(*DW$T$31)
	.dwattr DW$356, DW_AT_location[DW_OP_breg31 44]
DW$357	.dwtag  DW_TAG_variable, DW_AT_name("vInt1"), DW_AT_symbol_name("_vInt1")
	.dwattr DW$357, DW_AT_type(*DW$T$31)
	.dwattr DW$357, DW_AT_location[DW_OP_breg31 48]
DW$358	.dwtag  DW_TAG_variable, DW_AT_name("fscl2"), DW_AT_symbol_name("_fscl2")
	.dwattr DW$358, DW_AT_type(*DW$T$31)
	.dwattr DW$358, DW_AT_location[DW_OP_breg31 52]
DW$359	.dwtag  DW_TAG_variable, DW_AT_name("attrs"), DW_AT_symbol_name("_attrs")
	.dwattr DW$359, DW_AT_type(*DW$T$124)
	.dwattr DW$359, DW_AT_location[DW_OP_breg31 56]

           STW     .D2T1   A4,*+SP(4)        ; |1141| 
||         MV      .L1X    B4,A3             ; |1141| 

           STW     .D2T1   A3,*+SP(8)        ; |1141| 
           NOP             2
	.dwpsn	"vportcap.c",1142,21
;----------------------------------------------------------------------
; 1142 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |1142| 
           NOP             2
	.dwpsn	"vportcap.c",1143,14
;----------------------------------------------------------------------
; 1143 | PortObj* port = &portObjs[chan->portNum];                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B5        ; |1143| 
           NOP             3
           MVK     .S2     1216,B4           ; |1143| 
           MPYLI   .M2     B4,B5,B5:B4       ; |1143| 
           MVKL    .S1     _portObjs,A3      ; |1143| 
           MVKH    .S1     _portObjs,A3      ; |1143| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1143| 
           STW     .D2T2   B4,*+SP(16)       ; |1143| 
           NOP             2
	.dwpsn	"vportcap.c",1144,19
;----------------------------------------------------------------------
; 1144 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T1   *+A3(4),A3        ; |1144| 
           NOP             4
           STW     .D2T1   A3,*+SP(20)       ; |1144| 
           NOP             2
	.dwpsn	"vportcap.c",1145,19
;----------------------------------------------------------------------
; 1145 | volatile Int *cBase = (volatile Int *)chan->base;                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1145| 
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1145| 
           NOP             4
           STW     .D2T1   A3,*+SP(24)       ; |1145| 
           NOP             2
	.dwpsn	"vportcap.c",1146,25
;----------------------------------------------------------------------
; 1146 | VPORT_VIntCbParams* vIntCbParams = (void *)args;                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1146| 
           NOP             4
           STW     .D2T2   B4,*+SP(28)       ; |1146| 
           NOP             2
	.dwpsn	"vportcap.c",1147,9
;----------------------------------------------------------------------
; 1147 | Int mask = vIntCbParams->vIntMask;                                     
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDHU    .D1T1   *+A3(8),A3        ; |1147| 
           NOP             4
           STW     .D2T1   A3,*+SP(32)       ; |1147| 
           NOP             2
	.dwpsn	"vportcap.c",1148,9
;----------------------------------------------------------------------
; 1148 | Uns vif2 = 0, vInt2 = 0, vif1 = 0, vInt1 = 0, fscl2 = 0;               
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1148| 
           STW     .D2T2   B4,*+SP(36)       ; |1148| 
           NOP             2
	.dwpsn	"vportcap.c",1148,19
           STW     .D2T2   B4,*+SP(40)       ; |1148| 
           NOP             2
	.dwpsn	"vportcap.c",1148,30
           ZERO    .L1     A3                ; |1148| 
           STW     .D2T1   A3,*+SP(44)       ; |1148| 
           NOP             2
	.dwpsn	"vportcap.c",1148,40
           STW     .D2T1   A3,*+SP(48)       ; |1148| 
           NOP             2
	.dwpsn	"vportcap.c",1148,51
           STW     .D2T2   B4,*+SP(52)       ; |1148| 
           NOP             2
	.dwpsn	"vportcap.c",1149,15
;----------------------------------------------------------------------
; 1149 | HWI_Attrs attrs = HWI_ATTRS;                                           
;----------------------------------------------------------------------
           MVKL    .S1     _HWI_ATTRS,A3     ; |1149| 
           MVKH    .S1     _HWI_ATTRS,A3     ; |1149| 
           LDW     .D1T2   *+A3(8),B5        ; |1149| 
           LDNDW   .D1T1   *A3,A5:A4         ; |1149| 
           NOP             2
           ADDAD   .D2     SP,7,B4           ; |1149| 
           STW     .D2T2   B5,*+B4(8)        ; |1149| 
           STNDW   .D2T1   A5:A4,*B4         ; |1149| 
           NOP             2
	.dwpsn	"vportcap.c",1153,5
;----------------------------------------------------------------------
; 1153 | if(mask & VPORT_INT_VINT1) {                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |1153| 
           NOP             4
           EXTU    .S2     B4,27,31,B0       ; |1153| 
   [!B0]   BNOP    .S1     L169,5            ; |1153| 
           ; BRANCHCC OCCURS {L169}          ; |1153| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1154,9
;----------------------------------------------------------------------
; 1154 | vif1 = 1;                                                              
;----------------------------------------------------------------------
           MVK     .L2     1,B4              ; |1154| 
           STW     .D2T2   B4,*+SP(44)       ; |1154| 
           NOP             2
	.dwpsn	"vportcap.c",1155,9
;----------------------------------------------------------------------
; 1155 | vInt1 = vIntCbParams->vIntLine;                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |1155| 
           NOP             4
           LDHU    .D2T2   *+B4(10),B4       ; |1155| 
           NOP             4
           STW     .D2T2   B4,*+SP(48)       ; |1155| 
;** --------------------------------------------------------------------------*
L169:    
	.dwpsn	"vportcap.c",1157,5
;----------------------------------------------------------------------
; 1157 | if(mask & VPORT_INT_VINT2) {                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |1157| 
           NOP             4
           EXTU    .S2     B4,26,31,B0       ; |1157| 
   [!B0]   BNOP    .S1     L170,5            ; |1157| 
           ; BRANCHCC OCCURS {L170}          ; |1157| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1158,9
;----------------------------------------------------------------------
; 1158 | vif2 = 1;                                                              
;----------------------------------------------------------------------
           MVK     .L2     1,B4              ; |1158| 
           STW     .D2T2   B4,*+SP(36)       ; |1158| 
           NOP             2
	.dwpsn	"vportcap.c",1159,9
;----------------------------------------------------------------------
; 1159 | vInt2 = vIntCbParams->vIntLine;                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |1159| 
           NOP             4
           LDHU    .D2T2   *+B4(10),B4       ; |1159| 
           NOP             4
           STW     .D2T2   B4,*+SP(40)       ; |1159| 
;** --------------------------------------------------------------------------*
L170:    
	.dwpsn	"vportcap.c",1161,5
;----------------------------------------------------------------------
; 1161 | fscl2 = vif2 & (~ vif1);                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |1161| 
           LDW     .D2T2   *+SP(36),B5       ; |1161| 
           NOP             4
           ANDN    .L2     B5,B4,B4          ; |1161| 
           STW     .D2T2   B4,*+SP(52)       ; |1161| 
           NOP             2
	.dwpsn	"vportcap.c",1163,5
;----------------------------------------------------------------------
; 1163 | cBase[_VP_VCAVINT_OFFSETA] = VP_VCAVINT_RMK(vif2,fscl2,                
; 1164 |     vInt2, vif1, vInt1);                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B7       ; |1163| 
           MV      .L2     B5,B4
           LDW     .D2T2   *+SP(52),B5       ; |1163| 

           LDW     .D2T2   *+SP(44),B8       ; |1163| 
||         ZERO    .L2     B6                ; |1163| 

           MVKH    .S2     0xfff0000,B6      ; |1163| 
||         MVKL    .S1     0x8000,A5         ; |1163| 
||         ZERO    .L1     A4                ; |1163| 

           SHL     .S2     B7,16,B7          ; |1163| 
||         MVKH    .S1     0x40000000,A4     ; |1163| 

           LDW     .D2T1   *+SP(48),A6       ; |1163| 
||         SHL     .S2     B4,31,B4          ; |1163| 
||         MVKH    .S1     0x8000,A5         ; |1163| 

           CLR     .S2     B4,0,30,B4        ; |1163| 
||         SHL     .S1X    B5,30,A3          ; |1163| 

           LDW     .D2T2   *+SP(24),B30      ; |1163| 
||         AND     .L2     B6,B7,B5          ; |1163| 
||         AND     .L1     A4,A3,A3          ; |1163| 
||         SHL     .S2     B8,15,B31         ; |1163| 

           AND     .L2X    A5,B31,B4         ; |1163| 
||         OR      .L1X    A3,B4,A3          ; |1163| 

           OR      .L1X    B5,A3,A3          ; |1163| 

           OR      .L1X    B4,A3,A3          ; |1163| 
||         EXTU    .S1     A6,20,20,A31      ; |1163| 

           OR      .L1     A31,A3,A3         ; |1163| 
           STW     .D2T1   A3,*+B30(24)      ; |1163| 
           NOP             2
	.dwpsn	"vportcap.c",1166,5
;----------------------------------------------------------------------
; 1166 | if(chan->chanNum == 1) {                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1166| 
           NOP             4
           LDW     .D1T1   *+A3(8),A3        ; |1166| 
           NOP             4
           CMPEQ   .L1     A3,1,A0           ; |1166| 
   [!A0]   BNOP    .S1     L171,5            ; |1166| 
           ; BRANCHCC OCCURS {L171}          ; |1166| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1167,9
;----------------------------------------------------------------------
; 1167 | mask <<= 16;    /* channel B */                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |1167| 
           NOP             4
           SHL     .S2     B4,16,B4          ; |1167| 
           STW     .D2T2   B4,*+SP(32)       ; |1167| 
;** --------------------------------------------------------------------------*
L171:    
	.dwpsn	"vportcap.c",1169,5
;----------------------------------------------------------------------
; 1169 | chan->vIntMask = mask;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |1169| 
           LDW     .D2T2   *+SP(12),B5       ; |1169| 
           NOP             4
           STW     .D2T2   B4,*+B5(40)       ; |1169| 
           NOP             2
	.dwpsn	"vportcap.c",1170,5
;----------------------------------------------------------------------
; 1170 | if(mask) {                                                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B0       ; |1170| 
           NOP             4
   [!B0]   BNOP    .S1     L172,5            ; |1170| 
           ; BRANCHCC OCCURS {L172}          ; |1170| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1171,9
;----------------------------------------------------------------------
; 1171 | mask |= 1; /* turn on video port interrupt */                          
;----------------------------------------------------------------------
           MV      .L2     B0,B4
           OR      .L2     1,B4,B4           ; |1171| 
           STW     .D2T2   B4,*+SP(32)       ; |1171| 
           NOP             2
	.dwpsn	"vportcap.c",1172,9
;----------------------------------------------------------------------
; 1172 | attrs.arg = chan->portNum;                                             
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1172| 
           NOP             4
           LDW     .D1T1   *+A3(4),A3        ; |1172| 
           NOP             4
           STW     .D2T1   A3,*+SP(64)       ; |1172| 
           NOP             2
	.dwpsn	"vportcap.c",1173,9
;----------------------------------------------------------------------
; 1173 | IRQ_map(IRQ_EVT_VINT0 + chan->portNum, vIntCbParams->irqId);           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1173| 
           NOP             2
           LDW     .D2T2   *+SP(28),B31      ; |1173| 
           MVKL    .S2     _IRQ_map,B5       ; |1173| 
           LDW     .D2T2   *+B4(4),B6        ; |1173| 
           MVKH    .S2     _IRQ_map,B5       ; |1173| 
           CALL    .S2     B5                ; |1173| 
           LDW     .D2T2   *+B31(12),B4      ; |1173| 
           ADDKPC  .S2     RL96,B3,0         ; |1173| 
           ADD     .D2     B6,25,B6          ; |1173| 
           NOP             1
           MV      .L1X    B6,A4             ; |1173| 
RL96:      ; CALL OCCURS {_IRQ_map}          ; |1173| 
	.dwpsn	"vportcap.c",1174,9
;----------------------------------------------------------------------
; 1174 | HWI_dispatchPlug(vIntCbParams->irqId, (Fxn)captureISR, -1, &attrs);    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |1174| 
           MVKL    .S2     _captureISR,B4    ; |1174| 
           MVKH    .S2     _captureISR,B4    ; |1174| 
           ADDAD   .D2     SP,7,B6           ; |1174| 
           CALL    .S1     _HWI_dispatchPlug ; |1174| 
           LDW     .D1T1   *+A3(12),A4       ; |1174| 
           ADDKPC  .S2     RL97,B3,2         ; |1174| 
           MVK     .L1     0xffffffff,A6     ; |1174| 
RL97:      ; CALL OCCURS {_HWI_dispatchPlug}  ; |1174| 
	.dwpsn	"vportcap.c",1175,9
;----------------------------------------------------------------------
; 1175 | IRQ_disable(IRQ_EVT_VINT0 + chan->portNum);                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1175| 
           NOP             4

           MVKL    .S1     _IRQ_disable,A3   ; |1175| 
||         LDW     .D1T1   *+A3(4),A4        ; |1175| 

           MVKH    .S1     _IRQ_disable,A3   ; |1175| 
           NOP             1
           CALL    .S2X    A3                ; |1175| 
           ADDKPC  .S2     RL98,B3,3         ; |1175| 
           ADD     .D1     A4,25,A4          ; |1175| 
RL98:      ; CALL OCCURS {_IRQ_disable}      ; |1175| 
	.dwpsn	"vportcap.c",1176,9
;----------------------------------------------------------------------
; 1176 | IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1176| 
           NOP             4

           MVKL    .S1     _IRQ_clear,A3     ; |1176| 
||         LDW     .D1T1   *+A3(4),A4        ; |1176| 

           MVKH    .S1     _IRQ_clear,A3     ; |1176| 
           NOP             1
           CALL    .S2X    A3                ; |1176| 
           ADDKPC  .S2     RL99,B3,3         ; |1176| 
           ADD     .D1     A4,25,A4          ; |1176| 
RL99:      ; CALL OCCURS {_IRQ_clear}        ; |1176| 
;** --------------------------------------------------------------------------*
L172:    
	.dwpsn	"vportcap.c",1178,5
;----------------------------------------------------------------------
; 1178 | base[_VP_VPIE_OFFSET] |= mask;  /* register write */                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B5       ; |1178| 
           NOP             3
           LDW     .D2T2   *+SP(32),B4       ; |1178| 
           ADDAD   .D2     B5,25,B6          ; |1178| 
           LDW     .D2T2   *B6,B5            ; |1178| 
           NOP             4
           OR      .L2     B4,B5,B4          ; |1178| 
           STW     .D2T2   B4,*B6            ; |1178| 
           NOP             2
	.dwpsn	"vportcap.c",1179,5
;----------------------------------------------------------------------
; 1179 | chan->vIntFxn = vIntCbParams->vIntCbFxn;                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |1179| 
           NOP             2
           LDW     .D2T2   *+SP(12),B5       ; |1179| 
           MVK     .S2     118,B4            ; |1179| 
           LDW     .D1T1   *+A3(4),A3        ; |1179| 
           NOP             4
           STW     .D2T1   A3,*+B5[B4]       ; |1179| 
           NOP             2
	.dwpsn	"vportcap.c",1180,5
;----------------------------------------------------------------------
; 1180 | chan->vIntCbArg = vIntCbParams->cbArg;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |1180| 
           NOP             2
           LDW     .D2T1   *+SP(12),A5       ; |1180| 
           MVK     .S1     138,A4            ; |1180| 
           LDW     .D1T1   *A3,A3            ; |1180| 
           NOP             4
           STW     .D1T1   A3,*+A5[A4]       ; |1180| 
           NOP             2
	.dwpsn	"vportcap.c",1181,5
;----------------------------------------------------------------------
; 1181 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1181| 
	.dwpsn	"vportcap.c",1182,1
           LDW     .D2T2   *++SP(72),B3      ; |1182| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1182| 
           ; BRANCH OCCURS {B3}              ; |1182| 
	.dwattr DW$343, DW_AT_end_file("vportcap.c")
	.dwattr DW$343, DW_AT_end_line(0x49e)
	.dwattr DW$343, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$343

	.sect	".text"

DW$360	.dwtag  DW_TAG_subprogram, DW_AT_name("_startVPCapture"), DW_AT_symbol_name("__startVPCapture")
	.dwattr DW$360, DW_AT_low_pc(__startVPCapture)
	.dwattr DW$360, DW_AT_high_pc(0x00)
	.dwattr DW$360, DW_AT_begin_file("vportcap.c")
	.dwattr DW$360, DW_AT_begin_line(0x4a4)
	.dwattr DW$360, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",1189,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1188 | static Int _startVPCapture(Ptr chanp)                                  
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __startVPCapture                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                  *
;******************************************************************************
__startVPCapture:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |1189| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$361	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$361, DW_AT_type(*DW$T$37)
	.dwattr DW$361, DW_AT_location[DW_OP_reg4]
DW$362	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$362, DW_AT_type(*DW$T$37)
	.dwattr DW$362, DW_AT_location[DW_OP_breg31 4]
DW$363	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$363, DW_AT_type(*DW$T$149)
	.dwattr DW$363, DW_AT_location[DW_OP_breg31 8]
DW$364	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$364, DW_AT_type(*DW$T$221)
	.dwattr DW$364, DW_AT_location[DW_OP_breg31 12]
DW$365	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$365, DW_AT_type(*DW$T$168)
	.dwattr DW$365, DW_AT_location[DW_OP_breg31 16]
DW$366	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$366, DW_AT_type(*DW$T$168)
	.dwattr DW$366, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A4,*+SP(4)        ; |1189| 
           NOP             2
	.dwpsn	"vportcap.c",1190,21
;----------------------------------------------------------------------
; 1190 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(8)        ; |1190| 
           NOP             2
	.dwpsn	"vportcap.c",1191,14
;----------------------------------------------------------------------
; 1191 | PortObj* port = &portObjs[chan->portNum];                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B4        ; |1191| 
           NOP             3
           MVK     .S2     1216,B5           ; |1191| 
           MPYLI   .M2     B5,B4,B5:B4       ; |1191| 
           MVKL    .S1     _portObjs,A3      ; |1191| 
           MVKH    .S1     _portObjs,A3      ; |1191| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1191| 
           STW     .D2T2   B4,*+SP(12)       ; |1191| 
           NOP             2
	.dwpsn	"vportcap.c",1192,19
;----------------------------------------------------------------------
; 1192 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T2   *+A3(4),B4        ; |1192| 
           NOP             4
           STW     .D2T2   B4,*+SP(16)       ; |1192| 
           NOP             2
	.dwpsn	"vportcap.c",1193,19
;----------------------------------------------------------------------
; 1193 | volatile Int *cbase = (volatile Int *)chan->base;                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1193| 
           NOP             4
           LDW     .D1T2   *+A3(12),B4       ; |1193| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |1193| 
           NOP             2
	.dwpsn	"vportcap.c",1196,5
;----------------------------------------------------------------------
; 1196 | cbase[_VP_VCACTL_OFFSETA] |= VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_S
;     | HIFT;                                                                  
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T2   *+A3(4),B4        ; |1196| 
           NOP             4
           SET     .S2     B4,15,15,B4       ; |1196| 
           STW     .D1T2   B4,*+A3(4)        ; |1196| 
           NOP             2
	.dwpsn	"vportcap.c",1200,5
;----------------------------------------------------------------------
; 1200 | cbase[_VP_VCACTL_OFFSETA] &= ~ (_VP_VCACTL_BLKCAP_MASK);               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |1200| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |1200| 
           NOP             4
           CLR     .S1     A4,30,30,A4       ; |1200| 
           STW     .D1T1   A4,*+A3(4)        ; |1200| 
           NOP             2
	.dwpsn	"vportcap.c",1203,5
;----------------------------------------------------------------------
; 1203 | base[_VP_VPIE_OFFSET] |= VP_VPIE_VIE_ENABLE << _VP_VPIE_VIE_SHIFT;     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |1203| 
           NOP             4
           ADDAD   .D1     A3,25,A3          ; |1203| 
           LDW     .D1T1   *A3,A4            ; |1203| 
           NOP             4
           OR      .L1     1,A4,A4           ; |1203| 
           STW     .D1T1   A4,*A3            ; |1203| 
           NOP             2
	.dwpsn	"vportcap.c",1204,5
;----------------------------------------------------------------------
; 1204 | base[_VP_VPIS_OFFSET] |= 0XFFFFFFFF;                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |1204| 
           NOP             3
           MVK     .S2     204,B5            ; |1204| 
           ADD     .L2     B5,B4,B4          ; |1204| 
           LDW     .D2T2   *B4,B5            ; |1204| 
           NOP             4
           OR      .L2     -1,B5,B5          ; |1204| 
           STW     .D2T2   B5,*B4            ; |1204| 
           NOP             2
	.dwpsn	"vportcap.c",1206,5
;----------------------------------------------------------------------
; 1206 | IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1206| 
           NOP             2
           MVKL    .S2     _IRQ_clear,B4     ; |1206| 
           MVKH    .S2     _IRQ_clear,B4     ; |1206| 

           LDW     .D1T1   *+A3(4),A3        ; |1206| 
||         CALL    .S2     B4                ; |1206| 

           ADDKPC  .S2     RL100,B3,3        ; |1206| 
           ADD     .D1     A3,25,A4          ; |1206| 
RL100:     ; CALL OCCURS {_IRQ_clear}        ; |1206| 
	.dwpsn	"vportcap.c",1208,5
;----------------------------------------------------------------------
; 1208 | IRQ_enable(IRQ_EVT_VINT0 + chan->portNum);                             
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1208| 
           NOP             4

           MVKL    .S1     _IRQ_enable,A3    ; |1208| 
||         LDW     .D1T1   *+A3(4),A4        ; |1208| 

           MVKH    .S1     _IRQ_enable,A3    ; |1208| 
           NOP             1
           CALL    .S2X    A3                ; |1208| 
           ADDKPC  .S2     RL101,B3,3        ; |1208| 
           ADD     .D1     A4,25,A4          ; |1208| 
RL101:     ; CALL OCCURS {_IRQ_enable}       ; |1208| 
	.dwpsn	"vportcap.c",1210,5
;----------------------------------------------------------------------
; 1210 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1210| 
	.dwpsn	"vportcap.c",1211,1
           LDW     .D2T2   *++SP(24),B3      ; |1211| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1211| 
           ; BRANCH OCCURS {B3}              ; |1211| 
	.dwattr DW$360, DW_AT_end_file("vportcap.c")
	.dwattr DW$360, DW_AT_end_line(0x4bb)
	.dwattr DW$360, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$360

	.sect	".text"

DW$367	.dwtag  DW_TAG_subprogram, DW_AT_name("_stopVPCapture"), DW_AT_symbol_name("__stopVPCapture")
	.dwattr DW$367, DW_AT_low_pc(__stopVPCapture)
	.dwattr DW$367, DW_AT_high_pc(0x00)
	.dwattr DW$367, DW_AT_begin_file("vportcap.c")
	.dwattr DW$367, DW_AT_begin_line(0x4c1)
	.dwattr DW$367, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap.c",1218,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1217 | static Int _stopVPCapture(Ptr chanp)                                   
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __stopVPCapture                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                  *
;******************************************************************************
__stopVPCapture:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |1218| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$368	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$368, DW_AT_type(*DW$T$37)
	.dwattr DW$368, DW_AT_location[DW_OP_reg4]
DW$369	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$369, DW_AT_type(*DW$T$37)
	.dwattr DW$369, DW_AT_location[DW_OP_breg31 4]
DW$370	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$370, DW_AT_type(*DW$T$149)
	.dwattr DW$370, DW_AT_location[DW_OP_breg31 8]
DW$371	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$371, DW_AT_type(*DW$T$221)
	.dwattr DW$371, DW_AT_location[DW_OP_breg31 12]
DW$372	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$372, DW_AT_type(*DW$T$168)
	.dwattr DW$372, DW_AT_location[DW_OP_breg31 16]
DW$373	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$373, DW_AT_type(*DW$T$168)
	.dwattr DW$373, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A4,*+SP(4)        ; |1218| 
           NOP             2
	.dwpsn	"vportcap.c",1219,21
;----------------------------------------------------------------------
; 1219 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(8)        ; |1219| 
           NOP             2
	.dwpsn	"vportcap.c",1220,14
;----------------------------------------------------------------------
; 1220 | PortObj* port = &portObjs[chan->portNum];                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B4        ; |1220| 
           NOP             3
           MVK     .S2     1216,B5           ; |1220| 
           MPYLI   .M2     B5,B4,B5:B4       ; |1220| 
           MVKL    .S1     _portObjs,A3      ; |1220| 
           MVKH    .S1     _portObjs,A3      ; |1220| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1220| 
           STW     .D2T2   B4,*+SP(12)       ; |1220| 
           NOP             2
	.dwpsn	"vportcap.c",1221,19
;----------------------------------------------------------------------
; 1221 | volatile Int *cbase = (volatile Int *)chan->base;                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1221| 
           NOP             4
           LDW     .D1T2   *+A3(12),B4       ; |1221| 
           NOP             4
           STW     .D2T2   B4,*+SP(16)       ; |1221| 
           NOP             2
	.dwpsn	"vportcap.c",1222,19
;----------------------------------------------------------------------
; 1222 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1222| 
           NOP             4
           LDW     .D1T2   *+A3(4),B4        ; |1222| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |1222| 
           NOP             2
	.dwpsn	"vportcap.c",1225,5
;----------------------------------------------------------------------
; 1225 | cbase[_VP_VCACTL_OFFSETA] |= (_VP_VCACTL_BLKCAP_MASK);                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |1225| 
           NOP             4
           LDW     .D1T2   *+A3(4),B4        ; |1225| 
           NOP             4
           SET     .S2     B4,30,30,B4       ; |1225| 
           STW     .D1T2   B4,*+A3(4)        ; |1225| 
           NOP             2
	.dwpsn	"vportcap.c",1228,5
;----------------------------------------------------------------------
; 1228 | cbase[_VP_VCACTL_OFFSETA] &=                                           
; 1229 |     ~ (VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_SHIFT);                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |1228| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |1228| 
           NOP             4
           CLR     .S1     A4,15,15,A4       ; |1228| 
           STW     .D1T1   A4,*+A3(4)        ; |1228| 
           NOP             2
	.dwpsn	"vportcap.c",1232,5
;----------------------------------------------------------------------
; 1232 | base[_VP_VPIE_OFFSET] &= ~ (VP_VPIE_VIE_ENABLE << _VP_VPIE_VIE_SHIFT); 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |1232| 
           NOP             4
           ADDAD   .D1     A3,25,A3          ; |1232| 
           LDW     .D1T1   *A3,A4            ; |1232| 
           NOP             4
           AND     .L1     -2,A4,A4          ; |1232| 
           STW     .D1T1   A4,*A3            ; |1232| 
           NOP             2
	.dwpsn	"vportcap.c",1233,5
;----------------------------------------------------------------------
; 1233 | base[_VP_VPIS_OFFSET] |= 0XFFFFFFFF;                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |1233| 
           NOP             3
           MVK     .S2     204,B5            ; |1233| 
           ADD     .L2     B5,B4,B4          ; |1233| 
           LDW     .D2T2   *B4,B5            ; |1233| 
           NOP             4
           OR      .L2     -1,B5,B5          ; |1233| 
           STW     .D2T2   B5,*B4            ; |1233| 
           NOP             2
	.dwpsn	"vportcap.c",1236,5
;----------------------------------------------------------------------
; 1236 | IRQ_disable(IRQ_EVT_VINT0 + chan->portNum);                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1236| 
           NOP             4

           MVKL    .S1     _IRQ_disable,A3   ; |1236| 
||         LDW     .D1T1   *+A3(4),A4        ; |1236| 

           MVKH    .S1     _IRQ_disable,A3   ; |1236| 
           NOP             1
           CALL    .S2X    A3                ; |1236| 
           ADDKPC  .S2     RL102,B3,3        ; |1236| 
           ADD     .D1     A4,25,A4          ; |1236| 
RL102:     ; CALL OCCURS {_IRQ_disable}      ; |1236| 
	.dwpsn	"vportcap.c",1239,5
;----------------------------------------------------------------------
; 1239 | IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1239| 
           NOP             2
           MVKL    .S2     _IRQ_clear,B4     ; |1239| 
           MVKH    .S2     _IRQ_clear,B4     ; |1239| 

           LDW     .D1T1   *+A3(4),A3        ; |1239| 
||         CALL    .S2     B4                ; |1239| 

           ADDKPC  .S2     RL103,B3,3        ; |1239| 
           ADD     .D1     A3,25,A4          ; |1239| 
RL103:     ; CALL OCCURS {_IRQ_clear}        ; |1239| 
	.dwpsn	"vportcap.c",1241,5
;----------------------------------------------------------------------
; 1241 | EDMA_intDisable(chan->tcc[0]);                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1241| 
           MVKL    .S1     _EDMA_intDisable,A3 ; |1241| 
           MVKH    .S1     _EDMA_intDisable,A3 ; |1241| 
           MVK     .S1     112,A5            ; |1241| 
           CALL    .S2X    A3                ; |1241| 
           LDW     .D1T1   *+A4[A5],A4       ; |1241| 
           ADDKPC  .S2     RL104,B3,3        ; |1241| 
RL104:     ; CALL OCCURS {_EDMA_intDisable}  ; |1241| 
	.dwpsn	"vportcap.c",1242,5
;----------------------------------------------------------------------
; 1242 | EDMA_intClear(chan->tcc[0]);                                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1242| 
           MVKL    .S1     _EDMA_intClear,A3 ; |1242| 
           MVKH    .S1     _EDMA_intClear,A3 ; |1242| 
           MVK     .S1     112,A5            ; |1242| 
           CALL    .S2X    A3                ; |1242| 
           LDW     .D1T1   *+A4[A5],A4       ; |1242| 
           ADDKPC  .S2     RL105,B3,3        ; |1242| 
RL105:     ; CALL OCCURS {_EDMA_intClear}    ; |1242| 
	.dwpsn	"vportcap.c",1244,5
;----------------------------------------------------------------------
; 1244 | EDMA_intDisable(chan->tcc[1]);                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1244| 
           MVKL    .S2     _EDMA_intDisable,B4 ; |1244| 
           MVKH    .S2     _EDMA_intDisable,B4 ; |1244| 
           MVK     .S1     113,A4            ; |1244| 
           CALL    .S2     B4                ; |1244| 
           LDW     .D1T1   *+A3[A4],A4       ; |1244| 
           ADDKPC  .S2     RL106,B3,3        ; |1244| 
RL106:     ; CALL OCCURS {_EDMA_intDisable}  ; |1244| 
	.dwpsn	"vportcap.c",1245,5
;----------------------------------------------------------------------
; 1245 | EDMA_intClear(chan->tcc[1]);                                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1245| 
           MVKL    .S2     _EDMA_intClear,B4 ; |1245| 
           MVKH    .S2     _EDMA_intClear,B4 ; |1245| 
           MVK     .S1     113,A4            ; |1245| 
           CALL    .S2     B4                ; |1245| 
           LDW     .D1T1   *+A3[A4],A4       ; |1245| 
           ADDKPC  .S2     RL107,B3,3        ; |1245| 
RL107:     ; CALL OCCURS {_EDMA_intClear}    ; |1245| 
	.dwpsn	"vportcap.c",1247,5
;----------------------------------------------------------------------
; 1247 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1247| 
	.dwpsn	"vportcap.c",1248,1
           LDW     .D2T2   *++SP(24),B3      ; |1248| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1248| 
           ; BRANCH OCCURS {B3}              ; |1248| 
	.dwattr DW$367, DW_AT_end_file("vportcap.c")
	.dwattr DW$367, DW_AT_end_line(0x4e0)
	.dwattr DW$367, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$367

	.sect	".text"

DW$374	.dwtag  DW_TAG_subprogram, DW_AT_name("captureISR"), DW_AT_symbol_name("_captureISR")
	.dwattr DW$374, DW_AT_low_pc(_captureISR)
	.dwattr DW$374, DW_AT_high_pc(0x00)
	.dwattr DW$374, DW_AT_begin_file("vportcap.c")
	.dwattr DW$374, DW_AT_begin_line(0x4e7)
	.dwattr DW$374, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap.c",1256,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1255 | static void captureISR(Int portNum)                                    
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: _captureISR                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                  *
;******************************************************************************
_captureISR:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |1256| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$375	.dwtag  DW_TAG_formal_parameter, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$375, DW_AT_type(*DW$T$22)
	.dwattr DW$375, DW_AT_location[DW_OP_reg4]
DW$376	.dwtag  DW_TAG_variable, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$376, DW_AT_type(*DW$T$22)
	.dwattr DW$376, DW_AT_location[DW_OP_breg31 4]
DW$377	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$377, DW_AT_type(*DW$T$168)
	.dwattr DW$377, DW_AT_location[DW_OP_breg31 8]
DW$378	.dwtag  DW_TAG_variable, DW_AT_name("vpis"), DW_AT_symbol_name("_vpis")
	.dwattr DW$378, DW_AT_type(*DW$T$22)
	.dwattr DW$378, DW_AT_location[DW_OP_breg31 12]
DW$379	.dwtag  DW_TAG_variable, DW_AT_name("mask"), DW_AT_symbol_name("_mask")
	.dwattr DW$379, DW_AT_type(*DW$T$22)
	.dwattr DW$379, DW_AT_location[DW_OP_breg31 16]
DW$380	.dwtag  DW_TAG_variable, DW_AT_name("chanObjs"), DW_AT_symbol_name("_chanObjs")
	.dwattr DW$380, DW_AT_type(*DW$T$149)
	.dwattr DW$380, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A4,*+SP(4)        ; |1256| 
           NOP             2
	.dwpsn	"vportcap.c",1257,19
;----------------------------------------------------------------------
; 1257 | volatile Int *base =                                                   
; 1258 |     (volatile Int *)portObjs[portNum].base;                            
;----------------------------------------------------------------------

           MVK     .S2     1216,B5           ; |1257| 
||         MV      .L2X    A4,B4

           MPYLI   .M2     B5,B4,B5:B4       ; |1257| 
           NOP             2
           MVKL    .S1     _portObjs+4,A3    ; |1257| 
           MVKH    .S1     _portObjs+4,A3    ; |1257| 
           ADD     .L1X    A3,B4,A3          ; |1257| 
           LDW     .D1T1   *A3,A3            ; |1257| 
           NOP             4
           STW     .D2T1   A3,*+SP(8)        ; |1257| 
           NOP             2
	.dwpsn	"vportcap.c",1259,9
;----------------------------------------------------------------------
; 1259 | Int vpis = base[_VP_VPIS_OFFSET];                                      
;----------------------------------------------------------------------

           MV      .L2X    A3,B4
||         MVK     .S2     51,B5             ; |1259| 

           LDW     .D2T2   *+B4[B5],B4       ; |1259| 
           NOP             4
           STW     .D2T2   B4,*+SP(12)       ; |1259| 
           NOP             2
	.dwpsn	"vportcap.c",1260,9
;----------------------------------------------------------------------
; 1260 | Int mask = vpis;                                                       
;----------------------------------------------------------------------
           STW     .D2T2   B4,*+SP(16)       ; |1260| 
           NOP             2
	.dwpsn	"vportcap.c",1261,21
;----------------------------------------------------------------------
; 1261 | _VPORT_ChanObj* chanObjs = portObjs[portNum].chanObj;                  
;----------------------------------------------------------------------

           MV      .L2X    A4,B4
||         MVK     .S2     1216,B5           ; |1261| 

           MPYLI   .M2     B5,B4,B5:B4       ; |1261| 
           MVKL    .S1     _portObjs+8,A3    ; |1261| 
           MVKH    .S1     _portObjs+8,A3    ; |1261| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1261| 
           STW     .D2T2   B4,*+SP(20)       ; |1261| 
           NOP             2
	.dwpsn	"vportcap.c",1263,5
;----------------------------------------------------------------------
; 1263 | if(vpis & chanObjs[0].vIntMask && chanObjs[0].vIntFxn != INV) {        
;----------------------------------------------------------------------

           LDW     .D2T2   *+SP(12),B4       ; |1263| 
||         MV      .L2     B4,B5

           LDW     .D2T2   *+B5(40),B5       ; |1263| 
           NOP             2
           ZERO    .D1     A3                ; |1263| 
           MVK     .S1     118,A5            ; |1263| 
           AND     .L2     B5,B4,B4          ; |1263| 
           CMPEQ   .L2     B4,0,B0           ; |1263| 
   [ B0]   BNOP    .S1     L174,2            ; |1263| 
           XOR     .L2     1,B0,B4           ; |1263| 
           MVK     .L1     -1,A6             ; |1263| 

           LDW     .D2T2   *+SP(20),B5       ; |1263| 
||         MV      .L1X    B4,A0             ; |1263| 

           ; BRANCHCC OCCURS {L174}          ; |1263| 
;** --------------------------------------------------------------------------*
           NOP             4
           MV      .L1X    B5,A4
           LDW     .D1T1   *+A4[A5],A4       ; |1263| 
           NOP             4
           CMPEQ   .L1     A4,A6,A0          ; |1263| 
   [ A0]   BNOP    .S1     L173,5            ; |1263| 
           ; BRANCHCC OCCURS {L173}          ; |1263| 
;** --------------------------------------------------------------------------*
           MVK     .L1     0x1,A3            ; |1263| 
;** --------------------------------------------------------------------------*
L173:    
           MV      .L1     A3,A0             ; |1263| 
;** --------------------------------------------------------------------------*
L174:    
   [!A0]   BNOP    .S1     L175,5            ; |1263| 
           ; BRANCHCC OCCURS {L175}          ; |1263| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1264,9
;----------------------------------------------------------------------
; 1264 | chanObjs[0].vIntFxn(chanObjs[0].vIntCbArg, vpis);                      
;----------------------------------------------------------------------
           MV      .L1X    B5,A3
           LDW     .D1T1   *+A3[A5],A3       ; |1264| 
           MVK     .S1     138,A5            ; |1264| 
           MV      .L1X    B5,A4
           LDW     .D1T1   *+A4[A5],A4       ; |1264| 
           LDW     .D2T2   *+SP(12),B4       ; |1264| 
           CALL    .S2X    A3                ; |1264| 
           ADDKPC  .S2     RL108,B3,4        ; |1264| 
RL108:     ; CALL OCCURS {A3}                ; |1264| 
	.dwpsn	"vportcap.c",1265,9
;----------------------------------------------------------------------
; 1265 | mask &=  chanObjs[0].vIntMask;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B5       ; |1265| 
           NOP             3
           LDW     .D2T2   *+SP(16),B4       ; |1265| 
           LDW     .D2T2   *+B5(40),B5       ; |1265| 
           NOP             4
           AND     .L2     B5,B4,B4          ; |1265| 
           STW     .D2T2   B4,*+SP(16)       ; |1265| 
           NOP             2
	.dwpsn	"vportcap.c",1266,5
;----------------------------------------------------------------------
; 1266 | }else if(vpis & chanObjs[1].vIntMask && chanObjs[1].vIntFxn != INV) {  
;----------------------------------------------------------------------
           BNOP    .S1     L178,5            ; |1266| 
           ; BRANCH OCCURS {L178}            ; |1266| 
;** --------------------------------------------------------------------------*
L175:    
	.dwpsn	"vportcap.c",1266,11

           LDW     .D2T2   *+SP(12),B4       ; |1266| 
||         MVK     .S2     161,B6            ; |1266| 

           LDW     .D2T2   *+B5[B6],B5       ; |1266| 
           NOP             2
           MVK     .S1     269,A5            ; |1266| 
           ZERO    .D1     A4                ; |1266| 
           AND     .L2     B5,B4,B4          ; |1266| 
           CMPEQ   .L2     B4,0,B0           ; |1266| 
   [ B0]   BNOP    .S1     L177,2            ; |1266| 
           XOR     .L2     1,B0,B4           ; |1266| 
           LDW     .D2T2   *+SP(20),B5       ; |1266| 
           MV      .L1X    B4,A0             ; |1266| 
           ; BRANCHCC OCCURS {L177}          ; |1266| 
;** --------------------------------------------------------------------------*
           NOP             4
           MV      .L1X    B5,A3
           LDW     .D1T1   *+A3[A5],A3       ; |1266| 
           NOP             4
           CMPEQ   .L1     A3,A6,A0          ; |1266| 
   [ A0]   BNOP    .S1     L176,5            ; |1266| 
           ; BRANCHCC OCCURS {L176}          ; |1266| 
;** --------------------------------------------------------------------------*
           MVK     .L1     0x1,A4            ; |1266| 
;** --------------------------------------------------------------------------*
L176:    
           MV      .L1     A4,A0             ; |1266| 
;** --------------------------------------------------------------------------*
L177:    
   [!A0]   BNOP    .S1     L178,5            ; |1266| 
           ; BRANCHCC OCCURS {L178}          ; |1266| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1267,9
;----------------------------------------------------------------------
; 1267 | chanObjs[1].vIntFxn(chanObjs[1].vIntCbArg, (vpis >> 16));              
;----------------------------------------------------------------------
           MV      .L1X    B5,A3
           LDW     .D1T1   *+A3[A5],A3       ; |1267| 
           LDW     .D2T2   *+SP(12),B4       ; |1267| 
           MVK     .S1     289,A5            ; |1267| 
           MV      .L1X    B5,A4
           LDW     .D1T1   *+A4[A5],A4       ; |1267| 
           CALL    .S2X    A3                ; |1267| 
           SHR     .S2     B4,16,B4          ; |1267| 
           ADDKPC  .S2     RL109,B3,3        ; |1267| 
RL109:     ; CALL OCCURS {A3}                ; |1267| 
	.dwpsn	"vportcap.c",1268,9
;----------------------------------------------------------------------
; 1268 | mask &=  chanObjs[1].vIntMask;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B5       ; |1268| 
           NOP             2
           LDW     .D2T2   *+SP(16),B4       ; |1268| 
           MVK     .S2     161,B6            ; |1268| 
           LDW     .D2T2   *+B5[B6],B5       ; |1268| 
           NOP             4
           AND     .L2     B5,B4,B4          ; |1268| 
           STW     .D2T2   B4,*+SP(16)       ; |1268| 
;** --------------------------------------------------------------------------*
L178:    
	.dwpsn	"vportcap.c",1271,5
;----------------------------------------------------------------------
; 1271 | base[_VP_VPIS_OFFSET] |= mask;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1271| 
           NOP             3
           MVK     .S2     204,B5            ; |1271| 

           LDW     .D2T2   *+SP(16),B5       ; |1271| 
||         ADD     .L2     B5,B4,B6          ; |1271| 

           LDW     .D2T2   *B6,B4            ; |1271| 
           NOP             4
           OR      .L2     B5,B4,B4          ; |1271| 
           STW     .D2T2   B4,*B6            ; |1271| 
           NOP             2
	.dwpsn	"vportcap.c",1272,1
           LDW     .D2T2   *++SP(24),B3      ; |1272| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1272| 
           ; BRANCH OCCURS {B3}              ; |1272| 
	.dwattr DW$374, DW_AT_end_file("vportcap.c")
	.dwattr DW$374, DW_AT_end_line(0x4f8)
	.dwattr DW$374, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$374

	.sect	".text"

DW$381	.dwtag  DW_TAG_subprogram, DW_AT_name("_delay"), DW_AT_symbol_name("__delay")
	.dwattr DW$381, DW_AT_low_pc(__delay)
	.dwattr DW$381, DW_AT_high_pc(0x00)
	.dwattr DW$381, DW_AT_begin_file("vportcap.c")
	.dwattr DW$381, DW_AT_begin_line(0x4fa)
	.dwattr DW$381, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap.c",1275,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1274 | static void _delay(Int delayTime)                                      
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __delay                                                     *
;*                                                                            *
;*   Regs Modified     : SP                                                   *
;*   Regs Used         : A4,B3,SP                                             *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
__delay:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .L2     SP,8,SP           ; |1275| 
	.dwcfa	0x0e, 8
DW$382	.dwtag  DW_TAG_formal_parameter, DW_AT_name("delayTime"), DW_AT_symbol_name("_delayTime")
	.dwattr DW$382, DW_AT_type(*DW$T$22)
	.dwattr DW$382, DW_AT_location[DW_OP_reg4]
DW$383	.dwtag  DW_TAG_variable, DW_AT_name("delayTime"), DW_AT_symbol_name("_delayTime")
	.dwattr DW$383, DW_AT_type(*DW$T$22)
	.dwattr DW$383, DW_AT_location[DW_OP_breg31 4]
           STW     .D2T1   A4,*+SP(4)        ; |1275| 
           NOP             2
	.dwpsn	"vportcap.c",1276,5
;----------------------------------------------------------------------
; 1276 | asm("loop1: BDEC loop1, A4");                                          
;----------------------------------------------------------------------
loop1: BDEC loop1, A4
	.dwpsn	"vportcap.c",1277,5
;----------------------------------------------------------------------
; 1277 | asm(" NOP 5");                                                         
;----------------------------------------------------------------------
 NOP 5
	.dwpsn	"vportcap.c",1279,1
           ADD     .L2     8,SP,SP           ; |1279| 
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1279| 
           ; BRANCH OCCURS {B3}              ; |1279| 
	.dwattr DW$381, DW_AT_end_file("vportcap.c")
	.dwattr DW$381, DW_AT_end_line(0x4ff)
	.dwattr DW$381, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$381

	.sect	".text"

DW$384	.dwtag  DW_TAG_subprogram, DW_AT_name("_autoSync"), DW_AT_symbol_name("__autoSync")
	.dwattr DW$384, DW_AT_low_pc(__autoSync)
	.dwattr DW$384, DW_AT_high_pc(0x00)
	.dwattr DW$384, DW_AT_begin_file("vportcap.c")
	.dwattr DW$384, DW_AT_begin_line(0x501)
	.dwattr DW$384, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap.c",1282,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1281 | static void _autoSync(_VPORT_ChanObj* chan)                            
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __autoSync                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                  *
;******************************************************************************
__autoSync:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(24)      ; |1282| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$385	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$385, DW_AT_type(*DW$T$149)
	.dwattr DW$385, DW_AT_location[DW_OP_reg4]
DW$386	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$386, DW_AT_type(*DW$T$149)
	.dwattr DW$386, DW_AT_location[DW_OP_breg31 4]
DW$387	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$387, DW_AT_type(*DW$T$168)
	.dwattr DW$387, DW_AT_location[DW_OP_breg31 8]
DW$388	.dwtag  DW_TAG_variable, DW_AT_name("fid_stat"), DW_AT_symbol_name("_fid_stat")
	.dwattr DW$388, DW_AT_type(*DW$T$167)
	.dwattr DW$388, DW_AT_location[DW_OP_breg31 12]
DW$389	.dwtag  DW_TAG_variable, DW_AT_name("ypos"), DW_AT_symbol_name("_ypos")
	.dwattr DW$389, DW_AT_type(*DW$T$167)
	.dwattr DW$389, DW_AT_location[DW_OP_breg31 16]
DW$390	.dwtag  DW_TAG_variable, DW_AT_name("offset"), DW_AT_symbol_name("_offset")
	.dwattr DW$390, DW_AT_type(*DW$T$22)
	.dwattr DW$390, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A4,*+SP(4)        ; |1282| 
           NOP             2
	.dwpsn	"vportcap.c",1283,19
;----------------------------------------------------------------------
; 1283 | volatile Int *cbase = (volatile Int *)chan->base;                      
;----------------------------------------------------------------------
           MV      .L1     A4,A3
           LDW     .D1T1   *+A3(12),A3       ; |1283| 
           NOP             4
           STW     .D2T1   A3,*+SP(8)        ; |1283| 
           NOP             2
	.dwpsn	"vportcap.c",1284,18
;----------------------------------------------------------------------
; 1284 | volatile Int fid_stat =                                                
; 1285 |   (cbase[_VP_VCASTAT_OFFSETA] & _VP_VCASTAT_VCFLD_MASK)                
; 1286 |   >> _VP_VCASTAT_VCFLD_SHIFT;                                          
;----------------------------------------------------------------------
           LDW     .D1T1   *A3,A3            ; |1284| 
           NOP             4
           EXTU    .S1     A3,19,31,A3       ; |1284| 
           STW     .D2T1   A3,*+SP(12)       ; |1284| 
           NOP             2
	.dwpsn	"vportcap.c",1287,18
;----------------------------------------------------------------------
; 1287 | volatile Int ypos =                                                    
; 1288 |  (cbase[_VP_VCASTAT_OFFSETA] & _VP_VCASTAT_VCYPOS_MASK)                
; 1289 |   >> _VP_VCASTAT_VCYPOS_SHIFT;                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1287| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |1287| 
           NOP             4
           EXTU    .S1     A3,4,20,A3        ; |1287| 
           STW     .D2T1   A3,*+SP(16)       ; |1287| 
           NOP             2
	.dwpsn	"vportcap.c",1290,9
;----------------------------------------------------------------------
; 1290 | Int offset = chan->nextEDMARlds << 1;                                  
;----------------------------------------------------------------------

           MVK     .S1     142,A4            ; |1290| 
||         MV      .L1     A4,A3

           LDW     .D1T1   *+A3[A4],A3       ; |1290| 
           NOP             4
           ADD     .L1     A3,A3,A3          ; |1290| 
           STW     .D2T1   A3,*+SP(20)       ; |1290| 
           NOP             2
	.dwpsn	"vportcap.c",1292,5
;----------------------------------------------------------------------
; 1292 | if(chan->interlaced && ( fid_stat == 0 && ypos >= chan->numTotalLinesFl
;     | d1                                                                     
; 1293 |   || fid_stat == 1 && ypos <= chan->numLinesFld1)){                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B4        ; |1292| 
           NOP             3
           MVK     .S2     231,B5            ; |1292| 
           LDHU    .D2T2   *+B4[B5],B4       ; |1292| 
           NOP             4
           CMPEQ   .L2     B4,0,B0           ; |1292| 
   [ B0]   BNOP    .S1     L182,2            ; |1292| 
           XOR     .L2     1,B0,B4           ; |1292| 
           NOP             1
           MV      .L1X    B4,A0             ; |1292| 
           ; BRANCHCC OCCURS {L182}          ; |1292| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(12),B4       ; |1292| 
           NOP             3
           MVK     .S2     143,B5            ; |1292| 
           CMPEQ   .L2     B4,0,B0           ; |1292| 
   [!B0]   BNOP    .S1     L179,4            ; |1292| 

           LDW     .D2T2   *+SP(4),B4        ; |1292| 
||         MV      .L1X    B0,A3             ; |1292| 

           ; BRANCHCC OCCURS {L179}          ; |1292| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4[B5],B5       ; |1292| 
           LDW     .D2T2   *+SP(16),B4       ; |1292| 
           NOP             4
           CMPLT   .L2     B4,B5,B4          ; |1292| 
           NOP             1
           XOR     .L1X    1,B4,A3           ; |1292| 
;** --------------------------------------------------------------------------*
L179:    
           CMPEQ   .L1     A3,0,A0           ; |1292| 
   [!A0]   BNOP    .S1     L181,1            ; |1292| 
           XOR     .L1     1,A0,A3           ; |1292| 
           NOP             1
           MV      .L2X    A3,B4             ; |1292| 
           NOP             1
           ; BRANCHCC OCCURS {L181}          ; |1292| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(12),B4       ; |1292| 
           NOP             3
           MVK     .S2     125,B5            ; |1292| 
           CMPEQ   .L2     B4,1,B0           ; |1292| 
   [!B0]   B       .S1     L180              ; |1292| 
           LDW     .D2T2   *+SP(4),B4        ; |1292| 
           NOP             4
           ; BRANCHCC OCCURS {L180}          ; |1292| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+B4[B5],B5       ; |1292| 
           LDW     .D2T2   *+SP(16),B4       ; |1292| 
           NOP             4
           CMPGTU  .L2     B4,B5,B4          ; |1292| 
           XOR     .L2     1,B4,B0           ; |1292| 
;** --------------------------------------------------------------------------*
L180:    
           CMPEQ   .L2     B0,0,B4           ; |1292| 
           XOR     .L2     1,B4,B4           ; |1292| 
           NOP             1
;** --------------------------------------------------------------------------*
L181:    
           MV      .L1X    B4,A0             ; |1292| 
;** --------------------------------------------------------------------------*
L182:    
   [!A0]   BNOP    .S1     L183,5            ; |1292| 
           ; BRANCHCC OCCURS {L183}          ; |1292| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap.c",1295,9
;----------------------------------------------------------------------
; 1295 | EDMA_link(chan->hEdma[0], chan->hRld[offset]);                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A7        ; |1295| 
           LDW     .D2T1   *+SP(20),A5       ; |1295| 
           MVKL    .S1     _EDMA_link,A3     ; |1295| 
           MVK     .S1     97,A6             ; |1295| 
           MVKH    .S1     _EDMA_link,A3     ; |1295| 
           MV      .L1     A7,A4             ; |1295| 
           LDW     .D1T1   *+A4[A6],A4       ; |1295| 

           CALL    .S2X    A3                ; |1295| 
||         MVK     .S1     100,A7            ; |1295| 
||         ADDAW   .D1     A7,A5,A5          ; |1295| 

           LDW     .D1T2   *+A5[A7],B4       ; |1295| 
           ADDKPC  .S2     RL110,B3,3        ; |1295| 
RL110:     ; CALL OCCURS {_EDMA_link}        ; |1295| 
	.dwpsn	"vportcap.c",1296,9
;----------------------------------------------------------------------
; 1296 | EDMA_link(chan->hEdma[1], chan->hRld[offset+4]);                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B6       ; |1296| 
           LDW     .D2T1   *+SP(4),A4        ; |1296| 
           MVKL    .S2     _EDMA_link,B5     ; |1296| 
           MVKH    .S2     _EDMA_link,B5     ; |1296| 
           MVK     .S1     100,A31           ; |1296| 

           MVK     .S2     98,B6             ; |1296| 
||         ADD     .L1X    4,B6,A3           ; |1296| 

           MV      .L2X    A4,B4             ; |1296| 
||         ADDAW   .D1     A4,A3,A3          ; |1296| 
||         CALL    .S2     B5                ; |1296| 

           LDW     .D1T2   *+A3[A31],B4      ; |1296| 
||         LDW     .D2T1   *+B4[B6],A4       ; |1296| 

           ADDKPC  .S2     RL111,B3,3        ; |1296| 
RL111:     ; CALL OCCURS {_EDMA_link}        ; |1296| 
	.dwpsn	"vportcap.c",1297,9
;----------------------------------------------------------------------
; 1297 | EDMA_link(chan->hEdma[2], chan->hRld[offset+8]);                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |1297| 
           LDW     .D2T2   *+SP(4),B5        ; |1297| 
           MVKL    .S1     _EDMA_link,A3     ; |1297| 
           MVKH    .S1     _EDMA_link,A3     ; |1297| 
           MVK     .S2     99,B31            ; |1297| 
           ADD     .L2     8,B4,B4           ; |1297| 

           ADDAW   .D2     B5,B4,B5          ; |1297| 
||         MV      .L2     B5,B6             ; |1297| 
||         MVK     .S2     100,B30           ; |1297| 

           CALL    .S2X    A3                ; |1297| 
||         LDW     .D2T1   *+B6[B31],A4      ; |1297| 

           LDW     .D2T2   *+B5[B30],B4      ; |1297| 
           ADDKPC  .S2     RL112,B3,3        ; |1297| 
RL112:     ; CALL OCCURS {_EDMA_link}        ; |1297| 
	.dwpsn	"vportcap.c",1298,5
;** --------------------------------------------------------------------------*
L183:    
	.dwpsn	"vportcap.c",1299,1
           LDW     .D2T2   *++SP(24),B3      ; |1299| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1299| 
           ; BRANCH OCCURS {B3}              ; |1299| 
	.dwattr DW$384, DW_AT_end_file("vportcap.c")
	.dwattr DW$384, DW_AT_end_line(0x513)
	.dwattr DW$384, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$384

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Assertion failed, (portNum < 3), file vportcap.c, line 147",10
	.string	0
SL2:	.string	"Assertion failed, (chanNum < 2), file vportcap.c, line 223",10
	.string	0
SL3:	.string	"Assertion failed, (chan->status & 4), file vportcap.c, line"
	.string	" 353",10,0
SL4:	.string	"Assertion failed, (params->fldXStop1 == params->fldXStop2),"
	.string	" file vportcap.c, line 595",10,0
SL5:	.string	"Assertion failed, (params->fldXStrt1 == params->fldXStrt2),"
	.string	" file vportcap.c, line 596",10,0
SL6:	.string	"Assertion failed, (((chan->yPitch*chan->numLinesFld1) / (ch"
	.string	"an->yThrld << 3)) *(chan->yThrld << 3) == (chan->yPitch * c"
	.string	"han->numLinesFld1)), file vportcap.c, line 652",10,0
SL7:	.string	"Assertion failed, (((chan->yPitch * chan->numLines) / (chan"
	.string	"->yThrld << 3)) *(chan->yThrld << 3) == (chan->yPitch * cha"
	.string	"n->numLines)), file vportcap.c, line 654",10,0
SL8:	.string	"Assertion failed, (totalNumPixels < 2^24), file vportcap.c,"
	.string	" line 675",10,0
SL9:	.string	"Assertion failed, ((paramsRaw->lineSz * paramsRaw->numLines"
	.string	" / 3) * 3 == paramsRaw->lineSz * paramsRaw->numLines), file"
	.string	" vportcap.c, line 707",10,0
SL10:	.string	"Assertion failed, (totalBytesPerFrame / chan->yPitch * chan"
	.string	"->yPitch == totalBytesPerFrame), file vportcap.c, line 724",10
	.string	0
SL11:	.string	"Assertion failed, (numFrmBufs >= 2 && numFrmBufs <= 10), fi"
	.string	"le vportcap.c, line 830",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_MEM_free
	.global	_MEM_valloc
	.global	_QUE_get
	.global	_QUE_put
	.global	_SEM_pend
	.global	_HWI_dispatchPlug
	.global	_CLK_getltime
	.global	_IRQ_map
	.global	_IRQ_enable
	.global	_IRQ_disable
	.global	_IRQ_clear
	.global	_IRQ_globalDisable
	.global	_IRQ_globalRestore
	.global	_EDMA_open
	.global	_EDMA_close
	.global	_EDMA_allocTable
	.global	_EDMA_freeTable
	.global	_EDMA_intAlloc
	.global	_EDMA_intFree
	.global	_EDMA_intHook
	.global	_EDMA_intDispatcher
	.global	_EDMA_enableChannel
	.global	_EDMA_disableChannel
	.global	_EDMA_clearChannel
	.global	_EDMA_intEnable
	.global	_EDMA_intDisable
	.global	_EDMA_intClear
	.global	_EDMA_link
	.global	_EDMA_config
	.global	_IOM_mdNotImpl
	.global	_TSK_timerSem
	.global	_HWI_ATTRS
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

DW$T$113	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$391	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$392	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$393	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$394	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$T$113


DW$T$116	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$395	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
	.dwendtag DW$T$116

DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TiomCallback"), DW_AT_type(*DW$T$77)
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)

DW$T$121	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$121, DW_AT_language(DW_LANG_C)
DW$396	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$397	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$120)
	.dwendtag DW$T$121


DW$T$122	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)
DW$398	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
DW$399	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$122


DW$T$126	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$126, DW_AT_language(DW_LANG_C)
DW$400	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$401	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$88)
DW$402	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$403	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$125)
	.dwendtag DW$T$126


DW$T$128	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)
DW$404	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$405	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$128


DW$T$130	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$130, DW_AT_language(DW_LANG_C)
DW$406	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$130


DW$T$132	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
DW$407	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$T$132


DW$T$134	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$134, DW_AT_language(DW_LANG_C)
DW$408	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$134

DW$T$136	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_IntHandler"), DW_AT_type(*DW$T$135)
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)

DW$T$137	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$136)
	.dwattr DW$T$137, DW_AT_language(DW_LANG_C)
DW$409	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$410	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$136)
	.dwendtag DW$T$137


DW$T$139	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$139, DW_AT_language(DW_LANG_C)

DW$T$141	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$141, DW_AT_language(DW_LANG_C)
DW$411	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$412	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$T$141


DW$T$145	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$145, DW_AT_language(DW_LANG_C)
DW$413	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$414	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$144)
	.dwendtag DW$T$145


DW$T$147	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$147, DW_AT_language(DW_LANG_C)
DW$415	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$T$147


DW$T$150	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
DW$416	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$T$150

DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("Bool"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)

DW$T$152	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$41)
	.dwattr DW$T$152, DW_AT_language(DW_LANG_C)
DW$417	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$418	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$419	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$152


DW$T$156	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$41)
	.dwattr DW$T$156, DW_AT_language(DW_LANG_C)
DW$420	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$155)
DW$421	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$156

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Int"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)

DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$422	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$61

DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn"), DW_AT_type(*DW$T$87)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)

DW$T$91	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
DW$423	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$90)
DW$424	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$425	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$91


DW$T$95	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$426	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$427	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$428	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$95


DW$T$98	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
DW$429	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$90)
DW$430	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$431	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$432	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$433	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$434	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$78)
DW$435	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$98


DW$T$102	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)
DW$436	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$437	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$75)
	.dwendtag DW$T$102


DW$T$158	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$158, DW_AT_language(DW_LANG_C)

DW$T$162	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$162, DW_AT_language(DW_LANG_C)
DW$438	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$439	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$161)
	.dwendtag DW$T$162


DW$T$164	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$164, DW_AT_language(DW_LANG_C)
DW$440	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$441	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$164

DW$T$167	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$167, DW_AT_type(*DW$T$22)
DW$T$168	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$167)
	.dwattr DW$T$168, DW_AT_address_class(0x20)

DW$T$170	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$170, DW_AT_language(DW_LANG_C)
DW$442	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$170

DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Uns"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Handle"), DW_AT_type(*DW$T$34)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)

DW$T$182	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$182, DW_AT_language(DW_LANG_C)
DW$443	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$444	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$182


DW$T$184	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$184, DW_AT_language(DW_LANG_C)
DW$445	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$184


DW$T$178	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$178, DW_AT_language(DW_LANG_C)
DW$446	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$178


DW$T$180	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$180, DW_AT_language(DW_LANG_C)
DW$T$175	.dwtag  DW_TAG_typedef, DW_AT_name("LgUns"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$175, DW_AT_language(DW_LANG_C)

DW$T$176	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$175)
	.dwattr DW$T$176, DW_AT_language(DW_LANG_C)
DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Handle"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$T$155	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle"), DW_AT_type(*DW$T$154)
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)
DW$T$213	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$213, DW_AT_language(DW_LANG_C)
DW$T$124	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_Attrs"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)
DW$T$125	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$124)
	.dwattr DW$T$125, DW_AT_address_class(0x20)
DW$T$143	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Config"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)
DW$T$144	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$143)
	.dwattr DW$T$144, DW_AT_address_class(0x20)
DW$T$75	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$74)
	.dwattr DW$T$75, DW_AT_address_class(0x20)
DW$T$161	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$160)
	.dwattr DW$T$161, DW_AT_address_class(0x20)
DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("Char"), DW_AT_type(*DW$T$43)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("String"), DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$T$120	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$119)
	.dwattr DW$T$120, DW_AT_address_class(0x20)
DW$T$209	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$208)
	.dwattr DW$T$209, DW_AT_address_class(0x20)
DW$T$83	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$83, DW_AT_address_class(0x20)
DW$T$149	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$149, DW_AT_address_class(0x20)
DW$T$218	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Fxns"), DW_AT_type(*DW$T$105)
	.dwattr DW$T$218, DW_AT_language(DW_LANG_C)

DW$T$220	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$219)
	.dwattr DW$T$220, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$220, DW_AT_byte_size(0xe40)
DW$447	.dwtag  DW_TAG_subrange_type
	.dwattr DW$447, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$220

DW$T$221	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$219)
	.dwattr DW$T$221, DW_AT_address_class(0x20)
DW$T$223	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$222)
	.dwattr DW$T$223, DW_AT_address_class(0x20)
DW$T$225	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$224)
	.dwattr DW$T$225, DW_AT_address_class(0x20)
DW$T$227	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$226)
	.dwattr DW$T$227, DW_AT_address_class(0x20)
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)
DW$T$77	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$76)
	.dwattr DW$T$77, DW_AT_address_class(0x20)
DW$T$135	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$134)
	.dwattr DW$T$135, DW_AT_address_class(0x20)
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
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$448, DW_AT_name("job"), DW_AT_symbol_name("_job")
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$449, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$450, DW_AT_name("pendQ"), DW_AT_symbol_name("_pendQ")
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30

DW$T$154	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$154, DW_AT_address_class(0x20)

DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("HWI_Attrs")
	.dwattr DW$T$33, DW_AT_byte_size(0x0c)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$451, DW_AT_name("intrMask"), DW_AT_symbol_name("_intrMask")
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$452, DW_AT_name("ccMask"), DW_AT_symbol_name("_ccMask")
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$453, DW_AT_name("arg"), DW_AT_symbol_name("_arg")
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x18)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$454, DW_AT_name("opt"), DW_AT_symbol_name("_opt")
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$455, DW_AT_name("src"), DW_AT_symbol_name("_src")
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$456, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$457, DW_AT_name("dst"), DW_AT_symbol_name("_dst")
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$458, DW_AT_name("idx"), DW_AT_symbol_name("_idx")
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$459, DW_AT_name("rld"), DW_AT_symbol_name("_rld")
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35

DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Packet"), DW_AT_type(*DW$T$73)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$160	.dwtag  DW_TAG_typedef, DW_AT_name("VPORTCAP_Params"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$160, DW_AT_language(DW_LANG_C)
DW$T$43	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$43, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$T$57	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$43)
	.dwattr DW$T$57, DW_AT_address_class(0x20)
DW$T$119	.dwtag  DW_TAG_const_type
	.dwattr DW$T$119, DW_AT_type(*DW$T$43)
DW$T$208	.dwtag  DW_TAG_typedef, DW_AT_name("Int8"), DW_AT_type(*DW$T$43)
	.dwattr DW$T$208, DW_AT_language(DW_LANG_C)
DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_Frame"), DW_AT_type(*DW$T$55)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("_VPORT_ChanObj"), DW_AT_type(*DW$T$89)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)

DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$105, DW_AT_name("IOM_Fxns")
	.dwattr DW$T$105, DW_AT_byte_size(0x18)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$93)
	.dwattr DW$460, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$461, DW_AT_name("mdUnBindDev"), DW_AT_symbol_name("_mdUnBindDev")
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$462, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$100)
	.dwattr DW$463, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$101)
	.dwattr DW$464, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$104)
	.dwattr DW$465, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$105

DW$T$219	.dwtag  DW_TAG_typedef, DW_AT_name("PortObj"), DW_AT_type(*DW$T$108)
	.dwattr DW$T$219, DW_AT_language(DW_LANG_C)
DW$T$222	.dwtag  DW_TAG_typedef, DW_AT_name("VPORTCAP_ParamsRaw"), DW_AT_type(*DW$T$109)
	.dwattr DW$T$222, DW_AT_language(DW_LANG_C)
DW$T$224	.dwtag  DW_TAG_typedef, DW_AT_name("VPORT_PortParams"), DW_AT_type(*DW$T$111)
	.dwattr DW$T$224, DW_AT_language(DW_LANG_C)
DW$T$226	.dwtag  DW_TAG_typedef, DW_AT_name("VPORT_VIntCbParams"), DW_AT_type(*DW$T$112)
	.dwattr DW$T$226, DW_AT_language(DW_LANG_C)

DW$T$76	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$466	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$467	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$75)
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
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$468, DW_AT_name("next"), DW_AT_symbol_name("_next")
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$469, DW_AT_name("prev"), DW_AT_symbol_name("_prev")
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Frame"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)

DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_byte_size(0x58)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$470, DW_AT_name("cmode"), DW_AT_symbol_name("_cmode")
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$471, DW_AT_name("fldOp"), DW_AT_symbol_name("_fldOp")
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$472, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$473, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$474, DW_AT_name("bpk10Bit"), DW_AT_symbol_name("_bpk10Bit")
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$475, DW_AT_name("hCtRst"), DW_AT_symbol_name("_hCtRst")
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$476, DW_AT_name("vCtRst"), DW_AT_symbol_name("_vCtRst")
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$477, DW_AT_name("fldDect"), DW_AT_symbol_name("_fldDect")
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$478, DW_AT_name("extCtl"), DW_AT_symbol_name("_extCtl")
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$479, DW_AT_name("fldInv"), DW_AT_symbol_name("_fldInv")
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
DW$480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$480, DW_AT_name("fldXStrt1"), DW_AT_symbol_name("_fldXStrt1")
	.dwattr DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$480, DW_AT_accessibility(DW_ACCESS_public)
DW$481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$481, DW_AT_name("fldYStrt1"), DW_AT_symbol_name("_fldYStrt1")
	.dwattr DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$481, DW_AT_accessibility(DW_ACCESS_public)
DW$482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$482, DW_AT_name("fldXStrt2"), DW_AT_symbol_name("_fldXStrt2")
	.dwattr DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$482, DW_AT_accessibility(DW_ACCESS_public)
DW$483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$483, DW_AT_name("fldYStrt2"), DW_AT_symbol_name("_fldYStrt2")
	.dwattr DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$483, DW_AT_accessibility(DW_ACCESS_public)
DW$484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$484, DW_AT_name("fldXStop1"), DW_AT_symbol_name("_fldXStop1")
	.dwattr DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$484, DW_AT_accessibility(DW_ACCESS_public)
DW$485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$485, DW_AT_name("fldYStop1"), DW_AT_symbol_name("_fldYStop1")
	.dwattr DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$485, DW_AT_accessibility(DW_ACCESS_public)
DW$486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$486, DW_AT_name("fldXStop2"), DW_AT_symbol_name("_fldXStop2")
	.dwattr DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$486, DW_AT_accessibility(DW_ACCESS_public)
DW$487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$487, DW_AT_name("fldYStop2"), DW_AT_symbol_name("_fldYStop2")
	.dwattr DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$487, DW_AT_accessibility(DW_ACCESS_public)
DW$488	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$488, DW_AT_name("thrld"), DW_AT_symbol_name("_thrld")
	.dwattr DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$488, DW_AT_accessibility(DW_ACCESS_public)
DW$489	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$489, DW_AT_name("numFrmBufs"), DW_AT_symbol_name("_numFrmBufs")
	.dwattr DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$489, DW_AT_accessibility(DW_ACCESS_public)
DW$490	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$490, DW_AT_name("alignment"), DW_AT_symbol_name("_alignment")
	.dwattr DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$490, DW_AT_accessibility(DW_ACCESS_public)
DW$491	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$491, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$491, DW_AT_accessibility(DW_ACCESS_public)
DW$492	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$492, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$492, DW_AT_accessibility(DW_ACCESS_public)
DW$493	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$493, DW_AT_name("edmaPri"), DW_AT_symbol_name("_edmaPri")
	.dwattr DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr DW$493, DW_AT_accessibility(DW_ACCESS_public)
DW$494	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$494, DW_AT_name("irqId"), DW_AT_symbol_name("_irqId")
	.dwattr DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$494, DW_AT_accessibility(DW_ACCESS_public)
DW$495	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$495, DW_AT_name("autoSyncEnable"), DW_AT_symbol_name("_autoSyncEnable")
	.dwattr DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_name("FVID_Frame")
	.dwattr DW$T$55, DW_AT_byte_size(0x20)
DW$496	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$496, DW_AT_name("queElement"), DW_AT_symbol_name("_queElement")
	.dwattr DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$496, DW_AT_accessibility(DW_ACCESS_public)
DW$497	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$497, DW_AT_name("frame"), DW_AT_symbol_name("_frame")
	.dwattr DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$89, DW_AT_byte_size(0x25c)
DW$498	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$498, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$498, DW_AT_accessibility(DW_ACCESS_public)
DW$499	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$499, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$499, DW_AT_accessibility(DW_ACCESS_public)
DW$500	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$500, DW_AT_name("chanNum"), DW_AT_symbol_name("_chanNum")
	.dwattr DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$500, DW_AT_accessibility(DW_ACCESS_public)
DW$501	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$501, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$501, DW_AT_accessibility(DW_ACCESS_public)
DW$502	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$502, DW_AT_name("edmaChanNum"), DW_AT_symbol_name("_edmaChanNum")
	.dwattr DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$502, DW_AT_accessibility(DW_ACCESS_public)
DW$503	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$503, DW_AT_name("edmaAddr"), DW_AT_symbol_name("_edmaAddr")
	.dwattr DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$503, DW_AT_accessibility(DW_ACCESS_public)
DW$504	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$504, DW_AT_name("vIntMask"), DW_AT_symbol_name("_vIntMask")
	.dwattr DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$504, DW_AT_accessibility(DW_ACCESS_public)
DW$505	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$505, DW_AT_name("viops"), DW_AT_symbol_name("_viops")
	.dwattr DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$505, DW_AT_accessibility(DW_ACCESS_public)
DW$506	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$506, DW_AT_name("qIn"), DW_AT_symbol_name("_qIn")
	.dwattr DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x16c]
	.dwattr DW$506, DW_AT_accessibility(DW_ACCESS_public)
DW$507	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$507, DW_AT_name("qOut"), DW_AT_symbol_name("_qOut")
	.dwattr DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x174]
	.dwattr DW$507, DW_AT_accessibility(DW_ACCESS_public)
DW$508	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$508, DW_AT_name("qPullDown"), DW_AT_symbol_name("_qPullDown")
	.dwattr DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x17c]
	.dwattr DW$508, DW_AT_accessibility(DW_ACCESS_public)
DW$509	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$509, DW_AT_name("hEdma"), DW_AT_symbol_name("_hEdma")
	.dwattr DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x184]
	.dwattr DW$509, DW_AT_accessibility(DW_ACCESS_public)
DW$510	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$510, DW_AT_name("hRld"), DW_AT_symbol_name("_hRld")
	.dwattr DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x190]
	.dwattr DW$510, DW_AT_accessibility(DW_ACCESS_public)
DW$511	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$511, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c0]
	.dwattr DW$511, DW_AT_accessibility(DW_ACCESS_public)
DW$512	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$512, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x1cc]
	.dwattr DW$512, DW_AT_accessibility(DW_ACCESS_public)
DW$513	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$513, DW_AT_name("interlaced"), DW_AT_symbol_name("_interlaced")
	.dwattr DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ce]
	.dwattr DW$513, DW_AT_accessibility(DW_ACCESS_public)
DW$514	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$78)
	.dwattr DW$514, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d0]
	.dwattr DW$514, DW_AT_accessibility(DW_ACCESS_public)
DW$515	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$515, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d4]
	.dwattr DW$515, DW_AT_accessibility(DW_ACCESS_public)
DW$516	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$516, DW_AT_name("vIntFxn"), DW_AT_symbol_name("_vIntFxn")
	.dwattr DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d8]
	.dwattr DW$516, DW_AT_accessibility(DW_ACCESS_public)
DW$517	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$82)
	.dwattr DW$517, DW_AT_name("queEmpty"), DW_AT_symbol_name("_queEmpty")
	.dwattr DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x1dc]
	.dwattr DW$517, DW_AT_accessibility(DW_ACCESS_public)
DW$518	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$518, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x1de]
	.dwattr DW$518, DW_AT_accessibility(DW_ACCESS_public)
DW$519	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$519, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e0]
	.dwattr DW$519, DW_AT_accessibility(DW_ACCESS_public)
DW$520	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$520, DW_AT_name("yPitch"), DW_AT_symbol_name("_yPitch")
	.dwattr DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e4]
	.dwattr DW$520, DW_AT_accessibility(DW_ACCESS_public)
DW$521	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$521, DW_AT_name("cPitch"), DW_AT_symbol_name("_cPitch")
	.dwattr DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e8]
	.dwattr DW$521, DW_AT_accessibility(DW_ACCESS_public)
DW$522	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$522, DW_AT_name("numLines"), DW_AT_symbol_name("_numLines")
	.dwattr DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ec]
	.dwattr DW$522, DW_AT_accessibility(DW_ACCESS_public)
DW$523	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$523, DW_AT_name("numPixels"), DW_AT_symbol_name("_numPixels")
	.dwattr DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f0]
	.dwattr DW$523, DW_AT_accessibility(DW_ACCESS_public)
DW$524	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$524, DW_AT_name("numLinesFld1"), DW_AT_symbol_name("_numLinesFld1")
	.dwattr DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f4]
	.dwattr DW$524, DW_AT_accessibility(DW_ACCESS_public)
DW$525	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$525, DW_AT_name("numFrms"), DW_AT_symbol_name("_numFrms")
	.dwattr DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f8]
	.dwattr DW$525, DW_AT_accessibility(DW_ACCESS_public)
DW$526	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$526, DW_AT_name("numEvents"), DW_AT_symbol_name("_numEvents")
	.dwattr DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x1fc]
	.dwattr DW$526, DW_AT_accessibility(DW_ACCESS_public)
DW$527	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$527, DW_AT_name("numEventsFld1"), DW_AT_symbol_name("_numEventsFld1")
	.dwattr DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x200]
	.dwattr DW$527, DW_AT_accessibility(DW_ACCESS_public)
DW$528	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$528, DW_AT_name("yThrld"), DW_AT_symbol_name("_yThrld")
	.dwattr DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x204]
	.dwattr DW$528, DW_AT_accessibility(DW_ACCESS_public)
DW$529	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$529, DW_AT_name("cThrld"), DW_AT_symbol_name("_cThrld")
	.dwattr DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x208]
	.dwattr DW$529, DW_AT_accessibility(DW_ACCESS_public)
DW$530	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$530, DW_AT_name("curViop"), DW_AT_symbol_name("_curViop")
	.dwattr DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x20c]
	.dwattr DW$530, DW_AT_accessibility(DW_ACCESS_public)
DW$531	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$531, DW_AT_name("nextViop"), DW_AT_symbol_name("_nextViop")
	.dwattr DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x210]
	.dwattr DW$531, DW_AT_accessibility(DW_ACCESS_public)
DW$532	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$532, DW_AT_name("mrViop"), DW_AT_symbol_name("_mrViop")
	.dwattr DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x214]
	.dwattr DW$532, DW_AT_accessibility(DW_ACCESS_public)
DW$533	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$533, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x218]
	.dwattr DW$533, DW_AT_accessibility(DW_ACCESS_public)
DW$534	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$85)
	.dwattr DW$534, DW_AT_name("edcFxns"), DW_AT_symbol_name("_edcFxns")
	.dwattr DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x21c]
	.dwattr DW$534, DW_AT_accessibility(DW_ACCESS_public)
DW$535	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$535, DW_AT_name("edcHandle"), DW_AT_symbol_name("_edcHandle")
	.dwattr DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x220]
	.dwattr DW$535, DW_AT_accessibility(DW_ACCESS_public)
DW$536	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$536, DW_AT_name("packetIOM"), DW_AT_symbol_name("_packetIOM")
	.dwattr DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x224]
	.dwattr DW$536, DW_AT_accessibility(DW_ACCESS_public)
DW$537	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$537, DW_AT_name("vIntCbArg"), DW_AT_symbol_name("_vIntCbArg")
	.dwattr DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x228]
	.dwattr DW$537, DW_AT_accessibility(DW_ACCESS_public)
DW$538	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$538, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x22c]
	.dwattr DW$538, DW_AT_accessibility(DW_ACCESS_public)
DW$539	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$539, DW_AT_name("bufSz"), DW_AT_symbol_name("_bufSz")
	.dwattr DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x230]
	.dwattr DW$539, DW_AT_accessibility(DW_ACCESS_public)
DW$540	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$540, DW_AT_name("lastLineNum"), DW_AT_symbol_name("_lastLineNum")
	.dwattr DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x234]
	.dwattr DW$540, DW_AT_accessibility(DW_ACCESS_public)
DW$541	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$541, DW_AT_name("nextEDMARlds"), DW_AT_symbol_name("_nextEDMARlds")
	.dwattr DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x238]
	.dwattr DW$541, DW_AT_accessibility(DW_ACCESS_public)
DW$542	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$542, DW_AT_name("numTotalLinesFld1"), DW_AT_symbol_name("_numTotalLinesFld1")
	.dwattr DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x23c]
	.dwattr DW$542, DW_AT_accessibility(DW_ACCESS_public)
DW$543	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$543, DW_AT_name("autoSyncEnable"), DW_AT_symbol_name("_autoSyncEnable")
	.dwattr DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x240]
	.dwattr DW$543, DW_AT_accessibility(DW_ACCESS_public)
DW$544	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$544, DW_AT_name("asyncModeEnable"), DW_AT_symbol_name("_asyncModeEnable")
	.dwattr DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x242]
	.dwattr DW$544, DW_AT_accessibility(DW_ACCESS_public)
DW$545	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$545, DW_AT_name("pullDownMode"), DW_AT_symbol_name("_pullDownMode")
	.dwattr DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x244]
	.dwattr DW$545, DW_AT_accessibility(DW_ACCESS_public)
DW$546	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$546, DW_AT_name("asyncFrameCt"), DW_AT_symbol_name("_asyncFrameCt")
	.dwattr DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x248]
	.dwattr DW$546, DW_AT_accessibility(DW_ACCESS_public)
DW$547	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$88)
	.dwattr DW$547, DW_AT_name("asyncCallBackFxn"), DW_AT_symbol_name("_asyncCallBackFxn")
	.dwattr DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x24c]
	.dwattr DW$547, DW_AT_accessibility(DW_ACCESS_public)
DW$548	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$548, DW_AT_name("frmSz"), DW_AT_symbol_name("_frmSz")
	.dwattr DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x250]
	.dwattr DW$548, DW_AT_accessibility(DW_ACCESS_public)
DW$549	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$549, DW_AT_name("asyncCbArg"), DW_AT_symbol_name("_asyncCbArg")
	.dwattr DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x254]
	.dwattr DW$549, DW_AT_accessibility(DW_ACCESS_public)
DW$550	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$550, DW_AT_name("startFlag"), DW_AT_symbol_name("_startFlag")
	.dwattr DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x258]
	.dwattr DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$89


DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$108, DW_AT_name("PortObj")
	.dwattr DW$T$108, DW_AT_byte_size(0x4c0)
DW$551	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$551, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$551, DW_AT_accessibility(DW_ACCESS_public)
DW$552	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$552, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$552, DW_AT_accessibility(DW_ACCESS_public)
DW$553	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$107)
	.dwattr DW$553, DW_AT_name("chanObj"), DW_AT_symbol_name("_chanObj")
	.dwattr DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$108


DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$109, DW_AT_byte_size(0x28)
DW$554	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$554, DW_AT_name("cmode"), DW_AT_symbol_name("_cmode")
	.dwattr DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$554, DW_AT_accessibility(DW_ACCESS_public)
DW$555	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$555, DW_AT_name("startupSyncEnable"), DW_AT_symbol_name("_startupSyncEnable")
	.dwattr DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$555, DW_AT_accessibility(DW_ACCESS_public)
DW$556	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$556, DW_AT_name("blankperiod"), DW_AT_symbol_name("_blankperiod")
	.dwattr DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$556, DW_AT_accessibility(DW_ACCESS_public)
DW$557	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$557, DW_AT_name("lineSz"), DW_AT_symbol_name("_lineSz")
	.dwattr DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$557, DW_AT_accessibility(DW_ACCESS_public)
DW$558	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$558, DW_AT_name("numLines"), DW_AT_symbol_name("_numLines")
	.dwattr DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$558, DW_AT_accessibility(DW_ACCESS_public)
DW$559	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$559, DW_AT_name("thrld"), DW_AT_symbol_name("_thrld")
	.dwattr DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$559, DW_AT_accessibility(DW_ACCESS_public)
DW$560	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$560, DW_AT_name("bpk10Bit"), DW_AT_symbol_name("_bpk10Bit")
	.dwattr DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$560, DW_AT_accessibility(DW_ACCESS_public)
DW$561	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$561, DW_AT_name("numFrmBufs"), DW_AT_symbol_name("_numFrmBufs")
	.dwattr DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$561, DW_AT_accessibility(DW_ACCESS_public)
DW$562	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$562, DW_AT_name("alignment"), DW_AT_symbol_name("_alignment")
	.dwattr DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$562, DW_AT_accessibility(DW_ACCESS_public)
DW$563	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$563, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$563, DW_AT_accessibility(DW_ACCESS_public)
DW$564	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$564, DW_AT_name("edmaPri"), DW_AT_symbol_name("_edmaPri")
	.dwattr DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$564, DW_AT_accessibility(DW_ACCESS_public)
DW$565	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$565, DW_AT_name("irqId"), DW_AT_symbol_name("_irqId")
	.dwattr DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$109


DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$111, DW_AT_name("VPORT_PortParams")
	.dwattr DW$T$111, DW_AT_byte_size(0x18)
DW$566	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$566, DW_AT_name("dualChanEnable"), DW_AT_symbol_name("_dualChanEnable")
	.dwattr DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$566, DW_AT_accessibility(DW_ACCESS_public)
DW$567	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$567, DW_AT_name("vc1Polarity"), DW_AT_symbol_name("_vc1Polarity")
	.dwattr DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$567, DW_AT_accessibility(DW_ACCESS_public)
DW$568	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$568, DW_AT_name("vc2Polarity"), DW_AT_symbol_name("_vc2Polarity")
	.dwattr DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$568, DW_AT_accessibility(DW_ACCESS_public)
DW$569	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$569, DW_AT_name("vc3Polarity"), DW_AT_symbol_name("_vc3Polarity")
	.dwattr DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$569, DW_AT_accessibility(DW_ACCESS_public)
DW$570	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$110)
	.dwattr DW$570, DW_AT_name("edcTbl"), DW_AT_symbol_name("_edcTbl")
	.dwattr DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$570, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$111


DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$112, DW_AT_name("VPORT_VIntCbParams")
	.dwattr DW$T$112, DW_AT_byte_size(0x10)
DW$571	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$571, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$571, DW_AT_accessibility(DW_ACCESS_public)
DW$572	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$572, DW_AT_name("vIntCbFxn"), DW_AT_symbol_name("_vIntCbFxn")
	.dwattr DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$572, DW_AT_accessibility(DW_ACCESS_public)
DW$573	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$573, DW_AT_name("vIntMask"), DW_AT_symbol_name("_vIntMask")
	.dwattr DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$573, DW_AT_accessibility(DW_ACCESS_public)
DW$574	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$574, DW_AT_name("vIntLine"), DW_AT_symbol_name("_vIntLine")
	.dwattr DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$574, DW_AT_accessibility(DW_ACCESS_public)
DW$575	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$575, DW_AT_name("irqId"), DW_AT_symbol_name("_irqId")
	.dwattr DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$112

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
DW$576	.dwtag  DW_TAG_subrange_type
	.dwattr DW$576, DW_AT_upper_bound(0x02)
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
DW$577	.dwtag  DW_TAG_subrange_type
	.dwattr DW$577, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$66


DW$T$70	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$70, DW_AT_byte_size(0x0c)
DW$578	.dwtag  DW_TAG_subrange_type
	.dwattr DW$578, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$70


DW$T$71	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$71, DW_AT_byte_size(0x30)
DW$579	.dwtag  DW_TAG_subrange_type
	.dwattr DW$579, DW_AT_upper_bound(0x0b)
	.dwendtag DW$T$71

DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("KNL_Job")
	.dwattr DW$T$28, DW_AT_byte_size(0x10)
DW$580	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$580, DW_AT_name("wListElem"), DW_AT_symbol_name("_wListElem")
	.dwattr DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$580, DW_AT_accessibility(DW_ACCESS_public)
DW$581	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$581, DW_AT_name("wCount"), DW_AT_symbol_name("_wCount")
	.dwattr DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$581, DW_AT_accessibility(DW_ACCESS_public)
DW$582	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$582, DW_AT_name("fxn"), DW_AT_symbol_name("_fxn")
	.dwattr DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("DEV_Frame")
	.dwattr DW$T$38, DW_AT_byte_size(0x20)
DW$583	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$583, DW_AT_name("link"), DW_AT_symbol_name("_link")
	.dwattr DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$583, DW_AT_accessibility(DW_ACCESS_public)
DW$584	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$584, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$584, DW_AT_accessibility(DW_ACCESS_public)
DW$585	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$585, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$585, DW_AT_accessibility(DW_ACCESS_public)
DW$586	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$586, DW_AT_name("misc"), DW_AT_symbol_name("_misc")
	.dwattr DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$586, DW_AT_accessibility(DW_ACCESS_public)
DW$587	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$587, DW_AT_name("arg"), DW_AT_symbol_name("_arg")
	.dwattr DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$587, DW_AT_accessibility(DW_ACCESS_public)
DW$588	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$588, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$588, DW_AT_accessibility(DW_ACCESS_public)
DW$589	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$589, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr DW$T$54, DW_AT_byte_size(0x18)
DW$590	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$590, DW_AT_name("iFrm"), DW_AT_symbol_name("_iFrm")
	.dwattr DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$590, DW_AT_accessibility(DW_ACCESS_public)
DW$591	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$591, DW_AT_name("pFrm"), DW_AT_symbol_name("_pFrm")
	.dwattr DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$591, DW_AT_accessibility(DW_ACCESS_public)
DW$592	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$592, DW_AT_name("riFrm"), DW_AT_symbol_name("_riFrm")
	.dwattr DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$592, DW_AT_accessibility(DW_ACCESS_public)
DW$593	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$593, DW_AT_name("rpFrm"), DW_AT_symbol_name("_rpFrm")
	.dwattr DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$68	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$68, DW_AT_byte_size(0x140)
DW$594	.dwtag  DW_TAG_subrange_type
	.dwattr DW$594, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$68

DW$T$85	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$84)
	.dwattr DW$T$85, DW_AT_address_class(0x20)

DW$T$110	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$85)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$110, DW_AT_byte_size(0x08)
DW$595	.dwtag  DW_TAG_subrange_type
	.dwattr DW$595, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$110


DW$T$107	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$107, DW_AT_byte_size(0x4b8)
DW$596	.dwtag  DW_TAG_subrange_type
	.dwattr DW$596, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$107

DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$T$80	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$79)
	.dwattr DW$T$80, DW_AT_address_class(0x20)
DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_IFrame"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_PFrame"), DW_AT_type(*DW$T$47)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_RawIFrame"), DW_AT_type(*DW$T$48)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_RawPFrame"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Fxns"), DW_AT_type(*DW$T$65)
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$26, DW_AT_address_class(0x20)

DW$T$79	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
DW$597	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
DW$598	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$79


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("FVID_IFrame")
	.dwattr DW$T$46, DW_AT_byte_size(0x18)
DW$599	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$599, DW_AT_name("y1"), DW_AT_symbol_name("_y1")
	.dwattr DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$599, DW_AT_accessibility(DW_ACCESS_public)
DW$600	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$600, DW_AT_name("cb1"), DW_AT_symbol_name("_cb1")
	.dwattr DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$600, DW_AT_accessibility(DW_ACCESS_public)
DW$601	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$601, DW_AT_name("cr1"), DW_AT_symbol_name("_cr1")
	.dwattr DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$601, DW_AT_accessibility(DW_ACCESS_public)
DW$602	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$602, DW_AT_name("y2"), DW_AT_symbol_name("_y2")
	.dwattr DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$602, DW_AT_accessibility(DW_ACCESS_public)
DW$603	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$603, DW_AT_name("cb2"), DW_AT_symbol_name("_cb2")
	.dwattr DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$603, DW_AT_accessibility(DW_ACCESS_public)
DW$604	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$604, DW_AT_name("cr2"), DW_AT_symbol_name("_cr2")
	.dwattr DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("FVID_PFrame")
	.dwattr DW$T$47, DW_AT_byte_size(0x0c)
DW$605	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$605, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$605, DW_AT_accessibility(DW_ACCESS_public)
DW$606	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$606, DW_AT_name("cb"), DW_AT_symbol_name("_cb")
	.dwattr DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$606, DW_AT_accessibility(DW_ACCESS_public)
DW$607	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$607, DW_AT_name("cr"), DW_AT_symbol_name("_cr")
	.dwattr DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("FVID_RawIFrame")
	.dwattr DW$T$48, DW_AT_byte_size(0x08)
DW$608	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$608, DW_AT_name("buf1"), DW_AT_symbol_name("_buf1")
	.dwattr DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$608, DW_AT_accessibility(DW_ACCESS_public)
DW$609	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$609, DW_AT_name("buf2"), DW_AT_symbol_name("_buf2")
	.dwattr DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_name("FVID_RawPFrame")
	.dwattr DW$T$49, DW_AT_byte_size(0x04)
DW$610	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$610, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("EDC_Fxns")
	.dwattr DW$T$65, DW_AT_byte_size(0x0c)
DW$611	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$611, DW_AT_name("open"), DW_AT_symbol_name("_open")
	.dwattr DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$611, DW_AT_accessibility(DW_ACCESS_public)
DW$612	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$612, DW_AT_name("close"), DW_AT_symbol_name("_close")
	.dwattr DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$612, DW_AT_accessibility(DW_ACCESS_public)
DW$613	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$613, DW_AT_name("ctrl"), DW_AT_symbol_name("_ctrl")
	.dwattr DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65

DW$T$60	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$59)
	.dwattr DW$T$60, DW_AT_address_class(0x20)

DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$614	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$25

DW$T$64	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_address_class(0x20)
DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$T$45	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$44)
	.dwattr DW$T$45, DW_AT_address_class(0x20)

DW$T$59	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$56)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$615	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$616	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$59


DW$T$63	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$617	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$618	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$619	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$63

DW$T$23	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$23, DW_AT_address_class(0x20)
DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Handle"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)

	.dwattr DW$218, DW_AT_type(*DW$T$22)
	.dwattr DW$238, DW_AT_type(*DW$T$22)
	.dwattr DW$244, DW_AT_type(*DW$T$22)
	.dwattr DW$254, DW_AT_type(*DW$T$22)
	.dwattr DW$318, DW_AT_type(*DW$T$22)
	.dwattr DW$332, DW_AT_type(*DW$T$22)
	.dwattr DW$343, DW_AT_type(*DW$T$22)
	.dwattr DW$360, DW_AT_type(*DW$T$22)
	.dwattr DW$367, DW_AT_type(*DW$T$22)
	.dwattr DW$80, DW_AT_type(*DW$T$22)
	.dwattr DW$92, DW_AT_type(*DW$T$22)
	.dwattr DW$101, DW_AT_type(*DW$T$22)
	.dwattr DW$140, DW_AT_type(*DW$T$22)
	.dwattr DW$151, DW_AT_type(*DW$T$22)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 126
	.dwcfa	0x0c, 31, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x07, 6
	.dwcfa	0x07, 7
	.dwcfa	0x07, 8
	.dwcfa	0x07, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x08, 12
	.dwcfa	0x08, 13
	.dwcfa	0x08, 14
	.dwcfa	0x08, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x08, 26
	.dwcfa	0x08, 27
	.dwcfa	0x08, 28
	.dwcfa	0x08, 29
	.dwcfa	0x08, 30
	.dwcfa	0x08, 31
	.dwcfa	0x08, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40
	.dwcfa	0x07, 41
	.dwcfa	0x07, 42
	.dwcfa	0x07, 43
	.dwcfa	0x07, 44
	.dwcfa	0x07, 45
	.dwcfa	0x07, 46
	.dwcfa	0x07, 47
	.dwcfa	0x07, 48
	.dwcfa	0x07, 49
	.dwcfa	0x07, 50
	.dwcfa	0x07, 51
	.dwcfa	0x07, 52
	.dwcfa	0x07, 53
	.dwcfa	0x07, 54
	.dwcfa	0x07, 55
	.dwcfa	0x07, 56
	.dwcfa	0x07, 57
	.dwcfa	0x07, 58
	.dwcfa	0x07, 59
	.dwcfa	0x07, 60
	.dwcfa	0x07, 61
	.dwcfa	0x07, 62
	.dwcfa	0x07, 63
	.dwcfa	0x07, 64
	.dwcfa	0x07, 65
	.dwcfa	0x07, 66
	.dwcfa	0x07, 67
	.dwcfa	0x07, 68
	.dwcfa	0x07, 69
	.dwcfa	0x07, 70
	.dwcfa	0x07, 71
	.dwcfa	0x07, 72
	.dwcfa	0x07, 73
	.dwcfa	0x07, 74
	.dwcfa	0x07, 75
	.dwcfa	0x07, 76
	.dwcfa	0x07, 77
	.dwcfa	0x07, 78
	.dwcfa	0x07, 79
	.dwcfa	0x07, 80
	.dwcfa	0x07, 81
	.dwcfa	0x07, 82
	.dwcfa	0x07, 83
	.dwcfa	0x07, 84
	.dwcfa	0x07, 85
	.dwcfa	0x07, 86
	.dwcfa	0x07, 87
	.dwcfa	0x07, 88
	.dwcfa	0x07, 89
	.dwcfa	0x07, 90
	.dwcfa	0x07, 91
	.dwcfa	0x07, 92
	.dwcfa	0x07, 93
	.dwcfa	0x07, 94
	.dwcfa	0x07, 95
	.dwcfa	0x07, 96
	.dwcfa	0x07, 97
	.dwcfa	0x07, 98
	.dwcfa	0x07, 99
	.dwcfa	0x07, 100
	.dwcfa	0x07, 101
	.dwcfa	0x07, 102
	.dwcfa	0x07, 103
	.dwcfa	0x07, 104
	.dwcfa	0x07, 105
	.dwcfa	0x07, 106
	.dwcfa	0x07, 107
	.dwcfa	0x07, 108
	.dwcfa	0x07, 109
	.dwcfa	0x07, 110
	.dwcfa	0x07, 111
	.dwcfa	0x07, 112
	.dwcfa	0x07, 113
	.dwcfa	0x07, 114
	.dwcfa	0x07, 115
	.dwcfa	0x07, 116
	.dwcfa	0x07, 117
	.dwcfa	0x07, 118
	.dwcfa	0x07, 119
	.dwcfa	0x07, 120
	.dwcfa	0x07, 121
	.dwcfa	0x07, 122
	.dwcfa	0x07, 123
	.dwcfa	0x07, 124
	.dwcfa	0x07, 125
	.dwcfa	0x07, 126

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$620	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$620, DW_AT_location[DW_OP_reg0]
DW$621	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$621, DW_AT_location[DW_OP_reg1]
DW$622	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$622, DW_AT_location[DW_OP_reg2]
DW$623	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$623, DW_AT_location[DW_OP_reg3]
DW$624	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$624, DW_AT_location[DW_OP_reg4]
DW$625	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$625, DW_AT_location[DW_OP_reg5]
DW$626	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$626, DW_AT_location[DW_OP_reg6]
DW$627	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$627, DW_AT_location[DW_OP_reg7]
DW$628	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$628, DW_AT_location[DW_OP_reg8]
DW$629	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$629, DW_AT_location[DW_OP_reg9]
DW$630	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$630, DW_AT_location[DW_OP_reg10]
DW$631	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$631, DW_AT_location[DW_OP_reg11]
DW$632	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$632, DW_AT_location[DW_OP_reg12]
DW$633	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$633, DW_AT_location[DW_OP_reg13]
DW$634	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$634, DW_AT_location[DW_OP_reg14]
DW$635	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$635, DW_AT_location[DW_OP_reg15]
DW$636	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$636, DW_AT_location[DW_OP_reg16]
DW$637	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$637, DW_AT_location[DW_OP_reg17]
DW$638	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$638, DW_AT_location[DW_OP_reg18]
DW$639	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$639, DW_AT_location[DW_OP_reg19]
DW$640	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$640, DW_AT_location[DW_OP_reg20]
DW$641	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$641, DW_AT_location[DW_OP_reg21]
DW$642	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$642, DW_AT_location[DW_OP_reg22]
DW$643	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$643, DW_AT_location[DW_OP_reg23]
DW$644	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$644, DW_AT_location[DW_OP_reg24]
DW$645	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$645, DW_AT_location[DW_OP_reg25]
DW$646	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$646, DW_AT_location[DW_OP_reg26]
DW$647	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$647, DW_AT_location[DW_OP_reg27]
DW$648	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$648, DW_AT_location[DW_OP_reg28]
DW$649	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$649, DW_AT_location[DW_OP_reg29]
DW$650	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$650, DW_AT_location[DW_OP_reg30]
DW$651	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$651, DW_AT_location[DW_OP_reg31]
DW$652	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$652, DW_AT_location[DW_OP_regx 0x20]
DW$653	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$653, DW_AT_location[DW_OP_regx 0x21]
DW$654	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$654, DW_AT_location[DW_OP_regx 0x22]
DW$655	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$655, DW_AT_location[DW_OP_regx 0x23]
DW$656	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$656, DW_AT_location[DW_OP_regx 0x24]
DW$657	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$657, DW_AT_location[DW_OP_regx 0x25]
DW$658	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$658, DW_AT_location[DW_OP_regx 0x26]
DW$659	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$659, DW_AT_location[DW_OP_regx 0x27]
DW$660	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$660, DW_AT_location[DW_OP_regx 0x28]
DW$661	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$661, DW_AT_location[DW_OP_regx 0x29]
DW$662	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$662, DW_AT_location[DW_OP_regx 0x2a]
DW$663	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$663, DW_AT_location[DW_OP_regx 0x2b]
DW$664	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$664, DW_AT_location[DW_OP_regx 0x2c]
DW$665	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$665, DW_AT_location[DW_OP_regx 0x2d]
DW$666	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$666, DW_AT_location[DW_OP_regx 0x2e]
DW$667	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$667, DW_AT_location[DW_OP_regx 0x2f]
DW$668	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$668, DW_AT_location[DW_OP_regx 0x30]
DW$669	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$669, DW_AT_location[DW_OP_regx 0x31]
DW$670	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$670, DW_AT_location[DW_OP_regx 0x32]
DW$671	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$671, DW_AT_location[DW_OP_regx 0x33]
DW$672	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$672, DW_AT_location[DW_OP_regx 0x34]
DW$673	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$673, DW_AT_location[DW_OP_regx 0x35]
DW$674	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$674, DW_AT_location[DW_OP_regx 0x36]
DW$675	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$675, DW_AT_location[DW_OP_regx 0x37]
DW$676	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$676, DW_AT_location[DW_OP_regx 0x38]
DW$677	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$677, DW_AT_location[DW_OP_regx 0x39]
DW$678	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$678, DW_AT_location[DW_OP_regx 0x3a]
DW$679	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$679, DW_AT_location[DW_OP_regx 0x3b]
DW$680	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$680, DW_AT_location[DW_OP_regx 0x3c]
DW$681	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$681, DW_AT_location[DW_OP_regx 0x3d]
DW$682	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$682, DW_AT_location[DW_OP_regx 0x3e]
DW$683	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$683, DW_AT_location[DW_OP_regx 0x3f]
DW$684	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$684, DW_AT_location[DW_OP_regx 0x40]
DW$685	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$685, DW_AT_location[DW_OP_regx 0x41]
DW$686	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$686, DW_AT_location[DW_OP_regx 0x42]
DW$687	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$687, DW_AT_location[DW_OP_regx 0x43]
DW$688	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$688, DW_AT_location[DW_OP_regx 0x44]
DW$689	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$689, DW_AT_location[DW_OP_regx 0x45]
DW$690	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$690, DW_AT_location[DW_OP_regx 0x46]
DW$691	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$691, DW_AT_location[DW_OP_regx 0x47]
DW$692	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$692, DW_AT_location[DW_OP_regx 0x48]
DW$693	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$693, DW_AT_location[DW_OP_regx 0x49]
DW$694	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$694, DW_AT_location[DW_OP_regx 0x4a]
DW$695	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$695, DW_AT_location[DW_OP_regx 0x4b]
DW$696	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$696, DW_AT_location[DW_OP_regx 0x4c]
DW$697	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$697, DW_AT_location[DW_OP_regx 0x4d]
DW$698	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$698, DW_AT_location[DW_OP_regx 0x4e]
DW$699	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$699, DW_AT_location[DW_OP_regx 0x4f]
DW$700	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$700, DW_AT_location[DW_OP_regx 0x50]
DW$701	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$701, DW_AT_location[DW_OP_regx 0x51]
DW$702	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$702, DW_AT_location[DW_OP_regx 0x52]
DW$703	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$703, DW_AT_location[DW_OP_regx 0x53]
DW$704	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$704, DW_AT_location[DW_OP_regx 0x54]
DW$705	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$705, DW_AT_location[DW_OP_regx 0x55]
DW$706	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$706, DW_AT_location[DW_OP_regx 0x56]
DW$707	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$707, DW_AT_location[DW_OP_regx 0x57]
DW$708	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$708, DW_AT_location[DW_OP_regx 0x58]
DW$709	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$709, DW_AT_location[DW_OP_regx 0x59]
DW$710	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$710, DW_AT_location[DW_OP_regx 0x5a]
DW$711	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$711, DW_AT_location[DW_OP_regx 0x5b]
DW$712	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$712, DW_AT_location[DW_OP_regx 0x5c]
DW$713	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$713, DW_AT_location[DW_OP_regx 0x5d]
DW$714	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$714, DW_AT_location[DW_OP_regx 0x5e]
DW$715	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$715, DW_AT_location[DW_OP_regx 0x5f]
DW$716	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$716, DW_AT_location[DW_OP_regx 0x60]
DW$717	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$717, DW_AT_location[DW_OP_regx 0x61]
DW$718	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$718, DW_AT_location[DW_OP_regx 0x62]
DW$719	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$719, DW_AT_location[DW_OP_regx 0x63]
DW$720	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$720, DW_AT_location[DW_OP_regx 0x64]
DW$721	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$721, DW_AT_location[DW_OP_regx 0x65]
DW$722	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$722, DW_AT_location[DW_OP_regx 0x66]
DW$723	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$723, DW_AT_location[DW_OP_regx 0x67]
DW$724	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$724, DW_AT_location[DW_OP_regx 0x68]
DW$725	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$725, DW_AT_location[DW_OP_regx 0x69]
DW$726	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$726, DW_AT_location[DW_OP_regx 0x6a]
DW$727	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$727, DW_AT_location[DW_OP_regx 0x6b]
DW$728	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$728, DW_AT_location[DW_OP_regx 0x6c]
DW$729	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$729, DW_AT_location[DW_OP_regx 0x6d]
DW$730	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$730, DW_AT_location[DW_OP_regx 0x6e]
DW$731	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$731, DW_AT_location[DW_OP_regx 0x6f]
DW$732	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$732, DW_AT_location[DW_OP_regx 0x70]
DW$733	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$733, DW_AT_location[DW_OP_regx 0x71]
DW$734	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$734, DW_AT_location[DW_OP_regx 0x72]
DW$735	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$735, DW_AT_location[DW_OP_regx 0x73]
DW$736	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$736, DW_AT_location[DW_OP_regx 0x74]
DW$737	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$737, DW_AT_location[DW_OP_regx 0x75]
DW$738	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$738, DW_AT_location[DW_OP_regx 0x76]
DW$739	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$739, DW_AT_location[DW_OP_regx 0x77]
DW$740	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$740, DW_AT_location[DW_OP_regx 0x78]
DW$741	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$741, DW_AT_location[DW_OP_regx 0x79]
DW$742	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$742, DW_AT_location[DW_OP_regx 0x7a]
DW$743	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$743, DW_AT_location[DW_OP_regx 0x7b]
DW$744	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$744, DW_AT_location[DW_OP_regx 0x7c]
DW$745	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$745, DW_AT_location[DW_OP_regx 0x7d]
DW$746	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$746, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

