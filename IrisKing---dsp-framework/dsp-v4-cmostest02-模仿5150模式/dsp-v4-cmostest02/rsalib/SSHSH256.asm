;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Thu Mar 31 17:03:37 2011                                *
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
	.dwattr DW$CU, DW_AT_name("SSHSH256.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("safemalloc"), DW_AT_symbol_name("_safemalloc")
	.dwattr DW$9, DW_AT_type(*DW$T$3)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$9


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("safefree"), DW_AT_symbol_name("_safefree")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$12

	.global	_ssh_sha256
	.sect	".const"
	.align	4
_ssh_sha256:
	.field  	_sha256_init,32		; _ssh_sha256._init @ 0
	.field  	_sha256_bytes,32		; _ssh_sha256._bytes @ 32
	.field  	_sha256_final,32		; _ssh_sha256._final @ 64
	.field  	32,32			; _ssh_sha256._hlen @ 96
	.field  	SL1,32		; _ssh_sha256._text_name @ 128

DW$14	.dwtag  DW_TAG_variable, DW_AT_name("ssh_sha256"), DW_AT_symbol_name("_ssh_sha256")
	.dwattr DW$14, DW_AT_location[DW_OP_addr _ssh_sha256]
	.dwattr DW$14, DW_AT_type(*DW$T$76)
	.dwattr DW$14, DW_AT_external(0x01)
	.sect	".const"
	.align	8
_k$1:
	.field  	1116352408,32			; _k$1[0] @ 0
	.field  	1899447441,32			; _k$1[1] @ 32
	.field  	-1245643825,32			; _k$1[2] @ 64
	.field  	-373957723,32			; _k$1[3] @ 96
	.field  	961987163,32			; _k$1[4] @ 128
	.field  	1508970993,32			; _k$1[5] @ 160
	.field  	-1841331548,32			; _k$1[6] @ 192
	.field  	-1424204075,32			; _k$1[7] @ 224
	.field  	-670586216,32			; _k$1[8] @ 256
	.field  	310598401,32			; _k$1[9] @ 288
	.field  	607225278,32			; _k$1[10] @ 320
	.field  	1426881987,32			; _k$1[11] @ 352
	.field  	1925078388,32			; _k$1[12] @ 384
	.field  	-2132889090,32			; _k$1[13] @ 416
	.field  	-1680079193,32			; _k$1[14] @ 448
	.field  	-1046744716,32			; _k$1[15] @ 480
	.field  	-459576895,32			; _k$1[16] @ 512
	.field  	-272742522,32			; _k$1[17] @ 544
	.field  	264347078,32			; _k$1[18] @ 576
	.field  	604807628,32			; _k$1[19] @ 608
	.field  	770255983,32			; _k$1[20] @ 640
	.field  	1249150122,32			; _k$1[21] @ 672
	.field  	1555081692,32			; _k$1[22] @ 704
	.field  	1996064986,32			; _k$1[23] @ 736
	.field  	-1740746414,32			; _k$1[24] @ 768
	.field  	-1473132947,32			; _k$1[25] @ 800
	.field  	-1341970488,32			; _k$1[26] @ 832
	.field  	-1084653625,32			; _k$1[27] @ 864
	.field  	-958395405,32			; _k$1[28] @ 896
	.field  	-710438585,32			; _k$1[29] @ 928
	.field  	113926993,32			; _k$1[30] @ 960
	.field  	338241895,32			; _k$1[31] @ 992
	.field  	666307205,32			; _k$1[32] @ 1024
	.field  	773529912,32			; _k$1[33] @ 1056
	.field  	1294757372,32			; _k$1[34] @ 1088
	.field  	1396182291,32			; _k$1[35] @ 1120
	.field  	1695183700,32			; _k$1[36] @ 1152
	.field  	1986661051,32			; _k$1[37] @ 1184
	.field  	-2117940946,32			; _k$1[38] @ 1216
	.field  	-1838011259,32			; _k$1[39] @ 1248
	.field  	-1564481375,32			; _k$1[40] @ 1280
	.field  	-1474664885,32			; _k$1[41] @ 1312
	.field  	-1035236496,32			; _k$1[42] @ 1344
	.field  	-949202525,32			; _k$1[43] @ 1376
	.field  	-778901479,32			; _k$1[44] @ 1408
	.field  	-694614492,32			; _k$1[45] @ 1440
	.field  	-200395387,32			; _k$1[46] @ 1472
	.field  	275423344,32			; _k$1[47] @ 1504
	.field  	430227734,32			; _k$1[48] @ 1536
	.field  	506948616,32			; _k$1[49] @ 1568
	.field  	659060556,32			; _k$1[50] @ 1600
	.field  	883997877,32			; _k$1[51] @ 1632
	.field  	958139571,32			; _k$1[52] @ 1664
	.field  	1322822218,32			; _k$1[53] @ 1696
	.field  	1537002063,32			; _k$1[54] @ 1728
	.field  	1747873779,32			; _k$1[55] @ 1760
	.field  	1955562222,32			; _k$1[56] @ 1792
	.field  	2024104815,32			; _k$1[57] @ 1824
	.field  	-2067236844,32			; _k$1[58] @ 1856
	.field  	-1933114872,32			; _k$1[59] @ 1888
	.field  	-1866530822,32			; _k$1[60] @ 1920
	.field  	-1538233109,32			; _k$1[61] @ 1952
	.field  	-1090935817,32			; _k$1[62] @ 1984
	.field  	-965641998,32			; _k$1[63] @ 2016

;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\Users\ADMINI~1\AppData\Local\Temp\TI1442 C:\Users\ADMINI~1\AppData\Local\Temp\TI1444 
	.sect	".text"
	.global	_SHA256_Core_Init

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA256_Core_Init"), DW_AT_symbol_name("_SHA256_Core_Init")
	.dwattr DW$15, DW_AT_low_pc(_SHA256_Core_Init)
	.dwattr DW$15, DW_AT_high_pc(0x00)
	.dwattr DW$15, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$15, DW_AT_begin_line(0x16)
	.dwattr DW$15, DW_AT_begin_column(0x06)
	.dwattr DW$15, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$15, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH256.C",22,40

;******************************************************************************
;* FUNCTION NAME: _SHA256_Core_Init                                           *
;*                                                                            *
;*   Regs Modified     : A3,B4,B5                                             *
;*   Regs Used         : A3,A4,B3,B4,B5                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_SHA256_Core_Init:
;** --------------------------------------------------------------------------*
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$16, DW_AT_type(*DW$T$46)
	.dwattr DW$16, DW_AT_location[DW_OP_reg4]
;** 23	-----------------------    *(unsigned * const)s = 0x6a09e667u;
;** 24	-----------------------    *((unsigned * const)s+4) = 0xbb67ae85u;
;** 25	-----------------------    *((unsigned * const)s+8) = 0x3c6ef372u;
;** 26	-----------------------    *((unsigned * const)s+12) = 0xa54ff53au;
;** 27	-----------------------    *((unsigned * const)s+16) = 0x510e527fu;
;** 28	-----------------------    *((unsigned * const)s+20) = 0x9b05688cu;
;** 29	-----------------------    *((unsigned * const)s+24) = 0x1f83d9abu;
;** 30	-----------------------    *((unsigned * const)s+28) = 0x5be0cd19u;
;** 30	-----------------------    return;

           MVKL    .S2     0x1f83d9ab,B4     ; |29| 
||         MVKL    .S1     0x5be0cd19,A3     ; |30| 

           MVKL    .S2     0x9b05688c,B5     ; |28| 
||         MVKH    .S1     0x5be0cd19,A3     ; |30| 

           STW     .D1T1   A3,*+A4(28)       ; |30| 
||         MVKH    .S2     0x1f83d9ab,B4     ; |29| 

           MVKL    .S2     0xa54ff53a,B4     ; |26| 
||         MVKL    .S1     0x510e527f,A3     ; |27| 
||         STW     .D1T2   B4,*+A4(24)       ; |29| 

           MVKH    .S2     0xa54ff53a,B4     ; |26| 
||         MVKH    .S1     0x510e527f,A3     ; |27| 

           RET     .S2     B3                ; |31| 
||         STW     .D1T1   A3,*+A4(16)       ; |27| 

           MVKL    .S1     0x3c6ef372,A3     ; |25| 
||         STW     .D1T2   B4,*+A4(12)       ; |26| 
||         MVKH    .S2     0x9b05688c,B5     ; |28| 

           STW     .D1T2   B5,*+A4(20)       ; |28| 
||         MVKH    .S1     0x3c6ef372,A3     ; |25| 
||         MVKL    .S2     0xbb67ae85,B4     ; |24| 

           MVKL    .S1     0x6a09e667,A3     ; |23| 
||         STW     .D1T1   A3,*+A4(8)        ; |25| 
||         MVKH    .S2     0xbb67ae85,B4     ; |24| 

           STW     .D1T2   B4,*+A4(4)        ; |24| 
||         MVKH    .S1     0x6a09e667,A3     ; |23| 

	.dwpsn	"SSHSH256.C",31,1
           STW     .D1T1   A3,*A4            ; |23| 
           ; BRANCH OCCURS {B3}              ; |31| 
	.dwattr DW$15, DW_AT_end_file("SSHSH256.C")
	.dwattr DW$15, DW_AT_end_line(0x1f)
	.dwattr DW$15, DW_AT_end_column(0x01)
	.dwendtag DW$15

	.sect	".text"
	.global	_SHA256_Init

DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA256_Init"), DW_AT_symbol_name("_SHA256_Init")
	.dwattr DW$17, DW_AT_low_pc(_SHA256_Init)
	.dwattr DW$17, DW_AT_high_pc(0x00)
	.dwattr DW$17, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$17, DW_AT_begin_line(0x60)
	.dwattr DW$17, DW_AT_begin_column(0x06)
	.dwattr DW$17, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$17, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH256.C",96,35

;******************************************************************************
;* FUNCTION NAME: _SHA256_Init                                                *
;*                                                                            *
;*   Regs Modified     : A3,B3,B4,B5,B31                                      *
;*   Regs Used         : A3,A4,B3,B4,B5,SP,B31                                *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_SHA256_Init:
;** --------------------------------------------------------------------------*
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$18, DW_AT_type(*DW$T$46)
	.dwattr DW$18, DW_AT_location[DW_OP_reg4]
;** 97	-----------------------    SHA256_Core_Init(s);
;** 98	-----------------------    (*s).blkused = C$1 = 0;
;** 99	-----------------------    (*s).lenlo = C$1;
;** 99	-----------------------    (*s).lenhi = C$1;
;** 99	-----------------------    return;
           CALL    .S1     _SHA256_Core_Init ; |97| 
           MV      .L2     B3,B31            ; |96| 
           ADDKPC  .S2     RL0,B3,3          ; |97| 
RL0:       ; CALL OCCURS {_SHA256_Core_Init}  ; |97| 
;** --------------------------------------------------------------------------*
           RETNOP  .S2     B31,1             ; |100| 
           ZERO    .L1     A3                ; |98| 
           STW     .D1T1   A3,*+A4(96)       ; |98| 
           STW     .D1T1   A3,*+A4(104)      ; |99| 
	.dwpsn	"SSHSH256.C",100,1
           STW     .D1T1   A3,*+A4(100)      ; |99| 
           ; BRANCH OCCURS {B31}             ; |100| 
	.dwattr DW$17, DW_AT_end_file("SSHSH256.C")
	.dwattr DW$17, DW_AT_end_line(0x64)
	.dwattr DW$17, DW_AT_end_column(0x01)
	.dwendtag DW$17

	.sect	".text"

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("sha256_init"), DW_AT_symbol_name("_sha256_init")
	.dwattr DW$19, DW_AT_low_pc(_sha256_init)
	.dwattr DW$19, DW_AT_high_pc(0x00)
	.dwattr DW$19, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$19, DW_AT_begin_line(0xc1)
	.dwattr DW$19, DW_AT_begin_column(0x0e)
	.dwattr DW$19, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$19, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH256.C",194,1

;******************************************************************************
;* FUNCTION NAME: _sha256_init                                                *
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
_sha256_init:
;** --------------------------------------------------------------------------*
;** 197	-----------------------    s = (struct $$fake0 *)safemalloc(1u, 108u);
;** 97	-----------------------    SHA256_Core_Init(s);  // [6]
;** 98	-----------------------    (*s).blkused = C$1 = 0;  // [6]
;** 99	-----------------------    (*s).lenlo = C$1;  // [6]
;** 99	-----------------------    (*s).lenhi = C$1;  // [6]
;** 99	-----------------------    return (void *)s;  // [6]
           CALL    .S1     _safemalloc       ; |197| 
           MVK     .L1     0x1,A4            ; |197| 
           STW     .D2T2   B3,*SP--(8)       ; |194| 
           ADDKPC  .S2     RL1,B3,1          ; |197| 
           MVK     .S2     0x6c,B4           ; |197| 
RL1:       ; CALL OCCURS {_safemalloc}       ; |197| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA256_Core_Init ; |97| 
           ADDKPC  .S2     RL2,B3,4          ; |97| 
RL2:       ; CALL OCCURS {_SHA256_Core_Init}  ; |97| 
;** --------------------------------------------------------------------------*
           ZERO    .L1     A3                ; |98| 
           STW     .D1T1   A3,*+A4(100)      ; |99| 
           STW     .D1T1   A3,*+A4(104)      ; |99| 
           STW     .D1T1   A3,*+A4(96)       ; |98| 
           LDW     .D2T2   *++SP(8),B3       ; |200| 
           NOP             4
	.dwpsn	"SSHSH256.C",200,1
           RETNOP  .S2     B3,5              ; |200| 
           ; BRANCH OCCURS {B3}              ; |200| 
	.dwattr DW$19, DW_AT_end_file("SSHSH256.C")
	.dwattr DW$19, DW_AT_end_line(0xc8)
	.dwattr DW$19, DW_AT_end_column(0x01)
	.dwendtag DW$19

	.sect	".text"
	.global	_SHA256_Block

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA256_Block"), DW_AT_symbol_name("_SHA256_Block")
	.dwattr DW$20, DW_AT_low_pc(_SHA256_Block)
	.dwattr DW$20, DW_AT_high_pc(0x00)
	.dwattr DW$20, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$20, DW_AT_begin_line(0x21)
	.dwattr DW$20, DW_AT_begin_column(0x06)
	.dwattr DW$20, DW_AT_frame_base[DW_OP_breg31 328]
	.dwattr DW$20, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH256.C",33,51
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("k"), DW_AT_symbol_name("_k$1")
	.dwattr DW$21, DW_AT_type(*DW$T$61)
	.dwattr DW$21, DW_AT_location[DW_OP_addr _k$1]

;******************************************************************************
;* FUNCTION NAME: _SHA256_Block                                               *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,SP,A16, *
;*                           A17,A18,A19,A21,A23,A24,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B31                  *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,DP,  *
;*                           SP,A16,A17,A18,A19,A21,A23,A24,B16,B17,B18,B19,  *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B31          *
;*   Local Frame Size  : 0 Args + 324 Auto + 0 Save = 324 byte                *
;******************************************************************************
_SHA256_Block:
;** --------------------------------------------------------------------------*
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$22, DW_AT_type(*DW$T$46)
	.dwattr DW$22, DW_AT_location[DW_OP_reg4]
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$23, DW_AT_type(*DW$T$49)
	.dwattr DW$23, DW_AT_location[DW_OP_reg20]
;** 58	-----------------------    ((double *)w)[0] = _memd8((void *)block);
;** 58	-----------------------    ((double *)w)[1] = _memd8((void *)(block+8));
;** 58	-----------------------    ((double *)w)[2] = _memd8((void *)(block+16));
;** 58	-----------------------    ((double *)w)[3] = _memd8((void *)(block+24));
;** 58	-----------------------    ((double *)w)[4] = _memd8((void *)(block+32));
;** 58	-----------------------    ((double *)w)[5] = _memd8((void *)(block+40));
;** 58	-----------------------    ((double *)w)[6] = _memd8((void *)(block+48));
;** 58	-----------------------    ((double *)w)[7] = _memd8((void *)(block+56));
;** 60	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;** 60	-----------------------    L$1 = 24;
;**  	-----------------------    U$52 = &w[0];
;**  	-----------------------    #pragma MUST_ITERATE(24, 24, 24)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g2:
;** 61	-----------------------    s$11 = U$52[10];
;** 61	-----------------------    C$26 = *(double *)U$52;
;** 61	-----------------------    s$5 = _hi(C$26);
;** 61	-----------------------    C$25 = *((double *)U$52+56);
;** 61	-----------------------    s$9 = _hi(C$25);
;** 61	-----------------------    U$52[16] = (_rotl(_lo(C$25), 15)^_rotl(_lo(C$25), 13)^_lo(C$25)>>10)+(_rotl(s$5, 25)^_rotl(s$5, 14)^s$5>>3)+_lo(C$26)+U$52[9];
;** 61	-----------------------    C$24 = U$52[2];
;** 61	-----------------------    U$52[17] = (_rotl(s$9, 15)^_rotl(s$9, 13)^s$9>>10)+(_rotl(C$24, 25)^_rotl(C$24, 14)^C$24>>3)+s$11+s$5;
;** 60	-----------------------    U$52 += 2;
;** 60	-----------------------    if ( --L$1 ) goto g2;
;** 63	-----------------------    a = U$115 = *(unsigned * const)s;

           LDNDW   .D2T2   *+B4(24),B19:B18  ; |58| 
||         MVK     .S2     56,B5             ; |58| 

           LDNDW   .D2T2   *+B5(B4),B17:B16  ; |58| 
           LDNDW   .D2T2   *+B4(16),B21:B20  ; |58| 
           LDNDW   .D2T2   *B4,B25:B24       ; |58| 

           LDNDW   .D2T2   *+B4(8),B23:B22   ; |58| 
||         MVK     .S2     48,B5             ; |58| 

           MVK     .S2     40,B5             ; |58| 
||         LDNDW   .D2T2   *+B5(B4),B7:B6    ; |58| 

           LDNDW   .D2T2   *+B5(B4),B9:B8    ; |58| 
||         ADDK    .S2     -328,SP           ; |33| 

           STDW    .D2T2   B19:B18,*+SP(32)  ; |58| 
           STDW    .D2T2   B21:B20,*+SP(24)  ; |58| 

           STDW    .D2T2   B25:B24,*+SP(8)   ; |58| 
||         MVK     .S2     32,B5             ; |58| 

           LDNDW   .D2T2   *+B5(B4),B5:B4    ; |58| 
           STDW    .D2T2   B23:B22,*+SP(16)  ; |58| 
           STDW    .D2T2   B17:B16,*+SP(64)  ; |58| 
           STDW    .D2T2   B7:B6,*+SP(56)    ; |58| 
           STDW    .D2T2   B9:B8,*+SP(48)    ; |58| 

           STDW    .D2T2   B5:B4,*+SP(40)    ; |58| 
||         ADD     .L1X    8,SP,A3

           LDW     .D1T2   *+A3(40),B6       ; |61| (P) <0,0> 
||         ADD     .L2     8,SP,B5
||         MVC     .S2     CSR,B16

           ADDK    .S2     28,B5
||         LDDW    .D1T1   *A3++,A19:A18     ; |61| (P) <0,1> 
||         AND     .L2     -2,B16,B4

           LDW     .D1T2   *A3,B4            ; |61| (P) <0,2> 
||         MVC     .S2     B4,CSR            ; interrupts off

           LDW     .D2T1   *++B5(8),A9       ; |61| (P) <0,0> 
||         MV      .L1     A4,A17            ; |33| 
||         MVK     .S2     22,B0             ; |60| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 60
;*      Loop opening brace source line   : 61
;*      Loop closing brace source line   : 61
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 24                    
;*      Known Maximum Trip Count         : 24                    
;*      Known Max Trip Count Factor      : 24
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 5
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2        3     
;*      .D units                     5*       2     
;*      .M units                     4        4     
;*      .X cross paths               0        2     
;*      .T address paths             4        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          8        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2     
;*      Bound(.L .S .D .LS .LSD)     5*       5*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Did not find schedule
;*         ii = 15 Schedule found with 2 iterations in parallel
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
DW$L$_SHA256_Block$3$B:
	.dwpsn	"SSHSH256.C",61,0
           LDDW    .D1T1   *+A3(48),A5:A4    ; |61| <0,4>  ^ 
           NOP             1
           MV      .L1     A19,A6            ; |61| <0,6> 

           SHRU    .S2     B4,3,B9           ; |61| <0,7> 
||         ROTL    .M2     B4,25,B7          ; |61| <0,7> 
||         SHRU    .S1     A6,3,A8           ; |61| <0,7> 
||         ROTL    .M1     A6,25,A7          ; |61| <0,7> 

           ROTL    .M2     B4,14,B8          ; |61| <0,8> 
||         ROTL    .M1     A6,14,A5          ; |61| <0,8> 

           SHRU    .S1     A4,10,A16         ; |61| <0,9> 
||         ROTL    .M1     A4,15,A4          ; |61| <0,9> 
||         MV      .L2X    A5,B4             ; |61| <0,9>  ^ 

           XOR     .L2     B8,B7,B8          ; |61| <0,10> 
||         SHRU    .S2     B4,10,B7          ; |61| <0,10> 
||         XOR     .L1     A5,A7,A5          ; |61| <0,10> 
||         ROTL    .M1     A4,13,A5          ; |61| <0,10> 
||         ROTL    .M2     B4,13,B8          ; |61| <0,10>  ^ 

           XOR     .L2     B9,B8,B9          ; |61| <0,11> 
||         XOR     .L1     A8,A5,A7          ; |61| <0,11> 
||         ROTL    .M2     B4,15,B4          ; |61| <0,11>  ^ 

           XOR     .L1     A5,A4,A4          ; |61| <0,12> 

           XOR     .L1     A16,A4,A4         ; |61| <0,13> 
|| [ B0]   BDEC    .S2     L2,B0             ; |60| <0,13> 
||         XOR     .L2     B8,B4,B4          ; |61| <0,13>  ^ 

           ADD     .L1     A7,A4,A4          ; |61| <0,14> 
||         XOR     .L2     B7,B4,B4          ; |61| <0,14>  ^ 

           ADD     .L1     A18,A4,A4         ; |61| <0,15> 
||         ADD     .L2     B9,B4,B4          ; |61| <0,15>  ^ 
||         LDW     .D2T1   *++B5(8),A9       ; |61| <1,0> 
||         LDW     .D1T2   *+A3(40),B6       ; |61| <1,0> 

           ADD     .L1     A9,A4,A4          ; |61| <0,16> 
||         ADD     .L2     B6,B4,B4          ; |61| <0,16>  ^ 
||         LDDW    .D1T1   *A3++,A19:A18     ; |61| <1,1> 

           STW     .D2T1   A4,*+B5(20)       ; |61| <0,17> 
||         ADD     .L2X    A6,B4,B4          ; |61| <0,17>  ^ 
||         LDW     .D1T2   *A3,B4            ; |61| <1,2> 

           STW     .D1T2   B4,*+A3(52)       ; |61| <0,18>  ^ 
DW$L$_SHA256_Block$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 66
;*      Loop opening brace source line   : 66
;*      Loop closing brace source line   : 82
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 80
;*      Unpartitioned Resource Bound     : 27
;*      Partitioned Resource Bound(*)    : 47
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     4        4     
;*      .M units                    24       24     
;*      .X cross paths              32       24     
;*      .T address paths             4        4     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)         17      136     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     8       47*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 80 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L3:    ; PIPED LOOP EPILOG AND PROLOG
;** 63	-----------------------    b = U$118 = *((unsigned * const)s+4);
;** 63	-----------------------    c = *((unsigned * const)s+8);
;** 63	-----------------------    d = *((unsigned * const)s+12);
;** 64	-----------------------    e = *((unsigned * const)s+16);
;** 64	-----------------------    f = *((unsigned * const)s+20);
;** 64	-----------------------    g = *((unsigned * const)s+24);
;** 64	-----------------------    h = *((unsigned * const)s+28);
;**  	-----------------------    K$151 = 0xffffffffu;
;**  	-----------------------    U$177 = U$118&c;
;** 66	-----------------------    L$2 = 8;
;**  	-----------------------    U$158 = &((const double *)k)[0];
;**  	-----------------------    U$52 = &w[0];
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g4:
;** 74	-----------------------    C$22 = *(double *)U$52;
;** 74	-----------------------    C$21 = *U$158;
;** 74	-----------------------    C$23 = (_rotl(e, 26)^_rotl(e, 21)^_rotl(e, 7))+(e&f^(e^K$151)&g)+_lo(C$21)+_lo(C$22)+h;
;** 74	-----------------------    d += C$23;
;** 74	-----------------------    C$19 = a&b;
;** 74	-----------------------    h = (_rotl(a, 30)^_rotl(a, 19)^_rotl(a, 10))+(a&c^C$19^U$177)+C$23;
;** 75	-----------------------    C$20 = (_rotl(d, 26)^_rotl(d, 21)^_rotl(d, 7))+(d&e^(d^K$151)&f)+_hi(C$21)+_hi(C$22)+g;
;** 75	-----------------------    c += C$20;
;** 75	-----------------------    C$17 = h&a;
;** 75	-----------------------    g = (_rotl(h, 30)^_rotl(h, 19)^_rotl(h, 10))+(h&b^C$17^C$19)+C$20;
;** 76	-----------------------    C$16 = *((double *)U$52+8);
;** 76	-----------------------    C$15 = U$158[1];
;** 76	-----------------------    C$18 = (_rotl(c, 26)^_rotl(c, 21)^_rotl(c, 7))+(c&d^(c^K$151)&e)+_lo(C$15)+_lo(C$16)+f;
;** 76	-----------------------    b += C$18;
;** 76	-----------------------    C$13 = g&h;
;** 76	-----------------------    f = (_rotl(g, 30)^_rotl(g, 19)^_rotl(g, 10))+(g&a^C$13^C$17)+C$18;
;** 77	-----------------------    C$14 = (_rotl(b, 26)^_rotl(b, 21)^_rotl(b, 7))+(b&c^(b^K$151)&d)+_hi(C$15)+_hi(C$16)+e;
;** 77	-----------------------    a += C$14;
;** 77	-----------------------    C$11 = f&g;
;** 77	-----------------------    e = (_rotl(f, 30)^_rotl(f, 19)^_rotl(f, 10))+(f&h^C$11^C$13)+C$14;
;** 78	-----------------------    C$10 = *((double *)U$52+16);
;** 78	-----------------------    C$9 = U$158[2];
;** 78	-----------------------    C$12 = (_rotl(a, 26)^_rotl(a, 21)^_rotl(a, 7))+(a&b^(a^K$151)&c)+_lo(C$9)+_lo(C$10)+d;
;** 78	-----------------------    h += C$12;
;** 78	-----------------------    C$7 = e&f;
;** 78	-----------------------    d = (_rotl(e, 30)^_rotl(e, 19)^_rotl(e, 10))+(e&g^C$7^C$11)+C$12;
;** 79	-----------------------    C$8 = (_rotl(h, 26)^_rotl(h, 21)^_rotl(h, 7))+(h&a^(h^K$151)&b)+_hi(C$9)+_hi(C$10)+c;
;** 79	-----------------------    g += C$8;
;** 79	-----------------------    C$5 = d&e;
;** 79	-----------------------    c = (_rotl(d, 30)^_rotl(d, 19)^_rotl(d, 10))+(d&f^C$5^C$7)+C$8;
;** 80	-----------------------    C$4 = *((double *)U$52+24);
;** 80	-----------------------    C$3 = U$158[3];
;** 80	-----------------------    C$6 = (_rotl(g, 26)^_rotl(g, 21)^_rotl(g, 7))+(g&h^(g^K$151)&a)+_lo(C$3)+_lo(C$4)+b;
;** 80	-----------------------    f += C$6;
;** 80	-----------------------    C$1 = c&d;
;** 80	-----------------------    b = (_rotl(c, 30)^_rotl(c, 19)^_rotl(c, 10))+(c&e^C$1^C$5)+C$6;
;** 81	-----------------------    C$2 = (_rotl(f, 26)^_rotl(f, 21)^_rotl(f, 7))+(f&g^(f^K$151)&h)+_hi(C$3)+_hi(C$4)+a;
;** 81	-----------------------    e += C$2;
;** 81	-----------------------    U$177 = b&c;
;** 81	-----------------------    a = (_rotl(b, 30)^_rotl(b, 19)^_rotl(b, 10))+(b&d^U$177^C$1)+C$2;
;** 66	-----------------------    U$52 += 8;
;** 66	-----------------------    U$158 += 4;
;** 66	-----------------------    if ( --L$2 ) goto g4;
;** 84	-----------------------    _memd8((void *)(unsigned * const)s) = _itod(U$118+b, U$115+a);

           MVK     .L1     0x8,A0            ; |66| 
||         MVK     .L2     0xffffffff,B20
||         MVKL    .S2     _k$1,B21
||         LDDW    .D1T1   *+A3(48),A5:A4    ; |61| (E) <1,4>  ^ 

           MVKH    .S2     _k$1,B21
           MV      .L1     A19,A6            ; |61| (E) <1,6> 

           SHRU    .S2     B4,3,B9           ; |61| (E) <1,7> 
||         SHRU    .S1     A6,3,A8           ; |61| (E) <1,7> 
||         ROTL    .M1     A6,25,A7          ; |61| (E) <1,7> 
||         ROTL    .M2     B4,25,B7          ; |61| (E) <1,7> 

           ROTL    .M1     A6,14,A5          ; |61| (E) <1,8> 
||         ROTL    .M2     B4,14,B8          ; |61| (E) <1,8> 

           SHRU    .S1     A4,10,A16         ; |61| (E) <1,9> 
||         MV      .L2X    A5,B4             ; |61| (E) <1,9>  ^ 
||         ROTL    .M1     A4,15,A4          ; |61| (E) <1,9> 

           XOR     .L2     B8,B7,B8          ; |61| (E) <1,10> 
||         SHRU    .S2     B4,10,B7          ; |61| (E) <1,10> 
||         XOR     .L1     A5,A7,A5          ; |61| (E) <1,10> 
||         ROTL    .M2     B4,13,B8          ; |61| (E) <1,10>  ^ 
||         ROTL    .M1     A4,13,A5          ; |61| (E) <1,10> 

           XOR     .L2     B9,B8,B9          ; |61| (E) <1,11> 
||         XOR     .L1     A8,A5,A7          ; |61| (E) <1,11> 
||         ROTL    .M2     B4,15,B4          ; |61| (E) <1,11>  ^ 

           MVC     .S2     B16,CSR           ; interrupts on
||         XOR     .L1     A5,A4,A4          ; |61| (E) <1,12> 

           MVC     .S2     CSR,B28
||         XOR     .L1     A16,A4,A4         ; |61| (E) <1,13> 
||         XOR     .L2     B8,B4,B4          ; |61| (E) <1,13>  ^ 

           AND     .L2     -2,B28,B31
||         ADD     .L1     A7,A4,A4          ; |61| (E) <1,14> 
||         XOR     .S2     B7,B4,B4          ; |61| (E) <1,14>  ^ 

           MVC     .S2     B31,CSR           ; interrupts off
||         ADD     .L1     A18,A4,A4         ; |61| (E) <1,15> 
||         ADD     .L2     B9,B4,B4          ; |61| (E) <1,15>  ^ 

           ADD     .L1     A9,A4,A4          ; |61| (E) <1,16> 
||         ADD     .L2     B6,B4,B4          ; |61| (E) <1,16>  ^ 

           ADD     .L1X    8,SP,A6
||         ADD     .L2X    A6,B4,B4          ; |61| (E) <1,17>  ^ 

           STW     .D2T1   A4,*+B5(28)       ; |61| (E) <1,17> 
||         STW     .D1T2   B4,*+A3(60)       ; |61| (E) <1,18>  ^ 

           LDW     .D1T1   *+A17(8),A19      ; |63| 
           LDW     .D1T1   *+A17(4),A21      ; |63| 
           LDW     .D1T1   *A17,A23          ; |63| 
           LDW     .D1T2   *+A17(24),B19     ; |64| 
           LDW     .D1T2   *+A17(20),B18     ; |64| 

           MV      .L2X    A19,B17
||         LDW     .D1T2   *+A17(28),B25     ; |64| 

           MV      .L2X    A21,B16           ; |63| 
||         AND     .L1     A19,A21,A4
||         LDW     .D1T2   *+A17(16),B23     ; |64| 

           MV      .L2X    A23,B22           ; |63| 
||         LDW     .D1T2   *+A17(12),B24     ; |63| 

           MV      .L2X    A4,B26            ; Define a twin register
	.dwpsn	"SSHSH256.C",66,0
           NOP             3
;** --------------------------------------------------------------------------*
L4:    ; PIPED LOOP KERNEL
DW$L$_SHA256_Block$5$B:

           AND     .L2     B17,B22,B6        ; |74| <0,0> 
||         ROTL    .M2     B23,26,B5         ; |74| <0,0> 

           LDDW    .D2T2   *B21++(32),B9:B8  ; |74| <0,1> 
||         ROTL    .M2     B23,21,B7         ; |74| <0,1> 
||         ROTL    .M1X    B23,7,A3          ; |74| <0,1>  ^ 

           XOR     .L2     B20,B23,B4        ; |74| <0,2> 
||         LDDW    .D1T1   *A6++(32),A5:A4   ; |74| <0,2> 

           AND     .L2     B18,B23,B5        ; |74| <0,3> 
||         AND     .S2     B19,B4,B7         ; |74| <0,3> 
||         XOR     .D2     B7,B5,B4          ; |74| <0,3> 

           ROTL    .M2     B22,19,B5         ; |74| <0,4> 
||         XOR     .L2     B7,B5,B4          ; |74| <0,4> 
||         XOR     .S2X    A3,B4,B5          ; |74| <0,4>  ^ 

           ROTL    .M1X    B22,30,A3         ; |74| <0,5> 
||         ADD     .L2     B4,B5,B4          ; |74| <0,5>  ^ 

           ROTL    .M1X    B22,10,A4         ; |74| <0,6> 
||         ADD     .L2     B8,B4,B4          ; |74| <0,6>  ^ 

           AND     .L2     B16,B22,B27       ; |74| <0,7> 
||         XOR     .L1X    B5,A3,A3          ; |74| <0,7> 
||         ADD     .S2X    A4,B4,B4          ; |74| <0,7>  ^ 

           XOR     .L2     B27,B6,B4         ; |74| <0,8> 
||         XOR     .L1     A4,A3,A3          ; |74| <0,8> 
||         ADD     .S2     B25,B4,B5         ; |74| <0,8>  ^ 

           XOR     .L2     B26,B4,B4         ; |74| <0,9> 
||         ADD     .S2     B5,B24,B8         ; |74| <0,9>  ^ 

           ADD     .L2X    B4,A3,B4          ; |74| <0,10> 
||         ROTL    .M2     B8,26,B5          ; |75| <0,10> 

           ADD     .L2     B5,B4,B25         ; |74| <0,11> 
||         ROTL    .M2     B8,21,B6          ; |75| <0,11> 
||         ROTL    .M1X    B8,7,A3           ; |75| <0,11>  ^ 

           AND     .L2     B16,B25,B7        ; |75| <0,12> 
||         ROTL    .M2     B25,19,B24        ; |75| <0,12> 
||         XOR     .S2     B20,B8,B4         ; |75| <0,12> 

           ROTL    .M1X    B25,30,A3         ; |75| <0,13> 
||         AND     .L2     B23,B8,B4         ; |75| <0,13> 
||         AND     .S2     B18,B4,B5         ; |75| <0,13> 
||         XOR     .D2     B6,B5,B6          ; |75| <0,13> 

           ROTL    .M1X    B25,10,A4         ; |75| <0,14> 
||         XOR     .L2     B5,B4,B4          ; |75| <0,14> 
||         XOR     .S2X    A3,B6,B5          ; |75| <0,14>  ^ 

           AND     .L2     B22,B25,B24       ; |75| <0,15> 
||         XOR     .L1X    B24,A3,A3         ; |75| <0,15> 
||         ADD     .S2     B4,B5,B4          ; |75| <0,15>  ^ 

           XOR     .L2     B24,B7,B4         ; |75| <0,16> 
||         XOR     .L1     A4,A3,A3          ; |75| <0,16> 
||         ADD     .S2     B9,B4,B5          ; |75| <0,16>  ^ 

           XOR     .L2     B27,B4,B4         ; |75| <0,17> 
||         ADD     .S2X    A5,B5,B5          ; |75| <0,17>  ^ 

           ADD     .L2X    B4,A3,B5          ; |75| <0,18> 
||         ADD     .S2     B19,B5,B4         ; |75| <0,18>  ^ 

           ADD     .L2     B4,B5,B9          ; |75| <0,19> 
||         ADD     .S2     B4,B17,B17        ; |75| <0,19>  ^ 

           AND     .L2     B22,B9,B6         ; |76| <0,20> 
||         ROTL    .M2     B17,26,B5         ; |76| <0,20> 

           LDDW    .D2T2   *-B21(24),B27:B26 ; |76| <0,21> 
||         ROTL    .M2     B17,21,B7         ; |76| <0,21> 
||         ROTL    .M1X    B17,7,A3          ; |76| <0,21>  ^ 

           LDDW    .D1T1   *-A6(24),A5:A4    ; |76| <0,22> 
||         XOR     .L2     B20,B17,B4        ; |76| <0,22> 

           AND     .L2     B8,B17,B4         ; |76| <0,23> 
||         AND     .S2     B23,B4,B5         ; |76| <0,23> 
||         XOR     .D2     B7,B5,B7          ; |76| <0,23> 

           ROTL    .M2     B9,19,B5          ; |76| <0,24> 
||         XOR     .L2     B5,B4,B4          ; |76| <0,24> 
||         XOR     .S2X    A3,B7,B5          ; |76| <0,24>  ^ 

           ROTL    .M1X    B9,30,A3          ; |76| <0,25> 
||         ADD     .L2     B4,B5,B4          ; |76| <0,25>  ^ 

           ROTL    .M1X    B9,10,A4          ; |76| <0,26> 
||         ADD     .L2     B26,B4,B4         ; |76| <0,26>  ^ 

           AND     .L2     B25,B9,B19        ; |76| <0,27> 
||         XOR     .L1X    B5,A3,A3          ; |76| <0,27> 
||         ADD     .S2X    A4,B4,B4          ; |76| <0,27>  ^ 

           XOR     .L2     B19,B6,B5         ; |76| <0,28> 
||         XOR     .L1     A4,A3,A3          ; |76| <0,28> 
||         ADD     .S2     B18,B4,B4         ; |76| <0,28>  ^ 

           XOR     .L2     B24,B5,B5         ; |76| <0,29> 
||         ADD     .S2     B4,B16,B16        ; |76| <0,29>  ^ 

           ADD     .L2X    B5,A3,B5          ; |76| <0,30> 
||         ROTL    .M2     B16,26,B6         ; |77| <0,30> 

           ADD     .L2     B4,B5,B18         ; |76| <0,31> 
||         ROTL    .M2     B16,21,B7         ; |77| <0,31> 
||         ROTL    .M1X    B16,7,A3          ; |77| <0,31>  ^ 

           AND     .L2     B25,B18,B4        ; |77| <0,32> 
||         ROTL    .M2     B18,19,B24        ; |77| <0,32> 
||         XOR     .S2     B20,B16,B5        ; |77| <0,32> 

           ROTL    .M1X    B18,30,A3         ; |77| <0,33> 
||         AND     .L2     B17,B16,B6        ; |77| <0,33> 
||         AND     .S2     B8,B5,B7          ; |77| <0,33> 
||         XOR     .D2     B7,B6,B5          ; |77| <0,33> 

           ROTL    .M1X    B18,10,A4         ; |77| <0,34> 
||         XOR     .L2     B7,B6,B5          ; |77| <0,34> 
||         XOR     .S2X    A3,B5,B6          ; |77| <0,34>  ^ 

           AND     .L2     B9,B18,B24        ; |77| <0,35> 
||         XOR     .L1X    B24,A3,A3         ; |77| <0,35> 
||         ADD     .S2     B5,B6,B5          ; |77| <0,35>  ^ 

           XOR     .L2     B24,B4,B5         ; |77| <0,36> 
||         XOR     .L1     A4,A3,A3          ; |77| <0,36> 
||         ADD     .S2     B27,B5,B4         ; |77| <0,36>  ^ 

           XOR     .L2     B19,B5,B4         ; |77| <0,37> 
||         ADD     .S2X    A5,B4,B5          ; |77| <0,37>  ^ 

           ADD     .L2X    B4,A3,B5          ; |77| <0,38> 
||         ADD     .S2     B23,B5,B4         ; |77| <0,38>  ^ 

           ADD     .L2     B4,B5,B22         ; |77| <0,39> 
||         ADD     .S2     B4,B22,B23        ; |77| <0,39>  ^ 

           AND     .L2     B9,B22,B19        ; |78| <0,40> 
||         ROTL    .M2     B23,26,B5         ; |78| <0,40> 

           LDDW    .D2T2   *-B21(16),B7:B6   ; |78| <0,41> 
||         ROTL    .M2     B23,21,B6         ; |78| <0,41> 
||         ROTL    .M1X    B23,7,A3          ; |78| <0,41>  ^ 

           LDDW    .D1T1   *-A6(16),A5:A4    ; |78| <0,42> 
||         XOR     .L2     B20,B23,B4        ; |78| <0,42> 

           AND     .L2     B16,B23,B4        ; |78| <0,43> 
||         AND     .S2     B17,B4,B5         ; |78| <0,43> 
||         XOR     .D2     B6,B5,B6          ; |78| <0,43> 

           ROTL    .M2     B22,19,B4         ; |78| <0,44> 
||         XOR     .L2     B5,B4,B4          ; |78| <0,44> 
||         XOR     .S2X    A3,B6,B5          ; |78| <0,44>  ^ 

           ROTL    .M1X    B22,30,A3         ; |78| <0,45> 
||         ADD     .L2     B4,B5,B5          ; |78| <0,45>  ^ 

           ROTL    .M1X    B22,10,A4         ; |78| <0,46> 
||         ADD     .L2     B6,B5,B5          ; |78| <0,46>  ^ 

           AND     .L2     B18,B22,B26       ; |78| <0,47> 
||         XOR     .L1X    B4,A3,A3          ; |78| <0,47> 
||         ADD     .S2X    A4,B5,B4          ; |78| <0,47>  ^ 

           XOR     .L2     B26,B19,B5        ; |78| <0,48> 
||         XOR     .L1     A4,A3,A3          ; |78| <0,48> 
||         ADD     .S2     B8,B4,B4          ; |78| <0,48>  ^ 

           XOR     .L2     B24,B5,B5         ; |78| <0,49> 
||         ADD     .S2     B4,B25,B25        ; |78| <0,49>  ^ 

           ADD     .L2X    B5,A3,B5          ; |78| <0,50> 
||         ROTL    .M2     B25,26,B4         ; |79| <0,50> 

           ADD     .L2     B4,B5,B24         ; |78| <0,51> 
||         ROTL    .M2     B25,21,B8         ; |79| <0,51> 
||         ROTL    .M1X    B25,7,A3          ; |79| <0,51>  ^ 

           AND     .L2     B18,B24,B5        ; |79| <0,52> 
||         ROTL    .M2     B24,19,B4         ; |79| <0,52> 
||         XOR     .S2     B20,B25,B6        ; |79| <0,52> 

           ROTL    .M1X    B24,30,A3         ; |79| <0,53> 
||         AND     .L2     B23,B25,B6        ; |79| <0,53> 
||         AND     .S2     B16,B6,B8         ; |79| <0,53> 
||         XOR     .D2     B8,B4,B19         ; |79| <0,53> 

           ROTL    .M1X    B24,10,A4         ; |79| <0,54> 
||         XOR     .L2     B8,B6,B6          ; |79| <0,54> 
||         XOR     .S2X    A3,B19,B8         ; |79| <0,54>  ^ 

           AND     .L2     B22,B24,B27       ; |79| <0,55> 
||         XOR     .L1X    B4,A3,A3          ; |79| <0,55> 
||         ADD     .S2     B6,B8,B4          ; |79| <0,55>  ^ 

           XOR     .L2     B27,B5,B4         ; |79| <0,56> 
||         XOR     .L1     A4,A3,A3          ; |79| <0,56> 
||         ADD     .S2     B7,B4,B5          ; |79| <0,56>  ^ 

           XOR     .L2     B26,B4,B4         ; |79| <0,57> 
||         ADD     .S2X    A5,B5,B5          ; |79| <0,57>  ^ 

           ADD     .L2X    B4,A3,B5          ; |79| <0,58> 
||         ADD     .S2     B17,B5,B4         ; |79| <0,58>  ^ 

           ADD     .L2     B4,B5,B17         ; |79| <0,59> 
||         ADD     .S2     B4,B9,B19         ; |79| <0,59>  ^ 

           AND     .L2     B22,B17,B8        ; |80| <0,60> 
||         ROTL    .M2     B19,26,B5         ; |80| <0,60> 

           LDDW    .D2T2   *-B21(8),B7:B6    ; |80| <0,61> 
||         ROTL    .M2     B19,21,B6         ; |80| <0,61> 
||         ROTL    .M1X    B19,7,A3          ; |80| <0,61>  ^ 

           LDDW    .D1T1   *-A6(8),A5:A4     ; |80| <0,62> 
||         XOR     .L2     B20,B19,B4        ; |80| <0,62> 

           AND     .L2     B25,B19,B4        ; |80| <0,63> 
||         AND     .S2     B23,B4,B5         ; |80| <0,63> 
||         XOR     .D2     B6,B5,B6          ; |80| <0,63> 

           ROTL    .M2     B17,19,B5         ; |80| <0,64> 
||         XOR     .L2     B5,B4,B4          ; |80| <0,64> 
||         XOR     .S2X    A3,B6,B5          ; |80| <0,64>  ^ 

           ROTL    .M1X    B17,30,A3         ; |80| <0,65> 
||         ADD     .L2     B4,B5,B4          ; |80| <0,65>  ^ 

           ROTL    .M1X    B17,10,A4         ; |80| <0,66> 
||         ADD     .L2     B6,B4,B4          ; |80| <0,66>  ^ 

           AND     .L2     B24,B17,B9        ; |80| <0,67> 
||         XOR     .L1X    B5,A3,A3          ; |80| <0,67> 
||         ADD     .S2X    A4,B4,B4          ; |80| <0,67>  ^ 

           XOR     .L2     B9,B8,B5          ; |80| <0,68> 
||         XOR     .L1     A4,A3,A3          ; |80| <0,68> 
||         ADD     .S2     B16,B4,B4         ; |80| <0,68>  ^ 

           XOR     .L2     B27,B5,B5         ; |80| <0,69> 
||         ADD     .S2     B4,B18,B18        ; |80| <0,69>  ^ 

           ADD     .L2X    B5,A3,B5          ; |80| <0,70> 
||         ROTL    .M2     B18,26,B6         ; |81| <0,70> 

           ADD     .L2     B4,B5,B16         ; |80| <0,71> 
||         ROTL    .M2     B18,21,B4         ; |81| <0,71> 
||         ROTL    .M1X    B18,7,A3          ; |81| <0,71>  ^ 

           AND     .L2     B24,B16,B5        ; |81| <0,72> 
||         XOR     .S2     B20,B18,B8        ; |81| <0,72> 
||         ROTL    .M2     B16,19,B4         ; |81| <0,72> 

   [ A0]   SUB     .L1     A0,1,A0           ; |66| <0,73> 
||         AND     .L2     B19,B18,B8        ; |81| <0,73> 
||         AND     .S2     B25,B8,B26        ; |81| <0,73> 
||         ROTL    .M1X    B16,30,A3         ; |81| <0,73> 
||         XOR     .D2     B4,B6,B6          ; |81| <0,73> 

           XOR     .L2     B26,B8,B8         ; |81| <0,74> 
||         ROTL    .M1X    B16,10,A3         ; |81| <0,74> 
|| [ A0]   B       .S1     L4                ; |66| <0,74> 
||         XOR     .S2X    A3,B6,B6          ; |81| <0,74>  ^ 

           AND     .L2     B17,B16,B26       ; |81| <0,75> 
||         XOR     .L1X    B4,A3,A4          ; |81| <0,75> 
||         ADD     .S2     B8,B6,B4          ; |81| <0,75>  ^ 

           XOR     .L2     B26,B5,B4         ; |81| <0,76> 
||         XOR     .L1     A3,A4,A3          ; |81| <0,76> 
||         ADD     .S2     B7,B4,B5          ; |81| <0,76>  ^ 

           XOR     .L2     B9,B4,B4          ; |81| <0,77> 
||         ADD     .S2X    A5,B5,B5          ; |81| <0,77>  ^ 

           ADD     .L2X    B4,A3,B5          ; |81| <0,78> 
||         ADD     .S2     B23,B5,B4         ; |81| <0,78>  ^ 

	.dwpsn	"SSHSH256.C",82,0

           ADD     .L2     B4,B22,B23        ; |81| <0,79>  ^ 
||         ADD     .S2     B4,B5,B22         ; |81| <0,79> 

DW$L$_SHA256_Block$5$E:
;** --------------------------------------------------------------------------*
L5:    ; PIPED LOOP EPILOG
;** 84	-----------------------    _memd8((void *)((struct $$fake0 *)(unsigned * const)s+8)) = _itod(*((unsigned * const)s+12)+d, *((unsigned * const)s+8)+c);
;** 85	-----------------------    _memd8((void *)((struct $$fake0 *)(unsigned * const)s+16)) = _itod(*((unsigned * const)s+20)+f, *((unsigned * const)s+16)+e);
;** 85	-----------------------    _memd8((void *)((struct $$fake0 *)(unsigned * const)s+24)) = _itod(*((unsigned * const)s+28)+h, *((unsigned * const)s+24)+g);
;** 85	-----------------------    return;

           MVC     .S2     B28,CSR           ; interrupts on
||         ADD     .L1X    B16,A21,A5        ; |84| 
||         LDW     .D1T1   *+A17(12),A18     ; |84| 

           ADDK    .S2     328,SP            ; |86| 
||         ADD     .L1X    B22,A23,A4        ; |84| 
||         LDW     .D1T1   *+A17(28),A16     ; |85| 

           LDW     .D1T1   *+A17(24),A9      ; |85| 
           LDW     .D1T1   *+A17(20),A7      ; |85| 
           LDW     .D1T1   *+A17(16),A6      ; |85| 
           LDW     .D1T1   *+A17(8),A24      ; |84| 

           ADD     .L1X    B25,A16,A5        ; |85| 
||         STNDW   .D1T1   A5:A4,*A17        ; |84| 

           RET     .S2     B3                ; |86| 
||         ADD     .L1X    B19,A9,A4         ; |85| 

           ADD     .L1X    B18,A7,A5         ; |85| 
||         STNDW   .D1T1   A5:A4,*+A17(24)   ; |85| 

           ADD     .L1X    B23,A6,A4         ; |85| 

           STNDW   .D1T1   A5:A4,*+A17(16)   ; |85| 
||         ADD     .L1X    B17,A24,A4        ; |84| 

           ADD     .L1X    B24,A18,A5        ; |84| 
	.dwpsn	"SSHSH256.C",86,1
           STNDW   .D1T1   A5:A4,*+A17(8)    ; |84| 
           ; BRANCH OCCURS {B3}              ; |86| 

DW$24	.dwtag  DW_TAG_loop
	.dwattr DW$24, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\rsalib\SSHSH256.asm:L4:1:1301562228")
	.dwattr DW$24, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$24, DW_AT_begin_line(0x42)
	.dwattr DW$24, DW_AT_end_line(0x52)
DW$25	.dwtag  DW_TAG_loop_range
	.dwattr DW$25, DW_AT_low_pc(DW$L$_SHA256_Block$5$B)
	.dwattr DW$25, DW_AT_high_pc(DW$L$_SHA256_Block$5$E)
	.dwendtag DW$24


DW$26	.dwtag  DW_TAG_loop
	.dwattr DW$26, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\rsalib\SSHSH256.asm:L2:1:1301562228")
	.dwattr DW$26, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$26, DW_AT_begin_line(0x3c)
	.dwattr DW$26, DW_AT_end_line(0x3d)
DW$27	.dwtag  DW_TAG_loop_range
	.dwattr DW$27, DW_AT_low_pc(DW$L$_SHA256_Block$3$B)
	.dwattr DW$27, DW_AT_high_pc(DW$L$_SHA256_Block$3$E)
	.dwendtag DW$26

	.dwattr DW$20, DW_AT_end_file("SSHSH256.C")
	.dwattr DW$20, DW_AT_end_line(0x56)
	.dwattr DW$20, DW_AT_end_column(0x01)
	.dwendtag DW$20

	.sect	".text"
	.global	_SHA256_Bytes

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA256_Bytes"), DW_AT_symbol_name("_SHA256_Bytes")
	.dwattr DW$28, DW_AT_low_pc(_SHA256_Bytes)
	.dwattr DW$28, DW_AT_high_pc(0x00)
	.dwattr DW$28, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$28, DW_AT_begin_line(0x66)
	.dwattr DW$28, DW_AT_begin_column(0x06)
	.dwattr DW$28, DW_AT_frame_base[DW_OP_breg31 120]
	.dwattr DW$28, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH256.C",102,60

;******************************************************************************
;* FUNCTION NAME: _SHA256_Bytes                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 72 Auto + 44 Save = 116 byte                *
;******************************************************************************
_SHA256_Bytes:
;** --------------------------------------------------------------------------*
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$29, DW_AT_type(*DW$T$46)
	.dwattr DW$29, DW_AT_location[DW_OP_reg4]
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$30, DW_AT_type(*DW$T$34)
	.dwattr DW$30, DW_AT_location[DW_OP_reg20]
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$31, DW_AT_type(*DW$T$10)
	.dwattr DW$31, DW_AT_location[DW_OP_reg6]
;** 102	-----------------------    len = len;
;** 103	-----------------------    q = (unsigned char * const)p;
;** 111	-----------------------    (*s).lenlo = (*s).lenlo+(unsigned)len;
;** 112	-----------------------    (*s).lenhi = (*s).lenhi+((*s).lenlo < (unsigned)len);
;** 114	-----------------------    U$12 = (*s).blkused;
;** 114	-----------------------    C$3 = U$12+len;
;** 114	-----------------------    if ( (U$12 != 0)&(C$3 < 64) ) goto g8;

           MV      .L1X    SP,A31            ; |102| 
||         STW     .D2T1   A15,*SP--(120)    ; |102| 
||         MVK     .S1     64,A8             ; |114| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         MV      .L1     A4,A10            ; |102| 
||         STDW    .D2T2   B11:B10,*+SP(104)
||         MV      .L2     B4,B11            ; |102| 
||         MV      .S2X    A6,B10            ; |102| 

           LDW     .D1T2   *+A10(104),B5     ; |111| 
           LDW     .D1T1   *+A10(100),A7     ; |112| 
           STDW    .D2T2   B13:B12,*+SP(112)

           STW     .D1T1   A14,*-A31(24)
||         STW     .D2T2   B3,*+SP(100)

           STDW    .D1T1   A13:A12,*-A31(32)
           ADD     .L1X    A6,B5,A3          ; |111| 
           STW     .D1T1   A3,*+A10(104)     ; |111| 
           LDW     .D1T1   *+A10(96),A3      ; |114| 
           LDW     .D1T2   *+A10(104),B5     ; |112| 
           NOP             3
           CMPEQ   .L1     A3,0,A4           ; |114| 

           CMPLTU  .L2X    B5,A6,B5          ; |112| 
||         ADD     .D1     A6,A3,A3          ; |114| 
||         ADD     .S1     A10,A3,A4         ; |118| 
||         XOR     .L1     1,A4,A5           ; |114| 

           ADDAD   .D1     A4,4,A4           ; |118| 
||         CMPLT   .L1     A3,A8,A8          ; |114| 

           AND     .S1     A8,A5,A0          ; |114| 
||         MVK     .S2     64,B5             ; |124| 
||         ADD     .L1X    B5,A7,A7          ; |112| 

   [ A0]   B       .S1     L10               ; |114| 
||         STW     .D1T1   A7,*+A10(100)     ; |112| 
|| [!A0]   MVK     .S2     39,B4
||         CMPLT   .L2X    A3,B5,B0          ; |124| 

   [!A0]   MVK     .S2     37,B7
|| [!A0]   MVK     .S1     33,A3
|| [!A0]   MV      .D2X    A10,B5
|| [ A0]   ZERO    .L2     B0                ; nullify predicate
|| [!A0]   ADDAH   .D1     A10,19,A13

   [!A0]   ADD     .L1     A3,A10,A14
|| [!A0]   MVK     .S1     35,A4
|| [!A0]   ADDAH   .D2     B5,17,B4
|| [!A0]   ADD     .L2X    B4,A10,B13
|| [ B0]   B       .S2     L9                ; |124| 
|| [!A0]   ADDAW   .D1     A10,9,A12

   [ A0]   CALL    .S1     _memcpy           ; |118| 
|| [!A0]   ADD     .L2X    B7,A10,B12
|| [!A0]   ADD     .L1     A4,A10,A15
|| [!A0]   ADDAD   .D2     B5,4,B5

   [!A0]   STW     .D2T2   B4,*+SP(72)
   [!A0]   MV      .L1X    B5,A11
           ; BRANCHCC OCCURS {L10}           ; |114| 
;** --------------------------------------------------------------------------*
;** 124	-----------------------    if ( C$3 < 64 ) goto g7;
;**  	-----------------------    K$30 = (-64);
;**  	-----------------------    K$34 = (unsigned char * const)s+35;
;**  	-----------------------    K$41 = (unsigned char * const)s+34;
;**  	-----------------------    K$48 = (unsigned char * const)s+33;
;**  	-----------------------    K$54 = (unsigned char * const)s+32;
;**  	-----------------------    K$61 = (unsigned char * const)s+39;
;**  	-----------------------    K$66 = (unsigned char * const)s+38;
;**  	-----------------------    K$72 = (unsigned char * const)s+37;
;**  	-----------------------    K$78 = (unsigned char * const)s+36;
;** 114	-----------------------    K$16 = 64;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           NOP             1
   [!B0]   LDW     .D1T1   *+A10(96),A5      ; |125| 
           ; BRANCHCC OCCURS {L9}            ; |124| 
;**	-----------------------g4:
;** 125	-----------------------    C$2 = (*s).blkused;
;** 125	-----------------------    memcpy(C$2+(unsigned char (* const)[64])s+32, (const void *)q, (unsigned)K$16-(unsigned)C$2);
;** 126	-----------------------    C$1 = (*s).blkused;
;** 126	-----------------------    q = q-C$1+64;
;** 127	-----------------------    len = C$1+len+K$30;
;** 129	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    U$37 = K$34;
;**  	-----------------------    U$42 = K$41;
;**  	-----------------------    U$49 = K$48;
;**  	-----------------------    U$55 = K$54;
;**  	-----------------------    U$62 = K$61;
;**  	-----------------------    U$67 = K$66;
;**  	-----------------------    U$73 = K$72;
;**  	-----------------------    U$79 = K$78;
;** 129	-----------------------    L$1 = 8;
;**  	-----------------------    U$86 = &((double *)wordblock)[0];
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g5:
;** 130	-----------------------    *U$86++ = _itod((unsigned)*U$62++{8}|(unsigned)*U$67++{8}<<8|(unsigned)*U$73++{8}<<16|(unsigned)*U$79++{8}<<24, (unsigned)*U$37++{8}|(unsigned)*U$42++{8}<<8|(unsigned)*U$49++{8}<<16|(unsigned)*U$55++{8}<<24);
;** 129	-----------------------    if ( --L$1 ) goto g5;
;** 136	-----------------------    SHA256_Block(s, &wordblock);
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
;*      .S units                     3        4     
;*      .D units                     5*       4     
;*      .M units                     0        0     
;*      .X cross paths               3        2     
;*      .T address paths             5*       4     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        3     (.L or .S or .D unit)
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
L6:    ; PIPED LOOP PROLOG
           CALL    .S2     _memcpy           ; |125| 
           NOP             3

           MVK     .S1     0x40,A3           ; |114| 
||         ADD     .L1     A10,A5,A4         ; |125| 

           MV      .L2     B11,B4            ; |125| 
||         ADDKPC  .S2     RL3,B3,0          ; |125| 
||         SUB     .L1     A3,A5,A6          ; |125| 
||         ADDAD   .D1     A4,4,A4           ; |125| 

RL3:       ; CALL OCCURS {_memcpy}           ; |125| 
           NOP             1
           LDW     .D1T1   *+A10(96),A3      ; |126| 
           NOP             2
           LDW     .D2T2   *+SP(72),B8
           MVC     .S2     CSR,B18

           MV      .S2     B12,B6
||         AND     .D2     -2,B18,B31
||         SUB     .L2X    B11,A3,B7         ; |126| 

           MV      .L2X    A11,B9
||         MV      .L1     A13,A16
||         MVC     .S2     B31,CSR           ; interrupts off
||         ADDAD   .D2     B7,8,B11          ; |126| 

           MV      .L2     B13,B5
||         MVK     .S2     6,B0              ; |129| 
||         MV      .L1     A15,A8
||         LDBU    .D2T2   *B9++(8),B7       ; |130| (P) <0,0> 
||         LDBU    .D1T1   *A16++(8),A4      ; |130| (P) <0,0> 

           ADD     .L1X    8,SP,A17
||         MVK     .S2     0xffffffc0,B16
||         ADD     .L2X    B10,A3,B4         ; |127| 
||         LDBU    .D2T2   *B8++(8),B7       ; |130| (P) <0,1> 
||         LDBU    .D1T1   *A8++(8),A6       ; |130| (P) <0,1> 

	.dwpsn	"SSHSH256.C",129,0

           MV      .L1     A14,A7
||         MVK     .S1     0x1,A0            ; init prolog collapse predicate
||         MV      .D1     A12,A9
||         ADD     .L2     B16,B4,B10        ; |127| 
||         LDBU    .D2T2   *B5++(8),B7       ; |130| (P) <0,2> 
|| [ B0]   BDEC    .S2     L7,B0             ; |129| (P) <0,7> 

;** --------------------------------------------------------------------------*
L7:    ; PIPED LOOP KERNEL
DW$L$_SHA256_Bytes$4$B:

           SHL     .S1     A4,16,A3          ; |130| <0,8> 
||         SHL     .S2     B17,16,B17        ; |130| <0,8> 
||         OR      .L2X    A3,B7,B7          ; |130| <0,8> 
||         LDBU    .D1T1   *A7++(8),A4       ; |130| <1,3> 
||         LDBU    .D2T2   *B6++(8),B17      ; |130| <1,3> 

           SHL     .S1     A4,24,A5          ; |130| <0,9> 
||         OR      .L1X    A3,B4,A3          ; |130| <0,9> 
||         OR      .L2     B17,B7,B4         ; |130| <0,9> 
||         LDBU    .D1T1   *A9++(8),A4       ; |130| <1,4> 

           OR      .L1X    B16,A3,A4         ; |130| <0,10> 
||         SHL     .S2     B7,24,B16         ; |130| <1,5> 
||         SHL     .S1     A4,8,A3           ; |130| <1,5> 
||         LDBU    .D2T2   *B9++(8),B7       ; |130| <2,0> 
||         LDBU    .D1T1   *A16++(8),A4      ; |130| <2,0> 

           OR      .L1X    A5,B4,A5          ; |130| <0,11> 
||         SHL     .S2     B7,8,B4           ; |130| <1,6> 
||         LDBU    .D1T1   *A8++(8),A6       ; |130| <2,1> 
||         LDBU    .D2T2   *B8++(8),B7       ; |130| <2,1> 

	.dwpsn	"SSHSH256.C",135,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,12> 
|| [!A0]   STDW    .D1T1   A5:A4,*A17++      ; |130| <0,12> 
|| [ B0]   BDEC    .S2     L7,B0             ; |129| <1,7> 
||         OR      .L2X    B4,A6,B4          ; |130| <1,7> 
||         LDBU    .D2T2   *B5++(8),B7       ; |130| <2,2> 

DW$L$_SHA256_Bytes$4$E:
;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP EPILOG
;** 137	-----------------------    (*s).blkused = 0;
;** 124	-----------------------    if ( len >= (K$16 = 64) ) goto g4;

           SHL     .S2     B17,16,B17        ; |130| (E) <1,8> 
||         OR      .L2X    A3,B7,B7          ; |130| (E) <1,8> 
||         LDBU    .D1T1   *A7++(8),A4       ; |130| (E) <2,3> 
||         LDBU    .D2T2   *B6++(8),B17      ; |130| (E) <2,3> 
||         SHL     .S1     A4,16,A3          ; |130| (E) <1,8> 

           OR      .L1X    A3,B4,A3          ; |130| (E) <1,9> 
||         OR      .L2     B17,B7,B4         ; |130| (E) <1,9> 
||         LDBU    .D1T1   *A9++(8),A4       ; |130| (E) <2,4> 
||         SHL     .S1     A4,24,A5          ; |130| (E) <1,9> 

           OR      .L1X    B16,A3,A4         ; |130| (E) <1,10> 
||         SHL     .S2     B7,24,B16         ; |130| (E) <2,5> 
||         SHL     .S1     A4,8,A3           ; |130| (E) <2,5> 

           OR      .L1X    A5,B4,A5          ; |130| (E) <1,11> 
||         SHL     .S2     B7,8,B4           ; |130| (E) <2,6> 

           CALL    .S2     _SHA256_Block     ; |136| 
||         OR      .L2X    B4,A6,B4          ; |130| (E) <2,7> 
||         STDW    .D1T1   A5:A4,*A17++      ; |130| (E) <1,12> 

           SHL     .S2     B17,16,B17        ; |130| (E) <2,8> 
||         OR      .L2X    A3,B7,B7          ; |130| (E) <2,8> 
||         SHL     .S1     A4,16,A3          ; |130| (E) <2,8> 

           ADDKPC  .S2     RL4,B3,0          ; |136| 
||         SHL     .S1     A4,24,A5          ; |130| (E) <2,9> 
||         OR      .L2     B17,B7,B4         ; |130| (E) <2,9> 
||         OR      .L1X    A3,B4,A3          ; |130| (E) <2,9> 

           MVC     .S2     B18,CSR           ; interrupts on
||         OR      .L1X    B16,A3,A4         ; |130| (E) <2,10> 

           ADD     .L2     8,SP,B4           ; |136| 
||         OR      .L1X    A5,B4,A5          ; |130| (E) <2,11> 

           MV      .L1     A10,A4            ; |136| 
||         STDW    .D1T1   A5:A4,*A17++      ; |130| (E) <2,12> 

RL4:       ; CALL OCCURS {_SHA256_Block}     ; |136| 
           NOP             1

           ZERO    .L1     A3                ; |137| 
||         MVK     .S2     0x40,B4           ; |114| 

           STW     .D1T1   A3,*+A10(96)      ; |137| 
||         CMPLT   .L2     B10,B4,B0         ; |124| 

;** --------------------------------------------------------------------------*
DW$L$_SHA256_Bytes$6$B:

   [!B0]   BNOP    .S1     L6,5              ; |124| 
|| [!B0]   LDW     .D1T1   *+A10(96),A5      ; |125| 

           ; BRANCHCC OCCURS {L6}            ; |124| 
DW$L$_SHA256_Bytes$6$E:
;** --------------------------------------------------------------------------*
L9:    
;**	-----------------------g7:
;** 139	-----------------------    memcpy((unsigned char (* const)[64])s+32, (const void *)q, (unsigned)len);
;** 140	-----------------------    (*s).blkused = len;
;** 140	-----------------------    goto g9;
           CALL    .S1     _memcpy           ; |139| 
           ADDKPC  .S2     RL5,B3,1          ; |139| 
           MV      .L1X    B10,A6            ; |139| 
           MV      .L2     B11,B4            ; |139| 
           ADDAD   .D1     A10,4,A4          ; |139| 
RL5:       ; CALL OCCURS {_memcpy}           ; |139| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(100),B3      ; |142| 
           STW     .D1T2   B10,*+A10(96)     ; |140| 
           MV      .L1X    SP,A31            ; |142| 
           LDDW    .D1T1   *+A31(88),A13:A12 ; |142| 

           LDW     .D1T1   *+A31(96),A14     ; |142| 
||         LDDW    .D2T2   *+SP(112),B13:B12 ; |142| 

           RET     .S2     B3                ; |142| 
||         LDDW    .D1T1   *+A31(80),A11:A10 ; |142| 
||         LDDW    .D2T2   *+SP(104),B11:B10 ; |142| 

           LDW     .D2T1   *++SP(120),A15    ; |142| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |142| 
;** --------------------------------------------------------------------------*
L10:    
;**	-----------------------g8:
;** 118	-----------------------    memcpy(U$12+(unsigned char (* const)[64])s+32, (const void *)q, (unsigned)len);
;** 119	-----------------------    (*s).blkused = (*s).blkused+len;
;**	-----------------------g9:
;**  	-----------------------    return;
           ADDKPC  .S2     RL6,B3,2          ; |118| 
RL6:       ; CALL OCCURS {_memcpy}           ; |118| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(96),A3      ; |119| 
           LDW     .D2T2   *+SP(100),B3      ; |142| 
           MV      .L1X    SP,A31            ; |142| 
           LDDW    .D1T1   *+A31(88),A13:A12 ; |142| 
           LDW     .D1T1   *+A31(96),A14     ; |142| 
           ADD     .L1X    B10,A3,A3         ; |119| 
           STW     .D1T1   A3,*+A10(96)      ; |119| 

           RET     .S2     B3                ; |142| 
||         LDDW    .D1T1   *+A31(80),A11:A10 ; |142| 
||         LDDW    .D2T2   *+SP(104),B11:B10 ; |142| 

           LDW     .D2T1   *++SP(120),A15    ; |142| 
	.dwpsn	"SSHSH256.C",142,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |142| 

DW$32	.dwtag  DW_TAG_loop
	.dwattr DW$32, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\rsalib\SSHSH256.asm:L6:1:1301562228")
	.dwattr DW$32, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$32, DW_AT_begin_line(0x72)
	.dwattr DW$32, DW_AT_end_line(0x89)
DW$33	.dwtag  DW_TAG_loop_range
	.dwattr DW$33, DW_AT_low_pc(DW$L$_SHA256_Bytes$6$B)
	.dwattr DW$33, DW_AT_high_pc(DW$L$_SHA256_Bytes$6$E)

DW$34	.dwtag  DW_TAG_loop
	.dwattr DW$34, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\rsalib\SSHSH256.asm:L7:2:1301562228")
	.dwattr DW$34, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$34, DW_AT_begin_line(0x81)
	.dwattr DW$34, DW_AT_end_line(0x87)
DW$35	.dwtag  DW_TAG_loop_range
	.dwattr DW$35, DW_AT_low_pc(DW$L$_SHA256_Bytes$4$B)
	.dwattr DW$35, DW_AT_high_pc(DW$L$_SHA256_Bytes$4$E)
	.dwendtag DW$34

	.dwendtag DW$32

	.dwattr DW$28, DW_AT_end_file("SSHSH256.C")
	.dwattr DW$28, DW_AT_end_line(0x8e)
	.dwattr DW$28, DW_AT_end_column(0x01)
	.dwendtag DW$28

	.sect	".text"
	.global	_SHA256_Final

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA256_Final"), DW_AT_symbol_name("_SHA256_Final")
	.dwattr DW$36, DW_AT_low_pc(_SHA256_Final)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$36, DW_AT_begin_line(0x90)
	.dwattr DW$36, DW_AT_begin_column(0x06)
	.dwattr DW$36, DW_AT_frame_base[DW_OP_breg31 112]
	.dwattr DW$36, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH256.C",144,59

;******************************************************************************
;* FUNCTION NAME: _SHA256_Final                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 68 Auto + 44 Save = 112 byte                *
;******************************************************************************
_SHA256_Final:
;** --------------------------------------------------------------------------*
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$37, DW_AT_type(*DW$T$46)
	.dwattr DW$37, DW_AT_location[DW_OP_reg4]
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("digest"), DW_AT_symbol_name("_digest")
	.dwattr DW$38, DW_AT_type(*DW$T$27)
	.dwattr DW$38, DW_AT_location[DW_OP_reg20]
;** 150	-----------------------    ((U$3 = (*s).blkused) >= 56) ? (pad = 120-U$3) : (pad = 56-U$3);
;** 151	-----------------------    C$1 = (*s).lenlo;
;** 155	-----------------------    lenhi = (*s).lenhi<<3|C$1>>29;
;** 156	-----------------------    lenlo = C$1<<3;
;** 158	-----------------------    memset(&c, 0, (unsigned)pad);
;** 159	-----------------------    c[0] = 128;
;** 160	-----------------------    SHA256_Bytes(s, &c, pad);
;** 162	-----------------------    c[0] = lenhi>>24;
;** 163	-----------------------    c[1] = lenhi>>16;
;** 164	-----------------------    c[2] = lenhi>>8;
;** 165	-----------------------    c[3] = lenhi;
;** 166	-----------------------    c[4] = lenlo>>24;
;** 167	-----------------------    c[5] = lenlo>>16;
;** 168	-----------------------    c[6] = lenlo>>8;
;** 169	-----------------------    c[7] = lenlo;
;** 171	-----------------------    SHA256_Bytes(s, &c, 8);
;** 173	-----------------------    if ( (digest-(unsigned * const)s >= 32)|((unsigned * const)s-digest >= 32) ) goto g4;
;**  	-----------------------    U$75 = (unsigned * const)s;
;**  	-----------------------    U$78 = &digest[-4];
;**  	-----------------------    L$1 = 8;
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4104u)

           STW     .D2T1   A15,*SP--(112)    ; |144| 
||         MV      .L1X    SP,A31            ; |144| 

           MV      .L1     A4,A11            ; |144| 
||         STDW    .D1T1   A11:A10,*-A31(40)

           LDW     .D1T1   *+A11(96),A3      ; |150| 
           STDW    .D1T1   A13:A12,*-A31(32)

           CALL    .S1     _memset           ; |158| 
||         LDW     .D1T1   *+A11(104),A10    ; |151| 

           LDW     .D1T1   *+A11(100),A13    ; |155| 
||         STDW    .D2T2   B11:B10,*+SP(96)
||         MVK     .S2     56,B6             ; |150| 

           STDW    .D2T2   B13:B12,*+SP(104)
||         MVK     .S2     56,B5             ; |150| 
||         MVK     .S1     120,A5            ; |150| 

           SUB     .L1     A5,A3,A12         ; |150| 
||         CMPLT   .L2X    A3,B6,B0          ; |150| 
||         SUB     .S1X    B4,A4,A14         ; |173| 
||         STW     .D1T1   A14,*-A31(24)
||         STW     .D2T2   B3,*+SP(92)

   [ B0]   SUB     .L1X    B5,A3,A12         ; |150| 
||         SUB     .L2     B4,4,B10
||         SUB     .S2X    A4,B4,B11         ; |173| 
||         SUB     .D2     B4,4,B12

           ADDKPC  .S2     RL7,B3,0          ; |158| 
||         MV      .L1     A12,A6            ; |158| 
||         ADD     .S1X    8,SP,A4           ; |158| 
||         ZERO    .L2     B4                ; |158| 
||         MV      .D2X    A4,B13            ; |144| 
||         MV      .D1     A4,A15            ; |144| 

RL7:       ; CALL OCCURS {_memset}           ; |158| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA256_Bytes     ; |160| 
           ADDKPC  .S2     RL8,B3,0          ; |160| 
           MV      .L1     A12,A6            ; |160| 
           MV      .S1     A11,A4            ; |160| 
           MVK     .S2     128,B4            ; |159| 

           ADD     .L2     8,SP,B4           ; |160| 
||         STB     .D2T2   B4,*+SP(8)        ; |159| 

RL8:       ; CALL OCCURS {_SHA256_Bytes}     ; |160| 
           SHL     .S1     A13,3,A3          ; |155| 
           SHRU    .S1     A10,29,A4         ; |155| 
           OR      .L1     A4,A3,A4          ; |155| 
           SHRU    .S1     A4,24,A3          ; |162| 

           STB     .D2T1   A3,*+SP(8)        ; |162| 
||         SHRU    .S2X    A4,16,B4          ; |163| 

           STB     .D2T2   B4,*+SP(9)        ; |163| 
||         SHRU    .S1     A4,8,A3           ; |164| 

           CALL    .S2     _SHA256_Bytes     ; |171| 
||         EXTU    .S1     A10,3,24,A3       ; |166| 
||         STB     .D2T1   A3,*+SP(10)       ; |164| 

           STB     .D2T1   A3,*+SP(12)       ; |166| 

           STB     .D2T1   A4,*+SP(11)       ; |165| 
||         SHL     .S2X    A10,3,B4          ; |156| 

           STB     .D2T2   B4,*+SP(15)       ; |169| 
||         EXTU    .S1     A10,3,16,A3       ; |167| 

           EXTU    .S1     A10,3,8,A3        ; |168| 
||         STB     .D2T1   A3,*+SP(13)       ; |167| 

           ADDKPC  .S2     RL9,B3,0          ; |171| 
||         STB     .D2T1   A3,*+SP(14)       ; |168| 
||         ADD     .L2     8,SP,B4           ; |171| 
||         MV      .L1     A11,A4            ; |171| 
||         MVK     .S1     0x8,A6            ; |171| 

RL9:       ; CALL OCCURS {_SHA256_Bytes}     ; |171| 
;** --------------------------------------------------------------------------*

           MVK     .S1     32,A3             ; |173| 
||         MVK     .L2     0x8,B5

           MVK     .S1     32,A4             ; |173| 
||         CMPLT   .L1     A14,A3,A3         ; |173| 

           NOP             1
           CMPLT   .L2X    B11,A4,B4         ; |173| 

           MVK     .S2     0x8,B4
||         AND     .L2X    A3,B4,B0

   [!B0]   BNOP    .S1     L14,5             ; |173| 
           ; BRANCHCC OCCURS {L14}           ; |173| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 174	-----------------------    *(U$78 += 4) = *U$75>>24;
;** 175	-----------------------    U$78[1] = *U$75>>16;
;** 176	-----------------------    U$78[2] = *U$75>>8;
;** 177	-----------------------    U$78[3] = *U$75++;
;** 173	-----------------------    if ( --L$1 ) goto g3;

           MVC     .S2     CSR,B7
||         SUB     .L1X    B5,1,A0
||         MV      .L2     B13,B5
||         MV      .D2     B12,B4

           AND     .L2     -2,B7,B6
           MVC     .S2     B6,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 173
;*      Loop opening brace source line   : 173
;*      Loop closing brace source line   : 178
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 27
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 8
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        3     
;*      .D units                     0        8*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        8*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2     
;*      Bound(.L .S .D .LS .LSD)     1        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 27 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L11:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L12:    ; PIPED LOOP KERNEL
DW$L$_SHA256_Final$6$B:
	.dwpsn	"SSHSH256.C",173,0
           LDW     .D2T2   *B5,B6            ; |174| <0,0>  ^ 
           NOP             4
           SHRU    .S2     B6,24,B6          ; |174| <0,5>  ^ 
           STB     .D2T2   B6,*++B4(4)       ; |174| <0,6>  ^ 
           LDW     .D2T2   *B5,B6            ; |175| <0,7>  ^ 
           NOP             4
           SHRU    .S2     B6,16,B6          ; |175| <0,12>  ^ 
           STB     .D2T2   B6,*+B4(1)        ; |175| <0,13>  ^ 
           LDW     .D2T2   *B5,B6            ; |176| <0,14>  ^ 
           NOP             4
           SHRU    .S2     B6,8,B6           ; |176| <0,19>  ^ 
           STB     .D2T2   B6,*+B4(2)        ; |176| <0,20>  ^ 

   [ A0]   BDEC    .S1     L12,A0            ; |173| <0,21> 
||         LDBU    .D2T2   *B5++(4),B6       ; |177| <0,21>  ^ 

           NOP             4
	.dwpsn	"SSHSH256.C",178,0
           STB     .D2T2   B6,*+B4(3)        ; |177| <0,26>  ^ 
DW$L$_SHA256_Final$6$E:
;** --------------------------------------------------------------------------*
L13:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;** 173	-----------------------    goto g6;
;**	-----------------------g4:
;**  	-----------------------    U$75 = (unsigned * const)s;
;**  	-----------------------    U$78 = &digest[-4];
;**  	-----------------------    L$2 = 8;
;**  	-----------------------    #pragma[60] (s != digest;)
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4160u)
           LDW     .D2T2   *+SP(92),B3       ; |179| 
           MV      .L1X    SP,A31            ; |179| 
           LDDW    .D1T1   *+A31(72),A11:A10 ; |179| 
           LDW     .D1T1   *+A31(88),A14     ; |179| 

           LDDW    .D2T2   *+SP(104),B13:B12 ; |179| 
||         MVC     .S2     B7,CSR            ; interrupts on

           RET     .S2     B3                ; |179| 
||         LDDW    .D1T1   *+A31(80),A13:A12 ; |179| 
||         LDDW    .D2T2   *+SP(96),B11:B10  ; |179| 

           LDW     .D2T1   *++SP(112),A15    ; |179| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |179| 
;** --------------------------------------------------------------------------*
L14:    
;**	-----------------------g5:
;** 174	-----------------------    s$0 = *U$75++;
;** 174	-----------------------    *(U$78 += 4) = s$0>>24;
;** 175	-----------------------    U$78[1] = s$0>>16;
;** 176	-----------------------    U$78[2] = s$0>>8;
;** 177	-----------------------    U$78[3] = s$0;
;** 173	-----------------------    if ( --L$2 ) goto g5;
;**	-----------------------g6:
;**  	-----------------------    return;

           MVC     .S2     CSR,B6
||         MV      .L1     A15,A7
||         SUB     .S1X    B4,2,A0

           AND     .L2     -2,B6,B5
           MVC     .S2     B5,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 173
;*      Loop opening brace source line   : 173
;*      Loop closing brace source line   : 178
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2        2     
;*      .D units                     3*       2     
;*      .M units                     0        0     
;*      .X cross paths               0        2     
;*      .T address paths             3*       2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 3 iterations in parallel
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
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 2
;*----------------------------------------------------------------------------*
L15:    ; PIPED LOOP PROLOG

           LDW     .D1T1   *A7++,A6          ; |174| (P) <0,0> 
|| [ A0]   BDEC    .S1     L16,A0            ; |173| (P) <0,3> 

           ZERO    .L1     A1
	.dwpsn	"SSHSH256.C",173,0

           MV      .L1X    B10,A4
||         ADD     .L2     1,B10,B4
||         MVKH    .S1     0x10000,A1        ; init prolog collapse predicate

;** --------------------------------------------------------------------------*
L16:    ; PIPED LOOP KERNEL
DW$L$_SHA256_Final$11$B:

           SHRU    .S2X    A6,16,B5          ; |175| <0,6> 
|| [ A0]   BDEC    .S1     L16,A0            ; |173| <1,3> 
||         LDW     .D1T1   *A7++,A6          ; |174| <2,0> 

           SHRU    .S2X    A3,8,B5           ; |176| <0,7> 
|| [!A1]   STB     .D1T1   A5,*++A4(4)       ; |174| <0,7> 
|| [!A1]   STB     .D2T2   B5,*++B4(4)       ; |175| <0,7> 

	.dwpsn	"SSHSH256.C",178,0

   [ A1]   MPYSU   .M1     2,A1,A1           ; <0,8> 
|| [!A1]   STB     .D2T2   B5,*+B4(1)        ; |176| <0,8> 
|| [!A1]   STB     .D1T1   A3,*+A4(3)        ; |177| <0,8> 
||         MV      .L1     A6,A3             ; |174| <1,5> Split a long life
||         SHRU    .S1     A6,24,A5          ; |174| <1,5> 

DW$L$_SHA256_Final$11$E:
;** --------------------------------------------------------------------------*
L17:    ; PIPED LOOP EPILOG

           MV      .L1X    SP,A31            ; |179| 
||         SHRU    .S2X    A6,16,B5          ; |175| (E) <1,6> 

           SHRU    .S2X    A3,8,B5           ; |176| (E) <1,7> 
||         STB     .D1T1   A5,*++A4(4)       ; |174| (E) <1,7> 
||         STB     .D2T2   B5,*++B4(4)       ; |175| (E) <1,7> 

           SHRU    .S1     A6,24,A5          ; |174| (E) <2,5> 
||         SHRU    .S2X    A6,16,B5          ; |175| (E) <2,6> 
||         MV      .L1     A6,A3             ; |174| (E) <2,5> Split a long life
||         STB     .D2T2   B5,*+B4(1)        ; |176| (E) <1,8> 
||         STB     .D1T1   A3,*+A4(3)        ; |177| (E) <1,8> 

           MVC     .S2     B6,CSR            ; interrupts on
||         STB     .D1T1   A5,*++A4(4)       ; |174| (E) <2,7> 
||         STB     .D2T2   B5,*++B4(4)       ; |175| (E) <2,7> 

           SHRU    .S2X    A3,8,B5           ; |176| (E) <2,7> 

           STB     .D2T2   B5,*+B4(1)        ; |176| (E) <2,8> 
||         STB     .D1T1   A3,*+A4(3)        ; |177| (E) <2,8> 

           LDW     .D1T1   *+A31(88),A14     ; |179| 
||         LDW     .D2T2   *+SP(92),B3       ; |179| 

           LDDW    .D1T1   *+A31(72),A11:A10 ; |179| 
||         LDDW    .D2T2   *+SP(96),B11:B10  ; |179| 

           LDDW    .D1T1   *+A31(80),A13:A12 ; |179| 
||         LDDW    .D2T2   *+SP(104),B13:B12 ; |179| 

           LDW     .D2T1   *++SP(112),A15    ; |179| 
           NOP             1
	.dwpsn	"SSHSH256.C",179,1
           RETNOP  .S2     B3,5              ; |179| 
           ; BRANCH OCCURS {B3}              ; |179| 

DW$39	.dwtag  DW_TAG_loop
	.dwattr DW$39, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\rsalib\SSHSH256.asm:L16:1:1301562228")
	.dwattr DW$39, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$39, DW_AT_begin_line(0xad)
	.dwattr DW$39, DW_AT_end_line(0xb2)
DW$40	.dwtag  DW_TAG_loop_range
	.dwattr DW$40, DW_AT_low_pc(DW$L$_SHA256_Final$11$B)
	.dwattr DW$40, DW_AT_high_pc(DW$L$_SHA256_Final$11$E)
	.dwendtag DW$39


DW$41	.dwtag  DW_TAG_loop
	.dwattr DW$41, DW_AT_name("D:\aqiu\MyDSPProject\CMOSTesting\dsp-v4-cmostest02\rsalib\SSHSH256.asm:L12:1:1301562228")
	.dwattr DW$41, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$41, DW_AT_begin_line(0xad)
	.dwattr DW$41, DW_AT_end_line(0xb2)
DW$42	.dwtag  DW_TAG_loop_range
	.dwattr DW$42, DW_AT_low_pc(DW$L$_SHA256_Final$6$B)
	.dwattr DW$42, DW_AT_high_pc(DW$L$_SHA256_Final$6$E)
	.dwendtag DW$41

	.dwattr DW$36, DW_AT_end_file("SSHSH256.C")
	.dwattr DW$36, DW_AT_end_line(0xb3)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendtag DW$36

	.sect	".text"

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("sha256_final"), DW_AT_symbol_name("_sha256_final")
	.dwattr DW$43, DW_AT_low_pc(_sha256_final)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$43, DW_AT_begin_line(0xd1)
	.dwattr DW$43, DW_AT_begin_column(0x0d)
	.dwattr DW$43, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$43, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH256.C",210,1

;******************************************************************************
;* FUNCTION NAME: _sha256_final                                               *
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
_sha256_final:
;** --------------------------------------------------------------------------*
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$44, DW_AT_type(*DW$T$3)
	.dwattr DW$44, DW_AT_location[DW_OP_reg4]
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$45, DW_AT_type(*DW$T$27)
	.dwattr DW$45, DW_AT_location[DW_OP_reg20]
;** 213	-----------------------    SHA256_Final((struct $$fake0 *)handle, output);
;** 214	-----------------------    safefree(handle);
;** 214	-----------------------    return;
           CALL    .S1     _SHA256_Final     ; |213| 
           NOP             3
           STW     .D2T1   A10,*SP--(8)      ; |210| 

           ADDKPC  .S2     RL10,B3,0         ; |213| 
||         MV      .L2     B3,B13            ; |210| 
||         MV      .L1     A4,A10            ; |210| 
||         STW     .D2T2   B13,*+SP(4)       ; |210| 

RL10:      ; CALL OCCURS {_SHA256_Final}     ; |213| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _safefree         ; |214| 
           ADDKPC  .S2     RL11,B3,3         ; |214| 
           MV      .L1     A10,A4            ; |214| 
RL11:      ; CALL OCCURS {_safefree}         ; |214| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |215| 

           RET     .S2     B3                ; |215| 
||         LDW     .D2T2   *+SP(4),B13       ; |215| 

           LDW     .D2T1   *++SP(8),A10      ; |215| 
	.dwpsn	"SSHSH256.C",215,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |215| 
	.dwattr DW$43, DW_AT_end_file("SSHSH256.C")
	.dwattr DW$43, DW_AT_end_line(0xd7)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendtag DW$43

	.sect	".text"

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("sha256_bytes"), DW_AT_symbol_name("_sha256_bytes")
	.dwattr DW$46, DW_AT_low_pc(_sha256_bytes)
	.dwattr DW$46, DW_AT_high_pc(0x00)
	.dwattr DW$46, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$46, DW_AT_begin_line(0xca)
	.dwattr DW$46, DW_AT_begin_column(0x0d)
	.dwattr DW$46, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$46, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH256.C",203,1

;******************************************************************************
;* FUNCTION NAME: _sha256_bytes                                               *
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
_sha256_bytes:
;** --------------------------------------------------------------------------*
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$47, DW_AT_type(*DW$T$3)
	.dwattr DW$47, DW_AT_location[DW_OP_reg4]
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$48, DW_AT_type(*DW$T$3)
	.dwattr DW$48, DW_AT_location[DW_OP_reg20]
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$49, DW_AT_location[DW_OP_reg6]
;** 206	-----------------------    SHA256_Bytes((struct $$fake0 *)handle, p, len);
;** 206	-----------------------    return;
           CALLRET .S1     _SHA256_Bytes     ; |206| 
	.dwpsn	"SSHSH256.C",207,1
           NOP             5
RL12:      ; CALL-RETURN OCCURS {_SHA256_Bytes}  ; |206| 
	.dwattr DW$46, DW_AT_end_file("SSHSH256.C")
	.dwattr DW$46, DW_AT_end_line(0xcf)
	.dwattr DW$46, DW_AT_end_column(0x01)
	.dwendtag DW$46

	.sect	".text"
	.global	_SHA256_Simple

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA256_Simple"), DW_AT_symbol_name("_SHA256_Simple")
	.dwattr DW$50, DW_AT_low_pc(_SHA256_Simple)
	.dwattr DW$50, DW_AT_high_pc(0x00)
	.dwattr DW$50, DW_AT_begin_file("SSHSH256.C")
	.dwattr DW$50, DW_AT_begin_line(0xb5)
	.dwattr DW$50, DW_AT_begin_column(0x06)
	.dwattr DW$50, DW_AT_frame_base[DW_OP_breg31 120]
	.dwattr DW$50, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH256.C",181,67

;******************************************************************************
;* FUNCTION NAME: _SHA256_Simple                                              *
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
;*   Local Frame Size  : 0 Args + 108 Auto + 8 Save = 116 byte                *
;******************************************************************************
_SHA256_Simple:
;** --------------------------------------------------------------------------*
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$51, DW_AT_type(*DW$T$34)
	.dwattr DW$51, DW_AT_location[DW_OP_reg4]
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$52, DW_AT_type(*DW$T$10)
	.dwattr DW$52, DW_AT_location[DW_OP_reg20]
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$53, DW_AT_type(*DW$T$27)
	.dwattr DW$53, DW_AT_location[DW_OP_reg6]
;** 97	-----------------------    SHA256_Core_Init(&s);  // [6]
;** 98	-----------------------    s.blkused = C$1 = 0;  // [6]
;** 99	-----------------------    s.lenlo = C$1;  // [6]
;** 99	-----------------------    s.lenhi = C$1;  // [6]
;** 99	-----------------------    SHA256_Bytes(&s, p, len);  // [6]
;** 186	-----------------------    SHA256_Final(&s, output);
;** 186	-----------------------    return;
           CALL    .S1     _SHA256_Core_Init ; |97| 
           MV      .S1     A4,A5             ; |181| 
           NOP             1
           STW     .D2T1   A10,*SP--(120)    ; |181| 

           MV      .L1X    B4,A6             ; |181| 
||         MV      .S1     A6,A10            ; |181| 

           ADDKPC  .S2     RL13,B3,0         ; |97| 
||         MV      .L2     B3,B13            ; |181| 
||         ADD     .L1X    4,SP,A4           ; |97| 
||         STW     .D2T2   B13,*+SP(116)     ; |181| 

RL13:      ; CALL OCCURS {_SHA256_Core_Init}  ; |97| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA256_Bytes     ; |99| 
           ZERO    .L2     B4                ; |98| 
           STW     .D2T2   B4,*+SP(108)      ; |99| 
           STW     .D2T2   B4,*+SP(104)      ; |99| 
           ADDKPC  .S2     RL14,B3,0         ; |99| 

           STW     .D2T2   B4,*+SP(100)      ; |98| 
||         ADD     .L1X    4,SP,A4           ; |99| 
||         MV      .L2X    A5,B4             ; |99| 

RL14:      ; CALL OCCURS {_SHA256_Bytes}     ; |99| 
           CALL    .S1     _SHA256_Final     ; |186| 
           ADDKPC  .S2     RL15,B3,2         ; |186| 
           MV      .L2X    A10,B4            ; |186| 
           ADD     .L1X    4,SP,A4           ; |186| 
RL15:      ; CALL OCCURS {_SHA256_Final}     ; |186| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |187| 

           RET     .S2     B3                ; |187| 
||         LDW     .D2T2   *+SP(116),B13     ; |187| 

           LDW     .D2T1   *++SP(120),A10    ; |187| 
	.dwpsn	"SSHSH256.C",187,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |187| 
	.dwattr DW$50, DW_AT_end_file("SSHSH256.C")
	.dwattr DW$50, DW_AT_end_line(0xbb)
	.dwattr DW$50, DW_AT_end_column(0x01)
	.dwendtag DW$50

;; Inlined function references:
;; [  6] SHA256_Init
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"SHA-256",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_memset
	.global	_safemalloc
	.global	_safefree
	.global	_memcpy

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$23	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$T$39


DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$25


DW$T$28	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$28

DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$33)
	.dwattr DW$T$34, DW_AT_address_class(0x20)

DW$T$43	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$43


DW$T$47	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
	.dwendtag DW$T$47


DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$56

DW$T$27	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$27, DW_AT_address_class(0x20)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$61	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$60)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$61, DW_AT_byte_size(0x100)
DW$79	.dwtag  DW_TAG_subrange_type
	.dwattr DW$79, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$61

DW$T$49	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$49, DW_AT_address_class(0x20)
DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$T$46	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$45)
	.dwattr DW$T$46, DW_AT_address_class(0x20)
DW$T$76	.dwtag  DW_TAG_const_type
	.dwattr DW$T$76, DW_AT_type(*DW$T$32)
DW$T$33	.dwtag  DW_TAG_const_type
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$60	.dwtag  DW_TAG_const_type
	.dwattr DW$T$60, DW_AT_type(*DW$T$10)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("SHA256_State"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)

DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("ssh_hash")
	.dwattr DW$T$32, DW_AT_byte_size(0x14)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$80, DW_AT_name("init"), DW_AT_symbol_name("_init")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$81, DW_AT_name("bytes"), DW_AT_symbol_name("_bytes")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$82, DW_AT_name("final"), DW_AT_symbol_name("_final")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$83, DW_AT_name("hlen"), DW_AT_symbol_name("_hlen")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$84, DW_AT_name("text_name"), DW_AT_symbol_name("_text_name")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32

DW$T$24	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_address_class(0x20)
DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$26, DW_AT_address_class(0x20)
DW$T$29	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_address_class(0x20)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x6c)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$85, DW_AT_name("h"), DW_AT_symbol_name("_h")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$86, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_name("blkused"), DW_AT_symbol_name("_blkused")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("lenhi"), DW_AT_symbol_name("_lenhi")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("lenlo"), DW_AT_symbol_name("_lenlo")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_address_class(0x20)

DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x40)
DW$90	.dwtag  DW_TAG_subrange_type
	.dwattr DW$90, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$21


DW$T$20	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$20, DW_AT_byte_size(0x20)
DW$91	.dwtag  DW_TAG_subrange_type
	.dwattr DW$91, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$20

DW$T$30	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$30, DW_AT_byte_size(0x01)

	.dwattr DW$20, DW_AT_external(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
	.dwattr DW$19, DW_AT_type(*DW$T$3)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$92, DW_AT_location[DW_OP_reg0]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$93, DW_AT_location[DW_OP_reg1]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$94, DW_AT_location[DW_OP_reg2]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$95, DW_AT_location[DW_OP_reg3]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$96, DW_AT_location[DW_OP_reg4]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$97, DW_AT_location[DW_OP_reg5]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$98, DW_AT_location[DW_OP_reg6]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$99, DW_AT_location[DW_OP_reg7]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$100, DW_AT_location[DW_OP_reg8]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$101, DW_AT_location[DW_OP_reg9]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$102, DW_AT_location[DW_OP_reg10]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$103, DW_AT_location[DW_OP_reg11]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$104, DW_AT_location[DW_OP_reg12]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$105, DW_AT_location[DW_OP_reg13]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$106, DW_AT_location[DW_OP_reg14]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$107, DW_AT_location[DW_OP_reg15]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$108, DW_AT_location[DW_OP_reg16]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$109, DW_AT_location[DW_OP_reg17]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$110, DW_AT_location[DW_OP_reg18]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$111, DW_AT_location[DW_OP_reg19]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$112, DW_AT_location[DW_OP_reg20]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$113, DW_AT_location[DW_OP_reg21]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$114, DW_AT_location[DW_OP_reg22]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$115, DW_AT_location[DW_OP_reg23]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$116, DW_AT_location[DW_OP_reg24]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$117, DW_AT_location[DW_OP_reg25]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$118, DW_AT_location[DW_OP_reg26]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$119, DW_AT_location[DW_OP_reg27]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$120, DW_AT_location[DW_OP_reg28]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$121, DW_AT_location[DW_OP_reg29]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$122, DW_AT_location[DW_OP_reg30]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$123, DW_AT_location[DW_OP_reg31]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x20]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x21]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x22]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x23]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x24]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x25]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x26]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x27]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x28]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x29]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x2a]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x2b]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x2c]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x2d]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x2e]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x2f]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x30]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x31]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x32]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x33]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x34]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x35]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x36]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x37]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x38]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x39]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x3a]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x3b]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x3c]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x3d]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x3e]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x3f]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x40]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x41]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x42]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x43]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x44]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x45]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x46]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x47]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x48]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x49]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x4a]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x4b]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x4c]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x4d]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x4e]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x4f]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x50]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x51]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x52]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x53]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x54]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x55]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x56]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x57]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x58]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x59]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x5a]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x5b]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x5c]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x5d]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x5e]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x5f]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x60]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x61]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x62]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x63]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x64]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x65]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x66]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x67]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x68]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x69]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x6a]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x6b]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x6c]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x6d]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x6e]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x6f]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x70]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x71]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x72]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x73]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x74]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x75]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x76]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x77]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x78]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x79]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x7a]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x7b]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x7c]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x7d]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

