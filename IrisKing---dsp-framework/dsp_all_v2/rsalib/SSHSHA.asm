;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Nov 01 16:10:03 2010                                *
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
	.dwattr DW$CU, DW_AT_name("SSHSHA.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("safemalloc"), DW_AT_symbol_name("_safemalloc")
	.dwattr DW$9, DW_AT_type(*DW$T$3)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
	.dwendtag DW$9


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("safefree"), DW_AT_symbol_name("_safefree")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$12

	.global	_ssh_sha1
	.sect	".const"
	.align	4
_ssh_sha1:
	.field  	_sha1_init,32		; _ssh_sha1._init @ 0
	.field  	_sha1_bytes,32		; _ssh_sha1._bytes @ 32
	.field  	_sha1_final,32		; _ssh_sha1._final @ 64
	.field  	20,32			; _ssh_sha1._hlen @ 96
	.field  	SL1,32		; _ssh_sha1._text_name @ 128

DW$14	.dwtag  DW_TAG_variable, DW_AT_name("ssh_sha1"), DW_AT_symbol_name("_ssh_sha1")
	.dwattr DW$14, DW_AT_location[DW_OP_addr _ssh_sha1]
	.dwattr DW$14, DW_AT_type(*DW$T$92)
	.dwattr DW$14, DW_AT_external(0x01)
	.global	_ssh_hmac_sha1
	.sect	".const"
	.align	4
_ssh_hmac_sha1:
	.field  	_sha1_make_context,32		; _ssh_hmac_sha1._make_context @ 0
	.field  	_sha1_free_context,32		; _ssh_hmac_sha1._free_context @ 32
	.field  	_sha1_key,32		; _ssh_hmac_sha1._setkey @ 64
	.field  	_sha1_generate,32		; _ssh_hmac_sha1._generate @ 96
	.field  	_sha1_verify,32		; _ssh_hmac_sha1._verify @ 128
	.field  	SL2,32		; _ssh_hmac_sha1._name @ 160
	.field  	20,32			; _ssh_hmac_sha1._len @ 192
	.field  	SL3,32		; _ssh_hmac_sha1._text_name @ 224

DW$15	.dwtag  DW_TAG_variable, DW_AT_name("ssh_hmac_sha1"), DW_AT_symbol_name("_ssh_hmac_sha1")
	.dwattr DW$15, DW_AT_location[DW_OP_addr _ssh_hmac_sha1]
	.dwattr DW$15, DW_AT_type(*DW$T$93)
	.dwattr DW$15, DW_AT_external(0x01)
	.global	_ssh_hmac_sha1_96
	.sect	".const"
	.align	4
_ssh_hmac_sha1_96:
	.field  	_sha1_make_context,32		; _ssh_hmac_sha1_96._make_context @ 0
	.field  	_sha1_free_context,32		; _ssh_hmac_sha1_96._free_context @ 32
	.field  	_sha1_key,32		; _ssh_hmac_sha1_96._setkey @ 64
	.field  	_sha1_96_generate,32		; _ssh_hmac_sha1_96._generate @ 96
	.field  	_sha1_96_verify,32		; _ssh_hmac_sha1_96._verify @ 128
	.field  	SL4,32		; _ssh_hmac_sha1_96._name @ 160
	.field  	12,32			; _ssh_hmac_sha1_96._len @ 192
	.field  	SL5,32		; _ssh_hmac_sha1_96._text_name @ 224

DW$16	.dwtag  DW_TAG_variable, DW_AT_name("ssh_hmac_sha1_96"), DW_AT_symbol_name("_ssh_hmac_sha1_96")
	.dwattr DW$16, DW_AT_location[DW_OP_addr _ssh_hmac_sha1_96]
	.dwattr DW$16, DW_AT_type(*DW$T$93)
	.dwattr DW$16, DW_AT_external(0x01)
	.global	_ssh_hmac_sha1_buggy
	.sect	".const"
	.align	4
_ssh_hmac_sha1_buggy:
	.field  	_sha1_make_context,32		; _ssh_hmac_sha1_buggy._make_context @ 0
	.field  	_sha1_free_context,32		; _ssh_hmac_sha1_buggy._free_context @ 32
	.field  	_sha1_key_buggy,32		; _ssh_hmac_sha1_buggy._setkey @ 64
	.field  	_sha1_generate,32		; _ssh_hmac_sha1_buggy._generate @ 96
	.field  	_sha1_verify,32		; _ssh_hmac_sha1_buggy._verify @ 128
	.field  	SL2,32		; _ssh_hmac_sha1_buggy._name @ 160
	.field  	20,32			; _ssh_hmac_sha1_buggy._len @ 192
	.field  	SL6,32		; _ssh_hmac_sha1_buggy._text_name @ 224

DW$17	.dwtag  DW_TAG_variable, DW_AT_name("ssh_hmac_sha1_buggy"), DW_AT_symbol_name("_ssh_hmac_sha1_buggy")
	.dwattr DW$17, DW_AT_location[DW_OP_addr _ssh_hmac_sha1_buggy]
	.dwattr DW$17, DW_AT_type(*DW$T$93)
	.dwattr DW$17, DW_AT_external(0x01)
	.global	_ssh_hmac_sha1_96_buggy
	.sect	".const"
	.align	4
_ssh_hmac_sha1_96_buggy:
	.field  	_sha1_make_context,32		; _ssh_hmac_sha1_96_buggy._make_context @ 0
	.field  	_sha1_free_context,32		; _ssh_hmac_sha1_96_buggy._free_context @ 32
	.field  	_sha1_key_buggy,32		; _ssh_hmac_sha1_96_buggy._setkey @ 64
	.field  	_sha1_96_generate,32		; _ssh_hmac_sha1_96_buggy._generate @ 96
	.field  	_sha1_96_verify,32		; _ssh_hmac_sha1_96_buggy._verify @ 128
	.field  	SL4,32		; _ssh_hmac_sha1_96_buggy._name @ 160
	.field  	12,32			; _ssh_hmac_sha1_96_buggy._len @ 192
	.field  	SL7,32		; _ssh_hmac_sha1_96_buggy._text_name @ 224

DW$18	.dwtag  DW_TAG_variable, DW_AT_name("ssh_hmac_sha1_96_buggy"), DW_AT_symbol_name("_ssh_hmac_sha1_96_buggy")
	.dwattr DW$18, DW_AT_location[DW_OP_addr _ssh_hmac_sha1_96_buggy]
	.dwattr DW$18, DW_AT_type(*DW$T$93)
	.dwattr DW$18, DW_AT_external(0x01)
;	D:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI6842 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI6844 
	.sect	".text"
	.global	_SHATransform

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("SHATransform"), DW_AT_symbol_name("_SHATransform")
	.dwattr DW$19, DW_AT_low_pc(_SHATransform)
	.dwattr DW$19, DW_AT_high_pc(0x00)
	.dwattr DW$19, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$19, DW_AT_begin_line(0x19)
	.dwattr DW$19, DW_AT_begin_column(0x06)
	.dwattr DW$19, DW_AT_frame_base[DW_OP_breg31 328]
	.dwattr DW$19, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",26,1

;******************************************************************************
;* FUNCTION NAME: _SHATransform                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,SP,  *
;*                           A16,A17,A18,A19,A20,A21,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B30,B31              *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,  *
;*                           DP,SP,A16,A17,A18,A19,A20,A21,A31,B16,B17,B18,   *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B30,B31      *
;*   Local Frame Size  : 0 Args + 324 Auto + 0 Save = 324 byte                *
;******************************************************************************
_SHATransform:
;** --------------------------------------------------------------------------*
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("digest"), DW_AT_symbol_name("_digest")
	.dwattr DW$20, DW_AT_type(*DW$T$52)
	.dwattr DW$20, DW_AT_location[DW_OP_reg4]
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$21, DW_AT_type(*DW$T$52)
	.dwattr DW$21, DW_AT_location[DW_OP_reg20]
;** 32	-----------------------    ((double *)w)[0] = _memd8((void *)block);
;** 32	-----------------------    ((double *)w)[1] = _memd8((void *)(block+8));
;** 32	-----------------------    ((double *)w)[2] = _memd8((void *)(block+16));
;** 32	-----------------------    ((double *)w)[3] = _memd8((void *)(block+24));
;** 32	-----------------------    ((double *)w)[4] = _memd8((void *)(block+32));
;** 32	-----------------------    ((double *)w)[5] = _memd8((void *)(block+40));
;** 32	-----------------------    ((double *)w)[6] = _memd8((void *)(block+48));
;** 32	-----------------------    ((double *)w)[7] = _memd8((void *)(block+56));
;** 34	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    U$53 = &w[16];
;** 34	-----------------------    L$1 = 32;
;**  	-----------------------    #pragma MUST_ITERATE(32, 32, 32)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g2:
;** 35	-----------------------    C$11 = *((double *)U$53-64);
;** 35	-----------------------    C$10 = *((double *)U$53-56);
;** 35	-----------------------    C$9 = *((double *)U$53-32);
;** 35	-----------------------    A$12 = _itod(_rotl(_hi(C$9)^_hi(C$10)^_hi(C$11)^U$53[-2], 1), _rotl(_lo(C$9)^_lo(C$10)^_lo(C$11)^U$53[-3], 1));
;** 35	-----------------------    *(double *)U$53++{2} = A$12;
;** 34	-----------------------    if ( --L$1 ) goto g2;
;** 39	-----------------------    a = U$90 = *digest;

           LDNDW   .D2T2   *+B4(8),B25:B24   ; |32| 
||         MVK     .S2     56,B5             ; |32| 

           LDNDW   .D2T2   *+B5(B4),B9:B8    ; |32| 
           LDNDW   .D2T2   *B4,B27:B26       ; |32| 
           LDNDW   .D2T2   *+B4(16),B23:B22  ; |32| 

           LDNDW   .D2T2   *+B4(24),B21:B20  ; |32| 
||         MVK     .S2     48,B5             ; |32| 

           LDNDW   .D2T2   *+B5(B4),B17:B16  ; |32| 
||         ADDK    .S2     -328,SP           ; |26| 

           ADDAD   .D2     SP,9,B6
||         MVK     .S2     40,B5             ; |32| 

           LDNDW   .D2T2   *+B5(B4),B19:B18  ; |32| 
           STDW    .D2T2   B25:B24,*+SP(16)  ; |32| 
           STDW    .D2T2   B27:B26,*+SP(8)   ; |32| 

           STDW    .D2T2   B23:B22,*+SP(24)  ; |32| 
||         MVK     .S2     32,B5             ; |32| 

           LDNDW   .D2T2   *+B5(B4),B5:B4    ; |32| 
           STDW    .D2T2   B21:B20,*+SP(32)  ; |32| 
           STDW    .D2T2   B9:B8,*+SP(64)    ; |32| 
           STDW    .D2T2   B17:B16,*+SP(56)  ; |32| 

           STDW    .D2T2   B19:B18,*+SP(48)  ; |32| 
||         MV      .L1X    B6,A3             ; Register A/B partition copy

           STDW    .D2T2   B5:B4,*+SP(40)    ; |32| 
||         ADDK    .S1     -32,A3

           LDDW    .D1T1   *-A3(24),A7:A6    ; |35| (P) <0,1> 

           LDDW    .D1T1   *-A3(32),A5:A4    ; |35| (P) <0,0> 
||         MV      .L1     A4,A21            ; |26| 

           LDDW    .D1T1   *A3++,A9:A8       ; |35| (P) <0,2> 
           MVC     .S2     CSR,B7
           AND     .L2     -2,B7,B4

           LDW     .D2T2   *-B6(12),B4       ; |35| (P) <0,4> 
||         MVC     .S2     B4,CSR            ; interrupts off
||         MVK     .S1     30,A0             ; |34| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 34
;*      Loop opening brace source line   : 34
;*      Loop closing brace source line   : 37
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 32                    
;*      Known Maximum Trip Count         : 32                    
;*      Known Max Trip Count Factor      : 32
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     3*       3*    
;*      .M units                     0        2     
;*      .X cross paths               0        2     
;*      .T address paths             3*       3*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     3*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 2 (after unrolling)
;*----------------------------------------------------------------------------*
L1:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L2:    ; PIPED LOOP KERNEL
DW$L$_SHATransform$3$B:
	.dwpsn	"SSHSHA.C",34,0
           LDW     .D2T2   *-B6(8),B5        ; |35| <0,6>  ^ 

           XOR     .L1     A6,A8,A7          ; |35| <0,7> 
||         XOR     .S1     A7,A9,A6          ; |35| <0,7> 

           XOR     .L1     A4,A7,A4          ; |35| <0,8> 
||         XOR     .S1     A5,A6,A5          ; |35| <0,8> 

   [ A0]   BDEC    .S1     L2,A0             ; |34| <0,9> 
||         LDDW    .D1T1   *-A3(32),A5:A4    ; |35| <1,0> 

           XOR     .L2X    B4,A4,B4          ; |35| <0,10> 
||         LDDW    .D1T1   *-A3(24),A7:A6    ; |35| <1,1> 

           ROTL    .M2     B4,1,B4           ; |35| <0,11> 
||         XOR     .L2X    B5,A5,B4          ; |35| <0,11>  ^ 
||         LDDW    .D1T1   *A3++,A9:A8       ; |35| <1,2> 

           ROTL    .M2     B4,1,B5           ; |35| <0,12>  ^ 
           LDW     .D2T2   *-B6(4),B4        ; |35| <1,4> 
	.dwpsn	"SSHSHA.C",37,0
           STDW    .D2T2   B5:B4,*B6++       ; |35| <0,14>  ^ 
DW$L$_SHATransform$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 45
;*      Loop opening brace source line   : 45
;*      Loop closing brace source line   : 53
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 10                    
;*      Known Maximum Trip Count         : 10                    
;*      Known Max Trip Count Factor      : 10
;*      Loop Carried Dependency Bound(^) : 12
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                     0        1     
;*      .M units                     2        2     
;*      .X cross paths               4*       4*    
;*      .T address paths             0        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)         10        9     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     4*       4*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 12 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L3:    ; PIPED LOOP EPILOG AND PROLOG
;** 40	-----------------------    b = U$93 = digest[1];
;** 41	-----------------------    c = digest[2];
;** 42	-----------------------    d = digest[3];
;** 43	-----------------------    e = digest[4];
;** 45	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    K$109 = 0xffffffffu;
;**  	-----------------------    K$117 = 0x5a827999u;
;** 45	-----------------------    L$2 = 10;
;**  	-----------------------    U$53 = &w[0];
;**  	-----------------------    #pragma MUST_ITERATE(10, 10, 10)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g4:
;** 52	-----------------------    C$8 = *(double *)U$53++{2};
;** 52	-----------------------    a = _rotl(a, 5)+(b&c|(b^K$109)&d)+_lo(C$8)+e+K$117;
;** 46	-----------------------    C$7 = _rotl(b, 30);
;** 46	-----------------------    tmp = _rotl(a, 5)+(a&C$7|(a^K$109)&c)+_hi(C$8)+d+K$117;
;** 48	-----------------------    e = c;
;** 49	-----------------------    d = C$7;
;** 50	-----------------------    c = _rotl(a, 30);
;** 51	-----------------------    b = a;
;** 52	-----------------------    a = tmp;
;** 45	-----------------------    if ( --L$2 ) goto g4;
;** 54	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    U$53 = &w[20];

           MVK     .L2     9,B0              ; |45| 
||         MVK     .L1     0x1,A0            ; init prolog collapse predicate
||         LDW     .D2T2   *-B6(8),B5        ; |35| (E) <1,6>  ^ 

           MVK     .L1     0xffffffff,A9
||         XOR     .S1     A6,A8,A7          ; |35| (E) <1,7> 
||         XOR     .D1     A7,A9,A3          ; |35| (E) <1,7> 

           XOR     .L1     A5,A3,A3          ; |35| (E) <1,8> 
||         XOR     .S1     A4,A7,A4          ; |35| (E) <1,8> 

           NOP             1
           XOR     .L2X    B4,A4,B4          ; |35| (E) <1,10> 

           XOR     .L2X    B5,A3,B4          ; |35| (E) <1,11>  ^ 
||         ROTL    .M2     B4,1,B4           ; |35| (E) <1,11> 

           ROTL    .M2     B4,1,B5           ; |35| (E) <1,12>  ^ 
           MVC     .S2     B7,CSR            ; interrupts on

           MVC     .S2     CSR,B18
||         STDW    .D2T2   B5:B4,*B6++       ; |35| (E) <1,14>  ^ 

           ADD     .L2     8,SP,B6
||         MVKL    .S2     0x5a827999,B4
||         AND     .D2     -2,B18,B7
||         LDW     .D1T1   *A21,A18          ; |39| 

           MVKH    .S2     0x5a827999,B4
||         LDW     .D1T1   *+A21(4),A17      ; |40| 

           MVC     .S2     B7,CSR            ; interrupts off
||         LDW     .D1T1   *+A21(12),A8      ; |42| 

           LDW     .D1T2   *+A21(16),B5      ; |43| 
           LDW     .D1T1   *+A21(8),A6       ; |41| 
           MV      .L2X    A18,B8            ; |39| 
           MV      .L1     A17,A5            ; |40| 
	.dwpsn	"SSHSHA.C",45,0
           NOP             2
;** --------------------------------------------------------------------------*
L4:    ; PIPED LOOP KERNEL
DW$L$_SHATransform$5$B:

           OR      .L1     A4,A3,A4          ; |52| <0,2>  ^ 
||         ROTL    .M2     B8,5,B7           ; |52| <0,2>  ^ 

           XOR     .L1X    A9,B8,A3          ; |46| <0,3> 

           AND     .L1X    A7,B8,A4          ; |46| <0,4> 
||         AND     .S1     A6,A3,A3          ; |46| <0,4> 
||         ADD     .L2X    A4,B7,B7          ; |52| <0,4>  ^ 

           OR      .L1     A3,A4,A3          ; |46| <0,5> 
||         ADD     .L2     B16,B7,B7         ; |52| <0,5>  ^ 

   [!A0]   MV      .L2X    A6,B5             ; |48| <0,6> 
||         ADD     .S2     B5,B7,B7          ; |52| <0,6>  ^ 

           ADD     .L2     B4,B7,B7          ; |52| <0,7>  ^ 

   [ B0]   BDEC    .S2     L4,B0             ; |45| <0,8> 
||         ROTL    .M2     B7,5,B9           ; |46| <0,8>  ^ 

           NOP             1

   [!A0]   ROTL    .M1X    B8,30,A6          ; |50| <0,10> 
||         ADD     .L2X    A3,B9,B9          ; |46| <0,10>  ^ 

   [!A0]   MV      .L1X    B7,A5             ; |51| <0,11> 
||         ADD     .L2     B17,B9,B7         ; |46| <0,11>  ^ 

   [!A0]   MV      .D1     A7,A8             ; |49| <0,12>  ^ 
||         ADD     .L2X    A8,B7,B7          ; |46| <0,12>  ^ 
||         ROTL    .M1     A5,30,A7          ; |46| <1,0> 
||         AND     .L1     A6,A5,A3          ; |52| <1,0> 
||         XOR     .S1     A9,A5,A4          ; |52| <1,0> 
||         LDDW    .D2T2   *B6++,B17:B16     ; |52| <1,0> 

	.dwpsn	"SSHSHA.C",53,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,13> 
|| [!A0]   ADD     .L2     B4,B7,B8          ; |46| <0,13>  ^ 
||         AND     .S1     A8,A4,A4          ; |52| <1,1>  ^ 

DW$L$_SHATransform$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 54
;*      Loop opening brace source line   : 54
;*      Loop closing brace source line   : 61
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 10                    
;*      Known Maximum Trip Count         : 10                    
;*      Known Max Trip Count Factor      : 10
;*      Loop Carried Dependency Bound(^) : 12
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                     1        0     
;*      .M units                     2        2     
;*      .X cross paths               4*       3     
;*      .T address paths             1        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)         11        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     4*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 12 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L5:    ; PIPED LOOP EPILOG AND PROLOG
;**  	-----------------------    K$136 = 0x6ed9eba1u;
;** 54	-----------------------    L$3 = 10;
;**  	-----------------------    #pragma MUST_ITERATE(10, 10, 10)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g6:
;** 60	-----------------------    C$6 = *(double *)U$53++{2};
;** 60	-----------------------    a = _rotl(a, 5)+(b^c^d)+_lo(C$6)+e+K$136;
;** 55	-----------------------    C$5 = _rotl(b, 30);
;** 55	-----------------------    tmp = _rotl(a, 5)+(a^C$5^c)+_hi(C$6)+d+K$136;
;** 56	-----------------------    e = c;
;** 57	-----------------------    d = C$5;
;** 58	-----------------------    c = _rotl(a, 30);
;** 59	-----------------------    b = a;
;** 60	-----------------------    a = tmp;
;** 54	-----------------------    if ( --L$3 ) goto g6;
;** 62	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    U$53 = &w[40];

           MVK     .L1     0x1,A0            ; init prolog collapse predicate
||         MVK     .L2     9,B0              ; |54| 
||         ADDAD   .D2     SP,11,B31
||         MV      .S1     A6,A19            ; |48| 
||         OR      .D1     A4,A3,A4          ; |52| (E) <1,2>  ^ 
||         ROTL    .M2     B8,5,B7           ; |52| (E) <1,2>  ^ 

           MV      .L1     A19,A5
||         XOR     .S1X    A9,B8,A3          ; |46| (E) <1,3> 

           MV      .L1     A7,A4             ; |49| 
||         MVC     .S2     B18,CSR           ; interrupts on
||         AND     .S1X    A7,B8,A31         ; |46| (E) <1,4> 
||         AND     .D1     A6,A3,A3          ; |46| (E) <1,4> 
||         ADD     .L2X    A4,B7,B7          ; |52| (E) <1,4>  ^ 

           MVKL    .S1     0x6ed9eba1,A7
||         ROTL    .M1X    B8,30,A6          ; |50| (E) <1,10> 
||         OR      .L1     A3,A31,A3         ; |46| (E) <1,5> 
||         ADD     .L2     B16,B7,B7         ; |52| (E) <1,5>  ^ 

           MVKH    .S1     0x6ed9eba1,A7
||         ADD     .L2     B5,B7,B7          ; |52| (E) <1,6>  ^ 

           ADD     .L2     B4,B7,B7          ; |52| (E) <1,7>  ^ 

           MV      .L1X    B31,A6            ; Define a twin register
||         MV      .L2X    A6,B5
||         ROTL    .M2     B7,5,B9           ; |46| (E) <1,8>  ^ 

           MV      .L1X    B7,A20            ; |51| 
           ADD     .L2X    A3,B9,B9          ; |46| (E) <1,10>  ^ 

           MVC     .S2     CSR,B9
||         ADD     .L2     B17,B9,B7         ; |46| (E) <1,11>  ^ 

           AND     .L2     -2,B9,B6
||         ADD     .S2X    A8,B7,B7          ; |46| (E) <1,12>  ^ 

           MV      .L2X    A20,B4
||         MVC     .S2     B6,CSR            ; interrupts off
||         ADD     .D2     B4,B7,B8          ; |46| (E) <1,13>  ^ 

           NOP             1
           MV      .L1X    B8,A3
	.dwpsn	"SSHSHA.C",54,0
           NOP             1
;** --------------------------------------------------------------------------*
L6:    ; PIPED LOOP KERNEL
DW$L$_SHATransform$7$B:
           ROTL    .M1     A3,5,A8           ; |60| <0,4>  ^ 

           XOR     .L2X    B6,A3,B7          ; |55| <0,5> 
||         XOR     .L1X    A4,B7,A9          ; |60| <0,5> 

           XOR     .L2     B5,B7,B7          ; |55| <0,6> 
||         ADD     .L1     A9,A8,A16         ; |60| <0,6>  ^ 

           ADD     .L1     A8,A16,A8         ; |60| <0,7>  ^ 

   [!A0]   MV      .L1X    B5,A5             ; |56| <0,8> Define a twin register
||         ADD     .S1     A5,A8,A8          ; |60| <0,8>  ^ 

           ADD     .L1     A7,A8,A8          ; |60| <0,9>  ^ 

   [!A0]   ROTL    .M2X    A3,30,B5          ; |58| <0,10> 
|| [ B0]   BDEC    .S2     L6,B0             ; |54| <0,10> 
||         ROTL    .M1     A8,5,A8           ; |55| <0,10>  ^ 

   [!A0]   MV      .L2X    A8,B4             ; |59| <0,11> 

           ADD     .L1X    B7,A8,A8          ; |55| <0,12>  ^ 
||         ROTL    .M2     B4,30,B8          ; |55| <1,0> 
||         XOR     .L2     B5,B4,B7          ; |60| <1,0> 

           ADD     .L1     A9,A8,A8          ; |55| <0,13>  ^ 

           ADD     .L1     A4,A8,A8          ; |55| <0,14>  ^ 
||         ROTL    .M2     B8,0,B6           ; |55| <1,2> Split a long life
||         LDDW    .D1T1   *A6++,A9:A8       ; |60| <1,2> 

	.dwpsn	"SSHSHA.C",61,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,15> 
|| [!A0]   MV      .S1X    B6,A4             ; |57| <0,15> Define a twin register
|| [!A0]   ADD     .D1     A7,A8,A3          ; |55| <0,15>  ^ 

DW$L$_SHATransform$7$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 62
;*      Loop opening brace source line   : 62
;*      Loop closing brace source line   : 71
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 10                    
;*      Known Maximum Trip Count         : 10                    
;*      Known Max Trip Count Factor      : 10
;*      Loop Carried Dependency Bound(^) : 12
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     0        1     
;*      .M units                     1        3     
;*      .X cross paths               2        3     
;*      .T address paths             0        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1       20     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        7*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 12 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L7:    ; PIPED LOOP EPILOG AND PROLOG
;**  	-----------------------    K$153 = 0x8f1bbcdcu;
;** 62	-----------------------    L$4 = 10;
;**  	-----------------------    #pragma MUST_ITERATE(10, 10, 10)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g8:
;** 70	-----------------------    C$4 = *(double *)U$53++{2};
;** 70	-----------------------    a = _rotl(a, 5)+(b&c|b&d|c&d)+_lo(C$4)+e+K$153;
;** 63	-----------------------    C$3 = _rotl(b, 30);
;** 63	-----------------------    tmp = _rotl(a, 5)+(a&C$3|a&c|C$3&c)+_hi(C$4)+d+K$153;
;** 66	-----------------------    e = c;
;** 67	-----------------------    d = C$3;
;** 68	-----------------------    c = _rotl(a, 30);
;** 69	-----------------------    b = a;
;** 70	-----------------------    a = tmp;
;** 62	-----------------------    if ( --L$4 ) goto g8;
;** 72	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    U$53 = &w[60];

           MVK     .L1     9,A0              ; |62| 
||         MVK     .S1     0x1,A1            ; init prolog collapse predicate
||         MVKL    .S2     0x8f1bbcdc,B16
||         ROTL    .M1     A3,5,A8           ; |60| (E) <1,4>  ^ 

           MVKH    .S2     0x8f1bbcdc,B16
||         XOR     .L2X    B6,A3,B7          ; |55| (E) <1,5> 
||         XOR     .L1X    A4,B7,A9          ; |60| (E) <1,5> 

           ADD     .L1     A9,A8,A16         ; |60| (E) <1,6>  ^ 
||         XOR     .L2     B5,B7,B7          ; |55| (E) <1,6> 

           ADD     .L1     A8,A16,A8         ; |60| (E) <1,7>  ^ 

           ADD     .L1     A5,A8,A8          ; |60| (E) <1,8>  ^ 
||         MV      .S1X    B5,A5             ; |56| (E) <1,8> Define a twin register

           ADD     .L1     A7,A8,A8          ; |60| (E) <1,9>  ^ 

           ROTL    .M1     A8,5,A8           ; |55| (E) <1,10>  ^ 
||         ROTL    .M2X    A3,30,B5          ; |58| (E) <1,10> 

           ADDAD   .D2     SP,21,B9
||         MVC     .S2     B9,CSR            ; interrupts on
||         MV      .L2X    A8,B4             ; |59| (E) <1,11> 

           MV      .L2     B5,B6
||         MVC     .S2     CSR,B22
||         MV      .D2     B6,B7             ; |57| 
||         ADD     .L1X    B7,A8,A8          ; |55| (E) <1,12>  ^ 

           MV      .L2X    A5,B8
||         MV      .S2     B4,B5
||         AND     .D2     -2,B22,B17
||         ADD     .L1     A9,A8,A8          ; |55| (E) <1,13>  ^ 

           MVC     .S2     B17,CSR           ; interrupts off
||         ADD     .L1     A4,A8,A8          ; |55| (E) <1,14>  ^ 

           ADD     .L1     A7,A8,A3          ; |55| (E) <1,15>  ^ 
           NOP             1
	.dwpsn	"SSHSHA.C",62,0
           MV      .L2X    A3,B4
;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP KERNEL
DW$L$_SHATransform$9$B:

           AND     .L1X    B6,A3,A4          ; |63| <0,5> 
||         AND     .L2     B6,B4,B18         ; |63| <0,5> 
||         AND     .S2     B7,B6,B17         ; |70| <0,5> 
||         OR      .D2     B17,B19,B19       ; |70| <0,5>  ^ 
||         ROTL    .M2     B4,5,B17          ; |70| <0,5>  ^ 

           AND     .L2X    A3,B4,B20         ; |63| <0,6> 
||         OR      .S2     B17,B19,B19       ; |70| <0,6>  ^ 

           OR      .L2     B18,B20,B18       ; |63| <0,7> 
||         ADD     .S2     B19,B17,B17       ; |70| <0,7>  ^ 

           OR      .L2X    A4,B18,B18        ; |63| <0,8> 
||         ADD     .S2     B20,B17,B17       ; |70| <0,8>  ^ 

   [!A1]   MV      .L2     B6,B8             ; |66| <0,9> 
||         ADD     .S2     B8,B17,B17        ; |70| <0,9>  ^ 

   [!A1]   ROTL    .M2     B4,30,B6          ; |68| <0,10> 
||         ADD     .L2     B16,B17,B17       ; |70| <0,10>  ^ 

   [!A1]   MV      .L2     B17,B5            ; |69| <0,11> 
|| [ A0]   BDEC    .S1     L8,A0             ; |62| <0,11> 
||         ROTL    .M2     B17,5,B17         ; |63| <0,11>  ^ 

           AND     .L2     B6,B5,B19         ; |70| <1,0> 
           ADD     .L2     B18,B17,B17       ; |63| <0,13>  ^ 
           ADD     .L2     B21,B17,B17       ; |63| <0,14>  ^ 

   [!A1]   MV      .L2X    A3,B7             ; |67| <0,15>  ^ 
||         ADD     .S2     B7,B17,B17        ; |63| <0,15>  ^ 
||         ROTL    .M1X    B5,30,A3          ; |63| <1,3> 
||         LDDW    .D2T2   *B9++,B21:B20     ; |70| <1,3> 

	.dwpsn	"SSHSHA.C",71,0

   [ A1]   SUB     .L1     A1,1,A1           ; <0,16> 
|| [!A1]   ADD     .L2     B16,B17,B4        ; |63| <0,16>  ^ 
||         AND     .S2     B7,B5,B17         ; |70| <1,4>  ^ 

DW$L$_SHATransform$9$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 72
;*      Loop opening brace source line   : 72
;*      Loop closing brace source line   : 79
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 10                    
;*      Known Maximum Trip Count         : 10                    
;*      Known Max Trip Count Factor      : 10
;*      Loop Carried Dependency Bound(^) : 12
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                     1        0     
;*      .M units                     2        2     
;*      .X cross paths               4*       3     
;*      .T address paths             1        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)         11        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     4*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 12 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L9:    ; PIPED LOOP EPILOG AND PROLOG
;**  	-----------------------    K$164 = 0xca62c1d6u;
;** 72	-----------------------    L$5 = 10;
;**  	-----------------------    #pragma MUST_ITERATE(10, 10, 10)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g10:
;** 78	-----------------------    C$2 = *(double *)U$53++{2};
;** 78	-----------------------    a = _rotl(a, 5)+(b^c^d)+_lo(C$2)+e+K$164;
;** 73	-----------------------    C$1 = _rotl(b, 30);
;** 73	-----------------------    tmp = _rotl(a, 5)+(a^C$1^c)+_hi(C$2)+d+K$164;
;** 74	-----------------------    e = c;
;** 75	-----------------------    d = C$1;
;** 76	-----------------------    c = _rotl(a, 30);
;** 77	-----------------------    b = a;
;** 78	-----------------------    a = tmp;
;** 72	-----------------------    if ( --L$5 ) goto g10;
;** 82	-----------------------    _memd8((void *)digest) = _itod(U$93+b, U$90+a);

           MVK     .L1     0x1,A0            ; init prolog collapse predicate
||         MVKL    .S1     0xca62c1d6,A7
||         AND     .D1X    B6,A3,A4          ; |63| (E) <1,5> 
||         AND     .L2     B6,B4,B18         ; |63| (E) <1,5> 
||         AND     .S2     B7,B6,B17         ; |70| (E) <1,5> 
||         OR      .D2     B17,B19,B19       ; |70| (E) <1,5>  ^ 
||         ROTL    .M2     B4,5,B17          ; |70| (E) <1,5>  ^ 

           MVKH    .S1     0xca62c1d6,A7
||         ADDAD   .D2     SP,31,B31
||         ROTL    .M2     B4,30,B6          ; |68| (E) <1,10> 
||         MV      .L1X    B6,A5             ; |66| 
||         AND     .L2X    A3,B4,B20         ; |63| (E) <1,6> 
||         OR      .S2     B17,B19,B19       ; |70| (E) <1,6>  ^ 

           MVC     .S2     B22,CSR           ; interrupts on
||         ADD     .L2     B19,B17,B17       ; |70| (E) <1,7>  ^ 
||         OR      .D2     B18,B20,B18       ; |63| (E) <1,7> 

           MV      .L1X    B31,A6            ; Define a twin register
||         MV      .S1     A3,A4             ; |67| 
||         MVC     .S2     CSR,B9
||         OR      .L2X    A4,B18,B18        ; |63| (E) <1,8> 
||         ADD     .D2     B20,B17,B17       ; |70| (E) <1,8>  ^ 

           MVK     .L2     9,B0              ; |72| 
||         AND     .S2     -2,B9,B30
||         ADD     .D2     B8,B17,B17        ; |70| (E) <1,9>  ^ 

           MVC     .S2     B30,CSR           ; interrupts off
||         ADD     .L2     B16,B17,B17       ; |70| 
||         ADD     .D2     B16,B17,B5        ; |70| 

           ROTL    .M2     B17,5,B17         ; |63| (E) <1,11>  ^ 

           MV      .L2     B6,B5
||         MV      .L1X    B5,A20

           ADD     .L2     B18,B17,B17       ; |63| (E) <1,13>  ^ 
           ADD     .L2     B21,B17,B17       ; |63| (E) <1,14>  ^ 
           ADD     .L2     B7,B17,B17        ; |63| (E) <1,15>  ^ 
           ADD     .L2     B16,B17,B4        ; |63| (E) <1,16>  ^ 
           NOP             1

           MV      .L2X    A20,B4
||         MV      .L1X    B4,A3

	.dwpsn	"SSHSHA.C",72,0
           NOP             1
;** --------------------------------------------------------------------------*
L10:    ; PIPED LOOP KERNEL
DW$L$_SHATransform$11$B:
           ROTL    .M1     A3,5,A8           ; |78| <0,4>  ^ 

           XOR     .L2X    B6,A3,B7          ; |73| <0,5> 
||         XOR     .L1X    A4,B7,A9          ; |78| <0,5> 

           XOR     .L2     B5,B7,B7          ; |73| <0,6> 
||         ADD     .L1     A9,A8,A16         ; |78| <0,6>  ^ 

           ADD     .L1     A8,A16,A8         ; |78| <0,7>  ^ 

   [!A0]   MV      .L1X    B5,A5             ; |74| <0,8> Define a twin register
||         ADD     .S1     A5,A8,A8          ; |78| <0,8>  ^ 

           ADD     .L1     A7,A8,A8          ; |78| <0,9>  ^ 

   [!A0]   ROTL    .M2X    A3,30,B5          ; |76| <0,10> 
|| [ B0]   BDEC    .S2     L10,B0            ; |72| <0,10> 
||         ROTL    .M1     A8,5,A8           ; |73| <0,10>  ^ 

   [!A0]   MV      .L2X    A8,B4             ; |77| <0,11> 

           ADD     .L1X    B7,A8,A8          ; |73| <0,12>  ^ 
||         ROTL    .M2     B4,30,B8          ; |73| <1,0> 
||         XOR     .L2     B5,B4,B7          ; |78| <1,0> 

           ADD     .L1     A9,A8,A8          ; |73| <0,13>  ^ 

           ADD     .L1     A4,A8,A8          ; |73| <0,14>  ^ 
||         ROTL    .M2     B8,0,B6           ; |73| <1,2> Split a long life
||         LDDW    .D1T1   *A6++,A9:A8       ; |78| <1,2> 

	.dwpsn	"SSHSHA.C",79,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,15> 
|| [!A0]   MV      .S1X    B6,A4             ; |75| <0,15> Define a twin register
|| [!A0]   ADD     .D1     A7,A8,A3          ; |73| <0,15>  ^ 

DW$L$_SHATransform$11$E:
;** --------------------------------------------------------------------------*
L11:    ; PIPED LOOP EPILOG
;** 84	-----------------------    _memd8((void *)(digest+8)) = _itod(digest[3]+d, digest[2]+c);
;** 85	-----------------------    digest[4] = digest[4]+e;
;** 85	-----------------------    return;
           ROTL    .M1     A3,5,A8           ; |78| (E) <1,4>  ^ 

           XOR     .L2X    B6,A3,B7          ; |73| (E) <1,5> 
||         XOR     .L1X    A4,B7,A9          ; |78| (E) <1,5> 

           ADD     .L1     A9,A8,A16         ; |78| (E) <1,6>  ^ 
||         XOR     .L2     B5,B7,B7          ; |73| (E) <1,6> 

           ADD     .L1     A8,A16,A8         ; |78| (E) <1,7>  ^ 

           ADD     .L1     A5,A8,A8          ; |78| (E) <1,8>  ^ 
||         MV      .S1X    B5,A5             ; |74| (E) <1,8> Define a twin register

           LDW     .D1T1   *+A21(16),A5      ; |85| 
||         MV      .L1     A5,A19
||         ADD     .S1     A7,A8,A8          ; |78| (E) <1,9>  ^ 

           ROTL    .M1     A8,5,A8           ; |73| (E) <1,10>  ^ 
||         ROTL    .M2X    A3,30,B5          ; |76| (E) <1,10> 

           MVC     .S2     B9,CSR            ; interrupts on
||         MV      .L2X    A8,B4             ; |77| (E) <1,11> 

           ADDK    .S2     328,SP            ; |86| 
||         ADD     .L1X    B7,A8,A8          ; |73| (E) <1,12>  ^ 

           LDW     .D1T1   *+A21(12),A9      ; |84| 
||         ADD     .L1     A9,A8,A8          ; |73| (E) <1,13>  ^ 

           ADD     .L1     A4,A8,A8          ; |73| (E) <1,14>  ^ 

           ADD     .L1X    B4,A17,A7         ; |82| 
||         LDW     .D1T1   *+A21(8),A8       ; |84| 
||         ADD     .S1     A7,A8,A3          ; |73| (E) <1,15>  ^ 

           ADD     .L1     A19,A5,A3         ; |85| 
||         ADD     .S1     A3,A18,A6         ; |82| 
||         RET     .S2     B3                ; |86| 

           STW     .D1T1   A3,*+A21(16)      ; |85| 

           STNDW   .D1T1   A7:A6,*A21        ; |82| 
||         ADD     .L1X    B6,A9,A5          ; |84| 

           NOP             1
           ADD     .L1X    B5,A8,A4          ; |84| 
	.dwpsn	"SSHSHA.C",86,1
           STNDW   .D1T1   A5:A4,*+A21(8)    ; |84| 
           ; BRANCH OCCURS {B3}              ; |86| 

DW$22	.dwtag  DW_TAG_loop
	.dwattr DW$22, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L10:1:1288599004")
	.dwattr DW$22, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$22, DW_AT_begin_line(0x48)
	.dwattr DW$22, DW_AT_end_line(0x4f)
DW$23	.dwtag  DW_TAG_loop_range
	.dwattr DW$23, DW_AT_low_pc(DW$L$_SHATransform$11$B)
	.dwattr DW$23, DW_AT_high_pc(DW$L$_SHATransform$11$E)
	.dwendtag DW$22


DW$24	.dwtag  DW_TAG_loop
	.dwattr DW$24, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L8:1:1288599004")
	.dwattr DW$24, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$24, DW_AT_begin_line(0x3e)
	.dwattr DW$24, DW_AT_end_line(0x47)
DW$25	.dwtag  DW_TAG_loop_range
	.dwattr DW$25, DW_AT_low_pc(DW$L$_SHATransform$9$B)
	.dwattr DW$25, DW_AT_high_pc(DW$L$_SHATransform$9$E)
	.dwendtag DW$24


DW$26	.dwtag  DW_TAG_loop
	.dwattr DW$26, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L6:1:1288599004")
	.dwattr DW$26, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$26, DW_AT_begin_line(0x36)
	.dwattr DW$26, DW_AT_end_line(0x3d)
DW$27	.dwtag  DW_TAG_loop_range
	.dwattr DW$27, DW_AT_low_pc(DW$L$_SHATransform$7$B)
	.dwattr DW$27, DW_AT_high_pc(DW$L$_SHATransform$7$E)
	.dwendtag DW$26


DW$28	.dwtag  DW_TAG_loop
	.dwattr DW$28, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L4:1:1288599004")
	.dwattr DW$28, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$28, DW_AT_begin_line(0x2d)
	.dwattr DW$28, DW_AT_end_line(0x35)
DW$29	.dwtag  DW_TAG_loop_range
	.dwattr DW$29, DW_AT_low_pc(DW$L$_SHATransform$5$B)
	.dwattr DW$29, DW_AT_high_pc(DW$L$_SHATransform$5$E)
	.dwendtag DW$28


DW$30	.dwtag  DW_TAG_loop
	.dwattr DW$30, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L2:1:1288599004")
	.dwattr DW$30, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$30, DW_AT_begin_line(0x22)
	.dwattr DW$30, DW_AT_end_line(0x25)
DW$31	.dwtag  DW_TAG_loop_range
	.dwattr DW$31, DW_AT_low_pc(DW$L$_SHATransform$3$B)
	.dwattr DW$31, DW_AT_high_pc(DW$L$_SHATransform$3$E)
	.dwendtag DW$30

	.dwattr DW$19, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$19, DW_AT_end_line(0x56)
	.dwattr DW$19, DW_AT_end_column(0x01)
	.dwendtag DW$19

	.sect	".text"
	.global	_SHA_Bytes

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Bytes"), DW_AT_symbol_name("_SHA_Bytes")
	.dwattr DW$32, DW_AT_low_pc(_SHA_Bytes)
	.dwattr DW$32, DW_AT_high_pc(0x00)
	.dwattr DW$32, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$32, DW_AT_begin_line(0x65)
	.dwattr DW$32, DW_AT_begin_column(0x06)
	.dwattr DW$32, DW_AT_frame_base[DW_OP_breg31 96]
	.dwattr DW$32, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",102,1

;******************************************************************************
;* FUNCTION NAME: _SHA_Bytes                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A14,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A14,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,A16,A17,A18,*
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 68 Auto + 24 Save = 92 byte                 *
;******************************************************************************
_SHA_Bytes:
;** --------------------------------------------------------------------------*
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$33, DW_AT_type(*DW$T$56)
	.dwattr DW$33, DW_AT_location[DW_OP_reg4]
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$34, DW_AT_type(*DW$T$3)
	.dwattr DW$34, DW_AT_location[DW_OP_reg20]
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$35, DW_AT_type(*DW$T$10)
	.dwattr DW$35, DW_AT_location[DW_OP_reg6]
;** 102	-----------------------    len = len;
;** 103	-----------------------    q = (unsigned char * const)p;
;** 111	-----------------------    (*s).lenlo = (*s).lenlo+(unsigned)len;
;** 112	-----------------------    (*s).lenhi = (*s).lenhi+((*s).lenlo < (unsigned)len);
;** 114	-----------------------    U$12 = (*s).blkused;
;** 114	-----------------------    C$3 = U$12+len;
;** 114	-----------------------    if ( (U$12 != 0)&(C$3 < 64) ) goto g8;

           MV      .L1X    SP,A31            ; |102| 
||         STW     .D2T1   A10,*SP--(96)     ; |102| 
||         MV      .D1     A4,A10            ; |102| 
||         MVK     .S1     64,A8             ; |114| 

           LDW     .D1T2   *+A10(92),B5      ; |111| 
           LDW     .D1T1   *+A10(88),A7      ; |112| 
           STDW    .D2T2   B13:B12,*+SP(88)
           STW     .D1T1   A14,*-A31(20)

           MV      .L1X    B3,A14
||         STDW    .D2T2   B11:B10,*+SP(80)
||         MV      .L2X    A6,B10            ; |102| 
||         MV      .S2     B4,B11            ; |102| 

           ADD     .L1X    A6,B5,A3          ; |111| 
           STW     .D1T1   A3,*+A10(92)      ; |111| 
           LDW     .D1T1   *+A10(84),A3      ; |114| 
           LDW     .D1T2   *+A10(92),B5      ; |112| 
           NOP             3
           CMPEQ   .L1     A3,0,A4           ; |114| 

           CMPLTU  .L2X    B5,A6,B5          ; |112| 
||         ADD     .D1     A6,A3,A3          ; |114| 
||         ADD     .S1     A10,A3,A4         ; |118| 
||         XOR     .L1     1,A4,A5           ; |114| 

           ADD     .D1     A4,20,A4          ; |118| 
||         CMPLT   .L1     A3,A8,A8          ; |114| 

           AND     .S1     A8,A5,A0          ; |114| 
||         MVK     .S2     64,B5             ; |124| 
||         ADD     .L1X    B5,A7,A7          ; |112| 

   [!A0]   MVK     .S2     0x40,B12          ; |114| 
||         STW     .D1T1   A7,*+A10(88)      ; |112| 
|| [ A0]   B       .S1     L16               ; |114| 
||         CMPLT   .L2X    A3,B5,B0          ; |124| 

   [ A0]   CALL    .S1     _memcpy           ; |118| 
|| [!A0]   MVK     .S2     0xffffffc0,B13
|| [ A0]   ZERO    .L2     B0                ; nullify predicate

   [ B0]   BNOP    .S1     L15,3             ; |124| 
           ; BRANCHCC OCCURS {L16}           ; |114| 
;** --------------------------------------------------------------------------*
;** 124	-----------------------    if ( C$3 < 64 ) goto g7;
;**  	-----------------------    K$30 = (-64);
;** 114	-----------------------    K$16 = 64;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           NOP             1
   [!B0]   LDW     .D1T1   *+A10(84),A3      ; |125| 
           ; BRANCHCC OCCURS {L15}           ; |124| 
;**	-----------------------g4:
;** 125	-----------------------    C$2 = (*s).blkused;
;** 125	-----------------------    memcpy(C$2+(unsigned char (* const)[64])s+20, (const void *)q, (unsigned)K$16-(unsigned)C$2);
;** 126	-----------------------    C$1 = (*s).blkused;
;** 126	-----------------------    q = q-C$1+64;
;** 127	-----------------------    len = C$1+len+K$30;
;** 129	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    U$35 = (unsigned char * const)s+20;
;** 129	-----------------------    L$1 = 8;
;**  	-----------------------    U$79 = &((double *)wordblock)[0];
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g5:
;** 130	-----------------------    *U$79++ = _itod((unsigned)U$35[7]|(unsigned)U$35[6]<<8|(unsigned)U$35[5]<<16|(unsigned)U$35[4]<<24, (unsigned)U$35[3]|(unsigned)U$35[2]<<8|(unsigned)U$35[1]<<16|(unsigned)*U$35<<24);
;** 129	-----------------------    U$35 += 8;
;** 129	-----------------------    if ( --L$1 ) goto g5;
;** 136	-----------------------    SHATransform((unsigned * const)s, &wordblock);
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 129
;*      Loop opening brace source line   : 129
;*      Loop closing brace source line   : 135
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 5
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     4        3     
;*      .D units                     5*       4     
;*      .M units                     0        0     
;*      .X cross paths               0        2     
;*      .T address paths             5*       4     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        2     
;*      Bound(.L .S .D .LS .LSD)     4        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 5  Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 1
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count     : 2 (after unrolling)
;*----------------------------------------------------------------------------*
L12:    ; PIPED LOOP PROLOG
           CALL    .S2     _memcpy           ; |125| 
           NOP             3
           ADD     .L1     A10,A3,A4         ; |125| 

           MV      .L2     B11,B4            ; |125| 
||         ADDKPC  .S2     RL0,B3,0          ; |125| 
||         SUB     .L1X    B12,A3,A6         ; |125| 
||         ADD     .D1     A4,20,A4          ; |125| 

RL0:       ; CALL OCCURS {_memcpy}           ; |125| 
           NOP             1
           LDW     .D1T1   *+A10(84),A3      ; |126| 
           NOP             2
           MV      .L2X    A10,B4

           MVC     .S2     CSR,B16
||         ADD     .D2     B4,20,B5

           AND     .S2     -2,B16,B6
||         SUB     .L2X    B11,A3,B7         ; |126| 

           ADD     .L2X    B10,A3,B4         ; |127| 
||         ADDAD   .D2     B7,8,B11          ; |126| 
||         MV      .L1X    B5,A3
||         ADD     .S2     1,B5,B5

           MVC     .S2     B6,CSR            ; interrupts off
||         LDBU    .D2T2   *+B5(2),B9        ; |130| (P) <0,0> 

           LDBU    .D2T2   *+B5(1),B7        ; |130| (P) <0,1> 
||         LDBU    .D1T1   *A3++(8),A4       ; |130| (P) <0,1> 

           LDBU    .D1T1   *-A3(1),A6        ; |130| (P) <0,2> 
||         LDBU    .D2T2   *B5++(8),B8       ; |130| (P) <0,2> 

           ZERO    .L1     A0
||         MVK     .L2     6,B0              ; |129| 
||         LDBU    .D1T1   *-A3(2),A7        ; |130| (P) <0,3> 

	.dwpsn	"SSHSHA.C",129,0

           MVKH    .S1     0x10000,A0        ; init prolog collapse predicate
||         ADD     .L2     B13,B4,B10        ; |127| 
||         ADD     .D2     8,SP,B4
||         LDBU    .D1T1   *-A3(3),A7        ; |130| (P) <0,4> 
|| [ B0]   BDEC    .S2     L13,B0            ; |129| (P) <0,9> 

;** --------------------------------------------------------------------------*
L13:    ; PIPED LOOP KERNEL
DW$L$_SHA_Bytes$4$B:

           SHL     .S1     A6,24,A6          ; |130| <0,10> 
||         OR      .L1     A5,A4,A5          ; |130| <0,10> 
||         LDBU    .D1T1   *-A3(4),A6        ; |130| <1,5> 
||         LDBU    .D2T2   *+B5(2),B9        ; |130| <2,0> 

           OR      .L1     A6,A5,A4          ; |130| <0,11> 
||         SHL     .S2     B7,8,B7           ; |130| <1,6> 
||         SHL     .S1     A4,24,A5          ; |130| <1,6> 
||         LDBU    .D2T2   *+B5(1),B7        ; |130| <2,1> 
||         LDBU    .D1T1   *A3++(8),A4       ; |130| <2,1> 

           SHL     .S2     B8,16,B7          ; |130| <1,7> 
||         OR      .L2     B7,B9,B8          ; |130| <1,7> 
||         LDBU    .D2T2   *B5++(8),B8       ; |130| <2,2> 
||         LDBU    .D1T1   *-A3(1),A6        ; |130| <2,2> 

           MV      .S2X    A4,B7             ; |130| <0,13> Define a twin register
||         OR      .L2     B7,B8,B8          ; |130| <1,8> 
||         SHL     .S1     A7,8,A4           ; |130| <1,8> 
||         LDBU    .D1T1   *-A3(2),A7        ; |130| <2,3> 

	.dwpsn	"SSHSHA.C",135,0

   [ A0]   MPYSU   .M1     2,A0,A0           ; <0,14> 
|| [!A0]   STDW    .D2T2   B7:B6,*B4++       ; |130| <0,14> 
||         OR      .L2X    A5,B8,B6          ; |130| <1,9> Define a twin register
||         SHL     .S1     A7,16,A5          ; |130| <1,9> 
|| [ B0]   BDEC    .S2     L13,B0            ; |129| <1,9> 
||         OR      .L1     A4,A6,A4          ; |130| <1,9> 
||         LDBU    .D1T1   *-A3(3),A7        ; |130| <2,4> 

DW$L$_SHA_Bytes$4$E:
;** --------------------------------------------------------------------------*
L14:    ; PIPED LOOP EPILOG
;** 137	-----------------------    (*s).blkused = 0;
;** 124	-----------------------    if ( len >= (K$16 = 64) ) goto g4;

           OR      .L1     A5,A4,A5          ; |130| (E) <1,10> 
||         LDBU    .D1T1   *-A3(4),A6        ; |130| (E) <2,5> 
||         SHL     .S1     A6,24,A6          ; |130| (E) <1,10> 

           OR      .L1     A6,A5,A4          ; |130| (E) <1,11> 
||         SHL     .S2     B7,8,B7           ; |130| (E) <2,6> 
||         SHL     .S1     A4,24,A5          ; |130| (E) <2,6> 

           OR      .L2     B7,B9,B8          ; |130| (E) <2,7> 
||         SHL     .S2     B8,16,B7          ; |130| (E) <2,7> 

           MV      .L2X    A4,B7             ; |130| (E) <1,13> Define a twin register
||         OR      .S2     B7,B8,B8          ; |130| (E) <2,8> 
||         SHL     .S1     A7,8,A4           ; |130| (E) <2,8> 

           MVC     .S2     B16,CSR           ; interrupts on
||         OR      .L2X    A5,B8,B6          ; |130| (E) <2,9> Define a twin register
||         SHL     .S1     A7,16,A5          ; |130| (E) <2,9> 
||         OR      .L1     A4,A6,A4          ; |130| (E) <2,9> 
||         STDW    .D2T2   B7:B6,*B4++       ; |130| (E) <1,14> 

           OR      .L1     A5,A4,A5          ; |130| (E) <2,10> 
||         SHL     .S1     A6,24,A6          ; |130| (E) <2,10> 
||         CALL    .S2     _SHATransform     ; |136| 

           ADDKPC  .S2     RL1,B3,1          ; |136| 
||         OR      .L1     A6,A5,A4          ; |130| (E) <2,11> 

           MV      .L1     A10,A4            ; |136| 
||         MV      .L2X    A4,B7             ; |130| (E) <2,13> Define a twin register

           STDW    .D2T2   B7:B6,*B4++       ; |130| (E) <2,14> 
           ADD     .L2     8,SP,B4           ; |136| 
RL1:       ; CALL OCCURS {_SHATransform}     ; |136| 
;** --------------------------------------------------------------------------*
DW$L$_SHA_Bytes$6$B:

           CMPLT   .L2     B10,B12,B0        ; |124| 
||         ZERO    .L1     A3                ; |137| 

   [!B0]   BNOP    .S1     L12,4             ; |124| 
||         STW     .D1T1   A3,*+A10(84)      ; |137| 

   [!B0]   LDW     .D1T1   *+A10(84),A3      ; |125| 
           ; BRANCHCC OCCURS {L12}           ; |124| 
DW$L$_SHA_Bytes$6$E:
;** --------------------------------------------------------------------------*
L15:    
;**	-----------------------g7:
;** 139	-----------------------    memcpy((unsigned char (* const)[64])s+20, (const void *)q, (unsigned)len);
;** 140	-----------------------    (*s).blkused = len;
;** 140	-----------------------    goto g9;
           CALL    .S1     _memcpy           ; |139| 
           ADDKPC  .S2     RL2,B3,1          ; |139| 
           MV      .L1X    B10,A6            ; |139| 
           MV      .L2     B11,B4            ; |139| 
           ADD     .D1     A10,20,A4         ; |139| 
RL2:       ; CALL OCCURS {_memcpy}           ; |139| 
;** --------------------------------------------------------------------------*
           STW     .D1T2   B10,*+A10(84)     ; |140| 

           LDDW    .D2T2   *+SP(88),B13:B12  ; |142| 
||         MV      .L2X    A14,B3            ; |142| 
||         MV      .L1X    SP,A31            ; |142| 

           RET     .S2     B3                ; |142| 
||         LDW     .D1T1   *+A31(76),A14     ; |142| 
||         LDDW    .D2T2   *+SP(80),B11:B10  ; |142| 

           LDW     .D2T1   *++SP(96),A10     ; |142| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |142| 
;** --------------------------------------------------------------------------*
L16:    
;**	-----------------------g8:
;** 118	-----------------------    memcpy(U$12+(unsigned char (* const)[64])s+20, (const void *)q, (unsigned)len);
;** 119	-----------------------    (*s).blkused = (*s).blkused+len;
;**	-----------------------g9:
;**  	-----------------------    return;
           ADDKPC  .S2     RL3,B3,0          ; |118| 
RL3:       ; CALL OCCURS {_memcpy}           ; |118| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(84),A3      ; |119| 
           MV      .L1X    SP,A31            ; |142| 
           LDDW    .D2T2   *+SP(88),B13:B12  ; |142| 
           MV      .L2X    A14,B3            ; |142| 
           LDW     .D1T1   *+A31(76),A14     ; |142| 
           ADD     .L1X    B10,A3,A3         ; |119| 

           RET     .S2     B3                ; |142| 
||         STW     .D1T1   A3,*+A10(84)      ; |119| 
||         LDDW    .D2T2   *+SP(80),B11:B10  ; |142| 

           LDW     .D2T1   *++SP(96),A10     ; |142| 
	.dwpsn	"SSHSHA.C",142,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |142| 

DW$36	.dwtag  DW_TAG_loop
	.dwattr DW$36, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L12:1:1288599004")
	.dwattr DW$36, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$36, DW_AT_begin_line(0x7c)
	.dwattr DW$36, DW_AT_end_line(0x89)
DW$37	.dwtag  DW_TAG_loop_range
	.dwattr DW$37, DW_AT_low_pc(DW$L$_SHA_Bytes$6$B)
	.dwattr DW$37, DW_AT_high_pc(DW$L$_SHA_Bytes$6$E)

DW$38	.dwtag  DW_TAG_loop
	.dwattr DW$38, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L13:2:1288599004")
	.dwattr DW$38, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$38, DW_AT_begin_line(0x81)
	.dwattr DW$38, DW_AT_end_line(0x87)
DW$39	.dwtag  DW_TAG_loop_range
	.dwattr DW$39, DW_AT_low_pc(DW$L$_SHA_Bytes$4$B)
	.dwattr DW$39, DW_AT_high_pc(DW$L$_SHA_Bytes$4$E)
	.dwendtag DW$38

	.dwendtag DW$36

	.dwattr DW$32, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$32, DW_AT_end_line(0x8e)
	.dwattr DW$32, DW_AT_end_column(0x01)
	.dwendtag DW$32

	.sect	".text"
	.global	_SHA_Final

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Final"), DW_AT_symbol_name("_SHA_Final")
	.dwattr DW$40, DW_AT_low_pc(_SHA_Final)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$40, DW_AT_begin_line(0x90)
	.dwattr DW$40, DW_AT_begin_column(0x06)
	.dwattr DW$40, DW_AT_frame_base[DW_OP_breg31 104]
	.dwattr DW$40, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",145,1

;******************************************************************************
;* FUNCTION NAME: _SHA_Final                                                  *
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
;*   Local Frame Size  : 0 Args + 68 Auto + 32 Save = 100 byte                *
;******************************************************************************
_SHA_Final:
;** --------------------------------------------------------------------------*
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$41, DW_AT_type(*DW$T$56)
	.dwattr DW$41, DW_AT_location[DW_OP_reg4]
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$42, DW_AT_type(*DW$T$27)
	.dwattr DW$42, DW_AT_location[DW_OP_reg20]
;** 151	-----------------------    ((U$3 = (*s).blkused) >= 56) ? (pad = 120-U$3) : (pad = 56-U$3);
;** 152	-----------------------    C$1 = (*s).lenlo;
;** 156	-----------------------    lenhi = (*s).lenhi<<3|C$1>>29;
;** 157	-----------------------    lenlo = C$1<<3;
;** 159	-----------------------    memset(&c, 0, (unsigned)pad);
;** 160	-----------------------    c[0] = 128;
;** 161	-----------------------    SHA_Bytes(s, &c, pad);
;** 163	-----------------------    c[0] = lenhi>>24;
;** 164	-----------------------    c[1] = lenhi>>16;
;** 165	-----------------------    c[2] = lenhi>>8;
;** 166	-----------------------    c[3] = lenhi;
;** 167	-----------------------    c[4] = lenlo>>24;
;** 168	-----------------------    c[5] = lenlo>>16;
;** 169	-----------------------    c[6] = lenlo>>8;
;** 170	-----------------------    c[7] = lenlo;
;** 172	-----------------------    SHA_Bytes(s, &c, 8);
;** 174	-----------------------    if ( (output-(unsigned * const)s >= 20)|((unsigned * const)s-output >= 20) ) goto g3;

           STW     .D2T1   A14,*SP--(104)    ; |145| 
||         MV      .L1X    SP,A31            ; |145| 

           MV      .L1     A4,A10            ; |145| 
||         STDW    .D1T1   A11:A10,*-A31(24)

           LDW     .D1T1   *+A10(84),A3      ; |151| 
           LDW     .D1T1   *+A10(92),A11     ; |152| 
           CALL    .S1     _memset           ; |159| 

           LDW     .D1T1   *+A10(88),A14     ; |156| 
||         MVK     .S2     56,B5             ; |151| 

           MVK     .S2     56,B6             ; |151| 
||         MVK     .S1     120,A5            ; |151| 

           SUB     .L1     A5,A3,A12         ; |151| 
||         CMPLT   .L2X    A3,B5,B0          ; |151| 
||         SUB     .S1X    B4,A4,A13         ; |174| 
||         STDW    .D1T1   A13:A12,*-A31(16)
||         STDW    .D2T2   B11:B10,*+SP(96)

   [ B0]   SUB     .L1X    B6,A3,A12         ; |151| 
||         MV      .L2     B4,B10            ; |145| 
||         SUB     .S2X    A4,B4,B11         ; |174| 
||         STW     .D2T2   B13,*+SP(76)

           ADDKPC  .S2     RL4,B3,0          ; |159| 
||         MV      .L1     A12,A6            ; |159| 
||         ADD     .S1X    8,SP,A4           ; |159| 
||         ZERO    .L2     B4                ; |159| 
||         MV      .D2     B3,B13

RL4:       ; CALL OCCURS {_memset}           ; |159| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA_Bytes        ; |161| 
           ADDKPC  .S2     RL5,B3,0          ; |161| 
           MV      .L1     A12,A6            ; |161| 
           MV      .S1     A10,A4            ; |161| 
           MVK     .S2     128,B4            ; |160| 

           ADD     .L2     8,SP,B4           ; |161| 
||         STB     .D2T2   B4,*+SP(8)        ; |160| 

RL5:       ; CALL OCCURS {_SHA_Bytes}        ; |161| 
           SHL     .S1     A14,3,A3          ; |156| 
           SHRU    .S1     A11,29,A4         ; |156| 
           OR      .L1     A4,A3,A3          ; |156| 

           STB     .D2T1   A3,*+SP(11)       ; |166| 
||         SHRU    .S1     A3,24,A4          ; |163| 

           SHRU    .S1     A3,8,A4           ; |165| 
||         STB     .D2T1   A4,*+SP(8)        ; |163| 
||         SHRU    .S2X    A3,16,B4          ; |164| 

           CALL    .S2     _SHA_Bytes        ; |172| 
||         EXTU    .S1     A11,3,24,A3       ; |167| 
||         STB     .D2T2   B4,*+SP(9)        ; |164| 

           STB     .D2T1   A3,*+SP(12)       ; |167| 
||         SHL     .S2X    A11,3,B4          ; |157| 

           STB     .D2T2   B4,*+SP(15)       ; |170| 

           STB     .D2T1   A4,*+SP(10)       ; |165| 
||         EXTU    .S1     A11,3,16,A3       ; |168| 

           EXTU    .S1     A11,3,8,A3        ; |169| 
||         STB     .D2T1   A3,*+SP(13)       ; |168| 

           ADDKPC  .S2     RL6,B3,0          ; |172| 
||         STB     .D2T1   A3,*+SP(14)       ; |169| 
||         MV      .L1     A10,A4            ; |172| 
||         ADD     .L2     8,SP,B4           ; |172| 
||         MVK     .S1     0x8,A6            ; |172| 

RL6:       ; CALL OCCURS {_SHA_Bytes}        ; |172| 
;** --------------------------------------------------------------------------*
           MVK     .S1     20,A4             ; |174| 

           MVK     .S1     20,A3             ; |174| 
||         CMPLT   .L1     A13,A4,A4         ; |174| 

           NOP             1
           CMPLT   .L2X    B11,A3,B4         ; |174| 
           AND     .L2X    A4,B4,B0

   [!B0]   BNOP    .S1     L17,4             ; |174| 
|| [ B0]   LDW     .D1T1   *A10,A3           ; |175| 

   [!B0]   LDW     .D1T1   *A10,A3           ; |175| 
||         SHRU    .S1     A3,24,A3          ; |175| 

           ; BRANCHCC OCCURS {L17}           ; |174| 
;** --------------------------------------------------------------------------*
;** 175	-----------------------    *output = *(unsigned * const)s>>24;
;** 176	-----------------------    output[1] = *(unsigned * const)s>>16;
;** 177	-----------------------    output[2] = *(unsigned * const)s>>8;
;** 178	-----------------------    output[3] = *(unsigned * const)s;
;** 175	-----------------------    output[4] = *((unsigned * const)s+4)>>24;
;** 176	-----------------------    output[5] = *((unsigned * const)s+4)>>16;
;** 177	-----------------------    output[6] = *((unsigned * const)s+4)>>8;
;** 178	-----------------------    output[7] = *((unsigned * const)s+4);
;** 175	-----------------------    output[8] = *((unsigned * const)s+8)>>24;
;** 176	-----------------------    output[9] = *((unsigned * const)s+8)>>16;
;** 177	-----------------------    output[10] = *((unsigned * const)s+8)>>8;
;** 178	-----------------------    output[11] = *((unsigned * const)s+8);
;** 175	-----------------------    output[12] = *((unsigned * const)s+12)>>24;
;** 176	-----------------------    output[13] = *((unsigned * const)s+12)>>16;
;** 177	-----------------------    output[14] = *((unsigned * const)s+12)>>8;
;** 178	-----------------------    output[15] = *((unsigned * const)s+12);
;** 175	-----------------------    output[16] = *((unsigned * const)s+16)>>24;
;** 176	-----------------------    output[17] = *((unsigned * const)s+16)>>16;
;** 177	-----------------------    output[18] = *((unsigned * const)s+16)>>8;
;** 178	-----------------------    output[19] = *((unsigned * const)s+16);
;**  	-----------------------    goto g4;

           STB     .D2T1   A3,*B10           ; |175| 
||         MV      .L2     B13,B3            ; |180| 
||         MV      .L1X    SP,A31            ; |180| 

           LDW     .D1T1   *A10,A3           ; |176| 
||         LDW     .D2T2   *+SP(76),B13      ; |180| 

           NOP             3
           LDDW    .D1T1   *+A31(88),A13:A12 ; |180| 
           SHRU    .S1     A3,16,A3          ; |176| 
           STB     .D2T1   A3,*+B10(1)       ; |176| 
           LDW     .D1T1   *A10,A3           ; |177| 
           NOP             4
           SHRU    .S1     A3,8,A3           ; |177| 
           STB     .D2T1   A3,*+B10(2)       ; |177| 
           LDBU    .D1T2   *A10,B4           ; |178| 
           NOP             4
           STB     .D2T2   B4,*+B10(3)       ; |178| 
           LDW     .D1T2   *+A10(4),B4       ; |175| 
           NOP             4
           SHRU    .S2     B4,24,B4          ; |175| 
           STB     .D2T2   B4,*+B10(4)       ; |175| 
           LDW     .D1T2   *+A10(4),B4       ; |176| 
           NOP             4
           SHRU    .S2     B4,16,B4          ; |176| 
           STB     .D2T2   B4,*+B10(5)       ; |176| 
           LDW     .D1T2   *+A10(4),B4       ; |177| 
           NOP             4
           SHRU    .S2     B4,8,B4           ; |177| 
           STB     .D2T2   B4,*+B10(6)       ; |177| 
           LDBU    .D1T2   *+A10(4),B4       ; |178| 
           NOP             4
           STB     .D2T2   B4,*+B10(7)       ; |178| 
           LDW     .D1T2   *+A10(8),B4       ; |175| 
           NOP             4
           SHRU    .S2     B4,24,B4          ; |175| 
           STB     .D2T2   B4,*+B10(8)       ; |175| 
           LDW     .D1T2   *+A10(8),B4       ; |176| 
           NOP             4
           SHRU    .S2     B4,16,B4          ; |176| 
           STB     .D2T2   B4,*+B10(9)       ; |176| 
           LDW     .D1T2   *+A10(8),B4       ; |177| 
           NOP             4
           SHRU    .S2     B4,8,B4           ; |177| 
           STB     .D2T2   B4,*+B10(10)      ; |177| 
           LDBU    .D1T2   *+A10(8),B4       ; |178| 
           NOP             4
           STB     .D2T2   B4,*+B10(11)      ; |178| 
           LDW     .D1T1   *+A10(12),A3      ; |175| 
           NOP             4
           SHRU    .S1     A3,24,A3          ; |175| 
           STB     .D2T1   A3,*+B10(12)      ; |175| 
           LDW     .D1T1   *+A10(12),A3      ; |176| 
           NOP             4
           SHRU    .S1     A3,16,A3          ; |176| 
           STB     .D2T1   A3,*+B10(13)      ; |176| 
           LDW     .D1T1   *+A10(12),A3      ; |177| 
           NOP             4
           SHRU    .S1     A3,8,A3           ; |177| 
           STB     .D2T1   A3,*+B10(14)      ; |177| 
           LDBU    .D1T2   *+A10(12),B4      ; |178| 
           NOP             4
           STB     .D2T2   B4,*+B10(15)      ; |178| 
           LDW     .D1T1   *+A10(16),A3      ; |175| 
           NOP             4
           SHRU    .S1     A3,24,A3          ; |175| 
           STB     .D2T1   A3,*+B10(16)      ; |175| 
           LDW     .D1T1   *+A10(16),A3      ; |176| 
           NOP             4
           SHRU    .S1     A3,16,A3          ; |176| 
           STB     .D2T1   A3,*+B10(17)      ; |176| 
           LDW     .D1T1   *+A10(16),A3      ; |177| 
           NOP             4
           SHRU    .S1     A3,8,A3           ; |177| 
           STB     .D2T1   A3,*+B10(18)      ; |177| 
           LDBU    .D1T2   *+A10(16),B4      ; |178| 
           NOP             3
           LDDW    .D1T1   *+A31(80),A11:A10 ; |180| 
           STB     .D2T2   B4,*+B10(19)      ; |178| 

           RET     .S2     B3                ; |180| 
||         LDDW    .D2T2   *+SP(96),B11:B10  ; |180| 

           LDW     .D2T1   *++SP(104),A14    ; |180| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |180| 
;** --------------------------------------------------------------------------*
L17:    
;**	-----------------------g3:
;** 175	-----------------------    *output = *(unsigned * const)s>>24;
;** 176	-----------------------    output[1] = *(unsigned * const)s>>16;
;** 177	-----------------------    output[2] = *(unsigned * const)s>>8;
;** 178	-----------------------    output[3] = *(unsigned * const)s;
;** 175	-----------------------    output[4] = *((unsigned * const)s+4)>>24;
;** 176	-----------------------    output[5] = *((unsigned * const)s+4)>>16;
;** 177	-----------------------    output[6] = *((unsigned * const)s+4)>>8;
;** 178	-----------------------    output[7] = *((unsigned * const)s+4);
;** 175	-----------------------    output[8] = *((unsigned * const)s+8)>>24;
;** 176	-----------------------    output[9] = *((unsigned * const)s+8)>>16;
;** 177	-----------------------    output[10] = *((unsigned * const)s+8)>>8;
;** 178	-----------------------    output[11] = *((unsigned * const)s+8);
;** 175	-----------------------    output[12] = *((unsigned * const)s+12)>>24;
;** 176	-----------------------    output[13] = *((unsigned * const)s+12)>>16;
;** 177	-----------------------    output[14] = *((unsigned * const)s+12)>>8;
;** 178	-----------------------    output[15] = *((unsigned * const)s+12);
;** 175	-----------------------    output[16] = *((unsigned * const)s+16)>>24;
;** 176	-----------------------    output[17] = *((unsigned * const)s+16)>>16;
;** 177	-----------------------    output[18] = *((unsigned * const)s+16)>>8;
;** 178	-----------------------    output[19] = *((unsigned * const)s+16);
;**	-----------------------g4:
;**  	-----------------------    return;
           MV      .L2     B13,B3            ; |180| 
           LDW     .D2T2   *+SP(76),B13      ; |180| 
           MV      .L1X    SP,A31            ; |180| 
           LDDW    .D1T1   *+A31(88),A13:A12 ; |180| 
           SHRU    .S1     A3,24,A3          ; |175| 
           STB     .D2T1   A3,*B10           ; |175| 
           LDW     .D1T1   *A10,A3           ; |176| 
           NOP             4
           SHRU    .S1     A3,16,A3          ; |176| 
           STB     .D2T1   A3,*+B10(1)       ; |176| 
           LDW     .D1T1   *A10,A3           ; |177| 
           NOP             4
           SHRU    .S1     A3,8,A3           ; |177| 
           STB     .D2T1   A3,*+B10(2)       ; |177| 
           LDBU    .D1T2   *A10,B4           ; |178| 
           NOP             4
           STB     .D2T2   B4,*+B10(3)       ; |178| 
           LDW     .D1T2   *+A10(4),B4       ; |175| 
           NOP             4
           SHRU    .S2     B4,24,B4          ; |175| 
           STB     .D2T2   B4,*+B10(4)       ; |175| 
           LDW     .D1T2   *+A10(4),B4       ; |176| 
           NOP             4
           SHRU    .S2     B4,16,B4          ; |176| 
           STB     .D2T2   B4,*+B10(5)       ; |176| 
           LDW     .D1T2   *+A10(4),B4       ; |177| 
           NOP             4
           SHRU    .S2     B4,8,B4           ; |177| 
           STB     .D2T2   B4,*+B10(6)       ; |177| 
           LDBU    .D1T2   *+A10(4),B4       ; |178| 
           NOP             4
           STB     .D2T2   B4,*+B10(7)       ; |178| 
           LDW     .D1T2   *+A10(8),B4       ; |175| 
           NOP             4
           SHRU    .S2     B4,24,B4          ; |175| 
           STB     .D2T2   B4,*+B10(8)       ; |175| 
           LDW     .D1T2   *+A10(8),B4       ; |176| 
           NOP             4
           SHRU    .S2     B4,16,B4          ; |176| 
           STB     .D2T2   B4,*+B10(9)       ; |176| 
           LDW     .D1T2   *+A10(8),B4       ; |177| 
           NOP             4
           SHRU    .S2     B4,8,B4           ; |177| 
           STB     .D2T2   B4,*+B10(10)      ; |177| 
           LDBU    .D1T2   *+A10(8),B4       ; |178| 
           NOP             4
           STB     .D2T2   B4,*+B10(11)      ; |178| 
           LDW     .D1T1   *+A10(12),A3      ; |175| 
           NOP             4
           SHRU    .S1     A3,24,A3          ; |175| 
           STB     .D2T1   A3,*+B10(12)      ; |175| 
           LDW     .D1T1   *+A10(12),A3      ; |176| 
           NOP             4
           SHRU    .S1     A3,16,A3          ; |176| 
           STB     .D2T1   A3,*+B10(13)      ; |176| 
           LDW     .D1T1   *+A10(12),A3      ; |177| 
           NOP             4
           SHRU    .S1     A3,8,A3           ; |177| 
           STB     .D2T1   A3,*+B10(14)      ; |177| 
           LDBU    .D1T2   *+A10(12),B4      ; |178| 
           NOP             4
           STB     .D2T2   B4,*+B10(15)      ; |178| 
           LDW     .D1T1   *+A10(16),A3      ; |175| 
           NOP             4
           SHRU    .S1     A3,24,A3          ; |175| 
           STB     .D2T1   A3,*+B10(16)      ; |175| 
           LDW     .D1T1   *+A10(16),A3      ; |176| 
           NOP             4
           SHRU    .S1     A3,16,A3          ; |176| 
           STB     .D2T1   A3,*+B10(17)      ; |176| 
           LDW     .D1T1   *+A10(16),A3      ; |177| 
           NOP             4
           SHRU    .S1     A3,8,A3           ; |177| 
           STB     .D2T1   A3,*+B10(18)      ; |177| 
           LDBU    .D1T2   *+A10(16),B4      ; |178| 
           NOP             3
           LDDW    .D1T1   *+A31(80),A11:A10 ; |180| 
           STB     .D2T2   B4,*+B10(19)      ; |178| 

           RET     .S2     B3                ; |180| 
||         LDDW    .D2T2   *+SP(96),B11:B10  ; |180| 

           LDW     .D2T1   *++SP(104),A14    ; |180| 
	.dwpsn	"SSHSHA.C",180,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |180| 
	.dwattr DW$40, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$40, DW_AT_end_line(0xb4)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendtag DW$40

	.sect	".text"

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_do_hmac"), DW_AT_symbol_name("_sha1_do_hmac")
	.dwattr DW$43, DW_AT_low_pc(_sha1_do_hmac)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$43, DW_AT_begin_line(0x10d)
	.dwattr DW$43, DW_AT_begin_column(0x0d)
	.dwattr DW$43, DW_AT_frame_base[DW_OP_breg31 144]
	.dwattr DW$43, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",271,1

;******************************************************************************
;* FUNCTION NAME: _sha1_do_hmac                                               *
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
;*   Local Frame Size  : 0 Args + 120 Auto + 20 Save = 140 byte               *
;******************************************************************************
_sha1_do_hmac:
;** --------------------------------------------------------------------------*
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$44, DW_AT_type(*DW$T$3)
	.dwattr DW$44, DW_AT_location[DW_OP_reg4]
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$45, DW_AT_type(*DW$T$27)
	.dwattr DW$45, DW_AT_location[DW_OP_reg20]
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$46, DW_AT_type(*DW$T$10)
	.dwattr DW$46, DW_AT_location[DW_OP_reg6]
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("seq"), DW_AT_symbol_name("_seq")
	.dwattr DW$47, DW_AT_type(*DW$T$13)
	.dwattr DW$47, DW_AT_location[DW_OP_reg22]
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hmac"), DW_AT_symbol_name("_hmac")
	.dwattr DW$48, DW_AT_type(*DW$T$27)
	.dwattr DW$48, DW_AT_location[DW_OP_reg8]
;** 276	-----------------------    intermediate[0] = seq>>24;
;** 277	-----------------------    intermediate[1] = seq>>16;
;** 278	-----------------------    intermediate[2] = seq>>8;
;** 279	-----------------------    intermediate[3] = seq;
;** 281	-----------------------    s = *(struct $$fake0 *)handle;
;** 282	-----------------------    SHA_Bytes(&s, &intermediate, 4);
;** 283	-----------------------    SHA_Bytes(&s, (void * const)blk, len);
;** 284	-----------------------    SHA_Final(&s, &intermediate);
;** 285	-----------------------    s = *((struct $$fake0 *)handle+96);
;** 286	-----------------------    SHA_Bytes(&s, &intermediate, 20);
;** 287	-----------------------    SHA_Final(&s, hmac);
;** 287	-----------------------    return;
           ADDK    .S2     -144,SP           ; |271| 
           STW     .D2T2   B13,*+SP(140)     ; |271| 
           STW     .D2T1   A12,*+SP(136)     ; |271| 

           CALL    .S1     __strasg          ; |281| 
||         STB     .D2T2   B6,*+SP(107)      ; |279| 
||         SHRU    .S2     B7:B6,24,B9:B8    ; |276| 

           STB     .D2T2   B8,*+SP(104)      ; |276| 
           STDW    .D2T1   A11:A10,*+SP(128) ; |271| 

           STW     .D2T1   A13,*+SP(144)     ; |271| 
||         SHRU    .S2     B7:B6,16,B9:B8    ; |277| 

           STB     .D2T2   B8,*+SP(105)      ; |277| 
||         SHRU    .S2     B7:B6,8,B7:B6     ; |278| 
||         MV      .L2     B3,B13            ; |271| 
||         MV      .L1     A6,A12            ; |271| 
||         MV      .S1X    B4,A11            ; |271| 

           ADDKPC  .S2     RL7,B3,0          ; |281| 
||         STB     .D2T2   B6,*+SP(106)      ; |278| 
||         ADD     .L1X    4,SP,A4           ; |281| 
||         MVK     .S1     0x60,A6           ; |281| 
||         MV      .L2X    A4,B4             ; |271| 
||         MV      .D1     A4,A10            ; |271| 

RL7:       ; CALL OCCURS {__strasg}          ; |281| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA_Bytes        ; |282| 
           ADDKPC  .S2     RL8,B3,0          ; |282| 
           MV      .L1     A8,A13            ; |271| 
           MVK     .S1     0x4,A6            ; |282| 
           ADDAD   .D2     SP,13,B4          ; |282| 
           ADD     .D1X    4,SP,A4           ; |282| 
RL8:       ; CALL OCCURS {_SHA_Bytes}        ; |282| 
           CALL    .S1     _SHA_Bytes        ; |283| 
           ADDKPC  .S2     RL9,B3,1          ; |283| 
           MV      .L1     A12,A6            ; |283| 
           MV      .L2X    A11,B4            ; |283| 
           ADD     .S1X    4,SP,A4           ; |283| 
RL9:       ; CALL OCCURS {_SHA_Bytes}        ; |283| 
           CALL    .S1     _SHA_Final        ; |284| 
           ADD     .L1X    4,SP,A4           ; |284| 
           ADDAD   .D2     SP,13,B4          ; |284| 
           ADDKPC  .S2     RL10,B3,2         ; |284| 
RL10:      ; CALL OCCURS {_SHA_Final}        ; |284| 
           CALL    .S1     __strasg          ; |285| 
           ADDAD   .D1     A10,12,A3         ; |285| 
           ADD     .L1X    4,SP,A4           ; |285| 
           MVK     .S1     0x60,A6           ; |285| 
           MV      .L2X    A3,B4             ; |285| 
           ADDKPC  .S2     RL11,B3,0         ; |285| 
RL11:      ; CALL OCCURS {__strasg}          ; |285| 
           CALL    .S1     _SHA_Bytes        ; |286| 
           ADD     .L1X    4,SP,A4           ; |286| 
           ADDAD   .D2     SP,13,B4          ; |286| 
           MVK     .S1     0x14,A6           ; |286| 
           ADDKPC  .S2     RL12,B3,1         ; |286| 
RL12:      ; CALL OCCURS {_SHA_Bytes}        ; |286| 
           CALL    .S1     _SHA_Final        ; |287| 
           ADD     .L1X    4,SP,A4           ; |287| 
           MV      .L2X    A13,B4            ; |287| 
           ADDKPC  .S2     RL13,B3,2         ; |287| 
RL13:      ; CALL OCCURS {_SHA_Final}        ; |287| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T1   *+SP(128),A11:A10 ; |288| 

           LDW     .D2T1   *+SP(136),A12     ; |288| 
||         MV      .L2     B13,B3            ; |288| 

           RET     .S2     B3                ; |288| 
||         LDW     .D2T1   *+SP(144),A13     ; |288| 

           LDW     .D2T2   *+SP(140),B13     ; |288| 
           NOP             3
	.dwpsn	"SSHSHA.C",288,1
           ADDK    .S2     144,SP            ; |288| 
           ; BRANCH OCCURS {B3}              ; |288| 
	.dwattr DW$43, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$43, DW_AT_end_line(0x120)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendtag DW$43

	.sect	".text"

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_verify"), DW_AT_symbol_name("_sha1_verify")
	.dwattr DW$49, DW_AT_low_pc(_sha1_verify)
	.dwattr DW$49, DW_AT_high_pc(0x00)
	.dwattr DW$49, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$49, DW_AT_begin_line(0x128)
	.dwattr DW$49, DW_AT_begin_column(0x0c)
	.dwattr DW$49, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$49, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",298,1

;******************************************************************************
;* FUNCTION NAME: _sha1_verify                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,A22,  *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 24 Auto + 8 Save = 32 byte                  *
;******************************************************************************
_sha1_verify:
;** --------------------------------------------------------------------------*
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 249
;*      Loop closing brace source line   : 249
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 20                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Did not find schedule
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Did not find schedule
;*         ii = 8  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh14
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L18:    ; PIPED LOOP PROLOG
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$50, DW_AT_type(*DW$T$3)
	.dwattr DW$50, DW_AT_location[DW_OP_reg4]
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$51, DW_AT_type(*DW$T$27)
	.dwattr DW$51, DW_AT_location[DW_OP_reg20]
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$52, DW_AT_type(*DW$T$10)
	.dwattr DW$52, DW_AT_location[DW_OP_reg6]
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("seq"), DW_AT_symbol_name("_seq")
	.dwattr DW$53, DW_AT_type(*DW$T$13)
	.dwattr DW$53, DW_AT_location[DW_OP_reg22]
;** 300	-----------------------    sha1_do_hmac(handle, blk, len, seq, &correct);
;** 246	-----------------------    mem2 = &blk[len-1];  // [2]
;** 249	-----------------------    L$1 = 20;  // [2]
;** 243	-----------------------    mem1 = &correct[-1];  // [2]
;**  	-----------------------    #pragma MUST_ITERATE(1, 20, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g2:
;** 249	-----------------------    cp = *(++mem1);  // [2]
;** 249	-----------------------    U$19 = *(++mem2);  // [2]
;** 249	-----------------------    if ( cp != U$19 ) goto g4;  // [2]
;** 249	-----------------------    if ( --L$1 ) goto g2;  // [2]
           CALL    .S2     _sha1_do_hmac     ; |300| 
           NOP             2
           STW     .D2T1   A10,*SP--(32)     ; |298| 
           ADD     .L1X    A6,B4,A10         ; |246| 

           STW     .D2T2   B13,*+SP(28)      ; |298| 
||         MV      .L2     B3,B13            ; |298| 
||         ADD     .L1X    8,SP,A8           ; |300| 
||         ADDKPC  .S2     RL14,B3,0         ; |300| 

RL14:      ; CALL OCCURS {_sha1_do_hmac}     ; |300| 
           NOP             1

           SUB     .L1     A10,1,A4          ; |246| 
||         ADD     .L2     7,SP,B4           ; |243| 

           LDBU    .D1T1   *++A4,A3          ; |249| (P) <0,0> 
||         LDBU    .D2T2   *++B4,B6          ; |249| (P) <0,0> 

           NOP             2
           MVC     .S2     CSR,B7

           MVK     .S2     0x14,B5           ; |249| 
||         AND     .L2     -2,B7,B8

	.dwpsn	"D:/CCStudio_v3.1/C6000/cgtools/include/string.h",249,0

           MVC     .S2     B8,CSR            ; interrupts off
||         CMPEQ   .L1X    B6,A3,A0          ; |249| (P) <0,5>  ^ 

;** --------------------------------------------------------------------------*
L19:    ; PIPED LOOP KERNEL
DW$L$_sha1_verify$3$B:

           ZERO    .L2     B0                ; |249| <0,6>  ^ 
|| [ A0]   SUB     .S2     B5,1,B5           ; |249| <0,6>  ^ 

   [ A0]   MV      .L2     B5,B0             ; |249| <0,7>  ^ 

   [ B0]   BNOP    .S1     L19,4             ; |249| <0,8> 
|| [ B0]   LDBU    .D2T2   *++B4,B6          ; |249| <1,0> 
|| [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| <1,0> 

           CMPEQ   .L1X    B6,A3,A0          ; |249| <1,5>  ^ 
DW$L$_sha1_verify$3$E:
;** --------------------------------------------------------------------------*
L20:    ; PIPED LOOP EPILOG
;**	-----------------------g4:
;** 250	-----------------------    return cp == U$19;  // [2]

           CMPEQ   .L1X    B6,A3,A4          ; |250| 
||         LDW     .D2T2   *+SP(28),B13      ; |302| 
||         MVC     .S2     B7,CSR            ; interrupts on
||         MV      .L2     B13,B3            ; |302| 

	.dwpsn	"SSHSHA.C",302,1

           RETNOP  .S2     B3,5              ; |302| 
||         LDW     .D2T1   *++SP(32),A10     ; |302| 

           ; BRANCH OCCURS {B3}              ; |302| 

DW$54	.dwtag  DW_TAG_loop
	.dwattr DW$54, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L19:1:1288599004")
	.dwattr DW$54, DW_AT_begin_file("D:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$54, DW_AT_begin_line(0xf9)
	.dwattr DW$54, DW_AT_end_line(0xf9)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$_sha1_verify$3$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$_sha1_verify$3$E)
	.dwendtag DW$54

	.dwattr DW$49, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$49, DW_AT_end_line(0x12e)
	.dwattr DW$49, DW_AT_end_column(0x01)
	.dwendtag DW$49

	.sect	".text"

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_make_context"), DW_AT_symbol_name("_sha1_make_context")
	.dwattr DW$56, DW_AT_low_pc(_sha1_make_context)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$56, DW_AT_begin_line(0xe4)
	.dwattr DW$56, DW_AT_begin_column(0x0e)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",229,1

;******************************************************************************
;* FUNCTION NAME: _sha1_make_context                                          *
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
_sha1_make_context:
;** --------------------------------------------------------------------------*
;** 230	-----------------------    return safemalloc(2u, 96u);
           CALLRET .S1     _safemalloc       ; |230| 
           NOP             3
           MVK     .L1     0x2,A4            ; |230| 
	.dwpsn	"SSHSHA.C",231,1
           MVK     .S2     0x60,B4           ; |230| 
RL15:      ; CALL-RETURN OCCURS {_safemalloc}  ; |230| 
	.dwattr DW$56, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$56, DW_AT_end_line(0xe7)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"
	.global	_SHA_Init

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Init"), DW_AT_symbol_name("_SHA_Init")
	.dwattr DW$57, DW_AT_low_pc(_SHA_Init)
	.dwattr DW$57, DW_AT_high_pc(0x00)
	.dwattr DW$57, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$57, DW_AT_begin_line(0x5e)
	.dwattr DW$57, DW_AT_begin_column(0x06)
	.dwattr DW$57, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$57, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",95,1

;******************************************************************************
;* FUNCTION NAME: _SHA_Init                                                   *
;*                                                                            *
;*   Regs Modified     : A3,A5,B4,B5                                          *
;*   Regs Used         : A3,A4,A5,B3,B4,B5                                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_SHA_Init:
;** --------------------------------------------------------------------------*
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$58, DW_AT_type(*DW$T$56)
	.dwattr DW$58, DW_AT_location[DW_OP_reg4]
;** 18	-----------------------    *(unsigned * const)s = 0x67452301u;  // [5]
;** 19	-----------------------    *((unsigned * const)s+4) = 0xefcdab89u;  // [5]
;** 20	-----------------------    *((unsigned * const)s+8) = 0x98badcfeu;  // [5]
;** 21	-----------------------    *((unsigned * const)s+12) = 0x10325476u;  // [5]
;** 22	-----------------------    *((unsigned * const)s+16) = 0xc3d2e1f0u;  // [5]
;** 22	-----------------------    (*s).blkused = C$1 = 0;  // [5]
;** 98	-----------------------    (*s).lenlo = C$1;
;** 98	-----------------------    (*s).lenhi = C$1;
;** 98	-----------------------    return;
           MVKL    .S2     0x10325476,B4     ; |21| 
           MVKH    .S2     0x10325476,B4     ; |21| 

           STW     .D1T2   B4,*+A4(12)       ; |21| 
||         MVKL    .S1     0xc3d2e1f0,A3     ; |22| 
||         ZERO    .L1     A5                ; |22| 

           STW     .D1T1   A5,*+A4(84)       ; |22| 
||         MVKH    .S1     0xc3d2e1f0,A3     ; |22| 
||         MVKL    .S2     0x98badcfe,B5     ; |20| 

           RET     .S2     B3                ; |99| 
||         STW     .D1T1   A3,*+A4(16)       ; |22| 

           STW     .D1T1   A5,*+A4(92)       ; |98| 
||         MVKH    .S2     0x98badcfe,B5     ; |20| 

           STW     .D1T1   A5,*+A4(88)       ; |98| 
||         MVKL    .S2     0x67452301,B4     ; |18| 

           STW     .D1T2   B5,*+A4(8)        ; |20| 
||         MVKH    .S2     0x67452301,B4     ; |18| 
||         MVKL    .S1     0xefcdab89,A3     ; |19| 

           STW     .D1T2   B4,*A4            ; |18| 
||         MVKH    .S1     0xefcdab89,A3     ; |19| 

	.dwpsn	"SSHSHA.C",99,1
           STW     .D1T1   A3,*+A4(4)        ; |19| 
           ; BRANCH OCCURS {B3}              ; |99| 
	.dwattr DW$57, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$57, DW_AT_end_line(0x63)
	.dwattr DW$57, DW_AT_end_column(0x01)
	.dwendtag DW$57

	.sect	".text"

DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_key_internal"), DW_AT_symbol_name("_sha1_key_internal")
	.dwattr DW$59, DW_AT_low_pc(_sha1_key_internal)
	.dwattr DW$59, DW_AT_high_pc(0x00)
	.dwattr DW$59, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$59, DW_AT_begin_line(0xee)
	.dwattr DW$59, DW_AT_begin_column(0x0d)
	.dwattr DW$59, DW_AT_frame_base[DW_OP_breg31 88]
	.dwattr DW$59, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",239,1

;******************************************************************************
;* FUNCTION NAME: _sha1_key_internal                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19, *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,DP,SP,A16,A17,A18,  *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 68 Auto + 20 Save = 88 byte                 *
;******************************************************************************
_sha1_key_internal:
;** --------------------------------------------------------------------------*
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$60, DW_AT_type(*DW$T$3)
	.dwattr DW$60, DW_AT_location[DW_OP_reg4]
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$61, DW_AT_type(*DW$T$27)
	.dwattr DW$61, DW_AT_location[DW_OP_reg20]
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$62, DW_AT_type(*DW$T$10)
	.dwattr DW$62, DW_AT_location[DW_OP_reg6]
;** 240	-----------------------    keys = (struct $$fake0 *)handle;
;** 244	-----------------------    memset(&foo, 54, 64u);
;** 245	-----------------------    if ( len <= 0 ) goto g4;
;**  	-----------------------    Q$1 = &foo[0];
;** 245	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _memset           ; |244| 
           STW     .D2T1   A12,*SP--(88)     ; |239| 
           STDW    .D2T2   B11:B10,*+SP(80)  ; |239| 
           STDW    .D2T1   A11:A10,*+SP(72)  ; |239| 

           MV      .S1X    B4,A12            ; |239| 
||         MVK     .S2     0x36,B4           ; |244| 
||         CMPGT   .L1     A6,0,A11          ; |245| 

           ADDKPC  .S2     RL16,B3,0         ; |244| 
||         ADD     .L1X    8,SP,A4           ; |244| 
||         MVK     .S1     0x40,A6           ; |244| 
||         MV      .D1     A4,A10            ; |239| 
||         MV      .L2     B3,B11            ; |239| 
||         MV      .D2X    A6,B10            ; |239| 

RL16:      ; CALL OCCURS {_memset}           ; |244| 
;** --------------------------------------------------------------------------*

           MV      .L1     A11,A0
||         ZERO    .L2     B6                ; |245| 
||         ADD     .S2     8,SP,B7

   [!A0]   BNOP    .S1     L24,2             ; |245| 
|| [ A0]   MVK     .S2     64,B8             ; |245| (P) <0,1> 

   [ A0]   ADD     .L1X    1,B6,A6           ; |245| 
   [ A0]   ADD     .L1     1,A6,A31          ; |245| 
   [ A0]   CMPLT   .L2X    A6,B8,B8          ; |245| (P) <0,2> 
           ; BRANCHCC OCCURS {L24}           ; |245| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 246	-----------------------    Q$1[i] = Q$1[i]^key[i];
;** 245	-----------------------    ++i;
;** 245	-----------------------    if ( (i < len)&(i < 64) ) goto g3;

           MVK     .S2     64,B31            ; |245| (P) <1,1> 
||         MV      .L1X    B6,A4
||         MV      .S1     A12,A8
||         MVK     .L2     0x1,B1

           MV      .L1X    B7,A3
||         MVC     .S2     CSR,B16
||         LDBU    .D1T2   *+A4[A8],B4       ; |246| (P) <0,4> 

           CMPLT   .L1X    A6,B10,A16        ; |245| 
||         LDBU    .D1T1   *+A4[A3],A5       ; |246| (P) <0,5> 
||         AND     .L2     -2,B16,B5
||         ADD     .S1     1,A31,A6          ; |245| (P) <2,0> 

           AND     .L1X    B8,A16,A0         ; |245| (P) <0,4> 
||         CMPLT   .L2X    A31,B31,B8        ; |245| (P) <1,2> 
||         MVC     .S2     B5,CSR            ; interrupts off

   [!A0]   ZERO    .L2     B1                ; |245| (P) <0,6> 
||         ADD     .L1X    1,B6,A4           ; |245| 

           CMPLT   .L1X    A31,B10,A16       ; |245| 
           MV      .L1X    B10,A9
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 245
;*      Loop opening brace source line   : 246
;*      Loop closing brace source line   : 246
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     1        1     
;*      .D units                     2        1     
;*      .M units                     0        0     
;*      .X cross paths               1        2     
;*      .T address paths             1        2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     3*       3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 5 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 4
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L21:    ; PIPED LOOP PROLOG

   [ B1]   B       .S1     L22               ; |245| (P) <0,7> 
||         AND     .L1X    B8,A16,A0         ; |245| (P) <1,4> 
||         MVK     .S2     64,B8             ; |245| (P) <2,1> 
|| [ B1]   LDBU    .D1T2   *+A4[A8],B4       ; |246| (P) <1,4> 

           ADD     .S1X    2,B6,A7           ; |245| 
|| [ B1]   LDBU    .D1T1   *+A4[A3],A5       ; |246| (P) <1,5> 
||         CMPLT   .L2X    A6,B8,B8          ; |245| (P) <2,2> 
||         CMPLT   .L1     A6,A9,A16         ; |245| (P) <2,2> 

	.dwpsn	"SSHSHA.C",245,0

           MVK     .L2     0x1,B0
||         MV      .S2     B1,B5             ; |245| (P) <0,9> Split a long life
|| [!A0]   ZERO    .D2     B1                ; |245| (P) <1,6> 
||         MV      .L1     A6,A7             ; |245| (P) <2,3> Split a long life
||         ADD     .S1     1,A6,A6           ; |245| (P) <3,0> 
||         MV      .D1     A7,A4             ; |245| (P) <1,6> Split a long life

;** --------------------------------------------------------------------------*
L22:    ; PIPED LOOP KERNEL
DW$L$_sha1_key_internal$5$B:
	.dwpsn	"SSHSHA.C",246,0

           XOR     .L2X    B4,A5,B9          ; |246| <0,10> 
|| [ B1]   B       .S1     L22               ; |245| <1,7> 
||         AND     .L1X    B8,A16,A0         ; |245| <2,4> 
|| [ B1]   LDBU    .D1T2   *+A4[A8],B4       ; |246| <2,4> 
||         MVK     .S2     64,B8             ; |245| <3,1> 

   [ B0]   STB     .D2T2   B9,*+B6[B7]       ; |246| <0,11> 
||         MV      .S2     B5,B0             ; |245| <0,11> Split a long life
|| [ B1]   LDBU    .D1T1   *+A4[A3],A5       ; |246| <2,5> 
||         CMPLT   .L1     A6,A9,A16         ; |245| <3,2> 
||         CMPLT   .L2X    A6,B8,B8          ; |245| <3,2> 

           ADD     .L2     1,B6,B6           ; |245| <0,12> Define a twin register
||         MV      .D2     B1,B5             ; |245| <1,9> Split a long life
||         MV      .L1     A7,A4             ; |245| <2,6> Split a long life
|| [!A0]   ZERO    .S2     B1                ; |245| <2,6> 
||         MV      .S1     A6,A7             ; |245| <3,3> Split a long life
||         ADD     .D1     1,A6,A6           ; |245| <4,0> 

DW$L$_sha1_key_internal$5$E:
;** --------------------------------------------------------------------------*
L23:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L2X    A9,B10
||         MVC     .S2     B16,CSR           ; interrupts on
||         MV      .L1     A8,A12

;** --------------------------------------------------------------------------*
L24:    
;**	-----------------------g4:
;**  	-----------------------    SHA_Init(keys);
;** 248	-----------------------    SHA_Bytes(keys, &foo, K$5 = 64);
;** 250	-----------------------    memset(&foo, 92, (unsigned)K$5);
;** 251	-----------------------    if ( len <= 0 ) goto g8;
;**  	-----------------------    Q$2 = &foo[0];
;** 251	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _SHA_Init
           ADDKPC  .S2     RL17,B3,3
           MV      .L1     A10,A4
RL17:      ; CALL OCCURS {_SHA_Init} 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA_Bytes        ; |248| 
           MVK     .S1     0x40,A11          ; |248| 
           ADDKPC  .S2     RL18,B3,1         ; |248| 
           MV      .L1     A11,A6            ; |248| 
           ADD     .L2     8,SP,B4           ; |248| 
RL18:      ; CALL OCCURS {_SHA_Bytes}        ; |248| 
           CALL    .S1     _memset           ; |250| 
           MVK     .S2     0x5c,B4           ; |250| 
           ADD     .S1X    8,SP,A4           ; |250| 
           MV      .L1     A11,A6            ; |250| 
           ADDKPC  .S2     RL19,B3,1         ; |250| 
RL19:      ; CALL OCCURS {_memset}           ; |250| 
;** --------------------------------------------------------------------------*

           CMPGT   .L2     B10,0,B0          ; |251| 
||         ZERO    .S2     B6                ; |251| 
||         ADD     .D2     8,SP,B7

   [!B0]   BNOP    .S1     L28,2             ; |251| 
|| [ B0]   MVK     .S2     64,B8             ; |251| (P) <0,1> 

   [ B0]   ADD     .L1X    1,B6,A6           ; |251| 
   [ B0]   ADD     .L1     1,A6,A31          ; |251| 
   [ B0]   CMPLT   .L2X    A6,B8,B8          ; |251| (P) <0,2> 
           ; BRANCHCC OCCURS {L28}           ; |251| 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;** 252	-----------------------    Q$2[i] = Q$2[i]^key[i];
;** 251	-----------------------    ++i;
;** 251	-----------------------    if ( (i < len)&(i < 64) ) goto g6;
;** 251	-----------------------    K$5 = 64;

           MVK     .S2     64,B31            ; |251| (P) <1,1> 
||         MV      .L1X    B6,A4
||         MV      .S1     A12,A8
||         MVK     .L2     0x1,B1

           MV      .L1X    B7,A3
||         MVC     .S2     CSR,B16
||         LDBU    .D1T2   *+A4[A8],B4       ; |252| (P) <0,4> 

           CMPLT   .L1X    A6,B10,A16        ; |251| 
||         LDBU    .D1T1   *+A4[A3],A5       ; |252| (P) <0,5> 
||         AND     .L2     -2,B16,B5
||         ADD     .S1     1,A31,A6          ; |251| (P) <2,0> 

           AND     .L1X    B8,A16,A0         ; |251| (P) <0,4> 
||         CMPLT   .L2X    A31,B31,B8        ; |251| (P) <1,2> 
||         MVC     .S2     B5,CSR            ; interrupts off

   [!A0]   ZERO    .L2     B1                ; |251| (P) <0,6> 
||         ADD     .L1X    1,B6,A4           ; |251| 

           CMPLT   .L1X    A31,B10,A16       ; |251| 
           MV      .L1X    B10,A9
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 251
;*      Loop opening brace source line   : 252
;*      Loop closing brace source line   : 252
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     1        1     
;*      .D units                     2        1     
;*      .M units                     0        0     
;*      .X cross paths               1        2     
;*      .T address paths             1        2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     3*       3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 5 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 4
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L25:    ; PIPED LOOP PROLOG

   [ B1]   B       .S1     L26               ; |251| (P) <0,7> 
||         AND     .L1X    B8,A16,A0         ; |251| (P) <1,4> 
||         MVK     .S2     64,B8             ; |251| (P) <2,1> 
|| [ B1]   LDBU    .D1T2   *+A4[A8],B4       ; |252| (P) <1,4> 

           ADD     .S1X    2,B6,A7           ; |251| 
|| [ B1]   LDBU    .D1T1   *+A4[A3],A5       ; |252| (P) <1,5> 
||         CMPLT   .L2X    A6,B8,B8          ; |251| (P) <2,2> 
||         CMPLT   .L1     A6,A9,A16         ; |251| (P) <2,2> 

	.dwpsn	"SSHSHA.C",251,0

           MVK     .L2     0x1,B0
||         MV      .S2     B1,B5             ; |251| (P) <0,9> Split a long life
|| [!A0]   ZERO    .D2     B1                ; |251| (P) <1,6> 
||         MV      .L1     A6,A7             ; |251| (P) <2,3> Split a long life
||         ADD     .S1     1,A6,A6           ; |251| (P) <3,0> 
||         MV      .D1     A7,A4             ; |251| (P) <1,6> Split a long life

;** --------------------------------------------------------------------------*
L26:    ; PIPED LOOP KERNEL
DW$L$_sha1_key_internal$13$B:
	.dwpsn	"SSHSHA.C",252,0

           XOR     .L2X    B4,A5,B9          ; |252| <0,10> 
|| [ B1]   B       .S1     L26               ; |251| <1,7> 
||         AND     .L1X    B8,A16,A0         ; |251| <2,4> 
|| [ B1]   LDBU    .D1T2   *+A4[A8],B4       ; |252| <2,4> 
||         MVK     .S2     64,B8             ; |251| <3,1> 

   [ B0]   STB     .D2T2   B9,*+B6[B7]       ; |252| <0,11> 
||         MV      .S2     B5,B0             ; |251| <0,11> Split a long life
|| [ B1]   LDBU    .D1T1   *+A4[A3],A5       ; |252| <2,5> 
||         CMPLT   .L1     A6,A9,A16         ; |251| <3,2> 
||         CMPLT   .L2X    A6,B8,B8          ; |251| <3,2> 

           ADD     .L2     1,B6,B6           ; |251| <0,12> Define a twin register
||         MV      .D2     B1,B5             ; |251| <1,9> Split a long life
||         MV      .L1     A7,A4             ; |251| <2,6> Split a long life
|| [!A0]   ZERO    .S2     B1                ; |251| <2,6> 
||         MV      .S1     A6,A7             ; |251| <3,3> Split a long life
||         ADD     .D1     1,A6,A6           ; |251| <4,0> 

DW$L$_sha1_key_internal$13$E:
;** --------------------------------------------------------------------------*
L27:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B16,CSR           ; interrupts on
;** --------------------------------------------------------------------------*
L28:    
;**	-----------------------g8:
;** 253	-----------------------    SHA_Init(keys+96);
;** 254	-----------------------    SHA_Bytes(keys+96, &foo, K$5);
;** 256	-----------------------    memset(&foo, 0, (unsigned)K$5);
;** 256	-----------------------    return;
           CALL    .S1     _SHA_Init         ; |253| 
           ADDKPC  .S2     RL20,B3,3         ; |253| 
           ADDAD   .D1     A10,12,A4         ; |253| 
RL20:      ; CALL OCCURS {_SHA_Init}         ; |253| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA_Bytes        ; |254| 
           ADDKPC  .S2     RL21,B3,1         ; |254| 
           MV      .L1     A11,A6            ; |254| 
           ADD     .L2     8,SP,B4           ; |254| 
           ADDAD   .D1     A10,12,A4         ; |254| 
RL21:      ; CALL OCCURS {_SHA_Bytes}        ; |254| 
           CALL    .S1     _memset           ; |256| 
           ADD     .S1X    8,SP,A4           ; |256| 
           ZERO    .L2     B4                ; |256| 
           MV      .L1     A11,A6            ; |256| 
           ADDKPC  .S2     RL22,B3,1         ; |256| 
RL22:      ; CALL OCCURS {_memset}           ; |256| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(72),A11:A10  ; |257| 
||         MV      .L2     B11,B3            ; |257| 

           RET     .S2     B3                ; |257| 
||         LDDW    .D2T2   *+SP(80),B11:B10  ; |257| 

           LDW     .D2T1   *++SP(88),A12     ; |257| 
	.dwpsn	"SSHSHA.C",257,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |257| 

DW$63	.dwtag  DW_TAG_loop
	.dwattr DW$63, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L26:1:1288599004")
	.dwattr DW$63, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$63, DW_AT_begin_line(0xfb)
	.dwattr DW$63, DW_AT_end_line(0xfc)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$_sha1_key_internal$13$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$_sha1_key_internal$13$E)
	.dwendtag DW$63


DW$65	.dwtag  DW_TAG_loop
	.dwattr DW$65, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L22:1:1288599004")
	.dwattr DW$65, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$65, DW_AT_begin_line(0xf5)
	.dwattr DW$65, DW_AT_end_line(0xf6)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_sha1_key_internal$5$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_sha1_key_internal$5$E)
	.dwendtag DW$65

	.dwattr DW$59, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$59, DW_AT_end_line(0x101)
	.dwattr DW$59, DW_AT_end_column(0x01)
	.dwendtag DW$59

	.sect	".text"

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_key_buggy"), DW_AT_symbol_name("_sha1_key_buggy")
	.dwattr DW$67, DW_AT_low_pc(_sha1_key_buggy)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$67, DW_AT_begin_line(0x108)
	.dwattr DW$67, DW_AT_begin_column(0x0d)
	.dwattr DW$67, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$67, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",265,1

;******************************************************************************
;* FUNCTION NAME: _sha1_key_buggy                                             *
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
_sha1_key_buggy:
;** --------------------------------------------------------------------------*
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$68, DW_AT_type(*DW$T$3)
	.dwattr DW$68, DW_AT_location[DW_OP_reg4]
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$69, DW_AT_type(*DW$T$27)
	.dwattr DW$69, DW_AT_location[DW_OP_reg20]
;** 266	-----------------------    sha1_key_internal(handle, key, 16);
;** 266	-----------------------    return;
           CALLRET .S1     _sha1_key_internal ; |266| 
           NOP             4
	.dwpsn	"SSHSHA.C",267,1
           MVK     .S1     0x10,A6           ; |266| 
RL23:      ; CALL-RETURN OCCURS {_sha1_key_internal}  ; |266| 
	.dwattr DW$67, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$67, DW_AT_end_line(0x10b)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendtag DW$67

	.sect	".text"

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_key"), DW_AT_symbol_name("_sha1_key")
	.dwattr DW$70, DW_AT_low_pc(_sha1_key)
	.dwattr DW$70, DW_AT_high_pc(0x00)
	.dwattr DW$70, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$70, DW_AT_begin_line(0x103)
	.dwattr DW$70, DW_AT_begin_column(0x0d)
	.dwattr DW$70, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$70, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",260,1

;******************************************************************************
;* FUNCTION NAME: _sha1_key                                                   *
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
_sha1_key:
;** --------------------------------------------------------------------------*
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$71, DW_AT_type(*DW$T$3)
	.dwattr DW$71, DW_AT_location[DW_OP_reg4]
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$72, DW_AT_type(*DW$T$27)
	.dwattr DW$72, DW_AT_location[DW_OP_reg20]
;** 261	-----------------------    sha1_key_internal(handle, key, 20);
;** 261	-----------------------    return;
           CALLRET .S1     _sha1_key_internal ; |261| 
           NOP             4
	.dwpsn	"SSHSHA.C",262,1
           MVK     .S1     0x14,A6           ; |261| 
RL24:      ; CALL-RETURN OCCURS {_sha1_key_internal}  ; |261| 
	.dwattr DW$70, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$70, DW_AT_end_line(0x106)
	.dwattr DW$70, DW_AT_end_column(0x01)
	.dwendtag DW$70

	.sect	".text"

DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_init"), DW_AT_symbol_name("_sha1_init")
	.dwattr DW$73, DW_AT_low_pc(_sha1_init)
	.dwattr DW$73, DW_AT_high_pc(0x00)
	.dwattr DW$73, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$73, DW_AT_begin_line(0xc3)
	.dwattr DW$73, DW_AT_begin_column(0x0e)
	.dwattr DW$73, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$73, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",196,1

;******************************************************************************
;* FUNCTION NAME: _sha1_init                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_sha1_init:
;** --------------------------------------------------------------------------*
;** 199	-----------------------    s = (struct $$fake0 *)safemalloc(1u, 96u);
;** 200	-----------------------    SHA_Init(s);
;** 201	-----------------------    return (void *)s;
           CALL    .S1     _safemalloc       ; |199| 
           MVK     .L1     0x1,A4            ; |199| 
           STW     .D2T2   B3,*SP--(8)       ; |196| 
           ADDKPC  .S2     RL25,B3,1         ; |199| 
           MVK     .S2     0x60,B4           ; |199| 
RL25:      ; CALL OCCURS {_safemalloc}       ; |199| 
;** --------------------------------------------------------------------------*
           CALLRET .S1     _SHA_Init         ; |200| 
           LDW     .D2T2   *++SP(8),B3       ; |202| 
	.dwpsn	"SSHSHA.C",202,1
           NOP             4
RL26:      ; CALL-RETURN OCCURS {_SHA_Init}  ; |200| 
	.dwattr DW$73, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$73, DW_AT_end_line(0xca)
	.dwattr DW$73, DW_AT_end_column(0x01)
	.dwendtag DW$73

	.sect	".text"

DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_generate"), DW_AT_symbol_name("_sha1_generate")
	.dwattr DW$74, DW_AT_low_pc(_sha1_generate)
	.dwattr DW$74, DW_AT_high_pc(0x00)
	.dwattr DW$74, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$74, DW_AT_begin_line(0x122)
	.dwattr DW$74, DW_AT_begin_column(0x0d)
	.dwattr DW$74, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$74, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",292,1

;******************************************************************************
;* FUNCTION NAME: _sha1_generate                                              *
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
_sha1_generate:
;** --------------------------------------------------------------------------*
DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$75, DW_AT_type(*DW$T$3)
	.dwattr DW$75, DW_AT_location[DW_OP_reg4]
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$76, DW_AT_type(*DW$T$27)
	.dwattr DW$76, DW_AT_location[DW_OP_reg20]
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$77, DW_AT_type(*DW$T$10)
	.dwattr DW$77, DW_AT_location[DW_OP_reg6]
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("seq"), DW_AT_symbol_name("_seq")
	.dwattr DW$78, DW_AT_type(*DW$T$13)
	.dwattr DW$78, DW_AT_location[DW_OP_reg22]
;** 293	-----------------------    sha1_do_hmac(handle, blk, len, seq, blk+len);
;** 293	-----------------------    return;
           CALLRET .S1     _sha1_do_hmac     ; |293| 
           NOP             4
	.dwpsn	"SSHSHA.C",294,1
           ADD     .L1X    A6,B4,A8          ; |293| 
RL27:      ; CALL-RETURN OCCURS {_sha1_do_hmac}  ; |293| 
	.dwattr DW$74, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$74, DW_AT_end_line(0x126)
	.dwattr DW$74, DW_AT_end_column(0x01)
	.dwendtag DW$74

	.sect	".text"

DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_free_context"), DW_AT_symbol_name("_sha1_free_context")
	.dwattr DW$79, DW_AT_low_pc(_sha1_free_context)
	.dwattr DW$79, DW_AT_high_pc(0x00)
	.dwattr DW$79, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$79, DW_AT_begin_line(0xe9)
	.dwattr DW$79, DW_AT_begin_column(0x0d)
	.dwattr DW$79, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$79, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",234,1

;******************************************************************************
;* FUNCTION NAME: _sha1_free_context                                          *
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
_sha1_free_context:
;** --------------------------------------------------------------------------*
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$80, DW_AT_type(*DW$T$3)
	.dwattr DW$80, DW_AT_location[DW_OP_reg4]
;** 235	-----------------------    safefree(handle);
;** 235	-----------------------    return;
           CALLRET .S1     _safefree         ; |235| 
	.dwpsn	"SSHSHA.C",236,1
           NOP             5
RL28:      ; CALL-RETURN OCCURS {_safefree}  ; |235| 
	.dwattr DW$79, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$79, DW_AT_end_line(0xec)
	.dwattr DW$79, DW_AT_end_column(0x01)
	.dwendtag DW$79

	.sect	".text"

DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_final"), DW_AT_symbol_name("_sha1_final")
	.dwattr DW$81, DW_AT_low_pc(_sha1_final)
	.dwattr DW$81, DW_AT_high_pc(0x00)
	.dwattr DW$81, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$81, DW_AT_begin_line(0xd3)
	.dwattr DW$81, DW_AT_begin_column(0x0d)
	.dwattr DW$81, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$81, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",212,1

;******************************************************************************
;* FUNCTION NAME: _sha1_final                                                 *
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
_sha1_final:
;** --------------------------------------------------------------------------*
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$82, DW_AT_type(*DW$T$3)
	.dwattr DW$82, DW_AT_location[DW_OP_reg4]
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$83, DW_AT_type(*DW$T$27)
	.dwattr DW$83, DW_AT_location[DW_OP_reg20]
;** 215	-----------------------    SHA_Final((struct $$fake0 *)handle, output);
;** 216	-----------------------    safefree(handle);
;** 216	-----------------------    return;
           CALL    .S1     _SHA_Final        ; |215| 
           NOP             3
           STW     .D2T1   A10,*SP--(8)      ; |212| 

           ADDKPC  .S2     RL29,B3,0         ; |215| 
||         MV      .L2     B3,B13            ; |212| 
||         MV      .L1     A4,A10            ; |212| 
||         STW     .D2T2   B13,*+SP(4)       ; |212| 

RL29:      ; CALL OCCURS {_SHA_Final}        ; |215| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _safefree         ; |216| 
           ADDKPC  .S2     RL30,B3,3         ; |216| 
           MV      .L1     A10,A4            ; |216| 
RL30:      ; CALL OCCURS {_safefree}         ; |216| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |217| 

           RET     .S2     B3                ; |217| 
||         LDW     .D2T2   *+SP(4),B13       ; |217| 

           LDW     .D2T1   *++SP(8),A10      ; |217| 
	.dwpsn	"SSHSHA.C",217,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |217| 
	.dwattr DW$81, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$81, DW_AT_end_line(0xd9)
	.dwattr DW$81, DW_AT_end_column(0x01)
	.dwendtag DW$81

	.sect	".text"

DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_bytes"), DW_AT_symbol_name("_sha1_bytes")
	.dwattr DW$84, DW_AT_low_pc(_sha1_bytes)
	.dwattr DW$84, DW_AT_high_pc(0x00)
	.dwattr DW$84, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$84, DW_AT_begin_line(0xcc)
	.dwattr DW$84, DW_AT_begin_column(0x0d)
	.dwattr DW$84, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$84, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",205,1

;******************************************************************************
;* FUNCTION NAME: _sha1_bytes                                                 *
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
_sha1_bytes:
;** --------------------------------------------------------------------------*
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$85, DW_AT_type(*DW$T$3)
	.dwattr DW$85, DW_AT_location[DW_OP_reg4]
DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$86, DW_AT_type(*DW$T$3)
	.dwattr DW$86, DW_AT_location[DW_OP_reg20]
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_location[DW_OP_reg6]
;** 208	-----------------------    SHA_Bytes((struct $$fake0 *)handle, p, len);
;** 208	-----------------------    return;
           CALLRET .S1     _SHA_Bytes        ; |208| 
	.dwpsn	"SSHSHA.C",209,1
           NOP             5
RL31:      ; CALL-RETURN OCCURS {_SHA_Bytes}  ; |208| 
	.dwattr DW$84, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$84, DW_AT_end_line(0xd1)
	.dwattr DW$84, DW_AT_end_column(0x01)
	.dwendtag DW$84

	.sect	".text"

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_96_verify"), DW_AT_symbol_name("_sha1_96_verify")
	.dwattr DW$88, DW_AT_low_pc(_sha1_96_verify)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$88, DW_AT_begin_line(0x138)
	.dwattr DW$88, DW_AT_begin_column(0x0c)
	.dwattr DW$88, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$88, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",314,1

;******************************************************************************
;* FUNCTION NAME: _sha1_96_verify                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,A22,  *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 24 Auto + 8 Save = 32 byte                  *
;******************************************************************************
_sha1_96_verify:
;** --------------------------------------------------------------------------*
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 249
;*      Loop closing brace source line   : 249
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 12                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Did not find schedule
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Did not find schedule
;*         ii = 8  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh14
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L29:    ; PIPED LOOP PROLOG
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$89, DW_AT_type(*DW$T$3)
	.dwattr DW$89, DW_AT_location[DW_OP_reg4]
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$90, DW_AT_type(*DW$T$27)
	.dwattr DW$90, DW_AT_location[DW_OP_reg20]
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$91, DW_AT_type(*DW$T$10)
	.dwattr DW$91, DW_AT_location[DW_OP_reg6]
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("seq"), DW_AT_symbol_name("_seq")
	.dwattr DW$92, DW_AT_type(*DW$T$13)
	.dwattr DW$92, DW_AT_location[DW_OP_reg22]
;** 316	-----------------------    sha1_do_hmac(handle, blk, len, seq, &correct);
;** 246	-----------------------    mem2 = &blk[len-1];  // [2]
;** 249	-----------------------    L$1 = 12;  // [2]
;** 243	-----------------------    mem1 = &correct[-1];  // [2]
;**  	-----------------------    #pragma MUST_ITERATE(1, 12, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g2:
;** 249	-----------------------    cp = *(++mem1);  // [2]
;** 249	-----------------------    U$19 = *(++mem2);  // [2]
;** 249	-----------------------    if ( cp != U$19 ) goto g4;  // [2]
;** 249	-----------------------    if ( --L$1 ) goto g2;  // [2]
           CALL    .S2     _sha1_do_hmac     ; |316| 
           NOP             2
           STW     .D2T1   A10,*SP--(32)     ; |314| 
           ADD     .L1X    A6,B4,A10         ; |246| 

           STW     .D2T2   B13,*+SP(28)      ; |314| 
||         MV      .L2     B3,B13            ; |314| 
||         ADD     .L1X    8,SP,A8           ; |316| 
||         ADDKPC  .S2     RL32,B3,0         ; |316| 

RL32:      ; CALL OCCURS {_sha1_do_hmac}     ; |316| 
           NOP             1

           SUB     .L1     A10,1,A4          ; |246| 
||         ADD     .L2     7,SP,B4           ; |243| 

           LDBU    .D1T1   *++A4,A3          ; |249| (P) <0,0> 
||         LDBU    .D2T2   *++B4,B6          ; |249| (P) <0,0> 

           NOP             2
           MVC     .S2     CSR,B7
           AND     .L2     -2,B7,B8
	.dwpsn	"D:/CCStudio_v3.1/C6000/cgtools/include/string.h",249,0

           MVK     .L2     0xc,B5            ; |249| 
||         MVC     .S2     B8,CSR            ; interrupts off
||         CMPEQ   .L1X    B6,A3,A0          ; |249| (P) <0,5>  ^ 

;** --------------------------------------------------------------------------*
L30:    ; PIPED LOOP KERNEL
DW$L$_sha1_96_verify$3$B:

           ZERO    .L2     B0                ; |249| <0,6>  ^ 
|| [ A0]   SUB     .S2     B5,1,B5           ; |249| <0,6>  ^ 

   [ A0]   MV      .L2     B5,B0             ; |249| <0,7>  ^ 

   [ B0]   BNOP    .S1     L30,4             ; |249| <0,8> 
|| [ B0]   LDBU    .D2T2   *++B4,B6          ; |249| <1,0> 
|| [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| <1,0> 

           CMPEQ   .L1X    B6,A3,A0          ; |249| <1,5>  ^ 
DW$L$_sha1_96_verify$3$E:
;** --------------------------------------------------------------------------*
L31:    ; PIPED LOOP EPILOG
;**	-----------------------g4:
;** 250	-----------------------    return cp == U$19;  // [2]

           CMPEQ   .L1X    B6,A3,A4          ; |250| 
||         LDW     .D2T2   *+SP(28),B13      ; |318| 
||         MVC     .S2     B7,CSR            ; interrupts on
||         MV      .L2     B13,B3            ; |318| 

	.dwpsn	"SSHSHA.C",318,1

           RETNOP  .S2     B3,5              ; |318| 
||         LDW     .D2T1   *++SP(32),A10     ; |318| 

           ; BRANCH OCCURS {B3}              ; |318| 

DW$93	.dwtag  DW_TAG_loop
	.dwattr DW$93, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSHA.asm:L30:1:1288599004")
	.dwattr DW$93, DW_AT_begin_file("D:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$93, DW_AT_begin_line(0xf9)
	.dwattr DW$93, DW_AT_end_line(0xf9)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_sha1_96_verify$3$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_sha1_96_verify$3$E)
	.dwendtag DW$93

	.dwattr DW$88, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$88, DW_AT_end_line(0x13e)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendtag DW$88

	.sect	".text"

DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("sha1_96_generate"), DW_AT_symbol_name("_sha1_96_generate")
	.dwattr DW$95, DW_AT_low_pc(_sha1_96_generate)
	.dwattr DW$95, DW_AT_high_pc(0x00)
	.dwattr DW$95, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$95, DW_AT_begin_line(0x130)
	.dwattr DW$95, DW_AT_begin_column(0x0d)
	.dwattr DW$95, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$95, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",306,1

;******************************************************************************
;* FUNCTION NAME: _sha1_96_generate                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,A21,A22, *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,A21,A22, *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 24 Auto + 8 Save = 32 byte                  *
;******************************************************************************
_sha1_96_generate:
;** --------------------------------------------------------------------------*
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$96, DW_AT_type(*DW$T$3)
	.dwattr DW$96, DW_AT_location[DW_OP_reg4]
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$97, DW_AT_type(*DW$T$27)
	.dwattr DW$97, DW_AT_location[DW_OP_reg20]
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$98, DW_AT_type(*DW$T$10)
	.dwattr DW$98, DW_AT_location[DW_OP_reg6]
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("seq"), DW_AT_symbol_name("_seq")
	.dwattr DW$99, DW_AT_type(*DW$T$13)
	.dwattr DW$99, DW_AT_location[DW_OP_reg22]
;** 308	-----------------------    sha1_do_hmac(handle, blk, len, seq, &full);
;** 309	-----------------------    memcpy(blk+len, &full, 12u);
;** 309	-----------------------    return;
           CALL    .S1     _sha1_do_hmac     ; |308| 
           NOP             2
           STW     .D2T2   B10,*SP--(32)     ; |306| 
           ADD     .L2X    A6,B4,B10         ; |309| 

           ADDKPC  .S2     RL33,B3,0         ; |308| 
||         MV      .L2     B3,B13            ; |306| 
||         ADD     .L1X    8,SP,A8           ; |308| 
||         STW     .D2T2   B13,*+SP(28)      ; |306| 

RL33:      ; CALL OCCURS {_sha1_do_hmac}     ; |308| 
;** --------------------------------------------------------------------------*
           ADD     .L2     8,SP,B4           ; |309| 
           LDNW    .D2T2   *+B4(8),B6        ; |309| 
           LDNDW   .D2T2   *B4,B5:B4         ; |309| 
           NOP             2
           MV      .L2     B13,B3            ; |310| 
           STNW    .D2T2   B6,*+B10(8)       ; |309| 
           STNDW   .D2T2   B5:B4,*B10        ; |309| 

           LDW     .D2T2   *+SP(28),B13      ; |310| 
||         RET     .S2     B3                ; |310| 

           LDW     .D2T2   *++SP(32),B10     ; |310| 
	.dwpsn	"SSHSHA.C",310,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |310| 
	.dwattr DW$95, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$95, DW_AT_end_line(0x136)
	.dwattr DW$95, DW_AT_end_column(0x01)
	.dwendtag DW$95

	.sect	".text"
	.global	_hmac_sha1_simple

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("hmac_sha1_simple"), DW_AT_symbol_name("_hmac_sha1_simple")
	.dwattr DW$100, DW_AT_low_pc(_hmac_sha1_simple)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$100, DW_AT_begin_line(0x140)
	.dwattr DW$100, DW_AT_begin_column(0x06)
	.dwattr DW$100, DW_AT_frame_base[DW_OP_breg31 240]
	.dwattr DW$100, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",321,32

;******************************************************************************
;* FUNCTION NAME: _hmac_sha1_simple                                           *
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
;*   Local Frame Size  : 0 Args + 216 Auto + 20 Save = 236 byte               *
;******************************************************************************
_hmac_sha1_simple:
;** --------------------------------------------------------------------------*
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$101, DW_AT_type(*DW$T$3)
	.dwattr DW$101, DW_AT_location[DW_OP_reg4]
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("keylen"), DW_AT_symbol_name("_keylen")
	.dwattr DW$102, DW_AT_type(*DW$T$10)
	.dwattr DW$102, DW_AT_location[DW_OP_reg20]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$103, DW_AT_type(*DW$T$3)
	.dwattr DW$103, DW_AT_location[DW_OP_reg6]
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("datalen"), DW_AT_symbol_name("_datalen")
	.dwattr DW$104, DW_AT_type(*DW$T$10)
	.dwattr DW$104, DW_AT_location[DW_OP_reg22]
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$105, DW_AT_type(*DW$T$27)
	.dwattr DW$105, DW_AT_location[DW_OP_reg8]
;** 325	-----------------------    sha1_key_internal(&states, (unsigned char * const)key, keylen);
;** 326	-----------------------    SHA_Bytes((struct $$fake0 *)&states, data, datalen);
;** 327	-----------------------    SHA_Final((struct $$fake0 *)&states, &intermediate);
;** 329	-----------------------    C$1 = &states[1];
;** 329	-----------------------    SHA_Bytes(C$1, &intermediate, 20);
;** 330	-----------------------    SHA_Final(C$1, output);
;** 330	-----------------------    return;
           CALL    .S1     _sha1_key_internal ; |325| 
           ADDK    .S2     -240,SP           ; |321| 
           STDW    .D2T1   A11:A10,*+SP(224) ; |321| 

           MV      .L1X    B4,A6             ; |321| 
||         MV      .S1     A6,A10            ; |321| 
||         STDW    .D2T2   B11:B10,*+SP(232) ; |321| 

           MV      .L1X    B6,A11            ; |321| 
||         STW     .D2T1   A12,*+SP(240)     ; |321| 

           ADDKPC  .S2     RL34,B3,0         ; |325| 
||         ADD     .L1X    8,SP,A4           ; |325| 
||         MV      .L2X    A4,B4             ; |321| 
||         MV      .S1     A8,A12            ; |321| 
||         MV      .D2     B3,B11            ; |321| 

RL34:      ; CALL OCCURS {_sha1_key_internal}  ; |325| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA_Bytes        ; |326| 
           ADDKPC  .S2     RL35,B3,1         ; |326| 
           MV      .L1     A11,A6            ; |326| 
           MV      .L2X    A10,B4            ; |326| 
           ADD     .S1X    8,SP,A4           ; |326| 
RL35:      ; CALL OCCURS {_SHA_Bytes}        ; |326| 
           CALL    .S1     _SHA_Final        ; |327| 
           ADD     .L1X    8,SP,A4           ; |327| 
           ADDAD   .D2     SP,25,B4          ; |327| 
           ADDKPC  .S2     RL36,B3,2         ; |327| 
RL36:      ; CALL OCCURS {_SHA_Final}        ; |327| 
           CALL    .S1     _SHA_Bytes        ; |329| 
           ADDAD   .D2     SP,13,B10         ; |329| 
           ADDAD   .D2     SP,25,B4          ; |329| 
           MVK     .S1     0x14,A6           ; |329| 
           MV      .L1X    B10,A4            ; |329| 
           ADDKPC  .S2     RL37,B3,0         ; |329| 
RL37:      ; CALL OCCURS {_SHA_Bytes}        ; |329| 
           CALL    .S1     _SHA_Final        ; |330| 
           MV      .L2X    A12,B4            ; |330| 
           MV      .L1X    B10,A4            ; |330| 
           ADDKPC  .S2     RL38,B3,2         ; |330| 
RL38:      ; CALL OCCURS {_SHA_Final}        ; |330| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(224),A11:A10 ; |331| 
||         MV      .L2     B11,B3            ; |331| 

           RET     .S2     B3                ; |331| 
||         LDW     .D2T1   *+SP(240),A12     ; |331| 

           LDDW    .D2T2   *+SP(232),B11:B10 ; |331| 
           NOP             3
	.dwpsn	"SSHSHA.C",331,1
           ADDK    .S2     240,SP            ; |331| 
           ; BRANCH OCCURS {B3}              ; |331| 
	.dwattr DW$100, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$100, DW_AT_end_line(0x14b)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendtag DW$100

	.sect	".text"
	.global	_SHA_Simple

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Simple"), DW_AT_symbol_name("_SHA_Simple")
	.dwattr DW$106, DW_AT_low_pc(_SHA_Simple)
	.dwattr DW$106, DW_AT_high_pc(0x00)
	.dwattr DW$106, DW_AT_begin_file("SSHSHA.C")
	.dwattr DW$106, DW_AT_begin_line(0xb6)
	.dwattr DW$106, DW_AT_begin_column(0x06)
	.dwattr DW$106, DW_AT_frame_base[DW_OP_breg31 104]
	.dwattr DW$106, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSHA.C",183,1

;******************************************************************************
;* FUNCTION NAME: _SHA_Simple                                                 *
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
;*   Local Frame Size  : 0 Args + 96 Auto + 8 Save = 104 byte                 *
;******************************************************************************
_SHA_Simple:
;** --------------------------------------------------------------------------*
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$107, DW_AT_type(*DW$T$3)
	.dwattr DW$107, DW_AT_location[DW_OP_reg4]
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$108, DW_AT_type(*DW$T$10)
	.dwattr DW$108, DW_AT_location[DW_OP_reg20]
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$109, DW_AT_type(*DW$T$27)
	.dwattr DW$109, DW_AT_location[DW_OP_reg6]
;** 186	-----------------------    SHA_Init(&s);
;** 187	-----------------------    SHA_Bytes(&s, p, len);
;** 188	-----------------------    SHA_Final(&s, output);
;** 188	-----------------------    return;
           CALL    .S1     _SHA_Init         ; |186| 
           MV      .S1     A4,A7             ; |183| 
           NOP             1
           STW     .D2T1   A10,*SP--(104)    ; |183| 

           MV      .L1X    B4,A6             ; |183| 
||         MV      .S1     A6,A10            ; |183| 

           ADDKPC  .S2     RL39,B3,0         ; |186| 
||         MV      .L2     B3,B13            ; |183| 
||         ADD     .L1X    4,SP,A4           ; |186| 
||         STW     .D2T2   B13,*+SP(100)     ; |183| 

RL39:      ; CALL OCCURS {_SHA_Init}         ; |186| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA_Bytes        ; |187| 
           ADDKPC  .S2     RL40,B3,2         ; |187| 
           MV      .L2X    A7,B4             ; |187| 
           ADD     .L1X    4,SP,A4           ; |187| 
RL40:      ; CALL OCCURS {_SHA_Bytes}        ; |187| 
           CALL    .S1     _SHA_Final        ; |188| 
           ADD     .L1X    4,SP,A4           ; |188| 
           MV      .L2X    A10,B4            ; |188| 
           ADDKPC  .S2     RL41,B3,2         ; |188| 
RL41:      ; CALL OCCURS {_SHA_Final}        ; |188| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |189| 

           RET     .S2     B3                ; |189| 
||         LDW     .D2T2   *+SP(100),B13     ; |189| 

           LDW     .D2T1   *++SP(104),A10    ; |189| 
	.dwpsn	"SSHSHA.C",189,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |189| 
	.dwattr DW$106, DW_AT_end_file("SSHSHA.C")
	.dwattr DW$106, DW_AT_end_line(0xbd)
	.dwattr DW$106, DW_AT_end_column(0x01)
	.dwendtag DW$106

;; Inlined function references:
;; [  2] memcmp
;; [  5] SHA_Core_Init
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"SHA-1",0
SL2:	.string	"hmac-sha1",0
SL3:	.string	"HMAC-SHA1",0
SL4:	.string	"hmac-sha1-96",0
SL5:	.string	"HMAC-SHA1-96",0
SL6:	.string	"bug-compatible HMAC-SHA1",0
SL7:	.string	"bug-compatible HMAC-SHA1-96",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_memset
	.global	_safemalloc
	.global	_safefree
	.global	_memcpy
	.global	__strasg

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$23	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

DW$T$43	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
	.dwendtag DW$T$46


DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$25


DW$T$28	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$28


DW$T$33	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$35

DW$T$41	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$41, DW_AT_address_class(0x20)

DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
	.dwendtag DW$T$50


DW$T$53	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
	.dwendtag DW$T$53


DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$63


DW$T$64	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$68

DW$T$27	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$27, DW_AT_address_class(0x20)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$37


DW$T$75	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
	.dwendtag DW$T$75

DW$T$49	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$49, DW_AT_address_class(0x20)
DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$52, DW_AT_address_class(0x20)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)
DW$T$56	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$55)
	.dwattr DW$T$56, DW_AT_address_class(0x20)
DW$T$92	.dwtag  DW_TAG_const_type
	.dwattr DW$T$92, DW_AT_type(*DW$T$32)
DW$T$93	.dwtag  DW_TAG_const_type
	.dwattr DW$T$93, DW_AT_type(*DW$T$39)
DW$T$40	.dwtag  DW_TAG_const_type
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("word32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("SHA_State"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)

DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("ssh_hash")
	.dwattr DW$T$32, DW_AT_byte_size(0x14)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$160, DW_AT_name("init"), DW_AT_symbol_name("_init")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$161, DW_AT_name("bytes"), DW_AT_symbol_name("_bytes")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$162, DW_AT_name("final"), DW_AT_symbol_name("_final")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$163, DW_AT_name("hlen"), DW_AT_symbol_name("_hlen")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$164, DW_AT_name("text_name"), DW_AT_symbol_name("_text_name")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("ssh_mac")
	.dwattr DW$T$39, DW_AT_byte_size(0x20)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$165, DW_AT_name("make_context"), DW_AT_symbol_name("_make_context")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$166, DW_AT_name("free_context"), DW_AT_symbol_name("_free_context")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$167, DW_AT_name("setkey"), DW_AT_symbol_name("_setkey")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$168, DW_AT_name("generate"), DW_AT_symbol_name("_generate")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$169, DW_AT_name("verify"), DW_AT_symbol_name("_verify")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$170, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$171, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$172, DW_AT_name("text_name"), DW_AT_symbol_name("_text_name")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39

DW$T$24	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_address_class(0x20)
DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$26, DW_AT_address_class(0x20)
DW$T$29	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_address_class(0x20)
DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$33)
	.dwattr DW$T$34, DW_AT_address_class(0x20)
DW$T$36	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$36, DW_AT_address_class(0x20)
DW$T$38	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$38, DW_AT_address_class(0x20)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x60)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$173, DW_AT_name("h"), DW_AT_symbol_name("_h")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$174, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$175, DW_AT_name("blkused"), DW_AT_symbol_name("_blkused")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("lenhi"), DW_AT_symbol_name("_lenhi")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$177, DW_AT_name("lenlo"), DW_AT_symbol_name("_lenlo")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_address_class(0x20)

DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x40)
DW$178	.dwtag  DW_TAG_subrange_type
	.dwattr DW$178, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$21


DW$T$20	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$20, DW_AT_byte_size(0x14)
DW$179	.dwtag  DW_TAG_subrange_type
	.dwattr DW$179, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$20

DW$T$30	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$30, DW_AT_byte_size(0x01)

	.dwattr DW$19, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
	.dwattr DW$106, DW_AT_external(0x01)
	.dwattr DW$100, DW_AT_external(0x01)
	.dwattr DW$88, DW_AT_type(*DW$T$10)
	.dwattr DW$73, DW_AT_type(*DW$T$3)
	.dwattr DW$56, DW_AT_type(*DW$T$3)
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$180, DW_AT_location[DW_OP_reg0]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$181, DW_AT_location[DW_OP_reg1]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$182, DW_AT_location[DW_OP_reg2]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$183, DW_AT_location[DW_OP_reg3]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$184, DW_AT_location[DW_OP_reg4]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$185, DW_AT_location[DW_OP_reg5]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$186, DW_AT_location[DW_OP_reg6]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$187, DW_AT_location[DW_OP_reg7]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$188, DW_AT_location[DW_OP_reg8]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$189, DW_AT_location[DW_OP_reg9]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$190, DW_AT_location[DW_OP_reg10]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$191, DW_AT_location[DW_OP_reg11]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$192, DW_AT_location[DW_OP_reg12]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$193, DW_AT_location[DW_OP_reg13]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$194, DW_AT_location[DW_OP_reg14]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$195, DW_AT_location[DW_OP_reg15]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$196, DW_AT_location[DW_OP_reg16]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$197, DW_AT_location[DW_OP_reg17]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$198, DW_AT_location[DW_OP_reg18]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$199, DW_AT_location[DW_OP_reg19]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$200, DW_AT_location[DW_OP_reg20]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$201, DW_AT_location[DW_OP_reg21]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$202, DW_AT_location[DW_OP_reg22]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$203, DW_AT_location[DW_OP_reg23]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$204, DW_AT_location[DW_OP_reg24]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$205, DW_AT_location[DW_OP_reg25]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$206, DW_AT_location[DW_OP_reg26]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$207, DW_AT_location[DW_OP_reg27]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$208, DW_AT_location[DW_OP_reg28]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$209, DW_AT_location[DW_OP_reg29]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$210, DW_AT_location[DW_OP_reg30]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$211, DW_AT_location[DW_OP_reg31]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x20]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x21]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x22]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x23]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x24]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x25]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x26]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x27]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x28]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x29]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x2a]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x2b]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x2c]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x2d]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x2e]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x2f]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x30]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x31]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x32]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x33]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x34]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x35]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x36]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x37]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x38]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x39]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x3a]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x3b]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x3c]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x3d]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x3e]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x3f]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x40]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x41]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x42]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x43]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x44]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x45]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x46]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x47]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$252, DW_AT_location[DW_OP_regx 0x48]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$253, DW_AT_location[DW_OP_regx 0x49]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$254, DW_AT_location[DW_OP_regx 0x4a]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$255, DW_AT_location[DW_OP_regx 0x4b]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$256, DW_AT_location[DW_OP_regx 0x4c]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$257, DW_AT_location[DW_OP_regx 0x4d]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$258, DW_AT_location[DW_OP_regx 0x4e]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$259, DW_AT_location[DW_OP_regx 0x4f]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$260, DW_AT_location[DW_OP_regx 0x50]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$261, DW_AT_location[DW_OP_regx 0x51]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$262, DW_AT_location[DW_OP_regx 0x52]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$263, DW_AT_location[DW_OP_regx 0x53]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$264, DW_AT_location[DW_OP_regx 0x54]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$265, DW_AT_location[DW_OP_regx 0x55]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$266, DW_AT_location[DW_OP_regx 0x56]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$267, DW_AT_location[DW_OP_regx 0x57]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$268, DW_AT_location[DW_OP_regx 0x58]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$269, DW_AT_location[DW_OP_regx 0x59]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$270, DW_AT_location[DW_OP_regx 0x5a]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$271, DW_AT_location[DW_OP_regx 0x5b]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$272, DW_AT_location[DW_OP_regx 0x5c]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$273, DW_AT_location[DW_OP_regx 0x5d]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$274, DW_AT_location[DW_OP_regx 0x5e]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$275, DW_AT_location[DW_OP_regx 0x5f]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$276, DW_AT_location[DW_OP_regx 0x60]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$277, DW_AT_location[DW_OP_regx 0x61]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$278, DW_AT_location[DW_OP_regx 0x62]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$279, DW_AT_location[DW_OP_regx 0x63]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$280, DW_AT_location[DW_OP_regx 0x64]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$281, DW_AT_location[DW_OP_regx 0x65]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$282, DW_AT_location[DW_OP_regx 0x66]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$283, DW_AT_location[DW_OP_regx 0x67]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$284, DW_AT_location[DW_OP_regx 0x68]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$285, DW_AT_location[DW_OP_regx 0x69]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$286, DW_AT_location[DW_OP_regx 0x6a]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$287, DW_AT_location[DW_OP_regx 0x6b]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$288, DW_AT_location[DW_OP_regx 0x6c]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$289, DW_AT_location[DW_OP_regx 0x6d]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$290, DW_AT_location[DW_OP_regx 0x6e]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$291, DW_AT_location[DW_OP_regx 0x6f]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$292, DW_AT_location[DW_OP_regx 0x70]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$293, DW_AT_location[DW_OP_regx 0x71]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$294, DW_AT_location[DW_OP_regx 0x72]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$295, DW_AT_location[DW_OP_regx 0x73]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$296, DW_AT_location[DW_OP_regx 0x74]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$297, DW_AT_location[DW_OP_regx 0x75]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$298, DW_AT_location[DW_OP_regx 0x76]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$299, DW_AT_location[DW_OP_regx 0x77]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$300, DW_AT_location[DW_OP_regx 0x78]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$301, DW_AT_location[DW_OP_regx 0x79]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$302, DW_AT_location[DW_OP_regx 0x7a]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$303, DW_AT_location[DW_OP_regx 0x7b]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$304, DW_AT_location[DW_OP_regx 0x7c]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$305, DW_AT_location[DW_OP_regx 0x7d]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$306, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

