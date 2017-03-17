;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Jul 30 11:40:49 2007                                *
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
	.dwattr DW$CU, DW_AT_name("atmel.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("exit"), DW_AT_symbol_name("_exit")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$5


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("dbg_output"), DW_AT_symbol_name("_dbg_output")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
DW$9	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$7


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_IssueStart"), DW_AT_symbol_name("_I2C_IssueStart")
	.dwattr DW$10, DW_AT_type(*DW$T$10)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_OutByteCheckAck"), DW_AT_symbol_name("_I2C_OutByteCheckAck")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_IssueStop"), DW_AT_symbol_name("_I2C_IssueStop")
	.dwattr DW$12, DW_AT_type(*DW$T$10)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("delay_ms"), DW_AT_symbol_name("_delay_ms")
	.dwattr DW$13, DW_AT_type(*DW$T$10)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_InCharByAck"), DW_AT_symbol_name("_I2C_InCharByAck")
	.dwattr DW$14, DW_AT_type(*DW$T$10)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("memcmp"), DW_AT_symbol_name("_memcmp")
	.dwattr DW$15, DW_AT_type(*DW$T$10)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
	.sect	".const"
	.align	8
_$T0$1:
	.field  	180,8			; _$T0$1[0] @ 0
	.field  	3,8			; _$T0$1[1] @ 8
	.field  	0,8			; _$T0$1[2] @ 16
	.field  	0,8			; _$T0$1[3] @ 24

DW$16	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1"), DW_AT_symbol_name("_$T0$1")
	.dwattr DW$16, DW_AT_type(*DW$T$40)
	.dwattr DW$16, DW_AT_location[DW_OP_addr _$T0$1]
	.sect	".const"
	.align	8
_$T1$2:
	.field  	176,8			; _$T1$2[0] @ 0
	.field  	0,8			; _$T1$2[1] @ 8
	.field  	0,8			; _$T1$2[2] @ 16
	.field  	11,8			; _$T1$2[3] @ 24
	.space	16

DW$17	.dwtag  DW_TAG_variable, DW_AT_name("$T1$2"), DW_AT_symbol_name("_$T1$2")
	.dwattr DW$17, DW_AT_type(*DW$T$41)
	.dwattr DW$17, DW_AT_location[DW_OP_addr _$T1$2]
	.sect	".const"
	.align	8
_$T2$3:
	.field  	180,8			; _$T2$3[0] @ 0
	.field  	3,8			; _$T2$3[1] @ 8
	.field  	0,8			; _$T2$3[2] @ 16
	.field  	0,8			; _$T2$3[3] @ 24

DW$18	.dwtag  DW_TAG_variable, DW_AT_name("$T2$3"), DW_AT_symbol_name("_$T2$3")
	.dwattr DW$18, DW_AT_type(*DW$T$40)
	.dwattr DW$18, DW_AT_location[DW_OP_addr _$T2$3]
	.sect	".const"
	.align	8
_$T3$4:
	.field  	178,8			; _$T3$4[0] @ 0
	.field  	0,8			; _$T3$4[1] @ 8
	.field  	0,8			; _$T3$4[2] @ 16
	.field  	0,8			; _$T3$4[3] @ 24

DW$19	.dwtag  DW_TAG_variable, DW_AT_name("$T3$4"), DW_AT_symbol_name("_$T3$4")
	.dwattr DW$19, DW_AT_type(*DW$T$40)
	.dwattr DW$19, DW_AT_location[DW_OP_addr _$T3$4]
	.sect	".const"
	.align	8
_$T4$5:
	.field  	180,8			; _$T4$5[0] @ 0
	.field  	0,8			; _$T4$5[1] @ 8
	.field  	11,8			; _$T4$5[2] @ 16
	.field  	4,8			; _$T4$5[3] @ 24
	.space	252

DW$20	.dwtag  DW_TAG_variable, DW_AT_name("$T4$5"), DW_AT_symbol_name("_$T4$5")
	.dwattr DW$20, DW_AT_type(*DW$T$42)
	.dwattr DW$20, DW_AT_location[DW_OP_addr _$T4$5]
	.sect	".const"
	.align	8
_$T5$6:
	.field  	182,8			; _$T5$6[0] @ 0
	.field  	0,8			; _$T5$6[1] @ 8
	.field  	0,8			; _$T5$6[2] @ 16
	.field  	1,8			; _$T5$6[3] @ 24

DW$21	.dwtag  DW_TAG_variable, DW_AT_name("$T5$6"), DW_AT_symbol_name("_$T5$6")
	.dwattr DW$21, DW_AT_type(*DW$T$40)
	.dwattr DW$21, DW_AT_location[DW_OP_addr _$T5$6]
	.sect	".const"
	.align	8
_$T6$7:
	.field  	186,8			; _$T6$7[0] @ 0
	.field  	7,8			; _$T6$7[1] @ 8
	.field  	0,8			; _$T6$7[2] @ 16
	.field  	3,8			; _$T6$7[3] @ 24
	.field  	221,8			; _$T6$7[4] @ 32
	.field  	66,8			; _$T6$7[5] @ 40
	.field  	151,8			; _$T6$7[6] @ 48

DW$22	.dwtag  DW_TAG_variable, DW_AT_name("$T6$7"), DW_AT_symbol_name("_$T6$7")
	.dwattr DW$22, DW_AT_type(*DW$T$43)
	.dwattr DW$22, DW_AT_location[DW_OP_addr _$T6$7]
	.sect	".const"
	.align	8
_$T7$8:
	.field  	255,8			; _$T7$8[0] @ 0
	.field  	0,8			; _$T7$8[1] @ 8
	.field  	255,8			; _$T7$8[2] @ 16
	.field  	0,8			; _$T7$8[3] @ 24
	.field  	255,8			; _$T7$8[4] @ 32
	.field  	0,8			; _$T7$8[5] @ 40
	.field  	255,8			; _$T7$8[6] @ 48
	.field  	0,8			; _$T7$8[7] @ 56

DW$23	.dwtag  DW_TAG_variable, DW_AT_name("$T7$8"), DW_AT_symbol_name("_$T7$8")
	.dwattr DW$23, DW_AT_type(*DW$T$44)
	.dwattr DW$23, DW_AT_location[DW_OP_addr _$T7$8]
	.sect	".const"
	.align	8
_$T8$9:
	.field  	180,8			; _$T8$9[0] @ 0
	.field  	1,8			; _$T8$9[1] @ 8
	.field  	6,8			; _$T8$9[2] @ 16
	.field  	0,8			; _$T8$9[3] @ 24

DW$24	.dwtag  DW_TAG_variable, DW_AT_name("$T8$9"), DW_AT_symbol_name("_$T8$9")
	.dwattr DW$24, DW_AT_type(*DW$T$40)
	.dwattr DW$24, DW_AT_location[DW_OP_addr _$T8$9]
	.sect	".const"
	.align	8
_$T9$10:
	.field  	182,8			; _$T9$10[0] @ 0
	.field  	1,8			; _$T9$10[1] @ 8
	.field  	0,8			; _$T9$10[2] @ 16
	.field  	1,8			; _$T9$10[3] @ 24

DW$25	.dwtag  DW_TAG_variable, DW_AT_name("$T9$10"), DW_AT_symbol_name("_$T9$10")
	.dwattr DW$25, DW_AT_type(*DW$T$40)
	.dwattr DW$25, DW_AT_location[DW_OP_addr _$T9$10]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe --gen_opt_info=2 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI4322 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI4324 --opt_info_filename=D:/pred/dsp/vport/Debug/atmel.nfo 
	.sect	".text"
	.global	_dump

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("dump"), DW_AT_symbol_name("_dump")
	.dwattr DW$26, DW_AT_low_pc(_dump)
	.dwattr DW$26, DW_AT_high_pc(0x00)
	.dwattr DW$26, DW_AT_begin_file("atmel.c")
	.dwattr DW$26, DW_AT_begin_line(0x40)
	.dwattr DW$26, DW_AT_begin_column(0x05)
	.dwattr DW$26, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$26, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",65,1

;******************************************************************************
;* FUNCTION NAME: _dump                                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 8 Args + 0 Auto + 16 Save = 24 byte                  *
;******************************************************************************
_dump:
;** --------------------------------------------------------------------------*
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$27, DW_AT_type(*DW$T$26)
	.dwattr DW$27, DW_AT_location[DW_OP_reg4]
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_location[DW_OP_reg20]
;** 67	-----------------------    if ( len <= 0 ) goto g6;
;** 69	-----------------------    L$1 = len;
;** 67	-----------------------    j = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CMPGT   .L2     B4,0,B0           ; |67| 
||         STW     .D2T1   A10,*SP--(24)     ; |65| 
||         MV      .L1X    B4,A10            ; |65| 

   [!B0]   BNOP    .S1     L3,4              ; |67| 
||         STDW    .D2T2   B11:B10,*+SP(16)  ; |65| 
||         ZERO    .L2     B10               ; |67| 
||         MV      .S2X    A4,B11            ; |65| 

   [ B0]   AND     .L2     15,B10,B0         ; |69| 
||         STW     .D2T2   B13,*+SP(12)      ; |65| 
||         MV      .S2     B3,B13            ; |65| 

           ; BRANCHCC OCCURS {L3}            ; |67| 
;** --------------------------------------------------------------------------*
	.dwpsn	"atmel.c",67,0

   [ B0]   B       .S2     L2                ; |69| 
|| [!B0]   MVKL    .S1     SL1+0,A3          ; |70| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L1:    
DW$L$_dump$3$B:
	.dwpsn	"atmel.c",68,0
;**	-----------------------g3:
;** 69	-----------------------    if ( j&0xf ) goto g5;

   [!B0]   CALL    .S2     _dbg_output       ; |70| 
|| [ B0]   MVKL    .S1     SL2+0,A3          ; |71| 

   [ B0]   MVKH    .S1     SL2+0,A3          ; |71| 

   [ B0]   STW     .D2T1   A3,*+SP(4)        ; |71| 
|| [!B0]   MVKH    .S1     SL1+0,A3          ; |70| 

   [ B0]   CALL    .S1     _dbg_output       ; |71| 
|| [ B0]   LDBU    .D2T2   *+B10[B11],B4     ; |71| 

           NOP             1
           ; BRANCHCC OCCURS {L2}            ; |69| 
DW$L$_dump$3$E:
;** --------------------------------------------------------------------------*
DW$L$_dump$4$B:
;** 70	-----------------------    dbg_output("\n");

           ADDKPC  .S2     RL0,B3,0          ; |70| 
||         STW     .D2T1   A3,*+SP(4)        ; |70| 

RL0:       ; CALL OCCURS {_dbg_output}       ; |70| 
           MVKL    .S1     SL2+0,A3          ; |71| 
           MVKH    .S1     SL2+0,A3          ; |71| 
           STW     .D2T1   A3,*+SP(4)        ; |71| 

           LDBU    .D2T2   *+B10[B11],B4     ; |71| 
||         CALL    .S1     _dbg_output       ; |71| 

           NOP             1
DW$L$_dump$4$E:
;** --------------------------------------------------------------------------*
L2:    
DW$L$_dump$5$B:
;**	-----------------------g5:
;** 71	-----------------------    dbg_output("%02x ", (int)buf[j]);
;** 67	-----------------------    ++j;
;** 67	-----------------------    if ( --L$1 ) goto g3;
           ADDKPC  .S2     RL1,B3,2          ; |71| 
           STW     .D2T2   B4,*+SP(8)        ; |71| 
RL1:       ; CALL OCCURS {_dbg_output}       ; |71| 
DW$L$_dump$5$E:
;** --------------------------------------------------------------------------*
DW$L$_dump$6$B:

           SUB     .L1     A10,1,A0          ; |67| 
||         ADD     .L2     1,B10,B10         ; |67| 
||         SUB     .S1     A10,1,A10         ; |67| 

   [ A0]   BNOP    .S1     L1,3              ; |67| 
||         AND     .L2     15,B10,B0         ; |69| 

   [!B0]   MVKL    .S1     SL1+0,A3          ; |70| 
|| [!A0]   ZERO    .L2     B0                ; |70| nullify predicate

	.dwpsn	"atmel.c",72,0
   [ B0]   B       .S1     L2                ; |69| 
           ; BRANCHCC OCCURS {L1}            ; |67| 
DW$L$_dump$6$E:
;** --------------------------------------------------------------------------*
L3:    
;**	-----------------------g6:
;** 73	-----------------------    dbg_output("\n");
;** 74	-----------------------    return 0;
           CALL    .S1     _dbg_output       ; |73| 
           ADDKPC  .S2     RL2,B3,1          ; |73| 
           MVKL    .S1     SL1+0,A3          ; |73| 
           MVKH    .S1     SL1+0,A3          ; |73| 
           STW     .D2T1   A3,*+SP(4)        ; |73| 
RL2:       ; CALL OCCURS {_dbg_output}       ; |73| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T2   *+SP(16),B11:B10  ; |75| 
||         MV      .L2     B13,B3            ; |75| 

           RET     .S2     B3                ; |75| 
||         LDW     .D2T2   *+SP(12),B13      ; |75| 

           LDW     .D2T1   *++SP(24),A10     ; |75| 
           NOP             3
	.dwpsn	"atmel.c",75,1
           ZERO    .L1     A4                ; |74| 
           ; BRANCH OCCURS {B3}              ; |75| 

DW$29	.dwtag  DW_TAG_loop
	.dwattr DW$29, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L1:1:1185766849")
	.dwattr DW$29, DW_AT_begin_file("atmel.c")
	.dwattr DW$29, DW_AT_begin_line(0x43)
	.dwattr DW$29, DW_AT_end_line(0x48)
DW$30	.dwtag  DW_TAG_loop_range
	.dwattr DW$30, DW_AT_low_pc(DW$L$_dump$3$B)
	.dwattr DW$30, DW_AT_high_pc(DW$L$_dump$3$E)
DW$31	.dwtag  DW_TAG_loop_range
	.dwattr DW$31, DW_AT_low_pc(DW$L$_dump$4$B)
	.dwattr DW$31, DW_AT_high_pc(DW$L$_dump$4$E)
DW$32	.dwtag  DW_TAG_loop_range
	.dwattr DW$32, DW_AT_low_pc(DW$L$_dump$5$B)
	.dwattr DW$32, DW_AT_high_pc(DW$L$_dump$5$E)
DW$33	.dwtag  DW_TAG_loop_range
	.dwattr DW$33, DW_AT_low_pc(DW$L$_dump$6$B)
	.dwattr DW$33, DW_AT_high_pc(DW$L$_dump$6$E)
	.dwendtag DW$29

	.dwattr DW$26, DW_AT_end_file("atmel.c")
	.dwattr DW$26, DW_AT_end_line(0x4b)
	.dwattr DW$26, DW_AT_end_column(0x01)
	.dwendtag DW$26

	.sect	".text"
	.global	_I2C_Stream

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_Stream"), DW_AT_symbol_name("_I2C_Stream")
	.dwattr DW$34, DW_AT_low_pc(_I2C_Stream)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("atmel.c")
	.dwattr DW$34, DW_AT_begin_line(0x1c)
	.dwattr DW$34, DW_AT_begin_column(0x05)
	.dwattr DW$34, DW_AT_frame_base[DW_OP_breg31 304]
	.dwattr DW$34, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",29,1

;******************************************************************************
;* FUNCTION NAME: _I2C_Stream                                                 *
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
;*   Local Frame Size  : 8 Args + 260 Auto + 36 Save = 304 byte               *
;******************************************************************************
_I2C_Stream:
;** --------------------------------------------------------------------------*
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$35, DW_AT_type(*DW$T$11)
	.dwattr DW$35, DW_AT_location[DW_OP_reg4]
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_len"), DW_AT_symbol_name("_out_len")
	.dwattr DW$36, DW_AT_type(*DW$T$10)
	.dwattr DW$36, DW_AT_location[DW_OP_reg20]
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_buf"), DW_AT_symbol_name("_out_buf")
	.dwattr DW$37, DW_AT_type(*DW$T$26)
	.dwattr DW$37, DW_AT_location[DW_OP_reg6]
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_len"), DW_AT_symbol_name("_in_len")
	.dwattr DW$38, DW_AT_type(*DW$T$10)
	.dwattr DW$38, DW_AT_location[DW_OP_reg22]
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_buf"), DW_AT_symbol_name("_in_buf")
	.dwattr DW$39, DW_AT_type(*DW$T$26)
	.dwattr DW$39, DW_AT_location[DW_OP_reg8]

           ADDK    .S2     -304,SP           ; |29| 
||         MV      .L1X    SP,A31            ; |29| 

           STW     .D2T2   B10,*+SP(296)
           STW     .D2T2   B11,*+SP(300)
           STW     .D2T2   B13,*+SP(292)

           CALL    .S1     _I2C_IssueStart   ; |34| 
||         STW     .D2T1   A15,*+SP(304)

           STDW    .D1T1   A13:A12,*-A31(24)
           STW     .D1T1   A14,*-A31(16)

           MV      .L1X    B6,A12            ; |29| 
||         STW     .D2T1   A10,*+SP(272)
||         MV      .L2X    A6,B11            ; |29| 

           MV      .L1X    B4,A10            ; |29| 
||         STW     .D2T1   A11,*+SP(276)
||         MV      .S1     A8,A14            ; |29| 
||         MV      .D1     A4,A13            ; |29| 
||         ADD     .L2     3,B11,B10
||         MV      .S2     B3,B13

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L4
;** --------------------------------------------------------------------------*
L4:    
DW$L$_I2C_Stream$2$B:
;**	-----------------------g2:
;** 34	-----------------------    I2C_IssueStart(index);
;** 35	-----------------------    if ( out_len <= 0 ) goto g10;

           ADDKPC  .S2     RL3,B3,0          ; |34| 
||         MV      .L1     A13,A4            ; |34| 

RL3:       ; CALL OCCURS {_I2C_IssueStart}   ; |34| 
DW$L$_I2C_Stream$2$E:
;** --------------------------------------------------------------------------*
DW$L$_I2C_Stream$3$B:

           CMPGT   .L1     A10,0,A0          ; |35| 
||         MVK     .L2     0xfffffffd,B4     ; |35| 

   [!A0]   BNOP    .S1     L8,3              ; |35| 
           MV      .L1X    B4,A11
           NOP             1
           ; BRANCHCC OCCURS {L8}            ; |35| 
DW$L$_I2C_Stream$3$E:
;** --------------------------------------------------------------------------*
DW$L$_I2C_Stream$4$B:
;**  	-----------------------    Q$1 = &out_buf[3];
;**  	-----------------------    L$1 = out_len;
;** 35	-----------------------    i = (-3);

           MV      .L2X    A11,B4
||         CALL    .S1     _I2C_OutByteCheckAck ; |37| 
||         MV      .L1     A10,A15

           LDBU    .D2T2   *+B4[B10],B4      ; |37| 
	.dwpsn	"atmel.c",35,0
           NOP             2
DW$L$_I2C_Stream$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L5:    
DW$L$_I2C_Stream$5$B:
	.dwpsn	"atmel.c",36,0
;**	-----------------------g4:
;** 37	-----------------------    if ( r = I2C_OutByteCheckAck(index, (int)Q$1[i]) ) goto g9;
           ADDKPC  .S2     RL4,B3,0          ; |37| 
           MV      .L1     A13,A4            ; |37| 
RL4:       ; CALL OCCURS {_I2C_OutByteCheckAck}  ; |37| 
DW$L$_I2C_Stream$5$E:
;** --------------------------------------------------------------------------*
DW$L$_I2C_Stream$6$B:

           MV      .L1     A4,A0             ; |37| 
||         MV      .L2X    A15,B5

           MV      .L1     A0,A1             ; guard predicate rewrite
|| [ A0]   B       .S2     L7                ; |37| 
||         MV      .S1     A0,A2             ; |37| branch predicate copy
|| [!A0]   MV      .D1     A11,A0
||         MV      .L2X    A11,B4

   [ A1]   ZERO    .L1     A0                ; nullify predicate
   [ A0]   BNOP    .S1     L6,3              ; |41| 
           ; BRANCHCC OCCURS {L7}            ; |37| 
DW$L$_I2C_Stream$6$E:
;** --------------------------------------------------------------------------*
DW$L$_I2C_Stream$7$B:
;** 41	-----------------------    if ( i ) goto g8;
   [!A0]   CALL    .S1     _dbg_output       ; |43| 
   [ A0]   CALL    .S1     _delay_ms         ; |47| 
           ; BRANCHCC OCCURS {L6}            ; |41| 
DW$L$_I2C_Stream$7$E:
;** --------------------------------------------------------------------------*
DW$L$_I2C_Stream$8$B:
;** 43	-----------------------    dbg_output("cmd failed\n");
;** 44	-----------------------    dump(out_buf, out_len);
;** 45	-----------------------    exit(1);
;***	; the preceding call never returns
           MVKL    .S1     SL3+0,A3          ; |43| 
           MVKH    .S1     SL3+0,A3          ; |43| 
           STW     .D2T1   A3,*+SP(4)        ; |43| 
           ADDKPC  .S2     RL5,B3,0          ; |43| 
RL5:       ; CALL OCCURS {_dbg_output}       ; |43| 
DW$L$_I2C_Stream$8$E:
;** --------------------------------------------------------------------------*
DW$L$_I2C_Stream$9$B:
           CALL    .S1     _dump             ; |44| 
           ADDKPC  .S2     RL6,B3,2          ; |44| 
           MV      .L2X    A10,B4            ; |44| 
           MV      .L1X    B11,A4            ; |44| 
RL6:       ; CALL OCCURS {_dump}             ; |44| 
           CALL    .S1     _exit             ; |45| 
           MVK     .L1     0x1,A4            ; |45| 
           ADDKPC  .S2     RL7,B3,3          ; |45| 
RL7:       ; CALL OCCURS {_exit}             ; |45| 
           CALL    .S1     _delay_ms         ; |47| 
DW$L$_I2C_Stream$9$E:
;** --------------------------------------------------------------------------*
L6:    
DW$L$_I2C_Stream$10$B:
;**	-----------------------g8:
;** 47	-----------------------    delay_ms(20);
;** 48	-----------------------    goto g2;
           MVK     .S1     0x14,A4           ; |47| 
           ADDKPC  .S2     RL8,B3,3          ; |47| 
RL8:       ; CALL OCCURS {_delay_ms}         ; |47| 
DW$L$_I2C_Stream$10$E:
;** --------------------------------------------------------------------------*
DW$L$_I2C_Stream$11$B:
           B       .S1     L4                ; |48| 
           CALL    .S1     _I2C_IssueStart   ; |34| 
           NOP             4
           ; BRANCH OCCURS {L4}              ; |48| 
DW$L$_I2C_Stream$11$E:
;** --------------------------------------------------------------------------*
L7:    
DW$L$_I2C_Stream$12$B:
;**	-----------------------g9:
;** 35	-----------------------    ++i;
;** 35	-----------------------    if ( --L$1 ) goto g4;

           ADD     .L2     1,B4,B5           ; |35| 
||         SUB     .S2     B5,1,B4           ; |35| 

           NOP             1
           MV      .L1X    B4,A0             ; |35| 

           MV      .L1X    B5,A11            ; |35| 
|| [ A0]   B       .S1     L5                ; |35| 

           MV      .L1X    B4,A15            ; |35| 

   [ A0]   CALL    .S1     _I2C_OutByteCheckAck ; |37| 
||         MV      .L2X    A11,B4

   [ A0]   LDBU    .D2T2   *+B4[B10],B4      ; |37| 
	.dwpsn	"atmel.c",50,0
           NOP             2
           ; BRANCHCC OCCURS {L5}            ; |35| 
DW$L$_I2C_Stream$12$E:
;** --------------------------------------------------------------------------*
L8:    
;**	-----------------------g10:
;** 52	-----------------------    if ( in_len <= 0 ) goto g13;
;**  	-----------------------    L$2 = in_len;
;**  	-----------------------    U$27 = &local_buf[0];
           CMPGT   .L1     A12,0,A0          ; |52| 
   [!A0]   BNOP    .S1     L10,2             ; |52| 
           ADD     .D2     SP,16,B4
           MV      .S1     A12,A11
           MV      .L1X    B4,A10            ; Define a twin register
           ; BRANCHCC OCCURS {L10}           ; |52| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _I2C_InCharByAck  ; |53| 
	.dwpsn	"atmel.c",52,0
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L9:    
DW$L$_I2C_Stream$15$B:
	.dwpsn	"atmel.c",53,0
;**	-----------------------g12:
;** 53	-----------------------    I2C_InCharByAck(index, 1, U$27);
;** 52	-----------------------    ++U$27;
;** 52	-----------------------    if ( --L$2 ) goto g12;

           MV      .L1     A10,A6            ; |53| 
||         MVK     .L2     0x1,B4            ; |53| 
||         MV      .S1     A13,A4            ; |53| 
||         ADDKPC  .S2     RL9,B3,0          ; |53| 

RL9:       ; CALL OCCURS {_I2C_InCharByAck}  ; |53| 
DW$L$_I2C_Stream$15$E:
;** --------------------------------------------------------------------------*
DW$L$_I2C_Stream$16$B:

           SUB     .L1     A11,1,A0          ; |52| 
||         SUB     .S1     A11,1,A11         ; |52| 
||         ADD     .D1     1,A10,A10         ; |52| 

   [ A0]   B       .S1     L9                ; |52| 
   [ A0]   CALL    .S1     _I2C_InCharByAck  ; |53| 
           NOP             4
           ; BRANCHCC OCCURS {L9}            ; |52| 
DW$L$_I2C_Stream$16$E:
;** --------------------------------------------------------------------------*
L10:    
;**	-----------------------g13:
;** 55	-----------------------    I2C_IssueStop(index);
;** 57	-----------------------    if ( !in_len ) goto g15;
           CALL    .S1     _I2C_IssueStop    ; |55| 
           ADDKPC  .S2     RL10,B3,3         ; |55| 
           MV      .L1     A13,A4            ; |55| 
RL10:      ; CALL OCCURS {_I2C_IssueStop}    ; |55| 
;** --------------------------------------------------------------------------*

           MV      .L1     A12,A0            ; |58| 
||         ADD     .D2     SP,16,B4          ; |58| 
||         MV      .S1     A12,A6            ; |58| 
||         MV      .D1     A14,A4            ; |58| 

   [!A0]   B       .S1     L11               ; |57| 
|| [!A0]   MV      .L2     B13,B3            ; |61| 
|| [!A0]   LDW     .D2T1   *+SP(304),A15     ; |61| 

   [ A0]   CALL    .S1     _memcpy           ; |58| 
|| [!A0]   LDW     .D2T1   *+SP(276),A11     ; |61| 

   [!A0]   LDW     .D2T1   *+SP(272),A10     ; |61| 
   [!A0]   LDW     .D2T1   *+SP(284),A13     ; |61| 
   [!A0]   LDW     .D2T1   *+SP(280),A12     ; |61| 
   [!A0]   LDW     .D2T1   *+SP(288),A14     ; |61| 
           ; BRANCHCC OCCURS {L11}           ; |57| 
;** --------------------------------------------------------------------------*
;** 58	-----------------------    memcpy((void * const)in_buf, &local_buf, (unsigned)in_len);
           ADDKPC  .S2     RL11,B3,0         ; |58| 
RL11:      ; CALL OCCURS {_memcpy}           ; |58| 

           LDW     .D2T1   *+SP(304),A15     ; |61| 
||         MV      .L2     B13,B3            ; |61| 

           LDW     .D2T1   *+SP(288),A14     ; |61| 
           LDW     .D2T1   *+SP(284),A13     ; |61| 
           LDW     .D2T1   *+SP(280),A12     ; |61| 
           LDW     .D2T1   *+SP(276),A11     ; |61| 
           LDW     .D2T1   *+SP(272),A10     ; |61| 
;** --------------------------------------------------------------------------*
L11:    
;**	-----------------------g15:
;** 60	-----------------------    return 1;

           LDW     .D2T2   *+SP(296),B10     ; |61| 
||         MVK     .L1     0x1,A4            ; |60| 

           LDW     .D2T2   *+SP(300),B11     ; |61| 
||         RET     .S2     B3                ; |61| 

           LDW     .D2T2   *+SP(292),B13     ; |61| 
||         ADDK    .S2     304,SP            ; |61| 

	.dwpsn	"atmel.c",61,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |61| 

DW$40	.dwtag  DW_TAG_loop
	.dwattr DW$40, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L9:1:1185766849")
	.dwattr DW$40, DW_AT_begin_file("atmel.c")
	.dwattr DW$40, DW_AT_begin_line(0x34)
	.dwattr DW$40, DW_AT_end_line(0x35)
DW$41	.dwtag  DW_TAG_loop_range
	.dwattr DW$41, DW_AT_low_pc(DW$L$_I2C_Stream$15$B)
	.dwattr DW$41, DW_AT_high_pc(DW$L$_I2C_Stream$15$E)
DW$42	.dwtag  DW_TAG_loop_range
	.dwattr DW$42, DW_AT_low_pc(DW$L$_I2C_Stream$16$B)
	.dwattr DW$42, DW_AT_high_pc(DW$L$_I2C_Stream$16$E)
	.dwendtag DW$40


DW$43	.dwtag  DW_TAG_loop
	.dwattr DW$43, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L4:1:1185766849")
	.dwattr DW$43, DW_AT_begin_file("atmel.c")
	.dwattr DW$43, DW_AT_begin_line(0x1d)
	.dwattr DW$43, DW_AT_end_line(0x30)
DW$44	.dwtag  DW_TAG_loop_range
	.dwattr DW$44, DW_AT_low_pc(DW$L$_I2C_Stream$2$B)
	.dwattr DW$44, DW_AT_high_pc(DW$L$_I2C_Stream$2$E)
DW$45	.dwtag  DW_TAG_loop_range
	.dwattr DW$45, DW_AT_low_pc(DW$L$_I2C_Stream$8$B)
	.dwattr DW$45, DW_AT_high_pc(DW$L$_I2C_Stream$8$E)
DW$46	.dwtag  DW_TAG_loop_range
	.dwattr DW$46, DW_AT_low_pc(DW$L$_I2C_Stream$3$B)
	.dwattr DW$46, DW_AT_high_pc(DW$L$_I2C_Stream$3$E)
DW$47	.dwtag  DW_TAG_loop_range
	.dwattr DW$47, DW_AT_low_pc(DW$L$_I2C_Stream$4$B)
	.dwattr DW$47, DW_AT_high_pc(DW$L$_I2C_Stream$4$E)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_I2C_Stream$7$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_I2C_Stream$7$E)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_I2C_Stream$9$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_I2C_Stream$9$E)
DW$50	.dwtag  DW_TAG_loop_range
	.dwattr DW$50, DW_AT_low_pc(DW$L$_I2C_Stream$10$B)
	.dwattr DW$50, DW_AT_high_pc(DW$L$_I2C_Stream$10$E)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_I2C_Stream$11$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_I2C_Stream$11$E)

DW$52	.dwtag  DW_TAG_loop
	.dwattr DW$52, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L5:2:1185766849")
	.dwattr DW$52, DW_AT_begin_file("atmel.c")
	.dwattr DW$52, DW_AT_begin_line(0x23)
	.dwattr DW$52, DW_AT_end_line(0x32)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$_I2C_Stream$5$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$_I2C_Stream$5$E)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$_I2C_Stream$6$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$_I2C_Stream$6$E)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$_I2C_Stream$12$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$_I2C_Stream$12$E)
	.dwendtag DW$52

	.dwendtag DW$43

	.dwattr DW$34, DW_AT_end_file("atmel.c")
	.dwattr DW$34, DW_AT_end_line(0x3d)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendtag DW$34

	.sect	".text"
	.global	_ATMEL_AckPolling

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_AckPolling"), DW_AT_symbol_name("_ATMEL_AckPolling")
	.dwattr DW$56, DW_AT_low_pc(_ATMEL_AckPolling)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("atmel.c")
	.dwattr DW$56, DW_AT_begin_line(0x07)
	.dwattr DW$56, DW_AT_begin_column(0x05)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",8,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_AckPolling                                           *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                  *
;******************************************************************************
_ATMEL_AckPolling:
;** --------------------------------------------------------------------------*
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$57, DW_AT_type(*DW$T$10)
	.dwattr DW$57, DW_AT_location[DW_OP_reg4]
;**  	-----------------------    K$1 = 178;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
           CALL    .S1     _I2C_IssueStart   ; |13| 
           STW     .D2T1   A12,*SP--(24)     ; |8| 
           STDW    .D2T2   B11:B10,*+SP(16)  ; |8| 
           MVK     .S2     0xb2,B10
	.dwpsn	"atmel.c",11,0

           MV      .L2     B3,B11            ; |8| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |8| 
||         MV      .L1     A4,A11            ; |8| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L12:    
DW$L$_ATMEL_AckPolling$2$B:
	.dwpsn	"atmel.c",12,0
;**	-----------------------g2:
;** 13	-----------------------    I2C_IssueStart(index);
;** 16	-----------------------    i = I2C_OutByteCheckAck(index, K$1);
;** 18	-----------------------    I2C_IssueStop(index);
;** 20	-----------------------    if ( !i ) goto g4;
;** 25	-----------------------    return i;

           ADDKPC  .S2     RL12,B3,0         ; |13| 
||         MV      .L1     A11,A4            ; |13| 

RL12:      ; CALL OCCURS {_I2C_IssueStart}   ; |13| 
DW$L$_ATMEL_AckPolling$2$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_AckPolling$3$B:
           CALL    .S1     _I2C_OutByteCheckAck ; |16| 
           ADDKPC  .S2     RL13,B3,2         ; |16| 
           MV      .L2     B10,B4            ; |16| 
           MV      .L1     A11,A4            ; |16| 
RL13:      ; CALL OCCURS {_I2C_OutByteCheckAck}  ; |16| 
           CALL    .S1     _I2C_IssueStop    ; |18| 
           MV      .S1     A4,A10            ; |16| 
           ADDKPC  .S2     RL14,B3,2         ; |18| 
           MV      .L1     A11,A4            ; |18| 
RL14:      ; CALL OCCURS {_I2C_IssueStop}    ; |18| 
DW$L$_ATMEL_AckPolling$3$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_AckPolling$4$B:
           MV      .L1     A10,A0            ; |18| 

   [ A0]   MV      .L1     A10,A12           ; |25| 
|| [ A0]   MV      .L2     B11,B3            ; |26| 
|| [ A0]   B       .S1     L13               ; |25| 
|| [ A0]   LDDW    .D2T1   *+SP(8),A11:A10   ; |26| 

   [!A0]   CALL    .S1     _delay_ms         ; |22| 
|| [ A0]   MV      .L1     A12,A4            ; |11| 
|| [ A0]   LDDW    .D2T2   *+SP(16),B11:B10  ; |26| 

   [ A0]   RETNOP  .S2     B3,3              ; |26| 
|| [ A0]   LDW     .D2T1   *++SP(24),A12     ; |26| 

           ; BRANCHCC OCCURS {L13}           ; |25| 
DW$L$_ATMEL_AckPolling$4$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_AckPolling$5$B:
;**	-----------------------g4:
;** 22	-----------------------    delay_ms(20);
;** 11	-----------------------    goto g2;

           MVK     .S1     0x14,A4           ; |22| 
||         ADDKPC  .S2     RL15,B3,0         ; |22| 

RL15:      ; CALL OCCURS {_delay_ms}         ; |22| 
DW$L$_ATMEL_AckPolling$5$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_AckPolling$6$B:
           B       .S1     L12               ; |11| 
           CALL    .S1     _I2C_IssueStart   ; |13| 
	.dwpsn	"atmel.c",23,0
           NOP             4
           ; BRANCH OCCURS {L12}             ; |11| 
DW$L$_ATMEL_AckPolling$6$E:
;** --------------------------------------------------------------------------*
L13:    
	.dwpsn	"atmel.c",26,1
           NOP             2
           ; BRANCH OCCURS {B3}              ; |26| 

DW$58	.dwtag  DW_TAG_loop
	.dwattr DW$58, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L12:1:1185766849")
	.dwattr DW$58, DW_AT_begin_file("atmel.c")
	.dwattr DW$58, DW_AT_begin_line(0x0b)
	.dwattr DW$58, DW_AT_end_line(0x17)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_ATMEL_AckPolling$2$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_ATMEL_AckPolling$2$E)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_ATMEL_AckPolling$3$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_ATMEL_AckPolling$3$E)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$_ATMEL_AckPolling$4$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$_ATMEL_AckPolling$4$E)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_ATMEL_AckPolling$5$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_ATMEL_AckPolling$5$E)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$_ATMEL_AckPolling$6$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$_ATMEL_AckPolling$6$E)
	.dwendtag DW$58

	.dwattr DW$56, DW_AT_end_file("atmel.c")
	.dwattr DW$56, DW_AT_end_line(0x1a)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("_write_userzone_raw_bytes"), DW_AT_symbol_name("__write_userzone_raw_bytes")
	.dwattr DW$64, DW_AT_low_pc(__write_userzone_raw_bytes)
	.dwattr DW$64, DW_AT_high_pc(0x00)
	.dwattr DW$64, DW_AT_begin_file("atmel.c")
	.dwattr DW$64, DW_AT_begin_line(0x4e)
	.dwattr DW$64, DW_AT_begin_column(0x0c)
	.dwattr DW$64, DW_AT_frame_base[DW_OP_breg31 336]
	.dwattr DW$64, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",79,1

;******************************************************************************
;* FUNCTION NAME: __write_userzone_raw_bytes                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A14,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A14,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 8 Args + 292 Auto + 32 Save = 332 byte               *
;******************************************************************************
__write_userzone_raw_bytes:
;** --------------------------------------------------------------------------*
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$65, DW_AT_type(*DW$T$10)
	.dwattr DW$65, DW_AT_location[DW_OP_reg4]
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$66, DW_AT_type(*DW$T$26)
	.dwattr DW$66, DW_AT_location[DW_OP_reg20]
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$67, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_location[DW_OP_reg6]
;** 79	-----------------------    buf = buf;
;** 79	-----------------------    len = len;
;** 80	-----------------------    set_user_zone[] = {...};
;** 81	-----------------------    write_user_zone[] = {...};
;** 86	-----------------------    ATMEL_AckPolling(index);
;**  	-----------------------    K$20 = index;
;** 88	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(4, 4, 4)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVKL    .S2     _$T0$1,B5         ; |80| 

           ADDK    .S2     -336,SP           ; |79| 
||         MV      .L1X    SP,A31            ; |79| 

           STW     .D2T1   A12,*+SP(336)
||         MVKH    .S2     _$T0$1,B5         ; |80| 

           LDW     .D2T2   *B5,B5            ; |80| 
           STW     .D2T2   B13,*+SP(332)
           STW     .D2T2   B10,*+SP(320)
           STW     .D2T2   B11,*+SP(324)

           STW     .D1T1   A14,*-A31(28)
||         STW     .D2T2   B12,*+SP(328)
||         MVKL    .S1     _$T1$2,A3         ; |81| 

           STW     .D2T2   B5,*+SP(16)       ; |80| 
||         STDW    .D1T1   A11:A10,*-A31(24)
||         MVKH    .S1     _$T1$2,A3         ; |81| 

           LDW     .D1T1   *+A3(16),A5       ; |81| 
           LDDW    .D1T1   *+A3(8),A9:A8     ; |81| 

           CALL    .S1     _ATMEL_AckPolling ; |86| 
||         LDDW    .D1T1   *A3,A17:A16       ; |81| 

           ADD     .D2     SP,24,B5          ; |81| 
           MV      .L2X    A6,B10            ; |79| 
           STW     .D2T1   A5,*+B5(16)       ; |81| 
           STDW    .D2T1   A9:A8,*+B5(8)     ; |81| 

           ADDKPC  .S2     RL16,B3,0         ; |86| 
||         STDW    .D2T1   A17:A16,*B5       ; |81| 
||         MV      .L1     A4,A11            ; |79| 
||         MV      .S1     A4,A10            ; |79| 
||         MV      .D1X    B3,A14
||         MV      .L2     B4,B11            ; |79| 

RL16:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |86| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _dbg_output       ; |90| 
           ZERO    .L2     B12               ; |88| 
           NOP             1
           MVKL    .S1     SL4+0,A3          ; |90| 
	.dwpsn	"atmel.c",88,0
           MVKH    .S1     SL4+0,A3          ; |90| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L14
;** --------------------------------------------------------------------------*
L14:    
DW$L$__write_userzone_raw_bytes$3$B:
	.dwpsn	"atmel.c",89,0
;**	-----------------------g2:
;** 90	-----------------------    dbg_output(".");
;** 91	-----------------------    set_user_zone[2] = i;
;** 92	-----------------------    I2C_Stream(K$20, 4, &set_user_zone, 0, &in_buf);
;** 93	-----------------------    ATMEL_AckPolling(index);
;** 95	-----------------------    k = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 2, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)

           ADDKPC  .S2     RL17,B3,0         ; |90| 
||         STW     .D2T1   A3,*+SP(4)        ; |90| 

RL17:      ; CALL OCCURS {_dbg_output}       ; |90| 
DW$L$__write_userzone_raw_bytes$3$E:
;** --------------------------------------------------------------------------*
DW$L$__write_userzone_raw_bytes$4$B:
           CALL    .S1     _I2C_Stream       ; |92| 
           ADDAD   .D2     SP,6,B5           ; |92| 
           ADD     .D2     SP,16,B7          ; |92| 
           MV      .L1X    B5,A8             ; |92| 
           MVK     .L2     0x4,B4            ; |92| 

           ADDKPC  .S2     RL18,B3,0         ; |92| 
||         MV      .L1X    B7,A6             ; |92| 
||         STB     .D2T2   B12,*+SP(18)      ; |91| 
||         ZERO    .L2     B6                ; |92| 
||         MV      .S1     A10,A4            ; |92| 

RL18:      ; CALL OCCURS {_I2C_Stream}       ; |92| 
           CALL    .S1     _ATMEL_AckPolling ; |93| 
           ADDKPC  .S2     RL19,B3,3         ; |93| 
           MV      .L1     A11,A4            ; |93| 
RL19:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |93| 
DW$L$__write_userzone_raw_bytes$4$E:
;** --------------------------------------------------------------------------*
DW$L$__write_userzone_raw_bytes$5$B:
           MVK     .S1     16,A3             ; |97| 
	.dwpsn	"atmel.c",95,0

           CALL    .S1     _memcpy           ; |105| 
||         ZERO    .L1     A12               ; |95| 

DW$L$__write_userzone_raw_bytes$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L15:    
DW$L$__write_userzone_raw_bytes$6$B:
	.dwpsn	"atmel.c",96,0
;**	-----------------------g3:
;** 97	-----------------------    (len > 16) ? (write_len = 16) : (write_len = len);
;** 98	-----------------------    len -= write_len;
;** 105	-----------------------    memcpy(&write_user_zone+4, (const void *)buf, (unsigned)write_len);
;** 107	-----------------------    buf += write_len;
;** 109	-----------------------    write_user_zone[2] = k<<4;
;** 110	-----------------------    write_user_zone[3] = write_len;
;** 112	-----------------------    I2C_Stream(K$20, write_len+4, &write_user_zone, 0, &in_buf);
;** 113	-----------------------    ATMEL_AckPolling(index);
;** 115	-----------------------    if ( !len ) goto g6;
           CMPGT   .L2X    B10,A3,B0         ; |97| 

           MV      .L2     B10,B13
|| [ B0]   MVK     .S2     0x10,B10          ; |97| 
||         ADD     .D2     SP,28,B5          ; |105| 

           MV      .L2     B11,B4            ; |105| 
           MV      .L1X    B10,A6            ; |105| 

           MV      .L1X    B5,A4             ; |105| 
||         ADDKPC  .S2     RL20,B3,0         ; |105| 

RL20:      ; CALL OCCURS {_memcpy}           ; |105| 
DW$L$__write_userzone_raw_bytes$6$E:
;** --------------------------------------------------------------------------*
DW$L$__write_userzone_raw_bytes$7$B:
           CALL    .S1     _I2C_Stream       ; |112| 
           ADDAD   .D2     SP,6,B4           ; |112| 
           ADD     .D2     SP,24,B5          ; |112| 
           MV      .L1X    B4,A8             ; |112| 

           STB     .D2T2   B10,*+SP(27)      ; |110| 
||         ZERO    .L2     B6                ; |112| 
||         SHL     .S1     A12,4,A3          ; |109| 

           ADDKPC  .S2     RL21,B3,0         ; |112| 
||         ADD     .L2     4,B10,B4          ; |112| 
||         MV      .L1X    B5,A6             ; |112| 
||         STB     .D2T1   A3,*+SP(26)       ; |109| 
||         MV      .S1     A10,A4            ; |112| 

RL21:      ; CALL OCCURS {_I2C_Stream}       ; |112| 
           CALL    .S1     _ATMEL_AckPolling ; |113| 
           ADDKPC  .S2     RL22,B3,3         ; |113| 
           MV      .L1     A11,A4            ; |113| 
RL22:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |113| 
DW$L$__write_userzone_raw_bytes$7$E:
;** --------------------------------------------------------------------------*
DW$L$__write_userzone_raw_bytes$8$B:

           ADD     .L2     B10,B11,B11       ; |107| 
||         SUB     .S2     B13,B10,B10       ; |98| 
||         ADD     .L1     1,A12,A12         ; |95| 

           NOP             1
           MV      .L1X    B10,A0            ; |107| 

           CMPLT   .L1     A12,2,A0          ; |95| 
||         MV      .D1     A0,A1             ; guard predicate rewrite
|| [!A0]   B       .S1     L16               ; |115| 

   [!A1]   ZERO    .L1     A0                ; |95| nullify predicate
   [ A0]   BNOP    .S1     L15,3             ; |95| 
           ; BRANCHCC OCCURS {L16}           ; |115| 
DW$L$__write_userzone_raw_bytes$8$E:
;** --------------------------------------------------------------------------*
DW$L$__write_userzone_raw_bytes$9$B:
;** 95	-----------------------    if ( (++k) < 2 ) goto g3;
;** 88	-----------------------    if ( (++i) < 4 ) goto g2;

   [ A0]   MVK     .S1     16,A3             ; |97| 
|| [!A0]   ADD     .L2     1,B12,B12         ; |88| 

	.dwpsn	"atmel.c",117,0

   [ A0]   CALL    .S1     _memcpy           ; |105| 
|| [!A0]   CMPLT   .L2     B12,4,B0          ; |88| 

           ; BRANCHCC OCCURS {L15}           ; |95| 
DW$L$__write_userzone_raw_bytes$9$E:
;** --------------------------------------------------------------------------*
DW$L$__write_userzone_raw_bytes$10$B:
;**	-----------------------g6:
;** 120	-----------------------    return;
   [ B0]   B       .S1     L14               ; |88| 
   [ B0]   CALL    .S1     _dbg_output       ; |90| 
           NOP             2
   [ B0]   MVKL    .S1     SL4+0,A3          ; |90| 
	.dwpsn	"atmel.c",118,0
   [ B0]   MVKH    .S1     SL4+0,A3          ; |90| 
           ; BRANCHCC OCCURS {L14}           ; |88| 
DW$L$__write_userzone_raw_bytes$10$E:
;** --------------------------------------------------------------------------*
L16:    
           LDW     .D2T1   *+SP(316),A11     ; |121| 
           LDW     .D2T1   *+SP(312),A10     ; |121| 
           LDW     .D2T2   *+SP(324),B11     ; |121| 
           LDW     .D2T2   *+SP(320),B10     ; |121| 
           LDW     .D2T2   *+SP(332),B13     ; |121| 

           LDW     .D2T2   *+SP(328),B12     ; |121| 
||         MV      .L2X    A14,B3            ; |121| 

           RET     .S2     B3                ; |121| 
||         LDW     .D2T1   *+SP(336),A12     ; |121| 

           LDW     .D2T1   *+SP(308),A14     ; |121| 
           NOP             3
	.dwpsn	"atmel.c",121,1
           ADDK    .S2     336,SP            ; |121| 
           ; BRANCH OCCURS {B3}              ; |121| 

DW$68	.dwtag  DW_TAG_loop
	.dwattr DW$68, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L14:1:1185766849")
	.dwattr DW$68, DW_AT_begin_file("atmel.c")
	.dwattr DW$68, DW_AT_begin_line(0x58)
	.dwattr DW$68, DW_AT_end_line(0x76)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$__write_userzone_raw_bytes$3$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$__write_userzone_raw_bytes$3$E)
DW$70	.dwtag  DW_TAG_loop_range
	.dwattr DW$70, DW_AT_low_pc(DW$L$__write_userzone_raw_bytes$4$B)
	.dwattr DW$70, DW_AT_high_pc(DW$L$__write_userzone_raw_bytes$4$E)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$__write_userzone_raw_bytes$5$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$__write_userzone_raw_bytes$5$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$__write_userzone_raw_bytes$10$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$__write_userzone_raw_bytes$10$E)

DW$73	.dwtag  DW_TAG_loop
	.dwattr DW$73, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L15:2:1185766849")
	.dwattr DW$73, DW_AT_begin_file("atmel.c")
	.dwattr DW$73, DW_AT_begin_line(0x5f)
	.dwattr DW$73, DW_AT_end_line(0x75)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$__write_userzone_raw_bytes$6$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$__write_userzone_raw_bytes$6$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$__write_userzone_raw_bytes$7$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$__write_userzone_raw_bytes$7$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$__write_userzone_raw_bytes$8$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$__write_userzone_raw_bytes$8$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$__write_userzone_raw_bytes$9$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$__write_userzone_raw_bytes$9$E)
	.dwendtag DW$73

	.dwendtag DW$68

	.dwattr DW$64, DW_AT_end_file("atmel.c")
	.dwattr DW$64, DW_AT_end_line(0x79)
	.dwattr DW$64, DW_AT_end_column(0x01)
	.dwendtag DW$64

	.sect	".text"

DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("_read_userzone_raw_bytes"), DW_AT_symbol_name("__read_userzone_raw_bytes")
	.dwattr DW$78, DW_AT_low_pc(__read_userzone_raw_bytes)
	.dwattr DW$78, DW_AT_high_pc(0x00)
	.dwattr DW$78, DW_AT_begin_file("atmel.c")
	.dwattr DW$78, DW_AT_begin_line(0x7b)
	.dwattr DW$78, DW_AT_begin_column(0x0c)
	.dwattr DW$78, DW_AT_frame_base[DW_OP_breg31 320]
	.dwattr DW$78, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",124,1

;******************************************************************************
;* FUNCTION NAME: __read_userzone_raw_bytes                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 8 Args + 276 Auto + 32 Save = 316 byte               *
;******************************************************************************
__read_userzone_raw_bytes:
;** --------------------------------------------------------------------------*
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$79, DW_AT_type(*DW$T$10)
	.dwattr DW$79, DW_AT_location[DW_OP_reg4]
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$80, DW_AT_type(*DW$T$26)
	.dwattr DW$80, DW_AT_location[DW_OP_reg20]
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$81, DW_AT_type(*DW$T$10)
	.dwattr DW$81, DW_AT_location[DW_OP_reg6]
;** 124	-----------------------    buf = buf;
;** 124	-----------------------    len = len;
;** 125	-----------------------    set_user_zone[] = {...};
;** 126	-----------------------    read_user_zone[] = {...};
;** 131	-----------------------    ATMEL_AckPolling(index);
;**  	-----------------------    K$21 = 32;
;**  	-----------------------    K$20 = index;
;** 133	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 4, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)

           MVKL    .S2     _$T2$3,B5         ; |125| 
||         MVKL    .S1     _$T3$4,A3         ; |126| 

           MVKH    .S1     _$T3$4,A3         ; |126| 
||         ADDK    .S2     -320,SP           ; |124| 
||         MV      .L1X    SP,A31            ; |124| 

           LDW     .D1T1   *A3,A3            ; |126| 
||         STW     .D2T2   B13,*+SP(292)
||         MVKH    .S2     _$T2$3,B5         ; |125| 

           CALL    .S1     _ATMEL_AckPolling ; |131| 
||         LDW     .D2T2   *B5,B5            ; |125| 

           STW     .D2T2   B12,*+SP(320)

           STDW    .D1T1   A11:A10,*-A31(24)
||         STW     .D2T2   B10,*+SP(312)

           STW     .D2T2   B11,*+SP(316)
||         STDW    .D1T1   A13:A12,*-A31(16)

           STW     .D2T1   A3,*+SP(24)       ; |126| 
||         MV      .L2     B3,B13

           ADDKPC  .S2     RL23,B3,0         ; |131| 
||         STW     .D2T2   B5,*+SP(16)       ; |125| 
||         MV      .L1X    B4,A13            ; |124| 
||         MV      .S1     A4,A12            ; |124| 
||         MV      .D1     A4,A11            ; |124| 
||         MV      .L2X    A6,B12            ; |124| 

RL23:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |131| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _dbg_output       ; |135| 
           ZERO    .L1     A10               ; |133| 
           MVK     .S2     0x20,B11
           MVKL    .S1     SL4+0,A3          ; |135| 
	.dwpsn	"atmel.c",133,0
           MVKH    .S1     SL4+0,A3          ; |135| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L17:    
DW$L$__read_userzone_raw_bytes$3$B:
	.dwpsn	"atmel.c",134,0
;**	-----------------------g2:
;** 135	-----------------------    dbg_output(".");
;** 136	-----------------------    set_user_zone[2] = i;
;** 137	-----------------------    I2C_Stream(K$20, 4, &set_user_zone, 0, &in_buf);
;** 138	-----------------------    ATMEL_AckPolling(index);
;** 140	-----------------------    (len > K$21) ? (read_len = K$21) : (read_len = len);
;** 141	-----------------------    len -= read_len;
;** 147	-----------------------    read_user_zone[3] = read_len;
;** 149	-----------------------    I2C_Stream(K$20, 4, &read_user_zone, read_len, buf);
;** 151	-----------------------    buf += read_len;
;** 152	-----------------------    ATMEL_AckPolling(index);
;** 154	-----------------------    if ( !len ) goto g4;
;** 133	-----------------------    if ( (++i) < 4 ) goto g2;
;**	-----------------------g4:
;** 157	-----------------------    return;

           STW     .D2T1   A3,*+SP(4)        ; |135| 
||         ADDKPC  .S2     RL24,B3,0         ; |135| 

RL24:      ; CALL OCCURS {_dbg_output}       ; |135| 
DW$L$__read_userzone_raw_bytes$3$E:
;** --------------------------------------------------------------------------*
DW$L$__read_userzone_raw_bytes$4$B:
           CALL    .S1     _I2C_Stream       ; |137| 
           ADDAD   .D2     SP,4,B5           ; |137| 
           ADD     .D2     SP,16,B7          ; |137| 
           MV      .L1X    B5,A8             ; |137| 
           MVK     .L2     0x4,B4            ; |137| 

           ADDKPC  .S2     RL25,B3,0         ; |137| 
||         MV      .L1X    B7,A6             ; |137| 
||         STB     .D2T1   A10,*+SP(18)      ; |136| 
||         ZERO    .L2     B6                ; |137| 
||         MV      .S1     A11,A4            ; |137| 

RL25:      ; CALL OCCURS {_I2C_Stream}       ; |137| 
           CALL    .S1     _ATMEL_AckPolling ; |138| 
           ADDKPC  .S2     RL26,B3,3         ; |138| 
           MV      .L1     A12,A4            ; |138| 
RL26:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |138| 
           CALL    .S1     _I2C_Stream       ; |149| 
           CMPGT   .L2     B12,B11,B0        ; |140| 
           ADD     .D2     SP,24,B5          ; |149| 
   [!B0]   MV      .D2     B12,B10           ; |149| 

   [ B0]   MV      .S2     B11,B10           ; |140| 
||         MVK     .L2     0x4,B4            ; |149| 

           MV      .D1     A11,A4            ; |149| 
||         MV      .S1     A13,A8            ; |149| 
||         MV      .L1X    B5,A6             ; |149| 
||         STB     .D2T2   B10,*+SP(27)      ; |147| 
||         MV      .L2     B10,B6            ; |149| 
||         ADDKPC  .S2     RL27,B3,0         ; |149| 

RL27:      ; CALL OCCURS {_I2C_Stream}       ; |149| 
           CALL    .S1     _ATMEL_AckPolling ; |152| 
           MV      .L1     A12,A4            ; |152| 
           ADDKPC  .S2     RL28,B3,3         ; |152| 
RL28:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |152| 
DW$L$__read_userzone_raw_bytes$4$E:
;** --------------------------------------------------------------------------*
DW$L$__read_userzone_raw_bytes$5$B:

           SUB     .L2     B12,B10,B4        ; |141| 
||         ZERO    .L1     A0                ; |133| 
||         SUB     .S2     B12,B10,B12       ; |141| 
||         ADD     .S1X    B10,A13,A13       ; |151| 

           NOP             1
           MV      .L1X    B4,A1             ; |141| 
   [ A1]   ADD     .L1     1,A10,A10         ; |133| 
   [ A1]   CMPLT   .L1     A10,4,A0          ; |133| 

   [ A0]   B       .S2     L17               ; |133| 
|| [!A0]   LDW     .D2T2   *+SP(320),B12     ; |158| 
|| [!A0]   MV      .L2     B13,B3            ; |158| 
|| [ A0]   MVKL    .S1     SL4+0,A3          ; |135| 

   [ A0]   CALL    .S2     _dbg_output       ; |135| 
|| [!A0]   LDW     .D2T2   *+SP(312),B10     ; |158| 
|| [ A0]   MVKH    .S1     SL4+0,A3          ; |135| 

   [!A0]   LDW     .D2T1   *+SP(296),A10     ; |158| 
   [!A0]   LDW     .D2T2   *+SP(292),B13     ; |158| 
   [!A0]   LDW     .D2T1   *+SP(300),A11     ; |158| 
	.dwpsn	"atmel.c",156,0
   [!A0]   LDW     .D2T1   *+SP(308),A13     ; |158| 
           ; BRANCHCC OCCURS {L17}           ; |133| 
DW$L$__read_userzone_raw_bytes$5$E:
;** --------------------------------------------------------------------------*

           RET     .S2     B3                ; |158| 
||         LDW     .D2T2   *+SP(316),B11     ; |158| 

           LDW     .D2T1   *+SP(304),A12     ; |158| 
||         ADDK    .S2     320,SP            ; |158| 

	.dwpsn	"atmel.c",158,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |158| 

DW$82	.dwtag  DW_TAG_loop
	.dwattr DW$82, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L17:1:1185766849")
	.dwattr DW$82, DW_AT_begin_file("atmel.c")
	.dwattr DW$82, DW_AT_begin_line(0x85)
	.dwattr DW$82, DW_AT_end_line(0x9c)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$__read_userzone_raw_bytes$3$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$__read_userzone_raw_bytes$3$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$__read_userzone_raw_bytes$4$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$__read_userzone_raw_bytes$4$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$__read_userzone_raw_bytes$5$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$__read_userzone_raw_bytes$5$E)
	.dwendtag DW$82

	.dwattr DW$78, DW_AT_end_file("atmel.c")
	.dwattr DW$78, DW_AT_end_line(0x9e)
	.dwattr DW$78, DW_AT_end_column(0x01)
	.dwendtag DW$78

	.sect	".text"

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("_write_user_zone"), DW_AT_symbol_name("__write_user_zone")
	.dwattr DW$86, DW_AT_low_pc(__write_user_zone)
	.dwattr DW$86, DW_AT_high_pc(0x00)
	.dwattr DW$86, DW_AT_begin_file("atmel.c")
	.dwattr DW$86, DW_AT_begin_line(0xa0)
	.dwattr DW$86, DW_AT_begin_column(0x0c)
	.dwattr DW$86, DW_AT_frame_base[DW_OP_breg31 288]
	.dwattr DW$86, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",161,1

;******************************************************************************
;* FUNCTION NAME: __write_user_zone                                           *
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
;*   Local Frame Size  : 8 Args + 260 Auto + 20 Save = 288 byte               *
;******************************************************************************
__write_user_zone:
;** --------------------------------------------------------------------------*
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_location[DW_OP_reg4]
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$88, DW_AT_type(*DW$T$26)
	.dwattr DW$88, DW_AT_location[DW_OP_reg20]
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$89, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_location[DW_OP_reg6]
;** 165	-----------------------    dbg_output("Initial data:\n");
;** 166	-----------------------    dbg_output("writing");
;** 167	-----------------------    _write_userzone_raw_bytes(index, buf, len);
;** 168	-----------------------    dbg_output(C$1 = "\n");
;** 170	-----------------------    dbg_output("verify");
;** 171	-----------------------    _read_userzone_raw_bytes(index, &temp, len);
;** 172	-----------------------    dbg_output(C$1);
;** 174	-----------------------    if ( r = memcmp(&temp, buf, len) ) goto g3;
           ADDK    .S2     -288,SP           ; |161| 

           CALL    .S1     _dbg_output       ; |165| 
||         STW     .D2T1   A11,*+SP(276)     ; |161| 

           STW     .D2T1   A10,*+SP(272)     ; |161| 
           STW     .D2T1   A12,*+SP(288)     ; |161| 

           STW     .D2T2   B11,*+SP(284)     ; |161| 
||         MVKL    .S1     SL5+0,A3          ; |165| 

           STW     .D2T2   B10,*+SP(280)     ; |161| 
||         MVKH    .S1     SL5+0,A3          ; |165| 

           ADDKPC  .S2     RL29,B3,0         ; |165| 
||         STW     .D2T1   A3,*+SP(4)        ; |165| 
||         MV      .L1X    B4,A11            ; |161| 
||         MV      .S1     A6,A10            ; |161| 
||         MV      .D1     A4,A12            ; |161| 
||         MV      .L2     B3,B11            ; |161| 

RL29:      ; CALL OCCURS {_dbg_output}       ; |165| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _dbg_output       ; |166| 
           ADDKPC  .S2     RL30,B3,1         ; |166| 
           MVKL    .S2     SL6+0,B4          ; |166| 
           MVKH    .S2     SL6+0,B4          ; |166| 
           STW     .D2T2   B4,*+SP(4)        ; |166| 
RL30:      ; CALL OCCURS {_dbg_output}       ; |166| 
           CALL    .S1     __write_userzone_raw_bytes ; |167| 
           ADDKPC  .S2     RL31,B3,1         ; |167| 
           MV      .L2X    A11,B4            ; |167| 
           MV      .L1     A10,A6            ; |167| 
           MV      .S1     A12,A4            ; |167| 
RL31:      ; CALL OCCURS {__write_userzone_raw_bytes}  ; |167| 
           CALL    .S1     _dbg_output       ; |168| 
           ADDKPC  .S2     RL32,B3,1         ; |168| 
           MVKL    .S2     SL1+0,B10         ; |168| 
           MVKH    .S2     SL1+0,B10         ; |168| 
           STW     .D2T2   B10,*+SP(4)       ; |168| 
RL32:      ; CALL OCCURS {_dbg_output}       ; |168| 
           CALL    .S1     _dbg_output       ; |170| 
           ADDKPC  .S2     RL33,B3,1         ; |170| 
           MVKL    .S1     SL7+0,A3          ; |170| 
           MVKH    .S1     SL7+0,A3          ; |170| 
           STW     .D2T1   A3,*+SP(4)        ; |170| 
RL33:      ; CALL OCCURS {_dbg_output}       ; |170| 
           CALL    .S1     __read_userzone_raw_bytes ; |171| 
           MV      .S1     A12,A4            ; |171| 
           ADD     .D2     SP,16,B4          ; |171| 
           MV      .L1     A10,A6            ; |171| 
           ADDKPC  .S2     RL34,B3,1         ; |171| 
RL34:      ; CALL OCCURS {__read_userzone_raw_bytes}  ; |171| 
           CALL    .S1     _dbg_output       ; |172| 
           STW     .D2T2   B10,*+SP(4)       ; |172| 
           ADDKPC  .S2     RL35,B3,3         ; |172| 
RL35:      ; CALL OCCURS {_dbg_output}       ; |172| 
           CALL    .S1     _memcmp           ; |174| 
           ADD     .D2     SP,16,B5          ; |174| 
           MV      .L2X    A11,B4            ; |174| 
           MV      .S1     A10,A6            ; |174| 
           MV      .L1X    B5,A4             ; |174| 
           ADDKPC  .S2     RL36,B3,0         ; |174| 
RL36:      ; CALL OCCURS {_memcmp}           ; |174| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |174| 
||         MVKL    .S2     SL10+0,B10        ; |178| 
||         MVKL    .S1     SL9+0,A3          ; |177| 

           MVKL    .S2     SL8+0,B4          ; |183| 
|| [ A0]   B       .S1     L18               ; |174| 

   [ A0]   CALL    .S1     _dbg_output       ; |177| 
||         MVKH    .S2     SL10+0,B10        ; |178| 

   [!A0]   CALL    .S1     _dbg_output       ; |183| 
||         MVKH    .S2     SL8+0,B4          ; |183| 

           MVKH    .S1     SL9+0,A3          ; |177| 
           NOP             2
           ; BRANCHCC OCCURS {L18}           ; |174| 
;** --------------------------------------------------------------------------*
;** 183	-----------------------    dbg_output("data ok\n");
;** 183	-----------------------    return;
           ADDKPC  .S2     RL37,B3,0         ; |183| 
           STW     .D2T2   B4,*+SP(4)        ; |183| 
RL37:      ; CALL OCCURS {_dbg_output}       ; |183| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(276),A11     ; |187| 
           LDW     .D2T1   *+SP(272),A10     ; |187| 

           LDW     .D2T2   *+SP(280),B10     ; |187| 
||         MV      .L2     B11,B3            ; |187| 

           RET     .S2     B3                ; |187| 
||         LDW     .D2T1   *+SP(288),A12     ; |187| 

           LDW     .D2T2   *+SP(284),B11     ; |187| 
           NOP             3
           ADDK    .S2     288,SP            ; |187| 
           ; BRANCH OCCURS {B3}              ; |187| 
;** --------------------------------------------------------------------------*
L18:    
;**	-----------------------g3:
;** 177	-----------------------    dbg_output("data error\n");
;** 178	-----------------------    dbg_output("please replace the C0104 chip\n");
;** 179	-----------------------    exit(1);
;***	; the preceding call never returns
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T1   A3,*+SP(4)        ; |177| 
||         ADDKPC  .S2     RL38,B3,0         ; |177| 

RL38:      ; CALL OCCURS {_dbg_output}       ; |177| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _dbg_output       ; |178| 
           ADDKPC  .S2     RL39,B3,1         ; |178| 
           STW     .D2T2   B10,*+SP(4)       ; |178| 
           NOP             2
RL39:      ; CALL OCCURS {_dbg_output}       ; |178| 
           CALL    .S1     _exit             ; |179| 
           MVK     .L1     0x1,A4            ; |179| 
           ADDKPC  .S2     RL40,B3,3         ; |179| 
RL40:      ; CALL OCCURS {_exit}             ; |179| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L19:    
DW$L$__write_user_zone$8$B:
;**	-----------------------g4:
;** 179	-----------------------    goto g4;
	.dwpsn	"atmel.c",187,1
           BNOP    .S1     L19,5             ; |179| 
           ; BRANCH OCCURS {L19}             ; |179| 
DW$L$__write_user_zone$8$E:

DW$90	.dwtag  DW_TAG_loop
	.dwattr DW$90, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L19:1:1185766849")
	.dwattr DW$90, DW_AT_begin_file("atmel.c")
	.dwattr DW$90, DW_AT_begin_line(0xb3)
	.dwattr DW$90, DW_AT_end_line(0xbb)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$__write_user_zone$8$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$__write_user_zone$8$E)
	.dwendtag DW$90

	.dwattr DW$86, DW_AT_end_file("atmel.c")
	.dwattr DW$86, DW_AT_end_line(0xbb)
	.dwattr DW$86, DW_AT_end_column(0x01)
	.dwendtag DW$86

	.sect	".text"
	.global	_ATMEL_WriteUserZone

DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_WriteUserZone"), DW_AT_symbol_name("_ATMEL_WriteUserZone")
	.dwattr DW$92, DW_AT_low_pc(_ATMEL_WriteUserZone)
	.dwattr DW$92, DW_AT_high_pc(0x00)
	.dwattr DW$92, DW_AT_begin_file("atmel.c")
	.dwattr DW$92, DW_AT_begin_line(0x131)
	.dwattr DW$92, DW_AT_begin_column(0x06)
	.dwattr DW$92, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$92, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",306,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_WriteUserZone                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ATMEL_WriteUserZone:
;** --------------------------------------------------------------------------*
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$93, DW_AT_type(*DW$T$10)
	.dwattr DW$93, DW_AT_location[DW_OP_reg4]
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$94, DW_AT_type(*DW$T$26)
	.dwattr DW$94, DW_AT_location[DW_OP_reg20]
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$95, DW_AT_type(*DW$T$10)
	.dwattr DW$95, DW_AT_location[DW_OP_reg6]
;** 307	-----------------------    _write_user_zone(index, buf, len);
;** 307	-----------------------    return;
           CALLRET .S1     __write_user_zone ; |307| 
	.dwpsn	"atmel.c",308,1
           NOP             5
RL41:      ; CALL-RETURN OCCURS {__write_user_zone}  ; |307| 
	.dwattr DW$92, DW_AT_end_file("atmel.c")
	.dwattr DW$92, DW_AT_end_line(0x134)
	.dwattr DW$92, DW_AT_end_column(0x01)
	.dwendtag DW$92

	.sect	".text"

DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("_write_config_zone_raw"), DW_AT_symbol_name("__write_config_zone_raw")
	.dwattr DW$96, DW_AT_low_pc(__write_config_zone_raw)
	.dwattr DW$96, DW_AT_high_pc(0x00)
	.dwattr DW$96, DW_AT_begin_file("atmel.c")
	.dwattr DW$96, DW_AT_begin_line(0xbd)
	.dwattr DW$96, DW_AT_begin_column(0x0d)
	.dwattr DW$96, DW_AT_frame_base[DW_OP_breg31 288]
	.dwattr DW$96, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",190,1

;******************************************************************************
;* FUNCTION NAME: __write_config_zone_raw                                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 260 Auto + 24 Save = 284 byte               *
;******************************************************************************
__write_config_zone_raw:
;** --------------------------------------------------------------------------*
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$97, DW_AT_type(*DW$T$10)
	.dwattr DW$97, DW_AT_location[DW_OP_reg4]
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$98, DW_AT_type(*DW$T$6)
	.dwattr DW$98, DW_AT_location[DW_OP_reg20]
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$99, DW_AT_type(*DW$T$26)
	.dwattr DW$99, DW_AT_location[DW_OP_reg6]
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$100, DW_AT_type(*DW$T$6)
	.dwattr DW$100, DW_AT_location[DW_OP_reg22]
;** 191	-----------------------    write_config[] = {...};
;** 193	-----------------------    write_config[2] = addr;
;** 194	-----------------------    write_config[3] = len;
;** 195	-----------------------    memcpy(&write_config+4, (const void * const)buf, (unsigned)len);
;** 196	-----------------------    ATMEL_AckPolling(0);
;** 197	-----------------------    I2C_Stream(0u, len+4, &write_config, 0, NULL);
;** 197	-----------------------    return;
           ADDK    .S2     -288,SP           ; |190| 
           STW     .D2T2   B13,*+SP(268)     ; |190| 
           STW     .D2T2   B11,*+SP(284)     ; |190| 

           CALL    .S1     _memcpy           ; |191| 
||         STW     .D2T2   B10,*+SP(280)     ; |190| 

           STW     .D2T1   A11,*+SP(276)     ; |190| 

           STW     .D2T1   A10,*+SP(272)     ; |190| 
||         MVKL    .S1     _$T4$5,A3         ; |191| 

           MVKH    .S1     _$T4$5,A3         ; |191| 
||         STW     .D2T2   B12,*+SP(288)     ; |190| 

           ADD     .L1X    8,SP,A4           ; |191| 
||         ADD     .L2     4,B6,B10          ; |197| 
||         MV      .S2     B3,B13            ; |190| 
||         MV      .D2     B4,B11            ; |190| 

           ADDKPC  .S2     RL42,B3,0         ; |191| 
||         MV      .L2X    A3,B4             ; |191| 
||         MVK     .S1     0x100,A6          ; |191| 
||         MV      .D2     B6,B12            ; |190| 
||         MV      .L1X    B6,A11            ; |190| 
||         MV      .D1     A6,A10            ; |190| 

RL42:      ; CALL OCCURS {_memcpy}           ; |191| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _memcpy           ; |195| 
           ADDKPC  .S2     RL43,B3,0         ; |195| 
           STB     .D2T2   B11,*+SP(10)      ; |193| 
           MV      .L1     A11,A6            ; |195| 
           STB     .D2T2   B12,*+SP(11)      ; |194| 

           MV      .L2X    A10,B4            ; |195| 
||         ADD     .S1X    12,SP,A4          ; |195| 

RL43:      ; CALL OCCURS {_memcpy}           ; |195| 
           CALL    .S1     _ATMEL_AckPolling ; |196| 
           ADDKPC  .S2     RL44,B3,3         ; |196| 
           ZERO    .L1     A4                ; |196| 
RL44:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |196| 
           CALL    .S1     _I2C_Stream       ; |197| 
           ZERO    .D1     A4                ; |197| 
           ZERO    .D2     B6                ; |197| 
           ZERO    .S1     A8                ; |197| 
           MV      .L2     B10,B4            ; |197| 

           ADD     .L1X    8,SP,A6           ; |197| 
||         ADDKPC  .S2     RL45,B3,0         ; |197| 

RL45:      ; CALL OCCURS {_I2C_Stream}       ; |197| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(276),A11     ; |198| 
           LDW     .D2T1   *+SP(272),A10     ; |198| 
           LDW     .D2T2   *+SP(284),B11     ; |198| 

           LDW     .D2T2   *+SP(280),B10     ; |198| 
||         MV      .L2     B13,B3            ; |198| 

           RET     .S2     B3                ; |198| 
||         LDW     .D2T2   *+SP(288),B12     ; |198| 

           LDW     .D2T2   *+SP(268),B13     ; |198| 
           NOP             3
	.dwpsn	"atmel.c",198,1
           ADDK    .S2     288,SP            ; |198| 
           ; BRANCH OCCURS {B3}              ; |198| 
	.dwattr DW$96, DW_AT_end_file("atmel.c")
	.dwattr DW$96, DW_AT_end_line(0xc6)
	.dwattr DW$96, DW_AT_end_column(0x01)
	.dwendtag DW$96

	.sect	".text"
	.global	_ATMEL_WriteRawConfigZone

DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_WriteRawConfigZone"), DW_AT_symbol_name("_ATMEL_WriteRawConfigZone")
	.dwattr DW$101, DW_AT_low_pc(_ATMEL_WriteRawConfigZone)
	.dwattr DW$101, DW_AT_high_pc(0x00)
	.dwattr DW$101, DW_AT_begin_file("atmel.c")
	.dwattr DW$101, DW_AT_begin_line(0x122)
	.dwattr DW$101, DW_AT_begin_column(0x06)
	.dwattr DW$101, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$101, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",291,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_WriteRawConfigZone                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ATMEL_WriteRawConfigZone:
;** --------------------------------------------------------------------------*
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$102, DW_AT_type(*DW$T$10)
	.dwattr DW$102, DW_AT_location[DW_OP_reg4]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$103, DW_AT_type(*DW$T$6)
	.dwattr DW$103, DW_AT_location[DW_OP_reg20]
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$104, DW_AT_type(*DW$T$26)
	.dwattr DW$104, DW_AT_location[DW_OP_reg6]
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$105, DW_AT_type(*DW$T$6)
	.dwattr DW$105, DW_AT_location[DW_OP_reg22]
;** 292	-----------------------    _write_config_zone_raw(index, addr, buf, len);
;** 292	-----------------------    return;
           CALLRET .S1     __write_config_zone_raw ; |292| 
	.dwpsn	"atmel.c",293,1
           NOP             5
RL46:      ; CALL-RETURN OCCURS {__write_config_zone_raw}  ; |292| 
	.dwattr DW$101, DW_AT_end_file("atmel.c")
	.dwattr DW$101, DW_AT_end_line(0x125)
	.dwattr DW$101, DW_AT_end_column(0x01)
	.dwendtag DW$101

	.sect	".text"
	.global	_ATMEL_WriteFuse

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_WriteFuse"), DW_AT_symbol_name("_ATMEL_WriteFuse")
	.dwattr DW$106, DW_AT_low_pc(_ATMEL_WriteFuse)
	.dwattr DW$106, DW_AT_high_pc(0x00)
	.dwattr DW$106, DW_AT_begin_file("atmel.c")
	.dwattr DW$106, DW_AT_begin_line(0x10c)
	.dwattr DW$106, DW_AT_begin_column(0x05)
	.dwattr DW$106, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$106, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",269,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_WriteFuse                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,A22,  *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,A22,  *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 8 Auto + 8 Save = 16 byte                   *
;******************************************************************************
_ATMEL_WriteFuse:
;** --------------------------------------------------------------------------*
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$107, DW_AT_type(*DW$T$10)
	.dwattr DW$107, DW_AT_location[DW_OP_reg4]
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fuse_id"), DW_AT_symbol_name("_fuse_id")
	.dwattr DW$108, DW_AT_type(*DW$T$6)
	.dwattr DW$108, DW_AT_location[DW_OP_reg20]
;** 270	-----------------------    fuse[] = {...};
;** 272	-----------------------    fuse[2] = fuse_id;
;** 274	-----------------------    ATMEL_AckPolling(index);
;** 275	-----------------------    I2C_Stream((unsigned)index, 4, &fuse, 0, NULL);
;** 275	-----------------------    return;
           MVKL    .S1     _$T8$9,A3         ; |270| 

           MVKH    .S1     _$T8$9,A3         ; |270| 
||         STW     .D2T1   A10,*SP--(16)     ; |269| 

           LDW     .D1T1   *A3,A3            ; |270| 
           CALL    .S1     _ATMEL_AckPolling ; |274| 
           MV      .L1     A4,A10            ; |269| 
           NOP             1
           STW     .D2T2   B13,*+SP(12)      ; |269| 
           STW     .D2T1   A3,*+SP(8)        ; |270| 

           ADDKPC  .S2     RL47,B3,0         ; |274| 
||         MV      .L2     B3,B13            ; |269| 
||         STB     .D2T2   B4,*+SP(10)       ; |272| 

RL47:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |274| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _I2C_Stream       ; |275| 
           ADDKPC  .S2     RL48,B3,0         ; |275| 
           ZERO    .L1     A8                ; |275| 
           ZERO    .L2     B6                ; |275| 
           ADD     .S1X    8,SP,A6           ; |275| 

           MVK     .D2     0x4,B4            ; |275| 
||         MV      .D1     A10,A4            ; |275| 

RL48:      ; CALL OCCURS {_I2C_Stream}       ; |275| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |277| 

           RET     .S2     B3                ; |277| 
||         LDW     .D2T2   *+SP(12),B13      ; |277| 

           LDW     .D2T1   *++SP(16),A10     ; |277| 
	.dwpsn	"atmel.c",277,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |277| 
	.dwattr DW$106, DW_AT_end_file("atmel.c")
	.dwattr DW$106, DW_AT_end_line(0x115)
	.dwattr DW$106, DW_AT_end_column(0x01)
	.dwendtag DW$106

	.sect	".text"

DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("_read_config_zone_raw"), DW_AT_symbol_name("__read_config_zone_raw")
	.dwattr DW$109, DW_AT_low_pc(__read_config_zone_raw)
	.dwattr DW$109, DW_AT_high_pc(0x00)
	.dwattr DW$109, DW_AT_begin_file("atmel.c")
	.dwattr DW$109, DW_AT_begin_line(0xc8)
	.dwattr DW$109, DW_AT_begin_column(0x0d)
	.dwattr DW$109, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$109, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",201,1

;******************************************************************************
;* FUNCTION NAME: __read_config_zone_raw                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 8 Auto + 16 Save = 24 byte                  *
;******************************************************************************
__read_config_zone_raw:
;** --------------------------------------------------------------------------*
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$110, DW_AT_type(*DW$T$10)
	.dwattr DW$110, DW_AT_location[DW_OP_reg4]
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$111, DW_AT_type(*DW$T$6)
	.dwattr DW$111, DW_AT_location[DW_OP_reg20]
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$112, DW_AT_type(*DW$T$26)
	.dwattr DW$112, DW_AT_location[DW_OP_reg6]
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$113, DW_AT_type(*DW$T$6)
	.dwattr DW$113, DW_AT_location[DW_OP_reg22]
;** 202	-----------------------    read_config[] = {...};
;** 204	-----------------------    read_config[2] = addr;
;** 205	-----------------------    read_config[3] = len;
;** 206	-----------------------    ATMEL_AckPolling(index);
;** 207	-----------------------    I2C_Stream((unsigned)index, 4, &read_config, (int)len, buf);
;** 207	-----------------------    return;
           MVKL    .S1     _$T5$6,A3         ; |202| 

           MVKH    .S1     _$T5$6,A3         ; |202| 
||         STW     .D2T1   A12,*SP--(24)     ; |201| 

           LDW     .D1T1   *A3,A3            ; |202| 
           STW     .D2T2   B13,*+SP(12)      ; |201| 
           CALL    .S1     _ATMEL_AckPolling ; |206| 
           STDW    .D2T1   A11:A10,*+SP(16)  ; |201| 
           MV      .L1X    B6,A11            ; |201| 
           STW     .D2T1   A3,*+SP(8)        ; |202| 
           STB     .D2T2   B4,*+SP(10)       ; |204| 

           STB     .D2T2   B6,*+SP(11)       ; |205| 
||         MV      .S1     A4,A10            ; |201| 
||         MV      .L2     B3,B13            ; |201| 
||         ADDKPC  .S2     RL49,B3,0         ; |206| 
||         MV      .D1     A6,A12            ; |201| 

RL49:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |206| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _I2C_Stream       ; |207| 
           ADDKPC  .S2     RL50,B3,0         ; |207| 
           MV      .L1     A12,A8            ; |207| 
           MV      .L2X    A11,B6            ; |207| 
           ADD     .S1X    8,SP,A6           ; |207| 

           MVK     .D2     0x4,B4            ; |207| 
||         MV      .D1     A10,A4            ; |207| 

RL50:      ; CALL OCCURS {_I2C_Stream}       ; |207| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(16),A11:A10  ; |208| 
||         MV      .L2     B13,B3            ; |208| 

           RET     .S2     B3                ; |208| 
||         LDW     .D2T2   *+SP(12),B13      ; |208| 

           LDW     .D2T1   *++SP(24),A12     ; |208| 
	.dwpsn	"atmel.c",208,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |208| 
	.dwattr DW$109, DW_AT_end_file("atmel.c")
	.dwattr DW$109, DW_AT_end_line(0xd0)
	.dwattr DW$109, DW_AT_end_column(0x01)
	.dwendtag DW$109

	.sect	".text"
	.global	_ATMEL_ReadConfigZone

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_ReadConfigZone"), DW_AT_symbol_name("_ATMEL_ReadConfigZone")
	.dwattr DW$114, DW_AT_low_pc(_ATMEL_ReadConfigZone)
	.dwattr DW$114, DW_AT_high_pc(0x00)
	.dwattr DW$114, DW_AT_begin_file("atmel.c")
	.dwattr DW$114, DW_AT_begin_line(0xeb)
	.dwattr DW$114, DW_AT_begin_column(0x06)
	.dwattr DW$114, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$114, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",236,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_ReadConfigZone                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_ATMEL_ReadConfigZone:
;** --------------------------------------------------------------------------*
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$115, DW_AT_type(*DW$T$10)
	.dwattr DW$115, DW_AT_location[DW_OP_reg4]
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$116, DW_AT_type(*DW$T$26)
	.dwattr DW$116, DW_AT_location[DW_OP_reg20]
;** 236	-----------------------    buf = buf;
;** 239	-----------------------    _read_config_zone_raw(index, 12u, buf, 4u);
;** 242	-----------------------    _read_config_zone_raw(index, 25u, (buf += 4)+1, 7u);
;** 243	-----------------------    *buf++{8} = 0xfbu;
;** 246	-----------------------    _read_config_zone_raw(index, 64u, buf, 16u);
;** 246	-----------------------    return;
           CALL    .S1     __read_config_zone_raw ; |239| 
           STW     .D2T1   A10,*SP--(16)     ; |236| 
           STDW    .D2T2   B11:B10,*+SP(8)   ; |236| 
           MVK     .L2     0x4,B6            ; |239| 

           ADD     .L2     4,B4,B10          ; |242| 
||         ADD     .S2     5,B4,B11          ; |242| 
||         STW     .D2T2   B13,*+SP(4)       ; |236| 

           ADDKPC  .S2     RL51,B3,0         ; |239| 
||         MVK     .L2     0xc,B4            ; |239| 
||         MV      .D2     B3,B13            ; |236| 
||         MV      .L1     A4,A10            ; |236| 
||         MV      .S1X    B4,A6             ; |236| 

RL51:      ; CALL OCCURS {__read_config_zone_raw}  ; |239| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __read_config_zone_raw ; |242| 
           MVK     .S2     0x19,B4           ; |242| 
           ADDKPC  .S2     RL52,B3,0         ; |242| 
           MVK     .L2     0x7,B6            ; |242| 
           MV      .L1X    B11,A6            ; |242| 
           MV      .S1     A10,A4            ; |242| 
RL52:      ; CALL OCCURS {__read_config_zone_raw}  ; |242| 
           CALL    .S1     __read_config_zone_raw ; |246| 
           MVK     .S2     251,B4            ; |243| 
           MVK     .S2     0x10,B6           ; |246| 
           STB     .D2T2   B4,*B10++(8)      ; |243| 
           MVK     .S2     0x40,B4           ; |246| 

           ADDKPC  .S2     RL53,B3,0         ; |246| 
||         MV      .L1X    B10,A6            ; |246| 
||         MV      .S1     A10,A4            ; |246| 

RL53:      ; CALL OCCURS {__read_config_zone_raw}  ; |246| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T2   *+SP(8),B11:B10   ; |247| 
||         MV      .L2     B13,B3            ; |247| 

           RET     .S2     B3                ; |247| 
||         LDW     .D2T2   *+SP(4),B13       ; |247| 

           LDW     .D2T1   *++SP(16),A10     ; |247| 
	.dwpsn	"atmel.c",247,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |247| 
	.dwattr DW$114, DW_AT_end_file("atmel.c")
	.dwattr DW$114, DW_AT_end_line(0xf7)
	.dwattr DW$114, DW_AT_end_column(0x01)
	.dwendtag DW$114

	.sect	".text"
	.global	_ATMEL_SetupConfigZone

DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_SetupConfigZone"), DW_AT_symbol_name("_ATMEL_SetupConfigZone")
	.dwattr DW$117, DW_AT_low_pc(_ATMEL_SetupConfigZone)
	.dwattr DW$117, DW_AT_high_pc(0x00)
	.dwattr DW$117, DW_AT_begin_file("atmel.c")
	.dwattr DW$117, DW_AT_begin_line(0xf9)
	.dwattr DW$117, DW_AT_begin_column(0x05)
	.dwattr DW$117, DW_AT_frame_base[DW_OP_breg31 304]
	.dwattr DW$117, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",250,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_SetupConfigZone                                      *
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
;*   Local Frame Size  : 8 Args + 276 Auto + 16 Save = 300 byte               *
;******************************************************************************
_ATMEL_SetupConfigZone:
;** --------------------------------------------------------------------------*
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$118, DW_AT_type(*DW$T$10)
	.dwattr DW$118, DW_AT_location[DW_OP_reg4]
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$119, DW_AT_type(*DW$T$26)
	.dwattr DW$119, DW_AT_location[DW_OP_reg20]
;** 253	-----------------------    buf = buf;
;** 214	-----------------------    unlock_config[] = {...};  // [17]
;** 215	-----------------------    AR_nor[] = {...};  // [17]
;** 217	-----------------------    ATMEL_AckPolling(0);  // [17]
;** 218	-----------------------    I2C_Stream(0u, 7, &unlock_config, 0, NULL);  // [17]
;** 292	-----------------------    _write_config_zone_raw(index, 32u, &AR_nor, 8u);  // [22]
;** 292	-----------------------    _write_config_zone_raw(index, 12u, buf, 4u);  // [22]
;** 227	-----------------------    *(buf += 4) = 251;  // [17]
;** 228	-----------------------    _write_config_zone_raw(index, 25u, buf+1, 7u);  // [17]
;** 231	-----------------------    _write_config_zone_raw(index, 64u, buf += 8, 16u);  // [17]
;** 231	-----------------------    ATMEL_ReadConfigZone(index, &temp);  // [17]
;** 256	-----------------------    if ( memcmp(buf, &temp, 28) ) goto g3;
           ADDK    .S2     -304,SP           ; |250| 
           STW     .D2T2   B10,*+SP(304)     ; |250| 
           STW     .D2T1   A10,*+SP(296)     ; |250| 

           STW     .D2T1   A11,*+SP(300)     ; |250| 
||         MVKL    .S2     _$T6$7,B5         ; |214| 

           STW     .D2T2   B13,*+SP(292)     ; |250| 
||         MVKH    .S2     _$T6$7,B5         ; |214| 

           LDW     .D2T2   *B5,B7            ; |214| 
           LDH     .D2T2   *+B5(4),B6        ; |214| 
           LDB     .D2T2   *+B5(6),B5        ; |214| 
           MVK     .S1     280,A3            ; |214| 
           ADD     .L1X    A3,SP,A5          ; |214| 
           STW     .D1T2   B7,*A5            ; |214| 

           STH     .D1T2   B6,*+A5(4)        ; |214| 
||         MVKL    .S1     _$T7$8,A3         ; |215| 

           STB     .D1T2   B5,*+A5(6)        ; |214| 
||         MVKH    .S1     _$T7$8,A3         ; |215| 

           LDDW    .D1T1   *A3,A7:A6         ; |215| 
           CALL    .S1     _ATMEL_AckPolling ; |217| 
           MV      .L2     B3,B13            ; |250| 
           ADDKPC  .S2     RL54,B3,0         ; |217| 
           MV      .S1X    B4,A10            ; |250| 
           STW     .D2T1   A6,*+SP(272)      ; |215| 

           STW     .D2T1   A7,*+SP(276)      ; |215| 
||         MV      .L2     B4,B10            ; |250| 
||         MV      .D1     A4,A11            ; |250| 
||         ZERO    .L1     A4                ; |217| 

RL54:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |217| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _I2C_Stream       ; |218| 
           MVK     .S1     280,A3            ; |218| 
           ADDKPC  .S2     RL55,B3,0         ; |218| 
           ADD     .L1X    A3,SP,A6          ; |218| 
           ZERO    .S1     A8                ; |218| 

           ZERO    .L2     B6                ; |218| 
||         MVK     .D2     0x7,B4            ; |218| 
||         ZERO    .D1     A4                ; |218| 

RL55:      ; CALL OCCURS {_I2C_Stream}       ; |218| 
           CALL    .S1     __write_config_zone_raw ; |292| 
           MVK     .S2     0x20,B4           ; |292| 
           MVK     .S1     272,A3            ; |292| 
           ADDKPC  .S2     RL56,B3,0         ; |292| 
           ADD     .L1X    A3,SP,A6          ; |292| 

           MVK     .L2     0x8,B6            ; |292| 
||         MV      .S1     A11,A4            ; |292| 

RL56:      ; CALL OCCURS {__write_config_zone_raw}  ; |292| 
           CALL    .S1     __write_config_zone_raw ; |292| 
           ADDKPC  .S2     RL57,B3,0         ; |292| 
           MVK     .L2     0x4,B6            ; |292| 
           MV      .L1X    B10,A6            ; |292| 
           MVK     .D2     0xc,B4            ; |292| 
           MV      .S1     A11,A4            ; |292| 
RL57:      ; CALL OCCURS {__write_config_zone_raw}  ; |292| 
           CALL    .S1     __write_config_zone_raw ; |228| 
           MVK     .S2     251,B4            ; |227| 
           STB     .D2T2   B4,*++B10(4)      ; |227| 
           MVK     .S2     0x19,B4           ; |228| 
           ADDKPC  .S2     RL58,B3,0         ; |228| 

           ADD     .L1X    1,B10,A6          ; |228| 
||         MVK     .L2     0x7,B6            ; |228| 
||         MV      .S1     A11,A4            ; |228| 

RL58:      ; CALL OCCURS {__write_config_zone_raw}  ; |228| 
           CALL    .S1     __write_config_zone_raw ; |231| 
           MVK     .S2     0x10,B6           ; |231| 
           MVK     .S2     0x40,B4           ; |231| 
           ADDKPC  .S2     RL59,B3,0         ; |231| 
           ADD     .L1X    8,B10,A6          ; |231| 
           MV      .S1     A11,A4            ; |231| 
RL59:      ; CALL OCCURS {__write_config_zone_raw}  ; |231| 
           CALL    .S1     _ATMEL_ReadConfigZone ; |231| 
           ADDKPC  .S2     RL60,B3,2         ; |231| 
           ADD     .D2     SP,16,B4          ; |231| 
           MV      .L1     A11,A4            ; |231| 
RL60:      ; CALL OCCURS {_ATMEL_ReadConfigZone}  ; |231| 
           CALL    .S1     _memcmp           ; |256| 
           MV      .L1     A10,A4            ; |256| 
           ADD     .D2     SP,16,B4          ; |256| 
           MVK     .S1     0x1c,A6           ; |256| 
           ADDKPC  .S2     RL61,B3,1         ; |256| 
RL61:      ; CALL OCCURS {_memcmp}           ; |256| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |256| 
||         MVKL    .S2     SL10+0,B10        ; |261| 
||         MVKL    .S1     SL12+0,A3         ; |260| 

           MVKL    .S2     SL11+0,B4         ; |257| 
|| [ A0]   B       .S1     L20               ; |256| 

   [ A0]   CALL    .S1     _dbg_output       ; |260| 
||         MVKH    .S2     SL10+0,B10        ; |261| 

   [!A0]   CALL    .S1     _dbg_output       ; |257| 
||         MVKH    .S2     SL11+0,B4         ; |257| 

           MVKH    .S1     SL12+0,A3         ; |260| 
           NOP             2
           ; BRANCHCC OCCURS {L20}           ; |256| 
;** --------------------------------------------------------------------------*
;** 257	-----------------------    dbg_output("Init config area.\n");
;** 257	-----------------------    return buf[27];
           ADDKPC  .S2     RL62,B3,0         ; |257| 
           STW     .D2T2   B4,*+SP(4)        ; |257| 
RL62:      ; CALL OCCURS {_dbg_output}       ; |257| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(304),B10     ; |266| 

           LDW     .D2T1   *+SP(300),A11     ; |266| 
||         MV      .L2     B13,B3            ; |266| 

           RET     .S2     B3                ; |266| 
||         LDW     .D2T2   *+SP(292),B13     ; |266| 
||         LDBU    .D1T1   *+A10(27),A4      ; |257| 

           LDW     .D2T1   *+SP(296),A10     ; |266| 
           NOP             3
           ADDK    .S2     304,SP            ; |266| 
           ; BRANCH OCCURS {B3}              ; |266| 
;** --------------------------------------------------------------------------*
L20:    
;**	-----------------------g3:
;** 260	-----------------------    dbg_output("Config area error\n");
;** 261	-----------------------    dbg_output("please replace the C0104 chip\n");
;** 262	-----------------------    exit(1);
;***	; the preceding call never returns
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T1   A3,*+SP(4)        ; |260| 
||         ADDKPC  .S2     RL63,B3,0         ; |260| 

RL63:      ; CALL OCCURS {_dbg_output}       ; |260| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _dbg_output       ; |261| 
           ADDKPC  .S2     RL64,B3,1         ; |261| 
           STW     .D2T2   B10,*+SP(4)       ; |261| 
           NOP             2
RL64:      ; CALL OCCURS {_dbg_output}       ; |261| 
           CALL    .S1     _exit             ; |262| 
           MVK     .L1     0x1,A4            ; |262| 
           ADDKPC  .S2     RL65,B3,3         ; |262| 
RL65:      ; CALL OCCURS {_exit}             ; |262| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L21:    
DW$L$_ATMEL_SetupConfigZone$8$B:
;**	-----------------------g4:
;** 262	-----------------------    goto g4;
	.dwpsn	"atmel.c",266,1
           BNOP    .S1     L21,5             ; |262| 
           ; BRANCH OCCURS {L21}             ; |262| 
DW$L$_ATMEL_SetupConfigZone$8$E:

DW$120	.dwtag  DW_TAG_loop
	.dwattr DW$120, DW_AT_name("D:\pred\dsp\i2c\atmel.asm:L21:1:1185766849")
	.dwattr DW$120, DW_AT_begin_file("atmel.c")
	.dwattr DW$120, DW_AT_begin_line(0x106)
	.dwattr DW$120, DW_AT_end_line(0x10a)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_ATMEL_SetupConfigZone$8$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_ATMEL_SetupConfigZone$8$E)
	.dwendtag DW$120

	.dwattr DW$117, DW_AT_end_file("atmel.c")
	.dwattr DW$117, DW_AT_end_line(0x10a)
	.dwattr DW$117, DW_AT_end_column(0x01)
	.dwendtag DW$117

	.sect	".text"
	.global	_ATMEL_ReadRawUserZone

DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_ReadRawUserZone"), DW_AT_symbol_name("_ATMEL_ReadRawUserZone")
	.dwattr DW$122, DW_AT_low_pc(_ATMEL_ReadRawUserZone)
	.dwattr DW$122, DW_AT_high_pc(0x00)
	.dwattr DW$122, DW_AT_begin_file("atmel.c")
	.dwattr DW$122, DW_AT_begin_line(0x12c)
	.dwattr DW$122, DW_AT_begin_column(0x06)
	.dwattr DW$122, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$122, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",301,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_ReadRawUserZone                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ATMEL_ReadRawUserZone:
;** --------------------------------------------------------------------------*
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$123, DW_AT_type(*DW$T$10)
	.dwattr DW$123, DW_AT_location[DW_OP_reg4]
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$124, DW_AT_type(*DW$T$26)
	.dwattr DW$124, DW_AT_location[DW_OP_reg20]
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$125, DW_AT_type(*DW$T$6)
	.dwattr DW$125, DW_AT_location[DW_OP_reg6]
;** 302	-----------------------    _read_userzone_raw_bytes(index, buf, (int)len);
;** 302	-----------------------    return;
           CALLRET .S1     __read_userzone_raw_bytes ; |302| 
	.dwpsn	"atmel.c",303,1
           NOP             5
RL66:      ; CALL-RETURN OCCURS {__read_userzone_raw_bytes}  ; |302| 
	.dwattr DW$122, DW_AT_end_file("atmel.c")
	.dwattr DW$122, DW_AT_end_line(0x12f)
	.dwattr DW$122, DW_AT_end_column(0x01)
	.dwendtag DW$122

	.sect	".text"
	.global	_ATMEL_ReadRawConfigZone

DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_ReadRawConfigZone"), DW_AT_symbol_name("_ATMEL_ReadRawConfigZone")
	.dwattr DW$126, DW_AT_low_pc(_ATMEL_ReadRawConfigZone)
	.dwattr DW$126, DW_AT_high_pc(0x00)
	.dwattr DW$126, DW_AT_begin_file("atmel.c")
	.dwattr DW$126, DW_AT_begin_line(0x127)
	.dwattr DW$126, DW_AT_begin_column(0x06)
	.dwattr DW$126, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$126, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",296,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_ReadRawConfigZone                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ATMEL_ReadRawConfigZone:
;** --------------------------------------------------------------------------*
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$127, DW_AT_type(*DW$T$10)
	.dwattr DW$127, DW_AT_location[DW_OP_reg4]
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$128, DW_AT_type(*DW$T$6)
	.dwattr DW$128, DW_AT_location[DW_OP_reg20]
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$129, DW_AT_type(*DW$T$26)
	.dwattr DW$129, DW_AT_location[DW_OP_reg6]
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$130, DW_AT_type(*DW$T$6)
	.dwattr DW$130, DW_AT_location[DW_OP_reg22]
;** 297	-----------------------    _read_config_zone_raw(index, addr, buf, len);
;** 297	-----------------------    return;
           CALLRET .S1     __read_config_zone_raw ; |297| 
	.dwpsn	"atmel.c",298,1
           NOP             5
RL67:      ; CALL-RETURN OCCURS {__read_config_zone_raw}  ; |297| 
	.dwattr DW$126, DW_AT_end_file("atmel.c")
	.dwattr DW$126, DW_AT_end_line(0x12a)
	.dwattr DW$126, DW_AT_end_column(0x01)
	.dwendtag DW$126

	.sect	".text"
	.global	_ATMEL_ReadFuse

DW$131	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_ReadFuse"), DW_AT_symbol_name("_ATMEL_ReadFuse")
	.dwattr DW$131, DW_AT_low_pc(_ATMEL_ReadFuse)
	.dwattr DW$131, DW_AT_high_pc(0x00)
	.dwattr DW$131, DW_AT_begin_file("atmel.c")
	.dwattr DW$131, DW_AT_begin_line(0x117)
	.dwattr DW$131, DW_AT_begin_column(0x05)
	.dwattr DW$131, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$131, DW_AT_skeletal(0x01)
	.dwpsn	"atmel.c",280,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_ReadFuse                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,A22,  *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,A22,  *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 8 Auto + 8 Save = 16 byte                   *
;******************************************************************************
_ATMEL_ReadFuse:
;** --------------------------------------------------------------------------*
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$132, DW_AT_type(*DW$T$10)
	.dwattr DW$132, DW_AT_location[DW_OP_reg4]
;** 281	-----------------------    fuse[] = {...};
;** 284	-----------------------    ATMEL_AckPolling(index);
;** 285	-----------------------    I2C_Stream((unsigned)index, 4, &fuse, 1, &c);
;** 286	-----------------------    return c;
           MVKL    .S1     _$T9$10,A3        ; |281| 

           MVKH    .S1     _$T9$10,A3        ; |281| 
||         STW     .D2T1   A10,*SP--(16)     ; |280| 

           CALL    .S1     _ATMEL_AckPolling ; |284| 
||         LDW     .D1T1   *A3,A3            ; |281| 

           MV      .L1     A4,A10            ; |280| 
           NOP             2
           STW     .D2T2   B13,*+SP(12)      ; |280| 

           ADDKPC  .S2     RL68,B3,0         ; |284| 
||         MV      .L2     B3,B13            ; |280| 
||         STW     .D2T1   A3,*+SP(8)        ; |281| 

RL68:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |284| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _I2C_Stream       ; |285| 
           ADD     .L1X    8,SP,A6           ; |285| 
           ADDKPC  .S2     RL69,B3,0         ; |285| 
           ADD     .L1X    4,SP,A8           ; |285| 
           MVK     .L2     0x1,B6            ; |285| 

           MVK     .D2     0x4,B4            ; |285| 
||         MV      .S1     A10,A4            ; |285| 

RL69:      ; CALL OCCURS {_I2C_Stream}       ; |285| 
;** --------------------------------------------------------------------------*

           LDBU    .D2T1   *+SP(4),A4        ; |286| 
||         MV      .L2     B13,B3            ; |287| 

           RET     .S2     B3                ; |287| 
||         LDW     .D2T2   *+SP(12),B13      ; |287| 

           LDW     .D2T1   *++SP(16),A10     ; |287| 
	.dwpsn	"atmel.c",287,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |287| 
	.dwattr DW$131, DW_AT_end_file("atmel.c")
	.dwattr DW$131, DW_AT_end_line(0x11f)
	.dwattr DW$131, DW_AT_end_column(0x01)
	.dwendtag DW$131

;; Inlined function references:
;; [ 17] _wirte_config_zone
;; [ 22] ATMEL_WriteRawConfigZone
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	10,0
SL2:	.string	"%02x ",0
SL3:	.string	"cmd failed",10,0
SL4:	.string	".",0
SL5:	.string	"Initial data:",10,0
SL6:	.string	"writing",0
SL7:	.string	"verify",0
SL8:	.string	"data ok",10,0
SL9:	.string	"data error",10,0
SL10:	.string	"please replace the C0104 chip",10,0
SL11:	.string	"Init config area.",10,0
SL12:	.string	"Config area error",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_exit
	.global	_dbg_output
	.global	_I2C_IssueStart
	.global	_I2C_OutByteCheckAck
	.global	_I2C_IssueStop
	.global	_delay_ms
	.global	_I2C_InCharByAck
	.global	_memcmp
	.global	_memcpy

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$21	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$21

DW$T$20	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_address_class(0x20)

DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$32

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$26, DW_AT_address_class(0x20)

DW$T$40	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$40, DW_AT_byte_size(0x04)
DW$149	.dwtag  DW_TAG_subrange_type
	.dwattr DW$149, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$41, DW_AT_byte_size(0x14)
DW$150	.dwtag  DW_TAG_subrange_type
	.dwattr DW$150, DW_AT_upper_bound(0x13)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$42, DW_AT_byte_size(0x100)
DW$151	.dwtag  DW_TAG_subrange_type
	.dwattr DW$151, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$43, DW_AT_byte_size(0x07)
DW$152	.dwtag  DW_TAG_subrange_type
	.dwattr DW$152, DW_AT_upper_bound(0x06)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$44, DW_AT_byte_size(0x08)
DW$153	.dwtag  DW_TAG_subrange_type
	.dwattr DW$153, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$44

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
DW$155	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)

DW$T$55	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$61


DW$T$62	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$62

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$48	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$47)
	.dwattr DW$T$48, DW_AT_address_class(0x20)
DW$T$19	.dwtag  DW_TAG_const_type
DW$T$39	.dwtag  DW_TAG_const_type
	.dwattr DW$T$39, DW_AT_type(*DW$T$6)
DW$T$47	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$47, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$47, DW_AT_byte_size(0x01)

	.dwattr DW$56, DW_AT_external(0x01)
	.dwattr DW$56, DW_AT_type(*DW$T$10)
	.dwattr DW$114, DW_AT_external(0x01)
	.dwattr DW$131, DW_AT_external(0x01)
	.dwattr DW$131, DW_AT_type(*DW$T$10)
	.dwattr DW$126, DW_AT_external(0x01)
	.dwattr DW$122, DW_AT_external(0x01)
	.dwattr DW$117, DW_AT_external(0x01)
	.dwattr DW$117, DW_AT_type(*DW$T$10)
	.dwattr DW$106, DW_AT_external(0x01)
	.dwattr DW$106, DW_AT_type(*DW$T$10)
	.dwattr DW$101, DW_AT_external(0x01)
	.dwattr DW$92, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_type(*DW$T$10)
	.dwattr DW$78, DW_AT_type(*DW$T$10)
	.dwattr DW$86, DW_AT_type(*DW$T$10)
	.dwattr DW$64, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_external(0x01)
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$171, DW_AT_location[DW_OP_reg0]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$172, DW_AT_location[DW_OP_reg1]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$173, DW_AT_location[DW_OP_reg2]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$174, DW_AT_location[DW_OP_reg3]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$175, DW_AT_location[DW_OP_reg4]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$176, DW_AT_location[DW_OP_reg5]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$177, DW_AT_location[DW_OP_reg6]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$178, DW_AT_location[DW_OP_reg7]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$179, DW_AT_location[DW_OP_reg8]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$180, DW_AT_location[DW_OP_reg9]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$181, DW_AT_location[DW_OP_reg10]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$182, DW_AT_location[DW_OP_reg11]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$183, DW_AT_location[DW_OP_reg12]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$184, DW_AT_location[DW_OP_reg13]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$185, DW_AT_location[DW_OP_reg14]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$186, DW_AT_location[DW_OP_reg15]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$187, DW_AT_location[DW_OP_reg16]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$188, DW_AT_location[DW_OP_reg17]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$189, DW_AT_location[DW_OP_reg18]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$190, DW_AT_location[DW_OP_reg19]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$191, DW_AT_location[DW_OP_reg20]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$192, DW_AT_location[DW_OP_reg21]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$193, DW_AT_location[DW_OP_reg22]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$194, DW_AT_location[DW_OP_reg23]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$195, DW_AT_location[DW_OP_reg24]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$196, DW_AT_location[DW_OP_reg25]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$197, DW_AT_location[DW_OP_reg26]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$198, DW_AT_location[DW_OP_reg27]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$199, DW_AT_location[DW_OP_reg28]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$200, DW_AT_location[DW_OP_reg29]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$201, DW_AT_location[DW_OP_reg30]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$202, DW_AT_location[DW_OP_reg31]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x20]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x21]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x22]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x23]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x24]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x25]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x26]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x27]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x28]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x29]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x2a]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x2b]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x2c]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x2d]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x2e]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x2f]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x30]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x31]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x32]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x33]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x34]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x35]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x36]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x37]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x38]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x39]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x3a]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x3b]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x3c]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x3d]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x3e]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x3f]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x40]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x41]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x42]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x43]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x44]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x45]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x46]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x47]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x48]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x49]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x4a]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x4b]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x4c]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x4d]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x4e]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x4f]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x50]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$252, DW_AT_location[DW_OP_regx 0x51]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$253, DW_AT_location[DW_OP_regx 0x52]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$254, DW_AT_location[DW_OP_regx 0x53]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$255, DW_AT_location[DW_OP_regx 0x54]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$256, DW_AT_location[DW_OP_regx 0x55]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$257, DW_AT_location[DW_OP_regx 0x56]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$258, DW_AT_location[DW_OP_regx 0x57]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$259, DW_AT_location[DW_OP_regx 0x58]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$260, DW_AT_location[DW_OP_regx 0x59]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$261, DW_AT_location[DW_OP_regx 0x5a]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$262, DW_AT_location[DW_OP_regx 0x5b]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$263, DW_AT_location[DW_OP_regx 0x5c]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$264, DW_AT_location[DW_OP_regx 0x5d]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$265, DW_AT_location[DW_OP_regx 0x5e]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$266, DW_AT_location[DW_OP_regx 0x5f]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$267, DW_AT_location[DW_OP_regx 0x60]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$268, DW_AT_location[DW_OP_regx 0x61]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$269, DW_AT_location[DW_OP_regx 0x62]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$270, DW_AT_location[DW_OP_regx 0x63]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$271, DW_AT_location[DW_OP_regx 0x64]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$272, DW_AT_location[DW_OP_regx 0x65]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$273, DW_AT_location[DW_OP_regx 0x66]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$274, DW_AT_location[DW_OP_regx 0x67]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$275, DW_AT_location[DW_OP_regx 0x68]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$276, DW_AT_location[DW_OP_regx 0x69]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$277, DW_AT_location[DW_OP_regx 0x6a]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$278, DW_AT_location[DW_OP_regx 0x6b]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$279, DW_AT_location[DW_OP_regx 0x6c]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$280, DW_AT_location[DW_OP_regx 0x6d]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$281, DW_AT_location[DW_OP_regx 0x6e]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$282, DW_AT_location[DW_OP_regx 0x6f]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$283, DW_AT_location[DW_OP_regx 0x70]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$284, DW_AT_location[DW_OP_regx 0x71]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$285, DW_AT_location[DW_OP_regx 0x72]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$286, DW_AT_location[DW_OP_regx 0x73]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$287, DW_AT_location[DW_OP_regx 0x74]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$288, DW_AT_location[DW_OP_regx 0x75]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$289, DW_AT_location[DW_OP_regx 0x76]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$290, DW_AT_location[DW_OP_regx 0x77]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$291, DW_AT_location[DW_OP_regx 0x78]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$292, DW_AT_location[DW_OP_regx 0x79]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$293, DW_AT_location[DW_OP_regx 0x7a]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$294, DW_AT_location[DW_OP_regx 0x7b]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$295, DW_AT_location[DW_OP_regx 0x7c]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$296, DW_AT_location[DW_OP_regx 0x7d]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$297, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

