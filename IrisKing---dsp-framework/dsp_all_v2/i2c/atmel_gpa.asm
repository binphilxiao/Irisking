;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Jul 30 11:09:21 2007                                *
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
	.dwattr DW$CU, DW_AT_name("atmel_gpa.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("dbg_output"), DW_AT_symbol_name("_dbg_output")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$3	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_ReadRawConfigZone"), DW_AT_symbol_name("_ATMEL_ReadRawConfigZone")
	.dwattr DW$4, DW_AT_type(*DW$T$10)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("rand"), DW_AT_symbol_name("_rand")
	.dwattr DW$5, DW_AT_type(*DW$T$10)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_Stream"), DW_AT_symbol_name("_I2C_Stream")
	.dwattr DW$6, DW_AT_type(*DW$T$10)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_AckPolling"), DW_AT_symbol_name("_ATMEL_AckPolling")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_ReadRawUserZone"), DW_AT_symbol_name("_ATMEL_ReadRawUserZone")
	.dwattr DW$8, DW_AT_type(*DW$T$10)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
_Gpa_byte:	.usect	".far",1,1
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("Gpa_byte"), DW_AT_symbol_name("_Gpa_byte")
	.dwattr DW$9, DW_AT_type(*DW$T$6)
	.dwattr DW$9, DW_AT_location[DW_OP_addr _Gpa_byte]
_RA:	.usect	".far",1,1
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("RA"), DW_AT_symbol_name("_RA")
	.dwattr DW$10, DW_AT_type(*DW$T$6)
	.dwattr DW$10, DW_AT_location[DW_OP_addr _RA]
_RB:	.usect	".far",1,1
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("RB"), DW_AT_symbol_name("_RB")
	.dwattr DW$11, DW_AT_type(*DW$T$6)
	.dwattr DW$11, DW_AT_location[DW_OP_addr _RB]
_RC:	.usect	".far",1,1
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("RC"), DW_AT_symbol_name("_RC")
	.dwattr DW$12, DW_AT_type(*DW$T$6)
	.dwattr DW$12, DW_AT_location[DW_OP_addr _RC]
_RD:	.usect	".far",1,1
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("RD"), DW_AT_symbol_name("_RD")
	.dwattr DW$13, DW_AT_type(*DW$T$6)
	.dwattr DW$13, DW_AT_location[DW_OP_addr _RD]
_RE:	.usect	".far",1,1
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("RE"), DW_AT_symbol_name("_RE")
	.dwattr DW$14, DW_AT_type(*DW$T$6)
	.dwattr DW$14, DW_AT_location[DW_OP_addr _RE]
_RF:	.usect	".far",1,1
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("RF"), DW_AT_symbol_name("_RF")
	.dwattr DW$15, DW_AT_type(*DW$T$6)
	.dwattr DW$15, DW_AT_location[DW_OP_addr _RF]
_RG:	.usect	".far",1,1
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("RG"), DW_AT_symbol_name("_RG")
	.dwattr DW$16, DW_AT_type(*DW$T$6)
	.dwattr DW$16, DW_AT_location[DW_OP_addr _RG]
_SA:	.usect	".far",1,1
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("SA"), DW_AT_symbol_name("_SA")
	.dwattr DW$17, DW_AT_type(*DW$T$6)
	.dwattr DW$17, DW_AT_location[DW_OP_addr _SA]
_SB:	.usect	".far",1,1
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("SB"), DW_AT_symbol_name("_SB")
	.dwattr DW$18, DW_AT_type(*DW$T$6)
	.dwattr DW$18, DW_AT_location[DW_OP_addr _SB]
_SC:	.usect	".far",1,1
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("SC"), DW_AT_symbol_name("_SC")
	.dwattr DW$19, DW_AT_type(*DW$T$6)
	.dwattr DW$19, DW_AT_location[DW_OP_addr _SC]
_SD:	.usect	".far",1,1
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("SD"), DW_AT_symbol_name("_SD")
	.dwattr DW$20, DW_AT_type(*DW$T$6)
	.dwattr DW$20, DW_AT_location[DW_OP_addr _SD]
_SE:	.usect	".far",1,1
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("SE"), DW_AT_symbol_name("_SE")
	.dwattr DW$21, DW_AT_type(*DW$T$6)
	.dwattr DW$21, DW_AT_location[DW_OP_addr _SE]
_SF:	.usect	".far",1,1
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("SF"), DW_AT_symbol_name("_SF")
	.dwattr DW$22, DW_AT_type(*DW$T$6)
	.dwattr DW$22, DW_AT_location[DW_OP_addr _SF]
_SG:	.usect	".far",1,1
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("SG"), DW_AT_symbol_name("_SG")
	.dwattr DW$23, DW_AT_type(*DW$T$6)
	.dwattr DW$23, DW_AT_location[DW_OP_addr _SG]
_TA:	.usect	".far",1,1
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("TA"), DW_AT_symbol_name("_TA")
	.dwattr DW$24, DW_AT_type(*DW$T$6)
	.dwattr DW$24, DW_AT_location[DW_OP_addr _TA]
_TB:	.usect	".far",1,1
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("TB"), DW_AT_symbol_name("_TB")
	.dwattr DW$25, DW_AT_type(*DW$T$6)
	.dwattr DW$25, DW_AT_location[DW_OP_addr _TB]
_TC:	.usect	".far",1,1
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("TC"), DW_AT_symbol_name("_TC")
	.dwattr DW$26, DW_AT_type(*DW$T$6)
	.dwattr DW$26, DW_AT_location[DW_OP_addr _TC]
_TD:	.usect	".far",1,1
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("TD"), DW_AT_symbol_name("_TD")
	.dwattr DW$27, DW_AT_type(*DW$T$6)
	.dwattr DW$27, DW_AT_location[DW_OP_addr _TD]
_TE:	.usect	".far",1,1
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("TE"), DW_AT_symbol_name("_TE")
	.dwattr DW$28, DW_AT_type(*DW$T$6)
	.dwattr DW$28, DW_AT_location[DW_OP_addr _TE]
	.sect	".const"
	.align	8
_$T0$1:
	.field  	184,8			; _$T0$1[0] @ 0
	.field  	16,8			; _$T0$1[1] @ 8
	.field  	0,8			; _$T0$1[2] @ 16
	.field  	16,8			; _$T0$1[3] @ 24
	.space	16

DW$29	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1"), DW_AT_symbol_name("_$T0$1")
	.dwattr DW$29, DW_AT_type(*DW$T$36)
	.dwattr DW$29, DW_AT_location[DW_OP_addr _$T0$1]
	.sect	".const"
	.align	8
_$T1$2:
	.field  	184,8			; _$T1$2[0] @ 0
	.field  	0,8			; _$T1$2[1] @ 8
	.field  	0,8			; _$T1$2[2] @ 16
	.field  	16,8			; _$T1$2[3] @ 24
	.space	16

DW$30	.dwtag  DW_TAG_variable, DW_AT_name("$T1$2"), DW_AT_symbol_name("_$T1$2")
	.dwattr DW$30, DW_AT_type(*DW$T$36)
	.dwattr DW$30, DW_AT_location[DW_OP_addr _$T1$2]
	.sect	".const"
	.align	8
_$T2$3:
	.field  	184,8			; _$T2$3[0] @ 0
	.field  	0,8			; _$T2$3[1] @ 8
	.field  	0,8			; _$T2$3[2] @ 16
	.field  	16,8			; _$T2$3[3] @ 24
	.space	16

DW$31	.dwtag  DW_TAG_variable, DW_AT_name("$T2$3"), DW_AT_symbol_name("_$T2$3")
	.dwattr DW$31, DW_AT_type(*DW$T$36)
	.dwattr DW$31, DW_AT_location[DW_OP_addr _$T2$3]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe --gen_opt_info=2 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI0282 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI0284 --opt_info_filename=D:/pred/dsp/vport/Debug/atmel_gpa.nfo 
	.sect	".text"
	.global	_ATMEL_RstGpa

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_RstGpa"), DW_AT_symbol_name("_ATMEL_RstGpa")
	.dwattr DW$32, DW_AT_low_pc(_ATMEL_RstGpa)
	.dwattr DW$32, DW_AT_high_pc(0x00)
	.dwattr DW$32, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$32, DW_AT_begin_line(0xf5)
	.dwattr DW$32, DW_AT_begin_column(0x05)
	.dwattr DW$32, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$32, DW_AT_skeletal(0x01)
	.dwpsn	"atmel_gpa.c",246,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_RstGpa                                               *
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
_ATMEL_RstGpa:
;** --------------------------------------------------------------------------*
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$33, DW_AT_type(*DW$T$10)
	.dwattr DW$33, DW_AT_location[DW_OP_reg4]
;** 247	-----------------------    auth_cmd[] = {...};
;** 249	-----------------------    I2C_Stream(index, 20u, &auth_cmd, 0, 0);
;** 250	-----------------------    return 0;
           MVKL    .S1     _$T2$3,A5         ; |247| 

           MVKH    .S1     _$T2$3,A5         ; |247| 
||         STW     .D2T2   B3,*SP--(32)      ; |246| 

           LDDW    .D1T1   *A5,A9:A8         ; |247| 
           LDW     .D1T1   *+A5(16),A3       ; |247| 

           CALL    .S1     _I2C_Stream       ; |249| 
||         LDDW    .D1T1   *+A5(8),A7:A6     ; |247| 

           ADD     .L2     8,SP,B5           ; |247| 
           MVK     .S2     0x14,B4           ; |249| 
           STDW    .D2T1   A9:A8,*B5         ; |247| 
           STW     .D2T1   A3,*+B5(16)       ; |247| 

           ADDKPC  .S2     RL0,B3,0          ; |249| 
||         ADD     .L1X    8,SP,A6           ; |249| 
||         ZERO    .S1     A8                ; |249| 
||         STDW    .D2T1   A7:A6,*+B5(8)     ; |247| 
||         ZERO    .L2     B6                ; |249| 

RL0:       ; CALL OCCURS {_I2C_Stream}       ; |249| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(32),B3      ; |251| 
           NOP             3
           ZERO    .L1     A4                ; |250| 
	.dwpsn	"atmel_gpa.c",251,1
           RETNOP  .S2     B3,5              ; |251| 
           ; BRANCH OCCURS {B3}              ; |251| 
	.dwattr DW$32, DW_AT_end_file("atmel_gpa.c")
	.dwattr DW$32, DW_AT_end_line(0xfb)
	.dwattr DW$32, DW_AT_end_column(0x01)
	.dwendtag DW$32

	.sect	".text"

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("_atmel_gpa"), DW_AT_symbol_name("__atmel_gpa")
	.dwattr DW$34, DW_AT_low_pc(__atmel_gpa)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$34, DW_AT_begin_line(0x20)
	.dwattr DW$34, DW_AT_begin_column(0x16)
	.dwattr DW$34, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$34, DW_AT_skeletal(0x01)
	.dwpsn	"atmel_gpa.c",33,1

;******************************************************************************
;* FUNCTION NAME: __atmel_gpa                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B4,B5,B6,B7,*
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B3,B4,B5,B6,*
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30          *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
__atmel_gpa:
;** --------------------------------------------------------------------------*
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Datain"), DW_AT_symbol_name("_Datain")
	.dwattr DW$35, DW_AT_type(*DW$T$6)
	.dwattr DW$35, DW_AT_location[DW_OP_reg4]
;** 48	-----------------------    C$11 = RG;
;** 48	-----------------------    C$9 = RD;
;** 48	-----------------------    C$10 = ((int)C$11<<12>>11&0x1e|(int)C$11<<11>>15&1)+C$9;
;** 48	-----------------------    (C$10 >= 32) ? (Raddmod31 = (unsigned char)(C$10-31)) : (Raddmod31 = (unsigned char)C$10);
;** 50	-----------------------    RG = RF;
;** 51	-----------------------    RF = RE;
;** 52	-----------------------    v$9 = (int)(RE = C$9);
;** 53	-----------------------    C$1 = Gpa_byte;
;** 53	-----------------------    C$5 = (unsigned char)(C$1^Datain);
;** 53	-----------------------    RD = (int)C$5<<11>>11&0x1f^RC;
;** 54	-----------------------    RC = RB;
;** 55	-----------------------    RB = RA;
;** 56	-----------------------    v$8 = (int)(RA = Raddmod31);
;** 59	-----------------------    C$8 = SG;
;** 59	-----------------------    C$6 = SF;
;** 59	-----------------------    C$7 = (unsigned char)(_extu((unsigned)((int)C$8<<10), 16u, 26u)*2|(int)C$8<<9>>15&1)+C$6;
;** 59	-----------------------    (C$7 >= 128) ? (Saddmod127 = (unsigned char)(C$7-127)) : (Saddmod127 = (unsigned char)C$7);
;** 60	-----------------------    SG = C$6;
;** 61	-----------------------    C$2 = (int)C$5<<8;
;** 61	-----------------------    SF = ((int)C$5<<12>>9&0x78|C$2>>13)^SE;
;** 62	-----------------------    SE = SD;
;** 63	-----------------------    SD = SC;
;** 64	-----------------------    SC = SB;
;** 65	-----------------------    SB = SA;
;** 66	-----------------------    v$7 = (int)(SA = Saddmod127);
;** 68	-----------------------    C$3 = TC;
;** 68	-----------------------    C$4 = TE+C$3;
;** 68	-----------------------    (C$4 >= 32) ? (Taddmod31 = (unsigned char)(C$4-31)) : (Taddmod31 = (unsigned char)C$4);
;** 69	-----------------------    TE = TD;
;** 70	-----------------------    v$11 = (int)(TD = C$3);
;** 71	-----------------------    TC = C$2>>11^TB;
;** 72	-----------------------    TB = TA;
;** 73	-----------------------    v$10 = (int)(TA = Taddmod31);
;** 81	-----------------------    Gpa_byte = (int)C$1<<12>>8|(~(v$7<<12>>12)&(v$8^v$9)<<12>>12|((v$10^v$11)&v$7)<<12>>12)<<12>>12&0xf;
;** 83	-----------------------    return;
           MVKL    .S1     _RG,A3            ; |48| 
           MVKL    .S1     _TC,A7            ; |68| 
           MVKL    .S1     _SC,A9            ; |63| 

           MVKL    .S1     _SB,A17           ; |64| 
||         MVKL    .S2     _RD,B4            ; |48| 

           MVKL    .S1     _SA,A16           ; |65| 
||         MVKL    .S2     _TE,B5            ; |68| 

           MVKL    .S1     _RB,A31           ; |54| 
||         MVKL    .S2     _SF,B7            ; |59| 

           MVKL    .S1     _RF,A2            ; |50| 
||         MVKL    .S2     _Gpa_byte,B20     ; |53| 

           MVKL    .S1     _RA,A21           ; |55| 
||         MVKL    .S2     _SC,B28           ; |64| 

           MVKL    .S1     _RE,A1            ; |51| 
||         MVKL    .S2     _SE,B27           ; |61| 

           MVKL    .S1     _SD,A18           ; |62| 
||         MVKL    .S2     _SB,B25           ; |65| 

           MVKL    .S1     _TA,A29           ; |72| 
||         MVKL    .S2     _RF,B9            ; |51| 

           MVKL    .S1     _TD,A30           ; |69| 
||         MVKL    .S2     _RG,B16           ; |50| 

           MVKL    .S1     _TD,A24           ; |70| 
||         MVKL    .S2     _RC,B22           ; |53| 

           MVKL    .S1     _SG,A27           ; |60| 
||         MVKL    .S2     _SD,B18           ; |63| 

           MVKL    .S1     _RD,A25           ; |53| 
||         MVKL    .S2     _SE,B19           ; |62| 

           MVK     .S1     32,A6             ; |48| 
||         MVK     .S2     32,B8             ; |68| 

           MVKL    .S2     _TE,B24           ; |69| 
||         MVKL    .S1     _SF,A28           ; |61| 

           MVKL    .S2     _TB,B23           ; |71| 
||         MVKL    .S1     _RE,A26           ; |52| 

           MVKH    .S2     _RD,B4            ; |48| 
||         MVK     .S1     127,A8            ; |59| 

           MVKH    .S2     _TE,B5            ; |68| 
||         MVKH    .S1     _RG,A3            ; |48| 

           MVKL    .S2     _TB,B21           ; |72| 
||         MVKH    .S1     _TC,A7            ; |68| 

           MVKH    .S2     _SF,B7            ; |59| 
||         MVKH    .S1     _SC,A9            ; |63| 

           MVKH    .S2     _Gpa_byte,B20     ; |53| 
||         MVKH    .S1     _SB,A17           ; |64| 

           MVKH    .S2     _SC,B28           ; |64| 
||         MVKH    .S1     _SA,A16           ; |65| 
||         STW     .D2T1   A11,*SP--(8)      ; |33| 

           MVKH    .S2     _SE,B27           ; |61| 
||         LDBU    .D1T1   *A3,A3            ; |48| 
||         MVKH    .S1     _RB,A31           ; |54| 

           MVKH    .S2     _SB,B25           ; |65| 
||         MVKH    .S1     _RF,A2            ; |50| 

           MVKH    .S2     _RF,B9            ; |51| 
||         STW     .D2T1   A10,*+SP(4)       ; |33| 
||         MVKH    .S1     _RA,A21           ; |55| 

           MVKH    .S2     _RG,B16           ; |50| 
||         LDBU    .D1T1   *A7,A23           ; |68| 
||         LDBU    .D2T2   *B4,B17           ; |48| 
||         MVKH    .S1     _RE,A1            ; |51| 

           LDBU    .D1T1   *A9,A22           ; |63| 
||         MVKL    .S2     _SG,B4            ; |59| 
||         LDBU    .D2T2   *B5,B6            ; |68| 
||         MVKH    .S1     _SD,A18           ; |62| 

           LDBU    .D1T1   *A17,A20          ; |64| 
||         EXT     .S1     A3,11,15,A5       ; |48| 
||         MVKH    .S2     _SG,B4            ; |59| 

           LDBU    .D2T2   *B4,B4            ; |59| 
||         EXT     .S1     A3,12,11,A3       ; |48| 
||         LDBU    .D1T1   *A16,A19          ; |65| 
||         MVKH    .S2     _RC,B22           ; |53| 

           LDBU    .D1T1   *A31,A31          ; |54| 
||         AND     .L1     1,A5,A5           ; |48| 
||         MVK     .S2     30,B5             ; |48| 
||         MVKH    .S1     _TA,A29           ; |72| 

           LDBU    .D1T1   *A2,A2            ; |50| 
||         AND     .L2X    B5,A3,B5          ; |48| 
||         MVKH    .S2     _SD,B18           ; |63| 
||         MVKH    .S1     _TD,A30           ; |69| 

           ADD     .L1X    A23,B6,A3         ; |68| 
||         OR      .L2X    A5,B5,B5          ; |48| 
||         LDBU    .D1T1   *A21,A11          ; |55| 
||         LDBU    .D2T2   *B7,B26           ; |59| 
||         MVKH    .S1     _TD,A24           ; |70| 
||         MVKH    .S2     _SE,B19           ; |62| 

           LDBU    .D1T1   *A1,A1            ; |51| 
||         ADD     .L2     B17,B5,B5         ; |48| 
||         MVKL    .S2     _RB,B7            ; |55| 
||         LDBU    .D2T2   *B20,B29          ; |53| 
||         MVKH    .S1     _SG,A27           ; |60| 

           SUB     .D2     B5,31,B6          ; |48| 
||         EXT     .S2     B4,9,15,B8        ; |59| 
||         CMPLT   .L2X    A3,B8,B0          ; |68| 
||         LDBU    .D1T1   *A18,A10          ; |62| 
||         MVKH    .S1     _RD,A25           ; |53| 

           STB     .D2T1   A20,*B28          ; |64| 
||         EXTU    .S2     B4,26,26,B4       ; |59| 
||         CMPLT   .L1X    B5,A6,A0          ; |48| 
||         MVKH    .S1     _SF,A28           ; |61| 

           LDBU    .D1T1   *A29,A29          ; |72| 
||         ADD     .L2     B4,B4,B4          ; |59| 
||         AND     .S2     1,B8,B6           ; |59| 
|| [!A0]   MV      .D2     B6,B5             ; |48| 
||         MVKH    .S1     _RE,A26           ; |52| 

           LDBU    .D1T1   *A30,A9           ; |69| 
||         OR      .L2     B6,B4,B4          ; |59| 
||         LDBU    .D2T2   *B27,B20          ; |61| 
||         MVKH    .S2     _RB,B7            ; |55| 
||         MVK     .S1     128,A7            ; |59| 

           STB     .D2T1   A19,*B25          ; |65| 
||         EXTU    .S2     B4,24,24,B4       ; |59| 
||         MVKL    .S1     _SA,A21           ; |66| 

           ADD     .L2     B26,B4,B4         ; |59| 
||         STB     .D2T1   A11,*B7           ; |55| 
||         MVKL    .S1     _RA,A18           ; |56| 
||         XOR     .L1X    A4,B29,A4         ; |53| 
||         MVKH    .S2     _TE,B24           ; |69| 

           STB     .D2T1   A1,*B9            ; |51| 
||         SUB     .D1     A3,31,A5          ; |68| 
||         MV      .L1     A23,A16           ; |70| 
||         MVKH    .S1     _SA,A21           ; |66| 
||         MVKH    .S2     _TB,B23           ; |71| 

           STB     .D2T1   A2,*B16           ; |50| 
||         CMPLT   .L1X    B4,A7,A0          ; |59| 
||         EXTU    .S2     B5,24,24,B6       ; |48| 
|| [!B0]   MV      .D1     A5,A3             ; |68| 
||         EXTU    .S1     A4,24,29,A20      ; |53| 

           LDBU    .D2T2   *B22,B17          ; |53| 
||         MV      .L1X    B17,A23           ; |52| 
||         MV      .D1     A23,A8            ; |70| 
|| [!A0]   SUB     .L2X    B4,A8,B4          ; |59| 
||         MV      .S2     B17,B5            ; |52| 
||         EXTU    .S1     A3,24,24,A3       ; |68| 

           STB     .D2T1   A22,*B18          ; |63| 
||         EXTU    .S1     A4,24,24,A3       ; |53| 
||         MV      .L1     A3,A17            ; |73| 
||         MV      .D1     A3,A6             ; |73| 
||         MVKH    .S2     _TB,B21           ; |72| 

           MVKL    .S2     _RC,B8            ; |54| 
||         XOR     .L2     B5,B6,B7          ; |81| 
||         EXT     .S1     A3,12,9,A19       ; |61| 
||         STB     .D2T1   A10,*B19          ; |62| 

           EXT     .S2     B7,12,12,B7       ; |81| 
||         STB     .D1T1   A8,*A24           ; |70| 
||         MVK     .S1     120,A0            ; |61| 

           STB     .D2T1   A9,*B24           ; |69| 
||         AND     .L1     A0,A19,A8         ; |61| 
||         EXTU    .S2     B4,24,24,B4       ; |59| 
||         EXTU    .S1     A3,27,27,A3       ; |53| 
||         XOR     .D1     A16,A17,A16       ; |81| 

           LDW     .D2T1   *+SP(4),A10       ; |84| 
||         XOR     .L1X    B17,A3,A3         ; |53| 
||         OR      .S1     A20,A8,A8         ; |61| 
||         EXT     .S2     B4,12,12,B5       ; |81| 
||         MV      .L2     B4,B30            ; |66| 
||         STB     .D1T2   B26,*A27          ; |60| 

           LDBU    .D2T2   *B23,B7           ; |71| 
||         XOR     .L1X    B20,A8,A3         ; |61| 
||         STB     .D1T1   A3,*A25           ; |53| 
||         AND     .L2X    B4,A16,B4         ; |81| 
||         ANDN    .S2     B7,B5,B5          ; |81| 
||         MVKL    .S1     _TA,A5            ; |73| 

           STB     .D1T1   A3,*A28           ; |61| 
||         OR      .L2     B4,B5,B5          ; |81| 
||         MVKH    .S2     _RC,B8            ; |54| 
||         MVKH    .S1     _TA,A5            ; |73| 

           STB     .D1T1   A6,*A5            ; |73| 
||         EXT     .S2     B5,12,12,B5       ; |81| 
||         MVKH    .S1     _RA,A18           ; |56| 

           STB     .D1T1   A23,*A26          ; |52| 
||         EXT     .S2     B29,12,8,B4       ; |81| 
||         MVKL    .S1     _Gpa_byte,A7      ; |81| 

           STB     .D2T1   A29,*B21          ; |72| 
||         EXTU    .S1     A4,24,27,A3       ; |53| 
||         MVKL    .S2     _TC,B22           ; |71| 
||         AND     .L2     15,B5,B5          ; |81| 
||         STB     .D1T2   B6,*A18           ; |56| 

           STB     .D2T1   A31,*B8           ; |54| 
||         XOR     .L1X    B7,A3,A3          ; |71| 
||         MVKH    .S2     _TC,B22           ; |71| 
||         OR      .L2     B5,B4,B4          ; |81| 
||         STB     .D1T2   B30,*A21          ; |66| 
||         MVKH    .S1     _Gpa_byte,A7      ; |81| 

           RET     .S2     B3                ; |84| 
||         STB     .D2T1   A3,*B22           ; |71| 
||         STB     .D1T2   B4,*A7            ; |81| 

           LDW     .D2T1   *++SP(8),A11      ; |84| 
	.dwpsn	"atmel_gpa.c",84,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |84| 
	.dwattr DW$34, DW_AT_end_file("atmel_gpa.c")
	.dwattr DW$34, DW_AT_end_line(0x54)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendtag DW$34

	.sect	".text"

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("_atmel_repeat"), DW_AT_symbol_name("__atmel_repeat")
	.dwattr DW$36, DW_AT_low_pc(__atmel_repeat)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$36, DW_AT_begin_line(0x57)
	.dwattr DW$36, DW_AT_begin_column(0x0d)
	.dwattr DW$36, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$36, DW_AT_skeletal(0x01)
	.dwpsn	"atmel_gpa.c",88,1

;******************************************************************************
;* FUNCTION NAME: __atmel_repeat                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
__atmel_repeat:
;** --------------------------------------------------------------------------*
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$37, DW_AT_type(*DW$T$10)
	.dwattr DW$37, DW_AT_location[DW_OP_reg4]
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in"), DW_AT_symbol_name("_in")
	.dwattr DW$38, DW_AT_type(*DW$T$6)
	.dwattr DW$38, DW_AT_location[DW_OP_reg20]
;** 91	-----------------------    L$1 = n;
;**  	-----------------------    #pragma MUST_ITERATE(1, 7, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     __atmel_gpa       ; |91| 
           MV      .L2     B3,B2             ; |88| 
           MV      .S2X    A4,B1             ; |88| 
           MV      .L2     B4,B31            ; |88| 
	.dwpsn	"atmel_gpa.c",90,0
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L1:    
DW$L$__atmel_repeat$2$B:
	.dwpsn	"atmel_gpa.c",91,0
;**	-----------------------g2:
;** 91	-----------------------    _atmel_gpa(in);
;** 90	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    return;

           MV      .L1X    B31,A4            ; |91| 
||         ADDKPC  .S2     RL1,B3,0          ; |91| 

RL1:       ; CALL OCCURS {__atmel_gpa}       ; |91| 
DW$L$__atmel_repeat$2$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_repeat$3$B:

           SUB     .L1X    B1,1,A0           ; |90| 
||         SUB     .L2     B1,1,B1           ; |90| 

   [ A0]   B       .S1     L1                ; |90| 
   [ A0]   CALL    .S1     __atmel_gpa       ; |91| 
   [!A0]   RETNOP  .S2     B2,3              ; |92| 
           ; BRANCHCC OCCURS {L1}            ; |90| 
DW$L$__atmel_repeat$3$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"atmel_gpa.c",92,1
           NOP             2
           ; BRANCH OCCURS {B2}              ; |92| 

DW$39	.dwtag  DW_TAG_loop
	.dwattr DW$39, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L1:1:1185764961")
	.dwattr DW$39, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$39, DW_AT_begin_line(0x5a)
	.dwattr DW$39, DW_AT_end_line(0x5b)
DW$40	.dwtag  DW_TAG_loop_range
	.dwattr DW$40, DW_AT_low_pc(DW$L$__atmel_repeat$2$B)
	.dwattr DW$40, DW_AT_high_pc(DW$L$__atmel_repeat$2$E)
DW$41	.dwtag  DW_TAG_loop_range
	.dwattr DW$41, DW_AT_low_pc(DW$L$__atmel_repeat$3$B)
	.dwattr DW$41, DW_AT_high_pc(DW$L$__atmel_repeat$3$E)
	.dwendtag DW$39

	.dwattr DW$36, DW_AT_end_file("atmel_gpa.c")
	.dwattr DW$36, DW_AT_end_line(0x5c)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendtag DW$36

	.sect	".text"
	.global	_ATMEL_ReadEncConfigZone

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_ReadEncConfigZone"), DW_AT_symbol_name("_ATMEL_ReadEncConfigZone")
	.dwattr DW$42, DW_AT_low_pc(_ATMEL_ReadEncConfigZone)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$42, DW_AT_begin_line(0xa6)
	.dwattr DW$42, DW_AT_begin_column(0x06)
	.dwattr DW$42, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$42, DW_AT_skeletal(0x01)
	.dwpsn	"atmel_gpa.c",167,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_ReadEncConfigZone                                    *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_ATMEL_ReadEncConfigZone:
;** --------------------------------------------------------------------------*
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$43, DW_AT_type(*DW$T$10)
	.dwattr DW$43, DW_AT_location[DW_OP_reg4]
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$44, DW_AT_type(*DW$T$6)
	.dwattr DW$44, DW_AT_location[DW_OP_reg20]
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$45, DW_AT_type(*DW$T$22)
	.dwattr DW$45, DW_AT_location[DW_OP_reg6]
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$46, DW_AT_type(*DW$T$6)
	.dwattr DW$46, DW_AT_location[DW_OP_reg22]
;** 169	-----------------------    ATMEL_ReadRawConfigZone(index, (int)addr, buf, (int)len);
;** 172	-----------------------    _atmel_repeat(5, 0u);
;** 173	-----------------------    _atmel_repeat(1, addr);
;** 174	-----------------------    _atmel_repeat(5, 0u);
;** 175	-----------------------    _atmel_repeat(1, len);
;** 177	-----------------------    if ( !len ) goto g4;
;**  	-----------------------    U$10 = buf;
;**  	-----------------------    L$1 = (int)len;
;**  	-----------------------    #pragma MUST_ITERATE(1, 256, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _ATMEL_ReadRawConfigZone ; |169| 
           NOP             2
           STW     .D2T1   A12,*SP--(16)     ; |167| 

           MV      .L1X    B6,A10            ; |167| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |167| 

           MV      .S1     A6,A12            ; |167| 
||         ADDKPC  .S2     RL2,B3,0          ; |169| 
||         MV      .L2     B3,B13            ; |167| 
||         STW     .D2T2   B13,*+SP(4)       ; |167| 
||         MV      .L1X    B4,A11            ; |167| 

RL2:       ; CALL OCCURS {_ATMEL_ReadRawConfigZone}  ; |169| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __atmel_repeat    ; |172| 
           ADDKPC  .S2     RL3,B3,2          ; |172| 
           ZERO    .L2     B4                ; |172| 
           MVK     .L1     0x5,A4            ; |172| 
RL3:       ; CALL OCCURS {__atmel_repeat}    ; |172| 
           CALL    .S1     __atmel_repeat    ; |173| 
           MVK     .L1     0x1,A4            ; |173| 
           MV      .L2X    A11,B4            ; |173| 
           ADDKPC  .S2     RL4,B3,2          ; |173| 
RL4:       ; CALL OCCURS {__atmel_repeat}    ; |173| 
           CALL    .S1     __atmel_repeat    ; |174| 
           MVK     .L1     0x5,A4            ; |174| 
           ZERO    .L2     B4                ; |174| 
           ADDKPC  .S2     RL5,B3,2          ; |174| 
RL5:       ; CALL OCCURS {__atmel_repeat}    ; |174| 
           CALL    .S1     __atmel_repeat    ; |175| 
           MVK     .S1     0x1,A4            ; |175| 
           MV      .L2X    A10,B4            ; |175| 
           MV      .L1     A10,A11           ; |175| 
           ADDKPC  .S2     RL6,B3,1          ; |175| 
RL6:       ; CALL OCCURS {__atmel_repeat}    ; |175| 
;** --------------------------------------------------------------------------*

           MV      .L1     A11,A0            ; |175| 
||         MVKL    .S1     _Gpa_byte,A4      ; |179| 

   [!A0]   BNOP    .S2     L3,2              ; |177| 
||         MVKH    .S1     _Gpa_byte,A4      ; |179| 
|| [ A0]   LDBU    .D1T1   *A12,A3           ; |179| 

   [ A0]   LDBU    .D1T1   *A4,A4            ; |179| 
           NOP             2
           ; BRANCHCC OCCURS {L3}            ; |177| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __atmel_repeat    ; |180| 
	.dwpsn	"atmel_gpa.c",177,0
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L2:    
DW$L$_ATMEL_ReadEncConfigZone$5$B:
	.dwpsn	"atmel_gpa.c",178,0
;**	-----------------------g3:
;** 179	-----------------------    A$2 = C$1 = (unsigned char)(*U$10^Gpa_byte);
;** 179	-----------------------    *U$10++ = A$2;
;** 180	-----------------------    _atmel_repeat(1, C$1);
;** 181	-----------------------    _atmel_repeat(5, 0u);
;** 177	-----------------------    if ( --L$1 ) goto g3;
;**	-----------------------g4:
;**  	-----------------------    return;
           XOR     .L1     A4,A3,A3          ; |179| 
           EXTU    .S1     A3,24,24,A3       ; |179| 
           STB     .D1T1   A3,*A12++         ; |179| 

           MV      .L2X    A3,B4             ; |180| 
||         ADDKPC  .S2     RL7,B3,0          ; |180| 
||         MVK     .L1     0x1,A4            ; |180| 

RL7:       ; CALL OCCURS {__atmel_repeat}    ; |180| 
DW$L$_ATMEL_ReadEncConfigZone$5$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_ReadEncConfigZone$6$B:
           CALL    .S1     __atmel_repeat    ; |181| 
           ADDKPC  .S2     RL8,B3,2          ; |181| 
           ZERO    .L2     B4                ; |181| 
           MVK     .L1     0x5,A4            ; |181| 
RL8:       ; CALL OCCURS {__atmel_repeat}    ; |181| 
DW$L$_ATMEL_ReadEncConfigZone$6$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_ReadEncConfigZone$7$B:

           SUB     .L1     A10,1,A0          ; |177| 
||         SUB     .D1     A10,1,A10         ; |177| 
||         MVKL    .S1     _Gpa_byte,A4      ; |179| 

   [ A0]   B       .S2     L2                ; |177| 
||         MVKH    .S1     _Gpa_byte,A4      ; |179| 
|| [ A0]   LDBU    .D1T1   *A12,A3           ; |179| 

   [ A0]   LDBU    .D1T1   *A4,A4            ; |179| 
           NOP             2
   [ A0]   CALL    .S1     __atmel_repeat    ; |180| 
	.dwpsn	"atmel_gpa.c",182,0
           NOP             1
           ; BRANCHCC OCCURS {L2}            ; |177| 
DW$L$_ATMEL_ReadEncConfigZone$7$E:
;** --------------------------------------------------------------------------*
L3:    

           LDDW    .D2T1   *+SP(8),A11:A10   ; |186| 
||         MV      .L2     B13,B3            ; |186| 

           RET     .S2     B3                ; |186| 
||         LDW     .D2T2   *+SP(4),B13       ; |186| 

           LDW     .D2T1   *++SP(16),A12     ; |186| 
	.dwpsn	"atmel_gpa.c",186,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |186| 

DW$47	.dwtag  DW_TAG_loop
	.dwattr DW$47, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L2:1:1185764961")
	.dwattr DW$47, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$47, DW_AT_begin_line(0xb1)
	.dwattr DW$47, DW_AT_end_line(0xb6)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_ATMEL_ReadEncConfigZone$5$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_ATMEL_ReadEncConfigZone$5$E)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_ATMEL_ReadEncConfigZone$6$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_ATMEL_ReadEncConfigZone$6$E)
DW$50	.dwtag  DW_TAG_loop_range
	.dwattr DW$50, DW_AT_low_pc(DW$L$_ATMEL_ReadEncConfigZone$7$B)
	.dwattr DW$50, DW_AT_high_pc(DW$L$_ATMEL_ReadEncConfigZone$7$E)
	.dwendtag DW$47

	.dwattr DW$42, DW_AT_end_file("atmel_gpa.c")
	.dwattr DW$42, DW_AT_end_line(0xba)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendtag DW$42

	.sect	".text"

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("_atmel_gpa_init"), DW_AT_symbol_name("__atmel_gpa_init")
	.dwattr DW$51, DW_AT_low_pc(__atmel_gpa_init)
	.dwattr DW$51, DW_AT_high_pc(0x00)
	.dwattr DW$51, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$51, DW_AT_begin_line(0x5e)
	.dwattr DW$51, DW_AT_begin_column(0x0d)
	.dwattr DW$51, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$51, DW_AT_skeletal(0x01)
	.dwpsn	"atmel_gpa.c",96,1

;******************************************************************************
;* FUNCTION NAME: __atmel_gpa_init                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,  *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,  *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                  *
;******************************************************************************
__atmel_gpa_init:
;** --------------------------------------------------------------------------*
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Ci"), DW_AT_symbol_name("_Ci")
	.dwattr DW$52, DW_AT_type(*DW$T$22)
	.dwattr DW$52, DW_AT_location[DW_OP_reg4]
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("G"), DW_AT_symbol_name("_G")
	.dwattr DW$53, DW_AT_type(*DW$T$22)
	.dwattr DW$53, DW_AT_location[DW_OP_reg20]
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Q"), DW_AT_symbol_name("_Q")
	.dwattr DW$54, DW_AT_type(*DW$T$22)
	.dwattr DW$54, DW_AT_location[DW_OP_reg6]
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Ch"), DW_AT_symbol_name("_Ch")
	.dwattr DW$55, DW_AT_type(*DW$T$22)
	.dwattr DW$55, DW_AT_location[DW_OP_reg22]
;** 26	-----------------------    RG = 0u;  // [1]
;** 26	-----------------------    RF = 0u;  // [1]
;** 26	-----------------------    RE = 0u;  // [1]
;** 26	-----------------------    RD = 0u;  // [1]
;** 26	-----------------------    RC = 0u;  // [1]
;** 26	-----------------------    RB = 0u;  // [1]
;** 26	-----------------------    RA = 0u;  // [1]
;** 27	-----------------------    SG = 0u;  // [1]
;** 27	-----------------------    SF = 0u;  // [1]
;** 27	-----------------------    SE = 0u;  // [1]
;** 27	-----------------------    SD = 0u;  // [1]
;** 27	-----------------------    SC = 0u;  // [1]
;** 27	-----------------------    SB = 0u;  // [1]
;** 27	-----------------------    SA = 0u;  // [1]
;** 28	-----------------------    TE = 0u;  // [1]
;** 28	-----------------------    TD = 0u;  // [1]
;** 28	-----------------------    TC = 0u;  // [1]
;** 28	-----------------------    TB = 0u;  // [1]
;** 28	-----------------------    TA = 0u;  // [1]
;** 29	-----------------------    Gpa_byte = 0u;  // [1]
;**  	-----------------------    U$28 = &Ci[-2];
;**  	-----------------------    U$34 = Q;
;** 100	-----------------------    L$1 = 4;
;**  	-----------------------    #pragma MUST_ITERATE(4, 4, 4)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MVKL    .S2     _SD,B7            ; |27| 
||         MVKL    .S1     _SC,A5            ; |27| 

           MVKL    .S2     _SF,B20           ; |27| 
||         MVKL    .S1     _SE,A8            ; |27| 

           MVKL    .S2     _SB,B17           ; |27| 
||         MVKL    .S1     _Gpa_byte,A3      ; |29| 

           MVKL    .S2     _RA,B21           ; |26| 
||         MVKL    .S1     _RF,A20           ; |26| 

           MVKL    .S2     _TE,B19           ; |28| 
||         MVKL    .S1     _TB,A7            ; |28| 

           MVKL    .S2     _RC,B18           ; |26| 
||         MVKL    .S1     _RD,A19           ; |26| 

           MVKL    .S2     _TC,B9            ; |28| 
||         STW     .D2T1   A13,*SP--(32)     ; |96| 
||         MVKL    .S1     _TD,A9            ; |28| 
||         MV      .L1X    SP,A31            ; |96| 

           MVKL    .S2     _RE,B16           ; |26| 
||         MV      .L2X    A6,B11            ; |96| 
||         STDW    .D2T2   B11:B10,*+SP(24)
||         MVKL    .S1     _RB,A18           ; |26| 

           MVKL    .S2     _TA,B5            ; |28| 
||         ZERO    .L1     A6                ; |27| 
||         MV      .L2X    A6,B10            ; |96| 
||         MVKH    .S1     _SC,A5            ; |27| 

           STB     .D1T1   A6,*A5            ; |27| 
||         MVKL    .S2     _RG,B8            ; |26| 
||         MVKL    .S1     _SA,A16           ; |27| 

           STDW    .D1T1   A11:A10,*-A31(24)
||         STW     .D2T2   B13,*+SP(20)
||         MVKH    .S2     _SD,B7            ; |27| 
||         MVKL    .S1     _SG,A17           ; |27| 
||         ZERO    .L1     A21               ; |27| 
||         ZERO    .L2     B22               ; |27| 

           STW     .D1T1   A12,*-A31(16)
||         STB     .D2T2   B22,*B7           ; |27| 
||         ZERO    .L2     B4                ; |27| 
||         MVKH    .S2     _SF,B20           ; |27| 
||         MVKH    .S1     _SE,A8            ; |27| 
||         MV      .L1X    B4,A13            ; |96| 

           STB     .D1T1   A21,*A8           ; |27| 
||         ZERO    .L1     A5                ; |27| 
||         STB     .D2T2   B4,*B20           ; |27| 
||         MVKH    .S2     _SB,B17           ; |27| 
||         MVKH    .S1     _Gpa_byte,A3      ; |29| 

           STB     .D1T1   A5,*A3            ; |29| 
||         STB     .D2T2   B4,*B17           ; |27| 
||         MVKH    .S2     _RA,B21           ; |26| 
||         MVKH    .S1     _RF,A20           ; |26| 

           STB     .D1T1   A5,*A20           ; |26| 
||         STB     .D2T2   B4,*B21           ; |26| 
||         MVKH    .S2     _TE,B19           ; |28| 
||         MVKH    .S1     _TB,A7            ; |28| 

           STB     .D1T1   A5,*A7            ; |28| 
||         STB     .D2T2   B4,*B19           ; |28| 
||         MVKH    .S2     _RC,B18           ; |26| 
||         MVKH    .S1     _RD,A19           ; |26| 

           STB     .D1T1   A5,*A19           ; |26| 
||         STB     .D2T2   B4,*B18           ; |26| 
||         MVKH    .S2     _TC,B9            ; |28| 
||         MVKH    .S1     _TD,A9            ; |28| 

           STB     .D1T1   A5,*A9            ; |28| 
||         STB     .D2T2   B4,*B9            ; |28| 
||         MVKH    .S2     _RE,B16           ; |26| 
||         MVKH    .S1     _RB,A18           ; |26| 

           STB     .D1T1   A5,*A18           ; |26| 
||         STB     .D2T2   B4,*B16           ; |26| 
||         MVKH    .S2     _TA,B5            ; |28| 
||         MVKH    .S1     _SA,A16           ; |27| 

           STB     .D1T1   A5,*A16           ; |27| 
||         STB     .D2T2   B4,*B5            ; |28| 
||         MVKH    .S2     _RG,B8            ; |26| 
||         MVKH    .S1     _SG,A17           ; |27| 

           STB     .D1T1   A5,*A17           ; |27| 
||         STB     .D2T2   B4,*B8            ; |26| 
||         SUB     .L1     A4,2,A10

           CALL    .S1     __atmel_repeat    ; |102| 
||         LDBU    .D1T1   *++A10(2),A3      ; |102| 

           MVK     .L2     0x4,B4            ; |100| 
           MV      .L1X    B6,A12            ; |96| 
           MV      .L1X    B4,A11            ; |26| 
	.dwpsn	"atmel_gpa.c",100,0
           MV      .L2     B3,B13
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L4:    
DW$L$__atmel_gpa_init$2$B:
	.dwpsn	"atmel_gpa.c",101,0
;**	-----------------------g2:
;** 102	-----------------------    _atmel_repeat(3, *(U$28 += 2));
;** 103	-----------------------    _atmel_repeat(3, U$28[1]);
;** 104	-----------------------    _atmel_repeat(1, *U$34++);
;** 100	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    U$34 = &Q[4];

           MVK     .L1     0x3,A4            ; |102| 
||         MV      .L2X    A3,B4             ; |102| 
||         ADDKPC  .S2     RL9,B3,0          ; |102| 

RL9:       ; CALL OCCURS {__atmel_repeat}    ; |102| 
DW$L$__atmel_gpa_init$2$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_gpa_init$3$B:
           CALL    .S1     __atmel_repeat    ; |103| 
           LDBU    .D1T2   *+A10(1),B4       ; |103| 
           ADDKPC  .S2     RL10,B3,2         ; |103| 
           MVK     .L1     0x3,A4            ; |103| 
RL10:      ; CALL OCCURS {__atmel_repeat}    ; |103| 
           CALL    .S1     __atmel_repeat    ; |104| 
           LDBU    .D2T2   *B10++,B4         ; |104| 
           MVK     .L1     0x1,A4            ; |104| 
           ADDKPC  .S2     RL11,B3,2         ; |104| 
RL11:      ; CALL OCCURS {__atmel_repeat}    ; |104| 
DW$L$__atmel_gpa_init$3$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_gpa_init$4$B:

           SUB     .L1     A11,1,A0          ; |100| 
||         SUB     .S1     A11,1,A11         ; |100| 

   [ A0]   B       .S1     L4                ; |100| 
|| [ A0]   LDBU    .D1T1   *++A10(2),A3      ; |102| 
|| [!A0]   MVK     .L2     0x4,B4            ; |107| 
|| [!A0]   SUB     .L1     A13,2,A10
|| [!A0]   ADD     .S2     4,B11,B10

   [ A0]   CALL    .S1     __atmel_repeat    ; |102| 
           NOP             3
	.dwpsn	"atmel_gpa.c",105,0
   [!A0]   MV      .L1X    B4,A11
           ; BRANCHCC OCCURS {L4}            ; |100| 
DW$L$__atmel_gpa_init$4$E:
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$40 = &G[-2];
;** 107	-----------------------    L$2 = 4;
;**  	-----------------------    #pragma MUST_ITERATE(4, 4, 4)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     __atmel_repeat    ; |109| 
||         LDBU    .D1T1   *++A10(2),A3      ; |109| 

	.dwpsn	"atmel_gpa.c",107,0
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L5:    
DW$L$__atmel_gpa_init$6$B:
	.dwpsn	"atmel_gpa.c",108,0
;**	-----------------------g4:
;** 109	-----------------------    _atmel_repeat(3, *(U$40 += 2));
;** 110	-----------------------    _atmel_repeat(3, U$40[1]);
;** 111	-----------------------    _atmel_repeat(1, *U$34++);
;** 107	-----------------------    if ( --L$2 ) goto g4;
;** 114	-----------------------    _atmel_repeat(6, 0u);

           MVK     .L1     0x3,A4            ; |109| 
||         MV      .L2X    A3,B4             ; |109| 
||         ADDKPC  .S2     RL12,B3,0         ; |109| 

RL12:      ; CALL OCCURS {__atmel_repeat}    ; |109| 
DW$L$__atmel_gpa_init$6$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_gpa_init$7$B:
           CALL    .S1     __atmel_repeat    ; |110| 
           LDBU    .D1T2   *+A10(1),B4       ; |110| 
           ADDKPC  .S2     RL13,B3,2         ; |110| 
           MVK     .L1     0x3,A4            ; |110| 
RL13:      ; CALL OCCURS {__atmel_repeat}    ; |110| 
           CALL    .S1     __atmel_repeat    ; |111| 
           LDBU    .D2T2   *B10++,B4         ; |111| 
           MVK     .L1     0x1,A4            ; |111| 
           ADDKPC  .S2     RL14,B3,2         ; |111| 
RL14:      ; CALL OCCURS {__atmel_repeat}    ; |111| 
DW$L$__atmel_gpa_init$7$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_gpa_init$8$B:

           SUB     .L1     A11,1,A0          ; |107| 
||         SUB     .S1     A11,1,A11         ; |107| 

   [ A0]   LDBU    .D1T1   *++A10(2),A3      ; |109| 
|| [ A0]   B       .S1     L5                ; |107| 

   [ A0]   CALL    .S1     __atmel_repeat    ; |109| 
   [!A0]   CALL    .S1     __atmel_repeat    ; |114| 
	.dwpsn	"atmel_gpa.c",112,0
           NOP             3
           ; BRANCHCC OCCURS {L5}            ; |107| 
DW$L$__atmel_gpa_init$8$E:
;** --------------------------------------------------------------------------*
;** 116	-----------------------    *Ch = Gpa_byte;
;**  	-----------------------    U$49 = &Ch[1];
;** 117	-----------------------    L$3 = 7;
;**  	-----------------------    #pragma MUST_ITERATE(7, 7, 7)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDKPC  .S2     RL15,B3,0         ; |114| 

           MVK     .L1     0x6,A4            ; |114| 
||         ZERO    .L2     B4                ; |114| 

RL15:      ; CALL OCCURS {__atmel_repeat}    ; |114| 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _Gpa_byte,A3      ; |116| 
           MVKH    .S1     _Gpa_byte,A3      ; |116| 
           LDBU    .D1T1   *A3,A3            ; |116| 
           CALL    .S1     __atmel_repeat    ; |119| 
           MVK     .L2     0x7,B4            ; |117| 
           ADD     .S1     1,A12,A10
           NOP             1
	.dwpsn	"atmel_gpa.c",117,0

           MV      .L1X    B4,A11            ; |116| 
||         STB     .D1T1   A3,*A12           ; |116| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L6:    
DW$L$__atmel_gpa_init$11$B:
	.dwpsn	"atmel_gpa.c",118,0
;**	-----------------------g6:
;** 119	-----------------------    _atmel_repeat(7, 0u);
;** 120	-----------------------    *U$49++ = Gpa_byte;
;** 117	-----------------------    if ( --L$3 ) goto g6;
;**  	-----------------------    return;

           MVK     .L1     0x7,A4            ; |119| 
||         ZERO    .L2     B4                ; |119| 
||         ADDKPC  .S2     RL16,B3,0         ; |119| 

RL16:      ; CALL OCCURS {__atmel_repeat}    ; |119| 
DW$L$__atmel_gpa_init$11$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_gpa_init$12$B:

           MVKL    .S1     _Gpa_byte,A3      ; |120| 
||         SUB     .L1     A11,1,A0          ; |117| 
||         SUB     .D1     A11,1,A11         ; |117| 

           MVKH    .S1     _Gpa_byte,A3      ; |120| 
|| [!A0]   MV      .L2     B13,B3            ; |123| 
|| [!A0]   MV      .L1X    SP,A31            ; |123| 

           LDBU    .D1T1   *A3,A3            ; |120| 
|| [ A0]   B       .S1     L6                ; |117| 

   [ A0]   CALL    .S1     __atmel_repeat    ; |119| 
           NOP             3
	.dwpsn	"atmel_gpa.c",121,0
           STB     .D1T1   A3,*A10++         ; |120| 
           ; BRANCHCC OCCURS {L6}            ; |117| 
DW$L$__atmel_gpa_init$12$E:
;** --------------------------------------------------------------------------*

           LDDW    .D1T1   *+A31(8),A11:A10  ; |123| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |123| 

           LDW     .D1T1   *+A31(16),A12     ; |123| 
||         LDW     .D2T2   *+SP(20),B13      ; |123| 
||         RET     .S2     B3                ; |123| 

           LDW     .D2T1   *++SP(32),A13     ; |123| 
	.dwpsn	"atmel_gpa.c",123,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |123| 

DW$56	.dwtag  DW_TAG_loop
	.dwattr DW$56, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L6:1:1185764961")
	.dwattr DW$56, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$56, DW_AT_begin_line(0x75)
	.dwattr DW$56, DW_AT_end_line(0x79)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$__atmel_gpa_init$11$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$__atmel_gpa_init$11$E)
DW$58	.dwtag  DW_TAG_loop_range
	.dwattr DW$58, DW_AT_low_pc(DW$L$__atmel_gpa_init$12$B)
	.dwattr DW$58, DW_AT_high_pc(DW$L$__atmel_gpa_init$12$E)
	.dwendtag DW$56


DW$59	.dwtag  DW_TAG_loop
	.dwattr DW$59, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L5:1:1185764961")
	.dwattr DW$59, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$59, DW_AT_begin_line(0x6b)
	.dwattr DW$59, DW_AT_end_line(0x70)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$__atmel_gpa_init$6$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$__atmel_gpa_init$6$E)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$__atmel_gpa_init$7$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$__atmel_gpa_init$7$E)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$__atmel_gpa_init$8$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$__atmel_gpa_init$8$E)
	.dwendtag DW$59


DW$63	.dwtag  DW_TAG_loop
	.dwattr DW$63, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L4:1:1185764961")
	.dwattr DW$63, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$63, DW_AT_begin_line(0x64)
	.dwattr DW$63, DW_AT_end_line(0x69)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$__atmel_gpa_init$2$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$__atmel_gpa_init$2$E)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$__atmel_gpa_init$3$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$__atmel_gpa_init$3$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$__atmel_gpa_init$4$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$__atmel_gpa_init$4$E)
	.dwendtag DW$63

	.dwattr DW$51, DW_AT_end_file("atmel_gpa.c")
	.dwattr DW$51, DW_AT_end_line(0x7b)
	.dwattr DW$51, DW_AT_end_column(0x01)
	.dwendtag DW$51

	.sect	".text"

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("_atmel_encrypt_nego"), DW_AT_symbol_name("__atmel_encrypt_nego")
	.dwattr DW$67, DW_AT_low_pc(__atmel_encrypt_nego)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$67, DW_AT_begin_line(0x7d)
	.dwattr DW$67, DW_AT_begin_column(0x0d)
	.dwattr DW$67, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$67, DW_AT_skeletal(0x01)
	.dwpsn	"atmel_gpa.c",126,1

;******************************************************************************
;* FUNCTION NAME: __atmel_encrypt_nego                                        *
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
;*   Local Frame Size  : 0 Args + 20 Auto + 24 Save = 44 byte                 *
;******************************************************************************
__atmel_encrypt_nego:
;** --------------------------------------------------------------------------*
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Q"), DW_AT_symbol_name("_Q")
	.dwattr DW$68, DW_AT_type(*DW$T$22)
	.dwattr DW$68, DW_AT_location[DW_OP_reg4]
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Ch"), DW_AT_symbol_name("_Ch")
	.dwattr DW$69, DW_AT_type(*DW$T$22)
	.dwattr DW$69, DW_AT_location[DW_OP_reg20]
;** 130	-----------------------    Ci[0] = K$3 = 255;
;**  	-----------------------    U$12 = &Ci[1];
;** 131	-----------------------    L$1 = 7;
;**  	-----------------------    #pragma MUST_ITERATE(7, 7, 7)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     __atmel_repeat    ; |133| 

           STW     .D2T2   B10,*SP--(48)     ; |126| 
||         MV      .L1X    SP,A31            ; |126| 

           MVK     .L2     0x7,B4            ; |131| 
||         MV      .L1X    B4,A12            ; |126| 
||         STDW    .D1T1   A13:A12,*-A31(8)

           ADD     .L1X    9,SP,A11
||         STDW    .D1T1   A11:A10,*-A31(16)
||         STW     .D2T2   B13,*+SP(28)
||         MVK     .S2     0xff,B10          ; |130| 

	.dwpsn	"atmel_gpa.c",131,0

           MV      .L1X    B4,A10            ; |130| 
||         MV      .S1     A4,A13            ; |126| 
||         STB     .D2T2   B10,*+SP(8)       ; |130| 
||         MV      .L2     B3,B13

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L7:    
DW$L$__atmel_encrypt_nego$2$B:
	.dwpsn	"atmel_gpa.c",132,0
;**	-----------------------g2:
;** 133	-----------------------    _atmel_repeat(2, 0u);
;** 134	-----------------------    *U$12++ = Gpa_byte;
;** 131	-----------------------    if ( --L$1 ) goto g2;
;** 137	-----------------------    L$2 = 8;

           MVK     .L1     0x2,A4            ; |133| 
||         ZERO    .L2     B4                ; |133| 
||         ADDKPC  .S2     RL17,B3,0         ; |133| 

RL17:      ; CALL OCCURS {__atmel_repeat}    ; |133| 
DW$L$__atmel_encrypt_nego$2$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_encrypt_nego$3$B:

           MVKL    .S1     _Gpa_byte,A3      ; |134| 
||         SUB     .L1     A10,1,A0          ; |131| 
||         SUB     .D1     A10,1,A10         ; |131| 

           MVKH    .S1     _Gpa_byte,A3      ; |134| 
|| [!A0]   MVK     .L2     0x8,B5            ; |137| 
|| [!A0]   ADD     .D2     SP,16,B4

           LDBU    .D1T1   *A3,A3            ; |134| 
|| [ A0]   B       .S1     L7                ; |131| 

   [ A0]   CALL    .S1     __atmel_repeat    ; |133| 
           NOP             3
	.dwpsn	"atmel_gpa.c",135,0
           STB     .D1T1   A3,*A11++         ; |134| 
           ; BRANCHCC OCCURS {L7}            ; |131| 
DW$L$__atmel_encrypt_nego$3$E:
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$20 = &Sk[0];
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     __atmel_repeat    ; |139| 
||         MV      .L1X    B4,A10            ; Register A/B partition copy

           MV      .L1X    B5,A11            ; |137| 
	.dwpsn	"atmel_gpa.c",137,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L8:    
DW$L$__atmel_encrypt_nego$5$B:
	.dwpsn	"atmel_gpa.c",138,0
;**	-----------------------g4:
;** 139	-----------------------    _atmel_repeat(2, 0u);
;** 140	-----------------------    *U$20++ = Gpa_byte;
;** 137	-----------------------    if ( --L$2 ) goto g4;
;** 143	-----------------------    _atmel_repeat(3, 0u);

           MVK     .L1     0x2,A4            ; |139| 
||         ZERO    .L2     B4                ; |139| 
||         ADDKPC  .S2     RL18,B3,0         ; |139| 

RL18:      ; CALL OCCURS {__atmel_repeat}    ; |139| 
DW$L$__atmel_encrypt_nego$5$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_encrypt_nego$6$B:

           MVKL    .S1     _Gpa_byte,A3      ; |140| 
||         SUB     .L1     A11,1,A0          ; |137| 
||         SUB     .D1     A11,1,A11         ; |137| 

           MVKH    .S1     _Gpa_byte,A3      ; |140| 

           LDBU    .D1T1   *A3,A3            ; |140| 
|| [ A0]   B       .S1     L8                ; |137| 

   [ A0]   CALL    .S1     __atmel_repeat    ; |139| 
   [!A0]   CALL    .S1     __atmel_repeat    ; |143| 
           NOP             2
	.dwpsn	"atmel_gpa.c",141,0
           STB     .D1T1   A3,*A10++         ; |140| 
           ; BRANCHCC OCCURS {L8}            ; |137| 
DW$L$__atmel_encrypt_nego$6$E:
;** --------------------------------------------------------------------------*
;** 145	-----------------------    _atmel_gpa_init(&Ci, &Sk, Q, Ch);
;** 148	-----------------------    Ci[0] = K$3;
;**  	-----------------------    U$12 = &Ci[1];
;** 149	-----------------------    L$3 = 7;
;**  	-----------------------    #pragma MUST_ITERATE(7, 7, 7)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDKPC  .S2     RL19,B3,0         ; |143| 

           MVK     .L1     0x3,A4            ; |143| 
||         ZERO    .L2     B4                ; |143| 

RL19:      ; CALL OCCURS {__atmel_repeat}    ; |143| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __atmel_gpa_init  ; |145| 
           ADDKPC  .S2     RL20,B3,0         ; |145| 
           MV      .L2X    A12,B6            ; |145| 
           MV      .L1     A13,A6            ; |145| 
           ADD     .D2     SP,16,B4          ; |145| 
           ADD     .S1X    8,SP,A4           ; |145| 
RL20:      ; CALL OCCURS {__atmel_gpa_init}  ; |145| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __atmel_repeat    ; |151| 
           MVK     .L2     0x7,B4            ; |149| 
           ADD     .L1X    9,SP,A11
           MV      .L1X    B4,A10            ; |148| 
	.dwpsn	"atmel_gpa.c",149,0
           STB     .D2T2   B10,*+SP(8)       ; |148| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L9:    
DW$L$__atmel_encrypt_nego$10$B:
	.dwpsn	"atmel_gpa.c",150,0
;**	-----------------------g6:
;** 151	-----------------------    _atmel_repeat(2, 0u);
;** 152	-----------------------    *U$12++ = Gpa_byte;
;** 149	-----------------------    if ( --L$3 ) goto g6;
;** 156	-----------------------    L$4 = 8;

           MVK     .L1     0x2,A4            ; |151| 
||         ZERO    .L2     B4                ; |151| 
||         ADDKPC  .S2     RL21,B3,0         ; |151| 

RL21:      ; CALL OCCURS {__atmel_repeat}    ; |151| 
DW$L$__atmel_encrypt_nego$10$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_encrypt_nego$11$B:

           MVKL    .S1     _Gpa_byte,A3      ; |152| 
||         SUB     .L1     A10,1,A0          ; |149| 
||         SUB     .D1     A10,1,A10         ; |149| 

           MVKH    .S1     _Gpa_byte,A3      ; |152| 
|| [!A0]   MVK     .L2     0x8,B5            ; |156| 
|| [!A0]   ADD     .D2     SP,16,B4

           LDBU    .D1T1   *A3,A3            ; |152| 
|| [ A0]   B       .S1     L9                ; |149| 

   [ A0]   CALL    .S1     __atmel_repeat    ; |151| 
           NOP             3
	.dwpsn	"atmel_gpa.c",153,0
           STB     .D1T1   A3,*A11++         ; |152| 
           ; BRANCHCC OCCURS {L9}            ; |149| 
DW$L$__atmel_encrypt_nego$11$E:
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$20 = &Sk[0];
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     __atmel_repeat    ; |158| 
||         MV      .L1X    B4,A10            ; Register A/B partition copy

           MV      .L1X    B5,A11            ; |156| 
	.dwpsn	"atmel_gpa.c",156,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L10:    
DW$L$__atmel_encrypt_nego$13$B:
	.dwpsn	"atmel_gpa.c",157,0
;**	-----------------------g8:
;** 158	-----------------------    _atmel_repeat(2, 0u);
;** 159	-----------------------    *U$20++ = Gpa_byte;
;** 156	-----------------------    if ( --L$4 ) goto g8;
;** 162	-----------------------    _atmel_repeat(3, 0u);

           MVK     .L1     0x2,A4            ; |158| 
||         ZERO    .L2     B4                ; |158| 
||         ADDKPC  .S2     RL22,B3,0         ; |158| 

RL22:      ; CALL OCCURS {__atmel_repeat}    ; |158| 
DW$L$__atmel_encrypt_nego$13$E:
;** --------------------------------------------------------------------------*
DW$L$__atmel_encrypt_nego$14$B:

           MVKL    .S1     _Gpa_byte,A3      ; |159| 
||         SUB     .L1     A11,1,A0          ; |156| 
||         SUB     .D1     A11,1,A11         ; |156| 

           MVKH    .S1     _Gpa_byte,A3      ; |159| 

           LDBU    .D1T1   *A3,A3            ; |159| 
|| [ A0]   B       .S1     L10               ; |156| 

   [ A0]   CALL    .S1     __atmel_repeat    ; |158| 
   [!A0]   CALL    .S1     __atmel_repeat    ; |162| 
           NOP             2
	.dwpsn	"atmel_gpa.c",160,0
           STB     .D1T1   A3,*A10++         ; |159| 
           ; BRANCHCC OCCURS {L10}           ; |156| 
DW$L$__atmel_encrypt_nego$14$E:
;** --------------------------------------------------------------------------*
;** 162	-----------------------    return;
           ADDKPC  .S2     RL23,B3,0         ; |162| 

           MVK     .L1     0x3,A4            ; |162| 
||         ZERO    .L2     B4                ; |162| 

RL23:      ; CALL OCCURS {__atmel_repeat}    ; |162| 
;** --------------------------------------------------------------------------*

           MV      .L1X    SP,A31            ; |164| 
||         MV      .L2     B13,B3            ; |164| 

           RET     .S2     B3                ; |164| 
||         LDDW    .D1T1   *+A31(40),A13:A12 ; |164| 
||         LDW     .D2T2   *+SP(28),B13      ; |164| 

           LDW     .D2T2   *++SP(48),B10     ; |164| 
||         LDDW    .D1T1   *+A31(32),A11:A10 ; |164| 

	.dwpsn	"atmel_gpa.c",164,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |164| 

DW$70	.dwtag  DW_TAG_loop
	.dwattr DW$70, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L10:1:1185764961")
	.dwattr DW$70, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$70, DW_AT_begin_line(0x9c)
	.dwattr DW$70, DW_AT_end_line(0xa0)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$__atmel_encrypt_nego$13$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$__atmel_encrypt_nego$13$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$__atmel_encrypt_nego$14$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$__atmel_encrypt_nego$14$E)
	.dwendtag DW$70


DW$73	.dwtag  DW_TAG_loop
	.dwattr DW$73, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L9:1:1185764961")
	.dwattr DW$73, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$73, DW_AT_begin_line(0x95)
	.dwattr DW$73, DW_AT_end_line(0x99)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$__atmel_encrypt_nego$10$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$__atmel_encrypt_nego$10$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$__atmel_encrypt_nego$11$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$__atmel_encrypt_nego$11$E)
	.dwendtag DW$73


DW$76	.dwtag  DW_TAG_loop
	.dwattr DW$76, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L8:1:1185764961")
	.dwattr DW$76, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$76, DW_AT_begin_line(0x89)
	.dwattr DW$76, DW_AT_end_line(0x8d)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$__atmel_encrypt_nego$5$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$__atmel_encrypt_nego$5$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$__atmel_encrypt_nego$6$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$__atmel_encrypt_nego$6$E)
	.dwendtag DW$76


DW$79	.dwtag  DW_TAG_loop
	.dwattr DW$79, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L7:1:1185764961")
	.dwattr DW$79, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$79, DW_AT_begin_line(0x83)
	.dwattr DW$79, DW_AT_end_line(0x87)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$__atmel_encrypt_nego$2$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$__atmel_encrypt_nego$2$E)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$__atmel_encrypt_nego$3$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$__atmel_encrypt_nego$3$E)
	.dwendtag DW$79

	.dwattr DW$67, DW_AT_end_file("atmel_gpa.c")
	.dwattr DW$67, DW_AT_end_line(0xa4)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendtag DW$67

	.sect	".text"
	.global	_ATMEL_EncryptActive

DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_EncryptActive"), DW_AT_symbol_name("_ATMEL_EncryptActive")
	.dwattr DW$82, DW_AT_low_pc(_ATMEL_EncryptActive)
	.dwattr DW$82, DW_AT_high_pc(0x00)
	.dwattr DW$82, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$82, DW_AT_begin_line(0xbc)
	.dwattr DW$82, DW_AT_begin_column(0x05)
	.dwattr DW$82, DW_AT_frame_base[DW_OP_breg31 312]
	.dwattr DW$82, DW_AT_skeletal(0x01)
	.dwpsn	"atmel_gpa.c",189,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_EncryptActive                                        *
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
;*   Local Frame Size  : 8 Args + 284 Auto + 16 Save = 308 byte               *
;******************************************************************************
_ATMEL_EncryptActive:
;** --------------------------------------------------------------------------*
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$83, DW_AT_type(*DW$T$10)
	.dwattr DW$83, DW_AT_location[DW_OP_reg4]
;** 192	-----------------------    auth_cmd[] = {...};
;** 198	-----------------------    dbg_output("Encrypt Negociation\n");
;**  	-----------------------    U$9 = &auth_cmd[4];
;** 199	-----------------------    L$1 = 8;
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDK    .S2     -312,SP           ; |189| 
           STW     .D2T1   A12,*+SP(312)     ; |189| 
           STW     .D2T1   A10,*+SP(304)     ; |189| 

           STW     .D2T1   A11,*+SP(308)     ; |189| 
||         MVKL    .S1     _$T0$1,A3         ; |192| 

           STW     .D2T2   B13,*+SP(300)     ; |189| 
||         MVKH    .S1     _$T0$1,A3         ; |192| 

           LDW     .D1T1   *+A3(16),A5       ; |192| 
           LDDW    .D1T1   *A3,A9:A8         ; |192| 
           LDDW    .D1T1   *+A3(8),A7:A6     ; |192| 
           CALL    .S1     _dbg_output       ; |198| 
           ADD     .D2     SP,16,B4          ; |192| 
           STW     .D2T1   A5,*+B4(16)       ; |192| 

           STDW    .D2T1   A9:A8,*B4         ; |192| 
||         MVKL    .S2     SL1+0,B5          ; |198| 

           STDW    .D2T1   A7:A6,*+B4(8)     ; |192| 
||         MVKH    .S2     SL1+0,B5          ; |198| 

           ADDKPC  .S2     RL24,B3,0         ; |198| 
||         STW     .D2T2   B5,*+SP(4)        ; |198| 
||         MV      .L1     A4,A12            ; |189| 
||         MV      .L2     B3,B13            ; |189| 

RL24:      ; CALL OCCURS {_dbg_output}       ; |198| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _rand             ; |200| 
           ADD     .D2     SP,20,B5
           MVK     .L2     0x8,B4            ; |199| 
           MV      .L1X    B5,A10            ; Register A/B partition copy
	.dwpsn	"atmel_gpa.c",199,0
           MV      .L1X    B4,A11            ; |199| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L11:    
DW$L$_ATMEL_EncryptActive$3$B:
	.dwpsn	"atmel_gpa.c",200,0
;**	-----------------------g2:
;** 200	-----------------------    *U$9++ = rand();
;** 199	-----------------------    if ( --L$1 ) goto g2;
;** 202	-----------------------    _atmel_encrypt_nego(&auth_cmd+4, &auth_cmd+12);
           ADDKPC  .S2     RL25,B3,0         ; |200| 
RL25:      ; CALL OCCURS {_rand}             ; |200| 
DW$L$_ATMEL_EncryptActive$3$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_EncryptActive$4$B:

           SUB     .L1     A11,1,A0          ; |199| 
||         STB     .D1T1   A4,*A10++         ; |200| 
||         SUB     .S1     A11,1,A11         ; |199| 

   [ A0]   B       .S1     L11               ; |199| 
|| [!A0]   ADD     .D2     SP,20,B5          ; |202| 

   [ A0]   CALL    .S1     _rand             ; |200| 
   [!A0]   CALL    .S1     __atmel_encrypt_nego ; |202| 
           NOP             3
           ; BRANCHCC OCCURS {L11}           ; |199| 
DW$L$_ATMEL_EncryptActive$4$E:
;** --------------------------------------------------------------------------*
;** 205	-----------------------    I2C_Stream(index, 20u, &auth_cmd, 0, &temp);
;** 214	-----------------------    return 0;
           ADDKPC  .S2     RL26,B3,0         ; |202| 

           ADD     .D2     SP,28,B4          ; |202| 
||         MV      .L1X    B5,A4             ; |202| 

RL26:      ; CALL OCCURS {__atmel_encrypt_nego}  ; |202| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _I2C_Stream       ; |205| 
           ADDAD   .D2     SP,5,B5           ; |205| 
           ADD     .D2     SP,16,B7          ; |205| 
           MV      .L1X    B5,A8             ; |205| 
           MVK     .S2     0x14,B4           ; |205| 

           ADDKPC  .S2     RL27,B3,0         ; |205| 
||         MV      .L1X    B7,A6             ; |205| 
||         ZERO    .L2     B6                ; |205| 
||         MV      .S1     A12,A4            ; |205| 

RL27:      ; CALL OCCURS {_I2C_Stream}       ; |205| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(308),A11     ; |215| 

           LDW     .D2T1   *+SP(304),A10     ; |215| 
||         MV      .L2     B13,B3            ; |215| 

           RET     .S2     B3                ; |215| 
||         LDW     .D2T1   *+SP(312),A12     ; |215| 

           LDW     .D2T2   *+SP(300),B13     ; |215| 
           NOP             2
           ADDK    .S2     312,SP            ; |215| 
	.dwpsn	"atmel_gpa.c",215,1
           ZERO    .L1     A4                ; |214| 
           ; BRANCH OCCURS {B3}              ; |215| 

DW$84	.dwtag  DW_TAG_loop
	.dwattr DW$84, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L11:1:1185764961")
	.dwattr DW$84, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$84, DW_AT_begin_line(0xc7)
	.dwattr DW$84, DW_AT_end_line(0xc8)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_ATMEL_EncryptActive$3$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_ATMEL_EncryptActive$3$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_ATMEL_EncryptActive$4$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_ATMEL_EncryptActive$4$E)
	.dwendtag DW$84

	.dwattr DW$82, DW_AT_end_file("atmel_gpa.c")
	.dwattr DW$82, DW_AT_end_line(0xd7)
	.dwattr DW$82, DW_AT_end_column(0x01)
	.dwendtag DW$82

	.sect	".text"
	.global	_ATMEL_Decrypt

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_Decrypt"), DW_AT_symbol_name("_ATMEL_Decrypt")
	.dwattr DW$87, DW_AT_low_pc(_ATMEL_Decrypt)
	.dwattr DW$87, DW_AT_high_pc(0x00)
	.dwattr DW$87, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$87, DW_AT_begin_line(0xfe)
	.dwattr DW$87, DW_AT_begin_column(0x05)
	.dwattr DW$87, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr DW$87, DW_AT_skeletal(0x01)
	.dwpsn	"atmel_gpa.c",255,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_Decrypt                                              *
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
;*   Local Frame Size  : 8 Args + 0 Auto + 32 Save = 40 byte                  *
;******************************************************************************
_ATMEL_Decrypt:
;** --------------------------------------------------------------------------*
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$88, DW_AT_type(*DW$T$10)
	.dwattr DW$88, DW_AT_location[DW_OP_reg4]
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$89, DW_AT_type(*DW$T$22)
	.dwattr DW$89, DW_AT_location[DW_OP_reg20]
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$90, DW_AT_type(*DW$T$10)
	.dwattr DW$90, DW_AT_location[DW_OP_reg6]
;** 255	-----------------------    buf = buf;
;** 255	-----------------------    len = len;
;** 258	-----------------------    dbg_output("Reading out encrypted data");
;** 259	-----------------------    ATMEL_ReadRawUserZone(0, buf, len);
;**  	-----------------------    K$9 = 32;
;** 260	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 4, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
           CALL    .S1     _dbg_output       ; |258| 
           MV      .L1X    SP,A31            ; |255| 
           STW     .D2T1   A12,*SP--(40)     ; |255| 

           STW     .D1T1   A14,*-A31(28)
||         STDW    .D2T2   B13:B12,*+SP(32)
||         MVKL    .S1     SL2+0,A3          ; |258| 

           MV      .L2X    A6,B12            ; |255| 
||         STDW    .D1T1   A11:A10,*-A31(24)
||         STDW    .D2T2   B11:B10,*+SP(24)
||         MVKH    .S1     SL2+0,A3          ; |258| 

           ADDKPC  .S2     RL28,B3,0         ; |258| 
||         MV      .L1     A6,A10            ; |255| 
||         STW     .D2T1   A3,*+SP(4)        ; |258| 
||         MV      .S1X    B3,A14
||         MV      .L2     B4,B11            ; |255| 

RL28:      ; CALL OCCURS {_dbg_output}       ; |258| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ATMEL_ReadRawUserZone ; |259| 
           ADDKPC  .S2     RL29,B3,1         ; |259| 
           MV      .L1     A10,A6            ; |259| 
           MV      .L2     B11,B4            ; |259| 
           ZERO    .S1     A4                ; |259| 
RL29:      ; CALL OCCURS {_ATMEL_ReadRawUserZone}  ; |259| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __atmel_repeat    ; |262| 
           ZERO    .L1     A10               ; |260| 
           EXTU    .S1     A10,24,24,A3      ; |262| 
           MVK     .S2     0x20,B13
	.dwpsn	"atmel_gpa.c",260,0
           NOP             1
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L12
;** --------------------------------------------------------------------------*
L12:    
DW$L$_ATMEL_Decrypt$4$B:
	.dwpsn	"atmel_gpa.c",261,0
;**	-----------------------g2:
;** 262	-----------------------    _atmel_repeat(1, (unsigned char)i);
;** 263	-----------------------    (len > K$9) ? (read_len = K$9) : (read_len = len);
;** 264	-----------------------    len -= read_len;
;** 270	-----------------------    _atmel_repeat(5, 0u);
;** 271	-----------------------    _atmel_repeat(1, 0u);
;** 272	-----------------------    _atmel_repeat(5, 0u);
;** 273	-----------------------    _atmel_repeat(1, (unsigned char)read_len);
;** 275	-----------------------    if ( read_len <= 0 ) goto g5;

           MVK     .L1     0x1,A4            ; |262| 
||         MV      .L2X    A3,B4             ; |262| 
||         ADDKPC  .S2     RL30,B3,0         ; |262| 

RL30:      ; CALL OCCURS {__atmel_repeat}    ; |262| 
DW$L$_ATMEL_Decrypt$4$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_Decrypt$5$B:
           CALL    .S1     __atmel_repeat    ; |270| 
           ADDKPC  .S2     RL31,B3,2         ; |270| 
           ZERO    .L2     B4                ; |270| 
           MVK     .L1     0x5,A4            ; |270| 
RL31:      ; CALL OCCURS {__atmel_repeat}    ; |270| 
           CALL    .S1     __atmel_repeat    ; |271| 
           MVK     .L1     0x1,A4            ; |271| 
           ZERO    .L2     B4                ; |271| 
           ADDKPC  .S2     RL32,B3,2         ; |271| 
RL32:      ; CALL OCCURS {__atmel_repeat}    ; |271| 
           CALL    .S1     __atmel_repeat    ; |272| 
           MVK     .L1     0x5,A4            ; |272| 
           ZERO    .L2     B4                ; |272| 
           ADDKPC  .S2     RL33,B3,2         ; |272| 
RL33:      ; CALL OCCURS {__atmel_repeat}    ; |272| 
           CALL    .S1     __atmel_repeat    ; |273| 
           CMPGT   .L2     B12,B13,B0        ; |263| 
   [ B0]   MV      .S2     B13,B10           ; |263| 
   [!B0]   MV      .L2     B12,B10           ; |263| 
           EXTU    .S2     B10,24,24,B4      ; |273| 

           MVK     .L1     0x1,A4            ; |273| 
||         ADDKPC  .S2     RL34,B3,0         ; |273| 

RL34:      ; CALL OCCURS {__atmel_repeat}    ; |273| 
DW$L$_ATMEL_Decrypt$5$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_Decrypt$6$B:

           CMPGT   .L2     B10,0,B0          ; |275| 
||         SUB     .S2     B12,B10,B12       ; |264| 
||         MVKL    .S1     _Gpa_byte,A3      ; |277| 

   [!B0]   BNOP    .S2     L14,1             ; |275| 
|| [ B0]   MV      .L1X    B11,A11
||         MVKH    .S1     _Gpa_byte,A3      ; |277| 

   [ B0]   LDBU    .D1T1   *A3,A3            ; |277| 
   [ B0]   LDBU    .D1T1   *A11,A4           ; |277| 
           NOP             2
           ; BRANCHCC OCCURS {L14}           ; |275| 
DW$L$_ATMEL_Decrypt$6$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_Decrypt$7$B:
;**  	-----------------------    U$19 = buf;
;**  	-----------------------    L$2 = read_len;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     __atmel_repeat    ; |278| 
||         MV      .L1X    B10,A12

	.dwpsn	"atmel_gpa.c",275,0
           NOP             1
DW$L$_ATMEL_Decrypt$7$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L13:    
DW$L$_ATMEL_Decrypt$8$B:
	.dwpsn	"atmel_gpa.c",276,0
;**	-----------------------g4:
;** 277	-----------------------    A$2 = C$1 = (unsigned char)(*U$19^Gpa_byte);
;** 277	-----------------------    *U$19++ = A$2;
;** 278	-----------------------    _atmel_repeat(1, C$1);
;** 279	-----------------------    _atmel_repeat(5, 0u);
;** 275	-----------------------    if ( --L$2 ) goto g4;
           XOR     .L1     A3,A4,A3          ; |277| 
           EXTU    .S1     A3,24,24,A3       ; |277| 
           STB     .D1T1   A3,*A11++         ; |277| 

           MV      .L2X    A3,B4             ; |278| 
||         ADDKPC  .S2     RL35,B3,0         ; |278| 
||         MVK     .L1     0x1,A4            ; |278| 

RL35:      ; CALL OCCURS {__atmel_repeat}    ; |278| 
DW$L$_ATMEL_Decrypt$8$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_Decrypt$9$B:
           CALL    .S1     __atmel_repeat    ; |279| 
           ADDKPC  .S2     RL36,B3,2         ; |279| 
           ZERO    .L2     B4                ; |279| 
           MVK     .L1     0x5,A4            ; |279| 
RL36:      ; CALL OCCURS {__atmel_repeat}    ; |279| 
DW$L$_ATMEL_Decrypt$9$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_Decrypt$10$B:

           SUB     .L1     A12,1,A0          ; |275| 
||         SUB     .D1     A12,1,A12         ; |275| 
||         MVKL    .S1     _Gpa_byte,A3      ; |277| 

   [ A0]   B       .S2     L13               ; |275| 
||         MVKH    .S1     _Gpa_byte,A3      ; |277| 
|| [ A0]   LDBU    .D1T1   *A11,A4           ; |277| 

   [ A0]   LDBU    .D1T1   *A3,A3            ; |277| 
           NOP             2
   [ A0]   CALL    .S1     __atmel_repeat    ; |278| 
	.dwpsn	"atmel_gpa.c",280,0
           NOP             1
           ; BRANCHCC OCCURS {L13}           ; |275| 
DW$L$_ATMEL_Decrypt$10$E:
;** --------------------------------------------------------------------------*
L14:    
DW$L$_ATMEL_Decrypt$11$B:
;**	-----------------------g5:
;** 281	-----------------------    buf += read_len;
;** 284	-----------------------    if ( !len ) goto g7;
;** 260	-----------------------    if ( (++i) < 4 ) goto g2;

           MV      .L1X    B12,A1
||         ZERO    .S1     A0                ; |260| 
||         ADD     .L2     B10,B11,B11       ; |281| 

   [ A1]   ADD     .L1     1,A10,A10         ; |260| 
   [ A1]   CMPLT   .L1     A10,4,A0          ; |260| 

   [ A0]   B       .S2     L12               ; |260| 
|| [!A0]   MVKL    .S1     SL3+0,A3          ; |286| 

   [ A0]   CALL    .S2     __atmel_repeat    ; |262| 
|| [ A0]   EXTU    .S1     A10,24,24,A3      ; |262| 

   [!A0]   CALL    .S2     _dbg_output       ; |286| 
|| [!A0]   MVKH    .S1     SL3+0,A3          ; |286| 

	.dwpsn	"atmel_gpa.c",285,0
           NOP             3
           ; BRANCHCC OCCURS {L12}           ; |260| 
DW$L$_ATMEL_Decrypt$11$E:
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 286	-----------------------    dbg_output("\n");
;** 287	-----------------------    return 1;
           ADDKPC  .S2     RL37,B3,0         ; |286| 
           STW     .D2T1   A3,*+SP(4)        ; |286| 
RL37:      ; CALL OCCURS {_dbg_output}       ; |286| 
;** --------------------------------------------------------------------------*
           MV      .L1X    SP,A31            ; |289| 

           LDDW    .D1T1   *+A31(16),A11:A10 ; |289| 
||         LDDW    .D2T2   *+SP(32),B13:B12  ; |289| 
||         MV      .L2X    A14,B3            ; |289| 

           RET     .S2     B3                ; |289| 
||         LDW     .D1T1   *+A31(12),A14     ; |289| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |289| 

           LDW     .D2T1   *++SP(40),A12     ; |289| 
           NOP             3
	.dwpsn	"atmel_gpa.c",289,1
           MVK     .L1     0x1,A4            ; |287| 
           ; BRANCH OCCURS {B3}              ; |289| 

DW$91	.dwtag  DW_TAG_loop
	.dwattr DW$91, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L12:1:1185764961")
	.dwattr DW$91, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$91, DW_AT_begin_line(0x104)
	.dwattr DW$91, DW_AT_end_line(0x11d)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_ATMEL_Decrypt$4$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_ATMEL_Decrypt$4$E)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_ATMEL_Decrypt$7$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_ATMEL_Decrypt$7$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_ATMEL_Decrypt$5$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_ATMEL_Decrypt$5$E)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_ATMEL_Decrypt$6$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_ATMEL_Decrypt$6$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_ATMEL_Decrypt$11$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_ATMEL_Decrypt$11$E)

DW$97	.dwtag  DW_TAG_loop
	.dwattr DW$97, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L13:2:1185764961")
	.dwattr DW$97, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$97, DW_AT_begin_line(0x113)
	.dwattr DW$97, DW_AT_end_line(0x118)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_ATMEL_Decrypt$8$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_ATMEL_Decrypt$8$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_ATMEL_Decrypt$9$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_ATMEL_Decrypt$9$E)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$_ATMEL_Decrypt$10$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$_ATMEL_Decrypt$10$E)
	.dwendtag DW$97

	.dwendtag DW$91

	.dwattr DW$87, DW_AT_end_file("atmel_gpa.c")
	.dwattr DW$87, DW_AT_end_line(0x121)
	.dwattr DW$87, DW_AT_end_column(0x01)
	.dwendtag DW$87

	.sect	".text"
	.global	_ATMEL_Auth

DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_Auth"), DW_AT_symbol_name("_ATMEL_Auth")
	.dwattr DW$101, DW_AT_low_pc(_ATMEL_Auth)
	.dwattr DW$101, DW_AT_high_pc(0x00)
	.dwattr DW$101, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$101, DW_AT_begin_line(0xd9)
	.dwattr DW$101, DW_AT_begin_column(0x05)
	.dwattr DW$101, DW_AT_frame_base[DW_OP_breg31 320]
	.dwattr DW$101, DW_AT_skeletal(0x01)
	.dwpsn	"atmel_gpa.c",218,1

;******************************************************************************
;* FUNCTION NAME: _ATMEL_Auth                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 8 Args + 292 Auto + 20 Save = 320 byte               *
;******************************************************************************
_ATMEL_Auth:
;** --------------------------------------------------------------------------*
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$102, DW_AT_type(*DW$T$10)
	.dwattr DW$102, DW_AT_location[DW_OP_reg4]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("G"), DW_AT_symbol_name("_G")
	.dwattr DW$103, DW_AT_type(*DW$T$22)
	.dwattr DW$103, DW_AT_location[DW_OP_reg20]
;** 221	-----------------------    auth_cmd[] = {...};
;** 226	-----------------------    ATMEL_ReadRawConfigZone(index, 80, &Ci, 8);
;**  	-----------------------    U$13 = &auth_cmd[4];
;** 228	-----------------------    L$1 = 8;
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDK    .S2     -320,SP           ; |218| 
           STW     .D2T1   A13,*+SP(320)     ; |218| 
           STW     .D2T2   B13,*+SP(316)     ; |218| 
           STW     .D2T1   A12,*+SP(312)     ; |218| 

           STW     .D2T1   A10,*+SP(304)     ; |218| 
||         MVKL    .S1     _$T1$2,A3         ; |221| 

           STW     .D2T1   A11,*+SP(308)     ; |218| 
||         MVKH    .S1     _$T1$2,A3         ; |221| 

           LDW     .D1T1   *+A3(16),A5       ; |221| 
           LDDW    .D1T1   *+A3(8),A17:A16   ; |221| 
           LDDW    .D1T1   *A3,A9:A8         ; |221| 

           CALL    .S1     _ATMEL_ReadRawConfigZone ; |226| 
||         ADD     .D2     SP,24,B4          ; |221| 
||         MV      .L1X    B4,A13            ; |218| 

           ADD     .D2     SP,16,B5          ; |226| 
           STW     .D2T1   A5,*+B4(16)       ; |221| 
           STDW    .D2T1   A17:A16,*+B4(8)   ; |221| 

           MVK     .S2     0x50,B4           ; |226| 
||         STDW    .D2T1   A9:A8,*B4         ; |221| 

           ADDKPC  .S2     RL38,B3,0         ; |226| 
||         MV      .L1X    B5,A6             ; |226| 
||         MV      .S1     A4,A12            ; |218| 
||         MV      .L2     B3,B13            ; |218| 
||         MVK     .D2     0x8,B6            ; |226| 

RL38:      ; CALL OCCURS {_ATMEL_ReadRawConfigZone}  ; |226| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _rand             ; |229| 
           ADD     .D2     SP,28,B4
           MVK     .L2     0x8,B5            ; |228| 
           MV      .L1X    B4,A10            ; Register A/B partition copy
	.dwpsn	"atmel_gpa.c",228,0
           MV      .L1X    B5,A11            ; |228| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L15:    
DW$L$_ATMEL_Auth$3$B:
	.dwpsn	"atmel_gpa.c",229,0
;**	-----------------------g2:
;** 229	-----------------------    *U$13++ = rand();
;** 228	-----------------------    if ( --L$1 ) goto g2;
;** 231	-----------------------    _atmel_gpa_init(&Ci, G, &auth_cmd+4, &auth_cmd+12);
           ADDKPC  .S2     RL39,B3,0         ; |229| 
RL39:      ; CALL OCCURS {_rand}             ; |229| 
DW$L$_ATMEL_Auth$3$E:
;** --------------------------------------------------------------------------*
DW$L$_ATMEL_Auth$4$B:

           SUB     .L1     A11,1,A0          ; |228| 
||         STB     .D1T1   A4,*A10++         ; |229| 
||         SUB     .S1     A11,1,A11         ; |228| 

   [ A0]   B       .S1     L15               ; |228| 
|| [!A0]   ADD     .D2     SP,16,B7          ; |231| 

   [ A0]   CALL    .S1     _rand             ; |229| 
|| [!A0]   ADD     .D2     SP,28,B5          ; |231| 

   [!A0]   CALL    .S1     __atmel_gpa_init  ; |231| 
           NOP             3
           ; BRANCHCC OCCURS {L15}           ; |228| 
DW$L$_ATMEL_Auth$4$E:
;** --------------------------------------------------------------------------*
;** 233	-----------------------    ATMEL_AckPolling(index);
;** 234	-----------------------    I2C_Stream(index, 20u, &auth_cmd, 0, &temp);
;** 236	-----------------------    ATMEL_ReadRawConfigZone(index, K$7 = 80, &Ci, 8);
;** 237	-----------------------    if ( (C$1 = Ci[0]) == 255 ) goto g5;
           MV      .L1X    B7,A4             ; |231| 

           MV      .L1X    B5,A6             ; |231| 
||         ADDKPC  .S2     RL40,B3,0         ; |231| 
||         ADDAW   .D2     SP,9,B6           ; |231| 
||         MV      .L2X    A13,B4            ; |231| 

RL40:      ; CALL OCCURS {__atmel_gpa_init}  ; |231| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ATMEL_AckPolling ; |233| 
           ADDKPC  .S2     RL41,B3,3         ; |233| 
           MV      .L1     A12,A4            ; |233| 
RL41:      ; CALL OCCURS {_ATMEL_AckPolling}  ; |233| 
           CALL    .S1     _I2C_Stream       ; |234| 
           ADDAD   .D2     SP,6,B5           ; |234| 
           ADD     .D2     SP,24,B7          ; |234| 
           MVK     .S2     0x14,B4           ; |234| 
           MV      .L1X    B5,A8             ; |234| 

           ZERO    .L2     B6                ; |234| 
||         MV      .S1     A12,A4            ; |234| 
||         MV      .L1X    B7,A6             ; |234| 
||         ADDKPC  .S2     RL42,B3,0         ; |234| 

RL42:      ; CALL OCCURS {_I2C_Stream}       ; |234| 
           CALL    .S1     _ATMEL_ReadRawConfigZone ; |236| 
           ADD     .D2     SP,16,B4          ; |236| 
           MVK     .S1     0x50,A3           ; |236| 
           MV      .S1     A12,A4            ; |236| 
           MVK     .D2     0x8,B6            ; |236| 

           MV      .L1X    B4,A6             ; |236| 
||         MV      .L2X    A3,B4             ; |236| 
||         ADDKPC  .S2     RL43,B3,0         ; |236| 

RL43:      ; CALL OCCURS {_ATMEL_ReadRawConfigZone}  ; |236| 
;** --------------------------------------------------------------------------*

           LDBU    .D2T2   *+SP(16),B4       ; |237| 
||         MVK     .S2     255,B5            ; |237| 
||         MVKL    .S1     SL5+0,A3          ; |238| 

           NOP             1
           MVKL    .S1     SL4+0,A4          ; |240| 
           MVKH    .S1     SL5+0,A3          ; |238| 
           MVKH    .S1     SL4+0,A4          ; |240| 
           CMPEQ   .L2     B4,B5,B0          ; |237| 
   [ B0]   B       .S1     L16               ; |237| 
   [ B0]   CALL    .S1     _dbg_output       ; |238| 
   [!B0]   CALL    .S1     _dbg_output       ; |240| 
           NOP             3
           ; BRANCHCC OCCURS {L16}           ; |237| 
;** --------------------------------------------------------------------------*
;** 240	-----------------------    dbg_output("auth error AAC = %d\n", (int)C$1);
;** 240	-----------------------    goto g6;
           STW     .D2T2   B4,*+SP(8)        ; |240| 

           STW     .D2T1   A4,*+SP(4)        ; |240| 
||         ADDKPC  .S2     RL44,B3,0         ; |240| 

RL44:      ; CALL OCCURS {_dbg_output}       ; |240| 
;** --------------------------------------------------------------------------*

           B       .S1     L17               ; |240| 
||         MV      .L2     B13,B3            ; |243| 
||         LDW     .D2T1   *+SP(320),A13     ; |243| 
||         ZERO    .L1     A4                ; |242| 

           LDW     .D2T1   *+SP(308),A11     ; |243| 
           LDW     .D2T1   *+SP(304),A10     ; |243| 

           LDW     .D2T1   *+SP(312),A12     ; |243| 
||         RET     .S2     B3                ; |243| 

           LDW     .D2T2   *+SP(316),B13     ; |243| 
||         ADDK    .S2     320,SP            ; |243| 

           NOP             1
           ; BRANCH OCCURS {L17}             ; |240| 
;** --------------------------------------------------------------------------*
L16:    
;**	-----------------------g5:
;** 238	-----------------------    dbg_output("Auth success.\n");

           ADDKPC  .S2     RL45,B3,0         ; |238| 
||         STW     .D2T1   A3,*+SP(4)        ; |238| 

RL45:      ; CALL OCCURS {_dbg_output}       ; |238| 

           MV      .L2     B13,B3            ; |243| 
||         LDW     .D2T2   *+SP(316),B13     ; |243| 
||         ZERO    .L1     A4                ; |242| 

           LDW     .D2T1   *+SP(320),A13     ; |243| 
           LDW     .D2T1   *+SP(312),A12     ; |243| 

           LDW     .D2T1   *+SP(308),A11     ; |243| 
||         RET     .S2     B3                ; |243| 

           LDW     .D2T1   *+SP(304),A10     ; |243| 
||         ADDK    .S2     320,SP            ; |243| 

           NOP             1
;** --------------------------------------------------------------------------*
L17:    
;**	-----------------------g6:
;** 242	-----------------------    return 0;
	.dwpsn	"atmel_gpa.c",243,1
           NOP             3
           ; BRANCH OCCURS {B3}              ; |243| 

DW$104	.dwtag  DW_TAG_loop
	.dwattr DW$104, DW_AT_name("D:\pred\dsp\i2c\atmel_gpa.asm:L15:1:1185764961")
	.dwattr DW$104, DW_AT_begin_file("atmel_gpa.c")
	.dwattr DW$104, DW_AT_begin_line(0xe4)
	.dwattr DW$104, DW_AT_end_line(0xe5)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$_ATMEL_Auth$3$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$_ATMEL_Auth$3$E)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_ATMEL_Auth$4$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_ATMEL_Auth$4$E)
	.dwendtag DW$104

	.dwattr DW$101, DW_AT_end_file("atmel_gpa.c")
	.dwattr DW$101, DW_AT_end_line(0xf3)
	.dwattr DW$101, DW_AT_end_column(0x01)
	.dwendtag DW$101

;; Inlined function references:
;; [  1] _atmel_reset_gpa
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Encrypt Negociation",10,0
SL2:	.string	"Reading out encrypted data",0
SL3:	.string	10,0
SL4:	.string	"auth error AAC = %d",10,0
SL5:	.string	"Auth success.",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_dbg_output
	.global	_ATMEL_ReadRawConfigZone
	.global	_rand
	.global	_I2C_Stream
	.global	_ATMEL_AckPolling
	.global	_ATMEL_ReadRawUserZone

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$19	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$27

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$22	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$22, DW_AT_address_class(0x20)

DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$30


DW$T$36	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$36, DW_AT_byte_size(0x14)
DW$120	.dwtag  DW_TAG_subrange_type
	.dwattr DW$120, DW_AT_upper_bound(0x13)
	.dwendtag DW$T$36

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$39	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$122	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)

DW$T$43	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$45

DW$T$38	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$38, DW_AT_address_class(0x20)
DW$T$35	.dwtag  DW_TAG_const_type
	.dwattr DW$T$35, DW_AT_type(*DW$T$6)
DW$T$37	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$37, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$37, DW_AT_byte_size(0x01)

	.dwattr DW$101, DW_AT_external(0x01)
	.dwattr DW$101, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_external(0x01)
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$82, DW_AT_external(0x01)
	.dwattr DW$82, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_type(*DW$T$10)
	.dwattr DW$34, DW_AT_type(*DW$T$6)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$129, DW_AT_location[DW_OP_reg0]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$130, DW_AT_location[DW_OP_reg1]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$131, DW_AT_location[DW_OP_reg2]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$132, DW_AT_location[DW_OP_reg3]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$133, DW_AT_location[DW_OP_reg4]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$134, DW_AT_location[DW_OP_reg5]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$135, DW_AT_location[DW_OP_reg6]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$136, DW_AT_location[DW_OP_reg7]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$137, DW_AT_location[DW_OP_reg8]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$138, DW_AT_location[DW_OP_reg9]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$139, DW_AT_location[DW_OP_reg10]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$140, DW_AT_location[DW_OP_reg11]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$141, DW_AT_location[DW_OP_reg12]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$142, DW_AT_location[DW_OP_reg13]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$143, DW_AT_location[DW_OP_reg14]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$144, DW_AT_location[DW_OP_reg15]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$145, DW_AT_location[DW_OP_reg16]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$146, DW_AT_location[DW_OP_reg17]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$147, DW_AT_location[DW_OP_reg18]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$148, DW_AT_location[DW_OP_reg19]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$149, DW_AT_location[DW_OP_reg20]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$150, DW_AT_location[DW_OP_reg21]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$151, DW_AT_location[DW_OP_reg22]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$152, DW_AT_location[DW_OP_reg23]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$153, DW_AT_location[DW_OP_reg24]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$154, DW_AT_location[DW_OP_reg25]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$155, DW_AT_location[DW_OP_reg26]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$156, DW_AT_location[DW_OP_reg27]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$157, DW_AT_location[DW_OP_reg28]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$158, DW_AT_location[DW_OP_reg29]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$159, DW_AT_location[DW_OP_reg30]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$160, DW_AT_location[DW_OP_reg31]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x20]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x21]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x22]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x23]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x24]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x25]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x26]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x27]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x28]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x29]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x2a]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x2b]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x2c]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x2d]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x2e]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x2f]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x30]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x31]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x32]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x33]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x34]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x35]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x36]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x37]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x38]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x39]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x3a]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x3b]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x3c]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x3d]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x3e]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x3f]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x40]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x41]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x42]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x43]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x44]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x45]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x46]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x47]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x48]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x49]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x4a]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x4b]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x4c]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x4d]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x4e]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x4f]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x50]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x51]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x52]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x53]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x54]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x55]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x56]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x57]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x58]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x59]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x5a]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x5b]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x5c]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x5d]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x5e]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x5f]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x60]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x61]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x62]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x63]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x64]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x65]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x66]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x67]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x68]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x69]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x6a]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x6b]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x6c]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x6d]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x6e]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x6f]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x70]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x71]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x72]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x73]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x74]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x75]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x76]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x77]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x78]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x79]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x7a]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$252, DW_AT_location[DW_OP_regx 0x7b]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$253, DW_AT_location[DW_OP_regx 0x7c]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$254, DW_AT_location[DW_OP_regx 0x7d]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$255, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

