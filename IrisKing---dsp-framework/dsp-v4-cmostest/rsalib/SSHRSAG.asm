;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Thu Feb 17 13:26:35 2011                                *
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
	.dwattr DW$CU, DW_AT_name("SSHRSAG.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("copybn"), DW_AT_symbol_name("_copybn")
	.dwattr DW$1, DW_AT_type(*DW$T$19)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_from_long"), DW_AT_symbol_name("_bignum_from_long")
	.dwattr DW$3, DW_AT_type(*DW$T$19)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$3


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("freebn"), DW_AT_symbol_name("_freebn")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$5


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("decbn"), DW_AT_symbol_name("_decbn")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$7


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("bigmul"), DW_AT_symbol_name("_bigmul")
	.dwattr DW$9, DW_AT_type(*DW$T$19)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$9


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("modinv"), DW_AT_symbol_name("_modinv")
	.dwattr DW$12, DW_AT_type(*DW$T$19)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$12


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_cmp"), DW_AT_symbol_name("_bignum_cmp")
	.dwattr DW$15, DW_AT_type(*DW$T$10)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$15


DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("primegen"), DW_AT_symbol_name("_primegen")
	.dwattr DW$18, DW_AT_type(*DW$T$19)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$18

;	E:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI8362 C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI8364 
	.sect	".text"
	.global	_rsa_generate

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_generate"), DW_AT_symbol_name("_rsa_generate")
	.dwattr DW$26, DW_AT_low_pc(_rsa_generate)
	.dwattr DW$26, DW_AT_high_pc(0x00)
	.dwattr DW$26, DW_AT_begin_file("SSHRSAG.C")
	.dwattr DW$26, DW_AT_begin_line(0x09)
	.dwattr DW$26, DW_AT_begin_column(0x05)
	.dwattr DW$26, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$26, DW_AT_skeletal(0x01)
	.dwpsn	"SSHRSAG.C",11,1

;******************************************************************************
;* FUNCTION NAME: _rsa_generate                                               *
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
_rsa_generate:
;** --------------------------------------------------------------------------*
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$27, DW_AT_type(*DW$T$45)
	.dwattr DW$27, DW_AT_location[DW_OP_reg4]
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_location[DW_OP_reg20]
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pfn"), DW_AT_symbol_name("_pfn")
	.dwattr DW$29, DW_AT_type(*DW$T$28)
	.dwattr DW$29, DW_AT_location[DW_OP_reg6]
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pfnparam"), DW_AT_symbol_name("_pfnparam")
	.dwattr DW$30, DW_AT_type(*DW$T$3)
	.dwattr DW$30, DW_AT_location[DW_OP_reg22]
;** 42	-----------------------    (*pfn)(pfnparam, 4, 1, 65536);
;** 43	-----------------------    C$1 = ((unsigned)bits>>31)+bits>>1;
;** 43	-----------------------    (*pfn)(pfnparam, 3, 1, -(1923012/C$1));
;** 44	-----------------------    (*pfn)(pfnparam, 4, 2, 65536);
;** 45	-----------------------    (*pfn)(pfnparam, 3, 2, 1923012/(C$1-bits));
;** 46	-----------------------    (*pfn)(pfnparam, 4, 3, 16384);
;** 47	-----------------------    (*pfn)(pfnparam, 2, 3, 5);
;** 48	-----------------------    (*pfn)(pfnparam, 5, 0, 0);
;** 53	-----------------------    (*key).exponent = bignum_from_long(37uL);
;** 62	-----------------------    (*key).p = primegen(C$1, 37, 1, NULL, 1, pfn, pfnparam);

           STW     .D2T1   A13,*SP--(32)     ; |11| 
||         MV      .L1X    SP,A31            ; |11| 

           MV      .L2X    A6,B11            ; |11| 
||         STDW    .D2T2   B11:B10,*+SP(24)

           CALL    .S2     B11               ; |42| 
           MV      .L2X    A4,B10            ; |11| 
           MV      .L1X    B6,A4             ; |11| 

           ZERO    .L2     B6                ; |42| 
||         MV      .L1X    B6,A10            ; |11| 
||         STDW    .D1T1   A11:A10,*-A31(24)

           MVKH    .S2     0x10000,B6        ; |42| 
||         STW     .D2T2   B13,*+SP(20)

           ADDKPC  .S2     RL2,B3,0          ; |42| 
||         MVK     .L2     0x4,B4            ; |42| 
||         MV      .L1X    B4,A12            ; |11| 
||         STW     .D1T1   A12,*-A31(16)
||         MVK     .S1     0x1,A6            ; |42| 
||         MV      .D2     B3,B13

RL2:       ; CALL OCCURS {B11}               ; |42| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __divi            ; |43| 
           SHRU    .S1     A12,31,A3         ; |43| 
           ADD     .L1     A12,A3,A3         ; |43| 
           SHR     .S1     A3,1,A11          ; |43| 
           MVKL    .S1     0x1d57c4,A4       ; |43| 

           ADDKPC  .S2     RL4,B3,0          ; |43| 
||         MV      .L2X    A11,B4            ; |43| 
||         MVKH    .S1     0x1d57c4,A4       ; |43| 

RL4:       ; CALL OCCURS {__divi}            ; |43| 
           CALL    .S2     B11               ; |43| 
           NEG     .L1     A4,A3             ; |43| 
           ADDKPC  .S2     RL5,B3,0          ; |43| 
           MV      .L1     A10,A4            ; |43| 
           MV      .L2X    A3,B6             ; |43| 

           MVK     .D2     0x3,B4            ; |43| 
||         MVK     .S1     0x1,A6            ; |43| 

RL5:       ; CALL OCCURS {B11}               ; |43| 
           CALL    .S2     B11               ; |44| 
           ZERO    .L2     B6                ; |44| 
           MVKH    .S2     0x10000,B6        ; |44| 
           ADDKPC  .S2     RL6,B3,0          ; |44| 
           MVK     .L1     0x2,A6            ; |44| 

           MVK     .L2     0x4,B4            ; |44| 
||         MV      .S1     A10,A4            ; |44| 

RL6:       ; CALL OCCURS {B11}               ; |44| 
           CALL    .S1     __divi            ; |45| 
           MV      .L2X    A11,B4            ; |45| Register A/B partition copy
           MVKL    .S1     0x1d57c4,A4       ; |45| 
           ADDKPC  .S2     RL8,B3,0          ; |45| 
           SUB     .L2X    B4,A12,B4         ; |45| 
           MVKH    .S1     0x1d57c4,A4       ; |45| 
RL8:       ; CALL OCCURS {__divi}            ; |45| 
           CALL    .S2     B11               ; |45| 
           ADDKPC  .S2     RL9,B3,0          ; |45| 
           MV      .L2X    A4,B6             ; |45| 
           MV      .L1     A10,A4            ; |45| 
           MVK     .S1     0x2,A6            ; |45| 
           MVK     .D2     0x3,B4            ; |45| 
RL9:       ; CALL OCCURS {B11}               ; |45| 
           CALL    .S2     B11               ; |46| 
           MVK     .S2     0x4000,B6         ; |46| 
           ADDKPC  .S2     RL10,B3,0         ; |46| 
           MVK     .L1     0x3,A6            ; |46| 
           MVK     .L2     0x4,B4            ; |46| 
           MV      .S1     A10,A4            ; |46| 
RL10:      ; CALL OCCURS {B11}               ; |46| 
           CALL    .S2     B11               ; |47| 
           ADDKPC  .S2     RL11,B3,0         ; |47| 
           MVK     .L2     0x5,B6            ; |47| 
           MVK     .L1     0x3,A6            ; |47| 
           MVK     .D2     0x2,B4            ; |47| 
           MV      .S1     A10,A4            ; |47| 
RL11:      ; CALL OCCURS {B11}               ; |47| 
           CALL    .S2     B11               ; |48| 
           ADDKPC  .S2     RL12,B3,0         ; |48| 
           ZERO    .L2     B6                ; |48| 
           ZERO    .L1     A6                ; |48| 
           MVK     .D2     0x5,B4            ; |48| 
           MV      .S1     A10,A4            ; |48| 
RL12:      ; CALL OCCURS {B11}               ; |48| 
           CALL    .S1     _bignum_from_long ; |53| 
           ADDKPC  .S2     RL13,B3,2         ; |53| 
           ZERO    .L1     A5                ; |53| 
           MVK     .S1     0x25,A4           ; |53| 
RL13:      ; CALL OCCURS {_bignum_from_long}  ; |53| 
           CALL    .S1     _primegen         ; |62| 
           ZERO    .L2     B6                ; |62| 
           MV      .L1     A4,A3             ; |53| 
           MVK     .S2     0x25,B4           ; |62| 
           MVK     .D1     0x1,A6            ; |62| 

           MVK     .S1     0x1,A8            ; |62| 
||         MV      .L2     B11,B8            ; |62| 
||         STW     .D2T1   A3,*+B10(12)      ; |53| 
||         MV      .L1     A11,A4            ; |62| 
||         ADDKPC  .S2     RL14,B3,0         ; |62| 

RL14:      ; CALL OCCURS {_primegen}         ; |62| 
;** --------------------------------------------------------------------------*
;** 64	-----------------------    (*key).q = v$1 = primegen(bits-C$1, 37, 1, NULL, 2, pfn, pfnparam);
;** 70	-----------------------    if ( bignum_cmp((*key).p, v$1) >= 0 ) goto g3;
;** 71	-----------------------    t = (*key).p;
;** 72	-----------------------    (*key).p = (*key).q;
;** 73	-----------------------    (*key).q = t;
;**	-----------------------g3:
;** 81	-----------------------    (*pfn)(pfnparam, 6, 3, 1);
;** 82	-----------------------    (*key).modulus = bigmul((*key).p, (*key).q);
;** 83	-----------------------    (*pfn)(pfnparam, 6, 3, 2);
;** 84	-----------------------    pm1 = copybn((*key).p);
;** 85	-----------------------    decbn(pm1);
;** 86	-----------------------    qm1 = copybn((*key).q);
;** 87	-----------------------    decbn(qm1);
;** 88	-----------------------    phi_n = bigmul(pm1, qm1);
;** 89	-----------------------    (*pfn)(pfnparam, 6, 3, 3);
           CALL    .S1     _primegen         ; |64| 
           MVK     .S2     0x25,B4           ; |64| 
           STW     .D2T1   A4,*+B10(20)      ; |62| 
           ADDKPC  .S2     RL15,B3,0         ; |64| 
           SUB     .L1     A12,A11,A4        ; |64| 

           MV      .L2     B11,B8            ; |64| 
||         MVK     .S1     0x2,A8            ; |64| 
||         ZERO    .D2     B6                ; |64| 
||         MVK     .D1     0x1,A6            ; |64| 

RL15:      ; CALL OCCURS {_primegen}         ; |64| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_cmp       ; |70| 

           LDW     .D2T1   *+B10(20),A4      ; |70| 
||         MV      .L1     A4,A3             ; |64| 
||         MV      .L2X    A4,B4             ; |64| 

           ADDKPC  .S2     RL16,B3,0         ; |70| 
           STW     .D2T1   A3,*+B10(24)      ; |64| 
           NOP             2
RL16:      ; CALL OCCURS {_bignum_cmp}       ; |70| 
           CMPLT   .L1     A4,0,A0           ; |70| 
   [ A0]   LDW     .D2T2   *+B10(20),B5      ; |71| 

   [ A0]   LDW     .D2T2   *+B10(24),B4      ; |72| 
||         CALL    .S2     B11               ; |81| 

           MVK     .L2     0x1,B6            ; |81| 
           MVK     .S1     0x3,A6            ; |81| 
           MV      .L1     A10,A4            ; |81| 
   [ A0]   STW     .D2T2   B5,*+B10(24)      ; |73| 

   [ A0]   STW     .D2T2   B4,*+B10(20)      ; |72| 
||         MVK     .L2     0x6,B4            ; |81| 
||         ADDKPC  .S2     RL17,B3,0         ; |81| 

RL17:      ; CALL OCCURS {B11}               ; |81| 

           LDW     .D2T2   *+B10(24),B4      ; |82| 
||         CALL    .S1     _bigmul           ; |82| 

           LDW     .D2T1   *+B10(20),A4      ; |82| 
           ADDKPC  .S2     RL18,B3,3         ; |82| 
RL18:      ; CALL OCCURS {_bigmul}           ; |82| 
           CALL    .S2     B11               ; |83| 
           STW     .D2T1   A4,*+B10(8)       ; |82| 
           MVK     .S1     0x3,A6            ; |83| 
           MVK     .L2     0x2,B6            ; |83| 
           MVK     .L2     0x6,B4            ; |83| 

           ADDKPC  .S2     RL19,B3,0         ; |83| 
||         MV      .L1     A10,A4            ; |83| 

RL19:      ; CALL OCCURS {B11}               ; |83| 
           CALL    .S1     _copybn           ; |84| 
           LDW     .D2T1   *+B10(20),A4      ; |84| 
           ADDKPC  .S2     RL20,B3,3         ; |84| 
RL20:      ; CALL OCCURS {_copybn}           ; |84| 
           CALL    .S1     _decbn            ; |85| 
           MV      .L1     A4,A11            ; |84| 
           ADDKPC  .S2     RL21,B3,3         ; |85| 
RL21:      ; CALL OCCURS {_decbn}            ; |85| 
           CALL    .S1     _copybn           ; |86| 
           LDW     .D2T1   *+B10(24),A4      ; |86| 
           ADDKPC  .S2     RL22,B3,3         ; |86| 
RL22:      ; CALL OCCURS {_copybn}           ; |86| 
           CALL    .S1     _decbn            ; |87| 
           MV      .L1     A4,A13            ; |86| 
           ADDKPC  .S2     RL23,B3,3         ; |87| 
RL23:      ; CALL OCCURS {_decbn}            ; |87| 
           CALL    .S1     _bigmul           ; |88| 
           MV      .L1     A11,A4            ; |88| 
           MV      .L2X    A13,B4            ; |88| 
           ADDKPC  .S2     RL24,B3,2         ; |88| 
RL24:      ; CALL OCCURS {_bigmul}           ; |88| 
           CALL    .S2     B11               ; |89| 
           MVK     .D2     0x6,B4            ; |89| 
           MV      .D1     A4,A12            ; |88| 
           MV      .L1     A10,A4            ; |89| 
           MVK     .S1     0x3,A6            ; |89| 

           MVK     .L2     0x3,B6            ; |89| 
||         ADDKPC  .S2     RL25,B3,0         ; |89| 

RL25:      ; CALL OCCURS {B11}               ; |89| 
;** --------------------------------------------------------------------------*
;** 90	-----------------------    freebn(pm1);
;** 91	-----------------------    freebn(qm1);
           CALL    .S1     _freebn           ; |90| 
           ADDKPC  .S2     RL26,B3,3         ; |90| 
           MV      .L1     A11,A4            ; |90| 
RL26:      ; CALL OCCURS {_freebn}           ; |90| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _freebn           ; |91| 
           ADDKPC  .S2     RL27,B3,3         ; |91| 
           MV      .L1     A13,A4            ; |91| 
RL27:      ; CALL OCCURS {_freebn}           ; |91| 
;** --------------------------------------------------------------------------*
;** 92	-----------------------    (*key).private_exponent = modinv((*key).exponent, phi_n);
;** 93	-----------------------    (*pfn)(pfnparam, 6, 3, 4);
;** 94	-----------------------    (*key).iqmp = modinv((*key).q, (*key).p);
;** 95	-----------------------    (*pfn)(pfnparam, 6, 3, 5);
;** 100	-----------------------    freebn(phi_n);
;** 102	-----------------------    return 1;
           CALL    .S1     _modinv           ; |92| 
           LDW     .D2T1   *+B10(12),A4      ; |92| 
           ADDKPC  .S2     RL28,B3,2         ; |92| 
           MV      .L2X    A12,B4            ; |92| 
RL28:      ; CALL OCCURS {_modinv}           ; |92| 
;** --------------------------------------------------------------------------*
           CALL    .S2     B11               ; |93| 
           STW     .D2T1   A4,*+B10(16)      ; |92| 
           ADDKPC  .S2     RL29,B3,0         ; |93| 
           MV      .L1     A10,A4            ; |93| 
           MVK     .L2     0x4,B6            ; |93| 

           MVK     .S1     0x3,A6            ; |93| 
||         MVK     .D2     0x6,B4            ; |93| 

RL29:      ; CALL OCCURS {B11}               ; |93| 

           CALL    .S1     _modinv           ; |94| 
||         LDW     .D2T2   *+B10(20),B4      ; |94| 

           LDW     .D2T1   *+B10(24),A4      ; |94| 
           ADDKPC  .S2     RL30,B3,3         ; |94| 
RL30:      ; CALL OCCURS {_modinv}           ; |94| 
           CALL    .S2     B11               ; |95| 
           ADDKPC  .S2     RL31,B3,0         ; |95| 
           MVK     .L2     0x5,B6            ; |95| 
           MVK     .S1     0x3,A6            ; |95| 
           MVK     .L2     0x6,B4            ; |95| 

           STW     .D2T1   A4,*+B10(28)      ; |94| 
||         MV      .L1     A10,A4            ; |95| 

RL31:      ; CALL OCCURS {B11}               ; |95| 
           CALL    .S1     _freebn           ; |100| 
           ADDKPC  .S2     RL32,B3,3         ; |100| 
           MV      .L1     A12,A4            ; |100| 
RL32:      ; CALL OCCURS {_freebn}           ; |100| 
;** --------------------------------------------------------------------------*
           MV      .L1X    SP,A31            ; |103| 

           LDW     .D1T1   *+A31(16),A12     ; |103| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |103| 
||         MV      .L2     B13,B3            ; |103| 

           RET     .S2     B3                ; |103| 
||         LDDW    .D1T1   *+A31(8),A11:A10  ; |103| 
||         LDW     .D2T2   *+SP(20),B13      ; |103| 

           LDW     .D2T1   *++SP(32),A13     ; |103| 
           NOP             3
	.dwpsn	"SSHRSAG.C",103,1
           MVK     .L1     0x1,A4            ; |102| 
           ; BRANCH OCCURS {B3}              ; |103| 
	.dwattr DW$26, DW_AT_end_file("SSHRSAG.C")
	.dwattr DW$26, DW_AT_end_line(0x67)
	.dwattr DW$26, DW_AT_end_column(0x01)
	.dwendtag DW$26

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_copybn
	.global	_bignum_from_long
	.global	_freebn
	.global	_decbn
	.global	_bigmul
	.global	_modinv
	.global	_bignum_cmp
	.global	_primegen
	.global	__divi

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Bignum"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$23	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$24


DW$T$25	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$25


DW$T$29	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$29

DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("progfn_t"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)

DW$T$41	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$41

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$43	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$43


DW$T$46	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$45)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$46

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)
DW$T$45	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$45, DW_AT_address_class(0x20)
DW$T$27	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$27, DW_AT_address_class(0x20)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("RSAKey")
	.dwattr DW$T$22, DW_AT_byte_size(0x24)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$49, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_name("bytes"), DW_AT_symbol_name("_bytes")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$51, DW_AT_name("modulus"), DW_AT_symbol_name("_modulus")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$52, DW_AT_name("exponent"), DW_AT_symbol_name("_exponent")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$53, DW_AT_name("private_exponent"), DW_AT_symbol_name("_private_exponent")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$54, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_name("q"), DW_AT_symbol_name("_q")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$56, DW_AT_name("iqmp"), DW_AT_symbol_name("_iqmp")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$57, DW_AT_name("comment"), DW_AT_symbol_name("_comment")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$26	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$26

DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_address_class(0x20)
DW$T$20	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$20, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$20, DW_AT_byte_size(0x01)

	.dwattr DW$26, DW_AT_external(0x01)
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$62	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$62, DW_AT_location[DW_OP_reg0]
DW$63	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$63, DW_AT_location[DW_OP_reg1]
DW$64	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$64, DW_AT_location[DW_OP_reg2]
DW$65	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$65, DW_AT_location[DW_OP_reg3]
DW$66	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$66, DW_AT_location[DW_OP_reg4]
DW$67	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$67, DW_AT_location[DW_OP_reg5]
DW$68	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$68, DW_AT_location[DW_OP_reg6]
DW$69	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$69, DW_AT_location[DW_OP_reg7]
DW$70	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$70, DW_AT_location[DW_OP_reg8]
DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$71, DW_AT_location[DW_OP_reg9]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$72, DW_AT_location[DW_OP_reg10]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$73, DW_AT_location[DW_OP_reg11]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$74, DW_AT_location[DW_OP_reg12]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$75, DW_AT_location[DW_OP_reg13]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$76, DW_AT_location[DW_OP_reg14]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$77, DW_AT_location[DW_OP_reg15]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$78, DW_AT_location[DW_OP_reg16]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$79, DW_AT_location[DW_OP_reg17]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$80, DW_AT_location[DW_OP_reg18]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$81, DW_AT_location[DW_OP_reg19]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$82, DW_AT_location[DW_OP_reg20]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$83, DW_AT_location[DW_OP_reg21]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$84, DW_AT_location[DW_OP_reg22]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$85, DW_AT_location[DW_OP_reg23]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$86, DW_AT_location[DW_OP_reg24]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$87, DW_AT_location[DW_OP_reg25]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$88, DW_AT_location[DW_OP_reg26]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$89, DW_AT_location[DW_OP_reg27]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$90, DW_AT_location[DW_OP_reg28]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$91, DW_AT_location[DW_OP_reg29]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$92, DW_AT_location[DW_OP_reg30]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$93, DW_AT_location[DW_OP_reg31]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$94, DW_AT_location[DW_OP_regx 0x20]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$95, DW_AT_location[DW_OP_regx 0x21]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$96, DW_AT_location[DW_OP_regx 0x22]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$97, DW_AT_location[DW_OP_regx 0x23]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$98, DW_AT_location[DW_OP_regx 0x24]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$99, DW_AT_location[DW_OP_regx 0x25]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$100, DW_AT_location[DW_OP_regx 0x26]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$101, DW_AT_location[DW_OP_regx 0x27]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$102, DW_AT_location[DW_OP_regx 0x28]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$103, DW_AT_location[DW_OP_regx 0x29]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x2a]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x2b]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x2c]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x2d]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x2e]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x2f]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x30]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x31]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x32]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x33]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x34]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x35]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x36]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x37]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x38]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x39]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x3a]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x3b]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x3c]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x3d]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x3e]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x3f]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x40]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x41]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x42]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x43]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x44]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x45]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x46]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x47]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x48]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x49]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x4a]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x4b]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x4c]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x4d]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x4e]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x4f]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x50]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x51]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x52]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x53]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x54]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x55]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x56]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x57]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x58]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x59]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x5a]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x5b]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x5c]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x5d]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x5e]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x5f]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x60]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x61]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x62]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x63]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x64]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x65]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x66]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x67]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x68]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x69]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x6a]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x6b]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x6c]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x6d]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x6e]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x6f]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x70]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x71]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x72]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x73]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x74]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x75]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x76]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x77]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x78]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x79]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x7a]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x7b]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x7c]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x7d]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

