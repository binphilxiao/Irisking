;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Oct 18 16:46:42 2010                                *
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
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$126)
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


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_pend"), DW_AT_symbol_name("_SEM_pend")
	.dwattr DW$12, DW_AT_type(*DW$T$94)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$175)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$12


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("HWI_dispatchPlug"), DW_AT_symbol_name("_HWI_dispatchPlug")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$131)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$133)
	.dwendtag DW$15


DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_map"), DW_AT_symbol_name("_IRQ_map")
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$20


DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_open"), DW_AT_symbol_name("_EDMA_open")
	.dwattr DW$23, DW_AT_type(*DW$T$89)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$23


DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_close"), DW_AT_symbol_name("_EDMA_close")
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$26


DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_allocTable"), DW_AT_symbol_name("_EDMA_allocTable")
	.dwattr DW$28, DW_AT_type(*DW$T$89)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$28


DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_freeTable"), DW_AT_symbol_name("_EDMA_freeTable")
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intAlloc"), DW_AT_symbol_name("_EDMA_intAlloc")
	.dwattr DW$32, DW_AT_type(*DW$T$10)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$32


DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intFree"), DW_AT_symbol_name("_EDMA_intFree")
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$34


DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intHook"), DW_AT_symbol_name("_EDMA_intHook")
	.dwattr DW$36, DW_AT_type(*DW$T$143)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$143)
	.dwendtag DW$36


DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intDispatcher"), DW_AT_symbol_name("_EDMA_intDispatcher")
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("IOM_mdNotImpl"), DW_AT_symbol_name("_IOM_mdNotImpl")
	.dwattr DW$40, DW_AT_type(*DW$T$22)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("CLK_getltime"), DW_AT_symbol_name("_CLK_getltime")
	.dwattr DW$41, DW_AT_type(*DW$T$10)
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("TSK_timerSem"), DW_AT_symbol_name("_TSK_timerSem")
	.dwattr DW$42, DW_AT_type(*DW$T$245)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("_IRQ_eventTable"), DW_AT_symbol_name("__IRQ_eventTable")
	.dwattr DW$43, DW_AT_type(*DW$T$226)
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
	.global	_VPORTCAP_Fxns
_VPORTCAP_Fxns:	.usect	".far",24,4
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("VPORTCAP_Fxns"), DW_AT_symbol_name("_VPORTCAP_Fxns")
	.dwattr DW$44, DW_AT_location[DW_OP_addr _VPORTCAP_Fxns]
	.dwattr DW$44, DW_AT_type(*DW$T$256)
	.dwattr DW$44, DW_AT_external(0x01)
_portObjs:	.usect	".far",3216,8
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("portObjs"), DW_AT_symbol_name("_portObjs")
	.dwattr DW$45, DW_AT_type(*DW$T$269)
	.dwattr DW$45, DW_AT_location[DW_OP_addr _portObjs]
;	D:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI4482 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI4484 
	.sect	".text"

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$46, DW_AT_low_pc(_mdSubmitChan)
	.dwattr DW$46, DW_AT_high_pc(0x00)
	.dwattr DW$46, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$46, DW_AT_begin_line(0x150)
	.dwattr DW$46, DW_AT_begin_column(0x0d)
	.dwattr DW$46, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$46, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",337,1

;******************************************************************************
;* FUNCTION NAME: _mdSubmitChan                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,  *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,  *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_mdSubmitChan:
;** --------------------------------------------------------------------------*
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$47, DW_AT_type(*DW$T$37)
	.dwattr DW$47, DW_AT_location[DW_OP_reg4]
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("packet"), DW_AT_symbol_name("_packet")
	.dwattr DW$48, DW_AT_type(*DW$T$56)
	.dwattr DW$48, DW_AT_location[DW_OP_reg20]
;** 339	-----------------------    chan = (struct $$fake3 *)chanp;
;** 339	-----------------------    Q$1 = 92;
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 345	-----------------------    if ( (t = CLK_getltime()) <= 3000000u ) goto g3;

           STW     .D2T2   B10,*SP--(24)     ; |337| 
||         MV      .L1X    SP,A31            ; |337| 

           STDW    .D1T1   A13:A12,*-A31(8)
           STDW    .D1T1   A11:A10,*-A31(16)

           MVC     .S2     CSR,B4            ; |354| 
||         MVK     .S1     0x5c,A13          ; |339| 
||         MV      .L1X    B4,A11            ; |337| 
||         MV      .D1     A4,A10            ; |337| 
||         MV      .L2     B3,B13
||         STW     .D2T2   B13,*+SP(4)

           MVC     .S2     CSR,B4            ; |355| 
||         AND     .L2     1,B4,B10          ; |354| 

           AND     .L2     -2,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 
           CALL    .S1     _CLK_getltime     ; |345| 
           ADDKPC  .S2     RL0,B3,4          ; |345| 
RL0:       ; CALL OCCURS {_CLK_getltime}     ; |345| 
;** --------------------------------------------------------------------------*

           MVKL    .S1     0x2dc6c0,A3       ; |345| 
||         MVKL    .S2     _TSK_timerSem,B4  ; |347| 

           MVKH    .S1     0x2dc6c0,A3       ; |345| 
||         MVKH    .S2     _TSK_timerSem,B4  ; |347| 

           CMPGTU  .L1     A4,A3,A0          ; |345| 
||         EXTU    .S1     A4,24,24,A3       ; |347| 

   [!A0]   B       .S1     L1                ; |345| 
||         MV      .L1X    B4,A4             ; |347| 

   [ A0]   CALL    .S2     _SEM_pend         ; |347| 
|| [!A0]   MVKL    .S1     SL1+0,A4          ; |350| 
||         MV      .L2X    A3,B4             ; |347| 
|| [!A0]   LDW     .D1T1   *A10,A3           ; |350| 

           NOP             3
   [!A0]   MVKH    .S1     SL1+0,A4          ; |350| 
           ; BRANCHCC OCCURS {L1}            ; |345| 
;** --------------------------------------------------------------------------*
;** 347	-----------------------    SEM_pend(&TSK_timerSem, _extu(t, 24u, 24u));
           ADDKPC  .S2     RL1,B3,0          ; |347| 
RL1:       ; CALL OCCURS {_SEM_pend}         ; |347| 

           LDW     .D1T1   *A10,A3           ; |350| 
||         MVKL    .S1     SL1+0,A4          ; |350| 

           NOP             3
           MVKH    .S1     SL1+0,A4          ; |350| 
;** --------------------------------------------------------------------------*
L1:    
;**	-----------------------g3:
;** 350	-----------------------    assert((*chan).status&4u);
           AND     .L1     4,A3,A0           ; |350| 

   [ A0]   LDW     .D1T1   *+A11(24),A12     ; |351| 
|| [ A0]   MVK     .S1     128,A3            ; |351| 
|| [ A0]   MVK     .S2     129,B4            ; |351| 

   [ A0]   B       .S2     L2                ; |350| 
|| [ A0]   MVK     .S1     130,A31           ; |351| 

   [!A0]   CALL    .S1     __abort_msg       ; |350| 
           NOP             2

   [ A0]   CMPEQ   .L2X    A12,B4,B4         ; |351| 
|| [ A0]   CMPEQ   .L1     A12,A3,A4         ; |351| 

   [ A0]   CMPEQ   .L1     A12,A31,A3        ; |351| 
           ; BRANCHCC OCCURS {L2}            ; |350| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL2,B3,0          ; |350| 
RL2:       ; CALL OCCURS {__abort_msg}       ; |350| 

           LDW     .D1T1   *+A11(24),A12     ; |351| 
||         MVK     .S1     128,A3            ; |351| 
||         MVK     .S2     129,B4            ; |351| 

           NOP             3
           MVK     .S1     130,A31           ; |351| 

           CMPEQ   .L2X    A12,B4,B4         ; |351| 
||         CMPEQ   .L1     A12,A3,A4         ; |351| 

           CMPEQ   .L1     A12,A31,A3        ; |351| 
;** --------------------------------------------------------------------------*
L2:    
;** 351	-----------------------    v$1 = (*packet).cmd;
;** 351	-----------------------    assert((v$1 == 128u)|(v$1 == 129u)|(v$1 == 130u));

           OR      .L2X    B4,A4,B4          ; |351| 
||         MVKL    .S1     SL2+0,A4          ; |351| 

           OR      .L2X    A3,B4,B0          ; |351| 
||         MVKH    .S1     SL2+0,A4          ; |351| 

   [ B0]   MVK     .S1     444,A3            ; |360| 
|| [ B0]   MVK     .S2     128,B4            ; |358| 
||         MV      .L2     B0,B1             ; guard predicate rewrite

   [ B0]   ADD     .L1     A3,A10,A3         ; |360| 
|| [ B0]   B       .S2     L3                ; |351| 
|| [ B1]   MVK     .D1     0x1,A4            ; |356| 
|| [ B1]   MVK     .S1     0x81,A5           ; |351| 
|| [ B1]   MVK     .L2     0xfffffffe,B6     ; |355| 

   [ B0]   CMPEQ   .L2X    A12,B4,B0         ; |358| 
|| [!B0]   CALL    .S1     __abort_msg       ; |351| 

   [!B1]   ZERO    .L2     B0                ; |351| nullify predicate
   [ B0]   BNOP    .S1     L4,2              ; |358| 
           ; BRANCHCC OCCURS {L3}            ; |351| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL3,B3,0          ; |351| 
RL3:       ; CALL OCCURS {__abort_msg}       ; |351| 

           MVK     .S2     128,B4            ; |358| 
||         MVK     .S1     444,A3            ; |360| 
||         MVK     .L2     0xfffffffe,B6     ; |355| 
||         MVK     .L1     0x1,A4            ; |356| 

           CMPEQ   .L2X    A12,B4,B0         ; |358| 
||         ADD     .L1     A3,A10,A3         ; |360| 
||         MVK     .S1     0x81,A5           ; |351| 

   [ B0]   BNOP    .S1     L4,2              ; |358| 
;** --------------------------------------------------------------------------*
L3:    
;** 358	-----------------------    U$24 = v$1;
;** 351	-----------------------    K$28 = 129u;
;** 355	-----------------------    K$6 = 0xfffffffeu;  // [11]
;** 358	-----------------------    if ( U$24 == 128u ) goto g8;

   [!B0]   LDW     .D1T1   *+A11(8),A4       ; |359| 
|| [ B0]   CMPEQ   .L1     A12,A5,A0         ; |370| 

   [!B0]   LDHU    .D1T1   *A3,A0            ; |360| 
           NOP             1
           ; BRANCHCC OCCURS {L4}            ; |358| 
;** --------------------------------------------------------------------------*
;** 359	-----------------------    C$11 = *(void **)(*packet).addr;
;** 359	-----------------------    viop = (struct _FVID_Frame *)C$11;
;** 360	-----------------------    if ( (*chan).queEmpty ) goto g6;
;** 366	-----------------------    elem = C$11;
;** 141	-----------------------    prev = *(Q$1*4+(struct _QUE_Elem **)chan);  // [4]
;** 143	-----------------------    (*viop).next = (struct _QUE_Elem *)chan+364;  // [4]
;** 144	-----------------------    (*viop).prev = prev;  // [4]
;** 145	-----------------------    (*prev).next = viop;  // [4]
;** 146	-----------------------    *(Q$1*4+(struct _QUE_Elem **)chan) = viop;  // [4]
;**  	-----------------------    U$24 = (*packet).cmd;
;** 146	-----------------------    goto g7;  // [4]
;**	-----------------------g6:
;** 362	-----------------------    (*chan).queEmpty = 0;
;** 363	-----------------------    (*chan).nextViop = viop;
;**	-----------------------g7:
;** 368	-----------------------    (*packet).status = 0;
;** 368	-----------------------    v$1 = U$24;
;** 368	-----------------------    retVal = 0;
;** 368	-----------------------    goto g9;
;**	-----------------------g8:
;** 356	-----------------------    retVal = 1;  // [11]

           MVK     .S2     364,B4            ; |143| 
||         MVK     .S1     124,A31           ; |363| 
||         ZERO    .L2     B5                ; |362| 
||         ZERO    .L1     A30               ; |368| 

           MVK     .S2     444,B31           ; |362| 

           LDW     .D1T1   *A4,A3            ; |359| 
||         ADD     .L1X    B4,A10,A6         ; |143| 
||         ADD     .L2X    B31,A10,B4        ; |362| 

   [!A0]   LDW     .D1T1   *+A10[A13],A4     ; |141| 
|| [ A0]   STH     .D2T2   B5,*B4            ; |362| 

           NOP             3
   [!A0]   STW     .D1T1   A6,*A3            ; |143| 
   [!A0]   STW     .D1T1   A4,*+A3(4)        ; |144| 

           ZERO    .L1     A4                ; |368| 
|| [!A0]   STW     .D1T1   A3,*A4            ; |145| 

   [!A0]   STW     .D1T1   A3,*+A10[A13]     ; |146| 
   [ A0]   STW     .D1T1   A3,*+A10[A31]     ; |363| 
   [!A0]   LDW     .D1T1   *+A11(24),A12
           STW     .D1T1   A30,*+A11(28)     ; |368| 
;** --------------------------------------------------------------------------*
           NOP             3
           CMPEQ   .L1     A12,A5,A0         ; |370| 
;** --------------------------------------------------------------------------*
L4:    
;**	-----------------------g9:
;** 370	-----------------------    if ( v$1 == K$28 ) goto g16;

   [ A0]   B       .S1     L7                ; |370| 
||         MVK     .L2     0xffffffff,B7     ; |371| 
||         MVK     .S2     125,B5            ; |371| 
|| [!A0]   MV      .D2X    A10,B4

   [!A0]   LDW     .D2T2   *+B4[B5],B4       ; |371| 
           NOP             4
           ; BRANCHCC OCCURS {L7}            ; |370| 
;** --------------------------------------------------------------------------*
;** 371	-----------------------    C$10 = (*chan).mrViop;
;** 371	-----------------------    if ( C$10 == (K$63 = (void *)0xffffffffu) ) goto g15;

           MVK     .S1     129,A3            ; |373| 
||         CMPEQ   .L2     B4,B7,B0          ; |371| 
||         MVK     .L1     0x1,A4            ; |388| 
||         MVK     .S2     129,B5            ; |387| 

   [ B0]   BNOP    .S2     L6,3              ; |371| 
|| [!B0]   LDW     .D1T1   *+A10[A3],A4      ; |373| 
|| [!B0]   MVK     .S1     444,A3            ; |378| 

   [!B0]   ADD     .L1     A3,A10,A3         ; |378| 
           CMPEQ   .L2X    A4,B7,B0          ; |373| 
           ; BRANCHCC OCCURS {L6}            ; |371| 
;** --------------------------------------------------------------------------*
;** 373	-----------------------    if ( (*chan).packetIOM != K$63 ) goto g14;

   [ B0]   LDW     .D1T1   *+A11(8),A6       ; |374| 
|| [!B0]   B       .S2     L5                ; |373| 
||         ZERO    .L1     A4                ; |377| 
||         MVK     .S1     125,A5            ; |375| 
||         ZERO    .L2     B8                ; |377| 

   [!B0]   BNOP    .S1     L7,3              ; |385| 
||         MVK     .S2     32,B5             ; |376| 
|| [!B0]   MVK     .L1     0xfffffff4,A4     ; |385| 

   [ B0]   STW     .D1T2   B4,*A6            ; |374| 
           ; BRANCHCC OCCURS {L5}            ; |373| 
;** --------------------------------------------------------------------------*
;** 374	-----------------------    *(void **)(*packet).addr = (void *)C$10;
;** 375	-----------------------    (*chan).mrViop = (struct _FVID_Frame *)K$63;
;** 376	-----------------------    (*packet).size = 32u;
;** 377	-----------------------    (*packet).status = 0;
;** 377	-----------------------    retVal = 0;
;** 378	-----------------------    if ( !(*chan).queEmpty ) goto g16;
;** 382	-----------------------    (*chan).nextViop = (*chan).curViop;
;** 382	-----------------------    goto g16;

           STW     .D1T2   B7,*+A10[A5]      ; |375| 
||         MVK     .S1     124,A31           ; |382| 

           STW     .D1T2   B8,*+A11(28)      ; |377| 
           STW     .D1T2   B5,*+A11(12)      ; |376| 

           LDHU    .D1T1   *A3,A0            ; |378| 
||         MVK     .S1     123,A3            ; |382| 

           NOP             4

           BNOP    .S1     L7,4              ; |382| 
|| [ A0]   LDW     .D1T1   *+A10[A3],A3      ; |382| 

   [ A0]   STW     .D1T1   A3,*+A10[A31]     ; |382| 
           ; BRANCH OCCURS {L7}              ; |382| 
;** --------------------------------------------------------------------------*
L5:    
;**	-----------------------g14:
;** 385	-----------------------    retVal = (-12);
;** 385	-----------------------    goto g16;
           NOP             1
           ; BRANCH OCCURS {L7}              ; |385| 
;** --------------------------------------------------------------------------*
L6:    
;**	-----------------------g15:
;** 387	-----------------------    (*chan).packetIOM = packet;
;** 388	-----------------------    (*packet).status = retVal = 1;
           MV      .L2X    A10,B7
           MV      .L2X    A11,B4
           STW     .D2T2   B4,*+B7[B5]       ; |387| 
           STW     .D1T1   A4,*+A11(28)      ; |388| 
;** --------------------------------------------------------------------------*
L7:    
;**	-----------------------g16:
;** 360	-----------------------    CSR = CSR&K$6|gie&1u;  // [12]
;** 360	-----------------------    return retVal;  // [12]
           MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     B6,B4,B4          ; |360| 
||         AND     .S2     1,B10,B5          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           MV      .L2     B13,B3            ; |393| 
||         MV      .L1X    SP,A31            ; |393| 
||         LDW     .D2T2   *+SP(4),B13       ; |393| 

           RET     .S2     B3                ; |393| 
||         LDDW    .D1T1   *+A31(8),A11:A10  ; |393| 

           LDDW    .D1T1   *+A31(16),A13:A12 ; |393| 
||         LDW     .D2T2   *++SP(24),B10     ; |393| 

	.dwpsn	"vportcap_RAW.c",393,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |393| 
	.dwattr DW$46, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$46, DW_AT_end_line(0x189)
	.dwattr DW$46, DW_AT_end_column(0x01)
	.dwendtag DW$46

	.sect	".text"

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("_stopVPCapture"), DW_AT_symbol_name("__stopVPCapture")
	.dwattr DW$49, DW_AT_low_pc(__stopVPCapture)
	.dwattr DW$49, DW_AT_high_pc(0x00)
	.dwattr DW$49, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$49, DW_AT_begin_line(0x48a)
	.dwattr DW$49, DW_AT_begin_column(0x0c)
	.dwattr DW$49, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$49, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",1163,1

;******************************************************************************
;* FUNCTION NAME: __stopVPCapture                                             *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,B4,B5,B6,B7,B8,B9                  *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,B3,B4,B5,B6,B7,B8,B9               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
__stopVPCapture:
;** --------------------------------------------------------------------------*
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$50, DW_AT_type(*DW$T$37)
	.dwattr DW$50, DW_AT_location[DW_OP_reg4]
;* 1164	-----------------------    chan = (struct $$fake3 *)(chanp+416);
;* 1166	-----------------------    C$4 = (*(struct $$fake3 *)chanp).base;
;* 1166	-----------------------    cbase = (volatile int *)(C$4+4);
;* 1167	-----------------------    base = (volatile int *)((portObjs[(*(struct $$fake3 *)chanp).portNum]).base+200);
;* 1170	-----------------------    *((volatile int *)C$4+4) &= 0x40000000;
;* 1173	-----------------------    *cbase &= 0xffff7fff;
;* 1177	-----------------------    *base &= 0xfffffffe;
;* 1178	-----------------------    base[1] |= 0xffffffff;
;** 324	-----------------------    IER;  // [9]
;** 325	-----------------------    C$3 = _IRQ_eventTable[(*(struct $$fake3 *)chanp).portNum+25u];  // [9]
;** 325	-----------------------    IER &= ~C$3;  // [9]
;** 342	-----------------------    ICR = C$3;  // [10]
;** 342	-----------------------    tccIntNum = C$2 = *((int (* const)[3])chanp+416);  // [10]
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 356	-----------------------    if ( (unsigned)C$2 < 32u ) goto g3;  // [11]
;** 664	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u&~(1u<<(unsigned)C$2-32u);  // [25]
;** 664	-----------------------    goto g4;  // [25]
;**	-----------------------g3:
;** 663	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u&(1u<<tccIntNum^(K$35 = 0xffffffffu));  // [25]
;**	-----------------------g4:
;** 360	-----------------------    CSR = CSR&(K$43 = 0xfffffffeu)|gie&1u;  // [12]
;** 360	-----------------------    tccIntNum = C$1 = *(int *)chan;  // [12]
;** 675	-----------------------    if ( (unsigned)C$1 >= (K$46 = 32u) ) goto g6;  // [26]
;** 675	-----------------------    *(volatile unsigned *)0x1a0ffe4u = 1u<<(unsigned)C$1;  // [26]
;** 675	-----------------------    return 0;  // [26]
;**	-----------------------g6:
;** 676	-----------------------    *(volatile unsigned *)0x1a0ffa4u = 1u<<tccIntNum-32u;  // [26]
;** 676	-----------------------    return 0;  // [26]
           LDW     .D1T1   *+A4(4),A5        ; |1167| 
           LDW     .D1T1   *+A4(12),A3       ; |1166| 
           MVK     .S1     1072,A6           ; |1167| 
           MVKL    .S2     _portObjs+4,B5    ; |1167| 
           ZERO    .L2     B4                ; |1170| 
           MVKH    .S2     0x40000000,B4     ; |1170| 

           LDW     .D1T1   *+A3(4),A5        ; |1170| 
||         MPYLI   .M1     A6,A5,A7:A6       ; |1167| 

           NOP             2
           MVKH    .S2     _portObjs+4,B5    ; |1167| 
           MVK     .L2     -1,B6             ; |1178| 

           ADD     .L2X    B5,A6,B4          ; |1167| 
||         AND     .L1X    B4,A5,A5          ; |1170| 

           ADD     .L1     4,A3,A3           ; |1166| 
||         STW     .D1T1   A5,*+A3(4)        ; |1170| 
||         LDW     .D2T2   *B4,B4            ; |1167| 

           LDW     .D1T1   *A3,A5            ; |1173| 
           NOP             4
           CLR     .S1     A5,15,15,A5       ; |1173| 

           STW     .D1T1   A5,*A3            ; |1173| 
||         ADDAD   .D2     B4,25,B4          ; |1167| 

           LDW     .D2T2   *B4,B5            ; |1177| 
           NOP             4
           AND     .L2     -2,B5,B5          ; |1177| 

           MVK     .S2     416,B5            ; |1164| 
||         STW     .D2T2   B5,*B4            ; |1177| 

           MVC     .S2     IER,B4            ; |324| 
||         ADD     .L2X    B5,A4,B6          ; |1164| 
||         STW     .D2T2   B6,*+B4(4)        ; |1178| 

           LDW     .D1T1   *+A4(4),A3        ; |325| 
           NOP             2
           MVKL    .S1     __IRQ_eventTable,A5 ; |325| 
           MVKH    .S1     __IRQ_eventTable,A5 ; |325| 
           SHL     .S1     A3,2,A3           ; |325| 
           ADDK    .S1     100,A3            ; |325| 
           ADD     .L1     A5,A3,A3          ; |325| 
           LDW     .D1T1   *A3,A3            ; |325| 
           NOP             3
           MVC     .S2     IER,B4            ; |325| 
           ANDN    .L2X    B4,A3,B4          ; |325| 
           MVC     .S2     B4,IER            ; |325| 
           MVC     .S2X    A3,ICR            ; |342| 
           MVK     .S1     104,A3            ; |342| 
           LDW     .D1T1   *+A4[A3],A3       ; |342| 
           NOP             4

           MVC     .S2     CSR,B4            ; |354| 
||         MV      .L2X    A3,B5             ; |342| 

           MVC     .S2     CSR,B7            ; |355| 
||         AND     .L2     1,B4,B4           ; |354| 

           AND     .L2     -2,B7,B7          ; |355| 
           MVC     .S2     B7,CSR            ; |355| 

           MVK     .S1     32,A4             ; |356| 
||         MVKL    .S2     0x1a0ffe8,B7      ; |663| 

           CMPLTU  .L1     A3,A4,A0          ; |356| 
||         MVKH    .S2     0x1a0ffe8,B7      ; |663| 

           MVKL    .S2     0x1a0ffa8,B7      ; |664| 
|| [ A0]   LDW     .D2T2   *B7,B9            ; |663| 

           MVKH    .S2     0x1a0ffa8,B7      ; |664| 

   [!A0]   LDW     .D2T2   *B7,B7            ; |664| 
||         MVKL    .S1     0x1a0ffe8,A5      ; |663| 

           MVK     .L1     0xffffffff,A7     ; |663| 
||         MVK     .S1     32,A6             ; |664| 
||         MVK     .L2     1,B8              ; |663| 

           MVKH    .S1     0x1a0ffe8,A5      ; |663| 
||         MVK     .L1     1,A6              ; |664| 
||         SUB     .D1     A3,A6,A3          ; |664| 
||         SHL     .S2     B8,B5,B5          ; |663| 

           SHL     .S1     A6,A3,A3          ; |664| 
||         XOR     .L2X    A7,B5,B5          ; |663| 

   [ A0]   AND     .L2     B5,B9,B5          ; |663| 
||         MVKL    .S1     0x1a0ffa8,A4      ; |664| 

   [!A0]   ANDN    .L2X    B7,A3,B5          ; |664| 
|| [ A0]   STW     .D1T2   B5,*A5            ; |663| 
||         MVKH    .S1     0x1a0ffa8,A4      ; |664| 

           MVC     .S2     CSR,B5            ; |360| 
|| [!A0]   STW     .D1T2   B5,*A4            ; |664| 
||         MVK     .L2     0xfffffffe,B7     ; |360| 

           AND     .L2     B7,B5,B4          ; |360| 
||         AND     .S2     1,B4,B5           ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *B6,B4            ; |360| 
           MVKL    .S2     0x1a0ffe4,B6      ; |675| 
           MVKL    .S2     0x1a0ffa4,B5      ; |676| 
           MVK     .L2     1,B7              ; |675| 
           RET     .S2     B3                ; |1190| 

           SHL     .S2     B7,B4,B7          ; |675| 
||         MVK     .S1     32,A3             ; |676| 

           MVKH    .S2     0x1a0ffe4,B6      ; |675| 
||         MVK     .S1     0x20,A4           ; |675| 

           MVKH    .S2     0x1a0ffa4,B5      ; |676| 
||         MVK     .D2     1,B4              ; |676| 
||         CMPLTU  .L1X    B4,A4,A0          ; |675| 
||         SUB     .L2X    B4,A3,B8          ; |676| 

   [ A0]   STW     .D2T2   B7,*B6            ; |675| 
||         SHL     .S2     B4,B8,B4          ; |676| 

	.dwpsn	"vportcap_RAW.c",1190,1

   [!A0]   STW     .D2T2   B4,*B5            ; |676| 
||         ZERO    .L1     A4                ; |675| 

           ; BRANCH OCCURS {B3}              ; |1190| 
	.dwattr DW$49, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$49, DW_AT_end_line(0x4a6)
	.dwattr DW$49, DW_AT_end_column(0x01)
	.dwendtag DW$49

	.sect	".text"

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("_setVIntCb"), DW_AT_symbol_name("__setVIntCb")
	.dwattr DW$51, DW_AT_low_pc(__setVIntCb)
	.dwattr DW$51, DW_AT_high_pc(0x00)
	.dwattr DW$51, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$51, DW_AT_begin_line(0x438)
	.dwattr DW$51, DW_AT_begin_column(0x0c)
	.dwattr DW$51, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$51, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",1081,1

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
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                  *
;******************************************************************************
__setVIntCb:
;** --------------------------------------------------------------------------*
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$52, DW_AT_type(*DW$T$37)
	.dwattr DW$52, DW_AT_location[DW_OP_reg4]
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$53, DW_AT_type(*DW$T$37)
	.dwattr DW$53, DW_AT_location[DW_OP_reg20]
;* 1082	-----------------------    chan = (struct $$fake3 *)chanp;
;* 1084	-----------------------    base = (volatile int *)((portObjs[(*chan).portNum]).base+200);
;* 1085	-----------------------    cBase = (volatile int *)((*chan).base+24);
;* 1086	-----------------------    vIntCbParams = (struct _VPORT_VIntCbParams *)args;
;* 1092	-----------------------    if ( mask = (*vIntCbParams).vIntMask&0x10 ) goto g3;
;* 1088	-----------------------    vInt1 = vif1 = 0u;
;**  	-----------------------    goto g4;
;**	-----------------------g3:
;* 1094	-----------------------    vInt1 = (*(struct _VPORT_VIntCbParams *)args).vIntLine;
;* 1093	-----------------------    vif1 = 1u;
;**	-----------------------g4:
;* 1096	-----------------------    if ( mask &= 0x20u ) goto g6;
;* 1088	-----------------------    vInt2 = vif2 = 0u;
;**  	-----------------------    goto g7;
;**	-----------------------g6:
;* 1098	-----------------------    vInt2 = (*vIntCbParams).vIntLine;
;* 1097	-----------------------    vif2 = 1u;
;**	-----------------------g7:
;* 1102	-----------------------    *cBase = (int)(vif2<<31)|(int)_extu((~vif1&vif2)<<30, 1u, 1u)|(int)_extu(vInt2<<16, 4u, 4u)|(int)(vif1<<15)&0x8000|(int)_extu(vInt1, 20u, 20u);
;* 1105	-----------------------    if ( (*chan).chanNum != 1u ) goto g9;
;* 1106	-----------------------    mask = 0u;
;**	-----------------------g9:
;* 1108	-----------------------    (*chan).vIntMask = mask;
;* 1109	-----------------------    if ( !mask ) goto g11;

           MV      .L1X    SP,A31            ; |1081| 
||         STW     .D2T1   A11,*SP--(24)     ; |1081| 
||         MVK     .S1     16,A3             ; |1092| 
||         MVK     .S2     1072,B7           ; |1084| 

           STDW    .D2T2   B11:B10,*+SP(16)
||         MV      .L2     B4,B11            ; |1081| 
||         MV      .S2X    A4,B10            ; |1081| 
||         MV      .L1X    B4,A5             ; |1081| 
||         ZERO    .S1     A4                ; |1088| 
||         STW     .D1T1   A10,*-A31(16)

           LDHU    .D2T2   *+B11(8),B5       ; |1092| 
||         MVK     .S2     32,B4             ; |1096| 

           LDW     .D2T2   *+B10(4),B6       ; |1084| 
           LDW     .D2T1   *+B10(12),A7      ; |1085| 
           STW     .D2T2   B13,*+SP(12)
           MV      .L2     B3,B13

           AND     .L1X    A3,B5,A3          ; |1092| 
||         ZERO    .L2     B5                ; |1088| 

           EXTU    .S1     A3,16,16,A0       ; |1092| 
||         ZERO    .L1     A3                ; |1088| 
||         MPYLI   .M2     B7,B6,B7:B6       ; |1084| 

           AND     .L1X    B4,A0,A6          ; |1096| 
|| [ A0]   MVK     .S1     0x1,A3            ; |1093| 
|| [ A0]   LDHU    .D1T1   *+A5(10),A4       ; |1094| 
||         ZERO    .L2     B4                ; |1088| 

           EXTU    .S1     A6,16,16,A0       ; |1096| 

   [ A0]   LDHU    .D2T2   *+B11(10),B5      ; |1098| 
|| [ A0]   MVK     .L2     0x1,B4            ; |1097| 
||         MVKL    .S1     0x8000,A6         ; |1102| 
||         MV      .L1     A0,A10            ; |1096| 

           ANDN    .L2X    B4,A3,B7          ; |1102| 
||         SHL     .S1     A3,15,A3          ; |1102| 
||         SHL     .S2     B4,31,B4          ; |1102| 

           EXTU    .S2     B7,31,1,B7        ; |1102| 
||         MVKH    .S1     0x8000,A6         ; |1102| 

           OR      .L2     B7,B4,B4          ; |1102| 
||         AND     .L1     A6,A3,A3          ; |1102| 
||         EXTU    .S1     A4,20,20,A6       ; |1102| 

           MVKL    .S1     _portObjs+4,A5    ; |1084| 

           EXTU    .S2     B5,20,4,B5        ; |1102| 
||         MVKH    .S1     _portObjs+4,A5    ; |1084| 

           OR      .L2     B5,B4,B4          ; |1102| 
||         ADD     .L1X    A5,B6,A4          ; |1084| 

           OR      .L2X    A3,B4,B4          ; |1102| 
||         ADD     .D1     A7,24,A3          ; |1085| 

           OR      .L2X    A6,B4,B4          ; |1102| 
||         LDW     .D1T1   *A4,A4            ; |1084| 

           STW     .D1T2   B4,*A3            ; |1102| 
           LDW     .D2T2   *+B10(8),B4       ; |1105| 
           NOP             3
           ADDAD   .D1     A4,25,A11         ; |1084| 
           CMPEQ   .L2     B4,1,B0           ; |1105| 
   [ B0]   ZERO    .L1     A10               ; |1106| 
           MV      .L1     A10,A0            ; |1106| 

   [ A0]   MVKL    .S1     _IRQ_map,A3       ; |1111| 
|| [!A0]   B       .S2     L8                ; |1109| 
|| [ A0]   LDW     .D2T2   *+B10(4),B4       ; |1111| 

           STW     .D2T1   A0,*+B10(40)      ; |1108| 
|| [ A0]   MVKH    .S1     _IRQ_map,A3       ; |1111| 

   [!A0]   LDW     .D1T1   *A11,A3           ; |1116| 
           NOP             2

   [ A0]   CALL    .S2X    A3                ; |1111| 
||         ADD     .D2     B4,25,B5          ; |1111| 

           ; BRANCHCC OCCURS {L8}            ; |1109| 
;** --------------------------------------------------------------------------*
;* 1110	-----------------------    mask |= 1u;
;* 1111	-----------------------    IRQ_map((*chan).portNum+25u, (unsigned)(*vIntCbParams).irqId);
;* 1112	-----------------------    HWI_dispatchPlug((*vIntCbParams).irqId, (int (*)())&captureISR, (-1), NULL);
;** 324	-----------------------    IER;  // [9]
;** 325	-----------------------    C$1 = _IRQ_eventTable[(*chan).portNum+25u];  // [9]
;** 325	-----------------------    IER &= C$1^(K$44 = 0xffffffffu);  // [9]
;** 342	-----------------------    ICR = C$1;  // [10]
           LDW     .D2T2   *+B11(12),B4      ; |1111| 
           MV      .L1X    B5,A4             ; |1111| 
           ADDKPC  .S2     RL4,B3,2          ; |1111| 
RL4:       ; CALL OCCURS {_IRQ_map}          ; |1111| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _HWI_dispatchPlug ; |1112| 
           LDW     .D2T1   *+B11(12),A4      ; |1112| 
           MVKL    .S2     _captureISR,B4    ; |1112| 
           MVKH    .S2     _captureISR,B4    ; |1112| 
           ADDKPC  .S2     RL5,B3,0          ; |1112| 

           ZERO    .L2     B6                ; |1112| 
||         MVK     .L1     0xffffffff,A6     ; |1112| 

RL5:       ; CALL OCCURS {_HWI_dispatchPlug}  ; |1112| 
;** --------------------------------------------------------------------------*
           OR      .L1     1,A10,A3          ; |1110| 

           MVC     .S2     IER,B4            ; |324| 
||         EXTU    .S1     A3,16,16,A10      ; |1110| 

           LDW     .D2T2   *+B10(4),B4       ; |325| 
           NOP             2
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
           LDW     .D1T1   *A11,A3           ; |1116| 
           NOP             3
;** --------------------------------------------------------------------------*
L8:    
;**	-----------------------g11:
;* 1116	-----------------------    *base |= mask;
;* 1117	-----------------------    (*chan).vIntFxn = (*vIntCbParams).vIntCbFxn;
;* 1118	-----------------------    (*chan).vIntCbArg = (*vIntCbParams).cbArg;
;* 1119	-----------------------    return 0;

           MVK     .S2     110,B5            ; |1117| 
||         MV      .L2     B13,B3            ; |1120| 
||         MV      .L1X    SP,A31            ; |1120| 
||         ZERO    .S1     A4                ; |1119| 

           OR      .L1     A10,A3,A3         ; |1116| 
           STW     .D1T1   A3,*A11           ; |1116| 
           LDW     .D2T2   *+B11(4),B4       ; |1117| 
           NOP             4

           MVK     .S2     130,B5            ; |1118| 
||         STW     .D2T2   B4,*+B10[B5]      ; |1117| 

           LDW     .D2T2   *B11,B4           ; |1118| 
           NOP             4
           STW     .D2T2   B4,*+B10[B5]      ; |1118| 

           LDW     .D1T1   *+A31(8),A10      ; |1120| 
||         LDDW    .D2T2   *+SP(16),B11:B10  ; |1120| 

           LDW     .D2T2   *+SP(12),B13      ; |1120| 
||         RET     .S2     B3                ; |1120| 

           LDW     .D2T1   *++SP(24),A11     ; |1120| 
	.dwpsn	"vportcap_RAW.c",1120,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1120| 
	.dwattr DW$51, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$51, DW_AT_end_line(0x460)
	.dwattr DW$51, DW_AT_end_column(0x01)
	.dwendtag DW$51

	.sect	".text"

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("_covrRecover"), DW_AT_symbol_name("__covrRecover")
	.dwattr DW$54, DW_AT_low_pc(__covrRecover)
	.dwattr DW$54, DW_AT_high_pc(0x00)
	.dwattr DW$54, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$54, DW_AT_begin_line(0x3ec)
	.dwattr DW$54, DW_AT_begin_column(0x0c)
	.dwattr DW$54, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$54, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",1005,1

;******************************************************************************
;* FUNCTION NAME: __covrRecover                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,SP,  *
;*                           A16,A17,A18,A30,A31,B16,B17,B18,B19,B20,B30,B31  *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,  *
;*                           SP,A16,A17,A18,A30,A31,B16,B17,B18,B19,B20,B30,  *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
__covrRecover:
;** --------------------------------------------------------------------------*
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$55, DW_AT_type(*DW$T$37)
	.dwattr DW$55, DW_AT_location[DW_OP_reg4]
;* 1006	-----------------------    chan = (struct $$fake3 *)chanp;
;* 1006	-----------------------    Q$3 = 96;
;* 1006	-----------------------    Q$2 = 97;
;* 1006	-----------------------    Q$1 = 104;
;* 1008	-----------------------    C$7 = (portObjs[(*chan).portNum]).base;
;* 1008	-----------------------    base = (volatile int *)(C$7+200);
;* 1009	-----------------------    cbase = (volatile int *)((*chan).base+4);
;* 1015	-----------------------    C$6 = (volatile int *)C$7+200;
;* 1015	-----------------------    *C$6 = *C$6&~(2<<((*chan).chanNum<<4));
;* 1017	-----------------------    *cbase = *cbase|0x40000000;
;* 1020	-----------------------    tccIntNum = C$5 = *((int (* const)[3])chanp+416);
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 356	-----------------------    if ( (unsigned)C$5 < 32u ) goto g3;  // [11]
;** 664	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u&~(1u<<(unsigned)C$5-32u);  // [25]
;** 664	-----------------------    K$46 = 0xffffffffu;  // [25]
;** 664	-----------------------    goto g4;  // [25]
;**	-----------------------g3:
;** 663	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u&~(1u<<tccIntNum);  // [25]
;** 663	-----------------------    K$46 = 0xffffffffu;  // [25]
;**	-----------------------g4:
;** 360	-----------------------    CSR = CSR&(K$35 = 0xfffffffeu)|gie&1u;  // [12]
;** 360	-----------------------    ((*chan).mode == 2) ? (numEdmaChans = 1) : (numEdmaChans = 3);  // [12]
;* 1026	-----------------------    i = 0;
;** 356	-----------------------    K$38 = 32;  // [11]
;* 1026	-----------------------    if ( i >= numEdmaChans ) goto g13;
;**  	-----------------------    K$75 = (-32);
;**  	-----------------------    U$61 = (unsigned (*)[3])chan+380;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D1T1   *+A4(4),A3        ; |1008| 
           MVK     .S1     1072,A5           ; |1008| 
           MVKL    .S2     _portObjs+4,B4    ; |1008| 
           MVKH    .S2     _portObjs+4,B4    ; |1008| 
           MVK     .S1     0x60,A9           ; |1006| 
           MPYLI   .M1     A5,A3,A7:A6       ; |1008| 
           NOP             2
           LDW     .D1T1   *+A4(8),A3        ; |1015| 
           MVK     .S1     0x61,A16          ; |1006| 
           ADD     .L2X    B4,A6,B4          ; |1008| 
           LDW     .D2T2   *B4,B5            ; |1008| 
           NOP             3
           MVK     .L1     2,A6              ; |1015| 
           ADDAD   .D2     B5,25,B4          ; |1015| 
           LDW     .D2T2   *B4,B6            ; |1015| 
           LDW     .D1T1   *+A4(12),A5       ; |1009| 
           SHL     .S1     A3,4,A3           ; |1015| 
           SHL     .S1     A6,A3,A3          ; |1015| 
           NOP             1
           ANDN    .L2X    B6,A3,B6          ; |1015| 

           STW     .D2T2   B6,*B4            ; |1015| 
||         ADD     .L2X    4,A5,B9           ; |1009| 

           LDW     .D2T2   *B9,B6            ; |1017| 
           NOP             3
           MV      .L2X    A4,B4             ; |1005| 
           SET     .S2     B6,30,30,B6       ; |1017| 

           MVK     .S2     104,B6            ; |1020| 
||         STW     .D2T2   B6,*B9            ; |1017| 

           LDW     .D2T2   *+B4[B6],B4       ; |1020| 
           NOP             3

           MVC     .S2     CSR,B5            ; |354| 
||         ADDAD   .D2     B5,25,B8          ; |1008| 
||         MVK     .S1     0x68,A17          ; |1006| 
||         SUB     .L2     SP,8,SP           ; |1005| 

           NOP             1

           MVC     .S2     CSR,B5            ; |355| 
||         AND     .L1X    1,B5,A3           ; |354| 

           AND     .L2     -2,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 
           MVK     .S1     32,A5             ; |356| 

           MVKL    .S1     0x1a0ffe8,A5      ; |663| 
||         CMPLTU  .L1X    B4,A5,A0          ; |356| 

           MVKH    .S1     0x1a0ffe8,A5      ; |663| 
||         MVKL    .S2     0x1a0ffa8,B5      ; |664| 

   [ A0]   LDW     .D1T1   *A5,A7            ; |663| 
||         MVKH    .S2     0x1a0ffa8,B5      ; |664| 

   [!A0]   LDW     .D2T1   *B5,A7            ; |664| 

           MVK     .S2     32,B5             ; |664| 
||         MVKL    .S1     0x1a0ffa8,A6      ; |664| 
||         MVK     .L2     1,B6              ; |664| 

           SHL     .S2     B6,B4,B4          ; |663| 
||         SUB     .L2     B4,B5,B5          ; |664| 
||         MVKH    .S1     0x1a0ffa8,A6      ; |664| 

           SHL     .S2     B6,B5,B5          ; |664| 
||         MVKL    .S1     0x1a0ffe8,A5      ; |663| 

   [ A0]   ANDN    .L1X    A7,B4,A6          ; |663| 
||         MVKH    .S1     0x1a0ffe8,A5      ; |663| 

   [ A0]   STW     .D1T1   A6,*A5            ; |663| 
|| [!A0]   ANDN    .L1X    A7,B5,A7          ; |664| 

           MVC     .S2     CSR,B4            ; |360| 
|| [!A0]   STW     .D1T1   A7,*A6            ; |664| 
||         MVK     .L2     0xffffffff,B19    ; |664| 
||         MVK     .D2     0xfffffffe,B16    ; |360| 

           AND     .L1     1,A3,A3           ; |360| 
           AND     .L2     B16,B4,B4         ; |360| 
           OR      .L2X    A3,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           MVK     .S1     126,A3            ; |360| 

           LDW     .D1T1   *+A4[A3],A3       ; |360| 
||         ZERO    .L2     B4                ; |1026| 

           STW     .D2T2   B4,*+SP(4)        ; |1026| 
           LDW     .D2T2   *+SP(4),B4        ; |1026| 
           MVK     .S1     0x1,A7            ; |360| 
           MVK     .S2     380,B5
           CMPEQ   .L1     A3,2,A0           ; |360| 
   [!A0]   MVK     .L1     0x3,A7            ; |360| 
           CMPLT   .L1X    B4,A7,A0          ; |1026| 
   [!A0]   BNOP    .S1     L10,3             ; |1026| 
           ADD     .L2X    B5,A4,B18

           MVK     .S1     0xffffffe0,A5
||         MVK     .S2     0x20,B17          ; |356| 

           ; BRANCHCC OCCURS {L10}           ; |1026| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
L9:    
DW$L$__covrRecover$2$B:
	.dwpsn	"vportcap_RAW.c",1026,0
;**	-----------------------g6:
;* 1027	-----------------------    hEdma = U$61[i];
;** 559	-----------------------    chaNum = C$4 = _extu(hEdma, 8u, 24u);  // [22]
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$1 = CSR&K$35;  // [11]
;** 355	-----------------------    CSR = a$1;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 356	-----------------------    if ( (int)C$4 < K$38 ) goto g8;  // [11]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$4+K$75^K$46);  // [22]
;**  	-----------------------    goto g9;
;**	-----------------------g8:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<chaNum^K$46);  // [22]
;**	-----------------------g9:
;** 360	-----------------------    a$2 = CSR&K$35|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$2;  // [12]
;** 360	-----------------------    hEdma = U$61[i];  // [12]
;** 615	-----------------------    chaNum = C$3 = _extu(hEdma, 8u, 24u);  // [23]
;** 618	-----------------------    if ( (int)C$3 < K$38 ) goto g11;  // [23]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$3+K$75;  // [23]
;**  	-----------------------    goto g12;
;**	-----------------------g11:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [23]
;**	-----------------------g12:
;* 1026	-----------------------    i = i+1;
;* 1026	-----------------------    if ( i < numEdmaChans ) goto g6;
           LDW     .D2T2   *+SP(4),B4        ; |1027| 
           NOP             4
           LDW     .D2T2   *+B18[B4],B4      ; |1027| 
           NOP             4
           EXTU    .S2     B4,8,24,B4        ; |559| 
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B6           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B16,B5,B5         ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           CMPLT   .L2     B4,B17,B0         ; |356| 
||         MVK     .L1     1,A6              ; |566| 
||         MV      .S2     B6,B31            ; |356| 

   [!B0]   MVKL    .S2     0x1a0ffb4,B5      ; |566| 
|| [ B0]   MVKL    .S1     0x1a0fff4,A3      ; |565| 

   [!B0]   MVKH    .S2     0x1a0ffb4,B5      ; |566| 
|| [ B0]   MVKH    .S1     0x1a0fff4,A3      ; |565| 

   [!B0]   LDW     .D2T2   *B5,B7            ; |566| 
|| [ B0]   LDW     .D1T1   *A3,A8            ; |565| 
||         ADD     .L1X    A5,B4,A3          ; |566| 
||         MVK     .L2     1,B5              ; |565| 

   [ B0]   SHL     .S2     B5,B4,B4          ; |565| 
|| [!B0]   SHL     .S1     A6,A3,A3          ; |566| 

   [ B0]   XOR     .L2     B19,B4,B7         ; |565| 
|| [ B0]   MVKL    .S2     0x1a0fff4,B5      ; |565| 

   [!B0]   XOR     .L2X    B19,A3,B5         ; |566| 
|| [!B0]   MVKL    .S1     0x1a0ffb4,A3      ; |566| 
|| [ B0]   MVKH    .S2     0x1a0fff4,B5      ; |565| 

   [!B0]   MVKH    .S1     0x1a0ffb4,A3      ; |566| 

   [!B0]   AND     .L2     B5,B7,B5          ; |566| 
|| [ B0]   AND     .L1X    B7,A8,A3          ; |565| 

   [!B0]   STW     .D1T2   B5,*A3            ; |566| 
|| [ B0]   STW     .D2T1   A3,*B5            ; |565| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     B16,B5,B4         ; |360| 
||         AND     .S2     1,B31,B5          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D2T2   *+SP(4),B4        ; |360| 
||         MVK     .L1     1,A18             ; |619| 

           NOP             4
           LDW     .D2T1   *+B18[B4],A3      ; |360| 
           NOP             4
           EXTU    .S1     A3,8,24,A3        ; |615| 
           ADD     .L1     A5,A3,A8          ; |619| 
           CMPLT   .L2X    A3,B17,B0         ; |618| 

   [ B0]   MVKL    .S1     0x1a0fff8,A6      ; |618| 
|| [!B0]   MVKL    .S2     0x1a0ffb8,B4      ; |619| 

           MVK     .L1     1,A8              ; |618| 
|| [!B0]   SHL     .S1     A18,A8,A3         ; |619| 
|| [!B0]   MVKH    .S2     0x1a0ffb8,B4      ; |619| 

   [ B0]   MVKH    .S1     0x1a0fff8,A6      ; |618| 
|| [!B0]   STW     .D2T1   A3,*B4            ; |619| 

   [ B0]   SHL     .S1     A8,A3,A3          ; |618| 
   [ B0]   STW     .D1T1   A3,*A6            ; |618| 
           LDW     .D2T2   *+SP(4),B4        ; |1026| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |1026| 
           STW     .D2T2   B4,*+SP(4)        ; |1026| 
           LDW     .D2T2   *+SP(4),B4        ; |1026| 
           NOP             4
           CMPLT   .L1X    B4,A7,A0          ; |1026| 
	.dwpsn	"vportcap_RAW.c",1029,0
   [ A0]   BNOP    .S1     L9,5              ; |1026| 
           ; BRANCHCC OCCURS {L9}            ; |1026| 
DW$L$__covrRecover$2$E:
;** --------------------------------------------------------------------------*
L10:    
;**	-----------------------g13:
;* 1031	-----------------------    U$61 = (unsigned (*)[3])chan+380;
;* 1031	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*U$61+0x1a0000cu) = (unsigned)(*(*chan).curViop).frame.iFrm.y1;
;* 1035	-----------------------    if ( (*chan).mode&2 ) goto g15;

           MVK     .S1     123,A3            ; |1031| 
||         MVK     .S2     380,B4            ; |1031| 

           LDW     .D1T1   *+A4[A3],A3       ; |1031| 
||         ADD     .L2X    B4,A4,B18         ; |1031| 
||         MVKL    .S1     0x1a0000c,A31     ; |1031| 
||         MVK     .S2     123,B7            ; |1038| 

           LDHU    .D2T2   *B18,B4           ; |1031| 
||         MVKH    .S1     0x1a0000c,A31     ; |1031| 
||         MVKL    .S2     0x1a0000c,B5      ; |1037| 

           MVK     .S1     126,A30           ; |1035| 
           MVKH    .S2     0x1a0000c,B5      ; |1037| 
           MVK     .S1     123,A6            ; |1037| 
           LDW     .D1T1   *+A3(8),A5        ; |1031| 
           NOP             1
           ADD     .L1X    A31,B4,A3         ; |1031| 
           MVKL    .S2     0x1a0000c,B4      ; |1038| 
           MVKH    .S2     0x1a0000c,B4      ; |1038| 
           STW     .D1T1   A5,*A3            ; |1031| 
           LDW     .D1T1   *+A4[A30],A5      ; |1035| 
           NOP             3
           ADDAW   .D1     A4,A9,A3          ; |1037| 

           ADDAW   .D1     A4,A16,A5         ; |1038| 
||         AND     .L1     2,A5,A0           ; |1035| 

   [ A0]   MVK     .S1     119,A3            ; |1041| 
|| [ A0]   B       .S2     L11               ; |1035| 
|| [!A0]   LDW     .D1T2   *+A4[A6],B6       ; |1037| 

   [!A0]   LDHU    .D1T1   *A3,A6            ; |1037| 
|| [ A0]   MVK     .S1     121,A5            ; |1041| 
|| [ A0]   LDHU    .D2T2   *B18,B6           ; |1041| 

   [ A0]   LDW     .D1T1   *+A4[A3],A3       ; |1041| 
   [ A0]   LDW     .D1T2   *+A4[A5],B5       ; |1041| 
           NOP             1
   [!A0]   LDW     .D2T2   *+B6(12),B6       ; |1037| 
           ; BRANCHCC OCCURS {L11}           ; |1035| 
;** --------------------------------------------------------------------------*
;* 1037	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$3*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).curViop).frame.iFrm.cb1;
;* 1038	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$2*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).curViop).frame.iFrm.cr1;

           ADD     .L2X    B5,A6,B5          ; |1037| 
||         MV      .L1X    B7,A3

           NOP             3
           STW     .D2T2   B6,*B5            ; |1037| 
           LDW     .D1T1   *+A4[A3],A6       ; |1038| 
           LDHU    .D1T1   *A5,A3            ; |1038| 
           NOP             3
           LDW     .D1T1   *+A6(16),A5       ; |1038| 
           NOP             3
           ADD     .L1X    B4,A3,A3          ; |1038| 

           MVK     .S1     119,A3            ; |1041| 
||         STW     .D1T1   A5,*A3            ; |1038| 

           LDHU    .D2T2   *B18,B6           ; |1041| 
||         MVK     .S1     121,A5            ; |1041| 
||         LDW     .D1T1   *+A4[A3],A3       ; |1041| 

           LDW     .D1T2   *+A4[A5],B5       ; |1041| 
           NOP             2
;** --------------------------------------------------------------------------*
L11:    
;**	-----------------------g15:
;* 1041	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*U$61+0x1a00008u) = (((*chan).numEvents<<15)-32768u|_extu((*chan).yThrld, 17u, 17u))*2u;
;* 1046	-----------------------    if ( (*chan).mode&2 ) goto g17;

           MVK     .S1     8192,A31          ; |1041| 
||         MVKL    .S2     0x1a00008,B4      ; |1041| 
||         ADDAW   .D1     A4,A9,A6          ; |1048| 

           SHL     .S1     A3,15,A3          ; |1041| 
||         MVKH    .S2     0x1a00008,B4      ; |1041| 

           SUBAW   .D1     A3,A31,A3         ; |1041| 
||         EXTU    .S2     B5,17,17,B5       ; |1041| 
||         MVK     .S1     126,A30           ; |1046| 

           MVKL    .S1     0x1a00008,A5      ; |1048| 
||         MVK     .S2     122,B7            ; |1048| 

           OR      .L2X    B5,A3,B5          ; |1041| 
||         MVKH    .S1     0x1a00008,A5      ; |1048| 
||         MVK     .S2     8192,B20          ; |1049| 

           ADD     .L2     B5,B5,B4          ; |1041| 
||         ADD     .D2     B4,B6,B5          ; |1041| 
||         MVK     .S2     119,B6            ; |1048| 
||         MVK     .S1     119,A9            ; |1049| 

           STW     .D2T2   B4,*B5            ; |1041| 
||         MV      .L2X    A4,B4
||         MVKL    .S2     0x1a00008,B5      ; |1049| 
||         MVK     .S1     8192,A18          ; |1048| 

           LDW     .D1T1   *+A4[A30],A3      ; |1046| 
||         MVKH    .S2     0x1a00008,B5      ; |1049| 

           NOP             3
           MVK     .S2     122,B19           ; |1049| 

           ADDAW   .D1     A4,A16,A3         ; |1049| 
||         AND     .L1     2,A3,A0           ; |1046| 

   [ A0]   LDW     .D1T1   *+A4[A17],A3      ; |1053| 
|| [ A0]   B       .S1     L12               ; |1046| 
|| [!A0]   LDW     .D2T2   *+B4[B6],B6       ; |1048| 

   [!A0]   LDHU    .D1T2   *A6,B7            ; |1048| 
|| [!A0]   LDW     .D2T1   *+B4[B7],A8       ; |1048| 

           NOP             3
           SHL     .S1X    B6,15,A6          ; |1048| 
           ; BRANCHCC OCCURS {L12}           ; |1046| 
;** --------------------------------------------------------------------------*
;* 1048	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$3*4+(unsigned (*)[3])chan)+0x1a00008u) = (((*chan).numEvents<<15)-32768u|_extu((*chan).cThrld, 17u, 17u))*2u;
;* 1049	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$2*4+(unsigned (*)[3])chan)+0x1a00008u) = (((*chan).numEvents<<15)-32768u|_extu((*chan).cThrld, 17u, 17u))*2u;

           SUBAW   .D1     A6,A18,A8         ; |1048| 
||         EXTU    .S1     A8,17,17,A6       ; |1048| 

           OR      .L1     A6,A8,A6          ; |1048| 

           ADD     .L1     A6,A6,A5          ; |1048| 
||         ADD     .S1X    A5,B7,A6          ; |1048| 

           STW     .D1T1   A5,*A6            ; |1048| 

           LDW     .D1T1   *+A4[A9],A5       ; |1049| 
||         LDW     .D2T2   *+B4[B19],B4      ; |1049| 

           NOP             2
           LDHU    .D1T1   *A3,A3            ; |1049| 
           NOP             1
           SHL     .S2X    A5,15,B6          ; |1049| 

           EXTU    .S2     B4,17,17,B4       ; |1049| 
||         SUBAW   .D2     B6,B20,B6         ; |1049| 

           OR      .L2     B4,B6,B4          ; |1049| 

           ADD     .L2     B4,B4,B5          ; |1049| 
||         ADD     .S2X    B5,A3,B4          ; |1049| 

           STW     .D2T2   B5,*B4            ; |1049| 
           LDW     .D1T1   *+A4[A17],A3      ; |1053| 
;** --------------------------------------------------------------------------*
L12:    
;**	-----------------------g17:
;* 1053	-----------------------    tccIntNum = C$2 = *(Q$1*4+(int (*)[3])chan);
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    CSR = CSR&K$35;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 356	-----------------------    if ( (unsigned)C$2 < (unsigned)K$38 ) goto g19;  // [11]
;** 649	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u|1u<<(unsigned)C$2-32u;  // [24]
;** 649	-----------------------    goto g20;  // [24]
;**	-----------------------g19:
;** 648	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u|1u<<tccIntNum;  // [24]
;**	-----------------------g20:
;** 360	-----------------------    CSR = CSR&K$35|gie&1u;  // [12]
;** 360	-----------------------    i = 0;  // [12]
;* 1054	-----------------------    if ( i >= numEdmaChans ) goto g26;
;**  	-----------------------    K$75 = (-32);
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B16,B5,B5         ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x1a0ffa8,B5      ; |649| 
||         MVKL    .S1     0x1a0ffe8,A5      ; |648| 
||         CMPLTU  .L1X    A3,B17,A0         ; |356| 
||         MVK     .D1     1,A6              ; |648| 
||         MVK     .L2     1,B30             ; |649| 

           MVKH    .S1     0x1a0ffe8,A5      ; |648| 
||         MVKH    .S2     0x1a0ffa8,B5      ; |649| 

   [!A0]   LDW     .D2T2   *B5,B7            ; |649| 
|| [ A0]   LDW     .D1T1   *A5,A8            ; |648| 
||         MVK     .S2     32,B31            ; |649| 
||         MVKL    .S1     0x1a0ffa8,A31     ; |649| 

           SUB     .L2X    A3,B31,B6         ; |649| 

           SHL     .S1     A6,A3,A3          ; |648| 
||         MVKL    .S2     0x1a0ffe8,B19     ; |648| 

           SHL     .S2     B30,B6,B5         ; |649| 
||         MVKH    .S1     0x1a0ffa8,A31     ; |649| 

           MVKH    .S2     0x1a0ffe8,B19     ; |648| 

   [ A0]   OR      .L1     A3,A8,A3          ; |648| 
|| [!A0]   OR      .L2     B5,B7,B5          ; |649| 

   [!A0]   STW     .D1T2   B5,*A31           ; |649| 
|| [ A0]   STW     .D2T1   A3,*B19           ; |648| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B16,B5,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           ZERO    .L2     B4                ; |360| 
||         MVK     .S1     0xffffffe0,A3

           STW     .D2T2   B4,*+SP(4)        ; |360| 
           LDW     .D2T2   *+SP(4),B4        ; |1054| 
           NOP             4
           CMPLT   .L1X    B4,A7,A0          ; |1054| 
   [!A0]   BNOP    .S1     L14,5             ; |1054| 
           ; BRANCHCC OCCURS {L14}           ; |1054| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
L13:    
DW$L$__covrRecover$8$B:
	.dwpsn	"vportcap_RAW.c",1054,0
;**	-----------------------g22:
;* 1055	-----------------------    hEdma = U$61[i];
;** 489	-----------------------    chaNum = C$1 = _extu(hEdma, 8u, 24u);  // [21]
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$3 = CSR&K$35;  // [11]
;** 355	-----------------------    CSR = a$3;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 356	-----------------------    if ( (int)C$1 < K$38 ) goto g24;  // [11]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$1+K$75;  // [21]
;**  	-----------------------    goto g25;
;**	-----------------------g24:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [21]
;**	-----------------------g25:
;** 360	-----------------------    a$4 = CSR&K$35|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$4;  // [12]
;** 360	-----------------------    i = i+1;  // [12]
;* 1054	-----------------------    if ( i < numEdmaChans ) goto g22;
           LDW     .D2T2   *+SP(4),B4        ; |1055| 
           NOP             4
           LDW     .D2T2   *+B18[B4],B4      ; |1055| 
           NOP             4
           EXTU    .S2     B4,8,24,B4        ; |489| 
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B6           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B16,B5,B5         ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           CMPLT   .L2     B4,B17,B0         ; |356| 
||         ADD     .L1X    A3,B4,A6          ; |494| 
||         MVK     .S2     1,B19             ; |493| 
||         MVK     .S1     1,A8              ; |494| 
||         MV      .D2     B6,B31            ; |356| 

   [!B0]   MVKL    .S2     0x1a0ffb4,B5      ; |494| 
|| [ B0]   MVKL    .S1     0x1a0fff4,A5      ; |493| 

   [!B0]   MVKH    .S2     0x1a0ffb4,B5      ; |494| 
|| [ B0]   MVKH    .S1     0x1a0fff4,A5      ; |493| 

   [!B0]   LDW     .D2T2   *B5,B5            ; |494| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |493| 
|| [ B0]   SHL     .S2     B19,B4,B5         ; |493| 
|| [!B0]   SHL     .S1     A8,A6,A6          ; |494| 

   [!B0]   MVKL    .S1     0x1a0ffb4,A5      ; |494| 
   [ B0]   MVKL    .S2     0x1a0fff4,B7      ; |493| 
   [!B0]   MVKH    .S1     0x1a0ffb4,A5      ; |494| 
   [ B0]   MVKH    .S2     0x1a0fff4,B7      ; |493| 

   [ B0]   OR      .L1X    B5,A5,A5          ; |493| 
|| [!B0]   OR      .L2X    A6,B5,B5          ; |494| 

   [!B0]   STW     .D1T2   B5,*A5            ; |494| 
|| [ B0]   STW     .D2T1   A5,*B7            ; |493| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     B16,B5,B4         ; |360| 
||         AND     .S2     1,B31,B5          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *+SP(4),B4        ; |360| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |360| 
           STW     .D2T2   B4,*+SP(4)        ; |360| 
           LDW     .D2T2   *+SP(4),B4        ; |1054| 
           NOP             4
           CMPLT   .L1X    B4,A7,A0          ; |1054| 
	.dwpsn	"vportcap_RAW.c",1056,0
   [ A0]   BNOP    .S1     L13,5             ; |1054| 
           ; BRANCHCC OCCURS {L13}           ; |1054| 
DW$L$__covrRecover$8$E:
;** --------------------------------------------------------------------------*
L14:    
;**	-----------------------g26:
;* 1058	-----------------------    i = 0;
;* 1058	-----------------------    if ( i >= 100000 ) goto g29;
;* 1058	-----------------------    K$178 = 100000;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           ZERO    .L2     B4                ; |1058| 
||         MVKL    .S1     0x186a0,A3        ; |1058| 
||         MVKL    .S2     0x186a0,B6        ; |1058| 

           STW     .D2T2   B4,*+SP(4)        ; |1058| 
||         MVKH    .S1     0x186a0,A3        ; |1058| 
||         MVKH    .S2     0x186a0,B6        ; |1058| 

           LDW     .D2T2   *+SP(4),B4        ; |1058| 
           NOP             4
           CMPLT   .L2X    B4,A3,B0          ; |1058| 

   [!B0]   BNOP    .S1     L18,4             ; |1058| 
|| [ B0]   LDW     .D2T2   *+SP(4),B5        ; |1058| (P) <0,0>  ^ 

           ADD     .L2     1,B5,B7           ; |1058| (P) <0,5>  ^ 
           ; BRANCHCC OCCURS {L18}           ; |1058| 
;** --------------------------------------------------------------------------*
;**	-----------------------g28:
;* 1058	-----------------------    i = i+1;
;* 1058	-----------------------    if ( i < K$178 ) goto g28;

           STW     .D2T2   B7,*+SP(4)        ; |1058| (P) <0,6>  ^ 
||         MVK     .L1     0x1,A1

           LDW     .D2T2   *+SP(4),B4        ; |1058| (P) <0,7>  ^ 
           NOP             4
           CMPLT   .L2     B4,B6,B0          ; |1058| (P) <0,12>  ^ 
   [!B0]   ZERO    .L1     A1                ; |1058| (P) <0,13>  ^ 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 1058
;*      Loop closing brace source line   : 1058
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
L15:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L16:    ; PIPED LOOP KERNEL
DW$L$__covrRecover$12$B:
   [ A1]   LDW     .D2T2   *+SP(4),B5        ; |1058| <1,0>  ^ 
           NOP             3
           MV      .L1     A1,A0             ; |1058| <0,18> Split a long life
           ADD     .L2     1,B5,B7           ; |1058| <1,5>  ^ 
   [ A0]   STW     .D2T2   B7,*+SP(4)        ; |1058| <1,6>  ^ 
   [ A0]   LDW     .D2T2   *+SP(4),B4        ; |1058| <1,7>  ^ 
   [ A1]   BNOP    .S1     L16,3             ; |1058| <0,22> 
           CMPLT   .L2     B4,B6,B0          ; |1058| <1,12>  ^ 
   [!B0]   ZERO    .L1     A1                ; |1058| <1,13>  ^ 
DW$L$__covrRecover$12$E:
;** --------------------------------------------------------------------------*
L17:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L18:    
;**	-----------------------g29:
;* 1061	-----------------------    if ( (*chan).chanNum ) goto g31;
;* 1062	-----------------------    base[1] = base[1]|2;
;* 1063	-----------------------    goto g32;
;**	-----------------------g31:
;* 1064	-----------------------    base[1] = base[1]|0x20000;
;**	-----------------------g32:
;* 1067	-----------------------    *cbase = *cbase&0xbfffffff;
;* 1070	-----------------------    *base = *base|2<<((*chan).chanNum<<4);
;* 1072	-----------------------    return 0;
           LDW     .D1T1   *+A4(8),A0        ; |1061| 
           NOP             3
           ADD     .L2     8,SP,SP           ; |1073| 
   [!A0]   LDW     .D2T2   *+B8(4),B4        ; |1062| 
   [ A0]   LDW     .D2T2   *+B8(4),B4        ; |1064| 
           NOP             3
   [!A0]   OR      .L2     2,B4,B4           ; |1062| 

   [!A0]   STW     .D2T2   B4,*+B8(4)        ; |1062| 
|| [ A0]   SET     .S2     B4,17,17,B4       ; |1064| 

   [ A0]   STW     .D2T2   B4,*+B8(4)        ; |1064| 
           LDW     .D2T2   *B9,B4            ; |1067| 
           NOP             4
           CLR     .S2     B4,30,30,B4       ; |1067| 
           STW     .D2T2   B4,*B9            ; |1067| 
           LDW     .D1T1   *+A4(8),A3        ; |1070| 
           NOP             1
           LDW     .D2T2   *B8,B4            ; |1070| 
           MVK     .L1     2,A4              ; |1070| 
           RET     .S2     B3                ; |1073| 
           SHL     .S1     A3,4,A3           ; |1070| 
           SHL     .S1     A4,A3,A3          ; |1070| 
           ZERO    .L1     A4                ; |1072| 
           OR      .L2X    A3,B4,B4          ; |1070| 
	.dwpsn	"vportcap_RAW.c",1073,1
           STW     .D2T2   B4,*B8            ; |1070| 
           ; BRANCH OCCURS {B3}              ; |1073| 

DW$56	.dwtag  DW_TAG_loop
	.dwattr DW$56, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L16:1:1287391603")
	.dwattr DW$56, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$56, DW_AT_begin_line(0x422)
	.dwattr DW$56, DW_AT_end_line(0x422)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$__covrRecover$12$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$__covrRecover$12$E)
	.dwendtag DW$56


DW$58	.dwtag  DW_TAG_loop
	.dwattr DW$58, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L13:1:1287391603")
	.dwattr DW$58, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$58, DW_AT_begin_line(0x41e)
	.dwattr DW$58, DW_AT_end_line(0x420)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$__covrRecover$8$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$__covrRecover$8$E)
	.dwendtag DW$58


DW$60	.dwtag  DW_TAG_loop
	.dwattr DW$60, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L9:1:1287391603")
	.dwattr DW$60, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$60, DW_AT_begin_line(0x402)
	.dwattr DW$60, DW_AT_end_line(0x405)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$__covrRecover$2$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$__covrRecover$2$E)
	.dwendtag DW$60

	.dwattr DW$54, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$54, DW_AT_end_line(0x431)
	.dwattr DW$54, DW_AT_end_column(0x01)
	.dwendtag DW$54

	.sect	".text"

DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("_configCh"), DW_AT_symbol_name("__configCh")
	.dwattr DW$62, DW_AT_low_pc(__configCh)
	.dwattr DW$62, DW_AT_high_pc(0x00)
	.dwattr DW$62, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$62, DW_AT_begin_line(0x217)
	.dwattr DW$62, DW_AT_begin_column(0x0c)
	.dwattr DW$62, DW_AT_frame_base[DW_OP_breg31 64]
	.dwattr DW$62, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",539,1

;******************************************************************************
;* FUNCTION NAME: __configCh                                                  *
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
;*   Local Frame Size  : 0 Args + 20 Auto + 40 Save = 60 byte                 *
;******************************************************************************
__configCh:
;** --------------------------------------------------------------------------*
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$63, DW_AT_type(*DW$T$37)
	.dwattr DW$63, DW_AT_location[DW_OP_reg4]
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$64, DW_AT_type(*DW$T$184)
	.dwattr DW$64, DW_AT_location[DW_OP_reg20]
;** 540	-----------------------    chan = (struct $$fake3 *)chanp;
;** 542	-----------------------    base = (volatile int *)((*chan).base+4);
;** 549	-----------------------    (*chan).mode = U$9 = (*params).cmode;
;** 552	-----------------------    if ( !((*chan).status&1u) ) goto g27;

           MV      .L1X    SP,A31            ; |539| 
||         STW     .D2T2   B12,*SP--(64)     ; |539| 
||         MVKL    .S2     0x40000080,B6     ; |554| 
||         ZERO    .L2     B8                ; |554| 
||         MVK     .S1     126,A5            ; |549| 
||         ZERO    .D1     A8                ; |554| 

           STDW    .D1T1   A11:A10,*-A31(32)
||         MV      .L1     A4,A10            ; |539| 
||         STDW    .D2T2   B11:B10,*+SP(56)
||         MV      .L2     B4,B10            ; |539| 
||         ZERO    .S1     A16               ; |554| 
||         ZERO    .S2     B17               ; |554| 

           LDW     .D1T1   *A10,A3           ; |552| 
||         LDW     .D2T2   *B10,B4           ; |549| 
||         ZERO    .L1     A9                ; |554| 
||         MVKH    .S1     0x100000,A8       ; |554| 
||         MVKH    .S2     0x20000,B8        ; |554| 

           LDW     .D1T1   *+A10(12),A4      ; |542| 
||         STW     .D2T2   B13,*+SP(28)
||         MVKH    .S2     0x80000,B17       ; |554| 
||         MVKH    .S1     0x10000,A9        ; |554| 
||         MV      .L2     B3,B13

           STDW    .D1T1   A13:A12,*-A31(24)
||         MVKH    .S1     0x40000,A16       ; |554| 
||         MVKH    .S2     0x40000080,B6     ; |554| 

           STDW    .D1T1   A15:A14,*-A31(16)
||         MVK     .S2     1024,B5           ; |554| 
||         MVK     .S1     24576,A7          ; |554| 

           MVK     .S1     256,A6            ; |554| 

           AND     .L1     1,A3,A0           ; |552| 
||         AND     .L2     7,B4,B21          ; |554| 
||         STW     .D1T2   B4,*+A10[A5]      ; |549| 

   [!A0]   B       .S1     L34               ; |552| 
||         ADD     .L1     4,A4,A12          ; |542| 
|| [ A0]   LDW     .D2T2   *+B10(32),B4      ; |554| 

   [ A0]   LDW     .D2T2   *+B10(36),B7      ; |554| 
   [ A0]   LDW     .D2T2   *+B10(28),B20     ; |554| 
   [ A0]   LDW     .D2T2   *+B10(24),B18     ; |554| 
   [ A0]   LDW     .D2T2   *+B10(20),B19     ; |554| 

   [ A0]   LDW     .D2T2   *+B10(16),B16     ; |554| 
||         SHL     .S2     B4,19,B4          ; |554| 

           ; BRANCHCC OCCURS {L34}           ; |552| 
;** --------------------------------------------------------------------------*
;** 554	-----------------------    C$15 = (*params).fldOp;
;** 554	-----------------------    vcCtl = (int)((unsigned)(*params).fldInv<<20)&0x100000|(int)((unsigned)(*params).extCtl<<19)&0x80000|(int)((unsigned)(*params).fldDect<<18)&0x40000|(int)((unsigned)(*params).vCtRst<<17)&0x20000|(int)((unsigned)(*params).hCtRst<<16)&0x10000|(int)((unsigned)(*params).bpk10Bit<<13)&0x6000|(int)((unsigned)(*params).resmpl<<10)&0x400|(int)((unsigned)(*params).scale<<8)&0x100|_extu((unsigned)C$15, 29u, 31u)<<6|_extu((unsigned)C$15, 30u, 31u)<<5|_extu((unsigned)C$15, 31u, 31u)<<4|U$9&7|0x40000080;
;** 563	-----------------------    C$11 = (*params).fldXStrt1;
;** 563	-----------------------    fld1Strt = ((int)(*params).fldYStrt1<<16)+C$11;
;** 564	-----------------------    C$13 = (*params).fldXStop1;
;** 564	-----------------------    fld1Stop = ((int)(*params).fldYStop1<<16)+C$13;
;** 565	-----------------------    C$12 = (*params).fldXStrt2;
;** 565	-----------------------    fld2Strt = ((int)(*params).fldYStrt2<<16)+C$12;
;** 566	-----------------------    C$14 = (*params).fldXStop2;
;** 566	-----------------------    fld2Stop = ((int)(*params).fldYStop2<<16)+C$14;
;** 567	-----------------------    if ( C$15 != 4 ) goto g4;

           LDW     .D2T2   *+B10(12),B31     ; |554| 
||         SHL     .S2     B7,20,B9          ; |554| 
||         AND     .L2     B17,B4,B17        ; |554| 

           SHL     .S2     B20,18,B20        ; |554| 
||         LDW     .D2T2   *+B10(8),B30      ; |554| 

           SHL     .S2     B18,17,B29        ; |554| 
||         AND     .L1X    A8,B9,A4          ; |554| 
||         AND     .L2X    A16,B20,B28       ; |554| 
||         LDW     .D2T1   *+B10(4),A3       ; |554| 

           SHL     .S2     B19,16,B27        ; |554| 
||         OR      .L1X    B17,A4,A4         ; |554| 
||         AND     .L2     B8,B29,B8         ; |554| 
||         LDHU    .D2T2   *+B10(46),B25     ; |563| 

           SHL     .S2     B16,13,B16        ; |554| 
||         AND     .L2X    A9,B27,B9         ; |554| 
||         OR      .L1X    B28,A4,A4         ; |554| 
||         LDHU    .D2T2   *+B10(44),B12     ; |563| 

           SHL     .S2     B31,10,B7         ; |554| 
||         OR      .L1X    B8,A4,A4          ; |554| 
||         AND     .L2X    A7,B16,B26        ; |554| 
||         LDHU    .D2T2   *+B10(54),B24     ; |564| 

           AND     .L2     B5,B7,B4          ; |554| 
||         SHL     .S2     B30,8,B5          ; |554| 
||         OR      .L1X    B9,A4,A4          ; |554| 
||         LDHU    .D2T2   *+B10(56),B1      ; |566| 

           OR      .D1X    B26,A4,A5         ; |554| 
||         AND     .L2X    A6,B5,B5          ; |554| 
||         EXTU    .S1     A3,29,31,A31      ; |554| 
||         LDHU    .D2T2   *+B10(50),B22     ; |565| 
||         CMPEQ   .L1     A3,4,A0           ; |567| 

           OR      .L1X    B4,A5,A6          ; |554| 
||         SHL     .S1     A31,6,A4          ; |554| 
||         LDHU    .D2T2   *+B10(52),B23     ; |564| 

           OR      .L1X    B5,A6,A6          ; |554| 
||         EXTU    .S1     A3,30,31,A30      ; |554| 
||         LDHU    .D2T2   *+B10(48),B11     ; |565| 

           OR      .L1     A4,A6,A5          ; |554| 
||         SHL     .S1     A30,5,A4          ; |554| 
||         LDHU    .D2T2   *+B10(58),B2      ; |566| 
||         SHL     .S2     B24,16,B0         ; |564| 

           OR      .L1     A4,A5,A5          ; |554| 
||         EXTU    .S1     A3,31,27,A29      ; |554| 

           OR      .L1     A29,A5,A4         ; |554| 

           ADD     .S2     B23,B0,B8         ; |564| 
||         CMPEQ   .L2     B23,B1,B0         ; |568| 

           OR      .L2X    B21,A4,B17        ; |554| 
|| [!A0]   ZERO    .S2     B0                ; |568| nullify predicate
|| [ A0]   MVKL    .S1     SL3+0,A4          ; |568| 

           OR      .L2     B6,B17,B9         ; |554| 
||         SHL     .S2     B25,16,B6         ; |563| 
|| [!A0]   B       .S1     L20               ; |567| 

           STW     .D2T2   B9,*+SP(4)        ; |554| 
||         ADD     .L2     B12,B6,B9         ; |563| 
||         SHL     .S2     B22,16,B6         ; |565| 
|| [ A0]   MVKH    .S1     SL3+0,A4          ; |568| 

           STW     .D2T2   B9,*+SP(8)        ; |563| 
||         ADD     .L2     B11,B6,B7         ; |565| 
||         SHL     .S2     B2,16,B6          ; |566| 

           STW     .D2T2   B8,*+SP(16)       ; |564| 
||         ADD     .L2     B1,B6,B6          ; |566| 

   [ B0]   B       .S1     L19               ; |568| 
||         STW     .D2T2   B7,*+SP(12)       ; |565| 

           STW     .D2T2   B6,*+SP(20)       ; |566| 
           ; BRANCHCC OCCURS {L20}           ; |567| 
;** --------------------------------------------------------------------------*
;** 568	-----------------------    assert(C$13 == C$14);

   [!B0]   CALL    .S2     __abort_msg       ; |568| 
|| [ B0]   MVKL    .S1     SL4+0,A4          ; |569| 
||         MV      .L2     B0,B1             ; guard predicate rewrite

   [ B0]   MVKH    .S1     SL4+0,A4          ; |569| 
|| [ B0]   CMPEQ   .L2     B12,B11,B0        ; |569| 

   [!B1]   ZERO    .L2     B0                ; |569| nullify predicate
   [ B0]   B       .S1     L21               ; |569| 
           ; BRANCHCC OCCURS {L19}           ; |568| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL6,B3,1          ; |568| 
RL6:       ; CALL OCCURS {__abort_msg}       ; |568| 

           CMPEQ   .L2     B12,B11,B0        ; |569| 
||         MVKL    .S1     SL4+0,A4          ; |569| 

   [ B0]   B       .S2     L21               ; |569| 
||         MVKH    .S1     SL4+0,A4          ; |569| 

;** --------------------------------------------------------------------------*
L19:    
;** 569	-----------------------    assert(C$11 == C$12);

   [ B0]   LDW     .D2T1   *+SP(4),A3        ; |571| 
|| [!B0]   CALL    .S1     __abort_msg       ; |569| 

           NOP             4
           ; BRANCHCC OCCURS {L21}           ; |569| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL7,B3,0          ; |569| 
RL7:       ; CALL OCCURS {__abort_msg}       ; |569| 
;** --------------------------------------------------------------------------*
L20:    
           LDW     .D2T1   *+SP(4),A3        ; |571| 
           NOP             4
;** --------------------------------------------------------------------------*
L21:    
;**	-----------------------g4:
;** 571	-----------------------    *base = vcCtl;
;** 572	-----------------------    base[1] = fld1Strt;
;** 573	-----------------------    base[2] = fld1Stop;
;** 574	-----------------------    base[3] = fld2Strt;
;** 575	-----------------------    base[4] = fld2Stop;
;** 576	-----------------------    numPixels = (*params).fldXStop1-(*params).fldXStrt1+1;
;** 580	-----------------------    U$126 = (*chan).mode;
;** 580	-----------------------    if ( !(U$128 = U$126&2) ) goto g6;

           STW     .D1T1   A3,*A12           ; |571| 
||         MVK     .S1     126,A31           ; |580| 
||         ZERO    .L1     A3                ; |585| 
||         MVK     .S2     126,B8

           LDW     .D2T2   *+SP(8),B4        ; |572| 
||         MVKH    .S1     0x10000,A3        ; |585| 

           NOP             4
           STW     .D1T2   B4,*+A12(4)       ; |572| 
           LDW     .D2T2   *+SP(16),B4       ; |573| 
           NOP             4
           STW     .D1T2   B4,*+A12(8)       ; |573| 
           LDW     .D2T2   *+SP(12),B4       ; |574| 
           NOP             4
           STW     .D1T2   B4,*+A12(12)      ; |574| 
           LDW     .D2T2   *+SP(20),B4       ; |575| 
           NOP             4

           MVKL    .S2     0x8000,B4         ; |585| 
||         STW     .D1T2   B4,*+A12(16)      ; |575| 

           LDW     .D1T1   *+A10[A31],A5     ; |580| 
||         LDHU    .D2T2   *+B10(44),B5      ; |576| 
||         MVKH    .S2     0x8000,B4         ; |585| 

           LDHU    .D2T2   *+B10(52),B6      ; |576| 
           NOP             3
           AND     .L1     2,A5,A0           ; |580| 

           MV      .L1     A0,A11            ; |576| 
|| [ A0]   LDHU    .D2T2   *+B10(42),B6      ; |585| 
||         SUB     .L2     B6,B5,B5          ; |576| 
|| [!A0]   B       .S1     L22               ; |580| 

   [!A0]   LDW     .D2T2   *+B10(4),B5       ; |594| 
||         ADD     .L2     1,B5,B9           ; |576| 

   [ A0]   LDHU    .D2T2   *+B10(40),B5      ; |585| 
           NOP             3
           ; BRANCHCC OCCURS {L22}           ; |580| 
;** --------------------------------------------------------------------------*
;** 585	-----------------------    base[1] = (int)((unsigned)(*params).sse<<15)&0x8000|(int)_extu((unsigned)(*params).vcvblnkp, 20u, 20u)|(K$41 = 65536);
;** 590	-----------------------    C$9 = (*params).fldXStop1;
;** 590	-----------------------    C$10 = (*params).fldYStop1;
;** 590	-----------------------    base[2] = _extu((unsigned)((C$9+1)*C$10)<<4, 4u, 20u)<<16|(int)_extu((unsigned)_mpyus(C$10, C$9+1), 20u, 20u);
;**  	-----------------------    U$126 = (*chan).mode;
;**  	-----------------------    U$128 = U$126&2;

           EXTU    .S2     B6,20,20,B31      ; |585| 
||         MV      .L1X    B8,A4

           SHL     .S2     B5,15,B5          ; |585| 
           AND     .L2     B4,B5,B4          ; |585| 
           OR      .L2     B31,B4,B4         ; |585| 
           NOP             1
           OR      .L1X    A3,B4,A3          ; |585| 
           STW     .D1T1   A3,*+A12(4)       ; |585| 
           LDHU    .D2T2   *+B10(52),B5      ; |590| 
           LDHU    .D2T2   *+B10(54),B4      ; |590| 
           NOP             3

           ADD     .L2     1,B5,B6           ; |590| 
||         ADD     .L1X    1,B5,A3           ; |590| 

           MPYLHU  .M2     B4,B6,B7          ; |590| 
||         MPYUS   .M1X    B4,A3,A3          ; |590| 

           NOP             1

           EXTU    .S1     A3,20,20,A3       ; |590| 
||         SHL     .S2     B7,16,B6          ; |590| 
||         MPYU    .M2     B4,B6,B7          ; |590| 

           NOP             1
           ADD     .L2     B7,B6,B5          ; |590| 
           EXTU    .S2     B5,8,20,B4        ; |590| 
           SHL     .S2     B4,16,B4          ; |590| 
           NOP             1
           OR      .L1X    A3,B4,A3          ; |590| 
           STW     .D1T1   A3,*+A12(8)       ; |590| 

           LDW     .D2T2   *+B10(4),B5       ; |594| 
||         LDW     .D1T1   *+A10[A4],A5

           NOP             4
           AND     .L1     2,A5,A11
;** --------------------------------------------------------------------------*
L22:    
;**	-----------------------g6:
;** 594	-----------------------    (U$67 = (*params).fldOp-2) ? (numLines = (*params).fldYStop1-(*params).fldYStrt1+1) : (numLines = 0);
;** 595	-----------------------    (*chan).numLinesFld1 = U$158 = numLines;
;** 599	-----------------------    U$108 = U$67 == 2;
;** 599	-----------------------    if ( !((U$67 == 0)|U$108) ) goto g8;
;** 601	-----------------------    numLines = (*params).fldYStop2-(*params).fldYStrt2+numLines+1;
;**  	-----------------------    U$158 = numLines;
;**	-----------------------g8:
;** 603	-----------------------    (*chan).resmpl = (*params).resmpl;
;** 604	-----------------------    (*chan).scale = (*params).scale;
;** 605	-----------------------    (*chan).numLines = U$158;
;** 606	-----------------------    numPixels >>= (*params).scale;
;** 607	-----------------------    numCPixels = numPixels>>1;
;** 609	-----------------------    (*chan).numPixels = numPixels;
;** 611	-----------------------    if ( (*params).cmode&1 ) goto g15;

           SUB     .L1X    B5,2,A0           ; |594| 
||         MVK     .S1     117,A3            ; |595| 
||         CMPEQ   .L2     B5,4,B7           ; |599| 
||         MV      .D1     A11,A1            ; |668| 

   [ A0]   LDHU    .D2T2   *+B10(46),B4      ; |594| 
||         CMPEQ   .L1X    B5,2,A31          ; |599| 
||         MVK     .S1     115,A29           ; |605| 

   [ A0]   LDHU    .D2T2   *+B10(54),B6      ; |594| 
||         MVK     .S1     223,A30           ; |604| 

           NOP             3
           MVK     .S1     116,A28           ; |609| 

           ZERO    .S2     B4                ; |594| 
|| [ A0]   SUB     .L2     B6,B4,B6          ; |594| 

           OR      .L1X    B7,A31,A0         ; |599| 
||         MVK     .S2     448,B6            ; |603| 
|| [ A0]   ADD     .L2     1,B6,B4           ; |594| 

           STW     .D1T2   B4,*+A10[A3]      ; |595| 

           ADD     .L1X    B6,A10,A3         ; |603| 
||         LDHU    .D2T1   *+B10(12),A4      ; |603| 

   [ A0]   LDHU    .D2T2   *+B10(50),B5      ; |601| 
   [ A0]   LDHU    .D2T2   *+B10(58),B6      ; |601| 
           NOP             2
           STH     .D1T1   A4,*A3            ; |603| 
           LDHU    .D2T1   *+B10(8),A3       ; |604| 
   [ A0]   SUB     .L2     B6,B5,B5          ; |601| 
   [ A0]   ADD     .L2     B4,B5,B5          ; |601| 

           MVK     .S2     113,B5            ; |651| 
|| [ A0]   ADD     .L2     1,B5,B4           ; |601| 

           STW     .D1T2   B4,*+A10[A29]     ; |605| 
           STH     .D1T1   A3,*+A10[A30]     ; |604| 
           LDW     .D2T2   *+B10(8),B4       ; |606| 
           NOP             4
           SHR     .S2     B9,B4,B9          ; |606| 

           ADD     .L2     7,B9,B6           ; |651| 
||         STW     .D1T2   B9,*+A10[A28]     ; |609| 

           LDW     .D2T2   *B10,B4           ; |611| 
           NOP             4

           SHR     .S2     B9,1,B6           ; |607| 
||         AND     .D2     -8,B6,B4          ; |651| 
||         AND     .L2     1,B4,B0           ; |611| 

   [ B0]   B       .S1     L24               ; |611| 
|| [ B0]   MVK     .L1     0x1,A1            ; |668| nullify predicate
|| [ B0]   LDW     .D2T2   *+B10(16),B4      ; |613| 
|| [ B0]   SHL     .S2     B9,2,B16          ; |642| 
|| [ B0]   MVK     .L2     7,B5              ; |615| 
|| [!B0]   MV      .D1X    B5,A3

   [!A1]   BNOP    .S1     L23,1             ; |654| 
|| [ B0]   ADDAH   .D2     B5,B9,B8          ; |615| 
|| [!B0]   MVK     .S2     0xfffffff8,B6     ; |668| 
|| [!B0]   ADD     .L2     7,B6,B5           ; |668| 
|| [!B0]   STW     .D1T2   B4,*+A10[A3]      ; |651| 
|| [!B0]   CMPEQ   .L1     A5,2,A0           ; |656| 

   [!B0]   MVK     .S2     114,B6            ; |668| 
|| [ B0]   MV      .L1X    B16,A4            ; |642| 
|| [ B0]   AND     .L2     -8,B8,B8          ; |615| 
|| [!B0]   AND     .D2     B6,B5,B5          ; |668| 

   [ B0]   MVK     .S2     113,B5            ; |615| 
           AND     .L2     -2,B4,B0          ; |613| 
           ; BRANCHCC OCCURS {L24}           ; |611| 
;** --------------------------------------------------------------------------*
;** 651	-----------------------    (*chan).yPitch = (unsigned)numPixels+7u&0xfffffff8u;
;** 654	-----------------------    if ( !U$128 ) goto g14;

   [!A1]   B       .S1     L28               ; |668| 
|| [ A1]   CMPEQ   .L2X    A5,6,B0           ; |660| 

           ; BRANCHCC OCCURS {L23}           ; |654| 
;** --------------------------------------------------------------------------*
;** 656	-----------------------    if ( U$126 != 2 ) goto g12;
;** 658	-----------------------    (*chan).cPitch = 0u;
;**	-----------------------g12:
;** 660	-----------------------    if ( U$126 != 6 ) goto g23;
;** 662	-----------------------    (*chan).cPitch = 0u;
;** 663	-----------------------    (*chan).yPitch = (*chan).yPitch*2u;
;** 663	-----------------------    goto g23;

   [ B0]   LDW     .D1T1   *+A10[A3],A3      ; |663| 
||         MVK     .S1     114,A5            ; |658| 
||         ZERO    .L1     A4                ; |658| 

           BNOP    .S2     L27,2             ; |663| 
|| [ A0]   STW     .D1T1   A4,*+A10[A5]      ; |658| 
||         MVK     .S1     113,A31           ; |663| 

   [ B0]   STW     .D1T1   A4,*+A10[A5]      ; |662| 
   [ B0]   ADD     .L1     A3,A3,A3          ; |663| 
   [ B0]   STW     .D1T1   A3,*+A10[A31]     ; |663| 
           ; BRANCH OCCURS {L27}             ; |663| 
;** --------------------------------------------------------------------------*
L23:    
;**	-----------------------g14:
;** 668	-----------------------    (*chan).cPitch = (unsigned)numCPixels+7u&(K$178 = 0xfffffff8u);
;** 668	-----------------------    goto g23;

           MV      .L2X    A10,B4
||         MVK     .S1     121,A3            ; |678| 

           STW     .D2T2   B5,*+B4[B6]       ; |668| 
           LDHU    .D2T2   *+B10(60),B4      ; |678| 
           NOP             2
           ; BRANCH OCCURS {L28}             ; |668| 
;** --------------------------------------------------------------------------*
L24:    
;**	-----------------------g15:
;** 613	-----------------------    if ( (*params).bpk10Bit&0xfffffffe ) goto g22;

           MV      .L1     A11,A1            ; |635| 
|| [ B0]   B       .S2     L26               ; |613| 
||         MVK     .L2     0x3,B4            ; |642| 
|| [!B0]   MV      .D1X    B5,A3
|| [!B0]   MVK     .D2     0xfffffff8,B5     ; |635| 
||         MVK     .S1     113,A7            ; |642| 

   [ B0]   MVK     .S1     0x1,A1            ; |635| nullify predicate
|| [!B0]   ADD     .L2     7,B6,B4           ; |635| 
|| [!B0]   STW     .D1T2   B8,*+A10[A3]      ; |615| 
|| [!B0]   CMPEQ   .L1     A5,3,A0           ; |623| 
|| [ B0]   CALL    .S2     __divi            ; |642| 

   [!A1]   BNOP    .S1     L25,3             ; |621| 
|| [!B0]   AND     .L2     B5,B4,B4          ; |635| 
|| [!B0]   MVK     .S2     114,B5            ; |635| 

           ; BRANCHCC OCCURS {L26}           ; |613| 
;** --------------------------------------------------------------------------*
;** 615	-----------------------    (*chan).yPitch = (unsigned)(numPixels*2)+7u&0xfffffff8u;
;** 621	-----------------------    if ( !U$128 ) goto g21;

   [!A1]   B       .S1     L29               ; |635| 
|| [!A1]   MV      .L2X    A10,B6

   [ A1]   CMPEQ   .L2X    A5,7,B0           ; |627| 
|| [!A1]   STW     .D2T2   B4,*+B6[B5]       ; |635| 

           ; BRANCHCC OCCURS {L25}           ; |621| 
;** --------------------------------------------------------------------------*
;** 623	-----------------------    if ( U$126 != 3 ) goto g19;
;** 625	-----------------------    (*chan).cPitch = 0u;
;**	-----------------------g19:
;** 627	-----------------------    if ( U$126 != 7 ) goto g23;
;** 629	-----------------------    (*chan).cPitch = 0u;
;** 630	-----------------------    (*chan).yPitch = (*chan).yPitch*2u;
;** 630	-----------------------    goto g23;

   [ B0]   LDW     .D1T1   *+A10[A3],A3      ; |630| 
||         MVK     .S1     114,A5            ; |625| 
||         ZERO    .L1     A4                ; |625| 

           BNOP    .S2     L27,2             ; |630| 
|| [ A0]   STW     .D1T1   A4,*+A10[A5]      ; |625| 
||         MVK     .S1     113,A31           ; |630| 

   [ B0]   STW     .D1T1   A4,*+A10[A5]      ; |629| 
   [ B0]   ADD     .L1     A3,A3,A3          ; |630| 
   [ B0]   STW     .D1T1   A3,*+A10[A31]     ; |630| 
           ; BRANCH OCCURS {L27}             ; |630| 
;** --------------------------------------------------------------------------*
L25:    
;**	-----------------------g21:
;** 635	-----------------------    (*chan).cPitch = (unsigned)numCPixels+7u&(K$178 = 0xfffffff8u);
;** 635	-----------------------    goto g23;

           LDHU    .D2T2   *+B10(60),B4      ; |678| 
||         MVK     .S1     121,A3            ; |678| 

           NOP             3
           ; BRANCH OCCURS {L29}             ; |635| 
;** --------------------------------------------------------------------------*
L26:    
;**	-----------------------g22:
;** 642	-----------------------    (*chan).yPitch = (unsigned)(numPixels*4/3)+7u&0xfffffff8u;
;** 646	-----------------------    U$128 ? (S$1 = 0u) : (S$1 = (unsigned)(numCPixels*4/3)+7u&0xfffffff8u);
           ADDKPC  .S2     RL8,B3,0          ; |642| 
RL8:       ; CALL OCCURS {__divi}            ; |642| 
;** --------------------------------------------------------------------------*

           MV      .L1     A11,A0            ; |646| 
||         ADD     .S1     7,A4,A3           ; |642| 
||         SHL     .S2     B6,2,B5           ; |646| 
||         MVK     .L2     0x3,B4            ; |646| 

   [ A0]   B       .S1     L27               ; |646| 
||         AND     .L1     -8,A3,A3          ; |642| 

   [!A0]   CALL    .S2     __divi            ; |646| 
||         MV      .L1X    B5,A4             ; |646| 
||         STW     .D1T1   A3,*+A10[A7]      ; |642| 
||         ZERO    .S1     A3                ; |646| 

           NOP             1
   [ A0]   MVK     .S1     114,A4            ; |646| 
   [ A0]   STW     .D1T1   A3,*+A10[A4]      ; |646| 
           NOP             1
           ; BRANCHCC OCCURS {L27}           ; |646| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL9,B3,0          ; |646| 
RL9:       ; CALL OCCURS {__divi}            ; |646| 
;** --------------------------------------------------------------------------*
;** 646	-----------------------    (*chan).cPitch = S$1;
           ADD     .L1     7,A4,A3           ; |646| 

           AND     .L1     -8,A3,A3          ; |646| 
||         MVK     .S1     114,A4            ; |646| 

           STW     .D1T1   A3,*+A10[A4]      ; |646| 
;** --------------------------------------------------------------------------*
L27:    

           LDHU    .D2T2   *+B10(60),B4      ; |678| 
||         MVK     .S1     121,A3            ; |678| 

           NOP             2
;** --------------------------------------------------------------------------*
L28:    
           NOP             1
;** --------------------------------------------------------------------------*
L29:    
;**	-----------------------g23:
;** 678	-----------------------    (*chan).yThrld = (*params).thrld;
;** 679	-----------------------    if ( ((*params).mergeFlds != 0)&U$108 ) goto g25;

           MVK     .S2     117,B5            ; |688| 
||         MVK     .S1     113,A4            ; |688| 
||         MVK     .L1     1,A6              ; |686| 

           STW     .D1T2   B4,*+A10[A3]      ; |678| 
||         MVK     .S2     428,B6            ; |686| 
||         MVK     .S1     119,A16           ; |685| 

           LDW     .D2T2   *+B10(72),B4      ; |679| 
||         MVK     .S2     115,B16           ; |685| 
||         MVK     .S1     120,A8            ; |684| 

           ADD     .L1X    B6,A10,A5         ; |686| 

           MVK     .S2     121,B6
||         MVK     .S1     121,A7            ; |683| 

           MVK     .S2     117,B9            ; |684| 
           MVK     .S2     113,B8            ; |683| 
           CMPEQ   .L2     B4,0,B4           ; |679| 
           XOR     .L2     1,B4,B4           ; |679| 

           AND     .L2     B7,B4,B0          ; |679| 
||         MV      .S2X    A10,B4

   [!B0]   LDW     .D2T2   *+B4[B5],B4       ; |688| 
|| [!B0]   LDW     .D1T1   *+A10[A4],A14     ; |688| 
|| [ B0]   B       .S1     L32               ; |679| 
|| [ B0]   MV      .L1X    B8,A4

   [ B0]   LDW     .D1T1   *+A10[A4],A4      ; |683| 
   [!B0]   LDW     .D1T1   *+A10[A3],A13     ; |688| 
           NOP             2

   [!B0]   MPYLH   .M1X    B4,A14,A3         ; |688| 
||         MPYLH   .M2X    A14,B4,B5         ; |688| 

           ; BRANCHCC OCCURS {L32}           ; |679| 
;** --------------------------------------------------------------------------*
;** 688	-----------------------    C$7 = (*chan).yPitch;
;** 688	-----------------------    C$8 = (*chan).numLinesFld1*C$7;
;** 688	-----------------------    C$6 = (*chan).yThrld;
;** 688	-----------------------    C$5 = C$6<<3;
;** 688	-----------------------    C$3 = C$8/C$5;
;** 688	-----------------------    assert(C$3*C$6<<3 == C$8);

           CALL    .S1     __divu            ; |688| 
||         MPYU    .M1X    A14,B4,A4         ; |688| 

           SHL     .S2X    A13,3,B10         ; |688| 
           ADD     .L1X    B5,A3,A3          ; |688| 
           SHL     .S1     A3,16,A3          ; |688| 
           ADD     .L1     A4,A3,A3          ; |688| 

           MV      .L1     A3,A4             ; |688| 
||         ADDKPC  .S2     RL10,B3,0         ; |688| 
||         MV      .L2     B10,B4            ; |688| 

RL10:      ; CALL OCCURS {__divu}            ; |688| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A15            ; |688| 
           MPYLH   .M1     A15,A13,A4        ; |688| 
           MPYLH   .M1     A13,A15,A5        ; |688| 
           MPYU    .M1     A13,A15,A31       ; |688| 
           ADD     .L1     A5,A4,A4          ; |688| 
           SHL     .S1     A4,16,A4          ; |688| 

           ADD     .L1     A31,A4,A5         ; |688| 
||         MVKL    .S1     SL5+0,A4          ; |688| 

           SHL     .S1     A5,3,A5           ; |688| 

           CMPEQ   .L1     A5,A3,A0          ; |688| 
||         MVKH    .S1     SL5+0,A4          ; |688| 

   [ A0]   B       .S2     L30               ; |688| 
|| [ A0]   MVK     .S1     115,A3            ; |690| 

   [!A0]   CALL    .S1     __abort_msg       ; |688| 
|| [ A0]   LDW     .D1T1   *+A10[A3],A3      ; |690| 

           NOP             4
           ; BRANCHCC OCCURS {L30}           ; |688| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL11,B3,0         ; |688| 
RL11:      ; CALL OCCURS {__abort_msg}       ; |688| 
           MVK     .S1     115,A3            ; |690| 
           LDW     .D1T1   *+A10[A3],A3      ; |690| 
           NOP             4
;** --------------------------------------------------------------------------*
L30:    
;** 690	-----------------------    C$4 = (*chan).numLines*C$7;
;** 690	-----------------------    assert(C$4/C$5*C$6<<3 == C$4);
           MPYLH   .M1     A3,A14,A4         ; |690| 

           MPYLH   .M1     A14,A3,A5         ; |690| 
||         CALL    .S1     __divu            ; |690| 

           ADDKPC  .S2     RL12,B3,0         ; |690| 

           MPYU    .M1     A14,A3,A4         ; |690| 
||         ADD     .L1     A5,A4,A3          ; |690| 

           SHL     .S1     A3,16,A3          ; |690| 
           ADD     .L1     A4,A3,A3          ; |690| 

           MV      .L1     A3,A4             ; |690| 
||         MV      .L2     B10,B4            ; |690| 

RL12:      ; CALL OCCURS {__divu}            ; |690| 
;** --------------------------------------------------------------------------*
           MPYLH   .M1     A13,A4,A6         ; |690| 
           MPYLH   .M1     A4,A13,A5         ; |690| 
           NOP             1

           MPYU    .M1     A13,A4,A5         ; |690| 
||         ADD     .L1     A6,A5,A4          ; |690| 

           SHL     .S1     A4,16,A4          ; |690| 

           MVKL    .S1     SL6+0,A4          ; |690| 
||         ADD     .L1     A5,A4,A5          ; |690| 

           SHL     .S1     A5,3,A5           ; |690| 

           MVKH    .S1     SL6+0,A4          ; |690| 
||         CMPEQ   .L1     A5,A3,A0          ; |690| 

   [ A0]   B       .S2     L31               ; |690| 
|| [ A0]   MVK     .S1     115,A31           ; |694| 

   [!A0]   CALL    .S2     __abort_msg       ; |690| 
|| [ A0]   LDW     .D1T1   *+A10[A31],A5     ; |694| 
|| [ A0]   MVK     .S1     113,A3            ; |694| 

   [ A0]   MVK     .S1     121,A30           ; |694| 
|| [ A0]   LDW     .D1T1   *+A10[A3],A4      ; |694| 

           NOP             3
           ; BRANCHCC OCCURS {L31}           ; |690| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL13,B3,0         ; |690| 
RL13:      ; CALL OCCURS {__abort_msg}       ; |690| 
           MVK     .S1     115,A31           ; |694| 

           MVK     .S1     113,A3            ; |694| 
||         LDW     .D1T1   *+A10[A31],A5     ; |694| 

           LDW     .D1T1   *+A10[A3],A4      ; |694| 
||         MVK     .S1     121,A30           ; |694| 

           NOP             3
;** --------------------------------------------------------------------------*
L31:    
;** 692	-----------------------    (*chan).numEventsFld1 = C$3;
;** 694	-----------------------    U$216 = (*chan).yThrld;
;** 694	-----------------------    (*chan).numEvents = (*chan).yPitch*(*chan).numLines/(U$216<<3);
;** 696	-----------------------    (*chan).mergeFlds = 0u;
;** 696	-----------------------    goto g26;

           LDW     .D1T2   *+A10[A30],B5     ; |694| 
||         MVK     .S1     120,A29           ; |692| 

           MPYLH   .M1     A4,A5,A3          ; |694| 
||         CALL    .S1     __divu            ; |694| 
||         STW     .D1T1   A15,*+A10[A29]    ; |692| 

           MPYLH   .M1     A5,A4,A6          ; |694| 
           MPYU    .M1     A5,A4,A5          ; |694| 
           ADD     .L1     A6,A3,A6          ; |694| 

           SHL     .S1     A6,16,A4          ; |694| 
||         SHL     .S2     B5,3,B4           ; |694| 

           ADD     .L1     A5,A4,A4          ; |694| 
||         ADDKPC  .S2     RL14,B3,0         ; |694| 

RL14:      ; CALL OCCURS {__divu}            ; |694| 
;** --------------------------------------------------------------------------*

           MVK     .S2     428,B4            ; |696| 
||         ZERO    .L2     B6                ; |696| 
||         MV      .L1     A11,A0            ; |704| 
||         MVK     .S1     122,A3            ; |701| 

           ADD     .L2X    B4,A10,B4         ; |696| 
||         EXTU    .S2     B5,22,6,B7        ; |704| 
||         MVK     .S1     119,A28           ; |694| 

           STW     .D1T1   A4,*+A10[A28]     ; |694| 
||         ZERO    .L2     B4                ; |701| 
||         EXTU    .S2     B5,22,22,B6       ; |704| 
||         STH     .D2T2   B6,*B4            ; |696| 
||         MVK     .S1     120,A30           ; |705| 

           ADD     .L2     1,B5,B5           ; |701| 
||         OR      .D2     B6,B7,B31         ; |704| 
||         B       .S2     L33               ; |696| 
||         MVK     .S1     119,A31           ; |705| 

   [!A0]   SHRU    .S2     B5,1,B4           ; |701| 
           STW     .D1T2   B4,*+A10[A3]      ; |701| 
           STW     .D1T2   B31,*+A12(24)     ; |704| 
           LDW     .D1T1   *+A10[A31],A4     ; |705| 
           LDW     .D1T1   *+A10[A30],A3     ; |705| 
           ; BRANCH OCCURS {L33}             ; |696| 
;** --------------------------------------------------------------------------*
L32:    
;**	-----------------------g25:
;** 683	-----------------------    (*chan).yThrld = (*chan).yPitch>>3;
;** 684	-----------------------    (*chan).numEventsFld1 = (*chan).numLinesFld1;
;** 685	-----------------------    (*chan).numEvents = (*chan).numLines;
;** 686	-----------------------    (*chan).mergeFlds = 1u;
;**  	-----------------------    U$216 = (*chan).yThrld;

           MV      .L1X    B9,A3
||         MV      .L2X    A16,B4
||         MV      .D1     A11,A0            ; |704| 
||         MVK     .S1     120,A30           ; |705| 

           MV      .L2X    A10,B5
||         LDW     .D1T1   *+A10[A3],A9      ; |684| 
||         SHRU    .S1     A4,3,A3           ; |683| 

           LDW     .D2T2   *+B5[B16],B7      ; |685| 
||         STW     .D1T1   A3,*+A10[A7]      ; |683| 
||         MVK     .S1     122,A3            ; |701| 

           NOP             1
           MVK     .S1     119,A31           ; |705| 
           STH     .D1T1   A6,*A5            ; |686| 
           STW     .D1T1   A9,*+A10[A8]      ; |684| 

           ZERO    .L2     B4                ; |701| 
||         STW     .D2T2   B7,*+B5[B4]       ; |685| 

           LDW     .D2T2   *+B5[B6],B5
           NOP             4
           EXTU    .S2     B5,22,6,B7        ; |704| 

           ADD     .L2     1,B5,B5           ; |701| 
||         EXTU    .S2     B5,22,22,B6       ; |704| 

   [!A0]   SHRU    .S2     B5,1,B4           ; |701| 
||         OR      .L2     B6,B7,B31         ; |704| 

           STW     .D1T2   B4,*+A10[A3]      ; |701| 
           STW     .D1T2   B31,*+A12(24)     ; |704| 
           LDW     .D1T1   *+A10[A31],A4     ; |705| 
           LDW     .D1T1   *+A10[A30],A3     ; |705| 
;** --------------------------------------------------------------------------*
L33:    
;**	-----------------------g26:
;** 701	-----------------------    (*chan).cThrld = U$128 ? 0u : U$216+1u>>1;
;** 704	-----------------------    base[6] = (int)_extu(U$216<<16, 6u, 6u)|(int)_extu(U$216, 22u, 22u);
;** 705	-----------------------    C$2 = (*chan).numEventsFld1;
;** 705	-----------------------    base[7] = (int)_extu((*chan).numEvents-C$2<<16, 4u, 4u)|(int)_extu(C$2, 20u, 20u);
;** 708	-----------------------    (*chan).status = (*chan).status|2u;
;**	-----------------------g27:
;** 711	-----------------------    return;
           NOP             4

           EXTU    .S1     A3,20,20,A4       ; |705| 
||         SUB     .L1     A4,A3,A3          ; |705| 

           EXTU    .S1     A3,20,4,A3        ; |705| 
           OR      .L1     A4,A3,A3          ; |705| 
           STW     .D1T1   A3,*+A12(28)      ; |705| 
           LDW     .D1T1   *A10,A3           ; |708| 
           NOP             4
           OR      .L1     2,A3,A3           ; |708| 
           STW     .D1T1   A3,*A10           ; |708| 
;** --------------------------------------------------------------------------*
L34:    
           MV      .L1X    SP,A31            ; |713| 

           LDDW    .D1T1   *+A31(48),A15:A14 ; |713| 
||         LDDW    .D2T2   *+SP(56),B11:B10  ; |713| 
||         MV      .L2     B13,B3            ; |713| 

           RET     .S2     B3                ; |713| 
||         LDDW    .D1T1   *+A31(40),A13:A12 ; |713| 
||         LDW     .D2T2   *+SP(28),B13      ; |713| 

           LDW     .D2T2   *++SP(64),B12     ; |713| 
||         LDDW    .D1T1   *+A31(32),A11:A10 ; |713| 

	.dwpsn	"vportcap_RAW.c",713,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |713| 
	.dwattr DW$62, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$62, DW_AT_end_line(0x2c9)
	.dwattr DW$62, DW_AT_end_column(0x01)
	.dwendtag DW$62

	.sect	".text"

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("_configTransfer"), DW_AT_symbol_name("__configTransfer")
	.dwattr DW$65, DW_AT_low_pc(__configTransfer)
	.dwattr DW$65, DW_AT_high_pc(0x00)
	.dwattr DW$65, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$65, DW_AT_begin_line(0x304)
	.dwattr DW$65, DW_AT_begin_column(0x0c)
	.dwattr DW$65, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr DW$65, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",776,1

;******************************************************************************
;* FUNCTION NAME: __configTransfer                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,*
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 40 Save = 40 byte                  *
;******************************************************************************
__configTransfer:
;** --------------------------------------------------------------------------*
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$66, DW_AT_type(*DW$T$37)
	.dwattr DW$66, DW_AT_location[DW_OP_reg4]
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$67, DW_AT_type(*DW$T$184)
	.dwattr DW$67, DW_AT_location[DW_OP_reg20]
;** 777	-----------------------    chan = (struct $$fake3 *)chanp;
;** 786	-----------------------    if ( !((*chan).status&2u) ) goto g67;

           MV      .L1X    SP,A31            ; |776| 
||         STW     .D2T1   A14,*SP--(40)     ; |776| 

           STDW    .D1T1   A11:A10,*-A31(32)
||         MV      .L1     A4,A10            ; |776| 
||         STW     .D2T2   B3,*+SP(4)
||         MV      .S1X    B4,A11            ; |776| 

           LDW     .D1T1   *A10,A3           ; |786| 
||         STDW    .D2T2   B11:B10,*+SP(24)

           NOP             1
           STDW    .D1T1   A13:A12,*-A31(24)
           MV      .L1     A4,A12            ; |776| 
           STDW    .D2T2   B13:B12,*+SP(32)
           AND     .L1     2,A3,A0           ; |786| 

   [!A0]   BNOP    .S1     L65,4             ; |786| 
|| [ A0]   LDW     .D1T2   *+A11(64),B10     ; |788| 

           CMPLT   .L2     B10,2,B0          ; |788| 
           ; BRANCHCC OCCURS {L65}           ; |786| 
;** --------------------------------------------------------------------------*
;** 788	-----------------------    C$24 = (*params).numFrmBufs;
;** 788	-----------------------    assert(C$24 >= 2);

   [!B0]   B       .S2     L35               ; |788| 
||         MVKL    .S1     SL7+0,A4          ; |788| 
||         MV      .L2     B0,B1             ; guard predicate rewrite

   [ B0]   CALL    .S2     __abort_msg       ; |788| 
||         MVKH    .S1     SL7+0,A4          ; |788| 

   [!B0]   MVKL    .S1     SL7+0,A4          ; |788| 

   [!B0]   MVKH    .S1     SL7+0,A4          ; |788| 
|| [!B0]   CMPGT   .L2     B10,10,B0         ; |788| 

   [ B1]   MVK     .L2     0x1,B0            ; |788| nullify predicate
   [!B0]   B       .S1     L36               ; |788| 
           ; BRANCHCC OCCURS {L35}           ; |788| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL15,B3,0         ; |788| 
RL15:      ; CALL OCCURS {__abort_msg}       ; |788| 

           CMPGT   .L2     B10,10,B0         ; |788| 
||         MVKL    .S1     SL7+0,A4          ; |788| 

   [!B0]   B       .S2     L36               ; |788| 
||         MVKH    .S1     SL7+0,A4          ; |788| 

;** --------------------------------------------------------------------------*
L35:    
;** 788	-----------------------    assert(C$24 <= 10);

   [!B0]   MVK     .S1     444,A31           ; |791| 
|| [!B0]   MVK     .L2     0xffffffff,B5     ; |792| 
|| [!B0]   ZERO    .D2     B30               ; |791| 
|| [ B0]   CALL    .S2     __abort_msg       ; |788| 

   [!B0]   MVK     .S1     364,A3            ; |790| 
|| [!B0]   MVK     .S2     91,B31            ; |790| 
|| [!B0]   MV      .L2X    A10,B4            ; |790| 

   [!B0]   MVK     .S1     129,A4            ; |793| 
|| [!B0]   MVK     .S2     92,B6             ; |790| 
|| [!B0]   ADD     .L1     A3,A10,A3         ; |790| 

   [!B0]   STW     .D1T2   B5,*+A10[A4]      ; |793| 
|| [!B0]   ADD     .L1     A31,A10,A4        ; |791| 
|| [!B0]   MVK     .S1     125,A5            ; |792| 
|| [!B0]   STW     .D2T1   A3,*+B4[B31]      ; |790| 

   [!B0]   STH     .D1T2   B30,*A4           ; |791| 
|| [!B0]   STW     .D2T1   A3,*+B4[B6]       ; |790| 

           ; BRANCHCC OCCURS {L36}           ; |788| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL16,B3,0         ; |788| 
RL16:      ; CALL OCCURS {__abort_msg}       ; |788| 
;** --------------------------------------------------------------------------*
           MVK     .S1     364,A3            ; |790| 
           MVK     .S1     444,A31           ; |791| 

           ADD     .L1     A3,A10,A3         ; |790| 
||         MVK     .L2     0xffffffff,B5     ; |792| 
||         MVK     .S1     129,A4            ; |793| 
||         MV      .D2X    A10,B4            ; |790| 
||         MVK     .S2     92,B6             ; |790| 

           STW     .D2T1   A3,*+B4[B6]       ; |790| 
||         ADD     .L1     A31,A10,A4        ; |791| 
||         STW     .D1T2   B5,*+A10[A4]      ; |793| 
||         MVK     .S2     91,B31            ; |790| 
||         ZERO    .L2     B30               ; |791| 

           STH     .D1T2   B30,*A4           ; |791| 
||         STW     .D2T1   A3,*+B4[B31]      ; |790| 
||         MVK     .S1     125,A5            ; |792| 

;** --------------------------------------------------------------------------*
L36:    
;** 790	-----------------------    C$23 = (struct _QUE_Elem **)chan;
;** 790	-----------------------    (*((struct _QUE_Elem *)C$23+364)).next = C$23[92] = (struct _QUE_Elem *)chan+364;
;** 791	-----------------------    (*chan).queEmpty = 0;
;** 792	-----------------------    (*chan).mrViop = C$22 = (struct _FVID_Frame *)0xffffffffu;
;** 793	-----------------------    (*chan).packetIOM = (struct _DEV_Frame *)C$22;
;** 794	-----------------------    (*chan).segId = (*params).segId;
;** 796	-----------------------    tccIntNum = C$21 = *((int (* const)[3])chanp+416);
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 792	-----------------------    K$28 = 0xffffffffu;
;** 356	-----------------------    if ( (unsigned)C$21 < 32u ) goto g4;  // [11]
;** 664	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u&~(1u<<(unsigned)C$21-32u);  // [25]
;** 664	-----------------------    goto g5;  // [25]
;**	-----------------------g4:
;** 663	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u&(1u<<tccIntNum^K$28);  // [25]
;**	-----------------------g5:
;** 360	-----------------------    CSR = CSR&(K$40 = 0xfffffffeu)|gie&1u;  // [12]
;** 360	-----------------------    if ( U$58 = (*chan).numFrms ) goto g22;  // [12]

           STW     .D1T2   B5,*+A10[A5]      ; |792| 
||         MVK     .S1     104,A30           ; |796| 

           LDW     .D1T1   *+A11(76),A4      ; |794| 
||         MVK     .S1     131,A29           ; |794| 

           LDW     .D1T1   *+A12[A30],A3     ; |796| 
           NOP             3

           STW     .D1T1   A4,*+A10[A29]     ; |794| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     -2,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVK     .S1     32,A5             ; |356| 
||         MVKL    .S2     0x1a0ffe8,B5      ; |663| 
||         MVK     .L1     1,A28             ; |663| 
||         MVK     .L2     1,B6              ; |664| 
||         MVK     .D2     0xffffffff,B13    ; |792| 

           MVKL    .S1     0x1a0ffa8,A4      ; |664| 
||         CMPLTU  .L1     A3,A5,A0          ; |356| 
||         MVKH    .S2     0x1a0ffe8,B5      ; |663| 
||         MVK     .L2     0xfffffffe,B10    ; |360| 

           MVKH    .S1     0x1a0ffa8,A4      ; |664| 
|| [ A0]   LDW     .D2T2   *B5,B8            ; |663| 
||         MVK     .S2     32,B29            ; |664| 

   [!A0]   LDW     .D1T1   *A4,A4            ; |664| 
||         SUB     .L2X    A3,B29,B5         ; |664| 
||         SHL     .S1     A28,A3,A5         ; |663| 
||         MVKL    .S2     0x1a0ffa8,B7      ; |664| 

           SHL     .S2     B6,B5,B6          ; |664| 
           MVKL    .S1     0x1a0ffe8,A27     ; |663| 

           XOR     .L2X    B13,A5,B5         ; |663| 
||         MVKH    .S1     0x1a0ffe8,A27     ; |663| 
||         MVKH    .S2     0x1a0ffa8,B7      ; |664| 

   [ A0]   AND     .L2     B5,B8,B5          ; |663| 

   [!A0]   ANDN    .L1X    A4,B6,A4          ; |664| 
|| [ A0]   STW     .D1T2   B5,*A27           ; |663| 

   [!A0]   STW     .D2T1   A4,*B7            ; |664| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     B10,B5,B4         ; |360| 
||         AND     .S2     1,B4,B5           ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           MVK     .S1     118,A3            ; |360| 
||         MVK     .S2     132,B8            ; |804| 

           LDW     .D1T1   *+A10[A3],A0      ; |360| 
||         MVK     .S1     113,A3            ; |804| 
||         MVK     .S2     118,B7            ; |798| 

           NOP             1
           MVK     .S1     115,A4            ; |804| 
           MVK     .S2     114,B5            ; |804| 
           MVK     .S1     118,A7            ; |807| 

   [!A0]   MV      .L2X    A10,B4
|| [!A0]   LDW     .D1T2   *+A10[A3],B6      ; |804| 
|| [ A0]   B       .S2     L45               ; |360| 
|| [ A0]   MVK     .S1     428,A3            ; |883| 

   [!A0]   LDW     .D2T2   *+B4[B5],B5       ; |804| 
|| [ A0]   ADD     .L1     A3,A10,A3         ; |883| 
|| [!A0]   LDW     .D1T1   *+A10[A4],A3      ; |804| 

   [ A0]   LDHU    .D1T1   *A3,A3            ; |883| 
   [!A0]   LDW     .D1T1   *+A11(64),A4      ; |798| 
           NOP             2
           ; BRANCHCC OCCURS {L45}           ; |360| 
;** --------------------------------------------------------------------------*
;** 798	-----------------------    (*chan).numFrms = (*params).numFrmBufs;
;** 804	-----------------------    C$20 = (*chan).numLines;
;** 804	-----------------------    (*chan).bufSz = (int)((*chan).yPitch*C$20)+(int)((*chan).cPitch*C$20*2u);
;** 807	-----------------------    if ( !(U$58 = (*chan).numFrms) ) goto g22;
;** 807	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)

           MPYLH   .M2X    B6,A3,B9          ; |804| 
||         MPYLH   .M1X    B5,A3,A6          ; |804| 
||         ZERO    .L1     A12               ; |807| 

           MPYLH   .M2X    A3,B6,B16         ; |804| 
||         MPYU    .M1X    A3,B6,A5          ; |804| 

           STW     .D2T1   A4,*+B4[B7]       ; |798| 
||         MPYLH   .M2X    A3,B5,B17         ; |804| 
||         MPYU    .M1X    A3,B5,A4          ; |804| 

           LDW     .D1T1   *+A10[A7],A0      ; |807| 
||         ADD     .L2     B16,B9,B5         ; |804| 

           SHL     .S2     B5,16,B5          ; |804| 
           ADD     .L1X    B17,A6,A3         ; |804| 

           SHL     .S1     A3,16,A3          ; |804| 
||         ADD     .L1X    A5,B5,A31         ; |804| 

           ADD     .L1     A4,A3,A4          ; |804| 

   [!A0]   BNOP    .S1     L44,4             ; |807| 
||         ADDAH   .D1     A31,A4,A3         ; |804| 

           STW     .D2T1   A3,*+B4[B8]       ; |804| 
           ; BRANCHCC OCCURS {L44}           ; |807| 
;** --------------------------------------------------------------------------*

           MVK     .S1     132,A3            ; |808| 
||         LDW     .D1T1   *+A11(76),A4      ; |808| 

           LDW     .D1T2   *+A10[A3],B4      ; |808| 
||         CALL    .S1     _MEM_alloc        ; |808| 

           LDW     .D1T1   *+A11(68),A6      ; |808| 
	.dwpsn	"vportcap_RAW.c",807,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L37:    
DW$L$__configTransfer$10$B:
;**	-----------------------g8:
;** 808	-----------------------    curAddr = MEM_alloc((*params).segId, (unsigned)(*chan).bufSz, (unsigned)(*params).alignment);
;** 808	-----------------------    if ( curAddr == NULL ) goto g67;
           ADDKPC  .S2     RL17,B3,0         ; |808| 
RL17:      ; CALL OCCURS {_MEM_alloc}        ; |808| 
DW$L$__configTransfer$10$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$11$B:

           MV      .L1     A4,A0             ; |808| 
||         SHL     .S2X    A12,5,B4          ; |813| 

           ADD     .L2X    A10,B4,B4         ; |813| 
|| [ A0]   MVK     .S1     126,A31           ; |818| 
|| [!A0]   B       .S2     L65               ; |808| 

           ADDAW   .D2     B4,13,B4          ; |813| 
|| [ A0]   MVK     .S1     113,A4            ; |814| 

   [ A0]   STW     .D2T1   A0,*B4            ; |813| 
|| [ A0]   MVK     .S1     115,A3            ; |814| 

   [ A0]   LDW     .D1T1   *+A10[A4],A5      ; |814| 
   [ A0]   LDW     .D1T1   *+A10[A31],A4     ; |818| 
   [ A0]   LDW     .D1T1   *+A10[A3],A3      ; |814| 
           ; BRANCHCC OCCURS {L65}           ; |808| 
DW$L$__configTransfer$11$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$12$B:
;** 813	-----------------------    U$83 = (i<<5)+(union $$fake2 *)(struct _FVID_Frame (*)[10])chan+52;
;** 813	-----------------------    (*U$83).iFrm.y1 = curAddr;
;** 814	-----------------------    curAddr += (*chan).numLines*(*chan).yPitch;
;** 818	-----------------------    if ( (*chan).mode&2 ) goto g11;
           NOP             3
           AND     .L1     2,A4,A1           ; |818| 

   [ A1]   ZERO    .L2     B5                ; |821| 
||         MPYLH   .M1     A5,A3,A7          ; |814| 

   [ A1]   STW     .D2T2   B5,*+B4(8)        ; |823| 
|| [ A1]   B       .S1     L38               ; |818| 
||         MPYLH   .M1     A3,A5,A6          ; |814| 

   [ A1]   STW     .D2T2   B5,*+B4(4)        ; |821| 
||         MPYU    .M1     A5,A3,A5          ; |814| 

           ADD     .L1     A7,A6,A3          ; |814| 
           SHL     .S1     A3,16,A3          ; |814| 
           ADD     .L1     A5,A3,A3          ; |814| 

   [ A1]   LDW     .D1T1   *+A11(4),A3       ; |835| 
||         ADD     .L1     A3,A0,A0          ; |814| 

           ; BRANCHCC OCCURS {L38}           ; |818| 
DW$L$__configTransfer$12$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$13$B:
;** 828	-----------------------    (*U$83).iFrm.cb1 = curAddr;
;** 829	-----------------------    curAddr += (*chan).numLines*(*chan).cPitch;
;** 830	-----------------------    (*U$83).iFrm.cr1 = curAddr;
;** 831	-----------------------    goto g12;

           MVK     .S1     115,A3            ; |829| 
||         STW     .D2T1   A0,*+B4(4)        ; |828| 
|| [ A1]   ZERO    .L2     B5                ; |821| 

           MVK     .S1     114,A31           ; |829| 
||         LDW     .D1T1   *+A10[A3],A4      ; |829| 

           LDW     .D1T1   *+A10[A31],A3     ; |829| 
           NOP             4
           MPYLH   .M1     A4,A3,A5          ; |829| 
           MPYLH   .M1     A3,A4,A6          ; |829| 
           MPYU    .M1     A3,A4,A4          ; |829| 
           ADD     .L1     A6,A5,A3          ; |829| 
           SHL     .S1     A3,16,A3          ; |829| 
           ADD     .L1     A4,A3,A3          ; |829| 
           ADD     .L1     A3,A0,A3          ; |829| 
           STW     .D2T1   A3,*+B4(8)        ; |830| 
   [ A1]   STW     .D2T2   B5,*+B4(8)        ; |823| 
   [ A1]   STW     .D2T2   B5,*+B4(4)        ; |821| 
           LDW     .D1T1   *+A11(4),A3       ; |835| 
DW$L$__configTransfer$13$E:
;** --------------------------------------------------------------------------*
L38:    
DW$L$__configTransfer$14$B:
;**	-----------------------g11:
;** 821	-----------------------    (*U$83).iFrm.cb1 = C$19 = NULL;
;** 823	-----------------------    (*U$83).iFrm.cr1 = C$19;
;**	-----------------------g12:
;** 835	-----------------------    if ( (*params).fldOp == 2 ) goto g20;
           NOP             4

           MVK     .S1     428,A3            ; |845| 
||         CMPEQ   .L1     A3,2,A0           ; |835| 

           MV      .D1     A0,A1             ; |835| branch predicate copy
||         ADD     .L1     A3,A10,A3         ; |845| 
|| [ A0]   B       .S1     L42               ; |835| 

   [ A1]   LDW     .D2T2   *B4,B7            ; |836| 
|| [!A0]   LDHU    .D1T1   *A3,A0            ; |845| 

   [ A1]   LDW     .D2T2   *+B4(4),B6        ; |839| 
   [ A1]   LDW     .D2T2   *+B4(8),B5        ; |841| 
           NOP             2
           ; BRANCHCC OCCURS {L42}           ; |835| 
DW$L$__configTransfer$14$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$15$B:
;** 845	-----------------------    if ( (*chan).mergeFlds ) goto g17;

   [ A0]   B       .S2     L40               ; |845| 
||         MVK     .S1     117,A3            ; |846| 
|| [ A0]   LDW     .D2T2   *B4,B5            ; |863| 

   [!A0]   LDW     .D1T1   *+A10[A3],A3      ; |846| 
||         MVK     .S1     113,A4            ; |846| 

   [!A0]   LDW     .D1T1   *+A10[A4],A4      ; |846| 
|| [ A0]   MVK     .S1     113,A3            ; |863| 

   [ A0]   LDW     .D1T1   *+A10[A3],A3      ; |863| 
           NOP             2
           ; BRANCHCC OCCURS {L40}           ; |845| 
DW$L$__configTransfer$15$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$16$B:
;** 846	-----------------------    (*U$83).iFrm.y2 = (*chan).numLinesFld1*(*chan).yPitch+(*U$83).iFrm.y1;
;** 850	-----------------------    if ( (*chan).mode&2 ) goto g16;

           LDW     .D2T2   *B4,B5            ; |846| 
||         MVK     .S1     126,A31           ; |850| 

           MPYLH   .M1     A4,A3,A6          ; |846| 
           MPYLH   .M1     A3,A4,A5          ; |846| 
           MPYU    .M1     A4,A3,A4          ; |846| 
           ADD     .L1     A6,A5,A3          ; |846| 
           SHL     .S1     A3,16,A3          ; |846| 

           ADD     .L1     A4,A3,A3          ; |846| 
||         MVK     .S1     117,A4            ; |858| 

           NOP             1
           ADD     .L2X    B5,A3,B5          ; |846| 
           STW     .D2T2   B5,*+B4(12)       ; |846| 
           LDW     .D1T1   *+A10[A31],A3     ; |850| 
           NOP             4

           MVK     .S1     114,A3            ; |858| 
||         AND     .L1     2,A3,A0           ; |850| 

   [ A0]   B       .S1     L39               ; |850| 
|| [!A0]   LDW     .D1T2   *+A10[A4],B5      ; |858| 
|| [ A0]   ZERO    .L2     B5                ; |853| 

   [ A0]   BNOP    .S1     L43,3             ; |855| 
|| [ A0]   STW     .D2T2   B5,*+B4(16)       ; |853| 
|| [!A0]   LDW     .D1T1   *+A10[A3],A3      ; |858| 

   [ A0]   STW     .D2T2   B5,*+B4(20)       ; |854| 
           ; BRANCHCC OCCURS {L39}           ; |850| 
DW$L$__configTransfer$16$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$17$B:
;** 858	-----------------------    (*U$83).iFrm.cb2 = (*chan).numLinesFld1*(*chan).cPitch+(*U$83).iFrm.cb1;
;** 859	-----------------------    (*U$83).iFrm.cr2 = (*chan).numLinesFld1*(*chan).cPitch+(*U$83).iFrm.cr1;
;** 859	-----------------------    goto g21;

           LDW     .D2T2   *+B4(4),B6        ; |858| 
||         MPYLH   .M2X    B5,A3,B7          ; |858| 
||         MVK     .S1     114,A30           ; |859| 

           MPYLH   .M2X    A3,B5,B8          ; |858| 
||         MPYU    .M1X    A3,B5,A3          ; |858| 
||         MVK     .S1     117,A31           ; |859| 
||         LDW     .D2T2   *+B4(8),B31       ; |859| 

           NOP             1
           ADD     .L2     B8,B7,B5          ; |858| 
           SHL     .S2     B5,16,B5          ; |858| 
           ADD     .L2X    A3,B5,B5          ; |858| 
           ADD     .L2     B6,B5,B5          ; |858| 
           STW     .D2T2   B5,*+B4(16)       ; |858| 
           LDW     .D1T1   *+A10[A31],A4     ; |859| 
           LDW     .D1T1   *+A10[A30],A5     ; |859| 
           NOP             4
           MPYLH   .M1     A4,A5,A3          ; |859| 
           MPYLH   .M1     A5,A4,A6          ; |859| 
           MPYU    .M1     A5,A4,A4          ; |859| 

           ADD     .L1     A6,A3,A3          ; |859| 
||         B       .S1     L43               ; |859| 

           SHL     .S1     A3,16,A3          ; |859| 
           ADD     .L1     A4,A3,A3          ; |859| 
           NOP             1

           MVK     .S1     118,A3            ; |807| 
||         ADD     .L2X    B31,A3,B5         ; |859| 

           STW     .D2T2   B5,*+B4(20)       ; |859| 
           ; BRANCH OCCURS {L43}             ; |859| 
DW$L$__configTransfer$17$E:
;** --------------------------------------------------------------------------*
L39:    
DW$L$__configTransfer$18$B:
;**	-----------------------g16:
;** 853	-----------------------    (*U$83).iFrm.cb2 = C$18 = NULL;
;** 854	-----------------------    (*U$83).iFrm.cr2 = C$18;
;** 855	-----------------------    goto g21;
           MVK     .S1     118,A3            ; |807| 
           ; BRANCH OCCURS {L43}             ; |855| 
DW$L$__configTransfer$18$E:
;** --------------------------------------------------------------------------*
L40:    
DW$L$__configTransfer$19$B:
;**	-----------------------g17:
;** 863	-----------------------    (*U$83).iFrm.y2 = (*U$83).iFrm.y1+(*chan).yPitch;
;** 868	-----------------------    if ( (*chan).mode&2 ) goto g19;
           NOP             1
           MVK     .S1     126,A31           ; |868| 
           ADD     .L2X    A3,B5,B5          ; |863| 
           STW     .D2T2   B5,*+B4(12)       ; |863| 
           LDW     .D1T1   *+A10[A31],A3     ; |868| 
           NOP             4

           MVK     .S1     114,A3            ; |876| 
||         AND     .L1     2,A3,A0           ; |868| 

   [ A0]   BNOP    .S1     L41,2             ; |868| 
|| [!A0]   LDW     .D2T2   *+B4(4),B5        ; |876| 
|| [!A0]   LDW     .D1T1   *+A10[A3],A3      ; |876| 

   [ A0]   BNOP    .S1     L43,1             ; |873| 
           ADD     .L2X    A3,B5,B5          ; |876| 
           ; BRANCHCC OCCURS {L41}           ; |868| 
DW$L$__configTransfer$19$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$20$B:
;** 876	-----------------------    (*U$83).iFrm.cb2 = (*U$83).iFrm.cb1+(*chan).cPitch;
;** 877	-----------------------    (*U$83).iFrm.cr2 = (*U$83).iFrm.cr1+(*chan).cPitch;
;** 877	-----------------------    goto g21;

           MVK     .S1     114,A31           ; |877| 
||         STW     .D2T2   B5,*+B4(16)       ; |876| 

           LDW     .D1T1   *+A10[A31],A3     ; |877| 
||         LDW     .D2T2   *+B4(8),B31       ; |877| 

           BNOP    .S1     L43,3             ; |877| 

           ADD     .L2X    A3,B31,B5         ; |877| 
||         MVK     .S1     118,A3            ; |807| 

           STW     .D2T2   B5,*+B4(20)       ; |877| 
           ; BRANCH OCCURS {L43}             ; |877| 
DW$L$__configTransfer$20$E:
;** --------------------------------------------------------------------------*
L41:    
DW$L$__configTransfer$21$B:
;**	-----------------------g19:
;** 871	-----------------------    (*U$83).iFrm.cb2 = C$17 = NULL;
;** 872	-----------------------    (*U$83).iFrm.cr2 = C$17;
;** 873	-----------------------    goto g21;

           ZERO    .L2     B5                ; |871| 
||         MVK     .S1     118,A3            ; |807| 

           STW     .D2T2   B5,*+B4(16)       ; |871| 
           STW     .D2T2   B5,*+B4(20)       ; |872| 
           ; BRANCH OCCURS {L43}             ; |873| 
DW$L$__configTransfer$21$E:
;** --------------------------------------------------------------------------*
L42:    
DW$L$__configTransfer$22$B:
;**	-----------------------g20:
;** 836	-----------------------    (*U$83).iFrm.y2 = (*U$83).iFrm.y1;
;** 839	-----------------------    (*U$83).iFrm.cb2 = (*U$83).iFrm.cb1;
;** 841	-----------------------    (*U$83).iFrm.cr2 = (*U$83).iFrm.cr1;

           MVK     .S1     118,A3            ; |807| 
||         STW     .D2T2   B7,*+B4(12)       ; |836| 

           STW     .D2T2   B6,*+B4(16)       ; |839| 
           STW     .D2T2   B5,*+B4(20)       ; |841| 
DW$L$__configTransfer$22$E:
;** --------------------------------------------------------------------------*
L43:    
DW$L$__configTransfer$23$B:
;**	-----------------------g21:
;** 807	-----------------------    U$58 = (*chan).numFrms;
;** 807	-----------------------    if ( (unsigned)(++i) < U$58 ) goto g8;

           LDW     .D1T1   *+A10[A3],A0      ; |807| 
||         ADD     .L1     1,A12,A12         ; |807| 

           NOP             4
           CMPLTU  .L1     A12,A0,A1         ; |807| 

   [ A1]   LDW     .D1T1   *+A11(68),A6      ; |808| 
|| [ A1]   MVK     .S1     132,A3            ; |808| 
|| [ A1]   B       .S2     L37               ; |807| 

   [ A1]   LDW     .D1T2   *+A10[A3],B4      ; |808| 
|| [ A1]   CALL    .S1     _MEM_alloc        ; |808| 

   [ A1]   LDW     .D1T1   *+A11(76),A4      ; |808| 
	.dwpsn	"vportcap_RAW.c",881,0
           NOP             3
           ; BRANCHCC OCCURS {L37}           ; |807| 
DW$L$__configTransfer$23$E:
;** --------------------------------------------------------------------------*
L44:    
           MVK     .S1     428,A3            ; |883| 
           ADD     .L1     A3,A10,A3         ; |883| 
           LDHU    .D1T1   *A3,A3            ; |883| 
           NOP             3
;** --------------------------------------------------------------------------*
L45:    
;**	-----------------------g22:
;** 883	-----------------------    i = ((*chan).mergeFlds == 0)+1;
;** 883	-----------------------    if ( (unsigned)i >= U$58 ) goto g25;
;**  	-----------------------    U$121 = (struct _QUE_Elem **)chan+368;
;**  	-----------------------    U$124 = (struct _QUE_Elem *)chan+364;
;**  	-----------------------    U$128 = (struct _FVID_Frame *)((struct _FVID_Frame (*)[10])chan+44)+(i<<5);
;**  	-----------------------    U$135 = (struct _QUE_Elem **)chan+368;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MVK     .S2     368,B4
||         MVK     .S1     364,A5

           CMPEQ   .L1     A3,0,A3           ; |883| 
||         ADD     .L2X    B4,A10,B5
||         ADD     .S1     A5,A10,A8

           ADD     .L1     1,A3,A4           ; |883| 
||         ADD     .L2X    B4,A10,B4

           CMPLTU  .L1     A4,A0,A0          ; |883| 
||         SHL     .S1     A4,5,A3

   [ A0]   LDW     .D2T2   *B5,B31           ; |141| (P) <0,0>  ^ 
|| [!A0]   ADDAW   .D1     A10,11,A4         ; |887| 
|| [!A0]   MVK     .S1     0x20,A12          ; |888| 
||         ADD     .L1     A3,A10,A3
|| [!A0]   B       .S2     L49               ; |883| 

           ADDAW   .D1     A3,11,A5
|| [!A0]   MVK     .S1     126,A3            ; |892| 
|| [!A0]   MVK     .S2     0xffffffe0,B12
|| [ A0]   MV      .L1X    B4,A7

   [!A0]   LDW     .D1T1   *+A10[A3],A7      ; |892| 
|| [!A0]   MVK     .S1     124,A5            ; |888| 
|| [!A0]   MVK     .S2     416,B5
|| [!A0]   MVK     .L1     0x1,A13           ; |892| 

   [ A0]   MV      .L2X    A5,B4
|| [!A0]   MVK     .S1     0xffff8000,A17
|| [!A0]   MVK     .S2     0x17c,B7

   [!A0]   MVK     .S1     392,A8
   [!A0]   MVKL    .S1     0xa00002,A16
           ; BRANCHCC OCCURS {L49}           ; |883| 
;** --------------------------------------------------------------------------*
;**	-----------------------g24:
;** 141	-----------------------    prev = *U$121;  // [4]
;** 143	-----------------------    (*(struct _QUE_Elem *)U$128).next = U$124;  // [4]
;** 144	-----------------------    (*(struct _QUE_Elem *)U$128).prev = prev;  // [4]
;** 145	-----------------------    (*prev).next = (struct _QUE_Elem *)U$128;  // [4]
;** 146	-----------------------    *U$135 = (struct _QUE_Elem *)U$128;  // [4]
;** 146	-----------------------    U$128 += 32;  // [4]
;** 883	-----------------------    if ( (unsigned)(++i) < (*chan).numFrms ) goto g24;

           MVK     .L1     0x1,A0
||         STW     .D2T2   B31,*+B4(4)       ; |144| (P) <0,5>  ^ 
||         MVC     .S2     CSR,B7
||         MV      .D1     A10,A6
||         MVK     .S1     118,A9            ; |883| (P) <0,7> 

   [ A0]   STW     .D1T1   A8,*A5            ; |143| (P) <0,6> 
|| [ A0]   STW     .D2T2   B4,*B31           ; |145| (P) <0,6>  ^ 
||         AND     .L2     -2,B7,B6

           STW     .D1T1   A5,*A7            ; |146| (P) <0,7>  ^ 
||         MVC     .S2     B6,CSR            ; interrupts off

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 883
;*      Loop opening brace source line   : 883
;*      Loop closing brace source line   : 886
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
L46:    ; PIPED LOOP PROLOG

           ZERO    .L1     A3
|| [ A0]   LDW     .D1T1   *+A6[A9],A3       ; |883| (P) <0,8> 

           LDW     .D2T2   *B5,B6            ; |141| (P) <1,0>  ^ 
	.dwpsn	"vportcap_RAW.c",883,0
           NOP             1
;** --------------------------------------------------------------------------*
L47:    ; PIPED LOOP KERNEL
DW$L$__configTransfer$28$B:
           NOP             1
           ADD     .L1     1,A4,A4           ; |883| <0,12> 

           ADDK    .S2     32,B4             ; |146| <0,13> 
||         CMPLTU  .L1     A4,A3,A0          ; |883| <0,13> 

           ADDK    .S1     32,A5             ; |146| <0,14> Define a twin register
|| [ A0]   B       .S2     L47               ; |883| <0,14> 
|| [ A0]   STW     .D2T2   B6,*+B4(4)        ; |144| <1,5>  ^ 

   [ A0]   STW     .D1T1   A8,*A5            ; |143| <1,6> 
|| [ A0]   STW     .D2T2   B4,*B6            ; |145| <1,6>  ^ 

           MVK     .S1     118,A9            ; |883| <1,7> 
|| [ A0]   STW     .D1T1   A5,*A7            ; |146| <1,7>  ^ 

   [ A0]   LDW     .D1T1   *+A6[A9],A3       ; |883| <1,8> 
           LDW     .D2T2   *B5,B6            ; |141| <2,0>  ^ 
	.dwpsn	"vportcap_RAW.c",886,0
           NOP             1
DW$L$__configTransfer$28$E:
;** --------------------------------------------------------------------------*
L48:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVK     .S1     0x20,A12          ; |888| 
           MV      .L1     A6,A10
           MVK     .S1     126,A3            ; |892| 

           LDW     .D1T1   *+A10[A3],A7      ; |892| 
||         MVKL    .S1     0xa00002,A16
||         MVC     .S2     B7,CSR            ; interrupts on

           MVK     .S1     0xffff8000,A17
||         MVK     .S2     0xffffffe0,B12

           MVK     .S2     0x17c,B7
||         MVK     .S1     392,A8

           ADDAW   .D1     A10,11,A4         ; |887| 
||         MVK     .S2     416,B5
||         MVK     .S1     124,A5            ; |888| 
||         MVK     .L1     0x1,A13           ; |892| 

;** --------------------------------------------------------------------------*
L49:    
;**	-----------------------g25:
;** 887	-----------------------    (*chan).curViop = (struct _FVID_Frame *)((struct _FVID_Frame (*)[10])chan+44);
;** 888	-----------------------    (*chan).nextViop = (struct _FVID_Frame *)((struct _FVID_Frame (*)[10])chan+44)+32;
;** 892	-----------------------    ((*chan).mode&2) ? (numEdmaChans = 1) : (numEdmaChans = 3);
;**  	-----------------------    l$1 = numEdmaChans;
;**  	-----------------------    K$187 = (-32);
;**  	-----------------------    U$148 = (int (*)[3])chan+416;
;**  	-----------------------    U$151 = &U$148[-1];
;**  	-----------------------    K$156 = 983040;
;**  	-----------------------    K$162 = 24576;
;**  	-----------------------    K$165 = 10485762;
;**  	-----------------------    K$168 = 11534338;
;**  	-----------------------    U$174 = (unsigned (*)[3])chan+(K$173 = 380);
;**  	-----------------------    U$175 = &U$174[-1];
;**  	-----------------------    U$219 = (unsigned *)chan+28;
;**  	-----------------------    K$228 = 0xffff8000u;
;**  	-----------------------    U$242 = (unsigned (*)[6])chan+392;
;**  	-----------------------    K$252 = 0x10000000u;
;**  	-----------------------    U$150 = 0;
;** 895	-----------------------    i = 0;
;** 888	-----------------------    K$43 = 32u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 3, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L2X    A10,B4
||         ZERO    .S2     B6
||         ADDAW   .D1     A10,19,A31        ; |888| 
||         ZERO    .D2     B16
||         MVKL    .S1     0xb00002,A9
||         ADD     .L1X    B7,A10,A14

           AND     .L1     2,A7,A0           ; |892| 
||         ADD     .L2X    B5,A10,B11
||         MVK     .S1     123,A6            ; |887| 
||         ADD     .D2     B4,28,B8
||         MVKH    .S2     0xf0000,B6
||         STW     .D1T1   A31,*+A10[A5]     ; |888| 

   [!A0]   MVK     .L1     0x3,A13           ; |892| 
||         MVKH    .S2     0x10000000,B16
||         MVKH    .S1     0xb00002,A9
||         STW     .D1T1   A4,*+A10[A6]      ; |887| 
||         SUB     .L2     B11,4,B9

           MVK     .S2     0x6000,B17
||         MVKH    .S1     0xa00002,A16
||         SUB     .L1     A14,4,A19
||         ZERO    .D1     A18               ; |895| 

           MV      .L2X    A13,B0
||         ADD     .L1     A8,A10,A8
||         ZERO    .S1     A1

;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",895,0

           LDW     .D1T1   *+A11(80),A4      ; |896| 
||         LDW     .D2T2   *++B9,B4          ; |896| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L50:    
DW$L$__configTransfer$33$B:
;**	-----------------------g26:
;** 896	-----------------------    C$16 = *(++U$151);
;** 896	-----------------------    C$15 = (int)((unsigned)(*params).edmaPri<<29)|(int)((unsigned)C$16<<16)&K$156|(int)((unsigned)C$16<<9)&K$162;
;** 896	-----------------------    optFld1 = C$15|K$165;
;** 914	-----------------------    optFld2 = C$15|K$168;
;** 559	-----------------------    chaNum = C$14 = _extu(*(++U$175), 8u, 24u);  // [22]
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$3 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$3;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 356	-----------------------    if ( (int)C$14 < (int)K$43 ) goto g28;  // [11]
           LDW     .D1T1   *++A19,A3         ; |559| 
           NOP             3

           SHL     .S1     A4,29,A4          ; |896| 
||         SHL     .S2     B4,16,B5          ; |896| 

           EXTU    .S1     A3,8,24,A3        ; |559| 
||         SHL     .S2     B4,9,B4           ; |896| 
||         AND     .L2     B6,B5,B5          ; |896| 

           AND     .L2     B17,B4,B4         ; |896| 
           OR      .L1X    B5,A4,A4          ; |896| 
           OR      .L1X    B4,A4,A4          ; |896| 

           OR      .L1     A9,A4,A7          ; |914| 
||         OR      .S1     A16,A4,A6         ; |896| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B10,B5,B5         ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S1     0x1a0ffb4,A4      ; |566| 
||         CMPLT   .L1     A3,A12,A0         ; |356| 

           MVKH    .S1     0x1a0ffb4,A4      ; |566| 
|| [!A0]   ADD     .L2X    B12,A3,B5         ; |566| 
|| [ A0]   MVK     .L1     1,A31             ; |565| 
|| [!A0]   MVK     .D2     1,B7              ; |566| 
|| [ A0]   MVKL    .S2     0x1a0fff4,B5      ; |565| 

   [ A0]   MVKL    .S1     0x1a0fff4,A4      ; |565| 
|| [!A0]   LDW     .D1T1   *A4,A4            ; |566| 
|| [!A0]   SHL     .S2     B7,B5,B5          ; |566| 

   [ A0]   MVKH    .S1     0x1a0fff4,A4      ; |565| 
|| [!A0]   XOR     .L2     B13,B5,B7         ; |566| 
|| [ A0]   MVKH    .S2     0x1a0fff4,B5      ; |565| 

   [ A0]   LDW     .D1T1   *A4,A5            ; |565| 
|| [ A0]   B       .S2     L51               ; |356| 
|| [ A0]   SHL     .S1     A31,A3,A3         ; |565| 

   [ A0]   XOR     .L1X    B13,A3,A3         ; |565| 
|| [!A0]   MVKL    .S2     0x1a0ffb4,B31     ; |566| 

   [!A0]   BNOP    .S1     L52,2             ; |566| 
   [ A0]   AND     .L1     A3,A5,A3          ; |565| 
           ; BRANCHCC OCCURS {L51}           ; |356| 
DW$L$__configTransfer$33$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$34$B:
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$14+K$187^K$28);  // [22]
;** 566	-----------------------    goto g29;  // [22]

           AND     .L1X    B7,A4,A3          ; |566| 
||         MVKH    .S2     0x1a0ffb4,B31     ; |566| 

           STW     .D2T1   A3,*B31           ; |566| 
           ; BRANCH OCCURS {L52}             ; |566| 
DW$L$__configTransfer$34$E:
;** --------------------------------------------------------------------------*
L51:    
DW$L$__configTransfer$35$B:
;**	-----------------------g28:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<chaNum^K$28);  // [22]
           STW     .D2T1   A3,*B5            ; |565| 
DW$L$__configTransfer$35$E:
;** --------------------------------------------------------------------------*
L52:    
DW$L$__configTransfer$36$B:
;**	-----------------------g29:
;** 570	-----------------------    a$12 = CSR&K$40|gie&1u;  // [22]
;** 360	-----------------------    CSR = a$12;  // [12]
;** 360	-----------------------    tccIntNum = C$13 = *U$151;  // [12]
;** 675	-----------------------    if ( (unsigned)C$13 < K$43 ) goto g31;  // [26]
;** 676	-----------------------    *(volatile unsigned *)0x1a0ffa4u = 1u<<(unsigned)C$13-32u;  // [26]
;** 676	-----------------------    goto g32;  // [26]
;**	-----------------------g31:
;** 675	-----------------------    *(volatile unsigned *)0x1a0ffe4u = 1u<<tccIntNum;  // [26]
;**	-----------------------g32:
;** 933	-----------------------    chaNum = C$12 = _extu(*U$175, 8u, 24u);
;** 618	-----------------------    if ( (int)C$12 < (int)K$43 ) goto g34;  // [23]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$12+K$187;  // [23]
;** 619	-----------------------    goto g35;  // [23]
;**	-----------------------g34:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [23]
;**	-----------------------g35:
;** 936	-----------------------    U$150 ? (thrld = (int)(*chan).cThrld) : (thrld = (int)(*chan).yThrld);
;** 936	-----------------------    CSU$cfgEdma$src = *U$219;
;** 896	-----------------------    K$145 = 0x20000000u;
;** 940	-----------------------    if ( (*chan).mergeFlds ) goto g42;
           MVC     .S2     CSR,B5            ; |570| 

           AND     .L2     B10,B5,B4         ; |570| 
||         AND     .S2     1,B4,B5           ; |570| 

           OR      .L2     B5,B4,B4          ; |570| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D2T2   *B9,B4            ; |360| 
||         MVK     .S1     32,A3             ; |676| 
||         MVK     .L2     1,B7              ; |675| 
||         MVK     .L1     1,A4              ; |676| 
||         ZERO    .D1     A20               ; |896| 

           NOP             2
           MVK     .S1     428,A5            ; |940| 
           MVKH    .S1     0x20000000,A20    ; |896| 
           CMPLTU  .L2X    B4,A12,B1         ; |675| 

   [!B1]   SUB     .L1X    B4,A3,A3          ; |676| 
|| [!B1]   MVKL    .S2     0x1a0ffa4,B5      ; |676| 
|| [ B1]   MVKL    .S1     0x1a0ffe4,A3      ; |675| 

   [ B1]   MVKH    .S1     0x1a0ffe4,A3      ; |675| 
|| [!B1]   MVKH    .S2     0x1a0ffa4,B5      ; |676| 

   [ B1]   SHL     .S2     B7,B4,B4          ; |675| 
|| [!B1]   SHL     .S1     A4,A3,A3          ; |676| 

   [ B1]   STW     .D1T2   B4,*A3            ; |675| 
|| [!B1]   STW     .D2T1   A3,*B5            ; |676| 

           LDW     .D1T1   *A19,A3           ; |933| 
           NOP             4
           EXTU    .S1     A3,8,24,A3        ; |933| 
           CMPLT   .L1     A3,A12,A0         ; |618| 

   [!A0]   MVKL    .S1     0x1a0ffb8,A3      ; |619| 
||         ADD     .L2X    B12,A3,B5         ; |619| 
|| [ A0]   MVKL    .S2     0x1a0fff8,B4      ; |618| 

   [!A0]   SHL     .S2     B7,B5,B4          ; |619| 
|| [!A0]   MVKH    .S1     0x1a0ffb8,A3      ; |619| 

   [ A0]   MVKH    .S2     0x1a0fff8,B4      ; |618| 
|| [ A0]   SHL     .S1     A4,A3,A3          ; |618| 
|| [!A0]   STW     .D1T2   B4,*A3            ; |619| 

           ADD     .L1     A5,A10,A3         ; |940| 
|| [ A0]   STW     .D2T1   A3,*B4            ; |618| 

   [!A1]   MVK     .S1     121,A3            ; |936| 
||         LDHU    .D1T1   *A3,A0            ; |940| 
||         LDW     .D2T2   *B8,B7            ; |936| 

           NOP             1
   [ A1]   MVK     .S1     122,A3            ; |936| 
   [!A1]   LDW     .D1T1   *+A10[A3],A21     ; |936| 
   [ A1]   LDW     .D1T1   *+A10[A3],A21     ; |936| 

   [ A0]   B       .S2     L56               ; |940| 
|| [!A0]   MVK     .S1     119,A3            ; |966| 
|| [!A0]   LDW     .D1T1   *A19,A4           ; |972| 

   [ A0]   MVK     .S1     120,A3            ; |945| 
|| [!A0]   LDW     .D1T1   *+A10[A3],A3      ; |966| 

   [ A0]   LDW     .D1T1   *+A10[A3],A4      ; |945| 
   [ A0]   LDW     .D1T1   *A19,A3           ; |953| 
           NOP             1

   [!A0]   CMPEQ   .L2X    A4,B16,B18        ; |742| 
|| [!A0]   CMPEQ   .L1     A4,A20,A6         ; |742| 

           ; BRANCHCC OCCURS {L56}           ; |940| 
DW$L$__configTransfer$36$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$37$B:
;** 965	-----------------------    CSU$cfgEdma$opt = optFld2;
;** 966	-----------------------    CSU$cfgEdma$cnt = (((*chan).numEvents<<15)+K$228|_extu((unsigned)(thrld*2), 16u, 17u))*2u;
;** 967	-----------------------    CSU$cfgEdma$idx = (unsigned)thrld<<19;
;** 968	-----------------------    U$243 = U$242+U$150;
;** 968	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$243;
;** 971	-----------------------    CSU$cfgEdma$dst = *((int *)U$219+24);
;** 972	-----------------------    hEdma = *U$175;
;**  	-----------------------    U$295 = (union $$fake2 *)(struct _FVID_Frame (*)[10])chan+U$150+84;
;** 742	-----------------------    if ( (hEdma == K$145)|(hEdma == K$252) ) goto g38;  // [27]

           SHL     .S1     A3,15,A3          ; |966| 
||         MV      .L2X    A10,B4

           OR      .L2X    B18,A6,B1         ; |742| 
||         ADD     .L1     A17,A3,A5         ; |966| 
||         EXTU    .S1     A21,17,17,A31     ; |966| 
||         ADD     .D1     A1,A8,A3          ; |968| 

   [ B1]   BNOP    .S1     L53,4             ; |742| 
||         OR      .L1     A31,A5,A5         ; |966| 
||         ADD     .L2X    A1,B4,B19
||         LDHU    .D1T1   *A3,A6            ; |968| 
||         LDW     .D2T2   *+B8(24),B4       ; |971| 

           ADD     .L1     A5,A5,A5          ; |966| 
||         ADDAW   .D2     B19,21,B22
||         SHL     .S2X    A21,19,B5         ; |967| 

           ; BRANCHCC OCCURS {L53}           ; |742| 
DW$L$__configTransfer$37$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$38$B:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$13 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$13;  // [11]
;** 756	-----------------------    C$11 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [27]
;** 756	-----------------------    *(volatile unsigned *)C$11 = 0u;  // [27]
;** 757	-----------------------    *((volatile unsigned *)C$11+4) = CSU$cfgEdma$src;  // [27]
;** 758	-----------------------    *((volatile unsigned *)C$11+8) = CSU$cfgEdma$cnt;  // [27]
;** 759	-----------------------    *((volatile unsigned *)C$11+12) = CSU$cfgEdma$dst;  // [27]
;** 760	-----------------------    *((volatile unsigned *)C$11+16) = CSU$cfgEdma$idx;  // [27]
;** 761	-----------------------    *((volatile unsigned *)C$11+20) = CSU$cfgEdma$rld;  // [27]
;** 762	-----------------------    *(volatile unsigned *)C$11 = optFld2;  // [27]
;** 360	-----------------------    a$14 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$14;  // [12]
;** 360	-----------------------    goto g39;  // [12]
           MVC     .S2     CSR,B18           ; |354| 

           AND     .L2     1,B18,B19         ; |354| 
||         MVC     .S2     CSR,B18           ; |355| 

           AND     .L2     B10,B18,B18       ; |355| 
           MVC     .S2     B18,CSR           ; |355| 

           EXTU    .S1     A4,16,16,A21      ; |756| 
||         ZERO    .L1     A4                ; |756| 
||         ZERO    .D1     A31               ; |756| 

           MVKH    .S1     0x1a00000,A4      ; |756| 
           ADD     .L1     A4,A21,A4         ; |756| 
           STW     .D1T1   A31,*A4           ; |756| 
           STW     .D1T2   B7,*+A4(4)        ; |757| 
           STW     .D1T1   A5,*+A4(8)        ; |758| 
           STW     .D1T2   B4,*+A4(12)       ; |759| 
           STW     .D1T2   B5,*+A4(16)       ; |760| 
           STW     .D1T1   A6,*+A4(20)       ; |761| 

           STW     .D1T1   A7,*A4            ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B19,B18         ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B18,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L54,4             ; |360| 
||         LDW     .D1T1   *A3,A3            ; |974| 

           CMPEQ   .L1     A3,A20,A4         ; |742| 
||         CMPEQ   .L2X    A3,B16,B4         ; |742| 

           ; BRANCH OCCURS {L54}             ; |360| 
DW$L$__configTransfer$38$E:
;** --------------------------------------------------------------------------*
L53:    
DW$L$__configTransfer$39$B:
;**	-----------------------g38:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$15 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$15;  // [11]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [28]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [28]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [28]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [28]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [28]
;** 360	-----------------------    a$16 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$16;  // [12]
           MVC     .S2     CSR,B18           ; |354| 

           AND     .L2     1,B18,B18         ; |354| 
||         MVC     .S2     CSR,B19           ; |355| 

           AND     .L2     B10,B19,B19       ; |355| 
           MVC     .S2     B19,CSR           ; |355| 

           MVKL    .S2     0x2000004,B21     ; |830| 
||         MVKL    .S1     0x2000008,A4      ; |831| 

           MVKH    .S2     0x2000004,B21     ; |830| 
||         MVKH    .S1     0x2000008,A4      ; |831| 

           MVKL    .S2     0x200000c,B20     ; |832| 
||         STW     .D2T2   B7,*B21           ; |830| 
||         MVKL    .S1     0x2000020,A31     ; |834| 

           MVKH    .S2     0x200000c,B20     ; |832| 
||         STW     .D1T1   A5,*A4            ; |831| 
||         MVKH    .S1     0x2000020,A31     ; |834| 

           MVKL    .S2     0x2000010,B19     ; |833| 
||         STW     .D2T2   B4,*B20           ; |832| 

           MVKH    .S2     0x2000010,B19     ; |833| 
           STW     .D2T2   B5,*B19           ; |833| 

           STW     .D1T1   A7,*A31           ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B18,B18         ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B18,B4,B4         ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *A3,A3            ; |974| 
           NOP             4

           CMPEQ   .L2X    A3,B16,B4         ; |742| 
||         CMPEQ   .L1     A3,A20,A4         ; |742| 

DW$L$__configTransfer$39$E:
;** --------------------------------------------------------------------------*
L54:    
DW$L$__configTransfer$40$B:
;**	-----------------------g39:
;** 973	-----------------------    CSU$cfgEdma$dst = *U$295;
;** 974	-----------------------    hEdma = *U$243;
;** 742	-----------------------    if ( (hEdma == K$145)|(hEdma == K$252) ) goto g41;  // [27]
           NOP             1

           LDW     .D2T2   *B22,B4           ; |973| 
||         OR      .L2X    B4,A4,B1          ; |742| 

   [ B1]   BNOP    .S1     L55,5             ; |742| 
           ; BRANCHCC OCCURS {L55}           ; |742| 
DW$L$__configTransfer$40$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$41$B:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$17 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$17;  // [11]
;** 756	-----------------------    C$10 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [27]
;** 756	-----------------------    *(volatile unsigned *)C$10 = 0u;  // [27]
;** 757	-----------------------    *((volatile unsigned *)C$10+4) = CSU$cfgEdma$src;  // [27]
;** 758	-----------------------    *((volatile unsigned *)C$10+8) = CSU$cfgEdma$cnt;  // [27]
;** 759	-----------------------    *((volatile unsigned *)C$10+12) = CSU$cfgEdma$dst;  // [27]
;** 760	-----------------------    *((volatile unsigned *)C$10+16) = CSU$cfgEdma$idx;  // [27]
;** 761	-----------------------    *((volatile unsigned *)C$10+20) = CSU$cfgEdma$rld;  // [27]
;** 762	-----------------------    *(volatile unsigned *)C$10 = CSU$cfgEdma$opt;  // [27]
;** 360	-----------------------    a$18 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$18;  // [12]
;** 360	-----------------------    goto g51;  // [12]
           MVC     .S2     CSR,B18           ; |354| 

           AND     .L2     1,B18,B19         ; |354| 
||         MVC     .S2     CSR,B18           ; |355| 

           AND     .L2     B10,B18,B18       ; |355| 
           MVC     .S2     B18,CSR           ; |355| 

           EXTU    .S1     A3,16,16,A4       ; |756| 
||         ZERO    .L1     A3                ; |756| 
||         ZERO    .D1     A31               ; |756| 

           MVKH    .S1     0x1a00000,A3      ; |756| 
           ADD     .L1     A3,A4,A3          ; |756| 
           STW     .D1T1   A31,*A3           ; |756| 
           STW     .D1T2   B7,*+A3(4)        ; |757| 
           STW     .D1T1   A5,*+A3(8)        ; |758| 
           STW     .D1T2   B4,*+A3(12)       ; |759| 
           STW     .D1T2   B5,*+A3(16)       ; |760| 
           STW     .D1T1   A6,*+A3(20)       ; |761| 

           STW     .D1T1   A7,*A3            ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B19,B5          ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L62,5             ; |360| 
||         SUB     .L2     B0,1,B0           ; |895| 

           ; BRANCH OCCURS {L62}             ; |360| 
DW$L$__configTransfer$41$E:
;** --------------------------------------------------------------------------*
L55:    
DW$L$__configTransfer$42$B:
;**	-----------------------g41:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$19 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$19;  // [11]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [28]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [28]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [28]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [28]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [28]
;** 360	-----------------------    a$20 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$20;  // [12]
;** 360	-----------------------    goto g51;  // [12]
           MVC     .S2     CSR,B18           ; |354| 

           AND     .L2     1,B18,B21         ; |354| 
||         MVC     .S2     CSR,B18           ; |355| 

           AND     .L2     B10,B18,B18       ; |355| 
           MVC     .S2     B18,CSR           ; |355| 

           MVKL    .S2     0x2000004,B19     ; |830| 
||         MVKL    .S1     0x2000008,A3      ; |831| 

           MVKH    .S2     0x2000004,B19     ; |830| 
||         MVKH    .S1     0x2000008,A3      ; |831| 

           MVKL    .S2     0x200000c,B18     ; |832| 
||         STW     .D2T2   B7,*B19           ; |830| 
||         MVKL    .S1     0x2000020,A31     ; |834| 

           MVKH    .S2     0x200000c,B18     ; |832| 
||         STW     .D1T1   A5,*A3            ; |831| 
||         MVKH    .S1     0x2000020,A31     ; |834| 

           MVKL    .S2     0x2000010,B20     ; |833| 
||         STW     .D2T2   B4,*B18           ; |832| 

           MVKH    .S2     0x2000010,B20     ; |833| 
           STW     .D2T2   B5,*B20           ; |833| 

           STW     .D1T1   A7,*A31           ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B21,B5          ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L62,5             ; |360| 
||         SUB     .L2     B0,1,B0           ; |895| 

           ; BRANCH OCCURS {L62}             ; |360| 
DW$L$__configTransfer$42$E:
;** --------------------------------------------------------------------------*
L56:    
DW$L$__configTransfer$43$B:
;**	-----------------------g42:
;** 945	-----------------------    U$234 = _extu((unsigned)(thrld*2), 16u, 17u);
;** 945	-----------------------    CSU$cfgEdma$cnt = (((*chan).numEventsFld1<<15)+K$228|U$234)*2u;
;** 946	-----------------------    CSU$cfgEdma$idx = (unsigned)thrld<<20;
;** 950	-----------------------    U$333 = (i<<3)+(unsigned (*)[6])chan+396;
;** 950	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$333;
;** 951	-----------------------    CSU$cfgEdma$opt = optFld1;
;** 952	-----------------------    CSU$cfgEdma$dst = *((int *)U$219+24);
;** 953	-----------------------    hEdma = *U$175;
;**  	-----------------------    U$355 = (i<<3)+U$242;
;** 742	-----------------------    if ( (hEdma == K$145)|(hEdma == K$252) ) goto g44;  // [27]

           MVK     .S2     396,B18           ; |950| 
||         ADDAD   .D1     A10,A18,A31       ; |950| 
||         EXTU    .S1     A21,17,17,A24     ; |945| 
||         MV      .L2X    A18,B4

           SHL     .S1     A4,15,A4          ; |945| 
||         MV      .L2X    A8,B5

           CMPEQ   .L1     A3,A20,A30        ; |742| 
||         CMPEQ   .L2X    A3,B16,B19        ; |742| 
||         ADD     .S1     A17,A4,A5         ; |945| 
||         ADD     .D1X    B18,A31,A22       ; |950| 
||         LDW     .D2T2   *+B8(24),B18      ; |952| 

           OR      .L1     A24,A5,A4         ; |945| 
||         LDHU    .D1T1   *A22,A5           ; |950| 
||         ADDAD   .D2     B5,B4,B20
||         SHL     .S1     A21,20,A23        ; |946| 

           OR      .L2X    B19,A30,B1        ; |742| 
||         ADD     .L1     A4,A4,A25         ; |945| 

   [ B1]   BNOP    .S1     L57,5             ; |742| 
           ; BRANCHCC OCCURS {L57}           ; |742| 
DW$L$__configTransfer$43$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$44$B:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$4 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$4;  // [11]
;** 756	-----------------------    C$9 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [27]
;** 756	-----------------------    *(volatile unsigned *)C$9 = 0u;  // [27]
;** 757	-----------------------    *((volatile unsigned *)C$9+4) = CSU$cfgEdma$src;  // [27]
;** 758	-----------------------    *((volatile unsigned *)C$9+8) = CSU$cfgEdma$cnt;  // [27]
;** 759	-----------------------    *((volatile unsigned *)C$9+12) = CSU$cfgEdma$dst;  // [27]
;** 760	-----------------------    *((volatile unsigned *)C$9+16) = CSU$cfgEdma$idx;  // [27]
;** 761	-----------------------    *((volatile unsigned *)C$9+20) = CSU$cfgEdma$rld;  // [27]
;** 762	-----------------------    *(volatile unsigned *)C$9 = optFld1;  // [27]
;** 360	-----------------------    a$5 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$5;  // [12]
;** 360	-----------------------    goto g45;  // [12]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B5           ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B10,B4,B4         ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           EXTU    .S1     A3,16,16,A4       ; |756| 
||         ZERO    .L1     A3                ; |756| 
||         ZERO    .D1     A31               ; |756| 

           MVKH    .S1     0x1a00000,A3      ; |756| 
           ADD     .L1     A3,A4,A3          ; |756| 
           STW     .D1T1   A31,*A3           ; |756| 
           STW     .D1T2   B7,*+A3(4)        ; |757| 
           STW     .D1T1   A25,*+A3(8)       ; |758| 
           STW     .D1T2   B18,*+A3(12)      ; |759| 
           STW     .D1T1   A23,*+A3(16)      ; |760| 
           STW     .D1T1   A5,*+A3(20)       ; |761| 

           STW     .D1T1   A6,*A3            ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B5,B5           ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L58,4             ; |360| 
||         LDW     .D2T2   *B20,B4           ; |954| 

           CMPEQ   .L2     B4,B16,B5         ; |742| 
||         CMPEQ   .L1X    B4,A20,A3         ; |742| 

           ; BRANCH OCCURS {L58}             ; |360| 
DW$L$__configTransfer$44$E:
;** --------------------------------------------------------------------------*
L57:    
DW$L$__configTransfer$45$B:
;**	-----------------------g44:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$6 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$6;  // [11]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [28]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [28]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [28]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [28]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [28]
;** 360	-----------------------    a$7 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$7;  // [12]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B5           ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B10,B4,B4         ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S2     0x2000004,B19     ; |830| 
||         MVKL    .S1     0x2000008,A3      ; |831| 

           MVKH    .S2     0x2000004,B19     ; |830| 
||         MVKH    .S1     0x2000008,A3      ; |831| 

           MVKL    .S2     0x200000c,B4      ; |832| 
||         STW     .D2T2   B7,*B19           ; |830| 
||         MVKL    .S1     0x2000010,A4      ; |833| 

           MVKH    .S2     0x200000c,B4      ; |832| 
||         STW     .D1T1   A25,*A3           ; |831| 
||         MVKH    .S1     0x2000010,A4      ; |833| 

           STW     .D2T2   B18,*B4           ; |832| 
||         MVKL    .S1     0x2000020,A21     ; |834| 

           STW     .D1T1   A23,*A4           ; |833| 
||         MVKH    .S1     0x2000020,A21     ; |834| 

           STW     .D1T1   A6,*A21           ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B5,B5           ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *B20,B4           ; |954| 
           NOP             4

           CMPEQ   .L2     B4,B16,B5         ; |742| 
||         CMPEQ   .L1X    B4,A20,A3         ; |742| 

DW$L$__configTransfer$45$E:
;** --------------------------------------------------------------------------*
L58:    
DW$L$__configTransfer$46$B:
;**	-----------------------g45:
;** 954	-----------------------    hEdma = *U$355;
;** 742	-----------------------    if ( (hEdma == K$145)|(hEdma == K$252) ) goto g47;  // [27]
           NOP             1
           OR      .L1X    B5,A3,A0          ; |742| 
   [ A0]   BNOP    .S1     L59,5             ; |742| 
           ; BRANCHCC OCCURS {L59}           ; |742| 
DW$L$__configTransfer$46$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$47$B:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$8 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$8;  // [11]
;** 756	-----------------------    C$8 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [27]
;** 756	-----------------------    *(volatile unsigned *)C$8 = 0u;  // [27]
;** 757	-----------------------    *((volatile unsigned *)C$8+4) = CSU$cfgEdma$src;  // [27]
;** 758	-----------------------    *((volatile unsigned *)C$8+8) = CSU$cfgEdma$cnt;  // [27]
;** 759	-----------------------    *((volatile unsigned *)C$8+12) = CSU$cfgEdma$dst;  // [27]
;** 760	-----------------------    *((volatile unsigned *)C$8+16) = CSU$cfgEdma$idx;  // [27]
;** 761	-----------------------    *((volatile unsigned *)C$8+20) = CSU$cfgEdma$rld;  // [27]
;** 762	-----------------------    *(volatile unsigned *)C$8 = CSU$cfgEdma$opt;  // [27]
;** 360	-----------------------    a$9 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$9;  // [12]
;** 360	-----------------------    goto g48;  // [12]
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B19          ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B10,B5,B5         ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           ZERO    .L1     A3                ; |756| 
||         EXTU    .S2     B4,16,16,B4       ; |756| 
||         ZERO    .S1     A4                ; |756| 

           MVKH    .S1     0x1a00000,A3      ; |756| 
           ADD     .L1X    A3,B4,A3          ; |756| 
           STW     .D1T1   A4,*A3            ; |756| 
           STW     .D1T2   B7,*+A3(4)        ; |757| 
           STW     .D1T1   A25,*+A3(8)       ; |758| 
           STW     .D1T2   B18,*+A3(12)      ; |759| 
           STW     .D1T1   A23,*+A3(16)      ; |760| 
           STW     .D1T1   A5,*+A3(20)       ; |761| 

           STW     .D1T1   A6,*A3            ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B19,B5          ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           MVK     .S1     120,A3            ; |957| 
||         B       .S2     L60               ; |360| 

           LDW     .D1T1   *+A10[A3],A5      ; |957| 
||         MVK     .S1     119,A31           ; |957| 

           LDW     .D1T1   *A22,A3           ; |960| 
           LDW     .D1T1   *+A10[A31],A4     ; |957| 
           NOP             2
           ; BRANCH OCCURS {L60}             ; |360| 
DW$L$__configTransfer$47$E:
;** --------------------------------------------------------------------------*
L59:    
DW$L$__configTransfer$48$B:
;**	-----------------------g47:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$10 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$10;  // [11]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [28]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [28]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [28]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [28]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [28]
;** 360	-----------------------    a$11 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$11;  // [12]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B5           ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B10,B4,B4         ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S2     0x2000004,B19     ; |830| 
||         MVKL    .S1     0x2000008,A5      ; |831| 

           MVKH    .S2     0x2000004,B19     ; |830| 
||         MVKH    .S1     0x2000008,A5      ; |831| 

           MVKL    .S2     0x200000c,B4      ; |832| 
||         STW     .D2T2   B7,*B19           ; |830| 
||         MVKL    .S1     0x2000010,A4      ; |833| 

           MVKH    .S2     0x200000c,B4      ; |832| 
||         STW     .D1T1   A25,*A5           ; |831| 
||         MVKH    .S1     0x2000010,A4      ; |833| 

           STW     .D2T2   B18,*B4           ; |832| 
||         MVKL    .S1     0x2000020,A3      ; |834| 

           STW     .D1T1   A23,*A4           ; |833| 
||         MVKH    .S1     0x2000020,A3      ; |834| 

           STW     .D1T1   A6,*A3            ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B5,B5           ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           MVK     .S1     120,A3            ; |957| 

           LDW     .D1T1   *+A10[A3],A5      ; |957| 
||         MVK     .S1     119,A31           ; |957| 

           LDW     .D1T1   *A22,A3           ; |960| 
           LDW     .D1T1   *+A10[A31],A4     ; |957| 
           NOP             2
DW$L$__configTransfer$48$E:
;** --------------------------------------------------------------------------*
L60:    
DW$L$__configTransfer$49$B:
;**	-----------------------g48:
;** 956	-----------------------    CSU$cfgEdma$opt = optFld2;
;** 957	-----------------------    CSU$cfgEdma$cnt = (((*chan).numEvents-(*chan).numEventsFld1<<15)+K$228|U$234)*2u;
;** 958	-----------------------    CSU$cfgEdma$dst = *((int *)U$219+36);
;** 959	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$355;
;** 960	-----------------------    hEdma = *U$333;
;** 742	-----------------------    if ( (hEdma == K$145)|(hEdma == K$252) ) goto g50;  // [27]
           LDW     .D2T2   *+B8(36),B4       ; |958| 

           CMPEQ   .L1     A3,A20,A6         ; |742| 
||         CMPEQ   .L2X    A3,B16,B5         ; |742| 

           SUB     .L1     A4,A5,A4          ; |957| 
||         MV      .S1     A7,A5             ; |956| 

           OR      .L2X    B5,A6,B1          ; |742| 
||         SHL     .S1     A4,15,A4          ; |957| 
||         LDHU    .D2T2   *B20,B5           ; |959| 

   [ B1]   BNOP    .S1     L61,3             ; |742| 
||         ADD     .L1     A17,A4,A4         ; |957| 

           OR      .L1     A24,A4,A4         ; |957| 
           ADD     .L1     A4,A4,A4          ; |957| 
           ; BRANCHCC OCCURS {L61}           ; |742| 
DW$L$__configTransfer$49$E:
;** --------------------------------------------------------------------------*
DW$L$__configTransfer$50$B:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$21 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$21;  // [11]
;** 756	-----------------------    C$7 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [27]
;** 756	-----------------------    *(volatile unsigned *)C$7 = 0u;  // [27]
;** 757	-----------------------    *((volatile unsigned *)C$7+4) = CSU$cfgEdma$src;  // [27]
;** 758	-----------------------    *((volatile unsigned *)C$7+8) = CSU$cfgEdma$cnt;  // [27]
;** 759	-----------------------    *((volatile unsigned *)C$7+12) = CSU$cfgEdma$dst;  // [27]
;** 760	-----------------------    *((volatile unsigned *)C$7+16) = CSU$cfgEdma$idx;  // [27]
;** 761	-----------------------    *((volatile unsigned *)C$7+20) = CSU$cfgEdma$rld;  // [27]
;** 762	-----------------------    *(volatile unsigned *)C$7 = optFld2;  // [27]
;** 360	-----------------------    a$22 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$22;  // [12]
;** 360	-----------------------    goto g51;  // [12]
           MVC     .S2     CSR,B18           ; |354| 

           AND     .L2     1,B18,B19         ; |354| 
||         MVC     .S2     CSR,B18           ; |355| 

           AND     .L2     B10,B18,B18       ; |355| 
           MVC     .S2     B18,CSR           ; |355| 

           EXTU    .S1     A3,16,16,A5       ; |756| 
||         ZERO    .L1     A3                ; |756| 
||         ZERO    .D1     A31               ; |756| 

           MVKH    .S1     0x1a00000,A3      ; |756| 
           ADD     .L1     A3,A5,A3          ; |756| 
           STW     .D1T1   A31,*A3           ; |756| 
           STW     .D1T2   B7,*+A3(4)        ; |757| 
           STW     .D1T1   A4,*+A3(8)        ; |758| 
           STW     .D1T2   B4,*+A3(12)       ; |759| 
           STW     .D1T1   A23,*+A3(16)      ; |760| 
           STW     .D1T2   B5,*+A3(20)       ; |761| 

           STW     .D1T1   A7,*A3            ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B19,B5          ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           B       .S1     L63               ; |360| 
||         SUB     .L2     B0,1,B0           ; |895| 
||         ADD     .S2     4,B8,B8           ; |895| 
||         ADD     .L1     1,A18,A18         ; |895| 
||         ADD     .D1     4,A1,A1           ; |895| 

   [ B0]   BNOP    .S1     L50,4             ; |895| 
           ; BRANCH OCCURS {L63}             ; |360| 
DW$L$__configTransfer$50$E:
;** --------------------------------------------------------------------------*
L61:    
DW$L$__configTransfer$51$B:
;**	-----------------------g50:
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$23 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$23;  // [11]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [28]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [28]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [28]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [28]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [28]
;** 360	-----------------------    a$24 = CSR&K$40|gie&1u;  // [12]
;** 360	-----------------------    CSR = a$24;  // [12]
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B5           ; |354| 
||         MVC     .S2     CSR,B18           ; |355| 

           AND     .L2     B10,B18,B18       ; |355| 
           MVC     .S2     B18,CSR           ; |355| 

           MVKL    .S2     0x2000004,B19     ; |830| 
||         MVKL    .S1     0x2000008,A7      ; |831| 

           MVKH    .S2     0x2000004,B19     ; |830| 
||         MVKH    .S1     0x2000008,A7      ; |831| 

           MVKL    .S2     0x200000c,B18     ; |832| 
||         STW     .D2T2   B7,*B19           ; |830| 
||         MVKL    .S1     0x2000010,A6      ; |833| 

           MVKH    .S2     0x200000c,B18     ; |832| 
||         STW     .D1T1   A4,*A7            ; |831| 
||         MVKH    .S1     0x2000010,A6      ; |833| 

           STW     .D2T2   B4,*B18           ; |832| 
||         MVKL    .S1     0x2000020,A3      ; |834| 

           STW     .D1T1   A23,*A6           ; |833| 
||         MVKH    .S1     0x2000020,A3      ; |834| 

           STW     .D1T1   A5,*A3            ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B5,B5           ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           SUB     .L2     B0,1,B0           ; |895| 
DW$L$__configTransfer$51$E:
;** --------------------------------------------------------------------------*
L62:    
DW$L$__configTransfer$52$B:

   [ B0]   BNOP    .S1     L50,4             ; |895| 
||         ADD     .L2     4,B8,B8           ; |895| 
||         ADD     .L1     1,A18,A18         ; |895| 
||         ADD     .D1     4,A1,A1           ; |895| 

DW$L$__configTransfer$52$E:
;** --------------------------------------------------------------------------*
L63:    
DW$L$__configTransfer$53$B:
;**	-----------------------g51:
;** 895	-----------------------    U$150 += 4;
;** 895	-----------------------    ++U$219;
;** 895	-----------------------    ++i;
;** 895	-----------------------    if ( --l$1 ) goto g26;
;** 978	-----------------------    EDMA_intHook(*U$148, &captureEdmaISR);
	.dwpsn	"vportcap_RAW.c",976,0

   [ B0]   LDW     .D1T1   *+A11(80),A4      ; |896| 
|| [ B0]   LDW     .D2T2   *++B9,B4          ; |896| 
|| [!B0]   MVKL    .S1     _EDMA_intHook,A3  ; |978| 

           ; BRANCHCC OCCURS {L50}           ; |895| 
DW$L$__configTransfer$53$E:
;** --------------------------------------------------------------------------*
;** 983	-----------------------    IRQ_map(8u, (unsigned)(*params).irqId);
;** 984	-----------------------    HWI_dispatchPlug((*params).irqId, (int (*)())&EDMA_intDispatcher, (-1), NULL);
;** 986	-----------------------    tccIntNum = C$6 = *U$148;
;** 675	-----------------------    if ( (unsigned)C$6 < K$43 ) goto g54;  // [26]
;** 676	-----------------------    *(volatile unsigned *)0x1a0ffa4u = 1u<<(unsigned)C$6-32u;  // [26]
;** 676	-----------------------    goto g55;  // [26]
;**	-----------------------g54:
;** 675	-----------------------    *(volatile unsigned *)0x1a0ffe4u = 1u<<tccIntNum;  // [26]
;**	-----------------------g55:
;** 987	-----------------------    tccIntNum = C$5 = *U$148;
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    CSR = CSR&K$40;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 356	-----------------------    if ( (unsigned)C$5 < K$43 ) goto g57;  // [11]
;** 649	-----------------------    *(volatile unsigned *)0x1a0ffa8u = *(volatile unsigned *)0x1a0ffa8u|1u<<(unsigned)C$5-32u;  // [24]
;** 649	-----------------------    goto g58;  // [24]
;**	-----------------------g57:
;** 648	-----------------------    *(volatile unsigned *)0x1a0ffe8u = *(volatile unsigned *)0x1a0ffe8u|1u<<tccIntNum;  // [24]
;**	-----------------------g58:
;** 360	-----------------------    CSR = CSR&K$40|gie&1u;  // [12]
;**  	-----------------------    l$2 = numEdmaChans;
;**  	-----------------------    U$175 = &U$174[-1];
;**  	-----------------------    #pragma MUST_ITERATE(1, 3, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MVKH    .S1     _EDMA_intHook,A3  ; |978| 
||         MVKL    .S2     _captureEdmaISR,B4 ; |978| 

           MVKH    .S2     _captureEdmaISR,B4 ; |978| 
           CALL    .S2X    A3                ; |978| 
           LDW     .D2T1   *B11,A4           ; |978| 
           ADDKPC  .S2     RL18,B3,3         ; |978| 
RL18:      ; CALL OCCURS {_EDMA_intHook}     ; |978| 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _IRQ_map,A3       ; |983| 
           MVKH    .S1     _IRQ_map,A3       ; |983| 
           LDW     .D1T2   *+A11(84),B4      ; |983| 
           CALL    .S2X    A3                ; |983| 
           ADDKPC  .S2     RL19,B3,3         ; |983| 
           MVK     .L1     0x8,A4            ; |983| 
RL19:      ; CALL OCCURS {_IRQ_map}          ; |983| 
           CALL    .S1     _HWI_dispatchPlug ; |984| 
           LDW     .D1T1   *+A11(84),A4      ; |984| 
           MVKL    .S2     _EDMA_intDispatcher,B4 ; |984| 
           MVKH    .S2     _EDMA_intDispatcher,B4 ; |984| 
           MVK     .L1     0xffffffff,A6     ; |984| 

           ZERO    .L2     B6                ; |984| 
||         ADDKPC  .S2     RL20,B3,0         ; |984| 

RL20:      ; CALL OCCURS {_HWI_dispatchPlug}  ; |984| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *B11,B4           ; |986| 
           MVKL    .S2     0x1a0ffa4,B5      ; |676| 
           MVK     .S2     32,B6             ; |676| 
           MVK     .L1     1,A4              ; |675| 

           MVKH    .S2     0x1a0ffa4,B5      ; |676| 
||         MVKL    .S1     0x1a0ffe4,A3      ; |675| 

           MVK     .L2     1,B6              ; |676| 
||         SUB     .D2     B4,B6,B4          ; |676| 
||         SHL     .S2X    A4,B4,B7          ; |675| 
||         CMPLTU  .L1X    B4,A12,A0         ; |675| 
||         MVKH    .S1     0x1a0ffe4,A3      ; |675| 

   [ A0]   STW     .D1T2   B7,*A3            ; |675| 
||         SHL     .S2     B6,B4,B4          ; |676| 

   [!A0]   STW     .D2T2   B4,*B5            ; |676| 
           LDW     .D2T2   *B11,B4           ; |987| 
           NOP             3
           MVC     .S2     CSR,B5            ; |354| 

           MVC     .S2     CSR,B5            ; |355| 
||         AND     .L2     1,B5,B7           ; |354| 

           AND     .L2     B10,B5,B5         ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x1a0ffa8,B5      ; |649| 
||         MVKL    .S1     0x1a0ffe8,A3      ; |648| 

           MVKH    .S2     0x1a0ffa8,B5      ; |649| 
||         MVKH    .S1     0x1a0ffe8,A3      ; |648| 
||         CMPLTU  .L2X    B4,A12,B0         ; |356| 

   [!B0]   LDW     .D2T2   *B5,B6            ; |649| 
|| [ B0]   LDW     .D1T1   *A3,A4            ; |648| 

           MVK     .S1     32,A31            ; |649| 

           SUB     .L1X    B4,A31,A3         ; |649| 
||         MVK     .S1     1,A6              ; |649| 
||         MVK     .L2     1,B8              ; |648| 

           SHL     .S2     B8,B4,B4          ; |648| 
||         SHL     .S1     A6,A3,A3          ; |649| 

           MVKL    .S1     0x1a0ffa8,A5      ; |649| 
||         MVKL    .S2     0x1a0ffe8,B31     ; |648| 

   [ B0]   OR      .L1X    B4,A4,A3          ; |648| 
|| [!B0]   OR      .L2X    A3,B6,B4          ; |649| 
||         MVKH    .S1     0x1a0ffa8,A5      ; |649| 
||         MVKH    .S2     0x1a0ffe8,B31     ; |648| 

           MVC     .S2     CSR,B4            ; |360| 
|| [ B0]   STW     .D2T1   A3,*B31           ; |648| 
|| [!B0]   STW     .D1T2   B4,*A5            ; |649| 

           AND     .L2     1,B7,B5           ; |360| 
||         AND     .S2     B10,B4,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
	.dwpsn	"vportcap_RAW.c",988,0

           MV      .L1     A13,A0
||         SUB     .S1     A14,4,A6

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
L64:    
DW$L$__configTransfer$57$B:
;**	-----------------------g59:
;** 989	-----------------------    chaNum = C$4 = _extu(*(++U$175), 8u, 24u);
;** 618	-----------------------    if ( (int)C$4 < (int)K$43 ) goto g61;  // [23]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$4+K$187;  // [23]
;** 619	-----------------------    goto g62;  // [23]
;**	-----------------------g61:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [23]
;**	-----------------------g62:
;** 990	-----------------------    chaNum = C$3 = _extu(*U$175, 8u, 24u);
;** 354	-----------------------    gie = CSR&1u;  // [11]
;** 355	-----------------------    a$25 = CSR&K$40;  // [11]
;** 355	-----------------------    CSR = a$25;  // [11]
;** 356	-----------------------    gie = gie;  // [11]
;** 356	-----------------------    if ( (int)C$3 < (int)K$43 ) goto g64;  // [11]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$3+K$187;  // [21]
;** 494	-----------------------    goto g65;  // [21]
;**	-----------------------g64:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [21]
;**	-----------------------g65:
;** 498	-----------------------    a$26 = CSR&K$40|gie&1u;  // [21]
;** 360	-----------------------    CSR = a$26;  // [12]
;** 988	-----------------------    if ( --l$2 ) goto g59;
;** 992	-----------------------    (*chan).status = (*chan).status|4u;

           LDW     .D1T1   *++A6,A3          ; |989| 
||         MVK     .L2     1,B5              ; |618| 
||         MVK     .S2     1,B7              ; |619| 

           NOP             4
           EXTU    .S1     A3,8,24,A3        ; |989| 
           CMPLT   .L1     A3,A12,A1         ; |618| 

   [!A1]   MVKL    .S1     0x1a0ffb8,A4      ; |619| 
|| [ A1]   MVKL    .S2     0x1a0fff8,B4      ; |618| 
||         ADD     .L2X    B12,A3,B6         ; |619| 

   [!A1]   MVKH    .S1     0x1a0ffb8,A4      ; |619| 
|| [ A1]   MVKH    .S2     0x1a0fff8,B4      ; |618| 

   [ A1]   SHL     .S1X    B5,A3,A3          ; |618| 
|| [!A1]   SHL     .S2     B7,B6,B4          ; |619| 

   [!A1]   STW     .D1T2   B4,*A4            ; |619| 
|| [ A1]   STW     .D2T1   A3,*B4            ; |618| 

           LDW     .D1T1   *A6,A3            ; |990| 
           NOP             4

           EXTU    .S1     A3,8,24,A3        ; |990| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B10,B5,B5         ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           CMPLT   .L1     A3,A12,A1         ; |356| 
||         ADD     .L2X    B12,A3,B6         ; |494| 
||         MVK     .S1     1,A5              ; |493| 

   [!A1]   MVKL    .S1     0x1a0ffb4,A4      ; |494| 
|| [ A1]   MVKL    .S2     0x1a0fff4,B5      ; |493| 

   [!A1]   MVKH    .S1     0x1a0ffb4,A4      ; |494| 
|| [ A1]   MVKH    .S2     0x1a0fff4,B5      ; |493| 

   [!A1]   LDW     .D1T1   *A4,A4            ; |494| 
|| [ A1]   LDW     .D2T2   *B5,B5            ; |493| 
|| [!A1]   SHL     .S2     B7,B6,B6          ; |494| 
|| [ A1]   SHL     .S1     A5,A3,A3          ; |493| 

   [ A1]   MVKL    .S1     0x1a0fff4,A4      ; |493| 
   [!A1]   MVKL    .S2     0x1a0ffb4,B5      ; |494| 
   [ A1]   MVKH    .S1     0x1a0fff4,A4      ; |493| 
   [!A1]   MVKH    .S2     0x1a0ffb4,B5      ; |494| 

   [!A1]   OR      .L1X    B6,A4,A3          ; |494| 
|| [ A1]   OR      .L2X    A3,B5,B5          ; |493| 

   [ A1]   STW     .D1T2   B5,*A4            ; |493| 
|| [!A1]   STW     .D2T1   A3,*B5            ; |494| 
||         MVC     .S2     CSR,B5            ; |498| 

           AND     .L2     1,B4,B5           ; |498| 
||         AND     .S2     B10,B5,B4         ; |498| 

           OR      .L2     B5,B4,B4          ; |498| 
           MVC     .S2     B4,CSR            ; |360| 
           SUB     .L1     A0,1,A0           ; |988| 

   [ A0]   BNOP    .S1     L64,4             ; |988| 
|| [!A0]   LDW     .D1T1   *A10,A3           ; |992| 

	.dwpsn	"vportcap_RAW.c",991,0
   [!A0]   OR      .L1     4,A3,A3           ; |992| 
           ; BRANCHCC OCCURS {L64}           ; |988| 
DW$L$__configTransfer$57$E:
;** --------------------------------------------------------------------------*
;** 320	-----------------------    IER = IER|_IRQ_eventTable[8];  // [8]
;**	-----------------------g67:
;** 996	-----------------------    return;

           STW     .D1T1   A3,*A10           ; |992| 
||         MVC     .S2     IER,B4            ; |320| 

           MVKL    .S1     __IRQ_eventTable+32,A3 ; |320| 
           MVKH    .S1     __IRQ_eventTable+32,A3 ; |320| 
           LDW     .D1T1   *A3,A3            ; |320| 
           NOP             4
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
;** --------------------------------------------------------------------------*
L65:    
           LDW     .D2T2   *+SP(4),B3        ; |998| 
           MV      .L1X    SP,A31            ; |998| 
           LDDW    .D1T1   *+A31(16),A13:A12 ; |998| 
           LDDW    .D2T2   *+SP(32),B13:B12  ; |998| 
           LDDW    .D1T1   *+A31(8),A11:A10  ; |998| 

           RET     .S2     B3                ; |998| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |998| 

           LDW     .D2T1   *++SP(40),A14     ; |998| 
	.dwpsn	"vportcap_RAW.c",998,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |998| 

DW$68	.dwtag  DW_TAG_loop
	.dwattr DW$68, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L64:1:1287391603")
	.dwattr DW$68, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$68, DW_AT_begin_line(0x3dc)
	.dwattr DW$68, DW_AT_end_line(0x3df)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$__configTransfer$57$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$__configTransfer$57$E)
	.dwendtag DW$68


DW$70	.dwtag  DW_TAG_loop
	.dwattr DW$70, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L50:1:1287391603")
	.dwattr DW$70, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$70, DW_AT_begin_line(0x37f)
	.dwattr DW$70, DW_AT_end_line(0x3d0)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$__configTransfer$33$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$__configTransfer$33$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$__configTransfer$37$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$__configTransfer$37$E)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$__configTransfer$38$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$__configTransfer$38$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$__configTransfer$39$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$__configTransfer$39$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$__configTransfer$40$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$__configTransfer$40$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$__configTransfer$41$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$__configTransfer$41$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$__configTransfer$42$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$__configTransfer$42$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$__configTransfer$51$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$__configTransfer$51$E)
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
	.dwattr DW$82, DW_AT_low_pc(DW$L$__configTransfer$43$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$__configTransfer$43$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$__configTransfer$44$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$__configTransfer$44$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$__configTransfer$45$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$__configTransfer$45$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$__configTransfer$46$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$__configTransfer$46$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$__configTransfer$47$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$__configTransfer$47$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$__configTransfer$48$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$__configTransfer$48$E)
DW$88	.dwtag  DW_TAG_loop_range
	.dwattr DW$88, DW_AT_low_pc(DW$L$__configTransfer$49$B)
	.dwattr DW$88, DW_AT_high_pc(DW$L$__configTransfer$49$E)
DW$89	.dwtag  DW_TAG_loop_range
	.dwattr DW$89, DW_AT_low_pc(DW$L$__configTransfer$50$B)
	.dwattr DW$89, DW_AT_high_pc(DW$L$__configTransfer$50$E)
DW$90	.dwtag  DW_TAG_loop_range
	.dwattr DW$90, DW_AT_low_pc(DW$L$__configTransfer$52$B)
	.dwattr DW$90, DW_AT_high_pc(DW$L$__configTransfer$52$E)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$__configTransfer$53$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$__configTransfer$53$E)
	.dwendtag DW$70


DW$92	.dwtag  DW_TAG_loop
	.dwattr DW$92, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L47:1:1287391603")
	.dwattr DW$92, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$92, DW_AT_begin_line(0x373)
	.dwattr DW$92, DW_AT_end_line(0x376)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$__configTransfer$28$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$__configTransfer$28$E)
	.dwendtag DW$92


DW$94	.dwtag  DW_TAG_loop
	.dwattr DW$94, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L37:1:1287391603")
	.dwattr DW$94, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$94, DW_AT_begin_line(0x327)
	.dwattr DW$94, DW_AT_end_line(0x371)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$__configTransfer$10$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$__configTransfer$10$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$__configTransfer$19$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$__configTransfer$19$E)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$__configTransfer$11$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$__configTransfer$11$E)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$__configTransfer$12$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$__configTransfer$12$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$__configTransfer$13$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$__configTransfer$13$E)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$__configTransfer$14$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$__configTransfer$14$E)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$__configTransfer$15$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$__configTransfer$15$E)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$__configTransfer$16$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$__configTransfer$16$E)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$__configTransfer$17$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$__configTransfer$17$E)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$__configTransfer$18$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$__configTransfer$18$E)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$__configTransfer$20$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$__configTransfer$20$E)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$__configTransfer$21$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$__configTransfer$21$E)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$__configTransfer$22$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$__configTransfer$22$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$__configTransfer$23$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$__configTransfer$23$E)
	.dwendtag DW$94

	.dwattr DW$65, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$65, DW_AT_end_line(0x3e6)
	.dwattr DW$65, DW_AT_end_column(0x01)
	.dwendtag DW$65

	.sect	".text"

DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$109, DW_AT_low_pc(_mdBindDev)
	.dwattr DW$109, DW_AT_high_pc(0x00)
	.dwattr DW$109, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$109, DW_AT_begin_line(0x83)
	.dwattr DW$109, DW_AT_begin_column(0x0c)
	.dwattr DW$109, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$109, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",132,1

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
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$110, DW_AT_type(*DW$T$41)
	.dwattr DW$110, DW_AT_location[DW_OP_reg4]
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devid"), DW_AT_symbol_name("_devid")
	.dwattr DW$111, DW_AT_type(*DW$T$22)
	.dwattr DW$111, DW_AT_location[DW_OP_reg20]
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devParams"), DW_AT_symbol_name("_devParams")
	.dwattr DW$112, DW_AT_type(*DW$T$37)
	.dwattr DW$112, DW_AT_location[DW_OP_reg6]
;** 138	-----------------------    K$9 = C$10 = &portObjs[devid];
;** 138	-----------------------    *((volatile int *)(*(struct _PortObj *)(void *)C$10).base+192) = 32768;
;** 140	-----------------------    i = 0;
;** 140	-----------------------    if ( i >= 100000 ) goto g4;
;** 140	-----------------------    K$16 = 100000;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MVK     .S2     1072,B5           ; |138| 
||         MVKL    .S1     _portObjs,A3      ; |138| 
||         STW     .D2T2   B3,*SP--(8)       ; |132| 

           MPYLI   .M2     B5,B4,B5:B4       ; |138| 
||         MVKH    .S1     _portObjs,A3      ; |138| 
||         MVKL    .S2     0x186a0,B6        ; |140| 

           NOP             2
           MVK     .S1     48,A5             ; |138| 
           MVKH    .S2     0x186a0,B6        ; |140| 

           MVKL    .S2     0x8000,B4         ; |138| 
||         ADD     .L1X    A3,B4,A7          ; |138| 

           MVKH    .S2     0x8000,B4         ; |138| 
||         LDW     .D1T1   *+A7(4),A3        ; |138| 

           NOP             4

           ZERO    .L1     A3                ; |140| 
||         MVKL    .S1     0x186a0,A5        ; |140| 
||         STW     .D1T2   B4,*+A3[A5]       ; |138| 

           MV      .D1     A7,A4             ; |138| 
||         MV      .L1     A4,A3             ; |132| 
||         STW     .D2T1   A3,*+SP(4)        ; |140| 
||         MVKH    .S1     0x186a0,A5        ; |140| 

           LDW     .D2T2   *+SP(4),B4        ; |140| 
           NOP             4
           CMPLT   .L2X    B4,A5,B0          ; |140| 

   [!B0]   BNOP    .S1     L69,4             ; |140| 
|| [ B0]   LDW     .D2T2   *+SP(4),B5        ; |140| (P) <0,0>  ^ 

           ADD     .L2     1,B5,B7           ; |140| (P) <0,5>  ^ 
           ; BRANCHCC OCCURS {L69}           ; |140| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 140	-----------------------    i = i+1;
;** 140	-----------------------    if ( i < K$16 ) goto g3;

           STW     .D2T2   B7,*+SP(4)        ; |140| (P) <0,6>  ^ 
||         MVK     .L1     0x1,A1

           LDW     .D2T2   *+SP(4),B4        ; |140| (P) <0,7>  ^ 
           NOP             4
           CMPLT   .L2     B4,B6,B0          ; |140| (P) <0,12>  ^ 
   [!B0]   ZERO    .L1     A1                ; |140| (P) <0,13>  ^ 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 140
;*      Loop closing brace source line   : 140
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
L66:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L67:    ; PIPED LOOP KERNEL
DW$L$_mdBindDev$4$B:
   [ A1]   LDW     .D2T2   *+SP(4),B5        ; |140| <1,0>  ^ 
           NOP             3
           MV      .L1     A1,A0             ; |140| <0,18> Split a long life
           ADD     .L2     1,B5,B7           ; |140| <1,5>  ^ 
   [ A0]   STW     .D2T2   B7,*+SP(4)        ; |140| <1,6>  ^ 
   [ A0]   LDW     .D2T2   *+SP(4),B4        ; |140| <1,7>  ^ 
   [ A1]   BNOP    .S1     L67,3             ; |140| <0,22> 
           CMPLT   .L2     B4,B6,B0          ; |140| <1,12>  ^ 
   [!B0]   ZERO    .L1     A1                ; |140| <1,13>  ^ 
DW$L$_mdBindDev$4$E:
;** --------------------------------------------------------------------------*
L68:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L69:    
;**	-----------------------g4:
;** 142	-----------------------    *devp = K$9;
;** 143	-----------------------    return mdControlChan(K$9, 0x10000002u, devParams);
           CALL    .S1     _mdControlChan    ; |143| 
           ADDKPC  .S2     RL21,B3,1         ; |143| 
           STW     .D1T1   A4,*A3            ; |142| 
           MVKL    .S2     0x10000002,B4     ; |143| 
           MVKH    .S2     0x10000002,B4     ; |143| 
RL21:      ; CALL OCCURS {_mdControlChan}    ; |143| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(8),B3       ; |144| 
           NOP             4
	.dwpsn	"vportcap_RAW.c",144,1
           RETNOP  .S2     B3,5              ; |144| 
           ; BRANCH OCCURS {B3}              ; |144| 

DW$113	.dwtag  DW_TAG_loop
	.dwattr DW$113, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L67:1:1287391603")
	.dwattr DW$113, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$113, DW_AT_begin_line(0x8c)
	.dwattr DW$113, DW_AT_end_line(0x8c)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_mdBindDev$4$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_mdBindDev$4$E)
	.dwendtag DW$113

	.dwattr DW$109, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$109, DW_AT_end_line(0x90)
	.dwattr DW$109, DW_AT_end_column(0x01)
	.dwendtag DW$109

	.sect	".text"

DW$115	.dwtag  DW_TAG_subprogram, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$115, DW_AT_low_pc(_mdCreateChan)
	.dwattr DW$115, DW_AT_high_pc(0x00)
	.dwattr DW$115, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$115, DW_AT_begin_line(0xc2)
	.dwattr DW$115, DW_AT_begin_column(0x0d)
	.dwattr DW$115, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$115, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",196,1

;******************************************************************************
;* FUNCTION NAME: _mdCreateChan                                               *
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
_mdCreateChan:
;** --------------------------------------------------------------------------*
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$116, DW_AT_type(*DW$T$41)
	.dwattr DW$116, DW_AT_location[DW_OP_reg4]
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$117, DW_AT_type(*DW$T$37)
	.dwattr DW$117, DW_AT_location[DW_OP_reg20]
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$118, DW_AT_type(*DW$T$53)
	.dwattr DW$118, DW_AT_location[DW_OP_reg6]
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$119, DW_AT_type(*DW$T$22)
	.dwattr DW$119, DW_AT_location[DW_OP_reg22]
DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanParams"), DW_AT_symbol_name("_chanParams")
	.dwattr DW$120, DW_AT_type(*DW$T$37)
	.dwattr DW$120, DW_AT_location[DW_OP_reg8]
DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$121, DW_AT_type(*DW$T$59)
	.dwattr DW$121, DW_AT_location[DW_OP_reg24]
DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$122, DW_AT_type(*DW$T$37)
	.dwattr DW$122, DW_AT_location[DW_OP_reg10]
;** 196	-----------------------    name = name;
;** 203	-----------------------    if ( mode != 1 ) goto g3;
;** 206	-----------------------    if ( *name++ == 47 ) goto g4;

           MV      .L1X    SP,A31            ; |196| 
||         STW     .D2T1   A15,*SP--(48)     ; |196| 
||         CMPEQ   .L2     B6,1,B0           ; |203| 
||         ZERO    .D1     A0                ; |211| 
||         MVK     .S1     47,A5             ; |206| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         STW     .D2T2   B3,*+SP(28)

           STDW    .D1T1   A13:A12,*-A31(32)
||         STDW    .D2T2   B11:B10,*+SP(32)
||         MV      .L1     A6,A12            ; |196| 
||         MV      .L2X    A4,B10            ; |196| 

           STW     .D1T1   A14,*-A31(24)
||         STDW    .D2T2   B13:B12,*+SP(40)
||         MV      .L2     B4,B12            ; |196| 
|| [ B0]   MVK     .S2     65,B4             ; |211| 

   [ B0]   LDB     .D1T1   *A12++,A3         ; |206| 
||         MV      .L2X    A8,B11            ; |196| 
||         MV      .S2     B8,B13            ; |196| 

           NOP             4
   [ B0]   CMPEQ   .L1     A3,A5,A0          ; |206| 

   [!A0]   LDDW    .D2T2   *+SP(32),B11:B10  ; |272| 
|| [ A0]   B       .S2     L70               ; |206| 
|| [!A0]   MV      .L1X    SP,A31            ; |272| 
|| [ A0]   MVKL    .S1     SL8+0,A4          ; |211| 
|| [ A0]   LDB     .D1T1   *A12,A3           ; |211| 

   [!A0]   LDDW    .D2T2   *+SP(40),B13:B12  ; |272| 
|| [!A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |272| 
|| [ A0]   MVKH    .S1     SL8+0,A4          ; |211| 

   [!A0]   LDW     .D1T1   *+A31(24),A14     ; |272| 
           NOP             2

   [!A0]   LDDW    .D1T1   *+A31(8),A11:A10  ; |272| 
||         SUB     .L1X    A3,B4,A11         ; |211| 
|| [!A0]   RET     .S2     B3                ; |272| 

           ; BRANCHCC OCCURS {L70}           ; |206| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 207	-----------------------    return (-10);

           LDW     .D2T1   *++SP(48),A15     ; |272| 
||         MVK     .L1     0xfffffff6,A3     ; |207| 

           NOP             3
           MV      .L1     A3,A4             ; |271| 
           ; BRANCH OCCURS {B3}              ; |272| 
;** --------------------------------------------------------------------------*
L70:    
;**	-----------------------g4:
;** 211	-----------------------    C$14 = *name-65;
;** 211	-----------------------    assert(C$14 < 2);
           CMPLT   .L1     A11,2,A0          ; |211| 

   [ A0]   B       .S2     L71               ; |211| 
|| [ A0]   MVK     .S1     532,A3            ; |214| 

   [!A0]   CALL    .S1     __abort_msg       ; |211| 
|| [ A0]   MPYLI   .M1     A3,A11,A7:A6      ; |214| 

           NOP             4
           ; BRANCHCC OCCURS {L71}           ; |211| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL22,B3,0         ; |211| 
RL22:      ; CALL OCCURS {__abort_msg}       ; |211| 
           MVK     .S1     532,A3            ; |214| 
           MPYLI   .M1     A3,A11,A7:A6      ; |214| 
           NOP             4
;** --------------------------------------------------------------------------*
L71:    
;** 213	-----------------------    port = (struct _PortObj *)devp;
;** 214	-----------------------    C$13 = _mpyli(532, C$14);
;** 214	-----------------------    U$31 = _lo(C$13);
;** 214	-----------------------    U$33 = *(_lo(C$13)+port+516);
;** 214	-----------------------    if ( (void *)U$33 == (void *)(K$36 = (void *)0xffffffffu) ) goto g6;

           MVK     .S2     129,B5            ; |214| 
||         ADD     .L2X    B12,A6,B4         ; |214| 
||         MV      .L1X    B12,A11           ; |213| 
||         ADD     .S1     1,A12,A4          ; |216| 
||         MV      .D1     A6,A12            ; |214| 

           LDW     .D2T2   *+B4[B5],B5       ; |214| 
||         MVK     .L2     0xffffffff,B4     ; |214| 
||         ADD     .L1X    B12,A6,A13        ; |216| 
||         MVK     .S2     130,B12           ; |216| 

           NOP             4
           CMPEQ   .L2     B5,B4,B0          ; |214| 

   [ B0]   BNOP    .S1     L72,4             ; |214| 
|| [ B0]   LDW     .D1T1   *A11,A3           ; |219| 
|| [!B0]   LDW     .D2T2   *B5,B5            ; |216| 

           AND     .L1     1,A3,A0           ; |219| 
|| [!B0]   CALL    .S2     B5                ; |216| 

           ; BRANCHCC OCCURS {L72}           ; |214| 
;** --------------------------------------------------------------------------*
;** 216	-----------------------    *(U$31+port+520) = (*(*U$33).open)(++name, (-1));
           ADDKPC  .S2     RL23,B3,4         ; |216| 
RL23:      ; CALL OCCURS {A3}                ; |216| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B12,A3
           STW     .D1T1   A4,*+A13[A3]      ; |216| 
           LDW     .D1T1   *A11,A3           ; |219| 
           NOP             4
           AND     .L1     1,A3,A0           ; |219| 
;** --------------------------------------------------------------------------*
L72:    
;**	-----------------------g6:
;** 219	-----------------------    C$12 = (*port).status;
;** 219	-----------------------    if ( C$12&1 ) goto g8;

           OR      .L1     1,A3,A4           ; |220| 
|| [!A0]   LDW     .D1T1   *+A11(4),A3       ; |221| 
|| [ A0]   B       .S2     L73               ; |219| 
||         MVK     .S1     260,A5            ; |224| 

   [!A0]   STW     .D1T1   A4,*A11           ; |220| 
||         MVK     .S2     324,B4            ; |221| 

           NOP             3

   [ A0]   ADD     .S1     A12,A11,A3        ; |230| 
||         ADD     .L1     A5,A3,A4          ; |224| 

           ; BRANCHCC OCCURS {L73}           ; |219| 
;** --------------------------------------------------------------------------*
;** 220	-----------------------    (*port).status = C$12|1;
;** 221	-----------------------    C$11 = (*port).base;
;** 221	-----------------------    base = (volatile int *)(C$11+324);
;** 224	-----------------------    C$10 = (volatile int *)C$11+260;
;** 224	-----------------------    *C$10 = *C$10|0x80000000;
;** 226	-----------------------    *base = *base|0x80000000;

           LDW     .D1T1   *A4,A5            ; |224| 
||         ADD     .L2X    B4,A3,B4          ; |221| 
||         ADD     .L1     A12,A11,A3        ; |230| 

           NOP             4
           SET     .S1     A5,31,31,A5       ; |224| 
           STW     .D1T1   A5,*A4            ; |224| 
           LDW     .D2T2   *B4,B5            ; |226| 
           NOP             4
           SET     .S2     B5,31,31,B5       ; |226| 
           STW     .D2T2   B5,*B4            ; |226| 
;** --------------------------------------------------------------------------*
L73:    
;**	-----------------------g8:
;** 200	-----------------------    retVal = 0;
;** 230	-----------------------    if ( *((struct $$fake3 *)(struct $$fake3 (*)[2])port+U$31+8)&1u ) goto g21;

           LDW     .D1T1   *+A3(8),A4        ; |230| 
||         ADD     .L1     A12,A11,A5        ; |233| 
||         ADD     .S1     A12,A11,A31       ; |232| 
||         MVK     .S2     444,B4            ; |238| 
||         ADD     .L2X    8,A11,B12         ; |244| 
||         ZERO    .D2     B6                ; |234| 

           ADD     .L1     8,A31,A13         ; |232| 
||         MVK     .S1     380,A6
||         ZERO    .D1     A30               ; |200| 
||         MVK     .S2     364,B7            ; |235| 
||         MVK     .L2     -1,B8             ; |243| 

           ADD     .L2X    8,A5,B5           ; |233| 
||         STW     .D2T1   A30,*+SP(4)       ; |200| 
||         MVK     .S1     132,A9            ; |244| 
||         MVK     .S2     130,B9            ; |243| 
||         ADD     .L1     12,A13,A14
||         ADD     .D1     A6,A13,A15

           MVK     .S1     91,A7             ; |235| 
||         MVK     .S2     92,B20            ; |235| 
||         ZERO    .L1     A12               ; |249| 
||         ADD     .L2     B4,B5,B16         ; |238| 
||         ADD     .D2X    B7,A13,B4         ; |235| 
||         ADD     .D1     8,A31,A11         ; |232| 

           MVK     .S1     118,A16           ; |242| 
||         MVK     .S2     129,B18           ; |241| 

           AND     .L1     1,A4,A0           ; |230| 
||         MVK     .S1     125,A17           ; |240| 
||         MVK     .S2     108,B19           ; |236| 

   [ A0]   BNOP    .S2     L78,2             ; |230| 
|| [!A0]   LDW     .D2T2   *B5,B7            ; |233| 
|| [!A0]   MV      .L1X    B5,A3
||         MVK     .S1     110,A8            ; |237| 

           MVK     .S2     109,B17           ; |239| 
|| [!A0]   MV      .L1X    B4,A4

   [!A0]   MV      .L1X    B6,A6
           OR      .L2     1,B7,B4           ; |233| 
           ; BRANCHCC OCCURS {L78}           ; |230| 
;** --------------------------------------------------------------------------*
;** 232	-----------------------    C$6 = (struct $$fake3 *)((struct $$fake3 (*)[2])port+8)+U$31;
;** 232	-----------------------    chan = (struct $$fake3 *)C$6;
;** 233	-----------------------    C$8 = (struct $$fake3 *)(struct $$fake3 (*)[2])port+U$31+8;
;** 233	-----------------------    (*C$8).status = (*C$8).status|1u;
;** 234	-----------------------    (*C$8).vIntMask = C$7 = 0u;
;** 235	-----------------------    C$9 = (struct _QUE_Elem **)C$8;
;** 235	-----------------------    (*((struct _QUE_Elem *)C$9+364)).next = C$9[92] = (struct _QUE_Elem *)chan+364;
;** 236	-----------------------    (*C$8).cbFxn = cbFxn;
;** 237	-----------------------    (*C$8).vIntFxn = K$36;
;** 238	-----------------------    (*C$8).queEmpty = C$7;
;** 239	-----------------------    (*C$8).cbArg = (int)cbArg;
;** 240	-----------------------    (*C$8).mrViop = (struct _FVID_Frame *)K$36;
;** 241	-----------------------    (*C$8).packetIOM = (struct _DEV_Frame *)K$36;
;** 242	-----------------------    (*C$8).numFrms = C$7;
;** 243	-----------------------    (*C$8).vIntCbArg = (-1);
;** 244	-----------------------    U$69 = (struct $$fake3 (*)[2])port+8;
;** 244	-----------------------    U$71 = (struct $$fake3 *)C$6;
;** 244	-----------------------    (*chan).bufSz = C$7;
;**  	-----------------------    U$101 = (unsigned *)C$6+12;
;**  	-----------------------    U$107 = (unsigned (*)[3])C$6+380;
;** 249	-----------------------    j = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           STW     .D1T1   A6,*+A3(40)       ; |234| 
||         STW     .D2T2   B4,*B5            ; |233| 
||         MV      .L1X    B5,A5
||         MVK     .L2     0xffffffff,B31    ; |214| 

           STW     .D2T1   A4,*+B5[B20]      ; |235| 

           STW     .D1T1   A4,*+A5[A7]       ; |235| 
||         STW     .D2T2   B8,*+B5[B9]       ; |243| 

           STW     .D2T1   A10,*+B5[B17]     ; |239| 
||         STW     .D1T2   B31,*+A3[A8]      ; |237| 

           STW     .D2T2   B13,*+B5[B19]     ; |236| 
||         STW     .D1T1   A6,*+A3[A16]      ; |242| 

           STW     .D2T2   B31,*+B5[B18]     ; |241| 
||         MVKL    .S2     _EDMA_open,B5     ; |251| 

           MVKH    .S2     _EDMA_open,B5     ; |251| 
||         STW     .D1T2   B31,*+A3[A17]     ; |240| 
||         STH     .D2T1   A6,*B16           ; |238| 

           CALL    .S2     B5                ; |251| 
||         STW     .D1T2   B6,*+A11[A9]      ; |244| 

           LDW     .D1T1   *++A14,A4         ; |251| 
	.dwpsn	"vportcap_RAW.c",249,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L74:    
DW$L$_mdCreateChan$12$B:
;**	-----------------------g10:
;** 251	-----------------------    *U$107++ = T$1 = EDMA_open((int)*(++U$101), 1u);
;** 251	-----------------------    if ( !T$1 ) goto g14;

           MVK     .L2     0x1,B4            ; |251| 
||         ADDKPC  .S2     RL24,B3,0         ; |251| 

RL24:      ; CALL OCCURS {_EDMA_open}        ; |251| 
DW$L$_mdCreateChan$12$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$13$B:

           MVKL    .S2     _EDMA_allocTable,B4 ; |251| 
||         MV      .L1     A4,A0             ; |251| 

           MVKH    .S2     _EDMA_allocTable,B4 ; |251| 
|| [!A0]   B       .S1     L75               ; |251| 
||         STW     .D1T1   A0,*A15++         ; |251| 
|| [!A0]   MVK     .L1     0xfffffffb,A3     ; |256| 

   [ A0]   CALL    .S2     B4                ; |251| 
|| [!A0]   STW     .D2T1   A3,*+SP(4)        ; |256| 

           NOP             4
           ; BRANCHCC OCCURS {L75}           ; |251| 
DW$L$_mdCreateChan$13$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$14$B:
;** 251	-----------------------    C$5 = (j<<3)+(unsigned (*)[6])chan+392;
;** 251	-----------------------    *C$5 = T$2 = EDMA_allocTable((-1));
;** 251	-----------------------    if ( !T$2 ) goto g14;

           MVK     .L1     0xffffffff,A4     ; |251| 
||         ADDKPC  .S2     RL25,B3,0         ; |251| 

RL25:      ; CALL OCCURS {_EDMA_allocTable}  ; |251| 
DW$L$_mdCreateChan$14$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$15$B:

           MVKL    .S2     _EDMA_allocTable,B4 ; |251| 
||         MV      .L1     A4,A0             ; |251| 
||         MVK     .S1     392,A3            ; |251| 
||         ADDAD   .D1     A11,A12,A5        ; |251| 

   [!A0]   B       .S1     L75               ; |251| 
||         MVKH    .S2     _EDMA_allocTable,B4 ; |251| 
||         ADD     .L1     A3,A5,A10         ; |251| 
|| [!A0]   MVK     .D1     0xfffffffb,A3     ; |256| 

   [ A0]   CALL    .S2     B4                ; |251| 
||         STW     .D1T1   A0,*A10           ; |251| 

           NOP             2
   [!A0]   STW     .D2T1   A3,*+SP(4)        ; |256| 
           NOP             1
           ; BRANCHCC OCCURS {L75}           ; |251| 
DW$L$_mdCreateChan$15$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$16$B:
;** 251	-----------------------    C$5[1] = T$3 = EDMA_allocTable((-1));
;** 251	-----------------------    if ( !T$3 ) goto g14;

           MVK     .L1     0xffffffff,A4     ; |251| 
||         ADDKPC  .S2     RL26,B3,0         ; |251| 

RL26:      ; CALL OCCURS {_EDMA_allocTable}  ; |251| 
DW$L$_mdCreateChan$16$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$17$B:

           MVKL    .S2     _EDMA_intAlloc,B4 ; |251| 
||         MV      .L1     A4,A0             ; |251| 

   [!A0]   B       .S1     L75               ; |251| 
||         MVKH    .S2     _EDMA_intAlloc,B4 ; |251| 
||         STW     .D1T1   A0,*+A10(4)       ; |251| 
|| [!A0]   MVK     .L1     0xfffffffb,A3     ; |256| 

   [ A0]   CALL    .S2     B4                ; |251| 
|| [ A0]   LDW     .D1T1   *A14,A4           ; |251| 

           NOP             2
   [!A0]   STW     .D2T1   A3,*+SP(4)        ; |256| 
           NOP             1
           ; BRANCHCC OCCURS {L75}           ; |251| 
DW$L$_mdCreateChan$17$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$18$B:
;** 251	-----------------------    *(j*4+(int (*)[3])chan+416) = T$4 = EDMA_intAlloc((int)*U$101);
;** 251	-----------------------    if ( T$4 != (-1) ) goto g15;
           ADDKPC  .S2     RL27,B3,0         ; |251| 
RL27:      ; CALL OCCURS {_EDMA_intAlloc}    ; |251| 
DW$L$_mdCreateChan$18$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$19$B:

           CMPEQ   .L1     A4,-1,A0          ; |251| 
||         MVK     .S1     104,A5            ; |251| 
||         ADDAW   .D1     A11,A12,A3        ; |251| 

   [!A0]   BNOP    .S2     L76,1             ; |251| 
||         STW     .D1T1   A4,*+A3[A5]       ; |251| 
|| [ A0]   MVK     .L1     0xfffffffb,A3     ; |256| 
|| [!A0]   ADD     .S1     1,A12,A12         ; |249| 

   [!A0]   LDW     .D2T1   *+SP(4),A3
           NOP             2
   [ A0]   STW     .D2T1   A3,*+SP(4)        ; |256| 
           ; BRANCHCC OCCURS {L76}           ; |251| 
DW$L$_mdCreateChan$19$E:
;** --------------------------------------------------------------------------*
L75:    
DW$L$_mdCreateChan$20$B:
;**	-----------------------g14:
;** 256	-----------------------    retVal = (-5);

           LDW     .D2T1   *+SP(4),A3
||         ADD     .L1     1,A12,A12         ; |249| 

           NOP             3
DW$L$_mdCreateChan$20$E:
;** --------------------------------------------------------------------------*
L76:    
DW$L$_mdCreateChan$21$B:
;**	-----------------------g15:
;** 249	-----------------------    U$137 = retVal == 0;
;** 249	-----------------------    if ( ((++j) < 3)&U$137 ) goto g10;
;** 259	-----------------------    if ( !((chanParams != (void *)K$36)&U$137) ) goto g18;

           CMPLT   .L1     A12,3,A4          ; |249| 
||         MVKL    .S2     _EDMA_open,B5     ; |251| 

           CMPEQ   .L1     A3,0,A3           ; |249| 
||         MVKH    .S2     _EDMA_open,B5     ; |251| 

           AND     .L1     A3,A4,A0          ; |249| 

   [ A0]   B       .S1     L74               ; |249| 
|| [ A0]   LDW     .D1T1   *++A14,A4         ; |251| 
|| [!A0]   MVK     .L2     0xffffffff,B4     ; |214| 
|| [!A0]   ZERO    .L1     A5                ; |259| 

   [ A0]   CALL    .S2     B5                ; |251| 
|| [!A0]   CMPEQ   .L2     B11,B4,B0         ; |259| 

	.dwpsn	"vportcap_RAW.c",258,0
           NOP             4
           ; BRANCHCC OCCURS {L74}           ; |249| 
DW$L$_mdCreateChan$21$E:
;** --------------------------------------------------------------------------*

   [!B0]   MVK     .L1     0x1,A5            ; |259| 
||         MVKL    .S2     0x10000003,B4     ; |260| 
||         MV      .S1     A13,A4            ; |260| 
||         MV      .D1X    B11,A6            ; |260| 

           AND     .L1     A3,A5,A0          ; |259| 
||         MVKH    .S2     0x10000003,B4     ; |260| 

   [!A0]   B       .S1     L77               ; |259| 

   [ A0]   CALL    .S1     _mdControlChan    ; |260| 
|| [!A0]   LDW     .D2T1   *+SP(4),A0

           NOP             4
           ; BRANCHCC OCCURS {L77}           ; |259| 
;** --------------------------------------------------------------------------*
;** 260	-----------------------    retVal = mdControlChan(U$71, 0x10000003u, chanParams);
           ADDKPC  .S2     RL28,B3,0         ; |260| 
RL28:      ; CALL OCCURS {_mdControlChan}    ; |260| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+SP(4)        ; |260| 
           LDW     .D2T1   *+SP(4),A0
           NOP             4
;** --------------------------------------------------------------------------*
L77:    
;**	-----------------------g18:
;** 263	-----------------------    if ( retVal ) goto g20;
;** 265	-----------------------    *chanp = U$71;
;** 266	-----------------------    return retVal;

   [!A0]   B       .S1     L79               ; |266| 
|| [!A0]   LDW     .D2T2   *+SP(28),B3       ; |272| 
|| [!A0]   MV      .L1X    SP,A31            ; |272| 
||         MV      .D1     A0,A3             ; |266| 

   [ A0]   CALL    .S1     _mdDeleteChan     ; |267| 
|| [!A0]   LDDW    .D1T1   *+A31(8),A11:A10  ; |272| 
||         MV      .L1X    B12,A4            ; |267| 
|| [!A0]   LDDW    .D2T2   *+SP(40),B13:B12  ; |272| 

   [!A0]   STW     .D2T1   A13,*B10          ; |265| 
|| [!A0]   MV      .L1     A3,A4             ; |271| 

   [!A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |272| 
|| [!A0]   LDDW    .D2T2   *+SP(32),B11:B10  ; |272| 

   [!A0]   LDW     .D1T1   *+A31(24),A14     ; |272| 

   [!A0]   RET     .S2     B3                ; |272| 
|| [!A0]   LDW     .D2T1   *++SP(48),A15     ; |272| 

           ; BRANCHCC OCCURS {L79}           ; |266| 
;** --------------------------------------------------------------------------*
;**	-----------------------g20:
;** 267	-----------------------    mdDeleteChan(U$69);
;** 268	-----------------------    *chanp = (void *)K$36;
           ADDKPC  .S2     RL29,B3,0         ; |267| 
RL29:      ; CALL OCCURS {_mdDeleteChan}     ; |267| 
;** --------------------------------------------------------------------------*
           MVK     .L2     0xffffffff,B4     ; |214| 
           STW     .D2T2   B4,*B10           ; |268| 
;** --------------------------------------------------------------------------*
L78:    
;**	-----------------------g21:
;** 271	-----------------------    return retVal;
           LDW     .D2T2   *+SP(28),B3       ; |272| 
           LDW     .D2T1   *+SP(4),A3
           MV      .L1X    SP,A31            ; |272| 
           LDW     .D1T1   *+A31(24),A14     ; |272| 

           LDDW    .D1T1   *+A31(16),A13:A12 ; |272| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |272| 

           LDDW    .D1T1   *+A31(8),A11:A10  ; |272| 
||         LDDW    .D2T2   *+SP(40),B13:B12  ; |272| 

           RET     .S2     B3                ; |272| 
||         LDW     .D2T1   *++SP(48),A15     ; |272| 
||         MV      .L1     A3,A4             ; |271| 

;** --------------------------------------------------------------------------*
L79:    
	.dwpsn	"vportcap_RAW.c",272,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |272| 

DW$123	.dwtag  DW_TAG_loop
	.dwattr DW$123, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L74:1:1287391603")
	.dwattr DW$123, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$123, DW_AT_begin_line(0xf9)
	.dwattr DW$123, DW_AT_end_line(0x102)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_mdCreateChan$12$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_mdCreateChan$12$E)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_mdCreateChan$13$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_mdCreateChan$13$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_mdCreateChan$14$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_mdCreateChan$14$E)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$_mdCreateChan$15$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$_mdCreateChan$15$E)
DW$128	.dwtag  DW_TAG_loop_range
	.dwattr DW$128, DW_AT_low_pc(DW$L$_mdCreateChan$16$B)
	.dwattr DW$128, DW_AT_high_pc(DW$L$_mdCreateChan$16$E)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_mdCreateChan$17$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_mdCreateChan$17$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_mdCreateChan$18$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_mdCreateChan$18$E)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_mdCreateChan$19$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_mdCreateChan$19$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_mdCreateChan$20$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_mdCreateChan$20$E)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_mdCreateChan$21$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_mdCreateChan$21$E)
	.dwendtag DW$123

	.dwattr DW$115, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$115, DW_AT_end_line(0x110)
	.dwattr DW$115, DW_AT_end_column(0x01)
	.dwendtag DW$115

	.sect	".text"

DW$134	.dwtag  DW_TAG_subprogram, DW_AT_name("captureEdmaISR"), DW_AT_symbol_name("_captureEdmaISR")
	.dwattr DW$134, DW_AT_low_pc(_captureEdmaISR)
	.dwattr DW$134, DW_AT_high_pc(0x00)
	.dwattr DW$134, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$134, DW_AT_begin_line(0x190)
	.dwattr DW$134, DW_AT_begin_column(0x0d)
	.dwattr DW$134, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$134, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",401,1

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
;*   Local Frame Size  : 0 Args + 0 Auto + 44 Save = 44 byte                  *
;******************************************************************************
_captureEdmaISR:
;** --------------------------------------------------------------------------*
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$135, DW_AT_type(*DW$T$22)
	.dwattr DW$135, DW_AT_location[DW_OP_reg4]
;**  	-----------------------    U$10 = &portObjs+8;
;**  	-----------------------    U$11 = (struct $$fake3 *)U$10;
;** 407	-----------------------    L$1 = 3;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;**	-----------------------g2:
;**  	-----------------------    U$14 = U$11;
;**  	-----------------------    L$2 = 2;
;**  	-----------------------    U$13 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 2, 2)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MVK     .L2     0x3,B4            ; |407| 
||         STW     .D2T1   A15,*SP--(48)     ; |401| 
||         MV      .L1X    SP,A31            ; |401| 

           MVKL    .S1     _portObjs+8,A12
||         STDW    .D1T1   A13:A12,*-A31(32)

           MVK     .L2     0x2,B4
||         MV      .L1X    B4,A14
||         MVKH    .S1     _portObjs+8,A12
||         STW     .D1T1   A14,*-A31(24)
||         STDW    .D2T2   B11:B10,*+SP(32)

           STDW    .D2T2   B13:B12,*+SP(40)
||         STDW    .D1T1   A11:A10,*-A31(40)
||         MV      .L1     A4,A15            ; |401| 

	.dwpsn	"vportcap_RAW.c",407,0

           MV      .L1X    B4,A13
||         MV      .L2X    A12,B10
||         MV      .S1     A12,A11
||         ZERO    .D1     A10
||         STW     .D2T2   B3,*+SP(28)

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L80
;** --------------------------------------------------------------------------*
L80:    
DW$L$_captureEdmaISR$2$B:
           LDW     .D2T2   *B10,B4           ; |410| 
           ADD     .L1     A10,A11,A3        ; |410| 
	.dwpsn	"vportcap_RAW.c",408,0
           MVK     .S1     416,A4            ; |410| 
DW$L$_captureEdmaISR$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L81:    
DW$L$_captureEdmaISR$3$B:
;**	-----------------------g3:
;** 409	-----------------------    chan = U$14;
;** 409	-----------------------    Q$11 = 106;
;** 409	-----------------------    Q$10 = 98;
;** 409	-----------------------    Q$9 = 102;
;** 409	-----------------------    Q$8 = 101;
;** 409	-----------------------    Q$7 = 103;
;** 409	-----------------------    Q$6 = 92;
;** 409	-----------------------    Q$5 = 95;
;** 409	-----------------------    Q$4 = 96;
;** 409	-----------------------    Q$3 = 97;
;** 409	-----------------------    Q$2 = 99;
;** 409	-----------------------    Q$1 = 100;
;** 410	-----------------------    if ( !((*chan).status&4u) ) goto g37;

           ADD     .L1     A4,A3,A3          ; |410| 
||         MVK     .S2     0x5f,B7           ; |409| 
||         MVK     .S1     0x63,A6           ; |409| 

           MVK     .S2     0x67,B17          ; |409| 
||         MVK     .S1     0x5c,A7           ; |409| 

           AND     .L2     4,B4,B0           ; |410| 
||         MVK     .S2     0x6a,B4           ; |409| 
||         MVK     .S1     0x65,A9           ; |409| 

   [!B0]   BNOP    .S1     L87,2             ; |410| 
|| [ B0]   LDW     .D1T1   *A3,A4            ; |410| 
||         MVK     .S2     0x61,B8           ; |409| 

           MVK     .S2     0x66,B16          ; |409| 
||         MVK     .S1     0x60,A8           ; |409| 

           MVK     .S2     0x64,B9           ; |409| 
||         MVK     .S1     0x62,A16          ; |409| 

           CMPEQ   .L1     A15,A4,A0         ; |410| 
           ; BRANCHCC OCCURS {L87}           ; |410| 
DW$L$_captureEdmaISR$3$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$4$B:
;** 410	-----------------------    U$11 = (struct $$fake3 *)U$10;
;** 410	-----------------------    C$6 = U$11+U$13+416;
;** 410	-----------------------    if ( tcc != *C$6 ) goto g37;

           MVK     .S2     126,B5            ; |415| 
|| [!A0]   B       .S1     L89               ; |410| 
||         MV      .L1     A11,A12           ; |410| 
||         MV      .D1     A0,A1             ; guard predicate rewrite

   [ A0]   LDW     .D2T2   *+B10[B5],B5      ; |415| 
||         SUB     .L1     A13,1,A0          ; |408| 
|| [!A1]   ADDK    .S2     532,B10           ; |408| 
|| [!A1]   ADDK    .S1     532,A10           ; |408| 
|| [!A1]   SUB     .D1     A13,1,A13         ; |408| 

   [ A1]   ZERO    .L1     A0                ; |408| nullify predicate
   [ A0]   BNOP    .S1     L81,2             ; |408| 
           ; BRANCHCC OCCURS {L89}           ; |410| 
DW$L$_captureEdmaISR$4$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$5$B:
;**  	-----------------------    K$155 = (void *)0xffffffffu;
;** 415	-----------------------    if ( (*chan).mode&2 ) goto g12;
           AND     .L2     2,B5,B0           ; |415| 

   [!B0]   LDW     .D1T1   *+A3(4),A3        ; |419| 
|| [ B0]   MVK     .S2     428,B4            ; |423| 
|| [!B0]   MVK     .S1     32,A4             ; |675| 
|| [!B0]   MVK     .L2     1,B6              ; |676| 
|| [!B0]   MVK     .L1     1,A5              ; |675| 

   [ B0]   B       .S1     L82               ; |415| 
|| [ B0]   ADD     .L2     B4,B10,B4         ; |423| 
|| [!B0]   MVK     .S2     32,B5             ; |676| 

   [ B0]   LDHU    .D2T2   *B4,B0            ; |423| 
           NOP             2
           CMPLTU  .L1     A3,A4,A0          ; |675| 

   [!A0]   MVKL    .S1     0x1a0ffa4,A4      ; |676| 
|| [ A0]   MVKL    .S2     0x1a0ffe4,B5      ; |675| 
|| [!A0]   SUB     .L2X    A3,B5,B5          ; |676| 

           ; BRANCHCC OCCURS {L82}           ; |415| 
DW$L$_captureEdmaISR$5$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$6$B:
;** 419	-----------------------    tccIntNum = C$5 = C$6[1];
;** 675	-----------------------    if ( (unsigned)C$5 < 32u ) goto g8;  // [26]
;** 676	-----------------------    *(volatile unsigned *)0x1a0ffa4u = 1u<<(unsigned)C$5-32u;  // [26]
;** 676	-----------------------    goto g9;  // [26]
;**	-----------------------g8:
;** 675	-----------------------    *(volatile unsigned *)0x1a0ffe4u = 1u<<tccIntNum;  // [26]
;**	-----------------------g9:
;** 420	-----------------------    tccIntNum = C$4 = *(Q$11*4+(int (*)[3])chan);
;** 675	-----------------------    if ( (unsigned)C$4 < (K$39 = 32u) ) goto g11;  // [26]
;** 676	-----------------------    *(volatile unsigned *)0x1a0ffa4u = 1u<<(unsigned)C$4-32u;  // [26]
;** 676	-----------------------    goto g12;  // [26]
;**	-----------------------g11:
;** 675	-----------------------    *(volatile unsigned *)0x1a0ffe4u = 1u<<tccIntNum;  // [26]

   [ A0]   SHL     .S1     A5,A3,A3          ; |675| 
|| [!A0]   SHL     .S2     B6,B5,B5          ; |676| 
||         MVK     .L1     1,A31             ; |676| 

   [!A0]   MVKH    .S1     0x1a0ffa4,A4      ; |676| 
|| [ A0]   MVKH    .S2     0x1a0ffe4,B5      ; |675| 

   [!A0]   STW     .D1T2   B5,*A4            ; |676| 
|| [ A0]   STW     .D2T1   A3,*B5            ; |675| 
||         MVK     .S2     0x20,B5           ; |675| 
||         MVK     .S1     32,A3             ; |676| 

           LDW     .D2T2   *+B10[B4],B4      ; |420| 
           NOP             4
           CMPLTU  .L2     B4,B5,B0          ; |675| 

   [!B0]   SUB     .L1X    B4,A3,A3          ; |676| 
|| [ B0]   SHL     .S2     B6,B4,B4          ; |675| 
|| [ B0]   MVKL    .S1     0x1a0ffe4,A3      ; |675| 

   [!B0]   MVKL    .S2     0x1a0ffa4,B5      ; |676| 
|| [ B0]   MVKH    .S1     0x1a0ffe4,A3      ; |675| 

   [!B0]   SHL     .S1     A31,A3,A3         ; |676| 
||         MVK     .S2     428,B4            ; |423| 
|| [ B0]   STW     .D1T2   B4,*A3            ; |675| 

           ADD     .L2     B4,B10,B4         ; |423| 
|| [!B0]   MVKH    .S2     0x1a0ffa4,B5      ; |676| 

   [!B0]   STW     .D2T1   A3,*B5            ; |676| 
           LDHU    .D2T2   *B4,B0            ; |423| 
           NOP             4
DW$L$_captureEdmaISR$6$E:
;** --------------------------------------------------------------------------*
L82:    
DW$L$_captureEdmaISR$7$B:
;**	-----------------------g12:
;** 423	-----------------------    if ( !(*chan).mergeFlds ) goto g19;

   [!B0]   B       .S1     L83               ; |423| 
||         MVK     .S2     124,B4            ; |427| 
|| [ B0]   ADDAW   .D2     B10,B7,B31        ; |427| 
|| [!B0]   MVK     .L2     0xffffffff,B30

   [!B0]   MVK     .S2     125,B4            ; |466| 
|| [ B0]   LDHU    .D2T2   *B31,B5           ; |427| 

   [!B0]   MVK     .S2     124,B31           ; |463| 
|| [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |466| 

   [!B0]   MVK     .S2     123,B5            ; |462| 
|| [!B0]   LDW     .D2T2   *+B10[B31],B6     ; |463| 

   [!B0]   LDW     .D2T2   *+B10[B5],B16     ; |462| 
|| [!B0]   ZERO    .L2     B5                ; |466| 

   [ B0]   LDW     .D2T2   *+B10[B4],B6      ; |427| 
           ; BRANCHCC OCCURS {L83}           ; |423| 
DW$L$_captureEdmaISR$7$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$8$B:
;** 427	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$5*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.y1;
;** 431	-----------------------    if ( (*chan).mode&2 ) goto g15;
;** 434	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$4*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb1;
;** 435	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$3*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr1;
;**	-----------------------g15:
;** 438	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$10*4+(unsigned (*)[6])chan)+(K$76 = 0x1a0000cu)) = (unsigned)(*(*chan).nextViop).frame.iFrm.y1;
;** 442	-----------------------    if ( (*chan).mode&2 ) goto g17;
;** 445	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$1*4+(unsigned (*)[6])chan)+K$76) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb1;
;** 446	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$9*4+(unsigned (*)[6])chan)+K$76) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr1;
;**	-----------------------g17:
;** 449	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$2*4+(unsigned (*)[6])chan)+K$76) = (unsigned)(*(*chan).nextViop).frame.iFrm.y2;
;** 453	-----------------------    if ( (*chan).mode&2 ) goto g19;
;** 456	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$8*4+(unsigned (*)[6])chan)+K$76) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb2;
;** 457	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$7*4+(unsigned (*)[6])chan)+K$76) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr2;

           MVKL    .S1     0x1a0000c,A3      ; |427| 
||         MVK     .S2     126,B30           ; |431| 
||         MV      .L1X    B10,A5

           MVKH    .S1     0x1a0000c,A3      ; |427| 
||         ADDAW   .D1     A5,A16,A30        ; |438| 
||         MVK     .S2     124,B29           ; |446| 

           MVK     .S1     124,A31           ; |438| 
||         ADDAW   .D1     A5,A6,A26         ; |449| 
||         MVK     .S2     124,B31           ; |463| 

           ADD     .L2X    A3,B5,B5          ; |427| 
||         ADDAW   .D1     A5,A8,A3          ; |434| 
||         MVKL    .S1     0x1a0000c,A29     ; |438| 

           LDW     .D2T2   *+B6(8),B4        ; |427| 
||         MVKH    .S1     0x1a0000c,A29     ; |438| 

           NOP             1
           MVK     .S1     126,A28           ; |442| 
           MVK     .S1     124,A27           ; |449| 
           MVK     .S1     126,A25           ; |453| 
           STW     .D2T2   B4,*B5            ; |427| 

           MVK     .L2     0xffffffff,B30
||         LDW     .D2T2   *+B10[B30],B4     ; |431| 

           NOP             3
           ADDAW   .D2     B10,B8,B5         ; |435| 

           MVK     .S2     124,B4            ; |434| 
||         AND     .L2     2,B4,B0           ; |431| 

   [!B0]   MVKL    .S1     0x1a0000c,A3      ; |434| 
|| [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |434| 
|| [!B0]   LDHU    .D1T1   *A3,A4            ; |434| 

           NOP             3
   [!B0]   MVKH    .S1     0x1a0000c,A3      ; |434| 

   [!B0]   ADD     .L1     A3,A4,A3          ; |434| 
|| [!B0]   LDW     .D2T2   *+B4(12),B4       ; |434| 

           NOP             4

           MVK     .S2     124,B4            ; |435| 
|| [!B0]   STW     .D1T2   B4,*A3            ; |434| 

   [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |435| 
           NOP             1
   [!B0]   LDHU    .D2T2   *B5,B5            ; |435| 
           NOP             2

   [!B0]   MVKL    .S2     0x1a0000c,B4      ; |435| 
|| [!B0]   LDW     .D2T2   *+B4(16),B6       ; |435| 

           NOP             1
   [!B0]   MVKH    .S2     0x1a0000c,B4      ; |435| 
   [!B0]   ADD     .L2     B4,B5,B4          ; |435| 
           ADDAW   .D2     B10,B17,B5        ; |457| 
   [!B0]   STW     .D2T2   B6,*B4            ; |435| 

           LDW     .D1T1   *+A5[A31],A4      ; |438| 
||         ADDAW   .D2     B10,B9,B4         ; |445| 

           LDHU    .D1T1   *A30,A3           ; |438| 
           NOP             3
           LDW     .D1T1   *+A4(8),A16       ; |438| 
           NOP             3
           ADD     .L1     A29,A3,A3         ; |438| 
           STW     .D1T1   A16,*A3           ; |438| 
           LDW     .D1T1   *+A5[A28],A3      ; |442| 
           NOP             4

           MVK     .S1     124,A3            ; |445| 
||         AND     .L1     2,A3,A0           ; |442| 

   [!A0]   LDHU    .D2T2   *B4,B4            ; |445| 
|| [!A0]   LDW     .D1T1   *+A5[A3],A3       ; |445| 

           NOP             4

           ADDAW   .D2     B10,B16,B4        ; |446| 
|| [!A0]   LDW     .D1T1   *+A3(12),A3       ; |445| 
|| [!A0]   ADD     .L1X    A29,B4,A16        ; |445| 

           NOP             4
   [!A0]   STW     .D1T1   A3,*A16           ; |445| 
   [!A0]   LDW     .D2T1   *+B10[B29],A3     ; |446| 
   [!A0]   LDHU    .D2T2   *B4,B4            ; |446| 
           NOP             3
   [!A0]   LDW     .D1T1   *+A3(16),A3       ; |446| 
           NOP             3
   [!A0]   ADD     .L1X    A29,B4,A16        ; |446| 
   [!A0]   STW     .D1T1   A3,*A16           ; |446| 
           LDW     .D1T1   *+A5[A27],A16     ; |449| 
           LDHU    .D1T2   *A26,B4           ; |449| 
           NOP             3
           LDW     .D1T1   *+A16(20),A16     ; |449| 
           NOP             2
           ADD     .L1X    A29,B4,A3         ; |449| 
           MVK     .S2     124,B4            ; |456| 
           STW     .D1T1   A16,*A3           ; |449| 
           LDW     .D1T1   *+A5[A25],A3      ; |453| 
           NOP             3
           ADDAW   .D1     A5,A9,A5          ; |456| 
           AND     .L1     2,A3,A0           ; |453| 
   [!A0]   LDW     .D2T1   *+B10[B4],A3      ; |456| 
   [!A0]   LDHU    .D1T1   *A5,A5            ; |456| 
           NOP             3
   [!A0]   LDW     .D1T1   *+A3(24),A3       ; |456| 
           NOP             3
   [!A0]   ADD     .L1     A29,A5,A5         ; |456| 
   [!A0]   STW     .D1T1   A3,*A5            ; |456| 
   [!A0]   LDW     .D2T2   *+B10[B4],B4      ; |457| 
   [!A0]   LDHU    .D2T2   *B5,B5            ; |457| 
           NOP             3
   [!A0]   LDW     .D2T2   *+B4(28),B4       ; |457| 
           NOP             3
   [!A0]   ADD     .L2X    A29,B5,B5         ; |457| 

           MVK     .S2     125,B4            ; |466| 
|| [!A0]   STW     .D2T2   B4,*B5            ; |457| 

           LDW     .D2T2   *+B10[B4],B4      ; |466| 
||         MVK     .S2     123,B5            ; |462| 

           LDW     .D2T2   *+B10[B31],B6     ; |463| 

           ZERO    .L2     B5                ; |466| 
||         LDW     .D2T2   *+B10[B5],B16     ; |462| 

           NOP             1
DW$L$_captureEdmaISR$8$E:
;** --------------------------------------------------------------------------*
L83:    
DW$L$_captureEdmaISR$9$B:
;**	-----------------------g19:
;** 462	-----------------------    curViop = (*chan).curViop;
;** 463	-----------------------    (*chan).curViop = (*chan).nextViop;
;** 466	-----------------------    C$3 = (*chan).mrViop;
;** 466	-----------------------    if ( !((curViop != C$3)&((void *)C$3 != K$155)) ) goto g21;
;** 467	-----------------------    elem = (void *)C$3;
;** 141	-----------------------    prev = *(Q$6*4+(struct _QUE_Elem **)chan);  // [4]
;** 143	-----------------------    (*(struct _QUE_Elem *)elem).next = (struct _QUE_Elem *)chan+364;  // [4]
;** 144	-----------------------    (*(struct _QUE_Elem *)elem).prev = prev;  // [4]
;** 145	-----------------------    (*prev).next = (struct _QUE_Elem *)elem;  // [4]
;** 146	-----------------------    *(Q$6*4+(struct _QUE_Elem **)chan) = (struct _QUE_Elem *)elem;  // [4]
;**	-----------------------g21:
;** 469	-----------------------    (*chan).mrViop = curViop;
;** 95	-----------------------    C$2 = (struct _QUE_Elem *)chan+364;  // [3]
;** 95	-----------------------    elem = *C$2;  // [3]
;** 96	-----------------------    next = (*elem).next;  // [3]
;** 98	-----------------------    *C$2 = next;  // [3]
;** 99	-----------------------    (*next).prev = (struct _QUE_Elem *)C$2;  // [3]
;** 101	-----------------------    viop = (struct _FVID_Frame *)(void *)elem;  // [3]
;** 101	-----------------------    if ( viop != (struct _FVID_Frame *)C$2 ) goto g25;  // [3]

           ZERO    .L1     A3                ; |466| 
||         MVK     .S2     123,B17           ; |463| 
||         MV      .L2X    A7,B18
||         MVK     .S1     364,A31           ; |143| 

           CMPEQ   .L2     B4,B30,B0         ; |466| 
||         MVK     .S2     125,B29           ; |469| 

   [!B0]   MVK     .L2     0x1,B5            ; |466| 
||         STW     .D2T2   B6,*+B10[B17]     ; |463| 
||         ADD     .S2X    A31,B10,B6        ; |143| 

           CMPEQ   .L2     B16,B4,B2         ; |466| 
||         MVK     .S2     364,B28           ; |95| 

   [!B2]   MVK     .L1     0x1,A3            ; |466| 
           AND     .L1X    B5,A3,A0          ; |466| 
   [ A0]   LDW     .D2T2   *+B10[B18],B5     ; |141| 
           NOP             3
   [ A0]   STW     .D2T2   B6,*B4            ; |143| 
   [ A0]   STW     .D2T2   B5,*+B4(4)        ; |144| 

           ADD     .L2     B28,B10,B5        ; |95| 
|| [ A0]   STW     .D2T2   B4,*B5            ; |145| 

   [ A0]   STW     .D2T2   B4,*+B10[B18]     ; |146| 
           STW     .D2T2   B16,*+B10[B29]    ; |469| 
           LDW     .D2T2   *B5,B4            ; |95| 
           NOP             4

           LDW     .D2T2   *B4,B6            ; |96| 
||         CMPEQ   .L2     B4,B5,B1          ; |101| 

   [!B1]   BNOP    .S1     L84,3             ; |101| 
           STW     .D2T2   B6,*B5            ; |98| 

   [ B1]   MVK     .S2     129,B5            ; |476| 
||         STW     .D2T2   B5,*+B6(4)        ; |99| 

           ; BRANCHCC OCCURS {L84}           ; |101| 
DW$L$_captureEdmaISR$9$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$10$B:
;** 476	-----------------------    if ( (*chan).packetIOM != K$155 ) goto g24;
;** 480	-----------------------    (*chan).nextViop = curViop;
;**	-----------------------g24:
;** 482	-----------------------    (*chan).queEmpty = 1;
;** 482	-----------------------    goto g26;

           LDW     .D2T2   *+B10[B5],B5      ; |476| 
||         MVK     .L2     0xffffffff,B6
||         MVK     .S1     444,A3            ; |482| 
||         MVK     .S2     124,B31           ; |480| 
||         MVK     .L1     1,A4              ; |482| 

           NOP             2
           ADD     .L1X    A3,B10,A3         ; |482| 
           STH     .D1T1   A4,*A3            ; |482| 
           CMPEQ   .L2     B5,B6,B0          ; |476| 
   [ B0]   STW     .D2T2   B16,*+B10[B31]    ; |480| 
DW$L$_captureEdmaISR$10$E:
;** --------------------------------------------------------------------------*
L84:    
DW$L$_captureEdmaISR$11$B:
;**	-----------------------g25:
;** 474	-----------------------    (*chan).nextViop = viop;
;**	-----------------------g26:
;** 484	-----------------------    if ( (*chan).mergeFlds ) goto g31;
           MVK     .S2     428,B5            ; |484| 
           ADD     .L2     B5,B10,B5         ; |484| 

           LDHU    .D2T2   *B5,B0            ; |484| 
|| [!B1]   MVK     .S2     124,B5            ; |474| 

           NOP             2
   [!B1]   STW     .D2T2   B4,*+B10[B5]      ; |474| 
           MVK     .S2     123,B4            ; |485| 

   [ B0]   MVK     .S2     123,B4            ; |511| 
|| [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |485| 
|| [ B0]   B       .S1     L85               ; |484| 

   [!B0]   MVKL    .S1     0x1a0000c,A3      ; |485| 
|| [!B0]   ADDAW   .D2     B10,B7,B5         ; |485| 

   [!B0]   MVKH    .S1     0x1a0000c,A3      ; |485| 
|| [!B0]   LDHU    .D2T2   *B5,B5            ; |485| 

   [ B0]   LDW     .D2T2   *+B10[B4],B4      ; |511| 
           NOP             1
   [!B0]   LDW     .D2T2   *+B4(8),B4        ; |485| 
           ; BRANCHCC OCCURS {L85}           ; |484| 
DW$L$_captureEdmaISR$11$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$12$B:
;** 485	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$5*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).curViop).frame.iFrm.y1;
;**  	-----------------------    U$102 = (unsigned (*)[6])chan+392;
;** 490	-----------------------    if ( (*chan).mode&2 ) goto g29;
;** 493	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$4*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).curViop).frame.iFrm.cb1;
;** 494	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$3*4+(unsigned (*)[3])chan)+0x1a0000cu) = (unsigned)(*(*chan).curViop).frame.iFrm.cr1;
;**	-----------------------g29:
;** 497	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*U$102+(K$76 = 0x1a0000cu)) = (unsigned)(*(*chan).nextViop).frame.iFrm.y1;
;** 501	-----------------------    if ( (*chan).mode&2 ) goto g31;
;** 504	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$2*4+(unsigned (*)[6])chan)+K$76) = (unsigned)(*(*chan).nextViop).frame.iFrm.cb1;
;** 505	-----------------------    *(volatile unsigned *)((unsigned)(unsigned short)*(Q$1*4+(unsigned (*)[6])chan)+K$76) = (unsigned)(*(*chan).nextViop).frame.iFrm.cr1;

           MVK     .S2     126,B31           ; |490| 
||         MV      .L1X    B10,A4
||         MVK     .S1     124,A31           ; |497| 

           ADD     .L2X    A3,B5,B5          ; |485| 
||         MVK     .S1     123,A3            ; |493| 
||         ADDAW   .D1     A4,A8,A5          ; |493| 
||         MVK     .S2     392,B30

           MVKL    .S1     0x1a0000c,A30     ; |497| 
||         MVK     .S2     124,B29           ; |504| 

           MVKH    .S1     0x1a0000c,A30     ; |497| 

           STW     .D2T2   B4,*B5            ; |485| 
||         MVK     .S1     126,A29           ; |501| 

           LDW     .D2T2   *+B10[B31],B4     ; |490| 
           NOP             4
           AND     .L2     2,B4,B0           ; |490| 

   [!B0]   MVKL    .S2     0x1a0000c,B4      ; |493| 
|| [!B0]   LDW     .D1T1   *+A4[A3],A3       ; |493| 

   [!B0]   MVKH    .S2     0x1a0000c,B4      ; |493| 
|| [!B0]   LDHU    .D1T2   *A5,B5            ; |493| 

           NOP             3
   [!B0]   LDW     .D1T1   *+A3(12),A3       ; |493| 
           NOP             3
   [!B0]   ADD     .L2     B4,B5,B4          ; |493| 

           MVK     .S1     123,A3            ; |494| 
|| [!B0]   STW     .D2T1   A3,*B4            ; |493| 

           ADDAW   .D2     B10,B8,B4         ; |494| 
|| [!B0]   LDW     .D1T1   *+A4[A3],A3       ; |494| 

   [!B0]   MVKL    .S2     0x1a0000c,B4      ; |494| 
|| [!B0]   LDHU    .D2T2   *B4,B5            ; |494| 

           NOP             2
   [!B0]   MVKH    .S2     0x1a0000c,B4      ; |494| 
   [!B0]   LDW     .D1T1   *+A3(16),A3       ; |494| 
           NOP             3
   [!B0]   ADD     .L2     B4,B5,B4          ; |494| 

           ADD     .L1X    B30,A4,A3
|| [!B0]   STW     .D2T1   A3,*B4            ; |494| 

           ADDAW   .D2     B10,B9,B4         ; |505| 
||         LDW     .D1T1   *+A4[A31],A5      ; |497| 

           LDHU    .D1T1   *A3,A7            ; |497| 
           NOP             3
           LDW     .D1T1   *+A5(8),A5        ; |497| 
           NOP             3
           ADD     .L1     A30,A7,A7         ; |497| 
           STW     .D1T1   A5,*A7            ; |497| 
           LDW     .D1T1   *+A4[A29],A5      ; |501| 
           NOP             3
           ADDAW   .D1     A4,A6,A4          ; |504| 
           AND     .L1     2,A5,A0           ; |501| 
   [!A0]   LDW     .D2T1   *+B10[B29],A5     ; |504| 
   [!A0]   LDHU    .D1T1   *A4,A4            ; |504| 
           NOP             3
   [!A0]   LDW     .D1T1   *+A5(12),A5       ; |504| 
           NOP             3
   [!A0]   ADD     .L1     A30,A4,A4         ; |504| 
   [!A0]   STW     .D1T1   A5,*A4            ; |504| 
   [!A0]   LDW     .D2T2   *+B10[B29],B5     ; |505| 
   [!A0]   LDHU    .D2T2   *B4,B4            ; |505| 
           NOP             3
   [!A0]   LDW     .D2T2   *+B5(16),B5       ; |505| 
           NOP             3
   [!A0]   ADD     .L2X    A30,B4,B4         ; |505| 

           MVK     .S2     123,B4            ; |511| 
|| [!A0]   STW     .D2T2   B5,*B4            ; |505| 

           LDW     .D2T2   *+B10[B4],B4      ; |511| 
           NOP             2
DW$L$_captureEdmaISR$12$E:
;** --------------------------------------------------------------------------*
L85:    
DW$L$_captureEdmaISR$13$B:
;**	-----------------------g31:
;** 511	-----------------------    if ( curViop == (*chan).curViop ) goto g36;
           NOP             2

           MVK     .S2     129,B4            ; |512| 
||         CMPEQ   .L2     B16,B4,B0         ; |511| 

   [ B0]   BNOP    .S2     L86,3             ; |511| 
|| [!B0]   MVK     .S1     444,A3            ; |519| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
|| [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |512| 

           MV      .S2     B0,B2             ; |512| branch predicate copy
|| [!B1]   ADD     .S1X    A3,B10,A3         ; |519| 
|| [!B1]   ZERO    .L1     A0
|| [!B0]   MVK     .L2     0xffffffff,B5

   [ B2]   MVK     .S2     125,B5            ; |523| 
|| [ B2]   MVK     .D2     0xffffffff,B4
||         CMPEQ   .L2     B4,B5,B0          ; |512| 

           ; BRANCHCC OCCURS {L86}           ; |511| 
DW$L$_captureEdmaISR$13$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$14$B:
;** 512	-----------------------    U$188 = (*chan).packetIOM;
;** 512	-----------------------    if ( (void *)U$188 != K$155 ) goto g35;
;** 519	-----------------------    if ( !(*chan).queEmpty ) goto g37;
;** 520	-----------------------    (*chan).nextViop = (*chan).mrViop;
;** 520	-----------------------    goto g37;
   [ B0]   LDHU    .D1T1   *A3,A0            ; |519| 
           NOP             4
   [ A0]   MVK     .S2     125,B12           ; |520| 

   [ B0]   BNOP    .S1     L88,4             ; |520| 
|| [ A0]   MVK     .S2     124,B13           ; |520| 
|| [ A0]   LDW     .D2T2   *+B10[B12],B11    ; |520| 

           SUB     .L1     A13,1,A0          ; |408| 
|| [ A0]   STW     .D2T2   B11,*+B10[B13]    ; |520| 

           ; BRANCHCC OCCURS {L88}           ; |520| 
DW$L$_captureEdmaISR$14$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$15$B:
;**	-----------------------g35:
;** 514	-----------------------    *(*U$188).addr = (void *)curViop;
;** 515	-----------------------    (*(*chan).packetIOM).size = 32u;
;** 516	-----------------------    (*(*chan).cbFxn)((void *)(*chan).cbArg, (*chan).packetIOM);
;** 517	-----------------------    (*chan).packetIOM = (struct _DEV_Frame *)K$155;
;** 518	-----------------------    (*chan).mrViop = (struct _FVID_Frame *)K$155;
;** 519	-----------------------    goto g37;

           LDW     .D2T2   *+B4(8),B4        ; |514| 
||         MVK     .S2     129,B31           ; |515| 
||         MVK     .S1     32,A3             ; |515| 

           NOP             1
           MVK     .S2     108,B30           ; |516| 
           MVK     .S2     109,B6            ; |516| 
           MVK     .S2     129,B29           ; |516| 
           STW     .D2T2   B16,*B4           ; |514| 
           LDW     .D2T2   *+B10[B31],B4     ; |515| 
           NOP             4
           STW     .D2T1   A3,*+B4(12)       ; |515| 
           LDW     .D2T2   *+B10[B30],B5     ; |516| 
           NOP             2
           LDW     .D2T1   *+B10[B6],A4      ; |516| 
           LDW     .D2T2   *+B10[B29],B4     ; |516| 
           CALL    .S2     B5                ; |516| 
           ADDKPC  .S2     RL30,B3,4         ; |516| 
RL30:      ; CALL OCCURS {A3}                ; |516| 
DW$L$_captureEdmaISR$15$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$16$B:

           BNOP    .S1     L88,3             ; |519| 
||         MVK     .S2     125,B5            ; |518| 
||         MVK     .L2     0xffffffff,B4
||         SUB     .L1     A13,1,A0          ; |408| 

           MVK     .S2     129,B31           ; |517| 
||         STW     .D2T2   B4,*+B10[B5]      ; |518| 

           STW     .D2T2   B4,*+B10[B31]     ; |517| 
           ; BRANCH OCCURS {L88}             ; |519| 
DW$L$_captureEdmaISR$16$E:
;** --------------------------------------------------------------------------*
L86:    
DW$L$_captureEdmaISR$17$B:
;**	-----------------------g36:
;** 523	-----------------------    (*chan).mrViop = (struct _FVID_Frame *)K$155;
           STW     .D2T2   B4,*+B10[B5]      ; |523| 
DW$L$_captureEdmaISR$17$E:
;** --------------------------------------------------------------------------*
L87:    
DW$L$_captureEdmaISR$18$B:
           SUB     .L1     A13,1,A0          ; |408| 
DW$L$_captureEdmaISR$18$E:
;** --------------------------------------------------------------------------*
L88:    
DW$L$_captureEdmaISR$19$B:

   [ A0]   B       .S1     L81               ; |408| 
||         ADDK    .S2     532,B10           ; |408| 
||         SUB     .L1     A13,1,A13         ; |408| 

           ADDK    .S1     532,A10           ; |408| 
           NOP             1
DW$L$_captureEdmaISR$19$E:
;** --------------------------------------------------------------------------*
L89:    
DW$L$_captureEdmaISR$20$B:
;**	-----------------------g37:
;** 408	-----------------------    U$13 += 532;
;** 408	-----------------------    U$14 += 532;
;** 408	-----------------------    if ( --L$2 ) goto g3;
;** 407	-----------------------    U$10 += 1072;

   [ A0]   LDW     .D2T2   *B10,B4           ; |410| 
|| [!A0]   ADDK    .S1     1072,A12          ; |407| 
|| [ A0]   ADD     .L1     A10,A11,A3        ; |410| 

   [ A0]   MVK     .S1     416,A4            ; |410| 
||         SUB     .L1     A14,1,A0          ; |407| 

	.dwpsn	"vportcap_RAW.c",526,0
           NOP             1
           ; BRANCHCC OCCURS {L81}           ; |408| 
DW$L$_captureEdmaISR$20$E:
;** --------------------------------------------------------------------------*
DW$L$_captureEdmaISR$21$B:
;** 407	-----------------------    U$11 += 1072;
;** 407	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    return;

   [ A0]   B       .S2     L80               ; |407| 
|| [!A0]   LDW     .D2T2   *+SP(28),B3       ; |528| 
|| [ A0]   MVK     .L2     0x2,B4
|| [!A0]   MV      .L1X    SP,A31            ; |528| 
|| [ A0]   ZERO    .D1     A10
||         ADDK    .S1     1072,A11          ; |407| 

   [!A0]   LDDW    .D1T1   *+A31(8),A11:A10  ; |528| 
||         SUB     .L1     A14,1,A14         ; |407| 
|| [!A0]   LDDW    .D2T2   *+SP(32),B11:B10  ; |528| 
|| [ A0]   MV      .L2X    A12,B10

   [!A0]   LDW     .D1T1   *+A31(24),A14     ; |528| 
|| [ A0]   MV      .L1X    B4,A13
|| [!A0]   LDDW    .D2T2   *+SP(40),B13:B12  ; |528| 

   [!A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |528| 
   [!A0]   LDW     .D2T1   *++SP(48),A15     ; |528| 
	.dwpsn	"vportcap_RAW.c",527,0
   [!A0]   RET     .S2     B3                ; |528| 
           ; BRANCHCC OCCURS {L80}           ; |407| 
DW$L$_captureEdmaISR$21$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"vportcap_RAW.c",528,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |528| 

DW$136	.dwtag  DW_TAG_loop
	.dwattr DW$136, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L80:1:1287391603")
	.dwattr DW$136, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$136, DW_AT_begin_line(0x197)
	.dwattr DW$136, DW_AT_end_line(0x20f)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_captureEdmaISR$2$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_captureEdmaISR$2$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_captureEdmaISR$21$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_captureEdmaISR$21$E)

DW$139	.dwtag  DW_TAG_loop
	.dwattr DW$139, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L81:2:1287391603")
	.dwattr DW$139, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$139, DW_AT_begin_line(0x198)
	.dwattr DW$139, DW_AT_end_line(0x20e)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_captureEdmaISR$3$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_captureEdmaISR$3$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_captureEdmaISR$17$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_captureEdmaISR$17$E)
DW$142	.dwtag  DW_TAG_loop_range
	.dwattr DW$142, DW_AT_low_pc(DW$L$_captureEdmaISR$15$B)
	.dwattr DW$142, DW_AT_high_pc(DW$L$_captureEdmaISR$15$E)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$_captureEdmaISR$5$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$_captureEdmaISR$5$E)
DW$144	.dwtag  DW_TAG_loop_range
	.dwattr DW$144, DW_AT_low_pc(DW$L$_captureEdmaISR$6$B)
	.dwattr DW$144, DW_AT_high_pc(DW$L$_captureEdmaISR$6$E)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$_captureEdmaISR$7$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$_captureEdmaISR$7$E)
DW$146	.dwtag  DW_TAG_loop_range
	.dwattr DW$146, DW_AT_low_pc(DW$L$_captureEdmaISR$8$B)
	.dwattr DW$146, DW_AT_high_pc(DW$L$_captureEdmaISR$8$E)
DW$147	.dwtag  DW_TAG_loop_range
	.dwattr DW$147, DW_AT_low_pc(DW$L$_captureEdmaISR$9$B)
	.dwattr DW$147, DW_AT_high_pc(DW$L$_captureEdmaISR$9$E)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$_captureEdmaISR$10$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$_captureEdmaISR$10$E)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$_captureEdmaISR$11$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$_captureEdmaISR$11$E)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$_captureEdmaISR$12$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$_captureEdmaISR$12$E)
DW$151	.dwtag  DW_TAG_loop_range
	.dwattr DW$151, DW_AT_low_pc(DW$L$_captureEdmaISR$13$B)
	.dwattr DW$151, DW_AT_high_pc(DW$L$_captureEdmaISR$13$E)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$_captureEdmaISR$14$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$_captureEdmaISR$14$E)
DW$153	.dwtag  DW_TAG_loop_range
	.dwattr DW$153, DW_AT_low_pc(DW$L$_captureEdmaISR$16$B)
	.dwattr DW$153, DW_AT_high_pc(DW$L$_captureEdmaISR$16$E)
DW$154	.dwtag  DW_TAG_loop_range
	.dwattr DW$154, DW_AT_low_pc(DW$L$_captureEdmaISR$18$B)
	.dwattr DW$154, DW_AT_high_pc(DW$L$_captureEdmaISR$18$E)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_captureEdmaISR$4$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_captureEdmaISR$4$E)
DW$156	.dwtag  DW_TAG_loop_range
	.dwattr DW$156, DW_AT_low_pc(DW$L$_captureEdmaISR$19$B)
	.dwattr DW$156, DW_AT_high_pc(DW$L$_captureEdmaISR$19$E)
DW$157	.dwtag  DW_TAG_loop_range
	.dwattr DW$157, DW_AT_low_pc(DW$L$_captureEdmaISR$20$B)
	.dwattr DW$157, DW_AT_high_pc(DW$L$_captureEdmaISR$20$E)
	.dwendtag DW$139

	.dwendtag DW$136

	.dwattr DW$134, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$134, DW_AT_end_line(0x210)
	.dwattr DW$134, DW_AT_end_column(0x01)
	.dwendtag DW$134

	.sect	".text"

DW$158	.dwtag  DW_TAG_subprogram, DW_AT_name("captureISR"), DW_AT_symbol_name("_captureISR")
	.dwattr DW$158, DW_AT_low_pc(_captureISR)
	.dwattr DW$158, DW_AT_high_pc(0x00)
	.dwattr DW$158, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$158, DW_AT_begin_line(0x4ad)
	.dwattr DW$158, DW_AT_begin_column(0x0d)
	.dwattr DW$158, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$158, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",1198,1

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
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$159, DW_AT_type(*DW$T$22)
	.dwattr DW$159, DW_AT_location[DW_OP_reg4]
;* 1199	-----------------------    C$4 = &portObjs[0];
;* 1199	-----------------------    C$3 = portNum*1072;
;* 1199	-----------------------    C$6 = (*(C$3+C$4)).base;
;* 1199	-----------------------    base = (volatile int *)(C$6+204);
;* 1201	-----------------------    vpis = *((volatile int *)C$6+204);
;* 1202	-----------------------    mask = vpis;
;* 1203	-----------------------    C$5 = C$3+C$4;
;* 1203	-----------------------    chanObjs = (struct $$fake3 *)(C$5+8);
;* 1205	-----------------------    K$5 = C$5;
;* 1205	-----------------------    if ( (((unsigned)mask&*((struct $$fake3 *)C$4+C$3+48)) != 0u)&((void *)*((void (**)())K$5+448) != (K$27 = (void *)0xffffffffu)) ) goto g5;

           MVK     .S1     1072,A3           ; |1199| 
||         MVKL    .S2     _portObjs,B4      ; |1199| 
||         MV      .L1X    SP,A31            ; |1198| 
||         STW     .D2T1   A11,*SP--(24)     ; |1198| 

           MPYLI   .M1     A3,A4,A5:A4       ; |1199| 
||         MVKH    .S2     _portObjs,B4      ; |1199| 
||         STW     .D1T1   A10,*-A31(16)
||         STW     .D2T2   B13,*+SP(12)
||         MVK     .S1     580,A6            ; |1208| 
||         MV      .L2     B3,B13

           NOP             1
           STDW    .D2T2   B11:B10,*+SP(16)
           MVK     .S2     51,B7             ; |1201| 
           ADD     .L1X    A4,B4,A3          ; |1205| 

           LDW     .D1T1   *+A3(48),A3       ; |1205| 
||         ADD     .L2X    B4,A4,B5          ; |1199| 

           ADD     .L2X    B4,A4,B6          ; |1203| 
||         LDW     .D2T2   *+B5(4),B5        ; |1199| 

           NOP             2
           ADD     .S2     8,B6,B10          ; |1203| 
           ADD     .L2X    A6,B6,B11         ; |1208| 

           MVK     .S2     112,B7            ; |1205| 
||         LDW     .D2T2   *+B5[B7],B4       ; |1201| 

           MVK     .L2     0xffffffff,B7     ; |1205| 
||         LDW     .D2T2   *+B6[B7],B8       ; |1205| 

           NOP             3
           MV      .L1X    B4,A10            ; |1202| 

           CMPEQ   .L2     B8,B7,B0          ; |1205| 
||         AND     .L1     A3,A10,A3         ; |1205| 

           ZERO    .S1     A3                ; |1205| 
||         CMPEQ   .L1     A3,0,A4           ; |1205| 

           MVK     .S1     204,A4            ; |1199| 
|| [!B0]   MVK     .D1     0x1,A3            ; |1205| 
||         XOR     .L1     1,A4,A5           ; |1205| 

           MVK     .S1     110,A3            ; |1206| 
||         MVK     .S2     130,B5            ; |1206| 
||         ADD     .D1X    A4,B5,A11         ; |1199| 
||         AND     .L1     A3,A5,A0          ; |1205| 

   [ A0]   BNOP    .S1     L90,3             ; |1205| 
||         MV      .L1X    B10,A4
|| [!A0]   MVK     .S2     980,B4            ; |1208| 
|| [!A0]   LDW     .D2T2   *B11,B5           ; |1208| 

   [!A0]   ADD     .L2     B4,B6,B6          ; |1208| 
           AND     .L1X    B5,A10,A0         ; |1208| 
           ; BRANCHCC OCCURS {L90}           ; |1205| 
;** --------------------------------------------------------------------------*
;* 1208	-----------------------    K$34 = &((unsigned *)K$5)[145];
;* 1208	-----------------------    if ( !((unsigned)mask&*K$34) ) goto g6;

   [!A0]   BNOP    .S1     L91,4             ; |1208| 
|| [ A0]   LDW     .D2T2   *B6,B5            ; |1208| 

           CMPEQ   .L2     B5,B7,B0          ; |1208| 
           ; BRANCHCC OCCURS {L91}           ; |1208| 
;** --------------------------------------------------------------------------*
;* 1208	-----------------------    C$2 = &((void (**)())K$5)[245];
;* 1208	-----------------------    C$1 = *C$2;
;* 1208	-----------------------    if ( (void *)C$1 == K$27 ) goto g6;

   [ B0]   B       .S1     L93               ; |1208| 
||         SHR     .S2X    A10,16,B4         ; |1209| 
|| [ B0]   LDW     .D1T1   *A11,A3           ; |1213| 
|| [ B0]   MV      .L2     B13,B3            ; |1214| 

   [!B0]   CALL    .S2     B5                ; |1209| 
|| [!B0]   LDW     .D2T1   *+B6(80),A4       ; |1209| 

           NOP             3
   [ B0]   OR      .L1     A10,A3,A3         ; |1213| 
           ; BRANCHCC OCCURS {L93}           ; |1208| 
;** --------------------------------------------------------------------------*
;* 1209	-----------------------    (*C$1)(((int *)C$2)[20], mask>>16);
;* 1210	-----------------------    mask &= (int)*K$34;
;* 1210	-----------------------    goto g6;
           ADDKPC  .S2     RL31,B3,0         ; |1209| 
RL31:      ; CALL OCCURS {B5}                ; |1209| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     L92,4             ; |1210| 
||         LDW     .D2T2   *B11,B4           ; |1210| 
||         LDW     .D1T1   *A11,A3           ; |1213| 

           AND     .L1X    B4,A10,A10        ; |1210| 
           ; BRANCH OCCURS {L92}             ; |1210| 
;** --------------------------------------------------------------------------*
L90:    
;**	-----------------------g5:
;* 1206	-----------------------    (*(*chanObjs).vIntFxn)((*chanObjs).vIntCbArg, vpis);
;* 1207	-----------------------    mask &= (int)(*chanObjs).vIntMask;
           LDW     .D1T1   *+A4[A3],A3       ; |1206| 
           NOP             3
           LDW     .D2T1   *+B10[B5],A4      ; |1206| 
           CALL    .S2X    A3                ; |1206| 
           ADDKPC  .S2     RL32,B3,4         ; |1206| 
RL32:      ; CALL OCCURS {A3}                ; |1206| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+B10(40),B4      ; |1207| 
           NOP             4
           AND     .L1X    B4,A10,A10        ; |1207| 
;** --------------------------------------------------------------------------*
L91:    
           LDW     .D1T1   *A11,A3           ; |1213| 
           NOP             4
;** --------------------------------------------------------------------------*
L92:    

           OR      .L1     A10,A3,A3         ; |1213| 
||         MV      .L2     B13,B3            ; |1214| 

;** --------------------------------------------------------------------------*
L93:    
;**	-----------------------g6:
;* 1213	-----------------------    *base |= mask;
;* 1213	-----------------------    return;

           MV      .L1X    SP,A31            ; |1214| 
||         STW     .D1T1   A3,*A11           ; |1213| 
||         LDDW    .D2T2   *+SP(16),B11:B10  ; |1214| 

           LDW     .D1T1   *+A31(8),A10      ; |1214| 
||         LDW     .D2T2   *+SP(12),B13      ; |1214| 
||         RET     .S2     B3                ; |1214| 

           LDW     .D2T1   *++SP(24),A11     ; |1214| 
	.dwpsn	"vportcap_RAW.c",1214,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1214| 
	.dwattr DW$158, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$158, DW_AT_end_line(0x4be)
	.dwattr DW$158, DW_AT_end_column(0x01)
	.dwendtag DW$158

	.sect	".text"

DW$160	.dwtag  DW_TAG_subprogram, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$160, DW_AT_low_pc(_mdControlChan)
	.dwattr DW$160, DW_AT_high_pc(0x00)
	.dwattr DW$160, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$160, DW_AT_begin_line(0x96)
	.dwattr DW$160, DW_AT_begin_column(0x0c)
	.dwattr DW$160, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$160, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",151,1

;******************************************************************************
;* FUNCTION NAME: _mdControlChan                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_mdControlChan:
;** --------------------------------------------------------------------------*
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$161, DW_AT_type(*DW$T$37)
	.dwattr DW$161, DW_AT_location[DW_OP_reg4]
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$162, DW_AT_type(*DW$T$31)
	.dwattr DW$162, DW_AT_location[DW_OP_reg20]
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$163, DW_AT_type(*DW$T$37)
	.dwattr DW$163, DW_AT_location[DW_OP_reg6]
;** 153	-----------------------    chan = (struct $$fake3 *)chanp;
;** 154	-----------------------    port = U$11 = &portObjs[(*chan).portNum];
;** 156	-----------------------    switch ( cmd ) {case 0x10000002u: goto g2;, case 0x10000003u: goto g10;, case 0x10000004u: goto g3;, case 0x10000005u: goto g4;, case 0x10000006u: goto g5;, case 0x10000007u: goto g6;, DEFAULT goto g7};

           MVKL    .S1     0x10000005,A5     ; |156| 
||         STW     .D2T2   B10,*SP--(16)     ; |151| 
||         MVKL    .S2     0x10000005,B5     ; |156| 
||         MV      .L2     B4,B7             ; |151| 

           MVKH    .S1     0x10000005,A5     ; |156| 
||         LDW     .D1T1   *+A4(4),A7        ; |154| 
||         MVKH    .S2     0x10000005,B5     ; |156| 
||         STW     .D2T2   B13,*+SP(4)       ; |151| 
||         MV      .L2     B3,B13            ; |151| 

           CMPEQ   .L2     B4,B5,B2          ; |156| 
||         MVKL    .S1     0x10000006,A3     ; |156| 
||         MVKL    .S2     _portObjs,B8      ; |154| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |151| 
||         MV      .L1     A4,A11            ; |151| 
||         MV      .D1     A6,A10            ; |151| 

           CMPGT   .L2X    B4,A5,B0          ; |156| 
||         MVK     .S1     1072,A8           ; |154| 
||         MVKH    .S2     _portObjs,B8      ; |154| 
||         MV      .D2     B4,B6             ; |151| 

           MVKH    .S1     0x10000006,A3     ; |156| 
           MV      .L1X    B0,A0             ; guard predicate rewrite

           MPYLI   .M1     A8,A7,A9:A8       ; |154| 
|| [ A0]   ZERO    .D2     B2                ; |156| nullify predicate
|| [ B0]   B       .S2     L94               ; |156| 
||         CMPEQ   .L2X    B4,A3,B1          ; |156| 
|| [!B0]   MVKL    .S1     0x10000002,A3     ; |156| 
||         MV      .L1X    B0,A1             ; branch predicate copy

   [ B2]   B       .S2     L97               ; |156| 
|| [!A1]   ZERO    .L2     B1                ; |156| nullify predicate
|| [!B0]   MVKH    .S1     0x10000002,A3     ; |156| 

   [ B1]   BNOP    .S2     L98,1             ; |156| 
|| [ A1]   MVKL    .S1     0x10000007,A3     ; |156| 

   [!B0]   CMPEQ   .L2X    B7,A3,B0          ; |156| 
|| [ A1]   MVKH    .S1     0x10000007,A3     ; |156| 

           ADD     .L2X    B8,A8,B5          ; |154| 
           ; BRANCHCC OCCURS {L94}           ; |156| 
;** --------------------------------------------------------------------------*
   [ B2]   CALL    .S1     __stopVPCapture   ; |161| 
           ; BRANCHCC OCCURS {L97}           ; |156| 
;** --------------------------------------------------------------------------*

           MVKL    .S1     0x10000003,A3     ; |156| 
|| [ B0]   B       .S2     L95               ; |156| 
||         MV      .L2     B0,B2             ; guard predicate rewrite
|| [ B0]   LDW     .D1T1   *+A11(4),A4       ; |741| 

           MVKH    .S1     0x10000003,A3     ; |156| 
           NOP             1

   [!B0]   MVKL    .S1     0x10000004,A3     ; |156| 
||         CMPEQ   .L2X    B7,A3,B1          ; |156| 

   [ B2]   ZERO    .L2     B1                ; |156| nullify predicate
|| [!B0]   MVKH    .S1     0x10000004,A3     ; |156| 

   [ B0]   LDW     .D1T1   *+A4(4),A3        ; |747| 
|| [ B1]   B       .S1     L102              ; |156| 

           ; BRANCHCC OCCURS {L95}           ; |156| 
;** --------------------------------------------------------------------------*

           CMPEQ   .L2X    B7,A3,B0          ; |156| 
|| [ B1]   LDW     .D2T2   *B5,B5            ; |173| 

   [ B1]   ZERO    .L2     B0                ; nullify predicate
   [ B0]   BNOP    .S1     L96,2             ; |156| 
           ; BRANCHCC OCCURS {L102}          ; |156| 
;** --------------------------------------------------------------------------*

   [!B0]   BNOP    .S1     L101,2            ; |156| 
|| [ B0]   LDW     .D1T1   *+A11(12),A10     ; |1131| 

           ; BRANCHCC OCCURS {L96}           ; |156| 
;** --------------------------------------------------------------------------*

           MVK     .S1     127,A3            ; |178| 
||         MVK     .L1     -1,A5             ; |178| 

           LDW     .D1T1   *+A4[A3],A3       ; |178| 
           NOP             1
           ; BRANCH OCCURS {L101}            ; |156| 
;** --------------------------------------------------------------------------*
L94:    

           CMPEQ   .L2X    B7,A3,B0          ; |156| 
|| [ B1]   CALL    .S1     __setVIntCb       ; |164| 

           MV      .L2X    A10,B4            ; |164| 
           ; BRANCHCC OCCURS {L98}           ; |156| 
;** --------------------------------------------------------------------------*
   [ B0]   B       .S1     L99               ; |156| 
   [!B0]   B       .S1     L100              ; |156| 
   [ B0]   CALL    .S1     __covrRecover     ; |170| 
           NOP             3
           ; BRANCHCC OCCURS {L99}           ; |156| 
;** --------------------------------------------------------------------------*
           MVK     .S1     127,A3            ; |178| 
           ; BRANCH OCCURS {L100}            ; |156| 
;** --------------------------------------------------------------------------*
L95:    
;**	-----------------------g2:
;** 741	-----------------------    C$47 = (*(struct _PortObj *)chanp).base;  // [39]
;** 741	-----------------------    base = (volatile int *)(C$47+192);  // [39]
;** 747	-----------------------    *((volatile int *)C$47+4) |= 4;  // [39]
;** 750	-----------------------    *base |= 0x8000;  // [39]
;** 753	-----------------------    *base = ((_extu((*(struct _VPORT_PortParams *)args).vc3Polarity, 31u, 31u)*2|_extu((*(struct _VPORT_PortParams *)args).vc2Polarity, 31u, 31u))*2|_extu((*(struct _VPORT_PortParams *)args).vc1Polarity, 31u, 31u))<<4|(*(struct _VPORT_PortParams *)args).dualChanEnable&1;  // [39]
;** 758	-----------------------    *base |= 0x4000;  // [39]
;** 759	-----------------------    *((struct _EDC_Fxns ** const)chanp+516) = *((struct _VPORT_PortParams *)args+16);  // [39]
;** 760	-----------------------    *((struct _PortObj *)chanp+1048) = *((struct _VPORT_PortParams *)args+20);  // [39]
;** 342	-----------------------    ICR = _IRQ_eventTable[8];  // [10]
;** 763	-----------------------    return 0;  // [39]
           NOP             4

           ADDAD   .D1     A4,24,A3          ; |741| 
||         OR      .L1     4,A3,A5           ; |747| 

           STW     .D1T1   A5,*+A4(4)        ; |747| 
           LDW     .D1T2   *A3,B4            ; |750| 
           NOP             4
           SET     .S2     B4,15,15,B4       ; |750| 
           STW     .D1T2   B4,*A3            ; |750| 
           LDW     .D1T1   *+A10(8),A4       ; |753| 
           LDW     .D1T1   *+A10(12),A6      ; |753| 
           NOP             1
           LDW     .D1T1   *+A10(4),A5       ; |753| 
           NOP             1
           EXTU    .S1     A4,31,31,A4       ; |753| 
           EXTU    .S1     A6,31,30,A6       ; |753| 

           LDHU    .D1T1   *A10,A6           ; |753| 
||         OR      .L1     A4,A6,A4          ; |753| 

           ADD     .L1     A4,A4,A5          ; |753| 
||         EXTU    .S1     A5,31,31,A4       ; |753| 

           OR      .L1     A4,A5,A4          ; |753| 
           NOP             1
           SHL     .S2X    A4,4,B4           ; |753| 
           AND     .L1     1,A6,A4           ; |753| 

           MVKL    .S2     __IRQ_eventTable+32,B4 ; |342| 
||         OR      .L1X    A4,B4,A4          ; |753| 

           STW     .D1T1   A4,*A3            ; |753| 
||         MVKH    .S2     __IRQ_eventTable+32,B4 ; |342| 

           LDW     .D1T1   *A3,A4            ; |758| 
||         LDW     .D2T2   *B4,B4            ; |342| 

           NOP             4
           SET     .S1     A4,14,14,A4       ; |758| 

           MVK     .S1     129,A4            ; |759| 
||         STW     .D1T1   A4,*A3            ; |758| 

           LDW     .D1T1   *+A10(16),A3      ; |759| 
           NOP             4

           MVK     .S1     262,A4            ; |760| 
||         STW     .D1T1   A3,*+A11[A4]      ; |759| 

           LDW     .D1T1   *+A10(20),A3      ; |760| 
           NOP             4

           STW     .D1T1   A3,*+A11[A4]      ; |760| 
||         MVC     .S2     B4,ICR            ; |342| 

           LDDW    .D2T1   *+SP(8),A11:A10   ; |187| 
||         ZERO    .L1     A4                ; |763| 

           LDW     .D2T2   *+SP(4),B13       ; |187| 
||         RET     .S2     B3                ; |187| 

           LDW     .D2T2   *++SP(16),B10     ; |187| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |187| 
;** --------------------------------------------------------------------------*
L96:    
;**	-----------------------g3:
;* 1130	-----------------------    base = (volatile int *)((*U$11).base+200);  // [43]
;* 1131	-----------------------    C$49 = (*(struct $$fake3 *)chanp).base;  // [43]
;* 1131	-----------------------    cbase = (volatile int *)(C$49+4);  // [43]
;* 1135	-----------------------    *((volatile int *)C$49+4) |= 0x8000;  // [43]
;* 1138	-----------------------    SEM_pend(&TSK_timerSem, 100u);  // [43]
;* 1144	-----------------------    *cbase &= 0xbfffffff;  // [43]
;* 1147	-----------------------    *base |= 1;  // [43]
;* 1148	-----------------------    base[1] |= 0xffffffff;  // [43]
;** 342	-----------------------    ICR = C$48 = _IRQ_eventTable[(*(struct $$fake3 *)chanp).portNum+25u];  // [10]
;** 320	-----------------------    IER |= C$48;  // [8]
;* 1155	-----------------------    return 0;  // [43]
           MVKL    .S1     _TSK_timerSem,A4  ; |1138| 
           MVKH    .S1     _TSK_timerSem,A4  ; |1138| 
           LDW     .D1T1   *+A10(4),A3       ; |1135| 
           CALL    .S1     _SEM_pend         ; |1138| 
           LDW     .D2T2   *+B5(4),B10       ; |1130| 
           MVK     .S2     0x64,B4           ; |1138| 
           ADDKPC  .S2     RL33,B3,0         ; |1138| 
           SET     .S1     A3,15,15,A3       ; |1135| 
           STW     .D1T1   A3,*+A10(4)       ; |1135| 
RL33:      ; CALL OCCURS {_SEM_pend}         ; |1138| 
;** --------------------------------------------------------------------------*
           ADD     .L1     4,A10,A4          ; |1131| 
           LDW     .D1T1   *A4,A3            ; |1144| 
           NOP             3
           ADDAD   .D2     B10,25,B5         ; |1130| 
           CLR     .S1     A3,30,30,A3       ; |1144| 
           STW     .D1T1   A3,*A4            ; |1144| 
           LDW     .D2T2   *B5,B4            ; |1147| 
           NOP             4
           OR      .L2     1,B4,B4           ; |1147| 

           MVK     .L2     -1,B4             ; |1148| 
||         STW     .D2T2   B4,*B5            ; |1147| 

           STW     .D2T2   B4,*+B5(4)        ; |1148| 
           LDW     .D1T1   *+A11(4),A3       ; |342| 
           NOP             3
           MVKL    .S2     __IRQ_eventTable,B4 ; |342| 
           SHL     .S1     A3,2,A3           ; |342| 
           ADDK    .S1     100,A3            ; |342| 
           MVKH    .S2     __IRQ_eventTable,B4 ; |342| 
           ADD     .L2X    B4,A3,B4          ; |342| 
           LDW     .D2T2   *B4,B5            ; |342| 
           NOP             4
           MVC     .S2     B5,ICR            ; |342| 
           MVC     .S2     IER,B4            ; |320| 
           OR      .L2     B5,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 

           LDDW    .D2T1   *+SP(8),A11:A10   ; |187| 
||         MV      .L2     B13,B3            ; |187| 

           RET     .S2     B3                ; |187| 
||         LDW     .D2T2   *+SP(4),B13       ; |187| 

           LDW     .D2T2   *++SP(16),B10     ; |187| 
           NOP             3
           ZERO    .L1     A4                ; |1155| 
           ; BRANCH OCCURS {B3}              ; |187| 
;** --------------------------------------------------------------------------*
L97:    
;**	-----------------------g4:
;** 161	-----------------------    retVal = _stopVPCapture(chanp);
;** 162	-----------------------    return retVal;
           ADDKPC  .S2     RL34,B3,4         ; |161| 
RL34:      ; CALL OCCURS {__stopVPCapture}   ; |161| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |187| 
||         MV      .L2     B13,B3            ; |187| 

           RET     .S2     B3                ; |187| 
||         LDW     .D2T2   *+SP(4),B13       ; |187| 

           LDW     .D2T2   *++SP(16),B10     ; |187| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |187| 
;** --------------------------------------------------------------------------*
L98:    
;**	-----------------------g5:
;** 164	-----------------------    retVal = _setVIntCb(chanp, args);
;** 165	-----------------------    return retVal;
           ADDKPC  .S2     RL35,B3,3         ; |164| 
RL35:      ; CALL OCCURS {__setVIntCb}       ; |164| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |187| 
||         MV      .L2     B13,B3            ; |187| 

           RET     .S2     B3                ; |187| 
||         LDW     .D2T2   *+SP(4),B13       ; |187| 

           LDW     .D2T2   *++SP(16),B10     ; |187| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |187| 
;** --------------------------------------------------------------------------*
L99:    
;**	-----------------------g6:
;** 170	-----------------------    retVal = _covrRecover(chanp);
;** 171	-----------------------    return retVal;
           ADDKPC  .S2     RL36,B3,1         ; |170| 
RL36:      ; CALL OCCURS {__covrRecover}     ; |170| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |187| 
||         MV      .L2     B13,B3            ; |187| 

           RET     .S2     B3                ; |187| 
||         LDW     .D2T2   *+SP(4),B13       ; |187| 

           LDW     .D2T2   *++SP(16),B10     ; |187| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |187| 
;** --------------------------------------------------------------------------*
L100:    
           LDW     .D1T1   *+A4[A3],A3       ; |178| 
           MVK     .L1     -1,A5             ; |178| 
;** --------------------------------------------------------------------------*
L101:    
;**	-----------------------g7:
;** 178	-----------------------    C$46 = (*chan).edcFxns;
;** 178	-----------------------    if ( (void *)C$46 == (void *)0xffffffffu ) goto g9;

           ZERO    .L2     B4                ; |179| 
||         MVK     .L1     0xfffffff7,A7     ; |182| 

           MVKH    .S2     0x80000000,B4     ; |179| 
           ADD     .L2     B4,B6,B4          ; |179| 

           CMPEQ   .L1     A3,A5,A0          ; |178| 
||         MVK     .S1     128,A5            ; |179| 

   [!A0]   LDW     .D1T1   *+A3(8),A3        ; |179| 
|| [ A0]   B       .S1     L103              ; |178| 
|| [ A0]   MV      .L2     B13,B3            ; |187| 

   [!A0]   LDW     .D1T1   *+A4[A5],A4       ; |179| 
           NOP             3
   [!A0]   CALL    .S2X    A3                ; |179| 
           ; BRANCHCC OCCURS {L103}          ; |178| 
;** --------------------------------------------------------------------------*
;** 179	-----------------------    retVal = (*(*C$46).ctrl)((*chan).edcHandle, cmd+0x80000000u, (int)args);
;** 181	-----------------------    return retVal;
;**	-----------------------g9:
;** 182	-----------------------    return (-9);
           ADDKPC  .S2     RL37,B3,4         ; |179| 
RL37:      ; CALL OCCURS {A3}                ; |179| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |187| 
||         MV      .L2     B13,B3            ; |187| 

           RET     .S2     B3                ; |187| 
||         LDW     .D2T2   *+SP(4),B13       ; |187| 

           LDW     .D2T2   *++SP(16),B10     ; |187| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |187| 
;** --------------------------------------------------------------------------*
L102:    
;**	-----------------------g10:
;** 173	-----------------------    if ( !((*port).status&2) ) goto g12;
;**  	-----------------------    return (-7);

           AND     .L2     2,B5,B0           ; |173| 
||         MV      .S2X    A10,B4            ; |726| 
||         MVK     .L1     0xfffffff9,A7

   [ B0]   MV      .L2     B13,B3            ; |187| 
|| [ B0]   B       .S1     L104
|| [ B0]   LDW     .D2T2   *+SP(4),B13       ; |187| 
|| [ B0]   MV      .L1     A7,A4             ; |730| 

   [!B0]   CALL    .S1     __configCh        ; |726| 
|| [ B0]   LDDW    .D2T1   *+SP(8),A11:A10   ; |187| 

   [ B0]   RETNOP  .S2     B3,3              ; |187| 
|| [ B0]   LDW     .D2T2   *++SP(16),B10     ; |187| 

           ; BRANCHCC OCCURS {L104} 
;** --------------------------------------------------------------------------*
;**	-----------------------g12:
;** 726	-----------------------    _configCh(chanp, (struct $$fake1 *)args);  // [38]
;** 729	-----------------------    _configTransfer(chanp, (struct $$fake1 *)args);  // [38]
;** 730	-----------------------    return 0;  // [38]
           ADDKPC  .S2     RL38,B3,0         ; |726| 
RL38:      ; CALL OCCURS {__configCh}        ; |726| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __configTransfer  ; |729| 
           ADDKPC  .S2     RL39,B3,2         ; |729| 
           MV      .L2X    A10,B4            ; |729| 
           MV      .L1     A11,A4            ; |729| 
RL39:      ; CALL OCCURS {__configTransfer}  ; |729| 
;** --------------------------------------------------------------------------*

           ZERO    .L1     A7                ; |730| 
||         MV      .L2     B13,B3            ; |187| 

;** --------------------------------------------------------------------------*
L103:    

           LDDW    .D2T1   *+SP(8),A11:A10   ; |187| 
||         MV      .L1     A7,A4             ; |730| 

           LDW     .D2T2   *+SP(4),B13       ; |187| 
||         RET     .S2     B3                ; |187| 

           LDW     .D2T2   *++SP(16),B10     ; |187| 
           NOP             2
;** --------------------------------------------------------------------------*
L104:    
	.dwpsn	"vportcap_RAW.c",187,1
           NOP             2
           ; BRANCH OCCURS {B3}              ; |187| 
	.dwattr DW$160, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$160, DW_AT_end_line(0xbb)
	.dwattr DW$160, DW_AT_end_column(0x01)
	.dwendtag DW$160

	.sect	".text"

DW$164	.dwtag  DW_TAG_subprogram, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$164, DW_AT_low_pc(_mdDeleteChan)
	.dwattr DW$164, DW_AT_high_pc(0x00)
	.dwattr DW$164, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$164, DW_AT_begin_line(0x118)
	.dwattr DW$164, DW_AT_begin_column(0x0d)
	.dwattr DW$164, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$164, DW_AT_skeletal(0x01)
	.dwpsn	"vportcap_RAW.c",281,1

;******************************************************************************
;* FUNCTION NAME: _mdDeleteChan                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B13,SP,A16,*
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B13,SP,A16,*
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_mdDeleteChan:
;** --------------------------------------------------------------------------*
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$165, DW_AT_type(*DW$T$37)
	.dwattr DW$165, DW_AT_location[DW_OP_reg4]
;** 282	-----------------------    chan = (struct $$fake3 *)chanp;
;** 283	-----------------------    port = &portObjs[(*chan).portNum];
;** 290	-----------------------    if ( !((*chan).status&1u) ) goto g9;

           MV      .L1X    SP,A31            ; |281| 
||         STW     .D2T2   B10,*SP--(32)     ; |281| 
||         MVK     .S1     1072,A6           ; |283| 
||         MVKL    .S2     _portObjs,B5      ; |283| 

           STDW    .D2T1   A11:A10,*+SP(8)
||         MV      .L1     A4,A10            ; |281| 
||         MVKH    .S2     _portObjs,B5      ; |283| 
||         MVK     .S1     396,A7

           LDW     .D1T1   *A10,A3           ; |290| 
||         MVK     .S2     392,B6
||         STW     .D2T2   B13,*+SP(4)
||         MV      .L2     B3,B13

           LDW     .D1T1   *+A10(4),A5       ; |283| 
||         MVKL    .S2     0x10000005,B4     ; |292| 

           STDW    .D1T1   A13:A12,*-A31(16)

           ADD     .L1X    B6,A4,A12
||         MVKH    .S2     0x10000005,B4     ; |292| 

           STDW    .D1T1   A15:A14,*-A31(8)
||         ADD     .L1     A7,A4,A14
||         MVK     .S2     126,B10           ; |301| 

           AND     .L1     1,A3,A0           ; |290| 

   [!A0]   B       .S2     L108              ; |290| 
||         MPYLI   .M1     A6,A5,A9:A8       ; |283| 
||         MVK     .S1     416,A5
||         ZERO    .L1     A6                ; |292| 

           ADD     .L1     A5,A4,A15
|| [ A0]   CALL    .S1     _mdControlChan    ; |292| 

           NOP             2

           ZERO    .L2     B5                ; |291| 
||         ADD     .L1X    B5,A8,A13         ; |283| 
||         MVK     .S1     380,A9

           ADD     .L1     A9,A4,A11
           ; BRANCHCC OCCURS {L108}          ; |290| 
;** --------------------------------------------------------------------------*
;** 291	-----------------------    (*chan).status = 0u;
;** 292	-----------------------    mdControlChan(chanp, 0x10000005u, NULL);
;**  	-----------------------    U$30 = (unsigned (* const)[3])chanp+380;
;**  	-----------------------    U$36 = (unsigned (* const)[6])chanp+392;
;**  	-----------------------    U$40 = (unsigned (* const)[6])chanp+396;
;**  	-----------------------    U$44 = (int (* const)[3])chanp+416;
;** 301	-----------------------    ((*chan).mode&2) ? (L$1 = 1) : (L$1 = 3);
;**  	-----------------------    #pragma MUST_ITERATE(1, 3, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           STW     .D1T2   B5,*A10           ; |291| 
||         ADDKPC  .S2     RL40,B3,0         ; |292| 

RL40:      ; CALL OCCURS {_mdControlChan}    ; |292| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B10,A3
           LDW     .D1T1   *+A10[A3],A3      ; |301| 
           NOP             3
           LDW     .D1T1   *A11++,A4         ; |301| 

           MVKL    .S1     _EDMA_close,A3    ; |301| 
||         AND     .L1     2,A3,A0           ; |301| 

           MVKH    .S1     _EDMA_close,A3    ; |301| 
           MVK     .L2     0x1,B4            ; |301| 
           CALL    .S2X    A3                ; |301| 
           MV      .S2     B4,B10            ; |301| 
   [!A0]   MVK     .L2     0x3,B4            ; |301| 
	.dwpsn	"vportcap_RAW.c",300,0
   [!A0]   MV      .L2     B4,B10            ; |301| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L105:    
DW$L$_mdDeleteChan$4$B:
;**	-----------------------g3:
;** 301	-----------------------    EDMA_close(*U$30++);
;** 302	-----------------------    EDMA_freeTable(*U$36++{2});
;** 303	-----------------------    EDMA_freeTable(*U$40++{2});
;** 304	-----------------------    EDMA_intFree(*U$44++);
;** 300	-----------------------    if ( --L$1 ) goto g3;
;** 306	-----------------------    if ( !(*chan).numFrms ) goto g7;
           ADDKPC  .S2     RL41,B3,1         ; |301| 
RL41:      ; CALL OCCURS {_EDMA_close}       ; |301| 
DW$L$_mdDeleteChan$4$E:
;** --------------------------------------------------------------------------*
DW$L$_mdDeleteChan$5$B:
           MVKL    .S1     _EDMA_freeTable,A3 ; |302| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |302| 
           LDW     .D1T1   *A12++(8),A4      ; |302| 
           CALL    .S2X    A3                ; |302| 
           ADDKPC  .S2     RL42,B3,4         ; |302| 
RL42:      ; CALL OCCURS {_EDMA_freeTable}   ; |302| 
           MVKL    .S1     _EDMA_freeTable,A3 ; |303| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |303| 
           LDW     .D1T1   *A14++(8),A4      ; |303| 
           CALL    .S2X    A3                ; |303| 
           ADDKPC  .S2     RL43,B3,4         ; |303| 
RL43:      ; CALL OCCURS {_EDMA_freeTable}   ; |303| 
           MVKL    .S2     _EDMA_intFree,B4  ; |304| 
           MVKH    .S2     _EDMA_intFree,B4  ; |304| 
           CALL    .S2     B4                ; |304| 
           LDW     .D1T1   *A15++,A4         ; |304| 
           ADDKPC  .S2     RL44,B3,3         ; |304| 
RL44:      ; CALL OCCURS {_EDMA_intFree}     ; |304| 
DW$L$_mdDeleteChan$5$E:
;** --------------------------------------------------------------------------*
DW$L$_mdDeleteChan$6$B:

           MVKL    .S1     _EDMA_close,A3    ; |301| 
||         SUB     .L1X    B10,1,A0          ; |300| 
||         SUB     .L2     B10,1,B10         ; |300| 

           MVKH    .S1     _EDMA_close,A3    ; |301| 
|| [ A0]   B       .S2     L105              ; |300| 
|| [ A0]   LDW     .D1T1   *A11++,A4         ; |301| 

   [!A0]   MVK     .S1     118,A3            ; |306| 

   [ A0]   CALL    .S2X    A3                ; |301| 
|| [!A0]   LDW     .D1T1   *+A10[A3],A0      ; |306| 

	.dwpsn	"vportcap_RAW.c",305,0
           NOP             3
           ; BRANCHCC OCCURS {L105}          ; |300| 
DW$L$_mdDeleteChan$6$E:
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$60 = (union $$fake2 *)(struct _FVID_Frame (*)[10])chan+52;
;** 306	-----------------------    j = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MV      .L2X    A10,B4
||         ZERO    .L1     A11               ; |306| 
||         MVK     .S1     132,A3            ; |307| 

   [!A0]   BNOP    .S1     L107,5            ; |306| 
||         ADDAW   .D2     B4,13,B10

           ; BRANCHCC OCCURS {L107}          ; |306| 
;** --------------------------------------------------------------------------*

           LDW     .D1T1   *+A10[A3],A6      ; |307| 
||         MVK     .S1     131,A3            ; |307| 
||         CALL    .S2     _MEM_free         ; |307| 
||         LDW     .D2T2   *B10,B4           ; |307| 

           LDW     .D1T1   *+A10[A3],A4      ; |307| 
	.dwpsn	"vportcap_RAW.c",306,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L106:    
DW$L$_mdDeleteChan$9$B:
;**	-----------------------g6:
;** 307	-----------------------    MEM_free((*chan).segId, (*U$60).iFrm.y1, (unsigned)(*chan).bufSz);
;** 306	-----------------------    U$60 += 32;
;** 306	-----------------------    if ( (unsigned)(++j) < (*chan).numFrms ) goto g6;
           ADDKPC  .S2     RL45,B3,0         ; |307| 
RL45:      ; CALL OCCURS {_MEM_free}         ; |307| 
DW$L$_mdDeleteChan$9$E:
;** --------------------------------------------------------------------------*
DW$L$_mdDeleteChan$10$B:

           MVK     .S1     118,A3            ; |306| 
||         ADD     .L1     1,A11,A11         ; |306| 
||         ADDK    .S2     32,B10            ; |306| 

           LDW     .D1T1   *+A10[A3],A3      ; |306| 
           NOP             4

           MVK     .S1     132,A3            ; |307| 
||         CMPLTU  .L1     A11,A3,A0         ; |306| 

   [ A0]   LDW     .D2T2   *B10,B4           ; |307| 
||         MVK     .S1     131,A3            ; |307| 
|| [ A0]   LDW     .D1T1   *+A10[A3],A6      ; |307| 
|| [ A0]   B       .S2     L106              ; |306| 

   [ A0]   LDW     .D1T1   *+A10[A3],A4      ; |307| 
|| [ A0]   CALL    .S1     _MEM_free         ; |307| 

	.dwpsn	"vportcap_RAW.c",308,0
           NOP             4
           ; BRANCHCC OCCURS {L106}          ; |306| 
DW$L$_mdDeleteChan$10$E:
;** --------------------------------------------------------------------------*
L107:    
;**	-----------------------g7:
;** 310	-----------------------    C$3 = (*chan).edcFxns;
;** 310	-----------------------    if ( (void *)C$3 == (void *)0xffffffffu ) goto g9;

           MVK     .S1     127,A3            ; |310| 
||         MVK     .L1     -1,A4             ; |310| 
||         MVK     .S2     128,B4            ; |311| 

           LDW     .D1T1   *+A10[A3],A3      ; |310| 
           NOP             4
           CMPEQ   .L1     A3,A4,A0          ; |310| 

   [ A0]   B       .S1     L109              ; |310| 
|| [!A0]   MV      .L1X    B4,A3
|| [!A0]   LDW     .D1T1   *+A3(4),A5        ; |311| 

   [!A0]   LDW     .D1T1   *+A10[A3],A4      ; |311| 
   [ A0]   LDW     .D1T1   *+A13(8),A3       ; |315| 
           NOP             2
   [!A0]   CALL    .S2X    A5                ; |311| 
           ; BRANCHCC OCCURS {L109}          ; |310| 
;** --------------------------------------------------------------------------*
;** 311	-----------------------    (*(*C$3).close)((*chan).edcHandle);
           ADDKPC  .S2     RL46,B3,4         ; |311| 
RL46:      ; CALL OCCURS {A3}                ; |311| 
;** --------------------------------------------------------------------------*
L108:    
           LDW     .D1T1   *+A13(8),A3       ; |315| 
           NOP             3
;** --------------------------------------------------------------------------*
L109:    
;**	-----------------------g9:
;** 315	-----------------------    if ( *((struct $$fake3 *)(struct $$fake3 (*)[2])port+8)&1u ) goto g12;
           NOP             1

           MVK     .S1     135,A3            ; |315| 
||         AND     .L1     1,A3,A0           ; |315| 

   [ A0]   BNOP    .S2     L110,4            ; |315| 
|| [!A0]   MVK     .S1     260,A4            ; |319| 
|| [!A0]   LDW     .D1T1   *+A13[A3],A3      ; |315| 

           AND     .L1     1,A3,A0           ; |315| 
           ; BRANCHCC OCCURS {L110}          ; |315| 
;** --------------------------------------------------------------------------*
;** 315	-----------------------    if ( *((struct $$fake3 *)(struct $$fake3 (*)[2])port+540)&1u ) goto g12;

   [ A0]   B       .S1     L111              ; |315| 
|| [ A0]   MV      .L1X    SP,A31            ; |330| 
|| [!A0]   LDW     .D1T1   *+A13(4),A3       ; |317| 
||         ZERO    .L2     B5                ; |327| 
||         MV      .S2     B13,B3            ; |330| 
|| [ A0]   LDW     .D2T2   *+SP(4),B13       ; |330| 

   [ A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |330| 
   [ A0]   LDDW    .D1T1   *+A31(24),A15:A14 ; |330| 

   [ A0]   LDDW    .D2T1   *+SP(8),A11:A10   ; |330| 
|| [ A0]   RET     .S2     B3                ; |330| 

   [ A0]   LDW     .D2T2   *++SP(32),B10     ; |330| 
           ADD     .L1     A4,A3,A4          ; |319| 
           ; BRANCHCC OCCURS {L111}          ; |315| 
;** --------------------------------------------------------------------------*
;** 317	-----------------------    C$2 = (*port).base;
;** 317	-----------------------    base = (volatile int *)(C$2+200);
;** 319	-----------------------    C$1 = (volatile int *)C$2+260;
;** 319	-----------------------    *C$1 = *C$1|0x80000000;
;** 321	-----------------------    base[31] = base[31]|0x80000000;
;** 325	-----------------------    base[-2] = base[-2]|0x8000;
;** 327	-----------------------    (*port).status = 0;
           LDW     .D1T2   *A4,B4            ; |319| 
           NOP             3
           ADDAD   .D1     A3,25,A3          ; |317| 
           SET     .S2     B4,31,31,B4       ; |319| 
           STW     .D1T2   B4,*A4            ; |319| 
           LDW     .D1T2   *+A3(124),B4      ; |321| 
           NOP             4
           SET     .S2     B4,31,31,B4       ; |321| 
           STW     .D1T2   B4,*+A3(124)      ; |321| 
           LDW     .D1T1   *-A3(8),A4        ; |325| 
           NOP             4
           SET     .S1     A4,15,15,A4       ; |325| 
           STW     .D1T1   A4,*-A3(8)        ; |325| 
           STW     .D1T2   B5,*A13           ; |327| 
;** --------------------------------------------------------------------------*
L110:    

           LDDW    .D2T1   *+SP(8),A11:A10   ; |330| 
||         MV      .L2     B13,B3            ; |330| 
||         MV      .L1X    SP,A31            ; |330| 

           RET     .S2     B3                ; |330| 
||         LDDW    .D1T1   *+A31(16),A13:A12 ; |330| 
||         LDW     .D2T2   *+SP(4),B13       ; |330| 

           LDW     .D2T2   *++SP(32),B10     ; |330| 
||         LDDW    .D1T1   *+A31(24),A15:A14 ; |330| 

           NOP             1
;** --------------------------------------------------------------------------*
L111:    
;**	-----------------------g12:
;** 329	-----------------------    return 0;
           NOP             2
	.dwpsn	"vportcap_RAW.c",330,1
           ZERO    .L1     A4                ; |329| 
           ; BRANCH OCCURS {B3}              ; |330| 

DW$166	.dwtag  DW_TAG_loop
	.dwattr DW$166, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L106:1:1287391603")
	.dwattr DW$166, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$166, DW_AT_begin_line(0x132)
	.dwattr DW$166, DW_AT_end_line(0x134)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_mdDeleteChan$9$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_mdDeleteChan$9$E)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$_mdDeleteChan$10$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$_mdDeleteChan$10$E)
	.dwendtag DW$166


DW$169	.dwtag  DW_TAG_loop
	.dwattr DW$169, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\vport_v2\vportcap_RAW.asm:L105:1:1287391603")
	.dwattr DW$169, DW_AT_begin_file("vportcap_RAW.c")
	.dwattr DW$169, DW_AT_begin_line(0x12c)
	.dwattr DW$169, DW_AT_end_line(0x131)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$_mdDeleteChan$4$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$_mdDeleteChan$4$E)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$_mdDeleteChan$5$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$_mdDeleteChan$5$E)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_mdDeleteChan$6$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_mdDeleteChan$6$E)
	.dwendtag DW$169

	.dwattr DW$164, DW_AT_end_file("vportcap_RAW.c")
	.dwattr DW$164, DW_AT_end_line(0x14a)
	.dwattr DW$164, DW_AT_end_column(0x01)
	.dwendtag DW$164

;; Inlined function references:
;; [  3] QUE_dequeue
;; [  4] QUE_enqueue
;; [  8] IRQ_enable
;; [  9] IRQ_disable
;; [ 10] IRQ_clear
;; [ 11] IRQ_globalDisable
;; [ 12] IRQ_globalRestore
;; [ 21] EDMA_enableChannel
;; [ 22] EDMA_disableChannel
;; [ 23] EDMA_clearChannel
;; [ 24] EDMA_intEnable
;; [ 25] EDMA_intDisable
;; [ 26] EDMA_intClear
;; [ 27] EDMA_config
;; [ 28] EDMA_qdmaConfig
;; [ 38] _configChan
;; [ 39] _configPort
;; [ 43] _startVPCapture
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Assertion failed, (chan->status & 4), file vportcap_RAW.c, "
	.string	"line 350",10,0
SL2:	.string	"Assertion failed, (packet->cmd == (128 + 0) || packet->cmd "
	.string	"== (128 + 1) || packet->cmd == (128 + 2)), file vportcap_RA"
	.string	"W.c, line 351",10,0
SL3:	.string	"Assertion failed, (params->fldXStop1 == params->fldXStop2),"
	.string	" file vportcap_RAW.c, line 568",10,0
SL4:	.string	"Assertion failed, (params->fldXStrt1 == params->fldXStrt2),"
	.string	" file vportcap_RAW.c, line 569",10,0
SL5:	.string	"Assertion failed, (((chan->yPitch*chan->numLinesFld1) / (ch"
	.string	"an->yThrld << 3)) *(chan->yThrld << 3) == (chan->yPitch * c"
	.string	"han->numLinesFld1)), file vportcap_RAW.c, line 688",10,0
SL6:	.string	"Assertion failed, (((chan->yPitch * chan->numLines) / (chan"
	.string	"->yThrld << 3)) *(chan->yThrld << 3) == (chan->yPitch * cha"
	.string	"n->numLines)), file vportcap_RAW.c, line 690",10,0
SL7:	.string	"Assertion failed, (params->numFrmBufs >= 2 && params->numFr"
	.string	"mBufs <= 10), file vportcap_RAW.c, line 788",10,0
SL8:	.string	"Assertion failed, (chanNum < 2), file vportcap_RAW.c, line "
	.string	"211",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_MEM_alloc
	.global	_MEM_free
	.global	_SEM_pend
	.global	_HWI_dispatchPlug
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
	.global	_CLK_getltime
	.global	_TSK_timerSem
	.global	__IRQ_eventTable
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

DW$T$110	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$110


DW$T$112	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$T$112

DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TiomCallback"), DW_AT_type(*DW$T$58)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)

DW$T$127	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$127, DW_AT_language(DW_LANG_C)
DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$126)
	.dwendtag DW$T$127


DW$T$128	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)
DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$128


DW$T$134	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$134, DW_AT_language(DW_LANG_C)
DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$131)
DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$133)
	.dwendtag DW$T$134


DW$T$136	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$136


DW$T$138	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)
DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$138


DW$T$139	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$139, DW_AT_language(DW_LANG_C)
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$T$139


DW$T$141	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$141, DW_AT_language(DW_LANG_C)
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$141

DW$T$143	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_IntHandler"), DW_AT_type(*DW$T$142)
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)

DW$T$144	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$143)
	.dwattr DW$T$144, DW_AT_language(DW_LANG_C)
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$143)
	.dwendtag DW$T$144


DW$T$147	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$147, DW_AT_language(DW_LANG_C)

DW$T$151	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$151, DW_AT_language(DW_LANG_C)
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$150)
	.dwendtag DW$T$151


DW$T$152	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$152, DW_AT_language(DW_LANG_C)
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$150)
	.dwendtag DW$T$152


DW$T$153	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$153, DW_AT_language(DW_LANG_C)
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$T$153

DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("Bool"), DW_AT_type(*DW$T$93)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)

DW$T$173	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$94)
	.dwattr DW$T$173, DW_AT_language(DW_LANG_C)
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$173


DW$T$176	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$94)
	.dwattr DW$T$176, DW_AT_language(DW_LANG_C)
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$175)
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$176

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Int"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)

DW$T$42	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$42


DW$T$45	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$45


DW$T$48	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$48


DW$T$60	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$60


DW$T$64	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
	.dwendtag DW$T$64

DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn"), DW_AT_type(*DW$T$130)
	.dwattr DW$T$131, DW_AT_language(DW_LANG_C)

DW$T$182	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$182, DW_AT_language(DW_LANG_C)

DW$T$185	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$185, DW_AT_language(DW_LANG_C)
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$184)
	.dwendtag DW$T$185


DW$T$186	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$186, DW_AT_language(DW_LANG_C)
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$186


DW$T$190	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$190, DW_AT_language(DW_LANG_C)
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$190


DW$T$192	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$192, DW_AT_language(DW_LANG_C)
DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Uns"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Handle"), DW_AT_type(*DW$T$34)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)

DW$T$222	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$89)
	.dwattr DW$T$222, DW_AT_language(DW_LANG_C)
DW$222	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$222


DW$T$223	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$89)
	.dwattr DW$T$223, DW_AT_language(DW_LANG_C)
DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$223


DW$T$224	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$224, DW_AT_language(DW_LANG_C)
DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$224


DW$T$225	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$225, DW_AT_language(DW_LANG_C)

DW$T$226	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$226, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$226, DW_AT_byte_size(0x84)
DW$226	.dwtag  DW_TAG_subrange_type
	.dwattr DW$226, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$226

DW$T$227	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$227, DW_AT_type(*DW$T$11)
DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Handle"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)
DW$T$175	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle"), DW_AT_type(*DW$T$174)
	.dwattr DW$T$175, DW_AT_language(DW_LANG_C)
DW$T$245	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$245, DW_AT_language(DW_LANG_C)
DW$T$133	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$132)
	.dwattr DW$T$133, DW_AT_address_class(0x20)
DW$T$150	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$149)
	.dwattr DW$T$150, DW_AT_address_class(0x20)
DW$T$56	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$55)
	.dwattr DW$T$56, DW_AT_address_class(0x20)
DW$T$184	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$183)
	.dwattr DW$T$184, DW_AT_address_class(0x20)
DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("String"), DW_AT_type(*DW$T$52)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$T$126	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$125)
	.dwattr DW$T$126, DW_AT_address_class(0x20)
DW$T$256	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Fxns"), DW_AT_type(*DW$T$67)
	.dwattr DW$T$256, DW_AT_language(DW_LANG_C)

DW$T$269	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$268)
	.dwattr DW$T$269, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$269, DW_AT_byte_size(0xc90)
DW$227	.dwtag  DW_TAG_subrange_type
	.dwattr DW$227, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$269

DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)
DW$T$58	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_address_class(0x20)
DW$T$142	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$141)
	.dwattr DW$T$142, DW_AT_address_class(0x20)
DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("MdUns"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
DW$T$130	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$129)
	.dwattr DW$T$130, DW_AT_address_class(0x20)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$19	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$19, DW_AT_address_class(0x20)

DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("SEM_Obj")
	.dwattr DW$T$30, DW_AT_byte_size(0x1c)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$228, DW_AT_name("job"), DW_AT_symbol_name("_job")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$229, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$230, DW_AT_name("pendQ"), DW_AT_symbol_name("_pendQ")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30

DW$T$174	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$174, DW_AT_address_class(0x20)
DW$T$132	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_Attrs"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Config"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$149, DW_AT_language(DW_LANG_C)
DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Packet"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$T$183	.dwtag  DW_TAG_typedef, DW_AT_name("VPORTCAP_Params"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$183, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$52, DW_AT_address_class(0x20)
DW$T$125	.dwtag  DW_TAG_const_type
	.dwattr DW$T$125, DW_AT_type(*DW$T$51)

DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$67, DW_AT_name("IOM_Fxns")
	.dwattr DW$T$67, DW_AT_byte_size(0x18)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$231, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$232, DW_AT_name("mdUnBindDev"), DW_AT_symbol_name("_mdUnBindDev")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$233, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$234, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$235, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$236, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67

DW$T$268	.dwtag  DW_TAG_typedef, DW_AT_name("PortObj"), DW_AT_type(*DW$T$105)
	.dwattr DW$T$268, DW_AT_language(DW_LANG_C)

DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
	.dwendtag DW$T$57

DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x02)
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

DW$T$129	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$129, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("QUE_Elem")
	.dwattr DW$T$20, DW_AT_byte_size(0x08)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$239, DW_AT_name("next"), DW_AT_symbol_name("_next")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$240, DW_AT_name("prev"), DW_AT_symbol_name("_prev")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)

DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("HWI_Attrs")
	.dwattr DW$T$33, DW_AT_byte_size(0x0c)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$241, DW_AT_name("intrMask"), DW_AT_symbol_name("_intrMask")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$242, DW_AT_name("ccMask"), DW_AT_symbol_name("_ccMask")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$243, DW_AT_name("arg"), DW_AT_symbol_name("_arg")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x18)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$244, DW_AT_name("opt"), DW_AT_symbol_name("_opt")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$245, DW_AT_name("src"), DW_AT_symbol_name("_src")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$246, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$247, DW_AT_name("dst"), DW_AT_symbol_name("_dst")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$248, DW_AT_name("idx"), DW_AT_symbol_name("_idx")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$249, DW_AT_name("rld"), DW_AT_symbol_name("_rld")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35

DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Frame"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)

DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x58)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$250, DW_AT_name("cmode"), DW_AT_symbol_name("_cmode")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$251, DW_AT_name("fldOp"), DW_AT_symbol_name("_fldOp")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$252, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$253, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$254, DW_AT_name("bpk10Bit"), DW_AT_symbol_name("_bpk10Bit")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$255, DW_AT_name("hCtRst"), DW_AT_symbol_name("_hCtRst")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$256, DW_AT_name("vCtRst"), DW_AT_symbol_name("_vCtRst")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$257, DW_AT_name("fldDect"), DW_AT_symbol_name("_fldDect")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$258, DW_AT_name("extCtl"), DW_AT_symbol_name("_extCtl")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$259, DW_AT_name("fldInv"), DW_AT_symbol_name("_fldInv")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$260, DW_AT_name("sse"), DW_AT_symbol_name("_sse")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$261, DW_AT_name("vcvblnkp"), DW_AT_symbol_name("_vcvblnkp")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$262, DW_AT_name("fldXStrt1"), DW_AT_symbol_name("_fldXStrt1")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$263, DW_AT_name("fldYStrt1"), DW_AT_symbol_name("_fldYStrt1")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$264, DW_AT_name("fldXStrt2"), DW_AT_symbol_name("_fldXStrt2")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$265, DW_AT_name("fldYStrt2"), DW_AT_symbol_name("_fldYStrt2")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$266, DW_AT_name("fldXStop1"), DW_AT_symbol_name("_fldXStop1")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$267, DW_AT_name("fldYStop1"), DW_AT_symbol_name("_fldYStop1")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$268, DW_AT_name("fldXStop2"), DW_AT_symbol_name("_fldXStop2")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$269, DW_AT_name("fldYStop2"), DW_AT_symbol_name("_fldYStop2")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$270, DW_AT_name("thrld"), DW_AT_symbol_name("_thrld")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$271, DW_AT_name("numFrmBufs"), DW_AT_symbol_name("_numFrmBufs")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$272, DW_AT_name("alignment"), DW_AT_symbol_name("_alignment")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$273, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$274, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$275, DW_AT_name("edmaPri"), DW_AT_symbol_name("_edmaPri")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$276, DW_AT_name("irqId"), DW_AT_symbol_name("_irqId")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40

DW$T$51	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$51, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$51, DW_AT_byte_size(0x01)

DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$105, DW_AT_name("PortObj")
	.dwattr DW$T$105, DW_AT_byte_size(0x430)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$277, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$278, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$104)
	.dwattr DW$279, DW_AT_name("chanObj"), DW_AT_symbol_name("_chanObj")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$105

DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("Arg"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
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

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("KNL_Job")
	.dwattr DW$T$28, DW_AT_byte_size(0x10)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$280, DW_AT_name("wListElem"), DW_AT_symbol_name("_wListElem")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$281, DW_AT_name("wCount"), DW_AT_symbol_name("_wCount")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$282, DW_AT_name("fxn"), DW_AT_symbol_name("_fxn")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("DEV_Frame")
	.dwattr DW$T$38, DW_AT_byte_size(0x20)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$283, DW_AT_name("link"), DW_AT_symbol_name("_link")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$284, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$285, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$286, DW_AT_name("misc"), DW_AT_symbol_name("_misc")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$287, DW_AT_name("arg"), DW_AT_symbol_name("_arg")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$288, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$289, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$104	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$103)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$104, DW_AT_byte_size(0x428)
DW$290	.dwtag  DW_TAG_subrange_type
	.dwattr DW$290, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$104

DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("_VPORT_ChanObj"), DW_AT_type(*DW$T$102)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$26, DW_AT_address_class(0x20)

DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$102, DW_AT_byte_size(0x214)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$291, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$292, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$293, DW_AT_name("chanNum"), DW_AT_symbol_name("_chanNum")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$294, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$86)
	.dwattr DW$295, DW_AT_name("edmaChanNum"), DW_AT_symbol_name("_edmaChanNum")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$86)
	.dwattr DW$296, DW_AT_name("edmaAddr"), DW_AT_symbol_name("_edmaAddr")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$297, DW_AT_name("vIntMask"), DW_AT_symbol_name("_vIntMask")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$88)
	.dwattr DW$298, DW_AT_name("viops"), DW_AT_symbol_name("_viops")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$299, DW_AT_name("qIn"), DW_AT_symbol_name("_qIn")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x16c]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$300, DW_AT_name("qOut"), DW_AT_symbol_name("_qOut")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x174]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$90)
	.dwattr DW$301, DW_AT_name("hEdma"), DW_AT_symbol_name("_hEdma")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x17c]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$91)
	.dwattr DW$302, DW_AT_name("hRld"), DW_AT_symbol_name("_hRld")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x188]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$92)
	.dwattr DW$303, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$304, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ac]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$305, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$306, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b4]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$307, DW_AT_name("vIntFxn"), DW_AT_symbol_name("_vIntFxn")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b8]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$98)
	.dwattr DW$308, DW_AT_name("queEmpty"), DW_AT_symbol_name("_queEmpty")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x1bc]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$309, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x1be]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$310, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$311, DW_AT_name("yPitch"), DW_AT_symbol_name("_yPitch")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c4]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$312, DW_AT_name("cPitch"), DW_AT_symbol_name("_cPitch")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c8]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$313, DW_AT_name("numLines"), DW_AT_symbol_name("_numLines")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1cc]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$314, DW_AT_name("numPixels"), DW_AT_symbol_name("_numPixels")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d0]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$315, DW_AT_name("numLinesFld1"), DW_AT_symbol_name("_numLinesFld1")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d4]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$316, DW_AT_name("numFrms"), DW_AT_symbol_name("_numFrms")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d8]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$317, DW_AT_name("numEvents"), DW_AT_symbol_name("_numEvents")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x1dc]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$318, DW_AT_name("numEventsFld1"), DW_AT_symbol_name("_numEventsFld1")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$319, DW_AT_name("yThrld"), DW_AT_symbol_name("_yThrld")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e4]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$320, DW_AT_name("cThrld"), DW_AT_symbol_name("_cThrld")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e8]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$99)
	.dwattr DW$321, DW_AT_name("curViop"), DW_AT_symbol_name("_curViop")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ec]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$99)
	.dwattr DW$322, DW_AT_name("nextViop"), DW_AT_symbol_name("_nextViop")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$99)
	.dwattr DW$323, DW_AT_name("mrViop"), DW_AT_symbol_name("_mrViop")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f4]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$324, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f8]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$101)
	.dwattr DW$325, DW_AT_name("edcFxns"), DW_AT_symbol_name("_edcFxns")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x1fc]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$326, DW_AT_name("edcHandle"), DW_AT_symbol_name("_edcHandle")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x200]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$327, DW_AT_name("packetIOM"), DW_AT_symbol_name("_packetIOM")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x204]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$328, DW_AT_name("vIntCbArg"), DW_AT_symbol_name("_vIntCbArg")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x208]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$329, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x20c]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$330, DW_AT_name("bufSz"), DW_AT_symbol_name("_bufSz")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x210]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$102


DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$331	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$25

DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("VPORT_IntCallBack"), DW_AT_type(*DW$T$96)
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$T$98	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$98, DW_AT_type(*DW$T$94)

DW$T$92	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$92, DW_AT_byte_size(0x0c)
DW$332	.dwtag  DW_TAG_subrange_type
	.dwattr DW$332, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$92


DW$T$86	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$86, DW_AT_byte_size(0x0c)
DW$333	.dwtag  DW_TAG_subrange_type
	.dwattr DW$333, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$86


DW$T$90	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$89)
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$90, DW_AT_byte_size(0x0c)
DW$334	.dwtag  DW_TAG_subrange_type
	.dwattr DW$334, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$90


DW$T$91	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$89)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$91, DW_AT_byte_size(0x18)
DW$335	.dwtag  DW_TAG_subrange_type
	.dwattr DW$335, DW_AT_upper_bound(0x05)
	.dwendtag DW$T$91

DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)

DW$T$88	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$87)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$88, DW_AT_byte_size(0x140)
DW$336	.dwtag  DW_TAG_subrange_type
	.dwattr DW$336, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$88

DW$T$99	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$87)
	.dwattr DW$T$99, DW_AT_address_class(0x20)
DW$T$101	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$100)
	.dwattr DW$T$101, DW_AT_address_class(0x20)
DW$T$96	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$95)
	.dwattr DW$T$96, DW_AT_address_class(0x20)
DW$T$23	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$23, DW_AT_address_class(0x20)
DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_Frame"), DW_AT_type(*DW$T$79)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Fxns"), DW_AT_type(*DW$T$85)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)

DW$T$95	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$337	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
DW$338	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$95


DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$79, DW_AT_name("FVID_Frame")
	.dwattr DW$T$79, DW_AT_byte_size(0x20)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$339, DW_AT_name("queElement"), DW_AT_symbol_name("_queElement")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$78)
	.dwattr DW$340, DW_AT_name("frame"), DW_AT_symbol_name("_frame")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$85, DW_AT_name("EDC_Fxns")
	.dwattr DW$T$85, DW_AT_byte_size(0x0c)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$82)
	.dwattr DW$341, DW_AT_name("open"), DW_AT_symbol_name("_open")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$342, DW_AT_name("close"), DW_AT_symbol_name("_close")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$84)
	.dwattr DW$343, DW_AT_name("ctrl"), DW_AT_symbol_name("_ctrl")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$85

DW$T$82	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$81)
	.dwattr DW$T$82, DW_AT_address_class(0x20)
DW$T$84	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$84, DW_AT_address_class(0x20)

DW$T$78	.dwtag  DW_TAG_union_type
	.dwattr DW$T$78, DW_AT_byte_size(0x18)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$344, DW_AT_name("iFrm"), DW_AT_symbol_name("_iFrm")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$345, DW_AT_name("pFrm"), DW_AT_symbol_name("_pFrm")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$76)
	.dwattr DW$346, DW_AT_name("riFrm"), DW_AT_symbol_name("_riFrm")
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$347, DW_AT_name("rpFrm"), DW_AT_symbol_name("_rpFrm")
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78


DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$80)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$348	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$349	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$81


DW$T$83	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$83, DW_AT_language(DW_LANG_C)
DW$350	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$351	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$352	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$83

DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_IFrame"), DW_AT_type(*DW$T$70)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_PFrame"), DW_AT_type(*DW$T$71)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_RawIFrame"), DW_AT_type(*DW$T$72)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("FVID_RawPFrame"), DW_AT_type(*DW$T$73)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Handle"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)

DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$70, DW_AT_name("FVID_IFrame")
	.dwattr DW$T$70, DW_AT_byte_size(0x18)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$353, DW_AT_name("y1"), DW_AT_symbol_name("_y1")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$354, DW_AT_name("cb1"), DW_AT_symbol_name("_cb1")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$355, DW_AT_name("cr1"), DW_AT_symbol_name("_cr1")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$356, DW_AT_name("y2"), DW_AT_symbol_name("_y2")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$357, DW_AT_name("cb2"), DW_AT_symbol_name("_cb2")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$358, DW_AT_name("cr2"), DW_AT_symbol_name("_cr2")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70


DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$71, DW_AT_name("FVID_PFrame")
	.dwattr DW$T$71, DW_AT_byte_size(0x0c)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$359, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$360, DW_AT_name("cb"), DW_AT_symbol_name("_cb")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$361, DW_AT_name("cr"), DW_AT_symbol_name("_cr")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_name("FVID_RawIFrame")
	.dwattr DW$T$72, DW_AT_byte_size(0x08)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$362, DW_AT_name("buf1"), DW_AT_symbol_name("_buf1")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$363, DW_AT_name("buf2"), DW_AT_symbol_name("_buf2")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("FVID_RawPFrame")
	.dwattr DW$T$73, DW_AT_byte_size(0x04)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$364, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73

DW$T$69	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$69, DW_AT_address_class(0x20)
DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("Char"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)

	.dwattr DW$62, DW_AT_type(*DW$T$22)
	.dwattr DW$65, DW_AT_type(*DW$T$22)
	.dwattr DW$54, DW_AT_type(*DW$T$22)
	.dwattr DW$51, DW_AT_type(*DW$T$22)
	.dwattr DW$49, DW_AT_type(*DW$T$22)
	.dwattr DW$109, DW_AT_type(*DW$T$22)
	.dwattr DW$160, DW_AT_type(*DW$T$22)
	.dwattr DW$115, DW_AT_type(*DW$T$22)
	.dwattr DW$164, DW_AT_type(*DW$T$22)
	.dwattr DW$46, DW_AT_type(*DW$T$22)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$365, DW_AT_location[DW_OP_reg0]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$366, DW_AT_location[DW_OP_reg1]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$367, DW_AT_location[DW_OP_reg2]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$368, DW_AT_location[DW_OP_reg3]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$369, DW_AT_location[DW_OP_reg4]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$370, DW_AT_location[DW_OP_reg5]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$371, DW_AT_location[DW_OP_reg6]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$372, DW_AT_location[DW_OP_reg7]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$373, DW_AT_location[DW_OP_reg8]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$374, DW_AT_location[DW_OP_reg9]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$375, DW_AT_location[DW_OP_reg10]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$376, DW_AT_location[DW_OP_reg11]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$377, DW_AT_location[DW_OP_reg12]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$378, DW_AT_location[DW_OP_reg13]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$379, DW_AT_location[DW_OP_reg14]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$380, DW_AT_location[DW_OP_reg15]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$381, DW_AT_location[DW_OP_reg16]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$382, DW_AT_location[DW_OP_reg17]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$383, DW_AT_location[DW_OP_reg18]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$384, DW_AT_location[DW_OP_reg19]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$385, DW_AT_location[DW_OP_reg20]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$386, DW_AT_location[DW_OP_reg21]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$387, DW_AT_location[DW_OP_reg22]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$388, DW_AT_location[DW_OP_reg23]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$389, DW_AT_location[DW_OP_reg24]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$390, DW_AT_location[DW_OP_reg25]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$391, DW_AT_location[DW_OP_reg26]
DW$392	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$392, DW_AT_location[DW_OP_reg27]
DW$393	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$393, DW_AT_location[DW_OP_reg28]
DW$394	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$394, DW_AT_location[DW_OP_reg29]
DW$395	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$395, DW_AT_location[DW_OP_reg30]
DW$396	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$396, DW_AT_location[DW_OP_reg31]
DW$397	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$397, DW_AT_location[DW_OP_regx 0x20]
DW$398	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$398, DW_AT_location[DW_OP_regx 0x21]
DW$399	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$399, DW_AT_location[DW_OP_regx 0x22]
DW$400	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$400, DW_AT_location[DW_OP_regx 0x23]
DW$401	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$401, DW_AT_location[DW_OP_regx 0x24]
DW$402	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$402, DW_AT_location[DW_OP_regx 0x25]
DW$403	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$403, DW_AT_location[DW_OP_regx 0x26]
DW$404	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$404, DW_AT_location[DW_OP_regx 0x27]
DW$405	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$405, DW_AT_location[DW_OP_regx 0x28]
DW$406	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$406, DW_AT_location[DW_OP_regx 0x29]
DW$407	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$407, DW_AT_location[DW_OP_regx 0x2a]
DW$408	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$408, DW_AT_location[DW_OP_regx 0x2b]
DW$409	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$409, DW_AT_location[DW_OP_regx 0x2c]
DW$410	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$410, DW_AT_location[DW_OP_regx 0x2d]
DW$411	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$411, DW_AT_location[DW_OP_regx 0x2e]
DW$412	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$412, DW_AT_location[DW_OP_regx 0x2f]
DW$413	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$413, DW_AT_location[DW_OP_regx 0x30]
DW$414	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$414, DW_AT_location[DW_OP_regx 0x31]
DW$415	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$415, DW_AT_location[DW_OP_regx 0x32]
DW$416	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$416, DW_AT_location[DW_OP_regx 0x33]
DW$417	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$417, DW_AT_location[DW_OP_regx 0x34]
DW$418	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$418, DW_AT_location[DW_OP_regx 0x35]
DW$419	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$419, DW_AT_location[DW_OP_regx 0x36]
DW$420	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$420, DW_AT_location[DW_OP_regx 0x37]
DW$421	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$421, DW_AT_location[DW_OP_regx 0x38]
DW$422	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$422, DW_AT_location[DW_OP_regx 0x39]
DW$423	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$423, DW_AT_location[DW_OP_regx 0x3a]
DW$424	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$424, DW_AT_location[DW_OP_regx 0x3b]
DW$425	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$425, DW_AT_location[DW_OP_regx 0x3c]
DW$426	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$426, DW_AT_location[DW_OP_regx 0x3d]
DW$427	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$427, DW_AT_location[DW_OP_regx 0x3e]
DW$428	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$428, DW_AT_location[DW_OP_regx 0x3f]
DW$429	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$429, DW_AT_location[DW_OP_regx 0x40]
DW$430	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$430, DW_AT_location[DW_OP_regx 0x41]
DW$431	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$431, DW_AT_location[DW_OP_regx 0x42]
DW$432	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$432, DW_AT_location[DW_OP_regx 0x43]
DW$433	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$433, DW_AT_location[DW_OP_regx 0x44]
DW$434	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$434, DW_AT_location[DW_OP_regx 0x45]
DW$435	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$435, DW_AT_location[DW_OP_regx 0x46]
DW$436	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$436, DW_AT_location[DW_OP_regx 0x47]
DW$437	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$437, DW_AT_location[DW_OP_regx 0x48]
DW$438	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$438, DW_AT_location[DW_OP_regx 0x49]
DW$439	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$439, DW_AT_location[DW_OP_regx 0x4a]
DW$440	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$440, DW_AT_location[DW_OP_regx 0x4b]
DW$441	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$441, DW_AT_location[DW_OP_regx 0x4c]
DW$442	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$442, DW_AT_location[DW_OP_regx 0x4d]
DW$443	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$443, DW_AT_location[DW_OP_regx 0x4e]
DW$444	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$444, DW_AT_location[DW_OP_regx 0x4f]
DW$445	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$445, DW_AT_location[DW_OP_regx 0x50]
DW$446	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$446, DW_AT_location[DW_OP_regx 0x51]
DW$447	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$447, DW_AT_location[DW_OP_regx 0x52]
DW$448	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$448, DW_AT_location[DW_OP_regx 0x53]
DW$449	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$449, DW_AT_location[DW_OP_regx 0x54]
DW$450	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$450, DW_AT_location[DW_OP_regx 0x55]
DW$451	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$451, DW_AT_location[DW_OP_regx 0x56]
DW$452	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$452, DW_AT_location[DW_OP_regx 0x57]
DW$453	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$453, DW_AT_location[DW_OP_regx 0x58]
DW$454	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$454, DW_AT_location[DW_OP_regx 0x59]
DW$455	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$455, DW_AT_location[DW_OP_regx 0x5a]
DW$456	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$456, DW_AT_location[DW_OP_regx 0x5b]
DW$457	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$457, DW_AT_location[DW_OP_regx 0x5c]
DW$458	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$458, DW_AT_location[DW_OP_regx 0x5d]
DW$459	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$459, DW_AT_location[DW_OP_regx 0x5e]
DW$460	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$460, DW_AT_location[DW_OP_regx 0x5f]
DW$461	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$461, DW_AT_location[DW_OP_regx 0x60]
DW$462	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$462, DW_AT_location[DW_OP_regx 0x61]
DW$463	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$463, DW_AT_location[DW_OP_regx 0x62]
DW$464	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$464, DW_AT_location[DW_OP_regx 0x63]
DW$465	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$465, DW_AT_location[DW_OP_regx 0x64]
DW$466	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$466, DW_AT_location[DW_OP_regx 0x65]
DW$467	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$467, DW_AT_location[DW_OP_regx 0x66]
DW$468	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$468, DW_AT_location[DW_OP_regx 0x67]
DW$469	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$469, DW_AT_location[DW_OP_regx 0x68]
DW$470	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$470, DW_AT_location[DW_OP_regx 0x69]
DW$471	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$471, DW_AT_location[DW_OP_regx 0x6a]
DW$472	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$472, DW_AT_location[DW_OP_regx 0x6b]
DW$473	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$473, DW_AT_location[DW_OP_regx 0x6c]
DW$474	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$474, DW_AT_location[DW_OP_regx 0x6d]
DW$475	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$475, DW_AT_location[DW_OP_regx 0x6e]
DW$476	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$476, DW_AT_location[DW_OP_regx 0x6f]
DW$477	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$477, DW_AT_location[DW_OP_regx 0x70]
DW$478	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$478, DW_AT_location[DW_OP_regx 0x71]
DW$479	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$479, DW_AT_location[DW_OP_regx 0x72]
DW$480	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$480, DW_AT_location[DW_OP_regx 0x73]
DW$481	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$481, DW_AT_location[DW_OP_regx 0x74]
DW$482	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$482, DW_AT_location[DW_OP_regx 0x75]
DW$483	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$483, DW_AT_location[DW_OP_regx 0x76]
DW$484	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$484, DW_AT_location[DW_OP_regx 0x77]
DW$485	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$485, DW_AT_location[DW_OP_regx 0x78]
DW$486	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$486, DW_AT_location[DW_OP_regx 0x79]
DW$487	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$487, DW_AT_location[DW_OP_regx 0x7a]
DW$488	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$488, DW_AT_location[DW_OP_regx 0x7b]
DW$489	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$489, DW_AT_location[DW_OP_regx 0x7c]
DW$490	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$490, DW_AT_location[DW_OP_regx 0x7d]
DW$491	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$491, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

