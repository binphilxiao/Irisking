;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Jul 30 09:19:06 2007                                *
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
	.dwattr DW$CU, DW_AT_name("SSHDSSG.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("random_byte"), DW_AT_symbol_name("_random_byte")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("copybn"), DW_AT_symbol_name("_copybn")
	.dwattr DW$2, DW_AT_type(*DW$T$19)
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$2


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("bn_power_2"), DW_AT_symbol_name("_bn_power_2")
	.dwattr DW$4, DW_AT_type(*DW$T$19)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$4


DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_from_long"), DW_AT_symbol_name("_bignum_from_long")
	.dwattr DW$6, DW_AT_type(*DW$T$19)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$6


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("freebn"), DW_AT_symbol_name("_freebn")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$8


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("modpow"), DW_AT_symbol_name("_modpow")
	.dwattr DW$10, DW_AT_type(*DW$T$19)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$10


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("decbn"), DW_AT_symbol_name("_decbn")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$14


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_set_bit"), DW_AT_symbol_name("_bignum_set_bit")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$16


DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_add_long"), DW_AT_symbol_name("_bignum_add_long")
	.dwattr DW$20, DW_AT_type(*DW$T$19)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$20


DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("bigdiv"), DW_AT_symbol_name("_bigdiv")
	.dwattr DW$23, DW_AT_type(*DW$T$19)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$23


DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_cmp"), DW_AT_symbol_name("_bignum_cmp")
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$26


DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("primegen"), DW_AT_symbol_name("_primegen")
	.dwattr DW$29, DW_AT_type(*DW$T$19)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$29

DW$37	.dwtag  DW_TAG_variable, DW_AT_name("One"), DW_AT_symbol_name("_One")
	.dwattr DW$37, DW_AT_type(*DW$T$19)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe --gen_opt_info=2 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI0522 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI0524 --opt_info_filename=D:/pred/dsp/vport/Debug/SSHDSSG.nfo 
	.sect	".text"
	.global	_dsa_generate

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("dsa_generate"), DW_AT_symbol_name("_dsa_generate")
	.dwattr DW$38, DW_AT_low_pc(_dsa_generate)
	.dwattr DW$38, DW_AT_high_pc(0x00)
	.dwattr DW$38, DW_AT_begin_file("SSHDSSG.C")
	.dwattr DW$38, DW_AT_begin_line(0x08)
	.dwattr DW$38, DW_AT_begin_column(0x05)
	.dwattr DW$38, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$38, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSSG.C",10,1

;******************************************************************************
;* FUNCTION NAME: _dsa_generate                                               *
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
_dsa_generate:
;** --------------------------------------------------------------------------*
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$39, DW_AT_type(*DW$T$56)
	.dwattr DW$39, DW_AT_location[DW_OP_reg4]
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_location[DW_OP_reg20]
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pfn"), DW_AT_symbol_name("_pfn")
	.dwattr DW$41, DW_AT_type(*DW$T$29)
	.dwattr DW$41, DW_AT_location[DW_OP_reg6]
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pfnparam"), DW_AT_symbol_name("_pfnparam")
	.dwattr DW$42, DW_AT_type(*DW$T$3)
	.dwattr DW$42, DW_AT_location[DW_OP_reg22]
;** 42	-----------------------    (*pfn)(pfnparam, 4, 1, 10240);
;** 43	-----------------------    (*pfn)(pfnparam, 3, 1, (-12018));
;** 44	-----------------------    (*pfn)(pfnparam, 4, 2, bits<<6);
;** 45	-----------------------    (*pfn)(pfnparam, 3, 2, -(1923012/bits));
;** 56	-----------------------    (*pfn)(pfnparam, 4, 3, 8192);
;** 57	-----------------------    (*pfn)(pfnparam, 3, 3, (-32768));
;** 68	-----------------------    (*pfn)(pfnparam, 4, 4, 8192);
;** 69	-----------------------    (*pfn)(pfnparam, 3, 4, (-49152));
;** 71	-----------------------    (*pfn)(pfnparam, 5, 0, 0);
;** 76	-----------------------    (*key).q = v$1 = primegen(160, 2, 2, NULL, 1, pfn, pfnparam);

           STW     .D2T1   A15,*SP--(48)     ; |10| 
||         MV      .L1X    SP,A31            ; |10| 

           MV      .L2X    A6,B11            ; |10| 
||         STDW    .D2T2   B11:B10,*+SP(32)

           CALL    .S2     B11               ; |42| 
           STDW    .D1T1   A11:A10,*-A31(40)
           MV      .L1X    B6,A10            ; |10| 
           STDW    .D1T1   A13:A12,*-A31(32)

           STW     .D2T2   B3,*+SP(28)
||         MV      .S1     A4,A12            ; |10| 
||         MV      .L1X    B6,A4             ; |10| 
||         MVK     .S2     0x2800,B6         ; |42| 

           ADDKPC  .S2     RL1,B3,0          ; |42| 
||         MVK     .L2     0x4,B4            ; |42| 
||         MV      .L1X    B4,A11            ; |10| 
||         STW     .D1T1   A14,*-A31(24)
||         MVK     .S1     0x1,A6            ; |42| 
||         STDW    .D2T2   B13:B12,*+SP(40)

RL1:       ; CALL OCCURS {B11}               ; |42| 
;** --------------------------------------------------------------------------*
           CALL    .S2     B11               ; |43| 
           MVK     .S2     0xffffd10e,B6     ; |43| 
           ADDKPC  .S2     RL2,B3,0          ; |43| 
           MVK     .L1     0x1,A6            ; |43| 
           MVK     .L2     0x3,B4            ; |43| 
           MV      .S1     A10,A4            ; |43| 
RL2:       ; CALL OCCURS {B11}               ; |43| 
           CALL    .S2     B11               ; |44| 
           SHL     .S2X    A11,6,B6          ; |44| 
           ADDKPC  .S2     RL3,B3,0          ; |44| 
           MVK     .L1     0x2,A6            ; |44| 
           MVK     .L2     0x4,B4            ; |44| 
           MV      .S1     A10,A4            ; |44| 
RL3:       ; CALL OCCURS {B11}               ; |44| 
           CALL    .S1     __divi            ; |45| 
           MVKL    .S1     0x1d57c4,A4       ; |45| 
           ADDKPC  .S2     RL5,B3,1          ; |45| 
           MVKH    .S1     0x1d57c4,A4       ; |45| 
           MV      .L2X    A11,B4            ; |45| 
RL5:       ; CALL OCCURS {__divi}            ; |45| 
           CALL    .S2     B11               ; |45| 
           NEG     .L1     A4,A3             ; |45| 
           MVK     .D2     0x3,B4            ; |45| 
           MVK     .S1     0x2,A6            ; |45| 
           MV      .L1     A10,A4            ; |45| 

           MV      .L2X    A3,B6             ; |45| 
||         ADDKPC  .S2     RL6,B3,0          ; |45| 

RL6:       ; CALL OCCURS {B11}               ; |45| 
           CALL    .S2     B11               ; |56| 
           MVK     .S2     0x2000,B6         ; |56| 
           MV      .S1     A10,A4            ; |56| 
           MVK     .L2     0x4,B4            ; |56| 
           MVK     .L1     0x3,A6            ; |56| 
           ADDKPC  .S2     RL7,B3,0          ; |56| 
RL7:       ; CALL OCCURS {B11}               ; |56| 
           CALL    .S2     B11               ; |57| 
           MVK     .S2     0xffff8000,B6     ; |57| 
           MV      .S1     A10,A4            ; |57| 
           MVK     .L2     0x3,B4            ; |57| 
           MVK     .L1     0x3,A6            ; |57| 
           ADDKPC  .S2     RL8,B3,0          ; |57| 
RL8:       ; CALL OCCURS {B11}               ; |57| 
           CALL    .S2     B11               ; |68| 
           MVK     .S2     0x2000,B6         ; |68| 
           MV      .S1     A10,A4            ; |68| 
           MVK     .L2     0x4,B4            ; |68| 
           MVK     .L1     0x4,A6            ; |68| 
           ADDKPC  .S2     RL9,B3,0          ; |68| 
RL9:       ; CALL OCCURS {B11}               ; |68| 
           CALL    .S2     B11               ; |69| 
           MVKL    .S2     0xffff4000,B6     ; |69| 
           MVKH    .S2     0xffff4000,B6     ; |69| 
           MV      .S1     A10,A4            ; |69| 
           MVK     .L2     0x3,B4            ; |69| 

           MVK     .L1     0x4,A6            ; |69| 
||         ADDKPC  .S2     RL10,B3,0         ; |69| 

RL10:      ; CALL OCCURS {B11}               ; |69| 
           CALL    .S2     B11               ; |71| 
           MV      .S1     A10,A4            ; |71| 
           MVK     .D2     0x5,B4            ; |71| 
           ZERO    .L1     A6                ; |71| 
           ZERO    .L2     B6                ; |71| 
           ADDKPC  .S2     RL11,B3,0         ; |71| 
RL11:      ; CALL OCCURS {B11}               ; |71| 
           CALL    .S1     _primegen         ; |76| 
           MVK     .L2     0x2,B4            ; |76| 
           MVK     .S1     0xa0,A4           ; |76| 
           MVK     .D1     0x2,A6            ; |76| 
           ZERO    .D2     B6                ; |76| 

           MVK     .L1     0x1,A8            ; |76| 
||         MV      .L2     B11,B8            ; |76| 
||         ADDKPC  .S2     RL12,B3,0         ; |76| 

RL12:      ; CALL OCCURS {_primegen}         ; |76| 
;** --------------------------------------------------------------------------*
;** 81	-----------------------    (*key).p = v$2 = primegen(bits-160, 2, 2, v$1, 2, pfn, pfnparam);
;** 89	-----------------------    power = bigdiv(v$2, (*key).q);
;** 90	-----------------------    h = bignum_from_long(1uL);
;** 91	-----------------------    progress = 1;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
           CALL    .S1     _primegen         ; |81| 
           MVK     .L1     0x2,A6            ; |81| 
           MV      .L2X    A4,B6             ; |76| 
           MV      .L2X    A4,B4             ; |76| 
           MVK     .S1     160,A3            ; |81| 

           ADDKPC  .S2     RL13,B3,0         ; |81| 
||         MVK     .L2     0x2,B4            ; |81| 
||         SUB     .L1     A11,A3,A4         ; |81| 
||         STW     .D1T2   B4,*+A12(4)       ; |76| 
||         MV      .D2     B11,B8            ; |81| 
||         MVK     .S1     0x2,A8            ; |81| 

RL13:      ; CALL OCCURS {_primegen}         ; |81| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bigdiv           ; |89| 
           LDW     .D1T2   *+A12(4),B4       ; |89| 
           ADDKPC  .S2     RL14,B3,0         ; |89| 
           STW     .D1T1   A4,*A12           ; |81| 
           NOP             2
RL14:      ; CALL OCCURS {_bigdiv}           ; |89| 
           CALL    .S1     _bignum_from_long ; |90| 
           ZERO    .D1     A5                ; |90| 
           MV      .S1     A4,A14            ; |89| 
           MVK     .L1     0x1,A4            ; |90| 
           ADDKPC  .S2     RL15,B3,1         ; |90| 
RL15:      ; CALL OCCURS {_bignum_from_long}  ; |90| 
;** --------------------------------------------------------------------------*
           CALL    .S2     B11               ; |93| 
           NOP             2
           MVK     .L2     0x1,B10           ; |91| 
	.dwpsn	"SSHDSSG.C",92,0
           MV      .L1     A4,A11            ; |90| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L1:    
DW$L$_dsa_generate$6$B:
;**	-----------------------g2:
;** 93	-----------------------    (*pfn)(pfnparam, 6, 3, progress);
;** 94	-----------------------    g = modpow(h, power, (*key).p);
;** 96	-----------------------    if ( bignum_cmp(g, One) > 0 ) goto g4;

           ADDKPC  .S2     RL16,B3,0         ; |93| 
||         MV      .L2     B10,B6            ; |93| 
||         MV      .L1     A10,A4            ; |93| 
||         MVK     .S1     0x3,A6            ; |93| 
||         MVK     .D2     0x6,B4            ; |93| 

RL16:      ; CALL OCCURS {B11}               ; |93| 
DW$L$_dsa_generate$6$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$7$B:
           CALL    .S1     _modpow           ; |94| 
           LDW     .D1T1   *A12,A6           ; |94| 
           ADDKPC  .S2     RL17,B3,1         ; |94| 
           MV      .L2X    A14,B4            ; |94| 
           MV      .L1     A11,A4            ; |94| 
RL17:      ; CALL OCCURS {_modpow}           ; |94| 
           MVKL    .S1     _One,A3           ; |96| 

           MVKH    .S1     _One,A3           ; |96| 
||         CALL    .S2     _bignum_cmp       ; |96| 

           LDW     .D1T2   *A3,B4            ; |96| 
           MV      .L1     A4,A13            ; |94| 
           ADDKPC  .S2     RL18,B3,2         ; |96| 
RL18:      ; CALL OCCURS {_bignum_cmp}       ; |96| 
DW$L$_dsa_generate$7$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$8$B:
           CMPGT   .L1     A4,0,A0           ; |96| 
   [ A0]   B       .S1     L2                ; |96| 
   [!A0]   CALL    .S1     _bignum_add_long  ; |98| 
   [ A0]   CALL    .S1     _freebn           ; |102| 
           NOP             3
           ; BRANCHCC OCCURS {L2}            ; |96| 
DW$L$_dsa_generate$8$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$9$B:
;** 97	-----------------------    tmp = h;
;** 98	-----------------------    a$1 = bignum_add_long(tmp, 1uL);
;** 98	-----------------------    h = a$1;
;** 99	-----------------------    freebn(tmp);
;** 93	-----------------------    ++progress;
;** 92	-----------------------    goto g2;

           MVK     .L2     0x1,B4            ; |98| 
||         ZERO    .D2     B5                ; |98| 
||         MV      .L1     A11,A4            ; |97| 
||         ADDKPC  .S2     RL19,B3,0         ; |98| 

RL19:      ; CALL OCCURS {_bignum_add_long}  ; |98| 
DW$L$_dsa_generate$9$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$10$B:
           CALL    .S1     _freebn           ; |99| 
           MV      .L1     A11,A3            ; |97| 
           ADDKPC  .S2     RL20,B3,1         ; |99| 
           MV      .S1     A4,A11            ; |98| 
           MV      .L1     A3,A4             ; |99| 
RL20:      ; CALL OCCURS {_freebn}           ; |99| 
DW$L$_dsa_generate$10$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$11$B:

           B       .S1     L1                ; |92| 
||         ADD     .L2     1,B10,B10         ; |93| 

           CALL    .S2     B11               ; |93| 
	.dwpsn	"SSHDSSG.C",100,0
           NOP             4
           ; BRANCH OCCURS {L1}              ; |92| 
DW$L$_dsa_generate$11$E:
;** --------------------------------------------------------------------------*
L2:    
;**	-----------------------g4:
;** 101	-----------------------    (*key).g = g;
;** 102	-----------------------    freebn(h);
;** 109	-----------------------    qm1 = copybn((*key).q);
;** 110	-----------------------    decbn(qm1);
;**  	-----------------------    K$40 = 159;
;** 111	-----------------------    progress = 1;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
           ADDKPC  .S2     RL21,B3,0         ; |102| 

           STW     .D1T1   A13,*+A12(8)      ; |101| 
||         MV      .L1     A11,A4            ; |102| 

RL21:      ; CALL OCCURS {_freebn}           ; |102| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _copybn           ; |109| 
           LDW     .D1T1   *+A12(4),A4       ; |109| 
           ADDKPC  .S2     RL22,B3,3         ; |109| 
RL22:      ; CALL OCCURS {_copybn}           ; |109| 
           CALL    .S1     _decbn            ; |110| 
           ADDKPC  .S2     RL23,B3,3         ; |110| 
           MV      .L2X    A4,B13            ; |109| 
RL23:      ; CALL OCCURS {_decbn}            ; |110| 
;** --------------------------------------------------------------------------*
           CALL    .S2     B11               ; |116| 
           NOP             2
           MVK     .L2     0x1,B12           ; |111| 
	.dwpsn	"SSHDSSG.C",112,0
           MVK     .S1     0x9f,A15
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L3
;** --------------------------------------------------------------------------*
L3:    
DW$L$_dsa_generate$15$B:
;**	-----------------------g5:
;** 116	-----------------------    (*pfn)(pfnparam, 6, 4, progress);
;** 117	-----------------------    x = bn_power_2(K$40);
;** 118	-----------------------    byte = 0;
;** 119	-----------------------    bitsleft = 0;
;** 121	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(160, 160, 160)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           ADDKPC  .S2     RL24,B3,0         ; |116| 
||         MV      .L1     A10,A4            ; |116| 
||         MVK     .S1     0x4,A6            ; |116| 
||         MVK     .L2     0x6,B4            ; |116| 
||         MV      .D2     B12,B6            ; |116| 

RL24:      ; CALL OCCURS {B11}               ; |116| 
DW$L$_dsa_generate$15$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$16$B:
           CALL    .S1     _bn_power_2       ; |117| 
           ADDKPC  .S2     RL25,B3,3         ; |117| 
           MV      .L1     A15,A4            ; |117| 
RL25:      ; CALL OCCURS {_bn_power_2}       ; |117| 
DW$L$_dsa_generate$16$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$17$B:
           ZERO    .L1     A11               ; |119| 
           CMPGT   .L1     A11,0,A0          ; |122| 
	.dwpsn	"SSHDSSG.C",121,0

   [ A0]   B       .S1     L5                ; |122| 
||         MV      .L1     A4,A14            ; |117| 
||         ZERO    .L2     B10               ; |121| 
||         ZERO    .D1     A13               ; |118| 

DW$L$_dsa_generate$17$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L4:    
DW$L$_dsa_generate$18$B:
;**	-----------------------g6:
;** 122	-----------------------    if ( bitsleft > 0 ) goto g8;
   [!A0]   CALL    .S1     _random_byte      ; |123| 
   [ A0]   CALL    .S1     _bignum_set_bit   ; |127| 
           NOP             3
           ; BRANCHCC OCCURS {L5}            ; |122| 
DW$L$_dsa_generate$18$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$19$B:
;** 123	-----------------------    byte = random_byte();
;** 123	-----------------------    bitsleft = 8;
           ADDKPC  .S2     RL26,B3,0         ; |123| 
RL26:      ; CALL OCCURS {_random_byte}      ; |123| 
DW$L$_dsa_generate$19$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$20$B:
           CALL    .S1     _bignum_set_bit   ; |127| 
           NOP             1
           MVK     .L1     0x8,A11           ; |123| 
           MV      .S1     A4,A13            ; |123| 
DW$L$_dsa_generate$20$E:
;** --------------------------------------------------------------------------*
L5:    
DW$L$_dsa_generate$21$B:
;**	-----------------------g8:
;** 124	-----------------------    v = byte&1;
;** 125	-----------------------    byte >>= 1;
;** 126	-----------------------    --bitsleft;
;** 127	-----------------------    bignum_set_bit(x, i, v);
;** 121	-----------------------    if ( (++i) < 160 ) goto g6;
;** 116	-----------------------    ++progress;
           ADDKPC  .S2     RL27,B3,0         ; |127| 

           AND     .L1     1,A13,A6          ; |124| 
||         MV      .L2     B10,B4            ; |127| 
||         MV      .S1     A14,A4            ; |127| 

RL27:      ; CALL OCCURS {_bignum_set_bit}   ; |127| 
DW$L$_dsa_generate$21$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$22$B:

           ADD     .L2     1,B10,B10         ; |121| 
||         MVK     .S2     160,B4            ; |121| 
||         MVKL    .S1     _One,A3           ; |130| 
||         SUB     .L1     A11,1,A11         ; |126| 

           CMPLT   .L2     B10,B4,B0         ; |121| 
||         CMPGT   .L1     A11,0,A0          ; |122| 
||         MVKH    .S1     _One,A3           ; |130| 

   [ B0]   B       .S1     L4                ; |121| 
|| [!B0]   ZERO    .L1     A0                ; |122| nullify predicate
|| [!B0]   LDW     .D1T2   *A3,B4            ; |130| 

   [!B0]   CALL    .S1     _bignum_cmp       ; |130| 
           SHR     .S1     A13,1,A13         ; |125| 
           NOP             2
	.dwpsn	"SSHDSSG.C",128,0
   [ A0]   B       .S2     L5                ; |122| 
           ; BRANCHCC OCCURS {L4}            ; |121| 
DW$L$_dsa_generate$22$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$23$B:
;** 130	-----------------------    if ( bignum_cmp(x, One) <= 0 ) goto g12;

           MV      .L1     A14,A4            ; |130| 
||         ADDKPC  .S2     RL28,B3,0         ; |130| 

RL28:      ; CALL OCCURS {_bignum_cmp}       ; |130| 
DW$L$_dsa_generate$23$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$24$B:

           CMPGT   .L1     A4,0,A0           ; |130| 
||         ADD     .L2     1,B12,B12         ; |116| 

   [!A0]   B       .S1     L7                ; |130| 
   [ A0]   CALL    .S1     _bignum_cmp       ; |130| 
   [!A0]   CALL    .S1     _freebn           ; |131| 
           NOP             3
           ; BRANCHCC OCCURS {L7}            ; |130| 
DW$L$_dsa_generate$24$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$25$B:
;** 130	-----------------------    if ( bignum_cmp(x, qm1) >= 0 ) goto g12;
;** 134	-----------------------    (*key).x = x;

           MV      .L2     B13,B4            ; |130| 
||         MV      .L1     A14,A4            ; |130| 
||         ADDKPC  .S2     RL29,B3,0         ; |130| 

RL29:      ; CALL OCCURS {_bignum_cmp}       ; |130| 
DW$L$_dsa_generate$25$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$26$B:
           CMPLT   .L1     A4,0,A0           ; |130| 
   [!A0]   B       .S1     L6                ; |130| 
   [ A0]   CALL    .S1     _freebn           ; |135| 
           NOP             4
           ; BRANCHCC OCCURS {L6}            ; |130| 
DW$L$_dsa_generate$26$E:
;** --------------------------------------------------------------------------*
;** 135	-----------------------    freebn(qm1);
;** 140	-----------------------    (*key).y = modpow((*key).g, (*key).x, (*key).p);
;** 142	-----------------------    return 1;

           STW     .D1T1   A14,*+A12(16)     ; |134| 
||         MV      .L1X    B13,A4            ; |135| 
||         ADDKPC  .S2     RL30,B3,0         ; |135| 

RL30:      ; CALL OCCURS {_freebn}           ; |135| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *A12,A6           ; |140| 

           CALL    .S1     _modpow           ; |140| 
||         LDW     .D1T2   *+A12(16),B4      ; |140| 

           LDW     .D1T1   *+A12(8),A4       ; |140| 
           ADDKPC  .S2     RL31,B3,3         ; |140| 
RL31:      ; CALL OCCURS {_modpow}           ; |140| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(28),B3       ; |143| 
           STW     .D1T1   A4,*+A12(12)      ; |140| 
           MV      .L1X    SP,A31            ; |143| 
           LDDW    .D1T1   *+A31(8),A11:A10  ; |143| 

           LDW     .D1T1   *+A31(24),A14     ; |143| 
||         LDDW    .D2T2   *+SP(40),B13:B12  ; |143| 

           RET     .S2     B3                ; |143| 
||         LDDW    .D1T1   *+A31(16),A13:A12 ; |143| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |143| 

           LDW     .D2T1   *++SP(48),A15     ; |143| 
           NOP             3
           MVK     .L1     0x1,A4            ; |142| 
           ; BRANCH OCCURS {B3}              ; |143| 
;** --------------------------------------------------------------------------*
L6:    
DW$L$_dsa_generate$30$B:
           CALL    .S1     _freebn           ; |131| 
           NOP             3
DW$L$_dsa_generate$30$E:
;** --------------------------------------------------------------------------*
L7:    
DW$L$_dsa_generate$31$B:
;**	-----------------------g12:
;** 131	-----------------------    freebn(x);
;** 132	-----------------------    goto g5;
           ADDKPC  .S2     RL32,B3,0         ; |131| 
           MV      .L1     A14,A4            ; |131| 
RL32:      ; CALL OCCURS {_freebn}           ; |131| 
DW$L$_dsa_generate$31$E:
;** --------------------------------------------------------------------------*
DW$L$_dsa_generate$32$B:
           B       .S1     L3                ; |132| 
           CALL    .S2     B11               ; |116| 
	.dwpsn	"SSHDSSG.C",137,0
           NOP             4
           ; BRANCH OCCURS {L3}              ; |132| 
DW$L$_dsa_generate$32$E:

DW$43	.dwtag  DW_TAG_loop
	.dwattr DW$43, DW_AT_name("D:\pred\dsp\rsalib\SSHDSSG.asm:L3:1:1185758347")
	.dwattr DW$43, DW_AT_begin_file("SSHDSSG.C")
	.dwattr DW$43, DW_AT_begin_line(0x70)
	.dwattr DW$43, DW_AT_end_line(0x89)
DW$44	.dwtag  DW_TAG_loop_range
	.dwattr DW$44, DW_AT_low_pc(DW$L$_dsa_generate$15$B)
	.dwattr DW$44, DW_AT_high_pc(DW$L$_dsa_generate$15$E)
DW$45	.dwtag  DW_TAG_loop_range
	.dwattr DW$45, DW_AT_low_pc(DW$L$_dsa_generate$25$B)
	.dwattr DW$45, DW_AT_high_pc(DW$L$_dsa_generate$25$E)
DW$46	.dwtag  DW_TAG_loop_range
	.dwattr DW$46, DW_AT_low_pc(DW$L$_dsa_generate$26$B)
	.dwattr DW$46, DW_AT_high_pc(DW$L$_dsa_generate$26$E)
DW$47	.dwtag  DW_TAG_loop_range
	.dwattr DW$47, DW_AT_low_pc(DW$L$_dsa_generate$16$B)
	.dwattr DW$47, DW_AT_high_pc(DW$L$_dsa_generate$16$E)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_dsa_generate$17$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_dsa_generate$17$E)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_dsa_generate$23$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_dsa_generate$23$E)
DW$50	.dwtag  DW_TAG_loop_range
	.dwattr DW$50, DW_AT_low_pc(DW$L$_dsa_generate$24$B)
	.dwattr DW$50, DW_AT_high_pc(DW$L$_dsa_generate$24$E)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_dsa_generate$30$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_dsa_generate$30$E)
DW$52	.dwtag  DW_TAG_loop_range
	.dwattr DW$52, DW_AT_low_pc(DW$L$_dsa_generate$31$B)
	.dwattr DW$52, DW_AT_high_pc(DW$L$_dsa_generate$31$E)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$_dsa_generate$32$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$_dsa_generate$32$E)

DW$54	.dwtag  DW_TAG_loop
	.dwattr DW$54, DW_AT_name("D:\pred\dsp\rsalib\SSHDSSG.asm:L4:2:1185758347")
	.dwattr DW$54, DW_AT_begin_file("SSHDSSG.C")
	.dwattr DW$54, DW_AT_begin_line(0x79)
	.dwattr DW$54, DW_AT_end_line(0x80)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$_dsa_generate$18$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$_dsa_generate$18$E)
DW$56	.dwtag  DW_TAG_loop_range
	.dwattr DW$56, DW_AT_low_pc(DW$L$_dsa_generate$19$B)
	.dwattr DW$56, DW_AT_high_pc(DW$L$_dsa_generate$19$E)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_dsa_generate$20$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_dsa_generate$20$E)
DW$58	.dwtag  DW_TAG_loop_range
	.dwattr DW$58, DW_AT_low_pc(DW$L$_dsa_generate$21$B)
	.dwattr DW$58, DW_AT_high_pc(DW$L$_dsa_generate$21$E)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_dsa_generate$22$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_dsa_generate$22$E)
	.dwendtag DW$54

	.dwendtag DW$43


DW$60	.dwtag  DW_TAG_loop
	.dwattr DW$60, DW_AT_name("D:\pred\dsp\rsalib\SSHDSSG.asm:L1:1:1185758347")
	.dwattr DW$60, DW_AT_begin_file("SSHDSSG.C")
	.dwattr DW$60, DW_AT_begin_line(0x5c)
	.dwattr DW$60, DW_AT_end_line(0x64)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$_dsa_generate$6$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$_dsa_generate$6$E)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_dsa_generate$7$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_dsa_generate$7$E)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$_dsa_generate$8$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$_dsa_generate$8$E)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$_dsa_generate$9$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$_dsa_generate$9$E)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$_dsa_generate$10$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$_dsa_generate$10$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_dsa_generate$11$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_dsa_generate$11$E)
	.dwendtag DW$60

	.dwattr DW$38, DW_AT_end_file("SSHDSSG.C")
	.dwattr DW$38, DW_AT_end_line(0x8f)
	.dwattr DW$38, DW_AT_end_column(0x01)
	.dwendtag DW$38

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_random_byte
	.global	_copybn
	.global	_bn_power_2
	.global	_bignum_from_long
	.global	_freebn
	.global	_modpow
	.global	_decbn
	.global	_bignum_set_bit
	.global	_bignum_add_long
	.global	_bigdiv
	.global	_bignum_cmp
	.global	_primegen
	.global	_One
	.global	__divi

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Bignum"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$21


DW$T$22	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$22


DW$T$23	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$24


DW$T$25	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$25


DW$T$26	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$26


DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$30

DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("progfn_t"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)

DW$T$48	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$50

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$52	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)

DW$T$54	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$54


DW$T$57	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$57

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)
DW$T$56	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$56, DW_AT_address_class(0x20)
DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x20)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("dss_key")
	.dwattr DW$T$20, DW_AT_byte_size(0x14)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$94, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$95, DW_AT_name("q"), DW_AT_symbol_name("_q")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("g"), DW_AT_symbol_name("_g")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$27


	.dwattr DW$38, DW_AT_external(0x01)
	.dwattr DW$38, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$103, DW_AT_location[DW_OP_reg0]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$104, DW_AT_location[DW_OP_reg1]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$105, DW_AT_location[DW_OP_reg2]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$106, DW_AT_location[DW_OP_reg3]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$107, DW_AT_location[DW_OP_reg4]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$108, DW_AT_location[DW_OP_reg5]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$109, DW_AT_location[DW_OP_reg6]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$110, DW_AT_location[DW_OP_reg7]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$111, DW_AT_location[DW_OP_reg8]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$112, DW_AT_location[DW_OP_reg9]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$113, DW_AT_location[DW_OP_reg10]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$114, DW_AT_location[DW_OP_reg11]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$115, DW_AT_location[DW_OP_reg12]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$116, DW_AT_location[DW_OP_reg13]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$117, DW_AT_location[DW_OP_reg14]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$118, DW_AT_location[DW_OP_reg15]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$119, DW_AT_location[DW_OP_reg16]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$120, DW_AT_location[DW_OP_reg17]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$121, DW_AT_location[DW_OP_reg18]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$122, DW_AT_location[DW_OP_reg19]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$123, DW_AT_location[DW_OP_reg20]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$124, DW_AT_location[DW_OP_reg21]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$125, DW_AT_location[DW_OP_reg22]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$126, DW_AT_location[DW_OP_reg23]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$127, DW_AT_location[DW_OP_reg24]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$128, DW_AT_location[DW_OP_reg25]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$129, DW_AT_location[DW_OP_reg26]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$130, DW_AT_location[DW_OP_reg27]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$131, DW_AT_location[DW_OP_reg28]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$132, DW_AT_location[DW_OP_reg29]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$133, DW_AT_location[DW_OP_reg30]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$134, DW_AT_location[DW_OP_reg31]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x20]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x21]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x22]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x23]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x24]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x25]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x26]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x27]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x28]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x29]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x2a]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x2b]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x2c]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x2d]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x2e]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x2f]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x30]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x31]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x32]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x33]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x34]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x35]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x36]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x37]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x38]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x39]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x3a]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x3b]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x3c]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x3d]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x3e]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x3f]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x40]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x41]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x42]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x43]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x44]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x45]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x46]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x47]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x48]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x49]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x4a]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x4b]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x4c]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x4d]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x4e]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x4f]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x50]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x51]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x52]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x53]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x54]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x55]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x56]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x57]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x58]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x59]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x5a]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x5b]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x5c]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x5d]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x5e]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x5f]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x60]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x61]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x62]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x63]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x64]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x65]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x66]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x67]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x68]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x69]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x6a]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x6b]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x6c]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x6d]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x6e]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x6f]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x70]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x71]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x72]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x73]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x74]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x75]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x76]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x77]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x78]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x79]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x7a]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x7b]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x7c]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x7d]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

