;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Thu Feb 17 13:27:16 2011                                *
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
	.dwattr DW$CU, DW_AT_name("vportdis.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	IR_1,32
	.field  	_VPORTDIS_Fxns+0,32
	.field  	_mdBindDev,32		; _VPORTDIS_Fxns._mdBindDev @ 0
	.field  	_IOM_mdNotImpl,32		; _VPORTDIS_Fxns._mdUnBindDev @ 32
	.field  	_mdControlChan,32		; _VPORTDIS_Fxns._mdControlChan @ 64
	.field  	_mdCreateChan,32		; _VPORTDIS_Fxns._mdCreateChan @ 96
	.field  	_mdDeleteChan,32		; _VPORTDIS_Fxns._mdDeleteChan @ 128
	.field  	_mdSubmitChan,32		; _VPORTDIS_Fxns._mdSubmitChan @ 160
IR_1:	.set	24

	.sect	".cinit"
	.align	8
	.field  	IR_2,32
	.field  	_chanObjs+0,32
	.field  	0,32			; _chanObjs[0]._status @ 0
	.field  	0,32			; _chanObjs[0]._portNum @ 32
	.field  	0,32			; _chanObjs[0]._chanNum @ 64
	.field  	29622272,32			; _chanObjs[0]._base @ 96
	.field  	16,32			; _chanObjs[0]._edmaChanNum[0] @ 128
	.field  	17,32			; _chanObjs[0]._edmaChanNum[1] @ 160
	.field  	18,32			; _chanObjs[0]._edmaChanNum[2] @ 192
	.field  	1946157088,32			; _chanObjs[0]._edmaAddr[0] @ 224
	.field  	1946157096,32			; _chanObjs[0]._edmaAddr[1] @ 256
	.field  	1946157104,32			; _chanObjs[0]._edmaAddr[2] @ 288
IR_2:	.set	40

	.sect	".cinit"
	.align	8
	.field  	IR_3,32
	.field  	_chanObjs+208,32
	.field  	0,32
	.field  	0,32			; _chanObjs[1]._status @ 1696
	.field  	1,32			; _chanObjs[1]._portNum @ 1728
	.field  	0,32			; _chanObjs[1]._chanNum @ 1760
	.field  	29638656,32			; _chanObjs[1]._base @ 1792
	.field  	56,32			; _chanObjs[1]._edmaChanNum[0] @ 1824
	.field  	57,32			; _chanObjs[1]._edmaChanNum[1] @ 1856
	.field  	58,32			; _chanObjs[1]._edmaChanNum[2] @ 1888
	.field  	2013265952,32			; _chanObjs[1]._edmaAddr[0] @ 1920
	.field  	2013265960,32			; _chanObjs[1]._edmaAddr[1] @ 1952
	.field  	2013265968,32			; _chanObjs[1]._edmaAddr[2] @ 1984
IR_3:	.set	44

	.sect	".cinit"
	.align	8
	.field  	IR_4,32
	.field  	_chanObjs+424,32
	.field  	0,32			; _chanObjs[2]._status @ 3392
	.field  	2,32			; _chanObjs[2]._portNum @ 3424
	.field  	0,32			; _chanObjs[2]._chanNum @ 3456
	.field  	29655040,32			; _chanObjs[2]._base @ 3488
	.field  	59,32			; _chanObjs[2]._edmaChanNum[0] @ 3520
	.field  	60,32			; _chanObjs[2]._edmaChanNum[1] @ 3552
	.field  	61,32			; _chanObjs[2]._edmaChanNum[2] @ 3584
	.field  	2080374816,32			; _chanObjs[2]._edmaAddr[0] @ 3616
	.field  	2080374824,32			; _chanObjs[2]._edmaAddr[1] @ 3648
	.field  	2080374832,32			; _chanObjs[2]._edmaAddr[2] @ 3680
IR_4:	.set	40


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert"), DW_AT_symbol_name("__assert")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$103)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_open"), DW_AT_symbol_name("_EDMA_open")
	.dwattr DW$4, DW_AT_type(*DW$T$67)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$4


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_close"), DW_AT_symbol_name("_EDMA_close")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$67)
	.dwendtag DW$7


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_allocTable"), DW_AT_symbol_name("_EDMA_allocTable")
	.dwattr DW$9, DW_AT_type(*DW$T$67)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_freeTable"), DW_AT_symbol_name("_EDMA_freeTable")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$67)
	.dwendtag DW$11


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intAlloc"), DW_AT_symbol_name("_EDMA_intAlloc")
	.dwattr DW$13, DW_AT_type(*DW$T$10)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$13


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("EDMA_intFree"), DW_AT_symbol_name("_EDMA_intFree")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$15


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("CACHE_flush"), DW_AT_symbol_name("_CACHE_flush")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$17


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("CACHE_clean"), DW_AT_symbol_name("_CACHE_clean")
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$21


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_open"), DW_AT_symbol_name("_DAT_open")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$25


DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_close"), DW_AT_symbol_name("_DAT_close")
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_fill"), DW_AT_symbol_name("_DAT_fill")
	.dwattr DW$30, DW_AT_type(*DW$T$19)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$175)
	.dwendtag DW$30


DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("IOM_mdNotImpl"), DW_AT_symbol_name("_IOM_mdNotImpl")
	.dwattr DW$34, DW_AT_type(*DW$T$26)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("set_i2c_pin"), DW_AT_symbol_name("_set_i2c_pin")
	.dwattr DW$35, DW_AT_type(*DW$T$10)
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("C0104_verify"), DW_AT_symbol_name("_C0104_verify")
	.dwattr DW$36, DW_AT_type(*DW$T$10)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("_IRQ_eventTable"), DW_AT_symbol_name("__IRQ_eventTable")
	.dwattr DW$37, DW_AT_type(*DW$T$177)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
	.global	_VPORTDIS_Fxns
_VPORTDIS_Fxns:	.usect	".far",24,4
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("VPORTDIS_Fxns"), DW_AT_symbol_name("_VPORTDIS_Fxns")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _VPORTDIS_Fxns]
	.dwattr DW$38, DW_AT_type(*DW$T$200)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_chanObjs
_chanObjs:	.usect	".far",636,8
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("chanObjs"), DW_AT_symbol_name("_chanObjs")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _chanObjs]
	.dwattr DW$39, DW_AT_type(*DW$T$204)
	.dwattr DW$39, DW_AT_external(0x01)
	.sect	".const"
	.align	8
_fillValue:
	.field  	0,32			; _fillValue[0] @ 0
	.field  	0,32			; _fillValue[1] @ 32
	.field  	-2139062144,32			; _fillValue[2] @ 64
	.field  	-2139062144,32			; _fillValue[3] @ 96

DW$40	.dwtag  DW_TAG_variable, DW_AT_name("fillValue"), DW_AT_symbol_name("_fillValue")
	.dwattr DW$40, DW_AT_type(*DW$T$135)
	.dwattr DW$40, DW_AT_location[DW_OP_addr _fillValue]
;	E:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI9602 C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI9604 
	.sect	".text"

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$41, DW_AT_low_pc(_mdSubmitChan)
	.dwattr DW$41, DW_AT_high_pc(0x00)
	.dwattr DW$41, DW_AT_begin_file("vportdis.c")
	.dwattr DW$41, DW_AT_begin_line(0x108)
	.dwattr DW$41, DW_AT_begin_column(0x0d)
	.dwattr DW$41, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$41, DW_AT_skeletal(0x01)
	.dwpsn	"vportdis.c",265,1

;******************************************************************************
;* FUNCTION NAME: _mdSubmitChan                                               *
;*                                                                            *
;*   Regs Modified     : A4                                                   *
;*   Regs Used         : A4,B3                                                *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_mdSubmitChan:
;** --------------------------------------------------------------------------*
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$42, DW_AT_type(*DW$T$24)
	.dwattr DW$42, DW_AT_location[DW_OP_reg4]
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("packet"), DW_AT_symbol_name("_packet")
	.dwattr DW$43, DW_AT_type(*DW$T$48)
	.dwattr DW$43, DW_AT_location[DW_OP_reg20]
;** 266	-----------------------    return (-9);
           RETNOP  .S2     B3,4              ; |267| 
	.dwpsn	"vportdis.c",267,1
           MVK     .L1     0xfffffff7,A4     ; |266| 
           ; BRANCH OCCURS {B3}              ; |267| 
	.dwattr DW$41, DW_AT_end_file("vportdis.c")
	.dwattr DW$41, DW_AT_end_line(0x10b)
	.dwattr DW$41, DW_AT_end_column(0x01)
	.dwendtag DW$41

	.sect	".text"

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("_displayStart"), DW_AT_symbol_name("__displayStart")
	.dwattr DW$44, DW_AT_low_pc(__displayStart)
	.dwattr DW$44, DW_AT_high_pc(0x00)
	.dwattr DW$44, DW_AT_begin_file("vportdis.c")
	.dwattr DW$44, DW_AT_begin_line(0x305)
	.dwattr DW$44, DW_AT_begin_column(0x0c)
	.dwattr DW$44, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$44, DW_AT_skeletal(0x01)
	.dwpsn	"vportdis.c",774,1

;******************************************************************************
;* FUNCTION NAME: __displayStart                                              *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,B0,B4,B5,B6,B7,SP                     *
;*   Regs Used         : A3,A4,A5,A6,A7,B0,B3,B4,B5,B6,B7,SP                  *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                    *
;******************************************************************************
__displayStart:
;** --------------------------------------------------------------------------*
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$45, DW_AT_type(*DW$T$24)
	.dwattr DW$45, DW_AT_location[DW_OP_reg4]
;** 775	-----------------------    chan = (struct $$fake2 *)chanp;
;** 776	-----------------------    C$2 = (*chan).base;
;** 776	-----------------------    base = (volatile int *)(C$2+392);
;** 776	-----------------------    Q$2 = (-48);
;** 776	-----------------------    Q$1 = (-47);
;** 778	-----------------------    i = 0;
;** 781	-----------------------    C$1 = (volatile int *)C$2+192;
;** 781	-----------------------    *C$1 = *C$1|0x4000;
;** 782	-----------------------    base[31] = base[31]|0x8000;
;**  	-----------------------    K$18 = 1000000;
;**  	-----------------------    K$17 = 1879048192;
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
           LDW     .D1T1   *+A4(12),A3       ; |776| 
           SUB     .L2     SP,8,SP           ; |774| 
           ZERO    .S2     B4                ; |778| 
           STW     .D2T2   B4,*+SP(8)        ; |778| 
           MVK     .S1     392,A6            ; |776| 
           ADDAD   .D1     A3,24,A5          ; |781| 
           LDW     .D1T2   *A5,B4            ; |781| 
           ADD     .L1     A6,A3,A3          ; |776| 
           MVKL    .S2     0xf4240,B6
           MVKH    .S2     0xf4240,B6
           ZERO    .L2     B5
           SET     .S2     B4,14,14,B4       ; |781| 
           STW     .D1T2   B4,*A5            ; |781| 
           LDW     .D1T1   *+A3(124),A6      ; |782| 
           NOP             2
           MVK     .S1     0xffffffd0,A5     ; |776| 
           MVKH    .S2     0x70000000,B5
           SET     .S1     A6,15,15,A6       ; |782| 
	.dwpsn	"vportdis.c",784,0

           MVK     .S1     0xffffffd1,A6     ; |776| 
||         STW     .D1T1   A6,*+A3(124)      ; |782| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 784
;*      Loop opening brace source line   : 784
;*      Loop closing brace source line   : 787
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 20
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        0     
;*      .S units                     0        1     
;*      .D units                     1        5*    
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             3        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 20 Unsafe schedule for irregular loop
;*         ii = 20 Unsafe schedule for irregular loop
;*         ii = 20 Unsafe schedule for irregular loop
;*         ii = 20 Did not find schedule
;*         ii = 21 Unsafe schedule for irregular loop
;*         ii = 21 Unsafe schedule for irregular loop
;*         ii = 21 Unsafe schedule for irregular loop
;*         ii = 21 Did not find schedule
;*         ii = 22 Unsafe schedule for irregular loop
;*         ii = 22 Unsafe schedule for irregular loop
;*         ii = 22 Unsafe schedule for irregular loop
;*         ii = 22 Did not find schedule
;*         ii = 23 Unsafe schedule for irregular loop
;*         ii = 23 Unsafe schedule for irregular loop
;*         ii = 23 Unsafe schedule for irregular loop
;*         ii = 23 Did not find schedule
;*         ii = 24 Unsafe schedule for irregular loop
;*         ii = 24 Unsafe schedule for irregular loop
;*         ii = 24 Unsafe schedule for irregular loop
;*         ii = 24 Did not find schedule
;*         ii = 25 Unsafe schedule for irregular loop
;*         ii = 25 Unsafe schedule for irregular loop
;*         ii = 25 Unsafe schedule for irregular loop
;*         ii = 25 Did not find schedule
;*         ii = 26 Unsafe schedule for irregular loop
;*         ii = 26 Unsafe schedule for irregular loop
;*         ii = 26 Unsafe schedule for irregular loop
;*         ii = 26 Did not find schedule
;*         ii = 27 Unsafe schedule for irregular loop
;*         ii = 27 Unsafe schedule for irregular loop
;*         ii = 27 Unsafe schedule for irregular loop
;*         ii = 27 Did not find schedule
;*         ii = 28 Unsafe schedule for irregular loop
;*         ii = 28 Unsafe schedule for irregular loop
;*         ii = 28 Unsafe schedule for irregular loop
;*         ii = 28 Did not find schedule
;*         ii = 30 Unsafe schedule for irregular loop
;*         ii = 30 Unsafe schedule for irregular loop
;*         ii = 30 Unsafe schedule for irregular loop
;*         ii = 30 Did not find schedule
;*         ii = 32 Unsafe schedule for irregular loop
;*         ii = 32 Unsafe schedule for irregular loop
;*         ii = 32 Unsafe schedule for irregular loop
;*         ii = 32 Did not find schedule
;*      Disqualified loop: Did not find schedule
;*----------------------------------------------------------------------------*
L1:    
DW$L$__displayStart$2$B:
;**	-----------------------g2:
;** 785	-----------------------    stat = base[30];
;** 786	-----------------------    i = i+1;
;** 787	-----------------------    if ( stat&K$17 ) goto g4;
;** 787	-----------------------    if ( i < K$18 ) goto g2;
           LDW     .D1T1   *+A3(120),A7      ; |785| 
           NOP             4
           STW     .D2T1   A7,*+SP(4)        ; |785| 
           LDW     .D2T2   *+SP(8),B4        ; |786| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |786| 
           STW     .D2T2   B4,*+SP(8)        ; |786| 
           LDW     .D2T2   *+SP(4),B4        ; |787| 
           NOP             4
           AND     .L2     B5,B4,B0          ; |787| 
   [!B0]   LDW     .D2T2   *+SP(8),B4        ; |787| 
           NOP             4
   [!B0]   CMPLT   .L2     B4,B6,B7          ; |787| 
           CMPEQ   .L2     B7,0,B4           ; |787| 
           OR      .L2     B4,B0,B0          ; |787| 

   [!B0]   BNOP    .S1     L1,4              ; |787| 
|| [ B0]   LDW     .D2T2   *+SP(4),B4        ; |788| 

	.dwpsn	"vportdis.c",787,0
   [ B0]   STW     .D1T2   B4,*+A3(120)      ; |788| 
           ; BRANCHCC OCCURS {L1}            ; |787| 
;**	-----------------------g4:
;** 788	-----------------------    base[30] = stat;
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
DW$L$__displayStart$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 790
;*      Loop opening brace source line   : 790
;*      Loop closing brace source line   : 793
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 20
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        0     
;*      .S units                     0        1     
;*      .D units                     1        5*    
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             3        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 20 Unsafe schedule for irregular loop
;*         ii = 20 Unsafe schedule for irregular loop
;*         ii = 20 Unsafe schedule for irregular loop
;*         ii = 20 Did not find schedule
;*         ii = 21 Unsafe schedule for irregular loop
;*         ii = 21 Unsafe schedule for irregular loop
;*         ii = 21 Unsafe schedule for irregular loop
;*         ii = 21 Did not find schedule
;*         ii = 22 Unsafe schedule for irregular loop
;*         ii = 22 Unsafe schedule for irregular loop
;*         ii = 22 Unsafe schedule for irregular loop
;*         ii = 22 Did not find schedule
;*         ii = 23 Unsafe schedule for irregular loop
;*         ii = 23 Unsafe schedule for irregular loop
;*         ii = 23 Unsafe schedule for irregular loop
;*         ii = 23 Did not find schedule
;*         ii = 24 Unsafe schedule for irregular loop
;*         ii = 24 Unsafe schedule for irregular loop
;*         ii = 24 Unsafe schedule for irregular loop
;*         ii = 24 Did not find schedule
;*         ii = 25 Unsafe schedule for irregular loop
;*         ii = 25 Unsafe schedule for irregular loop
;*         ii = 25 Unsafe schedule for irregular loop
;*         ii = 25 Did not find schedule
;*         ii = 26 Unsafe schedule for irregular loop
;*         ii = 26 Unsafe schedule for irregular loop
;*         ii = 26 Unsafe schedule for irregular loop
;*         ii = 26 Did not find schedule
;*         ii = 27 Unsafe schedule for irregular loop
;*         ii = 27 Unsafe schedule for irregular loop
;*         ii = 27 Unsafe schedule for irregular loop
;*         ii = 27 Did not find schedule
;*         ii = 28 Unsafe schedule for irregular loop
;*         ii = 28 Unsafe schedule for irregular loop
;*         ii = 28 Unsafe schedule for irregular loop
;*         ii = 28 Did not find schedule
;*         ii = 30 Unsafe schedule for irregular loop
;*         ii = 30 Unsafe schedule for irregular loop
;*         ii = 30 Unsafe schedule for irregular loop
;*         ii = 30 Did not find schedule
;*         ii = 32 Unsafe schedule for irregular loop
;*         ii = 32 Unsafe schedule for irregular loop
;*         ii = 32 Unsafe schedule for irregular loop
;*         ii = 32 Did not find schedule
;*      Disqualified loop: Did not find schedule
;*----------------------------------------------------------------------------*
L2:    
DW$L$__displayStart$3$B:
	.dwpsn	"vportdis.c",790,0
;**	-----------------------g5:
;** 791	-----------------------    stat = base[30];
;** 792	-----------------------    i = i+1;
;** 793	-----------------------    if ( stat&K$17 ) goto g7;
;** 793	-----------------------    if ( i < K$18 ) goto g5;
           LDW     .D1T1   *+A3(120),A7      ; |791| 
           NOP             4
           STW     .D2T1   A7,*+SP(4)        ; |791| 
           LDW     .D2T2   *+SP(8),B4        ; |792| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |792| 
           STW     .D2T2   B4,*+SP(8)        ; |792| 
           LDW     .D2T2   *+SP(4),B4        ; |793| 
           NOP             4
           AND     .L2     B5,B4,B0          ; |793| 
   [!B0]   LDW     .D2T2   *+SP(8),B4        ; |793| 
           NOP             4
   [!B0]   CMPLT   .L2     B4,B6,B7          ; |793| 
           CMPEQ   .L2     B7,0,B4           ; |793| 
           OR      .L2     B4,B0,B0          ; |793| 

   [!B0]   BNOP    .S1     L2,4              ; |793| 
|| [ B0]   LDW     .D2T2   *+SP(4),B4        ; |794| 

	.dwpsn	"vportdis.c",793,0
   [ B0]   STW     .D1T2   B4,*+A3(120)      ; |794| 
           ; BRANCHCC OCCURS {L2}            ; |793| 
DW$L$__displayStart$3$E:
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 794	-----------------------    base[30] = stat;
;** 795	-----------------------    base[31] = base[31]&0xbfffffff;
;** 797	-----------------------    base[Q$2] = base[Q$2]|1;
;** 798	-----------------------    base[Q$1];
;** 798	-----------------------    base[Q$1] = (-1);
;** 320	-----------------------    IER = IER|_IRQ_eventTable[(*chan).portNum+25u];  // [1]
;** 320	-----------------------    return 0;  // [1]
           LDW     .D1T2   *+A3(124),B4      ; |795| 
           NOP             4
           CLR     .S2     B4,30,30,B4       ; |795| 

           MVKL    .S2     __IRQ_eventTable,B4 ; |320| 
||         STW     .D1T2   B4,*+A3(124)      ; |795| 

           MVKH    .S2     __IRQ_eventTable,B4 ; |320| 
||         LDW     .D1T1   *+A3[A5],A7       ; |797| 

           NOP             4
           OR      .L1     1,A7,A7           ; |797| 

           MVK     .L1     -1,A5             ; |798| 
||         STW     .D1T1   A7,*+A3[A5]       ; |797| 

           LDW     .D1T1   *+A3[A6],A7       ; |798| 
           STW     .D1T1   A5,*+A3[A6]       ; |798| 
           LDW     .D1T1   *+A4(4),A3        ; |320| 
           NOP             4
           SHL     .S1     A3,2,A3           ; |320| 
           ADDK    .S1     100,A3            ; |320| 
           NOP             1
           ADD     .L2X    B4,A3,B4          ; |320| 
           LDW     .D2T2   *B4,B5            ; |320| 
           NOP             3
           MVC     .S2     IER,B4            ; |320| 
           OR      .L2     B5,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
	.dwpsn	"vportdis.c",804,1

           RETNOP  .S2     B3,5              ; |804| 
||         ZERO    .L1     A4                ; |320| 
||         ADD     .L2     8,SP,SP           ; |804| 

           ; BRANCH OCCURS {B3}              ; |804| 

DW$46	.dwtag  DW_TAG_loop
	.dwattr DW$46, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\vport-v2\vportdis.asm:L2:1:1297920436")
	.dwattr DW$46, DW_AT_begin_file("vportdis.c")
	.dwattr DW$46, DW_AT_begin_line(0x316)
	.dwattr DW$46, DW_AT_end_line(0x319)
DW$47	.dwtag  DW_TAG_loop_range
	.dwattr DW$47, DW_AT_low_pc(DW$L$__displayStart$3$B)
	.dwattr DW$47, DW_AT_high_pc(DW$L$__displayStart$3$E)
	.dwendtag DW$46


DW$48	.dwtag  DW_TAG_loop
	.dwattr DW$48, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\vport-v2\vportdis.asm:L1:1:1297920436")
	.dwattr DW$48, DW_AT_begin_file("vportdis.c")
	.dwattr DW$48, DW_AT_begin_line(0x310)
	.dwattr DW$48, DW_AT_end_line(0x313)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$__displayStart$2$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$__displayStart$2$E)
	.dwendtag DW$48

	.dwattr DW$44, DW_AT_end_file("vportdis.c")
	.dwattr DW$44, DW_AT_end_line(0x324)
	.dwattr DW$44, DW_AT_end_column(0x01)
	.dwendtag DW$44

	.sect	".text"

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("_dundRecover"), DW_AT_symbol_name("__dundRecover")
	.dwattr DW$50, DW_AT_low_pc(__dundRecover)
	.dwattr DW$50, DW_AT_high_pc(0x00)
	.dwattr DW$50, DW_AT_begin_file("vportdis.c")
	.dwattr DW$50, DW_AT_begin_line(0x33a)
	.dwattr DW$50, DW_AT_begin_column(0x0c)
	.dwattr DW$50, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$50, DW_AT_skeletal(0x01)
	.dwpsn	"vportdis.c",827,1

;******************************************************************************
;* FUNCTION NAME: __dundRecover                                               *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,A16,A17,*
;*                           A18,A27,A28,A29,A30,A31,B28,B29,B30,B31          *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,A16, *
;*                           A17,A18,A27,A28,A29,A30,A31,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
__dundRecover:
;** --------------------------------------------------------------------------*
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$51, DW_AT_type(*DW$T$24)
	.dwattr DW$51, DW_AT_location[DW_OP_reg4]
;** 828	-----------------------    chan = (struct $$fake2 *)chanp;
;** 832	-----------------------    C$11 = (*chan).base;
;** 832	-----------------------    base = (volatile int *)(C$11+392);
;** 832	-----------------------    Q$2 = (-47);
;** 832	-----------------------    Q$1 = (-48);
;** 836	-----------------------    C$10 = (volatile int *)C$11+200;
;** 836	-----------------------    *C$10 = *C$10&0xffffefff;
;** 838	-----------------------    base[Q$2] = base[Q$2]&0xffffefff;
;** 841	-----------------------    base[31] = base[31]|0x40000000;
;** 843	-----------------------    if ( (*chan).mode&2 ) goto g14;

           MV      .L1     A4,A5             ; |827| 
||         MVK     .S1     392,A7            ; |832| 

           LDW     .D1T1   *+A5(12),A3       ; |832| 
||         MVK     .S1     0xffffffd0,A8     ; |832| 

           NOP             4
           ADDAD   .D1     A3,25,A6          ; |836| 
           LDW     .D1T2   *A6,B4            ; |836| 
           NOP             4
           CLR     .S2     B4,12,12,B4       ; |836| 

           MVK     .S1     0xffffffd1,A3     ; |832| 
||         ADD     .L1     A7,A3,A6          ; |832| 
||         STW     .D1T2   B4,*A6            ; |836| 

           LDW     .D1T2   *+A6[A3],B4       ; |838| 
           NOP             4
           CLR     .S2     B4,12,12,B4       ; |838| 
           STW     .D1T2   B4,*+A6[A3]       ; |838| 
           LDW     .D1T1   *+A6(124),A3      ; |841| 
           NOP             4
           SET     .S1     A3,30,30,A3       ; |841| 

           MVK     .S1     44,A3             ; |843| 
||         STW     .D1T1   A3,*+A6(124)      ; |841| 

           LDW     .D1T1   *+A5[A3],A3       ; |843| 
           NOP             4
           AND     .L1     2,A3,A0           ; |843| 

   [!A0]   LDW     .D1T1   *+A4(48),A3       ; |559| 
|| [ A0]   B       .S1     L3                ; |843| 

   [ A0]   LDW     .D1T1   *+A5(44),A3       ; |559| 
           NOP             3
   [!A0]   EXTU    .S1     A3,8,24,A3        ; |559| 
           ; BRANCHCC OCCURS {L3}            ; |843| 
;** --------------------------------------------------------------------------*
;** 559	-----------------------    chaNum = C$9 = _extu(*((unsigned (* const)[3])chanp+48), 8u, 24u);  // [11]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$9 < 32 ) goto g4;  // [2]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&~(1u<<(int)C$9-32);  // [11]
;** 566	-----------------------    K$41 = 0xffffffffu;  // [11]
;** 566	-----------------------    goto g5;  // [11]
;**	-----------------------g4:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&~(1u<<chaNum);  // [11]
;** 565	-----------------------    K$41 = 0xffffffffu;  // [11]
;**	-----------------------g5:
;** 360	-----------------------    CSR = CSR&(K$30 = 0xfffffffeu)|gie&1u;  // [3]
;** 615	-----------------------    chaNum = C$8 = _extu(*((unsigned (*)[3])chan+48), 8u, 24u);  // [12]
;** 618	-----------------------    if ( (int)C$8 < (K$33 = 32) ) goto g7;  // [12]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$8-32;  // [12]
;** 619	-----------------------    goto g8;  // [12]
;**	-----------------------g7:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [12]
;**	-----------------------g8:
;** 559	-----------------------    chaNum = C$7 = _extu(*((unsigned (*)[3])chan+52), 8u, 24u);  // [11]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$30;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$7 < K$33 ) goto g10;  // [2]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$7-32^K$41);  // [11]
;** 566	-----------------------    goto g11;  // [11]
;**	-----------------------g10:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<chaNum^K$41);  // [11]
;**	-----------------------g11:
;** 360	-----------------------    CSR = CSR&K$30|gie&1u;  // [3]
;** 615	-----------------------    chaNum = C$6 = _extu(*((unsigned (*)[3])chan+52), 8u, 24u);  // [12]
;** 618	-----------------------    if ( (int)C$6 < K$33 ) goto g13;  // [12]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$6-32;  // [12]
;** 619	-----------------------    goto g14;  // [12]
;**	-----------------------g13:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [12]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     -2,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x1a0ffb4,B5      ; |566| 
||         MVK     .S1     32,A4             ; |356| 
||         MVK     .L2     1,B6              ; |566| 
||         MVK     .L1     1,A9              ; |565| 
||         MVK     .D2     0xfffffffe,B30    ; |360| 
||         MVK     .D1     0xffffffff,A29    ; |566| 

           MVKL    .S1     0x1a0fff4,A7      ; |565| 
||         CMPLT   .L1     A3,A4,A0          ; |356| 
||         MVKH    .S2     0x1a0ffb4,B5      ; |566| 

           MVKH    .S1     0x1a0fff4,A7      ; |565| 
|| [!A0]   LDW     .D2T1   *B5,A4            ; |566| 
||         MVKL    .S2     0x1a0fff4,B31     ; |565| 

   [ A0]   LDW     .D1T1   *A7,A4            ; |565| 
||         MVK     .S1     32,A31            ; |566| 
||         MVKH    .S2     0x1a0fff4,B31     ; |565| 

           SUB     .L1     A3,A31,A7         ; |566| 
||         SHL     .S1     A9,A3,A9          ; |565| 

           SHL     .S1X    B6,A7,A7          ; |566| 
           MVKL    .S1     0x1a0ffb4,A30     ; |566| 

   [!A0]   ANDN    .L1     A4,A7,A4          ; |566| 
||         MVKH    .S1     0x1a0ffb4,A30     ; |566| 

   [ A0]   ANDN    .L1     A4,A9,A4          ; |565| 
|| [!A0]   STW     .D1T1   A4,*A30           ; |566| 

   [ A0]   STW     .D2T1   A4,*B31           ; |565| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     B30,B5,B4         ; |360| 
||         AND     .S2     1,B4,B5           ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T2   *+A5(48),B4       ; |615| 
||         MVK     .L1     1,A9              ; |619| 
||         MVK     .S2     0x20,B5           ; |618| 
||         MVK     .L2     1,B8              ; |618| 
||         MVKL    .S1     0x1a0ffb8,A3      ; |619| 

           MVK     .S2     32,B7             ; |619| 
           MVKL    .S1     0x1a0fff8,A7      ; |618| 
           MVKH    .S1     0x1a0ffb8,A3      ; |619| 
           MVKH    .S1     0x1a0fff8,A7      ; |618| 
           EXTU    .S2     B4,8,24,B4        ; |615| 

           CMPLT   .L2     B4,B5,B0          ; |618| 
||         SHL     .S2     B8,B4,B7          ; |618| 
||         SUB     .D2     B4,B7,B4          ; |619| 

           SHL     .S2X    A9,B4,B4          ; |619| 
|| [ B0]   STW     .D1T2   B7,*A7            ; |618| 

   [!B0]   STW     .D1T2   B4,*A3            ; |619| 
           LDW     .D1T1   *+A5(52),A3       ; |559| 
           NOP             4

           EXTU    .S1     A3,8,24,A3        ; |559| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B7            ; |355| 

           AND     .L2     B30,B7,B7         ; |355| 
           MVC     .S2     B7,CSR            ; |355| 

           MVKL    .S1     0x1a0fff4,A7      ; |565| 
||         MVKL    .S2     0x1a0ffb4,B7      ; |566| 
||         CMPLT   .L1X    A3,B5,A0          ; |356| 
||         MVK     .D1     1,A17             ; |565| 

           MVKH    .S1     0x1a0fff4,A7      ; |565| 
||         MVKH    .S2     0x1a0ffb4,B7      ; |566| 

           MVK     .S2     32,B8             ; |566| 
|| [!A0]   LDW     .D2T2   *B7,B9            ; |566| 
|| [ A0]   LDW     .D1T1   *A7,A7            ; |565| 
||         MVK     .L2     1,B7              ; |566| 
||         SHL     .S1     A17,A3,A28        ; |565| 

           MVKL    .S1     0x1a0ffb4,A9      ; |566| 

           SUB     .L1X    A3,B8,A16         ; |566| 
||         XOR     .D1     A29,A28,A3        ; |565| 
||         MVKL    .S1     0x1a0fff4,A27     ; |565| 

           SHL     .S1X    B7,A16,A16        ; |566| 

           XOR     .L1     A29,A16,A16       ; |566| 
||         MVKH    .S1     0x1a0ffb4,A9      ; |566| 

   [ A0]   AND     .L1     A3,A7,A3          ; |565| 
||         MVKH    .S1     0x1a0fff4,A27     ; |565| 

   [!A0]   AND     .L2X    A16,B9,B7         ; |566| 
|| [ A0]   STW     .D1T1   A3,*A27           ; |565| 

   [!A0]   STW     .D1T2   B7,*A9            ; |566| 
||         MVC     .S2     CSR,B7            ; |360| 

           AND     .L2     1,B4,B6           ; |360| 
||         AND     .S2     B30,B7,B4         ; |360| 

           OR      .L2     B6,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T2   *+A5(52),B4       ; |615| 
||         MVK     .L1     1,A7              ; |619| 
||         MVK     .L2     1,B7              ; |618| 
||         MVK     .S2     32,B6             ; |619| 
||         MVKL    .S1     0x1a0fff8,A4      ; |618| 

           NOP             1
           MVKL    .S1     0x1a0ffb8,A3      ; |619| 
           MVKH    .S1     0x1a0ffb8,A3      ; |619| 
           MVKH    .S1     0x1a0fff8,A4      ; |618| 
           EXTU    .S2     B4,8,24,B4        ; |615| 

           SUB     .D2     B4,B6,B4          ; |619| 
||         SHL     .S2     B7,B4,B5          ; |618| 
||         CMPLT   .L2     B4,B5,B0          ; |618| 

   [ B0]   STW     .D1T2   B5,*A4            ; |618| 
||         SHL     .S2X    A7,B4,B4          ; |619| 

   [!B0]   STW     .D1T2   B4,*A3            ; |619| 
           LDW     .D1T1   *+A5(44),A3       ; |559| 
           NOP             4
;** --------------------------------------------------------------------------*
L3:    
;**	-----------------------g14:
;** 559	-----------------------    chaNum = C$5 = _extu(*((unsigned (*)[3])chan+44), 8u, 24u);  // [11]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&0xfffffffeu;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;**  	-----------------------    K$41 = 0xffffffffu;
;** 356	-----------------------    if ( (int)C$5 < 32 ) goto g16;  // [2]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$5-32^K$41);  // [11]
;** 566	-----------------------    goto g17;  // [11]
;**	-----------------------g16:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<chaNum^K$41);  // [11]
;**	-----------------------g17:
;** 360	-----------------------    CSR = CSR&(K$30 = 0xfffffffeu)|gie&1u;  // [3]
;** 615	-----------------------    chaNum = C$4 = _extu(*((unsigned (*)[3])chan+44), 8u, 24u);  // [12]
;** 618	-----------------------    if ( (int)C$4 < (K$33 = 32) ) goto g19;  // [12]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$4-32;  // [12]
;** 619	-----------------------    goto g20;  // [12]
;**	-----------------------g19:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [12]
;**	-----------------------g20:
;** 859	-----------------------    if ( (*chan).mode&2 ) goto g28;

           EXTU    .S1     A3,8,24,A3        ; |559| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     -2,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x1a0fff4,B5      ; |565| 
||         MVK     .S1     32,A4             ; |356| 
||         MVK     .L1     1,A31             ; |565| 
||         MVK     .L2     1,B31             ; |566| 
||         MVK     .D1     0xffffffff,A30
||         MVK     .D2     0xfffffffe,B8     ; |360| 

           MVKL    .S1     0x1a0ffb4,A7      ; |566| 
||         CMPLT   .L1     A3,A4,A0          ; |356| 
||         MVKH    .S2     0x1a0fff4,B5      ; |565| 

           MVKH    .S1     0x1a0ffb4,A7      ; |566| 
|| [ A0]   LDW     .D2T2   *B5,B7            ; |565| 
||         MVK     .S2     32,B6             ; |566| 

   [!A0]   LDW     .D1T1   *A7,A7            ; |566| 
||         SUB     .L2X    A3,B6,B6          ; |566| 
||         SHL     .S1     A31,A3,A4         ; |565| 
||         MVKL    .S2     0x1a0ffb4,B30     ; |566| 

           SHL     .S2     B31,B6,B5         ; |566| 
||         XOR     .L1     A30,A4,A4         ; |565| 
||         MVKL    .S1     0x1a0fff4,A29     ; |565| 

           MVKH    .S2     0x1a0ffb4,B30     ; |566| 
||         MVKH    .S1     0x1a0fff4,A29     ; |565| 

           XOR     .L1X    A30,B5,A9         ; |566| 
   [ A0]   AND     .L2X    A4,B7,B6          ; |565| 

   [!A0]   AND     .L1     A9,A7,A4          ; |566| 
|| [ A0]   STW     .D1T2   B6,*A29           ; |565| 

   [!A0]   STW     .D2T1   A4,*B30           ; |566| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     B8,B5,B4          ; |360| 
||         AND     .S2     1,B4,B5           ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T2   *+A5(44),B4       ; |615| 
||         MVK     .S1     32,A4             ; |619| 
||         MVK     .L1     1,A7              ; |619| 
||         MVK     .L2     1,B6              ; |618| 
||         MVKL    .S2     0x1a0fff8,B5      ; |618| 

           MVK     .S1     0x20,A17          ; |618| 
||         MVKH    .S2     0x1a0fff8,B5      ; |618| 

           MVKL    .S1     0x1a0ffb8,A3      ; |619| 
           MVKH    .S1     0x1a0ffb8,A3      ; |619| 
           MVK     .S1     44,A28            ; |859| 
           EXTU    .S2     B4,8,24,B4        ; |615| 

           CMPLT   .L2X    B4,A17,B0         ; |618| 
||         SHL     .S2     B6,B4,B29         ; |618| 

           SUB     .L1X    B4,A4,A4          ; |619| 
|| [ B0]   STW     .D2T2   B29,*B5           ; |618| 

           SHL     .S1     A7,A4,A4          ; |619| 
   [!B0]   STW     .D1T1   A4,*A3            ; |619| 
           LDW     .D1T1   *+A5[A28],A3      ; |859| 
           NOP             4
           AND     .L1     2,A3,A0           ; |859| 

   [!A0]   LDW     .D1T1   *+A5(48),A3       ; |489| 
|| [ A0]   B       .S1     L4                ; |859| 

   [ A0]   LDW     .D1T1   *+A5(44),A3       ; |489| 
           NOP             3
   [!A0]   EXTU    .S1     A3,8,24,A3        ; |489| 
           ; BRANCHCC OCCURS {L4}            ; |859| 
;** --------------------------------------------------------------------------*
;** 489	-----------------------    chaNum = C$3 = _extu(*((unsigned (*)[3])chan+48), 8u, 24u);  // [10]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$30;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$3 < K$33 ) goto g23;  // [2]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$3-32;  // [10]
;** 494	-----------------------    goto g24;  // [10]
;**	-----------------------g23:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [10]
;**	-----------------------g24:
;** 360	-----------------------    CSR = CSR&K$30|gie&1u;  // [3]
;** 489	-----------------------    chaNum = C$2 = _extu(*((unsigned (*)[3])chan+52), 8u, 24u);  // [10]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$30;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$2 < K$33 ) goto g26;  // [2]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$2-32;  // [10]
;** 494	-----------------------    goto g27;  // [10]
;**	-----------------------g26:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [10]
;**	-----------------------g27:
;** 360	-----------------------    CSR = CSR&K$30|gie&1u;  // [3]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B8,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x1a0fff4,B5      ; |493| 
||         CMPLT   .L1     A3,A17,A0         ; |356| 
||         MVK     .S1     32,A9             ; |494| 
||         MVK     .D1     1,A31             ; |494| 

           MVKH    .S2     0x1a0fff4,B5      ; |493| 
||         SHL     .S1X    B6,A3,A16         ; |493| 
||         SUB     .L1     A3,A9,A3          ; |494| 

   [ A0]   LDW     .D2T2   *B5,B7            ; |493| 
||         MVKL    .S2     0x1a0ffb4,B5      ; |494| 
||         SHL     .S1     A31,A3,A3         ; |494| 

           MVKH    .S2     0x1a0ffb4,B5      ; |494| 
||         MVKL    .S1     0x1a0fff4,A7      ; |493| 

   [!A0]   LDW     .D2T2   *B5,B5            ; |494| 
||         MVKL    .S1     0x1a0ffb4,A4      ; |494| 

           MVKH    .S1     0x1a0fff4,A7      ; |493| 
           MVKH    .S1     0x1a0ffb4,A4      ; |494| 
   [ A0]   OR      .L2X    A16,B7,B5         ; |493| 
   [ A0]   STW     .D1T2   B5,*A7            ; |493| 
   [!A0]   OR      .L2X    A3,B5,B5          ; |494| 

   [!A0]   STW     .D1T2   B5,*A4            ; |494| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B8,B5,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *+A5(52),A3       ; |489| 
           NOP             4

           EXTU    .S1     A3,8,24,A3        ; |489| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B8,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S1     0x1a0fff4,A4      ; |493| 
||         MVKL    .S2     0x1a0ffb4,B5      ; |494| 
||         CMPLT   .L1     A3,A17,A0         ; |356| 
||         MVK     .D1     1,A7              ; |493| 

           MVKH    .S1     0x1a0fff4,A4      ; |493| 
||         MVKH    .S2     0x1a0ffb4,B5      ; |494| 

   [!A0]   LDW     .D2T2   *B5,B6            ; |494| 
|| [ A0]   LDW     .D1T1   *A4,A18           ; |493| 
||         MVK     .L2     1,B5              ; |494| 
||         MVK     .S1     32,A16            ; |494| 

           SHL     .S1     A7,A3,A9          ; |493| 
||         SUB     .L1     A3,A16,A3         ; |494| 

           SHL     .S1X    B5,A3,A3          ; |494| 
           MVKL    .S1     0x1a0fff4,A30     ; |493| 
           MVKL    .S1     0x1a0ffb4,A29     ; |494| 

   [!A0]   OR      .L2X    A3,B6,B5          ; |494| 
||         MVKH    .S1     0x1a0fff4,A30     ; |493| 
|| [ A0]   OR      .L1     A9,A18,A9         ; |493| 

           MVKH    .S1     0x1a0ffb4,A29     ; |494| 
|| [ A0]   STW     .D1T1   A9,*A30           ; |493| 

   [!A0]   STW     .D1T2   B5,*A29           ; |494| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B8,B5,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *+A5(44),A3       ; |489| 
           NOP             4
;** --------------------------------------------------------------------------*
L4:    
;**	-----------------------g28:
;** 489	-----------------------    chaNum = C$1 = _extu(*((unsigned (*)[3])chan+44), 8u, 24u);  // [10]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$30;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$1 < K$33 ) goto g30;  // [2]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$1-32;  // [10]
;** 494	-----------------------    goto g31;  // [10]
;**	-----------------------g30:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [10]
;**	-----------------------g31:
;** 360	-----------------------    CSR = CSR&K$30|gie&1u;  // [3]
;** 360	-----------------------    base[31] = base[31]|0x8000;  // [3]
;**  	-----------------------    K$124 = 1879048192;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g32:
;** 868	-----------------------    stat = base[30];
;** 870	-----------------------    if ( ((stat&K$124) == 0)&((++i) < 1000000) ) goto g32;
;** 871	-----------------------    base[30] = stat;

           EXTU    .S1     A3,8,24,A3        ; |489| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B6           ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B8,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S2     0x1a0fff4,B4      ; |493| 
||         MVKL    .S1     0x1a0ffb4,A4      ; |494| 
||         CMPLT   .L1     A3,A17,A0         ; |356| 
||         MVK     .D1     1,A7              ; |493| 
||         MVK     .L2     1,B30             ; |494| 
||         MV      .D2     B6,B29            ; |356| 

           MVKH    .S1     0x1a0ffb4,A4      ; |494| 
||         MVKH    .S2     0x1a0fff4,B4      ; |493| 

   [ A0]   LDW     .D2T2   *B4,B5            ; |493| 
|| [!A0]   LDW     .D1T1   *A4,A5            ; |494| 
||         MVK     .S2     32,B31            ; |494| 
||         MVKL    .S1     0x1a0fff4,A31     ; |493| 

           SUB     .L2X    A3,B31,B9         ; |494| 

           SHL     .S1     A7,A3,A3          ; |493| 
||         MVKL    .S2     0x1a0ffb4,B7      ; |494| 

           SHL     .S2     B30,B9,B9         ; |494| 
||         MVKH    .S1     0x1a0fff4,A31     ; |493| 

           MVKH    .S2     0x1a0ffb4,B7      ; |494| 

   [!A0]   OR      .L1X    B9,A5,A3          ; |494| 
|| [ A0]   OR      .L2X    A3,B5,B5          ; |493| 

   [ A0]   STW     .D1T2   B5,*A31           ; |493| 
|| [!A0]   STW     .D2T1   A3,*B7            ; |494| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     B8,B5,B4          ; |360| 
||         AND     .S2     1,B29,B5          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T2   *+A6(124),B4      ; |360| 
||         MV      .L1     A6,A4
||         ZERO    .S1     A5
||         ZERO    .L2     B5
||         MVKL    .S2     0xf4240,B28       ; |870| (P) <0,3> 
||         MVK     .D2     0x1,B0

           NOP             1
           ADD     .L2     1,B5,B5           ; |870| (P) <0,4> 
           MVKH    .S2     0xf4240,B28       ; |870| (P) <0,4> 
           MVKH    .S1     0x70000000,A5
           SET     .S2     B4,15,15,B4       ; |360| 

           CMPLT   .L2     B5,B28,B4         ; |870| (P) <0,5> 
||         STW     .D1T2   B4,*+A6(124)      ; |360| 

           LDW     .D1T1   *+A4(120),A3      ; |868| (P) <0,0>  ^ 
           NOP             4
           AND     .L1     A5,A3,A6          ; |870| (P) <0,5>  ^ 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 867
;*      Loop opening brace source line   : 867
;*      Loop closing brace source line   : 870
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     1        2*    
;*      .D units                     1        0     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             1        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2*    
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
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
L5:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L6:    ; PIPED LOOP KERNEL
DW$L$__dundRecover$7$B:
	.dwpsn	"vportdis.c",867,0
           CMPEQ   .L1     A6,0,A6           ; |870| <0,6>  ^ 
           AND     .L1X    B4,A6,A0          ; |870| <0,7>  ^ 
   [!A0]   ZERO    .L2     B0                ; |870| <0,8>  ^ 

   [ B0]   BNOP    .S1     L6,2              ; |870| <0,9> 
|| [ B0]   LDW     .D1T1   *+A4(120),A3      ; |868| <1,0>  ^ 

           MVKL    .S2     0xf4240,B4        ; |870| <1,3> 

           ADD     .L2     1,B5,B5           ; |870| <1,4> 
||         MVKH    .S2     0xf4240,B4        ; |870| <1,4> 

	.dwpsn	"vportdis.c",870,0

           CMPLT   .L2     B5,B4,B4          ; |870| <1,5> 
||         AND     .L1     A5,A3,A6          ; |870| <1,5>  ^ 

DW$L$__dundRecover$7$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 873
;*      Loop opening brace source line   : 873
;*      Loop closing brace source line   : 876
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     1        2*    
;*      .D units                     1        0     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             1        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2*    
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
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
L7:    ; PIPED LOOP EPILOG AND PROLOG
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g34:
;** 874	-----------------------    stat = base[30];
;** 876	-----------------------    if ( ((stat&K$124) == 0)&((++i) < 1000000) ) goto g34;
;** 878	-----------------------    base[31] = base[31]&0xbfffffff;

           MVK     .L2     0x1,B0
||         MVKL    .S2     0xf4240,B4        ; |876| (P) <0,3> 
||         MV      .L1     A4,A6

           MVKH    .S2     0xf4240,B4        ; |876| (P) <0,4> 
||         STW     .D1T1   A3,*+A6(120)      ; |871| 

           CMPLT   .L2     B5,B4,B4          ; |876| (P) <0,5> 
||         LDW     .D1T1   *+A4(120),A3      ; |874| (P) <0,0>  ^ 

           NOP             4
	.dwpsn	"vportdis.c",873,0
           AND     .L1     A5,A3,A6          ; |876| (P) <0,5>  ^ 
;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP KERNEL
DW$L$__dundRecover$9$B:
           CMPEQ   .L1     A6,0,A6           ; |876| <0,6>  ^ 
           AND     .L1X    B4,A6,A0          ; |876| <0,7>  ^ 
   [!A0]   ZERO    .L2     B0                ; |876| <0,8>  ^ 

   [ B0]   BNOP    .S1     L8,2              ; |876| <0,9> 
|| [ B0]   LDW     .D1T1   *+A4(120),A3      ; |874| <1,0>  ^ 

           MVKL    .S2     0xf4240,B4        ; |876| <1,3> 

           ADD     .L2     1,B5,B5           ; |876| <1,4> 
||         MVKH    .S2     0xf4240,B4        ; |876| <1,4> 

	.dwpsn	"vportdis.c",876,0

           CMPLT   .L2     B5,B4,B4          ; |876| <1,5> 
||         AND     .L1     A5,A3,A6          ; |876| <1,5>  ^ 

DW$L$__dundRecover$9$E:
;** --------------------------------------------------------------------------*
L9:    ; PIPED LOOP EPILOG
;** 880	-----------------------    base[Q$1] = base[Q$1]|0x1000;
;** 881	-----------------------    return 0;

           ZERO    .L1     A4                ; |881| 
||         MV      .S1     A4,A3

           LDW     .D1T2   *+A3(124),B4      ; |878| 
           NOP             4
           CLR     .S2     B4,30,30,B4       ; |878| 
           STW     .D1T2   B4,*+A3(124)      ; |878| 
           LDW     .D1T1   *+A3[A8],A5       ; |880| 
           RETNOP  .S2     B3,3              ; |883| 
           SET     .S1     A5,12,12,A5       ; |880| 
	.dwpsn	"vportdis.c",883,1
           STW     .D1T1   A5,*+A3[A8]       ; |880| 
           ; BRANCH OCCURS {B3}              ; |883| 

DW$52	.dwtag  DW_TAG_loop
	.dwattr DW$52, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\vport-v2\vportdis.asm:L8:1:1297920436")
	.dwattr DW$52, DW_AT_begin_file("vportdis.c")
	.dwattr DW$52, DW_AT_begin_line(0x369)
	.dwattr DW$52, DW_AT_end_line(0x36c)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$__dundRecover$9$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$__dundRecover$9$E)
	.dwendtag DW$52


DW$54	.dwtag  DW_TAG_loop
	.dwattr DW$54, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\vport-v2\vportdis.asm:L6:1:1297920436")
	.dwattr DW$54, DW_AT_begin_file("vportdis.c")
	.dwattr DW$54, DW_AT_begin_line(0x363)
	.dwattr DW$54, DW_AT_end_line(0x366)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$__dundRecover$7$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$__dundRecover$7$E)
	.dwendtag DW$54

	.dwattr DW$50, DW_AT_end_file("vportdis.c")
	.dwattr DW$50, DW_AT_end_line(0x373)
	.dwattr DW$50, DW_AT_end_column(0x01)
	.dwendtag DW$50

	.sect	".text"

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("_configRegs"), DW_AT_symbol_name("__configRegs")
	.dwattr DW$56, DW_AT_low_pc(__configRegs)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("vportdis.c")
	.dwattr DW$56, DW_AT_begin_line(0x22f)
	.dwattr DW$56, DW_AT_begin_column(0x0d)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"vportdis.c",560,1

;******************************************************************************
;* FUNCTION NAME: __configRegs                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,*
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,*
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 36 Save = 36 byte                  *
;******************************************************************************
__configRegs:
;** --------------------------------------------------------------------------*
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$57, DW_AT_type(*DW$T$24)
	.dwattr DW$57, DW_AT_location[DW_OP_reg4]
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$58, DW_AT_type(*DW$T$131)
	.dwattr DW$58, DW_AT_location[DW_OP_reg20]
;** 561	-----------------------    chan = (struct $$fake2 *)chanp;
;** 562	-----------------------    base = (volatile int *)((*chan).base+516);
;** 568	-----------------------    C$10 = (*chan).status;
;** 568	-----------------------    if ( !(C$10&1u) ) goto g43;

           MV      .L1X    SP,A31            ; |560| 
||         STW     .D2T1   A15,*SP--(40)     ; |560| 
||         MVKL    .S2     0x40000080,B21    ; |572| 
||         ZERO    .L2     B19               ; |572| 
||         MVK     .S1     516,A7            ; |562| 
||         ZERO    .D1     A8                ; |572| 

           STDW    .D2T1   A11:A10,*+SP(8)
||         MV      .L1     A4,A10            ; |560| 
||         ZERO    .S1     A16               ; |572| 
||         ZERO    .L2     B5                ; |572| 
||         ZERO    .D1     A9                ; |572| 
||         MVKH    .S2     0xc0000,B19       ; |572| 

           LDW     .D1T1   *A10,A3           ; |568| 
||         STW     .D2T2   B13,*+SP(28)
||         MVKH    .S1     0x800000,A8       ; |572| 
||         MVKH    .S2     0x600000,B5       ; |572| 
||         MV      .L2     B3,B13

           LDW     .D1T1   *+A10(12),A4      ; |562| 
||         STDW    .D2T2   B11:B10,*+SP(32)
||         MVKH    .S1     0x30000,A9        ; |572| 
||         MVKH    .S2     0x40000080,B21    ; |572| 
||         MV      .L2     B4,B11            ; |560| 

           STDW    .D1T1   A13:A12,*-A31(24)
||         MVKH    .S1     0x100000,A16      ; |572| 
||         MVK     .S2     1024,B22          ; |572| 

           STW     .D1T1   A14,*-A31(16)
||         MVK     .S2     8192,B9           ; |572| 
||         MVK     .S1     16384,A17         ; |572| 

           MVK     .S1     2048,A5           ; |572| 

           AND     .L1     1,A3,A0           ; |568| 
||         OR      .D1     2,A3,A3           ; |570| 
||         MVK     .S1     256,A6            ; |572| 

   [!A0]   B       .S1     L20               ; |568| 
||         ADD     .L1     A7,A4,A12         ; |562| 
|| [ A0]   STW     .D1T1   A3,*A10           ; |570| 

   [ A0]   LDW     .D2T2   *+B11(36),B4      ; |572| 
   [ A0]   LDW     .D2T2   *+B11(32),B8      ; |572| 
   [ A0]   LDW     .D2T2   *+B11(28),B17     ; |572| 
   [ A0]   LDW     .D2T2   *+B11(24),B18     ; |572| 
   [ A0]   LDW     .D2T1   *+B11(4),A4       ; |572| 
           ; BRANCHCC OCCURS {L20}           ; |568| 
;** --------------------------------------------------------------------------*
;** 570	-----------------------    (*chan).status = C$10|2u;
;** 572	-----------------------    C$8 = (*params).fldOp;
;** 572	-----------------------    C$9 = (unsigned)(*params).extCtl<<21;
;** 572	-----------------------    vdCtl = (int)C$9&0x800000|(int)C$9&0x600000|(int)((unsigned)(*params).vctl3Config<<20)&0x100000|(int)((unsigned)(*params).vctl2Config<<18)&0xc0000|(int)((unsigned)(*params).vctl1Config<<16)&0x30000|(int)((unsigned)(*params).bpk10Bit<<14)&0x4000|(int)((unsigned)(*params).rgbX<<13)&0x2000|(int)((unsigned)(*params).defValEn<<11)&0x800|(int)((unsigned)(*params).resmpl<<10)&0x400|(int)((unsigned)(*params).scale<<8)&0x100|_extu((unsigned)C$8, 29u, 31u)<<6|_extu((unsigned)C$8, 30u, 31u)<<5|_extu((unsigned)C$8, 31u, 31u)<<4|(*params).dmode&7|0x40000080;
;** 583	-----------------------    if ( U$78 = C$8-2 ) goto g4;
;** 581	-----------------------    numLines = 0;
;** 582	-----------------------    numPixels = 0;
;**  	-----------------------    goto g5;
;**	-----------------------g4:
;** 585	-----------------------    numPixels = (*params).imgHSizeFld1;
;** 586	-----------------------    numLines = (*params).imgVSizeFld1;
;**	-----------------------g5:
;** 588	-----------------------    (*chan).numLinesFld1 = U$106 = numLines;
;** 589	-----------------------    if ( !((U$78 == 0)|(U$78 == 2)) ) goto g9;
;** 591	-----------------------    if ( numPixels ) goto g8;
;** 592	-----------------------    numPixels = (*params).imgHSizeFld2;
;**	-----------------------g8:
;** 593	-----------------------    numLines += (*params).imgVSizeFld2;
;**  	-----------------------    U$106 = numLines;
;**	-----------------------g9:
;** 595	-----------------------    (*chan).numLines = U$106;
;** 597	-----------------------    *base = vdCtl;
;** 599	-----------------------    base[1] = (int)_extu((unsigned)(*params).frmVSize<<16, 4u, 4u)|(int)_extu((unsigned)(*params).frmHSize, 20u, 20u);
;** 601	-----------------------    base[2] = (int)_extu((unsigned)(*params).hBlnkStop<<16, 4u, 4u)|~(int)((unsigned)(*params).dmode<<14)&0x8000|(int)_extu((unsigned)(*params).hBlnkStart, 20u, 20u);
;** 605	-----------------------    base[3] = (int)_extu((unsigned)(*params).vBlnkYStartFld1<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vBlnkXStartFld1, 20u, 20u);
;** 607	-----------------------    base[4] = (int)_extu((unsigned)(*params).vBlnkYStopFld1<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vBlnkXStopFld1, 20u, 20u);
;** 609	-----------------------    base[5] = (int)_extu((unsigned)(*params).vBlnkYStartFld2<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vBlnkXStartFld2, 20u, 20u);
;** 611	-----------------------    base[6] = (int)_extu((unsigned)(*params).vBlnkYStopFld2<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vBlnkXStopFld2, 20u, 20u);
;** 614	-----------------------    base[25] = (int)_extu((unsigned)(*params).vBlnkYStopFld1<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vBlnkYStartFld1, 20u, 20u);
;** 616	-----------------------    base[26] = (int)_extu((unsigned)(*params).vBlnkYStopFld2<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vBlnkYStartFld2, 20u, 20u);
;** 619	-----------------------    if ( (v$4 = (int)(U$209 = (*params).imgHOffsetFld1)) < 0 ) goto g11;
;** 565	-----------------------    nh1 = 0;
;**  	-----------------------    goto g12;
;**	-----------------------g11:
;** 621	-----------------------    v$4 = (short)-U$209;
;** 621	-----------------------    (*params).imgHOffsetFld1 = v$4;
;** 620	-----------------------    nh1 = 1;
;**	-----------------------g12:
;** 623	-----------------------    if ( (v$5 = (int)(U$214 = (*params).imgHOffsetFld2)) < 0 ) goto g14;
;** 565	-----------------------    nh2 = 0;
;**  	-----------------------    goto g15;
;**	-----------------------g14:
;** 625	-----------------------    v$5 = (short)-U$214;
;** 625	-----------------------    (*params).imgHOffsetFld2 = v$5;
;** 624	-----------------------    nh2 = 1;
;**	-----------------------g15:
;** 627	-----------------------    if ( (v$6 = (int)(U$219 = (*params).imgVOffsetFld1)) < 0 ) goto g17;
;** 565	-----------------------    nv1 = 0;
;**  	-----------------------    goto g18;
;**	-----------------------g17:
;** 629	-----------------------    v$6 = (short)-U$219;
;** 629	-----------------------    (*params).imgVOffsetFld1 = v$6;
;** 628	-----------------------    nv1 = 1;
;**	-----------------------g18:
;** 631	-----------------------    if ( v$5 < 0 ) goto g20;
;** 565	-----------------------    nv2 = 0;
;**  	-----------------------    goto g21;
;**	-----------------------g20:
;** 633	-----------------------    (*params).imgVOffsetFld2 = -(*params).imgVOffsetFld2;
;** 632	-----------------------    nv2 = 1;
;**	-----------------------g21:
;** 636	-----------------------    base[7] = (int)((unsigned)nv1<<31)|(int)_extu((unsigned)v$6<<16, 4u, 4u)|(int)((unsigned)nh1<<15)&(K$143 = 32768)|(int)_extu((unsigned)v$4, 20u, 20u);
;** 639	-----------------------    base[8] = (int)_extu((unsigned)(*params).imgVSizeFld1<<16, 4u, 4u)|(int)_extu((unsigned)(*params).imgHSizeFld1, 20u, 20u);
;** 641	-----------------------    base[9] = (int)((unsigned)nv2<<31)|(int)_extu((unsigned)(*params).imgVOffsetFld2<<16, 4u, 4u)|(int)((unsigned)nh2<<15)&K$143|(int)_extu((unsigned)(*params).imgHOffsetFld2, 20u, 20u);
;** 644	-----------------------    base[10] = (int)_extu((unsigned)(*params).imgVSizeFld2<<16, 4u, 4u)|(int)_extu((unsigned)(*params).imgHSizeFld2, 20u, 20u);
;** 647	-----------------------    base[11] = (int)_extu((unsigned)(*params).yStartFld1<<16, 4u, 4u)|(int)_extu((unsigned)(*params).xStartFld1, 20u, 20u);
;** 649	-----------------------    base[12] = (int)_extu((unsigned)(*params).yStartFld2<<16, 4u, 4u)|(int)_extu((unsigned)(*params).xStartFld2, 20u, 20u);
;** 651	-----------------------    base[24] = (int)_extu((unsigned)(*params).yStartFld2<<16, 4u, 4u)|(int)_extu((unsigned)(*params).yStartFld1, 20u, 20u);
;** 654	-----------------------    base[14] = (int)_extu((unsigned)(*params).hSyncStop<<16, 4u, 4u)|(int)_extu((unsigned)(*params).hSyncStart, 20u, 20u);
;** 656	-----------------------    base[15] = (int)_extu((unsigned)(*params).vSyncYStartFld1<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vSyncXStartFld1, 20u, 20u);
;** 658	-----------------------    base[16] = (int)_extu((unsigned)(*params).vSyncYStopFld1<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vSyncXStopFld1, 20u, 20u);
;** 660	-----------------------    base[17] = (int)_extu((unsigned)(*params).vSyncYStartFld2<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vSyncXStartFld2, 20u, 20u);
;** 662	-----------------------    base[18] = (int)_extu((unsigned)(*params).vSyncYStopFld2<<16, 4u, 4u)|(int)_extu((unsigned)(*params).vSyncXStopFld2, 20u, 20u);
;** 665	-----------------------    base[21] = (int)((((unsigned)(*params).cClipHigh<<8|(*params).cClipLow)<<8|(*params).yClipHigh)<<8)|(int)(unsigned)(*params).yClipLow;
;** 668	-----------------------    base[22] = (*params).yDefVal|(int)(*params).cbDefVal<<16|(int)(*params).crDefVal<<24;
;** 671	-----------------------    (*chan).resmpl = (*params).resmpl;
;** 672	-----------------------    (*chan).scale = (*params).scale;
;** 673	-----------------------    numPixels >>= (*params).scale;
;** 674	-----------------------    (*chan).numPixels = U$391 = numPixels;
;** 675	-----------------------    v$7 = (*params).dmode;
;** 675	-----------------------    U$93 = v$7;
;** 675	-----------------------    (U$394 = U$93&2) ? (numCPixels = 0) : (numCPixels = numPixels>>1);
;** 675	-----------------------    if ( v$7&2 ) goto g27;

           LDW     .D2T2   *+B11(20),B16     ; |572| 
||         SHL     .S2     B4,21,B4          ; |572| 
||         MVK     .S1     38,A31            ; |588| 

           LDW     .D2T2   *+B11(116),B6     ; |572| 
||         SHL     .S2     B8,20,B20         ; |572| 
||         AND     .L2     B5,B4,B5          ; |572| 
||         MVK     .S1     36,A24            ; |595| 

           LDW     .D2T2   *+B11(8),B7       ; |572| 
||         AND     .L2X    A16,B20,B17       ; |572| 
||         SHL     .S2     B17,18,B20        ; |572| 
||         AND     .L1X    A8,B4,A3          ; |572| 
||         MVKL    .S1     0x8000,A23        ; |601| 

           LDW     .D2T2   *+B11(16),B30     ; |572| 
||         SHL     .S2     B18,16,B29        ; |572| 
||         OR      .L1X    B5,A3,A3          ; |572| 
||         AND     .L2     B19,B20,B28       ; |572| 
||         MVKH    .S1     0x8000,A23        ; |601| 

           LDW     .D2T2   *+B11(12),B31     ; |572| 
||         SUB     .L2X    A4,2,B0           ; |583| 
||         OR      .D1X    B17,A3,A3         ; |572| 
||         ZERO    .S2     B5                ; |581| 
||         EXTU    .S1     A4,29,31,A30      ; |572| 
||         CMPEQ   .L1     A4,2,A29          ; |589| 

           SHL     .S2     B16,14,B16        ; |572| 
||         AND     .L2X    A9,B29,B17        ; |572| 
|| [ B0]   LDHU    .D2T2   *+B11(50),B5      ; |586| 
||         OR      .D1X    B28,A3,A3         ; |572| 
||         CMPEQ   .L1     A4,4,A28          ; |589| 
||         EXTU    .S1     A4,30,31,A27      ; |572| 

           AND     .L2X    A17,B16,B16       ; |572| 
||         SHL     .S2     B6,13,B6          ; |572| 
||         OR      .L1     A28,A29,A0        ; |589| 
||         LDW     .D2T2   *B11,B27          ; |572| 
||         EXTU    .S1     A4,31,27,A26      ; |572| 

           OR      .D1X    B17,A3,A3         ; |572| 
||         CMPEQ   .L1     A0,0,A25
||         MVK     .S2     33,B25            ; |605| 
||         ADDAD   .D2     B11,8,B26         ; |605| 
||         MVKL    .S1     0x8000,A22        ; |636| 

           SHL     .S1X    B7,8,A7           ; |572| 
||         AND     .L2     B9,B6,B7          ; |572| 
||         SHL     .S2     B30,11,B4         ; |572| 
||         ADDAW   .D2     B11,17,B24        ; |607| 

           OR      .L1X    B16,A3,A3         ; |572| 
||         SHL     .S2     B31,10,B6         ; |572| 
||         AND     .L2X    A5,B4,B4          ; |572| 
||         AND     .D1     A6,A7,A6          ; |572| 
||         ADDAD   .D2     B11,9,B2          ; |609| 
||         MVKH    .S1     0x8000,A22        ; |636| 

           OR      .L1X    B7,A3,A8          ; |572| 
||         AND     .L2     B22,B6,B6         ; |572| 
||         MVK     .S2     35,B23            ; |607| 
||         ADDAW   .D2     B11,19,B8         ; |611| 
||         MVK     .S1     67,A20            ; |671| 

           MV      .L1X    B5,A3             ; |588| 
||         MVK     .S2     37,B1             ; |609| 
||         ADDAD   .D2     B11,10,B17        ; |647| 
||         MVK     .S1     132,A19           ; |672| 

           OR      .L1X    B4,A8,A7          ; |572| 
||         ZERO    .L2     B4                ; |582| 
|| [ B0]   LDHU    .D2T2   *+B11(48),B4      ; |585| 
||         STW     .D1T1   A3,*+A10[A31]     ; |588| 
||         MVK     .S2     39,B20            ; |611| 
||         MVK     .S1     37,A18            ; |674| 

           OR      .L1X    B6,A7,A5          ; |572| 
||         SHL     .S2X    A30,6,B6          ; |572| 
|| [ A0]   LDHU    .D2T1   *+B11(58),A7      ; |593| 

           OR      .L1     A6,A5,A6          ; |572| 
||         SHL     .S1     A27,5,A5          ; |572| 
||         MVK     .S2     33,B18            ; |614| 
||         ADDAW   .D2     B11,21,B16        ; |649| 

           OR      .L1X    B6,A6,A6          ; |572| 
||         AND     .L2     7,B27,B6          ; |572| 
||         MVK     .S2     35,B19            ; |614| 

           OR      .L1     A5,A6,A6          ; |572| 
||         MVK     .S2     37,B28            ; |616| 

           OR      .L1     A26,A6,A5         ; |572| 
||         OR      .L2X    B4,A25,B0
||         MVK     .S2     39,B29            ; |616| 
||         ZERO    .S1     A6                ; |565| 

   [ A0]   ADD     .L1X    A7,B5,A3          ; |593| 
|| [!B0]   LDHU    .D2T2   *+B11(56),B4      ; |592| 
||         MVK     .S2     41,B9             ; |647| 

           OR      .L2X    B6,A5,B5          ; |572| 
||         STW     .D1T1   A3,*+A10[A24]     ; |595| 
||         MVK     .S2     43,B31            ; |649| 

           OR      .L2     B21,B5,B5         ; |572| 
||         MVK     .S2     41,B27            ; |651| 
||         ADDAD   .D2     B11,11,B21        ; |654| 

           STW     .D1T2   B5,*A12           ; |597| 
||         MVK     .S2     43,B22            ; |651| 

           LDHU    .D2T1   *+B11(40),A4      ; |599| 
           LDHU    .D2T1   *+B11(42),A3      ; |599| 
           NOP             3
           EXTU    .S1     A4,20,20,A4       ; |599| 
           EXTU    .S1     A3,20,4,A3        ; |599| 
           OR      .L1     A4,A3,A3          ; |599| 
           STW     .D1T1   A3,*+A12(4)       ; |599| 
           LDW     .D2T1   *B11,A5           ; |601| 
           LDHU    .D2T1   *+B11(62),A4      ; |601| 
           LDHU    .D2T2   *+B11(60),B5      ; |601| 
           NOP             2
           SHL     .S1     A5,14,A5          ; |601| 

           ZERO    .D1     A5                ; |565| 
||         ANDN    .L1     A23,A5,A4         ; |601| 
||         EXTU    .S1     A4,20,4,A3        ; |601| 

           OR      .L1     A4,A3,A3          ; |601| 
||         EXTU    .S2     B5,20,20,B5       ; |601| 

           NOP             1
           OR      .L2X    B5,A3,B5          ; |601| 
           STW     .D1T2   B5,*+A12(8)       ; |601| 

           MVK     .S2     45,B25            ; |654| 
||         LDHU    .D2T1   *+B11[B25],A4     ; |605| 

           LDHU    .D2T1   *B26,A3           ; |605| 
           NOP             2
           ADDAW   .D2     B11,23,B26        ; |656| 
           EXTU    .S1     A4,20,4,A4        ; |605| 
           EXTU    .S1     A3,20,20,A3       ; |605| 
           OR      .L1     A3,A4,A3          ; |605| 
           STW     .D1T1   A3,*+A12(12)      ; |605| 

           MVK     .S2     47,B23            ; |656| 
||         LDHU    .D2T1   *+B11[B23],A4     ; |607| 

           LDHU    .D2T1   *B24,A3           ; |607| 
           NOP             2
           ADDAD   .D2     B11,12,B24        ; |658| 
           EXTU    .S1     A4,20,4,A4        ; |607| 
           EXTU    .S1     A3,20,20,A3       ; |607| 
           OR      .L1     A3,A4,A3          ; |607| 
           STW     .D1T1   A3,*+A12(16)      ; |607| 
           LDHU    .D2T1   *+B11[B1],A4      ; |609| 
           LDHU    .D2T1   *B2,A3            ; |609| 
           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |609| 
           EXTU    .S1     A3,20,20,A3       ; |609| 
           OR      .L1     A3,A4,A3          ; |609| 
           STW     .D1T1   A3,*+A12(20)      ; |609| 

           MVK     .S2     49,B20            ; |658| 
||         LDHU    .D2T1   *+B11[B20],A4     ; |611| 

           LDHU    .D2T1   *B8,A3            ; |611| 
           NOP             2
           ADDAW   .D2     B11,25,B8         ; |660| 
           EXTU    .S1     A4,20,4,A4        ; |611| 
           EXTU    .S1     A3,20,20,A3       ; |611| 
           OR      .L1     A3,A4,A3          ; |611| 
           STW     .D1T1   A3,*+A12(24)      ; |611| 

           MVK     .S2     51,B19            ; |660| 
||         LDHU    .D2T1   *+B11[B19],A3     ; |614| 

           LDHU    .D2T1   *+B11[B18],A4     ; |614| 
           NOP             2
           ADDAD   .D2     B11,13,B18        ; |662| 
           EXTU    .S1     A3,20,4,A3        ; |614| 
           EXTU    .S1     A4,20,20,A4       ; |614| 
           OR      .L1     A4,A3,A3          ; |614| 
           STW     .D1T1   A3,*+A12(100)     ; |614| 

           MVK     .S2     53,B29            ; |662| 
||         LDHU    .D2T1   *+B11[B29],A4     ; |616| 

           MVK     .S2     111,B28           ; |665| 
||         LDHU    .D2T1   *+B11[B28],A3     ; |616| 

           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |616| 
           EXTU    .S1     A3,20,20,A3       ; |616| 
           OR      .L1     A3,A4,A3          ; |616| 
           STW     .D1T1   A3,*+A12(104)     ; |616| 
           LDH     .D2T2   *+B11(52),B7      ; |623| 
           LDH     .D2T2   *+B11(44),B5      ; |619| 
           LDH     .D2T2   *+B11(46),B6      ; |627| 
           NOP             2

           NEG     .L1X    B7,A9             ; |625| 
||         CMPLT   .L2     B7,0,B1           ; |623| 

           MV      .L1X    B7,A4             ; |623| 
||         CMPLT   .L2     B5,0,B2           ; |619| 
|| [ B1]   STH     .D2T1   A9,*+B11(52)      ; |625| 

   [ B1]   EXT     .S1     A9,16,16,A4       ; |625| 
||         NEG     .L1X    B6,A8             ; |629| 
||         CMPLT   .L2     B6,0,B0           ; |627| 
|| [ B2]   MVK     .D1     0x1,A5            ; |620| 

           CMPLT   .L1     A4,0,A0           ; |631| 
||         NEG     .L2     B5,B6             ; |621| 
||         MV      .S1X    B6,A3             ; |627| 
|| [ B0]   MVK     .D1     0x1,A6            ; |628| 
|| [ B0]   STH     .D2T1   A8,*+B11(46)      ; |629| 

   [ A0]   LDH     .D2T2   *+B11(54),B7      ; |633| 
|| [ B0]   EXT     .S1     A8,16,16,A3       ; |629| 
|| [ B2]   EXT     .S2     B6,16,16,B5       ; |621| 

           SHL     .S1     A6,31,A4          ; |636| 
||         EXTU    .S2     B5,20,20,B5       ; |636| 
|| [ B2]   STH     .D2T2   B6,*+B11(44)      ; |621| 

           EXTU    .S1     A3,20,4,A3        ; |636| 
||         MVK     .S2     110,B2            ; |665| 

           SHL     .S1     A5,15,A5          ; |636| 
||         OR      .L1     A3,A4,A3          ; |636| 

           AND     .L1     A22,A5,A4         ; |636| 
||         MVK     .S1     35,A6             ; |678| 

           OR      .L1     A4,A3,A3          ; |636| 
|| [ A0]   NEG     .L2     B7,B6             ; |633| 

   [ A0]   STH     .D2T2   B6,*+B11(54)      ; |633| 
           OR      .L2X    B5,A3,B5          ; |636| 

           ZERO    .L2     B5                ; |565| 
||         STW     .D1T2   B5,*+A12(28)      ; |636| 

           LDHU    .D2T1   *+B11(50),A3      ; |639| 
|| [ A0]   MVK     .L2     0x1,B5            ; |632| 

           LDHU    .D2T1   *+B11(48),A4      ; |639| 
||         SHL     .S2     B5,31,B5          ; |641| 

           NOP             3
           EXTU    .S1     A3,20,4,A3        ; |639| 
           EXTU    .S1     A4,20,20,A4       ; |639| 
           OR      .L1     A4,A3,A3          ; |639| 

           ZERO    .L1     A3                ; |565| 
||         STW     .D1T1   A3,*+A12(32)      ; |639| 

           MVK     .S2     109,B1            ; |665| 
|| [ B1]   MVK     .L1     0x1,A3            ; |624| 
||         LDH     .D2T1   *+B11(54),A4      ; |641| 

           SHL     .S1     A3,15,A3          ; |641| 
||         LDH     .D2T2   *+B11(52),B6      ; |641| 

           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |641| 

           OR      .L1X    A4,B5,A3          ; |641| 
||         AND     .S1     A22,A3,A4         ; |641| 
||         EXTU    .S2     B6,20,20,B30      ; |641| 

           OR      .L1     A4,A3,A3          ; |641| 
           NOP             1

           MVK     .S2     108,B30           ; |665| 
||         OR      .L2X    B30,A3,B5         ; |641| 

           STW     .D1T2   B5,*+A12(36)      ; |641| 
           LDHU    .D2T1   *+B11(58),A3      ; |644| 
           LDHU    .D2T1   *+B11(56),A4      ; |644| 
           NOP             3
           EXTU    .S1     A3,20,4,A3        ; |644| 
           EXTU    .S1     A4,20,20,A4       ; |644| 
           OR      .L1     A4,A3,A3          ; |644| 
           STW     .D1T1   A3,*+A12(40)      ; |644| 

           MVK     .S2     114,B9            ; |668| 
||         LDHU    .D2T1   *+B11[B9],A4      ; |647| 

           MVK     .S2     113,B17           ; |668| 
||         LDHU    .D2T1   *B17,A3           ; |647| 

           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |647| 
           EXTU    .S1     A3,20,20,A3       ; |647| 
           OR      .L1     A3,A4,A3          ; |647| 
           STW     .D1T1   A3,*+A12(44)      ; |647| 

           MVK     .S2     112,B31           ; |668| 
||         LDHU    .D2T1   *+B11[B31],A4     ; |649| 

           LDHU    .D2T1   *B16,A3           ; |649| 
           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |649| 
           EXTU    .S1     A3,20,20,A3       ; |649| 
           OR      .L1     A3,A4,A3          ; |649| 
           STW     .D1T1   A3,*+A12(48)      ; |649| 
           LDHU    .D2T1   *+B11[B22],A3     ; |651| 
           LDHU    .D2T1   *+B11[B27],A4     ; |651| 
           NOP             3
           EXTU    .S1     A3,20,4,A3        ; |651| 
           EXTU    .S1     A4,20,20,A4       ; |651| 
           OR      .L1     A4,A3,A3          ; |651| 
           STW     .D1T1   A3,*+A12(96)      ; |651| 
           LDHU    .D2T1   *+B11[B25],A4     ; |654| 
           LDHU    .D2T1   *B21,A3           ; |654| 
           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |654| 
           EXTU    .S1     A3,20,20,A3       ; |654| 
           OR      .L1     A3,A4,A3          ; |654| 
           STW     .D1T1   A3,*+A12(56)      ; |654| 
           LDHU    .D2T1   *+B11[B23],A4     ; |656| 
           LDHU    .D2T1   *B26,A3           ; |656| 
           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |656| 
           EXTU    .S1     A3,20,20,A3       ; |656| 
           OR      .L1     A3,A4,A3          ; |656| 
           STW     .D1T1   A3,*+A12(60)      ; |656| 
           LDHU    .D2T1   *+B11[B20],A4     ; |658| 
           LDHU    .D2T1   *B24,A3           ; |658| 
           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |658| 
           EXTU    .S1     A3,20,20,A3       ; |658| 
           OR      .L1     A3,A4,A3          ; |658| 
           STW     .D1T1   A3,*+A12(64)      ; |658| 
           LDHU    .D2T1   *+B11[B19],A4     ; |660| 
           LDHU    .D2T1   *B8,A3            ; |660| 
           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |660| 
           EXTU    .S1     A3,20,20,A3       ; |660| 
           OR      .L1     A3,A4,A3          ; |660| 
           STW     .D1T1   A3,*+A12(68)      ; |660| 
           LDHU    .D2T1   *+B11[B29],A4     ; |662| 
           LDHU    .D2T1   *B18,A3           ; |662| 
           NOP             3
           EXTU    .S1     A4,20,4,A4        ; |662| 
           EXTU    .S1     A3,20,20,A3       ; |662| 
           OR      .L1     A3,A4,A3          ; |662| 
           STW     .D1T1   A3,*+A12(72)      ; |662| 
           LDBU    .D2T1   *+B11[B28],A3     ; |665| 
           LDBU    .D2T2   *+B2[B11],B7      ; |665| 
           NOP             1
           LDBU    .D2T2   *+B11[B1],B6      ; |665| 
           LDBU    .D2T2   *+B30[B11],B5     ; |665| 
           SHL     .S1     A3,8,A3           ; |665| 
           OR      .L1X    B7,A3,A3          ; |665| 
           SHL     .S1     A3,8,A3           ; |665| 

           ZERO    .L2     B6                ; |675| 
||         OR      .L1X    B6,A3,A3          ; |665| 

           SHL     .S1     A3,8,A3           ; |665| 
           OR      .L1X    B5,A3,A3          ; |665| 
           STW     .D1T1   A3,*+A12(84)      ; |665| 
           LDBU    .D2T1   *+B9[B11],A5      ; |668| 
           LDBU    .D2T1   *+B11[B17],A3     ; |668| 
           LDBU    .D2T1   *+B31[B11],A4     ; |668| 
           NOP             3

           ZERO    .L1     A5                ; |678| 
||         SHL     .S1     A5,24,A21         ; |668| 

           PACK2   .L1     A3,A4,A4          ; |668| 

           ADD     .S1     A19,A10,A4        ; |672| 
||         OR      .L1     A21,A4,A3         ; |668| 

           STW     .D1T1   A3,*+A12(88)      ; |668| 
           LDHU    .D2T1   *+B11(12),A3      ; |671| 
           NOP             4
           STH     .D1T1   A3,*+A10[A20]     ; |671| 
           LDHU    .D2T1   *+B11(8),A3       ; |672| 
           NOP             4
           STH     .D1T1   A3,*A4            ; |672| 
           LDW     .D2T2   *+B11(8),B5       ; |673| 
           NOP             4
           SHR     .S2     B4,B5,B4          ; |673| 
           NOP             1
           MV      .L1X    B4,A4             ; |674| 
           STW     .D1T1   A4,*+A10[A18]     ; |674| 
           LDW     .D2T2   *B11,B5           ; |675| 
           NOP             4

           CMPEQ   .L2     B5,2,B2           ; |679| 
||         MV      .L1X    B5,A3             ; |675| 
||         AND     .D2     1,B5,B1           ; |694| 
||         AND     .S2     2,B5,B0           ; |675| 

   [ B0]   B       .S1     L11               ; |675| 
|| [!B0]   ZERO    .D2     B2                ; |682| nullify predicate
|| [!B0]   MVK     .S2     35,B7             ; |704| 
|| [!B0]   ADD     .D1     7,A4,A3           ; |703| 
||         AND     .L1     2,A3,A0           ; |675| 
|| [ B0]   MVK     .L2     0x1,B1            ; |703| nullify predicate

   [ B0]   STW     .D1T1   A5,*+A10[A6]      ; |678| 
|| [ B0]   ADD     .L1     7,A4,A4           ; |680| 
|| [!A0]   SHR     .S2     B4,1,B6           ; |675| 
|| [!B1]   B       .S1     L10               ; |694| 

           MV      .D1     A0,A11            ; |675| 
|| [ B0]   CMPEQ   .L1     A3,3,A1           ; |682| 
|| [ B0]   ADD     .D2     7,B6,B5           ; |681| 
|| [ B2]   B       .S2     L13               ; |679| 
|| [!B0]   MVK     .S1     34,A4             ; |703| 
|| [!B0]   ADD     .L2     7,B6,B5           ; |704| 

   [ B0]   MVK     .S1     34,A5             ; |680| 
|| [ B0]   AND     .D1     -8,A4,A4          ; |680| 
|| [!B0]   AND     .L1     -8,A3,A3          ; |703| 
|| [ B0]   MVK     .S2     35,B6             ; |681| 
|| [ B0]   AND     .D2     -8,B5,B5          ; |681| 
|| [!B0]   AND     .L2     -8,B5,B5          ; |704| 

           NOP             2
           ; BRANCHCC OCCURS {L11}           ; |675| 
;** --------------------------------------------------------------------------*
;** 694	-----------------------    if ( !(v$7&1) ) goto g26;

   [ B1]   LDW     .D2T2   *+B11(20),B5      ; |695| 
|| [!B1]   B       .S1     L15               ; |704| 
|| [!B1]   MV      .L2X    A10,B4

           ; BRANCHCC OCCURS {L10}           ; |694| 
;** --------------------------------------------------------------------------*
;** 695	-----------------------    if ( (*params).bpk10Bit == 1 ) goto g25;
;** 699	-----------------------    (*chan).yPitch = (unsigned)(numPixels*2)+7u&0xfffffff8u;
;** 700	-----------------------    (*chan).cPitch = (unsigned)(numCPixels*2)+7u&0xfffffff8u;
;** 700	-----------------------    goto g36;

           MVK     .L2     7,B7              ; |700| 
||         MVK     .S1     35,A3             ; |700| 
||         SHL     .S2     B4,2,B8           ; |696| 

           ADDAH   .D2     B7,B6,B9          ; |700| 
||         SHL     .S2     B6,2,B6           ; |697| 

           AND     .L2     -8,B9,B31         ; |700| 
||         ADDAH   .D2     B7,B4,B4          ; |699| 
||         MV      .L1X    B8,A4             ; |696| 
||         MVK     .S2     35,B7             ; |697| 

           AND     .L2     -8,B4,B4          ; |699| 
           CMPEQ   .L2     B5,1,B0           ; |695| 

   [!B0]   STW     .D1T2   B31,*+A10[A3]     ; |700| 
||         MVK     .S1     34,A3             ; |699| 
|| [!B0]   B       .S2     L15               ; |700| 

   [!B0]   STW     .D1T2   B4,*+A10[A3]      ; |699| 
||         MVK     .L2     0x3,B4            ; |696| 
|| [!B0]   MVK     .S1     42,A3             ; |707| 
|| [ B0]   CALL    .S2     __divi            ; |696| 

   [!B0]   ADDAW   .D2     B11,31,B4         ; |707| 
   [!B0]   LDHU    .D2T2   *B4,B4            ; |707| 
           NOP             2
           ; BRANCHCC OCCURS {L15}           ; |700| 
;** --------------------------------------------------------------------------*
;**	-----------------------g25:
;** 696	-----------------------    (*chan).yPitch = (unsigned)(numPixels*4/3)+7u&0xfffffff8u;
;** 697	-----------------------    (*chan).cPitch = (unsigned)(numCPixels*4/3)+7u&0xfffffff8u;
;** 698	-----------------------    goto g36;
           ADDKPC  .S2     RL0,B3,0          ; |696| 
RL0:       ; CALL OCCURS {__divi}            ; |696| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __divi            ; |697| 
           ADDKPC  .S2     RL1,B3,0          ; |697| 
           MVK     .L2     0x3,B4            ; |697| 
           ADD     .L1     7,A4,A4           ; |696| 
           AND     .L1     -8,A4,A5          ; |696| 

           STW     .D1T1   A5,*+A10[A3]      ; |696| 
||         MV      .L1X    B6,A4             ; |697| 

RL1:       ; CALL OCCURS {__divi}            ; |697| 
;** --------------------------------------------------------------------------*

           B       .S2     L15               ; |698| 
||         ADD     .L1     7,A4,A4           ; |697| 
||         MV      .D1X    B7,A31
||         ADDAW   .D2     B11,31,B4         ; |707| 
||         MVK     .S1     42,A3             ; |707| 

           AND     .L1     -8,A4,A4          ; |697| 
           STW     .D1T1   A4,*+A10[A31]     ; |697| 
           LDHU    .D2T2   *B4,B4            ; |707| 
           NOP             2
           ; BRANCH OCCURS {L15}             ; |698| 
;** --------------------------------------------------------------------------*
L10:    
;**	-----------------------g26:
;** 703	-----------------------    (*chan).yPitch = U$391+7u&0xfffffff8u;
;** 704	-----------------------    (*chan).cPitch = (unsigned)numCPixels+7u&0xfffffff8u;
;** 704	-----------------------    goto g36;

           STW     .D1T1   A3,*+A10[A4]      ; |703| 
||         STW     .D2T2   B5,*+B4[B7]       ; |704| 
||         MVK     .S1     42,A3             ; |707| 

           ADDAW   .D2     B11,31,B4         ; |707| 
           LDHU    .D2T2   *B4,B4            ; |707| 
           NOP             2
           ; BRANCH OCCURS {L15}             ; |704| 
;** --------------------------------------------------------------------------*
L11:    
;**	-----------------------g27:
;** 678	-----------------------    (*chan).cPitch = 0u;
;** 679	-----------------------    if ( U$93 == 2 ) goto g35;

   [ B2]   ZERO    .S1     A1                ; |688| nullify predicate
|| [!B2]   CMPEQ   .L1     A3,6,A0           ; |688| 
|| [ B2]   MV      .L2X    A10,B4
|| [ B2]   STW     .D1T1   A4,*+A10[A5]      ; |680| 

   [ A1]   B       .S1     L12               ; |682| 
|| [ B2]   STW     .D2T2   B5,*+B4[B6]       ; |681| 

           ; BRANCHCC OCCURS {L13}           ; |679| 
;** --------------------------------------------------------------------------*
;** 682	-----------------------    if ( U$93 == 3 ) goto g32;

   [!A1]   MVK     .L2     7,B5              ; |689| 
|| [!A1]   MVK     .S1     34,A3             ; |689| 
|| [ A1]   LDW     .D2T2   *+B11(20),B5      ; |683| 

   [!A1]   BNOP    .S1     L14,1             ; |690| 
|| [!A1]   ADDAH   .D2     B5,B4,B6          ; |689| 

   [!A1]   ADDAW   .D2     B5,B4,B4          ; |691| 
|| [!A1]   AND     .L2     -8,B6,B5          ; |689| 

   [!A1]   AND     .L2     -8,B4,B4          ; |691| 
           ; BRANCHCC OCCURS {L12}           ; |682| 
;** --------------------------------------------------------------------------*
;** 688	-----------------------    if ( U$93 == 6 ) goto g31;
;** 691	-----------------------    (*chan).yPitch = (unsigned)(numPixels*4)+7u&0xfffffff8u;
;** 691	-----------------------    goto g36;
;**	-----------------------g31:
;** 689	-----------------------    (*chan).yPitch = (unsigned)(numPixels*2)+7u&0xfffffff8u;
;** 690	-----------------------    goto g36;

   [!A0]   STW     .D1T2   B4,*+A10[A3]      ; |691| 
||         ADDAW   .D2     B11,31,B4         ; |707| 

   [ A0]   STW     .D1T2   B5,*+A10[A3]      ; |689| 
           ; BRANCH OCCURS {L14}             ; |690| 
;** --------------------------------------------------------------------------*
L12:    
;**	-----------------------g32:
;** 683	-----------------------    if ( (*params).bpk10Bit == 1 ) goto g34;
;** 686	-----------------------    (*chan).yPitch = (unsigned)(numPixels*2)+7u&0xfffffff8u;
;** 686	-----------------------    goto g36;

           CMPEQ   .L2     B5,1,B0           ; |683| 
||         MVK     .D2     7,B6              ; |686| 
||         SHL     .S2     B4,2,B31          ; |684| 
||         MVK     .S1     34,A3             ; |686| 

   [!B0]   B       .S1     L15               ; |686| 
||         ADDAH   .D2     B6,B4,B6          ; |686| 
||         MVK     .L2     0x3,B4            ; |684| 

   [ B0]   CALL    .S1     __divi            ; |684| 
||         AND     .L2     -8,B6,B30         ; |686| 
||         MVK     .S2     34,B6             ; |684| 
||         MV      .L1X    B31,A4            ; |684| 
|| [!B0]   ADDAW   .D2     B11,31,B4         ; |707| 

   [!B0]   STW     .D1T2   B30,*+A10[A3]     ; |686| 
|| [!B0]   MVK     .S1     42,A3             ; |707| 

   [!B0]   LDHU    .D2T2   *B4,B4            ; |707| 
           NOP             2
           ; BRANCHCC OCCURS {L15}           ; |686| 
;** --------------------------------------------------------------------------*
;**	-----------------------g34:
;** 684	-----------------------    (*chan).yPitch = (unsigned)(numPixels*4/3)+7u&0xfffffff8u;
;** 685	-----------------------    goto g36;
           ADDKPC  .S2     RL2,B3,0          ; |684| 
RL2:       ; CALL OCCURS {__divi}            ; |684| 
;** --------------------------------------------------------------------------*

           B       .S1     L15               ; |685| 
||         ADD     .L1     7,A4,A3           ; |684| 
||         MV      .D1X    B6,A5
||         ADDAW   .D2     B11,31,B4         ; |707| 

           AND     .L1     -8,A3,A3          ; |684| 

           STW     .D1T1   A3,*+A10[A5]      ; |684| 
||         MVK     .S1     42,A3             ; |707| 

           LDHU    .D2T2   *B4,B4            ; |707| 
           NOP             2
           ; BRANCH OCCURS {L15}             ; |685| 
;** --------------------------------------------------------------------------*
L13:    
;**	-----------------------g35:
;** 680	-----------------------    (*chan).yPitch = U$391+7u&0xfffffff8u;
;** 681	-----------------------    (*chan).cPitch = (unsigned)numCPixels+7u&0xfffffff8u;
           ADDAW   .D2     B11,31,B4         ; |707| 
;** --------------------------------------------------------------------------*
L14:    
           LDHU    .D2T2   *B4,B4            ; |707| 
           NOP             1
           MVK     .S1     42,A3             ; |707| 
;** --------------------------------------------------------------------------*
L15:    
;**	-----------------------g36:
;** 707	-----------------------    (*chan).yThrld = (*params).thrld;
;** 708	-----------------------    if ( ((*params).mergeFlds != 0)&((*params).fldOp == 4) ) goto g38;

           MVK     .S2     33,B31            ; |708| 
||         MVK     .S1     34,A4             ; |719| 
||         MVK     .L1     1,A16             ; |714| 
||         ADDAW   .D1     A10,29,A9         ; |714| 

           MVK     .S2     38,B7             ; |719| 
||         MVK     .S1     41,A6             ; |712| 

           STW     .D1T2   B4,*+A10[A3]      ; |707| 
||         MVK     .S2     36,B9             ; |713| 
||         MVK     .S1     40,A8             ; |713| 

           LDW     .D2T2   *+B11[B31],B4     ; |708| 
||         MVK     .S2     38,B8             ; |712| 
||         MVK     .S1     42,A5             ; |711| 

           LDW     .D2T2   *+B11(4),B5       ; |708| 
||         MVK     .S2     42,B16

           NOP             2
           MVK     .S2     34,B6             ; |711| 
           CMPEQ   .L2     B4,0,B4           ; |708| 

           CMPEQ   .L2     B5,4,B5           ; |708| 
||         XOR     .S2     1,B4,B4           ; |708| 

           MV      .S2X    A10,B4
||         AND     .L2     B5,B4,B0          ; |708| 

   [ B0]   MV      .L1X    B6,A4
|| [ B0]   B       .S1     L18               ; |708| 
|| [!B0]   LDW     .D1T1   *+A10[A4],A14     ; |719| 
|| [!B0]   LDW     .D2T2   *+B4[B7],B4       ; |719| 

   [ B0]   LDW     .D1T1   *+A10[A4],A4      ; |711| 
   [!B0]   LDW     .D1T1   *+A10[A3],A13     ; |719| 
           NOP             2

           MPYLH   .M2X    A14,B4,B5         ; |719| 
|| [!B0]   MPYLH   .M1X    B4,A14,A3         ; |719| 

           ; BRANCHCC OCCURS {L18}           ; |708| 
;** --------------------------------------------------------------------------*
;** 719	-----------------------    C$6 = (*chan).yPitch;
;** 719	-----------------------    C$7 = (*chan).numLinesFld1*C$6;
;** 719	-----------------------    C$5 = (*chan).yThrld;
;** 719	-----------------------    C$4 = C$5<<3;
;** 719	-----------------------    C$2 = C$7/C$4;
;** 719	-----------------------    assert(C$2*C$5<<3 == C$7);

           CALL    .S1     __divu            ; |719| 
||         MPYU    .M1X    A14,B4,A4         ; |719| 

           SHL     .S2X    A13,3,B10         ; |719| 
           ADD     .L1X    B5,A3,A3          ; |719| 
           SHL     .S1     A3,16,A3          ; |719| 
           ADD     .L1     A4,A3,A3          ; |719| 

           MV      .L1     A3,A4             ; |719| 
||         ADDKPC  .S2     RL3,B3,0          ; |719| 
||         MV      .L2     B10,B4            ; |719| 

RL3:       ; CALL OCCURS {__divu}            ; |719| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A15            ; |719| 
           MPYLH   .M1     A15,A13,A4        ; |719| 
           MPYLH   .M1     A13,A15,A5        ; |719| 
           MPYU    .M1     A13,A15,A31       ; |719| 
           ADD     .L1     A5,A4,A4          ; |719| 
           SHL     .S1     A4,16,A4          ; |719| 

           ADD     .L1     A31,A4,A5         ; |719| 
||         MVKL    .S1     SL1+0,A4          ; |719| 

           SHL     .S1     A5,3,A5           ; |719| 

           CMPEQ   .L1     A5,A3,A0          ; |719| 
||         MVKH    .S1     SL1+0,A4          ; |719| 

   [ A0]   B       .S2     L16               ; |719| 
|| [ A0]   MVK     .S1     36,A3             ; |721| 

   [!A0]   CALL    .S1     __abort_msg       ; |719| 
|| [ A0]   LDW     .D1T1   *+A10[A3],A3      ; |721| 

           NOP             4
           ; BRANCHCC OCCURS {L16}           ; |719| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL4,B3,0          ; |719| 
RL4:       ; CALL OCCURS {__abort_msg}       ; |719| 
           MVK     .S1     36,A3             ; |721| 
           LDW     .D1T1   *+A10[A3],A3      ; |721| 
           NOP             4
;** --------------------------------------------------------------------------*
L16:    
;** 721	-----------------------    C$3 = (*chan).numLines*C$6;
;** 721	-----------------------    assert(C$3/C$4*C$5<<3 == C$3);
           MPYLH   .M1     A3,A14,A4         ; |721| 

           MPYLH   .M1     A14,A3,A5         ; |721| 
||         CALL    .S1     __divu            ; |721| 

           ADDKPC  .S2     RL5,B3,0          ; |721| 

           MPYU    .M1     A14,A3,A4         ; |721| 
||         ADD     .L1     A5,A4,A3          ; |721| 

           SHL     .S1     A3,16,A3          ; |721| 
           ADD     .L1     A4,A3,A3          ; |721| 

           MV      .L1     A3,A4             ; |721| 
||         MV      .L2     B10,B4            ; |721| 

RL5:       ; CALL OCCURS {__divu}            ; |721| 
;** --------------------------------------------------------------------------*
           MPYLH   .M1     A13,A4,A6         ; |721| 
           MPYLH   .M1     A4,A13,A5         ; |721| 
           NOP             1

           MPYU    .M1     A13,A4,A5         ; |721| 
||         ADD     .L1     A6,A5,A4          ; |721| 

           SHL     .S1     A4,16,A4          ; |721| 

           MVKL    .S1     SL2+0,A4          ; |721| 
||         ADD     .L1     A5,A4,A5          ; |721| 

           SHL     .S1     A5,3,A5           ; |721| 

           MVKH    .S1     SL2+0,A4          ; |721| 
||         CMPEQ   .L1     A5,A3,A0          ; |721| 

   [ A0]   B       .S2     L17               ; |721| 
|| [ A0]   MVK     .S1     34,A3             ; |725| 

   [!A0]   CALL    .S2     __abort_msg       ; |721| 
|| [ A0]   LDW     .D1T1   *+A10[A3],A3      ; |725| 
|| [ A0]   MVK     .S1     36,A4             ; |725| 

   [ A0]   MVK     .S1     42,A5             ; |725| 
|| [ A0]   LDW     .D1T1   *+A10[A4],A4      ; |725| 

           NOP             3
           ; BRANCHCC OCCURS {L17}           ; |721| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL6,B3,0          ; |721| 
RL6:       ; CALL OCCURS {__abort_msg}       ; |721| 
           MVK     .S1     34,A3             ; |725| 

           MVK     .S1     36,A4             ; |725| 
||         LDW     .D1T1   *+A10[A3],A3      ; |725| 

           LDW     .D1T1   *+A10[A4],A4      ; |725| 
||         MVK     .S1     42,A5             ; |725| 

           NOP             3
;** --------------------------------------------------------------------------*
L17:    
;** 723	-----------------------    (*chan).numEventsFld1 = C$2;
;** 725	-----------------------    U$445 = (*chan).yThrld;
;** 725	-----------------------    (*chan).numEvents = (*chan).yPitch*(*chan).numLines/(U$445<<3);
;** 727	-----------------------    (*chan).mergeFlds = 0u;
;** 727	-----------------------    goto g39;

           LDW     .D1T2   *+A10[A5],B5      ; |725| 
||         MVK     .S1     41,A31            ; |723| 

           MPYLH   .M1     A3,A4,A5          ; |725| 
||         CALL    .S1     __divu            ; |725| 
||         STW     .D1T1   A15,*+A10[A31]    ; |723| 

           MPYLH   .M1     A4,A3,A6          ; |725| 
           MPYU    .M1     A4,A3,A4          ; |725| 
           ADD     .L1     A6,A5,A6          ; |725| 

           SHL     .S1     A6,16,A3          ; |725| 
||         SHL     .S2     B5,3,B4           ; |725| 

           ADD     .L1     A4,A3,A4          ; |725| 
||         ADDKPC  .S2     RL7,B3,0          ; |725| 

RL7:       ; CALL OCCURS {__divu}            ; |725| 
;** --------------------------------------------------------------------------*

           ADD     .L2     1,B5,B4           ; |733| 
||         ZERO    .L1     A3                ; |730| 
||         B       .S2     L19               ; |727| 
||         MVK     .S1     40,A28            ; |725| 
||         ADDAW   .D1     A10,29,A30        ; |727| 

           MVK     .S1     43,A5             ; |730| 
||         MV      .L1     A11,A0            ; |733| 
||         ZERO    .D1     A29               ; |727| 

   [ A0]   STW     .D1T1   A3,*+A10[A5]      ; |730| 
||         SHRU    .S1X    B4,1,A3           ; |733| 

           STW     .D1T1   A4,*+A10[A28]     ; |725| 
||         MVK     .S1     43,A4             ; |733| 

   [!A0]   STW     .D1T1   A3,*+A10[A4]      ; |733| 
           STH     .D1T1   A29,*A30          ; |727| 
           ; BRANCH OCCURS {L19}             ; |727| 
;** --------------------------------------------------------------------------*
L18:    
;**	-----------------------g38:
;** 711	-----------------------    (*chan).yThrld = (*chan).yPitch>>3;
;** 712	-----------------------    (*chan).numEventsFld1 = (*chan).numLinesFld1;
;** 713	-----------------------    (*chan).numEvents = (*chan).numLines;
;** 714	-----------------------    (*chan).mergeFlds = 1u;
;**  	-----------------------    U$445 = (*chan).yThrld;

           MV      .L1X    B8,A3
||         MV      .L2X    A8,B4
||         MV      .S1     A11,A0            ; |733| 
||         STH     .D1T1   A16,*A9           ; |714| 

           MV      .L2X    A10,B5
||         LDW     .D1T1   *+A10[A3],A7      ; |712| 
||         SHRU    .S1     A4,3,A3           ; |711| 

           LDW     .D2T2   *+B5[B9],B6       ; |713| 
||         STW     .D1T1   A3,*+A10[A5]      ; |711| 
||         ZERO    .L1     A3                ; |730| 
||         MVK     .S1     43,A5             ; |730| 

           NOP             1
   [ A0]   STW     .D1T1   A3,*+A10[A5]      ; |730| 
           MVK     .S1     43,A4             ; |733| 
           STW     .D1T1   A7,*+A10[A6]      ; |712| 
           STW     .D2T2   B6,*+B5[B4]       ; |713| 
           LDW     .D2T2   *+B5[B16],B5
           NOP             4
           ADD     .L2     1,B5,B4           ; |733| 
           NOP             1
           SHRU    .S1X    B4,1,A3           ; |733| 
   [!A0]   STW     .D1T1   A3,*+A10[A4]      ; |733| 
;** --------------------------------------------------------------------------*
L19:    
;**	-----------------------g39:
;** 729	-----------------------    if ( U$394 ) goto g41;
;** 733	-----------------------    (*chan).cThrld = U$445+1u>>1;
;** 733	-----------------------    goto g42;
;**	-----------------------g41:
;** 730	-----------------------    (*chan).cThrld = 0u;
;**	-----------------------g42:
;** 735	-----------------------    base[13] = (int)_extu(U$445<<16, 6u, 6u)|(int)((unsigned)(*params).incPix<<12)&0xf000|(int)_extu(U$445, 22u, 22u);
;** 737	-----------------------    C$1 = (*chan).numEventsFld1;
;** 737	-----------------------    base[20] = (int)_extu((*chan).numEvents-C$1<<16, 4u, 4u)|(int)_extu(C$1, 20u, 20u);
;** 742	-----------------------    (*chan).mode = (*params).dmode;
;** 743	-----------------------    (*chan).status = (*chan).status|2u;
;**	-----------------------g43:
;** 745	-----------------------    return;

           LDW     .D2T2   *+B11(120),B6     ; |735| 
||         MVKL    .S2     0xf000,B31        ; |735| 
||         MVK     .S1     41,A30            ; |737| 

           MVKH    .S2     0xf000,B31        ; |735| 
           MVK     .S1     40,A31            ; |737| 

           EXTU    .S2     B5,22,6,B30       ; |735| 
||         MVK     .S1     44,A29            ; |742| 

           EXTU    .S2     B5,22,22,B29      ; |735| 
           SHL     .S2     B6,12,B6          ; |735| 
           AND     .L2     B31,B6,B6         ; |735| 
           OR      .L2     B6,B30,B4         ; |735| 
           OR      .L2     B29,B4,B4         ; |735| 
           STW     .D1T2   B4,*+A12(52)      ; |735| 
           LDW     .D1T1   *+A10[A31],A3     ; |737| 
           LDW     .D1T1   *+A10[A30],A4     ; |737| 
           NOP             4

           EXTU    .S1     A4,20,20,A3       ; |737| 
||         SUB     .L1     A3,A4,A4          ; |737| 

           EXTU    .S1     A4,20,4,A4        ; |737| 
           OR      .L1     A3,A4,A3          ; |737| 
           STW     .D1T1   A3,*+A12(80)      ; |737| 

           LDW     .D2T2   *B11,B4           ; |742| 
||         LDW     .D1T1   *A10,A3           ; |743| 

           NOP             4

           OR      .L1     2,A3,A3           ; |743| 
||         STW     .D1T2   B4,*+A10[A29]     ; |742| 

           STW     .D1T1   A3,*A10           ; |743| 
;** --------------------------------------------------------------------------*
L20:    

           LDDW    .D2T1   *+SP(8),A11:A10   ; |747| 
||         MV      .L1X    SP,A31            ; |747| 

           LDW     .D1T1   *+A31(24),A14     ; |747| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |747| 
||         MV      .L2     B13,B3            ; |747| 

           RET     .S2     B3                ; |747| 
||         LDDW    .D1T1   *+A31(16),A13:A12 ; |747| 
||         LDW     .D2T2   *+SP(28),B13      ; |747| 

           LDW     .D2T1   *++SP(40),A15     ; |747| 
	.dwpsn	"vportdis.c",747,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |747| 
	.dwattr DW$56, DW_AT_end_file("vportdis.c")
	.dwattr DW$56, DW_AT_end_line(0x2eb)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"

DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("_configEDMA"), DW_AT_symbol_name("__configEDMA")
	.dwattr DW$59, DW_AT_low_pc(__configEDMA)
	.dwattr DW$59, DW_AT_high_pc(0x00)
	.dwattr DW$59, DW_AT_begin_file("vportdis.c")
	.dwattr DW$59, DW_AT_begin_line(0x12a)
	.dwattr DW$59, DW_AT_begin_column(0x0c)
	.dwattr DW$59, DW_AT_frame_base[DW_OP_breg31 88]
	.dwattr DW$59, DW_AT_skeletal(0x01)
	.dwpsn	"vportdis.c",299,1

;******************************************************************************
;* FUNCTION NAME: __configEDMA                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Local Frame Size  : 0 Args + 56 Auto + 28 Save = 84 byte                 *
;******************************************************************************
__configEDMA:
;** --------------------------------------------------------------------------*
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$60, DW_AT_type(*DW$T$24)
	.dwattr DW$60, DW_AT_location[DW_OP_reg4]
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("params"), DW_AT_symbol_name("_params")
	.dwattr DW$61, DW_AT_type(*DW$T$131)
	.dwattr DW$61, DW_AT_location[DW_OP_reg20]
;** 300	-----------------------    chan = (struct $$fake2 *)chanp;
;** 310	-----------------------    if ( !((*chan).status&2u) ) goto g75;

           STW     .D2T1   A14,*SP--(88)     ; |299| 
||         MVKL    .S2     _fillValue,B5     ; |327| 
||         MVK     .S1     0x10,A6           ; |327| 

           STDW    .D2T1   A11:A10,*+SP(64)  ; |299| 
||         MV      .L1     A4,A10            ; |299| 
||         MVKH    .S2     _fillValue,B5     ; |327| 
||         MVK     .S1     35,A5             ; |312| 
||         ZERO    .D1     A4                ; |327| 

           LDW     .D1T1   *A10,A3           ; |310| 
||         MVKL    .S2     _CACHE_clean,B7   ; |327| 
||         STDW    .D2T2   B11:B10,*+SP(80)  ; |299| 
||         MVK     .S1     50,A7             ; |312| 
||         MV      .L2     B4,B10            ; |299| 

           MVKL    .S1     _DAT_open,A12     ; |328| 
||         MV      .L1X    B5,A11            ; |327| 
||         MV      .L2X    A10,B5
||         STDW    .D2T1   A13:A12,*+SP(72)  ; |299| 
||         MV      .S2     B5,B4             ; |327| 

           MVKH    .S1     _DAT_open,A12     ; |328| 
||         MVK     .S2     36,B6             ; |312| 
||         MV      .L2     B3,B11            ; |299| 

           MVK     .S1     36,A13            ; |330| 
||         MVK     .S2     34,B8             ; |312| 

           MVK     .S2     35,B16            ; |324| 
||         MVK     .S1     34,A8             ; |321| 

           AND     .L1     2,A3,A0           ; |310| 
||         MVK     .S2     32,B20            ; |318| 

   [!A0]   B       .S1     L47               ; |310| 
||         MVK     .S2     36,B17            ; |321| 
|| [ A0]   LDW     .D1T2   *+A10[A5],B31     ; |312| 

           MVKH    .S2     _CACHE_clean,B7   ; |327| 
|| [ A0]   LDW     .D2T2   *+B5[B6],B6       ; |312| 

   [ A0]   LDW     .D2T2   *+B5[B8],B9       ; |312| 
           NOP             3
           ; BRANCHCC OCCURS {L47}           ; |310| 
;** --------------------------------------------------------------------------*
;** 312	-----------------------    C$34 = (*chan).numLines;
;** 312	-----------------------    (*chan).bufSz = (int)((*chan).yPitch*C$34)+(int)((*chan).cPitch*C$34*2u);
;** 318	-----------------------    frm1.frame.iFrm.y1 = C$31 = (*params).buf_addr;
;** 321	-----------------------    C$33 = (*chan).yPitch;
;** 321	-----------------------    C$32 = (*chan).numLines;
;** 321	-----------------------    frm1.frame.iFrm.cb1 = C$32*C$33+(char *)C$31;
;** 324	-----------------------    frm1.frame.iFrm.cr1 = ((*chan).cPitch+C$33)*C$32+(char *)C$31;
;** 327	-----------------------    C$30 = &fillValue;
;** 327	-----------------------    CACHE_clean((enum $$fake4)0, C$30, 16u);
;** 328	-----------------------    success = DAT_open(0, 3, 0u);
;** 330	-----------------------    if ( !(*chan).numLines ) goto g5;
;** 327	-----------------------    K$35 = C$30;
;**  	-----------------------    K$47 = (const int *)K$35+8;
;** 330	-----------------------    j = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MV      .L1X    B16,A3
||         LDW     .D2T2   *+B5[B17],B5      ; |321| 
||         LDW     .D1T1   *+A10[A8],A31     ; |321| 
||         MPYLH   .M2     B6,B31,B16        ; |312| 

           MPYLH   .M2     B6,B9,B19         ; |312| 
||         LDW     .D1T1   *+A10[A3],A8      ; |324| 

           MPYLH   .M2     B9,B6,B18         ; |312| 
           MPYLH   .M2     B31,B6,B17        ; |312| 

           ADD     .L2     B19,B18,B18       ; |312| 
||         MPYU    .M2     B6,B31,B8         ; |312| 

           ADD     .L2     B16,B17,B6        ; |312| 
||         MPYU    .M2     B6,B9,B16         ; |312| 
||         SHL     .S2     B18,16,B9         ; |312| 
||         MPYLH   .M1X    B5,A31,A3         ; |321| 

           SHL     .S2     B6,16,B6          ; |312| 
||         MPYLH   .M2X    A31,B5,B30        ; |321| 
||         ADD     .L1     A31,A8,A8         ; |324| 
||         MPYU    .M1X    A31,B5,A5         ; |321| 

           ADD     .L2     B8,B6,B8          ; |312| 
||         ADD     .S2     B16,B9,B6         ; |312| 

           ADDAH   .D2     B6,B8,B6          ; |312| 
||         MPYLH   .M2X    A8,B5,B29         ; |324| 

           STW     .D1T2   B6,*+A10[A7]      ; |312| 
||         MPYLH   .M1X    B5,A8,A7          ; |324| 
||         MPYU    .M2X    B5,A8,B28         ; |324| 

           LDW     .D2T2   *+B10[B20],B6     ; |318| 
||         ADD     .L1X    B30,A3,A3         ; |321| 

           SHL     .S1     A3,16,A3          ; |321| 

           CALL    .S2     B7                ; |327| 
||         ADD     .L2X    A7,B29,B8         ; |324| 
||         ADD     .L1     A5,A3,A3          ; |321| 

           SHL     .S2     B8,16,B8          ; |324| 
           ADD     .L2     B28,B8,B8         ; |324| 

           ADD     .L2X    B6,A3,B5          ; |321| 
||         STW     .D2T2   B6,*+SP(36)       ; |318| 

           STW     .D2T2   B5,*+SP(40)       ; |321| 
||         ADD     .L2     B6,B8,B5          ; |324| 

           STW     .D2T2   B5,*+SP(44)       ; |324| 
||         ADDKPC  .S2     RL8,B3,0          ; |327| 

RL8:       ; CALL OCCURS {_CACHE_clean}      ; |327| 
;** --------------------------------------------------------------------------*
           CALL    .S2X    A12               ; |328| 
           ADDKPC  .S2     RL9,B3,1          ; |328| 
           ZERO    .L1     A6                ; |328| 
           MVK     .L2     0x3,B4            ; |328| 
           ZERO    .S1     A4                ; |328| 
RL9:       ; CALL OCCURS {_DAT_open}         ; |328| 
;** --------------------------------------------------------------------------*

           LDW     .D1T1   *+A10[A13],A0     ; |330| 
||         MVK     .S1     34,A3             ; |331| 
||         ADD     .L1     8,A11,A13

           NOP             2
           ZERO    .L1     A12               ; |330| 
           EXTU    .S1     A4,16,16,A14      ; |328| 

   [!A0]   BNOP    .S1     L22,4             ; |330| 
|| [ A0]   LDW     .D1T2   *+A10[A3],B4      ; |331| 

           MPYLH   .M1X    A12,B4,A3         ; |331| 
||         MPYLH   .M2X    B4,A12,B5         ; |331| 

           ; BRANCHCC OCCURS {L22}           ; |330| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L21:    
DW$L$__configEDMA$5$B:
	.dwpsn	"vportdis.c",330,0
;**	-----------------------g4:
;** 331	-----------------------    C$29 = (*chan).yPitch;
;** 331	-----------------------    DAT_fill(C$29*j+frm1.frame.iFrm.y1, (unsigned short)C$29, K$35);
;** 332	-----------------------    C$28 = (*chan).cPitch;
;** 332	-----------------------    DAT_fill(C$28*j+frm1.frame.iFrm.cb1, (unsigned short)C$28, K$47);
;** 333	-----------------------    C$27 = (*chan).cPitch;
;** 333	-----------------------    DAT_fill(C$27*j+frm1.frame.iFrm.cr1, (unsigned short)C$27, K$47);
;** 330	-----------------------    if ( (unsigned)(++j) < (*chan).numLines ) goto g4;
           LDW     .D2T1   *+SP(36),A4       ; |331| 
           MPYU    .M2X    A12,B4,B6         ; |331| 

           MVKL    .S1     _DAT_fill,A3      ; |331| 
||         ADD     .L2X    A3,B5,B5          ; |331| 

           SHL     .S2     B5,16,B5          ; |331| 
||         MVKH    .S1     _DAT_fill,A3      ; |331| 

           ADD     .L2     B6,B5,B5          ; |331| 
           CALL    .S2X    A3                ; |331| 
           EXTU    .S2     B4,16,16,B4       ; |331| 
           ADDKPC  .S2     RL10,B3,1         ; |331| 
           ADD     .L1X    A4,B5,A4          ; |331| 
           MV      .S1     A11,A6            ; |331| 
RL10:      ; CALL OCCURS {_DAT_fill}         ; |331| 
DW$L$__configEDMA$5$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$6$B:
           MVK     .S1     35,A3             ; |332| 
           LDW     .D1T2   *+A10[A3],B4      ; |332| 
           NOP             3
           MV      .S1     A13,A6            ; |332| 
           MPYLH   .M2X    A12,B4,B6         ; |332| 
           MPYLH   .M2X    B4,A12,B5         ; |332| 
           MPYU    .M1X    A12,B4,A3         ; |332| 

           MVKL    .S2     _DAT_fill,B6      ; |332| 
||         ADD     .L2     B6,B5,B5          ; |332| 

           SHL     .S2     B5,16,B7          ; |332| 
           MVKH    .S2     _DAT_fill,B6      ; |332| 

           CALL    .S2     B6                ; |332| 
||         LDW     .D2T2   *+SP(40),B5       ; |332| 

           ADD     .L1X    A3,B7,A3          ; |332| 
           EXTU    .S2     B4,16,16,B4       ; |332| 
           ADDKPC  .S2     RL11,B3,1         ; |332| 
           ADD     .L1X    B5,A3,A4          ; |332| 
RL11:      ; CALL OCCURS {_DAT_fill}         ; |332| 
           MVK     .S1     35,A3             ; |333| 
           LDW     .D1T1   *+A10[A3],A3      ; |333| 
           MVKL    .S2     _DAT_fill,B5      ; |333| 
           MVKH    .S2     _DAT_fill,B5      ; |333| 
           LDW     .D2T2   *+SP(44),B6       ; |333| 
           MV      .S1     A13,A6            ; |333| 
           MPYLH   .M1     A12,A3,A5         ; |333| 
           MPYLH   .M1     A3,A12,A4         ; |333| 
           CALL    .S2     B5                ; |333| 

           MPYU    .M1     A12,A3,A5         ; |333| 
||         ADD     .L1     A5,A4,A4          ; |333| 

           SHL     .S1     A4,16,A4          ; |333| 

           ADD     .L1     A5,A4,A3          ; |333| 
||         EXTU    .S1     A3,16,16,A4       ; |333| 

           ADDKPC  .S2     RL12,B3,0         ; |333| 

           ADD     .L1X    B6,A3,A4          ; |333| 
||         MV      .L2X    A4,B4             ; |333| 

RL12:      ; CALL OCCURS {_DAT_fill}         ; |333| 
DW$L$__configEDMA$6$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$7$B:

           MVK     .S1     36,A3             ; |330| 
||         ADD     .L1     1,A12,A12         ; |330| 

           LDW     .D1T1   *+A10[A3],A3      ; |330| 
           NOP             4

           MVK     .S1     34,A3             ; |331| 
||         CMPLTU  .L1     A12,A3,A0         ; |330| 

   [ A0]   BNOP    .S1     L21,4             ; |330| 
|| [ A0]   LDW     .D1T2   *+A10[A3],B4      ; |331| 

	.dwpsn	"vportdis.c",334,0

   [ A0]   MPYLH   .M2X    B4,A12,B5         ; |331| 
||         MPYLH   .M1X    A12,B4,A3         ; |331| 

           ; BRANCHCC OCCURS {L21}           ; |330| 
DW$L$__configEDMA$7$E:
;** --------------------------------------------------------------------------*
L22:    
;**	-----------------------g5:
;** 335	-----------------------    if ( !success ) goto g7;
           MV      .L1     A14,A0            ; |336| 

           MVKL    .S1     _DAT_close,A3     ; |336| 
|| [!A0]   LDW     .D2T2   *+B10(4),B4       ; |341| 
|| [!A0]   B       .S2     L23               ; |335| 

           MVKH    .S1     _DAT_close,A3     ; |336| 
           NOP             1
   [ A0]   CALL    .S2X    A3                ; |336| 
           NOP             1
   [!A0]   CMPEQ   .L2     B4,2,B0           ; |341| 
           ; BRANCHCC OCCURS {L23}           ; |335| 
;** --------------------------------------------------------------------------*
;** 336	-----------------------    DAT_close();
           ADDKPC  .S2     RL13,B3,2         ; |336| 
RL13:      ; CALL OCCURS {_DAT_close}        ; |336| 
           LDW     .D2T2   *+B10(4),B4       ; |341| 
           NOP             4
           CMPEQ   .L2     B4,2,B0           ; |341| 
;** --------------------------------------------------------------------------*
L23:    
;**	-----------------------g7:
;** 341	-----------------------    if ( (*params).fldOp == 2 ) goto g11;

           LDW     .D2T2   *+SP(44),B4       ; |344| 
||         ADDAW   .D1     A10,29,A3         ; |347| 
|| [ B0]   B       .S1     L25               ; |341| 

           LDW     .D2T2   *+SP(36),B6       ; |342| 
|| [!B0]   LDHU    .D1T1   *A3,A0            ; |347| 

           LDW     .D2T2   *+SP(40),B5       ; |343| 
           NOP             3
           ; BRANCHCC OCCURS {L25}           ; |341| 
;** --------------------------------------------------------------------------*
;** 347	-----------------------    if ( (*chan).mergeFlds ) goto g10;

   [ A0]   B       .S1     L24               ; |347| 
||         MVK     .S2     38,B4             ; |353| 
||         LDW     .D2T2   *+SP(36),B5       ; |353| 

           LDW     .D2T2   *+SP(44),B7       ; |355| 
||         MVK     .S1     34,A3             ; |348| 
||         MVK     .S2     35,B9             ; |354| 

           LDW     .D2T2   *+SP(40),B8       ; |354| 
|| [ A0]   LDW     .D1T1   *+A10[A3],A3      ; |348| 
|| [!A0]   MV      .L1X    B4,A3
||         MV      .L2X    A10,B4
||         MVK     .S1     34,A4             ; |353| 
||         MVK     .S2     35,B6             ; |349| 

   [!A0]   LDW     .D1T1   *+A10[A3],A3      ; |353| 
|| [!A0]   LDW     .D2T2   *+B4[B9],B4       ; |354| 
|| [ A0]   MV      .L2X    A10,B4

   [ A0]   LDW     .D2T2   *+B4[B6],B6       ; |349| 
   [!A0]   LDW     .D1T2   *+A10[A4],B6      ; |353| 
           ; BRANCHCC OCCURS {L24}           ; |347| 
;** --------------------------------------------------------------------------*
;** 353	-----------------------    C$26 = (*chan).numLinesFld1;
;** 353	-----------------------    frm1.frame.iFrm.y2 = (*chan).yPitch*C$26+frm1.frame.iFrm.y1;
;** 354	-----------------------    C$25 = (*chan).cPitch*C$26;
;** 354	-----------------------    frm1.frame.iFrm.cb2 = frm1.frame.iFrm.cb1+C$25;
;** 355	-----------------------    frm1.frame.iFrm.cr2 = frm1.frame.iFrm.cr1+C$25;
;** 355	-----------------------    goto g12;
           NOP             2

           MPYLH   .M1X    B4,A3,A4          ; |354| 
||         MPYLH   .M2X    A3,B4,B9          ; |354| 

           MPYU    .M1X    A3,B4,A31         ; |354| 
           MPYLH   .M2X    B6,A3,B16         ; |353| 

           ADD     .L1X    B9,A4,A4          ; |354| 
||         MPYLH   .M2X    A3,B6,B17         ; |353| 

           SHL     .S1     A4,16,A4          ; |354| 
||         MPYU    .M2X    A3,B6,B31         ; |353| 

           ADD     .L1     A31,A4,A3         ; |354| 
||         B       .S1     L26               ; |355| 
||         ADD     .L2     B17,B16,B30       ; |353| 

           ADD     .L1X    A3,B8,A4          ; |354| 
||         SHL     .S2     B30,16,B4         ; |353| 

           STW     .D2T1   A4,*+SP(52)       ; |354| 
||         ADD     .L2     B31,B4,B4         ; |353| 

           MVKL    .S2     _CACHE_flush,B5   ; |360| 
||         ADD     .L2     B5,B4,B4          ; |353| 

           MVKH    .S2     _CACHE_flush,B5   ; |360| 
||         ADD     .L2X    A3,B7,B4          ; |355| 
||         STW     .D2T2   B4,*+SP(48)       ; |353| 

           STW     .D2T2   B4,*+SP(56)       ; |355| 
           ; BRANCH OCCURS {L26}             ; |355| 
;** --------------------------------------------------------------------------*
L24:    
;**	-----------------------g10:
;** 348	-----------------------    frm1.frame.iFrm.y2 = frm1.frame.iFrm.y1+(*chan).yPitch;
;** 349	-----------------------    C$24 = (*chan).cPitch;
;** 349	-----------------------    frm1.frame.iFrm.cb2 = frm1.frame.iFrm.cb1+C$24;
;** 350	-----------------------    frm1.frame.iFrm.cr2 = frm1.frame.iFrm.cr1+C$24;
;** 351	-----------------------    goto g12;
           B       .S1     L27               ; |351| 

           ADD     .L2X    A3,B5,B4          ; |348| 
||         MVKL    .S2     _CACHE_flush,B5   ; |360| 

           STW     .D2T2   B4,*+SP(48)       ; |348| 
||         MVKH    .S2     _CACHE_flush,B5   ; |360| 

           ADD     .L2     B6,B8,B31         ; |349| 
||         ADD     .D2     B6,B7,B4          ; |350| 
||         CALL    .S2     B5                ; |360| 

           STW     .D2T2   B31,*+SP(52)      ; |349| 
           STW     .D2T2   B4,*+SP(56)       ; |350| 
           ; BRANCH OCCURS {L27}             ; |351| 
;** --------------------------------------------------------------------------*
L25:    
;**	-----------------------g11:
;** 342	-----------------------    frm1.frame.iFrm.y2 = frm1.frame.iFrm.y1;
;** 343	-----------------------    frm1.frame.iFrm.cb2 = frm1.frame.iFrm.cb1;
;** 344	-----------------------    frm1.frame.iFrm.cr2 = frm1.frame.iFrm.cr1;
           STW     .D2T2   B4,*+SP(56)       ; |344| 

           STW     .D2T2   B5,*+SP(52)       ; |343| 
||         MVKL    .S2     _CACHE_flush,B5   ; |360| 

           MVKH    .S2     _CACHE_flush,B5   ; |360| 
||         STW     .D2T2   B6,*+SP(48)       ; |342| 

;** --------------------------------------------------------------------------*
L26:    
           CALL    .S2     B5                ; |360| 
           NOP             2
;** --------------------------------------------------------------------------*
L27:    
;**	-----------------------g12:
;** 360	-----------------------    CACHE_flush((enum $$fake4)1, NULL, 0u);
;** 362	-----------------------    ((*chan).mode&2) ? (edmaChans = 1) : (edmaChans = 3);
;** 363	-----------------------    l$5 = edmaChans;
;**  	-----------------------    K$92 = 83886082;
;**  	-----------------------    K$109 = 983040;
;**  	-----------------------    K$115 = 24576;
;**  	-----------------------    U$140 = (unsigned *)chan+28;
;**  	-----------------------    K$149 = 0xffff8000u;
;**  	-----------------------    Q$2 = &frm1+8;
;**  	-----------------------    Q$1 = &frm1+20;
;**  	-----------------------    U$167 = (unsigned *)chan+56;
;**  	-----------------------    K$178 = 0x10000000u;
;**  	-----------------------    K$184 = 0xfffffffeu;
;** 367	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 3, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ZERO    .L2     B4                ; |360| 
           ADDKPC  .S2     RL14,B3,0         ; |360| 

           ZERO    .L1     A6                ; |360| 
||         MVK     .S1     0x1,A4            ; |360| 

RL14:      ; CALL OCCURS {_CACHE_flush}      ; |360| 
;** --------------------------------------------------------------------------*
           MVK     .S1     44,A4             ; |362| 
           LDW     .D1T1   *+A10[A4],A4      ; |362| 
           MVK     .S1     0xffff8000,A19
           ADDAW   .D2     SP,9,B5
           MVK     .S1     0x6000,A18

           ZERO    .L1     A16
||         ADDAD   .D1     A10,7,A3
||         ADDAD   .D2     SP,6,B4
||         MVK     .L2     0x1,B0            ; |362| 
||         MVKL    .S2     0x5000002,B18

           AND     .L1     2,A4,A0           ; |362| 
||         MV      .S1X    B5,A7             ; Define a twin register
||         MVKH    .S2     0x5000002,B18
||         ADD     .D1     A10,28,A17
||         MVK     .L2     0xfffffffe,B7
||         ZERO    .D2     B20

	.dwpsn	"vportdis.c",367,0

           ZERO    .L1     A0                ; |367| 
|| [!A0]   MVK     .L2     0x3,B0            ; |362| 
||         MV      .D1X    B4,A9             ; Register A/B partition copy
||         MV      .D2X    A3,B8             ; Define a twin register
||         MVKH    .S2     0xf0000,B20
||         MVKH    .S1     0x10000000,A16

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L28:    
DW$L$__configEDMA$18$B:
;**	-----------------------g13:
;** 368	-----------------------    v$1 = (*params).edmaPri;
;** 368	-----------------------    optFld1 = (int)((unsigned)v$1<<29)|K$92;
;**  	-----------------------    if ( i ) goto g15;
;** 386	-----------------------    S$3 = *((int (*)[3])chan+104);
;**  	-----------------------    goto g16;
;**	-----------------------g15:
;** 386	-----------------------    S$3 = 0u;
;**	-----------------------g16:
;**  	-----------------------    i ? (S$4 = 0u) : (S$4 = *((int (*)[3])chan+104)>>4);
;**  	-----------------------    U$105 = C$23 = (unsigned)v$1<<29;
;** 386	-----------------------    optFld2a = (int)C$23|(int)(S$3<<16)&K$109|(int)(S$4<<13)&K$115|K$92;
;**  	-----------------------    if ( i ) goto g18;
;** 405	-----------------------    S$1 = *((int (*)[3])chan+108);
;**  	-----------------------    goto g19;
;**	-----------------------g18:
;** 405	-----------------------    S$1 = 0u;
;**	-----------------------g19:
;**  	-----------------------    i ? (S$2 = 0u) : (S$2 = *((int (*)[3])chan+108)>>4);
;**  	-----------------------    optFld2b = (int)(S$1<<16)&K$109|(int)(S$2<<13)&K$115|U$105|K$92;
;**  	-----------------------    i ? (thrld = (int)(*chan).cThrld) : (thrld = (int)(*chan).yThrld);
;**  	-----------------------    CSU$cfgEdma$dst = *U$140;
;** 386	-----------------------    K$89 = 0x20000000u;
;** 427	-----------------------    if ( (*chan).mergeFlds ) goto g29;

   [!A0]   LDW     .D1T1   *+A10(108),A6
||         MVK     .S2     34,B4             ; |368| 
|| [ A0]   ZERO    .L1     A4                ; |405| 
|| [ A0]   ZERO    .S1     A5                ; |386| 
||         ZERO    .L2     B9                ; |386| 

           ADDAW   .D1     A10,29,A8         ; |427| 
||         LDW     .D2T2   *+B10[B4],B5      ; |368| 
|| [ A0]   ZERO    .L1     A6
|| [ A0]   ZERO    .S1     A3
||         MVKH    .S2     0x20000000,B9     ; |386| 

   [!A0]   LDW     .D1T1   *+A10(104),A5     ; |386| 
   [!A0]   LDW     .D1T1   *+A10(104),A3
           LDHU    .D1T1   *A8,A1            ; |427| 

   [!A0]   LDW     .D1T1   *+A10(108),A4     ; |405| 
|| [!A0]   SHR     .S1     A6,4,A6

           SHL     .S1     A6,13,A6
           SHL     .S2     B5,29,B4

           SHL     .S1     A5,16,A5          ; |386| 
||         SHL     .S2     B5,29,B5          ; |368| 

   [!A0]   SHR     .S1     A3,4,A3

           SHL     .S2X    A4,16,B6
||         SHL     .S1     A3,13,A5          ; |386| 
||         AND     .L1X    B20,A5,A4         ; |386| 
||         AND     .D1     A18,A6,A3

   [ A1]   B       .S1     L34               ; |427| 
||         AND     .L2     B20,B6,B16
||         AND     .L1     A18,A5,A31        ; |386| 
||         LDW     .D1T1   *A17,A6

           OR      .L2X    A3,B16,B16
|| [!A0]   MVK     .S1     42,A3

   [ A0]   MVK     .S1     43,A3
|| [!A0]   LDW     .D1T1   *+A10[A3],A3
||         OR      .L2X    A4,B4,B6          ; |386| 
||         OR      .S2     B4,B16,B4

   [ A0]   LDW     .D1T1   *+A10[A3],A3
|| [!A1]   MVK     .S1     40,A4             ; |473| 
||         OR      .L2X    A31,B6,B6         ; |386| 
||         OR      .S2     B18,B4,B17
||         OR      .D2     B18,B5,B4         ; |368| 

   [!A1]   LDW     .D1T1   *+A10[A4],A5      ; |473| 
||         OR      .L2     B18,B6,B19        ; |386| 
|| [ A1]   MVK     .S1     41,A4             ; |437| 

   [!A1]   LDW     .D1T1   *+A17(16),A4      ; |480| 
           ; BRANCHCC OCCURS {L34}           ; |427| 
DW$L$__configEDMA$18$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$19$B:
;** 472	-----------------------    CSU$cfgEdma$opt = optFld2a;
;** 473	-----------------------    CSU$cfgEdma$cnt = (((*chan).numEvents<<15)+K$149|_extu((unsigned)(thrld*2), 16u, 17u))*2u;
;** 474	-----------------------    CSU$cfgEdma$idx = (unsigned)thrld<<19;
;** 477	-----------------------    CSU$cfgEdma$src = Q$2[i];
;** 479	-----------------------    CSU$cfgEdma$rld = (unsigned short)U$167[2];
;** 480	-----------------------    hEdma = U$140[4];
;** 742	-----------------------    if ( (hEdma == K$89)|(hEdma == K$178) ) goto g22;  // [13]
           NOP             1
           LDHU    .D2T2   *+B8(8),B22       ; |479| 

           SHL     .S2X    A3,19,B16         ; |474| 
||         EXTU    .S1     A3,17,17,A8       ; |473| 

           SHL     .S1     A5,15,A5          ; |473| 

           ADD     .S1     A19,A5,A5         ; |473| 
||         CMPEQ   .L2X    A4,B9,B4          ; |742| 
||         CMPEQ   .L1     A4,A16,A31        ; |742| 

           LDW     .D1T1   *+A7[A0],A5       ; |477| 
||         OR      .L1     A8,A5,A3          ; |473| 

           ADD     .L1     A3,A3,A3          ; |473| 
||         OR      .L2X    A31,B4,B1         ; |742| 

   [ B1]   BNOP    .S1     L29,5             ; |742| 
           ; BRANCHCC OCCURS {L29}           ; |742| 
DW$L$__configEDMA$19$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$20$B:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$17 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$17;  // [2]
;** 756	-----------------------    C$22 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [13]
;** 756	-----------------------    *(volatile unsigned *)C$22 = 0u;  // [13]
;** 757	-----------------------    *((volatile unsigned *)C$22+4) = CSU$cfgEdma$src;  // [13]
;** 758	-----------------------    *((volatile unsigned *)C$22+8) = CSU$cfgEdma$cnt;  // [13]
;** 759	-----------------------    *((volatile unsigned *)C$22+12) = CSU$cfgEdma$dst;  // [13]
;** 760	-----------------------    *((volatile unsigned *)C$22+16) = CSU$cfgEdma$idx;  // [13]
;** 761	-----------------------    *((volatile unsigned *)C$22+20) = CSU$cfgEdma$rld;  // [13]
;** 762	-----------------------    *(volatile unsigned *)C$22 = optFld2a;  // [13]
;** 360	-----------------------    a$18 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$18;  // [3]
;**  	-----------------------    goto g23;
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B5           ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B7,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           EXTU    .S1     A4,16,16,A8       ; |756| 
||         ZERO    .L1     A4                ; |756| 
||         ZERO    .D1     A31               ; |756| 

           MVKH    .S1     0x1a00000,A4      ; |756| 
           ADD     .L1     A4,A8,A4          ; |756| 
           STW     .D1T1   A31,*A4           ; |756| 
           STW     .D1T1   A5,*+A4(4)        ; |757| 
           STW     .D1T1   A3,*+A4(8)        ; |758| 
           STW     .D1T1   A6,*+A4(12)       ; |759| 
           STW     .D1T2   B16,*+A4(16)      ; |760| 
           STW     .D1T2   B22,*+A4(20)      ; |761| 

           STW     .D1T2   B19,*A4           ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B5,B5           ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L30,4
||         LDW     .D2T2   *B8,B4            ; |484| 

           CMPEQ   .L2     B4,B9,B5          ; |742| 
||         CMPEQ   .L1X    B4,A16,A4         ; |742| 

           ; BRANCH OCCURS {L30} 
DW$L$__configEDMA$20$E:
;** --------------------------------------------------------------------------*
L29:    
DW$L$__configEDMA$21$B:
;**	-----------------------g22:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$19 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$19;  // [2]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [14]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [14]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [14]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [14]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [14]
;** 360	-----------------------    a$20 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$20;  // [3]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B5           ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B7,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S2     0x2000004,B21     ; |830| 
||         MVKL    .S1     0x2000010,A8      ; |833| 

           MVKH    .S2     0x2000004,B21     ; |830| 
||         MVKH    .S1     0x2000010,A8      ; |833| 

           MVKL    .S2     0x2000008,B6      ; |831| 
||         STW     .D2T1   A5,*B21           ; |830| 
||         MVKL    .S1     0x2000020,A4      ; |834| 

           MVKH    .S2     0x2000008,B6      ; |831| 
||         MVKH    .S1     0x2000020,A4      ; |834| 

           MVKL    .S2     0x200000c,B4      ; |832| 
||         STW     .D2T1   A3,*B6            ; |831| 

           MVKH    .S2     0x200000c,B4      ; |832| 

           STW     .D2T1   A6,*B4            ; |832| 
||         STW     .D1T2   B16,*A8           ; |833| 

           STW     .D1T2   B19,*A4           ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B5,B5           ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *B8,B4            ; |484| 
           NOP             4

           CMPEQ   .L2     B4,B9,B5          ; |742| 
||         CMPEQ   .L1X    B4,A16,A4         ; |742| 

DW$L$__configEDMA$21$E:
;** --------------------------------------------------------------------------*
L30:    
DW$L$__configEDMA$22$B:
;**	-----------------------g23:
;** 482	-----------------------    CSU$cfgEdma$src = Q$2[i];
;** 484	-----------------------    hEdma = *U$167;
;** 742	-----------------------    if ( (hEdma == K$89)|(hEdma == K$178) ) goto g25;  // [13]
           NOP             1

           LDW     .D1T1   *+A7[A0],A4       ; |482| 
||         OR      .L1X    A4,B5,A1          ; |742| 

   [ A1]   BNOP    .S1     L31,5             ; |742| 
           ; BRANCHCC OCCURS {L31}           ; |742| 
DW$L$__configEDMA$22$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$23$B:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$21 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$21;  // [2]
;** 756	-----------------------    C$21 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [13]
;** 756	-----------------------    *(volatile unsigned *)C$21 = 0u;  // [13]
;** 757	-----------------------    *((volatile unsigned *)C$21+4) = CSU$cfgEdma$src;  // [13]
;** 758	-----------------------    *((volatile unsigned *)C$21+8) = CSU$cfgEdma$cnt;  // [13]
;** 759	-----------------------    *((volatile unsigned *)C$21+12) = CSU$cfgEdma$dst;  // [13]
;** 760	-----------------------    *((volatile unsigned *)C$21+16) = CSU$cfgEdma$idx;  // [13]
;** 761	-----------------------    *((volatile unsigned *)C$21+20) = CSU$cfgEdma$rld;  // [13]
;** 762	-----------------------    *(volatile unsigned *)C$21 = CSU$cfgEdma$opt;  // [13]
;** 360	-----------------------    a$22 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$22;  // [3]
;**  	-----------------------    goto g26;
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B6           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B7,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           ZERO    .L1     A5                ; |756| 
||         EXTU    .S2     B4,16,16,B4       ; |756| 
||         ZERO    .L2     B5                ; |756| 

           MVKH    .S1     0x1a00000,A5      ; |756| 
           NOP             1
           ADD     .L2X    A5,B4,B4          ; |756| 
           STW     .D2T2   B5,*B4            ; |756| 
           STW     .D2T1   A4,*+B4(4)        ; |757| 
           STW     .D2T1   A3,*+B4(8)        ; |758| 
           STW     .D2T1   A6,*+B4(12)       ; |759| 
           STW     .D2T2   B16,*+B4(16)      ; |760| 
           STW     .D2T2   B22,*+B4(20)      ; |761| 

           STW     .D2T2   B19,*B4           ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B6,B5           ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L32,4
||         LDW     .D2T2   *+B8(8),B4        ; |488| 

           CMPEQ   .L2     B4,B9,B5          ; |742| 
||         CMPEQ   .L1X    B4,A16,A5         ; |742| 

           ; BRANCH OCCURS {L32} 
DW$L$__configEDMA$23$E:
;** --------------------------------------------------------------------------*
L31:    
DW$L$__configEDMA$24$B:
;**	-----------------------g25:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$23 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$23;  // [2]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [14]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [14]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [14]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [14]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [14]
;** 360	-----------------------    a$24 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$24;  // [3]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B5           ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B7,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S2     0x2000004,B21     ; |830| 
||         MVKL    .S1     0x2000010,A8      ; |833| 

           MVKH    .S2     0x2000004,B21     ; |830| 
||         MVKH    .S1     0x2000010,A8      ; |833| 

           MVKL    .S2     0x2000008,B6      ; |831| 
||         STW     .D2T1   A4,*B21           ; |830| 
||         MVKL    .S1     0x2000020,A5      ; |834| 

           MVKH    .S2     0x2000008,B6      ; |831| 
||         MVKH    .S1     0x2000020,A5      ; |834| 

           MVKL    .S2     0x200000c,B4      ; |832| 
||         STW     .D2T1   A3,*B6            ; |831| 

           MVKH    .S2     0x200000c,B4      ; |832| 

           STW     .D2T1   A6,*B4            ; |832| 
||         STW     .D1T2   B16,*A8           ; |833| 

           STW     .D1T2   B19,*A5           ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B5,B5           ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *+B8(8),B4        ; |488| 
           NOP             4

           CMPEQ   .L2     B4,B9,B5          ; |742| 
||         CMPEQ   .L1X    B4,A16,A5         ; |742| 

DW$L$__configEDMA$24$E:
;** --------------------------------------------------------------------------*
L32:    
DW$L$__configEDMA$25$B:
;**	-----------------------g26:
;** 486	-----------------------    CSU$cfgEdma$opt = optFld2b;
;** 487	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$167;
;** 488	-----------------------    hEdma = U$167[2];
;** 742	-----------------------    if ( (hEdma == K$89)|(hEdma == K$178) ) goto g28;  // [13]
           MV      .L2     B17,B6            ; |486| 

           OR      .L1X    A5,B5,A1          ; |742| 
||         LDHU    .D2T2   *B8,B5            ; |487| 

   [ A1]   BNOP    .S1     L33,5             ; |742| 
           ; BRANCHCC OCCURS {L33}           ; |742| 
DW$L$__configEDMA$25$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$26$B:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$25 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$25;  // [2]
;** 756	-----------------------    C$20 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [13]
;** 756	-----------------------    *(volatile unsigned *)C$20 = 0u;  // [13]
;** 757	-----------------------    *((volatile unsigned *)C$20+4) = CSU$cfgEdma$src;  // [13]
;** 758	-----------------------    *((volatile unsigned *)C$20+8) = CSU$cfgEdma$cnt;  // [13]
;** 759	-----------------------    *((volatile unsigned *)C$20+12) = CSU$cfgEdma$dst;  // [13]
;** 760	-----------------------    *((volatile unsigned *)C$20+16) = CSU$cfgEdma$idx;  // [13]
;** 761	-----------------------    *((volatile unsigned *)C$20+20) = CSU$cfgEdma$rld;  // [13]
;** 762	-----------------------    *(volatile unsigned *)C$20 = optFld2b;  // [13]
;** 360	-----------------------    a$26 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$26;  // [3]
;**  	-----------------------    goto g44;
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B9           ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           AND     .L2     B7,B6,B6          ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           ZERO    .L1     A5                ; |756| 
||         EXTU    .S2     B4,16,16,B4       ; |756| 
||         ZERO    .L2     B6                ; |756| 

           MVKH    .S1     0x1a00000,A5      ; |756| 
           NOP             1
           ADD     .L2X    A5,B4,B4          ; |756| 
           STW     .D2T2   B6,*B4            ; |756| 
           STW     .D2T1   A4,*+B4(4)        ; |757| 
           STW     .D2T1   A3,*+B4(8)        ; |758| 
           STW     .D2T1   A6,*+B4(12)       ; |759| 
           STW     .D2T2   B16,*+B4(16)      ; |760| 
           STW     .D2T2   B5,*+B4(20)       ; |761| 

           STW     .D2T2   B17,*B4           ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B9,B5           ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L44,5
||         SUB     .L2     B0,1,B0           ; |367| 

           ; BRANCH OCCURS {L44} 
DW$L$__configEDMA$26$E:
;** --------------------------------------------------------------------------*
L33:    
DW$L$__configEDMA$27$B:
;**	-----------------------g28:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$27 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$27;  // [2]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [14]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [14]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [14]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [14]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [14]
;** 360	-----------------------    a$28 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$28;  // [3]
;**  	-----------------------    goto g44;
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B17          ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B7,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S2     0x2000004,B9      ; |830| 
||         MVKL    .S1     0x2000010,A5      ; |833| 

           MVKH    .S2     0x2000004,B9      ; |830| 
||         MVKH    .S1     0x2000010,A5      ; |833| 

           MVKL    .S2     0x2000008,B5      ; |831| 
||         STW     .D2T1   A4,*B9            ; |830| 
||         MVKL    .S1     0x2000020,A31     ; |834| 

           MVKH    .S2     0x2000008,B5      ; |831| 
||         MVKH    .S1     0x2000020,A31     ; |834| 

           MVKL    .S2     0x200000c,B4      ; |832| 
||         STW     .D2T1   A3,*B5            ; |831| 

           MVKH    .S2     0x200000c,B4      ; |832| 

           STW     .D2T1   A6,*B4            ; |832| 
||         STW     .D1T2   B16,*A5           ; |833| 

           STW     .D1T2   B6,*A31           ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B17,B5          ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L44,5
||         SUB     .L2     B0,1,B0           ; |367| 

           ; BRANCH OCCURS {L44} 
DW$L$__configEDMA$27$E:
;** --------------------------------------------------------------------------*
L34:    
DW$L$__configEDMA$28$B:
;**	-----------------------g29:
;** 436	-----------------------    CSU$cfgEdma$opt = optFld1;
;** 437	-----------------------    U$154 = _extu((unsigned)(thrld*2), 16u, 17u);
;** 437	-----------------------    CSU$cfgEdma$cnt = (((*chan).numEventsFld1<<15)+K$149|U$154)*2u;
;** 438	-----------------------    CSU$cfgEdma$idx = (unsigned)thrld<<20;
;** 441	-----------------------    CSU$cfgEdma$src = Q$2[i];
;** 443	-----------------------    CSU$cfgEdma$rld = (unsigned short)U$167[1];
;** 444	-----------------------    hEdma = U$140[4];
;** 742	-----------------------    if ( (hEdma == K$89)|(hEdma == K$178) ) goto g31;  // [13]

           LDW     .D1T1   *+A10[A4],A5      ; |437| 
||         LDHU    .D2T2   *+B8(4),B22       ; |443| 

           LDW     .D1T1   *+A17(16),A4      ; |444| 
           NOP             1
           EXTU    .S1     A3,17,17,A20      ; |437| 
           SHL     .S2X    A3,20,B16         ; |438| 
           SHL     .S1     A5,15,A5          ; |437| 

           ADD     .S1     A19,A5,A5         ; |437| 
||         CMPEQ   .L2X    A4,B9,B5          ; |742| 
||         CMPEQ   .L1     A4,A16,A31        ; |742| 

           LDW     .D1T1   *+A7[A0],A5       ; |441| 
||         OR      .L1     A20,A5,A3         ; |437| 

           ADD     .L1     A3,A3,A3          ; |437| 
||         OR      .L2X    A31,B5,B1         ; |742| 

   [ B1]   BNOP    .S1     L35,5             ; |742| 
           ; BRANCHCC OCCURS {L35}           ; |742| 
DW$L$__configEDMA$28$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$29$B:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$1 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$1;  // [2]
;** 756	-----------------------    C$19 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [13]
;** 756	-----------------------    *(volatile unsigned *)C$19 = 0u;  // [13]
;** 757	-----------------------    *((volatile unsigned *)C$19+4) = CSU$cfgEdma$src;  // [13]
;** 758	-----------------------    *((volatile unsigned *)C$19+8) = CSU$cfgEdma$cnt;  // [13]
;** 759	-----------------------    *((volatile unsigned *)C$19+12) = CSU$cfgEdma$dst;  // [13]
;** 760	-----------------------    *((volatile unsigned *)C$19+16) = CSU$cfgEdma$idx;  // [13]
;** 761	-----------------------    *((volatile unsigned *)C$19+20) = CSU$cfgEdma$rld;  // [13]
;** 762	-----------------------    *(volatile unsigned *)C$19 = optFld1;  // [13]
;** 360	-----------------------    a$2 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$2;  // [3]
;**  	-----------------------    goto g32;
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B6           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B7,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           EXTU    .S1     A4,16,16,A8       ; |756| 
||         ZERO    .L1     A4                ; |756| 
||         ZERO    .D1     A31               ; |756| 

           MVKH    .S1     0x1a00000,A4      ; |756| 
           ADD     .L1     A4,A8,A4          ; |756| 
           STW     .D1T1   A31,*A4           ; |756| 
           STW     .D1T1   A5,*+A4(4)        ; |757| 
           STW     .D1T1   A3,*+A4(8)        ; |758| 
           STW     .D1T1   A6,*+A4(12)       ; |759| 
           STW     .D1T2   B16,*+A4(16)      ; |760| 
           STW     .D1T2   B22,*+A4(20)      ; |761| 

           STW     .D1T2   B4,*A4            ; |762| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B6,B6           ; |360| 
||         AND     .S2     B7,B5,B5          ; |360| 

           OR      .L2     B6,B5,B5          ; |360| 
           MVC     .S2     B5,CSR            ; |360| 

           BNOP    .S1     L36,4
||         LDW     .D2T2   *B8,B5            ; |447| 

           CMPEQ   .L2     B5,B9,B6          ; |742| 
||         CMPEQ   .L1X    B5,A16,A4         ; |742| 

           ; BRANCH OCCURS {L36} 
DW$L$__configEDMA$29$E:
;** --------------------------------------------------------------------------*
L35:    
DW$L$__configEDMA$30$B:
;**	-----------------------g31:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$3 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$3;  // [2]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [14]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [14]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [14]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [14]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [14]
;** 360	-----------------------    a$4 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$4;  // [3]
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B23          ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B7,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x2000004,B21     ; |830| 
||         MVKL    .S1     0x2000010,A8      ; |833| 

           MVKH    .S2     0x2000004,B21     ; |830| 
||         MVKH    .S1     0x2000010,A8      ; |833| 

           MVKL    .S2     0x2000008,B6      ; |831| 
||         STW     .D2T1   A5,*B21           ; |830| 
||         MVKL    .S1     0x2000020,A4      ; |834| 

           MVKH    .S2     0x2000008,B6      ; |831| 
||         MVKH    .S1     0x2000020,A4      ; |834| 

           MVKL    .S2     0x200000c,B5      ; |832| 
||         STW     .D2T1   A3,*B6            ; |831| 

           MVKH    .S2     0x200000c,B5      ; |832| 

           STW     .D2T1   A6,*B5            ; |832| 
||         STW     .D1T2   B16,*A8           ; |833| 

           STW     .D1T2   B4,*A4            ; |834| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B23,B6          ; |360| 
||         AND     .S2     B7,B5,B5          ; |360| 

           OR      .L2     B6,B5,B5          ; |360| 
           MVC     .S2     B5,CSR            ; |360| 
           LDW     .D2T2   *B8,B5            ; |447| 
           NOP             4

           CMPEQ   .L2     B5,B9,B6          ; |742| 
||         CMPEQ   .L1X    B5,A16,A4         ; |742| 

DW$L$__configEDMA$30$E:
;** --------------------------------------------------------------------------*
L36:    
DW$L$__configEDMA$31$B:
;**	-----------------------g32:
;** 447	-----------------------    hEdma = *U$167;
;** 742	-----------------------    if ( (hEdma == K$89)|(hEdma == K$178) ) goto g34;  // [13]
           NOP             1
           OR      .L1X    A4,B6,A1          ; |742| 
   [ A1]   BNOP    .S1     L37,5             ; |742| 
           ; BRANCHCC OCCURS {L37}           ; |742| 
DW$L$__configEDMA$31$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$32$B:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$5 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$5;  // [2]
;** 756	-----------------------    C$18 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [13]
;** 756	-----------------------    *(volatile unsigned *)C$18 = 0u;  // [13]
;** 757	-----------------------    *((volatile unsigned *)C$18+4) = CSU$cfgEdma$src;  // [13]
;** 758	-----------------------    *((volatile unsigned *)C$18+8) = CSU$cfgEdma$cnt;  // [13]
;** 759	-----------------------    *((volatile unsigned *)C$18+12) = CSU$cfgEdma$dst;  // [13]
;** 760	-----------------------    *((volatile unsigned *)C$18+16) = CSU$cfgEdma$idx;  // [13]
;** 761	-----------------------    *((volatile unsigned *)C$18+20) = CSU$cfgEdma$rld;  // [13]
;** 762	-----------------------    *(volatile unsigned *)C$18 = CSU$cfgEdma$opt;  // [13]
;** 360	-----------------------    a$6 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$6;  // [3]
;**  	-----------------------    goto g35;
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B6           ; |354| 
||         MVC     .S2     CSR,B21           ; |355| 

           AND     .L2     B7,B21,B21        ; |355| 
           MVC     .S2     B21,CSR           ; |355| 

           ZERO    .L1     A4                ; |756| 
||         EXTU    .S2     B5,16,16,B5       ; |756| 
||         ZERO    .L2     B21               ; |756| 

           MVKH    .S1     0x1a00000,A4      ; |756| 
           NOP             1
           ADD     .L2X    A4,B5,B5          ; |756| 
           STW     .D2T2   B21,*B5           ; |756| 
           STW     .D2T1   A5,*+B5(4)        ; |757| 
           STW     .D2T1   A3,*+B5(8)        ; |758| 
           STW     .D2T1   A6,*+B5(12)       ; |759| 
           STW     .D2T2   B16,*+B5(16)      ; |760| 
           STW     .D2T2   B22,*+B5(20)      ; |761| 

           STW     .D2T2   B4,*B5            ; |762| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B6,B6           ; |360| 
||         AND     .S2     B7,B5,B5          ; |360| 

           OR      .L2     B6,B5,B5          ; |360| 
           MVC     .S2     B5,CSR            ; |360| 

           BNOP    .S1     L38,4
||         LDW     .D2T2   *+B8(8),B5        ; |451| 

           CMPEQ   .L2     B5,B9,B6          ; |742| 
||         CMPEQ   .L1X    B5,A16,A4         ; |742| 

           ; BRANCH OCCURS {L38} 
DW$L$__configEDMA$32$E:
;** --------------------------------------------------------------------------*
L37:    
DW$L$__configEDMA$33$B:
;**	-----------------------g34:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$7 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$7;  // [2]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [14]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [14]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [14]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [14]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [14]
;** 360	-----------------------    a$8 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$8;  // [3]
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B21          ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B7,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x2000004,B6      ; |830| 
||         MVKL    .S1     0x2000010,A8      ; |833| 

           MVKH    .S2     0x2000004,B6      ; |830| 
||         MVKH    .S1     0x2000010,A8      ; |833| 

           MVKL    .S2     0x2000008,B5      ; |831| 
||         STW     .D2T1   A5,*B6            ; |830| 
||         MVKL    .S1     0x2000020,A4      ; |834| 

           MVKH    .S2     0x2000008,B5      ; |831| 
||         MVKH    .S1     0x2000020,A4      ; |834| 

           MVKL    .S2     0x200000c,B22     ; |832| 
||         STW     .D2T1   A3,*B5            ; |831| 

           MVKH    .S2     0x200000c,B22     ; |832| 

           STW     .D2T1   A6,*B22           ; |832| 
||         STW     .D1T2   B16,*A8           ; |833| 

           STW     .D1T2   B4,*A4            ; |834| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B21,B6          ; |360| 
||         AND     .S2     B7,B5,B5          ; |360| 

           OR      .L2     B6,B5,B5          ; |360| 
           MVC     .S2     B5,CSR            ; |360| 
           LDW     .D2T2   *+B8(8),B5        ; |451| 
           NOP             4

           CMPEQ   .L2     B5,B9,B6          ; |742| 
||         CMPEQ   .L1X    B5,A16,A4         ; |742| 

DW$L$__configEDMA$33$E:
;** --------------------------------------------------------------------------*
L38:    
DW$L$__configEDMA$34$B:
;**	-----------------------g35:
;** 450	-----------------------    CSU$cfgEdma$rld = (unsigned short)U$167[3];
;** 451	-----------------------    hEdma = U$167[2];
;** 742	-----------------------    if ( (hEdma == K$89)|(hEdma == K$178) ) goto g37;  // [13]
           NOP             1

           LDHU    .D2T2   *+B8(12),B6       ; |450| 
||         OR      .L1X    A4,B6,A1          ; |742| 

   [ A1]   BNOP    .S1     L39,5             ; |742| 
           ; BRANCHCC OCCURS {L39}           ; |742| 
DW$L$__configEDMA$34$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$35$B:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$9 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$9;  // [2]
;** 756	-----------------------    C$17 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [13]
;** 756	-----------------------    *(volatile unsigned *)C$17 = 0u;  // [13]
;** 757	-----------------------    *((volatile unsigned *)C$17+4) = CSU$cfgEdma$src;  // [13]
;** 758	-----------------------    *((volatile unsigned *)C$17+8) = CSU$cfgEdma$cnt;  // [13]
;** 759	-----------------------    *((volatile unsigned *)C$17+12) = CSU$cfgEdma$dst;  // [13]
;** 760	-----------------------    *((volatile unsigned *)C$17+16) = CSU$cfgEdma$idx;  // [13]
;** 761	-----------------------    *((volatile unsigned *)C$17+20) = CSU$cfgEdma$rld;  // [13]
;** 762	-----------------------    *(volatile unsigned *)C$17 = CSU$cfgEdma$opt;  // [13]
;** 360	-----------------------    a$10 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$10;  // [3]
;**  	-----------------------    goto g38;
           MVC     .S2     CSR,B21           ; |354| 

           AND     .L2     1,B21,B22         ; |354| 
||         MVC     .S2     CSR,B21           ; |355| 

           AND     .L2     B7,B21,B21        ; |355| 
           MVC     .S2     B21,CSR           ; |355| 

           ZERO    .L1     A4                ; |756| 
||         EXTU    .S2     B5,16,16,B5       ; |756| 
||         ZERO    .L2     B21               ; |756| 

           MVKH    .S1     0x1a00000,A4      ; |756| 
           NOP             1
           ADD     .L2X    A4,B5,B5          ; |756| 
           STW     .D2T2   B21,*B5           ; |756| 
           STW     .D2T1   A5,*+B5(4)        ; |757| 
           STW     .D2T1   A3,*+B5(8)        ; |758| 
           STW     .D2T1   A6,*+B5(12)       ; |759| 
           STW     .D2T2   B16,*+B5(16)      ; |760| 
           STW     .D2T2   B6,*+B5(20)       ; |761| 

           STW     .D2T2   B4,*B5            ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B22,B5          ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D2T2   *+B8(4),B4        ; |461| 
||         MVK     .S1     40,A4             ; |458| 
||         B       .S2     L40

           MVK     .S1     41,A3             ; |458| 
||         LDW     .D1T1   *+A10[A4],A4      ; |458| 

           LDW     .D1T1   *+A10[A3],A3      ; |458| 
           NOP             2

           CMPEQ   .L2     B4,B9,B5          ; |742| 
||         CMPEQ   .L1X    B4,A16,A31        ; |742| 

           ; BRANCH OCCURS {L40} 
DW$L$__configEDMA$35$E:
;** --------------------------------------------------------------------------*
L39:    
DW$L$__configEDMA$36$B:
;**	-----------------------g37:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$11 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$11;  // [2]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [14]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [14]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [14]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [14]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [14]
;** 360	-----------------------    a$12 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$12;  // [3]
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B21          ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B7,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x2000004,B6      ; |830| 
||         MVKL    .S1     0x2000010,A4      ; |833| 

           MVKH    .S2     0x2000004,B6      ; |830| 
||         MVKH    .S1     0x2000010,A4      ; |833| 

           MVKL    .S2     0x2000008,B5      ; |831| 
||         STW     .D2T1   A5,*B6            ; |830| 
||         MVKL    .S1     0x2000020,A31     ; |834| 

           MVKH    .S2     0x2000008,B5      ; |831| 
||         MVKH    .S1     0x2000020,A31     ; |834| 

           MVKL    .S2     0x200000c,B22     ; |832| 
||         STW     .D2T1   A3,*B5            ; |831| 

           MVKH    .S2     0x200000c,B22     ; |832| 

           STW     .D2T1   A6,*B22           ; |832| 
||         STW     .D1T2   B16,*A4           ; |833| 

           STW     .D1T2   B4,*A31           ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B21,B5          ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D2T2   *+B8(4),B4        ; |461| 
||         MVK     .S1     41,A3             ; |458| 

           MVK     .S1     40,A4             ; |458| 
||         LDW     .D1T1   *+A10[A3],A3      ; |458| 

           LDW     .D1T1   *+A10[A4],A4      ; |458| 
           NOP             2

           CMPEQ   .L2     B4,B9,B5          ; |742| 
||         CMPEQ   .L1X    B4,A16,A31        ; |742| 

DW$L$__configEDMA$36$E:
;** --------------------------------------------------------------------------*
L40:    
DW$L$__configEDMA$37$B:
;**	-----------------------g38:
;** 454	-----------------------    CSU$cfgEdma$opt = optFld2a;
;** 457	-----------------------    CSU$cfgEdma$rld = (unsigned short)U$167[2];
;** 458	-----------------------    CSU$cfgEdma$cnt = (((*chan).numEvents-(*chan).numEventsFld1<<15)+K$149|U$154)*2u;
;** 459	-----------------------    CSU$cfgEdma$src = Q$1[i];
;** 461	-----------------------    hEdma = U$167[1];
;** 742	-----------------------    if ( (hEdma == K$89)|(hEdma == K$178) ) goto g40;  // [13]
           MV      .L2     B19,B6            ; |454| 

           OR      .L2X    A31,B5,B1         ; |742| 
||         SUB     .L1     A4,A3,A3          ; |458| 
||         LDHU    .D2T2   *+B8(8),B5        ; |457| 
||         LDW     .D1T1   *+A9[A0],A4       ; |459| 

   [ B1]   BNOP    .S2     L41,2             ; |742| 
||         SHL     .S1     A3,15,A3          ; |458| 

           ADD     .L1     A19,A3,A3         ; |458| 
           OR      .L1     A20,A3,A3         ; |458| 
           ADD     .L1     A3,A3,A3          ; |458| 
           ; BRANCHCC OCCURS {L41}           ; |742| 
DW$L$__configEDMA$37$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$38$B:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$13 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$13;  // [2]
;** 756	-----------------------    C$16 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [13]
;** 756	-----------------------    *(volatile unsigned *)C$16 = 0u;  // [13]
;** 757	-----------------------    *((volatile unsigned *)C$16+4) = CSU$cfgEdma$src;  // [13]
;** 758	-----------------------    *((volatile unsigned *)C$16+8) = CSU$cfgEdma$cnt;  // [13]
;** 759	-----------------------    *((volatile unsigned *)C$16+12) = CSU$cfgEdma$dst;  // [13]
;** 760	-----------------------    *((volatile unsigned *)C$16+16) = CSU$cfgEdma$idx;  // [13]
;** 761	-----------------------    *((volatile unsigned *)C$16+20) = CSU$cfgEdma$rld;  // [13]
;** 762	-----------------------    *(volatile unsigned *)C$16 = optFld2a;  // [13]
;** 360	-----------------------    a$14 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$14;  // [3]
;**  	-----------------------    goto g41;
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B21          ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           AND     .L2     B7,B6,B6          ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           ZERO    .L1     A5                ; |756| 
||         EXTU    .S2     B4,16,16,B4       ; |756| 
||         ZERO    .L2     B6                ; |756| 

           MVKH    .S1     0x1a00000,A5      ; |756| 
           NOP             1
           ADD     .L2X    A5,B4,B4          ; |756| 
           STW     .D2T2   B6,*B4            ; |756| 
           STW     .D2T1   A4,*+B4(4)        ; |757| 
           STW     .D2T1   A3,*+B4(8)        ; |758| 
           STW     .D2T1   A6,*+B4(12)       ; |759| 
           STW     .D2T2   B16,*+B4(16)      ; |760| 
           STW     .D2T2   B5,*+B4(20)       ; |761| 

           STW     .D2T2   B19,*B4           ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B21,B5          ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           BNOP    .S1     L42,4
||         LDW     .D2T2   *+B8(12),B4       ; |466| 

           CMPEQ   .L2     B4,B9,B5          ; |742| 
||         CMPEQ   .L1X    B4,A16,A5         ; |742| 

           ; BRANCH OCCURS {L42} 
DW$L$__configEDMA$38$E:
;** --------------------------------------------------------------------------*
L41:    
DW$L$__configEDMA$39$B:
;**	-----------------------g40:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$15 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$15;  // [2]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [14]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [14]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [14]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [14]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [14]
;** 360	-----------------------    a$16 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$16;  // [3]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B21          ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B7,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S2     0x2000004,B19     ; |830| 
||         MVKL    .S1     0x2000010,A8      ; |833| 

           MVKH    .S2     0x2000004,B19     ; |830| 
||         MVKH    .S1     0x2000010,A8      ; |833| 

           MVKL    .S2     0x2000008,B5      ; |831| 
||         STW     .D2T1   A4,*B19           ; |830| 
||         MVKL    .S1     0x2000020,A5      ; |834| 

           MVKH    .S2     0x2000008,B5      ; |831| 
||         MVKH    .S1     0x2000020,A5      ; |834| 

           MVKL    .S2     0x200000c,B4      ; |832| 
||         STW     .D2T1   A3,*B5            ; |831| 

           MVKH    .S2     0x200000c,B4      ; |832| 

           STW     .D2T1   A6,*B4            ; |832| 
||         STW     .D1T2   B16,*A8           ; |833| 

           STW     .D1T2   B6,*A5            ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B21,B5          ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D2T2   *+B8(12),B4       ; |466| 
           NOP             4

           CMPEQ   .L2     B4,B9,B5          ; |742| 
||         CMPEQ   .L1X    B4,A16,A5         ; |742| 

DW$L$__configEDMA$39$E:
;** --------------------------------------------------------------------------*
L42:    
DW$L$__configEDMA$40$B:
;**	-----------------------g41:
;** 464	-----------------------    CSU$cfgEdma$opt = optFld2b;
;** 465	-----------------------    CSU$cfgEdma$rld = (unsigned short)*U$167;
;** 466	-----------------------    hEdma = U$167[3];
;** 742	-----------------------    if ( (hEdma == K$89)|(hEdma == K$178) ) goto g43;  // [13]
           MV      .L2     B17,B6            ; |464| 

           OR      .L1X    A5,B5,A1          ; |742| 
||         LDHU    .D2T2   *B8,B5            ; |465| 

   [ A1]   BNOP    .S1     L43,5             ; |742| 
           ; BRANCHCC OCCURS {L43}           ; |742| 
DW$L$__configEDMA$40$E:
;** --------------------------------------------------------------------------*
DW$L$__configEDMA$41$B:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$29 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$29;  // [2]
;** 756	-----------------------    C$15 = (unsigned)(unsigned short)hEdma+0x1a00000u;  // [13]
;** 756	-----------------------    *(volatile unsigned *)C$15 = 0u;  // [13]
;** 757	-----------------------    *((volatile unsigned *)C$15+4) = CSU$cfgEdma$src;  // [13]
;** 758	-----------------------    *((volatile unsigned *)C$15+8) = CSU$cfgEdma$cnt;  // [13]
;** 759	-----------------------    *((volatile unsigned *)C$15+12) = CSU$cfgEdma$dst;  // [13]
;** 760	-----------------------    *((volatile unsigned *)C$15+16) = CSU$cfgEdma$idx;  // [13]
;** 761	-----------------------    *((volatile unsigned *)C$15+20) = CSU$cfgEdma$rld;  // [13]
;** 762	-----------------------    *(volatile unsigned *)C$15 = optFld2b;  // [13]
;** 360	-----------------------    a$30 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$30;  // [3]
;**  	-----------------------    goto g44;
           MVC     .S2     CSR,B6            ; |354| 

           AND     .L2     1,B6,B9           ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           AND     .L2     B7,B6,B6          ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           ZERO    .L1     A5                ; |756| 
||         EXTU    .S2     B4,16,16,B4       ; |756| 
||         ZERO    .L2     B6                ; |756| 

           MVKH    .S1     0x1a00000,A5      ; |756| 
           NOP             1
           ADD     .L2X    A5,B4,B4          ; |756| 
           STW     .D2T2   B6,*B4            ; |756| 
           STW     .D2T1   A4,*+B4(4)        ; |757| 
           STW     .D2T1   A3,*+B4(8)        ; |758| 
           STW     .D2T1   A6,*+B4(12)       ; |759| 
           STW     .D2T2   B16,*+B4(16)      ; |760| 
           STW     .D2T2   B5,*+B4(20)       ; |761| 

           STW     .D2T2   B17,*B4           ; |762| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B9,B5           ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           B       .S1     L45
||         SUB     .L2     B0,1,B0           ; |367| 
||         ADDK    .S2     16,B8             ; |367| 
||         ADD     .L1     1,A0,A0           ; |367| 
||         ADD     .D1     4,A17,A17         ; |367| 

   [ B0]   BNOP    .S1     L28,4             ; |367| 
           ; BRANCH OCCURS {L45} 
DW$L$__configEDMA$41$E:
;** --------------------------------------------------------------------------*
L43:    
DW$L$__configEDMA$42$B:
;**	-----------------------g43:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$31 = CSR&K$184;  // [2]
;** 355	-----------------------    CSR = a$31;  // [2]
;** 830	-----------------------    *(volatile unsigned *)0x2000004u = CSU$cfgEdma$src;  // [14]
;** 831	-----------------------    *(volatile unsigned *)0x2000008u = CSU$cfgEdma$cnt;  // [14]
;** 832	-----------------------    *(volatile unsigned *)0x200000cu = CSU$cfgEdma$dst;  // [14]
;** 833	-----------------------    *(volatile unsigned *)0x2000010u = CSU$cfgEdma$idx;  // [14]
;** 834	-----------------------    *(volatile unsigned *)0x2000020u = CSU$cfgEdma$opt;  // [14]
;** 360	-----------------------    a$32 = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$32;  // [3]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B17          ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B7,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S2     0x2000004,B9      ; |830| 
||         MVKL    .S1     0x2000010,A5      ; |833| 

           MVKH    .S2     0x2000004,B9      ; |830| 
||         MVKH    .S1     0x2000010,A5      ; |833| 

           MVKL    .S2     0x2000008,B5      ; |831| 
||         STW     .D2T1   A4,*B9            ; |830| 
||         MVKL    .S1     0x2000020,A31     ; |834| 

           MVKH    .S2     0x2000008,B5      ; |831| 
||         MVKH    .S1     0x2000020,A31     ; |834| 

           MVKL    .S2     0x200000c,B4      ; |832| 
||         STW     .D2T1   A3,*B5            ; |831| 

           MVKH    .S2     0x200000c,B4      ; |832| 

           STW     .D2T1   A6,*B4            ; |832| 
||         STW     .D1T2   B16,*A5           ; |833| 

           STW     .D1T2   B6,*A31           ; |834| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B17,B5          ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           SUB     .L2     B0,1,B0           ; |367| 
DW$L$__configEDMA$42$E:
;** --------------------------------------------------------------------------*
L44:    
DW$L$__configEDMA$43$B:

   [ B0]   BNOP    .S1     L28,4             ; |367| 
||         ADDK    .S2     16,B8             ; |367| 
||         ADD     .L1     1,A0,A0           ; |367| 
||         ADD     .D1     4,A17,A17         ; |367| 

DW$L$__configEDMA$43$E:
;** --------------------------------------------------------------------------*
L45:    
DW$L$__configEDMA$44$B:
;**	-----------------------g44:
;** 367	-----------------------    ++U$140;
;** 367	-----------------------    U$167 += 4;
;** 367	-----------------------    ++i;
;** 367	-----------------------    if ( --l$5 ) goto g13;
;** 491	-----------------------    (*chan).nextEDMARlds = 1;
	.dwpsn	"vportdis.c",490,0
   [!B0]   MVK     .S1     44,A3             ; |494| 
           ; BRANCHCC OCCURS {L28}           ; |367| 
DW$L$__configEDMA$44$E:
;** --------------------------------------------------------------------------*
;** 494	-----------------------    if ( (*chan).mode&2 ) goto g65;

           LDW     .D1T1   *+A10[A3],A3      ; |494| 
||         MVK     .L1     1,A4              ; |491| 
||         MVK     .S1     52,A5             ; |491| 

           NOP             3
           STW     .D1T1   A4,*+A10[A5]      ; |491| 
           AND     .L1     2,A3,A0           ; |494| 

   [!A0]   LDW     .D1T1   *+A10(48),A3      ; |559| 
|| [ A0]   B       .S1     L46               ; |494| 

   [ A0]   LDW     .D1T1   *+A10(44),A3      ; |559| 
           NOP             3
   [!A0]   EXTU    .S1     A3,8,24,A3        ; |559| 
           ; BRANCHCC OCCURS {L46}           ; |494| 
;** --------------------------------------------------------------------------*
;** 559	-----------------------    chaNum = C$14 = _extu(*((unsigned (*)[3])chan+48), 8u, 24u);  // [11]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$184;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$14 < 32 ) goto g48;  // [2]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&~(1u<<(int)C$14-32);  // [11]
;** 566	-----------------------    K$428 = 0xffffffffu;  // [11]
;** 566	-----------------------    goto g49;  // [11]
;**	-----------------------g48:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&~(1u<<chaNum);  // [11]
;** 565	-----------------------    K$428 = 0xffffffffu;  // [11]
;**	-----------------------g49:
;** 360	-----------------------    CSR = CSR&K$184|gie&1u;  // [3]
;** 615	-----------------------    chaNum = C$13 = _extu(*((unsigned (*)[3])chan+48), 8u, 24u);  // [12]
;** 618	-----------------------    if ( (int)C$13 < (K$420 = 32) ) goto g51;  // [12]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$13-32;  // [12]
;** 619	-----------------------    goto g52;  // [12]
;**	-----------------------g51:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [12]
;**	-----------------------g52:
;** 489	-----------------------    chaNum = C$12 = _extu(*((unsigned (*)[3])chan+48), 8u, 24u);  // [10]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$184;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$12 < K$420 ) goto g54;  // [2]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$12-32;  // [10]
;** 494	-----------------------    goto g55;  // [10]
;**	-----------------------g54:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [10]
;**	-----------------------g55:
;** 360	-----------------------    CSR = CSR&K$184|gie&1u;  // [3]
;** 559	-----------------------    chaNum = C$11 = _extu(*((unsigned (*)[3])chan+52), 8u, 24u);  // [11]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$184;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$11 < K$420 ) goto g57;  // [2]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$11-32^K$428);  // [11]
;** 566	-----------------------    goto g58;  // [11]
;**	-----------------------g57:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<chaNum^K$428);  // [11]
;**	-----------------------g58:
;** 360	-----------------------    CSR = CSR&K$184|gie&1u;  // [3]
;** 615	-----------------------    chaNum = C$10 = _extu(*((unsigned (*)[3])chan+52), 8u, 24u);  // [12]
;** 618	-----------------------    if ( (int)C$10 < K$420 ) goto g60;  // [12]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$10-32;  // [12]
;** 619	-----------------------    goto g61;  // [12]
;**	-----------------------g60:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [12]
;**	-----------------------g61:
;** 489	-----------------------    chaNum = C$9 = _extu(*((unsigned (*)[3])chan+52), 8u, 24u);  // [10]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$184;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$9 < K$420 ) goto g63;  // [2]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$9-32;  // [10]
;** 494	-----------------------    goto g64;  // [10]
;**	-----------------------g63:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [10]
;**	-----------------------g64:
;** 360	-----------------------    CSR = CSR&K$184|gie&1u;  // [3]
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B7,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x1a0ffb4,B5      ; |566| 
||         MVK     .S1     32,A4             ; |356| 
||         MVK     .L1     1,A5              ; |566| 
||         MVK     .L2     1,B6              ; |565| 
||         MVK     .D1     0xffffffff,A30    ; |566| 

           CMPLT   .L1     A3,A4,A0          ; |356| 
||         MVKH    .S2     0x1a0ffb4,B5      ; |566| 
||         SUB     .D1     A3,A4,A4          ; |566| 
||         MVKL    .S1     0x1a0fff4,A31     ; |565| 

   [!A0]   LDW     .D2T1   *B5,A6            ; |566| 
||         MVKL    .S2     0x1a0fff4,B5      ; |565| 
||         SHL     .S1     A5,A4,A5          ; |566| 

           MVKH    .S2     0x1a0fff4,B5      ; |565| 
||         MVKL    .S1     0x1a0ffb4,A7      ; |566| 

   [ A0]   LDW     .D2T2   *B5,B5            ; |565| 
||         MVKH    .S1     0x1a0fff4,A31     ; |565| 

           NOP             1
           MVKH    .S1     0x1a0ffb4,A7      ; |566| 

   [!A0]   ANDN    .L1     A6,A5,A3          ; |566| 
||         SHL     .S1X    B6,A3,A5          ; |565| 

   [!A0]   STW     .D1T1   A3,*A7            ; |566| 
   [ A0]   ANDN    .L2X    B5,A5,B5          ; |565| 

   [ A0]   STW     .D1T2   B5,*A31           ; |565| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B7,B5,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T1   *+A10(48),A3      ; |615| 
||         MVK     .S1     32,A5             ; |619| 
||         MVK     .L1     1,A6              ; |618| 
||         MVKL    .S2     0x1a0ffb8,B5      ; |619| 

           MVK     .S1     0x20,A9           ; |618| 
           MVKL    .S2     0x1a0fff8,B4      ; |618| 
           MVKH    .S2     0x1a0ffb8,B5      ; |619| 
           MVKH    .S2     0x1a0fff8,B4      ; |618| 
           EXTU    .S1     A3,8,24,A3        ; |615| 

           CMPLT   .L1     A3,A9,A0          ; |618| 
||         SHL     .S1     A6,A3,A5          ; |618| 
||         SUB     .D1     A3,A5,A3          ; |619| 

           SHL     .S1X    B6,A3,A3          ; |619| 
|| [ A0]   STW     .D2T1   A5,*B4            ; |618| 

   [!A0]   STW     .D2T1   A3,*B5            ; |619| 
           LDW     .D1T2   *+A10(48),B4      ; |489| 
           NOP             4
           EXTU    .S2     B4,8,24,B4        ; |489| 
           MVC     .S2     CSR,B5            ; |354| 

           AND     .L2     1,B5,B5           ; |354| 
||         MVC     .S2     CSR,B6            ; |355| 

           AND     .L2     B7,B6,B6          ; |355| 
           MVC     .S2     B6,CSR            ; |355| 

           MVKL    .S2     0x1a0fff4,B6      ; |493| 
||         CMPLT   .L2X    B4,A9,B0          ; |356| 
||         MVK     .S1     32,A6             ; |494| 
||         MVK     .L1     1,A29             ; |494| 
||         MVK     .D2     1,B9              ; |493| 

           MVKH    .S2     0x1a0fff4,B6      ; |493| 
||         SUB     .L1X    B4,A6,A7          ; |494| 
||         MVKL    .S1     0x1a0ffb4,A5      ; |494| 
||         MV      .L2     B5,B31            ; |356| 

   [ B0]   LDW     .D2T2   *B6,B8            ; |493| 
||         MVKL    .S2     0x1a0ffb4,B6      ; |494| 
||         SHL     .S1     A29,A7,A6         ; |494| 

           MVKH    .S2     0x1a0ffb4,B6      ; |494| 
||         MVKL    .S1     0x1a0fff4,A3      ; |493| 

   [!B0]   LDW     .D2T2   *B6,B6            ; |494| 
||         SHL     .S2     B9,B4,B4          ; |493| 
||         MVKH    .S1     0x1a0ffb4,A5      ; |494| 

           NOP             1
           MVKH    .S1     0x1a0fff4,A3      ; |493| 
   [ B0]   OR      .L2     B4,B8,B6          ; |493| 
   [ B0]   STW     .D1T2   B6,*A3            ; |493| 
   [!B0]   OR      .L2X    A6,B6,B5          ; |494| 

   [!B0]   STW     .D1T2   B5,*A5            ; |494| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     B7,B5,B4          ; |360| 
||         AND     .S2     1,B31,B5          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *+A10(52),A3      ; |559| 
           NOP             4

           EXTU    .S1     A3,8,24,A3        ; |559| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B7,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S2     0x1a0ffb4,B5      ; |566| 
||         CMPLT   .L1     A3,A9,A0          ; |356| 
||         MVKL    .S1     0x1a0fff4,A5      ; |565| 
||         MVK     .D1     1,A7              ; |565| 

           MVKH    .S2     0x1a0ffb4,B5      ; |566| 
||         MVKH    .S1     0x1a0fff4,A5      ; |565| 

           MVK     .S2     32,B6             ; |566| 
|| [!A0]   LDW     .D2T2   *B5,B8            ; |566| 
||         MVK     .L2     1,B5              ; |566| 
|| [ A0]   LDW     .D1T1   *A5,A5            ; |565| 
||         SHL     .S1     A7,A3,A7          ; |565| 

           MVKL    .S1     0x1a0fff4,A28     ; |565| 

           SUB     .L1X    A3,B6,A6          ; |566| 
||         MVKL    .S1     0x1a0ffb4,A8      ; |566| 

           SHL     .S1X    B5,A6,A6          ; |566| 

           XOR     .L1     A30,A6,A3         ; |566| 
||         MVKH    .S1     0x1a0fff4,A28     ; |565| 

           MVKH    .S1     0x1a0ffb4,A8      ; |566| 

   [!A0]   AND     .L2X    A3,B8,B5          ; |566| 
||         XOR     .L1     A30,A7,A3         ; |565| 

   [ A0]   AND     .L1     A3,A5,A3          ; |565| 
|| [!A0]   STW     .D1T2   B5,*A8            ; |566| 

   [ A0]   STW     .D1T1   A3,*A28           ; |565| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B7,B5,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T1   *+A10(52),A3      ; |615| 
||         MVK     .L2     1,B6              ; |618| 
||         MVK     .S1     32,A5             ; |619| 
||         MVK     .L1     1,A4              ; |619| 
||         MVKL    .S2     0x1a0fff8,B5      ; |618| 

           NOP             1
           MVKL    .S2     0x1a0ffb8,B4      ; |619| 
           MVKH    .S2     0x1a0ffb8,B4      ; |619| 
           MVKH    .S2     0x1a0fff8,B5      ; |618| 
           EXTU    .S1     A3,8,24,A3        ; |615| 

           SHL     .S1X    B6,A3,A5          ; |618| 
||         SUB     .D1     A3,A5,A3          ; |619| 
||         CMPLT   .L1     A3,A9,A0          ; |618| 

   [ A0]   STW     .D2T1   A5,*B5            ; |618| 
||         SHL     .S1     A4,A3,A3          ; |619| 

   [!A0]   STW     .D2T1   A3,*B4            ; |619| 
           LDW     .D1T1   *+A10(52),A3      ; |489| 
           NOP             4

           EXTU    .S1     A3,8,24,A3        ; |489| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B7,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVKL    .S1     0x1a0ffb4,A5      ; |494| 
||         CMPLT   .L1     A3,A9,A0          ; |356| 
||         MVK     .L2     1,B5              ; |493| 
||         MVK     .D1     1,A7              ; |494| 
||         MVKL    .S2     0x1a0fff4,B30     ; |493| 

           MVKL    .S1     0x1a0fff4,A4      ; |493| 
||         MVKH    .S2     0x1a0fff4,B30     ; |493| 

           MVKH    .S1     0x1a0ffb4,A5      ; |494| 

           MVKH    .S1     0x1a0fff4,A4      ; |493| 
|| [!A0]   LDW     .D1T1   *A5,A5            ; |494| 

   [ A0]   LDW     .D1T1   *A4,A4            ; |493| 
||         MVK     .S1     32,A6             ; |494| 

           SUB     .L1     A3,A6,A8          ; |494| 
||         SHL     .S1X    B5,A3,A3          ; |493| 

           SHL     .S1     A7,A8,A7          ; |494| 
           MVKL    .S1     0x1a0ffb4,A27     ; |494| 

   [!A0]   OR      .L1     A7,A5,A4          ; |494| 
||         MVKH    .S1     0x1a0ffb4,A27     ; |494| 

   [ A0]   OR      .L1     A3,A4,A3          ; |493| 
|| [!A0]   STW     .D1T1   A4,*A27           ; |494| 

   [ A0]   STW     .D2T1   A3,*B30           ; |493| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B7,B5,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *+A10(44),A3      ; |559| 
           NOP             4
;** --------------------------------------------------------------------------*
L46:    
;**	-----------------------g65:
;** 559	-----------------------    chaNum = C$8 = _extu(*((unsigned (*)[3])chan+44), 8u, 24u);  // [11]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$184;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;**  	-----------------------    K$428 = 0xffffffffu;
;** 356	-----------------------    if ( (int)C$8 < 32 ) goto g67;  // [2]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$8-32^K$428);  // [11]
;** 566	-----------------------    goto g68;  // [11]
;**	-----------------------g67:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<chaNum^K$428);  // [11]
;**	-----------------------g68:
;** 360	-----------------------    CSR = CSR&K$184|gie&1u;  // [3]
;** 615	-----------------------    chaNum = C$7 = _extu(*((unsigned (*)[3])chan+44), 8u, 24u);  // [12]
;** 618	-----------------------    if ( (int)C$7 < (K$420 = 32) ) goto g70;  // [12]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$7-32;  // [12]
;** 619	-----------------------    goto g71;  // [12]
;**	-----------------------g70:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<chaNum;  // [12]
;**	-----------------------g71:
;** 489	-----------------------    chaNum = C$6 = _extu(*((unsigned (*)[3])chan+44), 8u, 24u);  // [10]
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    CSR = CSR&K$184;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    if ( (int)C$6 < K$420 ) goto g73;  // [2]
;** 494	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u|1u<<(int)C$6-32;  // [10]
;** 494	-----------------------    goto g74;  // [10]
;**	-----------------------g73:
;** 493	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u|1u<<chaNum;  // [10]
;**	-----------------------g74:
;** 360	-----------------------    CSR = CSR&K$184|gie&1u;  // [3]
;** 360	-----------------------    (*chan).status = (*chan).status|4u;  // [3]

           EXTU    .S1     A3,8,24,A3        ; |559| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B7,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           MVK     .S2     32,B5             ; |356| 
||         MVKL    .S1     0x1a0fff4,A4      ; |565| 
||         MVK     .L1     1,A6              ; |565| 
||         MVK     .L2     1,B8              ; |566| 
||         MVK     .D1     0xffffffff,A8

           MVKH    .S1     0x1a0fff4,A4      ; |565| 
||         MVK     .S2     32,B6             ; |566| 

           CMPLT   .L1X    A3,B5,A0          ; |356| 
||         MVKL    .S2     0x1a0ffb4,B5      ; |566| 
||         MVKL    .S1     0x1a0ffb4,A31     ; |566| 

           MVKH    .S2     0x1a0ffb4,B5      ; |566| 
|| [ A0]   LDW     .D1T1   *A4,A4            ; |565| 
||         SUB     .L1X    A3,B6,A6          ; |566| 
||         SHL     .S1     A6,A3,A3          ; |565| 

   [!A0]   LDW     .D2T2   *B5,B5            ; |566| 
||         SHL     .S1X    B8,A6,A7          ; |566| 
||         XOR     .L1     A8,A3,A3          ; |565| 

           XOR     .L1     A8,A7,A30         ; |566| 
||         MVKL    .S1     0x1a0fff4,A5      ; |565| 

           MVKH    .S1     0x1a0ffb4,A31     ; |566| 
           MVKH    .S1     0x1a0fff4,A5      ; |565| 
   [ A0]   AND     .L1     A3,A4,A3          ; |565| 

   [!A0]   AND     .L2X    A30,B5,B5         ; |566| 
|| [ A0]   STW     .D1T1   A3,*A5            ; |565| 

   [!A0]   STW     .D1T2   B5,*A31           ; |566| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B7,B5,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T2   *+A10(44),B4      ; |615| 
||         MVK     .S1     0x20,A5           ; |618| 
||         MVK     .L2     1,B5              ; |618| 

           MVKL    .S1     0x1a0fff8,A3      ; |618| 
           MVKH    .S1     0x1a0fff8,A3      ; |618| 
           MVKL    .S1     0x1a0ffb8,A4      ; |619| 
           MVKH    .S1     0x1a0ffb8,A4      ; |619| 
           EXTU    .S2     B4,8,24,B4        ; |615| 

           CMPLT   .L2X    B4,A5,B0          ; |618| 
||         SHL     .S2     B5,B4,B4          ; |618| 
||         SUB     .D2     B4,B6,B5          ; |619| 

   [ B0]   STW     .D1T2   B4,*A3            ; |618| 
||         SHL     .S2     B8,B5,B4          ; |619| 

   [!B0]   STW     .D1T2   B4,*A4            ; |619| 
           LDW     .D1T1   *+A10(44),A3      ; |489| 
           NOP             4

           EXTU    .S1     A3,8,24,A3        ; |489| 
||         MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B6           ; |354| 
||         MVC     .S2     CSR,B4            ; |355| 

           AND     .L2     B7,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 

           MVKL    .S1     0x1a0fff4,A4      ; |493| 
||         MVKL    .S2     0x1a0ffb4,B4      ; |494| 
||         CMPLT   .L1     A3,A5,A0          ; |356| 
||         MVK     .D1     1,A6              ; |494| 
||         MVK     .L2     1,B31             ; |493| 

           MVKH    .S2     0x1a0ffb4,B4      ; |494| 
||         MVKH    .S1     0x1a0fff4,A4      ; |493| 

   [!A0]   LDW     .D2T2   *B4,B5            ; |494| 
|| [ A0]   LDW     .D1T1   *A4,A4            ; |493| 
||         MVK     .S1     32,A5             ; |494| 
||         MVKL    .S2     0x1a0fff4,B30     ; |493| 

           SUB     .L1     A3,A5,A5          ; |494| 
||         SHL     .S1X    B31,A3,A3         ; |493| 
||         MVKH    .S2     0x1a0fff4,B30     ; |493| 

           SHL     .S1     A6,A5,A5          ; |494| 
           MVKL    .S1     0x1a0ffb4,A7      ; |494| 
           MVKH    .S1     0x1a0ffb4,A7      ; |494| 

   [!A0]   OR      .L2X    A5,B5,B5          ; |494| 
|| [ A0]   OR      .L1     A3,A4,A3          ; |493| 

   [!A0]   STW     .D1T2   B5,*A7            ; |494| 
|| [ A0]   STW     .D2T1   A3,*B30           ; |493| 
||         MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B6,B5           ; |360| 
||         AND     .S2     B7,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           LDW     .D1T1   *A10,A3           ; |360| 
           NOP             4
           OR      .L2X    4,A3,B4           ; |360| 
           STW     .D1T2   B4,*A10           ; |360| 
;** --------------------------------------------------------------------------*
L47:    
;**	-----------------------g75:
;** 517	-----------------------    return 0;
           LDDW    .D2T1   *+SP(64),A11:A10  ; |519| 

           LDDW    .D2T1   *+SP(72),A13:A12  ; |519| 
||         MV      .L2     B11,B3            ; |519| 

           RET     .S2     B3                ; |519| 
||         LDDW    .D2T2   *+SP(80),B11:B10  ; |519| 

           LDW     .D2T1   *++SP(88),A14     ; |519| 
           NOP             3
	.dwpsn	"vportdis.c",519,1
           ZERO    .L1     A4                ; |517| 
           ; BRANCH OCCURS {B3}              ; |519| 

DW$62	.dwtag  DW_TAG_loop
	.dwattr DW$62, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\vport-v2\vportdis.asm:L28:1:1297920436")
	.dwattr DW$62, DW_AT_begin_file("vportdis.c")
	.dwattr DW$62, DW_AT_begin_line(0x16f)
	.dwattr DW$62, DW_AT_end_line(0x1ea)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$__configEDMA$18$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$__configEDMA$18$E)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$__configEDMA$19$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$__configEDMA$19$E)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$__configEDMA$20$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$__configEDMA$20$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$__configEDMA$21$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$__configEDMA$21$E)
DW$67	.dwtag  DW_TAG_loop_range
	.dwattr DW$67, DW_AT_low_pc(DW$L$__configEDMA$22$B)
	.dwattr DW$67, DW_AT_high_pc(DW$L$__configEDMA$22$E)
DW$68	.dwtag  DW_TAG_loop_range
	.dwattr DW$68, DW_AT_low_pc(DW$L$__configEDMA$23$B)
	.dwattr DW$68, DW_AT_high_pc(DW$L$__configEDMA$23$E)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$__configEDMA$24$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$__configEDMA$24$E)
DW$70	.dwtag  DW_TAG_loop_range
	.dwattr DW$70, DW_AT_low_pc(DW$L$__configEDMA$25$B)
	.dwattr DW$70, DW_AT_high_pc(DW$L$__configEDMA$25$E)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$__configEDMA$26$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$__configEDMA$26$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$__configEDMA$27$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$__configEDMA$27$E)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$__configEDMA$42$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$__configEDMA$42$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$__configEDMA$28$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$__configEDMA$28$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$__configEDMA$29$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$__configEDMA$29$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$__configEDMA$30$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$__configEDMA$30$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$__configEDMA$31$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$__configEDMA$31$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$__configEDMA$32$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$__configEDMA$32$E)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$__configEDMA$33$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$__configEDMA$33$E)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$__configEDMA$34$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$__configEDMA$34$E)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$__configEDMA$35$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$__configEDMA$35$E)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$__configEDMA$36$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$__configEDMA$36$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$__configEDMA$37$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$__configEDMA$37$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$__configEDMA$38$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$__configEDMA$38$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$__configEDMA$39$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$__configEDMA$39$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$__configEDMA$40$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$__configEDMA$40$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$__configEDMA$41$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$__configEDMA$41$E)
DW$88	.dwtag  DW_TAG_loop_range
	.dwattr DW$88, DW_AT_low_pc(DW$L$__configEDMA$43$B)
	.dwattr DW$88, DW_AT_high_pc(DW$L$__configEDMA$43$E)
DW$89	.dwtag  DW_TAG_loop_range
	.dwattr DW$89, DW_AT_low_pc(DW$L$__configEDMA$44$B)
	.dwattr DW$89, DW_AT_high_pc(DW$L$__configEDMA$44$E)
	.dwendtag DW$62


DW$90	.dwtag  DW_TAG_loop
	.dwattr DW$90, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\vport-v2\vportdis.asm:L21:1:1297920436")
	.dwattr DW$90, DW_AT_begin_file("vportdis.c")
	.dwattr DW$90, DW_AT_begin_line(0x14a)
	.dwattr DW$90, DW_AT_end_line(0x14e)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$__configEDMA$5$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$__configEDMA$5$E)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$__configEDMA$6$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$__configEDMA$6$E)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$__configEDMA$7$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$__configEDMA$7$E)
	.dwendtag DW$90

	.dwattr DW$59, DW_AT_end_file("vportdis.c")
	.dwattr DW$59, DW_AT_end_line(0x207)
	.dwattr DW$59, DW_AT_end_column(0x01)
	.dwendtag DW$59

	.sect	".text"

DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$94, DW_AT_low_pc(_mdBindDev)
	.dwattr DW$94, DW_AT_high_pc(0x00)
	.dwattr DW$94, DW_AT_begin_file("vportdis.c")
	.dwattr DW$94, DW_AT_begin_line(0x5d)
	.dwattr DW$94, DW_AT_begin_column(0x0c)
	.dwattr DW$94, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$94, DW_AT_skeletal(0x01)
	.dwpsn	"vportdis.c",94,1

;******************************************************************************
;* FUNCTION NAME: _mdBindDev                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19, *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19, *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 4 Auto + 20 Save = 24 byte                  *
;******************************************************************************
_mdBindDev:
;** --------------------------------------------------------------------------*
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$95, DW_AT_type(*DW$T$33)
	.dwattr DW$95, DW_AT_location[DW_OP_reg4]
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devid"), DW_AT_symbol_name("_devid")
	.dwattr DW$96, DW_AT_type(*DW$T$26)
	.dwattr DW$96, DW_AT_location[DW_OP_reg20]
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devParams"), DW_AT_symbol_name("_devParams")
	.dwattr DW$97, DW_AT_type(*DW$T$24)
	.dwattr DW$97, DW_AT_location[DW_OP_reg6]
;** 97	-----------------------    K$7 = C$10 = &chanObjs[devid];
;** 97	-----------------------    base = (volatile int *)((*(struct $$fake2 *)(void *)C$10).base+192);
;** 101	-----------------------    set_i2c_pin((*(struct _VPORTDIS_PortParams *)devParams).pin_cfg);
;** 102	-----------------------    C0104_verify();
;** 105	-----------------------    *base = 32768;
;** 107	-----------------------    i = 0;
;** 107	-----------------------    if ( i >= 100000 ) goto g4;
;** 107	-----------------------    K$20 = 100000;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVK     .S2     212,B5            ; |97| 
           MPYLI   .M2     B5,B4,B5:B4       ; |97| 
           STW     .D2T1   A12,*SP--(24)     ; |94| 
           MVKL    .S1     _chanObjs,A3      ; |97| 
           STDW    .D2T1   A11:A10,*+SP(8)   ; |94| 

           MVKH    .S1     _chanObjs,A3      ; |97| 
||         MV      .L1     A6,A11            ; |94| 

           CALL    .S1     _set_i2c_pin      ; |101| 
||         ADD     .L1X    A3,B4,A12         ; |97| 
||         LDW     .D1T1   *+A11(28),A4      ; |101| 
||         MV      .L2X    A4,B10            ; |94| 
||         STDW    .D2T2   B11:B10,*+SP(16)  ; |94| 

           LDW     .D1T1   *+A12(12),A10     ; |97| 
           MV      .L2     B3,B11            ; |94| 
           ADDKPC  .S2     RL15,B3,2         ; |101| 
RL15:      ; CALL OCCURS {_set_i2c_pin}      ; |101| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _C0104_verify     ; |102| 
           ADDKPC  .S2     RL16,B3,4         ; |102| 
RL16:      ; CALL OCCURS {_C0104_verify}     ; |102| 
;** --------------------------------------------------------------------------*

           MVKL    .S2     0x8000,B4         ; |105| 
||         ADDAD   .D1     A10,24,A3         ; |97| 
||         MV      .L1     A12,A4            ; |97| 

           MVKH    .S2     0x8000,B4         ; |105| 

           STW     .D1T2   B4,*A3            ; |105| 
||         ZERO    .L2     B4                ; |107| 
||         MVKL    .S1     0x186a0,A3        ; |107| 
||         MVKL    .S2     0x186a0,B6        ; |107| 

           STW     .D2T2   B4,*+SP(4)        ; |107| 
||         MVKH    .S1     0x186a0,A3        ; |107| 
||         MVKH    .S2     0x186a0,B6        ; |107| 

           LDW     .D2T2   *+SP(4),B4        ; |107| 
           NOP             4
           CMPLT   .L2X    B4,A3,B0          ; |107| 

   [!B0]   BNOP    .S1     L51,4             ; |107| 
|| [ B0]   LDW     .D2T2   *+SP(4),B5        ; |107| (P) <0,0>  ^ 

           ADD     .L2     1,B5,B7           ; |107| (P) <0,5>  ^ 
           ; BRANCHCC OCCURS {L51}           ; |107| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 107	-----------------------    i = i+1;
;** 107	-----------------------    if ( i < K$20 ) goto g3;

           STW     .D2T2   B7,*+SP(4)        ; |107| (P) <0,6>  ^ 
||         MVK     .L1     0x1,A1

           LDW     .D2T2   *+SP(4),B4        ; |107| (P) <0,7>  ^ 
           NOP             4
           CMPLT   .L2     B4,B6,B0          ; |107| (P) <0,12>  ^ 
   [!B0]   ZERO    .L1     A1                ; |107| (P) <0,13>  ^ 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 107
;*      Loop closing brace source line   : 107
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
L48:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L49:    ; PIPED LOOP KERNEL
DW$L$_mdBindDev$6$B:
   [ A1]   LDW     .D2T2   *+SP(4),B5        ; |107| <1,0>  ^ 
           NOP             3
           MV      .L1     A1,A0             ; |107| <0,18> Split a long life
           ADD     .L2     1,B5,B7           ; |107| <1,5>  ^ 
   [ A0]   STW     .D2T2   B7,*+SP(4)        ; |107| <1,6>  ^ 
   [ A0]   LDW     .D2T2   *+SP(4),B4        ; |107| <1,7>  ^ 
   [ A1]   BNOP    .S1     L49,3             ; |107| <0,22> 
           CMPLT   .L2     B4,B6,B0          ; |107| <1,12>  ^ 
   [!B0]   ZERO    .L1     A1                ; |107| <1,13>  ^ 
DW$L$_mdBindDev$6$E:
;** --------------------------------------------------------------------------*
L50:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L51:    
;**	-----------------------g4:
;** 108	-----------------------    *devp = K$7;
;** 109	-----------------------    return mdControlChan(K$7, 0x10000002u, devParams);
           CALL    .S1     _mdControlChan    ; |109| 
           ADDKPC  .S2     RL17,B3,0         ; |109| 
           STW     .D2T1   A4,*B10           ; |108| 
           MVKL    .S2     0x10000002,B4     ; |109| 
           MVKH    .S2     0x10000002,B4     ; |109| 
           MV      .L1     A11,A6            ; |109| 
RL17:      ; CALL OCCURS {_mdControlChan}    ; |109| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |111| 
||         MV      .L2     B11,B3            ; |111| 

           RET     .S2     B3                ; |111| 
||         LDDW    .D2T2   *+SP(16),B11:B10  ; |111| 

           LDW     .D2T1   *++SP(24),A12     ; |111| 
	.dwpsn	"vportdis.c",111,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |111| 

DW$98	.dwtag  DW_TAG_loop
	.dwattr DW$98, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\vport-v2\vportdis.asm:L49:1:1297920436")
	.dwattr DW$98, DW_AT_begin_file("vportdis.c")
	.dwattr DW$98, DW_AT_begin_line(0x6b)
	.dwattr DW$98, DW_AT_end_line(0x6b)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_mdBindDev$6$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_mdBindDev$6$E)
	.dwendtag DW$98

	.dwattr DW$94, DW_AT_end_file("vportdis.c")
	.dwattr DW$94, DW_AT_end_line(0x6f)
	.dwattr DW$94, DW_AT_end_column(0x01)
	.dwendtag DW$94

	.sect	".text"

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$100, DW_AT_low_pc(_mdCreateChan)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("vportdis.c")
	.dwattr DW$100, DW_AT_begin_line(0x9f)
	.dwattr DW$100, DW_AT_begin_column(0x0d)
	.dwattr DW$100, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$100, DW_AT_skeletal(0x01)
	.dwpsn	"vportdis.c",161,1

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
;*   Local Frame Size  : 0 Args + 0 Auto + 44 Save = 44 byte                  *
;******************************************************************************
_mdCreateChan:
;** --------------------------------------------------------------------------*
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$101, DW_AT_type(*DW$T$33)
	.dwattr DW$101, DW_AT_location[DW_OP_reg4]
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devp"), DW_AT_symbol_name("_devp")
	.dwattr DW$102, DW_AT_type(*DW$T$24)
	.dwattr DW$102, DW_AT_location[DW_OP_reg20]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$103, DW_AT_type(*DW$T$45)
	.dwattr DW$103, DW_AT_location[DW_OP_reg6]
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$104, DW_AT_type(*DW$T$26)
	.dwattr DW$104, DW_AT_location[DW_OP_reg22]
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanParams"), DW_AT_symbol_name("_chanParams")
	.dwattr DW$105, DW_AT_type(*DW$T$24)
	.dwattr DW$105, DW_AT_location[DW_OP_reg8]
DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$106, DW_AT_type(*DW$T$51)
	.dwattr DW$106, DW_AT_location[DW_OP_reg24]
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$107, DW_AT_type(*DW$T$24)
	.dwattr DW$107, DW_AT_location[DW_OP_reg10]
;** 166	-----------------------    if ( mode == 2 ) goto g3;
;** 167	-----------------------    return (-10);

           CMPEQ   .L2     B6,2,B0           ; |166| 
||         MV      .L1X    SP,A31            ; |161| 
||         STW     .D2T1   A15,*SP--(48)     ; |161| 
||         MVK     .S2     45,B5             ; |171| 
||         MVK     .S1     0xfffffff6,A3     ; |167| 

   [!B0]   B       .S2     L58               ; |167| 
||         STW     .D1T1   A14,*-A31(24)
||         STDW    .D2T2   B13:B12,*+SP(40)
||         MV      .L1     A4,A14            ; |161| 
||         MVK     .L2     0xffffffff,B12    ; |171| 
||         MV      .S1     A6,A4             ; |161| 

           STDW    .D1T1   A13:A12,*-A31(32)
||         STDW    .D2T2   B11:B10,*+SP(32)
||         MV      .L2X    A8,B10            ; |161| 
||         MV      .S2     B8,B11            ; |161| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         STW     .D2T2   B3,*+SP(28)
||         MV      .L1X    B4,A11            ; |161| 

   [ B0]   LDW     .D2T2   *+B4[B5],B5       ; |171| 
|| [ B0]   MVK     .L2     0xffffffff,B4     ; |173| 

           NOP             2
           ; BRANCHCC OCCURS {L58}           ; |167| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 170	-----------------------    chan = (struct $$fake2 *)devp;
;** 171	-----------------------    C$9 = (*chan).edcFxns;
;** 171	-----------------------    if ( (void *)C$9 == (void *)(K$17 = (void *)0xffffffffu) ) goto g5;
           NOP             1
           MVK     .S2     46,B13            ; |173| 
           CMPEQ   .L2     B5,B12,B0         ; |171| 

   [ B0]   BNOP    .S1     L52,4             ; |171| 
|| [ B0]   LDW     .D1T1   *A11,A3           ; |176| 
|| [!B0]   LDW     .D2T2   *B5,B5            ; |173| 

           AND     .L1     1,A3,A0           ; |176| 
|| [!B0]   CALL    .S2     B5                ; |173| 

           ; BRANCHCC OCCURS {L52}           ; |171| 
;** --------------------------------------------------------------------------*
;** 173	-----------------------    (*chan).edcHandle = (*(*C$9).open)(name, (-1));
           ADDKPC  .S2     RL18,B3,4         ; |173| 
RL18:      ; CALL OCCURS {A3}                ; |173| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B13,A3
           STW     .D1T1   A4,*+A11[A3]      ; |173| 
           LDW     .D1T1   *A11,A3           ; |176| 
           NOP             4
           AND     .L1     1,A3,A0           ; |176| 
;** --------------------------------------------------------------------------*
L52:    
;**	-----------------------g5:
;** 163	-----------------------    retVal = 0;
;** 176	-----------------------    C$8 = (*chan).status;
;** 176	-----------------------    if ( C$8&1u ) goto g20;

   [ A0]   B       .S1     L57               ; |176| 
||         OR      .L1     1,A3,A3           ; |177| 
||         ZERO    .D1     A15               ; |188| 
|| [!A0]   MV      .L2X    A11,B4
||         MVK     .S2     50,B6             ; |185| 
||         ZERO    .D2     B5                ; |179| 

           MVK     .S1     48,A5             ; |184| 
||         MVK     .S2     47,B8             ; |183| 
||         ADD     .L1     12,A11,A13
||         ZERO    .D1     A12               ; |163| 
|| [!A0]   STW     .D2T1   A3,*B4            ; |177| 
||         MVK     .L2     -1,B7             ; |184| 

           MVK     .S1     32,A4             ; |181| 
|| [!A0]   STW     .D1T2   B7,*+A11[A5]      ; |184| 

   [!A0]   STW     .D2T2   B5,*+B4(40)       ; |179| 
   [!A0]   STW     .D2T2   B11,*+B4(120)     ; |180| 
   [!A0]   STW     .D2T2   B12,*+B4[B8]      ; |183| 
           ; BRANCHCC OCCURS {L57}           ; |176| 
;** --------------------------------------------------------------------------*
;** 177	-----------------------    (*chan).status = C$8|1u;
;** 179	-----------------------    (*chan).vIntMask = C$7 = 0u;
;** 180	-----------------------    (*chan).cbFxn = cbFxn;
;** 181	-----------------------    (*chan).vIntFxn = K$17;
;** 182	-----------------------    (*chan).cbArg = (int)cbArg;
;** 183	-----------------------    (*chan).packetIOM = (struct _DEV_Frame *)K$17;
;** 184	-----------------------    (*chan).vIntCbArg = (-1);
;** 185	-----------------------    (*chan).bufSz = C$7;
;**  	-----------------------    U$44 = (unsigned *)chan+12;
;** 188	-----------------------    j = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           STW     .D1T2   B12,*+A11[A4]     ; |181| 

           STW     .D1T1   A10,*+A11(124)    ; |182| 
||         STW     .D2T2   B5,*+B4[B6]       ; |185| 

;** --------------------------------------------------------------------------*
           MVKL    .S2     _EDMA_open,B5     ; |190| 
           MVKH    .S2     _EDMA_open,B5     ; |190| 
           CALL    .S2     B5                ; |190| 
	.dwpsn	"vportdis.c",188,0
           LDW     .D1T1   *++A13,A4         ; |190| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L53:    
DW$L$_mdCreateChan$8$B:
	.dwpsn	"vportdis.c",189,0
;**	-----------------------g7:
;** 190	-----------------------    A$10 = T$1 = EDMA_open((int)*(++U$44), 1u);
;** 190	-----------------------    U$44[7] = A$10;
;** 190	-----------------------    if ( !T$1 ) goto g13;
           MVK     .L2     0x1,B4            ; |190| 
           ADDKPC  .S2     RL19,B3,2         ; |190| 
RL19:      ; CALL OCCURS {_EDMA_open}        ; |190| 
DW$L$_mdCreateChan$8$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$9$B:

           MVKL    .S2     _EDMA_allocTable,B4 ; |190| 
||         MV      .L1     A4,A0             ; |190| 
||         STW     .D1T1   A4,*+A13(28)      ; |190| 

           MVKH    .S2     _EDMA_allocTable,B4 ; |190| 
|| [!A0]   B       .S1     L54               ; |190| 
|| [!A0]   MVK     .L1     0xfffffffb,A12    ; |197| 

   [ A0]   CALL    .S2     B4                ; |190| 
           NOP             4
           ; BRANCHCC OCCURS {L54}           ; |190| 
DW$L$_mdCreateChan$9$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$10$B:
;** 190	-----------------------    U$57 = (j<<4)+(unsigned (*)[12])chan+56;
;** 190	-----------------------    *U$57 = T$2 = EDMA_allocTable((-1));
;** 190	-----------------------    if ( !T$2 ) goto g13;

           MVK     .L1     0xffffffff,A4     ; |190| 
||         ADDKPC  .S2     RL20,B3,0         ; |190| 

RL20:      ; CALL OCCURS {_EDMA_allocTable}  ; |190| 
DW$L$_mdCreateChan$10$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$11$B:

           MVKL    .S2     _EDMA_allocTable,B4 ; |190| 
||         MV      .L1     A4,A0             ; |190| 
||         SHL     .S1     A15,4,A3          ; |190| 

   [!A0]   B       .S1     L54               ; |190| 
||         MVKH    .S2     _EDMA_allocTable,B4 ; |190| 
||         ADD     .L1     A11,A3,A3         ; |190| 
|| [!A0]   MVK     .D1     0xfffffffb,A12    ; |197| 

   [ A0]   CALL    .S2     B4                ; |190| 
||         ADDAD   .D1     A3,7,A10          ; |190| 

           NOP             2
           STW     .D1T1   A0,*A10           ; |190| 
           NOP             1
           ; BRANCHCC OCCURS {L54}           ; |190| 
DW$L$_mdCreateChan$11$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$12$B:
;** 190	-----------------------    U$57[1] = T$3 = EDMA_allocTable((-1));
;** 190	-----------------------    if ( !T$3 ) goto g13;

           MVK     .L1     0xffffffff,A4     ; |190| 
||         ADDKPC  .S2     RL21,B3,0         ; |190| 

RL21:      ; CALL OCCURS {_EDMA_allocTable}  ; |190| 
DW$L$_mdCreateChan$12$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$13$B:

           MVKL    .S2     _EDMA_allocTable,B4 ; |190| 
||         MV      .L1     A4,A0             ; |190| 

   [!A0]   B       .S1     L54               ; |190| 
||         MVKH    .S2     _EDMA_allocTable,B4 ; |190| 
||         STW     .D1T1   A0,*+A10(4)       ; |190| 
|| [!A0]   MVK     .L1     0xfffffffb,A12    ; |197| 

   [ A0]   CALL    .S2     B4                ; |190| 
           NOP             4
           ; BRANCHCC OCCURS {L54}           ; |190| 
DW$L$_mdCreateChan$13$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$14$B:
;** 190	-----------------------    U$57[2] = T$4 = EDMA_allocTable((-1));
;** 190	-----------------------    if ( !T$4 ) goto g13;

           MVK     .L1     0xffffffff,A4     ; |190| 
||         ADDKPC  .S2     RL22,B3,0         ; |190| 

RL22:      ; CALL OCCURS {_EDMA_allocTable}  ; |190| 
DW$L$_mdCreateChan$14$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$15$B:

           MVKL    .S2     _EDMA_allocTable,B4 ; |190| 
||         MV      .L1     A4,A0             ; |190| 

   [!A0]   B       .S1     L54               ; |190| 
||         MVKH    .S2     _EDMA_allocTable,B4 ; |190| 
||         STW     .D1T1   A0,*+A10(8)       ; |190| 
|| [!A0]   MVK     .L1     0xfffffffb,A12    ; |197| 

   [ A0]   CALL    .S2     B4                ; |190| 
           NOP             4
           ; BRANCHCC OCCURS {L54}           ; |190| 
DW$L$_mdCreateChan$15$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$16$B:
;** 190	-----------------------    U$57[3] = T$5 = EDMA_allocTable((-1));
;** 190	-----------------------    if ( !T$5 ) goto g13;

           MVK     .L1     0xffffffff,A4     ; |190| 
||         ADDKPC  .S2     RL23,B3,0         ; |190| 

RL23:      ; CALL OCCURS {_EDMA_allocTable}  ; |190| 
DW$L$_mdCreateChan$16$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$17$B:

           MVKL    .S2     _EDMA_intAlloc,B4 ; |190| 
||         MV      .L1     A4,A0             ; |190| 

   [!A0]   B       .S1     L54               ; |190| 
||         MVKH    .S2     _EDMA_intAlloc,B4 ; |190| 
|| [ A0]   LDW     .D1T1   *A13,A4           ; |190| 
|| [!A0]   MVK     .L1     0xfffffffb,A12    ; |197| 

   [ A0]   CALL    .S2     B4                ; |190| 
||         STW     .D1T1   A0,*+A10(12)      ; |190| 

           NOP             4
           ; BRANCHCC OCCURS {L54}           ; |190| 
DW$L$_mdCreateChan$17$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$18$B:
;** 190	-----------------------    *((int *)U$44+88) = T$6 = EDMA_intAlloc((int)*U$44);
;** 190	-----------------------    if ( T$6 != (-1) ) goto g14;
           ADDKPC  .S2     RL24,B3,0         ; |190| 
RL24:      ; CALL OCCURS {_EDMA_intAlloc}    ; |190| 
DW$L$_mdCreateChan$18$E:
;** --------------------------------------------------------------------------*
DW$L$_mdCreateChan$19$B:

           CMPEQ   .L1     A4,-1,A0          ; |190| 
||         STW     .D1T1   A4,*+A13(88)      ; |190| 

   [!A0]   ADD     .S1     1,A15,A15         ; |188| 
|| [!A0]   CMPEQ   .L1     A12,0,A5          ; |188| 
||         MV      .D1     A0,A1             ; guard predicate rewrite
|| [!A0]   B       .S2     L55               ; |190| 

           CMPLT   .L1     A15,3,A3          ; |188| 
|| [ A0]   MVK     .S1     0xfffffffb,A12    ; |197| 

           AND     .L1     A5,A3,A0          ; |188| 
   [ A1]   ZERO    .L1     A0                ; |188| nullify predicate
   [ A0]   BNOP    .S1     L53,1             ; |188| 
           ; BRANCHCC OCCURS {L55}           ; |190| 
DW$L$_mdCreateChan$19$E:
;** --------------------------------------------------------------------------*
L54:    
DW$L$_mdCreateChan$20$B:
;**	-----------------------g13:
;** 197	-----------------------    retVal = (-5);

           ADD     .S1     1,A15,A15         ; |188| 
||         CMPEQ   .L1     A12,0,A5          ; |188| 

           CMPLT   .L1     A15,3,A3          ; |188| 
           AND     .L1     A5,A3,A0          ; |188| 
   [ A0]   BNOP    .S1     L53,1             ; |188| 
DW$L$_mdCreateChan$20$E:
;** --------------------------------------------------------------------------*
L55:    
DW$L$_mdCreateChan$21$B:
;**	-----------------------g14:
;** 188	-----------------------    U$91 = retVal == 0;
;** 188	-----------------------    if ( ((++j) < 3)&U$91 ) goto g7;
;** 204	-----------------------    if ( !((chanParams != (void *)K$17)&U$91) ) goto g17;

   [ A0]   MVKL    .S2     _EDMA_open,B5     ; |190| 
|| [ A0]   LDW     .D1T1   *++A13,A4         ; |190| 
|| [!A0]   CMPEQ   .L2     B10,B12,B0        ; |204| 
|| [!A0]   ZERO    .L1     A3                ; |204| 

   [ A0]   MVKH    .S2     _EDMA_open,B5     ; |190| 
   [ A0]   CALL    .S2     B5                ; |190| 
	.dwpsn	"vportdis.c",200,0
           NOP             1
           ; BRANCHCC OCCURS {L53}           ; |188| 
DW$L$_mdCreateChan$21$E:
;** --------------------------------------------------------------------------*

   [!B0]   MVK     .L1     0x1,A3            ; |204| 
||         MVKL    .S2     0x10000003,B4     ; |205| 
||         MV      .S1X    B10,A6            ; |205| 
||         MV      .D1     A11,A4            ; |205| 

           AND     .L1     A5,A3,A0          ; |204| 
||         MVKH    .S2     0x10000003,B4     ; |205| 

   [!A0]   B       .S1     L56               ; |204| 

   [ A0]   CALL    .S1     _mdControlChan    ; |205| 
|| [!A0]   MV      .L1     A12,A0

           NOP             4
           ; BRANCHCC OCCURS {L56}           ; |204| 
;** --------------------------------------------------------------------------*
;** 205	-----------------------    retVal = mdControlChan((void *)chan, 0x10000003u, chanParams);
           ADDKPC  .S2     RL25,B3,0         ; |205| 
RL25:      ; CALL OCCURS {_mdControlChan}    ; |205| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A12            ; |205| 
           MV      .L1     A12,A0
;** --------------------------------------------------------------------------*
L56:    
;**	-----------------------g17:
;** 207	-----------------------    if ( retVal ) goto g19;
;** 209	-----------------------    *chanp = (void *)chan;
;** 210	-----------------------    return retVal;

   [!A0]   B       .S2     L59               ; |210| 
|| [!A0]   LDW     .D2T2   *+SP(28),B3       ; |217| 
|| [!A0]   MV      .L1X    SP,A31            ; |217| 
||         MV      .S1     A11,A4            ; |212| 
||         MV      .D1     A12,A3

   [ A0]   CALL    .S1     _mdDeleteChan     ; |212| 
|| [!A0]   STW     .D1T1   A11,*A14          ; |209| 
|| [!A0]   LDDW    .D2T2   *+SP(32),B11:B10  ; |217| 
|| [!A0]   MV      .L1     A3,A4             ; |216| 

   [!A0]   LDDW    .D1T1   *+A31(8),A11:A10  ; |217| 
|| [!A0]   LDDW    .D2T2   *+SP(40),B13:B12  ; |217| 

   [!A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |217| 
   [!A0]   LDW     .D1T1   *+A31(24),A14     ; |217| 

   [!A0]   RET     .S2     B3                ; |217| 
|| [!A0]   LDW     .D2T1   *++SP(48),A15     ; |217| 

           ; BRANCHCC OCCURS {L59}           ; |210| 
;** --------------------------------------------------------------------------*
;**	-----------------------g19:
;** 212	-----------------------    mdDeleteChan((void *)chan);
;** 213	-----------------------    *chanp = (void *)K$17;
           ADDKPC  .S2     RL26,B3,0         ; |212| 
RL26:      ; CALL OCCURS {_mdDeleteChan}     ; |212| 
;** --------------------------------------------------------------------------*
           STW     .D1T2   B12,*A14          ; |213| 
;** --------------------------------------------------------------------------*
L57:    
;**	-----------------------g20:
;** 216	-----------------------    return retVal;
           MV      .L1     A12,A3            ; |216| 
;** --------------------------------------------------------------------------*
L58:    
           LDW     .D2T2   *+SP(28),B3       ; |217| 
           MV      .L1X    SP,A31            ; |217| 
           LDW     .D1T1   *+A31(24),A14     ; |217| 

           LDDW    .D1T1   *+A31(16),A13:A12 ; |217| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |217| 

           LDDW    .D1T1   *+A31(8),A11:A10  ; |217| 
||         LDDW    .D2T2   *+SP(40),B13:B12  ; |217| 

           RET     .S2     B3                ; |217| 
||         LDW     .D2T1   *++SP(48),A15     ; |217| 
||         MV      .L1     A3,A4             ; |216| 

;** --------------------------------------------------------------------------*
L59:    
	.dwpsn	"vportdis.c",217,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |217| 

DW$108	.dwtag  DW_TAG_loop
	.dwattr DW$108, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\vport-v2\vportdis.asm:L53:1:1297920436")
	.dwattr DW$108, DW_AT_begin_file("vportdis.c")
	.dwattr DW$108, DW_AT_begin_line(0xbc)
	.dwattr DW$108, DW_AT_end_line(0xc8)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_mdCreateChan$8$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_mdCreateChan$8$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_mdCreateChan$9$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_mdCreateChan$9$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_mdCreateChan$10$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_mdCreateChan$10$E)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_mdCreateChan$11$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_mdCreateChan$11$E)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$_mdCreateChan$12$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$_mdCreateChan$12$E)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_mdCreateChan$13$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_mdCreateChan$13$E)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$_mdCreateChan$14$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$_mdCreateChan$14$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_mdCreateChan$15$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_mdCreateChan$15$E)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_mdCreateChan$16$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_mdCreateChan$16$E)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_mdCreateChan$17$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_mdCreateChan$17$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_mdCreateChan$18$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_mdCreateChan$18$E)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_mdCreateChan$19$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_mdCreateChan$19$E)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_mdCreateChan$20$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_mdCreateChan$20$E)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_mdCreateChan$21$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_mdCreateChan$21$E)
	.dwendtag DW$108

	.dwattr DW$100, DW_AT_end_file("vportdis.c")
	.dwattr DW$100, DW_AT_end_line(0xd9)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendtag DW$100

	.sect	".text"

DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$123, DW_AT_low_pc(_mdControlChan)
	.dwattr DW$123, DW_AT_high_pc(0x00)
	.dwattr DW$123, DW_AT_begin_file("vportdis.c")
	.dwattr DW$123, DW_AT_begin_line(0x75)
	.dwattr DW$123, DW_AT_begin_column(0x0c)
	.dwattr DW$123, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$123, DW_AT_skeletal(0x01)
	.dwpsn	"vportdis.c",118,1

;******************************************************************************
;* FUNCTION NAME: _mdControlChan                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                  *
;******************************************************************************
_mdControlChan:
;** --------------------------------------------------------------------------*
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$124, DW_AT_type(*DW$T$24)
	.dwattr DW$124, DW_AT_location[DW_OP_reg4]
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$125, DW_AT_type(*DW$T$25)
	.dwattr DW$125, DW_AT_location[DW_OP_reg20]
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$126, DW_AT_type(*DW$T$24)
	.dwattr DW$126, DW_AT_location[DW_OP_reg6]
;** 120	-----------------------    chan = (struct $$fake2 *)chanp;
;** 123	-----------------------    switch ( cmd ) {case 0x10000002u: goto g15;, case 0x10000003u: goto g8;, case 0x10000004u: goto g2;, case 0x10000005u: goto g3;, case 0x10000006u: goto g16;, case 0x10000007u: goto g4;, DEFAULT goto g5};

           MVKL    .S1     0x10000005,A3     ; |123| 
||         STW     .D2T1   A11,*SP--(16)     ; |118| 
||         MV      .L2     B4,B6             ; |118| 

           MVKH    .S1     0x10000005,A3     ; |123| 
||         STW     .D2T1   A10,*+SP(8)       ; |118| 
||         MV      .L1     A4,A10            ; |118| 

           MVKL    .S1     0x10000005,A7     ; |123| 
||         STW     .D2T2   B13,*+SP(12)      ; |118| 
||         MV      .L2     B3,B13            ; |118| 

           CMPGT   .L2X    B4,A3,B0          ; |123| 
||         MVKH    .S1     0x10000005,A7     ; |123| 

   [ B0]   B       .S2     L60               ; |123| 
|| [!B0]   MVKL    .S1     0x10000002,A3     ; |123| 

           MV      .L1X    B0,A0             ; guard predicate rewrite
||         CMPEQ   .L2X    B4,A7,B2          ; |123| 
||         MVKL    .S1     0x10000006,A5     ; |123| 

   [ A0]   ZERO    .L2     B2                ; |817| nullify predicate
|| [!B0]   MVKH    .S1     0x10000002,A3     ; |123| 
|| [!A0]   MVK     .S2     516,B5            ; |817| 

           MVKH    .S1     0x10000006,A5     ; |123| 

   [ B2]   B       .S1     L62               ; |123| 
|| [!B0]   CMPEQ   .L2X    B6,A3,B0          ; |123| 
|| [!A0]   ZERO    .L1     A3                ; |818| 

           CMPEQ   .L2X    B4,A5,B1          ; |123| 
           ; BRANCHCC OCCURS {L60}           ; |123| 
;** --------------------------------------------------------------------------*

   [!B2]   MVKL    .S1     0x10000003,A3     ; |123| 
|| [ B2]   ZERO    .L2     B0                ; |540| nullify predicate
|| [!B2]   MVKL    .S2     0x8000,B5         ; |533| 
|| [!B2]   ZERO    .D2     B8                ; |540| 
|| [ B2]   LDW     .D1T1   *+A10(12),A4      ; |817| 

   [ B0]   B       .S2     L71               ; |123| 
|| [!B2]   MVKH    .S1     0x10000003,A3     ; |123| 

   [!B2]   MVKH    .S2     0x8000,B5         ; |533| 
|| [!B2]   MVK     .S1     0xffffffc0,A8     ; |537| 

   [!B2]   CMPEQ   .L2X    B6,A3,B1          ; |123| 
|| [!B2]   MVK     .S1     45,A3             ; |550| 
|| [!B2]   MVKH    .S2     0x80000000,B8     ; |540| 

           ; BRANCHCC OCCURS {L62}           ; |123| 
;** --------------------------------------------------------------------------*

           MV      .L2     B0,B2             ; guard predicate rewrite
|| [!B0]   MVKL    .S1     0x10000004,A3     ; |123| 
||         MVK     .S2     48,B7             ; |533| 
|| [!B0]   MV      .L1     A6,A11            ; |276| 
|| [ B0]   LDW     .D1T1   *+A10(12),A4      ; |529| 

   [ B2]   ZERO    .L2     B1                ; |123| nullify predicate
|| [!B0]   MVKH    .S1     0x10000004,A3     ; |123| 
||         MVK     .S2     0x40,B9           ; |540| 

   [ B1]   B       .S2     L66               ; |123| 
||         MVK     .S1     260,A7            ; |529| 

           ; BRANCHCC OCCURS {L71}           ; |123| 
;** --------------------------------------------------------------------------*

           CMPEQ   .L2X    B6,A3,B0          ; |123| 
|| [ B1]   LDW     .D1T1   *A10,A3           ; |280| 

   [ B1]   ZERO    .L2     B0                ; nullify predicate
   [ B0]   BNOP    .S1     L61,2             ; |123| 
           ; BRANCHCC OCCURS {L66}           ; |123| 
;** --------------------------------------------------------------------------*
   [!B0]   B       .S1     L65               ; |123| 
   [ B0]   CALL    .S1     __displayStart    ; |125| 
           NOP             1
           ; BRANCHCC OCCURS {L61}           ; |123| 
;** --------------------------------------------------------------------------*

           MVK     .S1     45,A3             ; |144| 
||         MVK     .L1     -1,A31            ; |144| 

           LDW     .D1T1   *+A4[A3],A5       ; |144| 
           NOP             1
           ; BRANCH OCCURS {L65}             ; |123| 
;** --------------------------------------------------------------------------*
L60:    

   [ B1]   B       .S2     L72               ; |123| 
||         MVKL    .S1     0x10000007,A3     ; |123| 

           MVKH    .S1     0x10000007,A3     ; |123| 
           NOP             1
           CMPEQ   .L2X    B6,A3,B0          ; |123| 
   [ B1]   ZERO    .L2     B0                ; nullify predicate
   [ B0]   B       .S1     L63               ; |123| 
           ; BRANCHCC OCCURS {L72}           ; |123| 
;** --------------------------------------------------------------------------*
   [!B0]   B       .S1     L64               ; |123| 
   [ B0]   CALL    .S1     __dundRecover     ; |138| 
           NOP             3
           ; BRANCHCC OCCURS {L63}           ; |123| 
;** --------------------------------------------------------------------------*
           MVK     .S1     45,A3             ; |144| 
           ; BRANCH OCCURS {L64}             ; |123| 
;** --------------------------------------------------------------------------*
L61:    
;**	-----------------------g2:
;** 125	-----------------------    retVal = _displayStart(chanp);
;** 126	-----------------------    return retVal;
           ADDKPC  .S2     RL27,B3,3         ; |125| 
RL27:      ; CALL OCCURS {__displayStart}    ; |125| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A10       ; |152| 
||         MV      .L2     B13,B3            ; |152| 

           RET     .S2     B3                ; |152| 
||         LDW     .D2T2   *+SP(12),B13      ; |152| 

           LDW     .D2T1   *++SP(16),A11     ; |152| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |152| 
;** --------------------------------------------------------------------------*
L62:    
;**	-----------------------g3:
;** 817	-----------------------    *((volatile int *)(*(struct $$fake2 *)chanp).base+516) &= 0xffff7fff;  // [33]
;** 818	-----------------------    return 0;  // [33]
           LDW     .D2T2   *+SP(12),B13      ; |152| 

           ADD     .L2X    B5,A4,B4          ; |817| 
||         LDW     .D2T1   *+SP(8),A10       ; |152| 
||         MV      .L1     A3,A4             ; |151| 

           LDW     .D2T2   *B4,B5            ; |817| 
           NOP             4
           CLR     .S2     B5,15,15,B5       ; |817| 

           RET     .S2     B3                ; |152| 
||         STW     .D2T2   B5,*B4            ; |817| 

           LDW     .D2T1   *++SP(16),A11     ; |152| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |152| 
;** --------------------------------------------------------------------------*
L63:    
;**	-----------------------g4:
;** 138	-----------------------    retVal = _dundRecover(chanp);
;** 139	-----------------------    return retVal;
           ADDKPC  .S2     RL28,B3,1         ; |138| 
RL28:      ; CALL OCCURS {__dundRecover}     ; |138| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A10       ; |152| 
||         MV      .L2     B13,B3            ; |152| 

           RET     .S2     B3                ; |152| 
||         LDW     .D2T2   *+SP(12),B13      ; |152| 

           LDW     .D2T1   *++SP(16),A11     ; |152| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |152| 
;** --------------------------------------------------------------------------*
L64:    
           LDW     .D1T1   *+A4[A3],A5       ; |144| 
           MVK     .L1     -1,A31            ; |144| 
;** --------------------------------------------------------------------------*
L65:    
;**	-----------------------g5:
;** 144	-----------------------    C$3 = (*chan).edcFxns;
;** 144	-----------------------    if ( (void *)C$3 == (void *)0xffffffffu ) goto g7;

           ZERO    .L2     B5                ; |145| 
||         MVK     .S1     46,A7             ; |145| 

           MVKH    .S2     0x80000000,B5     ; |145| 
           ADD     .L2     B5,B4,B4          ; |145| 
           CMPEQ   .L1     A5,A31,A0         ; |144| 

   [ A0]   B       .S1     L74               ; |144| 
||         MVK     .L1     0xfffffff7,A3     ; |148| 
|| [!A0]   LDW     .D1T1   *+A5(8),A3        ; |145| 
|| [ A0]   LDW     .D2T2   *+SP(12),B13      ; |152| 

   [ A0]   LDW     .D2T1   *+SP(8),A10       ; |152| 
|| [ A0]   MV      .L1     A3,A4             ; |151| 

   [!A0]   LDW     .D1T1   *+A4[A7],A4       ; |145| 
|| [ A0]   RET     .S2     B3                ; |152| 

   [ A0]   LDW     .D2T1   *++SP(16),A11     ; |152| 
           NOP             1
   [!A0]   CALL    .S2X    A3                ; |145| 
           ; BRANCHCC OCCURS {L74}           ; |144| 
;** --------------------------------------------------------------------------*
;** 145	-----------------------    retVal = (*(*C$3).ctrl)((*chan).edcHandle, cmd+0x80000000u, (int)args);
;** 147	-----------------------    return retVal;
;**	-----------------------g7:
;** 148	-----------------------    return (-9);
           ADDKPC  .S2     RL29,B3,4         ; |145| 
RL29:      ; CALL OCCURS {A3}                ; |145| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A10       ; |152| 
||         MV      .L2     B13,B3            ; |152| 

           RET     .S2     B3                ; |152| 
||         LDW     .D2T2   *+SP(12),B13      ; |152| 

           LDW     .D2T1   *++SP(16),A11     ; |152| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |152| 
;** --------------------------------------------------------------------------*
L66:    
;**	-----------------------g8:
;** 275	-----------------------    chan = (struct $$fake2 *)chanp;  // [28]
;** 276	-----------------------    params = (struct $$fake1 *)args;  // [28]
;** 280	-----------------------    if ( !((*chan).status&2u) ) goto g10;  // [28]
;** 287	-----------------------    return (-12);  // [28]

           MV      .L1     A11,A5            ; |281| 
||         AND     .S1     2,A3,A0           ; |280| 
||         MVK     .D1     0xfffffff4,A3     ; |287| 

   [ A0]   BNOP    .S1     L73,4             ; |287| 
|| [!A0]   LDW     .D1T1   *+A5(4),A3        ; |892| 
||         MV      .L1     A0,A1             ; guard predicate rewrite

   [!A1]   CMPEQ   .L2X    A3,1,B0           ; |892| 
           ; BRANCHCC OCCURS {L73}           ; |287| 
;** --------------------------------------------------------------------------*
;**	-----------------------g10:
;** 281	-----------------------    params = params;  // [28]
;** 892	-----------------------    switch ( (*params).fldOp ) {case 1: goto g12;, case 2: goto g13;, case 4: goto g13;, case 5: goto g12;, DEFAULT goto g11};  // [35]

   [ B0]   B       .S1     L67               ; |892| 
||         CMPEQ   .L1     A3,2,A0           ; |892| 

   [ B0]   ZERO    .S1     A0                ; |892| nullify predicate
|| [!B0]   CMPEQ   .L1     A3,4,A1           ; |892| 

   [ A0]   BNOP    .S1     L68,3             ; |892| 
           ; BRANCHCC OCCURS {L67}           ; |892| 
;** --------------------------------------------------------------------------*
           NOP             2
           ; BRANCHCC OCCURS {L68}           ; |892| 
;** --------------------------------------------------------------------------*

   [ A1]   B       .S1     L68               ; |892| 
||         CMPEQ   .L1     A3,5,A0           ; |892| 
|| [!A1]   MVK     .D1     0xffffffff,A3     ; |891| 

   [ A1]   MVK     .L1     0x1,A0            ; |891| nullify predicate
   [!A0]   BNOP    .S1     L70,3
           ; BRANCHCC OCCURS {L68}           ; |892| 
;** --------------------------------------------------------------------------*
;**	-----------------------g11:
;** 891	-----------------------    lastActiveLine = (-1);  // [35]
;**  	-----------------------    goto g14;
   [!A0]   CALL    .S1     __configRegs      ; |283| 
           NOP             1
           ; BRANCHCC OCCURS {L70} 
;** --------------------------------------------------------------------------*
L67:    
;**	-----------------------g12:
;** 902	-----------------------    lastActiveLine = (*(struct $$fake1 *)args).vBlnkYStopFld1+(*(struct $$fake1 *)args).imgVOffsetFld1+(*(struct $$fake1 *)args).imgVSizeFld1;  // [35]
;** 905	-----------------------    goto g14;  // [35]

           LDH     .D1T1   *+A6(46),A3       ; |902| 
||         MVK     .S1     35,A5             ; |902| 

           LDHU    .D1T1   *+A6[A5],A7       ; |902| 

           BNOP    .S1     L69,3             ; |905| 
||         LDHU    .D1T1   *+A6(50),A31      ; |902| 

           ADD     .L1     A3,A7,A3          ; |902| 
           ADD     .L1     A31,A3,A3         ; |902| 
           ; BRANCH OCCURS {L69}             ; |905| 
;** --------------------------------------------------------------------------*
L68:    
;**	-----------------------g13:
;** 895	-----------------------    lastActiveLine = (*params).vBlnkYStopFld2+(*params).imgVOffsetFld2+(*params).imgVSizeFld2;  // [35]

           LDH     .D1T1   *+A5(54),A6       ; |895| 
||         MVK     .S1     39,A3             ; |895| 

           LDHU    .D1T1   *+A5[A3],A3       ; |895| 
           LDHU    .D1T1   *+A5(58),A31      ; |895| 
           NOP             3
           ADD     .L1     A6,A3,A3          ; |895| 
           ADD     .L1     A31,A3,A3         ; |895| 
;** --------------------------------------------------------------------------*
L69:    
           CALL    .S1     __configRegs      ; |283| 
           NOP             1
;** --------------------------------------------------------------------------*
L70:    
;**	-----------------------g14:
;** 907	-----------------------    (*chan).lastLineNum = lastActiveLine;  // [35]
;** 283	-----------------------    _configRegs(chanp, params);  // [28]
;** 285	-----------------------    retVal = _configEDMA(chanp, params);  // [28]
;** 286	-----------------------    return retVal;  // [28]
           MV      .L2X    A11,B4            ; |283| 
           ADDKPC  .S2     RL30,B3,0         ; |283| 
           MVK     .S1     51,A5             ; |907| 
           STW     .D1T1   A3,*+A10[A5]      ; |907| 
RL30:      ; CALL OCCURS {__configRegs}      ; |283| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __configEDMA      ; |285| 
           ADDKPC  .S2     RL31,B3,2         ; |285| 
           MV      .L2X    A11,B4            ; |285| 
           MV      .L1     A10,A4            ; |285| 
RL31:      ; CALL OCCURS {__configEDMA}      ; |285| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A10       ; |152| 
||         MV      .L2     B13,B3            ; |152| 

           RET     .S2     B3                ; |152| 
||         LDW     .D2T2   *+SP(12),B13      ; |152| 

           LDW     .D2T1   *++SP(16),A11     ; |152| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |152| 
;** --------------------------------------------------------------------------*
L71:    
;**	-----------------------g15:
;** 529	-----------------------    C$2 = (*(struct $$fake2 *)chanp).base;  // [30]
;** 529	-----------------------    base = (volatile int *)(C$2+260);  // [30]
;** 533	-----------------------    *((volatile int *)C$2+192) = 32768;  // [30]
;** 537	-----------------------    base[(Q$2 = (-64))] |= 4;  // [30]
;** 540	-----------------------    base[(Q$1 = 64)] = (-2147483648);  // [30]
;** 545	-----------------------    base[-17] = (((_extu((unsigned)(*(struct _VPORTDIS_PortParams *)args).vclk1Polarity, 31u, 31u)*2|_extu((*(struct _VPORTDIS_PortParams *)args).vc3Polarity, 31u, 31u))*2|_extu((*(struct _VPORTDIS_PortParams *)args).vc2Polarity, 31u, 31u))*2|_extu((*(struct _VPORTDIS_PortParams *)args).vc1Polarity, 31u, 31u))<<4|2;  // [30]
;** 549	-----------------------    base[-17] |= 0x4000;  // [30]
;** 550	-----------------------    (*(struct $$fake2 *)chanp).edcFxns = *((struct _VPORTDIS_PortParams *)args+20);  // [30]
           NOP             2

           ADD     .L1     A7,A4,A5          ; |529| 
||         MV      .L2X    A4,B4             ; |529| Define a twin register

           ADDAW   .D1     A5,A8,A8          ; |537| 
||         ADD     .L2X    A7,B4,B4          ; |529| Define a twin register
||         STW     .D2T2   B5,*+B4[B7]       ; |533| 

           LDW     .D1T1   *A8,A4            ; |537| 
           NOP             4
           OR      .L1     4,A4,A4           ; |537| 

           STW     .D2T2   B8,*+B4[B9]       ; |540| 
||         STW     .D1T1   A4,*A8            ; |537| 

           LDW     .D1T1   *+A6(4),A4        ; |545| 
           LDW     .D1T2   *+A6(16),B4       ; |545| 
           LDW     .D1T2   *+A6(12),B5       ; |545| 
           LDW     .D1T2   *+A6(8),B6        ; |545| 
           NOP             1
           EXTU    .S1     A4,31,30,A4       ; |545| 
           EXTU    .S2     B4,31,31,B4       ; |545| 

           EXTU    .S2     B5,31,31,B5       ; |545| 
||         OR      .L2X    B4,A4,B4          ; |545| 

           EXTU    .S2     B6,31,31,B31      ; |545| 
||         ADD     .L2     B4,B4,B4          ; |545| 

           OR      .L2     B5,B4,B4          ; |545| 
           ADD     .L2     B4,B4,B4          ; |545| 
           OR      .L2     B31,B4,B4         ; |545| 
           SHL     .S2     B4,4,B4           ; |545| 
           OR      .L2     2,B4,B4           ; |545| 
           STW     .D1T2   B4,*-A5(68)       ; |545| 
           LDW     .D1T1   *-A5(68),A4       ; |549| 
           NOP             4
           SET     .S1     A4,14,14,A4       ; |549| 
           STW     .D1T1   A4,*-A5(68)       ; |549| 
           LDW     .D1T1   *+A6(20),A4       ; |550| 
           NOP             4
           STW     .D1T1   A4,*+A10[A3]      ; |550| 
;** --------------------------------------------------------------------------*
L72:    
;**	-----------------------g16:
;** 151	-----------------------    return 0;
           ZERO    .L1     A3                ; |151| 
;** --------------------------------------------------------------------------*
L73:    
           LDW     .D2T1   *+SP(8),A10       ; |152| 

           RET     .S2     B3                ; |152| 
||         LDW     .D2T2   *+SP(12),B13      ; |152| 

           LDW     .D2T1   *++SP(16),A11     ; |152| 
           MV      .L1     A3,A4             ; |151| 
           NOP             1
;** --------------------------------------------------------------------------*
L74:    
	.dwpsn	"vportdis.c",152,1
           NOP             2
           ; BRANCH OCCURS {B3}              ; |152| 
	.dwattr DW$123, DW_AT_end_file("vportdis.c")
	.dwattr DW$123, DW_AT_end_line(0x98)
	.dwattr DW$123, DW_AT_end_column(0x01)
	.dwendtag DW$123

	.sect	".text"

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$127, DW_AT_low_pc(_mdDeleteChan)
	.dwattr DW$127, DW_AT_high_pc(0x00)
	.dwattr DW$127, DW_AT_begin_file("vportdis.c")
	.dwattr DW$127, DW_AT_begin_line(0xe0)
	.dwattr DW$127, DW_AT_begin_column(0x0d)
	.dwattr DW$127, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr DW$127, DW_AT_skeletal(0x01)
	.dwpsn	"vportdis.c",225,1

;******************************************************************************
;* FUNCTION NAME: _mdDeleteChan                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,*
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,*
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 36 Save = 36 byte                  *
;******************************************************************************
_mdDeleteChan:
;** --------------------------------------------------------------------------*
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanp"), DW_AT_symbol_name("_chanp")
	.dwattr DW$128, DW_AT_type(*DW$T$24)
	.dwattr DW$128, DW_AT_location[DW_OP_reg4]
;** 226	-----------------------    chan = (struct $$fake2 *)chanp;
;** 230	-----------------------    if ( !((*chan).status&1u) ) goto g12;

           MV      .L1X    SP,A31            ; |225| 
||         STW     .D2T1   A15,*SP--(40)     ; |225| 
||         MVK     .L2     0x3,B5
||         MVKL    .S2     0x10000005,B4     ; |232| 
||         ZERO    .S1     A6                ; |232| 

           STDW    .D1T1   A13:A12,*-A31(24)
||         MV      .L1     A4,A12            ; |225| 
||         STW     .D2T2   B13,*+SP(28)
||         MVK     .S1     0xffffffff,A13
||         MVKH    .S2     0x10000005,B4     ; |232| 
||         MV      .L2     B3,B13

           LDW     .D1T1   *A12,A3           ; |230| 
||         MV      .L1X    B5,A15
||         STDW    .D2T2   B11:B10,*+SP(32)
||         MVK     .L2     0xfffffffe,B11
||         MVK     .S2     0xffffffe0,B10

           STW     .D1T1   A14,*-A31(16)

           MVK     .S1     0x20,A14
||         ZERO    .L2     B6                ; |231| 

           STDW    .D2T1   A11:A10,*+SP(8)
||         ADDAD   .D1     A4,5,A11

           ADDAD   .D1     A4,7,A10
           AND     .L1     1,A3,A0           ; |230| 
   [!A0]   B       .S1     L76               ; |230| 
   [ A0]   CALL    .S1     _mdControlChan    ; |232| 
           NOP             4
           ; BRANCHCC OCCURS {L76}           ; |230| 
;** --------------------------------------------------------------------------*
;** 231	-----------------------    (*chan).status = 0u;
;** 232	-----------------------    mdControlChan(chanp, 0x10000005u, NULL);
;**  	-----------------------    K$34 = 0xffffffffu;
;**  	-----------------------    K$38 = (-32);
;**  	-----------------------    U$17 = (unsigned * const)chanp+40;
;**  	-----------------------    K$24 = 0xfffffffeu;
;**  	-----------------------    K$28 = 32;
;**  	-----------------------    U$53 = (unsigned * const)chanp+56;
;**  	-----------------------    L$1 = 3;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwpsn	"vportdis.c",233,0

           STW     .D1T2   B6,*A12           ; |231| 
||         ADDKPC  .S2     RL32,B3,0         ; |232| 

RL32:      ; CALL OCCURS {_mdControlChan}    ; |232| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
L75:    
DW$L$_mdDeleteChan$3$B:
;**	-----------------------g3:
;** 354	-----------------------    gie = CSR&1u;  // [2]
;** 355	-----------------------    a$1 = CSR&K$24;  // [2]
;** 355	-----------------------    CSR = a$1;  // [2]
;** 356	-----------------------    gie = gie;  // [2]
;** 356	-----------------------    U$27 = C$5 = _extu(*(++U$17), 8u, 24u);  // [2]
;** 356	-----------------------    if ( (int)C$5 < K$28 ) goto g5;  // [2]
;** 566	-----------------------    *(volatile unsigned *)0x1a0ffb4u = *(volatile unsigned *)0x1a0ffb4u&(1u<<(int)C$5+K$38^K$34);  // [11]
;**  	-----------------------    goto g6;
;**	-----------------------g5:
;** 565	-----------------------    *(volatile unsigned *)0x1a0fff4u = *(volatile unsigned *)0x1a0fff4u&(1u<<U$27^K$34);  // [11]
;**	-----------------------g6:
;** 360	-----------------------    a$2 = CSR&K$24|gie&1u;  // [3]
;** 360	-----------------------    CSR = a$2;  // [3]
;** 618	-----------------------    U$27 = C$4 = _extu(*U$17, 8u, 24u);  // [12]
;** 618	-----------------------    if ( (int)C$4 < K$28 ) goto g8;  // [12]
;** 619	-----------------------    *(volatile unsigned *)0x1a0ffb8u = 1u<<(int)C$4+K$38;  // [12]
;**  	-----------------------    goto g9;
;**	-----------------------g8:
;** 618	-----------------------    *(volatile unsigned *)0x1a0fff8u = 1u<<U$27;  // [12]
;**	-----------------------g9:
;** 236	-----------------------    EDMA_close(*U$17);
;** 237	-----------------------    EDMA_freeTable(*U$53);
;** 238	-----------------------    EDMA_freeTable(U$53[1]);
;** 239	-----------------------    EDMA_freeTable(U$53[2]);
;** 240	-----------------------    EDMA_freeTable(U$53[3]);
;** 241	-----------------------    EDMA_intFree(*((int *)U$17+60));
;** 233	-----------------------    U$53 += 4;
;** 233	-----------------------    if ( --L$1 ) goto g3;
;** 244	-----------------------    C$3 = (*chan).base;
           MVC     .S2     CSR,B4            ; |354| 

           AND     .L2     1,B4,B4           ; |354| 
||         MVC     .S2     CSR,B5            ; |355| 

           AND     .L2     B11,B5,B5         ; |355| 
           MVC     .S2     B5,CSR            ; |355| 

           LDW     .D1T1   *++A11,A3         ; |356| 
||         MVK     .L2     1,B6              ; |566| 

           NOP             4
           EXTU    .S1     A3,8,24,A3        ; |356| 
           CMPLT   .L1     A3,A14,A0         ; |356| 

   [!A0]   MVKL    .S1     0x1a0ffb4,A4      ; |566| 
|| [ A0]   MVKL    .S2     0x1a0fff4,B5      ; |565| 

   [!A0]   MVKH    .S1     0x1a0ffb4,A4      ; |566| 
|| [ A0]   MVKH    .S2     0x1a0fff4,B5      ; |565| 

           MVK     .L1     1,A4              ; |565| 
|| [ A0]   LDW     .D2T2   *B5,B7            ; |565| 
|| [!A0]   LDW     .D1T1   *A4,A3            ; |566| 
||         ADD     .L2X    B10,A3,B5         ; |566| 

   [!A0]   SHL     .S2     B6,B5,B5          ; |566| 
   [ A0]   SHL     .S1     A4,A3,A3          ; |565| 

   [!A0]   MVKL    .S2     0x1a0ffb4,B5      ; |566| 
|| [!A0]   XOR     .L1X    A13,B5,A4         ; |566| 

   [!A0]   MVKH    .S2     0x1a0ffb4,B5      ; |566| 
   [!A0]   AND     .L1     A4,A3,A3          ; |566| 

   [!A0]   STW     .D2T1   A3,*B5            ; |566| 
|| [ A0]   MVKL    .S1     0x1a0fff4,A3      ; |565| 
|| [ A0]   XOR     .L1     A13,A3,A4         ; |565| 

   [ A0]   MVKH    .S1     0x1a0fff4,A3      ; |565| 
   [ A0]   AND     .L2X    A4,B7,B5          ; |565| 

   [ A0]   STW     .D1T2   B5,*A3            ; |565| 
||         MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     B11,B5,B4         ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 

           LDW     .D1T1   *A11,A3           ; |618| 
||         MVKL    .S1     _EDMA_close,A5    ; |236| 
||         MVK     .L1     1,A6              ; |618| 

           NOP             3
           MVKH    .S1     _EDMA_close,A5    ; |236| 
           EXTU    .S1     A3,8,24,A3        ; |618| 
           CMPLT   .L1     A3,A14,A0         ; |618| 

   [ A0]   MVKL    .S2     0x1a0fff8,B4      ; |618| 
||         ADD     .L2X    B10,A3,B5         ; |619| 
|| [!A0]   MVKL    .S1     0x1a0ffb8,A4      ; |619| 

   [!A0]   SHL     .S2     B6,B5,B4          ; |619| 
|| [!A0]   MVKH    .S1     0x1a0ffb8,A4      ; |619| 

   [!A0]   STW     .D1T2   B4,*A4            ; |619| 
|| [ A0]   SHL     .S1     A6,A3,A3          ; |618| 
|| [ A0]   MVKH    .S2     0x1a0fff8,B4      ; |618| 

           CALL    .S2X    A5                ; |236| 
|| [ A0]   STW     .D2T1   A3,*B4            ; |618| 

           LDW     .D1T1   *A11,A4           ; |236| 
           ADDKPC  .S2     RL33,B3,3         ; |236| 
RL33:      ; CALL OCCURS {_EDMA_close}       ; |236| 
DW$L$_mdDeleteChan$3$E:
;** --------------------------------------------------------------------------*
DW$L$_mdDeleteChan$4$B:
           MVKL    .S1     _EDMA_freeTable,A3 ; |237| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |237| 
           LDW     .D1T1   *A10,A4           ; |237| 
           CALL    .S2X    A3                ; |237| 
           ADDKPC  .S2     RL34,B3,4         ; |237| 
RL34:      ; CALL OCCURS {_EDMA_freeTable}   ; |237| 
           MVKL    .S1     _EDMA_freeTable,A3 ; |238| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |238| 
           LDW     .D1T1   *+A10(4),A4       ; |238| 
           CALL    .S2X    A3                ; |238| 
           ADDKPC  .S2     RL35,B3,4         ; |238| 
RL35:      ; CALL OCCURS {_EDMA_freeTable}   ; |238| 
           MVKL    .S2     _EDMA_freeTable,B4 ; |239| 
           MVKH    .S2     _EDMA_freeTable,B4 ; |239| 
           CALL    .S2     B4                ; |239| 
           LDW     .D1T1   *+A10(8),A4       ; |239| 
           ADDKPC  .S2     RL36,B3,3         ; |239| 
RL36:      ; CALL OCCURS {_EDMA_freeTable}   ; |239| 
           MVKL    .S1     _EDMA_freeTable,A3 ; |240| 
           MVKH    .S1     _EDMA_freeTable,A3 ; |240| 
           LDW     .D1T1   *+A10(12),A4      ; |240| 
           CALL    .S2X    A3                ; |240| 
           ADDKPC  .S2     RL37,B3,4         ; |240| 
RL37:      ; CALL OCCURS {_EDMA_freeTable}   ; |240| 
           MVKL    .S1     _EDMA_intFree,A3  ; |241| 
           MVKH    .S1     _EDMA_intFree,A3  ; |241| 
           LDW     .D1T1   *+A11(60),A4      ; |241| 
           CALL    .S2X    A3                ; |241| 
           ADDKPC  .S2     RL38,B3,4         ; |241| 
RL38:      ; CALL OCCURS {_EDMA_intFree}     ; |241| 
DW$L$_mdDeleteChan$4$E:
;** --------------------------------------------------------------------------*
DW$L$_mdDeleteChan$5$B:

           SUB     .L1     A15,1,A0          ; |233| 
||         SUB     .D1     A15,1,A15         ; |233| 
||         ADDK    .S1     16,A10            ; |233| 

   [ A0]   BNOP    .S1     L75,4             ; |233| 
|| [!A0]   LDW     .D1T1   *+A12(12),A3      ; |244| 
|| [!A0]   MVK     .S2     516,B4            ; |246| 

	.dwpsn	"vportdis.c",242,0
   [!A0]   ADD     .L2X    B4,A3,B4          ; |246| 
           ; BRANCHCC OCCURS {L75}           ; |233| 
DW$L$_mdDeleteChan$5$E:
;** --------------------------------------------------------------------------*
;** 244	-----------------------    base = (volatile int *)(C$3+192);
;** 246	-----------------------    C$2 = (volatile int *)C$3+516;
;** 246	-----------------------    *C$2 = *C$2|0x80000000;
;** 248	-----------------------    *base = *base|0x8000;
;** 250	-----------------------    (*chan).status = 0u;
;** 252	-----------------------    C$1 = (*chan).edcFxns;
;** 252	-----------------------    if ( (void *)C$1 == (void *)K$34 ) goto g12;

           LDW     .D2T2   *B4,B5            ; |246| 
||         ADDAD   .D1     A3,24,A4          ; |244| 
||         MVK     .S1     45,A31            ; |252| 
||         ZERO    .L1     A30               ; |250| 

           NOP             4
           SET     .S2     B5,31,31,B5       ; |246| 
           STW     .D2T2   B5,*B4            ; |246| 
           LDW     .D1T1   *A4,A3            ; |248| 
           NOP             4
           SET     .S1     A3,15,15,A3       ; |248| 

           MVK     .S1     46,A4             ; |253| 
||         STW     .D1T1   A3,*A4            ; |248| 

           LDW     .D1T1   *+A12[A31],A3     ; |252| 
           NOP             3
           STW     .D1T1   A30,*A12          ; |250| 
           CMPEQ   .L1     A3,A13,A0         ; |252| 

   [ A0]   ZERO    .S1     A4                ; |257| 
|| [ A0]   LDW     .D2T2   *+SP(28),B13      ; |258| 
|| [ A0]   MV      .L2     B13,B3            ; |258| 
|| [!A0]   LDW     .D1T1   *+A3(4),A3        ; |253| 
|| [ A0]   MV      .L1X    SP,A31            ; |258| 
|| [ A0]   B       .S2     L77               ; |252| 

   [ A0]   LDDW    .D2T2   *+SP(32),B11:B10  ; |258| 
|| [ A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |258| 

   [!A0]   LDW     .D1T1   *+A12[A4],A4      ; |253| 
   [ A0]   LDW     .D1T1   *+A31(24),A14     ; |258| 

   [ A0]   RET     .S2     B3                ; |258| 
|| [ A0]   LDDW    .D2T1   *+SP(8),A11:A10   ; |258| 

   [ A0]   LDW     .D2T1   *++SP(40),A15     ; |258| 
|| [!A0]   CALL    .S2X    A3                ; |253| 

           ; BRANCHCC OCCURS {L77}           ; |252| 
;** --------------------------------------------------------------------------*
;** 253	-----------------------    (*(*C$1).close)((*chan).edcHandle);
           ADDKPC  .S2     RL39,B3,4         ; |253| 
RL39:      ; CALL OCCURS {A3}                ; |253| 
;** --------------------------------------------------------------------------*
L76:    

           LDDW    .D2T1   *+SP(8),A11:A10   ; |258| 
||         MV      .L1X    SP,A31            ; |258| 

           LDDW    .D1T1   *+A31(16),A13:A12 ; |258| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |258| 
||         MV      .L2     B13,B3            ; |258| 

           RET     .S2     B3                ; |258| 
||         LDW     .D1T1   *+A31(24),A14     ; |258| 
||         LDW     .D2T2   *+SP(28),B13      ; |258| 

           LDW     .D2T1   *++SP(40),A15     ; |258| 
||         ZERO    .L1     A4                ; |257| 

;** --------------------------------------------------------------------------*
L77:    
;**	-----------------------g12:
;** 257	-----------------------    return 0;
	.dwpsn	"vportdis.c",258,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |258| 

DW$129	.dwtag  DW_TAG_loop
	.dwattr DW$129, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\vport-v2\vportdis.asm:L75:1:1297920436")
	.dwattr DW$129, DW_AT_begin_file("vportdis.c")
	.dwattr DW$129, DW_AT_begin_line(0xe9)
	.dwattr DW$129, DW_AT_end_line(0xf2)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_mdDeleteChan$3$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_mdDeleteChan$3$E)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_mdDeleteChan$4$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_mdDeleteChan$4$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_mdDeleteChan$5$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_mdDeleteChan$5$E)
	.dwendtag DW$129

	.dwattr DW$127, DW_AT_end_file("vportdis.c")
	.dwattr DW$127, DW_AT_end_line(0x102)
	.dwattr DW$127, DW_AT_end_column(0x01)
	.dwendtag DW$127

;; Inlined function references:
;; [  1] IRQ_enable
;; [  2] IRQ_globalDisable
;; [  3] IRQ_globalRestore
;; [ 10] EDMA_enableChannel
;; [ 11] EDMA_disableChannel
;; [ 12] EDMA_clearChannel
;; [ 13] EDMA_config
;; [ 14] EDMA_qdmaConfig
;; [ 28] _configChan
;; [ 30] _configPort
;; [ 33] _displayStop
;; [ 35] _getlastActiveLine
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Assertion failed, (((chan->yPitch*chan->numLinesFld1)/(chan"
	.string	"->yThrld << 3)) *(chan->yThrld << 3) == (chan->yPitch*chan-"
	.string	">numLinesFld1)), file vportdis.c, line 719",10,0
SL2:	.string	"Assertion failed, (((chan->yPitch*chan->numLines)/(chan->yT"
	.string	"hrld << 3)) *(chan->yThrld << 3) == (chan->yPitch*chan->num"
	.string	"Lines)), file vportdis.c, line 721",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_EDMA_open
	.global	_EDMA_close
	.global	_EDMA_allocTable
	.global	_EDMA_freeTable
	.global	_EDMA_intAlloc
	.global	_EDMA_intFree
	.global	_CACHE_flush
	.global	_CACHE_clean
	.global	_DAT_open
	.global	_DAT_close
	.global	_DAT_fill
	.global	_IOM_mdNotImpl
	.global	_set_i2c_pin
	.global	_C0104_verify
	.global	__IRQ_eventTable
	.global	__abort_msg
	.global	__divi
	.global	__divu

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)
DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$T$33	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$33, DW_AT_address_class(0x20)
DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TiomCallback"), DW_AT_type(*DW$T$50)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)

DW$T$104	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$103)
	.dwendtag DW$T$104


DW$T$105	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$105


DW$T$106	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$67)
	.dwendtag DW$T$106


DW$T$108	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$108


DW$T$112	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$67)
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$T$112


DW$T$113	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$T$113


DW$T$116	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$116


DW$T$118	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$118, DW_AT_language(DW_LANG_C)
DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("Int"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)

DW$T$34	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$34


DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$37


DW$T$40	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$40


DW$T$52	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$45)
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$52


DW$T$56	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
	.dwendtag DW$T$56


DW$T$128	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)

DW$T$129	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$129, DW_AT_language(DW_LANG_C)
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$129


DW$T$132	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$131)
	.dwendtag DW$T$132


DW$T$133	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$131)
	.dwendtag DW$T$133


DW$T$135	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$134)
	.dwattr DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$135, DW_AT_byte_size(0x10)
DW$165	.dwtag  DW_TAG_subrange_type
	.dwattr DW$165, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$135


DW$T$138	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)
DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$138


DW$T$140	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$140, DW_AT_language(DW_LANG_C)
DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$140


DW$T$142	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$142, DW_AT_language(DW_LANG_C)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Handle"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)

DW$T$172	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$172, DW_AT_language(DW_LANG_C)
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$172


DW$T$173	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$173, DW_AT_language(DW_LANG_C)
DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$173


DW$T$174	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$174, DW_AT_language(DW_LANG_C)
DW$T$175	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$175, DW_AT_address_class(0x20)

DW$T$176	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$176, DW_AT_language(DW_LANG_C)
DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$175)
	.dwendtag DW$T$176


DW$T$177	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$177, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$177, DW_AT_byte_size(0x84)
DW$176	.dwtag  DW_TAG_subrange_type
	.dwattr DW$176, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$177

DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("Uns"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$T$179	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$179, DW_AT_type(*DW$T$11)
DW$T$111	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$110)
	.dwattr DW$T$111, DW_AT_address_class(0x20)
DW$T$48	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$47)
	.dwattr DW$T$48, DW_AT_address_class(0x20)
DW$T$131	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$130)
	.dwattr DW$T$131, DW_AT_address_class(0x20)
DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("String"), DW_AT_type(*DW$T$44)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$T$103	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$102)
	.dwattr DW$T$103, DW_AT_address_class(0x20)
DW$T$200	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Fxns"), DW_AT_type(*DW$T$59)
	.dwattr DW$T$200, DW_AT_language(DW_LANG_C)

DW$T$204	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$203)
	.dwattr DW$T$204, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$204, DW_AT_byte_size(0x27c)
DW$177	.dwtag  DW_TAG_subrange_type
	.dwattr DW$177, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$204

DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("CACHE_Region"), DW_AT_type(*DW$T$114)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$T$50	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$49)
	.dwattr DW$T$50, DW_AT_address_class(0x20)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x02)
DW$T$134	.dwtag  DW_TAG_const_type
	.dwattr DW$T$134, DW_AT_type(*DW$T$26)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("EDMA_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Packet"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$T$130	.dwtag  DW_TAG_typedef, DW_AT_name("VPORTDIS_Params"), DW_AT_type(*DW$T$32)
	.dwattr DW$T$130, DW_AT_language(DW_LANG_C)
DW$T$44	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$43)
	.dwattr DW$T$44, DW_AT_address_class(0x20)
DW$T$102	.dwtag  DW_TAG_const_type
	.dwattr DW$T$102, DW_AT_type(*DW$T$43)

DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_name("IOM_Fxns")
	.dwattr DW$T$59, DW_AT_byte_size(0x18)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$178, DW_AT_name("mdBindDev"), DW_AT_symbol_name("_mdBindDev")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$179, DW_AT_name("mdUnBindDev"), DW_AT_symbol_name("_mdUnBindDev")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$180, DW_AT_name("mdControlChan"), DW_AT_symbol_name("_mdControlChan")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$181, DW_AT_name("mdCreateChan"), DW_AT_symbol_name("_mdCreateChan")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$182, DW_AT_name("mdDeleteChan"), DW_AT_symbol_name("_mdDeleteChan")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$183, DW_AT_name("mdSubmitChan"), DW_AT_symbol_name("_mdSubmitChan")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59

DW$T$203	.dwtag  DW_TAG_typedef, DW_AT_name("_VPORT_ChanObj"), DW_AT_type(*DW$T$78)
	.dwattr DW$T$203, DW_AT_language(DW_LANG_C)

DW$T$114	.dwtag  DW_TAG_enumeration_type
	.dwattr DW$T$114, DW_AT_byte_size(0x04)
DW$184	.dwtag  DW_TAG_enumerator, DW_AT_name("CACHE_L2"), DW_AT_const_value(0x00)
DW$185	.dwtag  DW_TAG_enumerator, DW_AT_name("CACHE_L2ALL"), DW_AT_const_value(0x01)
DW$186	.dwtag  DW_TAG_enumerator, DW_AT_name("CACHE_L1P"), DW_AT_const_value(0x02)
DW$187	.dwtag  DW_TAG_enumerator, DW_AT_name("CACHE_L1PALL"), DW_AT_const_value(0x03)
DW$188	.dwtag  DW_TAG_enumerator, DW_AT_name("CACHE_L1D"), DW_AT_const_value(0x04)
DW$189	.dwtag  DW_TAG_enumerator, DW_AT_name("CACHE_L1DALL"), DW_AT_const_value(0x05)
	.dwendtag DW$T$114


DW$T$49	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
	.dwendtag DW$T$49

DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdBindDev"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdUnBindDev"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdDeleteChan"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdControlChan"), DW_AT_type(*DW$T$41)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdCreateChan"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdSubmitChan"), DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_byte_size(0x18)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$192, DW_AT_name("opt"), DW_AT_symbol_name("_opt")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$193, DW_AT_name("src"), DW_AT_symbol_name("_src")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$194, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$195, DW_AT_name("dst"), DW_AT_symbol_name("_dst")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$196, DW_AT_name("idx"), DW_AT_symbol_name("_idx")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$197, DW_AT_name("rld"), DW_AT_symbol_name("_rld")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Frame"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)

DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x90)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$198, DW_AT_name("dmode"), DW_AT_symbol_name("_dmode")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$199, DW_AT_name("fldOp"), DW_AT_symbol_name("_fldOp")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$200, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$201, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$202, DW_AT_name("defValEn"), DW_AT_symbol_name("_defValEn")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$203, DW_AT_name("bpk10Bit"), DW_AT_symbol_name("_bpk10Bit")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$204, DW_AT_name("vctl1Config"), DW_AT_symbol_name("_vctl1Config")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$205, DW_AT_name("vctl2Config"), DW_AT_symbol_name("_vctl2Config")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$206, DW_AT_name("vctl3Config"), DW_AT_symbol_name("_vctl3Config")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$207, DW_AT_name("extCtl"), DW_AT_symbol_name("_extCtl")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$208, DW_AT_name("frmHSize"), DW_AT_symbol_name("_frmHSize")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$209, DW_AT_name("frmVSize"), DW_AT_symbol_name("_frmVSize")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$210, DW_AT_name("imgHOffsetFld1"), DW_AT_symbol_name("_imgHOffsetFld1")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$211, DW_AT_name("imgVOffsetFld1"), DW_AT_symbol_name("_imgVOffsetFld1")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$212, DW_AT_name("imgHSizeFld1"), DW_AT_symbol_name("_imgHSizeFld1")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$213, DW_AT_name("imgVSizeFld1"), DW_AT_symbol_name("_imgVSizeFld1")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$214, DW_AT_name("imgHOffsetFld2"), DW_AT_symbol_name("_imgHOffsetFld2")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$215, DW_AT_name("imgVOffsetFld2"), DW_AT_symbol_name("_imgVOffsetFld2")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$216, DW_AT_name("imgHSizeFld2"), DW_AT_symbol_name("_imgHSizeFld2")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$217, DW_AT_name("imgVSizeFld2"), DW_AT_symbol_name("_imgVSizeFld2")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$218, DW_AT_name("hBlnkStart"), DW_AT_symbol_name("_hBlnkStart")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$219, DW_AT_name("hBlnkStop"), DW_AT_symbol_name("_hBlnkStop")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$220, DW_AT_name("vBlnkXStartFld1"), DW_AT_symbol_name("_vBlnkXStartFld1")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$221, DW_AT_name("vBlnkYStartFld1"), DW_AT_symbol_name("_vBlnkYStartFld1")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$222, DW_AT_name("vBlnkXStopFld1"), DW_AT_symbol_name("_vBlnkXStopFld1")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$223, DW_AT_name("vBlnkYStopFld1"), DW_AT_symbol_name("_vBlnkYStopFld1")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$224, DW_AT_name("vBlnkXStartFld2"), DW_AT_symbol_name("_vBlnkXStartFld2")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$225, DW_AT_name("vBlnkYStartFld2"), DW_AT_symbol_name("_vBlnkYStartFld2")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$226, DW_AT_name("vBlnkXStopFld2"), DW_AT_symbol_name("_vBlnkXStopFld2")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$227, DW_AT_name("vBlnkYStopFld2"), DW_AT_symbol_name("_vBlnkYStopFld2")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$228, DW_AT_name("xStartFld1"), DW_AT_symbol_name("_xStartFld1")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$229, DW_AT_name("yStartFld1"), DW_AT_symbol_name("_yStartFld1")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$230, DW_AT_name("xStartFld2"), DW_AT_symbol_name("_xStartFld2")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$231, DW_AT_name("yStartFld2"), DW_AT_symbol_name("_yStartFld2")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$232, DW_AT_name("hSyncStart"), DW_AT_symbol_name("_hSyncStart")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$233, DW_AT_name("hSyncStop"), DW_AT_symbol_name("_hSyncStop")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$234, DW_AT_name("vSyncXStartFld1"), DW_AT_symbol_name("_vSyncXStartFld1")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$235, DW_AT_name("vSyncYStartFld1"), DW_AT_symbol_name("_vSyncYStartFld1")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$236, DW_AT_name("vSyncXStopFld1"), DW_AT_symbol_name("_vSyncXStopFld1")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$237, DW_AT_name("vSyncYStopFld1"), DW_AT_symbol_name("_vSyncYStopFld1")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$238, DW_AT_name("vSyncXStartFld2"), DW_AT_symbol_name("_vSyncXStartFld2")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$239, DW_AT_name("vSyncYStartFld2"), DW_AT_symbol_name("_vSyncYStartFld2")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$240, DW_AT_name("vSyncXStopFld2"), DW_AT_symbol_name("_vSyncXStopFld2")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$241, DW_AT_name("vSyncYStopFld2"), DW_AT_symbol_name("_vSyncYStopFld2")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$242, DW_AT_name("yClipLow"), DW_AT_symbol_name("_yClipLow")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$243, DW_AT_name("yClipHigh"), DW_AT_symbol_name("_yClipHigh")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x6d]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$244, DW_AT_name("cClipLow"), DW_AT_symbol_name("_cClipLow")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$245, DW_AT_name("cClipHigh"), DW_AT_symbol_name("_cClipHigh")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x6f]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$246, DW_AT_name("yDefVal"), DW_AT_symbol_name("_yDefVal")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$247, DW_AT_name("cbDefVal"), DW_AT_symbol_name("_cbDefVal")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x71]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$248, DW_AT_name("crDefVal"), DW_AT_symbol_name("_crDefVal")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$249, DW_AT_name("rgbX"), DW_AT_symbol_name("_rgbX")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$250, DW_AT_name("incPix"), DW_AT_symbol_name("_incPix")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$251, DW_AT_name("thrld"), DW_AT_symbol_name("_thrld")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$252, DW_AT_name("buf_addr"), DW_AT_symbol_name("_buf_addr")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$253, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$254, DW_AT_name("edmaPri"), DW_AT_symbol_name("_edmaPri")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$255, DW_AT_name("irqId"), DW_AT_symbol_name("_irqId")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32

DW$T$43	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$43, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$43, DW_AT_byte_size(0x01)

DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$78, DW_AT_byte_size(0xd4)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$256, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$257, DW_AT_name("portNum"), DW_AT_symbol_name("_portNum")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$258, DW_AT_name("chanNum"), DW_AT_symbol_name("_chanNum")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$259, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$260, DW_AT_name("edmaChanNum"), DW_AT_symbol_name("_edmaChanNum")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$261, DW_AT_name("edmaAddr"), DW_AT_symbol_name("_edmaAddr")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$262, DW_AT_name("vIntMask"), DW_AT_symbol_name("_vIntMask")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$263, DW_AT_name("hEdma"), DW_AT_symbol_name("_hEdma")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$264, DW_AT_name("hRld"), DW_AT_symbol_name("_hRld")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$265, DW_AT_name("tcc"), DW_AT_symbol_name("_tcc")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$266, DW_AT_name("mergeFlds"), DW_AT_symbol_name("_mergeFlds")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$267, DW_AT_name("cbFxn"), DW_AT_symbol_name("_cbFxn")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$268, DW_AT_name("cbArg"), DW_AT_symbol_name("_cbArg")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$269, DW_AT_name("vIntFxn"), DW_AT_symbol_name("_vIntFxn")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$270, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$271, DW_AT_name("resmpl"), DW_AT_symbol_name("_resmpl")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$272, DW_AT_name("yPitch"), DW_AT_symbol_name("_yPitch")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$273, DW_AT_name("cPitch"), DW_AT_symbol_name("_cPitch")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$274, DW_AT_name("numLines"), DW_AT_symbol_name("_numLines")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$275, DW_AT_name("numPixels"), DW_AT_symbol_name("_numPixels")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$276, DW_AT_name("numLinesFld1"), DW_AT_symbol_name("_numLinesFld1")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$277, DW_AT_name("numFrms"), DW_AT_symbol_name("_numFrms")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$278, DW_AT_name("numEvents"), DW_AT_symbol_name("_numEvents")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$279, DW_AT_name("numEventsFld1"), DW_AT_symbol_name("_numEventsFld1")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$280, DW_AT_name("yThrld"), DW_AT_symbol_name("_yThrld")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$281, DW_AT_name("cThrld"), DW_AT_symbol_name("_cThrld")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$282, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$283, DW_AT_name("edcFxns"), DW_AT_symbol_name("_edcFxns")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$284, DW_AT_name("edcHandle"), DW_AT_symbol_name("_edcHandle")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$285, DW_AT_name("packetIOM"), DW_AT_symbol_name("_packetIOM")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$286, DW_AT_name("vIntCbArg"), DW_AT_symbol_name("_vIntCbArg")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$287, DW_AT_name("segId"), DW_AT_symbol_name("_segId")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$288, DW_AT_name("bufSz"), DW_AT_symbol_name("_bufSz")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$289, DW_AT_name("lastLineNum"), DW_AT_symbol_name("_lastLineNum")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$290, DW_AT_name("nextEDMARlds"), DW_AT_symbol_name("_nextEDMARlds")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78

DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("VPORT_IntCallBack"), DW_AT_type(*DW$T$74)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("Bool"), DW_AT_type(*DW$T$71)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("Arg"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_address_class(0x20)
DW$T$38	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$38, DW_AT_address_class(0x20)
DW$T$41	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$41, DW_AT_address_class(0x20)
DW$T$53	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$52)
	.dwattr DW$T$53, DW_AT_address_class(0x20)
DW$T$57	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$56)
	.dwattr DW$T$57, DW_AT_address_class(0x20)

DW$T$70	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$70, DW_AT_byte_size(0x0c)
DW$291	.dwtag  DW_TAG_subrange_type
	.dwattr DW$291, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$70


DW$T$68	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$68, DW_AT_byte_size(0x0c)
DW$292	.dwtag  DW_TAG_subrange_type
	.dwattr DW$292, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$68


DW$T$69	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$69, DW_AT_byte_size(0x30)
DW$293	.dwtag  DW_TAG_subrange_type
	.dwattr DW$293, DW_AT_upper_bound(0x0b)
	.dwendtag DW$T$69


DW$T$66	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$66, DW_AT_byte_size(0x0c)
DW$294	.dwtag  DW_TAG_subrange_type
	.dwattr DW$294, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$66


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("DEV_Frame")
	.dwattr DW$T$28, DW_AT_byte_size(0x20)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$295, DW_AT_name("link"), DW_AT_symbol_name("_link")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$296, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$297, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$298, DW_AT_name("misc"), DW_AT_symbol_name("_misc")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$299, DW_AT_name("arg"), DW_AT_symbol_name("_arg")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$300, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$301, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28

DW$T$77	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$76)
	.dwattr DW$T$77, DW_AT_address_class(0x20)
DW$T$74	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$73)
	.dwattr DW$T$74, DW_AT_address_class(0x20)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("MdUns"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Fxns"), DW_AT_type(*DW$T$65)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)

DW$T$73	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
DW$303	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$73


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("QUE_Elem")
	.dwattr DW$T$22, DW_AT_byte_size(0x08)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$304, DW_AT_name("next"), DW_AT_symbol_name("_next")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$305, DW_AT_name("prev"), DW_AT_symbol_name("_prev")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$21, DW_AT_address_class(0x20)

DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("EDC_Fxns")
	.dwattr DW$T$65, DW_AT_byte_size(0x0c)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$306, DW_AT_name("open"), DW_AT_symbol_name("_open")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$307, DW_AT_name("close"), DW_AT_symbol_name("_close")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$308, DW_AT_name("ctrl"), DW_AT_symbol_name("_ctrl")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65

DW$T$62	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$61)
	.dwattr DW$T$62, DW_AT_address_class(0x20)
DW$T$64	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_address_class(0x20)

DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$60)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$309	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$45)
DW$310	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$311	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$312	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$313	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$63

DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("EDC_Handle"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)

	.dwattr DW$59, DW_AT_type(*DW$T$26)
	.dwattr DW$56, DW_AT_type(*DW$T$26)
	.dwattr DW$44, DW_AT_type(*DW$T$26)
	.dwattr DW$50, DW_AT_type(*DW$T$26)
	.dwattr DW$94, DW_AT_type(*DW$T$26)
	.dwattr DW$123, DW_AT_type(*DW$T$26)
	.dwattr DW$100, DW_AT_type(*DW$T$26)
	.dwattr DW$127, DW_AT_type(*DW$T$26)
	.dwattr DW$41, DW_AT_type(*DW$T$26)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$314, DW_AT_location[DW_OP_reg0]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$315, DW_AT_location[DW_OP_reg1]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$316, DW_AT_location[DW_OP_reg2]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$317, DW_AT_location[DW_OP_reg3]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$318, DW_AT_location[DW_OP_reg4]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$319, DW_AT_location[DW_OP_reg5]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$320, DW_AT_location[DW_OP_reg6]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$321, DW_AT_location[DW_OP_reg7]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$322, DW_AT_location[DW_OP_reg8]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$323, DW_AT_location[DW_OP_reg9]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$324, DW_AT_location[DW_OP_reg10]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$325, DW_AT_location[DW_OP_reg11]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$326, DW_AT_location[DW_OP_reg12]
DW$327	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$327, DW_AT_location[DW_OP_reg13]
DW$328	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$328, DW_AT_location[DW_OP_reg14]
DW$329	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$329, DW_AT_location[DW_OP_reg15]
DW$330	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$330, DW_AT_location[DW_OP_reg16]
DW$331	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$331, DW_AT_location[DW_OP_reg17]
DW$332	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$332, DW_AT_location[DW_OP_reg18]
DW$333	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$333, DW_AT_location[DW_OP_reg19]
DW$334	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$334, DW_AT_location[DW_OP_reg20]
DW$335	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$335, DW_AT_location[DW_OP_reg21]
DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$336, DW_AT_location[DW_OP_reg22]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$337, DW_AT_location[DW_OP_reg23]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$338, DW_AT_location[DW_OP_reg24]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$339, DW_AT_location[DW_OP_reg25]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$340, DW_AT_location[DW_OP_reg26]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$341, DW_AT_location[DW_OP_reg27]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$342, DW_AT_location[DW_OP_reg28]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$343, DW_AT_location[DW_OP_reg29]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$344, DW_AT_location[DW_OP_reg30]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$345, DW_AT_location[DW_OP_reg31]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$346, DW_AT_location[DW_OP_regx 0x20]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$347, DW_AT_location[DW_OP_regx 0x21]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$348, DW_AT_location[DW_OP_regx 0x22]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$349, DW_AT_location[DW_OP_regx 0x23]
DW$350	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$350, DW_AT_location[DW_OP_regx 0x24]
DW$351	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$351, DW_AT_location[DW_OP_regx 0x25]
DW$352	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$352, DW_AT_location[DW_OP_regx 0x26]
DW$353	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$353, DW_AT_location[DW_OP_regx 0x27]
DW$354	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$354, DW_AT_location[DW_OP_regx 0x28]
DW$355	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$355, DW_AT_location[DW_OP_regx 0x29]
DW$356	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$356, DW_AT_location[DW_OP_regx 0x2a]
DW$357	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$357, DW_AT_location[DW_OP_regx 0x2b]
DW$358	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$358, DW_AT_location[DW_OP_regx 0x2c]
DW$359	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$359, DW_AT_location[DW_OP_regx 0x2d]
DW$360	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$360, DW_AT_location[DW_OP_regx 0x2e]
DW$361	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$361, DW_AT_location[DW_OP_regx 0x2f]
DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$362, DW_AT_location[DW_OP_regx 0x30]
DW$363	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$363, DW_AT_location[DW_OP_regx 0x31]
DW$364	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$364, DW_AT_location[DW_OP_regx 0x32]
DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$365, DW_AT_location[DW_OP_regx 0x33]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$366, DW_AT_location[DW_OP_regx 0x34]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$367, DW_AT_location[DW_OP_regx 0x35]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$368, DW_AT_location[DW_OP_regx 0x36]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$369, DW_AT_location[DW_OP_regx 0x37]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$370, DW_AT_location[DW_OP_regx 0x38]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$371, DW_AT_location[DW_OP_regx 0x39]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$372, DW_AT_location[DW_OP_regx 0x3a]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$373, DW_AT_location[DW_OP_regx 0x3b]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$374, DW_AT_location[DW_OP_regx 0x3c]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$375, DW_AT_location[DW_OP_regx 0x3d]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$376, DW_AT_location[DW_OP_regx 0x3e]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$377, DW_AT_location[DW_OP_regx 0x3f]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$378, DW_AT_location[DW_OP_regx 0x40]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$379, DW_AT_location[DW_OP_regx 0x41]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$380, DW_AT_location[DW_OP_regx 0x42]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$381, DW_AT_location[DW_OP_regx 0x43]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$382, DW_AT_location[DW_OP_regx 0x44]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$383, DW_AT_location[DW_OP_regx 0x45]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$384, DW_AT_location[DW_OP_regx 0x46]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$385, DW_AT_location[DW_OP_regx 0x47]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$386, DW_AT_location[DW_OP_regx 0x48]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$387, DW_AT_location[DW_OP_regx 0x49]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$388, DW_AT_location[DW_OP_regx 0x4a]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$389, DW_AT_location[DW_OP_regx 0x4b]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$390, DW_AT_location[DW_OP_regx 0x4c]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$391, DW_AT_location[DW_OP_regx 0x4d]
DW$392	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$392, DW_AT_location[DW_OP_regx 0x4e]
DW$393	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$393, DW_AT_location[DW_OP_regx 0x4f]
DW$394	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$394, DW_AT_location[DW_OP_regx 0x50]
DW$395	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$395, DW_AT_location[DW_OP_regx 0x51]
DW$396	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$396, DW_AT_location[DW_OP_regx 0x52]
DW$397	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$397, DW_AT_location[DW_OP_regx 0x53]
DW$398	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$398, DW_AT_location[DW_OP_regx 0x54]
DW$399	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$399, DW_AT_location[DW_OP_regx 0x55]
DW$400	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$400, DW_AT_location[DW_OP_regx 0x56]
DW$401	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$401, DW_AT_location[DW_OP_regx 0x57]
DW$402	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$402, DW_AT_location[DW_OP_regx 0x58]
DW$403	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$403, DW_AT_location[DW_OP_regx 0x59]
DW$404	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$404, DW_AT_location[DW_OP_regx 0x5a]
DW$405	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$405, DW_AT_location[DW_OP_regx 0x5b]
DW$406	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$406, DW_AT_location[DW_OP_regx 0x5c]
DW$407	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$407, DW_AT_location[DW_OP_regx 0x5d]
DW$408	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$408, DW_AT_location[DW_OP_regx 0x5e]
DW$409	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$409, DW_AT_location[DW_OP_regx 0x5f]
DW$410	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$410, DW_AT_location[DW_OP_regx 0x60]
DW$411	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$411, DW_AT_location[DW_OP_regx 0x61]
DW$412	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$412, DW_AT_location[DW_OP_regx 0x62]
DW$413	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$413, DW_AT_location[DW_OP_regx 0x63]
DW$414	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$414, DW_AT_location[DW_OP_regx 0x64]
DW$415	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$415, DW_AT_location[DW_OP_regx 0x65]
DW$416	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$416, DW_AT_location[DW_OP_regx 0x66]
DW$417	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$417, DW_AT_location[DW_OP_regx 0x67]
DW$418	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$418, DW_AT_location[DW_OP_regx 0x68]
DW$419	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$419, DW_AT_location[DW_OP_regx 0x69]
DW$420	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$420, DW_AT_location[DW_OP_regx 0x6a]
DW$421	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$421, DW_AT_location[DW_OP_regx 0x6b]
DW$422	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$422, DW_AT_location[DW_OP_regx 0x6c]
DW$423	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$423, DW_AT_location[DW_OP_regx 0x6d]
DW$424	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$424, DW_AT_location[DW_OP_regx 0x6e]
DW$425	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$425, DW_AT_location[DW_OP_regx 0x6f]
DW$426	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$426, DW_AT_location[DW_OP_regx 0x70]
DW$427	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$427, DW_AT_location[DW_OP_regx 0x71]
DW$428	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$428, DW_AT_location[DW_OP_regx 0x72]
DW$429	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$429, DW_AT_location[DW_OP_regx 0x73]
DW$430	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$430, DW_AT_location[DW_OP_regx 0x74]
DW$431	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$431, DW_AT_location[DW_OP_regx 0x75]
DW$432	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$432, DW_AT_location[DW_OP_regx 0x76]
DW$433	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$433, DW_AT_location[DW_OP_regx 0x77]
DW$434	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$434, DW_AT_location[DW_OP_regx 0x78]
DW$435	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$435, DW_AT_location[DW_OP_regx 0x79]
DW$436	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$436, DW_AT_location[DW_OP_regx 0x7a]
DW$437	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$437, DW_AT_location[DW_OP_regx 0x7b]
DW$438	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$438, DW_AT_location[DW_OP_regx 0x7c]
DW$439	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$439, DW_AT_location[DW_OP_regx 0x7d]
DW$440	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$440, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

