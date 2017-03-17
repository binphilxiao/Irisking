;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Fri Apr 01 13:28:48 2011                                *
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
	.dwattr DW$CU, DW_AT_name("vportcap_RAW.c")
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
	.field  	_portObjs+536,32
	.field  	0,32
	.field  	0,32			; _portObjs[0]._chanObj[1]._status @ 4320
	.field  	0,32			; _portObjs[0]._chanObj[1]._portNum @ 4352
	.field  	1,32			; _portObjs[0]._chanObj[1]._chanNum @ 4384
	.field  	29622592,32			; _portObjs[0]._chanObj[1]._base @ 4416
	.field  	24,32			; _portObjs[0]._chanObj[1]._edmaChanNum[0] @ 4448
	.field  	25,32			; _portObjs[0]._chanObj[1]._edmaChanNum[1] @ 4480
	.field  	26,32			; _portObjs[0]._chanObj[1]._edmaChanNum[2] @ 4512
	.field  	1979711488,32			; _portObjs[0]._chanObj[1]._edmaAddr[0] @ 4544
	.field  	1979711496,32			; _portObjs[0]._chanObj[1]._edmaAddr[1] @ 4576
	.field  	1979711504,32			; _portObjs[0]._chanObj[1]._edmaAddr[2] @ 4608
IR_3:	.set	44

	.sect	".cinit"
	.align	8
	.field  	IR_4,32
	.field  	_portObjs+1072,32
	.field  	0,32			; _portObjs[1]._status @ 8576
	.field  	29638656,32			; _portObjs[1]._base @ 8608
	.field  	0,32			; _portObjs[1]._chanObj[0]._status @ 8640
	.field  	1,32			; _portObjs[1]._chanObj[0]._portNum @ 8672
	.field  	0,32			; _portObjs[1]._chanObj[0]._chanNum @ 8704
	.field  	29638912,32			; _portObjs[1]._chanObj[0]._base @ 8736
	.field  	56,32			; _portObjs[1]._chanObj[0]._edmaChanNum[0] @ 8768
	.field  	57,32			; _portObjs[1]._chanObj[0]._edmaChanNum[1] @ 8800
	.field  	58,32			; _portObjs[1]._chanObj[0]._edmaChanNum[2] @ 8832
	.field  	2013265920,32			; _portObjs[1]._chanObj[0]._edmaAddr[0] @ 8864
	.field  	2013265928,32			; _portObjs[1]._chanObj[0]._edmaAddr[1] @ 8896
	.field  	2013265936,32			; _portObjs[1]._chanObj[0]._edmaAddr[2] @ 8928
IR_4:	.set	48

	.sect	".cinit"
	.align	8
	.field  	IR_5,32
	.field  	_portObjs+1608,32
	.field  	0,32
	.field  	0,32			; _portObjs[1]._chanObj[1]._status @ 12896
	.field  	1,32			; _portObjs[1]._chanObj[1]._portNum @ 12928
	.field  	1,32			; _portObjs[1]._chanObj[1]._chanNum @ 12960
	.field  	29638976,32			; _portObjs[1]._chanObj[1]._base @ 12992
	.field  	38,32			; _portObjs[1]._chanObj[1]._edmaChanNum[0] @ 13024
	.field  	39,32			; _portObjs[1]._chanObj[1]._edmaChanNum[1] @ 13056
	.field  	40,32			; _portObjs[1]._chanObj[1]._edmaChanNum[2] @ 13088
	.field  	2046820352,32			; _portObjs[1]._chanObj[1]._edmaAddr[0] @ 13120
	.field  	2046820360,32			; _portObjs[1]._chanObj[1]._edmaAddr[1] @ 13152
	.field  	2046820368,32			; _portObjs[1]._chanObj[1]._edmaAddr[2] @ 13184
IR_5:	.set	44

	.sect	".cinit"
	.align	8
	.field  	IR_6,32
	.field  	_portObjs+2144,32
	.field  	0,32			; _portObjs[2]._status @ 17152
	.field  	29655040,32			; _portObjs[2]._base @ 17184
	.field  	0,32			; _portObjs[2]._chanObj[0]._status @ 17216
	.field  	2,32			; _portObjs[2]._chanObj[0]._portNum @ 17248
	.field  	0,32			; _portObjs[2]._chanObj[0]._chanNum @ 17280
	.field  	29655296,32			; _portObjs[2]._chanObj[0]._base @ 17312
	.field  	59,32			; _portObjs[2]._chanObj[0]._edmaChanNum[0] @ 17344
	.field  	60,32			; _portObjs[2]._chanObj[0]._edmaChanNum[1] @ 17376
	.field  	61,32			; _portObjs[2]._chanObj[0]._edmaChanNum[2] @ 17408
	.field  	2080374784,32			; _portObjs[2]._chanObj[0]._edmaAddr[0] @ 17440
	.field  	2080374792,32			; _portObjs[2]._chanObj[0]._edmaAddr[1] @ 17472
	.field  	2080374800,32			; _portObjs[2]._chanObj[0]._edmaAddr[2] @ 17504
IR_6:	.set	48

	.sect	".cinit"
	.align	8
	.field  	IR_7,32
	.field  	_portObjs+2680,32
	.field  	0,32
	.field  	0,32			; _portObjs[2]._chanObj[1]._status @ 21472
	.field  	2,32			; _portObjs[2]._chanObj[1]._portNum @ 21504
	.field  	1,32			; _portObjs[2]._chanObj[1]._chanNum @ 21536
	.field  	29655360,32			; _portObjs[2]._chanObj[1]._base @ 21568
	.field  	41,32			; _portObjs[2]._chanObj[1]._edmaChanNum[0] @ 21600
	.field  	42,32			; _portObjs[2]._chanObj[1]._edmaChanNum[1] @ 21632
	.field  	43,32			; _portObjs[2]._chanObj[1]._edmaChanNum[2] @ 21664
	.field  	2113929216,32			; _portObjs[2]._chanObj[1]._edmaAddr[0] @ 21696
	.field  	2113929224,32			; _portObjs[2]._chanObj[1]._edmaAddr[1] @ 21728
	.field  	2113929232,32			; _portObjs[2]._chanObj[1]._edmaAddr[2] @ 21760
IR_7:	.set	44


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert"), DW_AT_symbol_name("__assert")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$116)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_alloc"), DW_AT_symbol_name("_MEM_alloc")
	.dwattr DW$4, DW_AT_type(*DW$T$37)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$4


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_free"), DW_AT_symbol_name("_MEM_free")
	.dwattr DW$8, DW_AT_type(*DW$T$94)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$8


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("QUE_get"), DW_AT_symbol_name("_QUE_get")
	.dwattr DW$12, DW_AT_type(*DW$T$37)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$12


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("QUE_put"), DW_AT_symbol_name("_QUE_put")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$14


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_pend"), DW_AT_symbol_name("_SEM_pend")
	.dwattr DW$17, DW_AT_type(*DW$T$94)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$17


DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("HWI_dispatchPlug"), DW_AT_symbol_name("_HWI_dispatchPlug")
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$124)
	.dwendtag DW$20


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_map"), DW_AT_symbol_name("_IRQ_map")
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$25


DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_enable"), DW_AT_symbol_name("_IRQ_enable")
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$28


DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_disable"), DW_AT_symbol_name("_IRQ_disable")
	.dwattr DW$30, DW_AT_type(*DW$T$34)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_clear"), DW_AT_symbol_name("_IRQ_clear")
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$32


DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalDisable"), DW_AT_symbol_name("_IRQ_globalDisable")
	.dwattr DW$34, DW_AT_type(*DW$T$34)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalRestore"), DW_AT_symbol_name("_IRQ_globalRestore")
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$35


DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_open"), DW_AT_symbol_name("_EDMA_open")
	.dwattr DW$37, DW_AT_type(*DW$T$89)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$37


DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_close"), DW_AT_symbol_name("_EDMA_close")
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$40


DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_allocTable"), DW_AT_symbol_name("_EDMA_allocTable")
	.dwattr DW$42, DW_AT_type(*DW$T$89)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$42


DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_freeTable"), DW_AT_symbol_name("_EDMA_freeTable")
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$44


DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intAlloc"), DW_AT_symbol_name("_EDMA_intAlloc")
	.dwattr DW$46, DW_AT_type(*DW$T$10)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$46


DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intFree"), DW_AT_symbol_name("_EDMA_intFree")
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$48


DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intHook"), DW_AT_symbol_name("_EDMA_intHook")
	.dwattr DW$50, DW_AT_type(*DW$T$135)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
	.dwendtag DW$50


DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intDispatcher"), DW_AT_symbol_name("_EDMA_intDispatcher")
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_enableChannel"), DW_AT_symbol_name("_EDMA_enableChannel")
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$54


DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_disableChannel"), DW_AT_symbol_name("_EDMA_disableChannel")
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$56


DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_clearChannel"), DW_AT_symbol_name("_EDMA_clearChannel")
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$58


DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intEnable"), DW_AT_symbol_name("_EDMA_intEnable")
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$60


DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intDisable"), DW_AT_symbol_name("_EDMA_intDisable")
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$62


DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intClear"), DW_AT_symbol_name("_EDMA_intClear")
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$64


DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_config"), DW_AT_symbol_name("_EDMA_config")
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$141)
	.dwendtag DW$66


DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("IOM_mdNotImpl"), DW_AT_symbol_name("_IOM_mdNotImpl")
	.dwattr DW$69, DW_AT_type(*DW$T$22)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("CLK_getltime"), DW_AT_symbol_name("_CLK_getltime")
	.dwattr DW$70, DW_AT_type(*DW$T$10)
	.dwattr DW$70, DW_AT_declaration(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("TSK_timerSem"), DW_AT_symbol_name("_TSK_timerSem")
	.dwattr DW$71, DW_AT_type(*DW$T$201)
	.dwattr DW$71, DW_AT_declaration(0x01)
	.dwattr DW$71, DW_AT_external(0x01)
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("cr_reg"), DW_AT_symbol_name("_cr_reg")
	.dwattr DW$72, DW_AT_type(*DW$T$10)
	.dwattr DW$72, DW_AT_declaration(0x01)
	.dwattr DW$72, DW_AT_external(0x01)
	.global	_VPORTCAP_Fxns
_VPORTCAP_Fxns:	.usect	".far",24,4
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("VPORTCAP_Fxns"), DW_AT_symbol_name("_VPORTCAP_Fxns")
	.dwattr DW$73, DW_AT_location[DW_OP_addr _VPORTCAP_Fxns]
	.dwattr DW$73, DW_AT_type(*DW$T$202)
	.dwattr DW$73, DW_AT_external(0x01)
_portObjs:	.usect	".far",3216,8
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("portObjs"), DW_AT_symbol_name("_portObjs")
	.dwattr DW$74, DW_AT_type(*DW$T$209)
	.dwattr DW$74, DW_AT_location[DW_OP_addr _portObjs]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\acp6x.exe -@C:\Users\ADMINI~1\AppData\Local\Temp\TI36012 
	.sect	".text"

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$75, DW_AT_low_pc(_mdBindDev)
	.dwattr DW$75, DW_AT_high_pc(0x00)
	.dwattr DW$75, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$75, DW_AT_begin_line(0x84)
	.dwattr DW$75, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",133,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 132 | static Int mdBindDev(Ptr *devp, Int devid, Ptr devParams)              
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
           STW     .D2T2   B3,*SP--(32)      ; |133| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$76, DW_AT_type(*DW$T$41)
	.dwattr DW$76, DW_AT_location[DW_OP_reg4]
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devid"), DW_AT_symbol_name("_devid")
	.dwattr DW$77, DW_AT_type(*DW$T$22)
	.dwattr DW$77, DW_AT_location[DW_OP_reg20]
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devParams"), DW_AT_symbol_name("_devParams")
	.dwattr DW$78, DW_AT_type(*DW$T$37)
	.dwattr DW$78, DW_AT_location[DW_OP_reg6]
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$79, DW_AT_type(*DW$T$41)
	.dwattr DW$79, DW_AT_location[DW_OP_breg31 4]
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("devid"), DW_AT_symbol_name("_devid")
	.dwattr DW$80, DW_AT_type(*DW$T$22)
	.dwattr DW$80, DW_AT_location[DW_OP_breg31 8]
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("devParams"), DW_AT_symbol_name("_devParams")
	.dwattr DW$81, DW_AT_type(*DW$T$37)
	.dwattr DW$81, DW_AT_location[DW_OP_breg31 12]
DW$82	.dwtag  DW_TAG_variable, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$82, DW_AT_type(*DW$T$22)
	.dwattr DW$82, DW_AT_location[DW_OP_breg31 16]
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$83, DW_AT_type(*DW$T$161)
	.dwattr DW$83, DW_AT_location[DW_OP_breg31 20]
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$84, DW_AT_type(*DW$T$162)
	.dwattr DW$84, DW_AT_location[DW_OP_breg31 24]
           STW     .D2T1   A6,*+SP(12)       ; |133| 
           STW     .D2T2   B4,*+SP(8)        ; |133| 
           STW     .D2T1   A4,*+SP(4)        ; |133| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",134,9
;----------------------------------------------------------------------
; 134 | Int portNum = devid;                                                   
; 135 | volatile Int i;                                                        
;----------------------------------------------------------------------
           STW     .D2T2   B4,*+SP(16)       ; |134| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",136,19
;----------------------------------------------------------------------
; 136 | volatile Int* base = (volatile Int *)portObjs[portNum].base;
;     |                                                                        
;----------------------------------------------------------------------
           MVK     .S2     1072,B5           ; |136| 
           MPYLI   .M2     B5,B4,B5:B4       ; |136| 
           NOP             2
           MVKL    .S1     _portObjs+4,A3    ; |136| 
           MVKH    .S1     _portObjs+4,A3    ; |136| 
           ADD     .L1X    A3,B4,A3          ; |136| 
           LDW     .D1T1   *A3,A3            ; |136| 
           NOP             4
           STW     .D2T1   A3,*+SP(24)       ; |136| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",138,5
;----------------------------------------------------------------------
; 138 | assert(portNum < _VP_PORT_CNT);                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |138| 
           NOP             2
           MVKL    .S1     SL1+0,A4          ; |138| 
           MVKH    .S1     SL1+0,A4          ; |138| 
           CMPLT   .L2     B4,3,B0           ; |138| 
   [ B0]   BNOP    .S1     L1,5              ; |138| 
           ; BRANCHCC OCCURS {L1}            ; |138| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |138| 
           ADDKPC  .S2     RL0,B3,4          ; |138| 
RL0:       ; CALL OCCURS {__abort_msg}       ; |138| 
;** --------------------------------------------------------------------------*
L1:    
	.dwpsn	"vportcap_RAW.c",139,5
;----------------------------------------------------------------------
; 139 | base[_VP_VPCTL_OFFSET] =                                               
; 140 |          VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B5       ; |139| 
           NOP             1
           MVK     .S2     48,B6             ; |139| 
           ZERO    .L2     B4                ; |139| 
           SET     .S2     B4,0xf,0xf,B4     ; |139| 
           STW     .D2T2   B4,*+B5[B6]       ; |139| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",141,9
;----------------------------------------------------------------------
; 141 | for(i = 0; i < 100000; i ++);                                          
;----------------------------------------------------------------------
           ZERO    .L1     A3                ; |141| 
           STW     .D2T1   A3,*+SP(20)       ; |141| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",141,16
           LDW     .D2T2   *+SP(20),B4       ; |141| 
           NOP             1
           MVKL    .S1     0x186a0,A3        ; |141| 
           MVKH    .S1     0x186a0,A3        ; |141| 
           NOP             1
           CMPLT   .L2X    B4,A3,B0          ; |141| 
   [!B0]   BNOP    .S1     L3,5              ; |141| 
           ; BRANCHCC OCCURS {L3}            ; |141| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L2:    
DW$L$_mdBindDev$4$B:
	.dwpsn	"vportcap_RAW.c",141,28
           LDW     .D2T2   *+SP(20),B4       ; |141| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |141| 
           STW     .D2T2   B4,*+SP(20)       ; |141| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",141,16
           LDW     .D2T2   *+SP(20),B4       ; |141| 
           NOP             2
           MVKL    .S1     0x186a0,A3        ; |141| 
           MVKH    .S1     0x186a0,A3        ; |141| 
           CMPLT   .L1X    B4,A3,A0          ; |141| 
   [ A0]   BNOP    .S1     L2,5              ; |141| 
           ; BRANCHCC OCCURS {L2}            ; |141| 
DW$L$_mdBindDev$4$E:
;** --------------------------------------------------------------------------*
L3:    
	.dwpsn	"vportcap_RAW.c",143,5
;----------------------------------------------------------------------
; 143 | *devp = &portObjs[portNum];
;     |                                                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |143| 
           NOP             3
           MVK     .S1     1072,A3           ; |143| 

           LDW     .D2T2   *+SP(4),B4        ; |143| 
||         MPYLI   .M1X    A3,B4,A5:A4       ; |143| 

           NOP             1
           MVKL    .S1     _portObjs,A3      ; |143| 
           MVKH    .S1     _portObjs,A3      ; |143| 
           ADD     .L1     A3,A4,A3          ; |143| 
           STW     .D2T1   A3,*B4            ; |143| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",144,5
;----------------------------------------------------------------------
; 144 | return mdControlChan(&portObjs[portNum], VPORT_CMD_CONFIG_PORT, devPara
;     | ms);                                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |144| 
           MVK     .S2     1072,B4           ; |144| 
           LDW     .D2T1   *+SP(12),A6       ; |144| 
           MVKL    .S1     _portObjs,A3      ; |144| 
           MVKH    .S1     _portObjs,A3      ; |144| 

           MPYLI   .M2     B4,B5,B7:B6       ; |144| 
||         CALL    .S1     _mdControlChan    ; |144| 

           MVKL    .S2     0x10000002,B4     ; |144| 
           MVKH    .S2     0x10000002,B4     ; |144| 
           ADDKPC  .S2     RL1,B3,1          ; |144| 
           ADD     .L1X    A3,B6,A4          ; |144| 
RL1:       ; CALL OCCURS {_mdControlChan}    ; |144| 
	.dwpsn	"vportcap_RAW.c",145,1
           LDW     .D2T2   *++SP(32),B3      ; |145| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |145| 
           ; BRANCH OCCURS {B3}              ; |145| 

DW$85	.dwtag  DW_TAG_loop
	.dwattr DW$85, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L2:1:1301635728")
	.dwattr DW$85, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$85, DW_AT_begin_line(0x8d)
	.dwattr DW$85, DW_AT_end_line(0x8d)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_mdBindDev$4$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_mdBindDev$4$E)
	.dwendtag DW$85

	.dwattr DW$75, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$75, DW_AT_end_line(0x91)
	.dwattr DW$75, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$75

	.sect	".text"

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$87, DW_AT_low_pc(_mdControlChan)
	.dwattr DW$87, DW_AT_high_pc(0x00)
	.dwattr DW$87, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$87, DW_AT_begin_line(0x97)
	.dwattr DW$87, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",152,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 151 | static Int mdControlChan(Ptr chanp, Uns cmd, Ptr args)                 
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
;*   Local Frame Size  : 0 Args + 24 Auto + 4 Save = 28 byte                  *
;******************************************************************************
_mdControlChan:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |152| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$88, DW_AT_type(*DW$T$37)
	.dwattr DW$88, DW_AT_location[DW_OP_reg4]
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$89, DW_AT_type(*DW$T$31)
	.dwattr DW$89, DW_AT_location[DW_OP_reg20]
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$90, DW_AT_type(*DW$T$37)
	.dwattr DW$90, DW_AT_location[DW_OP_reg6]
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$91, DW_AT_type(*DW$T$37)
	.dwattr DW$91, DW_AT_location[DW_OP_breg31 4]
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$92, DW_AT_type(*DW$T$31)
	.dwattr DW$92, DW_AT_location[DW_OP_breg31 8]
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$93, DW_AT_type(*DW$T$37)
	.dwattr DW$93, DW_AT_location[DW_OP_breg31 12]
DW$94	.dwtag  DW_TAG_variable, DW_AT_name("retVal"), DW_AT_symbol_name("_retVal")
	.dwattr DW$94, DW_AT_type(*DW$T$22)
	.dwattr DW$94, DW_AT_location[DW_OP_breg31 16]
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$95, DW_AT_type(*DW$T$207)
	.dwattr DW$95, DW_AT_location[DW_OP_breg31 20]
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$96, DW_AT_type(*DW$T$210)
	.dwattr DW$96, DW_AT_location[DW_OP_breg31 24]
           STW     .D2T1   A6,*+SP(12)       ; |152| 

           STW     .D2T1   A4,*+SP(4)        ; |152| 
||         MV      .L1X    B4,A3             ; |152| 

           STW     .D2T1   A3,*+SP(8)        ; |152| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",153,9
;----------------------------------------------------------------------
; 153 | Int retVal = IOM_EBADMODE;                                             
;----------------------------------------------------------------------
           MVK     .L2     -7,B4             ; |153| 
           STW     .D2T2   B4,*+SP(16)       ; |153| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",154,21
;----------------------------------------------------------------------
; 154 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(20)       ; |154| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",155,14
;----------------------------------------------------------------------
; 155 | PortObj* port = &portObjs[chan->portNum];                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B4        ; |155| 
           NOP             3
           MVK     .S2     1072,B5           ; |155| 
           MPYLI   .M2     B5,B4,B5:B4       ; |155| 
           MVKL    .S1     _portObjs,A3      ; |155| 
           MVKH    .S1     _portObjs,A3      ; |155| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |155| 
           STW     .D2T2   B4,*+SP(24)       ; |155| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",157,5
;----------------------------------------------------------------------
; 157 | switch (cmd) {                                                         
; 158 | case VPORT_CMD_START:                                                  
;----------------------------------------------------------------------
           BNOP    .S1     L12,5             ; |157| 
           ; BRANCH OCCURS {L12}             ; |157| 
;** --------------------------------------------------------------------------*
;** --------------------------------------------------------------------------*
L4:    
	.dwpsn	"vportcap_RAW.c",159,9
;----------------------------------------------------------------------
; 159 | retVal = _startVPCapture(chanp);                                       
;----------------------------------------------------------------------
           CALL    .S1     __startVPCapture  ; |159| 
           LDW     .D2T1   *+SP(4),A4        ; |159| 
           ADDKPC  .S2     RL2,B3,3          ; |159| 
RL2:       ; CALL OCCURS {__startVPCapture}  ; |159| 
           STW     .D2T1   A4,*+SP(16)       ; |159| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",160,11
;----------------------------------------------------------------------
; 160 | break;                                                                 
; 161 | case VPORT_CMD_STOP:                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L14,5             ; |160| 
           ; BRANCH OCCURS {L14}             ; |160| 
;** --------------------------------------------------------------------------*
L5:    
	.dwpsn	"vportcap_RAW.c",162,6
;----------------------------------------------------------------------
; 162 | retVal = _stopVPCapture(chanp);                                        
;----------------------------------------------------------------------
           CALL    .S1     __stopVPCapture   ; |162| 
           LDW     .D2T1   *+SP(4),A4        ; |162| 
           ADDKPC  .S2     RL3,B3,3          ; |162| 
RL3:       ; CALL OCCURS {__stopVPCapture}   ; |162| 
           STW     .D2T1   A4,*+SP(16)       ; |162| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",163,11
;----------------------------------------------------------------------
; 163 | break;                                                                 
; 164 | case VPORT_CMD_SET_VINTCB:                                             
;----------------------------------------------------------------------
           BNOP    .S1     L14,5             ; |163| 
           ; BRANCH OCCURS {L14}             ; |163| 
;** --------------------------------------------------------------------------*
L6:    
	.dwpsn	"vportcap_RAW.c",165,9
;----------------------------------------------------------------------
; 165 | retVal = _setVIntCb(chanp, args);                                      
;----------------------------------------------------------------------
           CALL    .S1     __setVIntCb       ; |165| 
           LDW     .D2T1   *+SP(4),A4        ; |165| 
           ADDKPC  .S2     RL4,B3,2          ; |165| 
           MV      .L2X    A6,B4
RL4:       ; CALL OCCURS {__setVIntCb}       ; |165| 
           STW     .D2T1   A4,*+SP(16)       ; |165| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",166,11
;----------------------------------------------------------------------
; 166 | break;                                                                 
; 167 | case VPORT_CMD_CONFIG_PORT:                                            
;----------------------------------------------------------------------
           BNOP    .S1     L14,5             ; |166| 
           ; BRANCH OCCURS {L14}             ; |166| 
;** --------------------------------------------------------------------------*
L7:    
	.dwpsn	"vportcap_RAW.c",168,6
;----------------------------------------------------------------------
; 168 | retVal = _configPort(chanp, args);                                     
;----------------------------------------------------------------------
           CALL    .S1     __configPort      ; |168| 
           LDW     .D2T1   *+SP(4),A4        ; |168| 
           ADDKPC  .S2     RL5,B3,2          ; |168| 
           MV      .L2X    A6,B4
RL5:       ; CALL OCCURS {__configPort}      ; |168| 
           STW     .D2T1   A4,*+SP(16)       ; |168| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",169,11
;----------------------------------------------------------------------
; 169 | break;                                                                 
; 170 | case VPORT_CMD_COVR_RECOVER:                                           
;----------------------------------------------------------------------
           BNOP    .S1     L14,5             ; |169| 
           ; BRANCH OCCURS {L14}             ; |169| 
;** --------------------------------------------------------------------------*
L8:    
	.dwpsn	"vportcap_RAW.c",171,9
;----------------------------------------------------------------------
; 171 | retVal = _covrRecover(chanp);                                          
;----------------------------------------------------------------------
           CALL    .S1     __covrRecover     ; |171| 
           LDW     .D2T1   *+SP(4),A4        ; |171| 
           ADDKPC  .S2     RL6,B3,3          ; |171| 
RL6:       ; CALL OCCURS {__covrRecover}     ; |171| 
           STW     .D2T1   A4,*+SP(16)       ; |171| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",172,11
;----------------------------------------------------------------------
; 172 | break;                                                                 
; 173 | case VPORT_CMD_CONFIG_CHAN:                                            
;----------------------------------------------------------------------
           BNOP    .S1     L14,5             ; |172| 
           ; BRANCH OCCURS {L14}             ; |172| 
;** --------------------------------------------------------------------------*
L9:    
	.dwpsn	"vportcap_RAW.c",174,9
;----------------------------------------------------------------------
; 174 | if(! (port->status & _VPORT_CFGED)) {                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |174| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |174| 
           NOP             4
           AND     .L2     2,B4,B0           ; |174| 
   [ B0]   BNOP    .S1     L14,5             ; |174| 
           ; BRANCHCC OCCURS {L14}           ; |174| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",175,10
;----------------------------------------------------------------------
; 175 | retVal = _configChan(chanp, args);                                     
;----------------------------------------------------------------------
           CALL    .S1     __configChan      ; |175| 
           LDW     .D2T1   *+SP(4),A4        ; |175| 
           ADDKPC  .S2     RL7,B3,2          ; |175| 
           MV      .L2X    A6,B4
RL7:       ; CALL OCCURS {__configChan}      ; |175| 
           STW     .D2T1   A4,*+SP(16)       ; |175| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",177,11
;----------------------------------------------------------------------
; 177 | break;                                                                 
; 178 | default:                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L14,5             ; |177| 
           ; BRANCH OCCURS {L14}             ; |177| 
;** --------------------------------------------------------------------------*
L10:    
	.dwpsn	"vportcap_RAW.c",179,6
;----------------------------------------------------------------------
; 179 | if(chan->edcFxns!=INV){                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |179| 
           NOP             2
           MVK     .S2     127,B5            ; |179| 
           MVK     .L2     -1,B31            ; |179| 
           LDW     .D2T2   *+B4[B5],B4       ; |179| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |179| 
   [ B0]   BNOP    .S1     L11,5             ; |179| 
           ; BRANCHCC OCCURS {L11}           ; |179| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",180,10
;----------------------------------------------------------------------
; 180 | retVal = chan->edcFxns->ctrl(chan->edcHandle,                          
; 181 |     cmd-VPORT_CMD_EDC_BASE,(Arg)args);                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B5       ; |180| 
           MVK     .S2     127,B4            ; |180| 
           LDW     .D2T2   *+SP(8),B31       ; |180| 
           LDW     .D2T1   *+SP(20),A5       ; |180| 
           ZERO    .L1     A4                ; |180| 
           LDW     .D2T2   *+B5[B4],B5       ; |180| 
           MVKH    .S1     0x80000000,A4     ; |180| 
           LDW     .D2T1   *+SP(12),A6       ; |180| 
           MVK     .S1     128,A3            ; |180| 
           SUB     .L2X    B31,A4,B4         ; |180| 
           LDW     .D2T2   *+B5(8),B5        ; |180| 
           NOP             3
           LDW     .D1T1   *+A5[A3],A4       ; |180| 
           CALL    .S2     B5                ; |180| 
           ADDKPC  .S2     RL8,B3,4          ; |180| 
RL8:       ; CALL OCCURS {A3}                ; |180| 
           STW     .D2T1   A4,*+SP(16)       ; |180| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",182,6
;----------------------------------------------------------------------
; 182 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L14,5             ; |182| 
           ; BRANCH OCCURS {L14}             ; |182| 
;** --------------------------------------------------------------------------*
L11:    
	.dwpsn	"vportcap_RAW.c",183,10
;----------------------------------------------------------------------
; 183 | retVal = IOM_ENOTIMPL;                                                 
;----------------------------------------------------------------------
           MVK     .L2     -9,B4             ; |183| 
           STW     .D2T2   B4,*+SP(16)       ; |183| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",185,11
;----------------------------------------------------------------------
; 185 | break;                                                                 
;----------------------------------------------------------------------
           BNOP    .S1     L14,5             ; |185| 
           ; BRANCH OCCURS {L14}             ; |185| 
;** --------------------------------------------------------------------------*
L12:    
	.dwpsn	"vportcap_RAW.c",157,5
           LDW     .D2T2   *+SP(8),B4        ; |157| 
           NOP             2
           MVKL    .S2     0x10000005,B5     ; |157| 
           MVKH    .S2     0x10000005,B5     ; |157| 
           CMPGT   .L2     B4,B5,B0          ; |157| 
   [ B0]   B       .S1     L13               ; |157| 
           MVKL    .S1     0x10000006,A4     ; |157| 
           MVKL    .S1     0x10000005,A3     ; |157| 
           MVKH    .S1     0x10000006,A4     ; |157| 
           MVKH    .S1     0x10000005,A3     ; |157| 

           CMPEQ   .L1X    B4,A3,A0          ; |157| 
||         CMPEQ   .L2X    B4,A4,B1          ; |157| 

           ; BRANCHCC OCCURS {L13}           ; |157| 
;** --------------------------------------------------------------------------*
   [ A0]   BNOP    .S1     L5,1              ; |157| 
           MVKL    .S1     0x10000002,A3     ; |157| 
           MVKH    .S1     0x10000002,A3     ; |157| 
           NOP             1
           CMPEQ   .L2X    B4,A3,B0          ; |157| 
           ; BRANCHCC OCCURS {L5}            ; |157| 
;** --------------------------------------------------------------------------*
   [ B0]   BNOP    .S1     L7,1              ; |157| 
           MVKL    .S1     0x10000003,A3     ; |157| 
           MVKH    .S1     0x10000003,A3     ; |157| 
           NOP             1
           CMPEQ   .L2X    B4,A3,B1          ; |157| 
           ; BRANCHCC OCCURS {L7}            ; |157| 
;** --------------------------------------------------------------------------*
   [ B1]   BNOP    .S1     L9,1              ; |157| 
           MVKL    .S1     0x10000004,A3     ; |157| 
           MVKH    .S1     0x10000004,A3     ; |157| 
           NOP             1
           CMPEQ   .L2X    B4,A3,B0          ; |157| 
           ; BRANCHCC OCCURS {L9}            ; |157| 
;** --------------------------------------------------------------------------*
   [ B0]   BNOP    .S1     L4,5              ; |157| 
           ; BRANCHCC OCCURS {L4}            ; |157| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     L10,5             ; |157| 
           ; BRANCH OCCURS {L10}             ; |157| 
;** --------------------------------------------------------------------------*
L13:    
   [ B1]   BNOP    .S1     L6,1              ; |157| 
           MVKL    .S1     0x10000007,A3     ; |157| 
           MVKH    .S1     0x10000007,A3     ; |157| 
           NOP             1
           CMPEQ   .L2X    B4,A3,B0          ; |157| 
           ; BRANCHCC OCCURS {L6}            ; |157| 
;** --------------------------------------------------------------------------*
   [ B0]   BNOP    .S1     L8,5              ; |157| 
           ; BRANCHCC OCCURS {L8}            ; |157| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     L10,5             ; |157| 
           ; BRANCH OCCURS {L10}             ; |157| 
;** --------------------------------------------------------------------------*
L14:    
	.dwpsn	"vportcap_RAW.c",187,5
;----------------------------------------------------------------------
; 187 | return retVal;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A4       ; |187| 
           NOP             4
	.dwpsn	"vportcap_RAW.c",188,1
           LDW     .D2T2   *++SP(32),B3      ; |188| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |188| 
           ; BRANCH OCCURS {B3}              ; |188| 
	.dwattr DW$87, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$87, DW_AT_end_line(0xbc)
	.dwattr DW$87, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$87

	.sect	".text"

DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$97, DW_AT_low_pc(_mdCreateChan)
	.dwattr DW$97, DW_AT_high_pc(0x00)
	.dwattr DW$97, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$97, DW_AT_begin_line(0xc3)
	.dwattr DW$97, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap_RAW.c",197,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 195 | static Int  mdCreateChan(Ptr *chanp, Ptr devp, String name, Int mode,  
; 196 | Ptr chanParams, IOM_TiomCallback cbFxn, Ptr cbArg)                     
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
           STW     .D2T2   B3,*SP--(56)      ; |197| 
           NOP             2
	.dwcfa	0x0e, 56
	.dwcfa	0x80, 19, 0
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$98, DW_AT_type(*DW$T$41)
	.dwattr DW$98, DW_AT_location[DW_OP_reg4]
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$99, DW_AT_type(*DW$T$37)
	.dwattr DW$99, DW_AT_location[DW_OP_reg20]
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$100, DW_AT_type(*DW$T$53)
	.dwattr DW$100, DW_AT_location[DW_OP_reg6]
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$101, DW_AT_type(*DW$T$22)
	.dwattr DW$101, DW_AT_location[DW_OP_reg22]
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanParams"), DW_AT_symbol_name("_chanParams")
	.dwattr DW$102, DW_AT_type(*DW$T$37)
	.dwattr DW$102, DW_AT_location[DW_OP_reg8]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$103, DW_AT_type(*DW$T$59)
	.dwattr DW$103, DW_AT_location[DW_OP_reg24]
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$104, DW_AT_type(*DW$T$37)
	.dwattr DW$104, DW_AT_location[DW_OP_reg10]
DW$105	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$105, DW_AT_type(*DW$T$41)
	.dwattr DW$105, DW_AT_location[DW_OP_breg31 4]
DW$106	.dwtag  DW_TAG_variable, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$106, DW_AT_type(*DW$T$37)
	.dwattr DW$106, DW_AT_location[DW_OP_breg31 8]
DW$107	.dwtag  DW_TAG_variable, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$107, DW_AT_type(*DW$T$53)
	.dwattr DW$107, DW_AT_location[DW_OP_breg31 12]
DW$108	.dwtag  DW_TAG_variable, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$108, DW_AT_type(*DW$T$22)
	.dwattr DW$108, DW_AT_location[DW_OP_breg31 16]
DW$109	.dwtag  DW_TAG_variable, DW_AT_name("chanParams"), DW_AT_symbol_name("_chanParams")
	.dwattr DW$109, DW_AT_type(*DW$T$37)
	.dwattr DW$109, DW_AT_location[DW_OP_breg31 20]
DW$110	.dwtag  DW_TAG_variable, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$110, DW_AT_type(*DW$T$59)
	.dwattr DW$110, DW_AT_location[DW_OP_breg31 24]
DW$111	.dwtag  DW_TAG_variable, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$111, DW_AT_type(*DW$T$37)
	.dwattr DW$111, DW_AT_location[DW_OP_breg31 28]
DW$112	.dwtag  DW_TAG_variable, DW_AT_name("chanNum"), DW_AT_symbol_name("_chanNum")
	.dwattr DW$112, DW_AT_type(*DW$T$22)
	.dwattr DW$112, DW_AT_location[DW_OP_breg31 32]
DW$113	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$113, DW_AT_type(*DW$T$162)
	.dwattr DW$113, DW_AT_location[DW_OP_breg31 36]
DW$114	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$114, DW_AT_type(*DW$T$210)
	.dwattr DW$114, DW_AT_location[DW_OP_breg31 40]
DW$115	.dwtag  DW_TAG_variable, DW_AT_name("retVal"), DW_AT_symbol_name("_retVal")
	.dwattr DW$115, DW_AT_type(*DW$T$22)
	.dwattr DW$115, DW_AT_location[DW_OP_breg31 44]
;----------------------------------------------------------------------
; 198 | Int chanNum;                                                           
; 199 | volatile Int* base;                                                    
; 200 | PortObj* port;                                                         
;----------------------------------------------------------------------
           STW     .D2T1   A10,*+SP(28)      ; |197| 
           STW     .D2T2   B8,*+SP(24)       ; |197| 
           STW     .D2T1   A8,*+SP(20)       ; |197| 
           STW     .D2T1   A6,*+SP(12)       ; |197| 
           STW     .D2T2   B4,*+SP(8)        ; |197| 

           STW     .D2T1   A4,*+SP(4)        ; |197| 
||         MV      .L1X    B6,A3             ; |197| 

           STW     .D2T1   A3,*+SP(16)       ; |197| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",201,9
;----------------------------------------------------------------------
; 201 | Int retVal = IOM_COMPLETED;                                            
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |201| 
           STW     .D2T2   B4,*+SP(44)       ; |201| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",204,5
;----------------------------------------------------------------------
; 204 | if(mode != IOM_INPUT){                                                 
;----------------------------------------------------------------------
           CMPEQ   .L2X    A3,1,B0           ; |204| 
   [ B0]   BNOP    .S1     L15,5             ; |204| 
           ; BRANCHCC OCCURS {L15}           ; |204| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",205,9
;----------------------------------------------------------------------
; 205 | return IOM_EBADARGS;                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L35,4             ; |205| 
           MVK     .L1     0xfffffff6,A4     ; |205| 
           ; BRANCH OCCURS {L35}             ; |205| 
;** --------------------------------------------------------------------------*
L15:    
	.dwpsn	"vportcap_RAW.c",207,5
;----------------------------------------------------------------------
; 207 | if(*name ++ != '/') {                                                  
;----------------------------------------------------------------------
           MV      .L2X    A6,B4
           LDB     .D2T2   *B4++,B5          ; |207| 
           NOP             2
           MVK     .S2     47,B6             ; |207| 
           STW     .D2T2   B4,*+SP(12)       ; |207| 
           CMPEQ   .L2     B5,B6,B0          ; |207| 
   [ B0]   BNOP    .S1     L16,5             ; |207| 
           ; BRANCHCC OCCURS {L16}           ; |207| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",208,9
;----------------------------------------------------------------------
; 208 | return IOM_EBADARGS;                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L35,4             ; |208| 
           MVK     .L1     0xfffffff6,A4     ; |208| 
           ; BRANCH OCCURS {L35}             ; |208| 
;** --------------------------------------------------------------------------*
L16:    
	.dwpsn	"vportcap_RAW.c",210,5
;----------------------------------------------------------------------
; 210 | chanNum = *name ++ - 'A';                                              
;----------------------------------------------------------------------
           LDB     .D2T2   *B4++,B5          ; |210| 
           NOP             2
           MVK     .S2     65,B6             ; |210| 
           STW     .D2T2   B4,*+SP(12)       ; |210| 
           SUB     .L2     B5,B6,B4          ; |210| 
           STW     .D2T2   B4,*+SP(32)       ; |210| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",212,5
;----------------------------------------------------------------------
; 212 | assert(chanNum < _VPORT_CHAN_CNT); // hard code                        
;----------------------------------------------------------------------
           CMPLT   .L2     B4,2,B0           ; |212| 
   [ B0]   BNOP    .S1     L17,3             ; |212| 
           MVKL    .S1     SL2+0,A4          ; |212| 
           MVKH    .S1     SL2+0,A4          ; |212| 
           ; BRANCHCC OCCURS {L17}           ; |212| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |212| 
           ADDKPC  .S2     RL9,B3,4          ; |212| 
RL9:       ; CALL OCCURS {__abort_msg}       ; |212| 
;** --------------------------------------------------------------------------*
L17:    
	.dwpsn	"vportcap_RAW.c",214,5
;----------------------------------------------------------------------
; 214 | port = (PortObj *)devp;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |214| 
           NOP             4
           STW     .D2T2   B4,*+SP(40)       ; |214| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",215,5
;----------------------------------------------------------------------
; 215 | if(port->chanObj[chanNum].edcFxns != INV) {                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B5       ; |215| 
           NOP             1
           MVK     .S2     532,B6            ; |215| 
           MVK     .S2     129,B31           ; |215| 
           MVK     .L2     -1,B30            ; |215| 
           MPYLI   .M2     B6,B5,B7:B6       ; |215| 
           NOP             3
           ADD     .L2     B6,B4,B4          ; |215| 
           LDW     .D2T2   *+B4[B31],B4      ; |215| 
           NOP             4
           CMPEQ   .L2     B4,B30,B0         ; |215| 
   [ B0]   BNOP    .S1     L18,5             ; |215| 
           ; BRANCHCC OCCURS {L18}           ; |215| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",217,9
;----------------------------------------------------------------------
; 217 | port->chanObj[chanNum].edcHandle                                       
; 218 |    = port->chanObj[chanNum].edcFxns->open(name, (Arg)INV);             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |217| 
           LDW     .D2T2   *+SP(40),B6       ; |217| 
           MVK     .S2     532,B5            ; |217| 
           MVK     .S2     129,B31           ; |217| 
           LDW     .D2T1   *+SP(12),A4       ; |217| 
           MPYLI   .M2     B5,B4,B5:B4       ; |217| 
           NOP             3
           ADD     .L2     B4,B6,B4          ; |217| 
           LDW     .D2T2   *+B4[B31],B4      ; |217| 
           NOP             4
           LDW     .D2T2   *B4,B5            ; |217| 
           NOP             3
           MVK     .L2     0xffffffff,B4     ; |217| 
           CALL    .S2     B5                ; |217| 
           ADDKPC  .S2     RL10,B3,4         ; |217| 
RL10:      ; CALL OCCURS {A3}                ; |217| 
           LDW     .D2T2   *+SP(32),B5       ; |217| 
           NOP             1
           MVK     .S1     532,A3            ; |217| 
           LDW     .D2T2   *+SP(40),B4       ; |217| 
           MVK     .S1     130,A5            ; |217| 
           MPYLI   .M1X    A3,B5,A7:A6       ; |217| 
           NOP             3
           ADD     .L1X    A6,B4,A3          ; |217| 
           STW     .D1T1   A4,*+A3[A5]       ; |217| 
;** --------------------------------------------------------------------------*
L18:    
	.dwpsn	"vportcap_RAW.c",220,5
;----------------------------------------------------------------------
; 220 | if(! (port->status & _VPORT_OPENED)) {                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B4       ; |220| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |220| 
           NOP             4
           AND     .L2     1,B4,B0           ; |220| 
   [ B0]   BNOP    .S1     L19,5             ; |220| 
           ; BRANCHCC OCCURS {L19}           ; |220| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",221,9
;----------------------------------------------------------------------
; 221 | port->status |= _VPORT_OPENED;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B4       ; |221| 
           NOP             4
           LDW     .D2T2   *B4,B5            ; |221| 
           NOP             4
           OR      .L2     1,B5,B5           ; |221| 
           STW     .D2T2   B5,*B4            ; |221| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",222,9
;----------------------------------------------------------------------
; 222 | base = (volatile Int *)port->base;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B4       ; |222| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |222| 
           NOP             4
           STW     .D2T2   B4,*+SP(36)       ; |222| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",225,9
;----------------------------------------------------------------------
; 225 | base[_VP_VCACTL_OFFSET] |=                                             
; 226 |     VP_VCACTL_RSTCH_RESET << _VP_VCACTL_RSTCH_SHIFT;                   
;----------------------------------------------------------------------
           MVK     .S1     260,A3            ; |225| 
           ADD     .L1X    A3,B4,A3          ; |225| 
           LDW     .D1T1   *A3,A4            ; |225| 
           NOP             4
           SET     .S1     A4,31,31,A4       ; |225| 
           STW     .D1T1   A4,*A3            ; |225| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",227,9
;----------------------------------------------------------------------
; 227 | base[_VP_VCBCTL_OFFSET] |=                                             
; 228 |     VP_VCBCTL_RSTCH_RESET << _VP_VCBCTL_RSTCH_SHIFT;                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(36),B4       ; |227| 
           NOP             3
           MVK     .S2     324,B5            ; |227| 
           ADD     .L2     B5,B4,B4          ; |227| 
           LDW     .D2T2   *B4,B5            ; |227| 
           NOP             4
           SET     .S2     B5,31,31,B5       ; |227| 
           STW     .D2T2   B5,*B4            ; |227| 
;** --------------------------------------------------------------------------*
L19:    
	.dwpsn	"vportcap_RAW.c",231,5
;----------------------------------------------------------------------
; 231 | if(! (port->chanObj[chanNum].status & _VPORT_OPENED)) {                
; 232 |     Int j;                                                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |231| 
           NOP             2
           LDW     .D2T2   *+SP(40),B6       ; |231| 
           MVK     .S2     532,B5            ; |231| 
           MPYLI   .M2     B5,B4,B5:B4       ; |231| 
           NOP             3
           ADD     .L2     B4,B6,B4          ; |231| 
           LDW     .D2T2   *+B4(8),B4        ; |231| 
           NOP             4
           AND     .L2     1,B4,B0           ; |231| 
   [ B0]   BNOP    .S1     L34,5             ; |231| 
           ; BRANCHCC OCCURS {L34}           ; |231| 
;** --------------------------------------------------------------------------*

DW$116	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$117	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$117, DW_AT_type(*DW$T$22)
	.dwattr DW$117, DW_AT_location[DW_OP_breg31 48]
DW$118	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$118, DW_AT_type(*DW$T$207)
	.dwattr DW$118, DW_AT_location[DW_OP_breg31 52]
	.dwpsn	"vportcap_RAW.c",233,25
;----------------------------------------------------------------------
; 233 | _VPORT_ChanObj *chan = &port->chanObj[chanNum];                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |233| 
           NOP             3
           MVK     .S2     532,B5            ; |233| 
           MPYLI   .M2     B5,B4,B5:B4       ; |233| 
           NOP             3
           ADD     .L2     B4,B6,B4          ; |233| 
           ADD     .L2     8,B4,B4           ; |233| 
           STW     .D2T2   B4,*+SP(52)       ; |233| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",234,9
;----------------------------------------------------------------------
; 234 | chan->status |= _VPORT_OPENED;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *B4,B5            ; |234| 
           NOP             4
           OR      .L2     1,B5,B5           ; |234| 
           STW     .D2T2   B5,*B4            ; |234| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",235,9
;----------------------------------------------------------------------
; 235 | chan->vIntMask = 0;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(52),A3       ; |235| 
           NOP             3
           ZERO    .L1     A4                ; |235| 
           STW     .D1T1   A4,*+A3(40)       ; |235| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",236,9
;----------------------------------------------------------------------
; 236 | QUE_new(&chan->qIn);                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(52),B5       ; |236| 
           NOP             1
           MVK     .S1     364,A3            ; |236| 
           MVK     .S2     92,B31            ; |236| 
           MVK     .S2     91,B30            ; |236| 

           ADD     .L1X    A3,B5,A3          ; |236| 
||         MV      .L2     B5,B4             ; |236| 

           STW     .D2T1   A3,*+B4[B31]      ; |236| 
           LDW     .D2T2   *+SP(52),B4       ; |236| 
           NOP             4
           STW     .D2T1   A3,*+B4[B30]      ; |236| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",237,9
;----------------------------------------------------------------------
; 237 | chan->cbFxn = cbFxn;                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |237| 
           LDW     .D2T1   *+SP(52),A3       ; |237| 
           NOP             3
           MVK     .S1     108,A4            ; |237| 
           STW     .D1T2   B4,*+A3[A4]       ; |237| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",238,9
;----------------------------------------------------------------------
; 238 | chan->vIntFxn = (VPORT_IntCallBack)INV;                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(52),A3       ; |238| 
           NOP             2
           MVK     .L1     -1,A4             ; |238| 
           MVK     .S1     110,A5            ; |238| 
           STW     .D1T1   A4,*+A3[A5]       ; |238| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",239,9
;----------------------------------------------------------------------
; 239 | chan->queEmpty = FALSE;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(52),B4       ; |239| 
           NOP             3
           ZERO    .L2     B5                ; |239| 
           ADDK    .S2     444,B4            ; |239| 
           STH     .D2T2   B5,*B4            ; |239| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",240,9
;----------------------------------------------------------------------
; 240 | chan->cbArg = (Arg)cbArg;                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |240| 
           LDW     .D2T1   *+SP(52),A3       ; |240| 
           NOP             3
           MVK     .S1     109,A4            ; |240| 
           STW     .D1T2   B4,*+A3[A4]       ; |240| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",241,9
;----------------------------------------------------------------------
; 241 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(52),A3       ; |241| 
           NOP             2
           MVK     .L2     -1,B4             ; |241| 
           MVK     .S1     125,A4            ; |241| 
           STW     .D1T2   B4,*+A3[A4]       ; |241| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",242,9
;----------------------------------------------------------------------
; 242 | chan->packetIOM = INV;                                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(52),A3       ; |242| 
           NOP             2
           MVK     .L1     -1,A4             ; |242| 
           MVK     .S1     129,A5            ; |242| 
           STW     .D1T1   A4,*+A3[A5]       ; |242| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",243,9
;----------------------------------------------------------------------
; 243 | chan->numFrms = 0;                                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(52),A3       ; |243| 
           NOP             2
           ZERO    .L1     A4                ; |243| 
           MVK     .S1     118,A5            ; |243| 
           STW     .D1T1   A4,*+A3[A5]       ; |243| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",244,9
;----------------------------------------------------------------------
; 244 | chan->vIntCbArg = (Int)INV;                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(52),A3       ; |244| 
           NOP             2
           MVK     .L1     -1,A4             ; |244| 
           MVK     .S1     130,A5            ; |244| 
           STW     .D1T1   A4,*+A3[A5]       ; |244| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",245,9
;----------------------------------------------------------------------
; 245 | chan->bufSz = 0;                                                       
; 247 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 248 | // Changed _VPORT_NUM_EDMA_CHANS_RAW to _VPORT_NUM_EDMA_CHANS          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(52),A3       ; |245| 
           NOP             2
           ZERO    .L1     A4                ; |245| 
           MVK     .S1     132,A5            ; |245| 
           STW     .D1T1   A4,*+A3[A5]       ; |245| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",250,13
;----------------------------------------------------------------------
; 250 | for(j = 0; j < _VPORT_NUM_EDMA_CHANS && retVal == IOM_COMPLETED; j ++){
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |250| 
           STW     .D2T2   B4,*+SP(48)       ; |250| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",250,20

           LDW     .D2T2   *+SP(44),B4       ; |250| 
||         CMPLT   .L2     B4,3,B0           ; |250| 

   [ B0]   BNOP    .S1     L20,3             ; |250| 
           CMPEQ   .L2     B4,0,B4           ; |250| 
           NOP             1
           ; BRANCHCC OCCURS {L20}           ; |250| 
;** --------------------------------------------------------------------------*
           MV      .L2     B0,B4             ; |250| 
           NOP             1
;** --------------------------------------------------------------------------*
L20:    
           MV      .L1X    B4,A0             ; |250| 
   [!A0]   BNOP    .S1     L28,5             ; |250| 
           ; BRANCHCC OCCURS {L28}           ; |250| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L21:    
DW$L$_mdCreateChan$15$B:
	.dwpsn	"vportcap_RAW.c",252,13
;----------------------------------------------------------------------
; 252 | if( (chan->hEdma[j] = EDMA_open(chan->edmaChanNum[j],                  
; 253 |     EDMA_OPEN_RESET))==EDMA_HINV                                       
; 254 | ||  (chan->hRld[2 * j] = EDMA_allocTable(-1))==EDMA_HINV               
; 255 | ||  (chan->hRld[2 * j + 1] = EDMA_allocTable(-1))==EDMA_HINV           
; 256 | ||  (chan->tcc[j] = EDMA_intAlloc(chan->edmaChanNum[j])) == -1){       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(52),B5       ; |252| 
           LDW     .D2T2   *+SP(48),B4       ; |252| 
           NOP             1
           MVKL    .S1     _EDMA_open,A3     ; |252| 
           MVKH    .S1     _EDMA_open,A3     ; |252| 
           NOP             1

           ADDAW   .D2     B5,B4,B4          ; |252| 
||         CALL    .S2X    A3                ; |252| 

           LDW     .D2T1   *+B4(16),A4       ; |252| 
           MVK     .L2     0x1,B4            ; |252| 
           ADDKPC  .S2     RL11,B3,2         ; |252| 
RL11:      ; CALL OCCURS {_EDMA_open}        ; |252| 
           LDW     .D2T2   *+SP(52),B5       ; |252| 

           CMPEQ   .L1     A4,0,A0           ; |252| 
||         LDW     .D2T2   *+SP(48),B4       ; |252| 

   [ A0]   BNOP    .S1     L22,3             ; |252| 

           MVK     .S2     95,B31            ; |252| 
||         ADDAW   .D2     B5,B4,B4          ; |252| 

           STW     .D2T1   A4,*+B4[B31]      ; |252| 
           ; BRANCHCC OCCURS {L22}           ; |252| 
DW$L$_mdCreateChan$15$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$16$B:
           MVKL    .S1     _EDMA_allocTable,A3 ; |252| 
           MVKH    .S1     _EDMA_allocTable,A3 ; |252| 
           MVK     .L1     0xffffffff,A4     ; |252| 
           CALL    .S2X    A3                ; |252| 
           ADDKPC  .S2     RL12,B3,4         ; |252| 
RL12:      ; CALL OCCURS {_EDMA_allocTable}  ; |252| 
           LDW     .D2T2   *+SP(52),B5       ; |252| 
           LDW     .D2T2   *+SP(48),B4       ; |252| 
           NOP             2
           MVK     .S2     98,B31            ; |252| 
           CMPEQ   .L1     A4,0,A0           ; |252| 
           ADDAD   .D2     B5,B4,B4          ; |252| 
           STW     .D2T1   A4,*+B4[B31]      ; |252| 
DW$L$_mdCreateChan$16$E:
;** --------------------------------------------------------------------------*
L22:    
DW$L$_mdCreateChan$17$B:
           CMPEQ   .L1     A0,0,A1           ; |252| 
   [ A1]   BNOP    .S1     L23,4             ; |252| 
           XOR     .L1     1,A1,A0           ; |252| 
           ; BRANCHCC OCCURS {L23}           ; |252| 
DW$L$_mdCreateChan$17$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$18$B:
           BNOP    .S1     L24,3             ; |252| 
           MV      .L2X    A0,B4             ; |252| 
           NOP             1
           ; BRANCH OCCURS {L24}             ; |252| 
DW$L$_mdCreateChan$18$E:
;** --------------------------------------------------------------------------*
L23:    
DW$L$_mdCreateChan$19$B:
           MVKL    .S1     _EDMA_allocTable,A3 ; |252| 
           MVKH    .S1     _EDMA_allocTable,A3 ; |252| 
           MVK     .L1     0xffffffff,A4     ; |252| 
           CALL    .S2X    A3                ; |252| 
           ADDKPC  .S2     RL13,B3,4         ; |252| 
RL13:      ; CALL OCCURS {_EDMA_allocTable}  ; |252| 
           LDW     .D2T2   *+SP(48),B4       ; |252| 
           LDW     .D2T2   *+SP(52),B5       ; |252| 
           NOP             1
           MVK     .L2     1,B6              ; |252| 
           MVK     .S2     98,B31            ; |252| 
           ADDAH   .D2     B6,B4,B4          ; |252| 
           ADDAW   .D2     B5,B4,B4          ; |252| 

           CMPEQ   .L2X    A4,0,B4           ; |252| 
||         STW     .D2T1   A4,*+B4[B31]      ; |252| 

           NOP             1
DW$L$_mdCreateChan$19$E:
;** --------------------------------------------------------------------------*
L24:    
DW$L$_mdCreateChan$20$B:
           MV      .L1X    B4,A0             ; |252| 
   [ A0]   BNOP    .S1     L25,5             ; |252| 
           ; BRANCHCC OCCURS {L25}           ; |252| 
DW$L$_mdCreateChan$20$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$21$B:
           LDW     .D2T2   *+SP(52),B5       ; |252| 
           LDW     .D2T2   *+SP(48),B4       ; |252| 
           NOP             1
           MVKL    .S1     _EDMA_intAlloc,A3 ; |252| 
           MVKH    .S1     _EDMA_intAlloc,A3 ; |252| 
           NOP             1

           ADDAW   .D2     B5,B4,B4          ; |252| 
||         CALL    .S2X    A3                ; |252| 

           LDW     .D2T1   *+B4(16),A4       ; |252| 
           ADDKPC  .S2     RL14,B3,3         ; |252| 
RL14:      ; CALL OCCURS {_EDMA_intAlloc}    ; |252| 
           LDW     .D2T2   *+SP(52),B4       ; |252| 
           LDW     .D2T2   *+SP(48),B5       ; |252| 
           NOP             3
           MVK     .S2     104,B31           ; |252| 

           CMPEQ   .L2X    A4,-1,B4          ; |252| 
||         ADDAW   .D2     B4,B5,B5          ; |252| 

           STW     .D2T1   A4,*+B5[B31]      ; |252| 
DW$L$_mdCreateChan$21$E:
;** --------------------------------------------------------------------------*
L25:    
DW$L$_mdCreateChan$22$B:
           MV      .L1X    B4,A0             ; |252| 
   [!A0]   BNOP    .S1     L26,5             ; |252| 
           ; BRANCHCC OCCURS {L26}           ; |252| 
DW$L$_mdCreateChan$22$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$23$B:
	.dwpsn	"vportcap_RAW.c",257,17
;----------------------------------------------------------------------
; 257 | retVal = IOM_EALLOC;                                                   
;----------------------------------------------------------------------
           MVK     .L2     -5,B4             ; |257| 
           STW     .D2T2   B4,*+SP(44)       ; |257| 
DW$L$_mdCreateChan$23$E:
;** --------------------------------------------------------------------------*
L26:    
DW$L$_mdCreateChan$24$B:
	.dwpsn	"vportcap_RAW.c",250,74
           LDW     .D2T2   *+SP(48),B4       ; |250| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |250| 
           STW     .D2T2   B4,*+SP(48)       ; |250| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",250,20
           CMPLT   .L2     B4,3,B0           ; |250| 
   [!B0]   BNOP    .S1     L27,5             ; |250| 
           ; BRANCHCC OCCURS {L27}           ; |250| 
DW$L$_mdCreateChan$24$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$25$B:
           LDW     .D2T2   *+SP(44),B4       ; |250| 
           NOP             4
           CMPEQ   .L2     B4,0,B0           ; |250| 
DW$L$_mdCreateChan$25$E:
;** --------------------------------------------------------------------------*
L27:    
DW$L$_mdCreateChan$26$B:
   [ B0]   BNOP    .S1     L21,5             ; |250| 
           ; BRANCHCC OCCURS {L21}           ; |250| 
DW$L$_mdCreateChan$26$E:
;** --------------------------------------------------------------------------*
L28:    
	.dwpsn	"vportcap_RAW.c",260,9
;----------------------------------------------------------------------
; 260 | if( retVal == IOM_COMPLETED && (void *)chanParams != INV) {            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B5       ; |260| 
           NOP             1
           LDW     .D2T2   *+SP(20),B4       ; |260| 
           MVK     .L2     -1,B31            ; |260| 
           ZERO    .L1     A3                ; |260| 
           CMPEQ   .L2     B5,0,B0           ; |260| 
   [!B0]   BNOP    .S1     L30,4             ; |260| 
           CMPEQ   .L2     B4,B31,B1         ; |260| 
           ; BRANCHCC OCCURS {L30}           ; |260| 
;** --------------------------------------------------------------------------*
   [ B1]   BNOP    .S1     L29,5             ; |260| 
           ; BRANCHCC OCCURS {L29}           ; |260| 
;** --------------------------------------------------------------------------*
           MVK     .L1     0x1,A3            ; |260| 
           NOP             1
;** --------------------------------------------------------------------------*
L29:    
           MV      .L2X    A3,B0             ; |260| 
;** --------------------------------------------------------------------------*
L30:    
   [!B0]   BNOP    .S1     L31,5             ; |260| 
           ; BRANCHCC OCCURS {L31}           ; |260| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",261,13
;----------------------------------------------------------------------
; 261 | retVal = mdControlChan(&port->chanObj[chanNum],                        
; 262 |     VPORT_CMD_CONFIG_CHAN, chanParams);                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |261| 
           NOP             1
           LDW     .D2T2   *+SP(40),B6       ; |261| 
           MVK     .S2     532,B5            ; |261| 
           LDW     .D2T1   *+SP(20),A6       ; |261| 
           MPYLI   .M2     B5,B4,B5:B4       ; |261| 
           CALL    .S1     _mdControlChan    ; |261| 
           ADDKPC  .S2     RL15,B3,1         ; |261| 

           MVKL    .S2     0x10000003,B4     ; |261| 
||         ADD     .L2     B4,B6,B5          ; |261| 

           MVKH    .S2     0x10000003,B4     ; |261| 
           ADD     .L1X    8,B5,A4           ; |261| 
RL15:      ; CALL OCCURS {_mdControlChan}    ; |261| 
           STW     .D2T1   A4,*+SP(44)       ; |261| 
;** --------------------------------------------------------------------------*
L31:    
	.dwpsn	"vportcap_RAW.c",264,9
;----------------------------------------------------------------------
; 264 | if(retVal == IOM_COMPLETED) {                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B0       ; |264| 
           NOP             4
   [ B0]   BNOP    .S1     L32,5             ; |264| 
           ; BRANCHCC OCCURS {L32}           ; |264| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",266,14
;----------------------------------------------------------------------
; 266 | *chanp = &port->chanObj[chanNum];                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B5       ; |266| 
           NOP             1
           LDW     .D2T2   *+SP(40),B4       ; |266| 
           MVK     .S2     532,B6            ; |266| 
           LDW     .D2T2   *+SP(4),B31       ; |266| 
           MPYLI   .M2     B6,B5,B7:B6       ; |266| 
           NOP             3
           ADD     .L2     B6,B4,B4          ; |266| 
           ADD     .L2     8,B4,B4           ; |266| 
           STW     .D2T2   B4,*B31           ; |266| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",267,9
;----------------------------------------------------------------------
; 267 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L33,5             ; |267| 
           ; BRANCH OCCURS {L33}             ; |267| 
;** --------------------------------------------------------------------------*
L32:    
	.dwpsn	"vportcap_RAW.c",268,13
;----------------------------------------------------------------------
; 268 | mdDeleteChan(&port->chanObj);                                          
;----------------------------------------------------------------------

           CALL    .S1     _mdDeleteChan     ; |268| 
||         LDW     .D2T2   *+SP(40),B4       ; |268| 

           ADDKPC  .S2     RL16,B3,3         ; |268| 
           ADD     .L1X    8,B4,A4           ; |268| 
RL16:      ; CALL OCCURS {_mdDeleteChan}     ; |268| 
	.dwpsn	"vportcap_RAW.c",269,13
;----------------------------------------------------------------------
; 269 | *chanp = INV;                                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B4        ; |269| 
           NOP             3
           MVK     .L2     -1,B5             ; |269| 
           STW     .D2T2   B5,*B4            ; |269| 
;** --------------------------------------------------------------------------*
L33:    
	.dwendtag DW$116

;** --------------------------------------------------------------------------*
L34:    
	.dwpsn	"vportcap_RAW.c",272,5
;----------------------------------------------------------------------
; 272 | return retVal;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(44),A4       ; |272| 
;** --------------------------------------------------------------------------*
L35:    
	.dwpsn	"vportcap_RAW.c",273,1
           LDW     .D2T2   *++SP(56),B3      ; |273| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |273| 
           ; BRANCH OCCURS {B3}              ; |273| 

DW$119	.dwtag  DW_TAG_loop
	.dwattr DW$119, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L21:1:1301635728")
	.dwattr DW$119, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$119, DW_AT_begin_line(0xfa)
	.dwattr DW$119, DW_AT_end_line(0x103)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_mdCreateChan$15$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_mdCreateChan$15$E)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_mdCreateChan$16$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_mdCreateChan$16$E)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_mdCreateChan$17$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_mdCreateChan$17$E)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_mdCreateChan$18$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_mdCreateChan$18$E)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_mdCreateChan$19$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_mdCreateChan$19$E)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_mdCreateChan$20$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_mdCreateChan$20$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_mdCreateChan$21$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_mdCreateChan$21$E)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$_mdCreateChan$22$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$_mdCreateChan$22$E)
DW$128	.dwtag  DW_TAG_loop_range
	.dwattr DW$128, DW_AT_low_pc(DW$L$_mdCreateChan$23$B)
	.dwattr DW$128, DW_AT_high_pc(DW$L$_mdCreateChan$23$E)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_mdCreateChan$24$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_mdCreateChan$24$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_mdCreateChan$25$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_mdCreateChan$25$E)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_mdCreateChan$26$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_mdCreateChan$26$E)
	.dwendtag DW$119

	.dwattr DW$97, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$97, DW_AT_end_line(0x111)
	.dwattr DW$97, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$97

	.sect	".text"

DW$132	.dwtag  DW_TAG_subprogram, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$132, DW_AT_low_pc(_mdDeleteChan)
	.dwattr DW$132, DW_AT_high_pc(0x00)
	.dwattr DW$132, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$132, DW_AT_begin_line(0x119)
	.dwattr DW$132, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap_RAW.c",282,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 281 | static Int  mdDeleteChan(Ptr chanp)                                    
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
;*   Local Frame Size  : 0 Args + 24 Auto + 4 Save = 28 byte                  *
;******************************************************************************
_mdDeleteChan:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |282| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$133, DW_AT_type(*DW$T$37)
	.dwattr DW$133, DW_AT_location[DW_OP_reg4]
DW$134	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$134, DW_AT_type(*DW$T$37)
	.dwattr DW$134, DW_AT_location[DW_OP_breg31 4]
DW$135	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$135, DW_AT_type(*DW$T$207)
	.dwattr DW$135, DW_AT_location[DW_OP_breg31 8]
DW$136	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$136, DW_AT_type(*DW$T$210)
	.dwattr DW$136, DW_AT_location[DW_OP_breg31 12]
DW$137	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$137, DW_AT_type(*DW$T$22)
	.dwattr DW$137, DW_AT_location[DW_OP_breg31 16]
DW$138	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$138, DW_AT_type(*DW$T$162)
	.dwattr DW$138, DW_AT_location[DW_OP_breg31 20]
DW$139	.dwtag  DW_TAG_variable, DW_AT_name("numEdmaChans"), DW_AT_symbol_name("_numEdmaChans")
	.dwattr DW$139, DW_AT_type(*DW$T$10)
	.dwattr DW$139, DW_AT_location[DW_OP_breg31 24]
           STW     .D2T1   A4,*+SP(4)        ; |282| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",283,21
;----------------------------------------------------------------------
; 283 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(8)        ; |283| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",284,14
;----------------------------------------------------------------------
; 284 | PortObj* port = &portObjs[chan->portNum];                              
; 285 | Int j;                                                                 
; 286 | volatile Int* base;                                                    
; 288 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B5        ; |284| 
           NOP             3
           MVK     .S2     1072,B4           ; |284| 
           MPYLI   .M2     B4,B5,B5:B4       ; |284| 
           MVKL    .S1     _portObjs,A3      ; |284| 
           MVKH    .S1     _portObjs,A3      ; |284| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |284| 
           STW     .D2T2   B4,*+SP(12)       ; |284| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",289,9
;----------------------------------------------------------------------
; 289 | int numEdmaChans = 0;                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |289| 
           STW     .D2T2   B4,*+SP(24)       ; |289| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",291,5
;----------------------------------------------------------------------
; 291 | if(chan->status & _VPORT_OPENED) {                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |291| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |291| 
           NOP             4
           AND     .L1     1,A3,A0           ; |291| 
   [!A0]   BNOP    .S1     L41,5             ; |291| 
           ; BRANCHCC OCCURS {L41}           ; |291| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",292,9
;----------------------------------------------------------------------
; 292 | chan->status = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |292| 
           NOP             3
           ZERO    .L1     A4                ; |292| 
           STW     .D1T1   A4,*A3            ; |292| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",293,9
;----------------------------------------------------------------------
; 293 | mdControlChan(chanp, VPORT_CMD_STOP, NULL);                            
; 295 | //RAW CAPTURE INITIALIZATION SPECIFIC                                  
; 296 | // set number of EDMA channels to cycle through based on RAW mode opera
;     | tion                                                                   
;----------------------------------------------------------------------
           CALL    .S1     _mdControlChan    ; |293| 
           LDW     .D2T1   *+SP(4),A4        ; |293| 
           MVKL    .S2     0x10000005,B4     ; |293| 
           MVKH    .S2     0x10000005,B4     ; |293| 
           ADDKPC  .S2     RL17,B3,0         ; |293| 
           ZERO    .L1     A6                ; |293| 
RL17:      ; CALL OCCURS {_mdControlChan}    ; |293| 
	.dwpsn	"vportcap_RAW.c",297,3
;----------------------------------------------------------------------
; 297 | numEdmaChans = (chan->mode & _VPORT_MASK_RAW) ? _VPORT_NUM_EDMA_CHANS_R
;     | AW : _VPORT_NUM_EDMA_CHANS;                                            
; 298 | //numEdmaChans = (chan->mode == VPORT_MODE_RAW_8BIT) ? _VPORT_NUM_EDMA_
;     | CHANS_RAW : _VPORT_NUM_EDMA_CHANS;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |297| 
           NOP             3
           MVK     .S2     126,B5            ; |297| 
           LDW     .D2T2   *+B4[B5],B4       ; |297| 
           NOP             4
           AND     .L2     2,B4,B0           ; |297| 
   [ B0]   BNOP    .S1     L36,4             ; |297| 
           MVK     .L2     0x1,B4            ; |297| 
           ; BRANCHCC OCCURS {L36}           ; |297| 
;** --------------------------------------------------------------------------*
           MVK     .L2     0x3,B4            ; |297| 
;** --------------------------------------------------------------------------*
L36:    
           STW     .D2T2   B4,*+SP(24)       ; |297| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",301,13
;----------------------------------------------------------------------
; 301 | for(j = 0; j < numEdmaChans; j ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |301| 
           STW     .D2T2   B4,*+SP(16)       ; |301| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",301,20
           LDW     .D2T2   *+SP(16),B5       ; |301| 
           LDW     .D2T2   *+SP(24),B4       ; |301| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |301| 
   [!B0]   BNOP    .S1     L38,5             ; |301| 
           ; BRANCHCC OCCURS {L38}           ; |301| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L37:    
DW$L$_mdDeleteChan$5$B:
	.dwpsn	"vportcap_RAW.c",302,13
;----------------------------------------------------------------------
; 302 | EDMA_close(chan->hEdma[j]);                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A5        ; |302| 
           MVKL    .S1     _EDMA_close,A3    ; |302| 
           MVKH    .S1     _EDMA_close,A3    ; |302| 
           MV      .L1X    B5,A4             ; |302| 
           MVK     .S1     95,A6             ; |302| 

           ADDAW   .D1     A5,A4,A4          ; |302| 
||         CALL    .S2X    A3                ; |302| 

           LDW     .D1T1   *+A4[A6],A4       ; |302| 
           ADDKPC  .S2     RL18,B3,3         ; |302| 
RL18:      ; CALL OCCURS {_EDMA_close}       ; |302| 
	.dwpsn	"vportcap_RAW.c",303,13
;----------------------------------------------------------------------
; 303 | EDMA_freeTable(chan->hRld[2 * j]);                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |303| 
           LDW     .D2T1   *+SP(8),A4        ; |303| 
           NOP             1
           MVKL    .S2     _EDMA_freeTable,B4 ; |303| 
           MVKH    .S2     _EDMA_freeTable,B4 ; |303| 
           MVK     .S1     98,A31            ; |303| 

           ADDAD   .D1     A4,A3,A3          ; |303| 
||         CALL    .S2     B4                ; |303| 

           LDW     .D1T1   *+A3[A31],A4      ; |303| 
           ADDKPC  .S2     RL19,B3,3         ; |303| 
RL19:      ; CALL OCCURS {_EDMA_freeTable}   ; |303| 
	.dwpsn	"vportcap_RAW.c",304,13
;----------------------------------------------------------------------
; 304 | EDMA_freeTable(chan->hRld[2 * j + 1]);                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |304| 
           LDW     .D2T2   *+SP(8),B5        ; |304| 
           MVK     .L2     1,B6              ; |304| 
           MVKL    .S1     _EDMA_freeTable,A3 ; |304| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |304| 
           ADDAH   .D2     B6,B4,B4          ; |304| 

           MVK     .S2     98,B5             ; |304| 
||         ADDAW   .D2     B5,B4,B4          ; |304| 

           CALL    .S2X    A3                ; |304| 
           LDW     .D2T1   *+B4[B5],A4       ; |304| 
           ADDKPC  .S2     RL20,B3,3         ; |304| 
RL20:      ; CALL OCCURS {_EDMA_freeTable}   ; |304| 
	.dwpsn	"vportcap_RAW.c",305,13
;----------------------------------------------------------------------
; 305 | EDMA_intFree(chan->tcc[j]);                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |305| 
           LDW     .D2T1   *+SP(8),A4        ; |305| 
           NOP             1
           MVKL    .S2     _EDMA_intFree,B4  ; |305| 
           MVKH    .S2     _EDMA_intFree,B4  ; |305| 
           MVK     .S1     104,A31           ; |305| 

           ADDAW   .D1     A4,A3,A3          ; |305| 
||         CALL    .S2     B4                ; |305| 

           LDW     .D1T1   *+A3[A31],A4      ; |305| 
           ADDKPC  .S2     RL21,B3,3         ; |305| 
RL21:      ; CALL OCCURS {_EDMA_intFree}     ; |305| 
	.dwpsn	"vportcap_RAW.c",301,38
           LDW     .D2T2   *+SP(16),B4       ; |301| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |301| 
           STW     .D2T2   B4,*+SP(16)       ; |301| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",301,20
           LDW     .D2T2   *+SP(24),B4       ; |301| 
           LDW     .D2T2   *+SP(16),B5       ; |301| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |301| 
   [ B0]   BNOP    .S1     L37,5             ; |301| 
           ; BRANCHCC OCCURS {L37}           ; |301| 
DW$L$_mdDeleteChan$5$E:
;** --------------------------------------------------------------------------*
L38:    
	.dwpsn	"vportcap_RAW.c",307,13
;----------------------------------------------------------------------
; 307 | for(j = 0; j < chan->numFrms ; j ++) {                                 
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |307| 
           STW     .D2T2   B4,*+SP(16)       ; |307| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",307,20
           LDW     .D2T2   *+SP(8),B4        ; |307| 
           NOP             2
           LDW     .D2T2   *+SP(16),B5       ; |307| 
           MVK     .S2     118,B6            ; |307| 
           LDW     .D2T2   *+B4[B6],B4       ; |307| 
           NOP             4
           CMPLTU  .L2     B5,B4,B0          ; |307| 
   [!B0]   BNOP    .S1     L40,5             ; |307| 
           ; BRANCHCC OCCURS {L40}           ; |307| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L39:    
DW$L$_mdDeleteChan$7$B:
	.dwpsn	"vportcap_RAW.c",308,13
;----------------------------------------------------------------------
; 308 | MEM_free(chan->segId, chan->viops[j].frame.iFrm.y1, chan->bufSz);      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B5        ; |308| 
           LDW     .D2T2   *+SP(16),B7       ; |308| 
           NOP             1
           MVK     .S2     131,B8            ; |308| 
           MVK     .S2     132,B9            ; |308| 
           MV      .L2     B5,B4             ; |308| 

           SHL     .S2     B7,5,B5           ; |308| 
||         MV      .L2     B5,B6             ; |308| 
||         LDW     .D2T1   *+B5[B8],A4       ; |308| 

           ADD     .L2     B5,B6,B4          ; |308| 
||         LDW     .D2T1   *+B4[B9],A6       ; |308| 
||         CALL    .S1     _MEM_free         ; |308| 

           LDW     .D2T2   *+B4(52),B4       ; |308| 
           ADDKPC  .S2     RL22,B3,3         ; |308| 
RL22:      ; CALL OCCURS {_MEM_free}         ; |308| 
	.dwpsn	"vportcap_RAW.c",307,40
           LDW     .D2T2   *+SP(16),B4       ; |307| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |307| 
           STW     .D2T2   B4,*+SP(16)       ; |307| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",307,20
           LDW     .D2T2   *+SP(8),B4        ; |307| 
           NOP             2
           LDW     .D2T2   *+SP(16),B5       ; |307| 
           MVK     .S2     118,B6            ; |307| 
           LDW     .D2T2   *+B4[B6],B4       ; |307| 
           NOP             4
           CMPLTU  .L2     B5,B4,B0          ; |307| 
   [ B0]   BNOP    .S1     L39,5             ; |307| 
           ; BRANCHCC OCCURS {L39}           ; |307| 
DW$L$_mdDeleteChan$7$E:
;** --------------------------------------------------------------------------*
L40:    
	.dwpsn	"vportcap_RAW.c",311,9
;----------------------------------------------------------------------
; 311 | if(chan->edcFxns != INV) {                                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |311| 
           NOP             2
           MVK     .S2     127,B5            ; |311| 
           MVK     .L2     -1,B31            ; |311| 
           LDW     .D2T2   *+B4[B5],B4       ; |311| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |311| 
   [ B0]   BNOP    .S1     L41,5             ; |311| 
           ; BRANCHCC OCCURS {L41}           ; |311| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",312,13
;----------------------------------------------------------------------
; 312 | chan->edcFxns->close(chan->edcHandle);                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |312| 
           NOP             1
           MVK     .S2     127,B5            ; |312| 
           LDW     .D2T1   *+SP(8),A3        ; |312| 
           MVK     .S1     128,A4            ; |312| 
           LDW     .D2T2   *+B4[B5],B4       ; |312| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |312| 
           NOP             3
           LDW     .D1T1   *+A3[A4],A4       ; |312| 
           CALL    .S2     B4                ; |312| 
           ADDKPC  .S2     RL23,B3,4         ; |312| 
RL23:      ; CALL OCCURS {A3}                ; |312| 
;** --------------------------------------------------------------------------*
L41:    
	.dwpsn	"vportcap_RAW.c",316,5
;----------------------------------------------------------------------
; 316 | if(! (port->chanObj[0].status & _VPORT_OPENED)                         
; 317 |    && ! (port->chanObj[1].status & _VPORT_OPENED)) {                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |316| 
           NOP             3
           MVK     .S2     135,B5            ; |316| 
           LDW     .D2T2   *+B4(8),B4        ; |316| 
           NOP             4
           AND     .L2     1,B4,B4           ; |316| 
           CMPEQ   .L2     B4,0,B0           ; |316| 
   [!B0]   BNOP    .S1     L42,4             ; |316| 
           LDW     .D2T2   *+SP(12),B4       ; |316| 
           ; BRANCHCC OCCURS {L42}           ; |316| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4[B5],B4       ; |316| 
           NOP             4
           AND     .L2     1,B4,B4           ; |316| 
           CMPEQ   .L2     B4,0,B0           ; |316| 
;** --------------------------------------------------------------------------*
L42:    
   [!B0]   BNOP    .S1     L43,5             ; |316| 
           ; BRANCHCC OCCURS {L43}           ; |316| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",318,9
;----------------------------------------------------------------------
; 318 | base = (volatile Int *)port->base;                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |318| 
           NOP             4
           LDW     .D1T1   *+A3(4),A3        ; |318| 
           NOP             4
           STW     .D2T1   A3,*+SP(20)       ; |318| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",320,9
;----------------------------------------------------------------------
; 320 | base[_VP_VCACTL_OFFSET] |=                                             
; 321 |     VP_VCACTL_RSTCH_RESET << _VP_VCACTL_RSTCH_SHIFT;                   
;----------------------------------------------------------------------
           MV      .L2X    A3,B4
           MVK     .S1     260,A3            ; |320| 
           ADD     .L1X    A3,B4,A4          ; |320| 
           LDW     .D1T1   *A4,A3            ; |320| 
           NOP             4
           SET     .S1     A3,31,31,A3       ; |320| 
           STW     .D1T1   A3,*A4            ; |320| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",322,9
;----------------------------------------------------------------------
; 322 | base[_VP_VCBCTL_OFFSET] |=                                             
; 323 |     VP_VCBCTL_RSTCH_RESET << _VP_VCBCTL_RSTCH_SHIFT;                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |322| 
           NOP             3
           MVK     .S1     324,A3            ; |322| 
           ADD     .L1X    A3,B4,A3          ; |322| 
           LDW     .D1T1   *A3,A4            ; |322| 
           NOP             4
           SET     .S1     A4,31,31,A4       ; |322| 
           STW     .D1T1   A4,*A3            ; |322| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",326,9
;----------------------------------------------------------------------
; 326 | base[_VP_VPCTL_OFFSET] |=                                              
; 327 |     VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |326| 
           NOP             4
           ADDAD   .D2     B4,24,B5          ; |326| 
           LDW     .D2T2   *B5,B4            ; |326| 
           NOP             4
           SET     .S2     B4,15,15,B4       ; |326| 
           STW     .D2T2   B4,*B5            ; |326| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",328,9
;----------------------------------------------------------------------
; 328 | port->status = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |328| 
           NOP             3
           ZERO    .L1     A4                ; |328| 
           STW     .D1T1   A4,*A3            ; |328| 
;** --------------------------------------------------------------------------*
L43:    
	.dwpsn	"vportcap_RAW.c",330,5
;----------------------------------------------------------------------
; 330 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |330| 
	.dwpsn	"vportcap_RAW.c",331,1
           LDW     .D2T2   *++SP(32),B3      ; |331| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |331| 
           ; BRANCH OCCURS {B3}              ; |331| 

DW$140	.dwtag  DW_TAG_loop
	.dwattr DW$140, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L39:1:1301635728")
	.dwattr DW$140, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$140, DW_AT_begin_line(0x133)
	.dwattr DW$140, DW_AT_end_line(0x135)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_mdDeleteChan$7$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_mdDeleteChan$7$E)
	.dwendtag DW$140


DW$142	.dwtag  DW_TAG_loop
	.dwattr DW$142, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L37:1:1301635728")
	.dwattr DW$142, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$142, DW_AT_begin_line(0x12d)
	.dwattr DW$142, DW_AT_end_line(0x132)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$_mdDeleteChan$5$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$_mdDeleteChan$5$E)
	.dwendtag DW$142

	.dwattr DW$132, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$132, DW_AT_end_line(0x14b)
	.dwattr DW$132, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$132

	.sect	".text"

DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$144, DW_AT_low_pc(_mdSubmitChan)
	.dwattr DW$144, DW_AT_high_pc(0x00)
	.dwattr DW$144, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$144, DW_AT_begin_line(0x151)
	.dwattr DW$144, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap_RAW.c",338,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 337 | static Int  mdSubmitChan(Ptr chanp, IOM_Packet *packet)                
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
;*   Local Frame Size  : 0 Args + 24 Auto + 4 Save = 28 byte                  *
;******************************************************************************
_mdSubmitChan:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |338| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$145, DW_AT_type(*DW$T$37)
	.dwattr DW$145, DW_AT_location[DW_OP_reg4]
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("packet"), DW_AT_symbol_name("_packet")
	.dwattr DW$146, DW_AT_type(*DW$T$56)
	.dwattr DW$146, DW_AT_location[DW_OP_reg20]
DW$147	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$147, DW_AT_type(*DW$T$37)
	.dwattr DW$147, DW_AT_location[DW_OP_breg31 4]
DW$148	.dwtag  DW_TAG_variable, DW_AT_name("packet"), DW_AT_symbol_name("_packet")
	.dwattr DW$148, DW_AT_type(*DW$T$56)
	.dwattr DW$148, DW_AT_location[DW_OP_breg31 8]
DW$149	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$149, DW_AT_type(*DW$T$207)
	.dwattr DW$149, DW_AT_location[DW_OP_breg31 12]
DW$150	.dwtag  DW_TAG_variable, DW_AT_name("viop"), DW_AT_symbol_name("_viop")
	.dwattr DW$150, DW_AT_type(*DW$T$99)
	.dwattr DW$150, DW_AT_location[DW_OP_breg31 16]
DW$151	.dwtag  DW_TAG_variable, DW_AT_name("gie"), DW_AT_symbol_name("_gie")
	.dwattr DW$151, DW_AT_type(*DW$T$34)
	.dwattr DW$151, DW_AT_location[DW_OP_breg31 20]
DW$152	.dwtag  DW_TAG_variable, DW_AT_name("retVal"), DW_AT_symbol_name("_retVal")
	.dwattr DW$152, DW_AT_type(*DW$T$22)
	.dwattr DW$152, DW_AT_location[DW_OP_breg31 24]

           STW     .D2T1   A4,*+SP(4)        ; |338| 
||         MV      .L1X    B4,A3             ; |338| 

           STW     .D2T1   A3,*+SP(8)        ; |338| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",340,21
;----------------------------------------------------------------------
; 340 | _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;                        
; 341 | FVID_Frame* viop;                                                      
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |340| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",342,12
;----------------------------------------------------------------------
; 342 | Uint32 gie = IRQ_globalDisable();                                      
;----------------------------------------------------------------------
           MVKL    .S2     _IRQ_globalDisable,B4 ; |342| 
           MVKH    .S2     _IRQ_globalDisable,B4 ; |342| 
           CALL    .S2     B4                ; |342| 
           ADDKPC  .S2     RL24,B3,4         ; |342| 
RL24:      ; CALL OCCURS {_IRQ_globalDisable}  ; |342| 
           STW     .D2T1   A4,*+SP(20)       ; |342| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",343,9
;----------------------------------------------------------------------
; 343 | Int retVal = IOM_PENDING;                                              
; 352 |     // 20110217 modified                                               
; 353 |     // 测试加密芯片输出是否为已加密内容                                
;----------------------------------------------------------------------
           MVK     .L2     1,B4              ; |343| 
           STW     .D2T2   B4,*+SP(24)       ; |343| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",354,3
;----------------------------------------------------------------------
; 354 | if (CLK_getltime() > 500000)                                           
;----------------------------------------------------------------------
           CALL    .S1     _CLK_getltime     ; |354| 
           ADDKPC  .S2     RL25,B3,4         ; |354| 
RL25:      ; CALL OCCURS {_CLK_getltime}     ; |354| 
           MVKL    .S1     0x7a120,A3        ; |354| 
           MVKH    .S1     0x7a120,A3        ; |354| 
           CMPGT   .L1     A4,A3,A0          ; |354| 
   [!A0]   BNOP    .S1     L44,5             ; |354| 
           ; BRANCHCC OCCURS {L44}           ; |354| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",356,3
;----------------------------------------------------------------------
; 356 | TSK_sleep((cr_reg ^ 0xbad0) << 4);                                     
;----------------------------------------------------------------------
           MVKL    .S1     _cr_reg,A3        ; |356| 
           MVKH    .S1     _cr_reg,A3        ; |356| 
           LDW     .D1T1   *A3,A3            ; |356| 
           MVKL    .S2     0xbad0,B4         ; |356| 
           CALL    .S1     _SEM_pend         ; |356| 
           MVKH    .S2     0xbad0,B4         ; |356| 
           MVKL    .S1     _TSK_timerSem,A4  ; |356| 
           XOR     .L2X    B4,A3,B4          ; |356| 
           SHL     .S2     B4,4,B4           ; |356| 

           ADDKPC  .S2     RL26,B3,0         ; |356| 
||         MVKH    .S1     _TSK_timerSem,A4  ; |356| 

RL26:      ; CALL OCCURS {_SEM_pend}         ; |356| 
;** --------------------------------------------------------------------------*
L44:    
	.dwpsn	"vportcap_RAW.c",359,5
;----------------------------------------------------------------------
; 359 | assert(chan->status & _VPORT_READY);                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |359| 
           NOP             2
           MVKL    .S1     SL3+0,A4          ; |359| 
           MVKH    .S1     SL3+0,A4          ; |359| 
           LDW     .D2T2   *B4,B4            ; |359| 
           NOP             4
           AND     .L2     4,B4,B0           ; |359| 
   [ B0]   BNOP    .S1     L45,5             ; |359| 
           ; BRANCHCC OCCURS {L45}           ; |359| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |359| 
           ADDKPC  .S2     RL27,B3,4         ; |359| 
RL27:      ; CALL OCCURS {__abort_msg}       ; |359| 
;** --------------------------------------------------------------------------*
L45:    
	.dwpsn	"vportcap_RAW.c",360,5
;----------------------------------------------------------------------
; 360 | assert(packet->cmd == FVID_ALLOC                                       
; 361 |     || packet->cmd == FVID_FREE                                        
; 362 |     || packet->cmd == FVID_EXCHANGE);                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |360| 
           NOP             2
           MVK     .S2     128,B5            ; |360| 
           MVK     .S1     129,A4            ; |360| 
           LDW     .D2T2   *+B4(24),B4       ; |360| 
           NOP             4
           CMPEQ   .L2     B4,B5,B0          ; |360| 
   [ B0]   BNOP    .S1     L46,4             ; |360| 

           LDW     .D2T2   *+SP(8),B4        ; |360| 
||         MV      .L1X    B0,A3             ; |360| 

           ; BRANCHCC OCCURS {L46}           ; |360| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4(24),B4       ; |360| 
           NOP             4
           CMPEQ   .L1X    B4,A4,A3          ; |360| 
;** --------------------------------------------------------------------------*
L46:    
           CMPEQ   .L1     A3,0,A0           ; |360| 
   [!A0]   BNOP    .S1     L47,1             ; |360| 
           XOR     .L1     1,A0,A3           ; |360| 
           MVK     .S1     130,A4            ; |360| 
           MV      .L2X    A3,B4             ; |360| 
           LDW     .D2T2   *+SP(8),B5        ; |360| 
           ; BRANCHCC OCCURS {L47}           ; |360| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B5(24),B4       ; |360| 
           NOP             4
           CMPEQ   .L2X    B4,A4,B4          ; |360| 
           NOP             1
;** --------------------------------------------------------------------------*
L47:    
           MV      .L1X    B4,A0             ; |360| 
   [ A0]   BNOP    .S1     L48,3             ; |360| 
           MVKL    .S1     SL4+0,A4          ; |360| 
           MVKH    .S1     SL4+0,A4          ; |360| 
           ; BRANCHCC OCCURS {L48}           ; |360| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |360| 
           ADDKPC  .S2     RL28,B3,4         ; |360| 
RL28:      ; CALL OCCURS {__abort_msg}       ; |360| 
;** --------------------------------------------------------------------------*
L48:    
	.dwpsn	"vportcap_RAW.c",367,5
;----------------------------------------------------------------------
; 367 | if(packet->cmd != FVID_ALLOC) {/* FVID_FREE or FVID_EXCHANGE */        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |367| 
           NOP             3
           MVK     .S2     128,B5            ; |367| 
           LDW     .D2T2   *+B4(24),B4       ; |367| 
           NOP             4
           CMPEQ   .L2     B4,B5,B0          ; |367| 
   [ B0]   BNOP    .S1     L51,5             ; |367| 
           ; BRANCHCC OCCURS {L51}           ; |367| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",368,9
;----------------------------------------------------------------------
; 368 | viop = *(void **)packet->addr; /* pointer of a video I/O packet */     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |368| 
           NOP             4
           LDW     .D2T2   *+B4(8),B4        ; |368| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |368| 
           NOP             4
           STW     .D2T2   B4,*+SP(16)       ; |368| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",369,9
;----------------------------------------------------------------------
; 369 | if(chan->queEmpty) {                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |369| 
           NOP             4
           ADDK    .S2     444,B4            ; |369| 
           LDHU    .D2T2   *B4,B0            ; |369| 
           NOP             4
   [!B0]   BNOP    .S1     L49,5             ; |369| 
           ; BRANCHCC OCCURS {L49}           ; |369| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",371,13
;----------------------------------------------------------------------
; 371 | chan->queEmpty = FALSE;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |371| 
           NOP             3
           ZERO    .L2     B5                ; |371| 
           ADDK    .S2     444,B4            ; |371| 
           STH     .D2T2   B5,*B4            ; |371| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",372,13
;----------------------------------------------------------------------
; 372 | chan->nextViop = viop;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |372| 
           LDW     .D2T2   *+SP(16),B4       ; |372| 
           NOP             3
           MVK     .S2     124,B6            ; |372| 
           STW     .D2T2   B4,*+B5[B6]       ; |372| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",373,9
;----------------------------------------------------------------------
; 374 | else {                                                                 
;----------------------------------------------------------------------
           BNOP    .S1     L50,5             ; |373| 
           ; BRANCH OCCURS {L50}             ; |373| 
;** --------------------------------------------------------------------------*
L49:    
	.dwpsn	"vportcap_RAW.c",375,13
;----------------------------------------------------------------------
; 375 | QUE_enqueue(&chan->qIn, (QUE_Handle)viop);                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |375| 
           NOP             2
           MVK     .S1     364,A3            ; |375| 
           CALL    .S2     _QUE_put          ; |375| 

           LDW     .D2T2   *+SP(16),B4       ; |375| 
||         ADD     .L1X    A3,B4,A4          ; |375| 

           ADDKPC  .S2     RL29,B3,3         ; |375| 
RL29:      ; CALL OCCURS {_QUE_put}          ; |375| 
;** --------------------------------------------------------------------------*
L50:    
	.dwpsn	"vportcap_RAW.c",377,9
;----------------------------------------------------------------------
; 377 | retVal = packet->status = IOM_COMPLETED;                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |377| 
           NOP             1
           ZERO    .L2     B5                ; |377| 
           NOP             2
           STW     .D2T2   B5,*+B4(28)       ; |377| 
           STW     .D2T2   B5,*+SP(24)       ; |377| 
;** --------------------------------------------------------------------------*
L51:    
	.dwpsn	"vportcap_RAW.c",379,5
;----------------------------------------------------------------------
; 379 | if(packet->cmd != FVID_FREE) {/* FVID_ALLOC or FVID_EXCHANGE */        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |379| 
           NOP             3
           MVK     .S2     129,B5            ; |379| 
           LDW     .D2T2   *+B4(24),B4       ; |379| 
           NOP             4
           CMPEQ   .L2     B4,B5,B0          ; |379| 
   [ B0]   BNOP    .S1     L54,5             ; |379| 
           ; BRANCHCC OCCURS {L54}           ; |379| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",380,9
;----------------------------------------------------------------------
; 380 | if(chan->mrViop != INV) {                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |380| 
           NOP             2
           MVK     .S2     125,B5            ; |380| 
           MVK     .L2     -1,B31            ; |380| 
           LDW     .D2T2   *+B4[B5],B4       ; |380| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |380| 
   [ B0]   BNOP    .S1     L53,5             ; |380| 
           ; BRANCHCC OCCURS {L53}           ; |380| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",382,13
;----------------------------------------------------------------------
; 382 | if(chan->packetIOM == INV){                                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |382| 
           NOP             2
           MVK     .S2     129,B5            ; |382| 
           MVK     .L2     -1,B31            ; |382| 
           LDW     .D2T2   *+B4[B5],B4       ; |382| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |382| 
   [!B0]   BNOP    .S1     L52,5             ; |382| 
           ; BRANCHCC OCCURS {L52}           ; |382| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",383,17
;----------------------------------------------------------------------
; 383 | *(void **)packet->addr = (void *)chan->mrViop;                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |383| 
           LDW     .D2T1   *+SP(12),A3       ; |383| 
           NOP             3
           MVK     .S1     125,A4            ; |383| 

           LDW     .D2T2   *+B4(8),B4        ; |383| 
||         LDW     .D1T1   *+A3[A4],A3       ; |383| 

           NOP             4
           STW     .D2T1   A3,*B4            ; |383| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",384,17
;----------------------------------------------------------------------
; 384 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |384| 
           NOP             2
           MVK     .L1     -1,A4             ; |384| 
           MVK     .S1     125,A5            ; |384| 
           STW     .D1T1   A4,*+A3[A5]       ; |384| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",385,17
;----------------------------------------------------------------------
; 385 | packet->size = sizeof(FVID_Frame);                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |385| 
           NOP             3
           MVK     .S2     32,B4             ; |385| 
           STW     .D1T2   B4,*+A3(12)       ; |385| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",386,17
;----------------------------------------------------------------------
; 386 | retVal = packet->status = IOM_COMPLETED;                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |386| 
           NOP             3
           ZERO    .L1     A4                ; |386| 
           STW     .D1T1   A4,*+A3(28)       ; |386| 
           STW     .D2T1   A4,*+SP(24)       ; |386| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",387,17
;----------------------------------------------------------------------
; 387 | if(chan->queEmpty) {                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |387| 
           NOP             4
           ADDK    .S2     444,B4            ; |387| 
           LDHU    .D2T2   *B4,B0            ; |387| 
           NOP             4
   [!B0]   BNOP    .S1     L54,5             ; |387| 
           ; BRANCHCC OCCURS {L54}           ; |387| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",391,21
;----------------------------------------------------------------------
; 391 | chan->nextViop = chan->curViop;                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |391| 
           NOP             2
           MVK     .S2     123,B6            ; |391| 
           MVK     .S2     124,B31           ; |391| 

           LDW     .D2T2   *+B4[B6],B4       ; |391| 
||         MV      .L2     B4,B5             ; |391| 

           NOP             4
           STW     .D2T2   B4,*+B5[B31]      ; |391| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",393,13
           BNOP    .S1     L54,5             ; |393| 
           ; BRANCH OCCURS {L54}             ; |393| 
;** --------------------------------------------------------------------------*
L52:    
	.dwpsn	"vportcap_RAW.c",394,18
;----------------------------------------------------------------------
; 394 | else retVal = IOM_EINUSE;                                              
;----------------------------------------------------------------------
           MVK     .L2     -12,B4            ; |394| 
           STW     .D2T2   B4,*+SP(24)       ; |394| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",395,9
;----------------------------------------------------------------------
; 395 | } else {                                                               
;----------------------------------------------------------------------
           BNOP    .S1     L54,5             ; |395| 
           ; BRANCH OCCURS {L54}             ; |395| 
;** --------------------------------------------------------------------------*
L53:    
	.dwpsn	"vportcap_RAW.c",396,13
;----------------------------------------------------------------------
; 396 | chan->packetIOM = packet;                                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |396| 
           LDW     .D2T2   *+SP(8),B4        ; |396| 
           NOP             3
           MVK     .S1     129,A4            ; |396| 
           STW     .D1T2   B4,*+A3[A4]       ; |396| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",397,13
;----------------------------------------------------------------------
; 397 | retVal = packet->status = IOM_PENDING;                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B5        ; |397| 
           NOP             1
           MVK     .L2     0x1,B4            ; |397| 
           NOP             2
           STW     .D2T2   B4,*+B5(28)       ; |397| 
           STW     .D2T2   B4,*+SP(24)       ; |397| 
;** --------------------------------------------------------------------------*
L54:    
	.dwpsn	"vportcap_RAW.c",400,5
;----------------------------------------------------------------------
; 400 | IRQ_globalRestore(gie);                                                
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_globalRestore,A3 ; |400| 
           MVKH    .S1     _IRQ_globalRestore,A3 ; |400| 
           LDW     .D2T1   *+SP(20),A4       ; |400| 
           CALL    .S2X    A3                ; |400| 
           ADDKPC  .S2     RL30,B3,4         ; |400| 
RL30:      ; CALL OCCURS {_IRQ_globalRestore}  ; |400| 
	.dwpsn	"vportcap_RAW.c",401,5
;----------------------------------------------------------------------
; 401 | return retVal;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A4       ; |401| 
           NOP             4
	.dwpsn	"vportcap_RAW.c",402,1
           LDW     .D2T2   *++SP(32),B3      ; |402| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |402| 
           ; BRANCH OCCURS {B3}              ; |402| 
	.dwattr DW$144, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$144, DW_AT_end_line(0x192)
	.dwattr DW$144, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$144

	.sect	".text"

DW$153	.dwtag  DW_TAG_subprogram, DW_AT_name("captureEdmaISR"), DW_AT_symbol_name("_captureEdmaISR")
	.dwattr DW$153, DW_AT_low_pc(_captureEdmaISR)
	.dwattr DW$153, DW_AT_high_pc(0x00)
	.dwattr DW$153, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$153, DW_AT_begin_line(0x199)
	.dwattr DW$153, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap_RAW.c",410,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 409 | static void captureEdmaISR(Int tcc)                                    
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
;*   Local Frame Size  : 0 Args + 24 Auto + 4 Save = 28 byte                  *
;******************************************************************************
_captureEdmaISR:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |410| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$154, DW_AT_type(*DW$T$22)
	.dwattr DW$154, DW_AT_location[DW_OP_reg4]
DW$155	.dwtag  DW_TAG_variable, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$155, DW_AT_type(*DW$T$22)
	.dwattr DW$155, DW_AT_location[DW_OP_breg31 4]
DW$156	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$156, DW_AT_type(*DW$T$22)
	.dwattr DW$156, DW_AT_location[DW_OP_breg31 8]
DW$157	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$157, DW_AT_type(*DW$T$22)
	.dwattr DW$157, DW_AT_location[DW_OP_breg31 12]
DW$158	.dwtag  DW_TAG_variable, DW_AT_name("viop"), DW_AT_symbol_name("_viop")
	.dwattr DW$158, DW_AT_type(*DW$T$99)
	.dwattr DW$158, DW_AT_location[DW_OP_breg31 16]
DW$159	.dwtag  DW_TAG_variable, DW_AT_name("curViop"), DW_AT_symbol_name("_curViop")
	.dwattr DW$159, DW_AT_type(*DW$T$99)
	.dwattr DW$159, DW_AT_location[DW_OP_breg31 20]
;----------------------------------------------------------------------
; 411 | Int i, j;                                                              
; 412 | FVID_Frame *viop, *curViop;                                            
;----------------------------------------------------------------------
           STW     .D2T1   A4,*+SP(4)        ; |410| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",416,9
;----------------------------------------------------------------------
; 416 | for(j = 0; j < _VP_PORT_CNT; j ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |416| 
           STW     .D2T2   B4,*+SP(12)       ; |416| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",416,16
           CMPLT   .L2     B4,3,B0           ; |416| 
   [!B0]   BNOP    .S1     L75,5             ; |416| 
           ; BRANCHCC OCCURS {L75}           ; |416| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L55
;** --------------------------------------------------------------------------*
L55:    
DW$L$_captureEdmaISR$2$B:
	.dwpsn	"vportcap_RAW.c",417,13
;----------------------------------------------------------------------
; 417 | for(i = 0; i < _VPORT_CHAN_CNT; i ++ ){ /* loop through two channels */
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |417| 
           STW     .D2T2   B4,*+SP(8)        ; |417| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",417,20
           CMPLT   .L2     B4,2,B0           ; |417| 
   [!B0]   BNOP    .S1     L74,5             ; |417| 
           ; BRANCHCC OCCURS {L74}           ; |417| 
DW$L$_captureEdmaISR$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L56:    
DW$L$_captureEdmaISR$3$B:

DW$160	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$161	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$161, DW_AT_type(*DW$T$207)
	.dwattr DW$161, DW_AT_location[DW_OP_breg31 24]
	.dwpsn	"vportcap_RAW.c",418,29
;----------------------------------------------------------------------
; 418 | _VPORT_ChanObj* chan = &portObjs[j].chanObj[i];                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |418| 
           MVK     .S2     1072,B6           ; |418| 
           MVK     .S2     532,B31           ; |418| 
           MVKL    .S1     _portObjs+8,A3    ; |418| 
           MVKH    .S1     _portObjs+8,A3    ; |418| 
           MPYLI   .M2     B6,B5,B7:B6       ; |418| 
           NOP             2
           MPYLI   .M2     B31,B4,B5:B4      ; |418| 
           NOP             1
           ADD     .L1X    A3,B6,A3          ; |418| 
           NOP             1
           ADD     .L2X    B4,A3,B4          ; |418| 
           STW     .D2T2   B4,*+SP(24)       ; |418| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",419,13
;----------------------------------------------------------------------
; 419 | if((chan->status & _VPORT_READY)                                       
; 420 |   && (tcc == chan->tcc[0])){                                           
; 422 |     // RAW CAPTURE INITIALIZATION SPECIFIC                             
; 423 |     // Do not clear if in Raw Mode                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *B4,B4            ; |419| 
           NOP             4
           AND     .L2     4,B4,B4           ; |419| 
           CMPEQ   .L2     B4,0,B0           ; |419| 
   [ B0]   BNOP    .S1     L57,3             ; |419| 
           XOR     .L2     1,B0,B4           ; |419| 
           NOP             1
           ; BRANCHCC OCCURS {L57}           ; |419| 
DW$L$_captureEdmaISR$3$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$4$B:
           LDW     .D2T2   *+SP(24),B4       ; |419| 
           NOP             2
           LDW     .D2T2   *+SP(4),B5        ; |419| 
           MVK     .S2     104,B6            ; |419| 
           LDW     .D2T2   *+B4[B6],B4       ; |419| 
           NOP             4
           CMPEQ   .L2     B5,B4,B4          ; |419| 
           NOP             1
DW$L$_captureEdmaISR$4$E:
;** --------------------------------------------------------------------------*
L57:    
DW$L$_captureEdmaISR$5$B:
           MV      .L1X    B4,A0             ; |419| 
   [!A0]   BNOP    .S1     L73,5             ; |419| 
           ; BRANCHCC OCCURS {L73}           ; |419| 
DW$L$_captureEdmaISR$5$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$6$B:
	.dwpsn	"vportcap_RAW.c",424,17
;----------------------------------------------------------------------
; 424 | if(!(chan->mode & _VPORT_MASK_RAW))                                    
; 425 | //if(chan->mode != VPORT_MODE_RAW_8BIT)                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |424| 
           NOP             3
           MVK     .S2     126,B5            ; |424| 
           LDW     .D2T2   *+B4[B5],B4       ; |424| 
           NOP             4
           AND     .L2     2,B4,B0           ; |424| 
   [ B0]   BNOP    .S1     L58,5             ; |424| 
           ; BRANCHCC OCCURS {L58}           ; |424| 
DW$L$_captureEdmaISR$6$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$7$B:
	.dwpsn	"vportcap_RAW.c",428,6
;----------------------------------------------------------------------
; 428 | EDMA_intClear(chan->tcc[1]);                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |428| 
           MVKL    .S1     _EDMA_intClear,A3 ; |428| 
           MVKH    .S1     _EDMA_intClear,A3 ; |428| 
           MVK     .S2     105,B5            ; |428| 
           CALL    .S2X    A3                ; |428| 
           LDW     .D2T1   *+B4[B5],A4       ; |428| 
           ADDKPC  .S2     RL31,B3,3         ; |428| 
RL31:      ; CALL OCCURS {_EDMA_intClear}    ; |428| 
	.dwpsn	"vportcap_RAW.c",429,18
;----------------------------------------------------------------------
; 429 | EDMA_intClear(chan->tcc[2]);                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |429| 
           MVKL    .S1     _EDMA_intClear,A3 ; |429| 
           MVKH    .S1     _EDMA_intClear,A3 ; |429| 
           MVK     .S2     106,B5            ; |429| 
           CALL    .S2X    A3                ; |429| 
           LDW     .D2T1   *+B4[B5],A4       ; |429| 
           ADDKPC  .S2     RL32,B3,3         ; |429| 
RL32:      ; CALL OCCURS {_EDMA_intClear}    ; |429| 
DW$L$_captureEdmaISR$7$E:
;** --------------------------------------------------------------------------*
L58:    
DW$L$_captureEdmaISR$8$B:
	.dwpsn	"vportcap_RAW.c",432,17
;----------------------------------------------------------------------
; 432 | if(chan->mergeFlds){                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |432| 
           NOP             4
           ADDK    .S2     428,B4            ; |432| 
           LDHU    .D2T2   *B4,B0            ; |432| 
           NOP             4
   [!B0]   BNOP    .S1     L61,5             ; |432| 
           ; BRANCHCC OCCURS {L61}           ; |432| 
DW$L$_captureEdmaISR$8$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$9$B:
	.dwpsn	"vportcap_RAW.c",436,21
;----------------------------------------------------------------------
; 436 | EDMA_RSETH(chan->hEdma[0], DST,                                        
; 437 |     chan->nextViop->frame.iFrm.y1);                                    
; 439 | // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |436| 
           NOP             2
           MVK     .S2     124,B5            ; |436| 
           MVK     .S1     95,A4             ; |436| 

           LDW     .D2T2   *+B4[B5],B4       ; |436| 
||         MV      .L1X    B4,A3             ; |436| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |436| 
           NOP             1
           LDW     .D2T2   *+B4(8),B4        ; |436| 
           MVKL    .S1     0x1a0000c,A31     ; |436| 
           MVKH    .S1     0x1a0000c,A31     ; |436| 
           EXTU    .S1     A4,16,16,A4       ; |436| 
           ADD     .L1     A31,A4,A3         ; |436| 
           STW     .D1T2   B4,*A3            ; |436| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",440,21
;----------------------------------------------------------------------
; 440 | if(!(chan->mode & _VPORT_MASK_RAW))                                    
; 441 | //if(chan->mode != VPORT_MODE_RAW_8BIT)                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |440| 
           NOP             3
           MVK     .S1     126,A4            ; |440| 
           LDW     .D1T1   *+A3[A4],A3       ; |440| 
           NOP             4
           AND     .L1     2,A3,A0           ; |440| 
   [ A0]   BNOP    .S1     L59,5             ; |440| 
           ; BRANCHCC OCCURS {L59}           ; |440| 
DW$L$_captureEdmaISR$9$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$10$B:
	.dwpsn	"vportcap_RAW.c",443,7
;----------------------------------------------------------------------
; 443 | EDMA_RSETH(chan->hEdma[1], DST, chan->nextViop->frame.iFrm.cb1);       
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |443| 
           NOP             2
           MVK     .S1     124,A5            ; |443| 
           MVK     .S1     96,A31            ; |443| 

           LDW     .D1T1   *+A3[A5],A3       ; |443| 
||         MV      .L1     A3,A4             ; |443| 

           NOP             2
           LDW     .D1T1   *+A4[A31],A4      ; |443| 
           NOP             1
           LDW     .D1T1   *+A3(12),A3       ; |443| 
           MVKL    .S2     0x1a0000c,B4      ; |443| 
           MVKH    .S2     0x1a0000c,B4      ; |443| 
           EXTU    .S1     A4,16,16,A4       ; |443| 
           ADD     .L1X    B4,A4,A4          ; |443| 
           STW     .D1T1   A3,*A4            ; |443| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",444,22
;----------------------------------------------------------------------
; 444 | EDMA_RSETH(chan->hEdma[2], DST, chan->nextViop->frame.iFrm.cr1);       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |444| 
           NOP             3
           MVK     .S1     97,A4             ; |444| 

           LDW     .D2T2   *+B4[B5],B4       ; |444| 
||         MV      .L1X    B4,A3             ; |444| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |444| 
           NOP             1
           LDW     .D2T2   *+B4(16),B4       ; |444| 
           MVKL    .S1     0x1a0000c,A30     ; |444| 
           MVKH    .S1     0x1a0000c,A30     ; |444| 
           EXTU    .S1     A4,16,16,A4       ; |444| 
           ADD     .L1     A30,A4,A3         ; |444| 
           STW     .D1T2   B4,*A3            ; |444| 
DW$L$_captureEdmaISR$10$E:
;** --------------------------------------------------------------------------*
L59:    
DW$L$_captureEdmaISR$11$B:
	.dwpsn	"vportcap_RAW.c",447,21
;----------------------------------------------------------------------
; 447 | EDMA_RSETH(chan->hRld[0], DST,                                         
; 448 |     chan->nextViop->frame.iFrm.y1);                                    
; 450 | // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |447| 
           NOP             3
           MVK     .S1     98,A4             ; |447| 

           LDW     .D2T2   *+B4[B5],B4       ; |447| 
||         MV      .L1X    B4,A3             ; |447| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |447| 
           NOP             1
           LDW     .D2T2   *+B4(8),B4        ; |447| 
           MVKL    .S1     0x1a0000c,A31     ; |447| 
           MVKH    .S1     0x1a0000c,A31     ; |447| 
           EXTU    .S1     A4,16,16,A4       ; |447| 
           ADD     .L1     A31,A4,A3         ; |447| 
           STW     .D1T2   B4,*A3            ; |447| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",451,21
;----------------------------------------------------------------------
; 451 | if(!(chan->mode & _VPORT_MASK_RAW))                                    
; 452 | //if(chan->mode != VPORT_MODE_RAW_8BIT)                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |451| 
           NOP             3
           MVK     .S1     126,A4            ; |451| 
           LDW     .D1T1   *+A3[A4],A3       ; |451| 
           NOP             4
           AND     .L1     2,A3,A0           ; |451| 
   [ A0]   BNOP    .S1     L60,5             ; |451| 
           ; BRANCHCC OCCURS {L60}           ; |451| 
DW$L$_captureEdmaISR$11$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$12$B:
	.dwpsn	"vportcap_RAW.c",454,7
;----------------------------------------------------------------------
; 454 | EDMA_RSETH(chan->hRld[2], DST, chan->nextViop->frame.iFrm.cb1);        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |454| 
           NOP             2
           MVK     .S1     124,A5            ; |454| 
           MVK     .S1     100,A31           ; |454| 

           LDW     .D1T1   *+A3[A5],A3       ; |454| 
||         MV      .L1     A3,A4             ; |454| 

           NOP             2
           LDW     .D1T1   *+A4[A31],A4      ; |454| 
           NOP             1
           LDW     .D1T1   *+A3(12),A3       ; |454| 
           MVKL    .S2     0x1a0000c,B4      ; |454| 
           MVKH    .S2     0x1a0000c,B4      ; |454| 
           EXTU    .S1     A4,16,16,A4       ; |454| 
           ADD     .L1X    B4,A4,A4          ; |454| 
           STW     .D1T1   A3,*A4            ; |454| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",455,22
;----------------------------------------------------------------------
; 455 | EDMA_RSETH(chan->hRld[4], DST, chan->nextViop->frame.iFrm.cr1);        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |455| 
           NOP             3
           MVK     .S1     102,A4            ; |455| 

           LDW     .D2T2   *+B4[B5],B4       ; |455| 
||         MV      .L1X    B4,A3             ; |455| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |455| 
           NOP             1
           LDW     .D2T2   *+B4(16),B4       ; |455| 
           MVKL    .S1     0x1a0000c,A30     ; |455| 
           MVKH    .S1     0x1a0000c,A30     ; |455| 
           EXTU    .S1     A4,16,16,A4       ; |455| 
           ADD     .L1     A30,A4,A3         ; |455| 
           STW     .D1T2   B4,*A3            ; |455| 
DW$L$_captureEdmaISR$12$E:
;** --------------------------------------------------------------------------*
L60:    
DW$L$_captureEdmaISR$13$B:
	.dwpsn	"vportcap_RAW.c",458,21
;----------------------------------------------------------------------
; 458 | EDMA_RSETH(chan->hRld[1], DST,                                         
; 459 |     chan->nextViop->frame.iFrm.y2);                                    
; 461 | // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |458| 
           NOP             3
           MVK     .S1     99,A4             ; |458| 

           LDW     .D2T2   *+B4[B5],B4       ; |458| 
||         MV      .L1X    B4,A3             ; |458| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |458| 
           NOP             1
           LDW     .D2T2   *+B4(20),B4       ; |458| 
           MVKL    .S1     0x1a0000c,A31     ; |458| 
           MVKH    .S1     0x1a0000c,A31     ; |458| 
           EXTU    .S1     A4,16,16,A4       ; |458| 
           ADD     .L1     A31,A4,A3         ; |458| 
           STW     .D1T2   B4,*A3            ; |458| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",462,21
;----------------------------------------------------------------------
; 462 | if(!(chan->mode & _VPORT_MASK_RAW))                                    
; 463 | //if(chan->mode != VPORT_MODE_RAW_8BIT)                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |462| 
           NOP             3
           MVK     .S1     126,A4            ; |462| 
           LDW     .D1T1   *+A3[A4],A3       ; |462| 
           NOP             4
           AND     .L1     2,A3,A0           ; |462| 
   [ A0]   BNOP    .S1     L61,5             ; |462| 
           ; BRANCHCC OCCURS {L61}           ; |462| 
DW$L$_captureEdmaISR$13$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$14$B:
	.dwpsn	"vportcap_RAW.c",465,7
;----------------------------------------------------------------------
; 465 | EDMA_RSETH(chan->hRld[3], DST, chan->nextViop->frame.iFrm.cb2);        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |465| 
           NOP             2
           MVK     .S1     124,A5            ; |465| 
           MVK     .S1     101,A31           ; |465| 

           LDW     .D1T1   *+A3[A5],A3       ; |465| 
||         MV      .L1     A3,A4             ; |465| 

           NOP             2
           LDW     .D1T1   *+A4[A31],A4      ; |465| 
           NOP             1
           LDW     .D1T1   *+A3(24),A3       ; |465| 
           MVKL    .S2     0x1a0000c,B4      ; |465| 
           MVKH    .S2     0x1a0000c,B4      ; |465| 
           EXTU    .S1     A4,16,16,A4       ; |465| 
           ADD     .L1X    B4,A4,A4          ; |465| 
           STW     .D1T1   A3,*A4            ; |465| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",466,22
;----------------------------------------------------------------------
; 466 | EDMA_RSETH(chan->hRld[5], DST, chan->nextViop->frame.iFrm.cr2);
;     |                                                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |466| 
           NOP             3
           MVK     .S1     103,A4            ; |466| 

           LDW     .D2T2   *+B4[B5],B4       ; |466| 
||         MV      .L1X    B4,A3             ; |466| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |466| 
           NOP             1
           LDW     .D2T2   *+B4(28),B4       ; |466| 
           MVKL    .S1     0x1a0000c,A30     ; |466| 
           MVKH    .S1     0x1a0000c,A30     ; |466| 
           EXTU    .S1     A4,16,16,A4       ; |466| 
           ADD     .L1     A30,A4,A3         ; |466| 
           STW     .D1T2   B4,*A3            ; |466| 
DW$L$_captureEdmaISR$14$E:
;** --------------------------------------------------------------------------*
L61:    
DW$L$_captureEdmaISR$15$B:
	.dwpsn	"vportcap_RAW.c",471,17
;----------------------------------------------------------------------
; 471 | curViop = chan->curViop;                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |471| 
           NOP             3
           MVK     .S1     123,A4            ; |471| 
           LDW     .D1T1   *+A3[A4],A3       ; |471| 
           NOP             4
           STW     .D2T1   A3,*+SP(20)       ; |471| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",472,17
;----------------------------------------------------------------------
; 472 | chan->curViop = chan->nextViop;                                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |472| 
           NOP             1
           MVK     .S1     124,A4            ; |472| 
           LDW     .D2T2   *+SP(24),B4       ; |472| 
           MVK     .S2     123,B5            ; |472| 
           LDW     .D1T1   *+A3[A4],A3       ; |472| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |472| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",475,17
;----------------------------------------------------------------------
; 475 | if(curViop != chan->mrViop  && chan->mrViop != INV) {                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |475| 
           NOP             2
           LDW     .D2T2   *+SP(20),B5       ; |475| 
           MVK     .S2     125,B6            ; |475| 
           LDW     .D2T2   *+B4[B6],B4       ; |475| 
           NOP             4
           CMPEQ   .L2     B5,B4,B0          ; |475| 
   [ B0]   BNOP    .S1     L62,3             ; |475| 
           ZERO    .L2     B4                ; |475| 
           NOP             1
           ; BRANCHCC OCCURS {L62}           ; |475| 
DW$L$_captureEdmaISR$15$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$16$B:
           MVK     .L2     0x1,B4            ; |475| 
           NOP             1
DW$L$_captureEdmaISR$16$E:
;** --------------------------------------------------------------------------*
L62:    
DW$L$_captureEdmaISR$17$B:
           MV      .L1X    B4,A0             ; |475| 
   [!A0]   BNOP    .S1     L64,5             ; |475| 
           ; BRANCHCC OCCURS {L64}           ; |475| 
DW$L$_captureEdmaISR$17$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$18$B:
           LDW     .D2T2   *+SP(24),B4       ; |475| 
           NOP             2
           MVK     .S2     125,B5            ; |475| 
           MVK     .L2     -1,B31            ; |475| 
           LDW     .D2T2   *+B4[B5],B4       ; |475| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |475| 
   [ B0]   BNOP    .S1     L63,3             ; |475| 
           ZERO    .L2     B4                ; |475| 
           NOP             1
           ; BRANCHCC OCCURS {L63}           ; |475| 
DW$L$_captureEdmaISR$18$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$19$B:
           MVK     .L2     0x1,B4            ; |475| 
           NOP             1
DW$L$_captureEdmaISR$19$E:
;** --------------------------------------------------------------------------*
L63:    
DW$L$_captureEdmaISR$20$B:
           MV      .L1X    B4,A0             ; |475| 
DW$L$_captureEdmaISR$20$E:
;** --------------------------------------------------------------------------*
L64:    
DW$L$_captureEdmaISR$21$B:
   [!A0]   BNOP    .S1     L65,5             ; |475| 
           ; BRANCHCC OCCURS {L65}           ; |475| 
DW$L$_captureEdmaISR$21$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$22$B:
	.dwpsn	"vportcap_RAW.c",476,23
;----------------------------------------------------------------------
; 476 | QUE_enqueue(&chan->qIn, chan->mrViop);                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |476| 
           NOP             2
           MVK     .S1     364,A3            ; |476| 
           CALL    .S2     _QUE_put          ; |476| 

           LDW     .D2T2   *+B4[B6],B4       ; |476| 
||         ADD     .L1X    A3,B4,A4          ; |476| 

           ADDKPC  .S2     RL33,B3,3         ; |476| 
RL33:      ; CALL OCCURS {_QUE_put}          ; |476| 
DW$L$_captureEdmaISR$22$E:
;** --------------------------------------------------------------------------*
L65:    
DW$L$_captureEdmaISR$23$B:
	.dwpsn	"vportcap_RAW.c",478,17
;----------------------------------------------------------------------
; 478 | chan->mrViop = curViop;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B5       ; |478| 
           LDW     .D2T2   *+SP(20),B4       ; |478| 
           NOP             3
           MVK     .S2     125,B6            ; |478| 
           STW     .D2T2   B4,*+B5[B6]       ; |478| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",480,17
;----------------------------------------------------------------------
; 480 | if((viop = (FVID_Frame *)QUE_dequeue(&chan->qIn))                      
; 481 |     !=(FVID_Frame *)&chan->qIn) {                                      
;----------------------------------------------------------------------

           CALL    .S1     _QUE_get          ; |480| 
||         LDW     .D2T2   *+SP(24),B4       ; |480| 

           MVK     .S1     364,A3            ; |480| 
           ADDKPC  .S2     RL34,B3,2         ; |480| 
           ADD     .L1X    A3,B4,A4          ; |480| 
RL34:      ; CALL OCCURS {_QUE_get}          ; |480| 
           LDW     .D2T2   *+SP(24),B4       ; |480| 
           NOP             3
           STW     .D2T1   A4,*+SP(16)       ; |480| 
           ADDK    .S2     364,B4            ; |480| 
           NOP             1
           CMPEQ   .L1X    A4,B4,A0          ; |480| 
   [ A0]   BNOP    .S1     L66,5             ; |480| 
           ; BRANCHCC OCCURS {L66}           ; |480| 
DW$L$_captureEdmaISR$23$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$24$B:
	.dwpsn	"vportcap_RAW.c",483,21
;----------------------------------------------------------------------
; 483 | chan->nextViop = viop;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B5       ; |483| 
           NOP             2
           MV      .L2X    A4,B4             ; |483| 
           MVK     .S2     124,B6            ; |483| 
           STW     .D2T2   B4,*+B5[B6]       ; |483| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",484,17
;----------------------------------------------------------------------
; 484 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L68,5             ; |484| 
           ; BRANCH OCCURS {L68}             ; |484| 
DW$L$_captureEdmaISR$24$E:
;** --------------------------------------------------------------------------*
L66:    
DW$L$_captureEdmaISR$25$B:
	.dwpsn	"vportcap_RAW.c",485,21
;----------------------------------------------------------------------
; 485 | if(chan->packetIOM == INV) {                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |485| 
           NOP             2
           MVK     .S2     129,B5            ; |485| 
           MVK     .L2     -1,B31            ; |485| 
           LDW     .D2T2   *+B4[B5],B4       ; |485| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |485| 
   [!B0]   BNOP    .S1     L67,5             ; |485| 
           ; BRANCHCC OCCURS {L67}           ; |485| 
DW$L$_captureEdmaISR$25$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$26$B:
	.dwpsn	"vportcap_RAW.c",489,25
;----------------------------------------------------------------------
; 489 | chan->nextViop = curViop;                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B5       ; |489| 
           LDW     .D2T2   *+SP(20),B4       ; |489| 
           NOP             3
           MVK     .S2     124,B6            ; |489| 
           STW     .D2T2   B4,*+B5[B6]       ; |489| 
DW$L$_captureEdmaISR$26$E:
;** --------------------------------------------------------------------------*
L67:    
DW$L$_captureEdmaISR$27$B:
	.dwpsn	"vportcap_RAW.c",491,21
;----------------------------------------------------------------------
; 491 | chan->queEmpty = TRUE;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |491| 
           NOP             1
           MVK     .L2     1,B5              ; |491| 
           NOP             2
           ADDK    .S2     444,B4            ; |491| 
           STH     .D2T2   B5,*B4            ; |491| 
DW$L$_captureEdmaISR$27$E:
;** --------------------------------------------------------------------------*
L68:    
DW$L$_captureEdmaISR$28$B:
	.dwpsn	"vportcap_RAW.c",493,17
;----------------------------------------------------------------------
; 493 | if(! chan->mergeFlds){                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |493| 
           NOP             4
           ADDK    .S2     428,B4            ; |493| 
           LDHU    .D2T2   *B4,B0            ; |493| 
           NOP             4
   [ B0]   BNOP    .S1     L70,5             ; |493| 
           ; BRANCHCC OCCURS {L70}           ; |493| 
DW$L$_captureEdmaISR$28$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$29$B:
	.dwpsn	"vportcap_RAW.c",494,21
;----------------------------------------------------------------------
; 494 | EDMA_RSETH(chan->hEdma[0], DST,                                        
; 495 |     chan->curViop->frame.iFrm.y1);                                     
; 497 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 498 | // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |494| 
           NOP             2
           MVK     .S2     123,B5            ; |494| 
           MVK     .S1     95,A4             ; |494| 

           LDW     .D2T2   *+B4[B5],B4       ; |494| 
||         MV      .L1X    B4,A3             ; |494| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |494| 
           NOP             1
           LDW     .D2T2   *+B4(8),B4        ; |494| 
           MVKL    .S1     0x1a0000c,A31     ; |494| 
           MVKH    .S1     0x1a0000c,A31     ; |494| 
           EXTU    .S1     A4,16,16,A4       ; |494| 
           ADD     .L1     A31,A4,A3         ; |494| 
           STW     .D1T2   B4,*A3            ; |494| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",499,21
;----------------------------------------------------------------------
; 499 | if(!(chan->mode & _VPORT_MASK_RAW))                                    
; 500 | //if(chan->mode != VPORT_MODE_RAW_8BIT)                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |499| 
           NOP             3
           MVK     .S1     126,A4            ; |499| 
           LDW     .D1T1   *+A3[A4],A3       ; |499| 
           NOP             4
           AND     .L1     2,A3,A0           ; |499| 
   [ A0]   BNOP    .S1     L69,5             ; |499| 
           ; BRANCHCC OCCURS {L69}           ; |499| 
DW$L$_captureEdmaISR$29$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$30$B:
	.dwpsn	"vportcap_RAW.c",502,22
;----------------------------------------------------------------------
; 502 | EDMA_RSETH(chan->hEdma[1], DST, chan->curViop->frame.iFrm.cb1);        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |502| 
           NOP             2
           MVK     .S1     123,A5            ; |502| 
           MVK     .S1     96,A31            ; |502| 

           LDW     .D1T1   *+A3[A5],A3       ; |502| 
||         MV      .L1     A3,A4             ; |502| 

           NOP             2
           LDW     .D1T1   *+A4[A31],A4      ; |502| 
           NOP             1
           LDW     .D1T1   *+A3(12),A3       ; |502| 
           MVKL    .S2     0x1a0000c,B4      ; |502| 
           MVKH    .S2     0x1a0000c,B4      ; |502| 
           EXTU    .S1     A4,16,16,A4       ; |502| 
           ADD     .L1X    B4,A4,A4          ; |502| 
           STW     .D1T1   A3,*A4            ; |502| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",503,22
;----------------------------------------------------------------------
; 503 | EDMA_RSETH(chan->hEdma[2], DST, chan->curViop->frame.iFrm.cr1);        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |503| 
           NOP             3
           MVK     .S1     97,A4             ; |503| 

           LDW     .D2T2   *+B4[B5],B4       ; |503| 
||         MV      .L1X    B4,A3             ; |503| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |503| 
           NOP             1
           LDW     .D2T2   *+B4(16),B4       ; |503| 
           MVKL    .S1     0x1a0000c,A30     ; |503| 
           MVKH    .S1     0x1a0000c,A30     ; |503| 
           EXTU    .S1     A4,16,16,A4       ; |503| 
           ADD     .L1     A30,A4,A3         ; |503| 
           STW     .D1T2   B4,*A3            ; |503| 
DW$L$_captureEdmaISR$30$E:
;** --------------------------------------------------------------------------*
L69:    
DW$L$_captureEdmaISR$31$B:
	.dwpsn	"vportcap_RAW.c",506,21
;----------------------------------------------------------------------
; 506 | EDMA_RSETH(chan->hRld[0], DST,                                         
; 507 |     chan->nextViop->frame.iFrm.y1);                                    
; 509 | // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |506| 
           NOP             2
           MVK     .S2     124,B5            ; |506| 
           MVK     .S1     98,A4             ; |506| 

           LDW     .D2T2   *+B4[B5],B4       ; |506| 
||         MV      .L1X    B4,A3             ; |506| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |506| 
           NOP             1
           LDW     .D2T2   *+B4(8),B4        ; |506| 
           MVKL    .S1     0x1a0000c,A31     ; |506| 
           MVKH    .S1     0x1a0000c,A31     ; |506| 
           EXTU    .S1     A4,16,16,A4       ; |506| 
           ADD     .L1     A31,A4,A3         ; |506| 
           STW     .D1T2   B4,*A3            ; |506| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",510,21
;----------------------------------------------------------------------
; 510 | if(!(chan->mode & _VPORT_MASK_RAW))                                    
; 511 | //if(chan->mode != VPORT_MODE_RAW_8BIT)                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |510| 
           NOP             3
           MVK     .S1     126,A4            ; |510| 
           LDW     .D1T1   *+A3[A4],A3       ; |510| 
           NOP             4
           AND     .L1     2,A3,A0           ; |510| 
   [ A0]   BNOP    .S1     L70,5             ; |510| 
           ; BRANCHCC OCCURS {L70}           ; |510| 
DW$L$_captureEdmaISR$31$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$32$B:
	.dwpsn	"vportcap_RAW.c",513,22
;----------------------------------------------------------------------
; 513 | EDMA_RSETH(chan->hRld[1], DST, chan->nextViop->frame.iFrm.cb1);        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |513| 
           NOP             2
           MVK     .S1     124,A5            ; |513| 
           MVK     .S1     99,A31            ; |513| 

           LDW     .D1T1   *+A3[A5],A3       ; |513| 
||         MV      .L1     A3,A4             ; |513| 

           NOP             2
           LDW     .D1T1   *+A4[A31],A4      ; |513| 
           NOP             1
           LDW     .D1T1   *+A3(12),A3       ; |513| 
           MVKL    .S2     0x1a0000c,B4      ; |513| 
           MVKH    .S2     0x1a0000c,B4      ; |513| 
           EXTU    .S1     A4,16,16,A4       ; |513| 
           ADD     .L1X    B4,A4,A4          ; |513| 
           STW     .D1T1   A3,*A4            ; |513| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",514,22
;----------------------------------------------------------------------
; 514 | EDMA_RSETH(chan->hRld[2], DST, chan->nextViop->frame.iFrm.cr1);        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |514| 
           NOP             3
           MVK     .S1     100,A4            ; |514| 

           LDW     .D2T2   *+B4[B5],B4       ; |514| 
||         MV      .L1X    B4,A3             ; |514| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |514| 
           NOP             1
           LDW     .D2T2   *+B4(16),B4       ; |514| 
           MVKL    .S1     0x1a0000c,A30     ; |514| 
           MVKH    .S1     0x1a0000c,A30     ; |514| 
           EXTU    .S1     A4,16,16,A4       ; |514| 
           ADD     .L1     A30,A4,A3         ; |514| 
           STW     .D1T2   B4,*A3            ; |514| 
DW$L$_captureEdmaISR$32$E:
;** --------------------------------------------------------------------------*
L70:    
DW$L$_captureEdmaISR$33$B:
	.dwpsn	"vportcap_RAW.c",520,17
;----------------------------------------------------------------------
; 520 | if(curViop != chan->curViop) {                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |520| 
           NOP             2
           LDW     .D2T2   *+SP(20),B5       ; |520| 
           MVK     .S2     123,B6            ; |520| 
           LDW     .D2T2   *+B4[B6],B4       ; |520| 
           NOP             4
           CMPEQ   .L2     B5,B4,B0          ; |520| 
   [ B0]   BNOP    .S1     L72,5             ; |520| 
           ; BRANCHCC OCCURS {L72}           ; |520| 
DW$L$_captureEdmaISR$33$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$34$B:
	.dwpsn	"vportcap_RAW.c",521,21
;----------------------------------------------------------------------
; 521 | if(chan->packetIOM != INV) {                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |521| 
           NOP             2
           MVK     .S2     129,B5            ; |521| 
           MVK     .L2     -1,B31            ; |521| 
           LDW     .D2T2   *+B4[B5],B4       ; |521| 
           NOP             4
           CMPEQ   .L2     B4,B31,B0         ; |521| 
   [ B0]   BNOP    .S1     L71,5             ; |521| 
           ; BRANCHCC OCCURS {L71}           ; |521| 
DW$L$_captureEdmaISR$34$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$35$B:
	.dwpsn	"vportcap_RAW.c",523,26
;----------------------------------------------------------------------
; 523 | *(void **)chan->packetIOM->addr = curViop;                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |523| 
           NOP             2
           MVK     .S2     129,B5            ; |523| 
           LDW     .D2T2   *+SP(20),B31      ; |523| 
           LDW     .D2T2   *+B4[B5],B5       ; |523| 
           NOP             4
           LDW     .D2T2   *+B5(8),B5        ; |523| 
           NOP             4
           STW     .D2T2   B31,*B5           ; |523| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",524,26
;----------------------------------------------------------------------
; 524 | chan->packetIOM->size = sizeof(FVID_Frame);                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |524| 
           NOP             2
           MVK     .S1     129,A4            ; |524| 
           MVK     .S2     32,B4             ; |524| 
           LDW     .D1T1   *+A3[A4],A3       ; |524| 
           NOP             4
           STW     .D1T2   B4,*+A3(12)       ; |524| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",525,26
;----------------------------------------------------------------------
; 525 | chan->cbFxn((Ptr)chan->cbArg, chan->packetIOM);                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |525| 
           NOP             2
           MVK     .S1     108,A5            ; |525| 
           MVK     .S2     129,B5            ; |525| 

           LDW     .D1T1   *+A3[A5],A3       ; |525| 
||         MV      .L1     A3,A4             ; |525| 
||         MV      .L2X    A3,B4             ; |525| 

           NOP             1
           MVK     .S1     109,A5            ; |525| 
           LDW     .D2T2   *+B4[B5],B4       ; |525| 
           LDW     .D1T1   *+A4[A5],A4       ; |525| 
           CALL    .S2X    A3                ; |525| 
           ADDKPC  .S2     RL35,B3,4         ; |525| 
RL35:      ; CALL OCCURS {A3}                ; |525| 
	.dwpsn	"vportcap_RAW.c",526,26
;----------------------------------------------------------------------
; 526 | chan->packetIOM = INV;                                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |526| 
           NOP             2
           MVK     .L1     -1,A4             ; |526| 
           MVK     .S1     129,A5            ; |526| 
           STW     .D1T1   A4,*+A3[A5]       ; |526| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",527,26
;----------------------------------------------------------------------
; 527 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |527| 
           NOP             3
           MVK     .S1     125,A5            ; |527| 
           STW     .D1T1   A4,*+A3[A5]       ; |527| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",528,21
;----------------------------------------------------------------------
; 528 | }else if(chan->queEmpty){                                              
;----------------------------------------------------------------------
           BNOP    .S1     L73,5             ; |528| 
           ; BRANCH OCCURS {L73}             ; |528| 
DW$L$_captureEdmaISR$35$E:
;** --------------------------------------------------------------------------*
L71:    
DW$L$_captureEdmaISR$36$B:
	.dwpsn	"vportcap_RAW.c",528,27
           LDW     .D2T2   *+SP(24),B4       ; |528| 
           NOP             4
           ADDK    .S2     444,B4            ; |528| 
           LDHU    .D2T2   *B4,B0            ; |528| 
           NOP             4
   [!B0]   BNOP    .S1     L73,5             ; |528| 
           ; BRANCHCC OCCURS {L73}           ; |528| 
DW$L$_captureEdmaISR$36$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$37$B:
	.dwpsn	"vportcap_RAW.c",529,25
;----------------------------------------------------------------------
; 529 | chan->nextViop = chan->mrViop;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |529| 
           NOP             2
           MVK     .S2     125,B5            ; |529| 
           MVK     .S2     124,B31           ; |529| 

           LDW     .D2T2   *+B4[B5],B4       ; |529| 
||         MV      .L2     B4,B6             ; |529| 

           NOP             4
           STW     .D2T2   B4,*+B6[B31]      ; |529| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",531,17
;----------------------------------------------------------------------
; 531 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L73,5             ; |531| 
           ; BRANCH OCCURS {L73}             ; |531| 
DW$L$_captureEdmaISR$37$E:
;** --------------------------------------------------------------------------*
L72:    
DW$L$_captureEdmaISR$38$B:
	.dwpsn	"vportcap_RAW.c",532,21
;----------------------------------------------------------------------
; 532 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B4       ; |532| 
           MVK     .L2     -1,B5             ; |532| 
           NOP             2
           MVK     .S2     125,B6            ; |532| 
           STW     .D2T2   B5,*+B4[B6]       ; |532| 
DW$L$_captureEdmaISR$38$E:
;** --------------------------------------------------------------------------*
L73:    
DW$L$_captureEdmaISR$39$B:
	.dwendtag DW$160

	.dwpsn	"vportcap_RAW.c",417,41
           LDW     .D2T2   *+SP(8),B4        ; |417| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |417| 
           STW     .D2T2   B4,*+SP(8)        ; |417| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",417,20
           CMPLT   .L2     B4,2,B0           ; |417| 
   [ B0]   BNOP    .S1     L56,5             ; |417| 
           ; BRANCHCC OCCURS {L56}           ; |417| 
DW$L$_captureEdmaISR$39$E:
;** --------------------------------------------------------------------------*
L74:    
DW$L$_captureEdmaISR$40$B:
	.dwpsn	"vportcap_RAW.c",416,34
           LDW     .D2T2   *+SP(12),B4       ; |416| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |416| 
           STW     .D2T2   B4,*+SP(12)       ; |416| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",416,16
           CMPLT   .L2     B4,3,B0           ; |416| 
   [ B0]   BNOP    .S1     L55,5             ; |416| 
           ; BRANCHCC OCCURS {L55}           ; |416| 
DW$L$_captureEdmaISR$40$E:
;** --------------------------------------------------------------------------*
L75:    
	.dwpsn	"vportcap_RAW.c",537,1
           LDW     .D2T2   *++SP(32),B3      ; |537| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |537| 
           ; BRANCH OCCURS {B3}              ; |537| 

DW$162	.dwtag  DW_TAG_loop
	.dwattr DW$162, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L55:1:1301635728")
	.dwattr DW$162, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$162, DW_AT_begin_line(0x1a0)
	.dwattr DW$162, DW_AT_end_line(0x218)
DW$163	.dwtag  DW_TAG_loop_range
	.dwattr DW$163, DW_AT_low_pc(DW$L$_captureEdmaISR$2$B)
	.dwattr DW$163, DW_AT_high_pc(DW$L$_captureEdmaISR$2$E)
DW$164	.dwtag  DW_TAG_loop_range
	.dwattr DW$164, DW_AT_low_pc(DW$L$_captureEdmaISR$40$B)
	.dwattr DW$164, DW_AT_high_pc(DW$L$_captureEdmaISR$40$E)

DW$165	.dwtag  DW_TAG_loop
	.dwattr DW$165, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L56:2:1301635728")
	.dwattr DW$165, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$165, DW_AT_begin_line(0x1a1)
	.dwattr DW$165, DW_AT_end_line(0x217)
DW$166	.dwtag  DW_TAG_loop_range
	.dwattr DW$166, DW_AT_low_pc(DW$L$_captureEdmaISR$3$B)
	.dwattr DW$166, DW_AT_high_pc(DW$L$_captureEdmaISR$3$E)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_captureEdmaISR$29$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_captureEdmaISR$29$E)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$_captureEdmaISR$30$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$_captureEdmaISR$30$E)
DW$169	.dwtag  DW_TAG_loop_range
	.dwattr DW$169, DW_AT_low_pc(DW$L$_captureEdmaISR$25$B)
	.dwattr DW$169, DW_AT_high_pc(DW$L$_captureEdmaISR$25$E)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$_captureEdmaISR$26$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$_captureEdmaISR$26$E)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$_captureEdmaISR$18$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$_captureEdmaISR$18$E)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_captureEdmaISR$19$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_captureEdmaISR$19$E)
DW$173	.dwtag  DW_TAG_loop_range
	.dwattr DW$173, DW_AT_low_pc(DW$L$_captureEdmaISR$9$B)
	.dwattr DW$173, DW_AT_high_pc(DW$L$_captureEdmaISR$9$E)
DW$174	.dwtag  DW_TAG_loop_range
	.dwattr DW$174, DW_AT_low_pc(DW$L$_captureEdmaISR$10$B)
	.dwattr DW$174, DW_AT_high_pc(DW$L$_captureEdmaISR$10$E)
DW$175	.dwtag  DW_TAG_loop_range
	.dwattr DW$175, DW_AT_low_pc(DW$L$_captureEdmaISR$11$B)
	.dwattr DW$175, DW_AT_high_pc(DW$L$_captureEdmaISR$11$E)
DW$176	.dwtag  DW_TAG_loop_range
	.dwattr DW$176, DW_AT_low_pc(DW$L$_captureEdmaISR$12$B)
	.dwattr DW$176, DW_AT_high_pc(DW$L$_captureEdmaISR$12$E)
DW$177	.dwtag  DW_TAG_loop_range
	.dwattr DW$177, DW_AT_low_pc(DW$L$_captureEdmaISR$6$B)
	.dwattr DW$177, DW_AT_high_pc(DW$L$_captureEdmaISR$6$E)
DW$178	.dwtag  DW_TAG_loop_range
	.dwattr DW$178, DW_AT_low_pc(DW$L$_captureEdmaISR$7$B)
	.dwattr DW$178, DW_AT_high_pc(DW$L$_captureEdmaISR$7$E)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$_captureEdmaISR$8$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$_captureEdmaISR$8$E)
DW$180	.dwtag  DW_TAG_loop_range
	.dwattr DW$180, DW_AT_low_pc(DW$L$_captureEdmaISR$13$B)
	.dwattr DW$180, DW_AT_high_pc(DW$L$_captureEdmaISR$13$E)
DW$181	.dwtag  DW_TAG_loop_range
	.dwattr DW$181, DW_AT_low_pc(DW$L$_captureEdmaISR$14$B)
	.dwattr DW$181, DW_AT_high_pc(DW$L$_captureEdmaISR$14$E)
DW$182	.dwtag  DW_TAG_loop_range
	.dwattr DW$182, DW_AT_low_pc(DW$L$_captureEdmaISR$15$B)
	.dwattr DW$182, DW_AT_high_pc(DW$L$_captureEdmaISR$15$E)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$_captureEdmaISR$16$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$_captureEdmaISR$16$E)
DW$184	.dwtag  DW_TAG_loop_range
	.dwattr DW$184, DW_AT_low_pc(DW$L$_captureEdmaISR$17$B)
	.dwattr DW$184, DW_AT_high_pc(DW$L$_captureEdmaISR$17$E)
DW$185	.dwtag  DW_TAG_loop_range
	.dwattr DW$185, DW_AT_low_pc(DW$L$_captureEdmaISR$20$B)
	.dwattr DW$185, DW_AT_high_pc(DW$L$_captureEdmaISR$20$E)
DW$186	.dwtag  DW_TAG_loop_range
	.dwattr DW$186, DW_AT_low_pc(DW$L$_captureEdmaISR$21$B)
	.dwattr DW$186, DW_AT_high_pc(DW$L$_captureEdmaISR$21$E)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$_captureEdmaISR$22$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$_captureEdmaISR$22$E)
DW$188	.dwtag  DW_TAG_loop_range
	.dwattr DW$188, DW_AT_low_pc(DW$L$_captureEdmaISR$23$B)
	.dwattr DW$188, DW_AT_high_pc(DW$L$_captureEdmaISR$23$E)
DW$189	.dwtag  DW_TAG_loop_range
	.dwattr DW$189, DW_AT_low_pc(DW$L$_captureEdmaISR$24$B)
	.dwattr DW$189, DW_AT_high_pc(DW$L$_captureEdmaISR$24$E)
DW$190	.dwtag  DW_TAG_loop_range
	.dwattr DW$190, DW_AT_low_pc(DW$L$_captureEdmaISR$27$B)
	.dwattr DW$190, DW_AT_high_pc(DW$L$_captureEdmaISR$27$E)
DW$191	.dwtag  DW_TAG_loop_range
	.dwattr DW$191, DW_AT_low_pc(DW$L$_captureEdmaISR$28$B)
	.dwattr DW$191, DW_AT_high_pc(DW$L$_captureEdmaISR$28$E)
DW$192	.dwtag  DW_TAG_loop_range
	.dwattr DW$192, DW_AT_low_pc(DW$L$_captureEdmaISR$31$B)
	.dwattr DW$192, DW_AT_high_pc(DW$L$_captureEdmaISR$31$E)
DW$193	.dwtag  DW_TAG_loop_range
	.dwattr DW$193, DW_AT_low_pc(DW$L$_captureEdmaISR$32$B)
	.dwattr DW$193, DW_AT_high_pc(DW$L$_captureEdmaISR$32$E)
DW$194	.dwtag  DW_TAG_loop_range
	.dwattr DW$194, DW_AT_low_pc(DW$L$_captureEdmaISR$33$B)
	.dwattr DW$194, DW_AT_high_pc(DW$L$_captureEdmaISR$33$E)
DW$195	.dwtag  DW_TAG_loop_range
	.dwattr DW$195, DW_AT_low_pc(DW$L$_captureEdmaISR$34$B)
	.dwattr DW$195, DW_AT_high_pc(DW$L$_captureEdmaISR$34$E)
DW$196	.dwtag  DW_TAG_loop_range
	.dwattr DW$196, DW_AT_low_pc(DW$L$_captureEdmaISR$4$B)
	.dwattr DW$196, DW_AT_high_pc(DW$L$_captureEdmaISR$4$E)
DW$197	.dwtag  DW_TAG_loop_range
	.dwattr DW$197, DW_AT_low_pc(DW$L$_captureEdmaISR$5$B)
	.dwattr DW$197, DW_AT_high_pc(DW$L$_captureEdmaISR$5$E)
DW$198	.dwtag  DW_TAG_loop_range
	.dwattr DW$198, DW_AT_low_pc(DW$L$_captureEdmaISR$35$B)
	.dwattr DW$198, DW_AT_high_pc(DW$L$_captureEdmaISR$35$E)
DW$199	.dwtag  DW_TAG_loop_range
	.dwattr DW$199, DW_AT_low_pc(DW$L$_captureEdmaISR$36$B)
	.dwattr DW$199, DW_AT_high_pc(DW$L$_captureEdmaISR$36$E)
DW$200	.dwtag  DW_TAG_loop_range
	.dwattr DW$200, DW_AT_low_pc(DW$L$_captureEdmaISR$37$B)
	.dwattr DW$200, DW_AT_high_pc(DW$L$_captureEdmaISR$37$E)
DW$201	.dwtag  DW_TAG_loop_range
	.dwattr DW$201, DW_AT_low_pc(DW$L$_captureEdmaISR$38$B)
	.dwattr DW$201, DW_AT_high_pc(DW$L$_captureEdmaISR$38$E)
DW$202	.dwtag  DW_TAG_loop_range
	.dwattr DW$202, DW_AT_low_pc(DW$L$_captureEdmaISR$39$B)
	.dwattr DW$202, DW_AT_high_pc(DW$L$_captureEdmaISR$39$E)
	.dwendtag DW$165

	.dwendtag DW$162

	.dwattr DW$153, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$153, DW_AT_end_line(0x219)
	.dwattr DW$153, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$153

	.sect	".text"

DW$203	.dwtag  DW_TAG_subprogram, DW_AT_name("_configCh"), DW_AT_symbol_name("__configCh")
	.dwattr DW$203, DW_AT_low_pc(__configCh)
	.dwattr DW$203, DW_AT_high_pc(0x00)
	.dwattr DW$203, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$203, DW_AT_begin_line(0x220)
	.dwattr DW$203, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",548,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 544 | static Int _configCh(                                                  
; 545 | Ptr                 chanp,                                             
; 546 | VPORTCAP_Params  *params                                               
; 547 | )                                                                      
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
;*   Local Frame Size  : 0 Args + 52 Auto + 4 Save = 56 byte                  *
;******************************************************************************
__configCh:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(56)      ; |548| 
           NOP             2
	.dwcfa	0x0e, 56
	.dwcfa	0x80, 19, 0
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$204, DW_AT_type(*DW$T$37)
	.dwattr DW$204, DW_AT_location[DW_OP_reg4]
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$205, DW_AT_type(*DW$T$155)
	.dwattr DW$205, DW_AT_location[DW_OP_reg20]
DW$206	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$206, DW_AT_type(*DW$T$37)
	.dwattr DW$206, DW_AT_location[DW_OP_breg31 4]
DW$207	.dwtag  DW_TAG_variable, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$207, DW_AT_type(*DW$T$155)
	.dwattr DW$207, DW_AT_location[DW_OP_breg31 8]
DW$208	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$208, DW_AT_type(*DW$T$207)
	.dwattr DW$208, DW_AT_location[DW_OP_breg31 12]
DW$209	.dwtag  DW_TAG_variable, DW_AT_name("vcCtl"), DW_AT_symbol_name("_vcCtl")
	.dwattr DW$209, DW_AT_type(*DW$T$161)
	.dwattr DW$209, DW_AT_location[DW_OP_breg31 16]
DW$210	.dwtag  DW_TAG_variable, DW_AT_name("fld1Strt"), DW_AT_symbol_name("_fld1Strt")
	.dwattr DW$210, DW_AT_type(*DW$T$161)
	.dwattr DW$210, DW_AT_location[DW_OP_breg31 20]
DW$211	.dwtag  DW_TAG_variable, DW_AT_name("fld2Strt"), DW_AT_symbol_name("_fld2Strt")
	.dwattr DW$211, DW_AT_type(*DW$T$161)
	.dwattr DW$211, DW_AT_location[DW_OP_breg31 24]
DW$212	.dwtag  DW_TAG_variable, DW_AT_name("fld1Stop"), DW_AT_symbol_name("_fld1Stop")
	.dwattr DW$212, DW_AT_type(*DW$T$161)
	.dwattr DW$212, DW_AT_location[DW_OP_breg31 28]
DW$213	.dwtag  DW_TAG_variable, DW_AT_name("fld2Stop"), DW_AT_symbol_name("_fld2Stop")
	.dwattr DW$213, DW_AT_type(*DW$T$161)
	.dwattr DW$213, DW_AT_location[DW_OP_breg31 32]
DW$214	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$214, DW_AT_type(*DW$T$162)
	.dwattr DW$214, DW_AT_location[DW_OP_breg31 36]
DW$215	.dwtag  DW_TAG_variable, DW_AT_name("retVal"), DW_AT_symbol_name("_retVal")
	.dwattr DW$215, DW_AT_type(*DW$T$22)
	.dwattr DW$215, DW_AT_location[DW_OP_breg31 40]
DW$216	.dwtag  DW_TAG_variable, DW_AT_name("numPixels"), DW_AT_symbol_name("_numPixels")
	.dwattr DW$216, DW_AT_type(*DW$T$22)
	.dwattr DW$216, DW_AT_location[DW_OP_breg31 44]
DW$217	.dwtag  DW_TAG_variable, DW_AT_name("numLines"), DW_AT_symbol_name("_numLines")
	.dwattr DW$217, DW_AT_type(*DW$T$22)
	.dwattr DW$217, DW_AT_location[DW_OP_breg31 48]
DW$218	.dwtag  DW_TAG_variable, DW_AT_name("numCPixels"), DW_AT_symbol_name("_numCPixels")
	.dwattr DW$218, DW_AT_type(*DW$T$22)
	.dwattr DW$218, DW_AT_location[DW_OP_breg31 52]
           STW     .D2T2   B4,*+SP(8)        ; |548| 
           STW     .D2T1   A4,*+SP(4)        ; |548| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",549,21
;----------------------------------------------------------------------
; 549 | _VPORT_ChanObj* chan= (_VPORT_ChanObj *)chanp;                         
; 550 | volatile Int vpCtl, vcCtl, fld1Strt, fld2Strt, fld1Stop, fld2Stop;     
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |549| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",551,19
;----------------------------------------------------------------------
; 551 | volatile Int* base = (volatile Int *)chan->base;
;     |                                                                        
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T1   *+A3(12),A3       ; |551| 
           NOP             4
           STW     .D2T1   A3,*+SP(36)       ; |551| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",552,9
;----------------------------------------------------------------------
; 552 | Int retVal = IOM_COMPLETED;                                            
; 553 | Int numPixels, numLines, numCPixels;                                   
; 555 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 556 | // set 'mode' to 'cmode'.  This will allow for RAW mode identification 
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |552| 
           STW     .D2T2   B4,*+SP(40)       ; |552| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",558,5
;----------------------------------------------------------------------
; 558 | chan->mode = params->cmode;                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |558| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |558| 
           MVK     .S2     126,B5            ; |558| 
           LDW     .D1T1   *A3,A3            ; |558| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |558| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",561,5
;----------------------------------------------------------------------
; 561 | if(chan->status & _VPORT_OPENED) {                                     
; 572 | //modified by pred                                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |561| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |561| 
           NOP             4
           AND     .L2     1,B4,B0           ; |561| 
   [!B0]   BNOP    .S1     L97,5             ; |561| 
           ; BRANCHCC OCCURS {L97}           ; |561| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",573,9
;----------------------------------------------------------------------
; 573 | vcCtl = VP_VCACTL_RMK(0,1,0,params->fldInv,                            
; 574 |     params->extCtl, params->fldDect, params->vCtRst,                   
; 575 |     params->hCtRst, 0, params->bpk10Bit, 0, 0,                         
; 576 |     params->resmpl,params->scale,0,                                    
; 577 |     ((params->fldOp & 4) >> 2),                                        
; 578 |     ((params->fldOp & 2) >> 1),                                        
; 579 |     (params->fldOp & 1),                                               
; 580 |     params->cmode);                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A7        ; |573| 
           ZERO    .S1     A20               ; |573| 
           ZERO    .S1     A30               ; |573| 
           MVK     .S1     1024,A23          ; |573| 
           MVKH    .S1     0x100000,A20      ; |573| 

           MV      .L1     A7,A4             ; |573| 
||         LDW     .D1T1   *+A7(32),A17      ; |573| 

           MV      .L1     A7,A6             ; |573| 
||         LDW     .D1T1   *+A4(4),A29       ; |573| 

           MV      .L1     A7,A5             ; |573| 
||         MV      .L2X    A7,B4             ; |573| 
||         LDW     .D1T1   *+A6(28),A16      ; |573| 

           MV      .L1     A7,A8             ; |573| 
||         LDW     .D2T2   *+B4(36),B4       ; |573| 
||         LDW     .D1T1   *+A5(24),A5       ; |573| 

           LDW     .D1T1   *+A8(16),A8       ; |573| 
||         MV      .L1     A7,A9             ; |573| 
||         MVKH    .S1     0x20000,A30       ; |573| 

           SHL     .S1     A17,19,A22        ; |573| 
||         LDW     .D1T1   *+A9(20),A31      ; |573| 
||         MV      .L1     A7,A3             ; |573| 

           EXTU    .S1     A29,29,31,A24     ; |573| 
||         LDW     .D1T1   *+A3(12),A3       ; |573| 
||         ZERO    .L2     B5                ; |573| 

           SHL     .S1     A16,18,A21        ; |573| 
||         MVKH    .S2     0x80000,B5        ; |573| 

           SHL     .S1     A5,17,A18         ; |573| 
||         SHL     .S2     B4,20,B6          ; |573| 
||         LDW     .D1T1   *+A7(8),A27       ; |573| 
||         ZERO    .L2     B31               ; |573| 

           LDW     .D1T1   *+A6(4),A6        ; |573| 
||         AND     .L1X    B5,A22,A1         ; |573| 
||         SHL     .S1     A8,13,A28         ; |573| 
||         MVKH    .S2     0x40000,B31       ; |573| 

           MV      .L1     A4,A25            ; |573| 
||         AND     .D1X    A20,B6,A20        ; |573| 
||         SHL     .S1     A31,16,A19        ; |573| 

           SHL     .S1     A3,10,A26         ; |573| 
||         ZERO    .L1     A29               ; |573| 
||         AND     .D1X    B31,A21,A0        ; |573| 

           LDW     .D1T1   *+A4(4),A2        ; |573| 
||         MVKH    .S1     0x10000,A29       ; |573| 
||         OR      .L1     A1,A20,A20        ; |573| 
||         MVK     .S2     24576,B30         ; |573| 

           SHL     .S1     A27,8,A8          ; |573| 
||         OR      .L1     A0,A20,A18        ; |573| 
||         AND     .D1     A30,A18,A9        ; |573| 
||         MVK     .S2     256,B29           ; |573| 

           AND     .L1X    B30,A28,A17       ; |573| 
||         AND     .S1     A29,A19,A9        ; |573| 
||         OR      .D1     A9,A18,A16        ; |573| 

           AND     .L1X    B29,A8,A8         ; |573| 
||         OR      .D1     A9,A16,A16        ; |573| 
||         EXTU    .S1     A6,30,31,A6       ; |573| 

           SHL     .S1     A24,6,A5          ; |573| 
||         OR      .L1     A17,A16,A9        ; |573| 
||         AND     .D1     A23,A26,A7        ; |573| 

           LDW     .D1T1   *A25,A3           ; |573| 
||         OR      .L1     A7,A9,A9          ; |573| 
||         MVK     .S1     64,A0             ; |573| 

           OR      .L1     A8,A9,A8          ; |573| 
||         SHL     .S1     A6,5,A7           ; |573| 
||         MVK     .S2     32,B28            ; |573| 

           MVK     .S1     16,A17            ; |573| 
||         AND     .L1     1,A2,A5           ; |573| 
||         AND     .D1     A0,A5,A6          ; |573| 

           OR      .L1     A6,A8,A7          ; |573| 
||         AND     .D1X    B28,A7,A5         ; |573| 
||         SHL     .S1     A5,4,A6           ; |573| 

           AND     .L1     A17,A6,A5         ; |573| 
||         OR      .S1     A5,A7,A4          ; |573| 

           OR      .L1     A5,A4,A4          ; |573| 
||         AND     .S1     7,A3,A3           ; |573| 

           OR      .L1     A3,A4,A3          ; |573| 
           SET     .S1     A3,30,30,A3       ; |573| 
           STW     .D2T1   A3,*+SP(16)       ; |573| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",582,9
;----------------------------------------------------------------------
; 582 | fld1Strt = params->fldXStrt1 + (params->fldYStrt1 << 16);              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |582| 
           NOP             4

           LDHU    .D1T1   *+A3(46),A3       ; |582| 
||         MV      .L2X    A3,B4             ; |582| 

           NOP             1
           LDHU    .D2T2   *+B4(44),B4       ; |582| 
           NOP             2
           SHL     .S1     A3,16,A3          ; |582| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |582| 
           STW     .D2T2   B4,*+SP(20)       ; |582| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",583,9
;----------------------------------------------------------------------
; 583 | fld1Stop = params->fldXStop1 + (params->fldYStop1 << 16);              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |583| 
           NOP             4

           LDHU    .D1T1   *+A3(54),A3       ; |583| 
||         MV      .L2X    A3,B4             ; |583| 

           NOP             1
           LDHU    .D2T2   *+B4(52),B4       ; |583| 
           NOP             2
           SHL     .S1     A3,16,A3          ; |583| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |583| 
           STW     .D2T2   B4,*+SP(28)       ; |583| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",584,9
;----------------------------------------------------------------------
; 584 | fld2Strt = params->fldXStrt2 + (params->fldYStrt2 << 16);              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |584| 
           NOP             4

           LDHU    .D1T1   *+A3(50),A3       ; |584| 
||         MV      .L2X    A3,B4             ; |584| 

           NOP             1
           LDHU    .D2T2   *+B4(48),B4       ; |584| 
           NOP             2
           SHL     .S1     A3,16,A3          ; |584| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |584| 
           STW     .D2T2   B4,*+SP(24)       ; |584| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",585,9
;----------------------------------------------------------------------
; 585 | fld2Stop = params->fldXStop2 + (params->fldYStop2 << 16);              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |585| 
           NOP             4

           LDHU    .D1T1   *+A3(58),A3       ; |585| 
||         MV      .L2X    A3,B4             ; |585| 

           NOP             1
           LDHU    .D2T2   *+B4(56),B4       ; |585| 
           NOP             2
           SHL     .S1     A3,16,A3          ; |585| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |585| 
           STW     .D2T2   B4,*+SP(32)       ; |585| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",586,9
;----------------------------------------------------------------------
; 586 | if(params->fldOp == VPORT_FLDOP_FRAME) {                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |586| 
           NOP             4
           LDW     .D1T2   *+A3(4),B4        ; |586| 
           NOP             4
           CMPEQ   .L2     B4,4,B0           ; |586| 
   [!B0]   BNOP    .S1     L77,5             ; |586| 
           ; BRANCHCC OCCURS {L77}           ; |586| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",587,13
;----------------------------------------------------------------------
; 587 | assert(params->fldXStop1 == params->fldXStop2);                        
;----------------------------------------------------------------------
           MV      .L2X    A3,B4

           LDHU    .D2T2   *+B4(56),B4       ; |587| 
||         LDHU    .D1T1   *+A3(52),A3       ; |587| 

           NOP             2
           MVKL    .S1     SL5+0,A4          ; |587| 
           MVKH    .S1     SL5+0,A4          ; |587| 
           CMPEQ   .L1X    A3,B4,A0          ; |587| 
   [ A0]   BNOP    .S1     L76,5             ; |587| 
           ; BRANCHCC OCCURS {L76}           ; |587| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |587| 
           ADDKPC  .S2     RL36,B3,4         ; |587| 
RL36:      ; CALL OCCURS {__abort_msg}       ; |587| 
;** --------------------------------------------------------------------------*
L76:    
	.dwpsn	"vportcap_RAW.c",588,13
;----------------------------------------------------------------------
; 588 | assert(params->fldXStrt1 == params->fldXStrt2);                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |588| 
           NOP             2
           MVKL    .S1     SL6+0,A4          ; |588| 
           MVKH    .S1     SL6+0,A4          ; |588| 
           MV      .L2X    A3,B4             ; |588| 

           LDHU    .D2T2   *+B4(48),B4       ; |588| 
||         LDHU    .D1T1   *+A3(44),A3       ; |588| 

           NOP             4
           CMPEQ   .L1X    A3,B4,A0          ; |588| 
   [ A0]   BNOP    .S1     L77,5             ; |588| 
           ; BRANCHCC OCCURS {L77}           ; |588| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |588| 
           ADDKPC  .S2     RL37,B3,4         ; |588| 
RL37:      ; CALL OCCURS {__abort_msg}       ; |588| 
;** --------------------------------------------------------------------------*
L77:    
	.dwpsn	"vportcap_RAW.c",590,9
;----------------------------------------------------------------------
; 590 | base[_VP_VCACTL_OFFSETA]   = vcCtl;                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |590| 
           LDW     .D2T1   *+SP(36),A4       ; |590| 
           NOP             4
           STW     .D1T1   A3,*+A4(4)        ; |590| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",591,9
;----------------------------------------------------------------------
; 591 | base[_VP_VCASTRT1_OFFSETA] = fld1Strt;                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |591| 
           LDW     .D2T1   *+SP(36),A3       ; |591| 
           NOP             4
           STW     .D1T2   B4,*+A3(8)        ; |591| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",592,9
;----------------------------------------------------------------------
; 592 | base[_VP_VCASTOP1_OFFSETA] = fld1Stop;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(36),A3       ; |592| 
           LDW     .D2T2   *+SP(28),B4       ; |592| 
           NOP             4
           STW     .D1T2   B4,*+A3(12)       ; |592| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",593,9
;----------------------------------------------------------------------
; 593 | base[_VP_VCASTRT2_OFFSETA] = fld2Strt;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(36),A3       ; |593| 
           LDW     .D2T2   *+SP(24),B4       ; |593| 
           NOP             4
           STW     .D1T2   B4,*+A3(16)       ; |593| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",594,9
;----------------------------------------------------------------------
; 594 | base[_VP_VCASTOP2_OFFSETA] = fld2Stop;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(36),A3       ; |594| 
           LDW     .D2T2   *+SP(32),B4       ; |594| 
           NOP             4
           STW     .D1T2   B4,*+A3(20)       ; |594| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",595,9
;----------------------------------------------------------------------
; 595 | numPixels = params->fldXStop1 - params->fldXStrt1 + 1;/* line size */  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |595| 
           NOP             4
           MV      .L1X    B4,A3             ; |595| 

           LDHU    .D1T1   *+A3(52),A3       ; |595| 
||         LDHU    .D2T2   *+B4(44),B4       ; |595| 

           NOP             4
           SUB     .L1X    A3,B4,A3          ; |595| 
           ADD     .L1     1,A3,A3           ; |595| 
           STW     .D2T1   A3,*+SP(44)       ; |595| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",596,9
;----------------------------------------------------------------------
; 596 | numLines = 0;                                                          
; 598 | // RAW CAPTURE INITIALIZATION SPECIFIC Complete RAW capture mode regist
;     | er initialization                                                      
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |596| 
           STW     .D2T2   B4,*+SP(48)       ; |596| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",599,9
;----------------------------------------------------------------------
; 599 | if(chan->mode & _VPORT_MASK_RAW)                                       
; 601 |         // RAW CAPTURE INITIALIZATION SPECIFIC                         
; 602 |         // enable SSE, set VCVBLNKP.                                   
; 603 |         // Note.  VCYSTART is not used in raw mode.  Will be set to 1. 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |599| 
           NOP             3
           MVK     .S1     126,A4            ; |599| 
           LDW     .D1T1   *+A3[A4],A3       ; |599| 
           NOP             4
           AND     .L1     2,A3,A0           ; |599| 
   [!A0]   BNOP    .S1     L78,5             ; |599| 
           ; BRANCHCC OCCURS {L78}           ; |599| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",604,10
;----------------------------------------------------------------------
; 604 | base[_VP_VCASTRT1_OFFSETA] = VP_VCASTRT1_RMK(VP_VCASTRT1_VCYSTART_OF(1)
;     | ,                                                                      
; 605 |                                                                 params-
;     | >sse,                                                                  
; 606 |                                                                 params-
;     | >vcvblnkp );                                                           
; 608 | // Set upper and lower 12 bits of data size                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |604| 
           NOP             3
           LDW     .D2T2   *+SP(36),B5       ; |604| 
           LDHU    .D1T1   *+A3(40),A4       ; |604| 
           MV      .L2X    A3,B4             ; |604| 
           LDHU    .D2T2   *+B4(42),B4       ; |604| 
           MVKL    .S1     0x8000,A31        ; |604| 
           MVKH    .S1     0x8000,A31        ; |604| 
           SHL     .S1     A4,15,A4          ; |604| 
           AND     .L1     A31,A4,A3         ; |604| 
           EXTU    .S2     B4,20,20,B4       ; |604| 
           OR      .L2X    B4,A3,B4          ; |604| 
           SET     .S2     B4,16,16,B4       ; |604| 
           STW     .D2T2   B4,*+B5(8)        ; |604| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",609,10
;----------------------------------------------------------------------
; 609 | base[_VP_VCASTOP1_OFFSETA] = VP_VCASTOP1_RMK( (  ( ( params->fldXStop1+
;     | 1 ) * params->fldYStop1 ) >> 12 ),                                     
; 610 | 
;     |                  (0xFFF & ( ( params->fldXStop1+1 ) * params->fldYStop1
;     |  ) ) );                                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |609| 
           NOP             1
           ZERO    .L2     B31               ; |609| 
           LDW     .D2T2   *+SP(36),B5       ; |609| 
           MVKH    .S2     0xfff0000,B31     ; |609| 
           MV      .L1X    B4,A5             ; |609| 
           MV      .L1X    B4,A3             ; |609| 

           LDHU    .D2T2   *+B4(52),B4       ; |609| 
||         MV      .L1X    B4,A4             ; |609| 

           LDHU    .D1T1   *+A5(54),A5       ; |609| 
           LDHU    .D1T1   *+A4(52),A4       ; |609| 
           LDHU    .D1T1   *+A3(54),A3       ; |609| 
           NOP             1
           ADD     .L2     1,B4,B4           ; |609| 

           MPYU    .M2X    A5,B4,B4          ; |609| 
||         MPYLHU  .M1X    A5,B4,A5          ; |609| 

           ADD     .L1     1,A4,A4           ; |609| 

           SHL     .S1     A5,16,A6          ; |609| 
||         MPYLHU  .M1     A3,A4,A30         ; |609| 

           ADD     .L1X    B4,A6,A3          ; |609| 
||         MPYU    .M1     A3,A4,A29         ; |609| 

           SHR     .S1     A3,12,A3          ; |609| 

           SHL     .S1     A3,16,A3          ; |609| 
||         SHL     .S2X    A30,16,B6         ; |609| 

           AND     .L1X    B31,A3,A3         ; |609| 
||         ADD     .L2X    A29,B6,B4         ; |609| 

           EXTU    .S2     B4,20,20,B4       ; |609| 
           OR      .L2X    B4,A3,B4          ; |609| 
           STW     .D2T2   B4,*+B5(12)       ; |609| 
;** --------------------------------------------------------------------------*
L78:    
	.dwpsn	"vportcap_RAW.c",613,9
;----------------------------------------------------------------------
; 613 | if(params->fldOp != VPORT_FLDOP_FLD2){                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |613| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |613| 
           NOP             4
           CMPEQ   .L2     B4,2,B0           ; |613| 
   [ B0]   BNOP    .S1     L79,5             ; |613| 
           ; BRANCHCC OCCURS {L79}           ; |613| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",614,13
;----------------------------------------------------------------------
; 614 | numLines += params->fldYStop1 - params->fldYStrt1 + 1;                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |614| 
           NOP             3
           LDW     .D2T2   *+SP(48),B5       ; |614| 
           MV      .L1X    B4,A3             ; |614| 

           LDHU    .D1T1   *+A3(54),A3       ; |614| 
||         LDHU    .D2T2   *+B4(46),B4       ; |614| 

           NOP             4
           SUB     .L1X    A3,B4,A3          ; |614| 
           ADD     .L1X    B5,A3,A3          ; |614| 
           ADD     .L1     1,A3,A3           ; |614| 
           STW     .D2T1   A3,*+SP(48)       ; |614| 
;** --------------------------------------------------------------------------*
L79:    
	.dwpsn	"vportcap_RAW.c",616,9
;----------------------------------------------------------------------
; 616 | chan->numLinesFld1 = numLines;                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |616| 
           LDW     .D2T2   *+SP(48),B4       ; |616| 
           NOP             3
           MVK     .S1     117,A4            ; |616| 
           STW     .D1T2   B4,*+A3[A4]       ; |616| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",618,9
;----------------------------------------------------------------------
; 618 | if(params->fldOp == VPORT_FLDOP_FLD2                                   
; 619 |   || params->fldOp == VPORT_FLDOP_FRAME){                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |618| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |618| 
           NOP             4
           CMPEQ   .L2     B4,2,B0           ; |618| 
   [ B0]   BNOP    .S1     L80,4             ; |618| 
           LDW     .D2T2   *+SP(8),B4        ; |618| 
           ; BRANCHCC OCCURS {L80}           ; |618| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |618| 
           NOP             4
           CMPEQ   .L2     B4,4,B0           ; |618| 
;** --------------------------------------------------------------------------*
L80:    
   [!B0]   BNOP    .S1     L81,5             ; |618| 
           ; BRANCHCC OCCURS {L81}           ; |618| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",620,13
;----------------------------------------------------------------------
; 620 | numLines += params->fldYStop2 - params->fldYStrt2 + 1;                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |620| 
           NOP             3
           LDW     .D2T2   *+SP(48),B5       ; |620| 
           MV      .L1X    B4,A3             ; |620| 

           LDHU    .D1T1   *+A3(58),A3       ; |620| 
||         LDHU    .D2T2   *+B4(50),B4       ; |620| 

           NOP             4
           SUB     .L1X    A3,B4,A3          ; |620| 
           ADD     .L1X    B5,A3,A3          ; |620| 
           ADD     .L1     1,A3,A3           ; |620| 
           STW     .D2T1   A3,*+SP(48)       ; |620| 
;** --------------------------------------------------------------------------*
L81:    
	.dwpsn	"vportcap_RAW.c",622,9
;----------------------------------------------------------------------
; 622 | chan->resmpl = params->resmpl;                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |622| 
           LDW     .D2T2   *+SP(12),B4       ; |622| 
           NOP             3
           LDHU    .D1T1   *+A3(12),A3       ; |622| 
           NOP             3
           ADDK    .S2     448,B4            ; |622| 
           STH     .D2T1   A3,*B4            ; |622| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",623,9
;----------------------------------------------------------------------
; 623 | chan->scale = params->scale;                                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |623| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |623| 
           MVK     .S2     223,B5            ; |623| 
           LDHU    .D1T1   *+A3(8),A3        ; |623| 
           NOP             4
           STH     .D2T1   A3,*+B4[B5]       ; |623| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",624,9
;----------------------------------------------------------------------
; 624 | chan->numLines = numLines;                                             
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |624| 
           LDW     .D2T2   *+SP(48),B4       ; |624| 
           NOP             3
           MVK     .S1     115,A4            ; |624| 
           STW     .D1T2   B4,*+A3[A4]       ; |624| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",625,9
;----------------------------------------------------------------------
; 625 | numPixels >>= params->scale;                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |625| 
           NOP             3
           LDW     .D2T2   *+SP(44),B5       ; |625| 
           LDW     .D2T2   *+B4(8),B4        ; |625| 
           NOP             4
           SHR     .S2     B5,B4,B4          ; |625| 
           STW     .D2T2   B4,*+SP(44)       ; |625| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",626,9
;----------------------------------------------------------------------
; 626 | numCPixels = numPixels >> 1;                                           
;----------------------------------------------------------------------
           SHR     .S2     B4,1,B4           ; |626| 
           STW     .D2T2   B4,*+SP(52)       ; |626| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",628,9
;----------------------------------------------------------------------
; 628 | chan->numPixels = numPixels;                                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |628| 
           LDW     .D2T1   *+SP(44),A3       ; |628| 
           NOP             3
           MVK     .S1     116,A5            ; |628| 
           STW     .D1T1   A3,*+A4[A5]       ; |628| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",630,9
;----------------------------------------------------------------------
; 630 | if(params->cmode & _VPORT_MASK_10BIT){                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |630| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |630| 
           NOP             4
           AND     .L1     1,A3,A0           ; |630| 
   [!A0]   BNOP    .S1     L87,5             ; |630| 
           ; BRANCHCC OCCURS {L87}           ; |630| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",632,13
;----------------------------------------------------------------------
; 632 | if( params->bpk10Bit == VPORTCAP_BPK_10BIT_ZERO_EXTENDED               
; 633 |  || params->bpk10Bit == VPORTCAP_BPK_10BIT_SIGN_EXTENDED){             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |632| 
           NOP             4
           LDW     .D2T2   *+B4(16),B4       ; |632| 
           NOP             4
           CMPEQ   .L2     B4,0,B0           ; |632| 
   [ B0]   BNOP    .S1     L82,4             ; |632| 
           LDW     .D2T2   *+SP(8),B4        ; |632| 
           ; BRANCHCC OCCURS {L82}           ; |632| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B4(16),B4       ; |632| 
           NOP             4
           CMPEQ   .L2     B4,1,B0           ; |632| 
;** --------------------------------------------------------------------------*
L82:    
   [!B0]   BNOP    .S1     L85,5             ; |632| 
           ; BRANCHCC OCCURS {L85}           ; |632| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",634,17
;----------------------------------------------------------------------
; 634 | chan->yPitch = (numPixels * 2 + 7) & (~ 7);                            
; 636 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 637 | // If raw mode, set cPitch = 0;                                        
; 638 | //chan->cPitch = (chan->mode & _VPORT_MASK_RAW) ? (0) : (numCPixels * 2
;     |  + 7) & (~ 7);                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(44),A3       ; |634| 
           NOP             1
           LDW     .D2T2   *+SP(12),B4       ; |634| 
           MVK     .L1     7,A4              ; |634| 
           MVK     .S2     113,B5            ; |634| 
           ADDAH   .D1     A4,A3,A3          ; |634| 
           AND     .L1     -8,A3,A3          ; |634| 
           STW     .D2T1   A3,*+B4[B5]       ; |634| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",640,14
;----------------------------------------------------------------------
; 640 | if(chan->mode & _VPORT_MASK_RAW)                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |640| 
           NOP             3
           MVK     .S2     126,B5            ; |640| 
           LDW     .D2T2   *+B4[B5],B4       ; |640| 
           NOP             4
           AND     .L2     2,B4,B0           ; |640| 
   [!B0]   BNOP    .S1     L84,5             ; |640| 
           ; BRANCHCC OCCURS {L84}           ; |640| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",642,15
;----------------------------------------------------------------------
; 642 | if(chan->mode == VPORT_MODE_RAW_10BIT)                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |642| 
           NOP             4
           LDW     .D2T2   *+B4[B5],B4       ; |642| 
           NOP             4
           CMPEQ   .L2     B4,3,B0           ; |642| 
   [!B0]   BNOP    .S1     L83,5             ; |642| 
           ; BRANCHCC OCCURS {L83}           ; |642| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",644,16
;----------------------------------------------------------------------
; 644 | chan->cPitch = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |644| 
           ZERO    .L2     B5                ; |644| 
           NOP             2
           MVK     .S2     114,B6            ; |644| 
           STW     .D2T2   B5,*+B4[B6]       ; |644| 
;** --------------------------------------------------------------------------*
L83:    
	.dwpsn	"vportcap_RAW.c",646,15
;----------------------------------------------------------------------
; 646 | if(chan->mode == VPORT_MODE_RAW_20BIT)                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |646| 
           NOP             3
           MVK     .S2     126,B5            ; |646| 
           LDW     .D2T2   *+B4[B5],B4       ; |646| 
           NOP             4
           CMPEQ   .L2     B4,7,B0           ; |646| 
   [!B0]   BNOP    .S1     L90,5             ; |646| 
           ; BRANCHCC OCCURS {L90}           ; |646| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",648,16
;----------------------------------------------------------------------
; 648 | chan->cPitch = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |648| 
           NOP             2
           ZERO    .L1     A4                ; |648| 
           MVK     .S1     114,A5            ; |648| 
           STW     .D1T1   A4,*+A3[A5]       ; |648| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",649,16
;----------------------------------------------------------------------
; 649 | chan->yPitch = chan->yPitch * 2;                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |649| 
           NOP             1
           MVK     .S2     113,B5            ; |649| 
           LDW     .D2T2   *+SP(12),B31      ; |649| 
           MVK     .S2     113,B30           ; |649| 
           LDW     .D2T2   *+B4[B5],B4       ; |649| 
           NOP             4
           ADD     .L2     B4,B4,B6          ; |649| 
           STW     .D2T2   B6,*+B31[B30]     ; |649| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",651,14
;----------------------------------------------------------------------
; 652 | else                                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L90,5             ; |651| 
           ; BRANCH OCCURS {L90}             ; |651| 
;** --------------------------------------------------------------------------*
L84:    
	.dwpsn	"vportcap_RAW.c",654,15
;----------------------------------------------------------------------
; 654 | chan->cPitch = (numCPixels + 7) & (~ 7);                               
; 658 | //chan->cPitch = 0;                                                    
; 659 | //chan->cPitch = (numCPixels * 2 + 7) & (~ 7);                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(52),B4       ; |654| 
           NOP             1
           LDW     .D2T2   *+SP(12),B5       ; |654| 
           NOP             1
           MVK     .S2     114,B6            ; |654| 
           ADD     .L2     7,B4,B4           ; |654| 
           AND     .L2     -8,B4,B4          ; |654| 
           STW     .D2T2   B4,*+B5[B6]       ; |654| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",660,13
;----------------------------------------------------------------------
; 660 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L90,5             ; |660| 
           ; BRANCH OCCURS {L90}             ; |660| 
;** --------------------------------------------------------------------------*
L85:    
	.dwpsn	"vportcap_RAW.c",661,17
;----------------------------------------------------------------------
; 661 | chan->yPitch = (numPixels * 4 / 3 + 7) & (~ 7);                        
; 663 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 664 | // If raw mode, set cPitch = 0;                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |661| 
           NOP             1
           CALL    .S1     __divi            ; |661| 
           ADDKPC  .S2     RL38,B3,1         ; |661| 
           SHL     .S2     B4,2,B5           ; |661| 
           MVK     .L2     0x3,B4            ; |661| 
           MV      .L1X    B5,A4             ; |661| 
RL38:      ; CALL OCCURS {__divi}            ; |661| 
           LDW     .D2T2   *+SP(12),B4       ; |661| 
           NOP             1
           ADD     .L1     7,A4,A3           ; |661| 
           MVK     .S2     113,B5            ; |661| 
           AND     .L1     -8,A3,A3          ; |661| 
           STW     .D2T1   A3,*+B4[B5]       ; |661| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",665,17
;----------------------------------------------------------------------
; 665 | chan->cPitch = (chan->mode & _VPORT_MASK_RAW) ? (0) : (numCPixels* 4 /
;     | 3 + 7) & (~ 7);                                                        
; 666 | //chan->cPitch = 0;                                                    
; 667 | //chan->cPitch = (numCPixels* 4 / 3 + 7) & (~ 7);                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |665| 
           NOP             2
           MVK     .S2     126,B5            ; |665| 
           LDW     .D2T2   *+SP(52),B6       ; |665| 
           LDW     .D2T2   *+B4[B5],B4       ; |665| 
           NOP             3
           ZERO    .S2     B5                ; |665| 
           AND     .L2     2,B4,B0           ; |665| 
   [ B0]   BNOP    .S1     L86,2             ; |665| 
           SHL     .S2     B6,2,B6           ; |665| 
           MVK     .L2     0x3,B4            ; |665| 
           MV      .L1X    B6,A4             ; |665| 
           ; BRANCHCC OCCURS {L86}           ; |665| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __divi            ; |665| 
           ADDKPC  .S2     RL39,B3,4         ; |665| 
RL39:      ; CALL OCCURS {__divi}            ; |665| 
           ADD     .L1     7,A4,A3           ; |665| 
           NOP             1
           AND     .L2X    -8,A3,B5          ; |665| 
;** --------------------------------------------------------------------------*
L86:    
           LDW     .D2T2   *+SP(12),B4       ; |665| 
           NOP             3
           MVK     .S2     114,B6            ; |665| 
           STW     .D2T2   B5,*+B4[B6]       ; |665| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",669,9
;----------------------------------------------------------------------
; 669 | } else {/* 8-bit BT.656, 8-bit RAW or 16-bit Y/C mode, or 16-bit RAW */
;----------------------------------------------------------------------
           BNOP    .S1     L90,5             ; |669| 
           ; BRANCH OCCURS {L90}             ; |669| 
;** --------------------------------------------------------------------------*
L87:    
	.dwpsn	"vportcap_RAW.c",670,13
;----------------------------------------------------------------------
; 670 | chan->yPitch = (numPixels + 7) & (~ 7);                                
; 672 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |670| 
           NOP             1
           LDW     .D2T2   *+SP(12),B5       ; |670| 
           NOP             1
           MVK     .S2     113,B6            ; |670| 
           ADD     .L2     7,B4,B4           ; |670| 
           AND     .L2     -8,B4,B4          ; |670| 
           STW     .D2T2   B4,*+B5[B6]       ; |670| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",673,13
;----------------------------------------------------------------------
; 673 | if(chan->mode & _VPORT_MASK_RAW)                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |673| 
           NOP             3
           MVK     .S2     126,B5            ; |673| 
           LDW     .D2T2   *+B4[B5],B4       ; |673| 
           NOP             4
           AND     .L2     2,B4,B0           ; |673| 
   [!B0]   BNOP    .S1     L89,5             ; |673| 
           ; BRANCHCC OCCURS {L89}           ; |673| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",675,14
;----------------------------------------------------------------------
; 675 | if(chan->mode == VPORT_MODE_RAW_8BIT)                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |675| 
           NOP             4
           LDW     .D2T2   *+B4[B5],B4       ; |675| 
           NOP             4
           CMPEQ   .L2     B4,2,B0           ; |675| 
   [!B0]   BNOP    .S1     L88,5             ; |675| 
           ; BRANCHCC OCCURS {L88}           ; |675| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",677,15
;----------------------------------------------------------------------
; 677 | chan->cPitch = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |677| 
           ZERO    .L2     B5                ; |677| 
           NOP             2
           MVK     .S2     114,B6            ; |677| 
           STW     .D2T2   B5,*+B4[B6]       ; |677| 
;** --------------------------------------------------------------------------*
L88:    
	.dwpsn	"vportcap_RAW.c",679,14
;----------------------------------------------------------------------
; 679 | if(chan->mode == VPORT_MODE_RAW_16BIT)                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |679| 
           NOP             3
           MVK     .S2     126,B5            ; |679| 
           LDW     .D2T2   *+B4[B5],B4       ; |679| 
           NOP             4
           CMPEQ   .L2     B4,6,B0           ; |679| 
   [!B0]   BNOP    .S1     L90,5             ; |679| 
           ; BRANCHCC OCCURS {L90}           ; |679| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",681,15
;----------------------------------------------------------------------
; 681 | chan->cPitch = 0;                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |681| 
           NOP             2
           ZERO    .L1     A4                ; |681| 
           MVK     .S1     114,A5            ; |681| 
           STW     .D1T1   A4,*+A3[A5]       ; |681| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",682,15
;----------------------------------------------------------------------
; 682 | chan->yPitch = chan->yPitch * 2;                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |682| 
           NOP             1
           MVK     .S2     113,B5            ; |682| 
           LDW     .D2T2   *+SP(12),B31      ; |682| 
           MVK     .S2     113,B30           ; |682| 
           LDW     .D2T2   *+B4[B5],B4       ; |682| 
           NOP             4
           ADD     .L2     B4,B4,B6          ; |682| 
           STW     .D2T2   B6,*+B31[B30]     ; |682| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",684,13
;----------------------------------------------------------------------
; 685 | else                                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L90,5             ; |684| 
           ; BRANCH OCCURS {L90}             ; |684| 
;** --------------------------------------------------------------------------*
L89:    
	.dwpsn	"vportcap_RAW.c",687,14
;----------------------------------------------------------------------
; 687 | chan->cPitch = (numCPixels + 7) & (~ 7);                               
; 690 | // If 8 bit raw mode, set cPitch = 0;                                  
; 691 | //chan->cPitch = (chan->mode & _VPORT_MASK_RAW) ? (0) : ((numCPixels +
;     | 7) & (~ 7));                                                           
; 692 | //chan->cPitch = (chan->mode == VPORT_MODE_RAW_8BIT) ? (0) : ((numCPixe
;     | ls + 7) & (~ 7));                                                      
; 693 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 694 | //chan->cPitch = 0;                                                    
; 695 | //chan->cPitch = (numCPixels + 7) & (~ 7);                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(52),B5       ; |687| 
           NOP             1
           LDW     .D2T2   *+SP(12),B4       ; |687| 
           MVK     .S2     114,B31           ; |687| 
           NOP             1
           ADD     .L2     7,B5,B5           ; |687| 
           AND     .L2     -8,B5,B6          ; |687| 
           STW     .D2T2   B6,*+B4[B31]      ; |687| 
;** --------------------------------------------------------------------------*
L90:    
	.dwpsn	"vportcap_RAW.c",697,9
;----------------------------------------------------------------------
; 697 | chan->yThrld = params->thrld;                                          
; 698 |         //chan->yThrld = 2560;                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |697| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |697| 
           MVK     .S2     121,B5            ; |697| 
           LDHU    .D1T1   *+A3(60),A3       ; |697| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |697| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",699,9
;----------------------------------------------------------------------
; 699 | if(params->mergeFlds && params->fldOp == VPORT_FLDOP_FRAME) {          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |699| 
           NOP             4
           LDW     .D2T2   *+B4(72),B4       ; |699| 
           NOP             4
           CMPEQ   .L2     B4,0,B0           ; |699| 
   [ B0]   BNOP    .S1     L91,3             ; |699| 
           XOR     .L2     1,B0,B4           ; |699| 
           LDW     .D2T2   *+SP(8),B5        ; |699| 
           ; BRANCHCC OCCURS {L91}           ; |699| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B5(4),B4        ; |699| 
           NOP             4
           CMPEQ   .L2     B4,4,B4           ; |699| 
           NOP             1
;** --------------------------------------------------------------------------*
L91:    
           MV      .L1X    B4,A0             ; |699| 
   [!A0]   BNOP    .S1     L92,5             ; |699| 
           ; BRANCHCC OCCURS {L92}           ; |699| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",703,13
;----------------------------------------------------------------------
; 703 | chan->yThrld = chan->yPitch >> 3;                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |703| 
           NOP             1
           MVK     .S2     113,B5            ; |703| 
           LDW     .D2T2   *+SP(12),B31      ; |703| 
           MVK     .S2     121,B6            ; |703| 
           LDW     .D2T2   *+B4[B5],B4       ; |703| 
           NOP             4
           SHRU    .S2     B4,3,B4           ; |703| 
           STW     .D2T2   B4,*+B31[B6]      ; |703| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",704,13
;----------------------------------------------------------------------
; 704 | chan->numEventsFld1 = chan->numLinesFld1;                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |704| 
           NOP             1
           MVK     .S1     117,A4            ; |704| 
           LDW     .D2T2   *+SP(12),B4       ; |704| 
           MVK     .S2     120,B5            ; |704| 
           LDW     .D1T1   *+A3[A4],A3       ; |704| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |704| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",705,13
;----------------------------------------------------------------------
; 705 | chan->numEvents = chan->numLines;                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |705| 
           NOP             1
           MVK     .S1     115,A4            ; |705| 
           LDW     .D2T2   *+SP(12),B4       ; |705| 
           MVK     .S2     119,B5            ; |705| 
           LDW     .D1T1   *+A3[A4],A3       ; |705| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |705| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",706,13
;----------------------------------------------------------------------
; 706 | chan->mergeFlds = TRUE;                                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |706| 
           NOP             3
           MVK     .L2     1,B4              ; |706| 
           ADDK    .S1     428,A3            ; |706| 
           STH     .D1T2   B4,*A3            ; |706| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",707,9
;----------------------------------------------------------------------
; 707 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L95,5             ; |707| 
           ; BRANCH OCCURS {L95}             ; |707| 
;** --------------------------------------------------------------------------*
L92:    
	.dwpsn	"vportcap_RAW.c",708,13
;----------------------------------------------------------------------
; 708 | assert(((chan->yPitch*chan->numLinesFld1) / (chan->yThrld << 3))       
; 709 |     *(chan->yThrld << 3) == (chan->yPitch * chan->numLinesFld1));      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |708| 
           NOP             1
           MVK     .S2     117,B5            ; |708| 
           MVK     .S1     113,A5            ; |708| 
           MVK     .S1     121,A31           ; |708| 
           MV      .L2X    A3,B4             ; |708| 

           LDW     .D1T1   *+A3[A5],A3       ; |708| 
||         MV      .L1     A3,A4             ; |708| 
||         LDW     .D2T2   *+B4[B5],B4       ; |708| 

           NOP             1
           LDW     .D1T1   *+A4[A31],A4      ; |708| 
           NOP             2
           MPYLH   .M2X    B4,A3,B5          ; |708| 

           CALL    .S1     __divu            ; |708| 
||         MPYLH   .M1X    A3,B4,A5          ; |708| 

           MPYU    .M1X    B4,A3,A4          ; |708| 
||         SHL     .S2X    A4,3,B4           ; |708| 

           ADDKPC  .S2     RL40,B3,0         ; |708| 
           ADD     .L1X    B5,A5,A5          ; |708| 
           SHL     .S1     A5,16,A3          ; |708| 
           ADD     .L1     A4,A3,A4          ; |708| 
RL40:      ; CALL OCCURS {__divu}            ; |708| 
           LDW     .D2T1   *+SP(12),A3       ; |708| 
           NOP             2
           MVK     .S1     121,A30           ; |708| 
           MVK     .S1     117,A28           ; |708| 

           LDW     .D1T1   *+A3[A30],A3      ; |708| 
||         MV      .S1     A3,A7             ; |708| 
||         MV      .L1     A3,A6             ; |708| 

           MVK     .S1     113,A29           ; |708| 
           LDW     .D1T1   *+A6[A29],A5      ; |708| 
           LDW     .D1T1   *+A7[A28],A6      ; |708| 
           NOP             1
           SHL     .S1     A3,3,A3           ; |708| 
           MPYLH   .M1     A3,A4,A8          ; |708| 
           MPYLH   .M1     A4,A3,A7          ; |708| 
           MPYLH   .M1     A6,A5,A16         ; |708| 
           MPYLH   .M1     A5,A6,A9          ; |708| 

           ADD     .L1     A8,A7,A3          ; |708| 
||         MPYU    .M1     A3,A4,A4          ; |708| 

           ADD     .L1     A16,A9,A5         ; |708| 
||         SHL     .S1     A3,16,A3          ; |708| 
||         MPYU    .M1     A6,A5,A6          ; |708| 

           SHL     .S1     A5,16,A5          ; |708| 

           ADD     .L1     A6,A5,A5          ; |708| 
||         ADD     .S1     A4,A3,A3          ; |708| 

           CMPEQ   .L1     A3,A5,A0          ; |708| 
   [ A0]   BNOP    .S1     L93,3             ; |708| 
           MVKL    .S1     SL7+0,A4          ; |708| 
           MVKH    .S1     SL7+0,A4          ; |708| 
           ; BRANCHCC OCCURS {L93}           ; |708| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |708| 
           ADDKPC  .S2     RL41,B3,4         ; |708| 
RL41:      ; CALL OCCURS {__abort_msg}       ; |708| 
;** --------------------------------------------------------------------------*
L93:    
	.dwpsn	"vportcap_RAW.c",710,13
;----------------------------------------------------------------------
; 710 | assert(((chan->yPitch * chan->numLines) / (chan->yThrld << 3))         
; 711 |     *(chan->yThrld << 3) == (chan->yPitch * chan->numLines));          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |710| 
           NOP             1
           MVK     .S2     115,B5            ; |710| 
           MVK     .S1     113,A5            ; |710| 
           MVK     .S1     121,A31           ; |710| 
           MV      .L2X    A3,B4             ; |710| 

           LDW     .D1T1   *+A3[A5],A3       ; |710| 
||         MV      .L1     A3,A4             ; |710| 
||         LDW     .D2T2   *+B4[B5],B4       ; |710| 

           NOP             1
           LDW     .D1T1   *+A4[A31],A4      ; |710| 
           NOP             2
           MPYLH   .M2X    B4,A3,B5          ; |710| 

           CALL    .S1     __divu            ; |710| 
||         MPYLH   .M1X    A3,B4,A5          ; |710| 

           MPYU    .M1X    B4,A3,A4          ; |710| 
||         SHL     .S2X    A4,3,B4           ; |710| 

           ADDKPC  .S2     RL42,B3,0         ; |710| 
           ADD     .L1X    B5,A5,A5          ; |710| 
           SHL     .S1     A5,16,A3          ; |710| 
           ADD     .L1     A4,A3,A4          ; |710| 
RL42:      ; CALL OCCURS {__divu}            ; |710| 
           LDW     .D2T1   *+SP(12),A3       ; |710| 
           NOP             1
           MVK     .S1     121,A30           ; |710| 
           MVK     .S1     113,A29           ; |710| 
           MVK     .S1     115,A28           ; |710| 
           LDW     .D1T1   *+A3[A30],A5      ; |710| 
           MV      .L1     A3,A7             ; |710| 

           LDW     .D1T1   *+A7[A29],A3      ; |710| 
||         MV      .L1     A3,A6             ; |710| 

           LDW     .D1T1   *+A6[A28],A6      ; |710| 
           NOP             1
           SHL     .S1     A5,3,A5           ; |710| 
           MPYLH   .M1     A5,A4,A8          ; |710| 
           MPYLH   .M1     A4,A5,A7          ; |710| 
           MPYLH   .M1     A6,A3,A16         ; |710| 
           MPYLH   .M1     A3,A6,A9          ; |710| 

           ADD     .L1     A8,A7,A4          ; |710| 
||         MPYU    .M1     A5,A4,A5          ; |710| 

           ADD     .L1     A16,A9,A4         ; |710| 
||         SHL     .S1     A4,16,A3          ; |710| 
||         MPYU    .M1     A6,A3,A6          ; |710| 

           SHL     .S1     A4,16,A4          ; |710| 

           ADD     .L1     A6,A4,A5          ; |710| 
||         ADD     .S1     A5,A3,A3          ; |710| 

           CMPEQ   .L1     A3,A5,A0          ; |710| 
   [ A0]   BNOP    .S1     L94,3             ; |710| 
           MVKL    .S1     SL8+0,A4          ; |710| 
           MVKH    .S1     SL8+0,A4          ; |710| 
           ; BRANCHCC OCCURS {L94}           ; |710| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |710| 
           ADDKPC  .S2     RL43,B3,4         ; |710| 
RL43:      ; CALL OCCURS {__abort_msg}       ; |710| 
;** --------------------------------------------------------------------------*
L94:    
	.dwpsn	"vportcap_RAW.c",712,13
;----------------------------------------------------------------------
; 712 | chan->numEventsFld1 =                                                  
; 713 |     chan->yPitch * chan->numLinesFld1 / (chan->yThrld << 3);           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |712| 
           NOP             1
           MVK     .S1     113,A31           ; |712| 
           MVK     .S1     117,A6            ; |712| 
           MVK     .S1     121,A30           ; |712| 
           MV      .L1     A3,A4             ; |712| 
           LDW     .D1T1   *+A4[A31],A4      ; |712| 

           LDW     .D1T1   *+A3[A6],A3       ; |712| 
||         MV      .L1     A3,A5             ; |712| 

           NOP             3
           LDW     .D1T1   *+A5[A30],A5      ; |712| 

           CALL    .S1     __divu            ; |712| 
||         MPYLH   .M1     A3,A4,A7          ; |712| 

           MPYLH   .M1     A4,A3,A6          ; |712| 
           MPYU    .M1     A3,A4,A4          ; |712| 
           ADD     .L1     A7,A6,A6          ; |712| 

           SHL     .S1     A6,16,A3          ; |712| 
||         SHL     .S2X    A5,3,B4           ; |712| 

           ADDKPC  .S2     RL44,B3,0         ; |712| 
||         ADD     .L1     A4,A3,A4          ; |712| 

RL44:      ; CALL OCCURS {__divu}            ; |712| 
           LDW     .D2T2   *+SP(12),B4       ; |712| 
           NOP             3
           MVK     .S2     120,B5            ; |712| 
           STW     .D2T1   A4,*+B4[B5]       ; |712| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",714,13
;----------------------------------------------------------------------
; 714 | chan->numEvents =                                                      
; 715 |     chan->yPitch * chan->numLines / (chan->yThrld << 3);               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |714| 
           NOP             1
           MVK     .S1     113,A5            ; |714| 
           MVK     .S2     115,B5            ; |714| 
           MVK     .S1     121,A29           ; |714| 
           MV      .L2X    A3,B4             ; |714| 

           LDW     .D1T1   *+A3[A5],A3       ; |714| 
||         MV      .L1     A3,A4             ; |714| 
||         LDW     .D2T2   *+B4[B5],B4       ; |714| 

           NOP             1
           LDW     .D1T1   *+A4[A29],A4      ; |714| 
           NOP             2
           MPYLH   .M2X    B4,A3,B5          ; |714| 

           CALL    .S1     __divu            ; |714| 
||         MPYLH   .M1X    A3,B4,A5          ; |714| 

           MPYU    .M1X    B4,A3,A4          ; |714| 
||         SHL     .S2X    A4,3,B4           ; |714| 

           ADDKPC  .S2     RL45,B3,0         ; |714| 
           ADD     .L1X    B5,A5,A5          ; |714| 
           SHL     .S1     A5,16,A3          ; |714| 
           ADD     .L1     A4,A3,A4          ; |714| 
RL45:      ; CALL OCCURS {__divu}            ; |714| 
           LDW     .D2T2   *+SP(12),B4       ; |714| 
           NOP             3
           MVK     .S2     119,B31           ; |714| 
           STW     .D2T1   A4,*+B4[B31]      ; |714| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",716,13
;----------------------------------------------------------------------
; 716 | chan->mergeFlds = FALSE;                                               
; 719 |     // RAW CAPTURE INITIALIZATION SPECIFIC                             
; 720 |     // If not in raw mode, set cThrld.                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |716| 
           NOP             1
           ZERO    .L2     B5                ; |716| 
           NOP             2
           ADDK    .S2     428,B4            ; |716| 
           STH     .D2T2   B5,*B4            ; |716| 
;** --------------------------------------------------------------------------*
L95:    
	.dwpsn	"vportcap_RAW.c",721,3
;----------------------------------------------------------------------
; 721 | chan->cThrld = (chan->mode & _VPORT_MASK_RAW) ? 0 : (chan->yThrld + 1)
;     | >> 1 ;                                                                 
; 722 | //chan->cThrld = (chan->yThrld + 1) >> 1;                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |721| 
           NOP             1
           MVK     .S2     126,B5            ; |721| 
           MVK     .S1     121,A4            ; |721| 
           ZERO    .L1     A3                ; |721| 
           LDW     .D2T2   *+B4[B5],B4       ; |721| 
           NOP             4
           AND     .L2     2,B4,B0           ; |721| 
   [ B0]   B       .S1     L96               ; |721| 
           LDW     .D2T2   *+SP(12),B4       ; |721| 
           NOP             4
           ; BRANCHCC OCCURS {L96}           ; |721| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B4,A3
           LDW     .D1T1   *+A3[A4],A3       ; |721| 
           NOP             4
           ADD     .L1     1,A3,A3           ; |721| 
           SHRU    .S1     A3,1,A3           ; |721| 
;** --------------------------------------------------------------------------*
L96:    

           MV      .L1X    B4,A4
||         MVK     .S1     122,A5            ; |721| 

           STW     .D1T1   A3,*+A4[A5]       ; |721| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",724,9
;----------------------------------------------------------------------
; 724 | base[_VP_VCATHRLD_OFFSETA] = VP_VCATHRLD_RMK(chan->yThrld,chan->yThrld)
;     | ;                                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |724| 
           MVK     .S1     121,A5            ; |724| 
           LDW     .D2T2   *+SP(36),B5       ; |724| 
           ZERO    .L2     B4                ; |724| 
           MVKH    .S2     0x3ff0000,B4      ; |724| 

           LDW     .D1T1   *+A3[A5],A3       ; |724| 
||         MV      .L1     A3,A4             ; |724| 

           LDW     .D1T1   *+A4[A5],A4       ; |724| 
           NOP             3
           SHL     .S1     A3,16,A3          ; |724| 
           EXTU    .S1     A4,22,22,A4       ; |724| 
           AND     .L2X    B4,A3,B4          ; |724| 
           OR      .L2X    A4,B4,B4          ; |724| 
           STW     .D2T2   B4,*+B5(28)       ; |724| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",725,9
;----------------------------------------------------------------------
; 725 | base[_VP_VCAEVTCT_OFFSETA] = VP_VCAEVTCT_RMK(                          
; 726 |     (chan->numEvents-chan->numEventsFld1), chan->numEventsFld1 );      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |725| 
           MVK     .S2     120,B5            ; |725| 
           MVK     .S1     119,A3            ; |725| 
           MVK     .S1     120,A31           ; |725| 
           LDW     .D2T2   *+SP(36),B6       ; |725| 
           MV      .L2X    A4,B4             ; |725| 

           LDW     .D1T1   *+A4[A3],A3       ; |725| 
||         LDW     .D2T2   *+B4[B5],B5       ; |725| 

           MV      .L1     A4,A5             ; |725| 
           LDW     .D1T1   *+A5[A31],A4      ; |725| 
           ZERO    .L2     B31               ; |725| 
           MVKH    .S2     0xfff0000,B31     ; |725| 
           SUB     .L1X    A3,B5,A3          ; |725| 
           SHL     .S1     A3,16,A3          ; |725| 

           AND     .L1X    B31,A3,A4         ; |725| 
||         EXTU    .S1     A4,20,20,A3       ; |725| 

           OR      .L1     A3,A4,A3          ; |725| 
           STW     .D2T1   A3,*+B6(32)       ; |725| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",728,9
;----------------------------------------------------------------------
; 728 | chan->status|=_VPORT_CFGED;                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |728| 
           NOP             4
           LDW     .D1T2   *A3,B4            ; |728| 
           NOP             4
           OR      .L2     2,B4,B4           ; |728| 
           STW     .D1T2   B4,*A3            ; |728| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",729,9
;----------------------------------------------------------------------
; 729 | retVal = IOM_COMPLETED;                                                
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |729| 
           STW     .D2T2   B4,*+SP(40)       ; |729| 
;** --------------------------------------------------------------------------*
L97:    
	.dwpsn	"vportcap_RAW.c",731,5
;----------------------------------------------------------------------
; 731 | return retVal;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(40),A4       ; |731| 
           NOP             4
	.dwpsn	"vportcap_RAW.c",733,1
           LDW     .D2T2   *++SP(56),B3      ; |733| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |733| 
           ; BRANCH OCCURS {B3}              ; |733| 
	.dwattr DW$203, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$203, DW_AT_end_line(0x2dd)
	.dwattr DW$203, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$203

	.sect	".text"

DW$219	.dwtag  DW_TAG_subprogram, DW_AT_name("_configChan"), DW_AT_symbol_name("__configChan")
	.dwattr DW$219, DW_AT_low_pc(__configChan)
	.dwattr DW$219, DW_AT_high_pc(0x00)
	.dwattr DW$219, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$219, DW_AT_begin_line(0x2e4)
	.dwattr DW$219, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",741,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 740 | static Int _configChan(Ptr chanp, Ptr args)                            
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
           STW     .D2T2   B3,*SP--(16)      ; |741| 
           NOP             2
	.dwcfa	0x0e, 16
	.dwcfa	0x80, 19, 0
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$220, DW_AT_type(*DW$T$37)
	.dwattr DW$220, DW_AT_location[DW_OP_reg4]
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$221, DW_AT_type(*DW$T$37)
	.dwattr DW$221, DW_AT_location[DW_OP_reg20]
DW$222	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$222, DW_AT_type(*DW$T$37)
	.dwattr DW$222, DW_AT_location[DW_OP_breg31 4]
DW$223	.dwtag  DW_TAG_variable, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$223, DW_AT_type(*DW$T$37)
	.dwattr DW$223, DW_AT_location[DW_OP_breg31 8]
DW$224	.dwtag  DW_TAG_variable, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$224, DW_AT_type(*DW$T$155)
	.dwattr DW$224, DW_AT_location[DW_OP_breg31 12]
           STW     .D2T2   B4,*+SP(8)        ; |741| 
           STW     .D2T1   A4,*+SP(4)        ; |741| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",742,24
;----------------------------------------------------------------------
; 742 | VPORTCAP_Params*   params = (VPORTCAP_Params*)args;                    
;----------------------------------------------------------------------
           STW     .D2T2   B4,*+SP(12)       ; |742| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",746,5
;----------------------------------------------------------------------
; 746 | _configCh(chanp, params);                                              
;----------------------------------------------------------------------
           CALL    .S1     __configCh        ; |746| 
           ADDKPC  .S2     RL46,B3,4         ; |746| 
RL46:      ; CALL OCCURS {__configCh}        ; |746| 
	.dwpsn	"vportcap_RAW.c",749,5
;----------------------------------------------------------------------
; 749 | _configTransfer(chanp, params);                                        
;----------------------------------------------------------------------

           CALL    .S1     __configTransfer  ; |749| 
||         LDW     .D2T1   *+SP(4),A4        ; |749| 

           LDW     .D2T2   *+SP(12),B4       ; |749| 
           ADDKPC  .S2     RL47,B3,3         ; |749| 
RL47:      ; CALL OCCURS {__configTransfer}  ; |749| 
	.dwpsn	"vportcap_RAW.c",750,5
;----------------------------------------------------------------------
; 750 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |750| 
	.dwpsn	"vportcap_RAW.c",751,1
           LDW     .D2T2   *++SP(16),B3      ; |751| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |751| 
           ; BRANCH OCCURS {B3}              ; |751| 
	.dwattr DW$219, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$219, DW_AT_end_line(0x2ef)
	.dwattr DW$219, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$219

	.sect	".text"

DW$225	.dwtag  DW_TAG_subprogram, DW_AT_name("_configPort"), DW_AT_symbol_name("__configPort")
	.dwattr DW$225, DW_AT_low_pc(__configPort)
	.dwattr DW$225, DW_AT_high_pc(0x00)
	.dwattr DW$225, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$225, DW_AT_begin_line(0x2f6)
	.dwattr DW$225, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",759,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 758 | static Int _configPort(Ptr chanp, Ptr args)                            
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
           STW     .D2T2   B3,*SP--(24)      ; |759| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$226, DW_AT_type(*DW$T$37)
	.dwattr DW$226, DW_AT_location[DW_OP_reg4]
DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$227, DW_AT_type(*DW$T$37)
	.dwattr DW$227, DW_AT_location[DW_OP_reg20]
DW$228	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$228, DW_AT_type(*DW$T$37)
	.dwattr DW$228, DW_AT_location[DW_OP_breg31 4]
DW$229	.dwtag  DW_TAG_variable, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$229, DW_AT_type(*DW$T$37)
	.dwattr DW$229, DW_AT_location[DW_OP_breg31 8]
DW$230	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$230, DW_AT_type(*DW$T$210)
	.dwattr DW$230, DW_AT_location[DW_OP_breg31 12]
DW$231	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$231, DW_AT_type(*DW$T$162)
	.dwattr DW$231, DW_AT_location[DW_OP_breg31 16]
DW$232	.dwtag  DW_TAG_variable, DW_AT_name("portParams"), DW_AT_symbol_name("_portParams")
	.dwattr DW$232, DW_AT_type(*DW$T$212)
	.dwattr DW$232, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T2   B4,*+SP(8)        ; |759| 
           STW     .D2T1   A4,*+SP(4)        ; |759| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",760,14
;----------------------------------------------------------------------
; 760 | PortObj* port = (PortObj *)chanp;                                      
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |760| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",761,19
;----------------------------------------------------------------------
; 761 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T1   *+A3(4),A3        ; |761| 
           NOP             4
           STW     .D2T1   A3,*+SP(16)       ; |761| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",763,23
;----------------------------------------------------------------------
; 763 | VPORT_PortParams* portParams = (VPORT_PortParams*)args;                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |763| 
           NOP             4
           STW     .D2T1   A3,*+SP(20)       ; |763| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",767,5
;----------------------------------------------------------------------
; 767 | base[_VP_PCR_OFFSET] |= VP_PCR_PEREN_ENABLE << _VP_PCR_PEREN_SHIFT;    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |767| 
           NOP             4
           LDW     .D1T2   *+A3(4),B4        ; |767| 
           NOP             4
           OR      .L2     4,B4,B4           ; |767| 
           STW     .D1T2   B4,*+A3(4)        ; |767| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",770,5
;----------------------------------------------------------------------
; 770 | base[_VP_VPCTL_OFFSET] |=                                              
; 771 |     VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |770| 
           NOP             4
           ADDAD   .D1     A3,24,A4          ; |770| 
           LDW     .D1T1   *A4,A3            ; |770| 
           NOP             4
           SET     .S1     A3,15,15,A3       ; |770| 
           STW     .D1T1   A3,*A4            ; |770| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",773,5
;----------------------------------------------------------------------
; 773 | base[_VP_VPCTL_OFFSET] = VP_VPCTL_RMK(0,0,0,portParams->vc3Polarity,   
; 774 |     portParams->vc2Polarity,portParams->vc1Polarity,0,0,               
; 775 |     portParams->dualChanEnable);                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |773| 
           NOP             1
           MVK     .S1     32,A7             ; |773| 
           MVK     .S2     64,B5             ; |773| 
           MVK     .S1     16,A6             ; |773| 
           MV      .L1X    B4,A5             ; |773| 
           MV      .L1X    B4,A3             ; |773| 

           LDW     .D2T2   *+B4(12),B4       ; |773| 
||         MV      .L1X    B4,A4             ; |773| 

           LDW     .D1T1   *+A3(8),A3        ; |773| 
           LDW     .D1T1   *+A4(4),A4        ; |773| 
           NOP             1
           LDHU    .D1T1   *A5,A5            ; |773| 
           SHL     .S2     B4,6,B4           ; |773| 

           LDW     .D2T2   *+SP(16),B4       ; |773| 
||         AND     .L2     B5,B4,B5          ; |773| 
||         SHL     .S1     A3,5,A3           ; |773| 

           AND     .L1     A7,A3,A4          ; |773| 
||         SHL     .S1     A4,4,A3           ; |773| 

           OR      .L1X    A4,B5,A4          ; |773| 
||         AND     .S1     A6,A3,A3          ; |773| 

           AND     .L1     1,A5,A3           ; |773| 
||         OR      .S1     A3,A4,A4          ; |773| 

           OR      .L1     A3,A4,A3          ; |773| 
||         MVK     .S2     48,B5             ; |773| 

           STW     .D2T1   A3,*+B4[B5]       ; |773| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",778,5
;----------------------------------------------------------------------
; 778 | base[_VP_VPCTL_OFFSET] |= (VP_VPCTL_VPHLT_CLEAR << _VP_VPCTL_VPHLT_SHIF
;     | T);                                                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |778| 
           NOP             4
           ADDAD   .D2     B4,24,B4          ; |778| 
           LDW     .D2T2   *B4,B5            ; |778| 
           NOP             4
           SET     .S2     B5,14,14,B5       ; |778| 
           STW     .D2T2   B5,*B4            ; |778| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",779,5
;----------------------------------------------------------------------
; 779 | port->chanObj[0].edcFxns = portParams->edcTbl[0];                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |779| 
           NOP             2
           LDW     .D2T2   *+SP(12),B5       ; |779| 
           MVK     .S2     129,B6            ; |779| 
           LDW     .D1T2   *+A3(16),B4       ; |779| 
           NOP             4
           STW     .D2T2   B4,*+B5[B6]       ; |779| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",780,5
;----------------------------------------------------------------------
; 780 | port->chanObj[1].edcFxns = portParams->edcTbl[1];                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |780| 
           NOP             2
           LDW     .D2T2   *+SP(12),B5       ; |780| 
           MVK     .S2     262,B6            ; |780| 
           LDW     .D2T2   *+B4(20),B4       ; |780| 
           NOP             4
           STW     .D2T2   B4,*+B5[B6]       ; |780| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",782,5
;----------------------------------------------------------------------
; 782 | IRQ_clear(IRQ_EVT_EDMAINT);                                            
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_clear,A3     ; |782| 
           MVKH    .S1     _IRQ_clear,A3     ; |782| 
           MVK     .L1     0x8,A4            ; |782| 
           CALL    .S2X    A3                ; |782| 
           ADDKPC  .S2     RL48,B3,4         ; |782| 
RL48:      ; CALL OCCURS {_IRQ_clear}        ; |782| 
	.dwpsn	"vportcap_RAW.c",783,5
;----------------------------------------------------------------------
; 783 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |783| 
	.dwpsn	"vportcap_RAW.c",785,1
           LDW     .D2T2   *++SP(24),B3      ; |785| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |785| 
           ; BRANCH OCCURS {B3}              ; |785| 
	.dwattr DW$225, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$225, DW_AT_end_line(0x311)
	.dwattr DW$225, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$225

	.sect	".text"

DW$233	.dwtag  DW_TAG_subprogram, DW_AT_name("_configTransfer"), DW_AT_symbol_name("__configTransfer")
	.dwattr DW$233, DW_AT_low_pc(__configTransfer)
	.dwattr DW$233, DW_AT_high_pc(0x00)
	.dwattr DW$233, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$233, DW_AT_begin_line(0x318)
	.dwattr DW$233, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",796,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 792 | static Int _configTransfer(                                            
; 793 | Ptr                 chanp,                                             
; 794 | VPORTCAP_Params  *params                                               
; 795 | )                                                                      
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
;*   Local Frame Size  : 0 Args + 60 Auto + 4 Save = 64 byte                  *
;******************************************************************************
__configTransfer:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(64)      ; |796| 
           NOP             2
	.dwcfa	0x0e, 64
	.dwcfa	0x80, 19, 0
DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$234, DW_AT_type(*DW$T$37)
	.dwattr DW$234, DW_AT_location[DW_OP_reg4]
DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$235, DW_AT_type(*DW$T$155)
	.dwattr DW$235, DW_AT_location[DW_OP_reg20]
DW$236	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$236, DW_AT_type(*DW$T$37)
	.dwattr DW$236, DW_AT_location[DW_OP_breg31 4]
DW$237	.dwtag  DW_TAG_variable, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$237, DW_AT_type(*DW$T$155)
	.dwattr DW$237, DW_AT_location[DW_OP_breg31 8]
DW$238	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$238, DW_AT_type(*DW$T$207)
	.dwattr DW$238, DW_AT_location[DW_OP_breg31 12]
DW$239	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$239, DW_AT_type(*DW$T$22)
	.dwattr DW$239, DW_AT_location[DW_OP_breg31 16]
DW$240	.dwtag  DW_TAG_variable, DW_AT_name("cfgEdma"), DW_AT_symbol_name("_cfgEdma")
	.dwattr DW$240, DW_AT_type(*DW$T$140)
	.dwattr DW$240, DW_AT_location[DW_OP_breg31 20]
DW$241	.dwtag  DW_TAG_variable, DW_AT_name("thrld"), DW_AT_symbol_name("_thrld")
	.dwattr DW$241, DW_AT_type(*DW$T$22)
	.dwattr DW$241, DW_AT_location[DW_OP_breg31 44]
DW$242	.dwtag  DW_TAG_variable, DW_AT_name("curAddr"), DW_AT_symbol_name("_curAddr")
	.dwattr DW$242, DW_AT_type(*DW$T$197)
	.dwattr DW$242, DW_AT_location[DW_OP_breg31 48]
DW$243	.dwtag  DW_TAG_variable, DW_AT_name("numEdmaChans"), DW_AT_symbol_name("_numEdmaChans")
	.dwattr DW$243, DW_AT_type(*DW$T$10)
	.dwattr DW$243, DW_AT_location[DW_OP_breg31 52]
           STW     .D2T2   B4,*+SP(8)        ; |796| 
           STW     .D2T1   A4,*+SP(4)        ; |796| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",797,21
;----------------------------------------------------------------------
; 797 | _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;                        
; 798 | Int i;                                                                 
; 799 | EDMA_Config  cfgEdma;                                                  
; 800 | Int thrld;                                                             
; 801 | Int8* curAddr;                                                         
; 803 | //RAW CAPTURE INITIALIZATION SPECIFIC                                  
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |797| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",804,9
;----------------------------------------------------------------------
; 804 | int numEdmaChans = 0;                                                  
; 805 | //      printf("***************************************\n");           
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |804| 
           STW     .D2T2   B4,*+SP(52)       ; |804| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",807,5
;----------------------------------------------------------------------
; 807 | if(chan->status & _VPORT_CFGED) {                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |807| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |807| 
           NOP             4
           AND     .L2     2,B4,B0           ; |807| 
   [!B0]   BNOP    .S1     L121,5            ; |807| 
           ; BRANCHCC OCCURS {L121}          ; |807| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",809,9
;----------------------------------------------------------------------
; 809 | assert(params->numFrmBufs >= 2 && params->numFrmBufs                   
; 810 |         <= VPORT_MAX_NUM_FRMBUFS);                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |809| 
           NOP             3
           LDW     .D2T2   *+SP(8),B5        ; |809| 
           LDW     .D2T2   *+B4(64),B4       ; |809| 
           NOP             4
           CMPLT   .L2     B4,2,B0           ; |809| 
   [ B0]   BNOP    .S1     L98,4             ; |809| 
           XOR     .L2     1,B0,B4           ; |809| 
           ; BRANCHCC OCCURS {L98}           ; |809| 
;** --------------------------------------------------------------------------*
           NOP             4
           LDW     .D2T2   *+B5(64),B4       ; |809| 
           NOP             4
           CMPGT   .L2     B4,10,B4          ; |809| 
           XOR     .L2     1,B4,B4           ; |809| 
;** --------------------------------------------------------------------------*
L98:    
           MVKL    .S1     SL9+0,A4          ; |809| 
           MV      .L1X    B4,A0             ; |809| 
   [ A0]   BNOP    .S1     L99,4             ; |809| 
           MVKH    .S1     SL9+0,A4          ; |809| 
           ; BRANCHCC OCCURS {L99}           ; |809| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __abort_msg       ; |809| 
           ADDKPC  .S2     RL49,B3,4         ; |809| 
RL49:      ; CALL OCCURS {__abort_msg}       ; |809| 
;** --------------------------------------------------------------------------*
L99:    
	.dwpsn	"vportcap_RAW.c",811,9
;----------------------------------------------------------------------
; 811 | QUE_new(&chan->qIn);                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |811| 
           NOP             2
           MVK     .S1     364,A3            ; |811| 
           MVK     .S2     92,B6             ; |811| 

           ADD     .L2X    A3,B4,B4          ; |811| 
||         MV      .D2     B4,B5             ; |811| 

           STW     .D2T2   B4,*+B5[B6]       ; |811| 
           LDW     .D2T2   *+SP(12),B5       ; |811| 
           NOP             3
           MVK     .S2     91,B6             ; |811| 
           STW     .D2T2   B4,*+B5[B6]       ; |811| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",812,9
;----------------------------------------------------------------------
; 812 | chan->queEmpty = FALSE;                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |812| 
           NOP             3
           ZERO    .L2     B5                ; |812| 
           ADDK    .S2     444,B4            ; |812| 
           STH     .D2T2   B5,*B4            ; |812| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",813,9
;----------------------------------------------------------------------
; 813 | chan->mrViop = INV;                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |813| 
           NOP             2
           MVK     .L1     -1,A4             ; |813| 
           MVK     .S1     125,A5            ; |813| 
           STW     .D1T1   A4,*+A3[A5]       ; |813| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",814,9
;----------------------------------------------------------------------
; 814 | chan->packetIOM = INV;                                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |814| 
           NOP             3
           MVK     .S1     129,A5            ; |814| 
           STW     .D1T1   A4,*+A3[A5]       ; |814| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",815,9
;----------------------------------------------------------------------
; 815 | chan->segId = params->segId;                                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |815| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |815| 
           MVK     .S2     131,B5            ; |815| 
           LDW     .D1T1   *+A3(76),A3       ; |815| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |815| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",817,9
;----------------------------------------------------------------------
; 817 | EDMA_intDisable(chan->tcc[0]);                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |817| 
           MVKL    .S1     _EDMA_intDisable,A3 ; |817| 
           MVKH    .S1     _EDMA_intDisable,A3 ; |817| 
           MVK     .S2     104,B5            ; |817| 
           CALL    .S2X    A3                ; |817| 
           LDW     .D2T1   *+B4[B5],A4       ; |817| 
           ADDKPC  .S2     RL50,B3,3         ; |817| 
RL50:      ; CALL OCCURS {_EDMA_intDisable}  ; |817| 
	.dwpsn	"vportcap_RAW.c",818,9
;----------------------------------------------------------------------
; 818 | if(chan->numFrms == 0) {                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |818| 
           NOP             3
           MVK     .S1     118,A4            ; |818| 
           LDW     .D1T1   *+A3[A4],A0       ; |818| 
           NOP             4
   [ A0]   BNOP    .S1     L109,5            ; |818| 
           ; BRANCHCC OCCURS {L109}          ; |818| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",819,13
;----------------------------------------------------------------------
; 819 | chan->numFrms = params->numFrmBufs;                                    
; 823 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 824 | // Verify correct buffer size allocation                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |819| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |819| 
           MVK     .S2     118,B5            ; |819| 
           LDW     .D1T1   *+A3(64),A3       ; |819| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |819| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",825,13
;----------------------------------------------------------------------
; 825 | chan->bufSz = chan->yPitch * chan->numLines                            
; 826 |       + chan->cPitch * chan->numLines * 2;                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |825| 
           MVK     .S1     115,A4            ; |825| 
           MVK     .S2     115,B31           ; |825| 
           MVK     .S1     114,A31           ; |825| 
           MVK     .S2     113,B6            ; |825| 
           MV      .L1X    B5,A3             ; |825| 

           MV      .L1X    B5,A5             ; |825| 
||         MV      .L2     B5,B4             ; |825| 
||         LDW     .D1T1   *+A3[A4],A3       ; |825| 

           LDW     .D2T2   *+B4[B31],B4      ; |825| 
||         LDW     .D1T1   *+A5[A31],A4      ; |825| 

           LDW     .D2T2   *+B5[B6],B5       ; |825| 
           NOP             1
           LDW     .D2T2   *+SP(12),B30      ; |825| 
           MVK     .S2     132,B29           ; |825| 
           MPYLH   .M2X    B4,A4,B8          ; |825| 

           MPYLH   .M1X    A4,B4,A5          ; |825| 
||         MPYLH   .M2X    A3,B5,B7          ; |825| 

           MPYLH   .M2X    B5,A3,B6          ; |825| 
           ADD     .L1X    B8,A5,A5          ; |825| 

           ADD     .L2     B7,B6,B5          ; |825| 
||         MPYU    .M1X    A3,B5,A3          ; |825| 

           MPYU    .M1X    B4,A4,A4          ; |825| 
||         SHL     .S2     B5,16,B5          ; |825| 

           SHL     .S1     A5,16,A5          ; |825| 

           ADD     .S1     A4,A5,A4          ; |825| 
||         ADD     .L1X    A3,B5,A3          ; |825| 

           ADDAH   .D1     A3,A4,A3          ; |825| 
           STW     .D2T1   A3,*+B30[B29]     ; |825| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",828,17
;----------------------------------------------------------------------
; 828 | for(i = 0; i < chan->numFrms; i ++) {                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |828| 
           STW     .D2T2   B4,*+SP(16)       ; |828| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",828,24
           LDW     .D2T1   *+SP(12),A3       ; |828| 
           NOP             2
           MVK     .S1     118,A4            ; |828| 
           LDW     .D2T2   *+SP(16),B4       ; |828| 
           LDW     .D1T1   *+A3[A4],A3       ; |828| 
           NOP             4
           CMPLTU  .L1X    B4,A3,A0          ; |828| 
   [!A0]   BNOP    .S1     L109,5            ; |828| 
           ; BRANCHCC OCCURS {L109}          ; |828| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L100:    
DW$L$__configTransfer$8$B:
	.dwpsn	"vportcap_RAW.c",829,17
;----------------------------------------------------------------------
; 829 | if((curAddr = MEM_alloc(params->segId,chan->bufSz,                     
; 830 |     params->alignment)) == MEM_ILLEGAL){                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |829| 
           LDW     .D2T1   *+SP(12),A3       ; |829| 
           NOP             2
           MVK     .S1     132,A4            ; |829| 

           LDW     .D2T1   *+B4(68),A6       ; |829| 
||         MV      .L2     B4,B5             ; |829| 
||         CALL    .S2     _MEM_alloc        ; |829| 

           LDW     .D2T1   *+B5(76),A4       ; |829| 
||         LDW     .D1T2   *+A3[A4],B4       ; |829| 

           ADDKPC  .S2     RL51,B3,3         ; |829| 
RL51:      ; CALL OCCURS {_MEM_alloc}        ; |829| 
           MV      .L1     A4,A0             ; |829| 
   [ A0]   BNOP    .S1     L101,4            ; |829| 
           STW     .D2T1   A0,*+SP(48)       ; |829| 
           ; BRANCHCC OCCURS {L101}          ; |829| 
DW$L$__configTransfer$8$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",831,21
;----------------------------------------------------------------------
; 831 | return IOM_EALLOC;                                                     
;----------------------------------------------------------------------
           BNOP    .S1     L122,4            ; |831| 
           MVK     .L1     0xfffffffb,A4     ; |831| 
           ; BRANCH OCCURS {L122}            ; |831| 
;** --------------------------------------------------------------------------*
L101:    
DW$L$__configTransfer$10$B:
	.dwpsn	"vportcap_RAW.c",834,17
;----------------------------------------------------------------------
; 834 | chan->viops[i].frame.iFrm.y1 = curAddr;                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |834| 
           LDW     .D2T2   *+SP(12),B4       ; |834| 
           NOP             2
           MV      .S2X    A0,B6             ; |834| 
           SHL     .S2     B5,5,B5           ; |834| 
           ADD     .L2     B5,B4,B4          ; |834| 
           STW     .D2T2   B6,*+B4(52)       ; |834| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",835,17
;----------------------------------------------------------------------
; 835 | curAddr += chan->numLines*chan->yPitch;                                
; 837 |         // RAW CAPTURE INITIALIZATION SPECIFIC                         
; 838 |         // Do not set if in Raw Mode                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |835| 
           NOP             1
           MVK     .S2     113,B5            ; |835| 
           MVK     .S1     115,A4            ; |835| 
           LDW     .D2T2   *+SP(48),B31      ; |835| 
           MV      .L2X    A3,B4             ; |835| 

           LDW     .D2T2   *+B4[B5],B4       ; |835| 
||         LDW     .D1T1   *+A3[A4],A3       ; |835| 

           NOP             4
           MPYLH   .M2X    B4,A3,B5          ; |835| 
           MPYLH   .M1X    A3,B4,A4          ; |835| 
           MPYU    .M1X    B4,A3,A3          ; |835| 
           ADD     .L1X    B5,A4,A4          ; |835| 
           SHL     .S1     A4,16,A4          ; |835| 
           ADD     .L1     A3,A4,A3          ; |835| 
           NOP             1
           ADD     .L2X    A3,B31,B4         ; |835| 
           STW     .D2T2   B4,*+SP(48)       ; |835| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",839,18
;----------------------------------------------------------------------
; 839 | if(chan->mode & _VPORT_MASK_RAW)                                       
; 840 | //if(chan->mode == VPORT_MODE_RAW_8BIT)                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |839| 
           NOP             3
           MVK     .S1     126,A4            ; |839| 
           LDW     .D1T1   *+A3[A4],A3       ; |839| 
           NOP             4
           AND     .L1     2,A3,A0           ; |839| 
   [!A0]   BNOP    .S1     L102,5            ; |839| 
           ; BRANCHCC OCCURS {L102}          ; |839| 
DW$L$__configTransfer$10$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$11$B:
	.dwpsn	"vportcap_RAW.c",842,19
;----------------------------------------------------------------------
; 842 | chan->viops[i].frame.iFrm.cb1 = 0;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |842| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |842| 
           NOP             1
           ZERO    .S1     A4                ; |842| 
           SHL     .S2     B4,5,B4           ; |842| 
           NOP             1
           ADD     .L1X    B4,A3,A3          ; |842| 
           STW     .D1T1   A4,*+A3(56)       ; |842| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",843,19
;----------------------------------------------------------------------
; 843 | curAddr = 0;                                                           
;----------------------------------------------------------------------
           ZERO    .L1     A3                ; |843| 
           STW     .D2T1   A3,*+SP(48)       ; |843| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",844,19
;----------------------------------------------------------------------
; 844 | chan->viops[i].frame.iFrm.cr1 = 0;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |844| 
           LDW     .D2T2   *+SP(12),B5       ; |844| 
           NOP             2
           ZERO    .S2     B31               ; |844| 
           SHL     .S2     B4,5,B4           ; |844| 
           ADD     .L2     B4,B5,B4          ; |844| 
           STW     .D2T2   B31,*+B4(60)      ; |844| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",845,19
;----------------------------------------------------------------------
; 845 | curAddr = 0;                                                           
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |845| 
           STW     .D2T2   B4,*+SP(48)       ; |845| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",846,18
;----------------------------------------------------------------------
; 847 | else                                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L103,5            ; |846| 
           ; BRANCH OCCURS {L103}            ; |846| 
DW$L$__configTransfer$11$E:
;** --------------------------------------------------------------------------*
L102:    
DW$L$__configTransfer$12$B:
	.dwpsn	"vportcap_RAW.c",849,19
;----------------------------------------------------------------------
; 849 | chan->viops[i].frame.iFrm.cb1 = curAddr;                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |849| 
           NOP             1
           LDW     .D2T1   *+SP(12),A4       ; |849| 
           LDW     .D2T1   *+SP(48),A3       ; |849| 
           NOP             1
           SHL     .S2     B4,5,B4           ; |849| 
           NOP             1
           ADD     .L1X    B4,A4,A4          ; |849| 
           STW     .D1T1   A3,*+A4(56)       ; |849| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",850,19
;----------------------------------------------------------------------
; 850 | curAddr += chan->numLines*chan->cPitch;                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |850| 
           NOP             2
           MVK     .S1     114,A31           ; |850| 
           MVK     .S1     115,A5            ; |850| 
           MV      .L1     A4,A3             ; |850| 
           LDW     .D1T1   *+A3[A31],A3      ; |850| 
           LDW     .D1T1   *+A4[A5],A4       ; |850| 
           NOP             4
           MPYLH   .M1     A4,A3,A6          ; |850| 
           MPYLH   .M1     A3,A4,A5          ; |850| 
           LDW     .D2T2   *+SP(48),B4       ; |850| 

           ADD     .L1     A5,A6,A3          ; |850| 
||         MPYU    .M1     A3,A4,A4          ; |850| 

           SHL     .S1     A3,16,A3          ; |850| 
           ADD     .L1     A4,A3,A3          ; |850| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |850| 
           STW     .D2T2   B4,*+SP(48)       ; |850| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",851,19
;----------------------------------------------------------------------
; 851 | chan->viops[i].frame.iFrm.cr1 = curAddr;                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |851| 
           LDW     .D2T2   *+SP(12),B6       ; |851| 
           NOP             3
           SHL     .S2     B5,5,B5           ; |851| 
           ADD     .L2     B5,B6,B5          ; |851| 
           STW     .D2T2   B4,*+B5(60)       ; |851| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",852,19
;----------------------------------------------------------------------
; 852 | curAddr += chan->numLines*chan->cPitch;                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |852| 
           NOP             1
           MVK     .S1     115,A4            ; |852| 
           MVK     .S2     114,B5            ; |852| 
           LDW     .D2T2   *+SP(48),B31      ; |852| 
           MV      .L2X    A3,B4             ; |852| 

           LDW     .D2T2   *+B4[B5],B4       ; |852| 
||         LDW     .D1T1   *+A3[A4],A3       ; |852| 

           NOP             4
           MPYLH   .M2X    B4,A3,B5          ; |852| 
           MPYLH   .M1X    A3,B4,A4          ; |852| 
           MPYU    .M1X    B4,A3,A3          ; |852| 
           ADD     .L1X    B5,A4,A4          ; |852| 
           SHL     .S1     A4,16,A4          ; |852| 
           ADD     .L1     A3,A4,A3          ; |852| 
           NOP             1
           ADD     .L2X    A3,B31,B4         ; |852| 
           STW     .D2T2   B4,*+SP(48)       ; |852| 
DW$L$__configTransfer$12$E:
;** --------------------------------------------------------------------------*
L103:    
DW$L$__configTransfer$13$B:
	.dwpsn	"vportcap_RAW.c",856,17
;----------------------------------------------------------------------
; 856 | if(params->fldOp == VPORT_FLDOP_FLD2) {                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |856| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |856| 
           NOP             4
           CMPEQ   .L2     B4,2,B0           ; |856| 
   [!B0]   BNOP    .S1     L104,5            ; |856| 
           ; BRANCHCC OCCURS {L104}          ; |856| 
DW$L$__configTransfer$13$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$14$B:
	.dwpsn	"vportcap_RAW.c",857,21
;----------------------------------------------------------------------
; 857 | chan->viops[i].frame.iFrm.y2 =                                         
; 858 |     chan->viops[i].frame.iFrm.y1;                                      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |857| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |857| 
           NOP             1
           LDW     .D2T2   *+SP(12),B31      ; |857| 
           SHL     .S2     B4,5,B4           ; |857| 
           LDW     .D2T2   *+SP(16),B5       ; |857| 
           ADD     .L1X    B4,A3,A3          ; |857| 
           LDW     .D1T1   *+A3(52),A3       ; |857| 
           NOP             2
           SHL     .S2     B5,5,B5           ; |857| 
           ADD     .L2     B5,B31,B4         ; |857| 
           STW     .D2T1   A3,*+B4(64)       ; |857| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",860,21
;----------------------------------------------------------------------
; 860 | chan->viops[i].frame.iFrm.cb2 =                                        
; 861 |     chan->viops[i].frame.iFrm.cb1;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |860| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |860| 
           NOP             1
           LDW     .D2T2   *+SP(12),B30      ; |860| 
           SHL     .S2     B4,5,B4           ; |860| 
           LDW     .D2T2   *+SP(16),B5       ; |860| 
           ADD     .L1X    B4,A3,A3          ; |860| 
           LDW     .D1T1   *+A3(56),A3       ; |860| 
           NOP             2
           SHL     .S2     B5,5,B5           ; |860| 
           ADD     .L2     B5,B30,B4         ; |860| 
           STW     .D2T1   A3,*+B4(68)       ; |860| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",862,21
;----------------------------------------------------------------------
; 862 | chan->viops[i].frame.iFrm.cr2 =                                        
; 863 |     chan->viops[i].frame.iFrm.cr1;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |862| 
           LDW     .D2T2   *+SP(12),B4       ; |862| 
           NOP             2
           LDW     .D2T2   *+SP(12),B29      ; |862| 

           SHL     .S2     B5,5,B5           ; |862| 
||         MV      .L2     B5,B6             ; |862| 

           ADD     .L2     B5,B4,B4          ; |862| 
           LDW     .D2T2   *+B4(60),B4       ; |862| 
           NOP             2
           SHL     .S2     B6,5,B6           ; |862| 
           ADD     .L2     B6,B29,B5         ; |862| 
           STW     .D2T2   B4,*+B5(72)       ; |862| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",865,17
           BNOP    .S1     L108,5            ; |865| 
           ; BRANCH OCCURS {L108}            ; |865| 
DW$L$__configTransfer$14$E:
;** --------------------------------------------------------------------------*
L104:    
DW$L$__configTransfer$15$B:
	.dwpsn	"vportcap_RAW.c",866,22
;----------------------------------------------------------------------
; 866 | else if(! chan->mergeFlds) {                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |866| 
           NOP             4
           ADDK    .S2     428,B4            ; |866| 
           LDHU    .D2T2   *B4,B0            ; |866| 
           NOP             4
   [ B0]   BNOP    .S1     L106,5            ; |866| 
           ; BRANCHCC OCCURS {L106}          ; |866| 
DW$L$__configTransfer$15$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$16$B:
	.dwpsn	"vportcap_RAW.c",867,21
;----------------------------------------------------------------------
; 867 | chan->viops[i].frame.iFrm.y2 = chan->viops[i].frame.iFrm.y1 + chan->num
;     | LinesFld1*chan->yPitch;                                                
; 869 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 870 |     // Do not set if in Raw Mode                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |867| 
           LDW     .D2T2   *+SP(16),B7       ; |867| 
           MVK     .S1     117,A4            ; |867| 
           MVK     .S2     113,B5            ; |867| 
           LDW     .D2T2   *+SP(12),B6       ; |867| 
           MV      .L1X    B4,A3             ; |867| 

           LDW     .D1T1   *+A3[A4],A3       ; |867| 
||         LDW     .D2T2   *+B4[B5],B4       ; |867| 

           MV      .L2     B7,B5             ; |867| 
           SHL     .S2     B7,5,B8           ; |867| 
           ADD     .L2     B8,B6,B8          ; |867| 
           LDW     .D2T2   *+B8(52),B8       ; |867| 
           MPYLH   .M2X    B4,A3,B7          ; |867| 
           MPYLH   .M1X    A3,B4,A4          ; |867| 
           MPYU    .M1X    B4,A3,A3          ; |867| 
           ADD     .L1X    B7,A4,A4          ; |867| 
           SHL     .S1     A4,16,A4          ; |867| 

           ADD     .L1     A3,A4,A3          ; |867| 
||         SHL     .S2     B5,5,B31          ; |867| 

           ADD     .L2     B31,B6,B4         ; |867| 
||         ADD     .L1X    A3,B8,A3          ; |867| 

           STW     .D2T1   A3,*+B4(64)       ; |867| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",871,18
;----------------------------------------------------------------------
; 871 | if(chan->mode & _VPORT_MASK_RAW)                                       
; 872 | //if(chan->mode == VPORT_MODE_RAW_8BIT)                                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |871| 
           NOP             3
           MVK     .S1     126,A4            ; |871| 
           LDW     .D1T1   *+A3[A4],A3       ; |871| 
           NOP             4
           AND     .L1     2,A3,A0           ; |871| 
   [!A0]   BNOP    .S1     L105,5            ; |871| 
           ; BRANCHCC OCCURS {L105}          ; |871| 
DW$L$__configTransfer$16$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$17$B:
	.dwpsn	"vportcap_RAW.c",874,19
;----------------------------------------------------------------------
; 874 | chan->viops[i].frame.iFrm.cb2 = 0;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |874| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |874| 
           NOP             1
           ZERO    .S1     A4                ; |874| 
           SHL     .S2     B4,5,B4           ; |874| 
           NOP             1
           ADD     .L1X    B4,A3,A3          ; |874| 
           STW     .D1T1   A4,*+A3(68)       ; |874| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",875,22
;----------------------------------------------------------------------
; 875 | chan->viops[i].frame.iFrm.cr2 = 0;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |875| 
           LDW     .D2T2   *+SP(12),B4       ; |875| 
           NOP             2
           ZERO    .S2     B31               ; |875| 
           SHL     .S2     B5,5,B5           ; |875| 
           ADD     .L2     B5,B4,B4          ; |875| 
           STW     .D2T2   B31,*+B4(72)      ; |875| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",876,18
;----------------------------------------------------------------------
; 877 | else                                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L108,5            ; |876| 
           ; BRANCH OCCURS {L108}            ; |876| 
DW$L$__configTransfer$17$E:
;** --------------------------------------------------------------------------*
L105:    
DW$L$__configTransfer$18$B:
	.dwpsn	"vportcap_RAW.c",879,19
;----------------------------------------------------------------------
; 879 | chan->viops[i].frame.iFrm.cb2 = chan->viops[i].frame.iFrm.cb1 + (chan->
;     | numLinesFld1*chan->cPitch);                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |879| 
           LDW     .D2T2   *+SP(16),B4       ; |879| 
           MVK     .S1     114,A31           ; |879| 
           MVK     .S1     117,A5            ; |879| 
           LDW     .D2T2   *+SP(16),B31      ; |879| 
           MV      .L1     A4,A3             ; |879| 
           LDW     .D1T1   *+A3[A31],A3      ; |879| 

           LDW     .D1T1   *+A4[A5],A4       ; |879| 
||         MV      .L1     A4,A6             ; |879| 

           NOP             2
           SHL     .S2     B4,5,B4           ; |879| 
           LDW     .D2T2   *+SP(12),B5       ; |879| 

           MPYLH   .M1     A3,A4,A7          ; |879| 
||         ADD     .L1X    B4,A6,A5          ; |879| 

           MPYLH   .M1     A4,A3,A6          ; |879| 
||         LDW     .D1T1   *+A5(56),A5       ; |879| 

           MPYU    .M1     A3,A4,A4          ; |879| 
           ADD     .L1     A7,A6,A3          ; |879| 
           SHL     .S1     A3,16,A3          ; |879| 

           SHL     .S2     B31,5,B4          ; |879| 
||         ADD     .L1     A4,A3,A3          ; |879| 

           ADD     .L2     B4,B5,B4          ; |879| 
||         ADD     .L1     A3,A5,A3          ; |879| 

           STW     .D2T1   A3,*+B4(68)       ; |879| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",880,22
;----------------------------------------------------------------------
; 880 | chan->viops[i].frame.iFrm.cr2 = chan->viops[i].frame.iFrm.cr1 + (chan->
;     | numLinesFld1*chan->cPitch);                                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |880| 
           LDW     .D2T2   *+SP(16),B6       ; |880| 
           MVK     .S2     114,B5            ; |880| 
           MVK     .S1     117,A4            ; |880| 
           LDW     .D2T2   *+SP(12),B30      ; |880| 
           MV      .L1X    B4,A3             ; |880| 

           LDW     .D1T1   *+A3[A4],A3       ; |880| 
||         LDW     .D2T2   *+B4[B5],B4       ; |880| 

           NOP             2
           SHL     .S2     B6,5,B8           ; |880| 
           SHL     .S2     B6,5,B29          ; |880| 
           MPYLH   .M2X    B4,A3,B7          ; |880| 

           ADD     .L2     B8,B30,B8         ; |880| 
||         MPYLH   .M1X    A3,B4,A4          ; |880| 

           LDW     .D2T2   *+B8(60),B8       ; |880| 
           ADD     .L1X    B7,A4,A4          ; |880| 
           MPYU    .M1X    B4,A3,A3          ; |880| 
           SHL     .S1     A4,16,A4          ; |880| 
           ADD     .L1     A3,A4,A3          ; |880| 

           ADD     .L1X    A3,B8,A3          ; |880| 
||         ADD     .L2     B29,B30,B4        ; |880| 

           STW     .D2T1   A3,*+B4(72)       ; |880| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",883,17
;----------------------------------------------------------------------
; 883 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L108,5            ; |883| 
           ; BRANCH OCCURS {L108}            ; |883| 
DW$L$__configTransfer$18$E:
;** --------------------------------------------------------------------------*
L106:    
DW$L$__configTransfer$19$B:
	.dwpsn	"vportcap_RAW.c",884,21
;----------------------------------------------------------------------
; 884 | chan->viops[i].frame.iFrm.y2 =                                         
; 885 |   chan->viops[i].frame.iFrm.y1 + chan->yPitch;                         
; 887 |     // RAW CAPTURE INITIALIZATION SPECIFIC                             
; 888 |     // Do not set if in Raw Mode                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B8       ; |884| 
           LDW     .D2T2   *+SP(16),B4       ; |884| 
           NOP             3
           MVK     .S2     113,B7            ; |884| 

           MV      .L2     B8,B5             ; |884| 
||         SHL     .S2     B4,5,B9           ; |884| 

           ADD     .L2     B9,B8,B5          ; |884| 
||         LDW     .D2T2   *+B5[B7],B7       ; |884| 

           LDW     .D2T2   *+B5(52),B5       ; |884| 
           NOP             1
           MV      .L2     B4,B6             ; |884| 
           SHL     .S2     B6,5,B6           ; |884| 
           ADD     .S2     B6,B8,B4          ; |884| 
           ADD     .L2     B7,B5,B5          ; |884| 
           STW     .D2T2   B5,*+B4(64)       ; |884| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",889,18
;----------------------------------------------------------------------
; 889 | if(chan->mode & _VPORT_MASK_RAW)                                       
; 890 | //if(chan->mode == VPORT_MODE_RAW_8BIT)                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |889| 
           NOP             3
           MVK     .S2     126,B5            ; |889| 
           LDW     .D2T2   *+B4[B5],B4       ; |889| 
           NOP             4
           AND     .L2     2,B4,B0           ; |889| 
   [!B0]   BNOP    .S1     L107,5            ; |889| 
           ; BRANCHCC OCCURS {L107}          ; |889| 
DW$L$__configTransfer$19$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$20$B:
	.dwpsn	"vportcap_RAW.c",892,16
;----------------------------------------------------------------------
; 892 | chan->viops[i].frame.iFrm.cb2 = 0;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |892| 
           NOP             1
           LDW     .D2T1   *+SP(12),A3       ; |892| 
           NOP             1
           ZERO    .S1     A4                ; |892| 
           SHL     .S2     B4,5,B4           ; |892| 
           NOP             1
           ADD     .L1X    B4,A3,A3          ; |892| 
           STW     .D1T1   A4,*+A3(68)       ; |892| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",893,22
;----------------------------------------------------------------------
; 893 | chan->viops[i].frame.iFrm.cr2 = 0;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |893| 
           LDW     .D2T2   *+SP(12),B4       ; |893| 
           NOP             2
           ZERO    .S2     B31               ; |893| 
           SHL     .S2     B5,5,B5           ; |893| 
           ADD     .L2     B5,B4,B4          ; |893| 
           STW     .D2T2   B31,*+B4(72)      ; |893| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",894,18
;----------------------------------------------------------------------
; 895 | else                                                                   
;----------------------------------------------------------------------
           BNOP    .S1     L108,5            ; |894| 
           ; BRANCH OCCURS {L108}            ; |894| 
DW$L$__configTransfer$20$E:
;** --------------------------------------------------------------------------*
L107:    
DW$L$__configTransfer$21$B:
	.dwpsn	"vportcap_RAW.c",897,19
;----------------------------------------------------------------------
; 897 | chan->viops[i].frame.iFrm.cb2 = chan->viops[i].frame.iFrm.cb1 + chan->c
;     | Pitch;                                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |897| 
           LDW     .D2T1   *+SP(12),A3       ; |897| 
           MVK     .S1     114,A5            ; |897| 
           LDW     .D2T2   *+SP(16),B5       ; |897| 
           LDW     .D2T2   *+SP(12),B31      ; |897| 
           SHL     .S2     B4,5,B4           ; |897| 
           MV      .L1     A3,A4             ; |897| 

           ADD     .L1X    B4,A3,A3          ; |897| 
||         LDW     .D1T1   *+A4[A5],A4       ; |897| 

           LDW     .D1T1   *+A3(56),A3       ; |897| 
           NOP             2
           SHL     .S2     B5,5,B5           ; |897| 
           ADD     .L2     B5,B31,B4         ; |897| 
           ADD     .L1     A4,A3,A3          ; |897| 
           STW     .D2T1   A3,*+B4(68)       ; |897| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",898,22
;----------------------------------------------------------------------
; 898 | chan->viops[i].frame.iFrm.cr2 = chan->viops[i].frame.iFrm.cr1 + chan->c
;     | Pitch;                                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B8       ; |898| 
           LDW     .D2T2   *+SP(16),B5       ; |898| 
           NOP             3
           MVK     .S2     114,B7            ; |898| 

           SHL     .S2     B5,5,B9           ; |898| 
||         MV      .L2     B8,B4             ; |898| 

           ADD     .L2     B9,B8,B4          ; |898| 
||         LDW     .D2T2   *+B4[B7],B7       ; |898| 

           LDW     .D2T2   *+B4(60),B4       ; |898| 
           MV      .L2     B5,B6             ; |898| 
           SHL     .S2     B6,5,B6           ; |898| 
           MV      .L2     B8,B5             ; |898| 
           NOP             1

           ADD     .L2     B7,B4,B5          ; |898| 
||         ADD     .S2     B6,B5,B4          ; |898| 

           STW     .D2T2   B5,*+B4(72)       ; |898| 
DW$L$__configTransfer$21$E:
;** --------------------------------------------------------------------------*
L108:    
DW$L$__configTransfer$22$B:
	.dwpsn	"vportcap_RAW.c",828,43
           LDW     .D2T2   *+SP(16),B4       ; |828| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |828| 
           STW     .D2T2   B4,*+SP(16)       ; |828| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",828,24
           LDW     .D2T2   *+SP(12),B4       ; |828| 
           NOP             2
           LDW     .D2T2   *+SP(16),B5       ; |828| 
           MVK     .S2     118,B6            ; |828| 
           LDW     .D2T2   *+B4[B6],B4       ; |828| 
           NOP             4
           CMPLTU  .L2     B5,B4,B0          ; |828| 
   [ B0]   BNOP    .S1     L100,5            ; |828| 
           ; BRANCHCC OCCURS {L100}          ; |828| 
DW$L$__configTransfer$22$E:
;** --------------------------------------------------------------------------*
L109:    
	.dwpsn	"vportcap_RAW.c",904,13
;----------------------------------------------------------------------
; 904 | for(i = ! chan->mergeFlds + 1; i < chan->numFrms; i ++) {              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |904| 
           NOP             4
           ADDK    .S2     428,B4            ; |904| 
           LDHU    .D2T2   *B4,B4            ; |904| 
           NOP             4
           CMPEQ   .L2     B4,0,B4           ; |904| 
           ADD     .L2     1,B4,B4           ; |904| 
           STW     .D2T2   B4,*+SP(16)       ; |904| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",904,40
           LDW     .D2T2   *+SP(12),B4       ; |904| 
           NOP             2
           LDW     .D2T2   *+SP(16),B5       ; |904| 
           MVK     .S2     118,B6            ; |904| 
           LDW     .D2T2   *+B4[B6],B4       ; |904| 
           NOP             4
           CMPLTU  .L2     B5,B4,B0          ; |904| 
   [!B0]   BNOP    .S1     L111,5            ; |904| 
           ; BRANCHCC OCCURS {L111}          ; |904| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L110:    
DW$L$__configTransfer$24$B:
	.dwpsn	"vportcap_RAW.c",906,13
;----------------------------------------------------------------------
; 906 | QUE_enqueue(&chan->qIn, (QUE_Handle)&chan->viops[i]);                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |906| 
           LDW     .D2T2   *+SP(16),B5       ; |906| 
           MVK     .S1     364,A3            ; |906| 
           CALL    .S1     _QUE_put          ; |906| 
           ADDKPC  .S2     RL52,B3,1         ; |906| 

           SHL     .S2     B5,5,B5           ; |906| 
||         MV      .L2     B4,B6             ; |906| 

           ADD     .L2     B5,B4,B4          ; |906| 

           ADD     .L1X    A3,B6,A4          ; |906| 
||         ADDAW   .D2     B4,11,B4          ; |906| 

RL52:      ; CALL OCCURS {_QUE_put}          ; |906| 
	.dwpsn	"vportcap_RAW.c",904,59
           LDW     .D2T2   *+SP(16),B4       ; |904| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |904| 
           STW     .D2T2   B4,*+SP(16)       ; |904| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",904,40
           LDW     .D2T2   *+SP(12),B4       ; |904| 
           NOP             2
           LDW     .D2T2   *+SP(16),B5       ; |904| 
           MVK     .S2     118,B6            ; |904| 
           LDW     .D2T2   *+B4[B6],B4       ; |904| 
           NOP             4
           CMPLTU  .L2     B5,B4,B0          ; |904| 
   [ B0]   BNOP    .S1     L110,5            ; |904| 
           ; BRANCHCC OCCURS {L110}          ; |904| 
DW$L$__configTransfer$24$E:
;** --------------------------------------------------------------------------*
L111:    
	.dwpsn	"vportcap_RAW.c",908,9
;----------------------------------------------------------------------
; 908 | chan->curViop = &chan->viops[0];                                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |908| 
           NOP             3
           MVK     .S2     123,B6            ; |908| 

           ADDK    .S2     44,B4             ; |908| 
||         MV      .L2     B4,B5             ; |908| 

           STW     .D2T2   B4,*+B5[B6]       ; |908| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",909,9
;----------------------------------------------------------------------
; 909 | chan->nextViop = &chan->viops[1];                                      
; 911 | //RAW CAPTURE INITIALIZATION SPECIFIC                                  
; 912 | // set number of EDMA channels to cycle through based on RAW mode opera
;     | tion                                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |909| 
           NOP             3
           MVK     .S2     124,B6            ; |909| 

           ADDK    .S2     76,B5             ; |909| 
||         MV      .L2     B5,B4             ; |909| 

           STW     .D2T2   B5,*+B4[B6]       ; |909| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",913,9
;----------------------------------------------------------------------
; 913 | numEdmaChans = (chan->mode & _VPORT_MASK_RAW) ? _VPORT_NUM_EDMA_CHANS_R
;     | AW : _VPORT_NUM_EDMA_CHANS;                                            
; 914 | //numEdmaChans = (chan->mode == VPORT_MODE_RAW_8BIT) ? _VPORT_NUM_EDMA_
;     | CHANS_RAW : _VPORT_NUM_EDMA_CHANS;                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |913| 
           NOP             3
           MVK     .S2     126,B5            ; |913| 
           LDW     .D2T2   *+B4[B5],B4       ; |913| 
           NOP             4
           AND     .L2     2,B4,B0           ; |913| 
   [ B0]   BNOP    .S1     L112,4            ; |913| 
           MVK     .L2     0x1,B4            ; |913| 
           ; BRANCHCC OCCURS {L112}          ; |913| 
;** --------------------------------------------------------------------------*
           MVK     .L2     0x3,B4            ; |913| 
;** --------------------------------------------------------------------------*
L112:    
           STW     .D2T2   B4,*+SP(52)       ; |913| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",916,13
;----------------------------------------------------------------------
; 916 | for(i = 0; i < numEdmaChans; i ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |916| 
           STW     .D2T2   B4,*+SP(16)       ; |916| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",916,20
           LDW     .D2T2   *+SP(16),B5       ; |916| 
           LDW     .D2T2   *+SP(52),B4       ; |916| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |916| 
   [!B0]   BNOP    .S1     L118,5            ; |916| 
           ; BRANCHCC OCCURS {L118}          ; |916| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L113:    
DW$L$__configTransfer$28$B:

DW$244	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$245	.dwtag  DW_TAG_variable, DW_AT_name("optFld1"), DW_AT_symbol_name("_optFld1")
	.dwattr DW$245, DW_AT_type(*DW$T$22)
	.dwattr DW$245, DW_AT_location[DW_OP_breg31 56]
DW$246	.dwtag  DW_TAG_variable, DW_AT_name("optFld2"), DW_AT_symbol_name("_optFld2")
	.dwattr DW$246, DW_AT_type(*DW$T$22)
	.dwattr DW$246, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"vportcap_RAW.c",917,17
;----------------------------------------------------------------------
; 917 | Int optFld1 = EDMA_OPT_RMK(                                            
; 918 |     params->edmaPri,                                                   
; 919 |     EDMA_OPT_ESIZE_32BIT,                                              
; 920 |     EDMA_OPT_2DS_NO,                                                   
; 921 |     EDMA_OPT_SUM_NONE,                                                 
; 922 |     EDMA_OPT_2DD_YES,                                                  
; 923 |     EDMA_OPT_DUM_INC,                                                  
; 924 |     EDMA_OPT_TCINT_NO,                                                 
; 925 |     EDMA_OPT_TCC_OF(chan->tcc[i] & 0x0f),                              
; 926 |     EDMA_OPT_TCCM_OF(chan->tcc[i] >> 4),                               
; 927 |     EDMA_OPT_ATCINT_NO,                                                
; 928 |     EDMA_OPT_ATCC_DEFAULT,                                             
; 929 |     EDMA_OPT_PDTS_DISABLE,                                             
; 930 |     EDMA_OPT_PDTD_DISABLE,                                             
; 931 |     EDMA_OPT_LINK_YES,                                                 
; 932 |     EDMA_OPT_FS_NO                                                     
; 933 | );                                                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |917| 
           MV      .L1X    B5,A3
           MV      .S1X    B5,A5
           LDW     .D2T1   *+SP(8),A7        ; |917| 
           MVK     .S1     104,A31           ; |917| 

           MV      .L1     A4,A6             ; |917| 
||         ADDAW   .D1     A4,A3,A3          ; |917| 

           ADDAW   .D1     A6,A5,A4          ; |917| 

           LDW     .D1T1   *+A3[A31],A5      ; |917| 
||         MVK     .S1     104,A30           ; |917| 

           LDW     .D1T1   *+A4[A30],A6      ; |917| 
           LDW     .D1T1   *+A7(80),A29      ; |917| 
           ZERO    .L1     A28               ; |917| 
           MVKH    .S1     0xf0000,A28       ; |917| 
           AND     .L1     15,A5,A5          ; |917| 
           SHR     .S1     A6,4,A6           ; |917| 
           SHL     .S1     A5,16,A5          ; |917| 

           SHL     .S1     A6,13,A6          ; |917| 
||         MVK     .S2     24576,B4          ; |917| 

           AND     .L1     A28,A5,A3         ; |917| 
||         SHL     .S2X    A29,29,B5         ; |917| 

           AND     .L2X    B4,A6,B6          ; |917| 
||         CLR     .S2     B5,0,28,B31       ; |917| 

           OR      .L2X    A3,B31,B4         ; |917| 
||         MVKL    .S2     0xa00002,B30      ; |917| 

           OR      .L2     B6,B4,B4          ; |917| 
||         MVKH    .S2     0xa00002,B30      ; |917| 

           OR      .L2     B30,B4,B4         ; |917| 
           STW     .D2T2   B4,*+SP(56)       ; |917| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",935,17
;----------------------------------------------------------------------
; 935 | Int optFld2 = EDMA_OPT_RMK(                                            
; 936 |     params->edmaPri,                                                   
; 937 |     EDMA_OPT_ESIZE_32BIT,                                              
; 938 |     EDMA_OPT_2DS_NO,                                                   
; 939 |     EDMA_OPT_SUM_NONE,                                                 
; 940 |     EDMA_OPT_2DD_YES,                                                  
; 941 |     EDMA_OPT_DUM_INC,                                                  
; 942 |     EDMA_OPT_TCINT_YES,                                                
; 943 |     EDMA_OPT_TCC_OF(chan->tcc[i] & 0x0f),                              
; 944 |     EDMA_OPT_TCCM_OF(chan->tcc[i] >> 4),                               
; 945 |     EDMA_OPT_ATCINT_NO,                                                
; 946 |     EDMA_OPT_ATCC_DEFAULT,                                             
; 947 |     EDMA_OPT_PDTS_DISABLE,                                             
; 948 |     EDMA_OPT_PDTD_DISABLE,                                             
; 949 |     EDMA_OPT_LINK_YES,                                                 
; 950 |     EDMA_OPT_FS_NO                                                     
; 951 | );                                                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |935| 
           LDW     .D2T2   *+SP(16),B5       ; |935| 
           MV      .L2X    A7,B6             ; |935| 
           LDW     .D2T2   *+B6(80),B6       ; |935| 
           MVK     .S2     104,B29           ; |935| 
           MVK     .S1     104,A27           ; |935| 

           ADDAW   .D2     B4,B5,B4          ; |935| 
||         MV      .L1X    B4,A4             ; |935| 

           MV      .L1X    B5,A3             ; |935| 

           ADDAW   .D1     A4,A3,A3          ; |935| 
||         LDW     .D2T2   *+B4[B29],B4      ; |935| 

           LDW     .D1T1   *+A3[A27],A4      ; |935| 
           SHL     .S1X    B6,29,A5          ; |935| 
           ZERO    .L1     A26               ; |935| 
           MVKH    .S1     0xf0000,A26       ; |935| 
           AND     .L2     15,B4,B4          ; |935| 

           SHL     .S2     B4,16,B5          ; |935| 
||         SHR     .S1     A4,4,A4           ; |935| 

           CLR     .S1     A5,0,28,A5        ; |935| 
||         MVK     .S2     24576,B28         ; |935| 

           AND     .L1X    A26,B5,A4         ; |935| 
||         SHL     .S1     A4,13,A3          ; |935| 

           OR      .L1     A4,A5,A4          ; |935| 
||         AND     .S1X    B28,A3,A3         ; |935| 

           OR      .L1     A3,A4,A3          ; |935| 
||         MVKL    .S2     0xb00002,B27      ; |935| 

           MVKH    .S2     0xb00002,B27      ; |935| 
           OR      .L2X    B27,A3,B4         ; |935| 
           STW     .D2T2   B4,*+SP(60)       ; |935| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",952,13
;----------------------------------------------------------------------
; 952 | EDMA_disableChannel(chan->hEdma[i]);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A5       ; |952| 
           LDW     .D2T1   *+SP(16),A4       ; |952| 
           NOP             1
           MVKL    .S1     _EDMA_disableChannel,A3 ; |952| 
           MVKH    .S1     _EDMA_disableChannel,A3 ; |952| 
           MVK     .S1     95,A6             ; |952| 

           ADDAW   .D1     A5,A4,A4          ; |952| 
||         CALL    .S2X    A3                ; |952| 

           LDW     .D1T1   *+A4[A6],A4       ; |952| 
           ADDKPC  .S2     RL53,B3,3         ; |952| 
RL53:      ; CALL OCCURS {_EDMA_disableChannel}  ; |952| 
	.dwpsn	"vportcap_RAW.c",953,13
;----------------------------------------------------------------------
; 953 | EDMA_intClear(chan->tcc[i]);                                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A5       ; |953| 
           LDW     .D2T1   *+SP(16),A4       ; |953| 
           NOP             1
           MVKL    .S1     _EDMA_intClear,A3 ; |953| 
           MVKH    .S1     _EDMA_intClear,A3 ; |953| 
           MVK     .S1     104,A6            ; |953| 

           ADDAW   .D1     A5,A4,A4          ; |953| 
||         CALL    .S2X    A3                ; |953| 

           LDW     .D1T1   *+A4[A6],A4       ; |953| 
           ADDKPC  .S2     RL54,B3,3         ; |953| 
RL54:      ; CALL OCCURS {_EDMA_intClear}    ; |953| 
	.dwpsn	"vportcap_RAW.c",954,13
;----------------------------------------------------------------------
; 954 | EDMA_clearChannel(chan->hEdma[i]);                                     
; 956 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |954| 
           LDW     .D2T1   *+SP(12),A4       ; |954| 
           NOP             1
           MVKL    .S2     _EDMA_clearChannel,B4 ; |954| 
           MVKH    .S2     _EDMA_clearChannel,B4 ; |954| 
           MVK     .S1     95,A31            ; |954| 

           ADDAW   .D1     A4,A3,A3          ; |954| 
||         CALL    .S2     B4                ; |954| 

           LDW     .D1T1   *+A3[A31],A4      ; |954| 
           ADDKPC  .S2     RL55,B3,3         ; |954| 
RL55:      ; CALL OCCURS {_EDMA_clearChannel}  ; |954| 
	.dwpsn	"vportcap_RAW.c",957,13
;----------------------------------------------------------------------
; 957 | thrld = (i == 0) ? chan->yThrld : chan->cThrld;                        
; 958 |     //thrld = chan->yThrld;                                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B0       ; |957| 
           NOP             4
   [ B0]   BNOP    .S1     L114,5            ; |957| 
           ; BRANCHCC OCCURS {L114}          ; |957| 
DW$L$__configTransfer$28$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$29$B:
           LDW     .D2T2   *+SP(12),B4       ; |957| 
           NOP             2
           MVK     .S2     121,B5            ; |957| 
           B       .S1     L115              ; |957| 
           LDW     .D2T2   *+B4[B5],B4       ; |957| 
           NOP             4
           ; BRANCH OCCURS {L115}            ; |957| 
DW$L$__configTransfer$29$E:
;** --------------------------------------------------------------------------*
L114:    
DW$L$__configTransfer$30$B:
           LDW     .D2T2   *+SP(12),B4       ; |957| 
           NOP             3
           MVK     .S2     122,B5            ; |957| 
           LDW     .D2T2   *+B4[B5],B4       ; |957| 
           NOP             4
DW$L$__configTransfer$30$E:
;** --------------------------------------------------------------------------*
L115:    
DW$L$__configTransfer$31$B:
           STW     .D2T2   B4,*+SP(44)       ; |957| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",960,13
;----------------------------------------------------------------------
; 960 | cfgEdma.src = EDMA_SRC_RMK(chan->edmaAddr[i]);                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |960| 
           NOP             3
           MV      .L2     B0,B4
           ADDAW   .D2     B5,B4,B4          ; |960| 
           LDW     .D2T2   *+B4(28),B4       ; |960| 
           NOP             4
           STW     .D2T2   B4,*+SP(24)       ; |960| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",961,13
;----------------------------------------------------------------------
; 961 | if(chan->mergeFlds) {                                                  
;----------------------------------------------------------------------
           MV      .L1X    B5,A3
           ADDK    .S1     428,A3            ; |961| 
           LDHU    .D1T1   *A3,A0            ; |961| 
           NOP             4
   [!A0]   BNOP    .S1     L116,5            ; |961| 
           ; BRANCHCC OCCURS {L116}          ; |961| 
DW$L$__configTransfer$31$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$32$B:
	.dwpsn	"vportcap_RAW.c",966,17
;----------------------------------------------------------------------
; 966 | cfgEdma.cnt = EDMA_CNT_RMK((chan->numEventsFld1) - 1, (thrld << 1));   
;----------------------------------------------------------------------

           MVK     .S1     120,A4            ; |966| 
||         MV      .L1X    B5,A3

           LDW     .D1T1   *+A3[A4],A3       ; |966| 
||         LDW     .D2T2   *+SP(44),B4       ; |966| 

           NOP             4

           SUB     .L1     A3,1,A3           ; |966| 
||         ADD     .L2     B4,B4,B4          ; |966| 

           SHL     .S1     A3,16,A3          ; |966| 
           PACKHL2 .L1X    A3,B4,A3          ; |966| 
           STW     .D2T1   A3,*+SP(28)       ; |966| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",967,17
;----------------------------------------------------------------------
; 967 | cfgEdma.idx = EDMA_IDX_RMK(thrld << 4, 0);                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |967| 
           NOP             4
           SHL     .S2     B4,20,B4          ; |967| 
           CLR     .S2     B4,0,15,B4        ; |967| 
           STW     .D2T2   B4,*+SP(36)       ; |967| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",971,17
;----------------------------------------------------------------------
; 971 | cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[2 * i + 1]);                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |971| 
           NOP             1
           MV      .L2     B0,B5
           MVK     .S2     1,B6              ; |971| 
           ADDAH   .D2     B6,B5,B5          ; |971| 

           MVK     .S2     98,B5             ; |971| 
||         ADDAW   .D2     B4,B5,B4          ; |971| 

           LDW     .D2T2   *+B4[B5],B4       ; |971| 
           NOP             4
           EXTU    .S2     B4,16,16,B4       ; |971| 
           STW     .D2T2   B4,*+SP(40)       ; |971| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",972,17
;----------------------------------------------------------------------
; 972 | cfgEdma.opt = optFld1;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B4       ; |972| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |972| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",973,17
;----------------------------------------------------------------------
; 973 | cfgEdma.dst = EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y1) + i
;     | ));                                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |973| 
           NOP             3
           MV      .L1X    B0,A3
           ADDAW   .D1     A4,A3,A3          ; |973| 
           LDW     .D1T2   *+A3(52),B4       ; |973| 
           NOP             4
           STW     .D2T2   B4,*+SP(32)       ; |973| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",974,17
;----------------------------------------------------------------------
; 974 | EDMA_config(chan->hEdma[i], &cfgEdma);                                 
;----------------------------------------------------------------------
           MVKL    .S1     _EDMA_config,A3   ; |974| 
           MVKH    .S1     _EDMA_config,A3   ; |974| 

           MV      .L1X    B0,A4
||         MV      .S1     A4,A5

           CALL    .S2X    A3                ; |974| 
||         ADDAW   .D1     A5,A4,A4          ; |974| 
||         MVK     .S1     95,A6             ; |974| 

           LDW     .D1T1   *+A4[A6],A4       ; |974| 
           ADDKPC  .S2     RL56,B3,2         ; |974| 
           ADD     .D2     SP,20,B4          ; |974| 
RL56:      ; CALL OCCURS {_EDMA_config}      ; |974| 
	.dwpsn	"vportcap_RAW.c",975,17
;----------------------------------------------------------------------
; 975 | EDMA_config(chan->hRld[2 * i], &cfgEdma);                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |975| 
           LDW     .D2T1   *+SP(12),A4       ; |975| 
           MVKL    .S2     _EDMA_config,B5   ; |975| 
           MVKH    .S2     _EDMA_config,B5   ; |975| 
           MVK     .S1     98,A31            ; |975| 
           ADD     .D2     SP,20,B4          ; |975| 

           ADDAD   .D1     A4,A3,A3          ; |975| 
||         CALL    .S2     B5                ; |975| 

           LDW     .D1T1   *+A3[A31],A4      ; |975| 
           ADDKPC  .S2     RL57,B3,3         ; |975| 
RL57:      ; CALL OCCURS {_EDMA_config}      ; |975| 
	.dwpsn	"vportcap_RAW.c",977,17
;----------------------------------------------------------------------
; 977 | cfgEdma.opt = optFld2;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(60),B4       ; |977| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |977| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",978,17
;----------------------------------------------------------------------
; 978 | cfgEdma.cnt = EDMA_CNT_RMK((chan->numEvents-chan->numEventsFld1) - 1, (
;     | thrld << 1));                                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |978| 
           NOP             1
           MVK     .S2     120,B5            ; |978| 
           MVK     .S1     119,A4            ; |978| 
           LDW     .D2T2   *+SP(44),B31      ; |978| 
           MV      .L1X    B4,A3             ; |978| 

           LDW     .D2T2   *+B4[B5],B5       ; |978| 
||         LDW     .D1T1   *+A3[A4],A3       ; |978| 

           NOP             4
           SUB     .L1X    A3,B5,A3          ; |978| 

           ADD     .L2     B31,B31,B4        ; |978| 
||         SUB     .L1     A3,1,A3           ; |978| 

           SHL     .S1     A3,16,A3          ; |978| 
           PACKHL2 .L1X    A3,B4,A3          ; |978| 
           STW     .D2T1   A3,*+SP(28)       ; |978| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",979,17
;----------------------------------------------------------------------
; 979 | cfgEdma.dst = EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y2) + i
;     | ));                                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |979| 
           LDW     .D2T1   *+SP(12),A4       ; |979| 
           NOP             4
           ADDAW   .D1     A4,A3,A3          ; |979| 
           LDW     .D1T1   *+A3(64),A3       ; |979| 
           NOP             4
           STW     .D2T1   A3,*+SP(32)       ; |979| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",980,17
;----------------------------------------------------------------------
; 980 | cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[2 * i]);                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |980| 
           NOP             3
           MVK     .S1     98,A31            ; |980| 
           ADDAD   .D1     A4,A3,A3          ; |980| 
           LDW     .D1T1   *+A3[A31],A3      ; |980| 
           NOP             4
           EXTU    .S1     A3,16,16,A3       ; |980| 
           STW     .D2T1   A3,*+SP(40)       ; |980| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",981,17
;----------------------------------------------------------------------
; 981 | EDMA_config(chan->hRld[2 * i + 1], &cfgEdma);                          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |981| 
           LDW     .D2T1   *+SP(12),A4       ; |981| 
           MVKL    .S2     _EDMA_config,B5   ; |981| 
           MVK     .L1     1,A5              ; |981| 
           MVKH    .S2     _EDMA_config,B5   ; |981| 
           ADDAH   .D1     A5,A3,A3          ; |981| 

           CALL    .S2     B5                ; |981| 
||         ADDAW   .D1     A4,A3,A3          ; |981| 
||         MVK     .S1     98,A30            ; |981| 

           LDW     .D1T1   *+A3[A30],A4      ; |981| 
           ADDKPC  .S2     RL58,B3,2         ; |981| 
           ADD     .D2     SP,20,B4          ; |981| 
RL58:      ; CALL OCCURS {_EDMA_config}      ; |981| 
	.dwpsn	"vportcap_RAW.c",983,13
;----------------------------------------------------------------------
; 983 | }else {/* if fields are not merged, configure EDMA to transfer */      
;----------------------------------------------------------------------
           BNOP    .S1     L117,5            ; |983| 
           ; BRANCH OCCURS {L117}            ; |983| 
DW$L$__configTransfer$32$E:
;** --------------------------------------------------------------------------*
L116:    
DW$L$__configTransfer$33$B:
	.dwpsn	"vportcap_RAW.c",986,17
;----------------------------------------------------------------------
; 986 | cfgEdma.opt = optFld2;                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(60),B4       ; |986| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |986| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",987,17
;----------------------------------------------------------------------
; 987 | cfgEdma.cnt = EDMA_CNT_RMK((chan->numEvents) - 1, (thrld << 1));       
;----------------------------------------------------------------------

           MVK     .S2     119,B5            ; |987| 
||         MV      .L2     B5,B4

           LDW     .D2T2   *+B4[B5],B5       ; |987| 
           LDW     .D2T2   *+SP(44),B31      ; |987| 
           NOP             3
           SUB     .L2     B5,1,B5           ; |987| 

           SHL     .S2     B5,16,B5          ; |987| 
||         ADD     .L2     B31,B31,B4        ; |987| 

           PACKHL2 .L2     B5,B4,B4          ; |987| 
           STW     .D2T2   B4,*+SP(28)       ; |987| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",988,17
;----------------------------------------------------------------------
; 988 | cfgEdma.idx = EDMA_IDX_RMK(thrld << 3, 0);                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |988| 
           NOP             4
           SHL     .S2     B4,19,B4          ; |988| 
           CLR     .S2     B4,0,15,B4        ; |988| 
           STW     .D2T2   B4,*+SP(36)       ; |988| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",989,17
;----------------------------------------------------------------------
; 989 | cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[i]);                          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |989| 
           NOP             2
           MV      .L1X    B0,A3             ; |989| 
           MVK     .S1     98,A31            ; |989| 
           ADDAW   .D1     A4,A3,A3          ; |989| 
           LDW     .D1T1   *+A3[A31],A3      ; |989| 
           NOP             4
           EXTU    .S1     A3,16,16,A3       ; |989| 
           STW     .D2T1   A3,*+SP(40)       ; |989| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",992,17
;----------------------------------------------------------------------
; 992 | cfgEdma.dst = EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y1) + i
;     | ));                                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A4       ; |992| 
           NOP             3
           MV      .L1X    B0,A3
           ADDAW   .D1     A4,A3,A3          ; |992| 
           LDW     .D1T2   *+A3(52),B4       ; |992| 
           NOP             4
           STW     .D2T2   B4,*+SP(32)       ; |992| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",993,17
;----------------------------------------------------------------------
; 993 | EDMA_config(chan->hEdma[i], &cfgEdma);                                 
;----------------------------------------------------------------------
           MVKL    .S1     _EDMA_config,A5   ; |993| 
           MVKH    .S1     _EDMA_config,A5   ; |993| 

           MV      .L1X    B0,A4
||         MV      .S1     A4,A3

           CALL    .S2X    A5                ; |993| 
||         ADDAW   .D1     A3,A4,A3          ; |993| 
||         MVK     .S1     95,A6             ; |993| 

           LDW     .D1T1   *+A3[A6],A4       ; |993| 
           ADDKPC  .S2     RL59,B3,2         ; |993| 
           ADD     .D2     SP,20,B4          ; |993| 
RL59:      ; CALL OCCURS {_EDMA_config}      ; |993| 
	.dwpsn	"vportcap_RAW.c",994,17
;----------------------------------------------------------------------
; 994 | cfgEdma.dst = EDMA_DST_RMK(*((Int *)(&chan->viops[1].frame.iFrm.y1) + i
;     | ));                                                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |994| 
           LDW     .D2T1   *+SP(12),A4       ; |994| 
           NOP             4
           ADDAW   .D1     A4,A3,A3          ; |994| 
           LDW     .D1T1   *+A3(84),A3       ; |994| 
           NOP             4
           STW     .D2T1   A3,*+SP(32)       ; |994| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",995,17
;----------------------------------------------------------------------
; 995 | EDMA_config(chan->hRld[i], &cfgEdma);                                  
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |995| 
           MVKL    .S2     _EDMA_config,B5   ; |995| 
           MVKH    .S2     _EDMA_config,B5   ; |995| 
           MVK     .S1     98,A31            ; |995| 
           ADD     .D2     SP,20,B4          ; |995| 

           ADDAW   .D1     A4,A3,A3          ; |995| 
||         CALL    .S2     B5                ; |995| 

           LDW     .D1T1   *+A3[A31],A4      ; |995| 
           ADDKPC  .S2     RL60,B3,3         ; |995| 
RL60:      ; CALL OCCURS {_EDMA_config}      ; |995| 
DW$L$__configTransfer$33$E:
;** --------------------------------------------------------------------------*
L117:    
DW$L$__configTransfer$34$B:
	.dwendtag DW$244

	.dwpsn	"vportcap_RAW.c",916,38
           LDW     .D2T2   *+SP(16),B4       ; |916| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |916| 
           STW     .D2T2   B4,*+SP(16)       ; |916| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",916,20
           LDW     .D2T2   *+SP(52),B4       ; |916| 
           LDW     .D2T2   *+SP(16),B5       ; |916| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |916| 
   [ B0]   BNOP    .S1     L113,5            ; |916| 
           ; BRANCHCC OCCURS {L113}          ; |916| 
DW$L$__configTransfer$34$E:
;** --------------------------------------------------------------------------*
L118:    
	.dwpsn	"vportcap_RAW.c",999,9
;----------------------------------------------------------------------
; 999 | EDMA_intHook(chan->tcc[0], captureEdmaISR);                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |999| 
           MVKL    .S1     _EDMA_intHook,A3  ; |999| 
           MVKH    .S1     _EDMA_intHook,A3  ; |999| 
           MVK     .S2     104,B6            ; |999| 
           CALL    .S2X    A3                ; |999| 
           LDW     .D2T1   *+B5[B6],A4       ; |999| 
           MVKL    .S2     _captureEdmaISR,B4 ; |999| 
           MVKH    .S2     _captureEdmaISR,B4 ; |999| 
           ADDKPC  .S2     RL61,B3,1         ; |999| 
RL61:      ; CALL OCCURS {_EDMA_intHook}     ; |999| 
	.dwpsn	"vportcap_RAW.c",1004,9
;----------------------------------------------------------------------
; 1004 | IRQ_map(IRQ_EVT_EDMAINT, params->irqId);                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1004| 
           MVKL    .S1     _IRQ_map,A3       ; |1004| 
           MVKH    .S1     _IRQ_map,A3       ; |1004| 
           NOP             1
           CALL    .S2X    A3                ; |1004| 
           LDW     .D1T2   *+A4(84),B4       ; |1004| 
           MVK     .L1     0x8,A4            ; |1004| 
           ADDKPC  .S2     RL62,B3,2         ; |1004| 
RL62:      ; CALL OCCURS {_IRQ_map}          ; |1004| 
	.dwpsn	"vportcap_RAW.c",1005,9
;----------------------------------------------------------------------
; 1005 | HWI_dispatchPlug(params->irqId, (Fxn)EDMA_intDispatcher, -1, NULL);    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B5        ; |1005| 
           MVKL    .S2     _EDMA_intDispatcher,B4 ; |1005| 
           MVKH    .S2     _EDMA_intDispatcher,B4 ; |1005| 
           ZERO    .L2     B6                ; |1005| 
           CALL    .S1     _HWI_dispatchPlug ; |1005| 
           LDW     .D2T1   *+B5(84),A4       ; |1005| 
           ADDKPC  .S2     RL63,B3,2         ; |1005| 
           MVK     .L1     0xffffffff,A6     ; |1005| 
RL63:      ; CALL OCCURS {_HWI_dispatchPlug}  ; |1005| 
	.dwpsn	"vportcap_RAW.c",1007,9
;----------------------------------------------------------------------
; 1007 | EDMA_intClear(chan->tcc[0]);                                           
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1007| 
           MVKL    .S1     _EDMA_intClear,A3 ; |1007| 
           MVKH    .S1     _EDMA_intClear,A3 ; |1007| 
           MVK     .S2     104,B5            ; |1007| 
           CALL    .S2X    A3                ; |1007| 
           LDW     .D2T1   *+B4[B5],A4       ; |1007| 
           ADDKPC  .S2     RL64,B3,3         ; |1007| 
RL64:      ; CALL OCCURS {_EDMA_intClear}    ; |1007| 
	.dwpsn	"vportcap_RAW.c",1008,9
;----------------------------------------------------------------------
; 1008 | EDMA_intEnable(chan->tcc[0]);                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1008| 
           MVKL    .S1     _EDMA_intEnable,A3 ; |1008| 
           MVKH    .S1     _EDMA_intEnable,A3 ; |1008| 
           MVK     .S2     104,B5            ; |1008| 
           CALL    .S2X    A3                ; |1008| 
           LDW     .D2T1   *+B4[B5],A4       ; |1008| 
           ADDKPC  .S2     RL65,B3,3         ; |1008| 
RL65:      ; CALL OCCURS {_EDMA_intEnable}   ; |1008| 
	.dwpsn	"vportcap_RAW.c",1009,13
;----------------------------------------------------------------------
; 1009 | for(i = 0; i < numEdmaChans; i ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1009| 
           STW     .D2T2   B4,*+SP(16)       ; |1009| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1009,20
           LDW     .D2T1   *+SP(52),A3       ; |1009| 
           NOP             4
           CMPLT   .L1X    B4,A3,A0          ; |1009| 
   [!A0]   BNOP    .S1     L120,5            ; |1009| 
           ; BRANCHCC OCCURS {L120}          ; |1009| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L119:    
DW$L$__configTransfer$36$B:
	.dwpsn	"vportcap_RAW.c",1010,13
;----------------------------------------------------------------------
; 1010 | EDMA_clearChannel(chan->hEdma[i]);                                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1010| 
           LDW     .D2T1   *+SP(16),A4       ; |1010| 
           NOP             2
           MVKL    .S2     _EDMA_clearChannel,B4 ; |1010| 
           MVKH    .S2     _EDMA_clearChannel,B4 ; |1010| 

           MVK     .S1     95,A3             ; |1010| 
||         ADDAW   .D1     A3,A4,A4          ; |1010| 
||         CALL    .S2     B4                ; |1010| 

           LDW     .D1T1   *+A4[A3],A4       ; |1010| 
           ADDKPC  .S2     RL66,B3,3         ; |1010| 
RL66:      ; CALL OCCURS {_EDMA_clearChannel}  ; |1010| 
	.dwpsn	"vportcap_RAW.c",1011,13
;----------------------------------------------------------------------
; 1011 | EDMA_enableChannel(chan->hEdma[i]);                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B5       ; |1011| 
           LDW     .D2T2   *+SP(16),B4       ; |1011| 
           NOP             2
           MVKL    .S1     _EDMA_enableChannel,A3 ; |1011| 
           MVKH    .S1     _EDMA_enableChannel,A3 ; |1011| 

           MVK     .S2     95,B4             ; |1011| 
||         ADDAW   .D2     B5,B4,B5          ; |1011| 

           CALL    .S2X    A3                ; |1011| 
           LDW     .D2T1   *+B5[B4],A4       ; |1011| 
           ADDKPC  .S2     RL67,B3,3         ; |1011| 
RL67:      ; CALL OCCURS {_EDMA_enableChannel}  ; |1011| 
	.dwpsn	"vportcap_RAW.c",1009,38
           LDW     .D2T2   *+SP(16),B4       ; |1009| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1009| 
           STW     .D2T2   B4,*+SP(16)       ; |1009| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1009,20
           LDW     .D2T2   *+SP(52),B4       ; |1009| 
           LDW     .D2T2   *+SP(16),B5       ; |1009| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1009| 
   [ B0]   BNOP    .S1     L119,5            ; |1009| 
           ; BRANCHCC OCCURS {L119}          ; |1009| 
DW$L$__configTransfer$36$E:
;** --------------------------------------------------------------------------*
L120:    
	.dwpsn	"vportcap_RAW.c",1013,9
;----------------------------------------------------------------------
; 1013 | chan->status |= _VPORT_READY;                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1013| 
           NOP             4
           LDW     .D2T2   *B4,B5            ; |1013| 
           NOP             4
           OR      .L2     4,B5,B5           ; |1013| 
           STW     .D2T2   B5,*B4            ; |1013| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1014,9
;----------------------------------------------------------------------
; 1014 | IRQ_enable(IRQ_EVT_EDMAINT);                                           
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_enable,A3    ; |1014| 
           MVKH    .S1     _IRQ_enable,A3    ; |1014| 
           MVK     .L1     0x8,A4            ; |1014| 
           CALL    .S2X    A3                ; |1014| 
           ADDKPC  .S2     RL68,B3,4         ; |1014| 
RL68:      ; CALL OCCURS {_IRQ_enable}       ; |1014| 
;** --------------------------------------------------------------------------*
L121:    
	.dwpsn	"vportcap_RAW.c",1017,5
;----------------------------------------------------------------------
; 1017 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1017| 
;** --------------------------------------------------------------------------*
L122:    
	.dwpsn	"vportcap_RAW.c",1019,1
           LDW     .D2T2   *++SP(64),B3      ; |1019| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1019| 
           ; BRANCH OCCURS {B3}              ; |1019| 

DW$247	.dwtag  DW_TAG_loop
	.dwattr DW$247, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L119:1:1301635728")
	.dwattr DW$247, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$247, DW_AT_begin_line(0x3f1)
	.dwattr DW$247, DW_AT_end_line(0x3f4)
DW$248	.dwtag  DW_TAG_loop_range
	.dwattr DW$248, DW_AT_low_pc(DW$L$__configTransfer$36$B)
	.dwattr DW$248, DW_AT_high_pc(DW$L$__configTransfer$36$E)
	.dwendtag DW$247


DW$249	.dwtag  DW_TAG_loop
	.dwattr DW$249, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L113:1:1301635728")
	.dwattr DW$249, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$249, DW_AT_begin_line(0x394)
	.dwattr DW$249, DW_AT_end_line(0x3e5)
DW$250	.dwtag  DW_TAG_loop_range
	.dwattr DW$250, DW_AT_low_pc(DW$L$__configTransfer$28$B)
	.dwattr DW$250, DW_AT_high_pc(DW$L$__configTransfer$28$E)
DW$251	.dwtag  DW_TAG_loop_range
	.dwattr DW$251, DW_AT_low_pc(DW$L$__configTransfer$29$B)
	.dwattr DW$251, DW_AT_high_pc(DW$L$__configTransfer$29$E)
DW$252	.dwtag  DW_TAG_loop_range
	.dwattr DW$252, DW_AT_low_pc(DW$L$__configTransfer$30$B)
	.dwattr DW$252, DW_AT_high_pc(DW$L$__configTransfer$30$E)
DW$253	.dwtag  DW_TAG_loop_range
	.dwattr DW$253, DW_AT_low_pc(DW$L$__configTransfer$31$B)
	.dwattr DW$253, DW_AT_high_pc(DW$L$__configTransfer$31$E)
DW$254	.dwtag  DW_TAG_loop_range
	.dwattr DW$254, DW_AT_low_pc(DW$L$__configTransfer$32$B)
	.dwattr DW$254, DW_AT_high_pc(DW$L$__configTransfer$32$E)
DW$255	.dwtag  DW_TAG_loop_range
	.dwattr DW$255, DW_AT_low_pc(DW$L$__configTransfer$33$B)
	.dwattr DW$255, DW_AT_high_pc(DW$L$__configTransfer$33$E)
DW$256	.dwtag  DW_TAG_loop_range
	.dwattr DW$256, DW_AT_low_pc(DW$L$__configTransfer$34$B)
	.dwattr DW$256, DW_AT_high_pc(DW$L$__configTransfer$34$E)
	.dwendtag DW$249


DW$257	.dwtag  DW_TAG_loop
	.dwattr DW$257, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L110:1:1301635728")
	.dwattr DW$257, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$257, DW_AT_begin_line(0x388)
	.dwattr DW$257, DW_AT_end_line(0x38b)
DW$258	.dwtag  DW_TAG_loop_range
	.dwattr DW$258, DW_AT_low_pc(DW$L$__configTransfer$24$B)
	.dwattr DW$258, DW_AT_high_pc(DW$L$__configTransfer$24$E)
	.dwendtag DW$257


DW$259	.dwtag  DW_TAG_loop
	.dwattr DW$259, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L100:1:1301635728")
	.dwattr DW$259, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$259, DW_AT_begin_line(0x33c)
	.dwattr DW$259, DW_AT_end_line(0x386)
DW$260	.dwtag  DW_TAG_loop_range
	.dwattr DW$260, DW_AT_low_pc(DW$L$__configTransfer$8$B)
	.dwattr DW$260, DW_AT_high_pc(DW$L$__configTransfer$8$E)
DW$261	.dwtag  DW_TAG_loop_range
	.dwattr DW$261, DW_AT_low_pc(DW$L$__configTransfer$19$B)
	.dwattr DW$261, DW_AT_high_pc(DW$L$__configTransfer$19$E)
DW$262	.dwtag  DW_TAG_loop_range
	.dwattr DW$262, DW_AT_low_pc(DW$L$__configTransfer$15$B)
	.dwattr DW$262, DW_AT_high_pc(DW$L$__configTransfer$15$E)
DW$263	.dwtag  DW_TAG_loop_range
	.dwattr DW$263, DW_AT_low_pc(DW$L$__configTransfer$16$B)
	.dwattr DW$263, DW_AT_high_pc(DW$L$__configTransfer$16$E)
DW$264	.dwtag  DW_TAG_loop_range
	.dwattr DW$264, DW_AT_low_pc(DW$L$__configTransfer$10$B)
	.dwattr DW$264, DW_AT_high_pc(DW$L$__configTransfer$10$E)
DW$265	.dwtag  DW_TAG_loop_range
	.dwattr DW$265, DW_AT_low_pc(DW$L$__configTransfer$11$B)
	.dwattr DW$265, DW_AT_high_pc(DW$L$__configTransfer$11$E)
DW$266	.dwtag  DW_TAG_loop_range
	.dwattr DW$266, DW_AT_low_pc(DW$L$__configTransfer$12$B)
	.dwattr DW$266, DW_AT_high_pc(DW$L$__configTransfer$12$E)
DW$267	.dwtag  DW_TAG_loop_range
	.dwattr DW$267, DW_AT_low_pc(DW$L$__configTransfer$13$B)
	.dwattr DW$267, DW_AT_high_pc(DW$L$__configTransfer$13$E)
DW$268	.dwtag  DW_TAG_loop_range
	.dwattr DW$268, DW_AT_low_pc(DW$L$__configTransfer$14$B)
	.dwattr DW$268, DW_AT_high_pc(DW$L$__configTransfer$14$E)
DW$269	.dwtag  DW_TAG_loop_range
	.dwattr DW$269, DW_AT_low_pc(DW$L$__configTransfer$17$B)
	.dwattr DW$269, DW_AT_high_pc(DW$L$__configTransfer$17$E)
DW$270	.dwtag  DW_TAG_loop_range
	.dwattr DW$270, DW_AT_low_pc(DW$L$__configTransfer$18$B)
	.dwattr DW$270, DW_AT_high_pc(DW$L$__configTransfer$18$E)
DW$271	.dwtag  DW_TAG_loop_range
	.dwattr DW$271, DW_AT_low_pc(DW$L$__configTransfer$20$B)
	.dwattr DW$271, DW_AT_high_pc(DW$L$__configTransfer$20$E)
DW$272	.dwtag  DW_TAG_loop_range
	.dwattr DW$272, DW_AT_low_pc(DW$L$__configTransfer$21$B)
	.dwattr DW$272, DW_AT_high_pc(DW$L$__configTransfer$21$E)
DW$273	.dwtag  DW_TAG_loop_range
	.dwattr DW$273, DW_AT_low_pc(DW$L$__configTransfer$22$B)
	.dwattr DW$273, DW_AT_high_pc(DW$L$__configTransfer$22$E)
	.dwendtag DW$259

	.dwattr DW$233, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$233, DW_AT_end_line(0x3fb)
	.dwattr DW$233, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$233

	.sect	".text"

DW$274	.dwtag  DW_TAG_subprogram, DW_AT_name("_covrRecover"), DW_AT_symbol_name("__covrRecover")
	.dwattr DW$274, DW_AT_low_pc(__covrRecover)
	.dwattr DW$274, DW_AT_high_pc(0x00)
	.dwattr DW$274, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$274, DW_AT_begin_line(0x401)
	.dwattr DW$274, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",1026,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1025 | static Int _covrRecover(Ptr chanp)                                     
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
;*   Local Frame Size  : 0 Args + 28 Auto + 4 Save = 32 byte                  *
;******************************************************************************
__covrRecover:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |1026| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$275	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$275, DW_AT_type(*DW$T$37)
	.dwattr DW$275, DW_AT_location[DW_OP_reg4]
DW$276	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$276, DW_AT_type(*DW$T$37)
	.dwattr DW$276, DW_AT_location[DW_OP_breg31 4]
DW$277	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$277, DW_AT_type(*DW$T$207)
	.dwattr DW$277, DW_AT_location[DW_OP_breg31 8]
DW$278	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$278, DW_AT_type(*DW$T$210)
	.dwattr DW$278, DW_AT_location[DW_OP_breg31 12]
DW$279	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$279, DW_AT_type(*DW$T$162)
	.dwattr DW$279, DW_AT_location[DW_OP_breg31 16]
DW$280	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$280, DW_AT_type(*DW$T$162)
	.dwattr DW$280, DW_AT_location[DW_OP_breg31 20]
DW$281	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$281, DW_AT_type(*DW$T$161)
	.dwattr DW$281, DW_AT_location[DW_OP_breg31 24]
DW$282	.dwtag  DW_TAG_variable, DW_AT_name("numEdmaChans"), DW_AT_symbol_name("_numEdmaChans")
	.dwattr DW$282, DW_AT_type(*DW$T$10)
	.dwattr DW$282, DW_AT_location[DW_OP_breg31 28]
           STW     .D2T1   A4,*+SP(4)        ; |1026| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1027,21
;----------------------------------------------------------------------
; 1027 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(8)        ; |1027| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1028,14
;----------------------------------------------------------------------
; 1028 | PortObj* port = &portObjs[chan->portNum];                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B4        ; |1028| 
           NOP             3
           MVK     .S2     1072,B5           ; |1028| 
           MPYLI   .M2     B5,B4,B5:B4       ; |1028| 
           MVKL    .S1     _portObjs,A3      ; |1028| 
           MVKH    .S1     _portObjs,A3      ; |1028| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1028| 
           STW     .D2T2   B4,*+SP(12)       ; |1028| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1029,19
;----------------------------------------------------------------------
; 1029 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T1   *+A3(4),A3        ; |1029| 
           NOP             4
           STW     .D2T1   A3,*+SP(16)       ; |1029| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1030,19
;----------------------------------------------------------------------
; 1030 | volatile Int *cbase = (volatile Int *)chan->base;                      
; 1031 | volatile Int i;                                                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1030| 
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1030| 
           NOP             4
           STW     .D2T1   A3,*+SP(20)       ; |1030| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1032,9
;----------------------------------------------------------------------
; 1032 | int numEdmaChans = 0;                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1032| 
           STW     .D2T2   B4,*+SP(28)       ; |1032| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1036,5
;----------------------------------------------------------------------
; 1036 | base[_VP_VPIE_OFFSET] &= ~(_VP_VPIE_COVRA_MASK<<(chan->chanNum*16));   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1036| 
           LDW     .D2T2   *+SP(16),B4       ; |1036| 
           NOP             2
           MVK     .L1     2,A4              ; |1036| 
           LDW     .D1T1   *+A3(8),A3        ; |1036| 
           NOP             1
           ADDAD   .D2     B4,25,B5          ; |1036| 
           LDW     .D2T2   *B5,B4            ; |1036| 
           NOP             1
           SHL     .S1     A3,4,A3           ; |1036| 
           SHL     .S1     A4,A3,A3          ; |1036| 
           NOP             1
           ANDN    .L2X    B4,A3,B4          ; |1036| 
           STW     .D2T2   B4,*B5            ; |1036| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1038,5
;----------------------------------------------------------------------
; 1038 | cbase[_VP_VCACTL_OFFSETA] |= _VP_VCACTL_BLKCAP_MASK;                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |1038| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |1038| 
           NOP             4
           SET     .S1     A4,30,30,A4       ; |1038| 
           STW     .D1T1   A4,*+A3(4)        ; |1038| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1041,5
;----------------------------------------------------------------------
; 1041 | EDMA_intDisable(chan->tcc[0]);                                         
; 1043 | //RAW CAPTURE INITIALIZATION SPECIFIC                                  
; 1044 | // set number of EDMA channels to cycle through based on RAW mode opera
;     | tion                                                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1041| 
           MVKL    .S2     _EDMA_intDisable,B4 ; |1041| 
           MVKH    .S2     _EDMA_intDisable,B4 ; |1041| 
           MVK     .S1     104,A4            ; |1041| 
           CALL    .S2     B4                ; |1041| 
           LDW     .D1T1   *+A3[A4],A4       ; |1041| 
           ADDKPC  .S2     RL69,B3,3         ; |1041| 
RL69:      ; CALL OCCURS {_EDMA_intDisable}  ; |1041| 
	.dwpsn	"vportcap_RAW.c",1045,5
;----------------------------------------------------------------------
; 1045 | numEdmaChans = (chan->mode == VPORT_MODE_RAW_8BIT) ? _VPORT_NUM_EDMA_CH
;     | ANS_RAW : _VPORT_NUM_EDMA_CHANS;                                       
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1045| 
           NOP             2
           MVK     .S1     126,A4            ; |1045| 
           MVK     .L2     0x1,B4            ; |1045| 
           LDW     .D1T1   *+A3[A4],A3       ; |1045| 
           NOP             4
           CMPEQ   .L1     A3,2,A0           ; |1045| 
   [ A0]   BNOP    .S1     L123,5            ; |1045| 
           ; BRANCHCC OCCURS {L123}          ; |1045| 
;** --------------------------------------------------------------------------*
           MVK     .L2     0x3,B4            ; |1045| 
;** --------------------------------------------------------------------------*
L123:    
           STW     .D2T2   B4,*+SP(28)       ; |1045| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1047,9
;----------------------------------------------------------------------
; 1047 | for(i = 0; i < numEdmaChans; i ++) {                                   
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1047| 
           STW     .D2T2   B4,*+SP(24)       ; |1047| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1047,16
           LDW     .D2T2   *+SP(24),B5       ; |1047| 
           LDW     .D2T2   *+SP(28),B4       ; |1047| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1047| 
   [!B0]   BNOP    .S1     L125,5            ; |1047| 
           ; BRANCHCC OCCURS {L125}          ; |1047| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L124:    
DW$L$__covrRecover$4$B:
	.dwpsn	"vportcap_RAW.c",1048,9
;----------------------------------------------------------------------
; 1048 | EDMA_disableChannel(chan->hEdma[i]);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1048| 
           LDW     .D2T1   *+SP(24),A3       ; |1048| 
           NOP             1
           MVKL    .S2     _EDMA_disableChannel,B4 ; |1048| 
           MVKH    .S2     _EDMA_disableChannel,B4 ; |1048| 
           MVK     .S1     95,A31            ; |1048| 

           ADDAW   .D1     A4,A3,A3          ; |1048| 
||         CALL    .S2     B4                ; |1048| 

           LDW     .D1T1   *+A3[A31],A4      ; |1048| 
           ADDKPC  .S2     RL70,B3,3         ; |1048| 
RL70:      ; CALL OCCURS {_EDMA_disableChannel}  ; |1048| 
	.dwpsn	"vportcap_RAW.c",1049,9
;----------------------------------------------------------------------
; 1049 | EDMA_clearChannel(chan->hEdma[i]);                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B5        ; |1049| 
           LDW     .D2T2   *+SP(24),B4       ; |1049| 
           NOP             2
           MVKL    .S1     _EDMA_clearChannel,A3 ; |1049| 
           MVKH    .S1     _EDMA_clearChannel,A3 ; |1049| 

           MVK     .S2     95,B5             ; |1049| 
||         ADDAW   .D2     B5,B4,B4          ; |1049| 

           CALL    .S2X    A3                ; |1049| 
           LDW     .D2T1   *+B4[B5],A4       ; |1049| 
           ADDKPC  .S2     RL71,B3,3         ; |1049| 
RL71:      ; CALL OCCURS {_EDMA_clearChannel}  ; |1049| 
	.dwpsn	"vportcap_RAW.c",1047,34
           LDW     .D2T2   *+SP(24),B4       ; |1047| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1047| 
           STW     .D2T2   B4,*+SP(24)       ; |1047| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1047,16
           LDW     .D2T2   *+SP(28),B4       ; |1047| 
           LDW     .D2T2   *+SP(24),B5       ; |1047| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1047| 
   [ B0]   BNOP    .S1     L124,5            ; |1047| 
           ; BRANCHCC OCCURS {L124}          ; |1047| 
DW$L$__covrRecover$4$E:
;** --------------------------------------------------------------------------*
L125:    
	.dwpsn	"vportcap_RAW.c",1052,5
;----------------------------------------------------------------------
; 1052 | EDMA_RSETH(chan->hEdma[0], DST, chan->curViop->frame.iFrm.y1);         
; 1054 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 1055 | // Set if not in RAW mode                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1052| 
           NOP             2
           MVK     .S2     123,B5            ; |1052| 
           MVK     .S1     95,A4             ; |1052| 

           LDW     .D2T2   *+B4[B5],B4       ; |1052| 
||         MV      .L1X    B4,A3             ; |1052| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A3       ; |1052| 
           NOP             1
           LDW     .D2T2   *+B4(8),B4        ; |1052| 
           MVKL    .S1     0x1a0000c,A31     ; |1052| 
           MVKH    .S1     0x1a0000c,A31     ; |1052| 
           EXTU    .S1     A3,16,16,A3       ; |1052| 
           ADD     .L1     A31,A3,A3         ; |1052| 
           STW     .D1T2   B4,*A3            ; |1052| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1056,5
;----------------------------------------------------------------------
; 1056 | if(!(chan->mode & _VPORT_MASK_RAW))                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1056| 
           NOP             3
           MVK     .S1     126,A4            ; |1056| 
           LDW     .D1T1   *+A3[A4],A3       ; |1056| 
           NOP             4
           AND     .L1     2,A3,A0           ; |1056| 
   [ A0]   BNOP    .S1     L126,5            ; |1056| 
           ; BRANCHCC OCCURS {L126}          ; |1056| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",1058,6
;----------------------------------------------------------------------
; 1058 | EDMA_RSETH(chan->hEdma[1], DST, chan->curViop->frame.iFrm.cb1);        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1058| 
           NOP             2
           MVK     .S1     123,A5            ; |1058| 
           MVK     .S1     96,A31            ; |1058| 

           LDW     .D1T1   *+A3[A5],A3       ; |1058| 
||         MV      .L1     A3,A4             ; |1058| 

           NOP             2
           LDW     .D1T1   *+A4[A31],A4      ; |1058| 
           NOP             1
           LDW     .D1T1   *+A3(12),A3       ; |1058| 
           MVKL    .S2     0x1a0000c,B4      ; |1058| 
           MVKH    .S2     0x1a0000c,B4      ; |1058| 
           EXTU    .S1     A4,16,16,A4       ; |1058| 
           ADD     .L1X    B4,A4,A4          ; |1058| 
           STW     .D1T1   A3,*A4            ; |1058| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1059,6
;----------------------------------------------------------------------
; 1059 | EDMA_RSETH(chan->hEdma[2], DST, chan->curViop->frame.iFrm.cr1);        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1059| 
           NOP             3
           MVK     .S1     97,A4             ; |1059| 

           LDW     .D2T2   *+B4[B5],B4       ; |1059| 
||         MV      .L1X    B4,A3             ; |1059| 

           NOP             2
           LDW     .D1T1   *+A3[A4],A4       ; |1059| 
           NOP             1
           LDW     .D2T2   *+B4(16),B4       ; |1059| 
           MVKL    .S1     0x1a0000c,A30     ; |1059| 
           MVKH    .S1     0x1a0000c,A30     ; |1059| 
           EXTU    .S1     A4,16,16,A4       ; |1059| 
           ADD     .L1     A30,A4,A3         ; |1059| 
           STW     .D1T2   B4,*A3            ; |1059| 
;** --------------------------------------------------------------------------*
L126:    
	.dwpsn	"vportcap_RAW.c",1062,5
;----------------------------------------------------------------------
; 1062 | EDMA_RSETH(chan->hEdma[0], CNT, EDMA_CNT_RMK(chan->numEvents - 1,      
; 1063 |     (chan->yThrld << 1)));                                             
; 1065 | // RAW CAPTURE INITIALIZATION SPECIFIC                                 
; 1066 | // Set if not in RAW mode                                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1062| 
           MVK     .S1     95,A5             ; |1062| 
           MVK     .S2     119,B5            ; |1062| 
           MVK     .S1     121,A31           ; |1062| 
           MVKL    .S2     0x1a00008,B31     ; |1062| 

           LDW     .D1T1   *+A4[A5],A4       ; |1062| 
||         MV      .L1     A4,A3             ; |1062| 
||         MV      .L2X    A4,B4             ; |1062| 

           LDW     .D2T2   *+B4[B5],B5       ; |1062| 
||         LDW     .D1T1   *+A3[A31],A5      ; |1062| 

           NOP             2
           MVKH    .S2     0x1a00008,B31     ; |1062| 
           EXTU    .S1     A4,16,16,A3       ; |1062| 

           SUB     .L2     B5,1,B5           ; |1062| 
||         ADD     .L1     A5,A5,A4          ; |1062| 

           ADD     .L2X    B31,A3,B5         ; |1062| 
||         SHL     .S2     B5,16,B4          ; |1062| 

           PACKHL2 .L2X    B4,A4,B4          ; |1062| 
           STW     .D2T2   B4,*B5            ; |1062| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1067,5
;----------------------------------------------------------------------
; 1067 | if(!(chan->mode & _VPORT_MASK_RAW))                                    
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1067| 
           NOP             3
           MVK     .S1     126,A4            ; |1067| 
           LDW     .D1T1   *+A3[A4],A3       ; |1067| 
           NOP             4
           AND     .L1     2,A3,A0           ; |1067| 
   [ A0]   BNOP    .S1     L127,5            ; |1067| 
           ; BRANCHCC OCCURS {L127}          ; |1067| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",1069,6
;----------------------------------------------------------------------
; 1069 | EDMA_RSETH(chan->hEdma[1], CNT, EDMA_CNT_RMK(chan->numEvents - 1, (chan
;     | ->cThrld << 1)));                                                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1069| 
           MVK     .S1     96,A31            ; |1069| 
           MVK     .S1     119,A6            ; |1069| 
           MVK     .S1     122,A30           ; |1069| 
           MVKL    .S2     0x1a00008,B4      ; |1069| 
           MV      .L1     A4,A5             ; |1069| 
           LDW     .D1T1   *+A5[A31],A5      ; |1069| 

           LDW     .D1T1   *+A4[A6],A4       ; |1069| 
||         MV      .L1     A4,A3             ; |1069| 

           LDW     .D1T1   *+A3[A30],A3      ; |1069| 
           NOP             2
           MVKH    .S2     0x1a00008,B4      ; |1069| 

           EXTU    .S1     A5,16,16,A4       ; |1069| 
||         SUB     .L1     A4,1,A5           ; |1069| 

           SHL     .S1     A5,16,A3          ; |1069| 
||         ADD     .L1     A3,A3,A5          ; |1069| 

           PACKHL2 .L1     A3,A5,A4          ; |1069| 
||         ADD     .S1X    B4,A4,A3          ; |1069| 

           STW     .D1T1   A4,*A3            ; |1069| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1070,6
;----------------------------------------------------------------------
; 1070 | EDMA_RSETH(chan->hEdma[2], CNT, EDMA_CNT_RMK(chan->numEvents - 1, (chan
;     | ->cThrld<<1)));                                                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1070| 
           MVK     .S1     97,A5             ; |1070| 
           MVK     .S1     122,A29           ; |1070| 
           MVK     .S2     119,B5            ; |1070| 
           MVKL    .S2     0x1a00008,B31     ; |1070| 

           LDW     .D1T1   *+A4[A5],A4       ; |1070| 
||         MV      .L1     A4,A3             ; |1070| 
||         MV      .L2X    A4,B4             ; |1070| 

           LDW     .D1T1   *+A3[A29],A5      ; |1070| 
||         LDW     .D2T2   *+B4[B5],B5       ; |1070| 

           NOP             2
           MVKH    .S2     0x1a00008,B31     ; |1070| 
           EXTU    .S1     A4,16,16,A3       ; |1070| 

           SUB     .L2     B5,1,B5           ; |1070| 
||         ADD     .L1     A5,A5,A4          ; |1070| 

           ADD     .L2X    B31,A3,B5         ; |1070| 
||         SHL     .S2     B5,16,B4          ; |1070| 

           PACKHL2 .L2X    B4,A4,B4          ; |1070| 
           STW     .D2T2   B4,*B5            ; |1070| 
;** --------------------------------------------------------------------------*
L127:    
	.dwpsn	"vportcap_RAW.c",1074,5
;----------------------------------------------------------------------
; 1074 | EDMA_intEnable(chan->tcc[0]);                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1074| 
           MVKL    .S1     _EDMA_intEnable,A3 ; |1074| 
           MVKH    .S1     _EDMA_intEnable,A3 ; |1074| 
           MVK     .S2     104,B5            ; |1074| 
           CALL    .S2X    A3                ; |1074| 
           LDW     .D2T1   *+B4[B5],A4       ; |1074| 
           ADDKPC  .S2     RL72,B3,3         ; |1074| 
RL72:      ; CALL OCCURS {_EDMA_intEnable}   ; |1074| 
	.dwpsn	"vportcap_RAW.c",1075,9
;----------------------------------------------------------------------
; 1075 | for(i = 0;i < numEdmaChans;i ++) {                                     
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1075| 
           STW     .D2T2   B4,*+SP(24)       ; |1075| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1075,15
           LDW     .D2T2   *+SP(28),B4       ; |1075| 
           LDW     .D2T2   *+SP(24),B5       ; |1075| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1075| 
   [!B0]   BNOP    .S1     L129,5            ; |1075| 
           ; BRANCHCC OCCURS {L129}          ; |1075| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L128:    
DW$L$__covrRecover$10$B:
	.dwpsn	"vportcap_RAW.c",1076,9
;----------------------------------------------------------------------
; 1076 | EDMA_enableChannel(chan->hEdma[i]);                                    
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1076| 
           LDW     .D2T2   *+SP(24),B5       ; |1076| 
           NOP             2
           MVKL    .S1     _EDMA_enableChannel,A3 ; |1076| 
           MVKH    .S1     _EDMA_enableChannel,A3 ; |1076| 

           MVK     .S2     95,B5             ; |1076| 
||         ADDAW   .D2     B4,B5,B4          ; |1076| 

           CALL    .S2X    A3                ; |1076| 
           LDW     .D2T1   *+B4[B5],A4       ; |1076| 
           ADDKPC  .S2     RL73,B3,3         ; |1076| 
RL73:      ; CALL OCCURS {_EDMA_enableChannel}  ; |1076| 
	.dwpsn	"vportcap_RAW.c",1075,32
           LDW     .D2T2   *+SP(24),B4       ; |1075| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1075| 
           STW     .D2T2   B4,*+SP(24)       ; |1075| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1075,15
           LDW     .D2T2   *+SP(28),B4       ; |1075| 
           LDW     .D2T2   *+SP(24),B5       ; |1075| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |1075| 
   [ B0]   BNOP    .S1     L128,5            ; |1075| 
           ; BRANCHCC OCCURS {L128}          ; |1075| 
DW$L$__covrRecover$10$E:
;** --------------------------------------------------------------------------*
L129:    
	.dwpsn	"vportcap_RAW.c",1079,9
;----------------------------------------------------------------------
; 1079 | for(i = 0; i < 100000; i ++);                                          
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1079| 
           STW     .D2T2   B4,*+SP(24)       ; |1079| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1079,16
           LDW     .D2T2   *+SP(24),B4       ; |1079| 
           NOP             1
           MVKL    .S1     0x186a0,A3        ; |1079| 
           MVKH    .S1     0x186a0,A3        ; |1079| 
           NOP             1
           CMPLT   .L2X    B4,A3,B0          ; |1079| 
   [!B0]   BNOP    .S1     L131,5            ; |1079| 
           ; BRANCHCC OCCURS {L131}          ; |1079| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L130:    
DW$L$__covrRecover$12$B:
	.dwpsn	"vportcap_RAW.c",1079,28
           LDW     .D2T2   *+SP(24),B4       ; |1079| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1079| 
           STW     .D2T2   B4,*+SP(24)       ; |1079| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1079,16
           LDW     .D2T2   *+SP(24),B4       ; |1079| 
           NOP             2
           MVKL    .S1     0x186a0,A3        ; |1079| 
           MVKH    .S1     0x186a0,A3        ; |1079| 
           CMPLT   .L1X    B4,A3,A0          ; |1079| 
   [ A0]   BNOP    .S1     L130,5            ; |1079| 
           ; BRANCHCC OCCURS {L130}          ; |1079| 
DW$L$__covrRecover$12$E:
;** --------------------------------------------------------------------------*
L131:    
	.dwpsn	"vportcap_RAW.c",1082,5
;----------------------------------------------------------------------
; 1082 | if(chan->chanNum == 0) {                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1082| 
           NOP             4
           LDW     .D2T2   *+B4(8),B0        ; |1082| 
           NOP             4
   [ B0]   BNOP    .S1     L132,5            ; |1082| 
           ; BRANCHCC OCCURS {L132}          ; |1082| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",1083,9
;----------------------------------------------------------------------
; 1083 | base[_VP_VPIS_OFFSET] |= _VP_VPIS_COVRA_MASK;                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |1083| 
           NOP             3
           MVK     .S2     204,B5            ; |1083| 
           ADD     .L2     B5,B4,B4          ; |1083| 
           LDW     .D2T2   *B4,B5            ; |1083| 
           NOP             4
           OR      .L2     2,B5,B5           ; |1083| 
           STW     .D2T2   B5,*B4            ; |1083| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1084,5
;----------------------------------------------------------------------
; 1084 | }else {                                                                
;----------------------------------------------------------------------
           BNOP    .S1     L133,5            ; |1084| 
           ; BRANCH OCCURS {L133}            ; |1084| 
;** --------------------------------------------------------------------------*
L132:    
	.dwpsn	"vportcap_RAW.c",1085,9
;----------------------------------------------------------------------
; 1085 | base[_VP_VPIS_OFFSET] |= _VP_VPIS_COVRB_MASK;                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |1085| 
           NOP             3
           MVK     .S2     204,B5            ; |1085| 
           ADD     .L2     B5,B4,B4          ; |1085| 
           LDW     .D2T2   *B4,B5            ; |1085| 
           NOP             4
           SET     .S2     B5,17,17,B5       ; |1085| 
           STW     .D2T2   B5,*B4            ; |1085| 
;** --------------------------------------------------------------------------*
L133:    
	.dwpsn	"vportcap_RAW.c",1088,5
;----------------------------------------------------------------------
; 1088 | cbase[_VP_VCACTL_OFFSETA] &= ~(_VP_VCACTL_BLKCAP_MASK);                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |1088| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |1088| 
           NOP             4
           CLR     .S1     A4,30,30,A4       ; |1088| 
           STW     .D1T1   A4,*+A3(4)        ; |1088| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1091,5
;----------------------------------------------------------------------
; 1091 | base[_VP_VPIE_OFFSET] |= _VP_VPIE_COVRA_MASK << (chan->chanNum * 16);  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1091| 
           LDW     .D2T1   *+SP(16),A3       ; |1091| 
           NOP             3
           LDW     .D2T2   *+B4(8),B4        ; |1091| 
           NOP             1
           ADDAD   .D1     A3,25,A4          ; |1091| 
           LDW     .D1T1   *A4,A3            ; |1091| 
           NOP             1

           MVK     .L2     2,B4              ; |1091| 
||         SHL     .S2     B4,4,B5           ; |1091| 

           SHL     .S2     B4,B5,B4          ; |1091| 
           NOP             1
           OR      .L1X    B4,A3,A3          ; |1091| 
           STW     .D1T1   A3,*A4            ; |1091| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1093,5
;----------------------------------------------------------------------
; 1093 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1093| 
	.dwpsn	"vportcap_RAW.c",1094,1
           LDW     .D2T2   *++SP(32),B3      ; |1094| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1094| 
           ; BRANCH OCCURS {B3}              ; |1094| 

DW$283	.dwtag  DW_TAG_loop
	.dwattr DW$283, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L130:1:1301635728")
	.dwattr DW$283, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$283, DW_AT_begin_line(0x437)
	.dwattr DW$283, DW_AT_end_line(0x437)
DW$284	.dwtag  DW_TAG_loop_range
	.dwattr DW$284, DW_AT_low_pc(DW$L$__covrRecover$12$B)
	.dwattr DW$284, DW_AT_high_pc(DW$L$__covrRecover$12$E)
	.dwendtag DW$283


DW$285	.dwtag  DW_TAG_loop
	.dwattr DW$285, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L128:1:1301635728")
	.dwattr DW$285, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$285, DW_AT_begin_line(0x433)
	.dwattr DW$285, DW_AT_end_line(0x435)
DW$286	.dwtag  DW_TAG_loop_range
	.dwattr DW$286, DW_AT_low_pc(DW$L$__covrRecover$10$B)
	.dwattr DW$286, DW_AT_high_pc(DW$L$__covrRecover$10$E)
	.dwendtag DW$285


DW$287	.dwtag  DW_TAG_loop
	.dwattr DW$287, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\vport-v2\vportcap_RAW.asm:L124:1:1301635728")
	.dwattr DW$287, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$287, DW_AT_begin_line(0x417)
	.dwattr DW$287, DW_AT_end_line(0x41a)
DW$288	.dwtag  DW_TAG_loop_range
	.dwattr DW$288, DW_AT_low_pc(DW$L$__covrRecover$4$B)
	.dwattr DW$288, DW_AT_high_pc(DW$L$__covrRecover$4$E)
	.dwendtag DW$287

	.dwattr DW$274, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$274, DW_AT_end_line(0x446)
	.dwattr DW$274, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$274

	.sect	".text"

DW$289	.dwtag  DW_TAG_subprogram, DW_AT_name("_setVIntCb"), DW_AT_symbol_name("__setVIntCb")
	.dwattr DW$289, DW_AT_low_pc(__setVIntCb)
	.dwattr DW$289, DW_AT_high_pc(0x00)
	.dwattr DW$289, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$289, DW_AT_begin_line(0x44d)
	.dwattr DW$289, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",1102,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1101 | static Int _setVIntCb(Ptr chanp, Ptr args)                             
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
           STW     .D2T2   B3,*SP--(72)      ; |1102| 
           NOP             2
	.dwcfa	0x0e, 72
	.dwcfa	0x80, 19, 0
DW$290	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$290, DW_AT_type(*DW$T$37)
	.dwattr DW$290, DW_AT_location[DW_OP_reg4]
DW$291	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$291, DW_AT_type(*DW$T$37)
	.dwattr DW$291, DW_AT_location[DW_OP_reg20]
DW$292	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$292, DW_AT_type(*DW$T$37)
	.dwattr DW$292, DW_AT_location[DW_OP_breg31 4]
DW$293	.dwtag  DW_TAG_variable, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$293, DW_AT_type(*DW$T$37)
	.dwattr DW$293, DW_AT_location[DW_OP_breg31 8]
DW$294	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$294, DW_AT_type(*DW$T$207)
	.dwattr DW$294, DW_AT_location[DW_OP_breg31 12]
DW$295	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$295, DW_AT_type(*DW$T$210)
	.dwattr DW$295, DW_AT_location[DW_OP_breg31 16]
DW$296	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$296, DW_AT_type(*DW$T$162)
	.dwattr DW$296, DW_AT_location[DW_OP_breg31 20]
DW$297	.dwtag  DW_TAG_variable, DW_AT_name("cBase"), DW_AT_symbol_name("_cBase")
	.dwattr DW$297, DW_AT_type(*DW$T$162)
	.dwattr DW$297, DW_AT_location[DW_OP_breg31 24]
DW$298	.dwtag  DW_TAG_variable, DW_AT_name("vIntCbParams"), DW_AT_symbol_name("_vIntCbParams")
	.dwattr DW$298, DW_AT_type(*DW$T$214)
	.dwattr DW$298, DW_AT_location[DW_OP_breg31 28]
DW$299	.dwtag  DW_TAG_variable, DW_AT_name("mask"), DW_AT_symbol_name("_mask")
	.dwattr DW$299, DW_AT_type(*DW$T$39)
	.dwattr DW$299, DW_AT_location[DW_OP_breg31 32]
DW$300	.dwtag  DW_TAG_variable, DW_AT_name("vif2"), DW_AT_symbol_name("_vif2")
	.dwattr DW$300, DW_AT_type(*DW$T$31)
	.dwattr DW$300, DW_AT_location[DW_OP_breg31 36]
DW$301	.dwtag  DW_TAG_variable, DW_AT_name("vInt2"), DW_AT_symbol_name("_vInt2")
	.dwattr DW$301, DW_AT_type(*DW$T$31)
	.dwattr DW$301, DW_AT_location[DW_OP_breg31 40]
DW$302	.dwtag  DW_TAG_variable, DW_AT_name("vif1"), DW_AT_symbol_name("_vif1")
	.dwattr DW$302, DW_AT_type(*DW$T$31)
	.dwattr DW$302, DW_AT_location[DW_OP_breg31 44]
DW$303	.dwtag  DW_TAG_variable, DW_AT_name("vInt1"), DW_AT_symbol_name("_vInt1")
	.dwattr DW$303, DW_AT_type(*DW$T$31)
	.dwattr DW$303, DW_AT_location[DW_OP_breg31 48]
DW$304	.dwtag  DW_TAG_variable, DW_AT_name("fscl2"), DW_AT_symbol_name("_fscl2")
	.dwattr DW$304, DW_AT_type(*DW$T$31)
	.dwattr DW$304, DW_AT_location[DW_OP_breg31 52]

           STW     .D2T1   A4,*+SP(4)        ; |1102| 
||         MV      .L1X    B4,A3             ; |1102| 

           STW     .D2T1   A3,*+SP(8)        ; |1102| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1103,21
;----------------------------------------------------------------------
; 1103 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |1103| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1104,14
;----------------------------------------------------------------------
; 1104 | PortObj* port = &portObjs[chan->portNum];                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B5        ; |1104| 
           NOP             3
           MVK     .S2     1072,B4           ; |1104| 
           MPYLI   .M2     B4,B5,B5:B4       ; |1104| 
           MVKL    .S1     _portObjs,A3      ; |1104| 
           MVKH    .S1     _portObjs,A3      ; |1104| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1104| 
           STW     .D2T2   B4,*+SP(16)       ; |1104| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1105,19
;----------------------------------------------------------------------
; 1105 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T1   *+A3(4),A3        ; |1105| 
           NOP             4
           STW     .D2T1   A3,*+SP(20)       ; |1105| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1106,19
;----------------------------------------------------------------------
; 1106 | volatile Int *cBase = (volatile Int *)chan->base;                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1106| 
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1106| 
           NOP             4
           STW     .D2T1   A3,*+SP(24)       ; |1106| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1107,25
;----------------------------------------------------------------------
; 1107 | VPORT_VIntCbParams* vIntCbParams = (void *)args;                       
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1107| 
           NOP             4
           STW     .D2T2   B4,*+SP(28)       ; |1107| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1108,12
;----------------------------------------------------------------------
; 1108 | Uint16 mask = vIntCbParams->vIntMask;                                  
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDHU    .D1T1   *+A3(8),A3        ; |1108| 
           NOP             4
           STH     .D2T1   A3,*+SP(32)       ; |1108| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1109,9
;----------------------------------------------------------------------
; 1109 | Uns vif2 = 0, vInt2 = 0, vif1 = 0, vInt1 = 0, fscl2 = 0;               
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |1109| 
           STW     .D2T2   B4,*+SP(36)       ; |1109| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1109,19
           STW     .D2T2   B4,*+SP(40)       ; |1109| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1109,30
           ZERO    .L1     A3                ; |1109| 
           STW     .D2T1   A3,*+SP(44)       ; |1109| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1109,40
           STW     .D2T1   A3,*+SP(48)       ; |1109| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1109,51
           STW     .D2T2   B4,*+SP(52)       ; |1109| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1113,5
;----------------------------------------------------------------------
; 1113 | if(mask & VPORT_INT_VINT1) {                                           
;----------------------------------------------------------------------
           LDHU    .D2T2   *+SP(32),B4       ; |1113| 
           NOP             4
           EXTU    .S2     B4,27,31,B0       ; |1113| 
   [!B0]   BNOP    .S1     L134,5            ; |1113| 
           ; BRANCHCC OCCURS {L134}          ; |1113| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",1114,9
;----------------------------------------------------------------------
; 1114 | vif1 = 1;                                                              
;----------------------------------------------------------------------
           MVK     .L2     1,B4              ; |1114| 
           STW     .D2T2   B4,*+SP(44)       ; |1114| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1115,9
;----------------------------------------------------------------------
; 1115 | vInt1 = vIntCbParams->vIntLine;                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |1115| 
           NOP             4
           LDHU    .D2T2   *+B4(10),B4       ; |1115| 
           NOP             4
           STW     .D2T2   B4,*+SP(48)       ; |1115| 
;** --------------------------------------------------------------------------*
L134:    
	.dwpsn	"vportcap_RAW.c",1117,5
;----------------------------------------------------------------------
; 1117 | if(mask & VPORT_INT_VINT2) {                                           
;----------------------------------------------------------------------
           LDHU    .D2T2   *+SP(32),B4       ; |1117| 
           NOP             4
           EXTU    .S2     B4,26,31,B0       ; |1117| 
   [!B0]   BNOP    .S1     L135,5            ; |1117| 
           ; BRANCHCC OCCURS {L135}          ; |1117| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",1118,9
;----------------------------------------------------------------------
; 1118 | vif2 = 1;                                                              
;----------------------------------------------------------------------
           MVK     .L2     1,B4              ; |1118| 
           STW     .D2T2   B4,*+SP(36)       ; |1118| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1119,9
;----------------------------------------------------------------------
; 1119 | vInt2 = vIntCbParams->vIntLine;                                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B4       ; |1119| 
           NOP             4
           LDHU    .D2T2   *+B4(10),B4       ; |1119| 
           NOP             4
           STW     .D2T2   B4,*+SP(40)       ; |1119| 
;** --------------------------------------------------------------------------*
L135:    
	.dwpsn	"vportcap_RAW.c",1121,5
;----------------------------------------------------------------------
; 1121 | fscl2 = vif2 & (~ vif1);                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B4       ; |1121| 
           LDW     .D2T2   *+SP(36),B5       ; |1121| 
           NOP             4
           ANDN    .L2     B5,B4,B4          ; |1121| 
           STW     .D2T2   B4,*+SP(52)       ; |1121| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1123,5
;----------------------------------------------------------------------
; 1123 | cBase[_VP_VCAVINT_OFFSETA] = VP_VCAVINT_RMK(vif2,fscl2,                
; 1124 |     vInt2, vif1, vInt1);                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B8       ; |1123| 
           MV      .L2     B5,B4
           LDW     .D2T2   *+SP(52),B5       ; |1123| 

           LDW     .D2T2   *+SP(44),B7       ; |1123| 
||         ZERO    .L2     B6                ; |1123| 

           MVKH    .S2     0xfff0000,B6      ; |1123| 
||         MVKL    .S1     0x8000,A4         ; |1123| 

           SHL     .S2     B8,16,B8          ; |1123| 
||         MVKH    .S1     0x40000000,A3     ; |1123| 

           LDW     .D2T1   *+SP(48),A6       ; |1123| 
||         SHL     .S2     B4,31,B4          ; |1123| 
||         MVKH    .S1     0x8000,A4         ; |1123| 

           CLR     .S2     B4,0,30,B4        ; |1123| 
||         SHL     .S1X    B5,30,A5          ; |1123| 

           LDW     .D2T2   *+SP(24),B31      ; |1123| 
||         AND     .L1     A3,A5,A3          ; |1123| 
||         AND     .L2     B6,B8,B6          ; |1123| 
||         SHL     .S2     B7,15,B7          ; |1123| 

           AND     .L2X    A4,B7,B30         ; |1123| 
||         OR      .L1X    A3,B4,A3          ; |1123| 

           OR      .L1X    B6,A3,A3          ; |1123| 

           OR      .L1X    B30,A3,A3         ; |1123| 
||         EXTU    .S1     A6,20,20,A31      ; |1123| 

           OR      .L1     A31,A3,A3         ; |1123| 
           STW     .D2T1   A3,*+B31(24)      ; |1123| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1126,5
;----------------------------------------------------------------------
; 1126 | if(chan->chanNum == 1) {                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1126| 
           NOP             4
           LDW     .D1T1   *+A3(8),A3        ; |1126| 
           NOP             4
           CMPEQ   .L1     A3,1,A0           ; |1126| 
   [!A0]   BNOP    .S1     L136,5            ; |1126| 
           ; BRANCHCC OCCURS {L136}          ; |1126| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",1127,9
;----------------------------------------------------------------------
; 1127 | mask <<= 16;    /* channel B */                                        
;----------------------------------------------------------------------
           LDHU    .D2T2   *+SP(32),B4       ; |1127| 
           NOP             4
           SHL     .S2     B4,16,B4          ; |1127| 
           STH     .D2T2   B4,*+SP(32)       ; |1127| 
;** --------------------------------------------------------------------------*
L136:    
	.dwpsn	"vportcap_RAW.c",1129,5
;----------------------------------------------------------------------
; 1129 | chan->vIntMask = mask;                                                 
;----------------------------------------------------------------------
           LDHU    .D2T2   *+SP(32),B4       ; |1129| 
           LDW     .D2T2   *+SP(12),B5       ; |1129| 
           NOP             4
           STW     .D2T2   B4,*+B5(40)       ; |1129| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1130,5
;----------------------------------------------------------------------
; 1130 | if(mask) {                                                             
; 1131 |     HWI_Attrs attrs;                                                   
;----------------------------------------------------------------------
           LDHU    .D2T2   *+SP(32),B0       ; |1130| 
           NOP             4
   [!B0]   BNOP    .S1     L137,5            ; |1130| 
           ; BRANCHCC OCCURS {L137}          ; |1130| 
;** --------------------------------------------------------------------------*

DW$305	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$306	.dwtag  DW_TAG_variable, DW_AT_name("attrs"), DW_AT_symbol_name("_attrs")
	.dwattr DW$306, DW_AT_type(*DW$T$123)
	.dwattr DW$306, DW_AT_location[DW_OP_breg31 56]
	.dwpsn	"vportcap_RAW.c",1132,9
;----------------------------------------------------------------------
; 1132 | mask |= 1; /* turn on video port interrupt */                          
;----------------------------------------------------------------------
           LDHU    .D2T2   *+SP(32),B4       ; |1132| 
           NOP             4
           OR      .L2     1,B4,B4           ; |1132| 
           STH     .D2T2   B4,*+SP(32)       ; |1132| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1133,9
;----------------------------------------------------------------------
; 1133 | IRQ_map(IRQ_EVT_VINT0 + chan->portNum, vIntCbParams->irqId);           
; 1134 | #if 0                                                                  
; 1135 | typedef struct HWI_Attrs {                                             
; 1136 | Uns         intrMask;       /* IER bitmask, 1="self" (default) */      
; 1137 | Uns         ccMask;         /* CSR CC bitmask, 1="leave alone" (default
;     | ) */                                                                   
; 1138 | Arg         arg;            /* fxn arg (default=0)*/                   
; 1139 | } HWI_Attrs;                                                           
; 1140 | #endif                                                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1133| 
           LDW     .D2T2   *+SP(28),B31      ; |1133| 
           NOP             1
           MVKL    .S1     _IRQ_map,A3       ; |1133| 
           MVKH    .S1     _IRQ_map,A3       ; |1133| 
           LDW     .D2T2   *+B4(4),B5        ; |1133| 
           LDW     .D2T2   *+B31(12),B4      ; |1133| 
           CALL    .S2X    A3                ; |1133| 
           ADDKPC  .S2     RL74,B3,1         ; |1133| 
           ADD     .D2     B5,25,B5          ; |1133| 
           NOP             1
           MV      .L1X    B5,A4             ; |1133| 
RL74:      ; CALL OCCURS {_IRQ_map}          ; |1133| 
	.dwpsn	"vportcap_RAW.c",1141,3
;----------------------------------------------------------------------
; 1141 | attrs.intrMask = 1;                                                    
;----------------------------------------------------------------------
           MVK     .L1     1,A3              ; |1141| 
           STW     .D2T1   A3,*+SP(56)       ; |1141| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1142,3
;----------------------------------------------------------------------
; 1142 | attrs.ccMask = 1;                                                      
;----------------------------------------------------------------------
           MVK     .L2     1,B4              ; |1142| 
           STW     .D2T2   B4,*+SP(60)       ; |1142| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1143,3
;----------------------------------------------------------------------
; 1143 | attrs.arg  = chan->portNum;                                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1143| 
           NOP             4
           LDW     .D1T1   *+A3(4),A3        ; |1143| 
           NOP             4
           STW     .D2T1   A3,*+SP(64)       ; |1143| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1144,9
;----------------------------------------------------------------------
; 1144 | HWI_dispatchPlug(vIntCbParams->irqId, (Fxn)captureISR, -1, &attrs);    
; 1145 | //        HWI_dispatchPlug(vIntCbParams->irqId, (Fxn)captureISR, -1, NU
;     | LL);                                                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |1144| 
           MVKL    .S2     _captureISR,B4    ; |1144| 
           MVKH    .S2     _captureISR,B4    ; |1144| 
           ADDAD   .D2     SP,7,B6           ; |1144| 
           CALL    .S1     _HWI_dispatchPlug ; |1144| 
           LDW     .D1T1   *+A3(12),A4       ; |1144| 
           ADDKPC  .S2     RL75,B3,2         ; |1144| 
           MVK     .L1     0xffffffff,A6     ; |1144| 
RL75:      ; CALL OCCURS {_HWI_dispatchPlug}  ; |1144| 
	.dwpsn	"vportcap_RAW.c",1146,9
;----------------------------------------------------------------------
; 1146 | IRQ_disable(IRQ_EVT_VINT0 + chan->portNum);                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1146| 
           NOP             2
           MVKL    .S2     _IRQ_disable,B4   ; |1146| 
           MVKH    .S2     _IRQ_disable,B4   ; |1146| 

           LDW     .D1T1   *+A3(4),A3        ; |1146| 
||         CALL    .S2     B4                ; |1146| 

           ADDKPC  .S2     RL76,B3,3         ; |1146| 
           ADD     .D1     A3,25,A4          ; |1146| 
RL76:      ; CALL OCCURS {_IRQ_disable}      ; |1146| 
	.dwpsn	"vportcap_RAW.c",1147,9
;----------------------------------------------------------------------
; 1147 | IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1147| 
           NOP             4

           MVKL    .S1     _IRQ_clear,A3     ; |1147| 
||         LDW     .D1T1   *+A3(4),A4        ; |1147| 

           MVKH    .S1     _IRQ_clear,A3     ; |1147| 
           NOP             1
           CALL    .S2X    A3                ; |1147| 
           ADDKPC  .S2     RL77,B3,3         ; |1147| 
           ADD     .D1     A4,25,A4          ; |1147| 
RL77:      ; CALL OCCURS {_IRQ_clear}        ; |1147| 
	.dwpsn	"vportcap_RAW.c",1148,3
;----------------------------------------------------------------------
; 1148 | IRQ_enable(IRQ_EVT_VINT0 + chan->portNum);                             
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1148| 
           NOP             4

           MVKL    .S1     _IRQ_enable,A3    ; |1148| 
||         LDW     .D1T1   *+A3(4),A4        ; |1148| 

           MVKH    .S1     _IRQ_enable,A3    ; |1148| 
           NOP             1
           CALL    .S2X    A3                ; |1148| 
           ADDKPC  .S2     RL78,B3,3         ; |1148| 
           ADD     .D1     A4,25,A4          ; |1148| 
RL78:      ; CALL OCCURS {_IRQ_enable}       ; |1148| 
	.dwendtag DW$305

;** --------------------------------------------------------------------------*
L137:    
	.dwpsn	"vportcap_RAW.c",1150,5
;----------------------------------------------------------------------
; 1150 | base[_VP_VPIE_OFFSET] |= mask;  /* register write */                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |1150| 
           NOP             3
           LDHU    .D2T2   *+SP(32),B6       ; |1150| 
           ADDAD   .D2     B4,25,B4          ; |1150| 
           LDW     .D2T2   *B4,B5            ; |1150| 
           NOP             4
           OR      .L2     B6,B5,B5          ; |1150| 
           STW     .D2T2   B5,*B4            ; |1150| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1151,5
;----------------------------------------------------------------------
; 1151 | chan->vIntFxn = vIntCbParams->vIntCbFxn;                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |1151| 
           NOP             2
           LDW     .D2T2   *+SP(12),B4       ; |1151| 
           MVK     .S2     110,B5            ; |1151| 
           LDW     .D1T1   *+A3(4),A3        ; |1151| 
           NOP             4
           STW     .D2T1   A3,*+B4[B5]       ; |1151| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1152,5
;----------------------------------------------------------------------
; 1152 | chan->vIntCbArg = vIntCbParams->cbArg;                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(28),A3       ; |1152| 
           NOP             2
           LDW     .D2T1   *+SP(12),A5       ; |1152| 
           MVK     .S1     130,A4            ; |1152| 
           LDW     .D1T1   *A3,A3            ; |1152| 
           NOP             4
           STW     .D1T1   A3,*+A5[A4]       ; |1152| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1153,5
;----------------------------------------------------------------------
; 1153 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1153| 
	.dwpsn	"vportcap_RAW.c",1154,1
           LDW     .D2T2   *++SP(72),B3      ; |1154| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1154| 
           ; BRANCH OCCURS {B3}              ; |1154| 
	.dwattr DW$289, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$289, DW_AT_end_line(0x482)
	.dwattr DW$289, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$289

	.sect	".text"

DW$307	.dwtag  DW_TAG_subprogram, DW_AT_name("_startVPCapture"), DW_AT_symbol_name("__startVPCapture")
	.dwattr DW$307, DW_AT_low_pc(__startVPCapture)
	.dwattr DW$307, DW_AT_high_pc(0x00)
	.dwattr DW$307, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$307, DW_AT_begin_line(0x488)
	.dwattr DW$307, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",1161,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1160 | static Int _startVPCapture(Ptr chanp)                                  
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
           STW     .D2T2   B3,*SP--(24)      ; |1161| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$308	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$308, DW_AT_type(*DW$T$37)
	.dwattr DW$308, DW_AT_location[DW_OP_reg4]
DW$309	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$309, DW_AT_type(*DW$T$37)
	.dwattr DW$309, DW_AT_location[DW_OP_breg31 4]
DW$310	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$310, DW_AT_type(*DW$T$207)
	.dwattr DW$310, DW_AT_location[DW_OP_breg31 8]
DW$311	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$311, DW_AT_type(*DW$T$210)
	.dwattr DW$311, DW_AT_location[DW_OP_breg31 12]
DW$312	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$312, DW_AT_type(*DW$T$162)
	.dwattr DW$312, DW_AT_location[DW_OP_breg31 16]
DW$313	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$313, DW_AT_type(*DW$T$162)
	.dwattr DW$313, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A4,*+SP(4)        ; |1161| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1162,21
;----------------------------------------------------------------------
; 1162 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(8)        ; |1162| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1163,14
;----------------------------------------------------------------------
; 1163 | PortObj* port = &portObjs[chan->portNum];                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B4        ; |1163| 
           NOP             3
           MVK     .S2     1072,B5           ; |1163| 
           MPYLI   .M2     B5,B4,B5:B4       ; |1163| 
           MVKL    .S1     _portObjs,A3      ; |1163| 
           MVKH    .S1     _portObjs,A3      ; |1163| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1163| 
           STW     .D2T2   B4,*+SP(12)       ; |1163| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1164,19
;----------------------------------------------------------------------
; 1164 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T2   *+A3(4),B4        ; |1164| 
           NOP             4
           STW     .D2T2   B4,*+SP(16)       ; |1164| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1165,19
;----------------------------------------------------------------------
; 1165 | volatile Int *cbase = (volatile Int *)chan->base;                      
; 1166 | volatile Int i;                                                        
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1165| 
           NOP             4
           LDW     .D1T2   *+A3(12),B4       ; |1165| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |1165| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1169,5
;----------------------------------------------------------------------
; 1169 | cbase[_VP_VCACTL_OFFSETA] |= VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_S
;     | HIFT;                                                                  
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDW     .D1T2   *+A3(4),B4        ; |1169| 
           NOP             4
           SET     .S2     B4,15,15,B4       ; |1169| 
           STW     .D1T2   B4,*+A3(4)        ; |1169| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1172,5
;----------------------------------------------------------------------
; 1172 | TSK_sleep(100);                                                        
; 1173 | //for(i = 0; i < 100000; i ++);                                        
;----------------------------------------------------------------------
           CALL    .S1     _SEM_pend         ; |1172| 
           MVK     .S2     0x64,B4           ; |1172| 
           MVKL    .S1     _TSK_timerSem,A4  ; |1172| 
           ADDKPC  .S2     RL79,B3,1         ; |1172| 
           MVKH    .S1     _TSK_timerSem,A4  ; |1172| 
RL79:      ; CALL OCCURS {_SEM_pend}         ; |1172| 
	.dwpsn	"vportcap_RAW.c",1178,5
;----------------------------------------------------------------------
; 1178 | cbase[_VP_VCACTL_OFFSETA] &= ~ (_VP_VCACTL_BLKCAP_MASK);               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |1178| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |1178| 
           NOP             4
           CLR     .S1     A4,30,30,A4       ; |1178| 
           STW     .D1T1   A4,*+A3(4)        ; |1178| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1181,5
;----------------------------------------------------------------------
; 1181 | base[_VP_VPIE_OFFSET] |= VP_VPIE_VIE_ENABLE << _VP_VPIE_VIE_SHIFT;     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |1181| 
           NOP             4
           ADDAD   .D1     A3,25,A3          ; |1181| 
           LDW     .D1T1   *A3,A4            ; |1181| 
           NOP             4
           OR      .L1     1,A4,A4           ; |1181| 
           STW     .D1T1   A4,*A3            ; |1181| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1182,5
;----------------------------------------------------------------------
; 1182 | base[_VP_VPIS_OFFSET] |= 0XFFFFFFFF;                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |1182| 
           NOP             3
           MVK     .S2     204,B5            ; |1182| 
           ADD     .L2     B5,B4,B4          ; |1182| 
           LDW     .D2T2   *B4,B5            ; |1182| 
           NOP             4
           OR      .L2     -1,B5,B5          ; |1182| 
           STW     .D2T2   B5,*B4            ; |1182| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1185,5
;----------------------------------------------------------------------
; 1185 | IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1185| 
           NOP             4

           MVKL    .S1     _IRQ_clear,A3     ; |1185| 
||         LDW     .D1T1   *+A3(4),A4        ; |1185| 

           MVKH    .S1     _IRQ_clear,A3     ; |1185| 
           NOP             1
           CALL    .S2X    A3                ; |1185| 
           ADDKPC  .S2     RL80,B3,3         ; |1185| 
           ADD     .D1     A4,25,A4          ; |1185| 
RL80:      ; CALL OCCURS {_IRQ_clear}        ; |1185| 
	.dwpsn	"vportcap_RAW.c",1187,5
;----------------------------------------------------------------------
; 1187 | IRQ_enable(IRQ_EVT_VINT0 + chan->portNum);                             
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1187| 
           NOP             2
           MVKL    .S2     _IRQ_enable,B4    ; |1187| 
           MVKH    .S2     _IRQ_enable,B4    ; |1187| 

           LDW     .D1T1   *+A3(4),A3        ; |1187| 
||         CALL    .S2     B4                ; |1187| 

           ADDKPC  .S2     RL81,B3,3         ; |1187| 
           ADD     .D1     A3,25,A4          ; |1187| 
RL81:      ; CALL OCCURS {_IRQ_enable}       ; |1187| 
	.dwpsn	"vportcap_RAW.c",1189,5
;----------------------------------------------------------------------
; 1189 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1189| 
	.dwpsn	"vportcap_RAW.c",1190,1
           LDW     .D2T2   *++SP(24),B3      ; |1190| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1190| 
           ; BRANCH OCCURS {B3}              ; |1190| 
	.dwattr DW$307, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$307, DW_AT_end_line(0x4a6)
	.dwattr DW$307, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$307

	.sect	".text"

DW$314	.dwtag  DW_TAG_subprogram, DW_AT_name("_stopVPCapture"), DW_AT_symbol_name("__stopVPCapture")
	.dwattr DW$314, DW_AT_low_pc(__stopVPCapture)
	.dwattr DW$314, DW_AT_high_pc(0x00)
	.dwattr DW$314, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$314, DW_AT_begin_line(0x4ac)
	.dwattr DW$314, DW_AT_begin_column(0x0c)
	.dwpsn	"vportcap_RAW.c",1197,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1196 | static Int _stopVPCapture(Ptr chanp)                                   
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
           STW     .D2T2   B3,*SP--(24)      ; |1197| 
           NOP             2
	.dwcfa	0x0e, 24
	.dwcfa	0x80, 19, 0
DW$315	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$315, DW_AT_type(*DW$T$37)
	.dwattr DW$315, DW_AT_location[DW_OP_reg4]
DW$316	.dwtag  DW_TAG_variable, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$316, DW_AT_type(*DW$T$37)
	.dwattr DW$316, DW_AT_location[DW_OP_breg31 4]
DW$317	.dwtag  DW_TAG_variable, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$317, DW_AT_type(*DW$T$207)
	.dwattr DW$317, DW_AT_location[DW_OP_breg31 8]
DW$318	.dwtag  DW_TAG_variable, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$318, DW_AT_type(*DW$T$210)
	.dwattr DW$318, DW_AT_location[DW_OP_breg31 12]
DW$319	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$319, DW_AT_type(*DW$T$162)
	.dwattr DW$319, DW_AT_location[DW_OP_breg31 16]
DW$320	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$320, DW_AT_type(*DW$T$162)
	.dwattr DW$320, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A4,*+SP(4)        ; |1197| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1198,21
;----------------------------------------------------------------------
; 1198 | _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;                        
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(8)        ; |1198| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1199,14
;----------------------------------------------------------------------
; 1199 | PortObj* port = &portObjs[chan->portNum];                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(4),B5        ; |1199| 
           NOP             3
           MVK     .S2     1072,B4           ; |1199| 
           MPYLI   .M2     B4,B5,B5:B4       ; |1199| 
           MVKL    .S1     _portObjs,A3      ; |1199| 
           MVKH    .S1     _portObjs,A3      ; |1199| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1199| 
           STW     .D2T2   B4,*+SP(12)       ; |1199| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1200,19
;----------------------------------------------------------------------
; 1200 | volatile Int *cbase = (volatile Int *)chan->base;                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1200| 
           NOP             4
           LDW     .D1T2   *+A3(12),B4       ; |1200| 
           NOP             4
           STW     .D2T2   B4,*+SP(16)       ; |1200| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1201,19
;----------------------------------------------------------------------
; 1201 | volatile Int *base = (volatile Int *)port->base;                       
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |1201| 
           NOP             4
           LDW     .D1T2   *+A3(4),B4        ; |1201| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |1201| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1204,5
;----------------------------------------------------------------------
; 1204 | cbase[_VP_VCACTL_OFFSETA] &= (_VP_VCACTL_BLKCAP_MASK);                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |1204| 
           NOP             2
           ZERO    .L2     B4                ; |1204| 
           MVKH    .S2     0x40000000,B4     ; |1204| 
           LDW     .D1T1   *+A3(4),A4        ; |1204| 
           NOP             4
           AND     .L2X    B4,A4,B4          ; |1204| 
           STW     .D1T2   B4,*+A3(4)        ; |1204| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1207,5
;----------------------------------------------------------------------
; 1207 | cbase[_VP_VCACTL_OFFSETA] &=                                           
; 1208 |     ~ (VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_SHIFT);                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |1207| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |1207| 
           NOP             4
           CLR     .S1     A4,15,15,A4       ; |1207| 
           STW     .D1T1   A4,*+A3(4)        ; |1207| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1211,5
;----------------------------------------------------------------------
; 1211 | base[_VP_VPIE_OFFSET] &= ~ (VP_VPIE_VIE_ENABLE << _VP_VPIE_VIE_SHIFT); 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |1211| 
           NOP             4
           ADDAD   .D1     A3,25,A3          ; |1211| 
           LDW     .D1T1   *A3,A4            ; |1211| 
           NOP             4
           AND     .L1     -2,A4,A4          ; |1211| 
           STW     .D1T1   A4,*A3            ; |1211| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1212,5
;----------------------------------------------------------------------
; 1212 | base[_VP_VPIS_OFFSET] |= 0XFFFFFFFF;                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |1212| 
           NOP             3
           MVK     .S2     204,B5            ; |1212| 
           ADD     .L2     B5,B4,B4          ; |1212| 
           LDW     .D2T2   *B4,B5            ; |1212| 
           NOP             4
           OR      .L2     -1,B5,B5          ; |1212| 
           STW     .D2T2   B5,*B4            ; |1212| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1215,5
;----------------------------------------------------------------------
; 1215 | IRQ_disable(IRQ_EVT_VINT0 + chan->portNum);                            
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1215| 
           NOP             2
           MVKL    .S2     _IRQ_disable,B4   ; |1215| 
           MVKH    .S2     _IRQ_disable,B4   ; |1215| 

           LDW     .D1T1   *+A3(4),A3        ; |1215| 
||         CALL    .S2     B4                ; |1215| 

           ADDKPC  .S2     RL82,B3,3         ; |1215| 
           ADD     .D1     A3,25,A4          ; |1215| 
RL82:      ; CALL OCCURS {_IRQ_disable}      ; |1215| 
	.dwpsn	"vportcap_RAW.c",1218,5
;----------------------------------------------------------------------
; 1218 | IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);                              
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1218| 
           NOP             4

           MVKL    .S1     _IRQ_clear,A3     ; |1218| 
||         LDW     .D1T1   *+A3(4),A4        ; |1218| 

           MVKH    .S1     _IRQ_clear,A3     ; |1218| 
           NOP             1
           CALL    .S2X    A3                ; |1218| 
           ADDKPC  .S2     RL83,B3,3         ; |1218| 
           ADD     .D1     A4,25,A4          ; |1218| 
RL83:      ; CALL OCCURS {_IRQ_clear}        ; |1218| 
	.dwpsn	"vportcap_RAW.c",1220,5
;----------------------------------------------------------------------
; 1220 | EDMA_intDisable(chan->tcc[0]);                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A4        ; |1220| 
           MVKL    .S1     _EDMA_intDisable,A3 ; |1220| 
           MVKH    .S1     _EDMA_intDisable,A3 ; |1220| 
           MVK     .S1     104,A5            ; |1220| 
           CALL    .S2X    A3                ; |1220| 
           LDW     .D1T1   *+A4[A5],A4       ; |1220| 
           ADDKPC  .S2     RL84,B3,3         ; |1220| 
RL84:      ; CALL OCCURS {_EDMA_intDisable}  ; |1220| 
	.dwpsn	"vportcap_RAW.c",1221,5
;----------------------------------------------------------------------
; 1221 | EDMA_intClear(chan->tcc[0]);                                           
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(8),A3        ; |1221| 
           MVKL    .S2     _EDMA_intClear,B4 ; |1221| 
           MVKH    .S2     _EDMA_intClear,B4 ; |1221| 
           MVK     .S1     104,A4            ; |1221| 
           CALL    .S2     B4                ; |1221| 
           LDW     .D1T1   *+A3[A4],A4       ; |1221| 
           ADDKPC  .S2     RL85,B3,3         ; |1221| 
RL85:      ; CALL OCCURS {_EDMA_intClear}    ; |1221| 
	.dwpsn	"vportcap_RAW.c",1223,5
;----------------------------------------------------------------------
; 1223 | return IOM_COMPLETED;                                                  
;----------------------------------------------------------------------
           ZERO    .L1     A4                ; |1223| 
	.dwpsn	"vportcap_RAW.c",1224,1
           LDW     .D2T2   *++SP(24),B3      ; |1224| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1224| 
           ; BRANCH OCCURS {B3}              ; |1224| 
	.dwattr DW$314, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$314, DW_AT_end_line(0x4c8)
	.dwattr DW$314, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$314

	.sect	".text"

DW$321	.dwtag  DW_TAG_subprogram, DW_AT_name("captureISR"), DW_AT_symbol_name("_captureISR")
	.dwattr DW$321, DW_AT_low_pc(_captureISR)
	.dwattr DW$321, DW_AT_high_pc(0x00)
	.dwattr DW$321, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$321, DW_AT_begin_line(0x4cf)
	.dwattr DW$321, DW_AT_begin_column(0x0d)
	.dwpsn	"vportcap_RAW.c",1232,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 1231 | static void captureISR(Int portNum)                                    
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
;*   Local Frame Size  : 0 Args + 32 Auto + 4 Save = 36 byte                  *
;******************************************************************************
_captureISR:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(40)      ; |1232| 
           NOP             2
	.dwcfa	0x0e, 40
	.dwcfa	0x80, 19, 0
DW$322	.dwtag  DW_TAG_formal_parameter, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$322, DW_AT_type(*DW$T$22)
	.dwattr DW$322, DW_AT_location[DW_OP_reg4]
DW$323	.dwtag  DW_TAG_variable, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$323, DW_AT_type(*DW$T$22)
	.dwattr DW$323, DW_AT_location[DW_OP_breg31 4]
DW$324	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$324, DW_AT_type(*DW$T$162)
	.dwattr DW$324, DW_AT_location[DW_OP_breg31 8]
DW$325	.dwtag  DW_TAG_variable, DW_AT_name("vpis"), DW_AT_symbol_name("_vpis")
	.dwattr DW$325, DW_AT_type(*DW$T$22)
	.dwattr DW$325, DW_AT_location[DW_OP_breg31 12]
DW$326	.dwtag  DW_TAG_variable, DW_AT_name("mask"), DW_AT_symbol_name("_mask")
	.dwattr DW$326, DW_AT_type(*DW$T$22)
	.dwattr DW$326, DW_AT_location[DW_OP_breg31 16]
DW$327	.dwtag  DW_TAG_variable, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$327, DW_AT_type(*DW$T$22)
	.dwattr DW$327, DW_AT_location[DW_OP_breg31 20]
DW$328	.dwtag  DW_TAG_variable, DW_AT_name("chanObjs"), DW_AT_symbol_name("_chanObjs")
	.dwattr DW$328, DW_AT_type(*DW$T$207)
	.dwattr DW$328, DW_AT_location[DW_OP_breg31 24]
DW$329	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$329, DW_AT_type(*DW$T$162)
	.dwattr DW$329, DW_AT_location[DW_OP_breg31 28]
;----------------------------------------------------------------------
; 1233 | //      int portNum = 1;                                               
;----------------------------------------------------------------------
           STW     .D2T1   A4,*+SP(4)        ; |1232| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1234,19
;----------------------------------------------------------------------
; 1234 | volatile Int *base =                                                   
; 1235 |     (volatile Int *)portObjs[portNum].base;                            
;----------------------------------------------------------------------

           MVK     .S2     1072,B5           ; |1234| 
||         MV      .L2X    A4,B4

           MPYLI   .M2     B5,B4,B5:B4       ; |1234| 
           NOP             2
           MVKL    .S1     _portObjs+4,A3    ; |1234| 
           MVKH    .S1     _portObjs+4,A3    ; |1234| 
           ADD     .L1X    A3,B4,A3          ; |1234| 
           LDW     .D1T1   *A3,A3            ; |1234| 
           NOP             4
           STW     .D2T1   A3,*+SP(8)        ; |1234| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1236,9
;----------------------------------------------------------------------
; 1236 | Int vpis = base[_VP_VPIS_OFFSET];                                      
;----------------------------------------------------------------------

           MV      .L2X    A3,B4
||         MVK     .S2     51,B5             ; |1236| 

           LDW     .D2T2   *+B4[B5],B4       ; |1236| 
           NOP             4
           STW     .D2T2   B4,*+SP(12)       ; |1236| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1237,9
;----------------------------------------------------------------------
; 1237 | Int mask = vpis;                                                       
; 1238 |     Int status;                                                        
;----------------------------------------------------------------------
           STW     .D2T2   B4,*+SP(16)       ; |1237| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1239,21
;----------------------------------------------------------------------
; 1239 | _VPORT_ChanObj* chanObjs = portObjs[portNum].chanObj;                  
;----------------------------------------------------------------------

           MV      .L2X    A4,B4
||         MVK     .S2     1072,B5           ; |1239| 

           MPYLI   .M2     B5,B4,B5:B4       ; |1239| 
           MVKL    .S1     _portObjs+8,A3    ; |1239| 
           MVKH    .S1     _portObjs+8,A3    ; |1239| 
           NOP             1
           ADD     .L2X    A3,B4,B4          ; |1239| 
           STW     .D2T2   B4,*+SP(24)       ; |1239| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1240,19
;----------------------------------------------------------------------
; 1240 | volatile Int *cbase = (volatile Int *)chanObjs->base;                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+B4(12),B4       ; |1240| 
           NOP             4
           STW     .D2T2   B4,*+SP(28)       ; |1240| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1242,5
;----------------------------------------------------------------------
; 1242 | if(vpis & chanObjs[0].vIntMask && chanObjs[0].vIntFxn != INV) {        
; 1243 | //        chanObjs[0].vIntFxn(chanObjs[0].vIntCbArg, vpis);            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B5       ; |1242| 
           NOP             1
           LDW     .D2T2   *+SP(12),B4       ; |1242| 
           ZERO    .D1     A3                ; |1242| 
           MVK     .S1     110,A5            ; |1242| 
           LDW     .D2T2   *+B5(40),B5       ; |1242| 
           NOP             4
           AND     .L2     B5,B4,B4          ; |1242| 
           CMPEQ   .L2     B4,0,B0           ; |1242| 
   [ B0]   BNOP    .S1     L139,2            ; |1242| 
           XOR     .L2     1,B0,B4           ; |1242| 
           MVK     .L1     -1,A6             ; |1242| 

           MV      .L1X    B4,A0             ; |1242| 
||         LDW     .D2T2   *+SP(24),B5       ; |1242| 

           ; BRANCHCC OCCURS {L139}          ; |1242| 
;** --------------------------------------------------------------------------*
           NOP             4
           MV      .L1X    B5,A4
           LDW     .D1T1   *+A4[A5],A4       ; |1242| 
           NOP             4
           CMPEQ   .L1     A4,A6,A0          ; |1242| 
   [ A0]   BNOP    .S1     L138,5            ; |1242| 
           ; BRANCHCC OCCURS {L138}          ; |1242| 
;** --------------------------------------------------------------------------*
           MVK     .L1     0x1,A3            ; |1242| 
;** --------------------------------------------------------------------------*
L138:    
           MV      .L1     A3,A0             ; |1242| 
;** --------------------------------------------------------------------------*
L139:    
   [!A0]   BNOP    .S1     L141,5            ; |1242| 
           ; BRANCHCC OCCURS {L141}          ; |1242| 
;** --------------------------------------------------------------------------*

DW$330	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$331	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$331, DW_AT_type(*DW$T$162)
	.dwattr DW$331, DW_AT_location[DW_OP_breg31 32]
	.dwpsn	"vportcap_RAW.c",1244,20
;----------------------------------------------------------------------
; 1244 | volatile Int *cbase = (volatile Int *)chanObjs[0].base;                
;----------------------------------------------------------------------
           MV      .L2     B5,B4
           LDW     .D2T2   *+B4(12),B4       ; |1244| 
           NOP             4
           STW     .D2T2   B4,*+SP(32)       ; |1244| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1245,3
;----------------------------------------------------------------------
; 1245 | status = vpis;                                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1245| 
           NOP             4
           STW     .D2T2   B4,*+SP(20)       ; |1245| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1246,3
;----------------------------------------------------------------------
; 1246 | if (status & 0x4) {                                                    
;----------------------------------------------------------------------
           AND     .L2     4,B4,B0           ; |1246| 
   [!B0]   BNOP    .S1     L140,5            ; |1246| 
           ; BRANCHCC OCCURS {L140}          ; |1246| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",1247,4
;----------------------------------------------------------------------
; 1247 | cbase[0] |= (1<<30);                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |1247| 
           NOP             4
           LDW     .D2T2   *B4,B5            ; |1247| 
           NOP             4
           SET     .S2     B5,30,30,B5       ; |1247| 
           STW     .D2T2   B5,*B4            ; |1247| 
;** --------------------------------------------------------------------------*
L140:    
	.dwpsn	"vportcap_RAW.c",1249,6
;----------------------------------------------------------------------
; 1249 | cbase[_VP_VCACTL_OFFSETA] &= ~(VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN
;     | _SHIFT);                                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(32),A3       ; |1249| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |1249| 
           NOP             4
           CLR     .S1     A4,15,15,A4       ; |1249| 
           STW     .D1T1   A4,*+A3(4)        ; |1249| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1250,6
;----------------------------------------------------------------------
; 1250 | cbase[_VP_VCACTL_OFFSETA] |= VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_S
;     | HIFT;                                                                  
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(32),A3       ; |1250| 
           NOP             4
           LDW     .D1T1   *+A3(4),A4        ; |1250| 
           NOP             4
           SET     .S1     A4,15,15,A4       ; |1250| 
           STW     .D1T1   A4,*+A3(4)        ; |1250| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1252,9
;----------------------------------------------------------------------
; 1252 | chanObjs[0].vIntFxn((Arg)cbase, vpis);                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |1252| 
           NOP             2
           MVK     .S1     110,A4            ; |1252| 
           LDW     .D2T2   *+SP(12),B4       ; |1252| 
           LDW     .D1T1   *+A3[A4],A3       ; |1252| 
           NOP             3
           LDW     .D2T1   *+SP(32),A4       ; |1252| 
           CALL    .S2X    A3                ; |1252| 
           ADDKPC  .S2     RL86,B3,4         ; |1252| 
RL86:      ; CALL OCCURS {A3}                ; |1252| 
	.dwpsn	"vportcap_RAW.c",1253,9
;----------------------------------------------------------------------
; 1253 | mask &=  chanObjs[0].vIntMask;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B5       ; |1253| 
           NOP             3
           LDW     .D2T2   *+SP(16),B4       ; |1253| 
           LDW     .D2T2   *+B5(40),B5       ; |1253| 
           NOP             4
           AND     .L2     B5,B4,B4          ; |1253| 
           STW     .D2T2   B4,*+SP(16)       ; |1253| 
           NOP             2
	.dwendtag DW$330

	.dwpsn	"vportcap_RAW.c",1254,5
;----------------------------------------------------------------------
; 1254 | }else if(vpis & chanObjs[1].vIntMask && chanObjs[1].vIntFxn != INV) {  
;----------------------------------------------------------------------
           BNOP    .S1     L145,5            ; |1254| 
           ; BRANCH OCCURS {L145}            ; |1254| 
;** --------------------------------------------------------------------------*
L141:    
	.dwpsn	"vportcap_RAW.c",1254,11

           LDW     .D2T2   *+SP(12),B4       ; |1254| 
||         MVK     .S2     143,B6            ; |1254| 

           LDW     .D2T2   *+B5[B6],B5       ; |1254| 
           NOP             2
           MVK     .S1     243,A5            ; |1254| 
           ZERO    .D1     A4                ; |1254| 
           AND     .L2     B5,B4,B4          ; |1254| 
           CMPEQ   .L2     B4,0,B0           ; |1254| 
   [ B0]   BNOP    .S1     L143,2            ; |1254| 
           XOR     .L2     1,B0,B4           ; |1254| 
           LDW     .D2T2   *+SP(24),B5       ; |1254| 
           MV      .L1X    B4,A0             ; |1254| 
           ; BRANCHCC OCCURS {L143}          ; |1254| 
;** --------------------------------------------------------------------------*
           NOP             4
           MV      .L1X    B5,A3
           LDW     .D1T1   *+A3[A5],A3       ; |1254| 
           NOP             4
           CMPEQ   .L1     A3,A6,A0          ; |1254| 
   [ A0]   BNOP    .S1     L142,5            ; |1254| 
           ; BRANCHCC OCCURS {L142}          ; |1254| 
;** --------------------------------------------------------------------------*
           MVK     .L1     0x1,A4            ; |1254| 
;** --------------------------------------------------------------------------*
L142:    
           MV      .L1     A4,A0             ; |1254| 
;** --------------------------------------------------------------------------*
L143:    
   [!A0]   BNOP    .S1     L145,5            ; |1254| 
           ; BRANCHCC OCCURS {L145}          ; |1254| 
;** --------------------------------------------------------------------------*

DW$332	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$333	.dwtag  DW_TAG_variable, DW_AT_name("cbase"), DW_AT_symbol_name("_cbase")
	.dwattr DW$333, DW_AT_type(*DW$T$162)
	.dwattr DW$333, DW_AT_location[DW_OP_breg31 32]
	.dwpsn	"vportcap_RAW.c",1255,20
;----------------------------------------------------------------------
; 1255 | volatile Int *cbase =  (volatile Int *)chanObjs[1].base;               
; 1256 | //        chanObjs[1].vIntFxn(chanObjs[1].vIntCbArg, (vpis >> 16));    
;----------------------------------------------------------------------

           MVK     .S2     136,B5            ; |1255| 
||         MV      .L2     B5,B4

           LDW     .D2T2   *+B4[B5],B4       ; |1255| 
           NOP             4
           STW     .D2T2   B4,*+SP(32)       ; |1255| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1257,3
;----------------------------------------------------------------------
; 1257 | status = vpis >> 16;                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(12),B4       ; |1257| 
           NOP             4
           SHR     .S2     B4,16,B4          ; |1257| 
           STW     .D2T2   B4,*+SP(20)       ; |1257| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1258,3
;----------------------------------------------------------------------
; 1258 | if (status & 0x4) {                                                    
;----------------------------------------------------------------------
           AND     .L2     4,B4,B0           ; |1258| 
   [!B0]   BNOP    .S1     L144,5            ; |1258| 
           ; BRANCHCC OCCURS {L144}          ; |1258| 
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",1259,4
;----------------------------------------------------------------------
; 1259 | cbase[0] |= (1<<30);                                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B4       ; |1259| 
           NOP             4
           LDW     .D2T2   *B4,B5            ; |1259| 
           NOP             4
           SET     .S2     B5,30,30,B5       ; |1259| 
           STW     .D2T2   B5,*B4            ; |1259| 
;** --------------------------------------------------------------------------*
L144:    
	.dwpsn	"vportcap_RAW.c",1262,9
;----------------------------------------------------------------------
; 1262 | chanObjs[1].vIntFxn((Arg)cbase, vpis>>16);                             
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(24),A3       ; |1262| 
           MVK     .S1     243,A4            ; |1262| 
           LDW     .D2T2   *+SP(12),B4       ; |1262| 
           NOP             2
           LDW     .D1T1   *+A3[A4],A3       ; |1262| 
           NOP             2
           LDW     .D2T1   *+SP(32),A4       ; |1262| 
           SHR     .S2     B4,16,B4          ; |1262| 
           CALL    .S2X    A3                ; |1262| 
           ADDKPC  .S2     RL87,B3,4         ; |1262| 
RL87:      ; CALL OCCURS {A3}                ; |1262| 
	.dwpsn	"vportcap_RAW.c",1263,9
;----------------------------------------------------------------------
; 1263 | mask &=  chanObjs[1].vIntMask;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B5       ; |1263| 
           NOP             2
           LDW     .D2T2   *+SP(16),B4       ; |1263| 
           MVK     .S2     143,B6            ; |1263| 
           LDW     .D2T2   *+B5[B6],B5       ; |1263| 
           NOP             4
           AND     .L2     B5,B4,B4          ; |1263| 
           STW     .D2T2   B4,*+SP(16)       ; |1263| 
           NOP             1
	.dwendtag DW$332

;** --------------------------------------------------------------------------*
L145:    
	.dwpsn	"vportcap_RAW.c",1266,5
;----------------------------------------------------------------------
; 1266 | base[_VP_VPIS_OFFSET] |= mask;                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(8),B4        ; |1266| 
           NOP             2
           MVK     .S2     204,B5            ; |1266| 
           LDW     .D2T2   *+SP(16),B6       ; |1266| 
           ADD     .L2     B5,B4,B5          ; |1266| 
           LDW     .D2T2   *B5,B4            ; |1266| 
           NOP             4
           OR      .L2     B6,B4,B4          ; |1266| 
           STW     .D2T2   B4,*B5            ; |1266| 
           NOP             2
	.dwpsn	"vportcap_RAW.c",1267,1
           LDW     .D2T2   *++SP(40),B3      ; |1267| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |1267| 
           ; BRANCH OCCURS {B3}              ; |1267| 
	.dwattr DW$321, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$321, DW_AT_end_line(0x4f3)
	.dwattr DW$321, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$321

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Assertion failed, (portNum < 3), file vportcap_RAW.c, line "
	.string	"138",10,0
SL2:	.string	"Assertion failed, (chanNum < 2), file vportcap_RAW.c, line "
	.string	"212",10,0
SL3:	.string	"Assertion failed, (chan->status & 4), file vportcap_RAW.c, "
	.string	"line 359",10,0
SL4:	.string	"Assertion failed, (packet->cmd == (128 + 0) || packet->cmd "
	.string	"== (128 + 1) || packet->cmd == (128 + 2)), file vportcap_RA"
	.string	"W.c, line 360",10,0
SL5:	.string	"Assertion failed, (params->fldXStop1 == params->fldXStop2),"
	.string	" file vportcap_RAW.c, line 587",10,0
SL6:	.string	"Assertion failed, (params->fldXStrt1 == params->fldXStrt2),"
	.string	" file vportcap_RAW.c, line 588",10,0
SL7:	.string	"Assertion failed, (((chan->yPitch*chan->numLinesFld1) / (ch"
	.string	"an->yThrld << 3)) *(chan->yThrld << 3) == (chan->yPitch * c"
	.string	"han->numLinesFld1)), file vportcap_RAW.c, line 708",10,0
SL8:	.string	"Assertion failed, (((chan->yPitch * chan->numLines) / (chan"
	.string	"->yThrld << 3)) *(chan->yThrld << 3) == (chan->yPitch * cha"
	.string	"n->numLines)), file vportcap_RAW.c, line 710",10,0
SL9:	.string	"Assertion failed, (params->numFrmBufs >= 2 && params->numFr"
	.string	"mBufs <= 10), file vportcap_RAW.c, line 809",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_MEM_alloc
	.global	_MEM_free
	.global	_QUE_get
	.global	_QUE_put
	.global	_SEM_pend
	.global	_HWI_dispatchPlug
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
	.global	_EDMA_config
	.global	_IOM_mdNotImpl
	.global	_CLK_getltime
	.global	_TSK_timerSem
	.global	_cr_reg
	.global	__abort_msg
	.global	__divi
	.global	__divu

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$T$41	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$41, DW_AT_address_class(0x20)

DW$T$109	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$334	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$335	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$336	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$109


DW$T$112	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$337	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$T$112

DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TiomCallback"), DW_AT_type(*DW$T$58)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)

DW$T$117	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$117, DW_AT_language(DW_LANG_C)
DW$338	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$339	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$116)
	.dwendtag DW$T$117


DW$T$118	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$118, DW_AT_language(DW_LANG_C)
DW$340	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
DW$341	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$118


DW$T$125	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$125, DW_AT_language(DW_LANG_C)
DW$342	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$343	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
DW$344	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$345	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$124)
	.dwendtag DW$T$125


DW$T$127	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$127, DW_AT_language(DW_LANG_C)
DW$346	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$347	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$127


DW$T$129	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$129, DW_AT_language(DW_LANG_C)
DW$348	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$129


DW$T$131	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$131, DW_AT_language(DW_LANG_C)
DW$349	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$T$131


DW$T$133	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)
DW$350	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$133

DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_IntHandler"), DW_AT_type(*DW$T$134)
	.dwattr DW$T$135, DW_AT_language(DW_LANG_C)

DW$T$136	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$135)
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$351	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$352	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
	.dwendtag DW$T$136


DW$T$138	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)

DW$T$142	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$142, DW_AT_language(DW_LANG_C)
DW$353	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$354	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$141)
	.dwendtag DW$T$142


DW$T$144	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$144, DW_AT_language(DW_LANG_C)
DW$355	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$T$144

DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("Bool"), DW_AT_type(*DW$T$93)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)

DW$T$146	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$94)
	.dwattr DW$T$146, DW_AT_language(DW_LANG_C)
DW$356	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$357	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$358	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$146


DW$T$150	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$94)
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
DW$359	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$360	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$150

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Int"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)

DW$T$42	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$361	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$362	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$363	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$42


DW$T$45	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$364	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$45


DW$T$48	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$365	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$366	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$367	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$48


DW$T$60	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$368	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$369	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$370	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$371	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$372	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$373	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$374	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$60


DW$T$64	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$375	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$376	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
	.dwendtag DW$T$64

DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn"), DW_AT_type(*DW$T$121)
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)

DW$T$152	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$152, DW_AT_language(DW_LANG_C)

DW$T$156	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$156, DW_AT_language(DW_LANG_C)
DW$377	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$378	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$155)
	.dwendtag DW$T$156


DW$T$158	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$158, DW_AT_language(DW_LANG_C)
DW$379	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$380	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$158

DW$T$161	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$161, DW_AT_type(*DW$T$22)
DW$T$162	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$161)
	.dwattr DW$T$162, DW_AT_address_class(0x20)

DW$T$164	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$164, DW_AT_language(DW_LANG_C)
DW$381	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$164


DW$T$166	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$166, DW_AT_language(DW_LANG_C)
DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Uns"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Handle"), DW_AT_type(*DW$T$34)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)

DW$T$174	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$89)
	.dwattr DW$T$174, DW_AT_language(DW_LANG_C)
DW$382	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$383	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$174


DW$T$176	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$89)
	.dwattr DW$T$176, DW_AT_language(DW_LANG_C)
DW$384	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$176


DW$T$170	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$170, DW_AT_language(DW_LANG_C)
DW$385	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$170


DW$T$172	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$172, DW_AT_language(DW_LANG_C)
DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Handle"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)
DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle"), DW_AT_type(*DW$T$148)
	.dwattr DW$T$149, DW_AT_language(DW_LANG_C)
DW$T$201	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$201, DW_AT_language(DW_LANG_C)
DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_Attrs"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$123, DW_AT_language(DW_LANG_C)
DW$T$124	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$123)
	.dwattr DW$T$124, DW_AT_address_class(0x20)
DW$T$140	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Config"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$140, DW_AT_language(DW_LANG_C)
DW$T$141	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$140)
	.dwattr DW$T$141, DW_AT_address_class(0x20)
DW$T$56	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$55)
	.dwattr DW$T$56, DW_AT_address_class(0x20)
DW$T$155	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$154)
	.dwattr DW$T$155, DW_AT_address_class(0x20)
DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("String"), DW_AT_type(*DW$T$52)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$T$116	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$115)
	.dwattr DW$T$116, DW_AT_address_class(0x20)
DW$T$197	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$196)
	.dwattr DW$T$197, DW_AT_address_class(0x20)
DW$T$202	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Fxns"), DW_AT_type(*DW$T$67)
	.dwattr DW$T$202, DW_AT_language(DW_LANG_C)
DW$T$99	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$87)
	.dwattr DW$T$99, DW_AT_address_class(0x20)
DW$T$207	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$103)
	.dwattr DW$T$207, DW_AT_address_class(0x20)

DW$T$209	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$208)
	.dwattr DW$T$209, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$209, DW_AT_byte_size(0xc90)
DW$386	.dwtag  DW_TAG_subrange_type
	.dwattr DW$386, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$209

DW$T$210	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$208)
	.dwattr DW$T$210, DW_AT_address_class(0x20)
DW$T$212	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$211)
	.dwattr DW$T$212, DW_AT_address_class(0x20)
DW$T$214	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$213)
	.dwattr DW$T$214, DW_AT_address_class(0x20)
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)
DW$T$58	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_address_class(0x20)
DW$T$134	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$133)
	.dwattr DW$T$134, DW_AT_address_class(0x20)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x02)
DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("MdUns"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
DW$T$121	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$120)
	.dwattr DW$T$121, DW_AT_address_class(0x20)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$19	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$19, DW_AT_address_class(0x20)

DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("SEM_Obj")
	.dwattr DW$T$30, DW_AT_byte_size(0x1c)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$387, DW_AT_name("job"), DW_AT_symbol_name("_job")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$388, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$389, DW_AT_name("pendQ"), DW_AT_symbol_name("_pendQ")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30

DW$T$148	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$148, DW_AT_address_class(0x20)

DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("HWI_Attrs")
	.dwattr DW$T$33, DW_AT_byte_size(0x0c)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$390, DW_AT_name("intrMask"), DW_AT_symbol_name("_intrMask")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$391, DW_AT_name("ccMask"), DW_AT_symbol_name("_ccMask")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$392, DW_AT_name("arg"), DW_AT_symbol_name("_arg")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x18)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$393, DW_AT_name("opt"), DW_AT_symbol_name("_opt")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$394, DW_AT_name("src"), DW_AT_symbol_name("_src")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$395, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$396, DW_AT_name("dst"), DW_AT_symbol_name("_dst")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$397, DW_AT_name("idx"), DW_AT_symbol_name("_idx")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$398, DW_AT_name("rld"), DW_AT_symbol_name("_rld")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35

DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Packet"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$T$154	.dwtag  DW_TAG_typedef, DW_AT_name("VPORTCAP_Params"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$154, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$52, DW_AT_address_class(0x20)
DW$T$115	.dwtag  DW_TAG_const_type
	.dwattr DW$T$115, DW_AT_type(*DW$T$51)
DW$T$196	.dwtag  DW_TAG_typedef, DW_AT_name("Int8"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$196, DW_AT_language(DW_LANG_C)

DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$67, DW_AT_name("IOM_Fxns")
	.dwattr DW$T$67, DW_AT_byte_size(0x18)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$399, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$400, DW_AT_name("mdUnBindDev"), DW_AT_symbol_name("_mdUnBindDev")
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$401, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$402, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$403, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$404, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67

DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_Frame"), DW_AT_type(*DW$T$79)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("_VPORT_ChanObj"), DW_AT_type(*DW$T$102)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$T$208	.dwtag  DW_TAG_typedef, DW_AT_name("PortObj"), DW_AT_type(*DW$T$105)
	.dwattr DW$T$208, DW_AT_language(DW_LANG_C)
DW$T$211	.dwtag  DW_TAG_typedef, DW_AT_name("VPORT_PortParams"), DW_AT_type(*DW$T$107)
	.dwattr DW$T$211, DW_AT_language(DW_LANG_C)
DW$T$213	.dwtag  DW_TAG_typedef, DW_AT_name("VPORT_VIntCbParams"), DW_AT_type(*DW$T$108)
	.dwattr DW$T$213, DW_AT_language(DW_LANG_C)

DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$405	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$406	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
	.dwendtag DW$T$57

DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("Arg"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdBindDev"), DW_AT_type(*DW$T$43)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdUnBindDev"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdDeleteChan"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdControlChan"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdCreateChan"), DW_AT_type(*DW$T$61)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdSubmitChan"), DW_AT_type(*DW$T$65)
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)

DW$T$120	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$120, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("QUE_Elem")
	.dwattr DW$T$20, DW_AT_byte_size(0x08)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$407, DW_AT_name("next"), DW_AT_symbol_name("_next")
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$408, DW_AT_name("prev"), DW_AT_symbol_name("_prev")
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Frame"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)

DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x58)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$409, DW_AT_name("cmode"), DW_AT_symbol_name("_cmode")
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$410, DW_AT_name("fldOp"), DW_AT_symbol_name("_fldOp")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$411, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$412, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$413, DW_AT_name("bpk10Bit"), DW_AT_symbol_name("_bpk10Bit")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$414, DW_AT_name("hCtRst"), DW_AT_symbol_name("_hCtRst")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$415, DW_AT_name("vCtRst"), DW_AT_symbol_name("_vCtRst")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$416, DW_AT_name("fldDect"), DW_AT_symbol_name("_fldDect")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$417, DW_AT_name("extCtl"), DW_AT_symbol_name("_extCtl")
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$418, DW_AT_name("fldInv"), DW_AT_symbol_name("_fldInv")
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$419, DW_AT_name("sse"), DW_AT_symbol_name("_sse")
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$420, DW_AT_name("vcvblnkp"), DW_AT_symbol_name("_vcvblnkp")
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$421, DW_AT_name("fldXStrt1"), DW_AT_symbol_name("_fldXStrt1")
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$422, DW_AT_name("fldYStrt1"), DW_AT_symbol_name("_fldYStrt1")
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$423, DW_AT_name("fldXStrt2"), DW_AT_symbol_name("_fldXStrt2")
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$424, DW_AT_name("fldYStrt2"), DW_AT_symbol_name("_fldYStrt2")
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$425, DW_AT_name("fldXStop1"), DW_AT_symbol_name("_fldXStop1")
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$426, DW_AT_name("fldYStop1"), DW_AT_symbol_name("_fldYStop1")
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$427, DW_AT_name("fldXStop2"), DW_AT_symbol_name("_fldXStop2")
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$428, DW_AT_name("fldYStop2"), DW_AT_symbol_name("_fldYStop2")
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$429, DW_AT_name("thrld"), DW_AT_symbol_name("_thrld")
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$430, DW_AT_name("numFrmBufs"), DW_AT_symbol_name("_numFrmBufs")
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$431, DW_AT_name("alignment"), DW_AT_symbol_name("_alignment")
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$432, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$433, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$434, DW_AT_name("edmaPri"), DW_AT_symbol_name("_edmaPri")
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$435, DW_AT_name("irqId"), DW_AT_symbol_name("_irqId")
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40

DW$T$51	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$51, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$51, DW_AT_byte_size(0x01)

DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$79, DW_AT_name("FVID_Frame")
	.dwattr DW$T$79, DW_AT_byte_size(0x20)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$436, DW_AT_name("queElement"), DW_AT_symbol_name("_queElement")
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$78)
	.dwattr DW$437, DW_AT_name("frame"), DW_AT_symbol_name("_frame")
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$102, DW_AT_byte_size(0x214)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$438, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$439, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$440, DW_AT_name("chanNum"), DW_AT_symbol_name("_chanNum")
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$441, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$86)
	.dwattr DW$442, DW_AT_name("edmaChanNum"), DW_AT_symbol_name("_edmaChanNum")
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$86)
	.dwattr DW$443, DW_AT_name("edmaAddr"), DW_AT_symbol_name("_edmaAddr")
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$444, DW_AT_name("vIntMask"), DW_AT_symbol_name("_vIntMask")
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$88)
	.dwattr DW$445, DW_AT_name("viops"), DW_AT_symbol_name("_viops")
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$446, DW_AT_name("qIn"), DW_AT_symbol_name("_qIn")
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x16c]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$447, DW_AT_name("qOut"), DW_AT_symbol_name("_qOut")
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x174]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$90)
	.dwattr DW$448, DW_AT_name("hEdma"), DW_AT_symbol_name("_hEdma")
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x17c]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$91)
	.dwattr DW$449, DW_AT_name("hRld"), DW_AT_symbol_name("_hRld")
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x188]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$92)
	.dwattr DW$450, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a0]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$451, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ac]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$452, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b0]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$453, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b4]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$454, DW_AT_name("vIntFxn"), DW_AT_symbol_name("_vIntFxn")
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b8]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$98)
	.dwattr DW$455, DW_AT_name("queEmpty"), DW_AT_symbol_name("_queEmpty")
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x1bc]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$456, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1be]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$457, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c0]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$458, DW_AT_name("yPitch"), DW_AT_symbol_name("_yPitch")
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c4]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$459, DW_AT_name("cPitch"), DW_AT_symbol_name("_cPitch")
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c8]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$460, DW_AT_name("numLines"), DW_AT_symbol_name("_numLines")
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x1cc]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$461, DW_AT_name("numPixels"), DW_AT_symbol_name("_numPixels")
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d0]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$462, DW_AT_name("numLinesFld1"), DW_AT_symbol_name("_numLinesFld1")
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d4]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$463, DW_AT_name("numFrms"), DW_AT_symbol_name("_numFrms")
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d8]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$464, DW_AT_name("numEvents"), DW_AT_symbol_name("_numEvents")
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x1dc]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$465, DW_AT_name("numEventsFld1"), DW_AT_symbol_name("_numEventsFld1")
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e0]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
DW$466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$466, DW_AT_name("yThrld"), DW_AT_symbol_name("_yThrld")
	.dwattr DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e4]
	.dwattr DW$466, DW_AT_accessibility(DW_ACCESS_public)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$467, DW_AT_name("cThrld"), DW_AT_symbol_name("_cThrld")
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e8]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$99)
	.dwattr DW$468, DW_AT_name("curViop"), DW_AT_symbol_name("_curViop")
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ec]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$99)
	.dwattr DW$469, DW_AT_name("nextViop"), DW_AT_symbol_name("_nextViop")
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f0]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$99)
	.dwattr DW$470, DW_AT_name("mrViop"), DW_AT_symbol_name("_mrViop")
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f4]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$471, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f8]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$101)
	.dwattr DW$472, DW_AT_name("edcFxns"), DW_AT_symbol_name("_edcFxns")
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x1fc]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$473, DW_AT_name("edcHandle"), DW_AT_symbol_name("_edcHandle")
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x200]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$474, DW_AT_name("packetIOM"), DW_AT_symbol_name("_packetIOM")
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x204]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$475, DW_AT_name("vIntCbArg"), DW_AT_symbol_name("_vIntCbArg")
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x208]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$476, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x20c]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$477, DW_AT_name("bufSz"), DW_AT_symbol_name("_bufSz")
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x210]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$102


DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$105, DW_AT_name("PortObj")
	.dwattr DW$T$105, DW_AT_byte_size(0x430)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$478, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$479, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
DW$480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$104)
	.dwattr DW$480, DW_AT_name("chanObj"), DW_AT_symbol_name("_chanObj")
	.dwattr DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$105


DW$T$107	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$107, DW_AT_name("VPORT_PortParams")
	.dwattr DW$T$107, DW_AT_byte_size(0x18)
DW$481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$481, DW_AT_name("dualChanEnable"), DW_AT_symbol_name("_dualChanEnable")
	.dwattr DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$481, DW_AT_accessibility(DW_ACCESS_public)
DW$482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$482, DW_AT_name("vc1Polarity"), DW_AT_symbol_name("_vc1Polarity")
	.dwattr DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$482, DW_AT_accessibility(DW_ACCESS_public)
DW$483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$483, DW_AT_name("vc2Polarity"), DW_AT_symbol_name("_vc2Polarity")
	.dwattr DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$483, DW_AT_accessibility(DW_ACCESS_public)
DW$484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$484, DW_AT_name("vc3Polarity"), DW_AT_symbol_name("_vc3Polarity")
	.dwattr DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$484, DW_AT_accessibility(DW_ACCESS_public)
DW$485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$106)
	.dwattr DW$485, DW_AT_name("edcTbl"), DW_AT_symbol_name("_edcTbl")
	.dwattr DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$107


DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$108, DW_AT_name("VPORT_VIntCbParams")
	.dwattr DW$T$108, DW_AT_byte_size(0x10)
DW$486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$486, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$486, DW_AT_accessibility(DW_ACCESS_public)
DW$487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$487, DW_AT_name("vIntCbFxn"), DW_AT_symbol_name("_vIntCbFxn")
	.dwattr DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$487, DW_AT_accessibility(DW_ACCESS_public)
DW$488	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$488, DW_AT_name("vIntMask"), DW_AT_symbol_name("_vIntMask")
	.dwattr DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$488, DW_AT_accessibility(DW_ACCESS_public)
DW$489	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$489, DW_AT_name("vIntLine"), DW_AT_symbol_name("_vIntLine")
	.dwattr DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$489, DW_AT_accessibility(DW_ACCESS_public)
DW$490	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$490, DW_AT_name("irqId"), DW_AT_symbol_name("_irqId")
	.dwattr DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$108

DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("VPORT_IntCallBack"), DW_AT_type(*DW$T$96)
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$T$98	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$98, DW_AT_type(*DW$T$94)
DW$T$43	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$42)
	.dwattr DW$T$43, DW_AT_address_class(0x20)
DW$T$46	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$45)
	.dwattr DW$T$46, DW_AT_address_class(0x20)
DW$T$49	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$48)
	.dwattr DW$T$49, DW_AT_address_class(0x20)
DW$T$61	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$60)
	.dwattr DW$T$61, DW_AT_address_class(0x20)
DW$T$65	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$64)
	.dwattr DW$T$65, DW_AT_address_class(0x20)

DW$T$92	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$92, DW_AT_byte_size(0x0c)
DW$491	.dwtag  DW_TAG_subrange_type
	.dwattr DW$491, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$92


DW$T$86	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$86, DW_AT_byte_size(0x0c)
DW$492	.dwtag  DW_TAG_subrange_type
	.dwattr DW$492, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$86


DW$T$90	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$89)
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$90, DW_AT_byte_size(0x0c)
DW$493	.dwtag  DW_TAG_subrange_type
	.dwattr DW$493, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$90


DW$T$91	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$89)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$91, DW_AT_byte_size(0x18)
DW$494	.dwtag  DW_TAG_subrange_type
	.dwattr DW$494, DW_AT_upper_bound(0x05)
	.dwendtag DW$T$91

DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("KNL_Job")
	.dwattr DW$T$28, DW_AT_byte_size(0x10)
DW$495	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$495, DW_AT_name("wListElem"), DW_AT_symbol_name("_wListElem")
	.dwattr DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$495, DW_AT_accessibility(DW_ACCESS_public)
DW$496	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$496, DW_AT_name("wCount"), DW_AT_symbol_name("_wCount")
	.dwattr DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$496, DW_AT_accessibility(DW_ACCESS_public)
DW$497	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$497, DW_AT_name("fxn"), DW_AT_symbol_name("_fxn")
	.dwattr DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("DEV_Frame")
	.dwattr DW$T$38, DW_AT_byte_size(0x20)
DW$498	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$498, DW_AT_name("link"), DW_AT_symbol_name("_link")
	.dwattr DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$498, DW_AT_accessibility(DW_ACCESS_public)
DW$499	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$499, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$499, DW_AT_accessibility(DW_ACCESS_public)
DW$500	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$500, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$500, DW_AT_accessibility(DW_ACCESS_public)
DW$501	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$501, DW_AT_name("misc"), DW_AT_symbol_name("_misc")
	.dwattr DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$501, DW_AT_accessibility(DW_ACCESS_public)
DW$502	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$502, DW_AT_name("arg"), DW_AT_symbol_name("_arg")
	.dwattr DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$502, DW_AT_accessibility(DW_ACCESS_public)
DW$503	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$503, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$503, DW_AT_accessibility(DW_ACCESS_public)
DW$504	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$504, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$78	.dwtag  DW_TAG_union_type
	.dwattr DW$T$78, DW_AT_byte_size(0x18)
DW$505	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$505, DW_AT_name("iFrm"), DW_AT_symbol_name("_iFrm")
	.dwattr DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$505, DW_AT_accessibility(DW_ACCESS_public)
DW$506	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$506, DW_AT_name("pFrm"), DW_AT_symbol_name("_pFrm")
	.dwattr DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$506, DW_AT_accessibility(DW_ACCESS_public)
DW$507	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$76)
	.dwattr DW$507, DW_AT_name("riFrm"), DW_AT_symbol_name("_riFrm")
	.dwattr DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$507, DW_AT_accessibility(DW_ACCESS_public)
DW$508	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$508, DW_AT_name("rpFrm"), DW_AT_symbol_name("_rpFrm")
	.dwattr DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78


DW$T$88	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$87)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$88, DW_AT_byte_size(0x140)
DW$509	.dwtag  DW_TAG_subrange_type
	.dwattr DW$509, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$88

DW$T$101	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$100)
	.dwattr DW$T$101, DW_AT_address_class(0x20)

DW$T$106	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$101)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$106, DW_AT_byte_size(0x08)
DW$510	.dwtag  DW_TAG_subrange_type
	.dwattr DW$510, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$106


DW$T$104	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$103)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$104, DW_AT_byte_size(0x428)
DW$511	.dwtag  DW_TAG_subrange_type
	.dwattr DW$511, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$104

DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$T$96	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$95)
	.dwattr DW$T$96, DW_AT_address_class(0x20)
DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_IFrame"), DW_AT_type(*DW$T$70)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_PFrame"), DW_AT_type(*DW$T$71)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_RawIFrame"), DW_AT_type(*DW$T$72)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_RawPFrame"), DW_AT_type(*DW$T$73)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Fxns"), DW_AT_type(*DW$T$85)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$26, DW_AT_address_class(0x20)

DW$T$95	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$512	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
DW$513	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$95


DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$70, DW_AT_name("FVID_IFrame")
	.dwattr DW$T$70, DW_AT_byte_size(0x18)
DW$514	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$514, DW_AT_name("y1"), DW_AT_symbol_name("_y1")
	.dwattr DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$514, DW_AT_accessibility(DW_ACCESS_public)
DW$515	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$515, DW_AT_name("cb1"), DW_AT_symbol_name("_cb1")
	.dwattr DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$515, DW_AT_accessibility(DW_ACCESS_public)
DW$516	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$516, DW_AT_name("cr1"), DW_AT_symbol_name("_cr1")
	.dwattr DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$516, DW_AT_accessibility(DW_ACCESS_public)
DW$517	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$517, DW_AT_name("y2"), DW_AT_symbol_name("_y2")
	.dwattr DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$517, DW_AT_accessibility(DW_ACCESS_public)
DW$518	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$518, DW_AT_name("cb2"), DW_AT_symbol_name("_cb2")
	.dwattr DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$518, DW_AT_accessibility(DW_ACCESS_public)
DW$519	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$519, DW_AT_name("cr2"), DW_AT_symbol_name("_cr2")
	.dwattr DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70


DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$71, DW_AT_name("FVID_PFrame")
	.dwattr DW$T$71, DW_AT_byte_size(0x0c)
DW$520	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$520, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$520, DW_AT_accessibility(DW_ACCESS_public)
DW$521	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$521, DW_AT_name("cb"), DW_AT_symbol_name("_cb")
	.dwattr DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$521, DW_AT_accessibility(DW_ACCESS_public)
DW$522	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$522, DW_AT_name("cr"), DW_AT_symbol_name("_cr")
	.dwattr DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_name("FVID_RawIFrame")
	.dwattr DW$T$72, DW_AT_byte_size(0x08)
DW$523	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$523, DW_AT_name("buf1"), DW_AT_symbol_name("_buf1")
	.dwattr DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$523, DW_AT_accessibility(DW_ACCESS_public)
DW$524	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$524, DW_AT_name("buf2"), DW_AT_symbol_name("_buf2")
	.dwattr DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("FVID_RawPFrame")
	.dwattr DW$T$73, DW_AT_byte_size(0x04)
DW$525	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$525, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73


DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$85, DW_AT_name("EDC_Fxns")
	.dwattr DW$T$85, DW_AT_byte_size(0x0c)
DW$526	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$82)
	.dwattr DW$526, DW_AT_name("open"), DW_AT_symbol_name("_open")
	.dwattr DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$526, DW_AT_accessibility(DW_ACCESS_public)
DW$527	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$527, DW_AT_name("close"), DW_AT_symbol_name("_close")
	.dwattr DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$527, DW_AT_accessibility(DW_ACCESS_public)
DW$528	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$84)
	.dwattr DW$528, DW_AT_name("ctrl"), DW_AT_symbol_name("_ctrl")
	.dwattr DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$85

DW$T$82	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$81)
	.dwattr DW$T$82, DW_AT_address_class(0x20)

DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$529	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$25

DW$T$84	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$84, DW_AT_address_class(0x20)
DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$T$69	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$69, DW_AT_address_class(0x20)

DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$80)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$530	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$531	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$81


DW$T$83	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$83, DW_AT_language(DW_LANG_C)
DW$532	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$533	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$534	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$83

DW$T$23	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$23, DW_AT_address_class(0x20)
DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("Char"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Handle"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)

	.dwattr DW$203, DW_AT_type(*DW$T$22)
	.dwattr DW$219, DW_AT_type(*DW$T$22)
	.dwattr DW$225, DW_AT_type(*DW$T$22)
	.dwattr DW$233, DW_AT_type(*DW$T$22)
	.dwattr DW$274, DW_AT_type(*DW$T$22)
	.dwattr DW$289, DW_AT_type(*DW$T$22)
	.dwattr DW$307, DW_AT_type(*DW$T$22)
	.dwattr DW$314, DW_AT_type(*DW$T$22)
	.dwattr DW$75, DW_AT_type(*DW$T$22)
	.dwattr DW$87, DW_AT_type(*DW$T$22)
	.dwattr DW$97, DW_AT_type(*DW$T$22)
	.dwattr DW$132, DW_AT_type(*DW$T$22)
	.dwattr DW$144, DW_AT_type(*DW$T$22)
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

DW$535	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$535, DW_AT_location[DW_OP_reg0]
DW$536	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$536, DW_AT_location[DW_OP_reg1]
DW$537	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$537, DW_AT_location[DW_OP_reg2]
DW$538	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$538, DW_AT_location[DW_OP_reg3]
DW$539	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$539, DW_AT_location[DW_OP_reg4]
DW$540	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$540, DW_AT_location[DW_OP_reg5]
DW$541	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$541, DW_AT_location[DW_OP_reg6]
DW$542	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$542, DW_AT_location[DW_OP_reg7]
DW$543	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$543, DW_AT_location[DW_OP_reg8]
DW$544	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$544, DW_AT_location[DW_OP_reg9]
DW$545	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$545, DW_AT_location[DW_OP_reg10]
DW$546	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$546, DW_AT_location[DW_OP_reg11]
DW$547	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$547, DW_AT_location[DW_OP_reg12]
DW$548	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$548, DW_AT_location[DW_OP_reg13]
DW$549	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$549, DW_AT_location[DW_OP_reg14]
DW$550	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$550, DW_AT_location[DW_OP_reg15]
DW$551	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$551, DW_AT_location[DW_OP_reg16]
DW$552	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$552, DW_AT_location[DW_OP_reg17]
DW$553	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$553, DW_AT_location[DW_OP_reg18]
DW$554	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$554, DW_AT_location[DW_OP_reg19]
DW$555	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$555, DW_AT_location[DW_OP_reg20]
DW$556	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$556, DW_AT_location[DW_OP_reg21]
DW$557	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$557, DW_AT_location[DW_OP_reg22]
DW$558	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$558, DW_AT_location[DW_OP_reg23]
DW$559	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$559, DW_AT_location[DW_OP_reg24]
DW$560	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$560, DW_AT_location[DW_OP_reg25]
DW$561	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$561, DW_AT_location[DW_OP_reg26]
DW$562	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$562, DW_AT_location[DW_OP_reg27]
DW$563	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$563, DW_AT_location[DW_OP_reg28]
DW$564	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$564, DW_AT_location[DW_OP_reg29]
DW$565	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$565, DW_AT_location[DW_OP_reg30]
DW$566	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$566, DW_AT_location[DW_OP_reg31]
DW$567	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$567, DW_AT_location[DW_OP_regx 0x20]
DW$568	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$568, DW_AT_location[DW_OP_regx 0x21]
DW$569	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$569, DW_AT_location[DW_OP_regx 0x22]
DW$570	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$570, DW_AT_location[DW_OP_regx 0x23]
DW$571	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$571, DW_AT_location[DW_OP_regx 0x24]
DW$572	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$572, DW_AT_location[DW_OP_regx 0x25]
DW$573	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$573, DW_AT_location[DW_OP_regx 0x26]
DW$574	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$574, DW_AT_location[DW_OP_regx 0x27]
DW$575	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$575, DW_AT_location[DW_OP_regx 0x28]
DW$576	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$576, DW_AT_location[DW_OP_regx 0x29]
DW$577	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$577, DW_AT_location[DW_OP_regx 0x2a]
DW$578	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$578, DW_AT_location[DW_OP_regx 0x2b]
DW$579	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$579, DW_AT_location[DW_OP_regx 0x2c]
DW$580	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$580, DW_AT_location[DW_OP_regx 0x2d]
DW$581	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$581, DW_AT_location[DW_OP_regx 0x2e]
DW$582	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$582, DW_AT_location[DW_OP_regx 0x2f]
DW$583	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$583, DW_AT_location[DW_OP_regx 0x30]
DW$584	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$584, DW_AT_location[DW_OP_regx 0x31]
DW$585	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$585, DW_AT_location[DW_OP_regx 0x32]
DW$586	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$586, DW_AT_location[DW_OP_regx 0x33]
DW$587	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$587, DW_AT_location[DW_OP_regx 0x34]
DW$588	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$588, DW_AT_location[DW_OP_regx 0x35]
DW$589	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$589, DW_AT_location[DW_OP_regx 0x36]
DW$590	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$590, DW_AT_location[DW_OP_regx 0x37]
DW$591	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$591, DW_AT_location[DW_OP_regx 0x38]
DW$592	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$592, DW_AT_location[DW_OP_regx 0x39]
DW$593	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$593, DW_AT_location[DW_OP_regx 0x3a]
DW$594	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$594, DW_AT_location[DW_OP_regx 0x3b]
DW$595	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$595, DW_AT_location[DW_OP_regx 0x3c]
DW$596	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$596, DW_AT_location[DW_OP_regx 0x3d]
DW$597	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$597, DW_AT_location[DW_OP_regx 0x3e]
DW$598	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$598, DW_AT_location[DW_OP_regx 0x3f]
DW$599	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$599, DW_AT_location[DW_OP_regx 0x40]
DW$600	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$600, DW_AT_location[DW_OP_regx 0x41]
DW$601	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$601, DW_AT_location[DW_OP_regx 0x42]
DW$602	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$602, DW_AT_location[DW_OP_regx 0x43]
DW$603	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$603, DW_AT_location[DW_OP_regx 0x44]
DW$604	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$604, DW_AT_location[DW_OP_regx 0x45]
DW$605	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$605, DW_AT_location[DW_OP_regx 0x46]
DW$606	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$606, DW_AT_location[DW_OP_regx 0x47]
DW$607	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$607, DW_AT_location[DW_OP_regx 0x48]
DW$608	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$608, DW_AT_location[DW_OP_regx 0x49]
DW$609	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$609, DW_AT_location[DW_OP_regx 0x4a]
DW$610	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$610, DW_AT_location[DW_OP_regx 0x4b]
DW$611	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$611, DW_AT_location[DW_OP_regx 0x4c]
DW$612	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$612, DW_AT_location[DW_OP_regx 0x4d]
DW$613	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$613, DW_AT_location[DW_OP_regx 0x4e]
DW$614	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$614, DW_AT_location[DW_OP_regx 0x4f]
DW$615	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$615, DW_AT_location[DW_OP_regx 0x50]
DW$616	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$616, DW_AT_location[DW_OP_regx 0x51]
DW$617	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$617, DW_AT_location[DW_OP_regx 0x52]
DW$618	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$618, DW_AT_location[DW_OP_regx 0x53]
DW$619	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$619, DW_AT_location[DW_OP_regx 0x54]
DW$620	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$620, DW_AT_location[DW_OP_regx 0x55]
DW$621	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$621, DW_AT_location[DW_OP_regx 0x56]
DW$622	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$622, DW_AT_location[DW_OP_regx 0x57]
DW$623	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$623, DW_AT_location[DW_OP_regx 0x58]
DW$624	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$624, DW_AT_location[DW_OP_regx 0x59]
DW$625	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$625, DW_AT_location[DW_OP_regx 0x5a]
DW$626	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$626, DW_AT_location[DW_OP_regx 0x5b]
DW$627	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$627, DW_AT_location[DW_OP_regx 0x5c]
DW$628	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$628, DW_AT_location[DW_OP_regx 0x5d]
DW$629	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$629, DW_AT_location[DW_OP_regx 0x5e]
DW$630	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$630, DW_AT_location[DW_OP_regx 0x5f]
DW$631	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$631, DW_AT_location[DW_OP_regx 0x60]
DW$632	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$632, DW_AT_location[DW_OP_regx 0x61]
DW$633	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$633, DW_AT_location[DW_OP_regx 0x62]
DW$634	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$634, DW_AT_location[DW_OP_regx 0x63]
DW$635	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$635, DW_AT_location[DW_OP_regx 0x64]
DW$636	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$636, DW_AT_location[DW_OP_regx 0x65]
DW$637	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$637, DW_AT_location[DW_OP_regx 0x66]
DW$638	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$638, DW_AT_location[DW_OP_regx 0x67]
DW$639	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$639, DW_AT_location[DW_OP_regx 0x68]
DW$640	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$640, DW_AT_location[DW_OP_regx 0x69]
DW$641	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$641, DW_AT_location[DW_OP_regx 0x6a]
DW$642	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$642, DW_AT_location[DW_OP_regx 0x6b]
DW$643	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$643, DW_AT_location[DW_OP_regx 0x6c]
DW$644	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$644, DW_AT_location[DW_OP_regx 0x6d]
DW$645	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$645, DW_AT_location[DW_OP_regx 0x6e]
DW$646	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$646, DW_AT_location[DW_OP_regx 0x6f]
DW$647	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$647, DW_AT_location[DW_OP_regx 0x70]
DW$648	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$648, DW_AT_location[DW_OP_regx 0x71]
DW$649	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$649, DW_AT_location[DW_OP_regx 0x72]
DW$650	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$650, DW_AT_location[DW_OP_regx 0x73]
DW$651	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$651, DW_AT_location[DW_OP_regx 0x74]
DW$652	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$652, DW_AT_location[DW_OP_regx 0x75]
DW$653	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$653, DW_AT_location[DW_OP_regx 0x76]
DW$654	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$654, DW_AT_location[DW_OP_regx 0x77]
DW$655	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$655, DW_AT_location[DW_OP_regx 0x78]
DW$656	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$656, DW_AT_location[DW_OP_regx 0x79]
DW$657	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$657, DW_AT_location[DW_OP_regx 0x7a]
DW$658	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$658, DW_AT_location[DW_OP_regx 0x7b]
DW$659	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$659, DW_AT_location[DW_OP_regx 0x7c]
DW$660	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$660, DW_AT_location[DW_OP_regx 0x7d]
DW$661	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$661, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

