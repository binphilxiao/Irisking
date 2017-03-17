;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Thu Feb 17 13:26:34 2011                                *
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
	.dwattr DW$CU, DW_AT_name("SSHRSA.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc"), DW_AT_symbol_name("_malloc")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
	.dwendtag DW$5


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("free"), DW_AT_symbol_name("_free")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$7


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("memmove"), DW_AT_symbol_name("_memmove")
	.dwattr DW$9, DW_AT_type(*DW$T$3)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
	.dwendtag DW$9


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$13, DW_AT_type(*DW$T$3)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
	.dwendtag DW$13


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("safefree"), DW_AT_symbol_name("_safefree")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$17


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Init"), DW_AT_symbol_name("_SHA512_Init")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$19


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Bytes"), DW_AT_symbol_name("_SHA512_Bytes")
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$21


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Final"), DW_AT_symbol_name("_SHA512_Final")
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
	.dwendtag DW$25


DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("random_byte"), DW_AT_symbol_name("_random_byte")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("copybn"), DW_AT_symbol_name("_copybn")
	.dwattr DW$29, DW_AT_type(*DW$T$26)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$29


DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("freebn"), DW_AT_symbol_name("_freebn")
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$31


DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("modpow"), DW_AT_symbol_name("_modpow")
	.dwattr DW$33, DW_AT_type(*DW$T$26)
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$33


DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("modmul"), DW_AT_symbol_name("_modmul")
	.dwattr DW$37, DW_AT_type(*DW$T$26)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$37


DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_from_bytes"), DW_AT_symbol_name("_bignum_from_bytes")
	.dwattr DW$41, DW_AT_type(*DW$T$26)
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$41


DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_bitcount"), DW_AT_symbol_name("_bignum_bitcount")
	.dwattr DW$44, DW_AT_type(*DW$T$10)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$44


DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_byte"), DW_AT_symbol_name("_bignum_byte")
	.dwattr DW$46, DW_AT_type(*DW$T$10)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$46


DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_set_bit"), DW_AT_symbol_name("_bignum_set_bit")
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$49


DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("modinv"), DW_AT_symbol_name("_modinv")
	.dwattr DW$53, DW_AT_type(*DW$T$26)
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$53


DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_cmp"), DW_AT_symbol_name("_bignum_cmp")
	.dwattr DW$56, DW_AT_type(*DW$T$10)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$56

DW$59	.dwtag  DW_TAG_variable, DW_AT_name("Zero"), DW_AT_symbol_name("_Zero")
	.dwattr DW$59, DW_AT_type(*DW$T$26)
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)
;	E:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI2162 C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI2164 
	.sect	".text"
	.global	_rsaencrypt

DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("rsaencrypt"), DW_AT_symbol_name("_rsaencrypt")
	.dwattr DW$60, DW_AT_low_pc(_rsaencrypt)
	.dwattr DW$60, DW_AT_high_pc(0x00)
	.dwattr DW$60, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$60, DW_AT_begin_line(0x0d)
	.dwattr DW$60, DW_AT_begin_column(0x05)
	.dwattr DW$60, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$60, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",14,1

;******************************************************************************
;* FUNCTION NAME: _rsaencrypt                                                 *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                  *
;******************************************************************************
_rsaencrypt:
;** --------------------------------------------------------------------------*
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$61, DW_AT_type(*DW$T$38)
	.dwattr DW$61, DW_AT_location[DW_OP_reg4]
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length"), DW_AT_symbol_name("_length")
	.dwattr DW$62, DW_AT_type(*DW$T$10)
	.dwattr DW$62, DW_AT_location[DW_OP_reg20]
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$63, DW_AT_type(*DW$T$36)
	.dwattr DW$63, DW_AT_location[DW_OP_reg6]
;** 20	-----------------------    C$2 = (*key).bytes;
;** 20	-----------------------    if ( C$2 >= length+4 ) goto g3;
;** 21	-----------------------    return 0;

           STW     .D2T1   A14,*SP--(32)     ; |14| 
||         ADD     .L2     4,B4,B5           ; |20| 
||         ZERO    .L1     A14               ; |24| 

           STDW    .D2T1   A13:A12,*+SP(16)  ; |14| 
||         MV      .L1     A6,A12            ; |14| 
||         MV      .S1X    B4,A13            ; |14| 

           LDW     .D1T1   *+A12(4),A3       ; |20| 
||         STDW    .D2T2   B11:B10,*+SP(24)  ; |14| 
||         MV      .L1X    B4,A6             ; |14| 
||         MVK     .L2     2,B10             ; |24| 
||         MV      .S2     B3,B11            ; |14| 

           NOP             1
           STDW    .D2T1   A11:A10,*+SP(8)   ; |14| 
           MV      .L1     A4,A10            ; |14| 
           ZERO    .S1     A11               ; |24| 

           ZERO    .S1     A3                ; |21| 
||         ADD     .L1     A4,A3,A5          ; |23| 
||         CMPLT   .L2X    A3,B5,B0          ; |20| 

           MV      .L2X    A4,B4             ; |14| 
||         SUB     .L1X    A5,B4,A5          ; |23| 
|| [ B0]   B       .S1     L6                ; |21| 

   [!B0]   CALL    .S1     _memmove          ; |23| 
||         MV      .L1     A5,A4             ; |23| 

           NOP             4
           ; BRANCHCC OCCURS {L6}            ; |21| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 23	-----------------------    memmove(C$2+data-length, (const void * const)data, (unsigned)length);
;** 24	-----------------------    *data = K$13 = 0;
;** 24	-----------------------    data[1] = 2;
;** 26	-----------------------    v$1 = (*key).bytes;
;** 26	-----------------------    if ( v$1-length < 4 ) goto g8;
;** 26	-----------------------    i = 2;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;**	-----------------------g5:
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDKPC  .S2     RL0,B3,0          ; |23| 
RL0:       ; CALL OCCURS {_memmove}          ; |23| 
;** --------------------------------------------------------------------------*
           STB     .D1T1   A11,*A10          ; |24| 
           STB     .D1T2   B10,*+A10(1)      ; |24| 
           LDW     .D1T1   *+A12(4),A3       ; |26| 
           NOP             3
           MVK     .L1     0x2,A11           ; |26| 
           SUB     .L1     A3,A13,A4         ; |26| 
           CMPLT   .L1     A4,4,A0           ; |26| 
   [ A0]   BNOP    .S1     L3,5              ; |26| 
           ; BRANCHCC OCCURS {L3}            ; |26| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L1
;** --------------------------------------------------------------------------*
L1:    
DW$L$_rsaencrypt$4$B:
           CALL    .S1     _random_byte      ; |28| 
	.dwpsn	"SSHRSA.C",27,0
           NOP             4
DW$L$_rsaencrypt$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L2:    
DW$L$_rsaencrypt$5$B:
;**	-----------------------g6:
;** 28	-----------------------    s$0 = (unsigned char)random_byte();
;** 29	-----------------------    data[i] = s$0;
;** 29	-----------------------    if ( !s$0 ) goto g6;
;** 26	-----------------------    v$1 = (*key).bytes;
           ADDKPC  .S2     RL1,B3,0          ; |28| 
RL1:       ; CALL OCCURS {_random_byte}      ; |28| 
DW$L$_rsaencrypt$5$E:
;** --------------------------------------------------------------------------*
DW$L$_rsaencrypt$6$B:

           EXTU    .S1     A4,24,24,A0       ; |28| 
||         STB     .D1T1   A4,*+A11[A10]     ; |29| 

   [!A0]   B       .S1     L2                ; |29| 
|| [ A0]   LDW     .D1T1   *+A12(4),A3       ; |26| 

   [!A0]   CALL    .S1     _random_byte      ; |28| 
           NOP             3
	.dwpsn	"SSHRSA.C",29,0
   [ A0]   SUB     .L1     A3,A13,A4         ; |26| 
           ; BRANCHCC OCCURS {L2}            ; |29| 
DW$L$_rsaencrypt$6$E:
;** --------------------------------------------------------------------------*
DW$L$_rsaencrypt$7$B:
;** 26	-----------------------    if ( v$1-length-1 > (++i) ) goto g5;

           ADD     .L1     1,A11,A11         ; |26| 
||         SUB     .S1     A4,1,A4           ; |26| 

           CMPGT   .L1     A4,A11,A0         ; |26| 
   [ A0]   BNOP    .S1     L1,5              ; |26| 
           ; BRANCHCC OCCURS {L1}            ; |26| 
DW$L$_rsaencrypt$7$E:
;** --------------------------------------------------------------------------*
L3:    
;**	-----------------------g8:
;** 31	-----------------------    data[v$1-length-1] = K$13;
;** 33	-----------------------    b1 = bignum_from_bytes(data, (*key).bytes);
;** 35	-----------------------    b2 = modpow(b1, (*key).exponent, (*key).modulus);
;** 37	-----------------------    p = data;
;** 38	-----------------------    if ( !(i = (*key).bytes) ) goto g11;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           SUB     .L1     A3,A13,A3         ; |31| 
           ADD     .L1     A10,A3,A3         ; |31| 

           CALL    .S1     _bignum_from_bytes ; |33| 
||         STB     .D1T1   A14,*-A3(1)       ; |31| 

           LDW     .D1T2   *+A12(4),B4       ; |33| 
           ADDKPC  .S2     RL2,B3,2          ; |33| 
           MV      .L1     A10,A4            ; |33| 
RL2:       ; CALL OCCURS {_bignum_from_bytes}  ; |33| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _modpow           ; |35| 
||         LDW     .D1T1   *+A12(8),A6       ; |35| 

           LDW     .D1T2   *+A12(12),B4      ; |35| 
           ADDKPC  .S2     RL3,B3,2          ; |35| 
           MV      .L1     A4,A11            ; |33| 
RL3:       ; CALL OCCURS {_modpow}           ; |35| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A12(4),B0       ; |38| 
           NOP             3
           MV      .L1     A4,A12            ; |35| 
   [!B0]   BNOP    .S1     L5,5              ; |38| 
           ; BRANCHCC OCCURS {L5}            ; |38| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_byte      ; |39| 
	.dwpsn	"SSHRSA.C",38,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L4:    
DW$L$_rsaencrypt$12$B:
;**	-----------------------g10:
;** 39	-----------------------    C$1 = i-1;
;** 39	-----------------------    *p++ = bignum_byte(b2, C$1);
;** 39	-----------------------    if ( i = C$1 ) goto g10;
           SUB     .L2     B0,1,B10          ; |39| 

           SUB     .D2     B0,1,B4           ; |39| 
||         ADDKPC  .S2     RL4,B3,0          ; |39| 
||         MV      .L1     A12,A4            ; |39| 

RL4:       ; CALL OCCURS {_bignum_byte}      ; |39| 
DW$L$_rsaencrypt$12$E:
;** --------------------------------------------------------------------------*
DW$L$_rsaencrypt$13$B:

           MV      .L2     B10,B0            ; |39| 
||         STB     .D1T1   A4,*A10++         ; |39| 

   [ B0]   BNOP    .S1     L4,1              ; |39| 
   [ B0]   CALL    .S1     _bignum_byte      ; |39| 
	.dwpsn	"SSHRSA.C",40,0
           NOP             3
           ; BRANCHCC OCCURS {L4}            ; |39| 
DW$L$_rsaencrypt$13$E:
;** --------------------------------------------------------------------------*
L5:    
;**	-----------------------g11:
;** 42	-----------------------    freebn(b1);
;** 43	-----------------------    freebn(b2);
;** 45	-----------------------    return 1;
           CALL    .S1     _freebn           ; |42| 
           ADDKPC  .S2     RL5,B3,3          ; |42| 
           MV      .L1     A11,A4            ; |42| 
RL5:       ; CALL OCCURS {_freebn}           ; |42| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _freebn           ; |43| 
           ADDKPC  .S2     RL6,B3,3          ; |43| 
           MV      .L1     A12,A4            ; |43| 
RL6:       ; CALL OCCURS {_freebn}           ; |43| 
;** --------------------------------------------------------------------------*
           MVK     .L1     0x1,A3            ; |45| 
;** --------------------------------------------------------------------------*
L6:    
           LDDW    .D2T1   *+SP(8),A11:A10   ; |46| 

           LDDW    .D2T1   *+SP(16),A13:A12  ; |46| 
||         MV      .L2     B11,B3            ; |46| 

           RET     .S2     B3                ; |46| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |46| 

           LDW     .D2T1   *++SP(32),A14     ; |46| 
           NOP             3
	.dwpsn	"SSHRSA.C",46,1
           MV      .L1     A3,A4             ; |45| 
           ; BRANCH OCCURS {B3}              ; |46| 

DW$64	.dwtag  DW_TAG_loop
	.dwattr DW$64, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L4:1:1297920394")
	.dwattr DW$64, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$64, DW_AT_begin_line(0x26)
	.dwattr DW$64, DW_AT_end_line(0x28)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$_rsaencrypt$12$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$_rsaencrypt$12$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_rsaencrypt$13$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_rsaencrypt$13$E)
	.dwendtag DW$64


DW$67	.dwtag  DW_TAG_loop
	.dwattr DW$67, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L1:1:1297920394")
	.dwattr DW$67, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$67, DW_AT_begin_line(0x1a)
	.dwattr DW$67, DW_AT_end_line(0x1c)
DW$68	.dwtag  DW_TAG_loop_range
	.dwattr DW$68, DW_AT_low_pc(DW$L$_rsaencrypt$4$B)
	.dwattr DW$68, DW_AT_high_pc(DW$L$_rsaencrypt$4$E)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$_rsaencrypt$7$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$_rsaencrypt$7$E)

DW$70	.dwtag  DW_TAG_loop
	.dwattr DW$70, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L2:2:1297920394")
	.dwattr DW$70, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$70, DW_AT_begin_line(0x1b)
	.dwattr DW$70, DW_AT_end_line(0x1d)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_rsaencrypt$5$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_rsaencrypt$5$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_rsaencrypt$6$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_rsaencrypt$6$E)
	.dwendtag DW$70

	.dwendtag DW$67

	.dwattr DW$60, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$60, DW_AT_end_line(0x2e)
	.dwattr DW$60, DW_AT_end_column(0x01)
	.dwendtag DW$60

	.sect	".text"

DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("sha512_mpint"), DW_AT_symbol_name("_sha512_mpint")
	.dwattr DW$73, DW_AT_low_pc(_sha512_mpint)
	.dwattr DW$73, DW_AT_high_pc(0x00)
	.dwattr DW$73, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$73, DW_AT_begin_line(0x30)
	.dwattr DW$73, DW_AT_begin_column(0x0d)
	.dwattr DW$73, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$73, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",49,1

;******************************************************************************
;* FUNCTION NAME: _sha512_mpint                                               *
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
;*   Local Frame Size  : 0 Args + 8 Auto + 20 Save = 28 byte                  *
;******************************************************************************
_sha512_mpint:
;** --------------------------------------------------------------------------*
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$74, DW_AT_type(*DW$T$66)
	.dwattr DW$74, DW_AT_location[DW_OP_reg4]
DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$75, DW_AT_type(*DW$T$26)
	.dwattr DW$75, DW_AT_location[DW_OP_reg20]
;** 52	-----------------------    len = (bignum_bitcount(b)+8)/8;
;** 53	-----------------------    lenbuf[0] = len>>24;
;** 53	-----------------------    lenbuf[1] = len>>16;
;** 53	-----------------------    lenbuf[2] = len>>8;
;** 53	-----------------------    lenbuf[3] = len;
;** 54	-----------------------    SHA512_Bytes(s, &lenbuf, 4);
;** 55	-----------------------    if ( (--len) < 0 ) goto g4;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _bignum_bitcount  ; |52| 
           NOP             2
           STW     .D2T1   A12,*SP--(32)     ; |49| 

           STDW    .D2T2   B11:B10,*+SP(24)  ; |49| 
||         MV      .L1X    B4,A12            ; |49| 

           ADDKPC  .S2     RL7,B3,0          ; |52| 
||         MV      .L1X    B4,A4             ; |49| 
||         MV      .S1     A4,A11            ; |49| 
||         STDW    .D2T1   A11:A10,*+SP(16)  ; |49| 
||         MV      .L2     B3,B11            ; |49| 

RL7:       ; CALL OCCURS {_bignum_bitcount}  ; |52| 
;** --------------------------------------------------------------------------*
           ADD     .L1     8,A4,A3           ; |52| 
           SHR     .S1     A3,2,A4           ; |52| 
           SHRU    .S1     A4,29,A4          ; |52| 
           ADD     .L1     A4,A3,A3          ; |52| 

           CALL    .S2     _SHA512_Bytes     ; |54| 
||         SHR     .S1     A3,3,A10          ; |52| 

           SHR     .S1     A10,24,A3         ; |53| 

           STB     .D2T1   A3,*+SP(8)        ; |53| 
||         SHR     .S2X    A10,16,B4         ; |53| 

           STB     .D2T2   B4,*+SP(9)        ; |53| 

           STB     .D2T1   A10,*+SP(11)      ; |53| 
||         SHR     .S1     A10,8,A3          ; |53| 

           ADDKPC  .S2     RL8,B3,0          ; |54| 
||         STB     .D2T1   A3,*+SP(10)       ; |53| 
||         ADD     .L2     8,SP,B4           ; |54| 
||         MV      .L1     A11,A4            ; |54| 
||         MVK     .S1     0x4,A6            ; |54| 

RL8:       ; CALL OCCURS {_SHA512_Bytes}     ; |54| 
;** --------------------------------------------------------------------------*
           CMPLT   .L1     A10,1,A0          ; |55| 
   [ A0]   BNOP    .S1     L8,4              ; |55| 
           SUB     .L2X    A10,1,B10         ; |55| 
           ; BRANCHCC OCCURS {L8}            ; |55| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_byte      ; |56| 
	.dwpsn	"SSHRSA.C",55,0
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L7:    
DW$L$_sha512_mpint$5$B:
;**	-----------------------g3:
;** 56	-----------------------    lenbuf[0] = bignum_byte(b, len);
;** 57	-----------------------    SHA512_Bytes(s, &lenbuf, 1);
;** 55	-----------------------    if ( (--len) >= 0 ) goto g3;

           MV      .L2     B10,B4            ; |56| 
||         MV      .L1     A12,A4            ; |56| 
||         ADDKPC  .S2     RL9,B3,0          ; |56| 

RL9:       ; CALL OCCURS {_bignum_byte}      ; |56| 
DW$L$_sha512_mpint$5$E:
;** --------------------------------------------------------------------------*
DW$L$_sha512_mpint$6$B:
           CALL    .S1     _SHA512_Bytes     ; |57| 
           ADDKPC  .S2     RL10,B3,0         ; |57| 
           MVK     .S1     0x1,A6            ; |57| 
           ADD     .L2     8,SP,B4           ; |57| 
           STB     .D2T1   A4,*+SP(8)        ; |56| 
           MV      .L1     A11,A4            ; |57| 
RL10:      ; CALL OCCURS {_SHA512_Bytes}     ; |57| 
DW$L$_sha512_mpint$6$E:
;** --------------------------------------------------------------------------*
DW$L$_sha512_mpint$7$B:

           CMPLT   .L2     B10,1,B0          ; |55| 
||         SUB     .S2     B10,1,B10         ; |55| 

   [!B0]   B       .S1     L7                ; |55| 
   [!B0]   CALL    .S1     _bignum_byte      ; |56| 
	.dwpsn	"SSHRSA.C",58,0
           NOP             4
           ; BRANCHCC OCCURS {L7}            ; |55| 
DW$L$_sha512_mpint$7$E:
;** --------------------------------------------------------------------------*
L8:    
;**	-----------------------g4:
;** 59	-----------------------    memset(&lenbuf, 0, 4u);
;** 59	-----------------------    return;
           CALL    .S1     _memset           ; |59| 
           ADDKPC  .S2     RL11,B3,1         ; |59| 
           MVK     .L1     0x4,A6            ; |59| 
           ZERO    .L2     B4                ; |59| 
           ADD     .S1X    8,SP,A4           ; |59| 
RL11:      ; CALL OCCURS {_memset}           ; |59| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(16),A11:A10  ; |60| 
||         MV      .L2     B11,B3            ; |60| 

           RET     .S2     B3                ; |60| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |60| 

           LDW     .D2T1   *++SP(32),A12     ; |60| 
	.dwpsn	"SSHRSA.C",60,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |60| 

DW$76	.dwtag  DW_TAG_loop
	.dwattr DW$76, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L7:1:1297920394")
	.dwattr DW$76, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$76, DW_AT_begin_line(0x37)
	.dwattr DW$76, DW_AT_end_line(0x3a)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_sha512_mpint$5$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_sha512_mpint$5$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_sha512_mpint$6$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_sha512_mpint$6$E)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_sha512_mpint$7$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_sha512_mpint$7$E)
	.dwendtag DW$76

	.dwattr DW$73, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$73, DW_AT_end_line(0x3c)
	.dwattr DW$73, DW_AT_end_column(0x01)
	.dwendtag DW$73

	.sect	".text"

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_privkey_op"), DW_AT_symbol_name("_rsa_privkey_op")
	.dwattr DW$80, DW_AT_low_pc(_rsa_privkey_op)
	.dwattr DW$80, DW_AT_high_pc(0x00)
	.dwattr DW$80, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$80, DW_AT_begin_line(0x43)
	.dwattr DW$80, DW_AT_begin_column(0x0f)
	.dwattr DW$80, DW_AT_frame_base[DW_OP_breg31 400]
	.dwattr DW$80, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",68,1

;******************************************************************************
;* FUNCTION NAME: _rsa_privkey_op                                             *
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
;*   Local Frame Size  : 0 Args + 352 Auto + 44 Save = 396 byte               *
;******************************************************************************
_rsa_privkey_op:
;** --------------------------------------------------------------------------*
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input"), DW_AT_symbol_name("_input")
	.dwattr DW$81, DW_AT_type(*DW$T$26)
	.dwattr DW$81, DW_AT_location[DW_OP_reg4]
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$82, DW_AT_type(*DW$T$36)
	.dwattr DW$82, DW_AT_location[DW_OP_reg20]
;** 75	-----------------------    digestused = 64;
;** 75	-----------------------    K$4 = 64;
;** 76	-----------------------    hashseq = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)

           ADDK    .S2     -400,SP           ; |68| 
||         MV      .L1X    SP,A31            ; |68| 

           STW     .D2T2   B12,*+SP(392)
           STW     .D2T2   B13,*+SP(396)
           STW     .D2T1   A15,*+SP(400)

           STDW    .D1T1   A11:A10,*-A31(40)
||         STW     .D2T2   B10,*+SP(384)

           STDW    .D1T1   A13:A12,*-A31(32)
||         STW     .D2T2   B11,*+SP(388)

           CALL    .S1     _copybn           ; |95| 
||         STW     .D1T1   A14,*-A31(24)
||         MV      .L2     B4,B12            ; |68| 
||         STW     .D2T2   B3,*+SP(380)

           LDW     .D2T1   *+B12(8),A4       ; |95| 
||         MV      .L1     A4,A14            ; |68| 

           MVK     .S2     0x40,B13          ; |75| 
           ZERO    .L1     A12               ; |76| 
	.dwpsn	"SSHRSA.C",93,0
           MVK     .S2     0x40,B10          ; |75| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L9
;** --------------------------------------------------------------------------*
L9:    
DW$L$_rsa_privkey_op$2$B:
;**	-----------------------g2:
;** 95	-----------------------    random = copybn((*key).modulus);
;** 101	-----------------------    if ( !(bits = bignum_bitcount(random)) ) goto g9;
           ADDKPC  .S2     RL12,B3,0         ; |95| 
RL12:      ; CALL OCCURS {_copybn}           ; |95| 
DW$L$_rsa_privkey_op$2$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$3$B:
           CALL    .S1     _bignum_bitcount  ; |101| 
           ADDKPC  .S2     RL13,B3,3         ; |101| 
           MV      .L1     A4,A13            ; |95| 
RL13:      ; CALL OCCURS {_bignum_bitcount}  ; |101| 
DW$L$_rsa_privkey_op$3$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$4$B:

           MV      .L1     A4,A0             ; |101| 
||         MV      .S1     A4,A15            ; |101| 

   [!A0]   BNOP    .S1     L13,4             ; |101| 
|| [ A0]   ZERO    .L2     B11               ; |103| 

   [ A0]   CMPGT   .L2     B11,0,B0          ; |105| 
           ; BRANCHCC OCCURS {L13}           ; |101| 
DW$L$_rsa_privkey_op$4$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$5$B:
;** 102	-----------------------    byte = 0;
;** 103	-----------------------    bitsleft = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MV      .S2     B0,B1             ; guard predicate rewrite
|| [ B0]   B       .S1     L12               ; |105| 
||         MV      .D2     B0,B2             ; |105| branch predicate copy
|| [!B0]   CMPLTU  .L2     B10,B13,B0        ; |111| 
||         ZERO    .L1     A11               ; |102| 

	.dwpsn	"SSHRSA.C",104,0
   [ B1]   ZERO    .L2     B0                ; |111| nullify predicate
DW$L$_rsa_privkey_op$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L10:    
DW$L$_rsa_privkey_op$6$B:
;**	-----------------------g4:
;** 105	-----------------------    if ( bitsleft > 0 ) goto g8;
   [ B0]   B       .S1     L11               ; |111| 
   [ B2]   CALL    .S1     _bignum_set_bit   ; |137| 
           NOP             2
           ; BRANCHCC OCCURS {L12}           ; |105| 
DW$L$_rsa_privkey_op$6$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$7$B:
;** 111	-----------------------    if ( (unsigned)digestused < (unsigned)K$4 ) goto g7;

   [ B0]   ADD     .L2     B10,SP,B4         ; |132| 
|| [ B0]   MVK     .S2     288,B5            ; |132| 

   [!B0]   CALL    .S1     _SHA512_Init      ; |114| 
           ; BRANCHCC OCCURS {L11}           ; |111| 
DW$L$_rsa_privkey_op$7$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$8$B:
;** 114	-----------------------    seqbuf[0] = hashseq>>24;
;** 114	-----------------------    seqbuf[1] = hashseq>>16;
;** 114	-----------------------    seqbuf[2] = hashseq>>8;
;** 114	-----------------------    seqbuf[3] = hashseq;
;** 114	-----------------------    SHA512_Init(&ss);
;** 115	-----------------------    SHA512_Bytes(&ss, (const void *)"RSA deterministic blinding", 26);
;** 116	-----------------------    SHA512_Bytes(&ss, &seqbuf, 4);
;** 117	-----------------------    sha512_mpint(&ss, (*key).private_exponent);
;** 118	-----------------------    SHA512_Final(&ss, &digest512);
;** 119	-----------------------    ++hashseq;
;** 125	-----------------------    SHA512_Init(&ss);
;** 126	-----------------------    SHA512_Bytes(&ss, &digest512, K$4);
;** 127	-----------------------    sha512_mpint(&ss, input);
;** 128	-----------------------    SHA512_Final(&ss, &digest512);
;** 130	-----------------------    digestused = 0;
           SHR     .S1     A12,16,A3         ; |114| 

           STB     .D2T1   A3,*+SP(353)      ; |114| 
||         SHR     .S1     A12,8,A3          ; |114| 

           STB     .D2T1   A3,*+SP(354)      ; |114| 

           SHR     .S2X    A12,24,B4         ; |114| 
||         STB     .D2T1   A12,*+SP(355)     ; |114| 

           STB     .D2T2   B4,*+SP(352)      ; |114| 
||         ADD     .L1X    8,SP,A4           ; |114| 
||         ADDKPC  .S2     RL14,B3,0         ; |114| 

RL14:      ; CALL OCCURS {_SHA512_Init}      ; |114| 
DW$L$_rsa_privkey_op$8$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$9$B:
           CALL    .S1     _SHA512_Bytes     ; |115| 
           MVKL    .S2     SL1+0,B4          ; |115| 
           MVKH    .S2     SL1+0,B4          ; |115| 
           ADDKPC  .S2     RL15,B3,0         ; |115| 
           MVK     .S1     0x1a,A6           ; |115| 
           ADD     .L1X    8,SP,A4           ; |115| 
RL15:      ; CALL OCCURS {_SHA512_Bytes}     ; |115| 
           CALL    .S1     _SHA512_Bytes     ; |116| 
           MVK     .S1     352,A3            ; |116| 
           ADDKPC  .S2     RL16,B3,0         ; |116| 
           ADD     .L2X    A3,SP,B4          ; |116| 
           MVK     .L1     0x4,A6            ; |116| 
           ADD     .S1X    8,SP,A4           ; |116| 
RL16:      ; CALL OCCURS {_SHA512_Bytes}     ; |116| 
           CALL    .S1     _sha512_mpint     ; |117| 
           LDW     .D2T2   *+B12(16),B4      ; |117| 
           ADDKPC  .S2     RL17,B3,2         ; |117| 
           ADD     .L1X    8,SP,A4           ; |117| 
RL17:      ; CALL OCCURS {_sha512_mpint}     ; |117| 
           CALL    .S1     _SHA512_Final     ; |118| 
           MVK     .S2     288,B4            ; |118| 
           ADD     .L1X    8,SP,A4           ; |118| 
           ADD     .L2     B4,SP,B4          ; |118| 
           ADDKPC  .S2     RL18,B3,1         ; |118| 
RL18:      ; CALL OCCURS {_SHA512_Final}     ; |118| 
           CALL    .S1     _SHA512_Init      ; |125| 
           ADD     .L1X    8,SP,A4           ; |125| 
           ADDKPC  .S2     RL19,B3,3         ; |125| 
RL19:      ; CALL OCCURS {_SHA512_Init}      ; |125| 
           CALL    .S1     _SHA512_Bytes     ; |126| 
           MVK     .S1     288,A3            ; |126| 
           ADD     .L1X    8,SP,A4           ; |126| 
           MV      .L1X    B13,A6            ; |126| 
           ADD     .L2X    A3,SP,B4          ; |126| 
           ADDKPC  .S2     RL20,B3,0         ; |126| 
RL20:      ; CALL OCCURS {_SHA512_Bytes}     ; |126| 
           CALL    .S1     _sha512_mpint     ; |127| 
           ADD     .L1X    8,SP,A4           ; |127| 
           MV      .L2X    A14,B4            ; |127| 
           ADDKPC  .S2     RL21,B3,2         ; |127| 
RL21:      ; CALL OCCURS {_sha512_mpint}     ; |127| 
           CALL    .S1     _SHA512_Final     ; |128| 
           MVK     .S2     288,B4            ; |128| 
           ADD     .L1X    8,SP,A4           ; |128| 
           ADD     .L2     B4,SP,B4          ; |128| 
           ADDKPC  .S2     RL22,B3,1         ; |128| 
RL22:      ; CALL OCCURS {_SHA512_Final}     ; |128| 
DW$L$_rsa_privkey_op$9$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$10$B:
           ZERO    .L2     B10               ; |130| 

           ADD     .L2     B10,SP,B4         ; |132| 
||         ADD     .L1     1,A12,A12         ; |119| 
||         MVK     .S2     288,B5            ; |132| 

DW$L$_rsa_privkey_op$10$E:
;** --------------------------------------------------------------------------*
L11:    
DW$L$_rsa_privkey_op$11$B:
;**	-----------------------g7:
;** 132	-----------------------    byte = digest512[digestused];
;** 132	-----------------------    ++digestused;
;** 106	-----------------------    bitsleft = 8;

           LDBU    .D2T1   *+B5[B4],A11      ; |132| 
||         CALL    .S1     _bignum_set_bit   ; |137| 
||         MVK     .L2     0x8,B11           ; |106| 
||         ADD     .S2     1,B10,B10         ; |132| 

           NOP             2
DW$L$_rsa_privkey_op$11$E:
;** --------------------------------------------------------------------------*
L12:    
DW$L$_rsa_privkey_op$12$B:
;**	-----------------------g8:
;** 134	-----------------------    v = byte&1;
;** 135	-----------------------    byte >>= 1;
;** 136	-----------------------    --bitsleft;
;** 137	-----------------------    bignum_set_bit(random, --bits, v);
;** 138	-----------------------    if ( bits ) goto g4;
           MV      .L1     A13,A4            ; |137| 
           SUB     .L1     A15,1,A10         ; |137| 

           SUB     .L2X    A15,1,B4          ; |137| 
||         AND     .D1     1,A11,A6          ; |134| 
||         ADDKPC  .S2     RL23,B3,0         ; |137| 
||         SUB     .S1     A15,1,A15         ; |137| 

RL23:      ; CALL OCCURS {_bignum_set_bit}   ; |137| 
DW$L$_rsa_privkey_op$12$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$13$B:

           MV      .L1     A10,A0            ; |135| 
||         SUB     .L2     B11,1,B11         ; |136| 
||         SHR     .S1     A11,1,A11         ; |135| 

   [ A0]   BNOP    .S1     L10,2             ; |138| 
||         CMPGT   .L2     B11,0,B0          ; |105| 

           MV      .L2     B0,B1             ; guard predicate rewrite
|| [!A0]   ZERO    .S2     B0                ; nullify predicate
|| [ A0]   MV      .D2     B0,B2             ; |105| branch predicate copy

   [ B0]   B       .S1     L12               ; |105| 
|| [!B0]   CMPLTU  .L2     B10,B13,B0        ; |111| 

	.dwpsn	"SSHRSA.C",138,0
   [ B1]   ZERO    .L2     B0                ; |111| nullify predicate
           ; BRANCHCC OCCURS {L10}           ; |138| 
DW$L$_rsa_privkey_op$13$E:
;** --------------------------------------------------------------------------*
L13:    
DW$L$_rsa_privkey_op$14$B:
;**	-----------------------g9:
;** 144	-----------------------    if ( bignum_cmp(random, Zero) <= 0 ) goto g12;
           MVKL    .S1     _Zero,A3          ; |144| 

           CALL    .S2     _bignum_cmp       ; |144| 
||         MVKH    .S1     _Zero,A3          ; |144| 

           LDW     .D1T2   *A3,B4            ; |144| 
           ADDKPC  .S2     RL24,B3,2         ; |144| 
           MV      .L1     A13,A4            ; |144| 
RL24:      ; CALL OCCURS {_bignum_cmp}       ; |144| 
DW$L$_rsa_privkey_op$14$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$15$B:
           CMPGT   .L1     A4,0,A0           ; |144| 

   [ A0]   LDW     .D2T2   *+B12(8),B4       ; |144| 
|| [!A0]   B       .S1     L15               ; |144| 

   [ A0]   CALL    .S1     _bignum_cmp       ; |144| 
   [!A0]   CALL    .S1     _freebn           ; |146| 
           NOP             3
           ; BRANCHCC OCCURS {L15}           ; |144| 
DW$L$_rsa_privkey_op$15$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$16$B:
;** 144	-----------------------    if ( bignum_cmp(random, (*key).modulus) >= 0 ) goto g12;
;** 167	-----------------------    random_encrypted = modpow(random, (*key).exponent, (*key).modulus);

           MV      .L1     A13,A4            ; |144| 
||         ADDKPC  .S2     RL25,B3,0         ; |144| 

RL25:      ; CALL OCCURS {_bignum_cmp}       ; |144| 
DW$L$_rsa_privkey_op$16$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$17$B:
           CMPLT   .L1     A4,0,A0           ; |144| 

   [!A0]   B       .S1     L14               ; |144| 
|| [ A0]   LDW     .D2T2   *+B12(12),B4      ; |167| 

   [ A0]   CALL    .S1     _modpow           ; |167| 
|| [ A0]   LDW     .D2T1   *+B12(8),A6       ; |167| 

           NOP             4
           ; BRANCHCC OCCURS {L14}           ; |144| 
DW$L$_rsa_privkey_op$17$E:
;** --------------------------------------------------------------------------*
;** 168	-----------------------    random_inverse = modinv(random, (*key).modulus);
;** 169	-----------------------    input_blinded = modmul(input, random_encrypted, (*key).modulus);
;** 170	-----------------------    ret_blinded = modpow(input_blinded, (*key).private_exponent, (*key).modulus);
;** 171	-----------------------    ret = modmul(ret_blinded, random_inverse, (*key).modulus);
;** 173	-----------------------    freebn(ret_blinded);
;** 174	-----------------------    freebn(input_blinded);
;** 175	-----------------------    freebn(random_inverse);
;** 176	-----------------------    freebn(random_encrypted);
;** 177	-----------------------    freebn(random);
;** 179	-----------------------    return ret;

           MV      .L1     A13,A4            ; |167| 
||         ADDKPC  .S2     RL26,B3,0         ; |167| 

RL26:      ; CALL OCCURS {_modpow}           ; |167| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _modinv           ; |168| 
           LDW     .D2T2   *+B12(8),B4       ; |168| 
           ADDKPC  .S2     RL27,B3,1         ; |168| 
           MV      .S1     A4,A10            ; |167| 
           MV      .L1     A13,A4            ; |168| 
RL27:      ; CALL OCCURS {_modinv}           ; |168| 
           CALL    .S1     _modmul           ; |169| 
           LDW     .D2T1   *+B12(8),A6       ; |169| 
           MV      .S1     A4,A11            ; |168| 
           MV      .L2X    A10,B4            ; |169| 
           ADDKPC  .S2     RL28,B3,0         ; |169| 
           MV      .L1     A14,A4            ; |169| 
RL28:      ; CALL OCCURS {_modmul}           ; |169| 

           LDW     .D2T1   *+B12(8),A6       ; |170| 
||         CALL    .S1     _modpow           ; |170| 

           LDW     .D2T2   *+B12(16),B4      ; |170| 
           MV      .L1     A4,A12            ; |169| 
           ADDKPC  .S2     RL29,B3,2         ; |170| 
RL29:      ; CALL OCCURS {_modpow}           ; |170| 
           CALL    .S1     _modmul           ; |171| 
           LDW     .D2T1   *+B12(8),A6       ; |171| 
           MV      .L2X    A11,B4            ; |171| 
           MV      .L1     A4,A14            ; |170| 
           ADDKPC  .S2     RL30,B3,1         ; |171| 
RL30:      ; CALL OCCURS {_modmul}           ; |171| 
           CALL    .S1     _freebn           ; |173| 
           MV      .S1     A4,A15            ; |171| 
           ADDKPC  .S2     RL31,B3,2         ; |173| 
           MV      .L1     A14,A4            ; |173| 
RL31:      ; CALL OCCURS {_freebn}           ; |173| 
           CALL    .S1     _freebn           ; |174| 
           ADDKPC  .S2     RL32,B3,3         ; |174| 
           MV      .L1     A12,A4            ; |174| 
RL32:      ; CALL OCCURS {_freebn}           ; |174| 
           CALL    .S1     _freebn           ; |175| 
           MV      .L1     A11,A4            ; |175| 
           ADDKPC  .S2     RL33,B3,3         ; |175| 
RL33:      ; CALL OCCURS {_freebn}           ; |175| 
           CALL    .S1     _freebn           ; |176| 
           MV      .L1     A10,A4            ; |176| 
           ADDKPC  .S2     RL34,B3,3         ; |176| 
RL34:      ; CALL OCCURS {_freebn}           ; |176| 
           CALL    .S1     _freebn           ; |177| 
           MV      .L1     A13,A4            ; |177| 
           ADDKPC  .S2     RL35,B3,3         ; |177| 
RL35:      ; CALL OCCURS {_freebn}           ; |177| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(380),B3      ; |180| 
           LDW     .D2T1   *+SP(360),A10     ; |180| 
           LDW     .D2T1   *+SP(372),A13     ; |180| 
           LDW     .D2T1   *+SP(368),A12     ; |180| 
           LDW     .D2T1   *+SP(376),A14     ; |180| 
           LDW     .D2T2   *+SP(388),B11     ; |180| 
           LDW     .D2T2   *+SP(384),B10     ; |180| 
           LDW     .D2T2   *+SP(396),B13     ; |180| 
           LDW     .D2T2   *+SP(392),B12     ; |180| 

           RET     .S2     B3                ; |180| 
||         LDW     .D2T1   *+SP(364),A11     ; |180| 

           LDW     .D2T1   *+SP(400),A15     ; |180| 
||         MV      .L1     A15,A4            ; |147| 

           NOP             3
           ADDK    .S2     400,SP            ; |180| 
           ; BRANCH OCCURS {B3}              ; |180| 
;** --------------------------------------------------------------------------*
L14:    
DW$L$_rsa_privkey_op$21$B:
           CALL    .S1     _freebn           ; |146| 
           NOP             3
DW$L$_rsa_privkey_op$21$E:
;** --------------------------------------------------------------------------*
L15:    
DW$L$_rsa_privkey_op$22$B:
;**	-----------------------g12:
;** 146	-----------------------    freebn(random);
;** 147	-----------------------    goto g2;
           ADDKPC  .S2     RL36,B3,0         ; |146| 
           MV      .L1     A13,A4            ; |146| 
RL36:      ; CALL OCCURS {_freebn}           ; |146| 
DW$L$_rsa_privkey_op$22$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_privkey_op$23$B:
           B       .S1     L9                ; |147| 
           CALL    .S1     _copybn           ; |95| 
           LDW     .D2T1   *+B12(8),A4       ; |95| 
	.dwpsn	"SSHRSA.C",151,0
           NOP             3
           ; BRANCH OCCURS {L9}              ; |147| 
DW$L$_rsa_privkey_op$23$E:

DW$83	.dwtag  DW_TAG_loop
	.dwattr DW$83, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L9:1:1297920394")
	.dwattr DW$83, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$83, DW_AT_begin_line(0x5d)
	.dwattr DW$83, DW_AT_end_line(0x97)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_rsa_privkey_op$2$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_rsa_privkey_op$2$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_rsa_privkey_op$16$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_rsa_privkey_op$16$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_rsa_privkey_op$17$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_rsa_privkey_op$17$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_rsa_privkey_op$5$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_rsa_privkey_op$5$E)
DW$88	.dwtag  DW_TAG_loop_range
	.dwattr DW$88, DW_AT_low_pc(DW$L$_rsa_privkey_op$3$B)
	.dwattr DW$88, DW_AT_high_pc(DW$L$_rsa_privkey_op$3$E)
DW$89	.dwtag  DW_TAG_loop_range
	.dwattr DW$89, DW_AT_low_pc(DW$L$_rsa_privkey_op$4$B)
	.dwattr DW$89, DW_AT_high_pc(DW$L$_rsa_privkey_op$4$E)
DW$90	.dwtag  DW_TAG_loop_range
	.dwattr DW$90, DW_AT_low_pc(DW$L$_rsa_privkey_op$14$B)
	.dwattr DW$90, DW_AT_high_pc(DW$L$_rsa_privkey_op$14$E)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$_rsa_privkey_op$15$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$_rsa_privkey_op$15$E)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_rsa_privkey_op$21$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_rsa_privkey_op$21$E)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_rsa_privkey_op$22$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_rsa_privkey_op$22$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_rsa_privkey_op$23$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_rsa_privkey_op$23$E)

DW$95	.dwtag  DW_TAG_loop
	.dwattr DW$95, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L10:2:1297920394")
	.dwattr DW$95, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$95, DW_AT_begin_line(0x68)
	.dwattr DW$95, DW_AT_end_line(0x8a)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_rsa_privkey_op$6$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_rsa_privkey_op$6$E)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$_rsa_privkey_op$8$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$_rsa_privkey_op$8$E)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_rsa_privkey_op$9$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_rsa_privkey_op$9$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_rsa_privkey_op$7$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_rsa_privkey_op$7$E)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$_rsa_privkey_op$10$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$_rsa_privkey_op$10$E)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$_rsa_privkey_op$11$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$_rsa_privkey_op$11$E)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_rsa_privkey_op$12$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_rsa_privkey_op$12$E)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_rsa_privkey_op$13$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_rsa_privkey_op$13$E)
	.dwendtag DW$95

	.dwendtag DW$83

	.dwattr DW$80, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$80, DW_AT_end_line(0xb4)
	.dwattr DW$80, DW_AT_end_column(0x01)
	.dwendtag DW$80

	.sect	".text"
	.global	_rsadecrypt

DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("rsadecrypt"), DW_AT_symbol_name("_rsadecrypt")
	.dwattr DW$104, DW_AT_low_pc(_rsadecrypt)
	.dwattr DW$104, DW_AT_high_pc(0x00)
	.dwattr DW$104, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$104, DW_AT_begin_line(0xb7)
	.dwattr DW$104, DW_AT_begin_column(0x08)
	.dwattr DW$104, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$104, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",184,1

;******************************************************************************
;* FUNCTION NAME: _rsadecrypt                                                 *
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
_rsadecrypt:
;** --------------------------------------------------------------------------*
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input"), DW_AT_symbol_name("_input")
	.dwattr DW$105, DW_AT_type(*DW$T$26)
	.dwattr DW$105, DW_AT_location[DW_OP_reg4]
DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$106, DW_AT_type(*DW$T$36)
	.dwattr DW$106, DW_AT_location[DW_OP_reg20]
;** 185	-----------------------    return rsa_privkey_op(input, key);
           CALLRET .S1     _rsa_privkey_op   ; |185| 
	.dwpsn	"SSHRSA.C",186,1
           NOP             5
RL37:      ; CALL-RETURN OCCURS {_rsa_privkey_op}  ; |185| 
	.dwattr DW$104, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$104, DW_AT_end_line(0xba)
	.dwattr DW$104, DW_AT_end_column(0x01)
	.dwendtag DW$104

	.sect	".text"

DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_encrypt_data"), DW_AT_symbol_name("_rsa_encrypt_data")
	.dwattr DW$107, DW_AT_low_pc(_rsa_encrypt_data)
	.dwattr DW$107, DW_AT_high_pc(0x00)
	.dwattr DW$107, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$107, DW_AT_begin_line(0x17f)
	.dwattr DW$107, DW_AT_begin_column(0x0c)
	.dwattr DW$107, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$107, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",384,1

;******************************************************************************
;* FUNCTION NAME: _rsa_encrypt_data                                           *
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
_rsa_encrypt_data:
;** --------------------------------------------------------------------------*
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_data"), DW_AT_symbol_name("_in_data")
	.dwattr DW$108, DW_AT_type(*DW$T$38)
	.dwattr DW$108, DW_AT_location[DW_OP_reg4]
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_len"), DW_AT_symbol_name("_in_len")
	.dwattr DW$109, DW_AT_type(*DW$T$10)
	.dwattr DW$109, DW_AT_location[DW_OP_reg20]
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_data"), DW_AT_symbol_name("_out_data")
	.dwattr DW$110, DW_AT_type(*DW$T$38)
	.dwattr DW$110, DW_AT_location[DW_OP_reg6]
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_len"), DW_AT_symbol_name("_out_len")
	.dwattr DW$111, DW_AT_type(*DW$T$10)
	.dwattr DW$111, DW_AT_location[DW_OP_reg22]
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key_len"), DW_AT_symbol_name("_key_len")
	.dwattr DW$112, DW_AT_type(*DW$T$10)
	.dwattr DW$112, DW_AT_location[DW_OP_reg8]
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_name("modulus"), DW_AT_symbol_name("_modulus")
	.dwattr DW$113, DW_AT_type(*DW$T$26)
	.dwattr DW$113, DW_AT_location[DW_OP_reg24]
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("exp"), DW_AT_symbol_name("_exp")
	.dwattr DW$114, DW_AT_type(*DW$T$26)
	.dwattr DW$114, DW_AT_location[DW_OP_reg10]
;** 353	-----------------------    if ( key_len < in_len+12 ) goto g12;  // [27]

           ADD     .L2     12,B4,B5          ; |353| 
||         MV      .L1X    SP,A31            ; |384| 
||         STW     .D2T1   A15,*SP--(48)     ; |384| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         STW     .D2T2   B3,*+SP(28)
||         MV      .L1     A6,A11            ; |384| 

           CMPLT   .L1X    A8,B5,A0          ; |353| 
||         MVK     .L2     0x7,B5            ; |362| 
||         STDW    .D1T1   A13:A12,*-A31(32)
||         STDW    .D2T2   B11:B10,*+SP(32)
||         MV      .S1     A8,A13            ; |384| 
||         MV      .S2     B6,B11            ; |384| 

   [ A0]   B       .S2     L21               ; |353| 
||         STW     .D2T2   B5,*+SP(4)        ; |360| 
||         STW     .D1T1   A14,*-A31(24)
||         MV      .L1     A4,A12            ; |384| 
||         MVK     .S1     1,A14             ; |360| 
||         MV      .L2     B4,B10            ; |384| 

           STDW    .D2T2   B13:B12,*+SP(40)
||         MV      .L2     B8,B12            ; |384| 
||         ZERO    .S2     B13               ; |354| 
||         MV      .L1     A8,A4             ; |384| 
|| [!A0]   CALL    .S1     _malloc           ; |356| 

           NOP             4
           ; BRANCHCC OCCURS {L21}           ; |353| 
;** --------------------------------------------------------------------------*
;** 356	-----------------------    buf = malloc((unsigned)key_len);  // [27]
;** 357	-----------------------    memcpy(buf+key_len-in_len, in_data, (unsigned)in_len);  // [27]
;** 358	-----------------------    ((int *)buf)[2] = in_len;  // [27]
;** 360	-----------------------    *buf = 1;  // [27]
;**  	-----------------------    U$24 = &buf[1];
;** 362	-----------------------    L$1 = 7;  // [27]
;**  	-----------------------    #pragma MUST_ITERATE(7, 7, 7)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;**	-----------------------g3:
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDKPC  .S2     RL38,B3,0         ; |356| 
RL38:      ; CALL OCCURS {_malloc}           ; |356| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _memcpy           ; |357| 
           MV      .L1X    B10,A6            ; |357| 
           ADD     .S1     A13,A4,A3         ; |357| 
           ADDKPC  .S2     RL39,B3,0         ; |357| 
           MV      .D1     A4,A15            ; |356| 

           MV      .L2X    A12,B4            ; |357| 
||         ADD     .S1     1,A4,A12
||         SUB     .L1X    A3,B10,A4         ; |357| 

RL39:      ; CALL OCCURS {_memcpy}           ; |357| 
;** --------------------------------------------------------------------------*
           STW     .D1T2   B10,*+A15(8)      ; |358| 
           STB     .D1T1   A14,*A15          ; |360| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L16
;** --------------------------------------------------------------------------*
L16:    
DW$L$_rsa_encrypt_data$5$B:
           CALL    .S1     _random_byte      ; |364| 
	.dwpsn	"SSHRSA.C",363,0
           NOP             4
DW$L$_rsa_encrypt_data$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L17:    
DW$L$_rsa_encrypt_data$6$B:
;**	-----------------------g4:
;** 364	-----------------------    s$0 = (unsigned char)random_byte();  // [27]
;** 365	-----------------------    *U$24 = s$0;  // [27]
;** 365	-----------------------    if ( !s$0 ) goto g4;  // [27]
;** 362	-----------------------    ++U$24;  // [27]
           ADDKPC  .S2     RL40,B3,0         ; |364| 
RL40:      ; CALL OCCURS {_random_byte}      ; |364| 
DW$L$_rsa_encrypt_data$6$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_encrypt_data$7$B:

           EXTU    .S1     A4,24,24,A0       ; |364| 
||         STB     .D1T1   A4,*A12           ; |365| 

   [!A0]   B       .S1     L17               ; |365| 
|| [ A0]   LDW     .D2T2   *+SP(4),B4
|| [ A0]   ADD     .L1     1,A12,A12         ; |362| 

   [!A0]   CALL    .S1     _random_byte      ; |364| 
           NOP             3
	.dwpsn	"SSHRSA.C",365,0
   [ A0]   SUB     .L1X    B4,1,A0           ; |362| 
           ; BRANCHCC OCCURS {L17}           ; |365| 
DW$L$_rsa_encrypt_data$7$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_encrypt_data$8$B:
;** 362	-----------------------    if ( --L$1 ) goto g3;  // [27]
;** 368	-----------------------    if ( (K$32 = key_len-in_len) <= 12 ) goto g11;  // [27]

   [ A0]   BNOP    .S1     L16,3             ; |362| 
||         SUB     .L2     B4,1,B4           ; |362| 

           STW     .D2T2   B4,*+SP(4)        ; |362| 
||         SUB     .L2X    A13,B10,B4        ; |368| 

           CMPGT   .L2     B4,12,B0          ; |368| 
           ; BRANCHCC OCCURS {L16}           ; |362| 
DW$L$_rsa_encrypt_data$8$E:
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$37 = &buf[12];
;**  	-----------------------    L$2 = K$32-12;
;**  	-----------------------    #pragma MUST_ITERATE(1, 2147483635, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;**	-----------------------g8:
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

   [!B0]   BNOP    .S1     L20,5             ; |368| 
||         ADD     .L1     12,A15,A12
||         SUB     .D1X    B4,12,A14

           ; BRANCHCC OCCURS {L20}           ; |368| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L18
;** --------------------------------------------------------------------------*
L18:    
DW$L$_rsa_encrypt_data$10$B:
           CALL    .S1     _random_byte      ; |370| 
	.dwpsn	"SSHRSA.C",369,0
           NOP             4
DW$L$_rsa_encrypt_data$10$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L19:    
DW$L$_rsa_encrypt_data$11$B:
;**	-----------------------g9:
;** 370	-----------------------    s$1 = (unsigned char)random_byte();  // [27]
;** 371	-----------------------    *U$37 = s$1;  // [27]
;** 371	-----------------------    if ( !s$1 ) goto g9;  // [27]
;** 368	-----------------------    ++U$37;  // [27]
           ADDKPC  .S2     RL41,B3,0         ; |370| 
RL41:      ; CALL OCCURS {_random_byte}      ; |370| 
DW$L$_rsa_encrypt_data$11$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_encrypt_data$12$B:

           EXTU    .S1     A4,24,24,A0       ; |370| 
||         STB     .D1T1   A4,*A12           ; |371| 

   [!A0]   B       .S1     L19               ; |371| 

   [!A0]   CALL    .S1     _random_byte      ; |370| 
|| [ A0]   SUB     .L1     A14,1,A0          ; |368| 

	.dwpsn	"SSHRSA.C",371,0
           NOP             4
           ; BRANCHCC OCCURS {L19}           ; |371| 
DW$L$_rsa_encrypt_data$12$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_encrypt_data$13$B:
;** 368	-----------------------    if ( --L$2 ) goto g8;  // [27]

   [ A0]   BNOP    .S1     L18,5             ; |368| 
||         ADD     .L1     1,A12,A12         ; |368| 
||         SUB     .D1     A14,1,A14         ; |368| 

           ; BRANCHCC OCCURS {L18}           ; |368| 
DW$L$_rsa_encrypt_data$13$E:
;** --------------------------------------------------------------------------*
L20:    
;**	-----------------------g11:
;** 375	-----------------------    b1 = bignum_from_bytes(buf, key_len);  // [27]
;** 344	-----------------------    result = modpow(b1, exp, modulus);  // [26]
;** 344	-----------------------    freebn(b1);  // [26]
;** 379	-----------------------    free(buf);  // [27]
;** 380	-----------------------    bn = result;  // [27]
;** 380	-----------------------    goto g13;  // [27]
;**	-----------------------g12:
;** 354	-----------------------    bn = NULL;  // [27]
           CALL    .S1     _bignum_from_bytes ; |375| 
           ADDKPC  .S2     RL42,B3,2         ; |375| 
           MV      .L2X    A13,B4            ; |375| 
           MV      .L1     A15,A4            ; |375| 
RL42:      ; CALL OCCURS {_bignum_from_bytes}  ; |375| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _modpow           ; |344| 
           ADDKPC  .S2     RL43,B3,1         ; |344| 
           MV      .S1X    B12,A6            ; |344| 
           MV      .L2X    A10,B4            ; |344| 
           MV      .L1     A4,A10            ; |375| 
RL43:      ; CALL OCCURS {_modpow}           ; |344| 
           CALL    .S1     _freebn           ; |344| 
           MV      .L2X    A4,B13            ; |344| 
           ADDKPC  .S2     RL44,B3,2         ; |344| 
           MV      .L1     A10,A4            ; |344| 
RL44:      ; CALL OCCURS {_freebn}           ; |344| 
           CALL    .S1     _free             ; |379| 
           ADDKPC  .S2     RL45,B3,3         ; |379| 
           MV      .L1     A15,A4            ; |379| 
RL45:      ; CALL OCCURS {_free}             ; |379| 
;** --------------------------------------------------------------------------*
L21:    
;**	-----------------------g13:
;** 389	-----------------------    if ( bn ) goto g15;
;** 390	-----------------------    return 0;

           MV      .L1X    B13,A0            ; |390| 
||         ZERO    .S1     A12               ; |390| 

   [!A0]   B       .S1     L25               ; |390| 
||         MV      .L1X    B13,A4            ; |390| 

   [ A0]   CALL    .S1     _bignum_bitcount  ; |392| 
           NOP             4
           ; BRANCHCC OCCURS {L25}           ; |390| 
;** --------------------------------------------------------------------------*
;**	-----------------------g15:
;** 392	-----------------------    len = bignum_bitcount(bn)+7>>3;
;** 393	-----------------------    if ( len <= out_len ) goto g17;
           ADDKPC  .S2     RL46,B3,0         ; |392| 
RL46:      ; CALL OCCURS {_bignum_bitcount}  ; |392| 
;** --------------------------------------------------------------------------*

           ADD     .L1     7,A4,A3           ; |392| 
||         MV      .S1X    B13,A4            ; |393| 

           SHR     .S1     A3,3,A10          ; |392| 
           CMPGT   .L1     A10,0,A0          ; |399| 
           CMPGT   .L2X    A10,B11,B0        ; |393| 

   [ B0]   MVK     .L1     0x1,A0            ; nullify predicate
||         SUB     .L2X    A10,1,B10         ; |399| 
|| [!B0]   B       .S1     L22               ; |393| 

   [!A0]   B       .S1     L24               ; |399| 
   [ B0]   CALL    .S1     _freebn           ; |395| 
           NOP             3
           ; BRANCHCC OCCURS {L22}           ; |393| 
;** --------------------------------------------------------------------------*
;** 395	-----------------------    freebn(bn);
;** 396	-----------------------    return 0;
           ADDKPC  .S2     RL47,B3,1         ; |395| 
RL47:      ; CALL OCCURS {_freebn}           ; |395| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(28),B3       ; |405| 
           MV      .L1X    SP,A31            ; |405| 
           LDDW    .D1T1   *+A31(8),A11:A10  ; |405| 
           LDW     .D1T1   *+A31(24),A14     ; |405| 
           LDDW    .D2T2   *+SP(40),B13:B12  ; |405| 

           RET     .S2     B3                ; |405| 
||         LDDW    .D1T1   *+A31(16),A13:A12 ; |405| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |405| 
||         MV      .L1     A12,A4            ; |404| 

           LDW     .D2T1   *++SP(48),A15     ; |405| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |405| 
;** --------------------------------------------------------------------------*
L22:    
;**	-----------------------g17:
;** 399	-----------------------    i = len-1;
;** 399	-----------------------    if ( len <= 0 ) goto g20;
;**  	-----------------------    U$62 = out_data;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           NOP             1
           ; BRANCHCC OCCURS {L24}           ; |399| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_byte      ; |400| 
	.dwpsn	"SSHRSA.C",399,0
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L23:    
DW$L$_rsa_encrypt_data$23$B:
;**	-----------------------g19:
;** 400	-----------------------    *U$62++ = bignum_byte(bn, i);
;** 399	-----------------------    if ( (--i) >= 0 ) goto g19;

           MV      .L2     B10,B4            ; |400| 
||         MV      .L1X    B13,A4            ; |400| 
||         ADDKPC  .S2     RL48,B3,0         ; |400| 

RL48:      ; CALL OCCURS {_bignum_byte}      ; |400| 
DW$L$_rsa_encrypt_data$23$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_encrypt_data$24$B:

           CMPLT   .L2     B10,1,B0          ; |399| 
||         SUB     .S2     B10,1,B10         ; |399| 
||         STB     .D1T1   A4,*A11++         ; |400| 

   [!B0]   B       .S1     L23               ; |399| 
   [!B0]   CALL    .S1     _bignum_byte      ; |400| 
	.dwpsn	"SSHRSA.C",401,0
           NOP             4
           ; BRANCHCC OCCURS {L23}           ; |399| 
DW$L$_rsa_encrypt_data$24$E:
;** --------------------------------------------------------------------------*
L24:    
;**	-----------------------g20:
;** 403	-----------------------    freebn(bn);
;** 404	-----------------------    return len;
           CALL    .S1     _freebn           ; |403| 
           ADDKPC  .S2     RL49,B3,3         ; |403| 
           MV      .L1X    B13,A4            ; |403| 
RL49:      ; CALL OCCURS {_freebn}           ; |403| 
;** --------------------------------------------------------------------------*
           MV      .L1     A10,A12           ; |404| 
;** --------------------------------------------------------------------------*
L25:    
           LDW     .D2T2   *+SP(28),B3       ; |405| 
           MV      .L1X    SP,A31            ; |405| 
           LDDW    .D1T1   *+A31(8),A11:A10  ; |405| 
           LDW     .D1T1   *+A31(24),A14     ; |405| 
           LDDW    .D2T2   *+SP(40),B13:B12  ; |405| 

           RET     .S2     B3                ; |405| 
||         LDDW    .D1T1   *+A31(16),A13:A12 ; |405| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |405| 
||         MV      .L1     A12,A4            ; |404| 

           LDW     .D2T1   *++SP(48),A15     ; |405| 
	.dwpsn	"SSHRSA.C",405,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |405| 

DW$115	.dwtag  DW_TAG_loop
	.dwattr DW$115, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L23:1:1297920394")
	.dwattr DW$115, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$115, DW_AT_begin_line(0x18f)
	.dwattr DW$115, DW_AT_end_line(0x191)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_rsa_encrypt_data$23$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_rsa_encrypt_data$23$E)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_rsa_encrypt_data$24$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_rsa_encrypt_data$24$E)
	.dwendtag DW$115


DW$118	.dwtag  DW_TAG_loop
	.dwattr DW$118, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L18:1:1297920394")
	.dwattr DW$118, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$118, DW_AT_begin_line(0x170)
	.dwattr DW$118, DW_AT_end_line(0x172)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_rsa_encrypt_data$10$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_rsa_encrypt_data$10$E)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_rsa_encrypt_data$13$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_rsa_encrypt_data$13$E)

DW$121	.dwtag  DW_TAG_loop
	.dwattr DW$121, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L19:2:1297920394")
	.dwattr DW$121, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$121, DW_AT_begin_line(0x171)
	.dwattr DW$121, DW_AT_end_line(0x173)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_rsa_encrypt_data$11$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_rsa_encrypt_data$11$E)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_rsa_encrypt_data$12$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_rsa_encrypt_data$12$E)
	.dwendtag DW$121

	.dwendtag DW$118


DW$124	.dwtag  DW_TAG_loop
	.dwattr DW$124, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L16:1:1297920394")
	.dwattr DW$124, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$124, DW_AT_begin_line(0x16a)
	.dwattr DW$124, DW_AT_end_line(0x170)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_rsa_encrypt_data$5$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_rsa_encrypt_data$5$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_rsa_encrypt_data$8$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_rsa_encrypt_data$8$E)

DW$127	.dwtag  DW_TAG_loop
	.dwattr DW$127, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L17:2:1297920394")
	.dwattr DW$127, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$127, DW_AT_begin_line(0x16b)
	.dwattr DW$127, DW_AT_end_line(0x16d)
DW$128	.dwtag  DW_TAG_loop_range
	.dwattr DW$128, DW_AT_low_pc(DW$L$_rsa_encrypt_data$6$B)
	.dwattr DW$128, DW_AT_high_pc(DW$L$_rsa_encrypt_data$6$E)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_rsa_encrypt_data$7$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_rsa_encrypt_data$7$E)
	.dwendtag DW$127

	.dwendtag DW$124

	.dwattr DW$107, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$107, DW_AT_end_line(0x195)
	.dwattr DW$107, DW_AT_end_column(0x01)
	.dwendtag DW$107

	.sect	".text"
	.global	_rsa_encrypt_public

DW$130	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_encrypt_public"), DW_AT_symbol_name("_rsa_encrypt_public")
	.dwattr DW$130, DW_AT_low_pc(_rsa_encrypt_public)
	.dwattr DW$130, DW_AT_high_pc(0x00)
	.dwattr DW$130, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$130, DW_AT_begin_line(0x197)
	.dwattr DW$130, DW_AT_begin_column(0x05)
	.dwattr DW$130, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$130, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",408,1

;******************************************************************************
;* FUNCTION NAME: _rsa_encrypt_public                                         *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
_rsa_encrypt_public:
;** --------------------------------------------------------------------------*
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_data"), DW_AT_symbol_name("_in_data")
	.dwattr DW$131, DW_AT_type(*DW$T$38)
	.dwattr DW$131, DW_AT_location[DW_OP_reg4]
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_len"), DW_AT_symbol_name("_in_len")
	.dwattr DW$132, DW_AT_type(*DW$T$10)
	.dwattr DW$132, DW_AT_location[DW_OP_reg20]
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_data"), DW_AT_symbol_name("_out_data")
	.dwattr DW$133, DW_AT_type(*DW$T$38)
	.dwattr DW$133, DW_AT_location[DW_OP_reg6]
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_len"), DW_AT_symbol_name("_out_len")
	.dwattr DW$134, DW_AT_type(*DW$T$10)
	.dwattr DW$134, DW_AT_location[DW_OP_reg22]
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$135, DW_AT_type(*DW$T$36)
	.dwattr DW$135, DW_AT_location[DW_OP_reg8]
;** 409	-----------------------    return rsa_encrypt_data(in_data, in_len, out_data, out_len, (*key).bytes, (*key).modulus, (*key).exponent);
           STW     .D2T1   A10,*SP--(8)      ; |408| 
           LDW     .D1T2   *+A8(8),B8        ; |409| 

           CALL    .S1     _rsa_encrypt_data ; |409| 
||         LDW     .D1T1   *+A8(12),A10      ; |409| 

           LDW     .D1T1   *+A8(4),A8        ; |409| 
           STW     .D2T2   B13,*+SP(4)       ; |408| 
           MV      .L2     B3,B13            ; |408| 
           ADDKPC  .S2     RL50,B3,1         ; |409| 
RL50:      ; CALL OCCURS {_rsa_encrypt_data}  ; |409| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |410| 

           RET     .S2     B3                ; |410| 
||         LDW     .D2T2   *+SP(4),B13       ; |410| 

           LDW     .D2T1   *++SP(8),A10      ; |410| 
	.dwpsn	"SSHRSA.C",410,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |410| 
	.dwattr DW$130, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$130, DW_AT_end_line(0x19a)
	.dwattr DW$130, DW_AT_end_column(0x01)
	.dwendtag DW$130

	.sect	".text"
	.global	_rsa_encrypt_private

DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_encrypt_private"), DW_AT_symbol_name("_rsa_encrypt_private")
	.dwattr DW$136, DW_AT_low_pc(_rsa_encrypt_private)
	.dwattr DW$136, DW_AT_high_pc(0x00)
	.dwattr DW$136, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$136, DW_AT_begin_line(0x19c)
	.dwattr DW$136, DW_AT_begin_column(0x05)
	.dwattr DW$136, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$136, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",413,1

;******************************************************************************
;* FUNCTION NAME: _rsa_encrypt_private                                        *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
_rsa_encrypt_private:
;** --------------------------------------------------------------------------*
DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_data"), DW_AT_symbol_name("_in_data")
	.dwattr DW$137, DW_AT_type(*DW$T$38)
	.dwattr DW$137, DW_AT_location[DW_OP_reg4]
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_len"), DW_AT_symbol_name("_in_len")
	.dwattr DW$138, DW_AT_type(*DW$T$10)
	.dwattr DW$138, DW_AT_location[DW_OP_reg20]
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_data"), DW_AT_symbol_name("_out_data")
	.dwattr DW$139, DW_AT_type(*DW$T$38)
	.dwattr DW$139, DW_AT_location[DW_OP_reg6]
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_len"), DW_AT_symbol_name("_out_len")
	.dwattr DW$140, DW_AT_type(*DW$T$10)
	.dwattr DW$140, DW_AT_location[DW_OP_reg22]
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$141, DW_AT_type(*DW$T$36)
	.dwattr DW$141, DW_AT_location[DW_OP_reg8]
;** 414	-----------------------    return rsa_encrypt_data(in_data, in_len, out_data, out_len, (*key).bytes, (*key).modulus, (*key).private_exponent);
           STW     .D2T1   A10,*SP--(8)      ; |413| 
           LDW     .D1T2   *+A8(8),B8        ; |414| 

           CALL    .S1     _rsa_encrypt_data ; |414| 
||         LDW     .D1T1   *+A8(16),A10      ; |414| 

           LDW     .D1T1   *+A8(4),A8        ; |414| 
           STW     .D2T2   B13,*+SP(4)       ; |413| 
           MV      .L2     B3,B13            ; |413| 
           ADDKPC  .S2     RL51,B3,1         ; |414| 
RL51:      ; CALL OCCURS {_rsa_encrypt_data}  ; |414| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |415| 

           RET     .S2     B3                ; |415| 
||         LDW     .D2T2   *+SP(4),B13       ; |415| 

           LDW     .D2T1   *++SP(8),A10      ; |415| 
	.dwpsn	"SSHRSA.C",415,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |415| 
	.dwattr DW$136, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$136, DW_AT_end_line(0x19f)
	.dwattr DW$136, DW_AT_end_column(0x01)
	.dwendtag DW$136

	.sect	".text"

DW$142	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_decrypt_blind"), DW_AT_symbol_name("_rsa_decrypt_blind")
	.dwattr DW$142, DW_AT_low_pc(_rsa_decrypt_blind)
	.dwattr DW$142, DW_AT_high_pc(0x00)
	.dwattr DW$142, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$142, DW_AT_begin_line(0xbd)
	.dwattr DW$142, DW_AT_begin_column(0x0f)
	.dwattr DW$142, DW_AT_frame_base[DW_OP_breg31 360]
	.dwattr DW$142, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",190,1

;******************************************************************************
;* FUNCTION NAME: _rsa_decrypt_blind                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 352 Auto + 4 Save = 356 byte                *
;******************************************************************************
_rsa_decrypt_blind:
;** --------------------------------------------------------------------------*
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input"), DW_AT_symbol_name("_input")
	.dwattr DW$143, DW_AT_type(*DW$T$26)
	.dwattr DW$143, DW_AT_location[DW_OP_reg4]
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("modulus"), DW_AT_symbol_name("_modulus")
	.dwattr DW$144, DW_AT_type(*DW$T$26)
	.dwattr DW$144, DW_AT_location[DW_OP_reg20]
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("exp"), DW_AT_symbol_name("_exp")
	.dwattr DW$145, DW_AT_type(*DW$T$26)
	.dwattr DW$145, DW_AT_location[DW_OP_reg6]
;** 200	-----------------------    return modpow(input, exp, modulus);
           CALL    .S1     _modpow           ; |200| 
           ADDK    .S2     -360,SP           ; |190| 
           STW     .D2T2   B3,*+SP(360)      ; |190| 
           ADDKPC  .S2     RL52,B3,0         ; |200| 
           MV      .L1X    B4,A3             ; |190| 

           MV      .L1     A3,A6             ; |200| 
||         MV      .L2X    A6,B4             ; |190| 

RL52:      ; CALL OCCURS {_modpow}           ; |200| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(360),B3      ; |303| 
           NOP             3
           ADDK    .S2     360,SP            ; |303| 
	.dwpsn	"SSHRSA.C",303,1
           RETNOP  .S2     B3,5              ; |303| 
           ; BRANCH OCCURS {B3}              ; |303| 
	.dwattr DW$142, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$142, DW_AT_end_line(0x12f)
	.dwattr DW$142, DW_AT_end_column(0x01)
	.dwendtag DW$142

	.sect	".text"

DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_decrypt_data"), DW_AT_symbol_name("_rsa_decrypt_data")
	.dwattr DW$146, DW_AT_low_pc(_rsa_decrypt_data)
	.dwattr DW$146, DW_AT_high_pc(0x00)
	.dwattr DW$146, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$146, DW_AT_begin_line(0x132)
	.dwattr DW$146, DW_AT_begin_column(0x0c)
	.dwattr DW$146, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$146, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",307,1

;******************************************************************************
;* FUNCTION NAME: _rsa_decrypt_data                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,   *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,   *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_rsa_decrypt_data:
;** --------------------------------------------------------------------------*
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_data"), DW_AT_symbol_name("_in_data")
	.dwattr DW$147, DW_AT_type(*DW$T$38)
	.dwattr DW$147, DW_AT_location[DW_OP_reg4]
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_len"), DW_AT_symbol_name("_in_len")
	.dwattr DW$148, DW_AT_type(*DW$T$10)
	.dwattr DW$148, DW_AT_location[DW_OP_reg20]
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_data"), DW_AT_symbol_name("_out_data")
	.dwattr DW$149, DW_AT_type(*DW$T$38)
	.dwattr DW$149, DW_AT_location[DW_OP_reg6]
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_len"), DW_AT_symbol_name("_out_len")
	.dwattr DW$150, DW_AT_type(*DW$T$10)
	.dwattr DW$150, DW_AT_location[DW_OP_reg22]
DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key_len"), DW_AT_symbol_name("_key_len")
	.dwattr DW$151, DW_AT_type(*DW$T$10)
	.dwattr DW$151, DW_AT_location[DW_OP_reg8]
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("modulus"), DW_AT_symbol_name("_modulus")
	.dwattr DW$152, DW_AT_type(*DW$T$26)
	.dwattr DW$152, DW_AT_location[DW_OP_reg24]
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("exp"), DW_AT_symbol_name("_exp")
	.dwattr DW$153, DW_AT_type(*DW$T$26)
	.dwattr DW$153, DW_AT_location[DW_OP_reg10]
;** 314	-----------------------    b1 = bignum_from_bytes(in_data, in_len);
;** 316	-----------------------    b2 = rsa_decrypt_blind(b1, modulus, exp);
;** 317	-----------------------    freebn(b1);
;** 319	-----------------------    len = bignum_bitcount(b2)+7>>3;
;** 321	-----------------------    p = malloc((unsigned)len);
;** 323	-----------------------    i = len-1;
;** 323	-----------------------    if ( len <= 0 ) goto g4;
;**  	-----------------------    U$21 = p;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _bignum_from_bytes ; |314| 
           MV      .L1X    SP,A31            ; |307| 
           STW     .D2T1   A14,*SP--(32)     ; |307| 
           STDW    .D1T1   A11:A10,*-A31(24)

           STW     .D2T2   B13,*+SP(4)
||         MV      .L1X    B6,A11            ; |307| 

           ADDKPC  .S2     RL53,B3,0         ; |314| 
||         MV      .L1X    B8,A12            ; |307| 
||         STDW    .D1T1   A13:A12,*-A31(16)
||         MV      .L2     B3,B13
||         STDW    .D2T2   B11:B10,*+SP(24)
||         MV      .S1     A6,A14            ; |307| 

RL53:      ; CALL OCCURS {_bignum_from_bytes}  ; |314| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _rsa_decrypt_blind ; |316| 
           ADDKPC  .S2     RL54,B3,1         ; |316| 
           MV      .L2X    A12,B4            ; |316| 
           MV      .S1     A10,A6            ; |307| 
           MV      .L1     A4,A10            ; |314| 
RL54:      ; CALL OCCURS {_rsa_decrypt_blind}  ; |316| 
           CALL    .S1     _freebn           ; |317| 
           MV      .S1     A4,A12            ; |316| 
           ADDKPC  .S2     RL55,B3,2         ; |317| 
           MV      .L1     A10,A4            ; |317| 
RL55:      ; CALL OCCURS {_freebn}           ; |317| 
           CALL    .S1     _bignum_bitcount  ; |319| 
           ADDKPC  .S2     RL56,B3,3         ; |319| 
           MV      .L1     A12,A4            ; |319| 
RL56:      ; CALL OCCURS {_bignum_bitcount}  ; |319| 
           CALL    .S1     _malloc           ; |321| 
           ADD     .L1     7,A4,A3           ; |319| 
           ADDKPC  .S2     RL57,B3,0         ; |321| 
           SHR     .S2X    A3,3,B11          ; |319| 
           NOP             1
           MV      .L1X    B11,A4            ; |321| 
RL57:      ; CALL OCCURS {_malloc}           ; |321| 
;** --------------------------------------------------------------------------*
           CMPGT   .L2     B11,0,B0          ; |323| 
   [!B0]   BNOP    .S1     L27,4             ; |323| 

           MV      .L1     A4,A13            ; |321| 
||         MV      .S1     A4,A10            ; |321| 
||         SUB     .L2     B11,1,B10         ; |323| 

           ; BRANCHCC OCCURS {L27}           ; |323| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_byte      ; |324| 
	.dwpsn	"SSHRSA.C",323,0
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L26:    
DW$L$_rsa_decrypt_data$5$B:
;**	-----------------------g3:
;** 324	-----------------------    *U$21++ = bignum_byte(b2, i);
;** 323	-----------------------    if ( (--i) >= 0 ) goto g3;

           MV      .L2     B10,B4            ; |324| 
||         MV      .L1     A12,A4            ; |324| 
||         ADDKPC  .S2     RL58,B3,0         ; |324| 

RL58:      ; CALL OCCURS {_bignum_byte}      ; |324| 
DW$L$_rsa_decrypt_data$5$E:
;** --------------------------------------------------------------------------*
DW$L$_rsa_decrypt_data$6$B:

           CMPLT   .L2     B10,1,B0          ; |323| 
||         SUB     .S2     B10,1,B10         ; |323| 
||         STB     .D1T1   A4,*A10++         ; |324| 

   [!B0]   B       .S1     L26               ; |323| 
   [!B0]   CALL    .S1     _bignum_byte      ; |324| 
	.dwpsn	"SSHRSA.C",325,0
           NOP             4
           ; BRANCHCC OCCURS {L26}           ; |323| 
DW$L$_rsa_decrypt_data$6$E:
;** --------------------------------------------------------------------------*
L27:    
;**	-----------------------g4:
;** 327	-----------------------    data_len = ((int *)p)[2];
;** 328	-----------------------    if ( (unsigned)data_len <= (unsigned)out_len ) goto g6;

           LDW     .D1T1   *+A13(8),A10      ; |327| 
||         MV      .L1     A13,A4            ; |330| 

           NOP             4

           MV      .S1     A10,A6            ; |335| 
||         SUB     .L2X    B11,A10,B4        ; |335| 
||         ZERO    .D1     A11               ; |332| 
||         CMPGTU  .L1     A10,A11,A0        ; |328| 

   [!A0]   B       .S1     L28               ; |328| 
||         ADD     .L2X    A13,B4,B4         ; |335| 

   [ A0]   CALL    .S1     _free             ; |330| 
   [!A0]   CALL    .S1     _memcpy           ; |335| 
           NOP             3
           ; BRANCHCC OCCURS {L28}           ; |328| 
;** --------------------------------------------------------------------------*
;** 330	-----------------------    free((void *)p);
;** 331	-----------------------    freebn(b2);
;** 332	-----------------------    return 0;
           ADDKPC  .S2     RL59,B3,0         ; |330| 
RL59:      ; CALL OCCURS {_free}             ; |330| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _freebn           ; |331| 
           ADDKPC  .S2     RL60,B3,3         ; |331| 
           MV      .L1     A12,A4            ; |331| 
RL60:      ; CALL OCCURS {_freebn}           ; |331| 
;** --------------------------------------------------------------------------*
           MV      .L1X    SP,A31            ; |340| 

           LDDW    .D1T1   *+A31(16),A13:A12 ; |340| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |340| 
||         MV      .L2     B13,B3            ; |340| 

           RET     .S2     B3                ; |340| 
||         LDDW    .D1T1   *+A31(8),A11:A10  ; |340| 
||         LDW     .D2T2   *+SP(4),B13       ; |340| 
||         MV      .L1     A11,A4            ; |339| 

           LDW     .D2T1   *++SP(32),A14     ; |340| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |340| 
;** --------------------------------------------------------------------------*
L28:    
;**	-----------------------g6:
;** 335	-----------------------    memcpy((void * const)out_data, len-data_len+p, (unsigned)data_len);
;** 336	-----------------------    free((void *)p);
;** 337	-----------------------    freebn(b2);
;** 339	-----------------------    return data_len;
           ADDKPC  .S2     RL61,B3,0         ; |335| 
           MV      .L1     A14,A4            ; |335| 
RL61:      ; CALL OCCURS {_memcpy}           ; |335| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _free             ; |336| 
           ADDKPC  .S2     RL62,B3,3         ; |336| 
           MV      .L1     A13,A4            ; |336| 
RL62:      ; CALL OCCURS {_free}             ; |336| 
           CALL    .S1     _freebn           ; |337| 
           MV      .L1     A12,A4            ; |337| 
           ADDKPC  .S2     RL63,B3,3         ; |337| 
RL63:      ; CALL OCCURS {_freebn}           ; |337| 
;** --------------------------------------------------------------------------*
           MV      .L1X    SP,A31            ; |340| 

           LDDW    .D1T1   *+A31(16),A13:A12 ; |340| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |340| 
||         MV      .L2     B13,B3            ; |340| 

           RET     .S2     B3                ; |340| 
||         LDDW    .D1T1   *+A31(8),A11:A10  ; |340| 
||         LDW     .D2T2   *+SP(4),B13       ; |340| 
||         MV      .L1     A10,A4            ; |339| 

           LDW     .D2T1   *++SP(32),A14     ; |340| 
	.dwpsn	"SSHRSA.C",340,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |340| 

DW$154	.dwtag  DW_TAG_loop
	.dwattr DW$154, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHRSA.asm:L26:1:1297920394")
	.dwattr DW$154, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$154, DW_AT_begin_line(0x143)
	.dwattr DW$154, DW_AT_end_line(0x145)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_rsa_decrypt_data$5$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_rsa_decrypt_data$5$E)
DW$156	.dwtag  DW_TAG_loop_range
	.dwattr DW$156, DW_AT_low_pc(DW$L$_rsa_decrypt_data$6$B)
	.dwattr DW$156, DW_AT_high_pc(DW$L$_rsa_decrypt_data$6$E)
	.dwendtag DW$154

	.dwattr DW$146, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$146, DW_AT_end_line(0x154)
	.dwattr DW$146, DW_AT_end_column(0x01)
	.dwendtag DW$146

	.sect	".text"
	.global	_rsa_decrypt_public

DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_decrypt_public"), DW_AT_symbol_name("_rsa_decrypt_public")
	.dwattr DW$157, DW_AT_low_pc(_rsa_decrypt_public)
	.dwattr DW$157, DW_AT_high_pc(0x00)
	.dwattr DW$157, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$157, DW_AT_begin_line(0x1a1)
	.dwattr DW$157, DW_AT_begin_column(0x05)
	.dwattr DW$157, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$157, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",418,1

;******************************************************************************
;* FUNCTION NAME: _rsa_decrypt_public                                         *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
_rsa_decrypt_public:
;** --------------------------------------------------------------------------*
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_data"), DW_AT_symbol_name("_in_data")
	.dwattr DW$158, DW_AT_type(*DW$T$38)
	.dwattr DW$158, DW_AT_location[DW_OP_reg4]
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_len"), DW_AT_symbol_name("_in_len")
	.dwattr DW$159, DW_AT_type(*DW$T$10)
	.dwattr DW$159, DW_AT_location[DW_OP_reg20]
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_data"), DW_AT_symbol_name("_out_data")
	.dwattr DW$160, DW_AT_type(*DW$T$38)
	.dwattr DW$160, DW_AT_location[DW_OP_reg6]
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_len"), DW_AT_symbol_name("_out_len")
	.dwattr DW$161, DW_AT_type(*DW$T$10)
	.dwattr DW$161, DW_AT_location[DW_OP_reg22]
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$162, DW_AT_type(*DW$T$36)
	.dwattr DW$162, DW_AT_location[DW_OP_reg8]
;** 419	-----------------------    return rsa_decrypt_data(in_data, in_len, out_data, out_len, (*key).bytes, (*key).modulus, (*key).exponent);
           STW     .D2T1   A10,*SP--(8)      ; |418| 
           LDW     .D1T2   *+A8(8),B8        ; |419| 

           CALL    .S1     _rsa_decrypt_data ; |419| 
||         LDW     .D1T1   *+A8(12),A10      ; |419| 

           LDW     .D1T1   *+A8(4),A8        ; |419| 
           STW     .D2T2   B13,*+SP(4)       ; |418| 
           MV      .L2     B3,B13            ; |418| 
           ADDKPC  .S2     RL64,B3,1         ; |419| 
RL64:      ; CALL OCCURS {_rsa_decrypt_data}  ; |419| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |420| 

           RET     .S2     B3                ; |420| 
||         LDW     .D2T2   *+SP(4),B13       ; |420| 

           LDW     .D2T1   *++SP(8),A10      ; |420| 
	.dwpsn	"SSHRSA.C",420,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |420| 
	.dwattr DW$157, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$157, DW_AT_end_line(0x1a4)
	.dwattr DW$157, DW_AT_end_column(0x01)
	.dwendtag DW$157

	.sect	".text"
	.global	_rsa_decrypt_private

DW$163	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_decrypt_private"), DW_AT_symbol_name("_rsa_decrypt_private")
	.dwattr DW$163, DW_AT_low_pc(_rsa_decrypt_private)
	.dwattr DW$163, DW_AT_high_pc(0x00)
	.dwattr DW$163, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$163, DW_AT_begin_line(0x1a6)
	.dwattr DW$163, DW_AT_begin_column(0x05)
	.dwattr DW$163, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$163, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",423,1

;******************************************************************************
;* FUNCTION NAME: _rsa_decrypt_private                                        *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
_rsa_decrypt_private:
;** --------------------------------------------------------------------------*
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_data"), DW_AT_symbol_name("_in_data")
	.dwattr DW$164, DW_AT_type(*DW$T$38)
	.dwattr DW$164, DW_AT_location[DW_OP_reg4]
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_len"), DW_AT_symbol_name("_in_len")
	.dwattr DW$165, DW_AT_type(*DW$T$10)
	.dwattr DW$165, DW_AT_location[DW_OP_reg20]
DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_data"), DW_AT_symbol_name("_out_data")
	.dwattr DW$166, DW_AT_type(*DW$T$38)
	.dwattr DW$166, DW_AT_location[DW_OP_reg6]
DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_len"), DW_AT_symbol_name("_out_len")
	.dwattr DW$167, DW_AT_type(*DW$T$10)
	.dwattr DW$167, DW_AT_location[DW_OP_reg22]
DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$168, DW_AT_type(*DW$T$36)
	.dwattr DW$168, DW_AT_location[DW_OP_reg8]
;** 424	-----------------------    return rsa_decrypt_data(in_data, in_len, out_data, out_len, (*key).bytes, (*key).modulus, (*key).private_exponent);
           STW     .D2T1   A10,*SP--(8)      ; |423| 
           LDW     .D1T2   *+A8(8),B8        ; |424| 

           CALL    .S1     _rsa_decrypt_data ; |424| 
||         LDW     .D1T1   *+A8(16),A10      ; |424| 

           LDW     .D1T1   *+A8(4),A8        ; |424| 
           STW     .D2T2   B13,*+SP(4)       ; |423| 
           MV      .L2     B3,B13            ; |423| 
           ADDKPC  .S2     RL65,B3,1         ; |424| 
RL65:      ; CALL OCCURS {_rsa_decrypt_data}  ; |424| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |425| 

           RET     .S2     B3                ; |425| 
||         LDW     .D2T2   *+SP(4),B13       ; |425| 

           LDW     .D2T1   *++SP(8),A10      ; |425| 
	.dwpsn	"SSHRSA.C",425,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |425| 
	.dwattr DW$163, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$163, DW_AT_end_line(0x1a9)
	.dwattr DW$163, DW_AT_end_column(0x01)
	.dwendtag DW$163

	.sect	".text"
	.global	_freersakey

DW$169	.dwtag  DW_TAG_subprogram, DW_AT_name("freersakey"), DW_AT_symbol_name("_freersakey")
	.dwattr DW$169, DW_AT_low_pc(_freersakey)
	.dwattr DW$169, DW_AT_high_pc(0x00)
	.dwattr DW$169, DW_AT_begin_file("SSHRSA.C")
	.dwattr DW$169, DW_AT_begin_line(0x1ad)
	.dwattr DW$169, DW_AT_begin_column(0x06)
	.dwattr DW$169, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$169, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSA.C",430,1

;******************************************************************************
;* FUNCTION NAME: _freersakey                                                 *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
_freersakey:
;** --------------------------------------------------------------------------*
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$170, DW_AT_type(*DW$T$36)
	.dwattr DW$170, DW_AT_location[DW_OP_reg4]
;** 431	-----------------------    C$4 = (*key).modulus;
;** 431	-----------------------    if ( C$4 == NULL ) goto g3;

           STW     .D2T1   A10,*SP--(8)      ; |430| 
||         MV      .L1     A4,A10            ; |430| 

           LDW     .D1T1   *+A10(8),A0       ; |431| 
||         STW     .D2T2   B13,*+SP(4)       ; |430| 
||         MV      .L2     B3,B13            ; |430| 

           NOP             4

           MV      .L1     A0,A4             ; |432| 
|| [!A0]   B       .S1     L29               ; |431| 

   [!A0]   LDW     .D1T1   *+A10(12),A0      ; |433| 
|| [ A0]   CALL    .S1     _freebn           ; |432| 

           NOP             4
           ; BRANCHCC OCCURS {L29}           ; |431| 
;** --------------------------------------------------------------------------*
;** 432	-----------------------    freebn(C$4);
           ADDKPC  .S2     RL66,B3,0         ; |432| 
RL66:      ; CALL OCCURS {_freebn}           ; |432| 
           LDW     .D1T1   *+A10(12),A0      ; |433| 
           NOP             4
;** --------------------------------------------------------------------------*
L29:    
;**	-----------------------g3:
;** 433	-----------------------    C$3 = (*key).exponent;
;** 433	-----------------------    if ( C$3 == NULL ) goto g5;

   [!A0]   B       .S1     L30               ; |433| 
||         MV      .L1     A0,A4             ; |434| 

   [ A0]   CALL    .S1     _freebn           ; |434| 
|| [!A0]   LDW     .D1T1   *+A10(16),A0      ; |435| 

           NOP             4
           ; BRANCHCC OCCURS {L30}           ; |433| 
;** --------------------------------------------------------------------------*
;** 434	-----------------------    freebn(C$3);
           ADDKPC  .S2     RL67,B3,0         ; |434| 
RL67:      ; CALL OCCURS {_freebn}           ; |434| 
           LDW     .D1T1   *+A10(16),A0      ; |435| 
           NOP             4
;** --------------------------------------------------------------------------*
L30:    
;**	-----------------------g5:
;** 435	-----------------------    C$2 = (*key).private_exponent;
;** 435	-----------------------    if ( C$2 == NULL ) goto g7;

   [!A0]   B       .S1     L31               ; |435| 
||         MV      .L1     A0,A4             ; |436| 

   [ A0]   CALL    .S1     _freebn           ; |436| 
|| [!A0]   LDW     .D1T1   *+A10(32),A0      ; |437| 

           NOP             4
           ; BRANCHCC OCCURS {L31}           ; |435| 
;** --------------------------------------------------------------------------*
;** 436	-----------------------    freebn(C$2);
           ADDKPC  .S2     RL68,B3,0         ; |436| 
RL68:      ; CALL OCCURS {_freebn}           ; |436| 
           LDW     .D1T1   *+A10(32),A0      ; |437| 
           NOP             4
;** --------------------------------------------------------------------------*
L31:    
;**	-----------------------g7:
;** 437	-----------------------    C$1 = (*key).comment;
;** 437	-----------------------    if ( C$1 == NULL ) goto g9;
   [!A0]   B       .S1     L32               ; |437| 

           MV      .L1     A0,A4             ; |438| 
|| [!A0]   MV      .L2     B13,B3            ; |439| 
|| [ A0]   CALL    .S1     _safefree         ; |438| 
|| [!A0]   LDW     .D2T2   *+SP(4),B13       ; |439| 

   [!A0]   RETNOP  .S2     B3,3              ; |439| 
|| [!A0]   LDW     .D2T1   *++SP(8),A10      ; |439| 

           ; BRANCHCC OCCURS {L32}           ; |437| 
;** --------------------------------------------------------------------------*
;** 438	-----------------------    safefree(C$1);
;**	-----------------------g9:
;**  	-----------------------    return;
           ADDKPC  .S2     RL69,B3,0         ; |438| 
RL69:      ; CALL OCCURS {_safefree}         ; |438| 

           MV      .L2     B13,B3            ; |439| 
||         LDW     .D2T2   *+SP(4),B13       ; |439| 

           RETNOP  .S2     B3,3              ; |439| 
||         LDW     .D2T1   *++SP(8),A10      ; |439| 

;** --------------------------------------------------------------------------*
L32:    
	.dwpsn	"SSHRSA.C",439,1
           NOP             2
           ; BRANCH OCCURS {B3}              ; |439| 
	.dwattr DW$169, DW_AT_end_file("SSHRSA.C")
	.dwattr DW$169, DW_AT_end_line(0x1b7)
	.dwattr DW$169, DW_AT_end_column(0x01)
	.dwendtag DW$169

;; Inlined function references:
;; [ 26] rsa_encrypt_op
;; [ 27] rsa_encrypt_wrapper
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"RSA deterministic blinding",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_malloc
	.global	_free
	.global	_memmove
	.global	_memset
	.global	_safefree
	.global	_SHA512_Init
	.global	_SHA512_Bytes
	.global	_SHA512_Final
	.global	_random_byte
	.global	_copybn
	.global	_freebn
	.global	_modpow
	.global	_modmul
	.global	_bignum_from_bytes
	.global	_bignum_bitcount
	.global	_bignum_byte
	.global	_bignum_set_bit
	.global	_modinv
	.global	_bignum_cmp
	.global	_Zero
	.global	_memcpy

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("Bignum"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)

DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$31


DW$T$34	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$39


DW$T$44	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
	.dwendtag DW$T$48

DW$T$42	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$41)
	.dwattr DW$T$42, DW_AT_address_class(0x20)

DW$T$63	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$63


DW$T$67	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$69


DW$T$71	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$73


DW$T$75	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$75


DW$T$77	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$77


DW$T$79	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
	.dwendtag DW$T$79

DW$T$33	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$32)
	.dwattr DW$T$33, DW_AT_address_class(0x20)
DW$T$38	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$38, DW_AT_address_class(0x20)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)

DW$T$88	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$90


DW$T$92	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$92


DW$T$94	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
	.dwendtag DW$T$94


DW$T$95	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$95


DW$T$97	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$222	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
	.dwendtag DW$T$97

DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$T$66	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$65)
	.dwattr DW$T$66, DW_AT_address_class(0x20)
DW$T$36	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$36, DW_AT_address_class(0x20)
DW$T$41	.dwtag  DW_TAG_const_type
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$32	.dwtag  DW_TAG_const_type
	.dwattr DW$T$32, DW_AT_type(*DW$T$6)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("SHA512_State"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)

DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("RSAKey")
	.dwattr DW$T$29, DW_AT_byte_size(0x24)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$227, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$228, DW_AT_name("bytes"), DW_AT_symbol_name("_bytes")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$229, DW_AT_name("modulus"), DW_AT_symbol_name("_modulus")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$230, DW_AT_name("exponent"), DW_AT_symbol_name("_exponent")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$231, DW_AT_name("private_exponent"), DW_AT_symbol_name("_private_exponent")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$232, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$233, DW_AT_name("q"), DW_AT_symbol_name("_q")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$234, DW_AT_name("iqmp"), DW_AT_symbol_name("_iqmp")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$235, DW_AT_name("comment"), DW_AT_symbol_name("_comment")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_byte_size(0x118)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$236, DW_AT_name("h"), DW_AT_symbol_name("_h")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$237, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$238, DW_AT_name("blkused"), DW_AT_symbol_name("_blkused")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$239, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x104]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25

DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x20)

DW$T$22	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$22, DW_AT_byte_size(0x80)
DW$240	.dwtag  DW_TAG_subrange_type
	.dwattr DW$240, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$24, DW_AT_byte_size(0x10)
DW$241	.dwtag  DW_TAG_subrange_type
	.dwattr DW$241, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$24


DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x80)
DW$242	.dwtag  DW_TAG_subrange_type
	.dwattr DW$242, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$21

DW$T$27	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$27, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("uint64"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x10)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$243, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$244, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)

	.dwattr DW$169, DW_AT_external(0x01)
	.dwattr DW$142, DW_AT_type(*DW$T$26)
	.dwattr DW$146, DW_AT_type(*DW$T$10)
	.dwattr DW$163, DW_AT_external(0x01)
	.dwattr DW$163, DW_AT_type(*DW$T$10)
	.dwattr DW$157, DW_AT_external(0x01)
	.dwattr DW$157, DW_AT_type(*DW$T$10)
	.dwattr DW$107, DW_AT_type(*DW$T$10)
	.dwattr DW$136, DW_AT_external(0x01)
	.dwattr DW$136, DW_AT_type(*DW$T$10)
	.dwattr DW$130, DW_AT_external(0x01)
	.dwattr DW$130, DW_AT_type(*DW$T$10)
	.dwattr DW$80, DW_AT_type(*DW$T$26)
	.dwattr DW$104, DW_AT_external(0x01)
	.dwattr DW$104, DW_AT_type(*DW$T$26)
	.dwattr DW$60, DW_AT_external(0x01)
	.dwattr DW$60, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$245, DW_AT_location[DW_OP_reg0]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$246, DW_AT_location[DW_OP_reg1]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$247, DW_AT_location[DW_OP_reg2]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$248, DW_AT_location[DW_OP_reg3]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$249, DW_AT_location[DW_OP_reg4]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$250, DW_AT_location[DW_OP_reg5]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$251, DW_AT_location[DW_OP_reg6]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$252, DW_AT_location[DW_OP_reg7]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$253, DW_AT_location[DW_OP_reg8]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$254, DW_AT_location[DW_OP_reg9]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$255, DW_AT_location[DW_OP_reg10]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$256, DW_AT_location[DW_OP_reg11]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$257, DW_AT_location[DW_OP_reg12]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$258, DW_AT_location[DW_OP_reg13]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$259, DW_AT_location[DW_OP_reg14]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$260, DW_AT_location[DW_OP_reg15]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$261, DW_AT_location[DW_OP_reg16]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$262, DW_AT_location[DW_OP_reg17]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$263, DW_AT_location[DW_OP_reg18]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$264, DW_AT_location[DW_OP_reg19]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$265, DW_AT_location[DW_OP_reg20]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$266, DW_AT_location[DW_OP_reg21]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$267, DW_AT_location[DW_OP_reg22]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$268, DW_AT_location[DW_OP_reg23]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$269, DW_AT_location[DW_OP_reg24]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$270, DW_AT_location[DW_OP_reg25]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$271, DW_AT_location[DW_OP_reg26]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$272, DW_AT_location[DW_OP_reg27]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$273, DW_AT_location[DW_OP_reg28]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$274, DW_AT_location[DW_OP_reg29]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$275, DW_AT_location[DW_OP_reg30]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$276, DW_AT_location[DW_OP_reg31]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$277, DW_AT_location[DW_OP_regx 0x20]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$278, DW_AT_location[DW_OP_regx 0x21]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$279, DW_AT_location[DW_OP_regx 0x22]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$280, DW_AT_location[DW_OP_regx 0x23]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$281, DW_AT_location[DW_OP_regx 0x24]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$282, DW_AT_location[DW_OP_regx 0x25]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$283, DW_AT_location[DW_OP_regx 0x26]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$284, DW_AT_location[DW_OP_regx 0x27]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$285, DW_AT_location[DW_OP_regx 0x28]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$286, DW_AT_location[DW_OP_regx 0x29]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$287, DW_AT_location[DW_OP_regx 0x2a]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$288, DW_AT_location[DW_OP_regx 0x2b]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$289, DW_AT_location[DW_OP_regx 0x2c]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$290, DW_AT_location[DW_OP_regx 0x2d]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$291, DW_AT_location[DW_OP_regx 0x2e]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$292, DW_AT_location[DW_OP_regx 0x2f]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$293, DW_AT_location[DW_OP_regx 0x30]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$294, DW_AT_location[DW_OP_regx 0x31]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$295, DW_AT_location[DW_OP_regx 0x32]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$296, DW_AT_location[DW_OP_regx 0x33]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$297, DW_AT_location[DW_OP_regx 0x34]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$298, DW_AT_location[DW_OP_regx 0x35]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$299, DW_AT_location[DW_OP_regx 0x36]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$300, DW_AT_location[DW_OP_regx 0x37]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$301, DW_AT_location[DW_OP_regx 0x38]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$302, DW_AT_location[DW_OP_regx 0x39]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$303, DW_AT_location[DW_OP_regx 0x3a]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$304, DW_AT_location[DW_OP_regx 0x3b]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$305, DW_AT_location[DW_OP_regx 0x3c]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$306, DW_AT_location[DW_OP_regx 0x3d]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$307, DW_AT_location[DW_OP_regx 0x3e]
DW$308	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$308, DW_AT_location[DW_OP_regx 0x3f]
DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$309, DW_AT_location[DW_OP_regx 0x40]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$310, DW_AT_location[DW_OP_regx 0x41]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$311, DW_AT_location[DW_OP_regx 0x42]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$312, DW_AT_location[DW_OP_regx 0x43]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$313, DW_AT_location[DW_OP_regx 0x44]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$314, DW_AT_location[DW_OP_regx 0x45]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$315, DW_AT_location[DW_OP_regx 0x46]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$316, DW_AT_location[DW_OP_regx 0x47]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$317, DW_AT_location[DW_OP_regx 0x48]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$318, DW_AT_location[DW_OP_regx 0x49]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$319, DW_AT_location[DW_OP_regx 0x4a]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$320, DW_AT_location[DW_OP_regx 0x4b]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$321, DW_AT_location[DW_OP_regx 0x4c]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$322, DW_AT_location[DW_OP_regx 0x4d]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$323, DW_AT_location[DW_OP_regx 0x4e]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$324, DW_AT_location[DW_OP_regx 0x4f]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$325, DW_AT_location[DW_OP_regx 0x50]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$326, DW_AT_location[DW_OP_regx 0x51]
DW$327	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$327, DW_AT_location[DW_OP_regx 0x52]
DW$328	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$328, DW_AT_location[DW_OP_regx 0x53]
DW$329	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$329, DW_AT_location[DW_OP_regx 0x54]
DW$330	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$330, DW_AT_location[DW_OP_regx 0x55]
DW$331	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$331, DW_AT_location[DW_OP_regx 0x56]
DW$332	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$332, DW_AT_location[DW_OP_regx 0x57]
DW$333	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$333, DW_AT_location[DW_OP_regx 0x58]
DW$334	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$334, DW_AT_location[DW_OP_regx 0x59]
DW$335	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$335, DW_AT_location[DW_OP_regx 0x5a]
DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$336, DW_AT_location[DW_OP_regx 0x5b]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$337, DW_AT_location[DW_OP_regx 0x5c]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$338, DW_AT_location[DW_OP_regx 0x5d]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$339, DW_AT_location[DW_OP_regx 0x5e]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$340, DW_AT_location[DW_OP_regx 0x5f]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$341, DW_AT_location[DW_OP_regx 0x60]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$342, DW_AT_location[DW_OP_regx 0x61]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$343, DW_AT_location[DW_OP_regx 0x62]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$344, DW_AT_location[DW_OP_regx 0x63]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$345, DW_AT_location[DW_OP_regx 0x64]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$346, DW_AT_location[DW_OP_regx 0x65]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$347, DW_AT_location[DW_OP_regx 0x66]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$348, DW_AT_location[DW_OP_regx 0x67]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$349, DW_AT_location[DW_OP_regx 0x68]
DW$350	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$350, DW_AT_location[DW_OP_regx 0x69]
DW$351	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$351, DW_AT_location[DW_OP_regx 0x6a]
DW$352	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$352, DW_AT_location[DW_OP_regx 0x6b]
DW$353	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$353, DW_AT_location[DW_OP_regx 0x6c]
DW$354	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$354, DW_AT_location[DW_OP_regx 0x6d]
DW$355	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$355, DW_AT_location[DW_OP_regx 0x6e]
DW$356	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$356, DW_AT_location[DW_OP_regx 0x6f]
DW$357	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$357, DW_AT_location[DW_OP_regx 0x70]
DW$358	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$358, DW_AT_location[DW_OP_regx 0x71]
DW$359	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$359, DW_AT_location[DW_OP_regx 0x72]
DW$360	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$360, DW_AT_location[DW_OP_regx 0x73]
DW$361	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$361, DW_AT_location[DW_OP_regx 0x74]
DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$362, DW_AT_location[DW_OP_regx 0x75]
DW$363	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$363, DW_AT_location[DW_OP_regx 0x76]
DW$364	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$364, DW_AT_location[DW_OP_regx 0x77]
DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$365, DW_AT_location[DW_OP_regx 0x78]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$366, DW_AT_location[DW_OP_regx 0x79]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$367, DW_AT_location[DW_OP_regx 0x7a]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$368, DW_AT_location[DW_OP_regx 0x7b]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$369, DW_AT_location[DW_OP_regx 0x7c]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$370, DW_AT_location[DW_OP_regx 0x7d]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$371, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

