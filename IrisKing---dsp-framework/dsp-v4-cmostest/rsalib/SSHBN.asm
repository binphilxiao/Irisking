;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Thu Feb 17 13:26:21 2011                                *
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
	.dwattr DW$CU, DW_AT_name("SSHBN.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	IR_1,32
	.field  	_bnZero+0,32
	.field  	0,16			; _bnZero[0] @ 0
IR_1:	.set	2

	.sect	".cinit"
	.align	8
	.field  	IR_2,32
	.field  	_bnOne+0,32
	.field  	1,16			; _bnOne[0] @ 0
	.field  	1,16			; _bnOne[1] @ 16
IR_2:	.set	4

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_Zero+0,32
	.field  	_bnZero,32		; _Zero @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_One+0,32
	.field  	_bnOne,32		; _One @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert"), DW_AT_symbol_name("__assert")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$4, DW_AT_type(*DW$T$3)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$4


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("abort"), DW_AT_symbol_name("_abort")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("memmove"), DW_AT_symbol_name("_memmove")
	.dwattr DW$9, DW_AT_type(*DW$T$3)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$9


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$13, DW_AT_type(*DW$T$3)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$13


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("safemalloc"), DW_AT_symbol_name("_safemalloc")
	.dwattr DW$17, DW_AT_type(*DW$T$3)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$17


DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("safefree"), DW_AT_symbol_name("_safefree")
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$20

	.global	_bnZero
_bnZero:	.usect	".far",2,8
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("bnZero"), DW_AT_symbol_name("_bnZero")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _bnZero]
	.dwattr DW$22, DW_AT_type(*DW$T$91)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_bnOne
_bnOne:	.usect	".far",4,8
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("bnOne"), DW_AT_symbol_name("_bnOne")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _bnOne]
	.dwattr DW$23, DW_AT_type(*DW$T$92)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_Zero
_Zero:	.usect	".far",4,4
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("Zero"), DW_AT_symbol_name("_Zero")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _Zero]
	.dwattr DW$24, DW_AT_type(*DW$T$40)
	.dwattr DW$24, DW_AT_external(0x01)
	.global	_One
_One:	.usect	".far",4,4
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("One"), DW_AT_symbol_name("_One")
	.dwattr DW$25, DW_AT_location[DW_OP_addr _One]
	.dwattr DW$25, DW_AT_type(*DW$T$40)
	.dwattr DW$25, DW_AT_external(0x01)
;	E:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI0042 C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI0044 
	.sect	".text"
	.global	_bignum_bitcount

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_bitcount"), DW_AT_symbol_name("_bignum_bitcount")
	.dwattr DW$26, DW_AT_low_pc(_bignum_bitcount)
	.dwattr DW$26, DW_AT_high_pc(0x00)
	.dwattr DW$26, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$26, DW_AT_begin_line(0x257)
	.dwattr DW$26, DW_AT_begin_column(0x05)
	.dwattr DW$26, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$26, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",600,1

;******************************************************************************
;* FUNCTION NAME: _bignum_bitcount                                            *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,B0,B4,B5,B6                     *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,B0,B3,B4,B5,B6,DP,SP            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_bignum_bitcount:
;** --------------------------------------------------------------------------*
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bn"), DW_AT_symbol_name("_bn")
	.dwattr DW$27, DW_AT_type(*DW$T$40)
	.dwattr DW$27, DW_AT_location[DW_OP_reg4]
;** 601	-----------------------    if ( (bitcount = ((int)*bn<<4)-1) < 0 ) goto g5;
;** 602	-----------------------    L$1 = bitcount+1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1048560, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
           LDHU    .D1T1   *A4,A3            ; |601| 
           NOP             4
           SHL     .S1     A3,4,A3           ; |601| 
           CMPLT   .L1     A3,1,A0           ; |601| 

   [ A0]   BNOP    .S1     L4,2              ; |601| 
||         SUB     .L1     A3,1,A3           ; |601| 
||         MV      .L2X    A3,B4             ; |602| 

   [!A0]   MV      .L1     A3,A7
   [!A0]   SHR     .S1     A7,3,A5           ; |602| (P) <0,0>  ^ 
   [!A0]   SHRU    .S1     A5,28,A5          ; |602| (P) <0,1>  ^ 
           ; BRANCHCC OCCURS {L4}            ; |601| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 602	-----------------------    C$1 = (bitcount>>3>>28)+bitcount;
;** 602	-----------------------    if ( bn[(C$1>>3>>1)+1]>>bitcount-(C$1&0xfffffff0) ) goto g5;
;** 603	-----------------------    --bitcount;
;** 603	-----------------------    if ( --L$1 ) goto g3;

           ADD     .L1     A7,A5,A5          ; |602| (P) <0,2>  ^ 
||         MVC     .S2     CSR,B6
||         MV      .S1     A4,A6
||         ZERO    .L2     B0

           SHR     .S1     A5,4,A8           ; |602| (P) <0,3>  ^ 
||         AND     .L2     -2,B6,B5

           MVC     .S2     B5,CSR            ; interrupts off
||         AND     .L2X    -16,A5,B5         ; |602| (P) <0,4> 
||         ADDAH   .D1     A6,A8,A5          ; |602| (P) <0,4>  ^ 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 602
;*      Loop opening brace source line   : 603
;*      Loop closing brace source line   : 603
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 12
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     3        2     
;*      .D units                     2        0     
;*      .M units                     0        0     
;*      .X cross paths               4*       0     
;*      .T address paths             1        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        1     
;*      Bound(.L .S .D .LS .LSD)     4*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 12 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L1:    ; PIPED LOOP PROLOG

           ZERO    .L1     A4
||         SUB     .L2X    A3,B5,B5          ; |602| (P) <0,5> 
|| [!B0]   LDHU    .D1T1   *+A5(2),A4        ; |602| (P) <0,5>  ^ 

	.dwpsn	"SSHBN.C",602,0
           NOP             2
;** --------------------------------------------------------------------------*
L2:    ; PIPED LOOP KERNEL
DW$L$_bignum_bitcount$4$B:
	.dwpsn	"SSHBN.C",603,0
           NOP             2
           SHRU    .S2X    A4,B5,B0          ; |602| <0,10>  ^ 

   [!B0]   SUB     .L1     A7,1,A7           ; |603| <0,11>  ^ 
|| [!B0]   SUB     .L2     B4,1,B4           ; |603| <0,11> 

           MV      .L1     A7,A3             ; |603| <0,12> Split a long life
||         CMPEQ   .L2     B4,0,B5           ; |603| <0,12> 
||         SHR     .S1     A7,3,A5           ; |602| <1,0>  ^ 

           OR      .L2     B5,B0,B0          ; |603| <0,13> 
||         SHRU    .S1     A5,28,A5          ; |602| <1,1>  ^ 

   [!B0]   B       .S2     L2                ; |603| <0,14> 
||         ADD     .L1     A7,A5,A5          ; |602| <1,2>  ^ 

           SHR     .S1     A5,4,A8           ; |602| <1,3>  ^ 

           AND     .L2X    -16,A5,B5         ; |602| <1,4> 
||         ADDAH   .D1     A6,A8,A5          ; |602| <1,4>  ^ 

           SUB     .L2X    A3,B5,B5          ; |602| <1,5> 
|| [!B0]   LDHU    .D1T1   *+A5(2),A4        ; |602| <1,5>  ^ 

           NOP             2
DW$L$_bignum_bitcount$4$E:
;** --------------------------------------------------------------------------*
L3:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1     A7,A3
||         MVC     .S2     B6,CSR            ; interrupts on

;** --------------------------------------------------------------------------*
L4:    
;**	-----------------------g5:
;** 604	-----------------------    return bitcount+1;
           RETNOP  .S2     B3,4              ; |605| 
	.dwpsn	"SSHBN.C",605,1
           ADD     .L1     1,A3,A4           ; |604| 
           ; BRANCH OCCURS {B3}              ; |605| 

DW$28	.dwtag  DW_TAG_loop
	.dwattr DW$28, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L2:1:1297920382")
	.dwattr DW$28, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$28, DW_AT_begin_line(0x25a)
	.dwattr DW$28, DW_AT_end_line(0x25b)
DW$29	.dwtag  DW_TAG_loop_range
	.dwattr DW$29, DW_AT_low_pc(DW$L$_bignum_bitcount$4$B)
	.dwattr DW$29, DW_AT_high_pc(DW$L$_bignum_bitcount$4$E)
	.dwendtag DW$28

	.dwattr DW$26, DW_AT_end_file("SSHBN.C")
	.dwattr DW$26, DW_AT_end_line(0x25d)
	.dwattr DW$26, DW_AT_end_column(0x01)
	.dwendtag DW$26

	.sect	".text"
	.global	_ssh2_bignum_length

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("ssh2_bignum_length"), DW_AT_symbol_name("_ssh2_bignum_length")
	.dwattr DW$30, DW_AT_low_pc(_ssh2_bignum_length)
	.dwattr DW$30, DW_AT_high_pc(0x00)
	.dwattr DW$30, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$30, DW_AT_begin_line(0x26a)
	.dwattr DW$30, DW_AT_begin_column(0x05)
	.dwattr DW$30, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$30, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",619,1

;******************************************************************************
;* FUNCTION NAME: _ssh2_bignum_length                                         *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,B0,B3,B4,B5,B6,B31              *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,B0,B3,B4,B5,B6,SP,B31           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ssh2_bignum_length:
;** --------------------------------------------------------------------------*
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bn"), DW_AT_symbol_name("_bn")
	.dwattr DW$31, DW_AT_type(*DW$T$40)
	.dwattr DW$31, DW_AT_location[DW_OP_reg4]
;** 620	-----------------------    return (bignum_bitcount(bn)+8)/8+4;
           CALL    .S1     _bignum_bitcount  ; |620| 
           MV      .L2     B3,B31            ; |619| 
           ADDKPC  .S2     RL0,B3,3          ; |620| 
RL0:       ; CALL OCCURS {_bignum_bitcount}  ; |620| 
;** --------------------------------------------------------------------------*

           RET     .S2     B31               ; |621| 
||         ADD     .L1     8,A4,A3           ; |620| 

           SHR     .S1     A3,2,A4           ; |620| 
           SHRU    .S1     A4,29,A4          ; |620| 
           ADD     .L1     A4,A3,A3          ; |620| 
           SHR     .S1     A3,3,A3           ; |620| 
	.dwpsn	"SSHBN.C",621,1
           ADD     .L1     4,A3,A4           ; |620| 
           ; BRANCH OCCURS {B31}             ; |621| 
	.dwattr DW$30, DW_AT_end_file("SSHBN.C")
	.dwattr DW$30, DW_AT_end_line(0x26d)
	.dwattr DW$30, DW_AT_end_column(0x01)
	.dwendtag DW$30

	.sect	".text"
	.global	_ssh1_bignum_length

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("ssh1_bignum_length"), DW_AT_symbol_name("_ssh1_bignum_length")
	.dwattr DW$32, DW_AT_low_pc(_ssh1_bignum_length)
	.dwattr DW$32, DW_AT_high_pc(0x00)
	.dwattr DW$32, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$32, DW_AT_begin_line(0x262)
	.dwattr DW$32, DW_AT_begin_column(0x05)
	.dwattr DW$32, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$32, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",611,1

;******************************************************************************
;* FUNCTION NAME: _ssh1_bignum_length                                         *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,B0,B3,B4,B5,B6,B31              *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,B0,B3,B4,B5,B6,SP,B31           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ssh1_bignum_length:
;** --------------------------------------------------------------------------*
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bn"), DW_AT_symbol_name("_bn")
	.dwattr DW$33, DW_AT_type(*DW$T$40)
	.dwattr DW$33, DW_AT_location[DW_OP_reg4]
;** 612	-----------------------    return (bignum_bitcount(bn)+7)/8+2;
           CALL    .S1     _bignum_bitcount  ; |612| 
           MV      .L2     B3,B31            ; |611| 
           ADDKPC  .S2     RL1,B3,3          ; |612| 
RL1:       ; CALL OCCURS {_bignum_bitcount}  ; |612| 
;** --------------------------------------------------------------------------*

           RET     .S2     B31               ; |613| 
||         ADD     .L1     7,A4,A3           ; |612| 

           SHR     .S1     A3,2,A4           ; |612| 
           SHRU    .S1     A4,29,A4          ; |612| 
           ADD     .L1     A4,A3,A3          ; |612| 
           SHR     .S1     A3,3,A3           ; |612| 
	.dwpsn	"SSHBN.C",613,1
           ADD     .L1     2,A3,A4           ; |612| 
           ; BRANCH OCCURS {B31}             ; |613| 
	.dwattr DW$32, DW_AT_end_file("SSHBN.C")
	.dwattr DW$32, DW_AT_end_line(0x265)
	.dwattr DW$32, DW_AT_end_column(0x01)
	.dwendtag DW$32

	.sect	".text"
	.global	_bignum_byte

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_byte"), DW_AT_symbol_name("_bignum_byte")
	.dwattr DW$34, DW_AT_low_pc(_bignum_byte)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$34, DW_AT_begin_line(0x272)
	.dwattr DW$34, DW_AT_begin_column(0x05)
	.dwattr DW$34, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$34, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",627,1

;******************************************************************************
;* FUNCTION NAME: _bignum_byte                                                *
;*                                                                            *
;*   Regs Modified     : A3,A4,B0,B4,B5,B6,B7                                 *
;*   Regs Used         : A3,A4,B0,B3,B4,B5,B6,B7                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_bignum_byte:
;** --------------------------------------------------------------------------*
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bn"), DW_AT_symbol_name("_bn")
	.dwattr DW$35, DW_AT_type(*DW$T$40)
	.dwattr DW$35, DW_AT_location[DW_OP_reg4]
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$36, DW_AT_type(*DW$T$10)
	.dwattr DW$36, DW_AT_location[DW_OP_reg20]
;** 628	-----------------------    if ( i < *bn*2 ) goto g3;
;** 629	-----------------------    return 0;
;**	-----------------------g3:
;** 631	-----------------------    C$1 = i<<3;
;** 631	-----------------------    return (int)_extu(bn[(((unsigned)i>>31)+i>>1)+1]>>C$1-(((unsigned)i>>28&0xfffffff8u)+C$1&0xfffffff0), 24u, 24u);
           MV      .L2X    A4,B6             ; |627| 
           LDHU    .D2T2   *B6,B5            ; |628| 
           SHRU    .S2     B4,31,B7          ; |631| 
           ADD     .L2     B4,B7,B7          ; |631| 
           SHR     .S2     B7,1,B7           ; |631| 
           SHRU    .S1X    B4,28,A3          ; |631| 
           ADD     .L2     B5,B5,B5          ; |628| 

           ADDAH   .D2     B6,B7,B5          ; |631| 
||         CMPLT   .L2     B4,B5,B0          ; |628| 

   [ B0]   LDHU    .D2T2   *+B5(2),B5        ; |631| 
||         SHL     .S2     B4,3,B4           ; |631| 

           RET     .S2     B3                ; |633| 
||         AND     .L1     -8,A3,A3          ; |631| 

           ADD     .L1X    B4,A3,A3          ; |631| 
           AND     .L1     -16,A3,A3         ; |631| 
           SUB     .L1X    B4,A3,A3          ; |631| 

   [ B0]   SHRU    .S1X    B5,A3,A3          ; |631| 
||         ZERO    .L1     A4                ; |629| 

	.dwpsn	"SSHBN.C",633,1
   [ B0]   EXTU    .S1     A3,24,24,A4       ; |631| 
           ; BRANCH OCCURS {B3}              ; |633| 
	.dwattr DW$34, DW_AT_end_file("SSHBN.C")
	.dwattr DW$34, DW_AT_end_line(0x279)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendtag DW$34

	.sect	".text"
	.global	_ssh1_write_bignum

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("ssh1_write_bignum"), DW_AT_symbol_name("_ssh1_write_bignum")
	.dwattr DW$37, DW_AT_low_pc(_ssh1_write_bignum)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$37, DW_AT_begin_line(0x29b)
	.dwattr DW$37, DW_AT_begin_column(0x05)
	.dwattr DW$37, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$37, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",668,1

;******************************************************************************
;* FUNCTION NAME: _ssh1_write_bignum                                          *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,A16, *
;*                           B31                                              *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,SP,  *
;*                           A16,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ssh1_write_bignum:
;** --------------------------------------------------------------------------*
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$38, DW_AT_type(*DW$T$3)
	.dwattr DW$38, DW_AT_location[DW_OP_reg4]
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bn"), DW_AT_symbol_name("_bn")
	.dwattr DW$39, DW_AT_type(*DW$T$40)
	.dwattr DW$39, DW_AT_location[DW_OP_reg20]
;** 669	-----------------------    p = (unsigned char * const)data;
;** 612	-----------------------    len = (bignum_bitcount(bn)+7)/8+2;  // [22]
;** 612	-----------------------    bitc = bignum_bitcount(bn);  // [22]
;** 674	-----------------------    *p++ = bitc>>8;
;** 675	-----------------------    *p = bitc;
;** 676	-----------------------    if ( !(i = len-2) ) goto g4;
           CALL    .S1     _bignum_bitcount  ; |612| 
           MV      .L2     B4,B9             ; |668| 
           MV      .D2     B3,B31            ; |668| 
           ADDKPC  .S2     RL2,B3,0          ; |612| 
           MV      .S1     A4,A9             ; |668| 
           MV      .L1X    B4,A4             ; |668| 
RL2:       ; CALL OCCURS {_bignum_bitcount}  ; |612| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_bitcount  ; |612| 
           ADDKPC  .S2     RL3,B3,2          ; |612| 
           ADD     .S1     7,A4,A16          ; |612| 
           MV      .L1X    B9,A4             ; |612| 
RL3:       ; CALL OCCURS {_bignum_bitcount}  ; |612| 
;** --------------------------------------------------------------------------*
           SHR     .S1     A16,2,A3          ; |612| 
           SHRU    .S1     A3,29,A3          ; |612| 
           ADD     .L1     A3,A16,A3         ; |612| 
           SHR     .S1     A3,3,A3           ; |612| 

           ADD     .L1     2,A3,A5           ; |612| 
||         SHR     .S1     A4,8,A3           ; |674| 

           STB     .D1T1   A3,*A9++          ; |674| 

           SUB     .L2X    A5,2,B0           ; |676| 
||         STB     .D1T1   A4,*A9            ; |675| 

   [!B0]   BNOP    .S1     L6,5              ; |676| 
           ; BRANCHCC OCCURS {L6}            ; |676| 
;** --------------------------------------------------------------------------*
;** 675	-----------------------    ++p;
;**  	-----------------------    #pragma MUST_ITERATE(1, 2147483645, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     _bignum_byte      ; |677| 
||         ADD     .L1     1,A9,A9           ; |675| 

	.dwpsn	"SSHBN.C",676,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L5:    
DW$L$_ssh1_write_bignum$5$B:
	.dwpsn	"SSHBN.C",677,0
;**	-----------------------g3:
;** 677	-----------------------    C$1 = i-1;
;** 677	-----------------------    *p++ = bignum_byte(bn, C$1);
;** 677	-----------------------    if ( i = C$1 ) goto g3;
           SUB     .L2     B0,1,B8           ; |677| 

           SUB     .L2     B0,1,B4           ; |677| 
||         ADDKPC  .S2     RL4,B3,0          ; |677| 
||         MV      .L1X    B9,A4             ; |677| 

RL4:       ; CALL OCCURS {_bignum_byte}      ; |677| 
DW$L$_ssh1_write_bignum$5$E:
;** --------------------------------------------------------------------------*
DW$L$_ssh1_write_bignum$6$B:

           MV      .L2     B8,B0             ; |677| 
||         STB     .D1T1   A4,*A9++          ; |677| 

   [ B0]   BNOP    .S1     L5,1              ; |677| 
   [ B0]   CALL    .S1     _bignum_byte      ; |677| 
           NOP             3
           ; BRANCHCC OCCURS {L5}            ; |677| 
DW$L$_ssh1_write_bignum$6$E:
;** --------------------------------------------------------------------------*
L6:    
;**	-----------------------g4:
;** 678	-----------------------    return len;
           RETNOP  .S2     B31,4             ; |679| 
	.dwpsn	"SSHBN.C",679,1
           MV      .L1     A5,A4             ; |678| 
           ; BRANCH OCCURS {B31}             ; |679| 

DW$40	.dwtag  DW_TAG_loop
	.dwattr DW$40, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L5:1:1297920382")
	.dwattr DW$40, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$40, DW_AT_begin_line(0x2a4)
	.dwattr DW$40, DW_AT_end_line(0x2a5)
DW$41	.dwtag  DW_TAG_loop_range
	.dwattr DW$41, DW_AT_low_pc(DW$L$_ssh1_write_bignum$5$B)
	.dwattr DW$41, DW_AT_high_pc(DW$L$_ssh1_write_bignum$5$E)
DW$42	.dwtag  DW_TAG_loop_range
	.dwattr DW$42, DW_AT_low_pc(DW$L$_ssh1_write_bignum$6$B)
	.dwattr DW$42, DW_AT_high_pc(DW$L$_ssh1_write_bignum$6$E)
	.dwendtag DW$40

	.dwattr DW$37, DW_AT_end_file("SSHBN.C")
	.dwattr DW$37, DW_AT_end_line(0x2a7)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendtag DW$37

	.sect	".text"

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("newbn"), DW_AT_symbol_name("_newbn")
	.dwattr DW$43, DW_AT_low_pc(_newbn)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$43, DW_AT_begin_line(0x40)
	.dwattr DW$43, DW_AT_begin_column(0x0f)
	.dwattr DW$43, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$43, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",65,1

;******************************************************************************
;* FUNCTION NAME: _newbn                                                      *
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
_newbn:
;** --------------------------------------------------------------------------*
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length"), DW_AT_symbol_name("_length")
	.dwattr DW$44, DW_AT_type(*DW$T$10)
	.dwattr DW$44, DW_AT_location[DW_OP_reg4]
;** 66	-----------------------    b = safemalloc((unsigned)length+1u, 2u);
;** 67	-----------------------    if ( b == NULL ) goto g3;
           CALL    .S1     _safemalloc       ; |66| 
           STW     .D2T1   A12,*SP--(24)     ; |65| 
           STDW    .D2T2   B11:B10,*+SP(16)  ; |65| 
           STDW    .D2T1   A11:A10,*+SP(8)   ; |65| 
           MVK     .L2     0x2,B4            ; |66| 

           ADDKPC  .S2     RL5,B3,0          ; |66| 
||         ADD     .L1     1,A4,A4           ; |66| 
||         ADD     .S1     1,A4,A11          ; |69| 
||         MV      .L2     B3,B11            ; |65| 
||         MV      .D2X    A4,B10            ; |65| 

RL5:       ; CALL OCCURS {_safemalloc}       ; |66| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |69| 
||         MV      .S1     A4,A10            ; |66| 
||         MV      .D1     A4,A12            ; |66| 
||         ZERO    .L2     B4                ; |69| 

           ADD     .L1     A11,A11,A6        ; |69| 
|| [!A0]   B       .S1     L7                ; |67| 

   [!A0]   CALL    .S1     _abort            ; |68| 
   [ A0]   CALL    .S1     _memset           ; |69| 
           NOP             3
           ; BRANCHCC OCCURS {L7}            ; |67| 
;** --------------------------------------------------------------------------*
;** 69	-----------------------    memset((void *)b, 0, (length+1u)*2u);
;** 70	-----------------------    *b = length;
;** 71	-----------------------    return b;
           ADDKPC  .S2     RL6,B3,1          ; |69| 
RL6:       ; CALL OCCURS {_memset}           ; |69| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A10,B4            ; |69| 
           STH     .D2T2   B10,*B4           ; |70| 

           LDDW    .D2T1   *+SP(8),A11:A10   ; |72| 
||         MV      .L2     B11,B3            ; |72| 

           RET     .S2     B3                ; |72| 
||         LDDW    .D2T2   *+SP(16),B11:B10  ; |72| 

           LDW     .D2T1   *++SP(24),A12     ; |72| 
||         MV      .L1     A12,A4            ; |68| 

           NOP             4
           ; BRANCH OCCURS {B3}              ; |72| 
;** --------------------------------------------------------------------------*
L7:    
;**	-----------------------g3:
;** 68	-----------------------    abort();
;***	; the preceding call never returns
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDKPC  .S2     RL7,B3,0          ; |68| 
RL7:       ; CALL OCCURS {_abort}            ; |68| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L8:    
DW$L$_newbn$6$B:
;**	-----------------------g4:
;** 68	-----------------------    goto g4;
	.dwpsn	"SSHBN.C",72,1
           BNOP    .S1     L8,5              ; |68| 
           ; BRANCH OCCURS {L8}              ; |68| 
DW$L$_newbn$6$E:

DW$45	.dwtag  DW_TAG_loop
	.dwattr DW$45, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L8:1:1297920382")
	.dwattr DW$45, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$45, DW_AT_begin_line(0x44)
	.dwattr DW$45, DW_AT_end_line(0x48)
DW$46	.dwtag  DW_TAG_loop_range
	.dwattr DW$46, DW_AT_low_pc(DW$L$_newbn$6$B)
	.dwattr DW$46, DW_AT_high_pc(DW$L$_newbn$6$E)
	.dwendtag DW$45

	.dwattr DW$43, DW_AT_end_file("SSHBN.C")
	.dwattr DW$43, DW_AT_end_line(0x48)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendtag DW$43

	.sect	".text"
	.global	_bignum_from_bytes

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_from_bytes"), DW_AT_symbol_name("_bignum_from_bytes")
	.dwattr DW$47, DW_AT_low_pc(_bignum_from_bytes)
	.dwattr DW$47, DW_AT_high_pc(0x00)
	.dwattr DW$47, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$47, DW_AT_begin_line(0x220)
	.dwattr DW$47, DW_AT_begin_column(0x08)
	.dwattr DW$47, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$47, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",545,1

;******************************************************************************
;* FUNCTION NAME: _bignum_from_bytes                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,DP,SP,A16,A17,A18,A19,*
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                  *
;******************************************************************************
_bignum_from_bytes:
;** --------------------------------------------------------------------------*
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$48, DW_AT_type(*DW$T$58)
	.dwattr DW$48, DW_AT_location[DW_OP_reg4]
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nbytes"), DW_AT_symbol_name("_nbytes")
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$49, DW_AT_location[DW_OP_reg20]
;** 545	-----------------------    data = data;
;** 551	-----------------------    C$7 = ((unsigned)nbytes+1u>>31)+nbytes+1>>1;
;** 551	-----------------------    result = newbn(C$7);
;** 552	-----------------------    if ( C$7 <= 0 ) goto g4;
;**  	-----------------------    K$19 = 0;
;**  	-----------------------    U$22 = &result[1];
;** 553	-----------------------    L$1 = nbytes+1>>1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1073741823, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADD     .L2     1,B4,B5           ; |551| 

           CALL    .S1     _newbn            ; |551| 
||         SHRU    .S2     B5,31,B5          ; |551| 

           ADD     .L2     B4,B5,B5          ; |551| 

           ADD     .L2     1,B5,B5           ; |551| 
||         STW     .D2T1   A11,*SP--(24)     ; |545| 
||         MV      .L1X    SP,A31            ; |545| 

           SHR     .S2     B5,1,B11          ; |551| 
||         STDW    .D2T2   B11:B10,*+SP(16)

           MV      .L1X    B4,A10            ; |545| 
||         STW     .D1T1   A10,*-A31(16)
||         STW     .D2T2   B13,*+SP(12)

           ADDKPC  .S2     RL8,B3,0          ; |551| 
||         MV      .L1X    B11,A4            ; |551| 
||         ADD     .L2     1,B4,B10          ; |553| 
||         MV      .D2     B3,B13
||         MV      .S1     A4,A11            ; |545| 

RL8:       ; CALL OCCURS {_newbn}            ; |551| 
;** --------------------------------------------------------------------------*

           CMPGT   .L2     B11,0,B0          ; |552| 
||         MV      .L1     A4,A3             ; |551| 
||         ZERO    .D1     A7
||         SHR     .S1X    B10,1,A5          ; |553| 

   [!B0]   BNOP    .S1     L12,5             ; |552| 
||         ADD     .L1     2,A4,A6
|| [ B0]   SUB     .D1     A5,1,A0

           ; BRANCHCC OCCURS {L12}           ; |552| 
;**	-----------------------g3:
;** 553	-----------------------    *U$22++ = K$19;
;** 552	-----------------------    if ( --L$1 ) goto g3;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 552
;*      Loop opening brace source line   : 553
;*      Loop closing brace source line   : 553
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L9:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L10,A0            ; |552| (P) <0,0> 
   [ A0]   BDEC    .S1     L10,A0            ; |552| (P) <1,0> 
   [ A0]   BDEC    .S1     L10,A0            ; |552| (P) <2,0> 

           MV      .L2X    A7,B4
|| [ A0]   BDEC    .S1     L10,A0            ; |552| (P) <3,0> 

	.dwpsn	"SSHBN.C",552,0

           MV      .L2X    A6,B5
|| [ A0]   BDEC    .S1     L10,A0            ; |552| (P) <4,0> 

;** --------------------------------------------------------------------------*
L10:    ; PIPED LOOP KERNEL
DW$L$_bignum_from_bytes$4$B:
	.dwpsn	"SSHBN.C",553,0

           STH     .D2T2   B4,*B5++          ; |553| <0,5> 
|| [ A0]   BDEC    .S1     L10,A0            ; |552| <5,0> 

DW$L$_bignum_from_bytes$4$E:
;** --------------------------------------------------------------------------*
L11:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L12:    
;**	-----------------------g4:
;** 555	-----------------------    if ( !(i = nbytes) ) goto g7;
;**  	-----------------------    L$2 = i;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MV      .L1     A10,A0            ; |555| 
   [!A0]   BNOP    .S1     L16,5             ; |555| 
           ; BRANCHCC OCCURS {L16}           ; |555| 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;** 556	-----------------------    C$5 = i-1;
;** 556	-----------------------    C$6 = (C$5&0xfffffffe)+result+2;
;** 556	-----------------------    *C$6 = *C$6|*data++<<(~(i<<3)&0x8);
;** 556	-----------------------    i = C$5;
;** 558	-----------------------    if ( --L$2 ) goto g6;

           MVC     .S2     CSR,B7
||         MV      .L1     A0,A8
||         MVK     .S1     0x1,A0            ; init prolog collapse predicate
||         MV      .L2X    A11,B4
||         MV      .D1     A3,A7

           AND     .L2     -2,B7,B5
||         MV      .S2X    A10,B0

           MVC     .S2     B5,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 555
;*      Loop opening brace source line   : 555
;*      Loop closing brace source line   : 558
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 8
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        2     
;*      .D units                     2        1     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             3        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          7        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     4*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh1
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L13:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L14:    ; PIPED LOOP KERNEL
DW$L$_bignum_from_bytes$9$B:
	.dwpsn	"SSHBN.C",555,0

           ADD     .L1     2,A3,A5           ; |556| <0,3> 
|| [!A0]   LDBU    .D2T1   *B4++,A6          ; |556| <0,3>  ^ 

           MV      .L1X    B5,A3             ; |556| <0,4> Define a twin register
|| [!A0]   LDHU    .D1T1   *A5,A9            ; |556| <0,4> 

   [ B0]   BDEC    .S2     L14,B0            ; |558| <0,5> 
           NOP             1
   [!A0]   MV      .L1     A6,A8             ; |556| <0,7> Define a twin register

           SHL     .S1     A6,A3,A3          ; |556| <0,8>  ^ 
||         SUB     .L1     A8,1,A6           ; |556| <1,0> 

           OR      .L1     A3,A9,A3          ; |556| <0,9>  ^ 
||         MVK     .L2     8,B6              ; |556| <1,1> 
||         SHL     .S2X    A8,3,B5           ; |556| <1,1> 
||         AND     .S1     -2,A6,A8          ; |556| <1,1> 

	.dwpsn	"SSHBN.C",558,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D1T1   A3,*A5            ; |556| <0,10>  ^ 
||         ANDN    .L2     B6,B5,B5          ; |556| <1,2> 
||         ADD     .S1     A7,A8,A3          ; |556| <1,2> 

DW$L$_bignum_from_bytes$9$E:
;** --------------------------------------------------------------------------*
L15:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1     A7,A3
||         MVC     .S2     B7,CSR            ; interrupts on

;** --------------------------------------------------------------------------*
L16:    
;**	-----------------------g7:
;** 560	-----------------------    if ( (C$4 = *result) < 2 ) goto g11;
;**  	-----------------------    V$0 = C$4;
;** 560	-----------------------    L$3 = V$0-1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65534, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
           LDHU    .D1T1   *A3,A5            ; |560| 
           NOP             4

           SUB     .S1     A5,1,A6           ; |560| 
||         MV      .L2X    A5,B5
||         CMPLTU  .L1     A5,2,A0           ; |560| 

   [ A0]   BNOP    .S1     L20,5             ; |560| 
           ; BRANCHCC OCCURS {L20}           ; |560| 
;** --------------------------------------------------------------------------*
;**	-----------------------g9:
;** 560	-----------------------    if ( result[V$0] ) goto g11;
;** 561	-----------------------    *result = C$3 = (unsigned short)(V$0-1);
;** 561	-----------------------    V$0 = C$3;
;** 561	-----------------------    if ( --L$3 ) goto g9;
;**	-----------------------g11:
;** 563	-----------------------    return result;

           MVC     .S2     CSR,B8
||         MV      .L2X    A3,B4
||         MVK     .L1     0x1,A0

           AND     .L2     -2,B8,B7
           MVC     .S2     B7,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 560
;*      Loop opening brace source line   : 561
;*      Loop closing brace source line   : 561
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     2*       0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L17:    ; PIPED LOOP PROLOG
   [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |560| (P) <0,0>  ^ 
           NOP             1

           MV      .L2X    A6,B6
||         SUB     .L1X    B5,1,A6           ; |561| (P) <0,2> 

           EXTU    .S1     A6,16,16,A5       ; |561| (P) <0,3> 
   [!A0]   MVK     .L2     0x1,B1            ; (P) <0,4> 
	.dwpsn	"SSHBN.C",560,0

   [!B1]   MV      .L2X    A5,B5             ; |561| (P) <0,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |561| (P) <0,5>  ^ 
|| [!B1]   STH     .D1T1   A6,*A3            ; |561| (P) <0,5> 

;** --------------------------------------------------------------------------*
L18:    ; PIPED LOOP KERNEL
DW$L$_bignum_from_bytes$15$B:
	.dwpsn	"SSHBN.C",561,0
           CMPEQ   .L2     B6,0,B7           ; |561| <0,6>  ^ 
           OR      .L2     B7,B1,B0          ; |561| <0,7>  ^ 
   [ B0]   ZERO    .L1     A0                ; |561| <0,8>  ^ 

   [ A0]   BNOP    .S1     L18,1             ; |561| <0,9> 
|| [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |560| <1,0>  ^ 

           SUB     .L1X    B5,1,A6           ; |561| <1,2> 
           EXTU    .S1     A6,16,16,A5       ; |561| <1,3> 
   [!A0]   MVK     .L2     0x1,B1            ; <1,4> 

   [!B1]   MV      .L2X    A5,B5             ; |561| <1,5> 
|| [!B1]   STH     .D1T1   A6,*A3            ; |561| <1,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |561| <1,5>  ^ 

DW$L$_bignum_from_bytes$15$E:
;** --------------------------------------------------------------------------*
L19:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B8,CSR            ; interrupts on
;** --------------------------------------------------------------------------*
L20:    

           LDDW    .D2T2   *+SP(16),B11:B10  ; |564| 
||         MV      .L2     B13,B3            ; |564| 
||         MV      .L1X    SP,A31            ; |564| 

           RET     .S2     B3                ; |564| 
||         LDW     .D1T1   *+A31(8),A10      ; |564| 
||         LDW     .D2T2   *+SP(12),B13      ; |564| 

           LDW     .D2T1   *++SP(24),A11     ; |564| 
	.dwpsn	"SSHBN.C",564,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |564| 

DW$50	.dwtag  DW_TAG_loop
	.dwattr DW$50, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L18:1:1297920382")
	.dwattr DW$50, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$50, DW_AT_begin_line(0x230)
	.dwattr DW$50, DW_AT_end_line(0x231)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_bignum_from_bytes$15$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_bignum_from_bytes$15$E)
	.dwendtag DW$50


DW$52	.dwtag  DW_TAG_loop
	.dwattr DW$52, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L14:1:1297920382")
	.dwattr DW$52, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$52, DW_AT_begin_line(0x22b)
	.dwattr DW$52, DW_AT_end_line(0x22e)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$_bignum_from_bytes$9$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$_bignum_from_bytes$9$E)
	.dwendtag DW$52


DW$54	.dwtag  DW_TAG_loop
	.dwattr DW$54, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L10:1:1297920382")
	.dwattr DW$54, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$54, DW_AT_begin_line(0x228)
	.dwattr DW$54, DW_AT_end_line(0x229)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$_bignum_from_bytes$4$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$_bignum_from_bytes$4$E)
	.dwendtag DW$54

	.dwattr DW$47, DW_AT_end_file("SSHBN.C")
	.dwattr DW$47, DW_AT_end_line(0x234)
	.dwattr DW$47, DW_AT_end_column(0x01)
	.dwendtag DW$47

	.sect	".text"
	.global	_ssh1_read_bignum

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("ssh1_read_bignum"), DW_AT_symbol_name("_ssh1_read_bignum")
	.dwattr DW$56, DW_AT_low_pc(_ssh1_read_bignum)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$56, DW_AT_begin_line(0x23a)
	.dwattr DW$56, DW_AT_begin_column(0x05)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",571,1

;******************************************************************************
;* FUNCTION NAME: _ssh1_read_bignum                                           *
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
_ssh1_read_bignum:
;** --------------------------------------------------------------------------*
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$57, DW_AT_type(*DW$T$58)
	.dwattr DW$57, DW_AT_location[DW_OP_reg4]
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$58, DW_AT_type(*DW$T$10)
	.dwattr DW$58, DW_AT_location[DW_OP_reg20]
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$59, DW_AT_type(*DW$T$83)
	.dwattr DW$59, DW_AT_location[DW_OP_reg6]
;** 572	-----------------------    p = data;
;** 576	-----------------------    if ( len < 2 ) goto g3;

           CMPLT   .L2     B4,2,B0           ; |576| 
||         STW     .D2T1   A11,*SP--(16)     ; |571| 
||         MV      .L1     A6,A11            ; |571| 
||         MV      .S1     A4,A5             ; |571| 

   [ B0]   B       .S1     L21               ; |576| 
|| [!B0]   LDBU    .D1T1   *A4,A3            ; |583| 

           STW     .D2T2   B13,*+SP(12)      ; |571| 
||         MV      .L2     B3,B13            ; |571| 
|| [!B0]   LDBU    .D1T1   *+A4(1),A6        ; |583| 

           NOP             2
           STW     .D2T1   A10,*+SP(8)       ; |571| 
           SHL     .S1     A3,8,A3           ; |583| 
           ; BRANCHCC OCCURS {L21}           ; |576| 
;** --------------------------------------------------------------------------*
;** 583	-----------------------    C$1 = ((int)*p<<8)+p[1];
;** 583	-----------------------    b = (C$1+7>>2>>29)+C$1+7>>3;
;** 585	-----------------------    if ( len >= b+2 ) goto g4;

           ADD     .L1     A6,A3,A3          ; |583| 
||         MV      .S1     A11,A0            ; |593| 

           ADD     .L1     7,A3,A6           ; |583| 
           SHR     .S1     A6,2,A6           ; |583| 
           SHRU    .S1     A6,29,A6          ; |583| 
           ADD     .L1     A3,A6,A3          ; |583| 
           ADD     .L1     7,A3,A3           ; |583| 
           SHR     .S1     A3,3,A6           ; |583| 
           ADD     .L1     2,A6,A3           ; |585| 
           NOP             1
           CMPLT   .L2X    B4,A3,B0          ; |585| 

   [!B0]   MV      .L2X    A6,B4             ; |591| 
|| [!B0]   ADD     .D1     2,A4,A4           ; |591| 
|| [ B0]   MVK     .L1     0x1,A0            ; |593| nullify predicate
|| [!B0]   B       .S1     L22               ; |585| 

   [!A0]   BNOP    .S1     L23,3             ; |588| 
|| [!B0]   SUB     .L1     A4,A5,A3          ; |593| 

   [!B0]   ADD     .L1     A6,A3,A10         ; |593| 
           ; BRANCHCC OCCURS {L22}           ; |585| 
;** --------------------------------------------------------------------------*
L21:    
;**	-----------------------g3:
;** 586	-----------------------    return (-1);

           LDW     .D2T2   *+SP(12),B13      ; |594| 
||         MVK     .L1     0xffffffff,A10    ; |586| 

           RET     .S2     B3                ; |594| 
||         LDW     .D2T1   *+SP(8),A10       ; |594| 
||         MV      .L1     A10,A4            ; |589| 

           LDW     .D2T1   *++SP(16),A11     ; |594| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |594| 
;** --------------------------------------------------------------------------*
L22:    
;**	-----------------------g4:
;** 588	-----------------------    if ( result == NULL ) goto g6;
   [ A0]   CALL    .S1     _bignum_from_bytes ; |591| 
           ; BRANCHCC OCCURS {L23}           ; |588| 
;** --------------------------------------------------------------------------*
;** 591	-----------------------    *result = bignum_from_bytes(p += 2, b);
;** 593	-----------------------    return p-data+b;
           ADDKPC  .S2     RL9,B3,4          ; |591| 
RL9:       ; CALL OCCURS {_bignum_from_bytes}  ; |591| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B4            ; |591| 
           STW     .D2T1   A4,*B4            ; |591| 

           LDW     .D2T2   *+SP(12),B13      ; |594| 
||         MV      .L2     B13,B3            ; |594| 

           RET     .S2     B3                ; |594| 
||         LDW     .D2T1   *+SP(8),A10       ; |594| 
||         MV      .L1     A10,A4            ; |589| 

           LDW     .D2T1   *++SP(16),A11     ; |594| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |594| 
;** --------------------------------------------------------------------------*
L23:    
;**	-----------------------g6:
;** 589	-----------------------    return b+2;

           LDW     .D2T2   *+SP(12),B13      ; |594| 
||         ADD     .L1     2,A6,A4           ; |589| 

           LDW     .D2T1   *+SP(8),A10       ; |594| 
||         RET     .S2     B3                ; |594| 

           LDW     .D2T1   *++SP(16),A11     ; |594| 
	.dwpsn	"SSHBN.C",594,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |594| 
	.dwattr DW$56, DW_AT_end_file("SSHBN.C")
	.dwattr DW$56, DW_AT_end_line(0x252)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"

DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("internal_mod"), DW_AT_symbol_name("_internal_mod")
	.dwattr DW$60, DW_AT_low_pc(_internal_mod)
	.dwattr DW$60, DW_AT_high_pc(0x00)
	.dwattr DW$60, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$60, DW_AT_begin_line(0x9e)
	.dwattr DW$60, DW_AT_begin_column(0x0d)
	.dwattr DW$60, DW_AT_frame_base[DW_OP_breg31 152]
	.dwattr DW$60, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",161,1

;******************************************************************************
;* FUNCTION NAME: _internal_mod                                               *
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
;*   Local Frame Size  : 0 Args + 104 Auto + 44 Save = 148 byte               *
;******************************************************************************
_internal_mod:
;** --------------------------------------------------------------------------*
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$61, DW_AT_type(*DW$T$39)
	.dwattr DW$61, DW_AT_location[DW_OP_reg4]
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("alen"), DW_AT_symbol_name("_alen")
	.dwattr DW$62, DW_AT_type(*DW$T$10)
	.dwattr DW$62, DW_AT_location[DW_OP_reg20]
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("m"), DW_AT_symbol_name("_m")
	.dwattr DW$63, DW_AT_type(*DW$T$39)
	.dwattr DW$63, DW_AT_location[DW_OP_reg6]
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mlen"), DW_AT_symbol_name("_mlen")
	.dwattr DW$64, DW_AT_type(*DW$T$10)
	.dwattr DW$64, DW_AT_location[DW_OP_reg22]
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("quot"), DW_AT_symbol_name("_quot")
	.dwattr DW$65, DW_AT_type(*DW$T$39)
	.dwattr DW$65, DW_AT_location[DW_OP_reg8]
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("qshift"), DW_AT_symbol_name("_qshift")
	.dwattr DW$66, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_location[DW_OP_reg24]
;** 166	-----------------------    m0 = *m;
;** 167	-----------------------    (mlen >= 2) ? (m1 = m[1]) : (m1 = 0u);
;** 168	-----------------------    if ( (K$15 = alen-mlen) < 0 ) goto g27;
;**  	-----------------------    K$27 = 0;
;**  	-----------------------    K$75 = mlen-1;
;** 176	-----------------------    L$1 = K$15+1;
;** 172	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L1X    SP,A31            ; |161| 
||         ADDK    .S2     -152,SP           ; |161| 
||         CMPLT   .L2     B6,2,B0           ; |167| 
||         ZERO    .S1     A3                ; |172| 

           ZERO    .L1     A12               ; |167| 
||         STW     .D2T2   B4,*+SP(8)        ; |161| 
||         SUB     .L2     B4,B6,B4          ; |168| 
||         STDW    .D1T1   A13:A12,*-A31(32)

           STDW    .D2T2   B11:B10,*+SP(136)
||         MV      .L2X    A6,B11            ; |161| 
||         STDW    .D1T1   A11:A10,*-A31(40)
||         SUB     .S2     B6,1,B10
||         MV      .L1     A4,A10            ; |161| 

           CMPLT   .L2     B4,0,B0           ; |168| 
|| [!B0]   LDHU    .D2T1   *+B11(2),A12      ; |167| 
||         ADD     .S2     1,B4,B4           ; |176| 

           STW     .D2T2   B4,*+SP(24)       ; |167| 
||         STW     .D1T1   A14,*-A31(24)
|| [!B0]   MV      .L1     A3,A0
|| [!B0]   MV      .S1     A3,A1

           STW     .D2T1   A3,*+SP(20)       ; |167| 
|| [ A0]   ADDAH   .D1     A10,A3,A3         ; |179| 

           STW     .D2T2   B8,*+SP(16)       ; |161| 
|| [ A0]   SUB     .L1     A3,2,A3           ; |179| 

           STW     .D2T1   A8,*+SP(12)       ; |161| 
|| [ B0]   B       .S1     L42               ; |168| 

           STW     .D2T2   B6,*+SP(4)        ; |161| 
           STW     .D2T2   B3,*+SP(132)
           STDW    .D2T2   B13:B12,*+SP(144)
           LDHU    .D2T2   *B11,B12          ; |166| 
           STW     .D2T1   A15,*+SP(152)
           ; BRANCHCC OCCURS {L42}           ; |168| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L24
;** --------------------------------------------------------------------------*
L24:    
DW$L$_internal_mod$2$B:
	.dwpsn	"SSHBN.C",172,0
;**	-----------------------g3:
;** 176	-----------------------    if ( i ) goto g5;
;** 177	-----------------------    h = 0u;
;** 178	-----------------------    goto g6;
;**	-----------------------g5:
;** 179	-----------------------    C$10 = &a[i-1];
;** 179	-----------------------    h = *C$10;
;** 180	-----------------------    *C$10 = K$27;
;**	-----------------------g6:
;** 183	-----------------------    if ( i-alen == (-1) ) goto g8;
;** 186	-----------------------    ai1 = a[i+1];
;** 186	-----------------------    goto g9;
;**	-----------------------g8:
;** 184	-----------------------    ai1 = 0u;
;**	-----------------------g9:
;** 189	-----------------------    if ( h >= (unsigned)m0 ) goto g13;

   [ A0]   STW     .D2T1   A3,*+SP(28)       ; |179| 
||         ZERO    .L1     A4

   [ A0]   LDW     .D2T1   *+SP(28),A3       ; |179| 
           LDW     .D2T1   *+SP(8),A31
           NOP             3
   [ A0]   LDHU    .D1T2   *A3,B13           ; |179| 
           SUB     .L1     A0,A31,A3         ; |183| 

           ADDAH   .D1     A10,A1,A3         ; |186| 
||         CMPEQ   .L1     A3,-1,A0          ; |183| 

   [ A0]   ZERO    .L1     A13               ; |184| 
|| [!A0]   LDHU    .D1T1   *+A3(2),A13       ; |186| 

   [ A1]   LDW     .D2T1   *+SP(28),A3
   [!A1]   ZERO    .L2     B13               ; |177| 
           CMPLTU  .L2     B13,B12,B4        ; |189| 
           STW     .D2T2   B4,*+SP(32)       ; |180| 
           MV      .L1X    B4,A0             ; |180| 

   [ A0]   SHL     .S2     B13,16,B7:B6      ; |210| 
||         MV      .S1     A0,A2             ; guard predicate rewrite
||         MV      .L1     A1,A3
|| [ A1]   STH     .D1T1   A4,*A3            ; |180| 

   [!A2]   LDW     .D2T2   *+SP(4),B4        ; |205| 
|| [!A0]   B       .S1     L25               ; |189| 
|| [ A0]   LDHU    .D1T1   *+A10[A3],A4      ; |210| 

   [ A0]   MV      .L1X    B6,A3             ; |210| 
   [ A0]   CALL    .S1     __divul           ; |210| 
           NOP             2
           OR      .L1     A4,A3,A3          ; |210| 
           ; BRANCHCC OCCURS {L25}           ; |189| 
DW$L$_internal_mod$2$E:
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$3$B:
;** 210	-----------------------    C$9 = (unsigned long)h<<16|(unsigned long)a[i];
;** 210	-----------------------    q = C$8 = (unsigned)(C$9/(unsigned long)m0);
;** 215	-----------------------    C$7 = (unsigned)(C$9%(unsigned long)m0);
;** 215	-----------------------    C$6 = (unsigned long)m1*(unsigned long)q;
;** 215	-----------------------    if ( C$6 <= ((unsigned long)C$7<<16)+(unsigned long)ai1 ) goto g14;
;** 216	-----------------------    q = C$4 = C$8-1u;
;** 219	-----------------------    C$5 = (unsigned short)(m0+C$7);
;** 219	-----------------------    if ( !(((unsigned long)(unsigned)C$5 >= (unsigned long)m0)&(C$6-m1 > ((unsigned long)(unsigned)C$5<<16)+(unsigned long)ai1)) ) goto g14;
;** 220	-----------------------    --q;
;** 220	-----------------------    goto g14;

           MV      .L2     B12,B4            ; |210| 
||         STW     .D2T1   A3,*+SP(40)       ; |210| 

           STW     .D2T2   B7,*+SP(36)       ; |210| 
||         MV      .L1X    B7,A5             ; |210| 
||         ADDKPC  .S2     RL10,B3,0         ; |210| 
||         ZERO    .L2     B5                ; |210| 
||         MV      .S1     A3,A4             ; |210| 

RL10:      ; CALL OCCURS {__divul}           ; |210| 
DW$L$_internal_mod$3$E:
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$4$B:
           STW     .D2T1   A4,*+SP(44)       ; |210| 

           CALL    .S1     __remul           ; |215| 
||         LDW     .D2T1   *+SP(36),A5       ; |215| 

           LDW     .D2T1   *+SP(40),A4       ; |210| 
||         MV      .L1     A4,A11            ; |210| 

           ADDKPC  .S2     RL11,B3,1         ; |215| 
           ZERO    .L2     B5                ; |215| 
           MV      .D2     B12,B4            ; |215| 
RL11:      ; CALL OCCURS {__remul}           ; |215| 
DW$L$_internal_mod$4$E:
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$5$B:
           MPYHLU  .M1     A11,A12,A5        ; |215| 
           MPYHLU  .M1     A12,A11,A3        ; |215| 
           MPYU    .M1     A11,A12,A31       ; |215| 

           ADD     .L1     A5,A3,A5          ; |215| 
||         SHL     .S1     A4,16,A9:A8       ; |215| 

           ADDU    .L1     A13,A9:A8,A9:A8   ; |215| 
||         SHL     .S1     A5,16,A7:A6       ; |215| 
||         MPYHU   .M1     A11,A12,A30       ; |215| 

           ADDU    .L1     A31,A7:A6,A7:A6   ; |215| 

           EXTU    .S1     A9,24,24,A5       ; |215| 
||         ADD     .L1     A30,A7,A7         ; |215| 

           EXTU    .S1     A7,24,24,A3       ; |215| 
           CMPEQ   .L1     A3,A5,A1          ; |215| 
   [ A1]   CMPGTU  .L1     A6,A8,A0          ; |215| 
   [!A1]   CMPGTU  .L1     A3,A5,A0          ; |215| 
   [ A0]   ADD     .L2X    A4,B12,B4         ; |219| 
   [ A0]   STW     .D2T2   B4,*+SP(48)       ; |219| 
   [ A0]   LDW     .D2T2   *+SP(48),B4       ; |219| 
           NOP             2
           ZERO    .S1     A1                ; |219| 
           ZERO    .L2     B0
   [ A0]   EXTU    .S2     B4,16,16,B4       ; |219| 
   [ A0]   STW     .D2T2   B4,*+SP(52)       ; |219| 
   [ A0]   LDW     .D2T2   *+SP(52),B4       ; |219| 
           NOP             4
   [ A0]   SHL     .S2     B4,16,B5:B4       ; |219| 
   [ A0]   STW     .D2T2   B5,*+SP(60)       ; |219| 
   [ A0]   STW     .D2T2   B4,*+SP(56)       ; |219| 
   [ A0]   LDW     .D2T2   *+SP(60),B5       ; |219| 
   [ A0]   LDW     .D2T2   *+SP(56),B4       ; |219| 
   [ A0]   NEG     .L1     A12,A3            ; |219| 
   [ A0]   STW     .D2T1   A3,*+SP(64)       ; |219| 
   [ A0]   LDW     .D2T1   *+SP(64),A3       ; |219| 
           NOP             1
   [ A0]   ADDU    .L2X    A13,B5:B4,B5:B4   ; |219| 
   [ A0]   STW     .D2T2   B5,*+SP(72)       ; |219| 
   [ A0]   STW     .D2T2   B4,*+SP(68)       ; |219| 

   [ A0]   ADD     .L1     A3,A7:A6,A5:A4    ; |219| 
|| [ A0]   LDW     .D2T2   *+SP(72),B4       ; |219| 

   [ A0]   STW     .D2T1   A5,*+SP(84)       ; |219| 
   [ A0]   LDW     .D2T1   *+SP(84),A3       ; |219| 
           NOP             1
   [ A0]   STW     .D2T1   A4,*+SP(80)       ; |219| 
   [ A0]   EXTU    .S2     B4,24,24,B4       ; |219| 
   [ A0]   STW     .D2T2   B4,*+SP(76)       ; |219| 

   [ A0]   LDW     .D2T1   *+SP(76),A3       ; |219| 
|| [ A0]   EXTU    .S1     A3,24,24,A15      ; |219| 

   [ A0]   LDW     .D2T2   *+SP(52),B4       ; |219| 
           NOP             4

   [ A0]   CMPEQ   .L1     A15,A3,A14        ; |219| 
|| [ A0]   CMPLTU  .L2     B4,B12,B4         ; |219| 

   [ A0]   MV      .L1     A14,A1            ; |219| 
|| [ A0]   STW     .D2T2   B4,*+SP(88)       ; |219| 

   [ A1]   LDW     .D2T1   *+SP(80),A4       ; |219| 
   [ A1]   LDW     .D2T2   *+SP(68),B4       ; |219| 
           CMPEQ   .L1     A0,0,A3           ; |219| 
           OR      .L1     A14,A3,A2         ; |219| 
   [!A2]   LDW     .D2T2   *+SP(76),B5       ; |219| 
   [ A0]   MV      .L1     A11,A3            ; |219| 
   [ A1]   CMPGTU  .L2X    A4,B4,B4          ; |219| 
   [ A1]   STW     .D2T2   B4,*+SP(92)       ; |219| 
   [ A0]   LDW     .D2T2   *+SP(88),B4       ; |219| 
   [!A2]   CMPGTU  .L2X    A15,B5,B5         ; |219| 
   [!A2]   STW     .D2T2   B5,*+SP(92)       ; |219| 
   [ A0]   LDW     .D2T2   *+SP(92),B5       ; |219| 
   [ A0]   SUB     .L1     A11,1,A3          ; |216| 
   [ A0]   XOR     .L2     1,B4,B4           ; |219| 
   [ A0]   STW     .D2T2   B4,*+SP(96)       ; |219| 
   [ A0]   LDW     .D2T2   *+SP(96),B4       ; |219| 
           NOP             2
   [ A0]   STW     .D2T1   A3,*+SP(100)      ; |219| 
   [ A0]   LDW     .D2T1   *+SP(100),A11     ; |219| 
   [ A0]   AND     .L2     B5,B4,B4          ; |219| 
   [ A0]   STW     .D2T2   B4,*+SP(104)      ; |219| 
   [ A0]   LDW     .D2T2   *+SP(104),B0      ; |216| 
           LDW     .D2T2   *+SP(4),B4        ; |205| 
           NOP             3
   [ B0]   SUB     .L1     A11,1,A11         ; |220| 
DW$L$_internal_mod$5$E:
;** --------------------------------------------------------------------------*
L25:    
DW$L$_internal_mod$6$B:
;**	-----------------------g13:
;** 205	-----------------------    q = 65535u;
;**	-----------------------g14:
;** 225	-----------------------    c = 0u;
;** 226	-----------------------    if ( mlen <= 0 ) goto g17;

           LDW     .D2T1   *+SP(32),A0
||         CMPGT   .L2     B4,0,B0           ; |226| 
||         ZERO    .S2     B8                ; |225| 

   [!B0]   BNOP    .S1     L29,3             ; |226| 
|| [ B0]   LDW     .D2T1   *+SP(20),A3

   [!A0]   MVKL    .S1     0xffff,A11        ; |205| 
   [!A0]   MVKH    .S1     0xffff,A11        ; |205| 
           ; BRANCHCC OCCURS {L29}           ; |226| 
DW$L$_internal_mod$6$E:
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$7$B:
;**  	-----------------------    U$82 = &m[K$75];
;**  	-----------------------    U$93 = &a[K$75+i];
;**  	-----------------------    L$2 = K$75+1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g16:
;** 227	-----------------------    t = (unsigned long)q*(unsigned long)*U$82--+c;
;** 229	-----------------------    C$3 = *U$93;
;** 229	-----------------------    c = (unsigned)(t>>16)+((unsigned short)t > C$3);
;** 231	-----------------------    *U$93-- = C$3-(unsigned)t;
;** 226	-----------------------    if ( --L$2 ) goto g16;

           MVC     .S2     CSR,B17
||         ADD     .L1X    1,B10,A4
||         MVK     .S1     0x1,A1            ; init prolog collapse predicate
||         ADDAH   .D2     B11,B10,B5

           AND     .L2     -2,B17,B4
||         ADD     .L1X    A3,B10,A3
||         SUB     .S1     A4,1,A0
||         MV      .S2X    A11,B9

           MVC     .S2     B4,CSR            ; interrupts off
||         ADDAH   .D1     A10,A3,A3

DW$L$_internal_mod$7$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 226
;*      Loop opening brace source line   : 226
;*      Loop closing brace source line   : 233
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        3     
;*      .S units                     1        3     
;*      .D units                     2        1     
;*      .M units                     0        4*    
;*      .X cross paths               0        2     
;*      .T address paths             1        2     
;*      Long read paths              0        2     
;*      Long write paths             0        2     
;*      Logical  ops (.LS)           0        1     (.L or .S unit)
;*      Addition ops (.LSD)          0        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        4*    
;*      Bound(.L .S .D .LS .LSD)     1        4*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Did not find schedule
;*         ii = 15 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh2
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L26:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L27:    ; PIPED LOOP KERNEL
DW$L$_internal_mod$9$B:
	.dwpsn	"SSHBN.C",226,0
           NOP             3
           MPYHLU  .M2     B7,B9,B6          ; |227| <0,5>  ^ 
           MPYHLU  .M2     B9,B7,B4          ; |227| <0,6>  ^ 
           MPYU    .M2     B7,B9,B16         ; |227| <0,7> 

   [!A1]   LDHU    .D1T1   *A3,A4            ; |229| <0,8> 
||         MPYHU   .M2     B7,B9,B4          ; |227| <0,8> 
||         ADD     .L2     B6,B4,B4          ; |227| <0,8>  ^ 

           SHL     .S2     B4,16,B7:B6       ; |227| <0,9>  ^ 
           ADDU    .L2     B16,B7:B6,B7:B6   ; |227| <0,10>  ^ 

   [ A0]   BDEC    .S1     L27,A0            ; |226| <0,11> 
||         ADD     .L2     B4,B7,B7          ; |227| <0,11>  ^ 

           ADDU    .L2     B8,B7:B6,B7:B6    ; |227| <0,12>  ^ 

           SHRU    .S2     B7:B6,16,B7:B6    ; |229| <0,13> 
||         SUB     .L2X    A4,B6,B4          ; |231| <0,13>  ^ 
||         MV      .D2     B6,B16            ; |229| <0,13> 

   [!A1]   STH     .D1T2   B4,*A3--          ; |231| <0,14>  ^ 
||         EXTU    .S2     B16,16,16,B4      ; |229| <0,14> 

           CMPGTU  .L2X    B4,A4,B4          ; |229| <0,15> 
||         LDHU    .D2T2   *B5--,B7          ; |227| <1,0>  ^ 

	.dwpsn	"SSHBN.C",233,0

   [ A1]   SUB     .L1     A1,1,A1           ; <0,16> 
|| [!A1]   ADD     .L2     B4,B6,B8          ; |229| <0,16> 

DW$L$_internal_mod$9$E:
;** --------------------------------------------------------------------------*
L28:    ; PIPED LOOP EPILOG
           MV      .L1X    B9,A11
           NOP             2
           MPYHLU  .M2     B7,B9,B6          ; |227| (E) <1,5>  ^ 
           MPYHLU  .M2     B9,B7,B4          ; |227| (E) <1,6>  ^ 
           MPYU    .M2     B7,B9,B4          ; |227| (E) <1,7> 

           MPYHU   .M2     B7,B9,B5          ; |227| (E) <1,8> 
||         ADD     .L2     B6,B4,B5          ; |227| (E) <1,8>  ^ 
||         LDHU    .D1T1   *A3,A4            ; |229| (E) <1,8> 

           SHL     .S2     B5,16,B7:B6       ; |227| (E) <1,9>  ^ 
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$11$B:
           ADDU    .L2     B4,B7:B6,B7:B6    ; |227| (E) <1,10>  ^ 
           ADD     .L2     B5,B7,B7          ; |227| (E) <1,11>  ^ 
           ADDU    .L2     B8,B7:B6,B7:B6    ; |227| (E) <1,12>  ^ 
           MV      .L2     B6,B4             ; |229| (E) <1,13> 

           EXTU    .S2     B4,16,16,B4       ; |229| (E) <1,14> 
||         SUB     .L2X    A4,B6,B5          ; |231| (E) <1,13>  ^ 

           SHRU    .S2     B7:B6,16,B7:B6    ; |229| (E) <1,13> 
||         CMPGTU  .L2X    B4,A4,B4          ; |229| (E) <1,15> 

           ADD     .L2     B4,B6,B8          ; |229| (E) <1,16> 
||         STH     .D1T2   B5,*A3--          ; |231| (E) <1,14>  ^ 
||         MVC     .S2     B17,CSR           ; interrupts on

DW$L$_internal_mod$11$E:
;** --------------------------------------------------------------------------*
L29:    
DW$L$_internal_mod$12$B:
;**	-----------------------g17:
;** 236	-----------------------    if ( c == h ) goto g22;

           CMPEQ   .L2     B8,B13,B0         ; |236| 
||         LDW     .D2T2   *+SP(4),B4

   [ B0]   BNOP    .S1     L36,4             ; |236| 
||         MV      .L2     B0,B1             ; |236| branch predicate copy
||         LDW     .D2T1   *+SP(12),A0

           CMPGT   .L2     B4,0,B0           ; |238| 
           ; BRANCHCC OCCURS {L36}           ; |236| 
DW$L$_internal_mod$12$E:
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$13$B:
;** 238	-----------------------    if ( mlen <= 0 ) goto g21;

   [ B0]   LDW     .D2T1   *+SP(20),A3
|| [!B0]   B       .S1     L36               ; |238| 
|| [!B0]   SUB     .L1     A11,1,A11         ; |244| 

   [!B0]   LDW     .D2T1   *+SP(12),A0
           NOP             3
   [ B0]   ADD     .L1X    A3,B10,A3
           ; BRANCHCC OCCURS {L36}           ; |238| 
DW$L$_internal_mod$13$E:
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$14$B:
;**  	-----------------------    U$82 = &m[K$75];
;**  	-----------------------    U$93 = &a[K$75+i];
;**  	-----------------------    L$3 = K$75+1;
;** 237	-----------------------    t = 0uL;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           ADD     .L2     1,B10,B0
||         ZERO    .L1     A5:A4             ; |237| 
||         ADDAH   .D2     B11,B10,B17
||         ADDAH   .D1     A10,A3,A3

           CMPGT   .L2     B0,1,B1
   [ B1]   BNOP    .S1     L31,5
           ; BRANCHCC OCCURS {L31} 
DW$L$_internal_mod$14$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L30
;** --------------------------------------------------------------------------*
L30:    
DW$L$_internal_mod$15$B:
	.dwpsn	"SSHBN.C",238,0
;**	-----------------------g20:
;** 239	-----------------------    t += *U$93+(unsigned long)*U$82--;
;** 241	-----------------------    *U$93-- = t;
;** 242	-----------------------    t >>= 16;
;** 238	-----------------------    if ( --L$3 ) goto g20;

           LDHU    .D2T2   *B17--,B4         ; |239| 
||         LDHU    .D1T1   *A3,A6            ; |239| 
||         SUB     .L2     B0,1,B0           ; |238| 

           NOP             2
   [ B0]   B       .S1     L30               ; |238| 
   [!B0]   B       .S1     L35
           ADDU    .L1X    B4,A6,A7:A6       ; |239| 
           ADDU    .L1     A6,A5:A4,A5:A4    ; |239| 

           STH     .D1T1   A4,*A3--          ; |241| 
||         ADD     .L1     A7,A5,A5          ; |239| 

	.dwpsn	"SSHBN.C",243,0
           SHRU    .S1     A5:A4,16,A5:A4    ; |242| 
           ; BRANCHCC OCCURS {L30}           ; |238| 
DW$L$_internal_mod$15$E:
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$16$B:

           LDW     .D2T1   *+SP(12),A0
||         SUB     .L1     A11,1,A11         ; |244| 

           ; BRANCH OCCURS {L35} 
DW$L$_internal_mod$16$E:
;** --------------------------------------------------------------------------*
L31:    
DW$L$_internal_mod$17$B:

           MVC     .S2     CSR,B18
||         MV      .L2X    A3,B16
||         LDHU    .D2T2   *B17--,B5         ; |239| (P) <0,2>  ^ 
||         SUB     .L1X    B0,2,A0

           AND     .L2     -2,B18,B4
||         MV      .S2X    A5,B9

           MVC     .S2     B4,CSR            ; interrupts off
||         LDHU    .D2T2   *B16,B4           ; |239| (P) <0,0> 
||         MV      .L2X    A4,B8

DW$L$_internal_mod$17$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 238
;*      Loop opening brace source line   : 238
;*      Loop closing brace source line   : 243
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 8
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        2     
;*      .S units                     1        1     
;*      .D units                     0        3*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        3*    
;*      Long read paths              0        1     
;*      Long write paths             0        2     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2     
;*      Bound(.L .S .D .LS .LSD)     1        3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Schedule found with 2 iterations in parallel
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
;*      For further improvement on this loop, try option -mh2
;*
;*      Minimum safe trip count     : 2
;*----------------------------------------------------------------------------*
L32:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L33:    ; PIPED LOOP KERNEL
DW$L$_internal_mod$19$B:
	.dwpsn	"SSHBN.C",238,0
           NOP             2
   [ A0]   BDEC    .S1     L33,A0            ; |238| <0,5> 
           NOP             1
           ADDU    .L2     B5,B4,B5:B4       ; |239| <0,7>  ^ 

           ADDU    .L2     B4,B9:B8,B7:B6    ; |239| <0,8>  ^ 
||         LDHU    .D2T2   *-B16(2),B4       ; |239| <1,0> 

           STH     .D2T2   B6,*B16--         ; |241| <0,9>  ^ 
||         ADD     .L2     B5,B7,B7          ; |239| <0,9> 

	.dwpsn	"SSHBN.C",243,0

           SHRU    .S2     B7:B6,16,B9:B8    ; |242| <0,10> 
||         LDHU    .D2T2   *B17--,B5         ; |239| <1,2>  ^ 

DW$L$_internal_mod$19$E:
;** --------------------------------------------------------------------------*
L34:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$21$B:
           NOP             2
           SUB     .L1     A11,1,A11         ; |244| 
           MVC     .S2     B18,CSR           ; interrupts on
           ADDU    .L2     B5,B4,B5:B4       ; |239| (E) <1,7>  ^ 
           ADDU    .L2     B4,B9:B8,B7:B6    ; |239| (E) <1,8>  ^ 
           STH     .D2T2   B6,*B16--         ; |241| (E) <1,9>  ^ 
           LDW     .D2T1   *+SP(12),A0
DW$L$_internal_mod$21$E:
;** --------------------------------------------------------------------------*
L35:    
DW$L$_internal_mod$22$B:
           NOP             4
;**	-----------------------g21:
;** 244	-----------------------    --q;
DW$L$_internal_mod$22$E:
;** --------------------------------------------------------------------------*
L36:    
DW$L$_internal_mod$23$B:
;**	-----------------------g22:
;** 246	-----------------------    if ( quot == NULL ) goto g26;

   [!A0]   B       .S1     L41               ; |246| 
||         LDW     .D2T1   *+SP(8),A3

           LDW     .D2T1   *+SP(4),A4
   [ A0]   LDW     .D2T1   *+SP(20),A31      ; |138| 
   [!A0]   LDW     .D2T1   *+SP(20),A3
   [ A0]   LDW     .D2T1   *+SP(16),A30      ; |138| 
   [!A0]   LDW     .D2T2   *+SP(24),B4
           ; BRANCHCC OCCURS {L41}           ; |246| 
DW$L$_internal_mod$23$E:
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$24$B:
;** 138	-----------------------    C$2 = (alen-mlen-i<<4)+qshift;  // [13]
;** 138	-----------------------    C$1 = (C$2>>3>>28)+C$2;  // [13]
;** 138	-----------------------    if ( (addend = (unsigned long)q<<C$2-(C$1&0xfffffff0)) == 0uL ) goto g26;  // [13]
           SUB     .L1     A3,A4,A4          ; |138| 
           SUB     .L1     A4,A31,A3         ; |138| 
           SHL     .S1     A3,4,A3           ; |138| 
           ADD     .L1     A30,A3,A3         ; |138| 
           SHR     .S1     A3,3,A4           ; |138| 
           SHRU    .S1     A4,28,A4          ; |138| 
           ADD     .L1     A3,A4,A6          ; |138| 
           AND     .L1     -16,A6,A4         ; |138| 
           SUB     .L1     A3,A4,A3          ; |138| 

           SHL     .S1     A11,A3,A5:A4      ; |138| 
||         LDW     .D2T1   *+SP(12),A3

           CMPEQ   .L1     A5:A4,0,A0        ; |138| 

   [ A0]   BNOP    .S2     L40,1             ; |138| 
|| [!A0]   SHR     .S1     A6,3,A6

   [!A0]   AND     .L1     -2,A6,A6
           ADD     .L1     A3,A6,A3
           ADD     .L1     2,A3,A6
   [!A0]   LDHU    .D1T1   *A6,A3            ; |141| (P) <0,0>  ^ 
           ; BRANCHCC OCCURS {L40}           ; |138| 
DW$L$_internal_mod$24$E:
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$25$B:
;**  	-----------------------    U$136 = (C$1>>3&0xfffffffe)+quot+2;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g25:
;** 141	-----------------------    addend += *U$136;  // [13]
;** 142	-----------------------    *U$136++ = addend;  // [13]
;** 143	-----------------------    if ( addend >>= 16 ) goto g25;  // [13]
           MVC     .S2     CSR,B4
           MVK     .L2     0x1,B1
           AND     .L2     -2,B4,B5
           MVC     .S2     B5,CSR            ; interrupts off
           ADDU    .L1     A3,A5:A4,A5:A4    ; |141| (P) <0,5>  ^ 

           STH     .D1T1   A4,*A6++          ; |142| (P) <0,6> 
||         SHRU    .S1     A5:A4,16,A5:A4    ; |143| (P) <0,6>  ^ 

           CMPEQ   .L1     A5:A4,0,A0        ; |143| (P) <0,7>  ^ 
   [ A0]   ZERO    .L2     B1                ; |143| (P) <0,8>  ^ 
DW$L$_internal_mod$25$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 140
;*      Loop opening brace source line   : 140
;*      Loop closing brace source line   : 145
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2*       0     
;*      .S units                     1        1     
;*      .D units                     2*       0     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       0     
;*      Long read paths              2*       0     
;*      Long write paths             1        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2*       1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh28
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L37:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L38:    ; PIPED LOOP KERNEL
DW$L$_internal_mod$27$B:
	.dwpsn	"SSHBN.C",140,0
   [ B1]   LDHU    .D1T1   *A6,A3            ; |141| <1,0>  ^ 
           NOP             1
           MV      .L2     B1,B0             ; |143| <0,11> Split a long life
   [ B1]   BNOP    .S2     L38,1             ; |143| <0,12> 
           ADDU    .L1     A3,A5:A4,A5:A4    ; |141| <1,5>  ^ 

   [ B0]   STH     .D1T1   A4,*A6++          ; |142| <1,6> 
||         SHRU    .S1     A5:A4,16,A5:A4    ; |143| <1,6>  ^ 

           CMPEQ   .L1     A5:A4,0,A0        ; |143| <1,7>  ^ 
	.dwpsn	"SSHBN.C",145,0
   [ A0]   ZERO    .L2     B1                ; |143| <1,8>  ^ 
DW$L$_internal_mod$27$E:
;** --------------------------------------------------------------------------*
L39:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_internal_mod$29$B:
           MVC     .S2     B4,CSR            ; interrupts on
DW$L$_internal_mod$29$E:
;** --------------------------------------------------------------------------*
L40:    
DW$L$_internal_mod$30$B:
           LDW     .D2T1   *+SP(20),A3
           NOP             1
           LDW     .D2T2   *+SP(24),B4
DW$L$_internal_mod$30$E:
;** --------------------------------------------------------------------------*
L41:    
DW$L$_internal_mod$31$B:
;**	-----------------------g26:
;** 172	-----------------------    ++i;
;** 172	-----------------------    if ( --L$1 ) goto g3;
;**	-----------------------g27:
;**  	-----------------------    return;
           NOP             2
           ADD     .L1     1,A3,A3           ; |172| 

           MV      .L1     A3,A1
||         STW     .D2T1   A3,*+SP(20)       ; |172| 

           SUB     .L2     B4,1,B4           ; |172| 
||         SUB     .L1X    B4,1,A0           ; |172| 

   [ A0]   BNOP    .S1     L24,2             ; |172| 
||         STW     .D2T2   B4,*+SP(24)       ; |172| 

           MV      .L1     A3,A0
||         MV      .L2X    A0,B0             ; guard predicate rewrite

   [ A0]   ADDAH   .D1     A10,A3,A3         ; |179| 
	.dwpsn	"SSHBN.C",248,0
   [ A0]   SUB     .L1     A3,2,A3           ; |179| 
           ; BRANCHCC OCCURS {L24}           ; |172| 
DW$L$_internal_mod$31$E:
;** --------------------------------------------------------------------------*
L42:    
           LDW     .D2T2   *+SP(132),B3      ; |249| 
           LDDW    .D2T1   *+SP(112),A11:A10 ; |249| 
           LDDW    .D2T1   *+SP(120),A13:A12 ; |249| 
           LDW     .D2T1   *+SP(128),A14     ; |249| 
           LDDW    .D2T2   *+SP(136),B11:B10 ; |249| 

           RET     .S2     B3                ; |249| 
||         LDW     .D2T1   *+SP(152),A15     ; |249| 

           LDDW    .D2T2   *+SP(144),B13:B12 ; |249| 
           NOP             3
	.dwpsn	"SSHBN.C",249,1
           ADDK    .S2     152,SP            ; |249| 
           ; BRANCH OCCURS {B3}              ; |249| 

DW$67	.dwtag  DW_TAG_loop
	.dwattr DW$67, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L24:1:1297920382")
	.dwattr DW$67, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$67, DW_AT_begin_line(0xac)
	.dwattr DW$67, DW_AT_end_line(0xf8)
DW$68	.dwtag  DW_TAG_loop_range
	.dwattr DW$68, DW_AT_low_pc(DW$L$_internal_mod$2$B)
	.dwattr DW$68, DW_AT_high_pc(DW$L$_internal_mod$2$E)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$_internal_mod$25$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$_internal_mod$25$E)
DW$70	.dwtag  DW_TAG_loop_range
	.dwattr DW$70, DW_AT_low_pc(DW$L$_internal_mod$24$B)
	.dwattr DW$70, DW_AT_high_pc(DW$L$_internal_mod$24$E)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_internal_mod$29$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_internal_mod$29$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_internal_mod$17$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_internal_mod$17$E)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$_internal_mod$14$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$_internal_mod$14$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_internal_mod$16$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_internal_mod$16$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_internal_mod$21$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_internal_mod$21$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$_internal_mod$7$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$_internal_mod$7$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_internal_mod$3$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_internal_mod$3$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_internal_mod$4$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_internal_mod$4$E)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_internal_mod$5$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_internal_mod$5$E)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$_internal_mod$6$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$_internal_mod$6$E)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$_internal_mod$11$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$_internal_mod$11$E)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$_internal_mod$12$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$_internal_mod$12$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$_internal_mod$13$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$_internal_mod$13$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_internal_mod$22$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_internal_mod$22$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_internal_mod$23$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_internal_mod$23$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_internal_mod$30$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_internal_mod$30$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_internal_mod$31$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_internal_mod$31$E)

DW$88	.dwtag  DW_TAG_loop
	.dwattr DW$88, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L38:2:1297920382")
	.dwattr DW$88, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$88, DW_AT_begin_line(0x8c)
	.dwattr DW$88, DW_AT_end_line(0x91)
DW$89	.dwtag  DW_TAG_loop_range
	.dwattr DW$89, DW_AT_low_pc(DW$L$_internal_mod$27$B)
	.dwattr DW$89, DW_AT_high_pc(DW$L$_internal_mod$27$E)
	.dwendtag DW$88


DW$90	.dwtag  DW_TAG_loop
	.dwattr DW$90, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L33:2:1297920382")
	.dwattr DW$90, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$90, DW_AT_begin_line(0xee)
	.dwattr DW$90, DW_AT_end_line(0xf3)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$_internal_mod$19$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$_internal_mod$19$E)
	.dwendtag DW$90


DW$92	.dwtag  DW_TAG_loop
	.dwattr DW$92, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L30:2:1297920382")
	.dwattr DW$92, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$92, DW_AT_begin_line(0xee)
	.dwattr DW$92, DW_AT_end_line(0xf3)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_internal_mod$15$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_internal_mod$15$E)
	.dwendtag DW$92


DW$94	.dwtag  DW_TAG_loop
	.dwattr DW$94, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L27:2:1297920382")
	.dwattr DW$94, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$94, DW_AT_begin_line(0xe2)
	.dwattr DW$94, DW_AT_end_line(0xe9)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_internal_mod$9$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_internal_mod$9$E)
	.dwendtag DW$94

	.dwendtag DW$67

	.dwattr DW$60, DW_AT_end_file("SSHBN.C")
	.dwattr DW$60, DW_AT_end_line(0xf9)
	.dwattr DW$60, DW_AT_end_column(0x01)
	.dwendtag DW$60

	.sect	".text"

DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("bigdivmod"), DW_AT_symbol_name("_bigdivmod")
	.dwattr DW$96, DW_AT_low_pc(_bigdivmod)
	.dwattr DW$96, DW_AT_high_pc(0x00)
	.dwattr DW$96, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$96, DW_AT_begin_line(0x1d4)
	.dwattr DW$96, DW_AT_begin_column(0x0d)
	.dwattr DW$96, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$96, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",469,1

;******************************************************************************
;* FUNCTION NAME: _bigdivmod                                                  *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 44 Save = 44 byte                  *
;******************************************************************************
_bigdivmod:
;** --------------------------------------------------------------------------*
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$97, DW_AT_type(*DW$T$40)
	.dwattr DW$97, DW_AT_location[DW_OP_reg4]
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mod"), DW_AT_symbol_name("_mod")
	.dwattr DW$98, DW_AT_type(*DW$T$40)
	.dwattr DW$98, DW_AT_location[DW_OP_reg20]
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$99, DW_AT_type(*DW$T$40)
	.dwattr DW$99, DW_AT_location[DW_OP_reg6]
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("quotient"), DW_AT_symbol_name("_quotient")
	.dwattr DW$100, DW_AT_type(*DW$T$40)
	.dwattr DW$100, DW_AT_location[DW_OP_reg22]
;** 476	-----------------------    mlen = *mod;
;** 477	-----------------------    m = safemalloc((unsigned)mlen, 2u);
;** 478	-----------------------    if ( !mlen ) goto g4;
;**  	-----------------------    U$19 = m;
;**  	-----------------------    L$1 = (int)mlen;
;**  	-----------------------    U$15 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T1   A15,*SP--(48)     ; |469| 
||         MV      .L1X    SP,A31            ; |469| 

           MV      .L2     B4,B12            ; |469| 
||         STDW    .D2T2   B13:B12,*+SP(40)

           LDHU    .D2T2   *B12,B5           ; |476| 
           STDW    .D1T1   A11:A10,*-A31(40)
           CALL    .S1     _safemalloc       ; |477| 
           STDW    .D2T2   B11:B10,*+SP(32)
           MV      .L2X    A4,B11            ; |469| 
           MV      .L1X    B5,A10            ; |477| 

           MV      .L1X    B5,A4             ; |477| 
||         STDW    .D1T1   A13:A12,*-A31(32)
||         MV      .L2X    A6,B10            ; |469| 
||         STW     .D2T2   B3,*+SP(28)

           ADDKPC  .S2     RL12,B3,0         ; |477| 
||         MV      .L1X    B5,A11            ; |476| 
||         STW     .D1T1   A14,*-A31(24)
||         MVK     .L2     0x2,B4            ; |477| 
||         MV      .D2     B6,B13            ; |469| 

RL12:      ; CALL OCCURS {_safemalloc}       ; |477| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A0
||         ZERO    .S1     A3
||         MV      .D1     A4,A12            ; |477| 

   [!A0]   BNOP    .S1     L46,3             ; |478| 
|| [!A0]   LDHU    .D1T2   *A12,B6
|| [!A0]   ZERO    .L2     B4                ; |482| 
|| [!A0]   MVKL    .S2     0x8000,B7

   [!A0]   MVKH    .S2     0x8000,B7
   [!A0]   SHL     .S2     B6,B4,B5          ; |484| (P) <0,0>  ^ 
           ; BRANCHCC OCCURS {L46}           ; |478| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 479	-----------------------    *U$19++ = *(*mod*2-U$15+mod);
;** 478	-----------------------    U$15 += 2;
;** 478	-----------------------    if ( --L$1 ) goto g3;

           MVC     .S2     CSR,B8
||         MV      .L2X    A4,B5
||         SUB     .L1     A10,1,A0
||         MV      .D2     B12,B4

           AND     .L2     -2,B8,B7
||         MV      .S2X    A3,B6

           MVC     .S2     B7,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 478
;*      Loop opening brace source line   : 479
;*      Loop closing brace source line   : 479
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     0        3*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        3*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L43:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L44:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$5$B:
	.dwpsn	"SSHBN.C",479,0
           LDHU    .D2T2   *B4,B7            ; |479| <0,0>  ^ 
           NOP             4
           ADD     .L2     B7,B7,B7          ; |479| <0,5>  ^ 
           SUB     .L2     B7,B6,B7          ; |479| <0,6>  ^ 
           ADD     .L2     B4,B7,B7          ; |479| <0,7>  ^ 

   [ A0]   BDEC    .S1     L44,A0            ; |478| <0,8> 
||         LDHU    .D2T2   *B7,B7            ; |479| <0,8>  ^ 

           NOP             4

           ADD     .L2     2,B6,B6           ; |478| <0,13> 
||         STH     .D2T2   B7,*B5++          ; |479| <0,13>  ^ 

DW$L$_bigdivmod$5$E:
;** --------------------------------------------------------------------------*
L45:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           LDHU    .D1T2   *A12,B6
           MVKL    .S2     0x8000,B7
           MVC     .S2     B8,CSR            ; interrupts on
           MVKH    .S2     0x8000,B7
           ZERO    .L2     B4                ; |482| 
           SHL     .S2     B6,B4,B5          ; |484| (P) <0,0>  ^ 
;** --------------------------------------------------------------------------*
L46:    
;**	-----------------------g4:
;**  	-----------------------    U$28 = *m;
;**  	-----------------------    K$31 = 32768u;
;** 482	-----------------------    L$2 = 15;
;** 482	-----------------------    mshift = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 15, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g5:
;** 484	-----------------------    if ( (unsigned)U$28<<mshift&K$31 ) goto g7;
;** 482	-----------------------    ++mshift;
;** 482	-----------------------    if ( --L$2 ) goto g5;

           AND     .L2     B7,B5,B1          ; |484| (P) <0,1>  ^ 
||         MVK     .D2     0xf,B5            ; |482| 
||         MVC     .S2     CSR,B16
||         MVK     .L1     0x1,A0

   [!B1]   ADD     .L2     1,B4,B4           ; |482| (P) <0,2>  ^ 
|| [!B1]   MVK     .S2     14,B5             ; |482| 

           CMPEQ   .L2     B5,0,B9           ; |482| (P) <0,3>  ^ 
||         SHL     .S2     B6,B4,B8          ; |484| (P) <1,0>  ^ 

           OR      .L2     B9,B1,B0          ; |482| (P) <0,4>  ^ 
||         AND     .S2     B7,B8,B1          ; |484| (P) <1,1>  ^ 
||         AND     .D2     -2,B16,B8
||         MV      .L1X    B4,A3             ; |482| (P) <0,4> 

           MVC     .S2     B8,CSR            ; interrupts off
|| [!B1]   ADD     .L2     1,B4,B4           ; |482| (P) <1,2>  ^ 
|| [ B0]   ZERO    .L1     A0                ; |482| (P) <0,5> 
|| [!B1]   SUB     .D2     B5,1,B5           ; |482| (P) <1,2>  ^ 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 482
;*      Loop opening brace source line   : 483
;*      Loop closing brace source line   : 484
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 15                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        1     
;*      .D units                     0        0     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             0        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     1        2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 3
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L47:    ; PIPED LOOP PROLOG

   [ A0]   B       .S1     L48               ; |482| (P) <0,6> 
||         SHL     .S2     B6,B4,B9          ; |484| (P) <2,0>  ^ 
||         CMPEQ   .L2     B5,0,B8           ; |482| (P) <1,3>  ^ 

   [ A0]   MV      .L1X    B4,A3             ; |482| (P) <1,4> 
||         AND     .L2     B7,B9,B1          ; |484| (P) <2,1>  ^ 
||         OR      .S2     B8,B1,B0          ; |482| (P) <1,4>  ^ 

	.dwpsn	"SSHBN.C",482,0

   [ B0]   ZERO    .L1     A0                ; |482| (P) <1,5> 
|| [!B1]   SUB     .L2     B5,1,B5           ; |482| (P) <2,2>  ^ 
|| [!B1]   ADD     .S2     1,B4,B4           ; |482| (P) <2,2>  ^ 

;** --------------------------------------------------------------------------*
L48:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$10$B:
	.dwpsn	"SSHBN.C",483,0

   [ A0]   B       .S1     L48               ; |482| <1,6> 
||         CMPEQ   .L2     B5,0,B8           ; |482| <2,3>  ^ 
||         SHL     .S2     B6,B4,B9          ; |484| <3,0>  ^ 

   [ A0]   MV      .L1X    B4,A3             ; |482| <2,4> 
||         OR      .L2     B8,B1,B0          ; |482| <2,4>  ^ 
||         AND     .S2     B7,B9,B1          ; |484| <3,1>  ^ 

	.dwpsn	"SSHBN.C",484,0

   [ B0]   ZERO    .L1     A0                ; |482| <2,5> 
|| [!B1]   ADD     .L2     1,B4,B4           ; |482| <3,2>  ^ 
|| [!B1]   SUB     .S2     B5,1,B5           ; |482| <3,2>  ^ 

DW$L$_bigdivmod$10$E:
;** --------------------------------------------------------------------------*
L49:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 485	-----------------------    if ( !mshift ) goto g12;

           CMPLTU  .L2X    A11,2,B1          ; |486| 
||         MV      .L1     A3,A0
||         MV      .S1     A3,A13
||         MVC     .S2     B16,CSR           ; interrupts on

   [ A0]   MVK     .S1     16,A3
|| [ A0]   MV      .L1     A12,A6
|| [!A0]   LDHU    .D2T1   *B11,A10          ; |491| 
|| [!A0]   ZERO    .L2     B1                ; nullify predicate
|| [!A0]   B       .S2     L56               ; |485| 

   [ B1]   B       .S1     L55               ; |486| 
|| [ A0]   SUB     .L1     A3,A13,A8
|| [!A0]   MV      .L2X    A11,B4

   [!A0]   CALL    .S1     _safemalloc       ; |497| 
|| [ A0]   SUB     .L2X    A11,1,B0          ; |487| 

           NOP             2
   [!A0]   CMPGT   .L2X    A10,B4,B0         ; |493| 
           ; BRANCHCC OCCURS {L56}           ; |485| 
;** --------------------------------------------------------------------------*
;** 486	-----------------------    if ( mlen < 2 ) goto g11;
;**  	-----------------------    U$47 = m;
;**  	-----------------------    U$53 = 16-mshift;
;** 487	-----------------------    L$3 = mlen-1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65534, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

   [!B1]   CMPGT   .L2     B0,4,B1
||         MV      .L1     A11,A3

           ; BRANCHCC OCCURS {L55}           ; |486| 
;** --------------------------------------------------------------------------*
   [ B1]   BNOP    .S1     L51,5
           ; BRANCHCC OCCURS {L51} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L50
;** --------------------------------------------------------------------------*
L50:    
DW$L$_bigdivmod$15$B:
	.dwpsn	"SSHBN.C",487,0
;**	-----------------------g10:
;** 487	-----------------------    A$14 = *U$47<<mshift|U$47[1]>>U$53;
;** 487	-----------------------    *U$47++ = A$14;
;** 486	-----------------------    if ( --L$3 ) goto g10;

           LDHU    .D1T1   *A6,A3            ; |487| 
||         SUB     .L2     B0,1,B0           ; |486| 

           LDHU    .D1T1   *+A6(2),A4        ; |487| 
           NOP             1
   [ B0]   B       .S1     L50               ; |486| 
   [!B0]   B       .S1     L55
           SHL     .S1     A3,A13,A3         ; |487| 
           SHRU    .S1     A4,A8,A4          ; |487| 
           OR      .L1     A4,A3,A3          ; |487| 
           STH     .D1T1   A3,*A6++          ; |487| 
           ; BRANCHCC OCCURS {L50}           ; |486| 
DW$L$_bigdivmod$15$E:
;** --------------------------------------------------------------------------*
           MV      .L1     A11,A3
           ; BRANCH OCCURS {L55} 
;** --------------------------------------------------------------------------*
L51:    

           MVC     .S2     CSR,B6
||         SUB     .L2     B0,3,B0

           AND     .L2     -2,B6,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 486
;*      Loop opening brace source line   : 487
;*      Loop closing brace source line   : 487
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh10
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L52:    ; PIPED LOOP PROLOG
   [ B0]   BDEC    .S2     L53,B0            ; |486| (P) <0,5> 

           MV      .L2X    A6,B5
||         LDHU    .D1T1   *A6++,A3          ; |487| (P) <0,0> 

           LDHU    .D1T1   *A6,A3            ; |487| (P) <0,1> 
|| [ B0]   BDEC    .S2     L53,B0            ; |486| (P) <1,5> 

	.dwpsn	"SSHBN.C",486,0

           MVK     .L1     0x3,A0            ; init prolog collapse predicate
||         MV      .S1     A13,A9
||         LDHU    .D1T1   *A6++,A3          ; |487| (P) <1,0> 

;** --------------------------------------------------------------------------*
L53:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$19$B:
	.dwpsn	"SSHBN.C",487,0

           MV      .L2X    A5,B4             ; |487| <0,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |487| <1,7> 
||         SHL     .S1     A3,A9,A7          ; |487| <2,5> 
|| [ B0]   BDEC    .S2     L53,B0            ; |486| <2,5> 
||         LDHU    .D1T1   *A6,A3            ; |487| <4,1> 

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D2T2   B4,*B5++          ; |487| <0,10> 
||         SHRU    .S1     A3,A8,A4          ; |487| <2,6> 
||         LDHU    .D1T1   *A6++,A3          ; |487| <5,0> 

DW$L$_bigdivmod$19$E:
;** --------------------------------------------------------------------------*
L54:    ; PIPED LOOP EPILOG

           MV      .L2X    A5,B4             ; |487| (E) <1,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |487| (E) <2,7> 
||         LDHU    .D1T1   *A6,A3            ; |487| (E) <5,1> 
||         SHL     .S1     A3,A9,A7          ; |487| (E) <3,5> 

           MV      .L1     A9,A13
||         STH     .D2T2   B4,*B5++          ; |487| (E) <1,10> 
||         SHRU    .S1     A3,A8,A4          ; |487| (E) <3,6> 

           MV      .L2X    A5,B4             ; |487| (E) <2,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |487| (E) <3,7> 
||         SHL     .S1     A3,A9,A7          ; |487| (E) <4,5> 

           SHRU    .S1     A3,A8,A4          ; |487| (E) <4,6> 
||         STH     .D2T2   B4,*B5++          ; |487| (E) <2,10> 

           MVC     .S2     B6,CSR            ; interrupts on
||         MV      .L2X    A5,B4             ; |487| (E) <3,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |487| (E) <4,7> 
||         SHL     .S1     A3,A9,A7          ; |487| (E) <5,5> 

;** --------------------------------------------------------------------------*
           SHRU    .S1     A3,A8,A4          ; |487| (E) <5,6> 

           OR      .L1     A4,A7,A5          ; |487| (E) <5,7> 
||         MV      .L2X    A5,B4             ; |487| (E) <4,9> Define a twin register
||         STH     .D2T2   B4,*B5++          ; |487| (E) <3,10> 

           STH     .D2T2   B4,*B5++          ; |487| (E) <4,10> 
           MV      .L2X    A5,B4             ; |487| (E) <5,9> Define a twin register

           STH     .D2T2   B4,*B5++          ; |487| (E) <5,10> 
||         MV      .L1     A11,A3

;** --------------------------------------------------------------------------*
L55:    
;**	-----------------------g11:
;** 488	-----------------------    C$11 = &m[mlen-1];
;** 488	-----------------------    *C$11 = *C$11<<mshift;

           ADDAH   .D1     A12,A3,A3         ; |488| 
||         MV      .L2X    A11,B4

           SUB     .L1     A3,2,A3           ; |488| 
           LDHU    .D1T1   *A3,A4            ; |488| 
           NOP             4
           SHL     .S1     A4,A13,A4         ; |488| 
           STH     .D1T1   A4,*A3            ; |488| 
           LDHU    .D2T1   *B11,A10          ; |491| 
           NOP             1
           CALL    .S1     _safemalloc       ; |497| 
           NOP             2
           CMPGT   .L2X    A10,B4,B0         ; |493| 
;** --------------------------------------------------------------------------*
L56:    
;**	-----------------------g12:
;** 491	-----------------------    plen = *p;
;** 493	-----------------------    if ( plen > mlen ) goto g14;
;** 494	-----------------------    plen = mlen+1;
;**	-----------------------g14:
;** 497	-----------------------    n = safemalloc((unsigned)plen, 2u);
;** 498	-----------------------    if ( plen <= 0 ) goto g17;
;**  	-----------------------    K$77 = 0;
;**  	-----------------------    U$78 = n;
;** 499	-----------------------    L$4 = plen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
   [!B0]   ADD     .L1     1,A11,A10         ; |494| 

           MV      .L1     A10,A4            ; |497| 
||         MVK     .L2     0x2,B4            ; |497| 
||         ADDKPC  .S2     RL13,B3,0         ; |497| 

RL13:      ; CALL OCCURS {_safemalloc}       ; |497| 
;** --------------------------------------------------------------------------*

           CMPGT   .L1     A10,0,A0          ; |498| 
||         ZERO    .S1     A3
||         MV      .D1     A4,A14            ; |497| 

   [!A0]   BNOP    .S1     L60,5             ; |498| 
|| [ A0]   SUB     .L1     A10,1,A0

           ; BRANCHCC OCCURS {L60}           ; |498| 
;**	-----------------------g16:
;** 499	-----------------------    *U$78++ = K$77;
;** 498	-----------------------    if ( --L$4 ) goto g16;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 498
;*      Loop opening brace source line   : 499
;*      Loop closing brace source line   : 499
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L57:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L58,A0            ; |498| (P) <0,0> 
   [ A0]   BDEC    .S1     L58,A0            ; |498| (P) <1,0> 
   [ A0]   BDEC    .S1     L58,A0            ; |498| (P) <2,0> 

           MV      .L2X    A4,B5
|| [ A0]   BDEC    .S1     L58,A0            ; |498| (P) <3,0> 

	.dwpsn	"SSHBN.C",498,0

           MV      .L2X    A3,B4
|| [ A0]   BDEC    .S1     L58,A0            ; |498| (P) <4,0> 

;** --------------------------------------------------------------------------*
L58:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$26$B:
	.dwpsn	"SSHBN.C",499,0

           STH     .D2T2   B4,*B5++          ; |499| <0,5> 
|| [ A0]   BDEC    .S1     L58,A0            ; |498| <5,0> 

DW$L$_bigdivmod$26$E:
;** --------------------------------------------------------------------------*
L59:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L60:    
;**	-----------------------g17:
;** 500	-----------------------    if ( !*p ) goto g20;
;**  	-----------------------    U$89 = &n[plen-1];
;** 500	-----------------------    j = 1;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           LDHU    .D2T2   *B11,B0           ; |500| 
||         ADDAH   .D1     A14,A10,A3
||         MVK     .L2     0x1,B6            ; |500| 
||         MV      .S2     B11,B5

           NOP             3
           SUB     .L1     A3,2,A6

   [!B0]   BNOP    .S1     L64,5             ; |500| 
|| [ B0]   LDHU    .D2T1   *+B5[B6],A5       ; |501| (P) <0,0>  ^ 

           ; BRANCHCC OCCURS {L64}           ; |500| 
;** --------------------------------------------------------------------------*
;**	-----------------------g19:
;** 501	-----------------------    *U$89-- = p[j];
;** 500	-----------------------    if ( *p >= (++j) ) goto g19;

           MVC     .S2     CSR,B8
||         MV      .L1X    B11,A3
||         STH     .D1T1   A5,*A6--          ; |501| (P) <0,5>  ^ 

           AND     .L2     -2,B8,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 500
;*      Loop opening brace source line   : 501
;*      Loop closing brace source line   : 501
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        0     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
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
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Did not find schedule
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Did not find schedule
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Did not find schedule
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Did not find schedule
;*         ii = 12 Schedule found with 2 iterations in parallel
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
L61:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L62:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$31$B:
	.dwpsn	"SSHBN.C",501,0
           LDHU    .D1T2   *A3,B7            ; |500| <0,6> 
           ADD     .L2     1,B6,B6           ; |500| <0,7> 
           MV      .L2     B6,B4             ; |500| <0,8> Split a long life
           NOP             2
           CMPLT   .L2     B7,B4,B0          ; |500| <0,11> 

   [!B0]   BNOP    .S1     L62,4             ; |500| <0,12> 
|| [!B0]   LDHU    .D2T1   *+B5[B6],A5       ; |501| <1,0>  ^ 

   [!B0]   STH     .D1T1   A5,*A6--          ; |501| <1,5>  ^ 
DW$L$_bigdivmod$31$E:
;** --------------------------------------------------------------------------*
L63:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B8,CSR            ; interrupts on
;** --------------------------------------------------------------------------*
L64:    
;**	-----------------------g20:
;** 504	-----------------------    internal_mod(n, plen, m, (int)mlen, quotient, mshift);
;** 507	-----------------------    if ( !mshift ) goto g27;
           CALL    .S1     _internal_mod     ; |504| 
           MV      .L2X    A11,B6            ; |504| 
           MV      .L2X    A10,B4            ; |504| 
           ADDKPC  .S2     RL14,B3,0         ; |504| 
           MV      .L2X    A13,B8            ; |504| 

           MV      .L1X    B13,A8            ; |504| 
||         MV      .S1     A12,A6            ; |504| 

RL14:      ; CALL OCCURS {_internal_mod}     ; |504| 
;** --------------------------------------------------------------------------*

           MV      .L1     A13,A0            ; |508| 
||         SUB     .S1     A10,A11,A15       ; |508| 
||         ADD     .D1     A10,A10,A16

   [!A0]   B       .S2     L78               ; |507| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [ A0]   MVK     .S1     16,A4
|| [ A0]   ADDAH   .D1     A14,A15,A3

           MV      .L1     A0,A2             ; |508| branch predicate copy
|| [ A0]   MV      .S1     A11,A0
|| [ A1]   MV      .L2X    A11,B0
|| [ A1]   SUB     .D1     A4,A13,A8

   [!A1]   MVK     .L1     0x1,A0            ; nullify predicate
|| [ A1]   SUB     .S1     A3,2,A6

   [!A0]   B       .S1     L71               ; |508| 
|| [!A2]   MV      .L1X    B10,A0
|| [ A2]   MVK     .D1     0x1,A0            ; nullify predicate

   [!A0]   BNOP    .S1     L82,1             ; |517| 
           ; BRANCHCC OCCURS {L78}           ; |507| 
;** --------------------------------------------------------------------------*
;** 508	-----------------------    U$93 = plen-mlen;
;**  	-----------------------    U$87 = plen*2;
;** 508	-----------------------    if ( !mlen ) goto g24;
;**  	-----------------------    U$53 = 16-mshift;
;**  	-----------------------    U$96 = &n[U$93-1];
;** 509	-----------------------    L$5 = (int)mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CMPGT   .L2     B0,4,B1
           ADD     .L1     A16,A14,A3        ; |510| 
           SUB     .L1     A3,2,A3           ; |510| 
           ; BRANCHCC OCCURS {L71}           ; |508| 
;** --------------------------------------------------------------------------*
   [ B1]   BNOP    .S1     L66,5
           ; BRANCHCC OCCURS {L66} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L65
;** --------------------------------------------------------------------------*
L65:    
DW$L$_bigdivmod$38$B:
	.dwpsn	"SSHBN.C",509,0
;**	-----------------------g23:
;** 509	-----------------------    A$13 = *U$96<<mshift|U$96[1]>>U$53;
;** 509	-----------------------    *U$96++ = A$13;
;** 508	-----------------------    if ( --L$5 ) goto g23;

           LDHU    .D1T1   *A6,A3            ; |509| 
||         SUB     .L2     B0,1,B0           ; |508| 

           LDHU    .D1T1   *+A6(2),A4        ; |509| 
           NOP             1
   [ B0]   B       .S1     L65               ; |508| 
   [!B0]   B       .S1     L70
           SHL     .S1     A3,A13,A3         ; |509| 
           SHRU    .S1     A4,A8,A4          ; |509| 
           OR      .L1     A4,A3,A3          ; |509| 
           STH     .D1T1   A3,*A6++          ; |509| 
           ; BRANCHCC OCCURS {L65}           ; |508| 
DW$L$_bigdivmod$38$E:
;** --------------------------------------------------------------------------*
           ADD     .L1     A16,A14,A3        ; |510| 
           ; BRANCH OCCURS {L70} 
;** --------------------------------------------------------------------------*
L66:    

           MVC     .S2     CSR,B6
||         SUB     .L2     B0,3,B0

           AND     .L2     -2,B6,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 508
;*      Loop opening brace source line   : 509
;*      Loop closing brace source line   : 509
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh10
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L67:    ; PIPED LOOP PROLOG
   [ B0]   BDEC    .S2     L68,B0            ; |508| (P) <0,5> 

           MV      .L2X    A6,B5
||         LDHU    .D1T1   *A6++,A3          ; |509| (P) <0,0> 

           LDHU    .D1T1   *A6,A3            ; |509| (P) <0,1> 
|| [ B0]   BDEC    .S2     L68,B0            ; |508| (P) <1,5> 

	.dwpsn	"SSHBN.C",508,0

           MVK     .L1     0x3,A0            ; init prolog collapse predicate
||         MV      .S1     A13,A9
||         LDHU    .D1T1   *A6++,A3          ; |509| (P) <1,0> 

;** --------------------------------------------------------------------------*
L68:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$42$B:
	.dwpsn	"SSHBN.C",509,0

           MV      .L2X    A5,B4             ; |509| <0,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |509| <1,7> 
||         SHL     .S1     A3,A9,A7          ; |509| <2,5> 
|| [ B0]   BDEC    .S2     L68,B0            ; |508| <2,5> 
||         LDHU    .D1T1   *A6,A3            ; |509| <4,1> 

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D2T2   B4,*B5++          ; |509| <0,10> 
||         SHRU    .S1     A3,A8,A4          ; |509| <2,6> 
||         LDHU    .D1T1   *A6++,A3          ; |509| <5,0> 

DW$L$_bigdivmod$42$E:
;** --------------------------------------------------------------------------*
L69:    ; PIPED LOOP EPILOG

           MV      .L2X    A5,B4             ; |509| (E) <1,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |509| (E) <2,7> 
||         LDHU    .D1T1   *A6,A3            ; |509| (E) <5,1> 
||         SHL     .S1     A3,A9,A7          ; |509| (E) <3,5> 

           MV      .L1     A9,A13
||         STH     .D2T2   B4,*B5++          ; |509| (E) <1,10> 
||         SHRU    .S1     A3,A8,A4          ; |509| (E) <3,6> 

           MV      .L2X    A5,B4             ; |509| (E) <2,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |509| (E) <3,7> 
||         SHL     .S1     A3,A9,A7          ; |509| (E) <4,5> 

           SHRU    .S1     A3,A8,A4          ; |509| (E) <4,6> 
||         STH     .D2T2   B4,*B5++          ; |509| (E) <2,10> 

           MVC     .S2     B6,CSR            ; interrupts on
||         MV      .L2X    A5,B4             ; |509| (E) <3,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |509| (E) <4,7> 
||         SHL     .S1     A3,A9,A7          ; |509| (E) <5,5> 

;** --------------------------------------------------------------------------*
           SHRU    .S1     A3,A8,A4          ; |509| (E) <5,6> 

           OR      .L1     A4,A7,A5          ; |509| (E) <5,7> 
||         MV      .L2X    A5,B4             ; |509| (E) <4,9> Define a twin register
||         STH     .D2T2   B4,*B5++          ; |509| (E) <3,10> 

           STH     .D2T2   B4,*B5++          ; |509| (E) <4,10> 
           MV      .L2X    A5,B4             ; |509| (E) <5,9> Define a twin register

           STH     .D2T2   B4,*B5++          ; |509| (E) <5,10> 
||         ADD     .L1     A16,A14,A3        ; |510| 

;** --------------------------------------------------------------------------*
L70:    
           SUB     .L1     A3,2,A3           ; |510| 
;** --------------------------------------------------------------------------*
L71:    
;**	-----------------------g24:
;** 510	-----------------------    C$10 = n+U$87-2;
;** 510	-----------------------    *C$10 = *C$10<<mshift;
;** 511	-----------------------    internal_mod(n, plen, m, (int)mlen, quotient, 0);
;** 512	-----------------------    C$9 = plen-1;
;** 512	-----------------------    if ( C$9 < U$93 ) goto g27;
;**  	-----------------------    U$53 = 16-mshift;
;**  	-----------------------    U$96 = &n[C$9];
;** 513	-----------------------    L$6 = (int)mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDHU    .D1T1   *A3,A4            ; |510| 
           CALL    .S1     _internal_mod     ; |511| 
           MV      .L2X    A11,B6            ; |511| 
           ADDKPC  .S2     RL15,B3,0         ; |511| 
           MV      .L1     A12,A6            ; |511| 

           MV      .L1     A14,A4            ; |511| 
||         SHL     .S1     A4,A13,A5         ; |510| 

           STH     .D1T1   A5,*A3            ; |510| 
||         MV      .S1X    B13,A8            ; |511| 
||         ZERO    .L2     B8                ; |511| 
||         MV      .D2X    A10,B4            ; |511| 

RL15:      ; CALL OCCURS {_internal_mod}     ; |511| 
;** --------------------------------------------------------------------------*

           SUB     .L1     A10,1,A3          ; |512| 
||         MV      .L2X    A11,B0
||         MVK     .S1     16,A5

           CMPLT   .L1     A3,A15,A0         ; |512| 
||         CMPGT   .L2     B0,4,B1
||         ADDAH   .D1     A14,A3,A6
||         SUB     .S1     A5,A13,A8

   [ A0]   B       .S1     L77               ; |512| 
|| [ A0]   ZERO    .L2     B1                ; nullify predicate
|| [ A0]   MV      .L1X    B10,A0

   [ B1]   BNOP    .S1     L73,4
           ; BRANCHCC OCCURS {L77}           ; |512| 
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCHCC OCCURS {L73} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L72
;** --------------------------------------------------------------------------*
L72:    
DW$L$_bigdivmod$49$B:
	.dwpsn	"SSHBN.C",513,0
;**	-----------------------g26:
;** 513	-----------------------    A$12 = *U$96>>mshift|U$96[-1]<<U$53;
;** 513	-----------------------    *U$96-- = A$12;
;** 512	-----------------------    if ( --L$6 ) goto g26;

           LDHU    .D1T1   *A6,A3            ; |513| 
||         SUB     .L2     B0,1,B0           ; |512| 

           LDHU    .D1T1   *-A6(2),A4        ; |513| 
           NOP             1
   [ B0]   B       .S1     L72               ; |512| 
   [!B0]   B       .S1     L77
           SHRU    .S1     A3,A13,A3         ; |513| 
           SHL     .S1     A4,A8,A4          ; |513| 
           OR      .L1     A4,A3,A3          ; |513| 
           STH     .D1T1   A3,*A6--          ; |513| 
           ; BRANCHCC OCCURS {L72}           ; |512| 
DW$L$_bigdivmod$49$E:
;** --------------------------------------------------------------------------*
           MV      .L1X    B10,A0
           ; BRANCH OCCURS {L77} 
;** --------------------------------------------------------------------------*
L73:    

           MVC     .S2     CSR,B6
||         SUB     .L2     B0,3,B0

           AND     .L2     -2,B6,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 512
;*      Loop opening brace source line   : 513
;*      Loop closing brace source line   : 513
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh10
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L74:    ; PIPED LOOP PROLOG
   [ B0]   BDEC    .S2     L75,B0            ; |512| (P) <0,5> 

           MV      .L2X    A6,B5
||         LDHU    .D1T1   *A6--,A3          ; |513| (P) <0,0> 

           LDHU    .D1T1   *A6,A3            ; |513| (P) <0,1> 
|| [ B0]   BDEC    .S2     L75,B0            ; |512| (P) <1,5> 

	.dwpsn	"SSHBN.C",512,0

           MVK     .L1     0x3,A0            ; init prolog collapse predicate
||         MV      .S1     A13,A9
||         LDHU    .D1T1   *A6--,A3          ; |513| (P) <1,0> 

;** --------------------------------------------------------------------------*
L75:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$53$B:
	.dwpsn	"SSHBN.C",513,0

           MV      .L2X    A5,B4             ; |513| <0,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |513| <1,7> 
||         SHRU    .S1     A3,A9,A7          ; |513| <2,5> 
|| [ B0]   BDEC    .S2     L75,B0            ; |512| <2,5> 
||         LDHU    .D1T1   *A6,A3            ; |513| <4,1> 

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D2T2   B4,*B5--          ; |513| <0,10> 
||         SHL     .S1     A3,A8,A4          ; |513| <2,6> 
||         LDHU    .D1T1   *A6--,A3          ; |513| <5,0> 

DW$L$_bigdivmod$53$E:
;** --------------------------------------------------------------------------*
L76:    ; PIPED LOOP EPILOG

           MV      .L2X    A5,B4             ; |513| (E) <1,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |513| (E) <2,7> 
||         LDHU    .D1T1   *A6,A3            ; |513| (E) <5,1> 
||         SHRU    .S1     A3,A9,A7          ; |513| (E) <3,5> 

           STH     .D2T2   B4,*B5--          ; |513| (E) <1,10> 
||         SHL     .S1     A3,A8,A4          ; |513| (E) <3,6> 

           MV      .L2X    A5,B4             ; |513| (E) <2,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |513| (E) <3,7> 
||         SHRU    .S1     A3,A9,A7          ; |513| (E) <4,5> 

           SHL     .S1     A3,A8,A4          ; |513| (E) <4,6> 
||         STH     .D2T2   B4,*B5--          ; |513| (E) <2,10> 

           MVC     .S2     B6,CSR            ; interrupts on
||         MV      .L2X    A5,B4             ; |513| (E) <3,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |513| (E) <4,7> 
||         SHRU    .S1     A3,A9,A7          ; |513| (E) <5,5> 

;** --------------------------------------------------------------------------*
           SHL     .S1     A3,A8,A4          ; |513| (E) <5,6> 

           OR      .L1     A4,A7,A5          ; |513| (E) <5,7> 
||         MV      .L2X    A5,B4             ; |513| (E) <4,9> Define a twin register
||         STH     .D2T2   B4,*B5--          ; |513| (E) <3,10> 

           STH     .D2T2   B4,*B5--          ; |513| (E) <4,10> 
           MV      .L2X    A5,B4             ; |513| (E) <5,9> Define a twin register

           STH     .D2T2   B4,*B5--          ; |513| (E) <5,10> 
||         MV      .L1X    B10,A0

;** --------------------------------------------------------------------------*
L77:    
   [!A0]   BNOP    .S1     L82,1             ; |517| 
;** --------------------------------------------------------------------------*
L78:    
;**	-----------------------g27:
;** 517	-----------------------    if ( result == NULL ) goto g31;
   [ A0]   MV      .L1X    B10,A3
   [ A0]   LDHU    .D1T1   *A3,A0            ; |518| 
           NOP             2
           ; BRANCHCC OCCURS {L82}           ; |517| 
;** --------------------------------------------------------------------------*
;** 518	-----------------------    if ( !*result ) goto g31;
;**  	-----------------------    U$46 = 2;
;** 518	-----------------------    i = 1;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVK     .L2     0x1,B4            ; |518| 
           MVK     .L1     0x2,A4

   [!A0]   B       .S1     L82               ; |518| 
|| [ A0]   ADD     .L1     A10,A10,A3
|| [ A0]   MV      .L2     B10,B6
|| [ A0]   SUB     .S2X    A10,B4,B31

   [ A0]   LDHU    .D2T2   *B6,B30           ; |518| (P) <0,1> 
|| [ A0]   SUB     .L1     A3,A4,A3          ; (P) <0,1> 
|| [ A0]   CMPLT   .L2     B31,0,B0          ; (P) <0,1> 

   [ A0]   ADD     .L1     A14,A3,A3
           NOP             3
           ; BRANCHCC OCCURS {L82}           ; |518| 
;**	-----------------------g30:
;**  	-----------------------    (plen-i < 0) ? (S$1 = 0u) : (S$1 = *(plen*2-U$46+n));
;**  	-----------------------    result[i] = S$1;
;** 518	-----------------------    U$46 += 2;
;** 518	-----------------------    if ( *result >= (++i) ) goto g30;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 518
;*      Loop opening brace source line   : 518
;*      Loop closing brace source line   : 521
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        2     
;*      .S units                     1        0     
;*      .D units                     1        2     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             0        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        1     (.L or .S unit)
;*      Addition ops (.LSD)          6        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2     
;*      Bound(.L .S .D .LS .LSD)     3        4*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 3 iterations in parallel
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
L79:    ; PIPED LOOP PROLOG

           ZERO    .L2     B7
|| [!B0]   LDHU    .D1T2   *A3,B7            ; (P) <0,3>  ^ 

           ADD     .L2     1,B4,B5           ; |518| 
||         MVC     .S2     CSR,B9

           MV      .L1     A10,A6
||         MV      .S1     A14,A5
||         SUB     .L2X    A10,B5,B8
||         AND     .S2     -2,B9,B16

           ADD     .L1     A10,A10,A3
||         MVK     .S1     0x1,A1
||         ADD     .D1     2,A4,A4           ; |518| (P) <0,6> 
||         MVC     .S2     B16,CSR           ; interrupts off
||         CMPLT   .L2     B30,B5,B0         ; |518| (P) <0,6> 

	.dwpsn	"SSHBN.C",518,0

           MVK     .L1     0x1,A0
|| [ B0]   ZERO    .S1     A1                ; |518| (P) <0,7> 
||         SUB     .D1     A3,A4,A3          ; (P) <1,1> 
||         LDHU    .D2T2   *B6,B8            ; |518| (P) <1,1> 
||         CMPLT   .L2     B8,0,B0           ; (P) <1,1> 

;** --------------------------------------------------------------------------*
L80:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$60$B:

           MV      .L1     A1,A0             ; |518| <0,8> Split a long life
|| [ A0]   STH     .D2T2   B7,*+B6[B4]       ; <0,8>  ^ 
|| [ A1]   B       .S1     L80               ; |518| <0,8> 
||         ADD     .D1     A5,A3,A3          ; <1,2> 
|| [ B0]   ZERO    .L2     B7                ; <1,2>  ^ 
|| [!A1]   MVK     .S2     0x1,B0            ; <1,2>  ^ 

   [!B0]   LDHU    .D1T2   *A3,B7            ; <1,3>  ^ 
           NOP             1

           MV      .L2     B5,B4             ; |518| <0,11> Split a long life
||         ADD     .S2     1,B5,B5           ; |518| <1,5> 

           ADD     .L1     2,A4,A4           ; |518| <1,6> 
||         CMPLT   .L2     B8,B5,B0          ; |518| <1,6> 
||         ADD     .S1     A6,A6,A3          ; <2,0> 
||         SUB     .S2X    A6,B5,B8          ; <2,0> 

	.dwpsn	"SSHBN.C",521,0

   [ B0]   ZERO    .S1     A1                ; |518| <1,7> 
||         SUB     .L1     A3,A4,A3          ; <2,1> 
||         CMPLT   .L2     B8,0,B0           ; <2,1> 
||         LDHU    .D2T2   *B6,B8            ; |518| <2,1> 

DW$L$_bigdivmod$60$E:
;** --------------------------------------------------------------------------*
L81:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1     A6,A10
||         MVC     .S2     B9,CSR            ; interrupts on
||         MV      .S1     A5,A14

;** --------------------------------------------------------------------------*
L82:    
;**	-----------------------g31:
;** 525	-----------------------    if ( !mlen ) goto g34;
;**  	-----------------------    U$47 = m;
;**  	-----------------------    K$77 = 0;
;** 526	-----------------------    L$7 = (int)mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L1     A11,A0
||         MV      .L2X    A12,B5
||         ZERO    .S1     A3

   [!A0]   BNOP    .S1     L86,5             ; |525| 
|| [ A0]   SUB     .L1     A11,1,A0

           ; BRANCHCC OCCURS {L86}           ; |525| 
;**	-----------------------g33:
;** 526	-----------------------    *U$47++ = K$77;
;** 525	-----------------------    if ( --L$7 ) goto g33;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 525
;*      Loop opening brace source line   : 526
;*      Loop closing brace source line   : 526
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L83:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L84,A0            ; |525| (P) <0,0> 
   [ A0]   BDEC    .S1     L84,A0            ; |525| (P) <1,0> 
   [ A0]   BDEC    .S1     L84,A0            ; |525| (P) <2,0> 
   [ A0]   BDEC    .S1     L84,A0            ; |525| (P) <3,0> 
	.dwpsn	"SSHBN.C",525,0

           MV      .L2X    A3,B4
|| [ A0]   BDEC    .S1     L84,A0            ; |525| (P) <4,0> 

;** --------------------------------------------------------------------------*
L84:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$65$B:
	.dwpsn	"SSHBN.C",526,0

           STH     .D2T2   B4,*B5++          ; |526| <0,5> 
|| [ A0]   BDEC    .S1     L84,A0            ; |525| <5,0> 

DW$L$_bigdivmod$65$E:
;** --------------------------------------------------------------------------*
L85:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L86:    
;**	-----------------------g34:
;** 527	-----------------------    safefree((void *)m);
;** 528	-----------------------    if ( plen <= 0 ) goto g37;
;**  	-----------------------    K$77 = 0;
;**  	-----------------------    U$96 = n;
;** 529	-----------------------    L$8 = plen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _safefree         ; |527| 
           ADDKPC  .S2     RL16,B3,3         ; |527| 
           MV      .L1     A12,A4            ; |527| 
RL16:      ; CALL OCCURS {_safefree}         ; |527| 
;** --------------------------------------------------------------------------*

           CMPGT   .L2X    A10,0,B0          ; |528| 
||         ZERO    .S2     B5

   [!B0]   BNOP    .S1     L90,5             ; |528| 
||         MV      .L2X    A14,B4
|| [ B0]   SUB     .L1     A10,1,A0

           ; BRANCHCC OCCURS {L90}           ; |528| 
;**	-----------------------g36:
;** 529	-----------------------    *U$96++ = K$77;
;** 528	-----------------------    if ( --L$8 ) goto g36;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 528
;*      Loop opening brace source line   : 529
;*      Loop closing brace source line   : 529
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L87:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L88,A0            ; |528| (P) <0,0> 
   [ A0]   BDEC    .S1     L88,A0            ; |528| (P) <1,0> 
   [ A0]   BDEC    .S1     L88,A0            ; |528| (P) <2,0> 
   [ A0]   BDEC    .S1     L88,A0            ; |528| (P) <3,0> 
	.dwpsn	"SSHBN.C",528,0
   [ A0]   BDEC    .S1     L88,A0            ; |528| (P) <4,0> 
;** --------------------------------------------------------------------------*
L88:    ; PIPED LOOP KERNEL
DW$L$_bigdivmod$70$B:
	.dwpsn	"SSHBN.C",529,0

           STH     .D2T2   B5,*B4++          ; |529| <0,5> 
|| [ A0]   BDEC    .S1     L88,A0            ; |528| <5,0> 

DW$L$_bigdivmod$70$E:
;** --------------------------------------------------------------------------*
L89:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L90:    
;**	-----------------------g37:
;** 530	-----------------------    safefree((void *)n);
;** 530	-----------------------    return;
           CALL    .S1     _safefree         ; |530| 
           ADDKPC  .S2     RL17,B3,3         ; |530| 
           MV      .L1     A14,A4            ; |530| 
RL17:      ; CALL OCCURS {_safefree}         ; |530| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(28),B3       ; |531| 
           MV      .L1X    SP,A31            ; |531| 
           LDDW    .D1T1   *+A31(16),A13:A12 ; |531| 
           LDW     .D1T1   *+A31(24),A14     ; |531| 
           LDDW    .D2T2   *+SP(40),B13:B12  ; |531| 

           RET     .S2     B3                ; |531| 
||         LDDW    .D1T1   *+A31(8),A11:A10  ; |531| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |531| 

           LDW     .D2T1   *++SP(48),A15     ; |531| 
	.dwpsn	"SSHBN.C",531,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |531| 

DW$101	.dwtag  DW_TAG_loop
	.dwattr DW$101, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L88:1:1297920382")
	.dwattr DW$101, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$101, DW_AT_begin_line(0x210)
	.dwattr DW$101, DW_AT_end_line(0x211)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_bigdivmod$70$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_bigdivmod$70$E)
	.dwendtag DW$101


DW$103	.dwtag  DW_TAG_loop
	.dwattr DW$103, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L84:1:1297920382")
	.dwattr DW$103, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$103, DW_AT_begin_line(0x20d)
	.dwattr DW$103, DW_AT_end_line(0x20e)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_bigdivmod$65$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_bigdivmod$65$E)
	.dwendtag DW$103


DW$105	.dwtag  DW_TAG_loop
	.dwattr DW$105, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L80:1:1297920382")
	.dwattr DW$105, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$105, DW_AT_begin_line(0x206)
	.dwattr DW$105, DW_AT_end_line(0x209)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_bigdivmod$60$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_bigdivmod$60$E)
	.dwendtag DW$105


DW$107	.dwtag  DW_TAG_loop
	.dwattr DW$107, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L75:1:1297920382")
	.dwattr DW$107, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$107, DW_AT_begin_line(0x200)
	.dwattr DW$107, DW_AT_end_line(0x201)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_bigdivmod$53$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_bigdivmod$53$E)
	.dwendtag DW$107


DW$109	.dwtag  DW_TAG_loop
	.dwattr DW$109, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L72:1:1297920382")
	.dwattr DW$109, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$109, DW_AT_begin_line(0x200)
	.dwattr DW$109, DW_AT_end_line(0x201)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_bigdivmod$49$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_bigdivmod$49$E)
	.dwendtag DW$109


DW$111	.dwtag  DW_TAG_loop
	.dwattr DW$111, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L68:1:1297920382")
	.dwattr DW$111, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$111, DW_AT_begin_line(0x1fc)
	.dwattr DW$111, DW_AT_end_line(0x1fd)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_bigdivmod$42$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_bigdivmod$42$E)
	.dwendtag DW$111


DW$113	.dwtag  DW_TAG_loop
	.dwattr DW$113, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L65:1:1297920382")
	.dwattr DW$113, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$113, DW_AT_begin_line(0x1fc)
	.dwattr DW$113, DW_AT_end_line(0x1fd)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_bigdivmod$38$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_bigdivmod$38$E)
	.dwendtag DW$113


DW$115	.dwtag  DW_TAG_loop
	.dwattr DW$115, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L62:1:1297920382")
	.dwattr DW$115, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$115, DW_AT_begin_line(0x1f4)
	.dwattr DW$115, DW_AT_end_line(0x1f5)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_bigdivmod$31$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_bigdivmod$31$E)
	.dwendtag DW$115


DW$117	.dwtag  DW_TAG_loop
	.dwattr DW$117, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L58:1:1297920382")
	.dwattr DW$117, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$117, DW_AT_begin_line(0x1f2)
	.dwattr DW$117, DW_AT_end_line(0x1f3)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_bigdivmod$26$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_bigdivmod$26$E)
	.dwendtag DW$117


DW$119	.dwtag  DW_TAG_loop
	.dwattr DW$119, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L53:1:1297920382")
	.dwattr DW$119, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$119, DW_AT_begin_line(0x1e6)
	.dwattr DW$119, DW_AT_end_line(0x1e7)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_bigdivmod$19$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_bigdivmod$19$E)
	.dwendtag DW$119


DW$121	.dwtag  DW_TAG_loop
	.dwattr DW$121, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L50:1:1297920382")
	.dwattr DW$121, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$121, DW_AT_begin_line(0x1e6)
	.dwattr DW$121, DW_AT_end_line(0x1e7)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_bigdivmod$15$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_bigdivmod$15$E)
	.dwendtag DW$121


DW$123	.dwtag  DW_TAG_loop
	.dwattr DW$123, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L48:1:1297920382")
	.dwattr DW$123, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$123, DW_AT_begin_line(0x1e2)
	.dwattr DW$123, DW_AT_end_line(0x1e4)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_bigdivmod$10$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_bigdivmod$10$E)
	.dwendtag DW$123


DW$125	.dwtag  DW_TAG_loop
	.dwattr DW$125, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L44:1:1297920382")
	.dwattr DW$125, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$125, DW_AT_begin_line(0x1de)
	.dwattr DW$125, DW_AT_end_line(0x1df)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_bigdivmod$5$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_bigdivmod$5$E)
	.dwendtag DW$125

	.dwattr DW$96, DW_AT_end_file("SSHBN.C")
	.dwattr DW$96, DW_AT_end_line(0x213)
	.dwattr DW$96, DW_AT_end_column(0x01)
	.dwendtag DW$96

	.sect	".text"
	.global	_bigmod

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("bigmod"), DW_AT_symbol_name("_bigmod")
	.dwattr DW$127, DW_AT_low_pc(_bigmod)
	.dwattr DW$127, DW_AT_high_pc(0x00)
	.dwattr DW$127, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$127, DW_AT_begin_line(0x386)
	.dwattr DW$127, DW_AT_begin_column(0x08)
	.dwattr DW$127, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$127, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",903,1

;******************************************************************************
;* FUNCTION NAME: _bigmod                                                     *
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
_bigmod:
;** --------------------------------------------------------------------------*
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$128, DW_AT_type(*DW$T$40)
	.dwattr DW$128, DW_AT_location[DW_OP_reg4]
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$129, DW_AT_type(*DW$T$40)
	.dwattr DW$129, DW_AT_location[DW_OP_reg20]
;** 904	-----------------------    r = newbn((int)*b);
;** 905	-----------------------    bigdivmod(a, b, r, NULL);
;** 906	-----------------------    return r;
           STW     .D2T2   B10,*SP--(16)     ; |903| 

           CALL    .S1     _newbn            ; |904| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |903| 
||         MV      .L2     B4,B10            ; |903| 

           LDHU    .D2T1   *B10,A4           ; |904| 
||         MV      .L1     A4,A10            ; |903| 

           STW     .D2T2   B13,*+SP(4)       ; |903| 
           MV      .L2     B3,B13            ; |903| 
           ADDKPC  .S2     RL18,B3,1         ; |904| 
RL18:      ; CALL OCCURS {_newbn}            ; |904| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bigdivmod        ; |905| 
           ADDKPC  .S2     RL19,B3,0         ; |905| 
           ZERO    .L2     B6                ; |905| 
           MV      .D2     B10,B4            ; |905| 
           MV      .S1     A4,A11            ; |904| 

           MV      .D1     A4,A6             ; |904| 
||         MV      .L1     A10,A4            ; |905| 

RL19:      ; CALL OCCURS {_bigdivmod}        ; |905| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |907| 
||         MV      .L2     B13,B3            ; |907| 
||         MV      .L1     A11,A4            ; |906| 

           RET     .S2     B3                ; |907| 
||         LDW     .D2T2   *+SP(4),B13       ; |907| 

           LDW     .D2T2   *++SP(16),B10     ; |907| 
	.dwpsn	"SSHBN.C",907,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |907| 
	.dwattr DW$127, DW_AT_end_file("SSHBN.C")
	.dwattr DW$127, DW_AT_end_line(0x38b)
	.dwattr DW$127, DW_AT_end_column(0x01)
	.dwendtag DW$127

	.sect	".text"

DW$130	.dwtag  DW_TAG_subprogram, DW_AT_name("internal_mul"), DW_AT_symbol_name("_internal_mul")
	.dwattr DW$130, DW_AT_low_pc(_internal_mul)
	.dwattr DW$130, DW_AT_high_pc(0x00)
	.dwattr DW$130, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$130, DW_AT_begin_line(0x6e)
	.dwattr DW$130, DW_AT_begin_column(0x0d)
	.dwattr DW$130, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$130, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",112,1

;******************************************************************************
;* FUNCTION NAME: _internal_mul                                               *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B4,B5,B6,B7,B8,B9,A16, *
;*                           A17,A18,B16,B17,B18,B19,B30,B31                  *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B3,B4,B5,B6,B7,B8,B9,  *
;*                           DP,SP,A16,A17,A18,B16,B17,B18,B19,B30,B31        *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_internal_mul:
;** --------------------------------------------------------------------------*
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$131, DW_AT_type(*DW$T$39)
	.dwattr DW$131, DW_AT_location[DW_OP_reg4]
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$132, DW_AT_type(*DW$T$39)
	.dwattr DW$132, DW_AT_location[DW_OP_reg20]
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$133, DW_AT_type(*DW$T$39)
	.dwattr DW$133, DW_AT_location[DW_OP_reg6]
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$134, DW_AT_type(*DW$T$10)
	.dwattr DW$134, DW_AT_location[DW_OP_reg22]
;** 116	-----------------------    if ( (K$5 = len*2) <= 0 ) goto g4;
;** 117	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    K$11 = 0u;
;**  	-----------------------    U$13 = c;
;** 117	-----------------------    L$1 = K$5>>1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1073741823, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)

           ADD     .L2     B6,B6,B5          ; |116| 
||         ZERO    .L1     A3
||         MV      .S2X    A6,B18            ; |112| 
||         MV      .S1X    B4,A18            ; |112| 

           CMPGT   .L2     B5,0,B0           ; |116| 
||         SHR     .S2     B5,1,B4           ; |117| 

   [!B0]   BNOP    .S1     L94,4             ; |116| 
   [ B0]   SUB     .L1X    B4,1,A0
           ; BRANCHCC OCCURS {L94}           ; |116| 
;**	-----------------------g3:
;** 117	-----------------------    _mem4((void *)U$13) = K$11;
;** 116	-----------------------    U$13 += 2;
;** 116	-----------------------    if ( --L$1 ) goto g3;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 116
;*      Loop opening brace source line   : 117
;*      Loop closing brace source line   : 117
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L91:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L92,A0            ; |116| (P) <0,0> 
   [ A0]   BDEC    .S1     L92,A0            ; |116| (P) <1,0> 
   [ A0]   BDEC    .S1     L92,A0            ; |116| (P) <2,0> 

           MV      .L2X    A6,B5
|| [ A0]   BDEC    .S1     L92,A0            ; |116| (P) <3,0> 

	.dwpsn	"SSHBN.C",116,0

           MV      .L2X    A3,B4
|| [ A0]   BDEC    .S1     L92,A0            ; |116| (P) <4,0> 

;** --------------------------------------------------------------------------*
L92:    ; PIPED LOOP KERNEL
DW$L$_internal_mul$3$B:
	.dwpsn	"SSHBN.C",117,0

           STNW    .D2T2   B4,*B5++(4)       ; |117| <0,5> 
|| [ A0]   BDEC    .S1     L92,A0            ; |116| <5,0> 

DW$L$_internal_mul$3$E:
;** --------------------------------------------------------------------------*
L93:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L94:    
;**	-----------------------g4:
;** 119	-----------------------    K$22 = len-1;
;** 119	-----------------------    if ( len <= 0 ) goto g9;
;**  	-----------------------    U$27 = K$22*2;
;**  	-----------------------    U$32 = &a[K$22];
;**  	-----------------------    U$47 = &c[K$22];
;** 120	-----------------------    L$2 = len;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           CMPGT   .L2     B6,0,B0           ; |119| 
||         SUB     .S2     B6,1,B16          ; |119| 
||         SUB     .L1X    B6,1,A3           ; |119| Define a twin register
||         MV      .D2     B6,B1             ; |120| 

   [!B0]   BNOP    .S1     L99,3             ; |119| 
||         ADDAH   .D2     B18,B16,B4
||         ADD     .L2     B16,B16,B17
||         ADDAH   .D1     A4,A3,A6

           MV      .L1X    B4,A17            ; Define a twin register
|| [ B0]   ADDAH   .D2     B17,B16,B4

   [ B0]   ADD     .L2     B18,B4,B4
           ; BRANCHCC OCCURS {L99}           ; |119| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L95
;** --------------------------------------------------------------------------*
L95:    
DW$L$_internal_mul$6$B:
;**	-----------------------g6:
;**  	-----------------------    U$30 = K$22*2+U$27+c+2;
;**  	-----------------------    U$35 = &b[K$22];
;**  	-----------------------    L$3 = K$22+1;
;** 120	-----------------------    t = 0uL;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g7:
;** 122	-----------------------    t += *U$30+(unsigned long)*U$32*(unsigned long)*U$35--;
;** 124	-----------------------    *U$30-- = t;
;** 125	-----------------------    t >>= 16;
;** 121	-----------------------    if ( --L$3 ) goto g7;
;** 127	-----------------------    *U$47-- = t;

           MVC     .S2     CSR,B19
||         ADD     .L2     2,B4,B6
||         MV      .S1X    B16,A3
||         ADD     .D2     1,B16,B31
||         ZERO    .L1     A5:A4             ; |120| 
||         MVK     .D1     0x1,A0            ; init prolog collapse predicate

           AND     .L2     -2,B19,B30
||         ADDAH   .D1     A18,A3,A16
||         SUB     .S2     B31,1,B0
||         MV      .D2X    A6,B7

           MVC     .S2     B30,CSR           ; interrupts off
||         MV      .L1X    B6,A3

DW$L$_internal_mul$6$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 121
;*      Loop opening brace source line   : 121
;*      Loop closing brace source line   : 126
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 15
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 6
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     3        0     
;*      .S units                     2        1     
;*      .D units                     3        1     
;*      .M units                     2        2     
;*      .X cross paths               4        2     
;*      .T address paths             3        1     
;*      Long read paths              3        0     
;*      Long write paths             2        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        1     
;*      Bound(.L .S .D .LS .LSD)     4        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 15 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh2
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L96:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L97:    ; PIPED LOOP KERNEL
DW$L$_internal_mul$8$B:
	.dwpsn	"SSHBN.C",121,0

           MV      .S1X    B5,A8             ; |122| <0,10> Define a twin register
||         ADDU    .L1     A8,A7:A6,A7:A6    ; |122| <0,10>  ^ 

           ADD     .L1     A8,A7,A7          ; |122| <0,11>  ^ 
           ADDU    .L1     A8,A7:A6,A7:A6    ; |122| <0,12>  ^ 
           ADDU    .L1     A6,A5:A4,A9:A8    ; |122| <0,13>  ^ 
   [!A0]   STH     .D2T1   A8,*B6--          ; |124| <0,14>  ^ 

           LDHU    .D2T2   *B7,B8            ; |122| <1,0>  ^ 
||         LDHU    .D1T1   *A16--,A6         ; |122| <1,0>  ^ 

           NOP             1
           MV      .L2X    A8,B4             ; |122| <0,17> Define a twin register
           MV      .L2X    A9,B5             ; |122| <0,18> Define a twin register

   [ B0]   BDEC    .S2     L97,B0            ; |121| <0,19> 
||         ADD     .L2X    A7,B5,B5          ; |122| <0,19> Define a twin register

           SHRU    .S2     B5:B4,16,B5:B4    ; |125| <0,20> 
||         MPYU    .M1X    A6,B8,A8          ; |122| <1,5> 
||         MPYHLU  .M2X    A6,B8,B9          ; |122| <1,5>  ^ 

           MPYHLU  .M1X    B8,A6,A6          ; |122| <1,6> 

   [!A0]   MV      .L1X    B5,A5             ; |125| <0,22> Define a twin register
||         LDHU    .D1T1   *A3--,A8          ; |122| <1,7> 
||         MPYHU   .M2X    A6,B8,B5          ; |122| <1,7> 

           ADD     .L1X    B9,A6,A6          ; |122| <1,8>  ^ 
	.dwpsn	"SSHBN.C",126,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,24> 
|| [!A0]   MV      .D1X    B4,A4             ; |125| <0,24> Define a twin register
||         SHL     .S1     A6,16,A7:A6       ; |122| <1,9>  ^ 

DW$L$_internal_mul$8$E:
;** --------------------------------------------------------------------------*
L98:    ; PIPED LOOP EPILOG
;** 119	-----------------------    U$27 -= 2;
;** 119	-----------------------    --U$32;
;** 119	-----------------------    if ( --L$2 ) goto g6;
;**	-----------------------g9:
;**  	-----------------------    return;

           SUB     .L2     B17,2,B17         ; |119| 
||         SUB     .S2     B1,1,B1           ; |119| 
||         MV      .S1X    B5,A8             ; |122| (E) <1,10> Define a twin register
||         ADDU    .L1     A8,A7:A6,A7:A6    ; |122| (E) <1,10>  ^ 

           MVC     .S2     B19,CSR           ; interrupts on
||         ADD     .L1     A8,A7,A7          ; |122| (E) <1,11>  ^ 

;** --------------------------------------------------------------------------*
DW$L$_internal_mul$10$B:
           ADDU    .L1     A8,A7:A6,A7:A6    ; |122| (E) <1,12>  ^ 

           ADDU    .L1     A6,A5:A4,A9:A8    ; |122| (E) <1,13>  ^ 
||         SUB     .S1X    B7,2,A6           ; |119| 

           STH     .D2T1   A8,*B6--          ; |124| (E) <1,14>  ^ 
           MV      .L2X    A9,B5             ; |122| (E) <1,18> Define a twin register

           ADD     .L2X    A7,B5,B5          ; |122| (E) <1,19> Define a twin register
|| [ B1]   B       .S1     L95               ; |119| 

           MV      .L2X    A8,B4             ; |122| (E) <1,17> Define a twin register
           SHRU    .S2     B5:B4,16,B5:B4    ; |125| (E) <1,20> 
           NOP             1

   [ B1]   ADDAH   .D2     B17,B16,B4
||         MV      .L1X    B4,A4             ; |125| (E) <1,24> Define a twin register

   [ B1]   ADD     .L2     B18,B4,B4
||         STH     .D1T1   A4,*A17--         ; |127| 

           ; BRANCHCC OCCURS {L95}           ; |119| 
DW$L$_internal_mul$10$E:
;** --------------------------------------------------------------------------*
L99:    
	.dwpsn	"SSHBN.C",129,1
           RETNOP  .S2     B3,5              ; |129| 
           ; BRANCH OCCURS {B3}              ; |129| 

DW$135	.dwtag  DW_TAG_loop
	.dwattr DW$135, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L95:1:1297920382")
	.dwattr DW$135, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$135, DW_AT_begin_line(0x77)
	.dwattr DW$135, DW_AT_end_line(0x7f)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_internal_mul$6$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_internal_mul$6$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_internal_mul$10$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_internal_mul$10$E)

DW$138	.dwtag  DW_TAG_loop
	.dwattr DW$138, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L97:2:1297920382")
	.dwattr DW$138, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$138, DW_AT_begin_line(0x79)
	.dwattr DW$138, DW_AT_end_line(0x7e)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_internal_mul$8$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_internal_mul$8$E)
	.dwendtag DW$138

	.dwendtag DW$135


DW$140	.dwtag  DW_TAG_loop
	.dwattr DW$140, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L92:1:1297920382")
	.dwattr DW$140, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$140, DW_AT_begin_line(0x74)
	.dwattr DW$140, DW_AT_end_line(0x75)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_internal_mul$3$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_internal_mul$3$E)
	.dwendtag DW$140

	.dwattr DW$130, DW_AT_end_file("SSHBN.C")
	.dwattr DW$130, DW_AT_end_line(0x81)
	.dwattr DW$130, DW_AT_end_column(0x01)
	.dwendtag DW$130

	.sect	".text"
	.global	_freebn

DW$142	.dwtag  DW_TAG_subprogram, DW_AT_name("freebn"), DW_AT_symbol_name("_freebn")
	.dwattr DW$142, DW_AT_low_pc(_freebn)
	.dwattr DW$142, DW_AT_high_pc(0x00)
	.dwattr DW$142, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$142, DW_AT_begin_line(0x59)
	.dwattr DW$142, DW_AT_begin_column(0x06)
	.dwattr DW$142, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$142, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",90,1

;******************************************************************************
;* FUNCTION NAME: _freebn                                                     *
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
_freebn:
;** --------------------------------------------------------------------------*
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$143, DW_AT_type(*DW$T$40)
	.dwattr DW$143, DW_AT_location[DW_OP_reg4]
;** 94	-----------------------    memset((void * const)b, 0, ((unsigned)*b+1u)*2u);
;** 95	-----------------------    safefree((void * const)b);
;** 95	-----------------------    return;

           MV      .L1     A4,A10            ; |90| 
||         STW     .D2T1   A10,*SP--(8)      ; |90| 

           LDHU    .D1T1   *A10,A3           ; |94| 
           CALL    .S1     _memset           ; |94| 
           ZERO    .L2     B4                ; |94| 
           STW     .D2T2   B13,*+SP(4)       ; |90| 
           MV      .L2     B3,B13            ; |90| 
           ADD     .L1     1,A3,A3           ; |94| 

           ADD     .L1     A3,A3,A6          ; |94| 
||         ADDKPC  .S2     RL20,B3,0         ; |94| 

RL20:      ; CALL OCCURS {_memset}           ; |94| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _safefree         ; |95| 
           ADDKPC  .S2     RL21,B3,3         ; |95| 
           MV      .L1     A10,A4            ; |95| 
RL21:      ; CALL OCCURS {_safefree}         ; |95| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |96| 

           RET     .S2     B3                ; |96| 
||         LDW     .D2T2   *+SP(4),B13       ; |96| 

           LDW     .D2T1   *++SP(8),A10      ; |96| 
	.dwpsn	"SSHBN.C",96,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |96| 
	.dwattr DW$142, DW_AT_end_file("SSHBN.C")
	.dwattr DW$142, DW_AT_end_line(0x60)
	.dwattr DW$142, DW_AT_end_column(0x01)
	.dwendtag DW$142

	.sect	".text"
	.global	_modpow

DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("modpow"), DW_AT_symbol_name("_modpow")
	.dwattr DW$144, DW_AT_low_pc(_modpow)
	.dwattr DW$144, DW_AT_high_pc(0x00)
	.dwattr DW$144, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$144, DW_AT_begin_line(0xfe)
	.dwattr DW$144, DW_AT_begin_column(0x08)
	.dwattr DW$144, DW_AT_frame_base[DW_OP_breg31 64]
	.dwattr DW$144, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",255,1

;******************************************************************************
;* FUNCTION NAME: _modpow                                                     *
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
;*   Local Frame Size  : 0 Args + 16 Auto + 44 Save = 60 byte                 *
;******************************************************************************
_modpow:
;** --------------------------------------------------------------------------*
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("base_in"), DW_AT_symbol_name("_base_in")
	.dwattr DW$145, DW_AT_type(*DW$T$40)
	.dwattr DW$145, DW_AT_location[DW_OP_reg4]
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("exp"), DW_AT_symbol_name("_exp")
	.dwattr DW$146, DW_AT_type(*DW$T$40)
	.dwattr DW$146, DW_AT_location[DW_OP_reg20]
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mod"), DW_AT_symbol_name("_mod")
	.dwattr DW$147, DW_AT_type(*DW$T$40)
	.dwattr DW$147, DW_AT_location[DW_OP_reg6]
;** 265	-----------------------    assert(mod[*mod]);

           MV      .L1X    SP,A31            ; |255| 
||         STW     .D2T1   A15,*SP--(64)     ; |255| 

           STDW    .D1T1   A13:A12,*-A31(32)
||         MV      .L1     A6,A12            ; |255| 
||         STDW    .D2T2   B13:B12,*+SP(56)

           LDHU    .D1T1   *A12,A3           ; |265| 
||         STDW    .D2T2   B11:B10,*+SP(48)

           STW     .D1T1   A14,*-A31(24)
           STW     .D2T2   B3,*+SP(44)

           STDW    .D1T1   A11:A10,*-A31(40)
||         MV      .L1     A4,A11            ; |255| 
||         MVKL    .S1     SL1+0,A4          ; |265| 

           MVKH    .S1     SL1+0,A4          ; |265| 
||         MV      .L1X    B4,A10            ; |255| 

           LDHU    .D1T1   *+A12[A3],A0      ; |265| 
           NOP             4
   [ A0]   B       .S1     L100              ; |265| 
   [!A0]   CALL    .S1     __abort_msg       ; |265| 
   [ A0]   CALL    .S1     _bigmod           ; |271| 
           NOP             3
           ; BRANCHCC OCCURS {L100}          ; |265| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL22,B3,0         ; |265| 
RL22:      ; CALL OCCURS {__abort_msg}       ; |265| 
           CALL    .S1     _bigmod           ; |271| 
           NOP             3
;** --------------------------------------------------------------------------*
L100:    
;** 271	-----------------------    base = bigmod(base_in, mod);
;** 275	-----------------------    mlen = *mod;
;** 276	-----------------------    m = safemalloc((unsigned)mlen, 2u);
;** 277	-----------------------    if ( !mlen ) goto g4;
;**  	-----------------------    U$23 = m;
;**  	-----------------------    L$1 = (int)mlen;
;**  	-----------------------    U$19 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDKPC  .S2     RL23,B3,0         ; |271| 

           MV      .L1     A11,A4            ; |271| 
||         MV      .L2X    A12,B4            ; |271| 

RL23:      ; CALL OCCURS {_bigmod}           ; |271| 
;** --------------------------------------------------------------------------*
           LDHU    .D1T2   *A12,B5           ; |275| 
           CALL    .S1     _safemalloc       ; |276| 
           STW     .D2T1   A4,*+SP(8)        ; |271| 
           ADDKPC  .S2     RL24,B3,0         ; |276| 
           MVK     .L2     0x2,B4            ; |276| 
           MV      .L1X    B5,A11            ; |276| 

           STW     .D2T2   B5,*+SP(4)        ; |275| 
||         MV      .L1X    B5,A4             ; |276| 

RL24:      ; CALL OCCURS {_safemalloc}       ; |276| 
;** --------------------------------------------------------------------------*

           MV      .L1     A11,A0
||         MV      .S1     A11,A3
||         MV      .D1     A4,A11            ; |276| 

   [!A0]   BNOP    .S1     L104,3            ; |277| 
||         ZERO    .L1     A5
|| [!A0]   LDHU    .D1T2   *A11,B6
|| [!A0]   ZERO    .L2     B4                ; |281| 
|| [!A0]   MVKL    .S2     0x8000,B7

   [!A0]   MVKH    .S2     0x8000,B7
   [!A0]   SHL     .S2     B6,B4,B5          ; |283| (P) <0,0>  ^ 
           ; BRANCHCC OCCURS {L104}          ; |277| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 278	-----------------------    *U$23++ = *(*mod*2-U$19+mod);
;** 277	-----------------------    U$19 += 2;
;** 277	-----------------------    if ( --L$1 ) goto g3;

           MVC     .S2     CSR,B8
||         SUB     .L1     A3,1,A0
||         MV      .L2X    A4,B6

           AND     .L2     -2,B8,B7
||         MV      .S2X    A12,B5

           MVC     .S2     B7,CSR            ; interrupts off
||         MV      .L2X    A5,B4

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 277
;*      Loop opening brace source line   : 278
;*      Loop closing brace source line   : 278
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     0        3*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        3*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L101:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L102:    ; PIPED LOOP KERNEL
DW$L$_modpow$8$B:
	.dwpsn	"SSHBN.C",278,0
           LDHU    .D2T2   *B5,B7            ; |278| <0,0>  ^ 
           NOP             4
           ADD     .L2     B7,B7,B7          ; |278| <0,5>  ^ 
           SUB     .L2     B7,B4,B7          ; |278| <0,6>  ^ 
           ADD     .L2     B5,B7,B7          ; |278| <0,7>  ^ 

   [ A0]   BDEC    .S1     L102,A0           ; |277| <0,8> 
||         LDHU    .D2T2   *B7,B7            ; |278| <0,8>  ^ 

           NOP             4

           ADD     .L2     2,B4,B4           ; |277| <0,13> 
||         STH     .D2T2   B7,*B6++          ; |278| <0,13>  ^ 

DW$L$_modpow$8$E:
;** --------------------------------------------------------------------------*
L103:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           LDHU    .D1T2   *A11,B6
           MVKL    .S2     0x8000,B7
           MVC     .S2     B8,CSR            ; interrupts on
           MVKH    .S2     0x8000,B7
           ZERO    .L2     B4                ; |281| 

           SHL     .S2     B6,B4,B5          ; |283| (P) <0,0>  ^ 
||         MV      .L1X    B5,A12

;** --------------------------------------------------------------------------*
L104:    
;**	-----------------------g4:
;**  	-----------------------    U$32 = *m;
;**  	-----------------------    K$35 = 32768u;
;** 281	-----------------------    L$2 = 15;
;** 281	-----------------------    mshift = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 15, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g5:
;** 283	-----------------------    if ( (unsigned)U$32<<mshift&K$35 ) goto g7;
;** 281	-----------------------    ++mshift;
;** 281	-----------------------    if ( --L$2 ) goto g5;

           AND     .L2     B7,B5,B1          ; |283| (P) <0,1>  ^ 
||         MVK     .D2     0xf,B5            ; |281| 
||         MVC     .S2     CSR,B16
||         MVK     .L1     0x1,A0

   [!B1]   ADD     .L2     1,B4,B4           ; |281| (P) <0,2>  ^ 
|| [!B1]   MVK     .S2     14,B5             ; |281| 

           CMPEQ   .L2     B5,0,B9           ; |281| (P) <0,3>  ^ 
||         SHL     .S2     B6,B4,B8          ; |283| (P) <1,0>  ^ 

           OR      .L2     B9,B1,B0          ; |281| (P) <0,4>  ^ 
||         AND     .S2     B7,B8,B1          ; |283| (P) <1,1>  ^ 
||         AND     .D2     -2,B16,B8
||         MV      .L1X    B4,A3             ; |281| (P) <0,4> 

           MVC     .S2     B8,CSR            ; interrupts off
|| [!B1]   ADD     .L2     1,B4,B4           ; |281| (P) <1,2>  ^ 
|| [ B0]   ZERO    .L1     A0                ; |281| (P) <0,5> 
|| [!B1]   SUB     .D2     B5,1,B5           ; |281| (P) <1,2>  ^ 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 281
;*      Loop opening brace source line   : 282
;*      Loop closing brace source line   : 283
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 15                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        1     
;*      .D units                     0        0     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             0        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     1        2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 3
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L105:    ; PIPED LOOP PROLOG

   [ A0]   B       .S1     L106              ; |281| (P) <0,6> 
||         SHL     .S2     B6,B4,B9          ; |283| (P) <2,0>  ^ 
||         CMPEQ   .L2     B5,0,B8           ; |281| (P) <1,3>  ^ 

           ZERO    .L1     A4                ; |281| 
|| [ A0]   MV      .S1X    B4,A3             ; |281| (P) <1,4> 
||         AND     .L2     B7,B9,B1          ; |283| (P) <2,1>  ^ 
||         OR      .S2     B8,B1,B0          ; |281| (P) <1,4>  ^ 

	.dwpsn	"SSHBN.C",281,0

           STW     .D2T1   A4,*+SP(12)
|| [ B0]   ZERO    .L1     A0                ; |281| (P) <1,5> 
|| [!B1]   SUB     .L2     B5,1,B5           ; |281| (P) <2,2>  ^ 
|| [!B1]   ADD     .S2     1,B4,B4           ; |281| (P) <2,2>  ^ 

;** --------------------------------------------------------------------------*
L106:    ; PIPED LOOP KERNEL
DW$L$_modpow$13$B:
	.dwpsn	"SSHBN.C",282,0

   [ A0]   B       .S1     L106              ; |281| <1,6> 
||         CMPEQ   .L2     B5,0,B8           ; |281| <2,3>  ^ 
||         SHL     .S2     B6,B4,B9          ; |283| <3,0>  ^ 

   [ A0]   MV      .L1X    B4,A3             ; |281| <2,4> 
||         OR      .L2     B8,B1,B0          ; |281| <2,4>  ^ 
||         AND     .S2     B7,B9,B1          ; |283| <3,1>  ^ 

	.dwpsn	"SSHBN.C",283,0

   [ B0]   ZERO    .L1     A0                ; |281| <2,5> 
|| [!B1]   ADD     .L2     1,B4,B4           ; |281| <3,2>  ^ 
|| [!B1]   SUB     .S2     B5,1,B5           ; |281| <3,2>  ^ 

DW$L$_modpow$13$E:
;** --------------------------------------------------------------------------*
L107:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 284	-----------------------    if ( !mshift ) goto g12;

           MV      .L1     A3,A0             ; |285| 
||         LDW     .D2T2   *+SP(4),B4
||         MVC     .S2     B16,CSR           ; interrupts on

   [!A0]   B       .S1     L115              ; |284| 
|| [!A0]   LDW     .D2T1   *+SP(4),A13       ; |291| 

   [!A0]   CALL    .S1     _safemalloc       ; |291| 
           NOP             2
           CMPLTU  .L2     B4,2,B1           ; |285| 
           STW     .D2T1   A3,*+SP(12)
           ; BRANCHCC OCCURS {L115}          ; |284| 
;** --------------------------------------------------------------------------*
;** 285	-----------------------    if ( mlen < 2 ) goto g11;
;**  	-----------------------    U$51 = m;
;**  	-----------------------    U$57 = 16-mshift;
;** 286	-----------------------    L$3 = mlen-1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65534, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           SUB     .L2     B4,1,B0           ; |286| 
|| [ B1]   B       .S2     L114              ; |285| 
||         MV      .D2     B1,B2             ; guard predicate rewrite
||         MV      .L1X    B1,A1             ; branch predicate copy
||         MVK     .S1     16,A4
||         MV      .D1     A11,A6

           CMPGT   .L2     B0,4,B1
||         SUB     .L1     A4,A3,A8
|| [ A1]   LDW     .D2T1   *+SP(4),A3

   [ B2]   ZERO    .L2     B1                ; nullify predicate
   [ B1]   BNOP    .S1     L109,2
           ; BRANCHCC OCCURS {L114}          ; |285| 
;** --------------------------------------------------------------------------*
           NOP             3
           ; BRANCHCC OCCURS {L109} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L108
;** --------------------------------------------------------------------------*
L108:    
DW$L$_modpow$18$B:
	.dwpsn	"SSHBN.C",286,0
;**	-----------------------g10:
;** 286	-----------------------    A$22 = *U$51<<mshift|U$51[1]>>U$57;
;** 286	-----------------------    *U$51++ = A$22;
;** 285	-----------------------    if ( --L$3 ) goto g10;

           LDHU    .D1T1   *A6,A5            ; |286| 
||         SUB     .L2     B0,1,B0           ; |285| 
||         MV      .L1     A0,A3             ; |286| 

           LDHU    .D1T1   *+A6(2),A4        ; |286| 
           NOP             1
   [ B0]   B       .S1     L108              ; |285| 
   [!B0]   B       .S1     L113
           SHL     .S1     A5,A3,A3          ; |286| 
           SHRU    .S1     A4,A8,A4          ; |286| 
           OR      .L1     A4,A3,A3          ; |286| 
           STH     .D1T1   A3,*A6++          ; |286| 
           ; BRANCHCC OCCURS {L108}          ; |285| 
DW$L$_modpow$18$E:
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(4),A3
           ; BRANCH OCCURS {L113} 
;** --------------------------------------------------------------------------*
L109:    

           MVC     .S2     CSR,B6
||         SUB     .L2     B0,3,B0

           AND     .L2     -2,B6,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 285
;*      Loop opening brace source line   : 286
;*      Loop closing brace source line   : 286
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh10
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L110:    ; PIPED LOOP PROLOG
   [ B0]   BDEC    .S2     L111,B0           ; |285| (P) <0,5> 

           MV      .L2X    A6,B5
||         LDHU    .D1T1   *A6++,A3          ; |286| (P) <0,0> 

           LDHU    .D1T1   *A6,A3            ; |286| (P) <0,1> 
|| [ B0]   BDEC    .S2     L111,B0           ; |285| (P) <1,5> 

	.dwpsn	"SSHBN.C",285,0

           MV      .L1     A0,A9
||         MVK     .S1     0x3,A0            ; init prolog collapse predicate
||         LDHU    .D1T1   *A6++,A3          ; |286| (P) <1,0> 

;** --------------------------------------------------------------------------*
L111:    ; PIPED LOOP KERNEL
DW$L$_modpow$22$B:
	.dwpsn	"SSHBN.C",286,0

           MV      .L2X    A5,B4             ; |286| <0,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |286| <1,7> 
||         SHL     .S1     A3,A9,A7          ; |286| <2,5> 
|| [ B0]   BDEC    .S2     L111,B0           ; |285| <2,5> 
||         LDHU    .D1T1   *A6,A3            ; |286| <4,1> 

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D2T2   B4,*B5++          ; |286| <0,10> 
||         SHRU    .S1     A3,A8,A4          ; |286| <2,6> 
||         LDHU    .D1T1   *A6++,A3          ; |286| <5,0> 

DW$L$_modpow$22$E:
;** --------------------------------------------------------------------------*
L112:    ; PIPED LOOP EPILOG

           MV      .L2X    A5,B4             ; |286| (E) <1,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |286| (E) <2,7> 
||         LDHU    .D1T1   *A6,A3            ; |286| (E) <5,1> 
||         SHL     .S1     A3,A9,A7          ; |286| (E) <3,5> 

           STH     .D2T2   B4,*B5++          ; |286| (E) <1,10> 
||         SHRU    .S1     A3,A8,A4          ; |286| (E) <3,6> 

           MV      .L2X    A5,B4             ; |286| (E) <2,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |286| (E) <3,7> 
||         SHL     .S1     A3,A9,A7          ; |286| (E) <4,5> 

           SHRU    .S1     A3,A8,A4          ; |286| (E) <4,6> 
||         STH     .D2T2   B4,*B5++          ; |286| (E) <2,10> 

           MVC     .S2     B6,CSR            ; interrupts on
||         MV      .L2X    A5,B4             ; |286| (E) <3,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |286| (E) <4,7> 
||         SHL     .S1     A3,A9,A7          ; |286| (E) <5,5> 

;** --------------------------------------------------------------------------*
           SHRU    .S1     A3,A8,A4          ; |286| (E) <5,6> 

           OR      .L1     A4,A7,A5          ; |286| (E) <5,7> 
||         MV      .L2X    A5,B4             ; |286| (E) <4,9> Define a twin register
||         STH     .D2T2   B4,*B5++          ; |286| (E) <3,10> 

           STH     .D2T2   B4,*B5++          ; |286| (E) <4,10> 
           MV      .L2X    A5,B4             ; |286| (E) <5,9> Define a twin register
           STH     .D2T2   B4,*B5++          ; |286| (E) <5,10> 
           STW     .D2T1   A9,*+SP(12)
           LDW     .D2T1   *+SP(4),A3
;** --------------------------------------------------------------------------*
L113:    
           NOP             4
;** --------------------------------------------------------------------------*
L114:    
;**	-----------------------g11:
;** 287	-----------------------    C$19 = &m[mlen-1];
;** 287	-----------------------    *C$19 = *C$19<<mshift;

           ADDAH   .D1     A11,A3,A3         ; |287| 
||         LDW     .D2T1   *+SP(12),A31

           SUB     .L1     A3,2,A4           ; |287| 
||         LDW     .D2T1   *+SP(4),A13       ; |291| 

           LDHU    .D1T1   *A4,A5            ; |287| 
           NOP             1
           CALL    .S1     _safemalloc       ; |291| 
           NOP             2
           SHL     .S1     A5,A31,A3         ; |287| 
           STH     .D1T1   A3,*A4            ; |287| 
;** --------------------------------------------------------------------------*
L115:    
;**	-----------------------g12:
;** 291	-----------------------    n = safemalloc((unsigned)mlen, 2u);
;** 292	-----------------------    i = mlen-*base;
;**  	-----------------------    U$64 = mlen*2;
;** 293	-----------------------    if ( i <= 0 ) goto g15;
;**  	-----------------------    K$77 = 0;
;**  	-----------------------    U$78 = n;
;** 294	-----------------------    L$4 = i;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MVK     .L2     0x2,B4            ; |291| 
||         MV      .L1     A13,A4            ; |291| 
||         ADDKPC  .S2     RL25,B3,0         ; |291| 

RL25:      ; CALL OCCURS {_safemalloc}       ; |291| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A3        ; |291| 
||         MV      .L2X    A13,B4

           NOP             2
           MV      .L2X    A4,B13            ; |291| 
           ADD     .L2X    A13,B4,B11
           LDHU    .D1T1   *A3,A3            ; |292| 
           NOP             4

           ZERO    .S2     B4
||         SUB     .L1X    B4,A3,A3          ; |292| 
||         SUB     .L2X    B4,A3,B6          ; |292| 

           CMPGT   .L2     B6,0,B0           ; |293| 

   [!B0]   BNOP    .S1     L119,5            ; |293| 
|| [ B0]   SUB     .L1     A3,1,A0

           ; BRANCHCC OCCURS {L119}          ; |293| 
;**	-----------------------g14:
;** 294	-----------------------    *U$78++ = K$77;
;** 293	-----------------------    if ( --L$4 ) goto g14;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 293
;*      Loop opening brace source line   : 294
;*      Loop closing brace source line   : 294
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L116:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L117,A0           ; |293| (P) <0,0> 
   [ A0]   BDEC    .S1     L117,A0           ; |293| (P) <1,0> 
   [ A0]   BDEC    .S1     L117,A0           ; |293| (P) <2,0> 
   [ A0]   BDEC    .S1     L117,A0           ; |293| (P) <3,0> 
	.dwpsn	"SSHBN.C",293,0

           MV      .L2X    A4,B5
|| [ A0]   BDEC    .S1     L117,A0           ; |293| (P) <4,0> 

;** --------------------------------------------------------------------------*
L117:    ; PIPED LOOP KERNEL
DW$L$_modpow$30$B:
	.dwpsn	"SSHBN.C",294,0

           STH     .D2T2   B4,*B5++          ; |294| <0,5> 
|| [ A0]   BDEC    .S1     L117,A0           ; |293| <5,0> 

DW$L$_modpow$30$E:
;** --------------------------------------------------------------------------*
L118:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L119:    
;**	-----------------------g15:
;** 295	-----------------------    if ( !(U$72 = *base) ) goto g18;
;**  	-----------------------    U$90 = &n[i];
;**  	-----------------------    U$19 = 0;
;** 295	-----------------------    j = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           LDW     .D2T1   *+SP(8),A3
||         ZERO    .L2     B5                ; |295| 

           NOP             2
           LDW     .D2T2   *+SP(8),B7
           ADDAH   .D2     B13,B6,B8

           ZERO    .L1     A3
||         LDHU    .D1T1   *A3,A0            ; |295| 

           NOP             4

   [!A0]   B       .S1     L123              ; |295| 
|| [ A0]   MV      .L2X    A0,B4

   [ A0]   ADD     .L2X    A0,B4,B4          ; |296| 
   [ A0]   SUB     .L2X    B4,A3,B4          ; |296| 
           ADD     .L2     B7,B4,B9          ; |296| (P) <0,2>  ^ 
   [ A0]   LDHU    .D2T2   *B9,B4            ; |296| (P) <0,3>  ^ 
           NOP             1
           ; BRANCHCC OCCURS {L123}          ; |295| 
;** --------------------------------------------------------------------------*
;**	-----------------------g17:
;** 296	-----------------------    *U$90++ = *(U$72*2-U$19+base);
;** 295	-----------------------    U$19 += 2;
;** 295	-----------------------    U$72 = *base;
;** 295	-----------------------    if ( U$72 > (++j) ) goto g17;

           MVC     .S2     CSR,B16
||         MVK     .L1     0x1,A0
||         MVK     .S1     0x1,A1
||         MV      .L2X    A3,B6

           AND     .L2     -2,B16,B17
           MVC     .S2     B17,CSR           ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 295
;*      Loop opening brace source line   : 296
;*      Loop closing brace source line   : 296
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 3
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
;*      Addition ops (.LSD)          3        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L120:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L121:    ; PIPED LOOP KERNEL
DW$L$_modpow$35$B:
	.dwpsn	"SSHBN.C",296,0
   [ A0]   STH     .D2T2   B4,*B8++          ; |296| <0,8>  ^ 
           LDHU    .D2T2   *B7,B9            ; |295| <0,9>  ^ 
           NOP             3
           ADD     .L2     1,B5,B5           ; |295| <0,13> 

           ADD     .S2     2,B6,B6           ; |295| <0,14> 
||         CMPGT   .L2     B9,B5,B0          ; |295| <0,14> 
||         ADD     .D2     B9,B9,B9          ; |296| <1,0>  ^ 

   [!B0]   ZERO    .L1     A1                ; |295| <0,15> 
||         SUB     .L2     B9,B6,B9          ; |296| <1,1>  ^ 

   [ A1]   B       .S1     L121              ; |295| <0,16> 
||         ADD     .L2     B7,B9,B9          ; |296| <1,2>  ^ 

   [ A1]   LDHU    .D2T2   *B9,B4            ; |296| <1,3>  ^ 
           NOP             2
           MV      .L1     A1,A0             ; |295| <0,20> Split a long life
           NOP             1
DW$L$_modpow$35$E:
;** --------------------------------------------------------------------------*
L122:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           STW     .D2T2   B7,*+SP(8)
||         MVC     .S2     B16,CSR           ; interrupts on

;** --------------------------------------------------------------------------*
L123:    
;**	-----------------------g18:
;** 299	-----------------------    a = safemalloc((unsigned)U$64, 2u);
;** 300	-----------------------    b = safemalloc((unsigned)U$64, 2u);
;** 301	-----------------------    if ( !mlen ) goto g21;
;** 302	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    K$98 = 0u;
;**  	-----------------------    U$99 = a;
;** 302	-----------------------    L$5 = U$64>>1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65535, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
           CALL    .S1     _safemalloc       ; |299| 
           ADDKPC  .S2     RL26,B3,2         ; |299| 
           MV      .L1X    B11,A4            ; |299| 
           MVK     .L2     0x2,B4            ; |299| 
RL26:      ; CALL OCCURS {_safemalloc}       ; |299| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _safemalloc       ; |300| 
           ADDKPC  .S2     RL27,B3,0         ; |300| 
           MVK     .L2     0x2,B4            ; |300| 
           MV      .S1     A4,A14            ; |299| 
           MV      .D2X    A4,B12            ; |299| 
           MV      .L1X    B11,A4            ; |300| 
RL27:      ; CALL OCCURS {_safemalloc}       ; |300| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A0        ; |300| 
||         SHR     .S2     B11,1,B4          ; |302| 
||         MV      .L1     A4,A13            ; |300| 
||         ZERO    .S1     A3

           NOP             4

   [ A0]   SUB     .D1X    B4,1,A0
||         MV      .L1     A0,A1             ; branch predicate copy
|| [!A0]   B       .S1     L127              ; |301| 

   [!A1]   LDW     .D2T2   *+SP(4),B4
           NOP             4
           ; BRANCHCC OCCURS {L127}          ; |301| 
;**	-----------------------g20:
;** 302	-----------------------    _mem4((void *)U$99) = K$98;
;** 301	-----------------------    U$99 += 2;
;** 301	-----------------------    if ( --L$5 ) goto g20;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 301
;*      Loop opening brace source line   : 302
;*      Loop closing brace source line   : 302
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65535                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L124:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L125,A0           ; |301| (P) <0,0> 
   [ A0]   BDEC    .S1     L125,A0           ; |301| (P) <1,0> 
   [ A0]   BDEC    .S1     L125,A0           ; |301| (P) <2,0> 

           MV      .L2X    A3,B5
|| [ A0]   BDEC    .S1     L125,A0           ; |301| (P) <3,0> 

	.dwpsn	"SSHBN.C",301,0

           MV      .L2X    A14,B4
|| [ A0]   BDEC    .S1     L125,A0           ; |301| (P) <4,0> 

;** --------------------------------------------------------------------------*
L125:    ; PIPED LOOP KERNEL
DW$L$_modpow$42$B:
	.dwpsn	"SSHBN.C",302,0

           STNW    .D2T2   B5,*B4++(4)       ; |302| <0,5> 
|| [ A0]   BDEC    .S1     L125,A0           ; |301| <5,0> 

DW$L$_modpow$42$E:
;** --------------------------------------------------------------------------*
L126:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(4),B4
           NOP             4
;** --------------------------------------------------------------------------*
L127:    
;**	-----------------------g21:
;** 303	-----------------------    U$108 = mlen*4;
;** 303	-----------------------    *(U$108+a-2) = 1;
;**  	-----------------------    U$112 = *exp;
;** 306	-----------------------    i = 0;
;** 307	-----------------------    j = 15;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           SHL     .S2     B4,2,B4           ; |303| 
||         MVK     .L2     1,B5              ; |303| 
||         ZERO    .L1     A15               ; |306| 
||         MVK     .S1     0xf,A14           ; |307| 

           STW     .D2T2   B4,*+SP(16)       ; |303| 
||         ADD     .L2     B12,B4,B4         ; |303| 
||         MV      .L1     A15,A7

           STH     .D2T2   B5,*-B4(2)        ; |303| 
           LDHU    .D1T2   *A10,B4
           NOP             4
           MV      .L1X    B4,A4
           ADD     .L1X    B4,A4,A3          ; |308| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L128
;** --------------------------------------------------------------------------*
L128:    
DW$L$_modpow$46$B:
;**	-----------------------g22:
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**  	-----------------------    (j < 0) ? (L$6 = 1) : (L$6 = j+1);
;**  	-----------------------    ++j;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g23:
;** 308	-----------------------    C$18 = j-1;
;** 308	-----------------------    f$12 = (exp[U$112-i]>>C$18&1)-1;
;** 309	-----------------------    j = C$18;
;** 308	-----------------------    f$13 = (i >= U$112)-1;
;** 310	-----------------------    if ( (--L$6)&f$12&f$13 ) goto g23;
;**  	-----------------------    if ( !((f$13 == 0)|(f$12 == 0)) ) goto g60;

           SUBAH   .D1     A3,A7,A3          ; |308| (P) <0,1> 
||         MVC     .S2     CSR,B8
||         CMPLT   .L1     A14,0,A0
||         MV      .S1     A10,A9

           ADD     .L1     A10,A3,A3         ; |308| 
||         AND     .L2     -2,B8,B6
|| [!A0]   ADD     .S2X    1,A14,B5
|| [ A0]   MVK     .D2     0x1,B5

           LDHU    .D1T1   *A3,A5            ; |308| (P) <0,3> 
||         ADD     .L1     1,A14,A3
||         MVC     .S2     B6,CSR            ; interrupts off

           NOP             2
           SUB     .L1     A3,1,A31          ; |308| 
           SUB     .S1     A3,1,A8           ; |308| 
           SHRU    .S1     A5,A31,A3         ; |308| (P) <0,8> 
DW$L$_modpow$46$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 308
;*      Loop closing brace source line   : 310
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        1     
;*      .D units                     2        0     
;*      .M units                     0        0     
;*      .X cross paths               0        2     
;*      .T address paths             1        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          6        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     3*       3*    
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
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Did not find schedule
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Did not find schedule
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Did not find schedule
;*         ii = 11 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L129:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L130:    ; PIPED LOOP KERNEL
DW$L$_modpow$48$B:
           AND     .L1     1,A3,A3           ; |308| <0,9> 

           CMPLT   .L2X    A7,B4,B6          ; |308| <0,10> 
||         SUB     .L1     A3,1,A6           ; |308| <0,10>  ^ 

           XOR     .L2     1,B6,B6           ; |308| <0,11> 
||         SUB     .S2     B5,1,B5           ; |310| <0,11> Define a twin register
||         ADD     .L1     A4,A4,A3          ; |308| <1,0> 

           SUB     .L2     B6,1,B6           ; |308| <0,12> 
||         AND     .S2X    A6,B5,B7          ; |310| <0,12>  ^ 
||         SUBAH   .D1     A3,A7,A3          ; |308| <1,1> 

           AND     .L2     B6,B7,B0          ; |310| <0,13> 
||         ADD     .L1     A9,A3,A3          ; |308| <1,2> 

   [ B0]   BNOP    .S2     L130,3            ; |310| <0,14> 
|| [ B0]   LDHU    .D1T1   *A3,A5            ; |308| <1,3> 

           SUB     .L1     A8,1,A3           ; |308| <1,7>  ^ 

   [ B0]   MV      .L1     A3,A8             ; |309| <1,8>  ^ Define a twin register
||         SHRU    .S1     A5,A3,A3          ; |308| <1,8> 

DW$L$_modpow$48$E:
;** --------------------------------------------------------------------------*
L131:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_modpow$50$B:
;** 317	-----------------------    if ( i >= U$112 ) goto g33;

           MV      .S1     A7,A15
||         CMPEQ   .L2X    A6,0,B5
||         CMPEQ   .L1X    B6,0,A3
||         MV      .D1     A9,A10
||         MVC     .S2     B8,CSR            ; interrupts on

           MV      .L2X    A4,B4
||         MV      .L1     A8,A14

           CMPLT   .L2X    A15,B4,B0         ; |317| 
||         OR      .L1X    B5,A3,A0

   [!A0]   MVK     .L2     0x1,B0            ; nullify predicate
|| [ A0]   ADD     .L1     A15,A15,A3
|| [!A0]   B       .S2     L174
|| [!A0]   ADD     .S1     1,A15,A15         ; |311| 
|| [!A0]   MVK     .D1     0xf,A14           ; |312| 

   [!B0]   B       .S1     L135              ; |317| 

   [!A0]   BNOP    .S1     L128,3            ; |312| 
|| [ A0]   MV      .L2X    A3,B10            ; Define a twin register

           ; BRANCHCC OCCURS {L174} 
DW$L$_modpow$50$E:
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$50 = i*2;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;**	-----------------------g27:
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           NOP             1
           ; BRANCHCC OCCURS {L135}          ; |317| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L132
;** --------------------------------------------------------------------------*
L132:    
DW$L$_modpow$52$B:

           LDW     .D2T1   *+SP(4),A19       ; |319| 
||         CALL    .S1     _internal_mul     ; |319| 
||         ADD     .L2     B12,B11,B4        ; |319| 

	.dwpsn	"SSHBN.C",318,0
           NOP             3
DW$L$_modpow$52$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L133:    
DW$L$_modpow$53$B:
;**	-----------------------g28:
;** 319	-----------------------    C$17 = U$64+a;
;** 319	-----------------------    internal_mul(C$17, C$17, b, (int)mlen);
;** 320	-----------------------    internal_mod(b, U$64, m, (int)mlen, NULL, 0);
;** 321	-----------------------    if ( *(*exp*2-U$50+exp)&1<<j ) goto g30;
;** 322	-----------------------    t = a;
;** 322	-----------------------    a = b;
;** 322	-----------------------    b = t;
;**  	-----------------------    goto g31;
           MV      .L1X    B4,A4             ; |319| 

           MV      .L2X    A19,B6            ; |319| 
||         MV      .S1     A13,A6            ; |319| 
||         ADDKPC  .S2     RL28,B3,0         ; |319| 

RL28:      ; CALL OCCURS {_internal_mul}     ; |319| 
DW$L$_modpow$53$E:
;** --------------------------------------------------------------------------*
DW$L$_modpow$54$B:
           CALL    .S1     _internal_mod     ; |320| 
           MV      .L2     B11,B4            ; |320| 
           ADDKPC  .S2     RL29,B3,0         ; |320| 
           MV      .L2X    A19,B6            ; |320| 
           ZERO    .D2     B8                ; |320| 

           ZERO    .L1     A8                ; |320| 
||         MV      .S1     A11,A6            ; |320| 
||         MV      .D1     A13,A4            ; |320| 

RL29:      ; CALL OCCURS {_internal_mod}     ; |320| 
DW$L$_modpow$54$E:
;** --------------------------------------------------------------------------*
DW$L$_modpow$55$B:

           LDHU    .D1T1   *A10,A3           ; |321| 
||         MVK     .L1     1,A31             ; |321| 
||         MV      .S1X    B12,A5            ; |322| 

           NOP             3
           LDW     .D2T1   *+SP(4),A19
           ADD     .L1     A3,A3,A3          ; |321| 
           SUB     .L1X    A3,B10,A3         ; |321| 
           ADD     .L1     A10,A3,A3         ; |321| 

           SHL     .S1     A31,A14,A3        ; |321| 
||         LDHU    .D1T1   *A3,A4            ; |321| 

           NOP             4
           AND     .L1     A3,A4,A0          ; |321| 

   [!A0]   BNOP    .S2     L134,1
|| [!A0]   MV      .L1     A5,A13            ; |322| 
|| [!A0]   MV      .L2X    A13,B12           ; |322| 
||         MV      .S1     A0,A1             ; guard predicate rewrite

   [!A1]   SUB     .D1     A14,1,A14         ; |330| 
|| [!A0]   CMPLT   .L1     A14,1,A0          ; |330| 
|| [ A0]   CALL    .S1     _internal_mul     ; |322| 

   [ A1]   MVK     .L1     0x1,A0            ; |330| nullify predicate
   [!A0]   BNOP    .S1     L133,1            ; |330| 
           ; BRANCHCC OCCURS {L134} 
DW$L$_modpow$55$E:
;** --------------------------------------------------------------------------*
DW$L$_modpow$56$B:
;**	-----------------------g30:
;** 322	-----------------------    internal_mul(U$64+b, n, a, (int)mlen);
;** 323	-----------------------    internal_mod(a, U$64, m, (int)mlen, NULL, 0);
           ADD     .L1X    A13,B11,A4        ; |322| 

           MV      .L1X    B12,A6            ; |322| 
||         MV      .L2X    A19,B6            ; |322| 
||         MV      .D2     B13,B4            ; |322| 
||         ADDKPC  .S2     RL30,B3,0         ; |322| 

RL30:      ; CALL OCCURS {_internal_mul}     ; |322| 
DW$L$_modpow$56$E:
;** --------------------------------------------------------------------------*
DW$L$_modpow$57$B:
           CALL    .S1     _internal_mod     ; |323| 
           MV      .L2     B11,B4            ; |323| 
           ADDKPC  .S2     RL31,B3,0         ; |323| 
           MV      .L2X    A19,B6            ; |323| 
           ZERO    .D2     B8                ; |323| 

           ZERO    .L1     A8                ; |323| 
||         MV      .S1     A11,A6            ; |323| 
||         MV      .D1X    B12,A4            ; |323| 

RL31:      ; CALL OCCURS {_internal_mod}     ; |323| 
           CMPLT   .L1     A14,1,A0          ; |330| 
   [!A0]   B       .S1     L133              ; |330| 
           SUB     .L1     A14,1,A14         ; |330| 
DW$L$_modpow$57$E:
;** --------------------------------------------------------------------------*
L134:    
DW$L$_modpow$58$B:
;**	-----------------------g31:
;** 330	-----------------------    if ( (--j) >= 0 ) goto g28;
;** 332	-----------------------    U$50 += 2;

   [!A0]   CALL    .S1     _internal_mul     ; |319| 
|| [!A0]   ADD     .L2     B12,B11,B4        ; |319| 
|| [!A0]   LDW     .D2T1   *+SP(4),A19       ; |319| 
|| [ A0]   ADD     .L1     1,A15,A15         ; |317| 
|| [ A0]   ADD     .S2     2,B10,B10         ; |332| 

   [ A0]   LDHU    .D1T1   *A10,A3           ; |317| 
	.dwpsn	"SSHBN.C",331,0
           NOP             2
           ; BRANCHCC OCCURS {L133}          ; |330| 
DW$L$_modpow$58$E:
;** --------------------------------------------------------------------------*
DW$L$_modpow$59$B:
;** 333	-----------------------    j = 15;
;** 317	-----------------------    if ( *exp > (++i) ) goto g27;
           NOP             1
           MVK     .L1     0xf,A14           ; |333| 
           CMPGT   .L1     A3,A15,A0         ; |317| 
   [ A0]   BNOP    .S1     L132,5            ; |317| 
           ; BRANCHCC OCCURS {L132}          ; |317| 
DW$L$_modpow$59$E:
;** --------------------------------------------------------------------------*
L135:    
;**	-----------------------g33:
;** 337	-----------------------    if ( !mshift ) goto g40;
           LDW     .D2T1   *+SP(12),A0
           LDW     .D2T2   *+SP(4),B5
           LDW     .D2T2   *+SP(16),B4
           NOP             2
   [!A0]   BNOP    .S1     L148,1            ; |337| 

           ADD     .L2     B4,B12,B5
||         SUB     .S2     B5,B11,B4         ; |338| 

           SUB     .S2     B5,2,B7
|| [ A0]   LDW     .D2T2   *+SP(4),B4
||         CMPLT   .L2     B4,0,B1           ; |338| 

   [!A0]   MVK     .L2     0x1,B1            ; |339| nullify predicate
   [!B1]   B       .S1     L141              ; |338| 
           ; BRANCHCC OCCURS {L148}          ; |337| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$110 = a+U$108-2;
;** 338	-----------------------    if ( mlen-U$64 >= 0 ) goto g37;
;**  	-----------------------    U$57 = 16-mshift;
;**  	-----------------------    U$99 = &a[mlen-1];
;** 339	-----------------------    L$8 = U$64-mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 131070, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVK     .S1     16,A4
           SUB     .L1     A4,A0,A8

           ADDAH   .D2     B12,B4,B5
||         SUB     .L2     B11,B4,B0         ; |339| 

           CMPGT   .L2     B0,4,B1
           SUB     .L1X    B5,2,A6
           ; BRANCHCC OCCURS {L141}          ; |338| 
;** --------------------------------------------------------------------------*
   [ B1]   BNOP    .S1     L137,5
           ; BRANCHCC OCCURS {L137} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L136
;** --------------------------------------------------------------------------*
L136:    
DW$L$_modpow$63$B:
	.dwpsn	"SSHBN.C",339,0
;**	-----------------------g36:
;** 339	-----------------------    A$21 = *U$99<<mshift|U$99[1]>>U$57;
;** 339	-----------------------    *U$99++ = A$21;
;** 338	-----------------------    if ( --L$8 ) goto g36;

           LDHU    .D1T1   *A6,A5            ; |339| 
||         SUB     .L2     B0,1,B0           ; |338| 
||         MV      .L1     A0,A3             ; |339| 

           LDHU    .D1T1   *+A6(2),A4        ; |339| 
           NOP             1
   [ B0]   B       .S1     L136              ; |338| 
   [!B0]   B       .S1     L142
           SHL     .S1     A5,A3,A3          ; |339| 
           SHRU    .S1     A4,A8,A4          ; |339| 
           OR      .L1     A4,A3,A3          ; |339| 
           STH     .D1T1   A3,*A6++          ; |339| 
           ; BRANCHCC OCCURS {L136}          ; |338| 
DW$L$_modpow$63$E:
;** --------------------------------------------------------------------------*
           LDHU    .D2T2   *B7,B4            ; |340| 
           ; BRANCH OCCURS {L142} 
;** --------------------------------------------------------------------------*
L137:    

           MVC     .S2     CSR,B6
||         SUB     .L2     B0,3,B0

           AND     .L2     -2,B6,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 338
;*      Loop opening brace source line   : 339
;*      Loop closing brace source line   : 339
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 131070                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh10
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L138:    ; PIPED LOOP PROLOG
   [ B0]   BDEC    .S2     L139,B0           ; |338| (P) <0,5> 

           MV      .L2X    A6,B5
||         LDHU    .D1T1   *A6++,A3          ; |339| (P) <0,0> 

           LDHU    .D1T1   *A6,A3            ; |339| (P) <0,1> 
|| [ B0]   BDEC    .S2     L139,B0           ; |338| (P) <1,5> 

	.dwpsn	"SSHBN.C",338,0

           MV      .L1     A0,A9
||         MVK     .S1     0x3,A0            ; init prolog collapse predicate
||         LDHU    .D1T1   *A6++,A3          ; |339| (P) <1,0> 

;** --------------------------------------------------------------------------*
L139:    ; PIPED LOOP KERNEL
DW$L$_modpow$67$B:
	.dwpsn	"SSHBN.C",339,0

           MV      .L2X    A5,B4             ; |339| <0,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |339| <1,7> 
||         SHL     .S1     A3,A9,A7          ; |339| <2,5> 
|| [ B0]   BDEC    .S2     L139,B0           ; |338| <2,5> 
||         LDHU    .D1T1   *A6,A3            ; |339| <4,1> 

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D2T2   B4,*B5++          ; |339| <0,10> 
||         SHRU    .S1     A3,A8,A4          ; |339| <2,6> 
||         LDHU    .D1T1   *A6++,A3          ; |339| <5,0> 

DW$L$_modpow$67$E:
;** --------------------------------------------------------------------------*
L140:    ; PIPED LOOP EPILOG

           MV      .L2X    A5,B4             ; |339| (E) <1,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |339| (E) <2,7> 
||         LDHU    .D1T1   *A6,A3            ; |339| (E) <5,1> 
||         SHL     .S1     A3,A9,A7          ; |339| (E) <3,5> 

           STH     .D2T2   B4,*B5++          ; |339| (E) <1,10> 
||         SHRU    .S1     A3,A8,A4          ; |339| (E) <3,6> 

           MV      .L2X    A5,B4             ; |339| (E) <2,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |339| (E) <3,7> 
||         SHL     .S1     A3,A9,A7          ; |339| (E) <4,5> 

           SHRU    .S1     A3,A8,A4          ; |339| (E) <4,6> 
||         STH     .D2T2   B4,*B5++          ; |339| (E) <2,10> 

           MVC     .S2     B6,CSR            ; interrupts on
||         MV      .L2X    A5,B4             ; |339| (E) <3,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |339| (E) <4,7> 
||         SHL     .S1     A3,A9,A7          ; |339| (E) <5,5> 

;** --------------------------------------------------------------------------*
           SHRU    .S1     A3,A8,A4          ; |339| (E) <5,6> 

           OR      .L1     A4,A7,A5          ; |339| (E) <5,7> 
||         MV      .L2X    A5,B4             ; |339| (E) <4,9> Define a twin register
||         STH     .D2T2   B4,*B5++          ; |339| (E) <3,10> 

           STH     .D2T2   B4,*B5++          ; |339| (E) <4,10> 
           MV      .L2X    A5,B4             ; |339| (E) <5,9> Define a twin register
           STH     .D2T2   B4,*B5++          ; |339| (E) <5,10> 
           STW     .D2T1   A9,*+SP(12)
;** --------------------------------------------------------------------------*
L141:    
           LDHU    .D2T2   *B7,B4            ; |340| 
;** --------------------------------------------------------------------------*
L142:    
;**	-----------------------g37:
;** 340	-----------------------    *U$110 = *U$110<<mshift;
;** 341	-----------------------    internal_mod(a, U$64, m, (int)mlen, NULL, 0);
;** 342	-----------------------    C$16 = U$64-1;
;** 342	-----------------------    if ( C$16 < mlen ) goto g40;
;**  	-----------------------    U$57 = 16-mshift;
;**  	-----------------------    U$99 = &a[C$16];
;** 343	-----------------------    L$9 = U$64-mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 131070, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D2T1   *+SP(12),A10

           CALL    .S1     _internal_mod     ; |341| 
||         LDW     .D2T1   *+SP(4),A14       ; |340| 

           ZERO    .S2     B8                ; |341| 
           ADDKPC  .S2     RL32,B3,0         ; |341| 
           ZERO    .L1     A8                ; |341| 

           MV      .L2     B11,B4            ; |341| 
||         SHL     .S1X    B4,A10,A3         ; |340| 

           MV      .L2X    A14,B6            ; |341| 
||         STH     .D2T1   A3,*B7            ; |340| 
||         MV      .S1X    B12,A4            ; |341| 
||         MV      .D1     A11,A6            ; |341| 

RL32:      ; CALL OCCURS {_internal_mod}     ; |341| 
;** --------------------------------------------------------------------------*

           SUB     .L2     B11,1,B4          ; |342| 
||         SUB     .S2X    B11,A14,B0        ; |343| 
||         MVK     .S1     16,A3

           CMPLT   .L2X    B4,A14,B1         ; |342| 
||         ADDAH   .D2     B12,B4,B5
||         SUB     .L1     A3,A10,A8

           MV      .L2     B1,B2             ; guard predicate rewrite

           MV      .L1X    B1,A0             ; |342| branch predicate copy
|| [!B1]   CMPGT   .L2     B0,4,B1
|| [ B1]   B       .S1     L149              ; |342| 

   [ B2]   ZERO    .L2     B1                ; nullify predicate
||         MV      .L1X    B5,A6             ; Define a twin register
|| [ A0]   CALL    .S1     _newbn            ; |347| 
|| [ A0]   LDHU    .D1T1   *A12,A4           ; |347| 

   [ B1]   BNOP    .S1     L144,3
           ; BRANCHCC OCCURS {L149}          ; |342| 
;** --------------------------------------------------------------------------*
           NOP             2
           ; BRANCHCC OCCURS {L144} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L143
;** --------------------------------------------------------------------------*
L143:    
DW$L$_modpow$74$B:
	.dwpsn	"SSHBN.C",343,0
;**	-----------------------g39:
;** 343	-----------------------    A$20 = *U$99>>mshift|U$99[-1]<<U$57;
;** 343	-----------------------    *U$99-- = A$20;
;** 342	-----------------------    if ( --L$9 ) goto g39;

           LDHU    .D1T1   *A6,A4            ; |343| 
||         SUB     .L2     B0,1,B0           ; |342| 
||         MV      .L1     A10,A3            ; |343| 

           LDHU    .D1T1   *-A6(2),A5        ; |343| 
           NOP             1
   [ B0]   B       .S1     L143              ; |342| 
   [!B0]   B       .S1     L148
           SHRU    .S1     A4,A3,A3          ; |343| 
           SHL     .S1     A5,A8,A4          ; |343| 
           OR      .L1     A4,A3,A3          ; |343| 
           STH     .D1T1   A3,*A6--          ; |343| 
           ; BRANCHCC OCCURS {L143}          ; |342| 
DW$L$_modpow$74$E:
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCH OCCURS {L148} 
;** --------------------------------------------------------------------------*
L144:    

           MVC     .S2     CSR,B6
||         SUB     .L2     B0,3,B0

           AND     .L2     -2,B6,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 342
;*      Loop opening brace source line   : 343
;*      Loop closing brace source line   : 343
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 131070                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh10
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L145:    ; PIPED LOOP PROLOG
   [ B0]   BDEC    .S2     L146,B0           ; |342| (P) <0,5> 
           LDHU    .D1T1   *A6--,A3          ; |343| (P) <0,0> 

           LDHU    .D1T1   *A6,A3            ; |343| (P) <0,1> 
|| [ B0]   BDEC    .S2     L146,B0           ; |342| (P) <1,5> 

	.dwpsn	"SSHBN.C",342,0

           MV      .L1     A10,A9
||         MVK     .S1     0x3,A0            ; init prolog collapse predicate
||         LDHU    .D1T1   *A6--,A3          ; |343| (P) <1,0> 

;** --------------------------------------------------------------------------*
L146:    ; PIPED LOOP KERNEL
DW$L$_modpow$78$B:
	.dwpsn	"SSHBN.C",343,0

           MV      .L2X    A5,B4             ; |343| <0,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |343| <1,7> 
||         SHRU    .S1     A3,A9,A7          ; |343| <2,5> 
|| [ B0]   BDEC    .S2     L146,B0           ; |342| <2,5> 
||         LDHU    .D1T1   *A6,A3            ; |343| <4,1> 

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D2T2   B4,*B5--          ; |343| <0,10> 
||         SHL     .S1     A3,A8,A4          ; |343| <2,6> 
||         LDHU    .D1T1   *A6--,A3          ; |343| <5,0> 

DW$L$_modpow$78$E:
;** --------------------------------------------------------------------------*
L147:    ; PIPED LOOP EPILOG

           MV      .L2X    A5,B4             ; |343| (E) <1,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |343| (E) <2,7> 
||         LDHU    .D1T1   *A6,A3            ; |343| (E) <5,1> 
||         SHRU    .S1     A3,A9,A7          ; |343| (E) <3,5> 

           STH     .D2T2   B4,*B5--          ; |343| (E) <1,10> 
||         SHL     .S1     A3,A8,A4          ; |343| (E) <3,6> 

           MV      .L2X    A5,B4             ; |343| (E) <2,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |343| (E) <3,7> 
||         SHRU    .S1     A3,A9,A7          ; |343| (E) <4,5> 

           SHL     .S1     A3,A8,A4          ; |343| (E) <4,6> 
||         STH     .D2T2   B4,*B5--          ; |343| (E) <2,10> 

           MVC     .S2     B6,CSR            ; interrupts on
||         MV      .L2X    A5,B4             ; |343| (E) <3,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |343| (E) <4,7> 
||         SHRU    .S1     A3,A9,A7          ; |343| (E) <5,5> 

;** --------------------------------------------------------------------------*
           SHL     .S1     A3,A8,A4          ; |343| (E) <5,6> 

           OR      .L1     A4,A7,A5          ; |343| (E) <5,7> 
||         MV      .L2X    A5,B4             ; |343| (E) <4,9> Define a twin register
||         STH     .D2T2   B4,*B5--          ; |343| (E) <3,10> 

           STH     .D2T2   B4,*B5--          ; |343| (E) <4,10> 
           MV      .L2X    A5,B4             ; |343| (E) <5,9> Define a twin register
           STH     .D2T2   B4,*B5--          ; |343| (E) <5,10> 
;** --------------------------------------------------------------------------*
L148:    

           CALL    .S1     _newbn            ; |347| 
||         LDHU    .D1T1   *A12,A4           ; |347| 

           NOP             4
;** --------------------------------------------------------------------------*
L149:    
;**	-----------------------g40:
;** 347	-----------------------    result = newbn((int)*mod);
;** 348	-----------------------    if ( !mlen ) goto g43;
;**  	-----------------------    U$161 = a+U$64;
;**  	-----------------------    L$10 = (int)mlen;
;**  	-----------------------    U$50 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDKPC  .S2     RL33,B3,0         ; |347| 
RL33:      ; CALL OCCURS {_newbn}            ; |347| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A0        ; |347| 
||         MV      .L1     A4,A10            ; |347| 
||         ZERO    .L2     B6
||         ADD     .S2     B11,B12,B4

           NOP             4

   [!A0]   BNOP    .S1     L153,5            ; |348| 
|| [ A0]   MV      .L1X    B6,A4
||         MV      .L2X    A0,B5

           ; BRANCHCC OCCURS {L153}          ; |348| 
;** --------------------------------------------------------------------------*
;**	-----------------------g42:
;** 349	-----------------------    *(*result*2-U$50+result) = *U$161++;
;** 348	-----------------------    U$50 += 2;
;** 348	-----------------------    if ( --L$10 ) goto g42;

           MVC     .S2     CSR,B6
||         SUB     .L2     B5,1,B0
||         MV      .L1     A10,A5

           AND     .L2     -2,B6,B5
           MVC     .S2     B5,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 348
;*      Loop opening brace source line   : 349
;*      Loop closing brace source line   : 349
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     3*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L150:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L151:    ; PIPED LOOP KERNEL
DW$L$_modpow$86$B:
	.dwpsn	"SSHBN.C",349,0

           LDHU    .D2T2   *B4++,B5          ; |349| <0,0> 
||         LDHU    .D1T1   *A5,A3            ; |349| <0,0>  ^ 

           NOP             2
   [ B0]   BDEC    .S2     L151,B0           ; |348| <0,3> 
           NOP             1
           ADD     .L1     A3,A3,A3          ; |349| <0,5>  ^ 
           SUB     .L1     A3,A4,A3          ; |349| <0,6>  ^ 
           ADD     .L1     A5,A3,A3          ; |349| <0,7>  ^ 

           ADD     .L1     2,A4,A4           ; |348| <0,8> 
||         STH     .D1T2   B5,*A3            ; |349| <0,8>  ^ 

DW$L$_modpow$86$E:
;** --------------------------------------------------------------------------*
L152:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1     A5,A10
||         MVC     .S2     B6,CSR            ; interrupts on

;** --------------------------------------------------------------------------*
L153:    
;**	-----------------------g43:
;** 350	-----------------------    if ( (C$15 = *result) < 2 ) goto g47;
;**  	-----------------------    V$2 = C$15;
;** 350	-----------------------    L$11 = V$2-1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65534, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
           LDHU    .D1T1   *A10,A3           ; |350| 
           NOP             4

           SUB     .S1     A3,1,A4           ; |350| 
||         MV      .L2X    A3,B5
||         CMPLTU  .L1     A3,2,A0           ; |350| 

   [ A0]   BNOP    .S1     L157,5            ; |350| 
           ; BRANCHCC OCCURS {L157}          ; |350| 
;** --------------------------------------------------------------------------*
;**	-----------------------g45:
;** 350	-----------------------    if ( result[V$2] ) goto g47;
;** 351	-----------------------    *result = C$14 = (unsigned short)(V$2-1);
;** 351	-----------------------    V$2 = C$14;
;** 351	-----------------------    if ( --L$11 ) goto g45;

           MVC     .S2     CSR,B8
||         MV      .L2X    A10,B4
||         MVK     .L1     0x1,A0

           AND     .L2     -2,B8,B7
           MVC     .S2     B7,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 350
;*      Loop opening brace source line   : 351
;*      Loop closing brace source line   : 351
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     2*       0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L154:    ; PIPED LOOP PROLOG
   [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |350| (P) <0,0>  ^ 
           NOP             1
           SUB     .L1X    B5,1,A5           ; |351| (P) <0,2> 
           EXTU    .S1     A5,16,16,A3       ; |351| (P) <0,3> 

           MV      .L2X    A4,B6
||         MV      .L1     A10,A4
|| [!A0]   MVK     .S2     0x1,B1            ; (P) <0,4> 

	.dwpsn	"SSHBN.C",350,0

   [!B1]   MV      .L2X    A3,B5             ; |351| (P) <0,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |351| (P) <0,5>  ^ 
|| [!B1]   STH     .D1T1   A5,*A4            ; |351| (P) <0,5> 

;** --------------------------------------------------------------------------*
L155:    ; PIPED LOOP KERNEL
DW$L$_modpow$92$B:
	.dwpsn	"SSHBN.C",351,0
           CMPEQ   .L2     B6,0,B7           ; |351| <0,6>  ^ 
           OR      .L2     B7,B1,B0          ; |351| <0,7>  ^ 
   [ B0]   ZERO    .L1     A0                ; |351| <0,8>  ^ 

   [ A0]   BNOP    .S1     L155,1            ; |351| <0,9> 
|| [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |350| <1,0>  ^ 

           SUB     .L1X    B5,1,A5           ; |351| <1,2> 
           EXTU    .S1     A5,16,16,A3       ; |351| <1,3> 
   [!A0]   MVK     .L2     0x1,B1            ; <1,4> 

   [!B1]   MV      .L2X    A3,B5             ; |351| <1,5> 
|| [!B1]   STH     .D1T1   A5,*A4            ; |351| <1,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |351| <1,5>  ^ 

DW$L$_modpow$92$E:
;** --------------------------------------------------------------------------*
L156:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A10
||         MVC     .S2     B8,CSR            ; interrupts on

;** --------------------------------------------------------------------------*
L157:    
;**	-----------------------g47:
;** 354	-----------------------    if ( !mlen ) goto g50;
;** 355	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    K$98 = 0u;
;**  	-----------------------    U$99 = a;
;** 355	-----------------------    L$12 = U$64>>1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65535, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)

           LDW     .D2T1   *+SP(4),A0
||         SHR     .S2     B11,1,B5          ; |355| 
||         MV      .L2     B12,B4
||         ZERO    .L1     A3

           NOP             4

   [!A0]   BNOP    .S1     L161,5            ; |354| 
|| [ A0]   SUB     .L1X    B5,1,A0

           ; BRANCHCC OCCURS {L161}          ; |354| 
;**	-----------------------g49:
;** 355	-----------------------    _mem4((void *)U$99) = K$98;
;** 354	-----------------------    U$99 += 2;
;** 354	-----------------------    if ( --L$12 ) goto g49;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 354
;*      Loop opening brace source line   : 355
;*      Loop closing brace source line   : 355
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65535                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L158:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L159,A0           ; |354| (P) <0,0> 
   [ A0]   BDEC    .S1     L159,A0           ; |354| (P) <1,0> 
   [ A0]   BDEC    .S1     L159,A0           ; |354| (P) <2,0> 
   [ A0]   BDEC    .S1     L159,A0           ; |354| (P) <3,0> 
	.dwpsn	"SSHBN.C",354,0

           MV      .L2X    A3,B5
|| [ A0]   BDEC    .S1     L159,A0           ; |354| (P) <4,0> 

;** --------------------------------------------------------------------------*
L159:    ; PIPED LOOP KERNEL
DW$L$_modpow$97$B:
	.dwpsn	"SSHBN.C",355,0

           STNW    .D2T2   B5,*B4++(4)       ; |355| <0,5> 
|| [ A0]   BDEC    .S1     L159,A0           ; |354| <5,0> 

DW$L$_modpow$97$E:
;** --------------------------------------------------------------------------*
L160:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L161:    
;**	-----------------------g50:
;** 356	-----------------------    safefree((void *)a);
;** 357	-----------------------    if ( !mlen ) goto g53;
;** 358	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    K$98 = 0u;
;**  	-----------------------    U$188 = b;
;** 358	-----------------------    L$13 = U$64>>1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65535, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
           CALL    .S1     _safefree         ; |356| 
           ADDKPC  .S2     RL34,B3,3         ; |356| 
           MV      .L1X    B12,A4            ; |356| 
RL34:      ; CALL OCCURS {_safefree}         ; |356| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A0
||         SHR     .S2     B11,1,B6          ; |358| 
||         MV      .L2X    A13,B5

           NOP             3
           ZERO    .L2     B4

   [!A0]   BNOP    .S1     L165,5            ; |357| 
|| [ A0]   SUB     .L1X    B6,1,A0

           ; BRANCHCC OCCURS {L165}          ; |357| 
;**	-----------------------g52:
;** 358	-----------------------    _mem4((void *)U$188) = K$98;
;** 357	-----------------------    U$188 += 2;
;** 357	-----------------------    if ( --L$13 ) goto g52;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 357
;*      Loop opening brace source line   : 358
;*      Loop closing brace source line   : 358
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65535                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L162:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L163,A0           ; |357| (P) <0,0> 
   [ A0]   BDEC    .S1     L163,A0           ; |357| (P) <1,0> 
   [ A0]   BDEC    .S1     L163,A0           ; |357| (P) <2,0> 
   [ A0]   BDEC    .S1     L163,A0           ; |357| (P) <3,0> 
	.dwpsn	"SSHBN.C",357,0
   [ A0]   BDEC    .S1     L163,A0           ; |357| (P) <4,0> 
;** --------------------------------------------------------------------------*
L163:    ; PIPED LOOP KERNEL
DW$L$_modpow$102$B:
	.dwpsn	"SSHBN.C",358,0

           STNW    .D2T2   B4,*B5++(4)       ; |358| <0,5> 
|| [ A0]   BDEC    .S1     L163,A0           ; |357| <5,0> 

DW$L$_modpow$102$E:
;** --------------------------------------------------------------------------*
L164:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L165:    
;**	-----------------------g53:
;** 359	-----------------------    safefree((void *)b);
;** 360	-----------------------    if ( !mlen ) goto g56;
;**  	-----------------------    U$51 = m;
;**  	-----------------------    K$77 = 0;
;** 361	-----------------------    L$14 = (int)mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _safefree         ; |359| 
           ADDKPC  .S2     RL35,B3,3         ; |359| 
           MV      .L1     A13,A4            ; |359| 
RL35:      ; CALL OCCURS {_safefree}         ; |359| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A0        ; |359| 
||         ZERO    .L1     A4
||         MV      .L2X    A11,B5

           NOP             4

   [!A0]   BNOP    .S1     L169,4            ; |360| 
||         MV      .L1     A0,A3             ; |361| 

   [ A0]   SUB     .L1     A3,1,A0
           ; BRANCHCC OCCURS {L169}          ; |360| 
;**	-----------------------g55:
;** 361	-----------------------    *U$51++ = K$77;
;** 360	-----------------------    if ( --L$14 ) goto g55;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 360
;*      Loop opening brace source line   : 361
;*      Loop closing brace source line   : 361
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L166:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L167,A0           ; |360| (P) <0,0> 
   [ A0]   BDEC    .S1     L167,A0           ; |360| (P) <1,0> 
   [ A0]   BDEC    .S1     L167,A0           ; |360| (P) <2,0> 
   [ A0]   BDEC    .S1     L167,A0           ; |360| (P) <3,0> 
	.dwpsn	"SSHBN.C",360,0

           MV      .L2X    A4,B4
|| [ A0]   BDEC    .S1     L167,A0           ; |360| (P) <4,0> 

;** --------------------------------------------------------------------------*
L167:    ; PIPED LOOP KERNEL
DW$L$_modpow$107$B:
	.dwpsn	"SSHBN.C",361,0

           STH     .D2T2   B4,*B5++          ; |361| <0,5> 
|| [ A0]   BDEC    .S1     L167,A0           ; |360| <5,0> 

DW$L$_modpow$107$E:
;** --------------------------------------------------------------------------*
L168:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L169:    
;**	-----------------------g56:
;** 362	-----------------------    safefree((void *)m);
;** 363	-----------------------    if ( !mlen ) goto g59;
;**  	-----------------------    K$77 = 0;
;**  	-----------------------    U$199 = n;
;** 364	-----------------------    L$15 = (int)mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _safefree         ; |362| 
           ADDKPC  .S2     RL36,B3,3         ; |362| 
           MV      .L1     A11,A4            ; |362| 
RL36:      ; CALL OCCURS {_safefree}         ; |362| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A0        ; |362| 
||         MV      .L2     B13,B5
||         ZERO    .L1     A4

           NOP             4

   [!A0]   BNOP    .S1     L173,4            ; |363| 
||         MV      .L1     A0,A3             ; |364| 

   [ A0]   SUB     .L1     A3,1,A0
           ; BRANCHCC OCCURS {L173}          ; |363| 
;**	-----------------------g58:
;** 364	-----------------------    *U$199++ = K$77;
;** 363	-----------------------    if ( --L$15 ) goto g58;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 363
;*      Loop opening brace source line   : 364
;*      Loop closing brace source line   : 364
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L170:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L171,A0           ; |363| (P) <0,0> 
   [ A0]   BDEC    .S1     L171,A0           ; |363| (P) <1,0> 
   [ A0]   BDEC    .S1     L171,A0           ; |363| (P) <2,0> 
   [ A0]   BDEC    .S1     L171,A0           ; |363| (P) <3,0> 
	.dwpsn	"SSHBN.C",363,0

           MV      .L2X    A4,B4
|| [ A0]   BDEC    .S1     L171,A0           ; |363| (P) <4,0> 

;** --------------------------------------------------------------------------*
L171:    ; PIPED LOOP KERNEL
DW$L$_modpow$112$B:
	.dwpsn	"SSHBN.C",364,0

           STH     .D2T2   B4,*B5++          ; |364| <0,5> 
|| [ A0]   BDEC    .S1     L171,A0           ; |363| <5,0> 

DW$L$_modpow$112$E:
;** --------------------------------------------------------------------------*
L172:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L173:    
;**	-----------------------g59:
;** 365	-----------------------    safefree((void *)n);
;** 94	-----------------------    memset(base, 0, ((unsigned)*base+1u)*2u);  // [10]
;** 95	-----------------------    safefree(base);  // [10]
;** 95	-----------------------    return result;  // [10]
           CALL    .S1     _safefree         ; |365| 
           ADDKPC  .S2     RL37,B3,3         ; |365| 
           MV      .L1X    B13,A4            ; |365| 
RL37:      ; CALL OCCURS {_safefree}         ; |365| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(8),A4        ; |365| 
           NOP             3
           ZERO    .L2     B4                ; |94| 
           LDHU    .D1T1   *A4,A3            ; |94| 
           CALL    .S1     _memset           ; |94| 
           MV      .S1     A4,A11            ; |94| 
           ADDKPC  .S2     RL38,B3,1         ; |94| 
           ADD     .L1     1,A3,A3           ; |94| 
           ADD     .L1     A3,A3,A6          ; |94| 
RL38:      ; CALL OCCURS {_memset}           ; |94| 
           CALL    .S1     _safefree         ; |95| 
           MV      .L1     A11,A4            ; |95| 
           ADDKPC  .S2     RL39,B3,3         ; |95| 
RL39:      ; CALL OCCURS {_safefree}         ; |95| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(44),B3       ; |370| 
           MV      .L1X    SP,A31            ; |370| 
           LDDW    .D1T1   *+A31(32),A13:A12 ; |370| 
           LDW     .D1T1   *+A31(40),A14     ; |370| 
           LDDW    .D2T2   *+SP(56),B13:B12  ; |370| 

           RET     .S2     B3                ; |370| 
||         LDDW    .D1T1   *+A31(24),A11:A10 ; |370| 
||         LDDW    .D2T2   *+SP(48),B11:B10  ; |370| 
||         MV      .L1     A10,A4            ; |95| 

           LDW     .D2T1   *++SP(64),A15     ; |370| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |370| 
;** --------------------------------------------------------------------------*
L174:    
DW$L$_modpow$117$B:
;**	-----------------------g60:
;** 311	-----------------------    ++i;
;** 312	-----------------------    j = 15;
;** 312	-----------------------    goto g22;

           MV      .L1X    B4,A4
||         MV      .S1     A15,A7

	.dwpsn	"SSHBN.C",370,1
           ADD     .L1X    B4,A4,A3          ; |308| 
           ; BRANCH OCCURS {L128}            ; |312| 
DW$L$_modpow$117$E:

DW$148	.dwtag  DW_TAG_loop
	.dwattr DW$148, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L171:1:1297920382")
	.dwattr DW$148, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$148, DW_AT_begin_line(0x16b)
	.dwattr DW$148, DW_AT_end_line(0x16c)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$_modpow$112$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$_modpow$112$E)
	.dwendtag DW$148


DW$150	.dwtag  DW_TAG_loop
	.dwattr DW$150, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L167:1:1297920382")
	.dwattr DW$150, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$150, DW_AT_begin_line(0x168)
	.dwattr DW$150, DW_AT_end_line(0x169)
DW$151	.dwtag  DW_TAG_loop_range
	.dwattr DW$151, DW_AT_low_pc(DW$L$_modpow$107$B)
	.dwattr DW$151, DW_AT_high_pc(DW$L$_modpow$107$E)
	.dwendtag DW$150


DW$152	.dwtag  DW_TAG_loop
	.dwattr DW$152, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L163:1:1297920382")
	.dwattr DW$152, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$152, DW_AT_begin_line(0x165)
	.dwattr DW$152, DW_AT_end_line(0x166)
DW$153	.dwtag  DW_TAG_loop_range
	.dwattr DW$153, DW_AT_low_pc(DW$L$_modpow$102$B)
	.dwattr DW$153, DW_AT_high_pc(DW$L$_modpow$102$E)
	.dwendtag DW$152


DW$154	.dwtag  DW_TAG_loop
	.dwattr DW$154, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L159:1:1297920382")
	.dwattr DW$154, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$154, DW_AT_begin_line(0x162)
	.dwattr DW$154, DW_AT_end_line(0x163)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_modpow$97$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_modpow$97$E)
	.dwendtag DW$154


DW$156	.dwtag  DW_TAG_loop
	.dwattr DW$156, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L155:1:1297920382")
	.dwattr DW$156, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$156, DW_AT_begin_line(0x15e)
	.dwattr DW$156, DW_AT_end_line(0x15f)
DW$157	.dwtag  DW_TAG_loop_range
	.dwattr DW$157, DW_AT_low_pc(DW$L$_modpow$92$B)
	.dwattr DW$157, DW_AT_high_pc(DW$L$_modpow$92$E)
	.dwendtag DW$156


DW$158	.dwtag  DW_TAG_loop
	.dwattr DW$158, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L151:1:1297920382")
	.dwattr DW$158, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$158, DW_AT_begin_line(0x15c)
	.dwattr DW$158, DW_AT_end_line(0x15d)
DW$159	.dwtag  DW_TAG_loop_range
	.dwattr DW$159, DW_AT_low_pc(DW$L$_modpow$86$B)
	.dwattr DW$159, DW_AT_high_pc(DW$L$_modpow$86$E)
	.dwendtag DW$158


DW$160	.dwtag  DW_TAG_loop
	.dwattr DW$160, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L146:1:1297920382")
	.dwattr DW$160, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$160, DW_AT_begin_line(0x156)
	.dwattr DW$160, DW_AT_end_line(0x157)
DW$161	.dwtag  DW_TAG_loop_range
	.dwattr DW$161, DW_AT_low_pc(DW$L$_modpow$78$B)
	.dwattr DW$161, DW_AT_high_pc(DW$L$_modpow$78$E)
	.dwendtag DW$160


DW$162	.dwtag  DW_TAG_loop
	.dwattr DW$162, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L143:1:1297920382")
	.dwattr DW$162, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$162, DW_AT_begin_line(0x156)
	.dwattr DW$162, DW_AT_end_line(0x157)
DW$163	.dwtag  DW_TAG_loop_range
	.dwattr DW$163, DW_AT_low_pc(DW$L$_modpow$74$B)
	.dwattr DW$163, DW_AT_high_pc(DW$L$_modpow$74$E)
	.dwendtag DW$162


DW$164	.dwtag  DW_TAG_loop
	.dwattr DW$164, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L139:1:1297920382")
	.dwattr DW$164, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$164, DW_AT_begin_line(0x152)
	.dwattr DW$164, DW_AT_end_line(0x153)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$_modpow$67$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$_modpow$67$E)
	.dwendtag DW$164


DW$166	.dwtag  DW_TAG_loop
	.dwattr DW$166, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L136:1:1297920382")
	.dwattr DW$166, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$166, DW_AT_begin_line(0x152)
	.dwattr DW$166, DW_AT_end_line(0x153)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_modpow$63$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_modpow$63$E)
	.dwendtag DW$166


DW$168	.dwtag  DW_TAG_loop
	.dwattr DW$168, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L132:1:1297920382")
	.dwattr DW$168, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$168, DW_AT_begin_line(0x13d)
	.dwattr DW$168, DW_AT_end_line(0x14d)
DW$169	.dwtag  DW_TAG_loop_range
	.dwattr DW$169, DW_AT_low_pc(DW$L$_modpow$52$B)
	.dwattr DW$169, DW_AT_high_pc(DW$L$_modpow$52$E)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$_modpow$59$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$_modpow$59$E)

DW$171	.dwtag  DW_TAG_loop
	.dwattr DW$171, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L133:2:1297920382")
	.dwattr DW$171, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$171, DW_AT_begin_line(0x13e)
	.dwattr DW$171, DW_AT_end_line(0x14b)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_modpow$53$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_modpow$53$E)
DW$173	.dwtag  DW_TAG_loop_range
	.dwattr DW$173, DW_AT_low_pc(DW$L$_modpow$56$B)
	.dwattr DW$173, DW_AT_high_pc(DW$L$_modpow$56$E)
DW$174	.dwtag  DW_TAG_loop_range
	.dwattr DW$174, DW_AT_low_pc(DW$L$_modpow$54$B)
	.dwattr DW$174, DW_AT_high_pc(DW$L$_modpow$54$E)
DW$175	.dwtag  DW_TAG_loop_range
	.dwattr DW$175, DW_AT_low_pc(DW$L$_modpow$55$B)
	.dwattr DW$175, DW_AT_high_pc(DW$L$_modpow$55$E)
DW$176	.dwtag  DW_TAG_loop_range
	.dwattr DW$176, DW_AT_low_pc(DW$L$_modpow$57$B)
	.dwattr DW$176, DW_AT_high_pc(DW$L$_modpow$57$E)
DW$177	.dwtag  DW_TAG_loop_range
	.dwattr DW$177, DW_AT_low_pc(DW$L$_modpow$58$B)
	.dwattr DW$177, DW_AT_high_pc(DW$L$_modpow$58$E)
	.dwendtag DW$171

	.dwendtag DW$168


DW$178	.dwtag  DW_TAG_loop
	.dwattr DW$178, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L128:1:1297920382")
	.dwattr DW$178, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$178, DW_AT_begin_line(0x134)
	.dwattr DW$178, DW_AT_end_line(0x172)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$_modpow$46$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$_modpow$46$E)
DW$180	.dwtag  DW_TAG_loop_range
	.dwattr DW$180, DW_AT_low_pc(DW$L$_modpow$50$B)
	.dwattr DW$180, DW_AT_high_pc(DW$L$_modpow$50$E)
DW$181	.dwtag  DW_TAG_loop_range
	.dwattr DW$181, DW_AT_low_pc(DW$L$_modpow$117$B)
	.dwattr DW$181, DW_AT_high_pc(DW$L$_modpow$117$E)

DW$182	.dwtag  DW_TAG_loop
	.dwattr DW$182, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L130:2:1297920382")
	.dwattr DW$182, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$182, DW_AT_begin_line(0x134)
	.dwattr DW$182, DW_AT_end_line(0x136)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$_modpow$48$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$_modpow$48$E)
	.dwendtag DW$182

	.dwendtag DW$178


DW$184	.dwtag  DW_TAG_loop
	.dwattr DW$184, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L125:1:1297920382")
	.dwattr DW$184, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$184, DW_AT_begin_line(0x12d)
	.dwattr DW$184, DW_AT_end_line(0x12e)
DW$185	.dwtag  DW_TAG_loop_range
	.dwattr DW$185, DW_AT_low_pc(DW$L$_modpow$42$B)
	.dwattr DW$185, DW_AT_high_pc(DW$L$_modpow$42$E)
	.dwendtag DW$184


DW$186	.dwtag  DW_TAG_loop
	.dwattr DW$186, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L121:1:1297920382")
	.dwattr DW$186, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$186, DW_AT_begin_line(0x127)
	.dwattr DW$186, DW_AT_end_line(0x128)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$_modpow$35$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$_modpow$35$E)
	.dwendtag DW$186


DW$188	.dwtag  DW_TAG_loop
	.dwattr DW$188, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L117:1:1297920382")
	.dwattr DW$188, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$188, DW_AT_begin_line(0x125)
	.dwattr DW$188, DW_AT_end_line(0x126)
DW$189	.dwtag  DW_TAG_loop_range
	.dwattr DW$189, DW_AT_low_pc(DW$L$_modpow$30$B)
	.dwattr DW$189, DW_AT_high_pc(DW$L$_modpow$30$E)
	.dwendtag DW$188


DW$190	.dwtag  DW_TAG_loop
	.dwattr DW$190, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L111:1:1297920382")
	.dwattr DW$190, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$190, DW_AT_begin_line(0x11d)
	.dwattr DW$190, DW_AT_end_line(0x11e)
DW$191	.dwtag  DW_TAG_loop_range
	.dwattr DW$191, DW_AT_low_pc(DW$L$_modpow$22$B)
	.dwattr DW$191, DW_AT_high_pc(DW$L$_modpow$22$E)
	.dwendtag DW$190


DW$192	.dwtag  DW_TAG_loop
	.dwattr DW$192, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L108:1:1297920382")
	.dwattr DW$192, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$192, DW_AT_begin_line(0x11d)
	.dwattr DW$192, DW_AT_end_line(0x11e)
DW$193	.dwtag  DW_TAG_loop_range
	.dwattr DW$193, DW_AT_low_pc(DW$L$_modpow$18$B)
	.dwattr DW$193, DW_AT_high_pc(DW$L$_modpow$18$E)
	.dwendtag DW$192


DW$194	.dwtag  DW_TAG_loop
	.dwattr DW$194, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L106:1:1297920382")
	.dwattr DW$194, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$194, DW_AT_begin_line(0x119)
	.dwattr DW$194, DW_AT_end_line(0x11b)
DW$195	.dwtag  DW_TAG_loop_range
	.dwattr DW$195, DW_AT_low_pc(DW$L$_modpow$13$B)
	.dwattr DW$195, DW_AT_high_pc(DW$L$_modpow$13$E)
	.dwendtag DW$194


DW$196	.dwtag  DW_TAG_loop
	.dwattr DW$196, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L102:1:1297920382")
	.dwattr DW$196, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$196, DW_AT_begin_line(0x115)
	.dwattr DW$196, DW_AT_end_line(0x116)
DW$197	.dwtag  DW_TAG_loop_range
	.dwattr DW$197, DW_AT_low_pc(DW$L$_modpow$8$B)
	.dwattr DW$197, DW_AT_high_pc(DW$L$_modpow$8$E)
	.dwendtag DW$196

	.dwattr DW$144, DW_AT_end_file("SSHBN.C")
	.dwattr DW$144, DW_AT_end_line(0x172)
	.dwattr DW$144, DW_AT_end_column(0x01)
	.dwendtag DW$144

	.sect	".text"
	.global	_modmul

DW$198	.dwtag  DW_TAG_subprogram, DW_AT_name("modmul"), DW_AT_symbol_name("_modmul")
	.dwattr DW$198, DW_AT_low_pc(_modmul)
	.dwattr DW$198, DW_AT_high_pc(0x00)
	.dwattr DW$198, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$198, DW_AT_begin_line(0x179)
	.dwattr DW$198, DW_AT_begin_column(0x08)
	.dwattr DW$198, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$198, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",378,1

;******************************************************************************
;* FUNCTION NAME: _modmul                                                     *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 44 Save = 44 byte                  *
;******************************************************************************
_modmul:
;** --------------------------------------------------------------------------*
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$199, DW_AT_type(*DW$T$40)
	.dwattr DW$199, DW_AT_location[DW_OP_reg4]
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_name("q"), DW_AT_symbol_name("_q")
	.dwattr DW$200, DW_AT_type(*DW$T$40)
	.dwattr DW$200, DW_AT_location[DW_OP_reg20]
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mod"), DW_AT_symbol_name("_mod")
	.dwattr DW$201, DW_AT_type(*DW$T$40)
	.dwattr DW$201, DW_AT_location[DW_OP_reg6]
;** 386	-----------------------    mlen = *mod;
;** 387	-----------------------    m = safemalloc((unsigned)mlen, 2u);
;** 388	-----------------------    if ( !mlen ) goto g4;
;**  	-----------------------    U$18 = m;
;**  	-----------------------    L$1 = (int)mlen;
;**  	-----------------------    U$14 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T1   A15,*SP--(48)     ; |378| 
||         MV      .L1X    SP,A31            ; |378| 

           MV      .L1     A6,A11            ; |378| 
||         STDW    .D1T1   A11:A10,*-A31(40)

           CALL    .S1     _safemalloc       ; |387| 
||         LDHU    .D1T1   *A11,A0           ; |386| 

           STDW    .D2T2   B13:B12,*+SP(40)
           STDW    .D2T2   B11:B10,*+SP(32)
           STDW    .D1T1   A13:A12,*-A31(32)

           MV      .L2X    A4,B13            ; |378| 
||         MV      .S2     B4,B12            ; |378| 
||         STW     .D2T2   B3,*+SP(28)

           ADDKPC  .S2     RL40,B3,0         ; |387| 
||         MV      .L2X    A0,B10            ; |386| 
||         MV      .L1     A0,A10            ; |387| 
||         MV      .S1     A0,A4             ; |387| 
||         STW     .D1T1   A14,*-A31(24)
||         MVK     .D2     0x2,B4            ; |387| 

RL40:      ; CALL OCCURS {_safemalloc}       ; |387| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A0
||         ZERO    .L2     B4
||         MV      .S1     A4,A12            ; |387| 

   [!A0]   BNOP    .S1     L178,3            ; |388| 
|| [!A0]   LDHU    .D1T2   *A12,B6
|| [!A0]   ZERO    .L2     B4                ; |392| 
|| [!A0]   MVKL    .S2     0x8000,B7

   [!A0]   MVKH    .S2     0x8000,B7
   [!A0]   SHL     .S2     B6,B4,B5          ; |394| (P) <0,0>  ^ 
           ; BRANCHCC OCCURS {L178}          ; |388| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 389	-----------------------    *U$18++ = *(*mod*2-U$14+mod);
;** 388	-----------------------    U$14 += 2;
;** 388	-----------------------    if ( --L$1 ) goto g3;

           MVC     .S2     CSR,B8
||         MV      .L2X    A4,B6
||         SUB     .L1     A10,1,A0

           AND     .L2     -2,B8,B7
||         MV      .S2X    A11,B5

           MVC     .S2     B7,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 388
;*      Loop opening brace source line   : 389
;*      Loop closing brace source line   : 389
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     0        3*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        3*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L175:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L176:    ; PIPED LOOP KERNEL
DW$L$_modmul$5$B:
	.dwpsn	"SSHBN.C",389,0
           LDHU    .D2T2   *B5,B7            ; |389| <0,0>  ^ 
           NOP             4
           ADD     .L2     B7,B7,B7          ; |389| <0,5>  ^ 
           SUB     .L2     B7,B4,B7          ; |389| <0,6>  ^ 
           ADD     .L2     B5,B7,B7          ; |389| <0,7>  ^ 

   [ A0]   BDEC    .S1     L176,A0           ; |388| <0,8> 
||         LDHU    .D2T2   *B7,B7            ; |389| <0,8>  ^ 

           NOP             4

           ADD     .L2     2,B4,B4           ; |388| <0,13> 
||         STH     .D2T2   B7,*B6++          ; |389| <0,13>  ^ 

DW$L$_modmul$5$E:
;** --------------------------------------------------------------------------*
L177:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           LDHU    .D1T2   *A12,B6
           MVKL    .S2     0x8000,B7
           MVC     .S2     B8,CSR            ; interrupts on
           MVKH    .S2     0x8000,B7
           ZERO    .L2     B4                ; |392| 
           SHL     .S2     B6,B4,B5          ; |394| (P) <0,0>  ^ 
;** --------------------------------------------------------------------------*
L178:    
;**	-----------------------g4:
;**  	-----------------------    U$27 = *m;
;**  	-----------------------    K$30 = 32768u;
;** 392	-----------------------    L$2 = 15;
;** 392	-----------------------    mshift = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 15, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g5:
;** 394	-----------------------    if ( (unsigned)U$27<<mshift&K$30 ) goto g7;
;** 392	-----------------------    ++mshift;
;** 392	-----------------------    if ( --L$2 ) goto g5;

           AND     .L2     B7,B5,B1          ; |394| (P) <0,1>  ^ 
||         MVK     .D2     0xf,B5            ; |392| 
||         MVC     .S2     CSR,B16
||         MVK     .L1     0x1,A0

   [!B1]   ADD     .L2     1,B4,B4           ; |392| (P) <0,2>  ^ 
|| [!B1]   MVK     .S2     14,B5             ; |392| 

           CMPEQ   .L2     B5,0,B9           ; |392| (P) <0,3>  ^ 
||         SHL     .S2     B6,B4,B8          ; |394| (P) <1,0>  ^ 

           OR      .L2     B9,B1,B0          ; |392| (P) <0,4>  ^ 
||         AND     .S2     B7,B8,B1          ; |394| (P) <1,1>  ^ 
||         AND     .D2     -2,B16,B8
||         MV      .L1X    B4,A3             ; |392| (P) <0,4> 

           MVC     .S2     B8,CSR            ; interrupts off
|| [!B1]   ADD     .L2     1,B4,B4           ; |392| (P) <1,2>  ^ 
|| [ B0]   ZERO    .L1     A0                ; |392| (P) <0,5> 
|| [!B1]   SUB     .D2     B5,1,B5           ; |392| (P) <1,2>  ^ 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 392
;*      Loop opening brace source line   : 393
;*      Loop closing brace source line   : 394
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 15                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        1     
;*      .D units                     0        0     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             0        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     1        2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 3
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L179:    ; PIPED LOOP PROLOG

   [ A0]   B       .S1     L180              ; |392| (P) <0,6> 
||         SHL     .S2     B6,B4,B9          ; |394| (P) <2,0>  ^ 
||         CMPEQ   .L2     B5,0,B8           ; |392| (P) <1,3>  ^ 

   [ A0]   MV      .L1X    B4,A3             ; |392| (P) <1,4> 
||         AND     .L2     B7,B9,B1          ; |394| (P) <2,1>  ^ 
||         OR      .S2     B8,B1,B0          ; |392| (P) <1,4>  ^ 

	.dwpsn	"SSHBN.C",392,0

   [ B0]   ZERO    .L1     A0                ; |392| (P) <1,5> 
|| [!B1]   SUB     .L2     B5,1,B5           ; |392| (P) <2,2>  ^ 
|| [!B1]   ADD     .S2     1,B4,B4           ; |392| (P) <2,2>  ^ 

;** --------------------------------------------------------------------------*
L180:    ; PIPED LOOP KERNEL
DW$L$_modmul$10$B:
	.dwpsn	"SSHBN.C",393,0

   [ A0]   B       .S1     L180              ; |392| <1,6> 
||         CMPEQ   .L2     B5,0,B8           ; |392| <2,3>  ^ 
||         SHL     .S2     B6,B4,B9          ; |394| <3,0>  ^ 

   [ A0]   MV      .L1X    B4,A3             ; |392| <2,4> 
||         OR      .L2     B8,B1,B0          ; |392| <2,4>  ^ 
||         AND     .S2     B7,B9,B1          ; |394| <3,1>  ^ 

	.dwpsn	"SSHBN.C",394,0

   [ B0]   ZERO    .L1     A0                ; |392| <2,5> 
|| [!B1]   ADD     .L2     1,B4,B4           ; |392| <3,2>  ^ 
|| [!B1]   SUB     .S2     B5,1,B5           ; |392| <3,2>  ^ 

DW$L$_modmul$10$E:
;** --------------------------------------------------------------------------*
L181:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 395	-----------------------    if ( !mshift ) goto g12;

           MV      .S1     A3,A1
||         CMPLTU  .L1X    B10,2,A0          ; |396| 
||         MV      .L2X    A3,B11
||         MVC     .S2     B16,CSR           ; interrupts on

   [!A1]   ZERO    .L1     A0                ; |397| nullify predicate
|| [ A1]   MVK     .S1     16,A4
|| [ A1]   MV      .D1     A12,A6
|| [!A1]   LDHU    .D2T2   *B13,B4           ; |401| 
|| [ A1]   SUB     .L2     B10,1,B0          ; |397| 
|| [!A1]   B       .S2     L188              ; |395| 

   [ A0]   BNOP    .S1     L187,1            ; |396| 
|| [!A1]   LDHU    .D2T1   *B12,A3           ; |401| 
|| [ A1]   SUB     .L1     A4,A3,A8

   [!A1]   CALL    .S1     _safemalloc       ; |404| 
           NOP             2
           ; BRANCHCC OCCURS {L188}          ; |395| 
;** --------------------------------------------------------------------------*
;** 396	-----------------------    if ( mlen < 2 ) goto g11;
;**  	-----------------------    U$46 = m;
;**  	-----------------------    U$52 = 16-mshift;
;** 397	-----------------------    L$3 = mlen-1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65534, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

   [!A0]   CMPGT   .L2     B0,4,B1
|| [ A0]   MV      .L1X    B10,A3

           ; BRANCHCC OCCURS {L187}          ; |396| 
;** --------------------------------------------------------------------------*
   [ B1]   BNOP    .S1     L183,5
           ; BRANCHCC OCCURS {L183} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L182
;** --------------------------------------------------------------------------*
L182:    
DW$L$_modmul$15$B:
	.dwpsn	"SSHBN.C",397,0
;**	-----------------------g10:
;** 397	-----------------------    A$23 = *U$46<<mshift|U$46[1]>>U$52;
;** 397	-----------------------    *U$46++ = A$23;
;** 396	-----------------------    if ( --L$3 ) goto g10;

           LDHU    .D1T1   *A6,A5            ; |397| 
||         SUB     .L2     B0,1,B0           ; |396| 
||         MV      .L1X    B11,A3

           LDHU    .D1T1   *+A6(2),A4        ; |397| 
           NOP             1
   [ B0]   B       .S1     L182              ; |396| 
   [!B0]   B       .S1     L187
           SHL     .S1     A5,A3,A3          ; |397| 
           SHRU    .S1     A4,A8,A4          ; |397| 
           OR      .L1     A4,A3,A3          ; |397| 
           STH     .D1T1   A3,*A6++          ; |397| 
           ; BRANCHCC OCCURS {L182}          ; |396| 
DW$L$_modmul$15$E:
;** --------------------------------------------------------------------------*
           MV      .L1X    B10,A3
           ; BRANCH OCCURS {L187} 
;** --------------------------------------------------------------------------*
L183:    

           MVC     .S2     CSR,B6
||         SUB     .L2     B0,3,B0

           AND     .L2     -2,B6,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 396
;*      Loop opening brace source line   : 397
;*      Loop closing brace source line   : 397
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh10
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L184:    ; PIPED LOOP PROLOG
   [ B0]   BDEC    .S2     L185,B0           ; |396| (P) <0,5> 

           MV      .L2X    A6,B5
||         LDHU    .D1T1   *A6++,A3          ; |397| (P) <0,0> 

           LDHU    .D1T1   *A6,A3            ; |397| (P) <0,1> 
|| [ B0]   BDEC    .S2     L185,B0           ; |396| (P) <1,5> 

	.dwpsn	"SSHBN.C",396,0

           MVK     .L1     0x3,A0            ; init prolog collapse predicate
||         MV      .S1X    B11,A9
||         LDHU    .D1T1   *A6++,A3          ; |397| (P) <1,0> 

;** --------------------------------------------------------------------------*
L185:    ; PIPED LOOP KERNEL
DW$L$_modmul$19$B:
	.dwpsn	"SSHBN.C",397,0

           MV      .L2X    A5,B4             ; |397| <0,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |397| <1,7> 
||         SHL     .S1     A3,A9,A7          ; |397| <2,5> 
|| [ B0]   BDEC    .S2     L185,B0           ; |396| <2,5> 
||         LDHU    .D1T1   *A6,A3            ; |397| <4,1> 

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D2T2   B4,*B5++          ; |397| <0,10> 
||         SHRU    .S1     A3,A8,A4          ; |397| <2,6> 
||         LDHU    .D1T1   *A6++,A3          ; |397| <5,0> 

DW$L$_modmul$19$E:
;** --------------------------------------------------------------------------*
L186:    ; PIPED LOOP EPILOG

           MV      .L2X    A5,B4             ; |397| (E) <1,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |397| (E) <2,7> 
||         LDHU    .D1T1   *A6,A3            ; |397| (E) <5,1> 
||         SHL     .S1     A3,A9,A7          ; |397| (E) <3,5> 

           MV      .L2X    A9,B11
||         STH     .D2T2   B4,*B5++          ; |397| (E) <1,10> 
||         SHRU    .S1     A3,A8,A4          ; |397| (E) <3,6> 

           MV      .L2X    A5,B4             ; |397| (E) <2,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |397| (E) <3,7> 
||         SHL     .S1     A3,A9,A7          ; |397| (E) <4,5> 

           SHRU    .S1     A3,A8,A4          ; |397| (E) <4,6> 
||         STH     .D2T2   B4,*B5++          ; |397| (E) <2,10> 

           MVC     .S2     B6,CSR            ; interrupts on
||         MV      .L2X    A5,B4             ; |397| (E) <3,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |397| (E) <4,7> 
||         SHL     .S1     A3,A9,A7          ; |397| (E) <5,5> 

;** --------------------------------------------------------------------------*
           SHRU    .S1     A3,A8,A4          ; |397| (E) <5,6> 

           OR      .L1     A4,A7,A5          ; |397| (E) <5,7> 
||         MV      .L2X    A5,B4             ; |397| (E) <4,9> Define a twin register
||         STH     .D2T2   B4,*B5++          ; |397| (E) <3,10> 

           STH     .D2T2   B4,*B5++          ; |397| (E) <4,10> 
           MV      .L2X    A5,B4             ; |397| (E) <5,9> Define a twin register

           STH     .D2T2   B4,*B5++          ; |397| (E) <5,10> 
||         MV      .L1X    B10,A3

;** --------------------------------------------------------------------------*
L187:    
;**	-----------------------g11:
;** 398	-----------------------    C$20 = &m[mlen-1];
;** 398	-----------------------    *C$20 = *C$20<<mshift;

           ADDAH   .D1     A12,A3,A3         ; |398| 
||         MV      .L1X    B11,A31

           SUB     .L1     A3,2,A4           ; |398| 
           LDHU    .D1T1   *A4,A5            ; |398| 
           NOP             4
           SHL     .S1     A5,A31,A3         ; |398| 
           STH     .D1T1   A3,*A4            ; |398| 
           LDHU    .D2T1   *B12,A3           ; |401| 
           LDHU    .D2T2   *B13,B4           ; |401| 
           NOP             1
           CALL    .S1     _safemalloc       ; |404| 
           NOP             2
;** --------------------------------------------------------------------------*
L188:    
;**	-----------------------g12:
;** 401	-----------------------    C$19 = *q;
;** 401	-----------------------    C$18 = *p;
;** 401	-----------------------    (C$18 > C$19) ? (pqlen = C$18) : (pqlen = C$19);
;** 404	-----------------------    n = safemalloc((unsigned)pqlen, 2u);
;** 405	-----------------------    if ( (i = pqlen-*p) <= 0 ) goto g15;
;**  	-----------------------    K$76 = 0;
;**  	-----------------------    U$77 = n;
;** 407	-----------------------    L$4 = i;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L1X    B4,A10            ; |401| 
||         CMPGTU  .L2X    B4,A3,B0          ; |401| 

   [!B0]   MV      .L1     A3,A10            ; |401| 

           MV      .L1     A10,A4            ; |404| 
||         ADDKPC  .S2     RL41,B3,0         ; |404| 
||         MVK     .L2     0x2,B4            ; |404| 

RL41:      ; CALL OCCURS {_safemalloc}       ; |404| 
;** --------------------------------------------------------------------------*

           LDHU    .D2T2   *B13,B4           ; |405| 
||         ZERO    .L1     A5
||         MV      .S1     A4,A14            ; |404| 

           NOP             4
           SUB     .L1X    A10,B4,A3         ; |405| 
           CMPGT   .L1     A3,0,A0           ; |405| 

   [!A0]   BNOP    .S1     L192,5            ; |405| 
|| [ A0]   SUB     .L1     A3,1,A0

           ; BRANCHCC OCCURS {L192}          ; |405| 
;**	-----------------------g14:
;** 407	-----------------------    *U$77++ = K$76;
;** 406	-----------------------    if ( --L$4 ) goto g14;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 406
;*      Loop opening brace source line   : 407
;*      Loop closing brace source line   : 407
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L189:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L190,A0           ; |406| (P) <0,0> 
   [ A0]   BDEC    .S1     L190,A0           ; |406| (P) <1,0> 
   [ A0]   BDEC    .S1     L190,A0           ; |406| (P) <2,0> 

           MV      .L2X    A4,B5
|| [ A0]   BDEC    .S1     L190,A0           ; |406| (P) <3,0> 

	.dwpsn	"SSHBN.C",406,0

           MV      .L2X    A5,B4
|| [ A0]   BDEC    .S1     L190,A0           ; |406| (P) <4,0> 

;** --------------------------------------------------------------------------*
L190:    ; PIPED LOOP KERNEL
DW$L$_modmul$26$B:
	.dwpsn	"SSHBN.C",407,0

           STH     .D2T2   B4,*B5++          ; |407| <0,5> 
|| [ A0]   BDEC    .S1     L190,A0           ; |406| <5,0> 

DW$L$_modmul$26$E:
;** --------------------------------------------------------------------------*
L191:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L192:    
;**	-----------------------g15:
;** 408	-----------------------    if ( !(U$66 = *p) ) goto g18;
;**  	-----------------------    U$89 = &n[i];
;**  	-----------------------    U$14 = 0;
;** 408	-----------------------    j = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           LDHU    .D2T2   *B13,B0           ; |408| 
||         ZERO    .L1     A4
||         ADDAH   .D1     A14,A3,A3
||         ZERO    .L2     B5                ; |408| 

           NOP             4

   [!B0]   BNOP    .S1     L196,1            ; |408| 
||         ADD     .L2     B0,B0,B4          ; |409| 

           SUB     .L2X    B4,A4,B4          ; |409| 
           ADD     .L2     B13,B4,B9         ; |409| 
   [ B0]   LDHU    .D2T2   *B9,B4            ; |409| (P) <0,3>  ^ 
           NOP             1
           ; BRANCHCC OCCURS {L196}          ; |408| 
;** --------------------------------------------------------------------------*
;**	-----------------------g17:
;** 409	-----------------------    *U$89++ = *(U$66*2-U$14+p);
;** 408	-----------------------    U$14 += 2;
;** 408	-----------------------    U$66 = *p;
;** 408	-----------------------    if ( U$66 > (++j) ) goto g17;

           MVC     .S2     CSR,B16
||         MV      .L2X    A3,B8
||         MV      .D2     B13,B7
||         MVK     .L1     0x1,A1
||         MVK     .S1     0x1,A0

           AND     .L2     -2,B16,B17
||         MV      .S2X    A4,B6

           MVC     .S2     B17,CSR           ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 408
;*      Loop opening brace source line   : 409
;*      Loop closing brace source line   : 409
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 3
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
;*      Addition ops (.LSD)          3        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L193:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L194:    ; PIPED LOOP KERNEL
DW$L$_modmul$31$B:
	.dwpsn	"SSHBN.C",409,0
   [ A0]   STH     .D2T2   B4,*B8++          ; |409| <0,8>  ^ 
           LDHU    .D2T2   *B7,B9            ; |408| <0,9>  ^ 
           NOP             3
           ADD     .L2     1,B5,B5           ; |408| <0,13> 

           ADD     .S2     2,B6,B6           ; |408| <0,14> 
||         CMPGT   .L2     B9,B5,B0          ; |408| <0,14> 
||         ADD     .D2     B9,B9,B9          ; |409| <1,0>  ^ 

   [!B0]   ZERO    .L1     A1                ; |408| <0,15> 
||         SUB     .L2     B9,B6,B9          ; |409| <1,1>  ^ 

   [ A1]   B       .S1     L194              ; |408| <0,16> 
||         ADD     .L2     B7,B9,B9          ; |409| <1,2>  ^ 

   [ A1]   LDHU    .D2T2   *B9,B4            ; |409| <1,3>  ^ 
           NOP             2
           MV      .L1     A1,A0             ; |408| <0,20> Split a long life
           NOP             1
DW$L$_modmul$31$E:
;** --------------------------------------------------------------------------*
L195:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B16,CSR           ; interrupts on
;** --------------------------------------------------------------------------*
L196:    
;**	-----------------------g18:
;** 412	-----------------------    o = safemalloc((unsigned)pqlen, 2u);
;** 413	-----------------------    if ( (i = pqlen-*q) <= 0 ) goto g21;
;**  	-----------------------    K$76 = 0;
;**  	-----------------------    U$99 = o;
;** 415	-----------------------    L$5 = i;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _safemalloc       ; |412| 
           ADDKPC  .S2     RL42,B3,2         ; |412| 
           MV      .L1     A10,A4            ; |412| 
           MVK     .L2     0x2,B4            ; |412| 
RL42:      ; CALL OCCURS {_safemalloc}       ; |412| 
;** --------------------------------------------------------------------------*

           LDHU    .D2T2   *B12,B4           ; |413| 
||         ZERO    .L1     A5
||         MV      .S1     A4,A15            ; |412| 

           NOP             4
           SUB     .L1X    A10,B4,A3         ; |413| 
           CMPGT   .L1     A3,0,A0           ; |413| 

   [!A0]   BNOP    .S1     L200,5            ; |413| 
|| [ A0]   SUB     .L1     A3,1,A0

           ; BRANCHCC OCCURS {L200}          ; |413| 
;**	-----------------------g20:
;** 415	-----------------------    *U$99++ = K$76;
;** 414	-----------------------    if ( --L$5 ) goto g20;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 414
;*      Loop opening brace source line   : 415
;*      Loop closing brace source line   : 415
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L197:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L198,A0           ; |414| (P) <0,0> 
   [ A0]   BDEC    .S1     L198,A0           ; |414| (P) <1,0> 
   [ A0]   BDEC    .S1     L198,A0           ; |414| (P) <2,0> 

           MV      .L2X    A4,B5
|| [ A0]   BDEC    .S1     L198,A0           ; |414| (P) <3,0> 

	.dwpsn	"SSHBN.C",414,0

           MV      .L2X    A5,B4
|| [ A0]   BDEC    .S1     L198,A0           ; |414| (P) <4,0> 

;** --------------------------------------------------------------------------*
L198:    ; PIPED LOOP KERNEL
DW$L$_modmul$37$B:
	.dwpsn	"SSHBN.C",415,0

           STH     .D2T2   B4,*B5++          ; |415| <0,5> 
|| [ A0]   BDEC    .S1     L198,A0           ; |414| <5,0> 

DW$L$_modmul$37$E:
;** --------------------------------------------------------------------------*
L199:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L200:    
;**	-----------------------g21:
;** 416	-----------------------    if ( !(U$65 = *q) ) goto g24;
;**  	-----------------------    U$110 = &o[i];
;**  	-----------------------    U$14 = 0;
;** 416	-----------------------    j = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           LDHU    .D2T2   *B12,B0           ; |416| 
||         ZERO    .L1     A4
||         ADDAH   .D1     A15,A3,A3
||         ZERO    .L2     B5                ; |416| 

           NOP             4

   [!B0]   BNOP    .S1     L204,1            ; |416| 
||         ADD     .L2     B0,B0,B4          ; |417| 

           SUB     .L2X    B4,A4,B4          ; |417| 
           ADD     .L2     B12,B4,B9         ; |417| 
   [ B0]   LDHU    .D2T2   *B9,B4            ; |417| (P) <0,3>  ^ 
           NOP             1
           ; BRANCHCC OCCURS {L204}          ; |416| 
;** --------------------------------------------------------------------------*
;**	-----------------------g23:
;** 417	-----------------------    *U$110++ = *(U$65*2-U$14+q);
;** 416	-----------------------    U$14 += 2;
;** 416	-----------------------    U$65 = *q;
;** 416	-----------------------    if ( U$65 > (++j) ) goto g23;

           MVC     .S2     CSR,B16
||         MV      .L2X    A3,B8
||         MV      .D2     B12,B7
||         MVK     .L1     0x1,A1
||         MVK     .S1     0x1,A0

           AND     .L2     -2,B16,B17
||         MV      .S2X    A4,B6

           MVC     .S2     B17,CSR           ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 416
;*      Loop opening brace source line   : 417
;*      Loop closing brace source line   : 417
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 3
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
;*      Addition ops (.LSD)          3        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L201:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L202:    ; PIPED LOOP KERNEL
DW$L$_modmul$42$B:
	.dwpsn	"SSHBN.C",417,0
   [ A0]   STH     .D2T2   B4,*B8++          ; |417| <0,8>  ^ 
           LDHU    .D2T2   *B7,B9            ; |416| <0,9>  ^ 
           NOP             3
           ADD     .L2     1,B5,B5           ; |416| <0,13> 

           ADD     .S2     2,B6,B6           ; |416| <0,14> 
||         CMPGT   .L2     B9,B5,B0          ; |416| <0,14> 
||         ADD     .D2     B9,B9,B9          ; |417| <1,0>  ^ 

   [!B0]   ZERO    .L1     A1                ; |416| <0,15> 
||         SUB     .L2     B9,B6,B9          ; |417| <1,1>  ^ 

   [ A1]   B       .S1     L202              ; |416| <0,16> 
||         ADD     .L2     B7,B9,B9          ; |417| <1,2>  ^ 

   [ A1]   LDHU    .D2T2   *B9,B4            ; |417| <1,3>  ^ 
           NOP             2
           MV      .L1     A1,A0             ; |416| <0,20> Split a long life
           NOP             1
DW$L$_modmul$42$E:
;** --------------------------------------------------------------------------*
L203:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B16,CSR           ; interrupts on
;** --------------------------------------------------------------------------*
L204:    
;**	-----------------------g24:
;** 420	-----------------------    C$17 = pqlen*2;
;** 420	-----------------------    a = safemalloc((unsigned)C$17, 2u);
;** 423	-----------------------    internal_mul(n, o, a, pqlen);
;** 424	-----------------------    internal_mod(a, U$114 = C$17, m, (int)mlen, NULL, 0);
;** 427	-----------------------    if ( !mshift ) goto g31;
           CALL    .S1     _safemalloc       ; |420| 
           ADDKPC  .S2     RL43,B3,1         ; |420| 
           ADD     .L1     A10,A10,A13       ; |420| 
           MVK     .L2     0x2,B4            ; |420| 
           ADD     .S1     A10,A10,A4        ; |420| 
RL43:      ; CALL OCCURS {_safemalloc}       ; |420| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _internal_mul     ; |423| 
           MV      .L2X    A15,B4            ; |423| 
           ADDKPC  .S2     RL44,B3,0         ; |423| 
           MV      .L2X    A10,B6            ; |423| 
           MV      .S1     A4,A11            ; |420| 

           MV      .D1     A4,A6             ; |420| 
||         MV      .L1     A14,A4            ; |423| 

RL44:      ; CALL OCCURS {_internal_mul}     ; |423| 
           CALL    .S1     _internal_mod     ; |424| 
           ZERO    .L2     B8                ; |424| 
           ADDKPC  .S2     RL45,B3,0         ; |424| 
           MV      .L1     A11,A4            ; |424| 
           MV      .L2     B10,B6            ; |424| 

           MV      .S1     A12,A6            ; |424| 
||         MV      .D2X    A13,B4            ; |424| 
||         ZERO    .D1     A8                ; |424| 

RL45:      ; CALL OCCURS {_internal_mod}     ; |424| 
;** --------------------------------------------------------------------------*

           SUB     .L2X    A13,B10,B12       ; |428| 
||         MV      .L1X    B11,A0            ; |424| 

   [!A0]   B       .S2     L218              ; |427| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [ A0]   MVK     .S1     16,A5
||         MV      .D1     A0,A2             ; |424| branch predicate copy
||         MV      .L2X    A13,B13           ; |424| 

   [ A0]   MV      .L1X    B12,A3
|| [!A2]   CALL    .S1     _newbn            ; |438| 
|| [!A2]   CMPLT   .L2     B10,B13,B0        ; |438| 

   [ A0]   ADDAH   .D1     A11,A3,A4
||         MV      .L1X    B10,A0
|| [ A1]   MV      .L2     B10,B0

   [!A1]   MVK     .L1     0x1,A0            ; nullify predicate
|| [!A2]   MV      .S1X    B10,A13
|| [ A1]   SUB     .D1     A4,2,A6

   [!A0]   B       .S1     L211              ; |428| 
|| [!B0]   MV      .L1X    B13,A13           ; |438| 

   [ A1]   SUB     .L1X    A5,B11,A8
           ; BRANCHCC OCCURS {L218}          ; |427| 
;** --------------------------------------------------------------------------*
;** 428	-----------------------    U$118 = U$114-mlen;
;** 428	-----------------------    if ( !mlen ) goto g28;
;**  	-----------------------    U$52 = 16-mshift;
;**  	-----------------------    U$121 = &a[U$118-1];
;** 429	-----------------------    L$6 = (int)mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

   [ A0]   CMPGT   .L2     B0,4,B1
|| [!A0]   ZERO    .S2     B1                ; nullify predicate
|| [!A0]   ADDAW   .D1     A11,A10,A3        ; |430| 

   [!A0]   SUB     .L1     A3,2,A3           ; |430| 
|| [ B1]   B       .S1     L206

   [!A0]   LDHU    .D1T1   *A3,A4            ; |430| 
   [!A0]   CALL    .S1     _internal_mod     ; |431| 
           ; BRANCHCC OCCURS {L211}          ; |428| 
;** --------------------------------------------------------------------------*
           NOP             3
           ; BRANCHCC OCCURS {L206} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L205
;** --------------------------------------------------------------------------*
L205:    
DW$L$_modmul$50$B:
	.dwpsn	"SSHBN.C",429,0
;**	-----------------------g27:
;** 429	-----------------------    A$22 = *U$121<<mshift|U$121[1]>>U$52;
;** 429	-----------------------    *U$121++ = A$22;
;** 428	-----------------------    if ( --L$6 ) goto g27;

           LDHU    .D1T1   *A6,A5            ; |429| 
||         SUB     .L2     B0,1,B0           ; |428| 
||         MV      .L1X    B11,A3

           LDHU    .D1T1   *+A6(2),A4        ; |429| 
           NOP             1
   [ B0]   B       .S1     L205              ; |428| 
   [!B0]   B       .S1     L210
           SHL     .S1     A5,A3,A3          ; |429| 
           SHRU    .S1     A4,A8,A4          ; |429| 
           OR      .L1     A4,A3,A3          ; |429| 
           STH     .D1T1   A3,*A6++          ; |429| 
           ; BRANCHCC OCCURS {L205}          ; |428| 
DW$L$_modmul$50$E:
;** --------------------------------------------------------------------------*
           ADDAW   .D1     A11,A10,A3        ; |430| 
           ; BRANCH OCCURS {L210} 
;** --------------------------------------------------------------------------*
L206:    

           MVC     .S2     CSR,B6
||         SUB     .L2     B0,3,B0

           AND     .L2     -2,B6,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 428
;*      Loop opening brace source line   : 429
;*      Loop closing brace source line   : 429
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh10
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L207:    ; PIPED LOOP PROLOG
   [ B0]   BDEC    .S2     L208,B0           ; |428| (P) <0,5> 

           MV      .L2X    A6,B5
||         LDHU    .D1T1   *A6++,A3          ; |429| (P) <0,0> 

           LDHU    .D1T1   *A6,A3            ; |429| (P) <0,1> 
|| [ B0]   BDEC    .S2     L208,B0           ; |428| (P) <1,5> 

	.dwpsn	"SSHBN.C",428,0

           MVK     .L1     0x3,A0            ; init prolog collapse predicate
||         MV      .S1X    B11,A9
||         LDHU    .D1T1   *A6++,A3          ; |429| (P) <1,0> 

;** --------------------------------------------------------------------------*
L208:    ; PIPED LOOP KERNEL
DW$L$_modmul$54$B:
	.dwpsn	"SSHBN.C",429,0

           MV      .L2X    A5,B4             ; |429| <0,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |429| <1,7> 
||         SHL     .S1     A3,A9,A7          ; |429| <2,5> 
|| [ B0]   BDEC    .S2     L208,B0           ; |428| <2,5> 
||         LDHU    .D1T1   *A6,A3            ; |429| <4,1> 

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D2T2   B4,*B5++          ; |429| <0,10> 
||         SHRU    .S1     A3,A8,A4          ; |429| <2,6> 
||         LDHU    .D1T1   *A6++,A3          ; |429| <5,0> 

DW$L$_modmul$54$E:
;** --------------------------------------------------------------------------*
L209:    ; PIPED LOOP EPILOG

           MV      .L2X    A5,B4             ; |429| (E) <1,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |429| (E) <2,7> 
||         LDHU    .D1T1   *A6,A3            ; |429| (E) <5,1> 
||         SHL     .S1     A3,A9,A7          ; |429| (E) <3,5> 

           MV      .L2X    A9,B11
||         STH     .D2T2   B4,*B5++          ; |429| (E) <1,10> 
||         SHRU    .S1     A3,A8,A4          ; |429| (E) <3,6> 

           MV      .L2X    A5,B4             ; |429| (E) <2,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |429| (E) <3,7> 
||         SHL     .S1     A3,A9,A7          ; |429| (E) <4,5> 

           SHRU    .S1     A3,A8,A4          ; |429| (E) <4,6> 
||         STH     .D2T2   B4,*B5++          ; |429| (E) <2,10> 

           MVC     .S2     B6,CSR            ; interrupts on
||         MV      .L2X    A5,B4             ; |429| (E) <3,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |429| (E) <4,7> 
||         SHL     .S1     A3,A9,A7          ; |429| (E) <5,5> 

;** --------------------------------------------------------------------------*
           SHRU    .S1     A3,A8,A4          ; |429| (E) <5,6> 

           OR      .L1     A4,A7,A5          ; |429| (E) <5,7> 
||         MV      .L2X    A5,B4             ; |429| (E) <4,9> Define a twin register
||         STH     .D2T2   B4,*B5++          ; |429| (E) <3,10> 

           STH     .D2T2   B4,*B5++          ; |429| (E) <4,10> 
           MV      .L2X    A5,B4             ; |429| (E) <5,9> Define a twin register

           STH     .D2T2   B4,*B5++          ; |429| (E) <5,10> 
||         ADDAW   .D1     A11,A10,A3        ; |430| 

;** --------------------------------------------------------------------------*
L210:    
           SUB     .L1     A3,2,A3           ; |430| 
           LDHU    .D1T1   *A3,A4            ; |430| 
           CALL    .S1     _internal_mod     ; |431| 
;** --------------------------------------------------------------------------*
L211:    
;**	-----------------------g28:
;** 430	-----------------------    C$16 = &a[2*pqlen-1];
;** 430	-----------------------    *C$16 = *C$16<<mshift;
;** 431	-----------------------    internal_mod(a, U$114, m, (int)mlen, NULL, 0);
;** 432	-----------------------    C$15 = U$114-1;
;** 432	-----------------------    if ( C$15 < U$118 ) goto g31;
;**  	-----------------------    U$52 = 16-mshift;
;**  	-----------------------    U$121 = &a[C$15];
;** 433	-----------------------    L$7 = (int)mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MV      .L1     A12,A6            ; |431| 
           MV      .L2     B10,B6            ; |431| 
           MV      .L1X    B11,A13
           SHL     .S1     A4,A13,A5         ; |430| 

           STH     .D1T1   A5,*A3            ; |430| 
||         MV      .L1     A11,A4            ; |431| 
||         ZERO    .S1     A8                ; |431| 
||         MV      .L2     B13,B4            ; |431| 
||         ZERO    .D2     B8                ; |431| 
||         ADDKPC  .S2     RL46,B3,0         ; |431| 

RL46:      ; CALL OCCURS {_internal_mod}     ; |431| 
;** --------------------------------------------------------------------------*

           MV      .L2     B10,B0
||         SUB     .L1X    B13,1,A3          ; |432| 
||         MVK     .S1     16,A5

           CMPGT   .L2     B0,4,B1
||         CMPLT   .L1X    A3,B12,A0         ; |432| 
||         SUB     .S1     A5,A13,A8
||         ADDAH   .D1     A11,A3,A6

   [ A0]   ZERO    .L2     B1                ; nullify predicate
|| [ A0]   B       .S1     L217              ; |432| 

   [ B1]   BNOP    .S1     L213,4
           ; BRANCHCC OCCURS {L217}          ; |432| 
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCHCC OCCURS {L213} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L212
;** --------------------------------------------------------------------------*
L212:    
DW$L$_modmul$61$B:
	.dwpsn	"SSHBN.C",433,0
;**	-----------------------g30:
;** 433	-----------------------    A$21 = *U$121>>mshift|U$121[-1]<<U$52;
;** 433	-----------------------    *U$121-- = A$21;
;** 432	-----------------------    if ( --L$7 ) goto g30;

           LDHU    .D1T1   *A6,A5            ; |433| 
||         SUB     .L2     B0,1,B0           ; |432| 
||         MV      .L1X    B11,A3

           LDHU    .D1T1   *-A6(2),A4        ; |433| 
           NOP             1
   [ B0]   B       .S1     L212              ; |432| 
   [!B0]   B       .S1     L217
           SHRU    .S1     A5,A3,A3          ; |433| 
           SHL     .S1     A4,A8,A4          ; |433| 
           OR      .L1     A4,A3,A3          ; |433| 
           STH     .D1T1   A3,*A6--          ; |433| 
           ; BRANCHCC OCCURS {L212}          ; |432| 
DW$L$_modmul$61$E:
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCH OCCURS {L217} 
;** --------------------------------------------------------------------------*
L213:    

           MVC     .S2     CSR,B6
||         SUB     .L2     B0,3,B0

           AND     .L2     -2,B6,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 432
;*      Loop opening brace source line   : 433
;*      Loop closing brace source line   : 433
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh10
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L214:    ; PIPED LOOP PROLOG
   [ B0]   BDEC    .S2     L215,B0           ; |432| (P) <0,5> 

           MV      .L2X    A6,B5
||         LDHU    .D1T1   *A6--,A3          ; |433| (P) <0,0> 

           LDHU    .D1T1   *A6,A3            ; |433| (P) <0,1> 
|| [ B0]   BDEC    .S2     L215,B0           ; |432| (P) <1,5> 

	.dwpsn	"SSHBN.C",432,0

           MVK     .L1     0x3,A0            ; init prolog collapse predicate
||         MV      .S1X    B11,A9
||         LDHU    .D1T1   *A6--,A3          ; |433| (P) <1,0> 

;** --------------------------------------------------------------------------*
L215:    ; PIPED LOOP KERNEL
DW$L$_modmul$65$B:
	.dwpsn	"SSHBN.C",433,0

           MV      .L2X    A5,B4             ; |433| <0,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |433| <1,7> 
||         SHRU    .S1     A3,A9,A7          ; |433| <2,5> 
|| [ B0]   BDEC    .S2     L215,B0           ; |432| <2,5> 
||         LDHU    .D1T1   *A6,A3            ; |433| <4,1> 

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STH     .D2T2   B4,*B5--          ; |433| <0,10> 
||         SHL     .S1     A3,A8,A4          ; |433| <2,6> 
||         LDHU    .D1T1   *A6--,A3          ; |433| <5,0> 

DW$L$_modmul$65$E:
;** --------------------------------------------------------------------------*
L216:    ; PIPED LOOP EPILOG

           MV      .L2X    A5,B4             ; |433| (E) <1,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |433| (E) <2,7> 
||         LDHU    .D1T1   *A6,A3            ; |433| (E) <5,1> 
||         SHRU    .S1     A3,A9,A7          ; |433| (E) <3,5> 

           STH     .D2T2   B4,*B5--          ; |433| (E) <1,10> 
||         SHL     .S1     A3,A8,A4          ; |433| (E) <3,6> 

           MV      .L2X    A5,B4             ; |433| (E) <2,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |433| (E) <3,7> 
||         SHRU    .S1     A3,A9,A7          ; |433| (E) <4,5> 

           SHL     .S1     A3,A8,A4          ; |433| (E) <4,6> 
||         STH     .D2T2   B4,*B5--          ; |433| (E) <2,10> 

           MVC     .S2     B6,CSR            ; interrupts on
||         MV      .L2X    A5,B4             ; |433| (E) <3,9> Define a twin register
||         OR      .L1     A4,A7,A5          ; |433| (E) <4,7> 
||         SHRU    .S1     A3,A9,A7          ; |433| (E) <5,5> 

;** --------------------------------------------------------------------------*
           SHL     .S1     A3,A8,A4          ; |433| (E) <5,6> 

           OR      .L1     A4,A7,A5          ; |433| (E) <5,7> 
||         MV      .L2X    A5,B4             ; |433| (E) <4,9> Define a twin register
||         STH     .D2T2   B4,*B5--          ; |433| (E) <3,10> 

           STH     .D2T2   B4,*B5--          ; |433| (E) <4,10> 
           MV      .L2X    A5,B4             ; |433| (E) <5,9> Define a twin register
           STH     .D2T2   B4,*B5--          ; |433| (E) <5,10> 
;** --------------------------------------------------------------------------*
L217:    

           CALL    .S1     _newbn            ; |438| 
||         CMPLT   .L2     B10,B13,B0        ; |438| 
||         MV      .L1X    B10,A13

   [!B0]   MV      .L1X    B13,A13           ; |438| 
           NOP             3
;** --------------------------------------------------------------------------*
L218:    
;**	-----------------------g31:
;** 438	-----------------------    (mlen < U$114) ? (C$14 = (int)mlen) : (C$14 = U$114);
;** 438	-----------------------    result = newbn(C$14);
;** 439	-----------------------    if ( C$14 <= 0 ) goto g34;
;**  	-----------------------    U$160 = &a[pqlen*2-C$14];
;**  	-----------------------    L$8 = C$14;
;**  	-----------------------    U$45 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L1     A13,A4            ; |438| 
||         ADDKPC  .S2     RL47,B3,0         ; |438| 

RL47:      ; CALL OCCURS {_newbn}            ; |438| 
;** --------------------------------------------------------------------------*

           CMPGT   .L2X    A13,0,B0          ; |439| 
||         ADD     .L1     A10,A10,A3
||         MV      .S1     A13,A5
||         ZERO    .S2     B5

   [!B0]   BNOP    .S1     L222,4            ; |439| 
||         SUB     .L1     A3,A13,A3
||         MV      .D1     A4,A13            ; |438| 

           ADDAH   .D1     A11,A3,A3
           ; BRANCHCC OCCURS {L222}          ; |439| 
;** --------------------------------------------------------------------------*
;**	-----------------------g33:
;** 440	-----------------------    *(*result*2-U$45+result) = *U$160++;
;** 439	-----------------------    U$45 += 2;
;** 439	-----------------------    if ( --L$8 ) goto g33;

           MVC     .S2     CSR,B6
||         MV      .L1X    B5,A4
||         SUB     .L2X    A5,1,B0
||         MV      .S1     A13,A5

           AND     .L2     -2,B6,B5
||         MV      .S2X    A3,B4

           MVC     .S2     B5,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 439
;*      Loop opening brace source line   : 440
;*      Loop closing brace source line   : 440
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     3*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L219:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L220:    ; PIPED LOOP KERNEL
DW$L$_modmul$73$B:
	.dwpsn	"SSHBN.C",440,0

           LDHU    .D2T2   *B4++,B5          ; |440| <0,0> 
||         LDHU    .D1T1   *A5,A3            ; |440| <0,0>  ^ 

           NOP             2
   [ B0]   BDEC    .S2     L220,B0           ; |439| <0,3> 
           NOP             1
           ADD     .L1     A3,A3,A3          ; |440| <0,5>  ^ 
           SUB     .L1     A3,A4,A3          ; |440| <0,6>  ^ 
           ADD     .L1     A5,A3,A3          ; |440| <0,7>  ^ 

           ADD     .L1     2,A4,A4           ; |439| <0,8> 
||         STH     .D1T2   B5,*A3            ; |440| <0,8>  ^ 

DW$L$_modmul$73$E:
;** --------------------------------------------------------------------------*
L221:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1     A5,A13
||         MVC     .S2     B6,CSR            ; interrupts on

;** --------------------------------------------------------------------------*
L222:    
;**	-----------------------g34:
;** 441	-----------------------    if ( (C$13 = *result) < 2 ) goto g38;
;**  	-----------------------    V$2 = C$13;
;** 441	-----------------------    L$9 = V$2-1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65534, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
           LDHU    .D1T1   *A13,A3           ; |441| 
           NOP             4

           SUB     .S1     A3,1,A4           ; |441| 
||         MV      .L2X    A3,B5
||         CMPLTU  .L1     A3,2,A0           ; |441| 

   [ A0]   BNOP    .S1     L226,5            ; |441| 
           ; BRANCHCC OCCURS {L226}          ; |441| 
;** --------------------------------------------------------------------------*
;**	-----------------------g36:
;** 441	-----------------------    if ( result[V$2] ) goto g38;
;** 442	-----------------------    *result = C$12 = (unsigned short)(V$2-1);
;** 442	-----------------------    V$2 = C$12;
;** 442	-----------------------    if ( --L$9 ) goto g36;

           MVC     .S2     CSR,B8
||         MV      .L2X    A13,B4
||         MVK     .L1     0x1,A0

           AND     .L2     -2,B8,B7
           MVC     .S2     B7,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 441
;*      Loop opening brace source line   : 442
;*      Loop closing brace source line   : 442
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     2*       0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L223:    ; PIPED LOOP PROLOG
   [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |441| (P) <0,0>  ^ 
           NOP             1
           SUB     .L1X    B5,1,A5           ; |442| (P) <0,2> 
           EXTU    .S1     A5,16,16,A3       ; |442| (P) <0,3> 

           MV      .L2X    A4,B6
||         MV      .L1     A13,A4
|| [!A0]   MVK     .S2     0x1,B1            ; (P) <0,4> 

	.dwpsn	"SSHBN.C",441,0

   [!B1]   MV      .L2X    A3,B5             ; |442| (P) <0,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |442| (P) <0,5>  ^ 
|| [!B1]   STH     .D1T1   A5,*A4            ; |442| (P) <0,5> 

;** --------------------------------------------------------------------------*
L224:    ; PIPED LOOP KERNEL
DW$L$_modmul$79$B:
	.dwpsn	"SSHBN.C",442,0
           CMPEQ   .L2     B6,0,B7           ; |442| <0,6>  ^ 
           OR      .L2     B7,B1,B0          ; |442| <0,7>  ^ 
   [ B0]   ZERO    .L1     A0                ; |442| <0,8>  ^ 

   [ A0]   BNOP    .S1     L224,1            ; |442| <0,9> 
|| [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |441| <1,0>  ^ 

           SUB     .L1X    B5,1,A5           ; |442| <1,2> 
           EXTU    .S1     A5,16,16,A3       ; |442| <1,3> 
   [!A0]   MVK     .L2     0x1,B1            ; <1,4> 

   [!B1]   MV      .L2X    A3,B5             ; |442| <1,5> 
|| [!B1]   STH     .D1T1   A5,*A4            ; |442| <1,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |442| <1,5>  ^ 

DW$L$_modmul$79$E:
;** --------------------------------------------------------------------------*
L225:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A13
||         MVC     .S2     B8,CSR            ; interrupts on

;** --------------------------------------------------------------------------*
L226:    
;**	-----------------------g38:
;** 445	-----------------------    if ( U$114 <= 0 ) goto g41;
;** 446	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    U$121 = a;
;**  	-----------------------    K$185 = 0u;
;** 446	-----------------------    L$10 = U$114>>1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1073741823, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)

           CMPGT   .L2     B13,0,B0          ; |445| 
||         MV      .D2X    A11,B4
||         SHR     .S2     B13,1,B6          ; |446| 
||         ZERO    .L1     A3

   [!B0]   BNOP    .S1     L230,4            ; |445| 
   [ B0]   SUB     .L1X    B6,1,A0
           ; BRANCHCC OCCURS {L230}          ; |445| 
;**	-----------------------g40:
;** 446	-----------------------    _mem4((void *)U$121) = K$185;
;** 445	-----------------------    U$121 += 2;
;** 445	-----------------------    if ( --L$10 ) goto g40;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 445
;*      Loop opening brace source line   : 446
;*      Loop closing brace source line   : 446
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L227:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L228,A0           ; |445| (P) <0,0> 
   [ A0]   BDEC    .S1     L228,A0           ; |445| (P) <1,0> 
   [ A0]   BDEC    .S1     L228,A0           ; |445| (P) <2,0> 
   [ A0]   BDEC    .S1     L228,A0           ; |445| (P) <3,0> 
	.dwpsn	"SSHBN.C",445,0

           MV      .L2X    A3,B5
|| [ A0]   BDEC    .S1     L228,A0           ; |445| (P) <4,0> 

;** --------------------------------------------------------------------------*
L228:    ; PIPED LOOP KERNEL
DW$L$_modmul$84$B:
	.dwpsn	"SSHBN.C",446,0

           STNW    .D2T2   B5,*B4++(4)       ; |446| <0,5> 
|| [ A0]   BDEC    .S1     L228,A0           ; |445| <5,0> 

DW$L$_modmul$84$E:
;** --------------------------------------------------------------------------*
L229:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L230:    
;**	-----------------------g41:
;** 447	-----------------------    safefree((void *)a);
;** 448	-----------------------    if ( !mlen ) goto g44;
;**  	-----------------------    U$46 = m;
;**  	-----------------------    K$76 = 0;
;** 449	-----------------------    L$11 = (int)mlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _safefree         ; |447| 
           ADDKPC  .S2     RL48,B3,3         ; |447| 
           MV      .L1     A11,A4            ; |447| 
RL48:      ; CALL OCCURS {_safefree}         ; |447| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B10,A0            ; |447| 
||         ZERO    .L2     B4
||         MV      .S2X    A12,B5

   [!A0]   BNOP    .S1     L234,4            ; |448| 
||         MV      .L1X    B10,A3            ; |447| 

   [ A0]   SUB     .L1     A3,1,A0
           ; BRANCHCC OCCURS {L234}          ; |448| 
;**	-----------------------g43:
;** 449	-----------------------    *U$46++ = K$76;
;** 448	-----------------------    if ( --L$11 ) goto g43;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 448
;*      Loop opening brace source line   : 449
;*      Loop closing brace source line   : 449
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L231:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L232,A0           ; |448| (P) <0,0> 
   [ A0]   BDEC    .S1     L232,A0           ; |448| (P) <1,0> 
   [ A0]   BDEC    .S1     L232,A0           ; |448| (P) <2,0> 
   [ A0]   BDEC    .S1     L232,A0           ; |448| (P) <3,0> 
	.dwpsn	"SSHBN.C",448,0
   [ A0]   BDEC    .S1     L232,A0           ; |448| (P) <4,0> 
;** --------------------------------------------------------------------------*
L232:    ; PIPED LOOP KERNEL
DW$L$_modmul$89$B:
	.dwpsn	"SSHBN.C",449,0

           STH     .D2T2   B4,*B5++          ; |449| <0,5> 
|| [ A0]   BDEC    .S1     L232,A0           ; |448| <5,0> 

DW$L$_modmul$89$E:
;** --------------------------------------------------------------------------*
L233:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L234:    
;**	-----------------------g44:
;** 450	-----------------------    safefree((void *)m);
;** 451	-----------------------    if ( pqlen <= 0 ) goto g47;
;**  	-----------------------    K$76 = 0;
;**  	-----------------------    U$199 = n;
;** 452	-----------------------    L$12 = pqlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _safefree         ; |450| 
           ADDKPC  .S2     RL49,B3,3         ; |450| 
           MV      .L1     A12,A4            ; |450| 
RL49:      ; CALL OCCURS {_safefree}         ; |450| 
;** --------------------------------------------------------------------------*

           CMPGT   .L2X    A10,0,B0          ; |451| 
||         ZERO    .S2     B4

   [!B0]   BNOP    .S1     L238,5            ; |451| 
||         MV      .L2X    A14,B5
|| [ B0]   SUB     .L1     A10,1,A0

           ; BRANCHCC OCCURS {L238}          ; |451| 
;**	-----------------------g46:
;** 452	-----------------------    *U$199++ = K$76;
;** 451	-----------------------    if ( --L$12 ) goto g46;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 451
;*      Loop opening brace source line   : 452
;*      Loop closing brace source line   : 452
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L235:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L236,A0           ; |451| (P) <0,0> 
   [ A0]   BDEC    .S1     L236,A0           ; |451| (P) <1,0> 
   [ A0]   BDEC    .S1     L236,A0           ; |451| (P) <2,0> 
   [ A0]   BDEC    .S1     L236,A0           ; |451| (P) <3,0> 
	.dwpsn	"SSHBN.C",451,0
   [ A0]   BDEC    .S1     L236,A0           ; |451| (P) <4,0> 
;** --------------------------------------------------------------------------*
L236:    ; PIPED LOOP KERNEL
DW$L$_modmul$94$B:
	.dwpsn	"SSHBN.C",452,0

           STH     .D2T2   B4,*B5++          ; |452| <0,5> 
|| [ A0]   BDEC    .S1     L236,A0           ; |451| <5,0> 

DW$L$_modmul$94$E:
;** --------------------------------------------------------------------------*
L237:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L238:    
;**	-----------------------g47:
;** 453	-----------------------    safefree((void *)n);
;** 454	-----------------------    if ( pqlen <= 0 ) goto g50;
;**  	-----------------------    K$76 = 0;
;**  	-----------------------    U$205 = o;
;** 455	-----------------------    L$13 = pqlen;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _safefree         ; |453| 
           ADDKPC  .S2     RL50,B3,3         ; |453| 
           MV      .L1     A14,A4            ; |453| 
RL50:      ; CALL OCCURS {_safefree}         ; |453| 
;** --------------------------------------------------------------------------*

           CMPGT   .L2X    A10,0,B0          ; |454| 
||         ZERO    .S2     B4

   [!B0]   BNOP    .S1     L242,5            ; |454| 
||         MV      .L2X    A15,B5
|| [ B0]   SUB     .L1     A10,1,A0

           ; BRANCHCC OCCURS {L242}          ; |454| 
;**	-----------------------g49:
;** 455	-----------------------    *U$205++ = K$76;
;** 454	-----------------------    if ( --L$13 ) goto g49;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 454
;*      Loop opening brace source line   : 455
;*      Loop closing brace source line   : 455
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L239:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L240,A0           ; |454| (P) <0,0> 
   [ A0]   BDEC    .S1     L240,A0           ; |454| (P) <1,0> 
   [ A0]   BDEC    .S1     L240,A0           ; |454| (P) <2,0> 
   [ A0]   BDEC    .S1     L240,A0           ; |454| (P) <3,0> 
	.dwpsn	"SSHBN.C",454,0
   [ A0]   BDEC    .S1     L240,A0           ; |454| (P) <4,0> 
;** --------------------------------------------------------------------------*
L240:    ; PIPED LOOP KERNEL
DW$L$_modmul$99$B:
	.dwpsn	"SSHBN.C",455,0

           STH     .D2T2   B4,*B5++          ; |455| <0,5> 
|| [ A0]   BDEC    .S1     L240,A0           ; |454| <5,0> 

DW$L$_modmul$99$E:
;** --------------------------------------------------------------------------*
L241:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L242:    
;**	-----------------------g50:
;** 456	-----------------------    safefree((void *)o);
;** 458	-----------------------    return result;
           CALL    .S1     _safefree         ; |456| 
           ADDKPC  .S2     RL51,B3,3         ; |456| 
           MV      .L1     A15,A4            ; |456| 
RL51:      ; CALL OCCURS {_safefree}         ; |456| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(28),B3       ; |459| 
           MV      .L1X    SP,A31            ; |459| 
           LDDW    .D1T1   *+A31(8),A11:A10  ; |459| 
           LDW     .D1T1   *+A31(24),A14     ; |459| 
           LDDW    .D2T2   *+SP(40),B13:B12  ; |459| 

           RET     .S2     B3                ; |459| 
||         LDDW    .D1T1   *+A31(16),A13:A12 ; |459| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |459| 
||         MV      .L1     A13,A4            ; |458| 

           LDW     .D2T1   *++SP(48),A15     ; |459| 
	.dwpsn	"SSHBN.C",459,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |459| 

DW$202	.dwtag  DW_TAG_loop
	.dwattr DW$202, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L240:1:1297920382")
	.dwattr DW$202, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$202, DW_AT_begin_line(0x1c6)
	.dwattr DW$202, DW_AT_end_line(0x1c7)
DW$203	.dwtag  DW_TAG_loop_range
	.dwattr DW$203, DW_AT_low_pc(DW$L$_modmul$99$B)
	.dwattr DW$203, DW_AT_high_pc(DW$L$_modmul$99$E)
	.dwendtag DW$202


DW$204	.dwtag  DW_TAG_loop
	.dwattr DW$204, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L236:1:1297920382")
	.dwattr DW$204, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$204, DW_AT_begin_line(0x1c3)
	.dwattr DW$204, DW_AT_end_line(0x1c4)
DW$205	.dwtag  DW_TAG_loop_range
	.dwattr DW$205, DW_AT_low_pc(DW$L$_modmul$94$B)
	.dwattr DW$205, DW_AT_high_pc(DW$L$_modmul$94$E)
	.dwendtag DW$204


DW$206	.dwtag  DW_TAG_loop
	.dwattr DW$206, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L232:1:1297920382")
	.dwattr DW$206, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$206, DW_AT_begin_line(0x1c0)
	.dwattr DW$206, DW_AT_end_line(0x1c1)
DW$207	.dwtag  DW_TAG_loop_range
	.dwattr DW$207, DW_AT_low_pc(DW$L$_modmul$89$B)
	.dwattr DW$207, DW_AT_high_pc(DW$L$_modmul$89$E)
	.dwendtag DW$206


DW$208	.dwtag  DW_TAG_loop
	.dwattr DW$208, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L228:1:1297920382")
	.dwattr DW$208, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$208, DW_AT_begin_line(0x1bd)
	.dwattr DW$208, DW_AT_end_line(0x1be)
DW$209	.dwtag  DW_TAG_loop_range
	.dwattr DW$209, DW_AT_low_pc(DW$L$_modmul$84$B)
	.dwattr DW$209, DW_AT_high_pc(DW$L$_modmul$84$E)
	.dwendtag DW$208


DW$210	.dwtag  DW_TAG_loop
	.dwattr DW$210, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L224:1:1297920382")
	.dwattr DW$210, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$210, DW_AT_begin_line(0x1b9)
	.dwattr DW$210, DW_AT_end_line(0x1ba)
DW$211	.dwtag  DW_TAG_loop_range
	.dwattr DW$211, DW_AT_low_pc(DW$L$_modmul$79$B)
	.dwattr DW$211, DW_AT_high_pc(DW$L$_modmul$79$E)
	.dwendtag DW$210


DW$212	.dwtag  DW_TAG_loop
	.dwattr DW$212, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L220:1:1297920382")
	.dwattr DW$212, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$212, DW_AT_begin_line(0x1b7)
	.dwattr DW$212, DW_AT_end_line(0x1b8)
DW$213	.dwtag  DW_TAG_loop_range
	.dwattr DW$213, DW_AT_low_pc(DW$L$_modmul$73$B)
	.dwattr DW$213, DW_AT_high_pc(DW$L$_modmul$73$E)
	.dwendtag DW$212


DW$214	.dwtag  DW_TAG_loop
	.dwattr DW$214, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L215:1:1297920382")
	.dwattr DW$214, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$214, DW_AT_begin_line(0x1b0)
	.dwattr DW$214, DW_AT_end_line(0x1b1)
DW$215	.dwtag  DW_TAG_loop_range
	.dwattr DW$215, DW_AT_low_pc(DW$L$_modmul$65$B)
	.dwattr DW$215, DW_AT_high_pc(DW$L$_modmul$65$E)
	.dwendtag DW$214


DW$216	.dwtag  DW_TAG_loop
	.dwattr DW$216, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L212:1:1297920382")
	.dwattr DW$216, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$216, DW_AT_begin_line(0x1b0)
	.dwattr DW$216, DW_AT_end_line(0x1b1)
DW$217	.dwtag  DW_TAG_loop_range
	.dwattr DW$217, DW_AT_low_pc(DW$L$_modmul$61$B)
	.dwattr DW$217, DW_AT_high_pc(DW$L$_modmul$61$E)
	.dwendtag DW$216


DW$218	.dwtag  DW_TAG_loop
	.dwattr DW$218, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L208:1:1297920382")
	.dwattr DW$218, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$218, DW_AT_begin_line(0x1ac)
	.dwattr DW$218, DW_AT_end_line(0x1ad)
DW$219	.dwtag  DW_TAG_loop_range
	.dwattr DW$219, DW_AT_low_pc(DW$L$_modmul$54$B)
	.dwattr DW$219, DW_AT_high_pc(DW$L$_modmul$54$E)
	.dwendtag DW$218


DW$220	.dwtag  DW_TAG_loop
	.dwattr DW$220, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L205:1:1297920382")
	.dwattr DW$220, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$220, DW_AT_begin_line(0x1ac)
	.dwattr DW$220, DW_AT_end_line(0x1ad)
DW$221	.dwtag  DW_TAG_loop_range
	.dwattr DW$221, DW_AT_low_pc(DW$L$_modmul$50$B)
	.dwattr DW$221, DW_AT_high_pc(DW$L$_modmul$50$E)
	.dwendtag DW$220


DW$222	.dwtag  DW_TAG_loop
	.dwattr DW$222, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L202:1:1297920382")
	.dwattr DW$222, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$222, DW_AT_begin_line(0x1a0)
	.dwattr DW$222, DW_AT_end_line(0x1a1)
DW$223	.dwtag  DW_TAG_loop_range
	.dwattr DW$223, DW_AT_low_pc(DW$L$_modmul$42$B)
	.dwattr DW$223, DW_AT_high_pc(DW$L$_modmul$42$E)
	.dwendtag DW$222


DW$224	.dwtag  DW_TAG_loop
	.dwattr DW$224, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L198:1:1297920382")
	.dwattr DW$224, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$224, DW_AT_begin_line(0x19e)
	.dwattr DW$224, DW_AT_end_line(0x19f)
DW$225	.dwtag  DW_TAG_loop_range
	.dwattr DW$225, DW_AT_low_pc(DW$L$_modmul$37$B)
	.dwattr DW$225, DW_AT_high_pc(DW$L$_modmul$37$E)
	.dwendtag DW$224


DW$226	.dwtag  DW_TAG_loop
	.dwattr DW$226, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L194:1:1297920382")
	.dwattr DW$226, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$226, DW_AT_begin_line(0x198)
	.dwattr DW$226, DW_AT_end_line(0x199)
DW$227	.dwtag  DW_TAG_loop_range
	.dwattr DW$227, DW_AT_low_pc(DW$L$_modmul$31$B)
	.dwattr DW$227, DW_AT_high_pc(DW$L$_modmul$31$E)
	.dwendtag DW$226


DW$228	.dwtag  DW_TAG_loop
	.dwattr DW$228, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L190:1:1297920382")
	.dwattr DW$228, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$228, DW_AT_begin_line(0x196)
	.dwattr DW$228, DW_AT_end_line(0x197)
DW$229	.dwtag  DW_TAG_loop_range
	.dwattr DW$229, DW_AT_low_pc(DW$L$_modmul$26$B)
	.dwattr DW$229, DW_AT_high_pc(DW$L$_modmul$26$E)
	.dwendtag DW$228


DW$230	.dwtag  DW_TAG_loop
	.dwattr DW$230, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L185:1:1297920382")
	.dwattr DW$230, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$230, DW_AT_begin_line(0x18c)
	.dwattr DW$230, DW_AT_end_line(0x18d)
DW$231	.dwtag  DW_TAG_loop_range
	.dwattr DW$231, DW_AT_low_pc(DW$L$_modmul$19$B)
	.dwattr DW$231, DW_AT_high_pc(DW$L$_modmul$19$E)
	.dwendtag DW$230


DW$232	.dwtag  DW_TAG_loop
	.dwattr DW$232, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L182:1:1297920382")
	.dwattr DW$232, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$232, DW_AT_begin_line(0x18c)
	.dwattr DW$232, DW_AT_end_line(0x18d)
DW$233	.dwtag  DW_TAG_loop_range
	.dwattr DW$233, DW_AT_low_pc(DW$L$_modmul$15$B)
	.dwattr DW$233, DW_AT_high_pc(DW$L$_modmul$15$E)
	.dwendtag DW$232


DW$234	.dwtag  DW_TAG_loop
	.dwattr DW$234, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L180:1:1297920382")
	.dwattr DW$234, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$234, DW_AT_begin_line(0x188)
	.dwattr DW$234, DW_AT_end_line(0x18a)
DW$235	.dwtag  DW_TAG_loop_range
	.dwattr DW$235, DW_AT_low_pc(DW$L$_modmul$10$B)
	.dwattr DW$235, DW_AT_high_pc(DW$L$_modmul$10$E)
	.dwendtag DW$234


DW$236	.dwtag  DW_TAG_loop
	.dwattr DW$236, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L176:1:1297920382")
	.dwattr DW$236, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$236, DW_AT_begin_line(0x184)
	.dwattr DW$236, DW_AT_end_line(0x185)
DW$237	.dwtag  DW_TAG_loop_range
	.dwattr DW$237, DW_AT_low_pc(DW$L$_modmul$5$B)
	.dwattr DW$237, DW_AT_high_pc(DW$L$_modmul$5$E)
	.dwendtag DW$236

	.dwattr DW$198, DW_AT_end_file("SSHBN.C")
	.dwattr DW$198, DW_AT_end_line(0x1cb)
	.dwattr DW$198, DW_AT_end_column(0x01)
	.dwendtag DW$198

	.sect	".text"
	.global	_copybn

DW$238	.dwtag  DW_TAG_subprogram, DW_AT_name("copybn"), DW_AT_symbol_name("_copybn")
	.dwattr DW$238, DW_AT_low_pc(_copybn)
	.dwattr DW$238, DW_AT_high_pc(0x00)
	.dwattr DW$238, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$238, DW_AT_begin_line(0x50)
	.dwattr DW$238, DW_AT_begin_column(0x08)
	.dwattr DW$238, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$238, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",81,1

;******************************************************************************
;* FUNCTION NAME: _copybn                                                     *
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
_copybn:
;** --------------------------------------------------------------------------*
DW$239	.dwtag  DW_TAG_formal_parameter, DW_AT_name("orig"), DW_AT_symbol_name("_orig")
	.dwattr DW$239, DW_AT_type(*DW$T$40)
	.dwattr DW$239, DW_AT_location[DW_OP_reg4]
;** 82	-----------------------    b = safemalloc((unsigned)*orig+1u, 2u);
;** 83	-----------------------    if ( b == NULL ) goto g3;
           STW     .D2T1   A11,*SP--(16)     ; |81| 

           MV      .L1     A4,A10            ; |81| 
||         STW     .D2T1   A10,*+SP(8)       ; |81| 

           CALL    .S1     _safemalloc       ; |82| 
||         LDHU    .D1T1   *A10,A3           ; |82| 

           STW     .D2T2   B13,*+SP(12)      ; |81| 
           MV      .L2     B3,B13            ; |81| 
           ADDKPC  .S2     RL52,B3,0         ; |82| 
           MVK     .L2     0x2,B4            ; |82| 
           ADD     .L1     1,A3,A4           ; |82| 
RL52:      ; CALL OCCURS {_safemalloc}       ; |82| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |82| 
||         MV      .S1     A4,A11            ; |82| 
||         MV      .L2X    A10,B4            ; |85| 

   [ A0]   LDHU    .D1T1   *A10,A3           ; |85| 
|| [!A0]   B       .S1     L243              ; |83| 

   [!A0]   CALL    .S1     _abort            ; |84| 
   [ A0]   CALL    .S1     _memcpy           ; |85| 
           NOP             2
   [ A0]   ADD     .L1     1,A3,A3           ; |85| 
           ; BRANCHCC OCCURS {L243}          ; |83| 
;** --------------------------------------------------------------------------*
;** 85	-----------------------    memcpy((void *)b, (const void * const)orig, ((unsigned)*orig+1u)*2u);
;** 86	-----------------------    return b;
           ADDKPC  .S2     RL53,B3,0         ; |85| 
           ADD     .L1     A3,A3,A6          ; |85| 
RL53:      ; CALL OCCURS {_memcpy}           ; |85| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A10       ; |87| 
||         MV      .L2     B13,B3            ; |87| 

           RET     .S2     B3                ; |87| 
||         LDW     .D2T2   *+SP(12),B13      ; |87| 

           LDW     .D2T1   *++SP(16),A11     ; |87| 
||         MV      .L1     A11,A4            ; |84| 

           NOP             4
           ; BRANCH OCCURS {B3}              ; |87| 
;** --------------------------------------------------------------------------*
L243:    
;**	-----------------------g3:
;** 84	-----------------------    abort();
;***	; the preceding call never returns
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDKPC  .S2     RL54,B3,0         ; |84| 
RL54:      ; CALL OCCURS {_abort}            ; |84| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L244:    
DW$L$_copybn$6$B:
;**	-----------------------g4:
;** 84	-----------------------    goto g4;
	.dwpsn	"SSHBN.C",87,1
           BNOP    .S1     L244,5            ; |84| 
           ; BRANCH OCCURS {L244}            ; |84| 
DW$L$_copybn$6$E:

DW$240	.dwtag  DW_TAG_loop
	.dwattr DW$240, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L244:1:1297920382")
	.dwattr DW$240, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$240, DW_AT_begin_line(0x54)
	.dwattr DW$240, DW_AT_end_line(0x57)
DW$241	.dwtag  DW_TAG_loop_range
	.dwattr DW$241, DW_AT_low_pc(DW$L$_copybn$6$B)
	.dwattr DW$241, DW_AT_high_pc(DW$L$_copybn$6$E)
	.dwendtag DW$240

	.dwattr DW$238, DW_AT_end_file("SSHBN.C")
	.dwattr DW$238, DW_AT_end_line(0x57)
	.dwattr DW$238, DW_AT_end_column(0x01)
	.dwendtag DW$238

	.sect	".text"
	.global	_bignum_cmp

DW$242	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_cmp"), DW_AT_symbol_name("_bignum_cmp")
	.dwattr DW$242, DW_AT_low_pc(_bignum_cmp)
	.dwattr DW$242, DW_AT_high_pc(0x00)
	.dwattr DW$242, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$242, DW_AT_begin_line(0x2ac)
	.dwattr DW$242, DW_AT_begin_column(0x05)
	.dwattr DW$242, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$242, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",685,1

;******************************************************************************
;* FUNCTION NAME: _bignum_cmp                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,B0,B1,B4,B5                     *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,B0,B1,B3,B4,B5                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_bignum_cmp:
;** --------------------------------------------------------------------------*
DW$243	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$243, DW_AT_type(*DW$T$40)
	.dwattr DW$243, DW_AT_location[DW_OP_reg4]
DW$244	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$244, DW_AT_type(*DW$T$40)
	.dwattr DW$244, DW_AT_location[DW_OP_reg20]
;** 686	-----------------------    amax = *a;
;** 686	-----------------------    bmax = *b;
;** 687	-----------------------    if ( !((amax > bmax) ? (i = amax) : (i = bmax)) ) goto g8;

           MV      .L1X    B4,A7             ; |685| 
||         LDHU    .D1T1   *A4,A6            ; |686| 

           LDHU    .D1T2   *A7,B5            ; |686| 
           NOP             3
           MV      .L1     A6,A0             ; |687| 
           CMPGTU  .L2X    A6,B5,B0          ; |687| 

   [!B0]   B       .S1     L245              ; |687| 
|| [!B0]   MVK     .L1     0x1,A0            ; nullify predicate

   [!A0]   BNOP    .S1     L247,4            ; |687| 
|| [!B0]   MV      .L1X    B5,A0             ; |687| 

           ; BRANCHCC OCCURS {L245}          ; |687| 
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCHCC OCCURS {L247}          ; |687| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     L246,4            ; |687| 
||         CMPGT   .L1     A0,A6,A1          ; |689| 
||         CMPGT   .L2X    A0,B5,B1          ; |689| 

           MV      .L2X    A0,B0             ; |689| 
           ; BRANCH OCCURS {L246}            ; |687| 
;** --------------------------------------------------------------------------*
L245:    

   [!A0]   BNOP    .S1     L247,4            ; |687| 
|| [ A0]   CMPGT   .L2X    A0,B5,B1          ; |689| 
|| [ A0]   CMPGT   .L1     A0,A6,A1          ; |689| 

   [ A0]   MV      .L2X    A0,B0             ; |689| 
           ; BRANCHCC OCCURS {L247}          ; |687| 
;** 689	-----------------------    l$1 = i;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L246:    
DW$L$_bignum_cmp$5$B:
	.dwpsn	"SSHBN.C",688,0
;**	-----------------------g3:
;** 689	-----------------------    (i > amax) ? (aval = 0u) : (aval = a[i]);
;** 689	-----------------------    (i > bmax) ? (bval = 0u) : (bval = b[i]);
;** 690	-----------------------    if ( aval >= bval ) goto g5;
;** 692	-----------------------    return (-1);

   [!B1]   LDHU    .D1T1   *+A7[A0],A5       ; |689| 
|| [ B1]   ZERO    .L1     A5                ; |689| 
|| [ A1]   ZERO    .S1     A3                ; |689| 

   [!A1]   LDHU    .D1T1   *+A4[A0],A3       ; |689| 
           NOP             4
           CMPLTU  .L1     A3,A5,A1          ; |690| 

   [ A1]   BNOP    .S1     L248,5            ; |692| 
||         CMPGTU  .L1     A3,A5,A1          ; |693| 
|| [ A1]   MVK     .L2     0xffffffff,B4     ; |692| 

           ; BRANCHCC OCCURS {L248}          ; |692| 
DW$L$_bignum_cmp$5$E:
;** --------------------------------------------------------------------------*
DW$L$_bignum_cmp$6$B:
;**	-----------------------g5:
;** 693	-----------------------    if ( aval <= bval ) goto g7;
;** 694	-----------------------    return 1;

   [ A1]   B       .S1     L248              ; |694| 
|| [ A1]   MVK     .L2     0x1,B4            ; |694| 
|| [ A1]   ZERO    .S2     B0                ; |696| nullify predicate
|| [!A1]   SUB     .D2     B0,1,B0           ; |696| 
|| [!A1]   SUB     .L1     A0,1,A0           ; |695| 

   [ B0]   BNOP    .S1     L246,4            ; |696| 
           ; BRANCHCC OCCURS {L248}          ; |694| 
DW$L$_bignum_cmp$6$E:
;** --------------------------------------------------------------------------*
DW$L$_bignum_cmp$7$B:
;**	-----------------------g7:
;** 695	-----------------------    --i;
;** 696	-----------------------    if ( --l$1 ) goto g3;
	.dwpsn	"SSHBN.C",696,0

   [ B0]   CMPGT   .L1     A0,A6,A1          ; |689| 
|| [ B0]   CMPGT   .L2X    A0,B5,B1          ; |689| 

           ; BRANCHCC OCCURS {L246}          ; |696| 
DW$L$_bignum_cmp$7$E:
;** --------------------------------------------------------------------------*
L247:    
;**	-----------------------g8:
;** 697	-----------------------    return 0;
           ZERO    .L2     B4                ; |697| 
;** --------------------------------------------------------------------------*
L248:    
           RETNOP  .S2     B3,4              ; |698| 
	.dwpsn	"SSHBN.C",698,1
           MV      .L1X    B4,A4             ; |697| 
           ; BRANCH OCCURS {B3}              ; |698| 

DW$245	.dwtag  DW_TAG_loop
	.dwattr DW$245, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L246:1:1297920382")
	.dwattr DW$245, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$245, DW_AT_begin_line(0x2b0)
	.dwattr DW$245, DW_AT_end_line(0x2b8)
DW$246	.dwtag  DW_TAG_loop_range
	.dwattr DW$246, DW_AT_low_pc(DW$L$_bignum_cmp$5$B)
	.dwattr DW$246, DW_AT_high_pc(DW$L$_bignum_cmp$5$E)
DW$247	.dwtag  DW_TAG_loop_range
	.dwattr DW$247, DW_AT_low_pc(DW$L$_bignum_cmp$6$B)
	.dwattr DW$247, DW_AT_high_pc(DW$L$_bignum_cmp$6$E)
DW$248	.dwtag  DW_TAG_loop_range
	.dwattr DW$248, DW_AT_low_pc(DW$L$_bignum_cmp$7$B)
	.dwattr DW$248, DW_AT_high_pc(DW$L$_bignum_cmp$7$E)
	.dwendtag DW$245

	.dwattr DW$242, DW_AT_end_file("SSHBN.C")
	.dwattr DW$242, DW_AT_end_line(0x2ba)
	.dwattr DW$242, DW_AT_end_column(0x01)
	.dwendtag DW$242

	.sect	".text"
	.global	_bigmuladd

DW$249	.dwtag  DW_TAG_subprogram, DW_AT_name("bigmuladd"), DW_AT_symbol_name("_bigmuladd")
	.dwattr DW$249, DW_AT_low_pc(_bigmuladd)
	.dwattr DW$249, DW_AT_high_pc(0x00)
	.dwattr DW$249, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$249, DW_AT_begin_line(0x2db)
	.dwattr DW$249, DW_AT_begin_column(0x08)
	.dwattr DW$249, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$249, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",732,1

;******************************************************************************
;* FUNCTION NAME: _bigmuladd                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,   *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,DP,SP,A16,*
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_bigmuladd:
;** --------------------------------------------------------------------------*
DW$250	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$250, DW_AT_type(*DW$T$40)
	.dwattr DW$250, DW_AT_location[DW_OP_reg4]
DW$251	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$251, DW_AT_type(*DW$T$40)
	.dwattr DW$251, DW_AT_location[DW_OP_reg20]
DW$252	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addend"), DW_AT_symbol_name("_addend")
	.dwattr DW$252, DW_AT_type(*DW$T$40)
	.dwattr DW$252, DW_AT_location[DW_OP_reg6]
;** 733	-----------------------    alen = *a;
;** 733	-----------------------    blen = *b;
;** 734	-----------------------    (alen > blen) ? (mlen = alen) : (mlen = blen);
;** 740	-----------------------    workspace = safemalloc((unsigned)(mlen*4), 2u);
;** 741	-----------------------    if ( mlen <= 0 ) goto g4;
;** 742	-----------------------    l$6 = mlen;
;**  	-----------------------    U$26 = l$6*2;
;**  	-----------------------    U$31 = workspace;
;**  	-----------------------    U$39 = &U$31[l$6];
;**  	-----------------------    U$27 = 0;
;** 741	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T1   A14,*SP--(32)     ; |732| 
||         MV      .L1X    SP,A31            ; |732| 

           STDW    .D1T1   A11:A10,*-A31(24)
||         MV      .L1     A4,A14            ; |732| 

           LDHU    .D1T1   *A14,A11          ; |733| 
||         MV      .L2     B4,B11            ; |732| 
||         STDW    .D2T2   B11:B10,*+SP(24)

           LDHU    .D2T1   *B11,A10          ; |733| 
           STDW    .D1T1   A13:A12,*-A31(16)
           MV      .S1     A6,A12            ; |732| 
           MVK     .L2     0x2,B4            ; |740| 
           CALL    .S1     _safemalloc       ; |740| 

           MV      .L2X    A11,B10           ; |734| 
||         CMPGTU  .L1     A11,A10,A0        ; |734| 

   [!A0]   MV      .L2X    A10,B10           ; |734| 
           SHL     .S2     B10,2,B5          ; |740| 
           STW     .D2T2   B13,*+SP(4)

           MV      .L1X    B5,A4             ; |740| 
||         MV      .D2     B3,B13
||         ADDKPC  .S2     RL55,B3,0         ; |740| 

RL55:      ; CALL OCCURS {_safemalloc}       ; |740| 
;** --------------------------------------------------------------------------*

           CMPGT   .L2     B10,0,B0          ; |741| 
||         MV      .L1X    B10,A3            ; |742| 
||         ZERO    .S1     A16
||         ZERO    .D1     A7                ; |741| 
||         ADD     .S2     B10,B10,B4

   [!B0]   BNOP    .S1     L252,5            ; |741| 
||         ADDAH   .D1     A4,A3,A6
||         MV      .L1     A4,A13            ; |740| 

           ; BRANCHCC OCCURS {L252}          ; |741| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 742	-----------------------    U$22 = mlen-i;
;** 742	-----------------------    (U$22 <= *a) ? (S$5 = *(U$26-U$27+a)) : (S$5 = 0u);
;**  	-----------------------    *U$31 = S$5;
;**  	-----------------------    (U$22 <= *b) ? (S$4 = *(U$26-U$27+b)) : (S$4 = 0u);
;**  	-----------------------    *U$39++ = S$4;
;** 741	-----------------------    U$27 += 2;
;** 741	-----------------------    ++U$31;
;** 741	-----------------------    ++i;
;** 741	-----------------------    if ( --l$6 ) goto g3;

           MVC     .S2     CSR,B17
||         MV      .L1X    B4,A9
||         MV      .L2X    A7,B4
||         SUB     .S1     A3,1,A0
||         MV      .D2     B10,B5

           AND     .L2     -2,B17,B6
||         MV      .S2X    A4,B8
||         MV      .L1X    B11,A5

           MVC     .S2     B6,CSR            ; interrupts off
||         MV      .L2X    A14,B7

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 741
;*      Loop opening brace source line   : 741
;*      Loop closing brace source line   : 744
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 24
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     0        1     
;*      .D units                     3*       3*    
;*      .M units                     0        0     
;*      .X cross paths               2        0     
;*      .T address paths             3*       3*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        6     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     3*       4*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 24 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L249:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L250:    ; PIPED LOOP KERNEL
DW$L$_bigmuladd$5$B:
	.dwpsn	"SSHBN.C",741,0
           LDHU    .D2T2   *B7,B9            ; |742| <0,0>  ^ 
           NOP             2
           SUB     .L1     A9,A16,A3         ; |742| <0,3> 
           SUB     .L2     B5,B4,B16         ; |742| <0,4> 

           ADD     .S2X    B7,A3,B9          ; |742| <0,5> 
||         CMPGT   .L2     B16,B9,B0         ; |742| <0,5>  ^ 

   [ B0]   ZERO    .L2     B6                ; |742| <0,6> 
|| [!B0]   LDHU    .D2T2   *B9,B6            ; |742| <0,6>  ^ 

           NOP             4
           STH     .D2T2   B6,*B8++          ; <0,11>  ^ 
           LDHU    .D1T1   *A5,A3            ; <0,12>  ^ 
           NOP             3
           SUB     .L1     A9,A16,A8         ; <0,16> 

           ADD     .L1     A5,A8,A3          ; <0,17> 
||         CMPGT   .L2X    B16,A3,B0         ; <0,17>  ^ 

   [ B0]   ZERO    .L1     A7                ; <0,18> 
|| [ A0]   BDEC    .S1     L250,A0           ; |741| <0,18> 
|| [!B0]   LDHU    .D1T1   *A3,A7            ; <0,18>  ^ 

           NOP             4
	.dwpsn	"SSHBN.C",744,0

           ADD     .L2     1,B4,B4           ; |741| <0,23> 
||         ADD     .L1     2,A16,A16         ; |741| <0,23> 
||         STH     .D1T1   A7,*A6++          ; <0,23>  ^ 

DW$L$_bigmuladd$5$E:
;** --------------------------------------------------------------------------*
L251:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L2     B5,B10
||         MVC     .S2     B17,CSR           ; interrupts on

;** --------------------------------------------------------------------------*
L252:    
;**	-----------------------g4:
;** 746	-----------------------    U$26 = mlen*2;
;** 746	-----------------------    internal_mul(workspace, U$26+workspace, mlen*4+workspace, mlen);
;** 750	-----------------------    rlen = alen+blen+1;
;** 751	-----------------------    if ( addend == NULL ) goto g7;
;** 751	-----------------------    C$8 = *addend;
;** 751	-----------------------    if ( rlen > C$8 ) goto g7;
;** 752	-----------------------    rlen = C$8+1;
;**	-----------------------g7:
;** 753	-----------------------    ret = newbn(rlen);
;** 754	-----------------------    maxspot = 0;
;** 755	-----------------------    if ( !*ret ) goto g12;
;**  	-----------------------    U$73 = &ret[1];
;**  	-----------------------    U$27 = 2;
;** 755	-----------------------    i = 1;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _internal_mul     ; |746| 
           MV      .L1X    B10,A3
           ADD     .L2     B10,B10,B11       ; |746| 
           ADDKPC  .S2     RL56,B3,0         ; |746| 
           ADDAW   .D1     A13,A3,A6         ; |746| 

           ADD     .L2X    A13,B11,B4        ; |746| 
||         MV      .D2     B10,B6            ; |746| 

RL56:      ; CALL OCCURS {_internal_mul}     ; |746| 
;** --------------------------------------------------------------------------*
           MV      .L1     A12,A0            ; |746| 
   [ A0]   MV      .L1     A12,A3            ; |746| 
   [ A0]   LDHU    .D1T1   *A3,A19           ; |751| 
           ADD     .L1     A10,A11,A31       ; |750| 
           CMPEQ   .L1     A0,0,A3
           CALL    .S1     _newbn            ; |753| 
           ADD     .S1     1,A31,A11         ; |750| 
   [ A0]   CMPGT   .L1     A11,A19,A20       ; |751| 
           OR      .L1     A20,A3,A0
   [!A0]   ADD     .L1     1,A19,A11         ; |752| 

           ADDKPC  .S2     RL57,B3,0         ; |753| 
||         MV      .L1     A11,A4            ; |753| 

RL57:      ; CALL OCCURS {_newbn}            ; |753| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A10            ; |753| 
||         ADD     .S1     2,A4,A6
||         ZERO    .D1     A4                ; |754| 
||         MVK     .L2     0x2,B5
||         MVK     .S2     0x1,B4            ; |755| 

           LDHU    .D1T1   *A10,A0           ; |755| 
           NOP             4

   [!A0]   BNOP    .S1     L256,2            ; |755| 
|| [ A0]   CMPGT   .L2     B4,B11,B0         ; |756| 
|| [ A0]   MV      .S2X    A6,B6
|| [ A0]   MV      .L1X    B10,A5

   [ A0]   MV      .L1X    B5,A7
|| [ A0]   SHL     .S1     A5,3,A3           ; |756| (P) <0,0> 

   [ A0]   SUB     .L1     A3,A7,A3          ; |756| (P) <0,1> 
   [ A0]   ADD     .L1     A13,A3,A6         ; |756| 
           ; BRANCHCC OCCURS {L256}          ; |755| 
;**	-----------------------g9:
;** 756	-----------------------    (i <= U$26) ? (S$3 = *((mlen<<3)-U$27+workspace)) : (S$3 = 0u);
;**  	-----------------------    *U$73++ = S$3;
;**  	-----------------------    if ( !S$3 ) goto g11;
;** 758	-----------------------    maxspot = i;
;**	-----------------------g11:
;** 755	-----------------------    U$27 += 2;
;** 755	-----------------------    if ( *ret >= (++i) ) goto g9;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 755
;*      Loop opening brace source line   : 755
;*      Loop closing brace source line   : 759
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        2     
;*      .S units                     1        1     
;*      .D units                     1        2     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             0        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)         10        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2     
;*      Bound(.L .S .D .LS .LSD)     4*       4*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L253:    ; PIPED LOOP PROLOG

           ZERO    .L2     B1
|| [!B0]   LDHU    .D1T2   *A6,B1            ; |756| (P) <0,3>  ^ 

           NOP             1
           MVC     .S2     CSR,B9

           MVK     .L1     0x1,A0
||         MV      .S1     A13,A3
||         MV      .L2X    A10,B8
||         AND     .S2     -2,B9,B16

	.dwpsn	"SSHBN.C",755,0

           MVK     .L1     0x1,A1
||         ZERO    .S1     A8
||         MV      .L2     B11,B7
||         MVK     .D1     0x1,A2
||         MV      .D2     B4,B5
||         MVC     .S2     B16,CSR           ; interrupts off

;** --------------------------------------------------------------------------*
L254:    ; PIPED LOOP KERNEL
DW$L$_bigmuladd$12$B:

   [ B1]   MV      .L1X    B4,A4             ; |758| <0,8> 
|| [ A1]   STH     .D2T2   B1,*B6++          ; <0,8>  ^ 

   [ A0]   MV      .L1     A4,A8             ; |755| <0,9> 
||         LDHU    .D2T2   *B8,B4            ; |755| <0,9>  ^ 

           NOP             3
           ADD     .L2     1,B5,B5           ; |755| <0,13> 

           ADD     .L1     2,A7,A7           ; |755| <0,14> 
||         CMPLT   .L2     B4,B5,B0          ; |755| <0,14>  ^ 
||         SHL     .S1     A5,3,A6           ; |756| <1,0> 

   [ B0]   ZERO    .L1     A2                ; |755| <0,15>  ^ 
||         CMPGT   .L2     B5,B7,B0          ; |756| <1,1> 
||         SUB     .S1     A6,A7,A6          ; |756| <1,1> 

   [ A2]   B       .S2     L254              ; |755| <0,16> 
||         ADD     .L1     A3,A6,A6          ; |756| <1,2> 
|| [!A2]   MVK     .L2     0x1,B0            ; <1,2>  ^ 

   [ B0]   ZERO    .L2     B1                ; |756| <1,3> 
|| [!B0]   LDHU    .D1T2   *A6,B1            ; |756| <1,3>  ^ 

           MV      .L1     A2,A1             ; |755| <0,18> Split a long life
           MV      .L2     B5,B4             ; |755| <0,19> Split a long life
           MV      .L1     A1,A0             ; |755| <0,20> Split a long life
	.dwpsn	"SSHBN.C",759,0
           NOP             1
DW$L$_bigmuladd$12$E:
;** --------------------------------------------------------------------------*
L255:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1X    B8,A10
||         MV      .S1     A8,A4
||         MV      .D1     A3,A13
||         MVC     .S2     B9,CSR            ; interrupts on

;** --------------------------------------------------------------------------*
L256:    
;**	-----------------------g12:
;** 760	-----------------------    *ret = maxspot;
;** 763	-----------------------    if ( addend == NULL ) goto g34;

           MV      .L1     A12,A0
||         MVK     .S1     34,A5             ; |766| 
||         SUB     .D1     A10,A12,A6        ; |766| 
||         MVK     .S2     34,B4             ; |766| 
||         MVK     .D2     0x1,B5            ; |765| 
||         ZERO    .L2     B19:B18           ; |764| 

   [!A0]   BNOP    .S2     L264,2            ; |763| 
||         SUB     .S1     A12,A10,A3        ; |766| 
||         CMPLT   .L1     A6,A5,A5          ; |766| 
||         STH     .D1T1   A4,*A10           ; |760| 

           CMPLT   .L2X    A3,B4,B4          ; |766| 
           AND     .L2X    B4,A5,B4
           XOR     .L2     1,B4,B0
           ; BRANCHCC OCCURS {L264}          ; |763| 
;** --------------------------------------------------------------------------*
;** 766	-----------------------    l$7 = rlen;
;** 764	-----------------------    carry = 0uL;
;** 765	-----------------------    i = 1;
;** 766	-----------------------    if ( (addend-ret >= 34)|(ret-addend >= 34) ) goto g24;
;**  	-----------------------    U$73 = &ret[1];
;**  	-----------------------    U$27 = 2;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4104u)

   [ B0]   BNOP    .S1     L260,4            ; |766| 
||         MV      .L2X    A10,B4
||         ADD     .S2     B5,B5,B7
||         MVK     .L1     0x2,A6
||         ADD     .D1     2,A10,A3

           ADDAH   .D2     B4,B5,B6
           ; BRANCHCC OCCURS {L260}          ; |766| 
;** --------------------------------------------------------------------------*
;**	-----------------------g15:
;** 766	-----------------------    if ( i <= *ret ) goto g17;
;** 766	-----------------------    S$2 = 0uL;
;**  	-----------------------    goto g18;
;**	-----------------------g17:
;** 766	-----------------------    S$2 = (unsigned long)*U$73;
;**	-----------------------g18:
;** 766	-----------------------    carry += S$2;
;**  	-----------------------    if ( i <= *addend ) goto g20;
;** 767	-----------------------    S$1 = 0uL;
;**  	-----------------------    goto g21;
;**	-----------------------g20:
;** 767	-----------------------    S$1 = (unsigned long)*(U$27+addend);
;**	-----------------------g21:
;** 767	-----------------------    carry += S$1;
;** 768	-----------------------    s$3 = (unsigned short)carry;
;** 769	-----------------------    *U$73++ = s$3;
;** 769	-----------------------    carry >>= 16;
;**  	-----------------------    if ( !((s$3 != 0)&(i > maxspot)) ) goto g23;
;** 771	-----------------------    maxspot = i;
;**	-----------------------g23:
;** 765	-----------------------    U$27 += 2;
;** 765	-----------------------    ++i;
;** 765	-----------------------    if ( --l$7 ) goto g15;

           MVC     .S2     CSR,B9
||         MV      .L2X    A10,B8
||         MV      .L1     A4,A5
||         MV      .S1X    B5,A4

           AND     .L2     -2,B9,B6
||         MV      .S2X    A6,B7
||         MV      .L1X    B5,A6
||         LDHU    .D2T2   *B8,B5            ; |766| (P) <0,0>  ^ 

           MVC     .S2     B6,CSR            ; interrupts off
||         MV      .L2X    A12,B4

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 765
;*      Loop opening brace source line   : 765
;*      Loop closing brace source line   : 772
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 15
;*      Unpartitioned Resource Bound     : 5
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        6     
;*      .S units                     1        2     
;*      .D units                     0        5     
;*      .M units                     0        0     
;*      .X cross paths               3        2     
;*      .T address paths             0        5     
;*      Long read paths              0        2     
;*      Long write paths             0        3     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        4     
;*      Bound(.L .S .D .LS .LSD)     3        7*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 15 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh2
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L257:    ; PIPED LOOP PROLOG
           LDHU    .D2T2   *B4,B5            ; (P) <0,1> 

           MV      .L2X    A3,B6
||         MV      .L1X    B19,A3            ; |766| (P) <0,2> 

           NOP             1
	.dwpsn	"SSHBN.C",765,0
           SUB     .L1     A11,1,A1
;** --------------------------------------------------------------------------*
L258:    ; PIPED LOOP KERNEL
DW$L$_bigmuladd$19$B:

           CMPGT   .L1     A4,A5,A7          ; <0,5> 
||         CMPGT   .L2X    A4,B5,B0          ; |766| <0,5>  ^ 

           ADD     .L2     B4,B7,B5          ; |767| <0,6> 
|| [!B0]   ZERO    .S2     B21               ; |766| <0,6> 
||         CMPGT   .L1X    A4,B5,A0          ; <0,6> 
|| [!B0]   LDHU    .D2T2   *B6,B20           ; |766| <0,6>  ^ 

   [!A0]   ZERO    .L2     B23               ; |767| <0,7> 
|| [!A0]   LDHU    .D2T2   *B5,B22           ; |767| <0,7> 

           NOP             1
   [ A0]   ZERO    .L2     B23:B22           ; |767| <0,9> 
   [ B0]   ZERO    .L2     B21:B20           ; |766| <0,10> 
           ADDU    .L2     B18,B21:B20,B17:B16 ; |766| <0,11>  ^ 

           ADD     .S2X    A3,B17,B5         ; |766| <0,12> 
||         ADDU    .L2     B16,B23:B22,B17:B16 ; |767| <0,12>  ^ 

           ADD     .L2     B5,B17,B17        ; |767| <0,13> 
||         MV      .S2     B16,B5            ; |768| <0,13>  ^ 

   [ A1]   BDEC    .S1     L258,A1           ; |765| <0,14> 
||         STH     .D2T2   B5,*B6++          ; |769| <0,14>  ^ 
||         EXTU    .S2     B5,16,16,B5       ; |768| <0,14> 

           SHRU    .S2     B17:B16,16,B19:B18 ; |769| <0,15> 
||         CMPEQ   .L2     B5,0,B5           ; <0,15> 
||         LDHU    .D2T2   *B8,B5            ; |766| <1,0>  ^ 

           XOR     .L2     1,B5,B5           ; <0,16> 
||         LDHU    .D2T2   *B4,B5            ; <1,1> 

           MV      .L1X    B19,A3            ; |766| <1,2> 

           ADD     .L1     1,A4,A4           ; |765| <0,18> 
||         AND     .S1X    A7,B5,A0          ; <0,18> 

	.dwpsn	"SSHBN.C",772,0

           ADD     .L2     2,B7,B7           ; |765| <0,19> 
|| [ A0]   MV      .L1     A6,A5             ; |771| <0,19> 
||         MV      .S1     A4,A6             ; |765| <0,19> Inserted to break DPG cycle

DW$L$_bigmuladd$19$E:
;** --------------------------------------------------------------------------*
L259:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;** 765	-----------------------    goto g34;
;**	-----------------------g24:
;**  	-----------------------    U$27 = i*2;
;**  	-----------------------    U$73 = &ret[i];
;**  	-----------------------    #pragma[60] (ret != addend;)
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4160u)

           B       .S1     L265              ; |765| 
||         MVC     .S2     B9,CSR            ; interrupts on
||         MV      .L1X    B8,A10
||         MV      .D1     A5,A4

           CALL    .S1     _safefree         ; |776| 
           NOP             4
           ; BRANCH OCCURS {L265}            ; |765| 
;** --------------------------------------------------------------------------*
L260:    
;**	-----------------------g25:
;** 766	-----------------------    if ( i <= *ret ) goto g27;
;** 766	-----------------------    S$2 = 0uL;
;**  	-----------------------    goto g28;
;**	-----------------------g27:
;** 766	-----------------------    S$2 = (unsigned long)*U$73;
;**	-----------------------g28:
;** 766	-----------------------    carry += S$2;
;**  	-----------------------    if ( i <= *addend ) goto g30;
;** 767	-----------------------    S$1 = 0uL;
;**  	-----------------------    goto g31;
;**	-----------------------g30:
;** 767	-----------------------    S$1 = (unsigned long)*(U$27+addend);
;**	-----------------------g31:
;** 767	-----------------------    carry += S$1;
;** 768	-----------------------    s$2 = (unsigned short)carry;
;** 769	-----------------------    *U$73++ = s$2;
;** 769	-----------------------    carry >>= 16;
;**  	-----------------------    if ( !((s$2 != 0)&(i > maxspot)) ) goto g33;
;** 771	-----------------------    maxspot = i;
;**	-----------------------g33:
;** 765	-----------------------    U$27 += 2;
;** 765	-----------------------    ++i;
;** 765	-----------------------    if ( --l$7 ) goto g25;

           MVC     .S2     CSR,B9
||         MV      .L2X    A10,B8
||         MV      .L1     A4,A5
||         MV      .S1X    B5,A4

           AND     .L2     -2,B9,B4
||         MV      .L1X    B5,A6
||         LDHU    .D2T2   *B8,B5            ; |766| (P) <0,0>  ^ 

           MVC     .S2     B4,CSR            ; interrupts off
||         MV      .L2X    A12,B4

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 765
;*      Loop opening brace source line   : 765
;*      Loop closing brace source line   : 772
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 15
;*      Unpartitioned Resource Bound     : 5
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        6     
;*      .S units                     1        2     
;*      .D units                     0        5     
;*      .M units                     0        0     
;*      .X cross paths               3        2     
;*      .T address paths             0        5     
;*      Long read paths              0        2     
;*      Long write paths             0        3     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        4     
;*      Bound(.L .S .D .LS .LSD)     3        7*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 15 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh2
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L261:    ; PIPED LOOP PROLOG
           LDHU    .D2T2   *B4,B5            ; (P) <0,1> 
           MV      .L1X    B19,A3            ; |766| (P) <0,2> 
           NOP             1
	.dwpsn	"SSHBN.C",765,0
           SUB     .L1     A11,1,A1
;** --------------------------------------------------------------------------*
L262:    ; PIPED LOOP KERNEL
DW$L$_bigmuladd$24$B:

           CMPGT   .L1     A4,A5,A7          ; <0,5> 
||         CMPGT   .L2X    A4,B5,B0          ; |766| <0,5>  ^ 

           ADD     .L2     B4,B7,B5          ; |767| <0,6> 
|| [!B0]   ZERO    .S2     B21               ; |766| <0,6> 
||         CMPGT   .L1X    A4,B5,A0          ; <0,6> 
|| [!B0]   LDHU    .D2T2   *B6,B20           ; |766| <0,6>  ^ 

   [!A0]   ZERO    .L2     B23               ; |767| <0,7> 
|| [!A0]   LDHU    .D2T2   *B5,B22           ; |767| <0,7> 

           NOP             1
   [ A0]   ZERO    .L2     B23:B22           ; |767| <0,9> 
   [ B0]   ZERO    .L2     B21:B20           ; |766| <0,10> 
           ADDU    .L2     B18,B21:B20,B17:B16 ; |766| <0,11>  ^ 

           ADD     .S2X    A3,B17,B5         ; |766| <0,12> 
||         ADDU    .L2     B16,B23:B22,B17:B16 ; |767| <0,12>  ^ 

           ADD     .L2     B5,B17,B17        ; |767| <0,13> 
||         MV      .S2     B16,B5            ; |768| <0,13>  ^ 

   [ A1]   BDEC    .S1     L262,A1           ; |765| <0,14> 
||         STH     .D2T2   B5,*B6++          ; |769| <0,14>  ^ 
||         EXTU    .S2     B5,16,16,B5       ; |768| <0,14> 

           SHRU    .S2     B17:B16,16,B19:B18 ; |769| <0,15> 
||         CMPEQ   .L2     B5,0,B5           ; <0,15> 
||         LDHU    .D2T2   *B8,B5            ; |766| <1,0>  ^ 

           XOR     .L2     1,B5,B5           ; <0,16> 
||         LDHU    .D2T2   *B4,B5            ; <1,1> 

           MV      .L1X    B19,A3            ; |766| <1,2> 

           ADD     .L1     1,A4,A4           ; |765| <0,18> 
||         AND     .S1X    A7,B5,A0          ; <0,18> 

	.dwpsn	"SSHBN.C",772,0

           ADD     .L2     2,B7,B7           ; |765| <0,19> 
|| [ A0]   MV      .L1     A6,A5             ; |771| <0,19> 
||         MV      .S1     A4,A6             ; |765| <0,19> Inserted to break DPG cycle

DW$L$_bigmuladd$24$E:
;** --------------------------------------------------------------------------*
L263:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1     A5,A4
||         MVC     .S2     B9,CSR            ; interrupts on
||         MV      .S1X    B8,A10

;** --------------------------------------------------------------------------*
L264:    
           CALL    .S1     _safefree         ; |776| 
           NOP             4
;** --------------------------------------------------------------------------*
L265:    
;**	-----------------------g34:
;** 774	-----------------------    *ret = maxspot;
;** 776	-----------------------    safefree((void *)workspace);
;** 777	-----------------------    return ret;

           ADDKPC  .S2     RL58,B3,0         ; |776| 
||         STH     .D1T1   A4,*A10           ; |774| 
||         MV      .L1     A13,A4            ; |776| 

RL58:      ; CALL OCCURS {_safefree}         ; |776| 
;** --------------------------------------------------------------------------*
           MV      .L1X    SP,A31            ; |778| 

           LDDW    .D1T1   *+A31(16),A13:A12 ; |778| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |778| 
||         MV      .L2     B13,B3            ; |778| 

           RET     .S2     B3                ; |778| 
||         LDDW    .D1T1   *+A31(8),A11:A10  ; |778| 
||         LDW     .D2T2   *+SP(4),B13       ; |778| 
||         MV      .L1     A10,A4            ; |777| 

           LDW     .D2T1   *++SP(32),A14     ; |778| 
	.dwpsn	"SSHBN.C",778,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |778| 

DW$253	.dwtag  DW_TAG_loop
	.dwattr DW$253, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L262:1:1297920382")
	.dwattr DW$253, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$253, DW_AT_begin_line(0x2fd)
	.dwattr DW$253, DW_AT_end_line(0x304)
DW$254	.dwtag  DW_TAG_loop_range
	.dwattr DW$254, DW_AT_low_pc(DW$L$_bigmuladd$24$B)
	.dwattr DW$254, DW_AT_high_pc(DW$L$_bigmuladd$24$E)
	.dwendtag DW$253


DW$255	.dwtag  DW_TAG_loop
	.dwattr DW$255, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L258:1:1297920382")
	.dwattr DW$255, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$255, DW_AT_begin_line(0x2fd)
	.dwattr DW$255, DW_AT_end_line(0x304)
DW$256	.dwtag  DW_TAG_loop_range
	.dwattr DW$256, DW_AT_low_pc(DW$L$_bigmuladd$19$B)
	.dwattr DW$256, DW_AT_high_pc(DW$L$_bigmuladd$19$E)
	.dwendtag DW$255


DW$257	.dwtag  DW_TAG_loop
	.dwattr DW$257, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L254:1:1297920382")
	.dwattr DW$257, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$257, DW_AT_begin_line(0x2f3)
	.dwattr DW$257, DW_AT_end_line(0x2f7)
DW$258	.dwtag  DW_TAG_loop_range
	.dwattr DW$258, DW_AT_low_pc(DW$L$_bigmuladd$12$B)
	.dwattr DW$258, DW_AT_high_pc(DW$L$_bigmuladd$12$E)
	.dwendtag DW$257


DW$259	.dwtag  DW_TAG_loop
	.dwattr DW$259, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L250:1:1297920382")
	.dwattr DW$259, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$259, DW_AT_begin_line(0x2e5)
	.dwattr DW$259, DW_AT_end_line(0x2e8)
DW$260	.dwtag  DW_TAG_loop_range
	.dwattr DW$260, DW_AT_low_pc(DW$L$_bigmuladd$5$B)
	.dwattr DW$260, DW_AT_high_pc(DW$L$_bigmuladd$5$E)
	.dwendtag DW$259

	.dwattr DW$249, DW_AT_end_file("SSHBN.C")
	.dwattr DW$249, DW_AT_end_line(0x30a)
	.dwattr DW$249, DW_AT_end_column(0x01)
	.dwendtag DW$249

	.sect	".text"
	.global	_modinv

DW$261	.dwtag  DW_TAG_subprogram, DW_AT_name("modinv"), DW_AT_symbol_name("_modinv")
	.dwattr DW$261, DW_AT_low_pc(_modinv)
	.dwattr DW$261, DW_AT_high_pc(0x00)
	.dwattr DW$261, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$261, DW_AT_begin_line(0x3a6)
	.dwattr DW$261, DW_AT_begin_column(0x08)
	.dwattr DW$261, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr DW$261, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",935,1

;******************************************************************************
;* FUNCTION NAME: _modinv                                                     *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 36 Save = 36 byte                  *
;******************************************************************************
_modinv:
;** --------------------------------------------------------------------------*
DW$262	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number"), DW_AT_symbol_name("_number")
	.dwattr DW$262, DW_AT_type(*DW$T$40)
	.dwattr DW$262, DW_AT_location[DW_OP_reg4]
DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_name("modulus"), DW_AT_symbol_name("_modulus")
	.dwattr DW$263, DW_AT_type(*DW$T$40)
	.dwattr DW$263, DW_AT_location[DW_OP_reg20]
;** 936	-----------------------    a = copybn(modulus);
;** 937	-----------------------    b = copybn(number);
;** 938	-----------------------    xp = copybn(Zero);
;** 939	-----------------------    x = copybn(One);
;** 940	-----------------------    sign = 1;
;** 942	-----------------------    if ( !bignum_cmp(b, One) ) goto g8;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _copybn           ; |936| 
           MV      .L1X    SP,A31            ; |935| 
           STW     .D2T1   A13,*SP--(40)     ; |935| 

           MV      .L1X    B3,A14
||         STW     .D1T1   A14,*-A31(20)
||         STDW    .D2T2   B11:B10,*+SP(24)

           MV      .L1X    B4,A4             ; |935| 
||         MV      .S1     A4,A10            ; |935| 
||         STDW    .D2T1   A11:A10,*+SP(8)

           ADDKPC  .S2     RL59,B3,0         ; |936| 
||         MV      .L1X    B4,A12            ; |935| 
||         STW     .D1T1   A12,*-A31(24)
||         STDW    .D2T2   B13:B12,*+SP(32)

RL59:      ; CALL OCCURS {_copybn}           ; |936| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _copybn           ; |937| 
           ADDKPC  .S2     RL60,B3,2         ; |937| 
           MV      .L2X    A4,B10            ; |936| 
           MV      .L1     A10,A4            ; |937| 
RL60:      ; CALL OCCURS {_copybn}           ; |937| 
           MVKL    .S2     _Zero,B4          ; |938| 

           MVKH    .S2     _Zero,B4          ; |938| 
||         CALL    .S1     _copybn           ; |938| 

           LDW     .D2T1   *B4,A4            ; |938| 
||         MV      .L2X    A4,B11            ; |937| 

           ADDKPC  .S2     RL61,B3,3         ; |938| 
RL61:      ; CALL OCCURS {_copybn}           ; |938| 
           MVKL    .S1     _One,A3           ; |939| 

           MVKH    .S1     _One,A3           ; |939| 
||         CALL    .S2     _copybn           ; |939| 

           LDW     .D1T1   *A3,A4            ; |939| 
||         MV      .L2X    A4,B13            ; |938| 

           ADDKPC  .S2     RL62,B3,3         ; |939| 
RL62:      ; CALL OCCURS {_copybn}           ; |939| 
           MVKL    .S2     _One,B4           ; |942| 

           MVKH    .S2     _One,B4           ; |942| 
||         CALL    .S1     _bignum_cmp       ; |942| 

           LDW     .D2T2   *B4,B4            ; |942| 
           MV      .L2X    A4,B12            ; |939| 
           ADDKPC  .S2     RL63,B3,1         ; |942| 
           MV      .L1X    B11,A4            ; |942| 
RL63:      ; CALL OCCURS {_bignum_cmp}       ; |942| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |942| 
||         MVK     .L2     0x1,B4            ; |940| 

   [!A0]   BNOP    .S1     L271,4            ; |942| 
           MV      .L1X    B4,A11            ; |940| 
           ; BRANCHCC OCCURS {L271}          ; |942| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _newbn            ; |943| 
||         LDHU    .D2T1   *B11,A4           ; |943| 

	.dwpsn	"SSHBN.C",942,0
           NOP             4
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L266
;** --------------------------------------------------------------------------*
L266:    
DW$L$_modinv$5$B:
;**	-----------------------g3:
;** 943	-----------------------    t = newbn((int)*b);
;** 944	-----------------------    q = newbn((int)*a);
;** 945	-----------------------    bigdivmod(a, b, t, q);
;** 946	-----------------------    if ( (C$12 = *t) < 2 ) goto g7;
           ADDKPC  .S2     RL64,B3,0         ; |943| 
RL64:      ; CALL OCCURS {_newbn}            ; |943| 
DW$L$_modinv$5$E:
;** --------------------------------------------------------------------------*
DW$L$_modinv$6$B:
           CALL    .S1     _newbn            ; |944| 

           LDHU    .D2T1   *B10,A4           ; |944| 
||         MV      .L1     A4,A10            ; |943| 

           ADDKPC  .S2     RL65,B3,3         ; |944| 
RL65:      ; CALL OCCURS {_newbn}            ; |944| 
           CALL    .S1     _bigdivmod        ; |945| 
           ADDKPC  .S2     RL66,B3,0         ; |945| 
           MV      .L2X    A4,B6             ; |944| 
           MV      .S1     A10,A6            ; |945| 
           MV      .D1     A4,A13            ; |944| 

           MV      .L1X    B10,A4            ; |945| 
||         MV      .D2     B11,B4            ; |945| 

RL66:      ; CALL OCCURS {_bigdivmod}        ; |945| 
DW$L$_modinv$6$E:
;** --------------------------------------------------------------------------*
DW$L$_modinv$7$B:
           LDHU    .D1T1   *A10,A3           ; |946| 
           NOP             4
           CMPLTU  .L1     A3,2,A0           ; |946| 
   [ A0]   BNOP    .S1     L270,5            ; |946| 
           ; BRANCHCC OCCURS {L270}          ; |946| 
DW$L$_modinv$7$E:
;** --------------------------------------------------------------------------*
DW$L$_modinv$8$B:
;**  	-----------------------    V$0 = C$12;
;**  	-----------------------    L$1 = V$0-1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65534, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g5:
;** 946	-----------------------    if ( t[V$0] ) goto g7;
;** 947	-----------------------    *t = C$11 = (unsigned short)(V$0-1);
;** 947	-----------------------    V$0 = C$11;
;** 947	-----------------------    if ( --L$1 ) goto g5;

           MVC     .S2     CSR,B8
||         MV      .L2X    A3,B5
||         MVK     .L1     0x1,A0

           AND     .L2     -2,B8,B7
||         MV      .S2X    A10,B4

           MVC     .S2     B7,CSR            ; interrupts off
DW$L$_modinv$8$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 946
;*      Loop opening brace source line   : 947
;*      Loop closing brace source line   : 947
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     2*       0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L267:    ; PIPED LOOP PROLOG
   [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |946| (P) <0,0>  ^ 
           NOP             1
           SUB     .L1X    B5,1,A5           ; |947| (P) <0,2> 

           SUB     .L2X    A3,1,B6
||         EXTU    .S1     A5,16,16,A3       ; |947| (P) <0,3> 

           MV      .L1     A10,A4
|| [!A0]   MVK     .L2     0x1,B1            ; (P) <0,4> 

	.dwpsn	"SSHBN.C",946,0

   [!B1]   MV      .L2X    A3,B5             ; |947| (P) <0,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |947| (P) <0,5>  ^ 
|| [!B1]   STH     .D1T1   A5,*A4            ; |947| (P) <0,5> 

;** --------------------------------------------------------------------------*
L268:    ; PIPED LOOP KERNEL
DW$L$_modinv$10$B:
	.dwpsn	"SSHBN.C",947,0
           CMPEQ   .L2     B6,0,B7           ; |947| <0,6>  ^ 
           OR      .L2     B7,B1,B0          ; |947| <0,7>  ^ 
   [ B0]   ZERO    .L1     A0                ; |947| <0,8>  ^ 

   [ A0]   BNOP    .S1     L268,1            ; |947| <0,9> 
|| [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |946| <1,0>  ^ 

           SUB     .L1X    B5,1,A5           ; |947| <1,2> 
           EXTU    .S1     A5,16,16,A3       ; |947| <1,3> 
   [!A0]   MVK     .L2     0x1,B1            ; <1,4> 

   [!B1]   MV      .L2X    A3,B5             ; |947| <1,5> 
|| [!B1]   STH     .D1T1   A5,*A4            ; |947| <1,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |947| <1,5>  ^ 

DW$L$_modinv$10$E:
;** --------------------------------------------------------------------------*
L269:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_modinv$12$B:

           MV      .L1     A4,A10
||         MVC     .S2     B8,CSR            ; interrupts on

DW$L$_modinv$12$E:
;** --------------------------------------------------------------------------*
L270:    
DW$L$_modinv$13$B:
;**	-----------------------g7:
;** 94	-----------------------    memset(a, 0, ((unsigned)*a+1u)*2u);  // [10]
;** 95	-----------------------    safefree(a);  // [10]
;** 95	-----------------------    a = b;  // [10]
;** 950	-----------------------    b = t;
;** 951	-----------------------    t = xp;
;** 952	-----------------------    xp = x;
;** 953	-----------------------    x = bigmuladd(q, xp, t);
;** 954	-----------------------    sign = -sign;
;** 94	-----------------------    memset(t, 0, ((unsigned)*t+1u)*2u);  // [10]
;** 95	-----------------------    safefree(t);  // [10]
;** 94	-----------------------    memset(q, 0, ((unsigned)*q+1u)*2u);  // [10]
;** 95	-----------------------    safefree(q);  // [10]
;** 95	-----------------------    if ( bignum_cmp(b, One) ) goto g3;  // [10]
           LDHU    .D2T1   *B10,A3           ; |94| 
           CALL    .S1     _memset           ; |94| 
           ADDKPC  .S2     RL67,B3,0         ; |94| 
           ZERO    .L2     B4                ; |94| 
           MV      .S1X    B10,A4            ; |94| 
           ADD     .L1     1,A3,A3           ; |94| 
           ADD     .L1     A3,A3,A6          ; |94| 
RL67:      ; CALL OCCURS {_memset}           ; |94| 
DW$L$_modinv$13$E:
;** --------------------------------------------------------------------------*
DW$L$_modinv$14$B:
           CALL    .S1     _safefree         ; |95| 
           ADDKPC  .S2     RL68,B3,3         ; |95| 
           MV      .L1X    B10,A4            ; |95| 
RL68:      ; CALL OCCURS {_safefree}         ; |95| 
           CALL    .S1     _bigmuladd        ; |953| 
           MV      .L2     B12,B4            ; |952| 
           MV      .S1X    B13,A6            ; |951| 
           MV      .L1     A13,A4            ; |953| 
           ADDKPC  .S2     RL69,B3,1         ; |953| 
RL69:      ; CALL OCCURS {_bigmuladd}        ; |953| 
           MV      .L2     B13,B10           ; |951| 
           LDHU    .D2T2   *B10,B4           ; |94| 
           CALL    .S1     _memset           ; |94| 
           MV      .L2     B12,B13           ; |952| 
           MV      .D2X    A4,B12            ; |953| 
           ADDKPC  .S2     RL70,B3,0         ; |94| 
           ADD     .L1X    1,B4,A3           ; |94| 

           ZERO    .L2     B4                ; |94| 
||         ADD     .L1     A3,A3,A6          ; |94| 
||         MV      .S1X    B10,A4            ; |94| 

RL70:      ; CALL OCCURS {_memset}           ; |94| 
           CALL    .S1     _safefree         ; |95| 
           MV      .L1X    B10,A4            ; |95| 
           ADDKPC  .S2     RL71,B3,3         ; |95| 
RL71:      ; CALL OCCURS {_safefree}         ; |95| 
           LDHU    .D1T1   *A13,A3           ; |94| 
           CALL    .S1     _memset           ; |94| 
           MV      .S1     A13,A4            ; |94| 
           ZERO    .L2     B4                ; |94| 
           ADDKPC  .S2     RL72,B3,0         ; |94| 
           ADD     .L1     1,A3,A3           ; |94| 
           ADD     .L1     A3,A3,A6          ; |94| 
RL72:      ; CALL OCCURS {_memset}           ; |94| 
           CALL    .S1     _safefree         ; |95| 
           MV      .L1     A13,A4            ; |95| 
           ADDKPC  .S2     RL73,B3,3         ; |95| 
RL73:      ; CALL OCCURS {_safefree}         ; |95| 
           MVKL    .S1     _One,A3           ; |95| 

           MVKH    .S1     _One,A3           ; |95| 
||         CALL    .S2     _bignum_cmp       ; |95| 

           LDW     .D1T2   *A3,B4            ; |95| 
           MV      .L1     A10,A4            ; |950| 
           ADDKPC  .S2     RL74,B3,2         ; |95| 
RL74:      ; CALL OCCURS {_bignum_cmp}       ; |95| 
DW$L$_modinv$14$E:
;** --------------------------------------------------------------------------*
DW$L$_modinv$15$B:

           MV      .L1     A4,A0             ; |95| 
||         MV      .L2X    A11,B4            ; |95| 
||         MV      .S2     B11,B10           ; |95| 

   [ A0]   B       .S1     L266              ; |95| 
||         NEG     .L2     B4,B4             ; |954| 
||         MV      .S2X    A10,B11           ; |950| 

   [ A0]   CALL    .S1     _newbn            ; |943| 
|| [ A0]   LDHU    .D2T1   *B11,A4           ; |943| 

           NOP             3
	.dwpsn	"SSHBN.C",957,0
           MV      .L1X    B4,A11            ; |954| 
           ; BRANCHCC OCCURS {L266}          ; |95| 
DW$L$_modinv$15$E:
;** --------------------------------------------------------------------------*
L271:    
;**	-----------------------g8:
;** 94	-----------------------    memset(b, 0, ((unsigned)*b+1u)*2u);  // [10]
;** 95	-----------------------    safefree(b);  // [10]
;** 94	-----------------------    memset(a, 0, ((unsigned)*a+1u)*2u);  // [10]
;** 95	-----------------------    safefree(a);  // [10]
;** 94	-----------------------    memset(xp, 0, ((unsigned)*xp+1u)*2u);  // [10]
;** 95	-----------------------    safefree(xp);  // [10]
;** 95	-----------------------    if ( sign >= 0 ) goto g18;  // [10]
           LDHU    .D2T1   *B11,A3           ; |94| 
           CALL    .S1     _memset           ; |94| 
           ADDKPC  .S2     RL75,B3,0         ; |94| 
           ZERO    .L2     B4                ; |94| 
           MV      .S1X    B11,A4            ; |94| 
           ADD     .L1     1,A3,A3           ; |94| 
           ADD     .L1     A3,A3,A6          ; |94| 
RL75:      ; CALL OCCURS {_memset}           ; |94| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _safefree         ; |95| 
           ADDKPC  .S2     RL76,B3,3         ; |95| 
           MV      .L1X    B11,A4            ; |95| 
RL76:      ; CALL OCCURS {_safefree}         ; |95| 
           LDHU    .D2T1   *B10,A3           ; |94| 
           CALL    .S1     _memset           ; |94| 
           ZERO    .L2     B4                ; |94| 
           MV      .S1X    B10,A4            ; |94| 
           ADDKPC  .S2     RL77,B3,0         ; |94| 
           ADD     .L1     1,A3,A3           ; |94| 
           ADD     .L1     A3,A3,A6          ; |94| 
RL77:      ; CALL OCCURS {_memset}           ; |94| 
           CALL    .S1     _safefree         ; |95| 
           MV      .L1X    B10,A4            ; |95| 
           ADDKPC  .S2     RL78,B3,3         ; |95| 
RL78:      ; CALL OCCURS {_safefree}         ; |95| 
           LDHU    .D2T2   *B13,B4           ; |94| 
           CALL    .S1     _memset           ; |94| 
           MV      .S1X    B13,A4            ; |94| 
           ADDKPC  .S2     RL79,B3,1         ; |94| 
           ADD     .L1X    1,B4,A3           ; |94| 

           ADD     .L1     A3,A3,A6          ; |94| 
||         ZERO    .L2     B4                ; |94| 

RL79:      ; CALL OCCURS {_memset}           ; |94| 
           CALL    .S1     _safefree         ; |95| 
           MV      .L1X    B13,A4            ; |95| 
           ADDKPC  .S2     RL80,B3,3         ; |95| 
RL80:      ; CALL OCCURS {_safefree}         ; |95| 
;** --------------------------------------------------------------------------*

           CMPLT   .L2X    A11,0,B0          ; |95| 
||         MVK     .L1     0x1,A10           ; |968| 

   [!B0]   B       .S1     L276              ; |95| 

   [ B0]   CALL    .S1     _newbn            ; |966| 
||         MV      .L2X    A12,B4

   [ B0]   LDHU    .D2T1   *B4,A4            ; |966| 
           NOP             3
           ; BRANCHCC OCCURS {L276}          ; |95| 
;** --------------------------------------------------------------------------*
;** 966	-----------------------    newx = newbn((int)*modulus);
;** 968	-----------------------    maxspot = 1;
;** 971	-----------------------    if ( !*newx ) goto g17;
;**  	-----------------------    U$73 = &newx[1];
;** 967	-----------------------    carry = 0u;
;** 971	-----------------------    i = 1;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDKPC  .S2     RL81,B3,0         ; |966| 
RL81:      ; CALL OCCURS {_newbn}            ; |966| 
;** --------------------------------------------------------------------------*

           ZERO    .L1     A16               ; |967| 
||         MVK     .S1     0x1,A7            ; |971| 
||         ADD     .D1     2,A4,A17
||         MV      .L2X    A12,B9

           MV      .L2X    A4,B10            ; |966| 
           LDHU    .D2T2   *B10,B0           ; |971| 
           NOP             4

   [!B0]   BNOP    .S1     L275,4            ; |971| 
|| [ B0]   MV      .L2     B12,B8
|| [ B0]   LDHU    .D2T2   *B9,B17           ; |972| (P) <0,0>  ^ 

   [ B0]   LDHU    .D2T2   *B8,B16           ; |972| (P) <0,1>  ^ 
           ; BRANCHCC OCCURS {L275}          ; |971| 
;** --------------------------------------------------------------------------*
;**	-----------------------g11:
;** 972	-----------------------    (i <= *modulus) ? (aword = modulus[i]) : (aword = 0u);
;** 972	-----------------------    (i <= *x) ? (bword = x[i]) : (bword = 0u);
;** 973	-----------------------    *U$73 = C$10 = (unsigned short)(aword-bword-carry);
;** 975	-----------------------    bword = ~bword;
;** 976	-----------------------    if ( carry ) goto g13;
;** 976	-----------------------    U$74 = C$10;
;** 976	-----------------------    carry = U$74 > bword;
;** 976	-----------------------    goto g14;
;**	-----------------------g13:
;** 976	-----------------------    U$74 = *U$73;
;** 976	-----------------------    carry = U$74 >= bword;
;**	-----------------------g14:
;** 977	-----------------------    if ( !U$74 ) goto g16;
;** 978	-----------------------    maxspot = i;
;**	-----------------------g16:
;** 971	-----------------------    ++U$73;
;** 971	-----------------------    if ( *newx >= (++i) ) goto g11;

           MVC     .S2     CSR,B18
||         CMPGT   .L2X    A7,B17,B0         ; |972| 
||         MV      .L1     A12,A5
||         MV      .S1X    B12,A4

           AND     .L2     -2,B18,B4
||         MV      .S2X    A7,B6

           MVC     .S2     B4,CSR            ; interrupts off
||         MV      .L2     B10,B4
||         MV      .D2X    A7,B7

           MV      .L2X    A10,B5
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 971
;*      Loop opening brace source line   : 971
;*      Loop closing brace source line   : 979
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 5
;*      Partitioned Resource Bound(*)    : 6
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        3     
;*      .S units                     1        2     
;*      .D units                     4        3     
;*      .M units                     0        0     
;*      .X cross paths               3        2     
;*      .T address paths             4        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        3     
;*      Bound(.L .S .D .LS .LSD)     5        6*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Did not find schedule
;*         ii = 15 Unsafe schedule for irregular loop
;*         ii = 15 Unsafe schedule for irregular loop
;*         ii = 15 Unsafe schedule for irregular loop
;*         ii = 15 Did not find schedule
;*         ii = 16 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh28
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L272:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L273:    ; PIPED LOOP KERNEL
DW$L$_modinv$23$B:
	.dwpsn	"SSHBN.C",971,0

   [ B0]   ZERO    .L1     A9                ; |972| <0,6> 
|| [!B0]   LDHU    .D1T1   *+A5[A7],A9       ; |972| <0,6>  ^ 
||         CMPGT   .L2     B7,B16,B0         ; |972| <0,6>  ^ 

   [!B0]   LDHU    .D1T1   *+A4[A7],A8       ; |972| <0,7>  ^ 
           NOP             2
           LDHU    .D2T2   *B4,B16           ; |971| <0,10> 
   [ B0]   ZERO    .L1     A8                ; |972| <0,11> 

           NOT     .L1     A8,A6             ; |975| <0,12> 
||         SUB     .S1     A9,A8,A3          ; |973| <0,12>  ^ 

           SUB     .L1     A3,A16,A3         ; |973| <0,13>  ^ 

           ADD     .L2     1,B7,B7           ; |971| <0,14> 
||         MV      .S2X    A16,B1            ; <0,14> 
||         STH     .D1T1   A3,*A17++         ; |973| <0,14>  ^ 

           MV      .S2     B7,B16            ; |971| <0,15> Split a long life
||         CMPLT   .L2     B16,B7,B2         ; |971| <0,15> 
||         MV      .D2     B1,B0             ; <0,15> Split a long life
|| [ B1]   LDHU    .D1T1   *-A17(2),A0       ; |976| <0,15> 

   [!B2]   B       .S2     L273              ; |971| <0,16> 
||         LDHU    .D2T2   *B9,B17           ; |972| <1,0>  ^ 

           EXTU    .S1     A6,16,16,A6       ; |975| <0,17> 
||         LDHU    .D2T2   *B8,B16           ; |972| <1,1>  ^ 

           EXTU    .S1     A3,16,16,A3       ; |973| <0,18> 

   [!B1]   CMPGTU  .L1     A3,A6,A16         ; |976| <0,19> 
|| [!B1]   MV      .S1     A3,A0             ; |976| <0,19> 

   [ A0]   MV      .L2     B6,B5             ; |978| <0,20> 
||         CMPLTU  .L1     A0,A6,A3          ; |976| <0,20> 

	.dwpsn	"SSHBN.C",979,0

           ADD     .L1     1,A7,A7           ; |971| <0,21> Define a twin register
||         MV      .S2     B16,B6            ; |971| <0,21> Split a long life
|| [ B0]   XOR     .S1     1,A3,A16          ; |976| <0,21> 
||         CMPGT   .L2     B7,B17,B0         ; |972| <1,5>  ^ 

DW$L$_modinv$23$E:
;** --------------------------------------------------------------------------*
L274:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1X    B5,A10
||         MV      .L2X    A4,B12
||         MVC     .S2     B18,CSR           ; interrupts on
||         MV      .D2     B4,B10

;** --------------------------------------------------------------------------*
L275:    
;**	-----------------------g17:
;** 980	-----------------------    *newx = maxspot;
;** 94	-----------------------    memset(x, 0, ((unsigned)*x+1u)*2u);  // [10]
;** 95	-----------------------    safefree(x);  // [10]
;** 95	-----------------------    x = newx;  // [10]
           STH     .D2T1   A10,*B10          ; |980| 
           LDHU    .D2T2   *B12,B4           ; |94| 
           CALL    .S1     _memset           ; |94| 
           ADDKPC  .S2     RL82,B3,1         ; |94| 
           MV      .S1X    B12,A4            ; |94| 
           ADD     .L1X    1,B4,A3           ; |94| 

           ADD     .L1     A3,A3,A6          ; |94| 
||         ZERO    .L2     B4                ; |94| 

RL82:      ; CALL OCCURS {_memset}           ; |94| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _safefree         ; |95| 
           ADDKPC  .S2     RL83,B3,3         ; |95| 
           MV      .L1X    B12,A4            ; |95| 
RL83:      ; CALL OCCURS {_safefree}         ; |95| 
;** --------------------------------------------------------------------------*
           MV      .L2     B10,B12           ; |95| 
;** --------------------------------------------------------------------------*
L276:    
;**	-----------------------g18:
;** 986	-----------------------    return x;

           LDDW    .D2T1   *+SP(8),A11:A10   ; |987| 
||         MV      .L1X    SP,A31            ; |987| 

           LDW     .D1T1   *+A31(16),A12     ; |987| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |987| 
||         MV      .L2X    A14,B3            ; |987| 

           RET     .S2     B3                ; |987| 
||         LDW     .D1T1   *+A31(20),A14     ; |987| 
||         LDDW    .D2T2   *+SP(32),B13:B12  ; |987| 
||         MV      .L1X    B12,A4            ; |986| 

           LDW     .D2T1   *++SP(40),A13     ; |987| 
	.dwpsn	"SSHBN.C",987,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |987| 

DW$264	.dwtag  DW_TAG_loop
	.dwattr DW$264, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L273:1:1297920382")
	.dwattr DW$264, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$264, DW_AT_begin_line(0x3cb)
	.dwattr DW$264, DW_AT_end_line(0x3d3)
DW$265	.dwtag  DW_TAG_loop_range
	.dwattr DW$265, DW_AT_low_pc(DW$L$_modinv$23$B)
	.dwattr DW$265, DW_AT_high_pc(DW$L$_modinv$23$E)
	.dwendtag DW$264


DW$266	.dwtag  DW_TAG_loop
	.dwattr DW$266, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L266:1:1297920382")
	.dwattr DW$266, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$266, DW_AT_begin_line(0x5e)
	.dwattr DW$266, DW_AT_end_line(0x3bd)
DW$267	.dwtag  DW_TAG_loop_range
	.dwattr DW$267, DW_AT_low_pc(DW$L$_modinv$5$B)
	.dwattr DW$267, DW_AT_high_pc(DW$L$_modinv$5$E)
DW$268	.dwtag  DW_TAG_loop_range
	.dwattr DW$268, DW_AT_low_pc(DW$L$_modinv$8$B)
	.dwattr DW$268, DW_AT_high_pc(DW$L$_modinv$8$E)
DW$269	.dwtag  DW_TAG_loop_range
	.dwattr DW$269, DW_AT_low_pc(DW$L$_modinv$6$B)
	.dwattr DW$269, DW_AT_high_pc(DW$L$_modinv$6$E)
DW$270	.dwtag  DW_TAG_loop_range
	.dwattr DW$270, DW_AT_low_pc(DW$L$_modinv$7$B)
	.dwattr DW$270, DW_AT_high_pc(DW$L$_modinv$7$E)
DW$271	.dwtag  DW_TAG_loop_range
	.dwattr DW$271, DW_AT_low_pc(DW$L$_modinv$12$B)
	.dwattr DW$271, DW_AT_high_pc(DW$L$_modinv$12$E)
DW$272	.dwtag  DW_TAG_loop_range
	.dwattr DW$272, DW_AT_low_pc(DW$L$_modinv$13$B)
	.dwattr DW$272, DW_AT_high_pc(DW$L$_modinv$13$E)
DW$273	.dwtag  DW_TAG_loop_range
	.dwattr DW$273, DW_AT_low_pc(DW$L$_modinv$14$B)
	.dwattr DW$273, DW_AT_high_pc(DW$L$_modinv$14$E)
DW$274	.dwtag  DW_TAG_loop_range
	.dwattr DW$274, DW_AT_low_pc(DW$L$_modinv$15$B)
	.dwattr DW$274, DW_AT_high_pc(DW$L$_modinv$15$E)

DW$275	.dwtag  DW_TAG_loop
	.dwattr DW$275, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L268:2:1297920382")
	.dwattr DW$275, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$275, DW_AT_begin_line(0x3b2)
	.dwattr DW$275, DW_AT_end_line(0x3b3)
DW$276	.dwtag  DW_TAG_loop_range
	.dwattr DW$276, DW_AT_low_pc(DW$L$_modinv$10$B)
	.dwattr DW$276, DW_AT_high_pc(DW$L$_modinv$10$E)
	.dwendtag DW$275

	.dwendtag DW$266

	.dwattr DW$261, DW_AT_end_file("SSHBN.C")
	.dwattr DW$261, DW_AT_end_line(0x3db)
	.dwattr DW$261, DW_AT_end_column(0x01)
	.dwendtag DW$261

	.sect	".text"
	.global	_decbn

DW$277	.dwtag  DW_TAG_subprogram, DW_AT_name("decbn"), DW_AT_symbol_name("_decbn")
	.dwattr DW$277, DW_AT_low_pc(_decbn)
	.dwattr DW$277, DW_AT_high_pc(0x00)
	.dwattr DW$277, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$277, DW_AT_begin_line(0x218)
	.dwattr DW$277, DW_AT_begin_column(0x06)
	.dwattr DW$277, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$277, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",537,1

;******************************************************************************
;* FUNCTION NAME: _decbn                                                      *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,B0,B1,B4,B5,B6,B7                  *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,B0,B1,B3,B4,B5,B6,B7,DP,SP         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_decbn:
;** --------------------------------------------------------------------------*
DW$278	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bn"), DW_AT_symbol_name("_bn")
	.dwattr DW$278, DW_AT_type(*DW$T$40)
	.dwattr DW$278, DW_AT_location[DW_OP_reg4]
;** 538	-----------------------    i = 1;
;** 539	-----------------------    if ( *bn < 2 ) goto g5;
;**  	-----------------------    K$14 = 65535;
;**  	-----------------------    U$8 = &bn[1];
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)

           LDHU    .D1T1   *A4,A3            ; |539| 
||         MVKL    .S2     0xffff,B5
||         ADD     .L2X    2,A4,B4
||         MVK     .L1     0x1,A6            ; |538| 

           NOP             3
           MVKH    .S2     0xffff,B5
           CMPLTU  .L1     A3,2,A0           ; |539| 

   [ A0]   BNOP    .S1     L280,5            ; |539| 
|| [!A0]   LDHU    .D2T2   *B4,B1            ; |539| (P) <0,0>  ^ 

           ; BRANCHCC OCCURS {L280}          ; |539| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 539	-----------------------    if ( *U$8 ) goto g5;
;** 540	-----------------------    *U$8++ = K$14;
;** 540	-----------------------    if ( *bn > (++i) ) goto g3;

           MVC     .S2     CSR,B6
||         MV      .L1     A4,A5

           AND     .L2     -2,B6,B7
|| [!B1]   LDHU    .D1T1   *A5,A4            ; |540| (P) <0,5> 

           MVC     .S2     B7,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 539
;*      Loop opening brace source line   : 540
;*      Loop closing brace source line   : 540
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        0     
;*      .S units                     0        1     
;*      .D units                     1        2     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             1        2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        3*    
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
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Did not find schedule
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Did not find schedule
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Did not find schedule
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Did not find schedule
;*         ii = 12 Unsafe schedule for irregular loop
;*         ii = 12 Unsafe schedule for irregular loop
;*         ii = 12 Unsafe schedule for irregular loop
;*         ii = 12 Did not find schedule
;*         ii = 13 Unsafe schedule for irregular loop
;*         ii = 13 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh28
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L277:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L278:    ; PIPED LOOP KERNEL
DW$L$_decbn$4$B:
	.dwpsn	"SSHBN.C",540,0
           MV      .L2     B1,B0             ; |539| <0,6> Split a long life
           NOP             2
   [!B1]   ADD     .L1     1,A6,A6           ; |540| <0,9> 
   [!B0]   CMPGT   .L1     A4,A6,A3          ; |540| <0,10> 
           CMPEQ   .L1     A3,0,A7           ; |540| <0,11> 

   [!B1]   STH     .D2T2   B5,*B4++          ; |540| <0,12>  ^ 
||         OR      .L1X    A7,B0,A0          ; |540| <0,12> 

   [!A0]   BNOP    .S2     L278,4            ; |540| <0,13> 
|| [!A0]   LDHU    .D2T2   *B4,B1            ; |539| <1,0>  ^ 

   [!B1]   LDHU    .D1T1   *A5,A4            ; |540| <1,5> 
DW$L$_decbn$4$E:
;** --------------------------------------------------------------------------*
L279:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           NOP             3
           MVC     .S2     B6,CSR            ; interrupts on
           MV      .L1     A5,A4
;** --------------------------------------------------------------------------*
L280:    
;**	-----------------------g5:
;** 541	-----------------------    bn[i] = bn[i]-1;
;** 541	-----------------------    return;
           LDHU    .D1T1   *+A4[A6],A3       ; |541| 
           RETNOP  .S2     B3,3              ; |542| 
           SUB     .L1     A3,1,A3           ; |541| 
	.dwpsn	"SSHBN.C",542,1
           STH     .D1T1   A3,*+A4[A6]       ; |541| 
           ; BRANCH OCCURS {B3}              ; |542| 

DW$279	.dwtag  DW_TAG_loop
	.dwattr DW$279, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L278:1:1297920382")
	.dwattr DW$279, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$279, DW_AT_begin_line(0x21b)
	.dwattr DW$279, DW_AT_end_line(0x21c)
DW$280	.dwtag  DW_TAG_loop_range
	.dwattr DW$280, DW_AT_low_pc(DW$L$_decbn$4$B)
	.dwattr DW$280, DW_AT_high_pc(DW$L$_decbn$4$E)
	.dwendtag DW$279

	.dwattr DW$277, DW_AT_end_file("SSHBN.C")
	.dwattr DW$277, DW_AT_end_line(0x21e)
	.dwattr DW$277, DW_AT_end_column(0x01)
	.dwendtag DW$277

	.sect	".text"
	.global	_bn_restore_invariant

DW$281	.dwtag  DW_TAG_subprogram, DW_AT_name("bn_restore_invariant"), DW_AT_symbol_name("_bn_restore_invariant")
	.dwattr DW$281, DW_AT_low_pc(_bn_restore_invariant)
	.dwattr DW$281, DW_AT_high_pc(0x00)
	.dwattr DW$281, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$281, DW_AT_begin_line(0x4a)
	.dwattr DW$281, DW_AT_begin_column(0x06)
	.dwattr DW$281, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$281, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",75,1

;******************************************************************************
;* FUNCTION NAME: _bn_restore_invariant                                       *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,B0,B1,B4,B5,B6,B7,B8                     *
;*   Regs Used         : A0,A3,A4,A5,B0,B1,B3,B4,B5,B6,B7,B8,DP,SP            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_bn_restore_invariant:
;** --------------------------------------------------------------------------*
DW$282	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$282, DW_AT_type(*DW$T$40)
	.dwattr DW$282, DW_AT_location[DW_OP_reg4]
;** 76	-----------------------    if ( (C$2 = *b) < 2 ) goto g5;
;**  	-----------------------    V$0 = C$2;
;** 76	-----------------------    L$1 = V$0-1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65534, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
           MV      .L1     A4,A3             ; |75| 
           LDHU    .D1T1   *A3,A5            ; |76| 
           NOP             4

           MV      .L2X    A5,B5
||         SUB     .S1     A5,1,A4           ; |76| 
||         CMPLTU  .L1     A5,2,A0           ; |76| 

   [ A0]   BNOP    .S1     L284,5            ; |76| 
           ; BRANCHCC OCCURS {L284}          ; |76| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 76	-----------------------    if ( b[V$0] ) goto g5;
;** 77	-----------------------    *b = C$1 = (unsigned short)(V$0-1);
;** 77	-----------------------    V$0 = C$1;
;** 77	-----------------------    if ( --L$1 ) goto g3;
;**	-----------------------g5:
;**  	-----------------------    return;

           MVC     .S2     CSR,B8
||         MV      .L2X    A3,B4
||         MVK     .L1     0x1,A0

           AND     .L2     -2,B8,B7
           MVC     .S2     B7,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 76
;*      Loop opening brace source line   : 77
;*      Loop closing brace source line   : 77
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     2*       0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L281:    ; PIPED LOOP PROLOG
   [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |76| (P) <0,0>  ^ 
           NOP             1
           SUB     .L1X    B5,1,A5           ; |77| (P) <0,2> 

           MV      .L2X    A4,B6
||         EXTU    .S1     A5,16,16,A4       ; |77| (P) <0,3> 

   [!A0]   MVK     .L2     0x1,B1            ; (P) <0,4> 
	.dwpsn	"SSHBN.C",76,0

   [!B1]   MV      .L2X    A4,B5             ; |77| (P) <0,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |77| (P) <0,5>  ^ 
|| [!B1]   STH     .D1T1   A5,*A3            ; |77| (P) <0,5> 

;** --------------------------------------------------------------------------*
L282:    ; PIPED LOOP KERNEL
DW$L$_bn_restore_invariant$4$B:
	.dwpsn	"SSHBN.C",77,0
           CMPEQ   .L2     B6,0,B7           ; |77| <0,6>  ^ 
           OR      .L2     B7,B1,B0          ; |77| <0,7>  ^ 
   [ B0]   ZERO    .L1     A0                ; |77| <0,8>  ^ 

   [ A0]   BNOP    .S1     L282,1            ; |77| <0,9> 
|| [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |76| <1,0>  ^ 

           SUB     .L1X    B5,1,A5           ; |77| <1,2> 
           EXTU    .S1     A5,16,16,A4       ; |77| <1,3> 
   [!A0]   MVK     .L2     0x1,B1            ; <1,4> 

   [!B1]   MV      .L2X    A4,B5             ; |77| <1,5> 
|| [!B1]   STH     .D1T1   A5,*A3            ; |77| <1,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |77| <1,5>  ^ 

DW$L$_bn_restore_invariant$4$E:
;** --------------------------------------------------------------------------*
L283:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B8,CSR            ; interrupts on
;** --------------------------------------------------------------------------*
L284:    
	.dwpsn	"SSHBN.C",78,1
           RETNOP  .S2     B3,5              ; |78| 
           ; BRANCH OCCURS {B3}              ; |78| 

DW$283	.dwtag  DW_TAG_loop
	.dwattr DW$283, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L282:1:1297920382")
	.dwattr DW$283, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$283, DW_AT_begin_line(0x4c)
	.dwattr DW$283, DW_AT_end_line(0x4d)
DW$284	.dwtag  DW_TAG_loop_range
	.dwattr DW$284, DW_AT_low_pc(DW$L$_bn_restore_invariant$4$B)
	.dwattr DW$284, DW_AT_high_pc(DW$L$_bn_restore_invariant$4$E)
	.dwendtag DW$283

	.dwattr DW$281, DW_AT_end_file("SSHBN.C")
	.dwattr DW$281, DW_AT_end_line(0x4e)
	.dwattr DW$281, DW_AT_end_column(0x01)
	.dwendtag DW$281

	.sect	".text"
	.global	_bignum_set_bit

DW$285	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_set_bit"), DW_AT_symbol_name("_bignum_set_bit")
	.dwattr DW$285, DW_AT_low_pc(_bignum_set_bit)
	.dwattr DW$285, DW_AT_high_pc(0x00)
	.dwattr DW$285, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$285, DW_AT_begin_line(0x289)
	.dwattr DW$285, DW_AT_begin_column(0x06)
	.dwattr DW$285, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$285, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",650,1

;******************************************************************************
;* FUNCTION NAME: _bignum_set_bit                                             *
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
_bignum_set_bit:
;** --------------------------------------------------------------------------*
DW$286	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bn"), DW_AT_symbol_name("_bn")
	.dwattr DW$286, DW_AT_type(*DW$T$40)
	.dwattr DW$286, DW_AT_location[DW_OP_reg4]
DW$287	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bitnum"), DW_AT_symbol_name("_bitnum")
	.dwattr DW$287, DW_AT_type(*DW$T$10)
	.dwattr DW$287, DW_AT_location[DW_OP_reg20]
DW$288	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$288, DW_AT_type(*DW$T$10)
	.dwattr DW$288, DW_AT_location[DW_OP_reg6]
;** 651	-----------------------    if ( bitnum >= (int)*bn<<4 ) goto g6;

           STW     .D2T2   B3,*SP--(8)       ; |650| 
||         SHR     .S2     B4,3,B5           ; |654| 
||         MVK     .L1     1,A8              ; |655| 
||         MV      .S1     A6,A0             ; |650| 

           LDHU    .D1T1   *A4,A3            ; |651| 
||         SHRU    .S2     B5,28,B5          ; |654| 

           ADD     .L2     B4,B5,B5          ; |654| 
           NOP             1
           MV      .L1X    B5,A5             ; |655| 

           SHR     .S1X    B5,4,A6           ; |654| 
||         AND     .L1     -16,A5,A7         ; |655| 

           ADD     .D1     1,A6,A6           ; |654| 
||         SUB     .L1X    B4,A7,A7          ; |655| 
||         SHL     .S1     A3,4,A3           ; |651| 

           NOP             1

           SHL     .S1     A8,A7,A3          ; |655| 
||         CMPLT   .L2X    B4,A3,B0          ; |651| 

   [!B0]   B       .S2     L285              ; |651| 
|| [ B0]   SHR     .S1     A5,3,A5           ; |659| 

   [!B0]   CALL    .S1     _abort            ; |652| 
|| [ B0]   AND     .L1     -2,A5,A5          ; |659| 

           NOP             2
   [ B0]   ADD     .L1     A4,A5,A5          ; |659| 
   [ B0]   ADD     .L1     2,A5,A5           ; |659| 
           ; BRANCHCC OCCURS {L285}          ; |651| 
;** --------------------------------------------------------------------------*
;** 654	-----------------------    C$2 = (bitnum>>3>>28)+bitnum;
;** 654	-----------------------    v = (C$2>>4)+1;
;** 655	-----------------------    K$12 = C$2;
;** 655	-----------------------    mask = K$21 = 1<<bitnum-(K$12&0xfffffff0);
;** 656	-----------------------    if ( value ) goto g4;
;** 659	-----------------------    C$1 = (K$12>>3&0xfffffffe)+bn+2;
;** 659	-----------------------    *C$1 = *C$1&~K$21;
;** 659	-----------------------    goto g5;
;**	-----------------------g4:
;** 657	-----------------------    bn[v] = bn[v]|mask;
;**	-----------------------g5:
;**  	-----------------------    return;
   [ A0]   LDHU    .D1T1   *+A4[A6],A7       ; |657| 
   [!A0]   LDHU    .D1T1   *A5,A4            ; |659| 
           NOP             3
   [ A0]   OR      .L1     A3,A7,A3          ; |657| 

   [ A0]   STH     .D1T1   A3,*+A4[A6]       ; |657| 
|| [!A0]   ANDN    .L1     A4,A3,A3          ; |659| 

   [!A0]   STH     .D1T1   A3,*A5            ; |659| 
           LDW     .D2T2   *++SP(8),B3       ; |661| 
           NOP             4
           RETNOP  .S2     B3,5              ; |661| 
           ; BRANCH OCCURS {B3}              ; |661| 
;** --------------------------------------------------------------------------*
L285:    
;**	-----------------------g6:
;** 652	-----------------------    abort();
;***	; the preceding call never returns
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDKPC  .S2     RL84,B3,0         ; |652| 
RL84:      ; CALL OCCURS {_abort}            ; |652| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L286:    
DW$L$_bignum_set_bit$4$B:
;**	-----------------------g7:
;** 652	-----------------------    goto g7;
	.dwpsn	"SSHBN.C",661,1
           BNOP    .S1     L286,5            ; |652| 
           ; BRANCH OCCURS {L286}            ; |652| 
DW$L$_bignum_set_bit$4$E:

DW$289	.dwtag  DW_TAG_loop
	.dwattr DW$289, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L286:1:1297920382")
	.dwattr DW$289, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$289, DW_AT_begin_line(0x28c)
	.dwattr DW$289, DW_AT_end_line(0x295)
DW$290	.dwtag  DW_TAG_loop_range
	.dwattr DW$290, DW_AT_low_pc(DW$L$_bignum_set_bit$4$B)
	.dwattr DW$290, DW_AT_high_pc(DW$L$_bignum_set_bit$4$E)
	.dwendtag DW$289

	.dwattr DW$285, DW_AT_end_file("SSHBN.C")
	.dwattr DW$285, DW_AT_end_line(0x295)
	.dwattr DW$285, DW_AT_end_column(0x01)
	.dwendtag DW$285

	.sect	".text"
	.global	_bn_power_2

DW$291	.dwtag  DW_TAG_subprogram, DW_AT_name("bn_power_2"), DW_AT_symbol_name("_bn_power_2")
	.dwattr DW$291, DW_AT_low_pc(_bn_power_2)
	.dwattr DW$291, DW_AT_high_pc(0x00)
	.dwattr DW$291, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$291, DW_AT_begin_line(0x62)
	.dwattr DW$291, DW_AT_begin_column(0x08)
	.dwattr DW$291, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$291, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",99,1

;******************************************************************************
;* FUNCTION NAME: _bn_power_2                                                 *
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
_bn_power_2:
;** --------------------------------------------------------------------------*
DW$292	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$292, DW_AT_type(*DW$T$10)
	.dwattr DW$292, DW_AT_location[DW_OP_reg4]
;** 100	-----------------------    ret = newbn(((n>>3>>28)+n>>4)+1);
;** 101	-----------------------    bignum_set_bit(ret, n, 1);
;** 102	-----------------------    return ret;
           STW     .D2T1   A11,*SP--(16)     ; |99| 

           CALL    .S1     _newbn            ; |100| 
||         MV      .L1     A4,A10            ; |99| 
||         STW     .D2T1   A10,*+SP(8)       ; |99| 

           SHR     .S1     A10,3,A3          ; |100| 
           SHRU    .S1     A3,28,A3          ; |100| 
           ADD     .L1     A10,A3,A3         ; |100| 
           SHR     .S1     A3,4,A3           ; |100| 

           ADDKPC  .S2     RL85,B3,0         ; |100| 
||         ADD     .L1     1,A3,A4           ; |100| 
||         MV      .L2     B3,B13            ; |99| 
||         STW     .D2T2   B13,*+SP(12)      ; |99| 

RL85:      ; CALL OCCURS {_newbn}            ; |100| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_set_bit   ; |101| 
           ADDKPC  .S2     RL86,B3,1         ; |101| 
           MV      .L1     A4,A11            ; |100| 
           MVK     .S1     0x1,A6            ; |101| 
           MV      .L2X    A10,B4            ; |101| 
RL86:      ; CALL OCCURS {_bignum_set_bit}   ; |101| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A10       ; |103| 
||         MV      .L2     B13,B3            ; |103| 

           RET     .S2     B3                ; |103| 
||         LDW     .D2T2   *+SP(12),B13      ; |103| 

           LDW     .D2T1   *++SP(16),A11     ; |103| 
||         MV      .L1     A11,A4            ; |102| 

	.dwpsn	"SSHBN.C",103,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |103| 
	.dwattr DW$291, DW_AT_end_file("SSHBN.C")
	.dwattr DW$291, DW_AT_end_line(0x67)
	.dwattr DW$291, DW_AT_end_column(0x01)
	.dwendtag DW$291

	.sect	".text"
	.global	_bignum_rshift

DW$293	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_rshift"), DW_AT_symbol_name("_bignum_rshift")
	.dwattr DW$293, DW_AT_low_pc(_bignum_rshift)
	.dwattr DW$293, DW_AT_high_pc(0x00)
	.dwattr DW$293, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$293, DW_AT_begin_line(0x2bf)
	.dwattr DW$293, DW_AT_begin_column(0x08)
	.dwattr DW$293, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$293, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",704,1

;******************************************************************************
;* FUNCTION NAME: _bignum_rshift                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,A20,A21, *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,B10,B11,B13,DP,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                  *
;******************************************************************************
_bignum_rshift:
;** --------------------------------------------------------------------------*
DW$294	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$294, DW_AT_type(*DW$T$40)
	.dwattr DW$294, DW_AT_location[DW_OP_reg4]
DW$295	.dwtag  DW_TAG_formal_parameter, DW_AT_name("shift"), DW_AT_symbol_name("_shift")
	.dwattr DW$295, DW_AT_type(*DW$T$10)
	.dwattr DW$295, DW_AT_location[DW_OP_reg20]
;** 709	-----------------------    bits = bignum_bitcount(a)-shift;
;** 710	-----------------------    ret = newbn((bits+15>>3>>28)+bits+15>>4);
;** 712	-----------------------    if ( ret == NULL ) goto g5;
           CALL    .S1     _bignum_bitcount  ; |709| 
           STW     .D2T2   B11,*SP--(16)     ; |704| 
           STW     .D2T2   B10,*+SP(8)       ; |704| 
           STW     .D2T2   B13,*+SP(12)      ; |704| 
           MV      .L2X    A4,B11            ; |704| 

           ADDKPC  .S2     RL87,B3,0         ; |709| 
||         MV      .L2     B4,B10            ; |704| 
||         MV      .D2     B3,B13            ; |704| 

RL87:      ; CALL OCCURS {_bignum_bitcount}  ; |709| 
;** --------------------------------------------------------------------------*
           SUB     .L1X    A4,B10,A3         ; |709| 

           CALL    .S1     _newbn            ; |710| 
||         ADD     .L1     15,A3,A4          ; |710| 

           SHR     .S1     A4,3,A4           ; |710| 
           SHRU    .S1     A4,28,A4          ; |710| 
           ADD     .L1     A3,A4,A3          ; |710| 
           ADD     .L1     15,A3,A3          ; |710| 

           ADDKPC  .S2     RL88,B3,0         ; |710| 
||         SHR     .S1     A3,4,A4           ; |710| 

RL88:      ; CALL OCCURS {_newbn}            ; |710| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |710| 
||         SHR     .S2     B10,3,B4          ; |713| 

   [ A0]   LDHU    .D1T1   *A0,A1            ; |718| 
|| [!A0]   B       .S1     L290              ; |712| 
||         SHRU    .S2     B4,28,B4          ; |713| 
|| [!A0]   MVK     .L1     0x1,A1            ; nullify predicate

           ADD     .L2     B10,B4,B6         ; |713| 
||         MVK     .S2     16,B7             ; |715| 
|| [ A0]   MVK     .L1     0x2,A16
|| [ A0]   ADD     .S1     2,A0,A17

           AND     .L2     -16,B6,B4         ; |714| 
||         SHR     .S2     B6,4,B5           ; |717| 

           SUB     .L2     B10,B4,B4         ; |714| 
||         ADDAH   .D2     B11,B5,B5         ; |717| 

           SHR     .S2     B6,4,B7           ; |713| 
|| [ A0]   LDHU    .D2T2   *+B5(2),B5        ; |717| 
||         SUB     .L2     B7,B4,B8          ; |715| 

   [!A1]   B       .S1     L290              ; |718| 
|| [ A0]   MVK     .L2     0x1,B6            ; |718| 

           ; BRANCHCC OCCURS {L290}          ; |712| 
;** --------------------------------------------------------------------------*
;** 713	-----------------------    C$1 = (shift>>3>>28)+shift;
;** 713	-----------------------    shiftw = C$1>>4;
;** 714	-----------------------    shiftb = shift-(C$1&0xfffffff0);
;** 715	-----------------------    shiftbb = 16-shiftb;
;** 717	-----------------------    ai1 = a[(C$1>>3>>1)+1];
;** 718	-----------------------    if ( !*ret ) goto g5;
;**  	-----------------------    U$58 = &ret[1];
;**  	-----------------------    U$47 = 2;
;** 718	-----------------------    i = 1;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           NOP             5
           ; BRANCHCC OCCURS {L290}          ; |718| 
;** --------------------------------------------------------------------------*
;**	-----------------------g4:
;** 719	-----------------------    ai = ai1;
;**  	-----------------------    (i+shiftw+1 <= *a) ? (ai1 = *(shiftw*2+U$47+a+2)) : (ai1 = 0u);
;**  	-----------------------    *U$58++ = ai>>shiftb|(unsigned)ai1<<shiftbb;
;** 718	-----------------------    U$47 += 2;
;** 718	-----------------------    if ( *ret >= (++i) ) goto g4;
;**	-----------------------g5:
;** 725	-----------------------    return ret;

           MVC     .S2     CSR,B9
||         MV      .L1X    B7,A3

           AND     .L2     -2,B9,B7
||         MV      .L1X    B4,A5
||         MV      .S2     B11,B4

           MVC     .S2     B7,CSR            ; interrupts off
||         MV      .L1X    B5,A7
||         MV      .L2X    A0,B5

           MV      .L1X    B11,A9
           MV      .L1X    B8,A6
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 718
;*      Loop opening brace source line   : 718
;*      Loop closing brace source line   : 722
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     1        2     
;*      .D units                     3        2     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             3        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2     
;*      Bound(.L .S .D .LS .LSD)     4*       3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L287:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L288:    ; PIPED LOOP KERNEL
DW$L$_bignum_rshift$7$B:
	.dwpsn	"SSHBN.C",718,0

           MV      .L1     A7,A8             ; |719| <0,0> 
||         LDHU    .D2T2   *B4,B7            ; <0,0>  ^ 

           SHRU    .S1     A8,A5,A8          ; <0,1> 
           LDHU    .D2T2   *B5,B7            ; |718| <0,2> 
           ADD     .L2X    A3,B6,B7          ; <0,3> 

           ADDAH   .D1     A16,A3,A18        ; <0,4> 
||         ADD     .L2     1,B7,B8           ; <0,4> 

           ADD     .L1     A9,A18,A18        ; <0,5> 
||         CMPGT   .L2     B8,B7,B1          ; <0,5>  ^ 

           ADD     .L2     1,B6,B6           ; |718| <0,6> 
|| [!B1]   LDHU    .D1T1   *+A18(2),A7       ; <0,6>  ^ 

           CMPLT   .L2     B7,B6,B0          ; |718| <0,7> 
   [!B0]   BNOP    .S2     L288,1            ; |718| <0,8> 
   [ B1]   ZERO    .L1     A7                ; <0,10> 
           SHL     .S1     A7,A6,A18         ; <0,11>  ^ 
           OR      .L1     A18,A8,A8         ; <0,12>  ^ 
	.dwpsn	"SSHBN.C",722,0

           ADD     .L1     2,A16,A16         ; |718| <0,13> Define a twin register
||         STH     .D1T1   A8,*A17++         ; <0,13>  ^ 

DW$L$_bignum_rshift$7$E:
;** --------------------------------------------------------------------------*
L289:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B9,CSR            ; interrupts on
;** --------------------------------------------------------------------------*
L290:    

           LDW     .D2T2   *+SP(8),B10       ; |726| 
||         MV      .L2     B13,B3            ; |726| 

           RET     .S2     B3                ; |726| 
||         LDW     .D2T2   *+SP(12),B13      ; |726| 

           LDW     .D2T2   *++SP(16),B11     ; |726| 
	.dwpsn	"SSHBN.C",726,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |726| 

DW$296	.dwtag  DW_TAG_loop
	.dwattr DW$296, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L288:1:1297920382")
	.dwattr DW$296, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$296, DW_AT_begin_line(0x2ce)
	.dwattr DW$296, DW_AT_end_line(0x2d2)
DW$297	.dwtag  DW_TAG_loop_range
	.dwattr DW$297, DW_AT_low_pc(DW$L$_bignum_rshift$7$B)
	.dwattr DW$297, DW_AT_high_pc(DW$L$_bignum_rshift$7$E)
	.dwendtag DW$296

	.dwattr DW$293, DW_AT_end_file("SSHBN.C")
	.dwattr DW$293, DW_AT_end_line(0x2d6)
	.dwattr DW$293, DW_AT_end_column(0x01)
	.dwendtag DW$293

	.sect	".text"
	.global	_bignum_mod_short

DW$298	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_mod_short"), DW_AT_symbol_name("_bignum_mod_short")
	.dwattr DW$298, DW_AT_low_pc(_bignum_mod_short)
	.dwattr DW$298, DW_AT_high_pc(0x00)
	.dwattr DW$298, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$298, DW_AT_begin_line(0x356)
	.dwattr DW$298, DW_AT_begin_column(0x10)
	.dwattr DW$298, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr DW$298, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",855,1

;******************************************************************************
;* FUNCTION NAME: _bignum_mod_short                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 36 Save = 36 byte                  *
;******************************************************************************
_bignum_mod_short:
;** --------------------------------------------------------------------------*
DW$299	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number"), DW_AT_symbol_name("_number")
	.dwattr DW$299, DW_AT_type(*DW$T$40)
	.dwattr DW$299, DW_AT_location[DW_OP_reg4]
DW$300	.dwtag  DW_TAG_formal_parameter, DW_AT_name("modulus"), DW_AT_symbol_name("_modulus")
	.dwattr DW$300, DW_AT_type(*DW$T$9)
	.dwattr DW$300, DW_AT_location[DW_OP_reg20]
;** 859	-----------------------    r = 0uL;
;** 861	-----------------------    if ( !(C$2 = *number) ) goto g4;

           MV      .L1X    SP,A31            ; |855| 
||         STW     .D2T1   A13,*SP--(40)     ; |855| 
||         MV      .D1     A4,A3             ; |855| 
||         MVKL    .S1     0x8000,A4
||         ZERO    .L2     B5

           LDHU    .D1T1   *A3,A0            ; |861| 
||         STDW    .D2T2   B11:B10,*+SP(24)
||         MVKH    .S1     0x8000,A4
||         ZERO    .L2     B11:B10           ; |859| 
||         ZERO    .L1     A5

           STW     .D1T1   A12,*-A31(24)

           MV      .L1X    B4,A12            ; |855| 
||         STDW    .D2T2   B13:B12,*+SP(32)

           STW     .D1T1   A14,*-A31(20)
||         MV      .L1X    B3,A14

           STDW    .D2T1   A11:A10,*+SP(8)

   [!A0]   B       .S1     L292              ; |861| 
||         ADDAH   .D1     A3,A0,A10
||         MV      .L1     A0,A11            ; |862| 

   [ A0]   CALL    .S1     __remul
           NOP             4
           ; BRANCHCC OCCURS {L292}          ; |861| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    K$11 = 32768uL%(unsigned long)modulus;
;**  	-----------------------    U$16 = &number[C$2];
;** 862	-----------------------    L$1 = (int)C$2;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDKPC  .S2     RL89,B3,0
RL89:      ; CALL OCCURS {__remul} 
;** --------------------------------------------------------------------------*
           CALL    .S1     __remul           ; |862| 

           LDHU    .D1T1   *A10--,A4         ; |862| 
||         MV      .L2X    A4,B12

           NOP             1
           ZERO    .L2     B13               ; |862| 
	.dwpsn	"SSHBN.C",861,0
           MV      .L1     A5,A13
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L291:    
DW$L$_bignum_mod_short$4$B:
	.dwpsn	"SSHBN.C",862,0
;**	-----------------------g3:
;** 862	-----------------------    r = (K$11*r*2uL+(unsigned long)*U$16--%(unsigned long)modulus)%(unsigned long)modulus;
;** 861	-----------------------    if ( --L$1 ) goto g3;

           MV      .L2     B13,B5            ; |862| 
||         MV      .D2X    A12,B4            ; |862| 
||         MV      .L1X    B13,A5            ; |862| 
||         ADDKPC  .S2     RL91,B3,0         ; |862| 

RL91:      ; CALL OCCURS {__remul}           ; |862| 
DW$L$_bignum_mod_short$4$E:
;** --------------------------------------------------------------------------*
DW$L$_bignum_mod_short$5$B:
           MPYHLU  .M2     B10,B12,B6        ; |862| 
           MPYHLU  .M2     B12,B10,B5        ; |862| 

           MPYSU   .M1X    A13,B10,A3        ; |862| 
||         MPYSU   .M2     B11,B12,B4        ; |862| 

           MPYU    .M2     B10,B12,B8        ; |862| 

           ADD     .L2     B6,B5,B5          ; |862| 
||         MPYHU   .M2     B12,B10,B7        ; |862| 

           SHL     .S2     B5,16,B5:B4       ; |862| 
||         ADD     .L2X    B4,A3,B6          ; |862| 

           CALL    .S1     __remul           ; |862| 
||         ADDU    .L2     B8,B5:B4,B5:B4    ; |862| 
||         ADD     .S2     B7,B6,B6          ; |862| 

           ADD     .L2     B6,B5,B5          ; |862| 
           SHL     .S2     B5:B4,1,B7:B6     ; |862| 
           ADDKPC  .S2     RL92,B3,0         ; |862| 
           ADDU    .L1X    B6,A5:A4,A5:A4    ; |862| 

           ADD     .L1X    B7,A5,A5          ; |862| 
||         MV      .L2     B13,B5            ; |862| 
||         MV      .D2X    A12,B4            ; |862| 

RL92:      ; CALL OCCURS {__remul}           ; |862| 
DW$L$_bignum_mod_short$5$E:
;** --------------------------------------------------------------------------*
DW$L$_bignum_mod_short$6$B:

           SUB     .L1     A11,1,A0          ; |861| 
||         SUB     .S1     A11,1,A11         ; |861| 
||         MV      .L2X    A4,B10            ; |862| 

   [ A0]   B       .S1     L291              ; |861| 
||         MV      .L2X    A5,B11            ; |862| 
|| [ A0]   LDHU    .D1T1   *A10--,A4         ; |862| 

   [ A0]   CALL    .S1     __remul           ; |862| 
           NOP             4
           ; BRANCHCC OCCURS {L291}          ; |861| 
DW$L$_bignum_mod_short$6$E:
;** --------------------------------------------------------------------------*
L292:    
;**	-----------------------g4:
;** 863	-----------------------    return (unsigned short)r;

           LDDW    .D2T1   *+SP(8),A11:A10   ; |864| 
||         MV      .L1X    SP,A31            ; |864| 

           LDW     .D1T1   *+A31(16),A12     ; |864| 
||         LDDW    .D2T2   *+SP(32),B13:B12  ; |864| 
||         MV      .L2X    A14,B3            ; |864| 

           RET     .S2     B3                ; |864| 
||         LDW     .D1T1   *+A31(20),A14     ; |864| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |864| 
||         MV      .L1X    B10,A3            ; |863| 

           LDW     .D2T1   *++SP(40),A13     ; |864| 
           NOP             3
	.dwpsn	"SSHBN.C",864,1
           EXTU    .S1     A3,16,16,A4       ; |863| 
           ; BRANCH OCCURS {B3}              ; |864| 

DW$301	.dwtag  DW_TAG_loop
	.dwattr DW$301, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L291:1:1297920382")
	.dwattr DW$301, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$301, DW_AT_begin_line(0x35d)
	.dwattr DW$301, DW_AT_end_line(0x35e)
DW$302	.dwtag  DW_TAG_loop_range
	.dwattr DW$302, DW_AT_low_pc(DW$L$_bignum_mod_short$4$B)
	.dwattr DW$302, DW_AT_high_pc(DW$L$_bignum_mod_short$4$E)
DW$303	.dwtag  DW_TAG_loop_range
	.dwattr DW$303, DW_AT_low_pc(DW$L$_bignum_mod_short$5$B)
	.dwattr DW$303, DW_AT_high_pc(DW$L$_bignum_mod_short$5$E)
DW$304	.dwtag  DW_TAG_loop_range
	.dwattr DW$304, DW_AT_low_pc(DW$L$_bignum_mod_short$6$B)
	.dwattr DW$304, DW_AT_high_pc(DW$L$_bignum_mod_short$6$E)
	.dwendtag DW$301

	.dwattr DW$298, DW_AT_end_file("SSHBN.C")
	.dwattr DW$298, DW_AT_end_line(0x360)
	.dwattr DW$298, DW_AT_end_column(0x01)
	.dwendtag DW$298

	.sect	".text"
	.global	_bignum_from_long

DW$305	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_from_long"), DW_AT_symbol_name("_bignum_from_long")
	.dwattr DW$305, DW_AT_low_pc(_bignum_from_long)
	.dwattr DW$305, DW_AT_high_pc(0x00)
	.dwattr DW$305, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$305, DW_AT_begin_line(0x330)
	.dwattr DW$305, DW_AT_begin_column(0x08)
	.dwattr DW$305, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$305, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",817,1

;******************************************************************************
;* FUNCTION NAME: _bignum_from_long                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,A20,A21, *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,A20,A21, *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                  *
;******************************************************************************
_bignum_from_long:
;** --------------------------------------------------------------------------*
DW$306	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nn"), DW_AT_symbol_name("_nn")
	.dwattr DW$306, DW_AT_type(*DW$T$13)
	.dwattr DW$306, DW_AT_location[DW_OP_reg4]
;** 821	-----------------------    ret = newbn(3);
;** 822	-----------------------    ret[1] = nn;
;** 823	-----------------------    ret[2] = nn>>16;
;** 824	-----------------------    ret[3] = 0u;
;** 825	-----------------------    *ret = (ret[2]) ? 2u : 1u;
;** 826	-----------------------    return ret;
           CALL    .S1     _newbn            ; |821| 
           STW     .D2T2   B11,*SP--(16)     ; |817| 
           STW     .D2T2   B13,*+SP(12)      ; |817| 
           STW     .D2T2   B10,*+SP(8)       ; |817| 
           MV      .L2X    A5,B11            ; |817| 

           ADDKPC  .S2     RL93,B3,0         ; |821| 
||         MVK     .L1     0x3,A4            ; |821| 
||         MV      .L2     B3,B13            ; |817| 
||         MV      .D2X    A4,B10            ; |817| 

RL93:      ; CALL OCCURS {_newbn}            ; |821| 
;** --------------------------------------------------------------------------*

           SHRU    .S2     B11:B10,16,B5:B4  ; |823| 
||         STH     .D1T2   B10,*+A4(2)       ; |822| 

           ZERO    .L2     B4                ; |824| 
||         STH     .D1T2   B4,*+A4(4)        ; |823| 

           STH     .D1T2   B4,*+A4(6)        ; |824| 
           LDHU    .D1T1   *+A4(4),A0        ; |825| 
           MVK     .L1     0x2,A3            ; |825| 
           MV      .L2     B13,B3            ; |827| 
           LDW     .D2T2   *+SP(12),B13      ; |827| 
           LDW     .D2T2   *+SP(8),B10       ; |827| 
   [!A0]   MVK     .L1     0x1,A3            ; |825| 

           STH     .D1T1   A3,*A4            ; |825| 
||         RET     .S2     B3                ; |827| 

           LDW     .D2T2   *++SP(16),B11     ; |827| 
	.dwpsn	"SSHBN.C",827,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |827| 
	.dwattr DW$305, DW_AT_end_file("SSHBN.C")
	.dwattr DW$305, DW_AT_end_line(0x33b)
	.dwattr DW$305, DW_AT_end_column(0x01)
	.dwendtag DW$305

	.sect	".text"
	.global	_bignum_decimal

DW$307	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_decimal"), DW_AT_symbol_name("_bignum_decimal")
	.dwattr DW$307, DW_AT_low_pc(_bignum_decimal)
	.dwattr DW$307, DW_AT_high_pc(0x00)
	.dwattr DW$307, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$307, DW_AT_begin_line(0x3e1)
	.dwattr DW$307, DW_AT_begin_column(0x07)
	.dwattr DW$307, DW_AT_frame_base[DW_OP_breg31 56]
	.dwattr DW$307, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",994,1

;******************************************************************************
;* FUNCTION NAME: _bignum_decimal                                             *
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
;*   Local Frame Size  : 0 Args + 12 Auto + 44 Save = 56 byte                 *
;******************************************************************************
_bignum_decimal:
;** --------------------------------------------------------------------------*
DW$308	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$308, DW_AT_type(*DW$T$40)
	.dwattr DW$308, DW_AT_location[DW_OP_reg4]
;* 1016	-----------------------    (i = bignum_bitcount(x)) ? (ndigits = ((int)_lo(_mpyli(28, i))+92)/93) : (ndigits = 1);
           CALL    .S1     _bignum_bitcount  ; |1016| 
           MV      .L1X    SP,A31            ; |994| 
           STW     .D2T1   A15,*SP--(56)     ; |994| 

           STDW    .D1T1   A13:A12,*-A31(32)
||         STDW    .D2T2   B11:B10,*+SP(40)

           STDW    .D1T1   A11:A10,*-A31(40)
||         STW     .D2T2   B3,*+SP(36)

           ADDKPC  .S2     RL94,B3,0         ; |1016| 
||         STW     .D1T1   A14,*-A31(24)
||         MV      .L2X    A4,B11            ; |994| 
||         STDW    .D2T2   B13:B12,*+SP(48)

RL94:      ; CALL OCCURS {_bignum_bitcount}  ; |1016| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |1016| 
||         MVK     .S1     28,A3             ; |1016| 
||         MVK     .S2     0x5d,B4           ; |1016| 
||         MVK     .L2     0x1,B10           ; |1016| 

           MPYLI   .M1     A3,A0,A5:A4       ; |1016| 
|| [!A0]   B       .S1     L293              ; |1016| 

   [ A0]   CALL    .S1     __divi            ; |1016| 
   [!A0]   CALL    .S1     _safemalloc       ; |1022| 
           NOP             1
           ADDAW   .D1     A4,23,A4          ; |1016| 
           NOP             1
           ; BRANCHCC OCCURS {L293}          ; |1016| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL95,B3,0         ; |1016| 
RL95:      ; CALL OCCURS {__divi}            ; |1016| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _safemalloc       ; |1022| 
           NOP             2
           MV      .L2X    A4,B10            ; |1016| 
;** --------------------------------------------------------------------------*
L293:    
;* 1022	-----------------------    ret = safemalloc(U$16 = ++ndigits, 1u);
;* 1029	-----------------------    workspace = safemalloc((unsigned)*x, 2u);
;* 1030	-----------------------    if ( !(U$19 = *x) ) goto g4;
;**  	-----------------------    U$29 = workspace;
;**  	-----------------------    U$25 = 0;
;* 1030	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDKPC  .S2     RL96,B3,0         ; |1022| 

           ADD     .L2     1,B10,B10         ; |1022| 
||         ADD     .L1X    1,B10,A4          ; |1022| 
||         MVK     .D2     0x1,B4            ; |1022| 

RL96:      ; CALL OCCURS {_safemalloc}       ; |1022| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _safemalloc       ; |1029| 
||         STW     .D2T1   A4,*+SP(4)        ; |1022| 

           LDHU    .D2T1   *B11,A4           ; |1029| 
           ADDKPC  .S2     RL97,B3,2         ; |1029| 
           MVK     .L2     0x2,B4            ; |1029| 
RL97:      ; CALL OCCURS {_safemalloc}       ; |1029| 
;** --------------------------------------------------------------------------*

           LDHU    .D2T2   *B11,B0           ; |1030| 
||         ZERO    .L1     A5
||         ZERO    .S1     A3                ; |1030| 
||         MV      .L2X    A4,B13            ; |1029| 

           NOP             3
           STW     .D2T2   B10,*+SP(8)       ; |1022| 

   [!B0]   BNOP    .S1     L297,1            ; |1030| 
|| [!B0]   ZERO    .L1     A31               ; |1039| 
|| [!B0]   SUB     .S2     B10,1,B12         ; |1038| 
|| [!B0]   LDW     .D2T1   *+SP(4),A3        ; |1038| 
||         ADD     .L2     B0,B0,B4          ; |1031| 

           SUB     .L2X    B4,A5,B4          ; |1031| 
           ADD     .L2     B11,B4,B9         ; |1031| 
   [ B0]   LDHU    .D2T2   *B9,B4            ; |1031| (P) <0,3>  ^ 
   [!B0]   ADD     .L1X    A3,B10,A5         ; |1039| 
           ; BRANCHCC OCCURS {L297}          ; |1030| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;* 1031	-----------------------    *U$29++ = *(U$19*2-U$25+x);
;* 1030	-----------------------    U$25 += 2;
;* 1030	-----------------------    U$19 = *x;
;* 1030	-----------------------    if ( U$19 > (++i) ) goto g3;

           MVC     .S2     CSR,B16
||         MV      .L2X    A3,B5
||         MV      .D2     B11,B7
||         MVK     .L1     0x1,A0
||         MVK     .S1     0x1,A1

           AND     .L2     -2,B16,B17
||         MV      .S2X    A5,B8

           MVC     .S2     B17,CSR           ; interrupts off
||         MV      .L2X    A4,B6

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 1030
;*      Loop opening brace source line   : 1031
;*      Loop closing brace source line   : 1031
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 3
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
;*      Addition ops (.LSD)          3        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L294:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L295:    ; PIPED LOOP KERNEL
DW$L$_bignum_decimal$10$B:
	.dwpsn	"SSHBN.C",1031,0
   [ A0]   STH     .D2T2   B4,*B6++          ; |1031| <0,8>  ^ 
           LDHU    .D2T2   *B7,B9            ; |1030| <0,9>  ^ 
           NOP             3
           ADD     .L2     1,B5,B5           ; |1030| <0,13> 

           ADD     .S2     2,B8,B8           ; |1030| <0,14> 
||         CMPGT   .L2     B9,B5,B0          ; |1030| <0,14> 
||         ADD     .D2     B9,B9,B9          ; |1031| <1,0>  ^ 

   [!B0]   ZERO    .L1     A1                ; |1030| <0,15> 
||         SUB     .L2     B9,B8,B9          ; |1031| <1,1>  ^ 

   [ A1]   B       .S1     L295              ; |1030| <0,16> 
||         ADD     .L2     B7,B9,B9          ; |1031| <1,2>  ^ 

   [ A1]   LDHU    .D2T2   *B9,B4            ; |1031| <1,3>  ^ 
           NOP             2
           MV      .L1     A1,A0             ; |1030| <0,20> Split a long life
           NOP             1
DW$L$_bignum_decimal$10$E:
;** --------------------------------------------------------------------------*
L296:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(4),A3        ; |1038| 
           MV      .L2     B7,B11
           MVC     .S2     B16,CSR           ; interrupts on
           ZERO    .S1     A31               ; |1039| 
           SUB     .D2     B10,1,B12         ; |1038| 
           ADD     .L1X    A3,B10,A5         ; |1039| 
;** --------------------------------------------------------------------------*
L297:    
;**	-----------------------g4:
;* 1038	-----------------------    ndigit = ndigits-1;
;* 1039	-----------------------    ret[ndigits-1] = 0;
;**  	-----------------------    K$53 = 48u;
;**  	-----------------------    U$56 = C$2 = &ret[ndigit];
;**  	-----------------------    U$57 = &C$2[-1];
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STB     .D1T1   A31,*-A5(1)       ; |1039| 
||         ADD     .L2X    A3,B12,B10
||         ADD     .L1X    A3,B12,A4
||         MVK     .S1     0x1,A3            ; |1041| 

           LDHU    .D2T2   *B11,B0           ; |1043| 
||         SUB     .L1     A4,1,A15
||         MV      .S1X    B13,A13

           NOP             3
           STW     .D2T1   A3,*+SP(12)       ; |1041| 
	.dwpsn	"SSHBN.C",1040,0
   [!B0]   B       .S1     L300              ; |1043| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L298
;** --------------------------------------------------------------------------*
L298:    
DW$L$_bignum_decimal$14$B:
;**	-----------------------g5:
;* 1041	-----------------------    iszero = 1;
;* 1042	-----------------------    carry = 0uL;
;* 1043	-----------------------    if ( !*x ) goto g10;

   [ B0]   LDHU    .D1T1   *A13,A3           ; |1044| 
||         ZERO    .L1     A11:A10           ; |1042| 

           NOP             4
           ; BRANCHCC OCCURS {L300}          ; |1043| 
DW$L$_bignum_decimal$14$E:
;** --------------------------------------------------------------------------*
DW$L$_bignum_decimal$15$B:
;**  	-----------------------    U$29 = workspace;
;* 1043	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           CALL    .S2     __divul
||         SHL     .S1     A11:A10,16,A5:A4  ; |1044| 
||         ZERO    .L1     A12               ; |1043| 

           NOP             3
	.dwpsn	"SSHBN.C",1043,0
           ADDU    .L1     A3,A5:A4,A11:A10  ; |1044| 
DW$L$_bignum_decimal$15$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L299:    
DW$L$_bignum_decimal$16$B:
;**	-----------------------g7:
;* 1044	-----------------------    carry = (carry<<16)+(unsigned long)*U$29;
;**  	-----------------------    *U$29++ = C$1 = (unsigned short)(carry/10uL);
;**  	-----------------------    if ( !C$1 ) goto g9;
;* 1047	-----------------------    iszero = 0;
;**	-----------------------g9:
;* 1048	-----------------------    carry %= 10uL;
;* 1043	-----------------------    if ( *x > (++i) ) goto g7;

           ZERO    .L2     B5
||         MVK     .D2     0xa,B4
||         ADDKPC  .S2     RL98,B3,0
||         MV      .L1     A11,A5
||         MV      .S1     A10,A4

RL98:      ; CALL OCCURS {__divul} 
DW$L$_bignum_decimal$16$E:
;** --------------------------------------------------------------------------*
DW$L$_bignum_decimal$17$B:
           CALL    .S1     __remul           ; |1048| 
           ADDKPC  .S2     RL99,B3,0         ; |1048| 
           ZERO    .L2     B5                ; |1048| 
           MVK     .D2     0xa,B4            ; |1048| 
           MV      .L1     A4,A14

           MV      .L1     A10,A4            ; |1048| 
||         STH     .D1T1   A14,*A13++
||         MV      .S1     A11,A5            ; |1048| 

RL99:      ; CALL OCCURS {__remul}           ; |1048| 
DW$L$_bignum_decimal$17$E:
;** --------------------------------------------------------------------------*
DW$L$_bignum_decimal$18$B:

           LDHU    .D2T2   *B11,B4           ; |1043| 
||         ADD     .L1     1,A12,A12         ; |1043| 
||         EXTU    .S1     A14,16,16,A0
||         MV      .D1     A4,A10            ; |1048| 

           NOP             1
   [ A0]   ZERO    .L1     A3                ; |1047| 
           MV      .S1     A5,A11            ; |1048| 
   [ A0]   STW     .D2T1   A3,*+SP(12)       ; |1047| 
           CMPGT   .L2X    B4,A12,B0         ; |1043| 

   [ B0]   SHL     .S1     A11:A10,16,A5:A4  ; |1044| 
|| [ B0]   LDHU    .D1T1   *A13,A3           ; |1044| 
|| [ B0]   B       .S2     L299              ; |1043| 

   [ B0]   CALL    .S1     __divul
           NOP             3
	.dwpsn	"SSHBN.C",1049,0
   [ B0]   ADDU    .L1     A3,A5:A4,A11:A10  ; |1044| 
           ; BRANCHCC OCCURS {L299}          ; |1043| 
DW$L$_bignum_decimal$18$E:
;** --------------------------------------------------------------------------*
L300:    
DW$L$_bignum_decimal$19$B:
;**	-----------------------g10:
;* 1050	-----------------------    *U$57-- = (unsigned)carry+K$53;
;* 1050	-----------------------    --U$56;
;* 1050	-----------------------    --ndigit;
;* 1051	-----------------------    if ( !iszero ) goto g5;
;* 1057	-----------------------    if ( ndigit <= 0 ) goto g13;

           MVK     .S1     0x30,A3
||         SUB     .L2     B12,1,B12         ; |1050| 
||         SUB     .S2     B10,1,B10         ; |1050| 

           ADD     .L1     A3,A10,A3         ; |1050| 
           STB     .D1T1   A3,*A15--         ; |1050| 
           LDW     .D2T1   *+SP(12),A0       ; |1050| 
           NOP             4

   [!A0]   BNOP    .S2     L298,3            ; |1051| 
|| [!A0]   MV      .S1X    B13,A13
|| [!A0]   MVK     .L1     0x1,A3            ; |1041| 
|| [ A0]   MVK     .L2     0x1,B0            ; |1041| nullify predicate
|| [!A0]   LDHU    .D2T2   *B11,B0           ; |1043| 

   [!A0]   STW     .D2T1   A3,*+SP(12)       ; |1041| 
	.dwpsn	"SSHBN.C",1051,0

   [ A0]   CMPGT   .L2     B12,0,B0          ; |1057| 
|| [!B0]   B       .S1     L300              ; |1043| 

           ; BRANCHCC OCCURS {L298}          ; |1051| 
DW$L$_bignum_decimal$19$E:
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A3        ; |1058| 
||         MV      .L2     B10,B4            ; |1058| 
|| [!B0]   B       .S1     L301              ; |1057| 

           LDW     .D2T1   *+SP(4),A4
|| [ B0]   CALL    .S1     _memmove          ; |1058| 

   [!B0]   CALL    .S1     _safefree         ; |1063| 
           NOP             2
           SUB     .L1X    A3,B12,A6         ; |1058| 
           ; BRANCHCC OCCURS {L301}          ; |1057| 
;** --------------------------------------------------------------------------*
;* 1058	-----------------------    memmove((void *)ret, U$56, U$16-(unsigned)ndigit);
           ADDKPC  .S2     RL100,B3,0        ; |1058| 
RL100:     ; CALL OCCURS {_memmove}          ; |1058| 
           CALL    .S1     _safefree         ; |1063| 
           NOP             3
;** --------------------------------------------------------------------------*
L301:    
;**	-----------------------g13:
;* 1063	-----------------------    safefree((void *)workspace);
;* 1064	-----------------------    return ret;
           ADDKPC  .S2     RL101,B3,0        ; |1063| 
           MV      .L1X    B13,A4            ; |1063| 
RL101:     ; CALL OCCURS {_safefree}         ; |1063| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(36),B3       ; |1065| 
           LDW     .D2T1   *+SP(4),A4        ; |1063| 
           MV      .L1X    SP,A31            ; |1065| 
           LDDW    .D1T1   *+A31(24),A13:A12 ; |1065| 

           LDW     .D1T1   *+A31(32),A14     ; |1065| 
||         LDDW    .D2T2   *+SP(48),B13:B12  ; |1065| 

           RET     .S2     B3                ; |1065| 
||         LDDW    .D1T1   *+A31(16),A11:A10 ; |1065| 
||         LDDW    .D2T2   *+SP(40),B11:B10  ; |1065| 

           LDW     .D2T1   *++SP(56),A15     ; |1065| 
	.dwpsn	"SSHBN.C",1065,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1065| 

DW$309	.dwtag  DW_TAG_loop
	.dwattr DW$309, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L298:1:1297920382")
	.dwattr DW$309, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$309, DW_AT_begin_line(0x410)
	.dwattr DW$309, DW_AT_end_line(0x41b)
DW$310	.dwtag  DW_TAG_loop_range
	.dwattr DW$310, DW_AT_low_pc(DW$L$_bignum_decimal$14$B)
	.dwattr DW$310, DW_AT_high_pc(DW$L$_bignum_decimal$14$E)
DW$311	.dwtag  DW_TAG_loop_range
	.dwattr DW$311, DW_AT_low_pc(DW$L$_bignum_decimal$15$B)
	.dwattr DW$311, DW_AT_high_pc(DW$L$_bignum_decimal$15$E)
DW$312	.dwtag  DW_TAG_loop_range
	.dwattr DW$312, DW_AT_low_pc(DW$L$_bignum_decimal$19$B)
	.dwattr DW$312, DW_AT_high_pc(DW$L$_bignum_decimal$19$E)

DW$313	.dwtag  DW_TAG_loop
	.dwattr DW$313, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L299:2:1297920382")
	.dwattr DW$313, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$313, DW_AT_begin_line(0x413)
	.dwattr DW$313, DW_AT_end_line(0x419)
DW$314	.dwtag  DW_TAG_loop_range
	.dwattr DW$314, DW_AT_low_pc(DW$L$_bignum_decimal$16$B)
	.dwattr DW$314, DW_AT_high_pc(DW$L$_bignum_decimal$16$E)
DW$315	.dwtag  DW_TAG_loop_range
	.dwattr DW$315, DW_AT_low_pc(DW$L$_bignum_decimal$17$B)
	.dwattr DW$315, DW_AT_high_pc(DW$L$_bignum_decimal$17$E)
DW$316	.dwtag  DW_TAG_loop_range
	.dwattr DW$316, DW_AT_low_pc(DW$L$_bignum_decimal$18$B)
	.dwattr DW$316, DW_AT_high_pc(DW$L$_bignum_decimal$18$E)
	.dwendtag DW$313

	.dwendtag DW$309


DW$317	.dwtag  DW_TAG_loop
	.dwattr DW$317, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L295:1:1297920382")
	.dwattr DW$317, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$317, DW_AT_begin_line(0x406)
	.dwattr DW$317, DW_AT_end_line(0x407)
DW$318	.dwtag  DW_TAG_loop_range
	.dwattr DW$318, DW_AT_low_pc(DW$L$_bignum_decimal$10$B)
	.dwattr DW$318, DW_AT_high_pc(DW$L$_bignum_decimal$10$E)
	.dwendtag DW$317

	.dwattr DW$307, DW_AT_end_file("SSHBN.C")
	.dwattr DW$307, DW_AT_end_line(0x429)
	.dwattr DW$307, DW_AT_end_column(0x01)
	.dwendtag DW$307

	.sect	".text"
	.global	_bignum_bitmask

DW$319	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_bitmask"), DW_AT_symbol_name("_bignum_bitmask")
	.dwattr DW$319, DW_AT_low_pc(_bignum_bitmask)
	.dwattr DW$319, DW_AT_high_pc(0x00)
	.dwattr DW$319, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$319, DW_AT_begin_line(0x319)
	.dwattr DW$319, DW_AT_begin_column(0x08)
	.dwattr DW$319, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$319, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",794,1

;******************************************************************************
;* FUNCTION NAME: _bignum_bitmask                                             *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
_bignum_bitmask:
;** --------------------------------------------------------------------------*
DW$320	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$320, DW_AT_type(*DW$T$40)
	.dwattr DW$320, DW_AT_location[DW_OP_reg4]
;** 795	-----------------------    ret = copybn(n);
;** 799	-----------------------    i = *ret;
;** 800	-----------------------    if ( !((n[i] == 0)&(i != 0)) ) goto g4;
;**  	-----------------------    U$18 = &n[i];
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _copybn           ; |795| 
           NOP             3
           STW     .D2T1   A10,*SP--(8)      ; |794| 

           ADDKPC  .S2     RL102,B3,0        ; |795| 
||         MV      .L2     B3,B13            ; |794| 
||         MV      .L1     A4,A10            ; |794| 
||         STW     .D2T2   B13,*+SP(4)       ; |794| 

RL102:     ; CALL OCCURS {_copybn}           ; |795| 
;** --------------------------------------------------------------------------*
           LDHU    .D1T1   *A4,A8            ; |799| 
           NOP             4

           CMPEQ   .L1     A8,0,A5           ; |800| 
||         LDHU    .D1T1   *+A10[A8],A3      ; |800| 

           NOP             3
           XOR     .L1     1,A5,A5           ; |800| 
           CMPEQ   .L1     A3,0,A3           ; |800| 

           ADDAH   .D1     A10,A8,A3
||         AND     .L1     A5,A3,A0          ; |800| 

   [!A0]   BNOP    .S1     L305,1            ; |800| 
           MV      .L2X    A3,B4
   [ A0]   LDHU    .D2T2   *--B4,B5          ; |800| (P) <0,0>  ^ 
           NOP             2
           ; BRANCHCC OCCURS {L305}          ; |800| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 800	-----------------------    if ( (*(--U$18) == 0)&((--i) > 0) ) goto g3;

           MVC     .S2     CSR,B7
||         CMPGT   .L1     A8,1,A3           ; |800| 
||         SUB     .S1     A8,1,A5           ; |800| 
||         MVK     .D1     0x1,A0

           AND     .L2     -2,B7,B6

           MVC     .S2     B6,CSR            ; interrupts off
||         CMPEQ   .L2     B5,0,B6           ; |800| (P) <0,5>  ^ 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 800
;*      Loop opening brace source line   : 801
;*      Loop closing brace source line   : 801
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 8
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     1        0     
;*      .D units                     0        1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             0        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh28
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L302:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L303:    ; PIPED LOOP KERNEL
DW$L$_bignum_bitmask$5$B:
	.dwpsn	"SSHBN.C",801,0
           AND     .L2X    A3,B6,B0          ; |800| <0,6>  ^ 
   [!B0]   ZERO    .L1     A0                ; |800| <0,7>  ^ 

   [ A0]   BNOP    .S1     L303,2            ; |800| <0,8> 
|| [ A0]   LDHU    .D2T2   *--B4,B5          ; |800| <1,0>  ^ 

           SUB     .L1     A5,1,A5           ; |800| <1,3> 
           CMPGT   .L1     A5,0,A3           ; |800| <1,4> 
           CMPEQ   .L2     B5,0,B6           ; |800| <1,5>  ^ 
DW$L$_bignum_bitmask$5$E:
;** --------------------------------------------------------------------------*
L304:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           ADD     .L1     1,A5,A8
||         MVC     .S2     B7,CSR            ; interrupts on

;** --------------------------------------------------------------------------*
L305:    
;**	-----------------------g4:
;** 802	-----------------------    if ( i <= 0 ) goto g11;

           CMPGT   .L1     A8,0,A0           ; |802| 
||         ADD     .S1     A8,A8,A9          ; |805| 
||         MVK     .L2     0x1,B4            ; |804| 

   [!A0]   BNOP    .S1     L313,4            ; |802| 
|| [ A0]   LDHU    .D1T1   *+A10[A8],A6      ; |805| 

           CMPLTU  .L1     A6,2,A0           ; |805| 
           ; BRANCHCC OCCURS {L313}          ; |802| 
;** --------------------------------------------------------------------------*
;** 805	-----------------------    U$17 = i*2;
;** 804	-----------------------    j = 1u;
;** 805	-----------------------    if ( (C$1 = n[i]) < 2 ) goto g8;
;**  	-----------------------    V$0 = C$1;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

   [ A0]   BNOP    .S1     L309,4            ; |805| 
|| [!A0]   MVK     .L1     1,A5              ; |806| (P) <0,0> 
|| [!A0]   MV      .D1X    B4,A3

   [!A0]   ADDAH   .D1     A5,A3,A3          ; |806| (P) <0,1>  ^ 
           ; BRANCHCC OCCURS {L309}          ; |805| 
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 806	-----------------------    j = j*2+1;
;** 805	-----------------------    if ( j < V$0 ) goto g7;

           MVK     .L1     1,A31             ; |806| (P) <1,0> 
||         EXTU    .S1     A3,16,16,A5       ; |806| (P) <0,2>  ^ 
||         MVC     .S2     CSR,B4
||         MVK     .L2     0x1,B0

           ADDAH   .D1     A31,A5,A3         ; |806| (P) <1,1>  ^ 
||         CMPLTU  .L1     A5,A6,A0          ; |805| (P) <0,3> 
||         AND     .L2     -2,B4,B5

           MVC     .S2     B5,CSR            ; interrupts off
||         EXTU    .S1     A3,16,16,A7       ; |806| (P) <1,2>  ^ 
||         MVK     .L1     1,A3              ; |806| (P) <2,0> 
|| [!A0]   ZERO    .L2     B0                ; |805| (P) <0,4> 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 805
;*      Loop opening brace source line   : 806
;*      Loop closing brace source line   : 806
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        1     
;*      .D units                     1        0     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L306:    ; PIPED LOOP PROLOG

   [ B0]   MV      .S1     A7,A5             ; |805| (P) <1,3> 
||         CMPLTU  .L1     A7,A6,A0          ; |805| (P) <1,3> 
||         ADDAH   .D1     A3,A7,A3          ; |806| (P) <2,1>  ^ 
|| [ B0]   B       .S2     L307              ; |805| (P) <0,5> 

   [!A0]   ZERO    .L2     B0                ; |805| (P) <1,4> 
||         MVK     .L1     1,A3              ; |806| (P) <3,0> 
||         EXTU    .S1     A3,16,16,A7       ; |806| (P) <2,2>  ^ 

   [ B0]   MV      .S1     A7,A5             ; |805| (P) <2,3> 
||         CMPLTU  .L1     A7,A6,A0          ; |805| (P) <2,3> 
||         ADDAH   .D1     A3,A7,A3          ; |806| (P) <3,1>  ^ 
|| [ B0]   B       .S2     L307              ; |805| (P) <1,5> 

	.dwpsn	"SSHBN.C",805,0

   [!A0]   ZERO    .L2     B0                ; |805| (P) <2,4> 
||         MVK     .L1     1,A3              ; |806| (P) <4,0> 
||         EXTU    .S1     A3,16,16,A7       ; |806| (P) <3,2>  ^ 

;** --------------------------------------------------------------------------*
L307:    ; PIPED LOOP KERNEL
DW$L$_bignum_bitmask$12$B:
	.dwpsn	"SSHBN.C",806,0

   [ B0]   B       .S2     L307              ; |805| <2,5> 
|| [ B0]   MV      .S1     A7,A5             ; |805| <3,3> 
||         CMPLTU  .L1     A7,A6,A0          ; |805| <3,3> 
||         ADDAH   .D1     A3,A7,A3          ; |806| <4,1>  ^ 

   [!A0]   ZERO    .L2     B0                ; |805| <3,4> 
||         EXTU    .S1     A3,16,16,A7       ; |806| <4,2>  ^ 
||         MVK     .L1     1,A3              ; |806| <5,0> 

DW$L$_bignum_bitmask$12$E:
;** --------------------------------------------------------------------------*
L308:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L2X    A5,B4
||         MVC     .S2     B4,CSR            ; interrupts on

;** --------------------------------------------------------------------------*
L309:    
;**	-----------------------g8:
;** 807	-----------------------    U$35 = ret+U$17;
;** 807	-----------------------    *U$35 = j;
;** 808	-----------------------    if ( (--i) <= 0 ) goto g11;

           CMPGT   .L1     A8,1,A0           ; |808| 
||         SUB     .S1     A8,1,A5           ; |808| 
||         ADD     .D1     A9,A4,A3          ; |807| 
||         MVKL    .S2     0xffff,B5

   [!A0]   BNOP    .S1     L313,5            ; |808| 
|| [ A0]   SUB     .L1     A5,1,A0
||         STH     .D1T2   B4,*A3            ; |807| 
||         MVKH    .S2     0xffff,B5

           ; BRANCHCC OCCURS {L313}          ; |808| 
;**  	-----------------------    K$38 = 65535;
;** 809	-----------------------    L$1 = i;
;** 808	-----------------------    --U$35;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g10:
;** 809	-----------------------    *U$35-- = K$38;
;** 808	-----------------------    if ( --L$1 ) goto g10;
;**	-----------------------g11:
;** 810	-----------------------    return ret;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 808
;*      Loop opening brace source line   : 809
;*      Loop closing brace source line   : 809
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L310:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L311,A0           ; |808| (P) <0,0> 
   [ A0]   BDEC    .S1     L311,A0           ; |808| (P) <1,0> 
   [ A0]   BDEC    .S1     L311,A0           ; |808| (P) <2,0> 
   [ A0]   BDEC    .S1     L311,A0           ; |808| (P) <3,0> 
	.dwpsn	"SSHBN.C",808,0

           SUB     .L2X    A3,2,B4           ; |808| 
|| [ A0]   BDEC    .S1     L311,A0           ; |808| (P) <4,0> 

;** --------------------------------------------------------------------------*
L311:    ; PIPED LOOP KERNEL
DW$L$_bignum_bitmask$17$B:
	.dwpsn	"SSHBN.C",809,0

           STH     .D2T2   B5,*B4--          ; |809| <0,5> 
|| [ A0]   BDEC    .S1     L311,A0           ; |808| <5,0> 

DW$L$_bignum_bitmask$17$E:
;** --------------------------------------------------------------------------*
L312:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L313:    
           MV      .L2     B13,B3            ; |811| 

           RET     .S2     B3                ; |811| 
||         LDW     .D2T2   *+SP(4),B13       ; |811| 

           LDW     .D2T1   *++SP(8),A10      ; |811| 
	.dwpsn	"SSHBN.C",811,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |811| 

DW$321	.dwtag  DW_TAG_loop
	.dwattr DW$321, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L311:1:1297920382")
	.dwattr DW$321, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$321, DW_AT_begin_line(0x328)
	.dwattr DW$321, DW_AT_end_line(0x329)
DW$322	.dwtag  DW_TAG_loop_range
	.dwattr DW$322, DW_AT_low_pc(DW$L$_bignum_bitmask$17$B)
	.dwattr DW$322, DW_AT_high_pc(DW$L$_bignum_bitmask$17$E)
	.dwendtag DW$321


DW$323	.dwtag  DW_TAG_loop
	.dwattr DW$323, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L307:1:1297920382")
	.dwattr DW$323, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$323, DW_AT_begin_line(0x325)
	.dwattr DW$323, DW_AT_end_line(0x326)
DW$324	.dwtag  DW_TAG_loop_range
	.dwattr DW$324, DW_AT_low_pc(DW$L$_bignum_bitmask$12$B)
	.dwattr DW$324, DW_AT_high_pc(DW$L$_bignum_bitmask$12$E)
	.dwendtag DW$323


DW$325	.dwtag  DW_TAG_loop
	.dwattr DW$325, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L303:1:1297920382")
	.dwattr DW$325, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$325, DW_AT_begin_line(0x320)
	.dwattr DW$325, DW_AT_end_line(0x321)
DW$326	.dwtag  DW_TAG_loop_range
	.dwattr DW$326, DW_AT_low_pc(DW$L$_bignum_bitmask$5$B)
	.dwattr DW$326, DW_AT_high_pc(DW$L$_bignum_bitmask$5$E)
	.dwendtag DW$325

	.dwattr DW$319, DW_AT_end_file("SSHBN.C")
	.dwattr DW$319, DW_AT_end_line(0x32b)
	.dwattr DW$319, DW_AT_end_column(0x01)
	.dwendtag DW$319

	.sect	".text"
	.global	_bignum_bit

DW$327	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_bit"), DW_AT_symbol_name("_bignum_bit")
	.dwattr DW$327, DW_AT_low_pc(_bignum_bit)
	.dwattr DW$327, DW_AT_high_pc(0x00)
	.dwattr DW$327, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$327, DW_AT_begin_line(0x27e)
	.dwattr DW$327, DW_AT_begin_column(0x05)
	.dwattr DW$327, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$327, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",639,1

;******************************************************************************
;* FUNCTION NAME: _bignum_bit                                                 *
;*                                                                            *
;*   Regs Modified     : A4,B0,B4,B5,B6,B7,B8                                 *
;*   Regs Used         : A4,B0,B3,B4,B5,B6,B7,B8                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_bignum_bit:
;** --------------------------------------------------------------------------*
DW$328	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bn"), DW_AT_symbol_name("_bn")
	.dwattr DW$328, DW_AT_type(*DW$T$40)
	.dwattr DW$328, DW_AT_location[DW_OP_reg4]
DW$329	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$329, DW_AT_type(*DW$T$10)
	.dwattr DW$329, DW_AT_location[DW_OP_reg20]
;** 640	-----------------------    if ( i < (int)*bn<<4 ) goto g3;
;** 641	-----------------------    return 0;
;**	-----------------------g3:
;** 643	-----------------------    C$1 = (i>>3>>28)+i;
;** 643	-----------------------    return bn[(C$1>>3>>1)+1]>>i-(C$1&0xfffffff0)&1;
           MV      .L2X    A4,B6             ; |639| 
           LDHU    .D2T2   *B6,B7            ; |640| 
           SHR     .S2     B4,3,B5           ; |643| 
           SHRU    .S2     B5,28,B5          ; |643| 
           ADD     .L2     B4,B5,B5          ; |643| 
           ZERO    .L1     A4                ; |641| 
           SHL     .S2     B7,4,B8           ; |640| 
           SHR     .S2     B5,4,B7           ; |643| 

           CMPLT   .L2     B4,B8,B0          ; |640| 
||         ADDAH   .D2     B6,B7,B6          ; |643| 

   [ B0]   LDHU    .D2T2   *+B6(2),B6        ; |643| 
           AND     .L2     -16,B5,B5         ; |643| 
           RETNOP  .S2     B3,1              ; |644| 
           SUB     .L2     B4,B5,B4          ; |643| 
   [ B0]   SHRU    .S2     B6,B4,B4          ; |643| 
           NOP             1
	.dwpsn	"SSHBN.C",644,1
   [ B0]   AND     .L1X    1,B4,A4           ; |643| 
           ; BRANCH OCCURS {B3}              ; |644| 
	.dwattr DW$327, DW_AT_end_file("SSHBN.C")
	.dwattr DW$327, DW_AT_end_line(0x284)
	.dwattr DW$327, DW_AT_end_column(0x01)
	.dwendtag DW$327

	.sect	".text"
	.global	_bignum_add_long

DW$330	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_add_long"), DW_AT_symbol_name("_bignum_add_long")
	.dwattr DW$330, DW_AT_low_pc(_bignum_add_long)
	.dwattr DW$330, DW_AT_high_pc(0x00)
	.dwattr DW$330, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$330, DW_AT_begin_line(0x340)
	.dwattr DW$330, DW_AT_begin_column(0x08)
	.dwattr DW$330, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$330, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",833,1

;******************************************************************************
;* FUNCTION NAME: _bignum_add_long                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_bignum_add_long:
;** --------------------------------------------------------------------------*
DW$331	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number"), DW_AT_symbol_name("_number")
	.dwattr DW$331, DW_AT_type(*DW$T$40)
	.dwattr DW$331, DW_AT_location[DW_OP_reg4]
DW$332	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addendx"), DW_AT_symbol_name("_addendx")
	.dwattr DW$332, DW_AT_type(*DW$T$13)
	.dwattr DW$332, DW_AT_location[DW_OP_reg20]
;** 834	-----------------------    ret = newbn(*number+1);
;** 836	-----------------------    addend = addendx;
;** 835	-----------------------    maxspot = 0;
;** 838	-----------------------    if ( !*ret ) goto g9;
;**  	-----------------------    K$14 = 65535uL;
;**  	-----------------------    U$29 = &ret[1];
;** 836	-----------------------    carry = 0uL;
;** 838	-----------------------    i = 1;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L1     A4,A12            ; |833| 
||         STW     .D2T1   A12,*SP--(16)     ; |833| 

           CALL    .S1     _newbn            ; |834| 
||         LDHU    .D1T1   *A12,A3           ; |834| 

           STDW    .D2T1   A11:A10,*+SP(8)   ; |833| 
           MV      .S1X    B5,A10            ; |833| 
           STW     .D2T2   B13,*+SP(4)       ; |833| 
           MV      .L1X    B4,A11            ; |833| 

           ADD     .L1     1,A3,A4           ; |834| 
||         MV      .L2     B3,B13            ; |833| 
||         ADDKPC  .S2     RL103,B3,0        ; |834| 

RL103:     ; CALL OCCURS {_newbn}            ; |834| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A6             ; |834| 
||         MVKL    .S2     0xffff,B18
||         ZERO    .S1     A5                ; |835| 
||         ZERO    .D1     A3
||         ZERO    .L2     B7:B6             ; |836| 
||         MVK     .D2     0x1,B8            ; |838| 

           LDHU    .D1T1   *A6,A0            ; |838| 
||         MVKH    .S2     0xffff,B18
||         ADD     .L1     2,A4,A8

           NOP             4
   [!A0]   BNOP    .S1     L317,5            ; |838| 
           ; BRANCHCC OCCURS {L317}          ; |838| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 839	-----------------------    carry += addend&K$14;
;**  	-----------------------    if ( i <= *number ) goto g5;
;** 840	-----------------------    S$1 = 0uL;
;**  	-----------------------    goto g6;
;**	-----------------------g5:
;** 840	-----------------------    S$1 = (unsigned long)number[i];
;**	-----------------------g6:
;** 840	-----------------------    carry += S$1;
;** 841	-----------------------    addend >>= 16;
;** 842	-----------------------    s$0 = (unsigned short)carry;
;** 843	-----------------------    *U$29++ = s$0;
;** 843	-----------------------    carry >>= 16;
;**  	-----------------------    if ( !s$0 ) goto g8;
;** 845	-----------------------    maxspot = i;
;**	-----------------------g8:
;** 838	-----------------------    if ( *ret >= (++i) ) goto g3;

           MVC     .S2     CSR,B19
||         MV      .L2X    A3,B17
||         MV      .L1X    B8,A3
||         MV      .S1     A12,A9

           MV      .L1X    B8,A16
||         AND     .L2     -2,B19,B8
||         MV      .S2X    A10,B5

           MVC     .S2     B8,CSR            ; interrupts off
||         MV      .L2X    A11,B4

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 838
;*      Loop opening brace source line   : 838
;*      Loop closing brace source line   : 846
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 16
;*      Unpartitioned Resource Bound     : 6
;*      Partitioned Resource Bound(*)    : 6
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        3     
;*      .S units                     2        2     
;*      .D units                     3        1     
;*      .M units                     0        0     
;*      .X cross paths               1        4     
;*      .T address paths             2        2     
;*      Long read paths              1        2     
;*      Long write paths             1        2     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)         11        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        3     
;*      Bound(.L .S .D .LS .LSD)     6*       5     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 16 Schedule found with 2 iterations in parallel
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
L314:    ; PIPED LOOP PROLOG

           AND     .L2     B18,B4,B8         ; |839| (P) <0,0> 
||         AND     .S2     B17,B5,B9         ; |839| (P) <0,0> 
||         LDHU    .D1T2   *A9,B7            ; (P) <0,0> 

           MV      .S2     B7,B6             ; |839| (P) <0,1> 
||         ADDU    .L2     B6,B9:B8,B9:B8    ; |839| (P) <0,1> 

           ADD     .L2     B6,B9,B6          ; |839| (P) <0,2> 
           NOP             1
           MV      .L2X    A6,B16

           ZERO    .L1     A7
||         MVK     .S1     0x1,A2
||         ZERO    .D1     A6
||         CMPGT   .L2X    A16,B7,B0         ; (P) <0,5> 

   [!A2]   MVK     .L2     0x1,B0            ; (P) <0,6>  ^ 
|| [ B0]   ZERO    .L1     A7:A6             ; |840| (P) <0,6> 

   [!B0]   ZERO    .L1     A7                ; |840| (P) <0,7> 
|| [!B0]   LDHU    .D1T1   *+A9[A16],A6      ; |840| (P) <0,7>  ^ 

           NOP             3
	.dwpsn	"SSHBN.C",838,0

           MVK     .L1     0x1,A1
||         MV      .S1     A5,A17
||         MVK     .D1     0x1,A0

;** --------------------------------------------------------------------------*
L315:    ; PIPED LOOP KERNEL
DW$L$_bignum_add_long$5$B:
           ADDU    .L1X    B8,A7:A6,A19:A18  ; |840| <0,12>  ^ 
           MV      .L1     A18,A20           ; |842| <0,13>  ^ 

           SHRU    .S2     B5:B4,16,B5:B4    ; |841| <0,14> 
||         EXTU    .S1     A20,16,16,A0      ; |842| <0,14> 
||         MV      .L2X    A19,B7            ; |840| <0,14> Define a twin register
|| [ A0]   STH     .D1T1   A20,*A8++         ; |843| <0,14>  ^ 

   [ A0]   MV      .L1     A3,A17            ; |845| <0,15> 
||         MV      .L2X    A18,B6            ; |840| <0,15> Define a twin register
||         ADD     .S2     B6,B7,B7          ; |840| <0,15> Define a twin register
||         LDHU    .D2T2   *B16,B7           ; |838| <0,15>  ^ 

   [ A1]   MV      .L1     A17,A5            ; |838| <0,16> 
||         SHRU    .S2     B7:B6,16,B7:B6    ; |843| <0,16> 
||         AND     .L2     B18,B4,B8         ; |839| <1,0> 
||         AND     .D2     B17,B5,B9         ; |839| <1,0> 
||         LDHU    .D1T2   *A9,B7            ; <1,0> 

           ADDU    .L2     B6,B9:B8,B9:B8    ; |839| <1,1> 

           ADD     .L1     1,A16,A16         ; |838| <0,18> 
||         ADD     .L2     B7,B9,B6          ; |839| <1,2> 

           NOP             1
           CMPLT   .L2X    B7,A16,B0         ; |838| <0,20>  ^ 

   [ B0]   ZERO    .L1     A2                ; |838| <0,21>  ^ 
||         CMPGT   .L2X    A16,B7,B0         ; <1,5> 

   [ A2]   B       .S1     L315              ; |838| <0,22> 
|| [!A2]   MVK     .L2     0x1,B0            ; <1,6>  ^ 
|| [ B0]   ZERO    .L1     A7:A6             ; |840| <1,6> 

   [!B0]   ZERO    .L1     A7                ; |840| <1,7> 
|| [!B0]   LDHU    .D1T1   *+A9[A16],A6      ; |840| <1,7>  ^ 

           NOP             1
           MV      .L1     A2,A0             ; |838| <0,25> Split a long life
           MV      .L1     A16,A3            ; |838| <0,26> Split a long life
	.dwpsn	"SSHBN.C",846,0
           MV      .S1     A0,A1             ; |838| <0,27> Split a long life
DW$L$_bignum_add_long$5$E:
;** --------------------------------------------------------------------------*
L316:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L1X    B16,A6
||         MVC     .S2     B19,CSR           ; interrupts on

;** --------------------------------------------------------------------------*
L317:    
;**	-----------------------g9:
;** 847	-----------------------    *ret = maxspot;
;** 848	-----------------------    return ret;

           LDDW    .D2T1   *+SP(8),A11:A10   ; |849| 
||         MV      .L2     B13,B3            ; |849| 

           RET     .S2     B3                ; |849| 
||         LDW     .D2T2   *+SP(4),B13       ; |849| 
||         STH     .D1T1   A5,*A6            ; |847| 

           LDW     .D2T1   *++SP(16),A12     ; |849| 
	.dwpsn	"SSHBN.C",849,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |849| 

DW$333	.dwtag  DW_TAG_loop
	.dwattr DW$333, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L315:1:1297920382")
	.dwattr DW$333, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$333, DW_AT_begin_line(0x346)
	.dwattr DW$333, DW_AT_end_line(0x34e)
DW$334	.dwtag  DW_TAG_loop_range
	.dwattr DW$334, DW_AT_low_pc(DW$L$_bignum_add_long$5$B)
	.dwattr DW$334, DW_AT_high_pc(DW$L$_bignum_add_long$5$E)
	.dwendtag DW$333

	.dwattr DW$330, DW_AT_end_file("SSHBN.C")
	.dwattr DW$330, DW_AT_end_line(0x351)
	.dwattr DW$330, DW_AT_end_column(0x01)
	.dwendtag DW$330

	.sect	".text"
	.global	_bigmul

DW$335	.dwtag  DW_TAG_subprogram, DW_AT_name("bigmul"), DW_AT_symbol_name("_bigmul")
	.dwattr DW$335, DW_AT_low_pc(_bigmul)
	.dwattr DW$335, DW_AT_high_pc(0x00)
	.dwattr DW$335, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$335, DW_AT_begin_line(0x30f)
	.dwattr DW$335, DW_AT_begin_column(0x08)
	.dwattr DW$335, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$335, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",784,1

;******************************************************************************
;* FUNCTION NAME: _bigmul                                                     *
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
_bigmul:
;** --------------------------------------------------------------------------*
DW$336	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$336, DW_AT_type(*DW$T$40)
	.dwattr DW$336, DW_AT_location[DW_OP_reg4]
DW$337	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$337, DW_AT_type(*DW$T$40)
	.dwattr DW$337, DW_AT_location[DW_OP_reg20]
;** 785	-----------------------    return bigmuladd(a, b, NULL);
           CALLRET .S1     _bigmuladd        ; |785| 
           NOP             4
	.dwpsn	"SSHBN.C",786,1
           ZERO    .L1     A6                ; |785| 
RL104:     ; CALL-RETURN OCCURS {_bigmuladd}  ; |785| 
	.dwattr DW$335, DW_AT_end_file("SSHBN.C")
	.dwattr DW$335, DW_AT_end_line(0x312)
	.dwattr DW$335, DW_AT_end_column(0x01)
	.dwendtag DW$335

	.sect	".text"
	.global	_biggcd

DW$338	.dwtag  DW_TAG_subprogram, DW_AT_name("biggcd"), DW_AT_symbol_name("_biggcd")
	.dwattr DW$338, DW_AT_low_pc(_biggcd)
	.dwattr DW$338, DW_AT_high_pc(0x00)
	.dwattr DW$338, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$338, DW_AT_begin_line(0x390)
	.dwattr DW$338, DW_AT_begin_column(0x08)
	.dwattr DW$338, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$338, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",913,1

;******************************************************************************
;* FUNCTION NAME: _biggcd                                                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,DP,SP,A16,A17,A18,A19,A20,*
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_biggcd:
;** --------------------------------------------------------------------------*
DW$339	.dwtag  DW_TAG_formal_parameter, DW_AT_name("av"), DW_AT_symbol_name("_av")
	.dwattr DW$339, DW_AT_type(*DW$T$40)
	.dwattr DW$339, DW_AT_location[DW_OP_reg4]
DW$340	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bv"), DW_AT_symbol_name("_bv")
	.dwattr DW$340, DW_AT_type(*DW$T$40)
	.dwattr DW$340, DW_AT_location[DW_OP_reg20]
;** 914	-----------------------    a = copybn(av);
;** 915	-----------------------    b = copybn(bv);
;** 917	-----------------------    if ( !bignum_cmp(b, Zero) ) goto g8;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _copybn           ; |914| 
           NOP             2
           STW     .D2T2   B10,*SP--(16)     ; |913| 
           STW     .D2T2   B13,*+SP(4)       ; |913| 

           ADDKPC  .S2     RL105,B3,0        ; |914| 
||         MV      .L1X    B4,A10            ; |913| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |913| 
||         MV      .L2     B3,B13            ; |913| 

RL105:     ; CALL OCCURS {_copybn}           ; |914| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _copybn           ; |915| 
           ADDKPC  .S2     RL106,B3,2        ; |915| 
           MV      .S1     A4,A11            ; |914| 
           MV      .L1     A10,A4            ; |915| 
RL106:     ; CALL OCCURS {_copybn}           ; |915| 
           MVKL    .S1     _Zero,A3          ; |917| 

           MVKH    .S1     _Zero,A3          ; |917| 
||         CALL    .S2     _bignum_cmp       ; |917| 

           LDW     .D1T2   *A3,B4            ; |917| 
           MV      .L2X    A4,B10            ; |915| 
           ADDKPC  .S2     RL107,B3,2        ; |917| 
RL107:     ; CALL OCCURS {_bignum_cmp}       ; |917| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |917| 
   [!A0]   BNOP    .S1     L323,5            ; |917| 
           ; BRANCHCC OCCURS {L323}          ; |917| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _newbn            ; |918| 
||         LDHU    .D2T1   *B10,A4           ; |918| 

	.dwpsn	"SSHBN.C",917,0
           NOP             4
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L318
;** --------------------------------------------------------------------------*
L318:    
DW$L$_biggcd$5$B:
;**	-----------------------g3:
;** 918	-----------------------    t = newbn((int)*b);
;** 919	-----------------------    bigdivmod(a, b, t, NULL);
;** 920	-----------------------    if ( (C$11 = *t) < 2 ) goto g7;
           ADDKPC  .S2     RL108,B3,0        ; |918| 
RL108:     ; CALL OCCURS {_newbn}            ; |918| 
DW$L$_biggcd$5$E:
;** --------------------------------------------------------------------------*
DW$L$_biggcd$6$B:
           CALL    .S1     _bigdivmod        ; |919| 
           ADDKPC  .S2     RL109,B3,0        ; |919| 
           ZERO    .L2     B6                ; |919| 
           MV      .D2     B10,B4            ; |919| 
           MV      .S1     A4,A10            ; |918| 

           MV      .D1     A4,A6             ; |918| 
||         MV      .L1     A11,A4            ; |919| 

RL109:     ; CALL OCCURS {_bigdivmod}        ; |919| 
DW$L$_biggcd$6$E:
;** --------------------------------------------------------------------------*
DW$L$_biggcd$7$B:
           LDHU    .D1T1   *A10,A3           ; |920| 
           NOP             4
           CMPLTU  .L1     A3,2,A0           ; |920| 
   [ A0]   BNOP    .S1     L322,5            ; |920| 
           ; BRANCHCC OCCURS {L322}          ; |920| 
DW$L$_biggcd$7$E:
;** --------------------------------------------------------------------------*
DW$L$_biggcd$8$B:
;**  	-----------------------    V$0 = C$11;
;**  	-----------------------    L$1 = V$0-1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65534, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g5:
;** 920	-----------------------    if ( t[V$0] ) goto g7;
;** 921	-----------------------    *t = C$10 = (unsigned short)(V$0-1);
;** 921	-----------------------    V$0 = C$10;
;** 921	-----------------------    if ( --L$1 ) goto g5;

           MVC     .S2     CSR,B8
||         MV      .L2X    A3,B5
||         MVK     .L1     0x1,A0

           AND     .L2     -2,B8,B7
||         MV      .S2X    A10,B4

           MVC     .S2     B7,CSR            ; interrupts off
DW$L$_biggcd$8$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 920
;*      Loop opening brace source line   : 921
;*      Loop closing brace source line   : 921
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     2*       0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L319:    ; PIPED LOOP PROLOG
   [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |920| (P) <0,0>  ^ 
           NOP             1
           SUB     .L1X    B5,1,A5           ; |921| (P) <0,2> 
           EXTU    .S1     A5,16,16,A4       ; |921| (P) <0,3> 

           SUB     .L2X    A3,1,B6
||         MV      .L1     A10,A3
|| [!A0]   MVK     .S2     0x1,B1            ; (P) <0,4> 

	.dwpsn	"SSHBN.C",920,0

   [!B1]   MV      .L2X    A4,B5             ; |921| (P) <0,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |921| (P) <0,5>  ^ 
|| [!B1]   STH     .D1T1   A5,*A3            ; |921| (P) <0,5> 

;** --------------------------------------------------------------------------*
L320:    ; PIPED LOOP KERNEL
DW$L$_biggcd$10$B:
	.dwpsn	"SSHBN.C",921,0
           CMPEQ   .L2     B6,0,B7           ; |921| <0,6>  ^ 
           OR      .L2     B7,B1,B0          ; |921| <0,7>  ^ 
   [ B0]   ZERO    .L1     A0                ; |921| <0,8>  ^ 

   [ A0]   BNOP    .S1     L320,1            ; |921| <0,9> 
|| [ A0]   LDHU    .D2T2   *+B4[B5],B1       ; |920| <1,0>  ^ 

           SUB     .L1X    B5,1,A5           ; |921| <1,2> 
           EXTU    .S1     A5,16,16,A4       ; |921| <1,3> 
   [!A0]   MVK     .L2     0x1,B1            ; <1,4> 

   [!B1]   MV      .L2X    A4,B5             ; |921| <1,5> 
|| [!B1]   STH     .D1T1   A5,*A3            ; |921| <1,5> 
|| [!B1]   SUB     .S2     B6,1,B6           ; |921| <1,5>  ^ 

DW$L$_biggcd$10$E:
;** --------------------------------------------------------------------------*
L321:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_biggcd$12$B:

           MVC     .S2     B8,CSR            ; interrupts on
||         MV      .L1     A3,A10

DW$L$_biggcd$12$E:
;** --------------------------------------------------------------------------*
L322:    
DW$L$_biggcd$13$B:
;**	-----------------------g7:
;** 94	-----------------------    memset(a, 0, ((unsigned)*a+1u)*2u);  // [10]
;** 95	-----------------------    safefree(a);  // [10]
;** 95	-----------------------    a = b;  // [10]
;** 924	-----------------------    b = t;
;** 917	-----------------------    if ( bignum_cmp(b, Zero) ) goto g3;
           LDHU    .D1T1   *A11,A3           ; |94| 
           CALL    .S1     _memset           ; |94| 
           ADDKPC  .S2     RL110,B3,0        ; |94| 
           ZERO    .L2     B4                ; |94| 
           MV      .S1     A11,A4            ; |94| 
           ADD     .L1     1,A3,A3           ; |94| 
           ADD     .L1     A3,A3,A6          ; |94| 
RL110:     ; CALL OCCURS {_memset}           ; |94| 
DW$L$_biggcd$13$E:
;** --------------------------------------------------------------------------*
DW$L$_biggcd$14$B:
           CALL    .S1     _safefree         ; |95| 
           ADDKPC  .S2     RL111,B3,3        ; |95| 
           MV      .L1     A11,A4            ; |95| 
RL111:     ; CALL OCCURS {_safefree}         ; |95| 
           MVKL    .S1     _Zero,A3          ; |917| 

           MVKH    .S1     _Zero,A3          ; |917| 
||         CALL    .S2     _bignum_cmp       ; |917| 

           LDW     .D1T2   *A3,B4            ; |917| 
           MV      .L1     A10,A4            ; |924| 
           ADDKPC  .S2     RL112,B3,2        ; |917| 
RL112:     ; CALL OCCURS {_bignum_cmp}       ; |917| 
DW$L$_biggcd$14$E:
;** --------------------------------------------------------------------------*
DW$L$_biggcd$15$B:

           MV      .L1     A4,A0             ; |917| 
||         MV      .S1X    B10,A11           ; |95| 
||         MV      .L2X    A10,B10           ; |924| 

   [ A0]   B       .S1     L318              ; |917| 
|| [ A0]   LDHU    .D2T1   *B10,A4           ; |918| 

   [ A0]   CALL    .S1     _newbn            ; |918| 
	.dwpsn	"SSHBN.C",925,0
           NOP             4
           ; BRANCHCC OCCURS {L318}          ; |917| 
DW$L$_biggcd$15$E:
;** --------------------------------------------------------------------------*
L323:    
;**	-----------------------g8:
;** 94	-----------------------    memset(b, 0, ((unsigned)*b+1u)*2u);  // [10]
;** 95	-----------------------    safefree(b);  // [10]
;** 95	-----------------------    return a;  // [10]
           LDHU    .D2T2   *B10,B4           ; |94| 
           CALL    .S1     _memset           ; |94| 
           ADDKPC  .S2     RL113,B3,1        ; |94| 
           MV      .S1X    B10,A4            ; |94| 
           ADD     .L1X    1,B4,A3           ; |94| 

           ADD     .L1     A3,A3,A6          ; |94| 
||         ZERO    .L2     B4                ; |94| 

RL113:     ; CALL OCCURS {_memset}           ; |94| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _safefree         ; |95| 
           ADDKPC  .S2     RL114,B3,3        ; |95| 
           MV      .L1X    B10,A4            ; |95| 
RL114:     ; CALL OCCURS {_safefree}         ; |95| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |929| 
||         MV      .L2     B13,B3            ; |929| 
||         MV      .L1     A11,A4            ; |95| 

           RET     .S2     B3                ; |929| 
||         LDW     .D2T2   *+SP(4),B13       ; |929| 

           LDW     .D2T2   *++SP(16),B10     ; |929| 
	.dwpsn	"SSHBN.C",929,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |929| 

DW$341	.dwtag  DW_TAG_loop
	.dwattr DW$341, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L318:1:1297920382")
	.dwattr DW$341, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$341, DW_AT_begin_line(0x395)
	.dwattr DW$341, DW_AT_end_line(0x39d)
DW$342	.dwtag  DW_TAG_loop_range
	.dwattr DW$342, DW_AT_low_pc(DW$L$_biggcd$5$B)
	.dwattr DW$342, DW_AT_high_pc(DW$L$_biggcd$5$E)
DW$343	.dwtag  DW_TAG_loop_range
	.dwattr DW$343, DW_AT_low_pc(DW$L$_biggcd$8$B)
	.dwattr DW$343, DW_AT_high_pc(DW$L$_biggcd$8$E)
DW$344	.dwtag  DW_TAG_loop_range
	.dwattr DW$344, DW_AT_low_pc(DW$L$_biggcd$6$B)
	.dwattr DW$344, DW_AT_high_pc(DW$L$_biggcd$6$E)
DW$345	.dwtag  DW_TAG_loop_range
	.dwattr DW$345, DW_AT_low_pc(DW$L$_biggcd$7$B)
	.dwattr DW$345, DW_AT_high_pc(DW$L$_biggcd$7$E)
DW$346	.dwtag  DW_TAG_loop_range
	.dwattr DW$346, DW_AT_low_pc(DW$L$_biggcd$12$B)
	.dwattr DW$346, DW_AT_high_pc(DW$L$_biggcd$12$E)
DW$347	.dwtag  DW_TAG_loop_range
	.dwattr DW$347, DW_AT_low_pc(DW$L$_biggcd$13$B)
	.dwattr DW$347, DW_AT_high_pc(DW$L$_biggcd$13$E)
DW$348	.dwtag  DW_TAG_loop_range
	.dwattr DW$348, DW_AT_low_pc(DW$L$_biggcd$14$B)
	.dwattr DW$348, DW_AT_high_pc(DW$L$_biggcd$14$E)
DW$349	.dwtag  DW_TAG_loop_range
	.dwattr DW$349, DW_AT_low_pc(DW$L$_biggcd$15$B)
	.dwattr DW$349, DW_AT_high_pc(DW$L$_biggcd$15$E)

DW$350	.dwtag  DW_TAG_loop
	.dwattr DW$350, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHBN.asm:L320:2:1297920382")
	.dwattr DW$350, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$350, DW_AT_begin_line(0x398)
	.dwattr DW$350, DW_AT_end_line(0x399)
DW$351	.dwtag  DW_TAG_loop_range
	.dwattr DW$351, DW_AT_low_pc(DW$L$_biggcd$10$B)
	.dwattr DW$351, DW_AT_high_pc(DW$L$_biggcd$10$E)
	.dwendtag DW$350

	.dwendtag DW$341

	.dwattr DW$338, DW_AT_end_file("SSHBN.C")
	.dwattr DW$338, DW_AT_end_line(0x3a1)
	.dwattr DW$338, DW_AT_end_column(0x01)
	.dwendtag DW$338

	.sect	".text"
	.global	_bigdiv

DW$352	.dwtag  DW_TAG_subprogram, DW_AT_name("bigdiv"), DW_AT_symbol_name("_bigdiv")
	.dwattr DW$352, DW_AT_low_pc(_bigdiv)
	.dwattr DW$352, DW_AT_high_pc(0x00)
	.dwattr DW$352, DW_AT_begin_file("SSHBN.C")
	.dwattr DW$352, DW_AT_begin_line(0x37c)
	.dwattr DW$352, DW_AT_begin_column(0x08)
	.dwattr DW$352, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$352, DW_AT_skeletal(0x01)
	.dwpsn	"SSHBN.C",893,1

;******************************************************************************
;* FUNCTION NAME: _bigdiv                                                     *
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
_bigdiv:
;** --------------------------------------------------------------------------*
DW$353	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$353, DW_AT_type(*DW$T$40)
	.dwattr DW$353, DW_AT_location[DW_OP_reg4]
DW$354	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$354, DW_AT_type(*DW$T$40)
	.dwattr DW$354, DW_AT_location[DW_OP_reg20]
;** 894	-----------------------    q = newbn((int)*a);
;** 895	-----------------------    bigdivmod(a, b, NULL, q);
;** 896	-----------------------    return q;
           STW     .D2T1   A12,*SP--(16)     ; |893| 

           CALL    .S1     _newbn            ; |894| 
||         MV      .L1     A4,A10            ; |893| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |893| 

           LDHU    .D1T1   *A10,A4           ; |894| 
           MV      .L1X    B4,A11            ; |893| 
           STW     .D2T2   B13,*+SP(4)       ; |893| 
           MV      .L2     B3,B13            ; |893| 
           ADDKPC  .S2     RL115,B3,0        ; |894| 
RL115:     ; CALL OCCURS {_newbn}            ; |894| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bigdivmod        ; |895| 
           MV      .L2X    A4,B6             ; |894| 
           ADDKPC  .S2     RL116,B3,0        ; |895| 
           ZERO    .S1     A6                ; |895| 
           MV      .L2X    A11,B4            ; |895| 

           MV      .D1     A4,A12            ; |894| 
||         MV      .L1     A10,A4            ; |895| 

RL116:     ; CALL OCCURS {_bigdivmod}        ; |895| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |897| 
||         MV      .L2     B13,B3            ; |897| 

           RET     .S2     B3                ; |897| 
||         LDW     .D2T2   *+SP(4),B13       ; |897| 

           LDW     .D2T1   *++SP(16),A12     ; |897| 
||         MV      .L1     A12,A4            ; |896| 

	.dwpsn	"SSHBN.C",897,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |897| 
	.dwattr DW$352, DW_AT_end_file("SSHBN.C")
	.dwattr DW$352, DW_AT_end_line(0x381)
	.dwattr DW$352, DW_AT_end_column(0x01)
	.dwendtag DW$352

;; Inlined function references:
;; [ 10] freebn
;; [ 13] internal_add_shifted
;; [ 22] ssh1_bignum_length
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Assertion failed, (mod[mod[0]] != 0), file SSHBN.C, line 26"
	.string	"5",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_abort
	.global	_memmove
	.global	_memset
	.global	_safemalloc
	.global	_safefree
	.global	__divul
	.global	__remul
	.global	__abort_msg
	.global	_memcpy
	.global	__divi

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$22	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$355	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$356	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
DW$357	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$358	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$359	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$360	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$361	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
DW$362	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$26

DW$T$20	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_address_class(0x20)

DW$T$33	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$363	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$364	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)

DW$T$36	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$365	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$36


DW$T$41	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$366	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$367	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$368	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$369	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$370	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$371	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$372	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$373	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$374	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$375	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$376	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$377	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$378	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$379	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$380	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$381	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$382	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$383	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$47


DW$T$49	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$384	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$385	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$386	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$49

DW$T$58	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_address_class(0x20)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x02)
DW$T$39	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$39, DW_AT_address_class(0x20)
DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("Bignum"), DW_AT_type(*DW$T$39)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)

DW$T$79	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
DW$387	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$79


DW$T$80	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$388	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$80


DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$389	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$390	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$391	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$81


DW$T$82	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)
DW$392	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$393	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$82

DW$T$83	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$83, DW_AT_address_class(0x20)

DW$T$85	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
DW$394	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$395	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$85


DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
DW$396	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$397	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$86


DW$T$87	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$398	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$87


DW$T$88	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$399	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$400	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$88


DW$T$91	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$91, DW_AT_byte_size(0x02)
DW$401	.dwtag  DW_TAG_subrange_type
	.dwattr DW$401, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$91


DW$T$92	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$92, DW_AT_byte_size(0x04)
DW$402	.dwtag  DW_TAG_subrange_type
	.dwattr DW$402, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$92


DW$T$93	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
DW$403	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$404	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$T$93

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$97	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$405	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$406	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$407	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
	.dwendtag DW$T$97


DW$T$98	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
DW$408	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$98


DW$T$100	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
DW$409	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$410	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$100


DW$T$102	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)
DW$411	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$412	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$102


DW$T$103	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$413	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$414	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$103

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)
DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_address_class(0x20)

DW$T$110	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$109)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$415	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$110

DW$T$19	.dwtag  DW_TAG_const_type
DW$T$57	.dwtag  DW_TAG_const_type
	.dwattr DW$T$57, DW_AT_type(*DW$T$6)
DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("BignumInt"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$T$31	.dwtag  DW_TAG_const_type
	.dwattr DW$T$31, DW_AT_type(*DW$T$30)
DW$T$109	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$109, DW_AT_address_class(0x20)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$30	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$30, DW_AT_byte_size(0x01)

	.dwattr DW$352, DW_AT_external(0x01)
	.dwattr DW$352, DW_AT_type(*DW$T$40)
	.dwattr DW$338, DW_AT_external(0x01)
	.dwattr DW$338, DW_AT_type(*DW$T$40)
	.dwattr DW$127, DW_AT_external(0x01)
	.dwattr DW$127, DW_AT_type(*DW$T$40)
	.dwattr DW$335, DW_AT_external(0x01)
	.dwattr DW$335, DW_AT_type(*DW$T$40)
	.dwattr DW$249, DW_AT_external(0x01)
	.dwattr DW$249, DW_AT_type(*DW$T$40)
	.dwattr DW$330, DW_AT_external(0x01)
	.dwattr DW$330, DW_AT_type(*DW$T$40)
	.dwattr DW$327, DW_AT_external(0x01)
	.dwattr DW$327, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_external(0x01)
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$319, DW_AT_external(0x01)
	.dwattr DW$319, DW_AT_type(*DW$T$40)
	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_type(*DW$T$10)
	.dwattr DW$242, DW_AT_external(0x01)
	.dwattr DW$242, DW_AT_type(*DW$T$10)
	.dwattr DW$307, DW_AT_external(0x01)
	.dwattr DW$307, DW_AT_type(*DW$T$109)
	.dwattr DW$47, DW_AT_external(0x01)
	.dwattr DW$47, DW_AT_type(*DW$T$40)
	.dwattr DW$305, DW_AT_external(0x01)
	.dwattr DW$305, DW_AT_type(*DW$T$40)
	.dwattr DW$298, DW_AT_external(0x01)
	.dwattr DW$298, DW_AT_type(*DW$T$9)
	.dwattr DW$293, DW_AT_external(0x01)
	.dwattr DW$293, DW_AT_type(*DW$T$40)
	.dwattr DW$285, DW_AT_external(0x01)
	.dwattr DW$291, DW_AT_external(0x01)
	.dwattr DW$291, DW_AT_type(*DW$T$40)
	.dwattr DW$281, DW_AT_external(0x01)
	.dwattr DW$238, DW_AT_external(0x01)
	.dwattr DW$238, DW_AT_type(*DW$T$40)
	.dwattr DW$277, DW_AT_external(0x01)
	.dwattr DW$142, DW_AT_external(0x01)
	.dwattr DW$261, DW_AT_external(0x01)
	.dwattr DW$261, DW_AT_type(*DW$T$40)
	.dwattr DW$198, DW_AT_external(0x01)
	.dwattr DW$198, DW_AT_type(*DW$T$40)
	.dwattr DW$144, DW_AT_external(0x01)
	.dwattr DW$144, DW_AT_type(*DW$T$40)
	.dwattr DW$43, DW_AT_type(*DW$T$40)
	.dwattr DW$32, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_type(*DW$T$10)
	.dwattr DW$56, DW_AT_external(0x01)
	.dwattr DW$56, DW_AT_type(*DW$T$10)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$37, DW_AT_type(*DW$T$10)
	.dwattr DW$30, DW_AT_external(0x01)
	.dwattr DW$30, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$416	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$416, DW_AT_location[DW_OP_reg0]
DW$417	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$417, DW_AT_location[DW_OP_reg1]
DW$418	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$418, DW_AT_location[DW_OP_reg2]
DW$419	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$419, DW_AT_location[DW_OP_reg3]
DW$420	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$420, DW_AT_location[DW_OP_reg4]
DW$421	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$421, DW_AT_location[DW_OP_reg5]
DW$422	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$422, DW_AT_location[DW_OP_reg6]
DW$423	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$423, DW_AT_location[DW_OP_reg7]
DW$424	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$424, DW_AT_location[DW_OP_reg8]
DW$425	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$425, DW_AT_location[DW_OP_reg9]
DW$426	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$426, DW_AT_location[DW_OP_reg10]
DW$427	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$427, DW_AT_location[DW_OP_reg11]
DW$428	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$428, DW_AT_location[DW_OP_reg12]
DW$429	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$429, DW_AT_location[DW_OP_reg13]
DW$430	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$430, DW_AT_location[DW_OP_reg14]
DW$431	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$431, DW_AT_location[DW_OP_reg15]
DW$432	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$432, DW_AT_location[DW_OP_reg16]
DW$433	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$433, DW_AT_location[DW_OP_reg17]
DW$434	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$434, DW_AT_location[DW_OP_reg18]
DW$435	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$435, DW_AT_location[DW_OP_reg19]
DW$436	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$436, DW_AT_location[DW_OP_reg20]
DW$437	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$437, DW_AT_location[DW_OP_reg21]
DW$438	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$438, DW_AT_location[DW_OP_reg22]
DW$439	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$439, DW_AT_location[DW_OP_reg23]
DW$440	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$440, DW_AT_location[DW_OP_reg24]
DW$441	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$441, DW_AT_location[DW_OP_reg25]
DW$442	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$442, DW_AT_location[DW_OP_reg26]
DW$443	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$443, DW_AT_location[DW_OP_reg27]
DW$444	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$444, DW_AT_location[DW_OP_reg28]
DW$445	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$445, DW_AT_location[DW_OP_reg29]
DW$446	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$446, DW_AT_location[DW_OP_reg30]
DW$447	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$447, DW_AT_location[DW_OP_reg31]
DW$448	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$448, DW_AT_location[DW_OP_regx 0x20]
DW$449	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$449, DW_AT_location[DW_OP_regx 0x21]
DW$450	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$450, DW_AT_location[DW_OP_regx 0x22]
DW$451	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$451, DW_AT_location[DW_OP_regx 0x23]
DW$452	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$452, DW_AT_location[DW_OP_regx 0x24]
DW$453	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$453, DW_AT_location[DW_OP_regx 0x25]
DW$454	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$454, DW_AT_location[DW_OP_regx 0x26]
DW$455	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$455, DW_AT_location[DW_OP_regx 0x27]
DW$456	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$456, DW_AT_location[DW_OP_regx 0x28]
DW$457	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$457, DW_AT_location[DW_OP_regx 0x29]
DW$458	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$458, DW_AT_location[DW_OP_regx 0x2a]
DW$459	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$459, DW_AT_location[DW_OP_regx 0x2b]
DW$460	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$460, DW_AT_location[DW_OP_regx 0x2c]
DW$461	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$461, DW_AT_location[DW_OP_regx 0x2d]
DW$462	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$462, DW_AT_location[DW_OP_regx 0x2e]
DW$463	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$463, DW_AT_location[DW_OP_regx 0x2f]
DW$464	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$464, DW_AT_location[DW_OP_regx 0x30]
DW$465	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$465, DW_AT_location[DW_OP_regx 0x31]
DW$466	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$466, DW_AT_location[DW_OP_regx 0x32]
DW$467	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$467, DW_AT_location[DW_OP_regx 0x33]
DW$468	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$468, DW_AT_location[DW_OP_regx 0x34]
DW$469	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$469, DW_AT_location[DW_OP_regx 0x35]
DW$470	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$470, DW_AT_location[DW_OP_regx 0x36]
DW$471	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$471, DW_AT_location[DW_OP_regx 0x37]
DW$472	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$472, DW_AT_location[DW_OP_regx 0x38]
DW$473	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$473, DW_AT_location[DW_OP_regx 0x39]
DW$474	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$474, DW_AT_location[DW_OP_regx 0x3a]
DW$475	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$475, DW_AT_location[DW_OP_regx 0x3b]
DW$476	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$476, DW_AT_location[DW_OP_regx 0x3c]
DW$477	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$477, DW_AT_location[DW_OP_regx 0x3d]
DW$478	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$478, DW_AT_location[DW_OP_regx 0x3e]
DW$479	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$479, DW_AT_location[DW_OP_regx 0x3f]
DW$480	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$480, DW_AT_location[DW_OP_regx 0x40]
DW$481	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$481, DW_AT_location[DW_OP_regx 0x41]
DW$482	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$482, DW_AT_location[DW_OP_regx 0x42]
DW$483	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$483, DW_AT_location[DW_OP_regx 0x43]
DW$484	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$484, DW_AT_location[DW_OP_regx 0x44]
DW$485	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$485, DW_AT_location[DW_OP_regx 0x45]
DW$486	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$486, DW_AT_location[DW_OP_regx 0x46]
DW$487	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$487, DW_AT_location[DW_OP_regx 0x47]
DW$488	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$488, DW_AT_location[DW_OP_regx 0x48]
DW$489	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$489, DW_AT_location[DW_OP_regx 0x49]
DW$490	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$490, DW_AT_location[DW_OP_regx 0x4a]
DW$491	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$491, DW_AT_location[DW_OP_regx 0x4b]
DW$492	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$492, DW_AT_location[DW_OP_regx 0x4c]
DW$493	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$493, DW_AT_location[DW_OP_regx 0x4d]
DW$494	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$494, DW_AT_location[DW_OP_regx 0x4e]
DW$495	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$495, DW_AT_location[DW_OP_regx 0x4f]
DW$496	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$496, DW_AT_location[DW_OP_regx 0x50]
DW$497	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$497, DW_AT_location[DW_OP_regx 0x51]
DW$498	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$498, DW_AT_location[DW_OP_regx 0x52]
DW$499	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$499, DW_AT_location[DW_OP_regx 0x53]
DW$500	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$500, DW_AT_location[DW_OP_regx 0x54]
DW$501	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$501, DW_AT_location[DW_OP_regx 0x55]
DW$502	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$502, DW_AT_location[DW_OP_regx 0x56]
DW$503	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$503, DW_AT_location[DW_OP_regx 0x57]
DW$504	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$504, DW_AT_location[DW_OP_regx 0x58]
DW$505	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$505, DW_AT_location[DW_OP_regx 0x59]
DW$506	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$506, DW_AT_location[DW_OP_regx 0x5a]
DW$507	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$507, DW_AT_location[DW_OP_regx 0x5b]
DW$508	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$508, DW_AT_location[DW_OP_regx 0x5c]
DW$509	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$509, DW_AT_location[DW_OP_regx 0x5d]
DW$510	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$510, DW_AT_location[DW_OP_regx 0x5e]
DW$511	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$511, DW_AT_location[DW_OP_regx 0x5f]
DW$512	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$512, DW_AT_location[DW_OP_regx 0x60]
DW$513	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$513, DW_AT_location[DW_OP_regx 0x61]
DW$514	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$514, DW_AT_location[DW_OP_regx 0x62]
DW$515	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$515, DW_AT_location[DW_OP_regx 0x63]
DW$516	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$516, DW_AT_location[DW_OP_regx 0x64]
DW$517	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$517, DW_AT_location[DW_OP_regx 0x65]
DW$518	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$518, DW_AT_location[DW_OP_regx 0x66]
DW$519	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$519, DW_AT_location[DW_OP_regx 0x67]
DW$520	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$520, DW_AT_location[DW_OP_regx 0x68]
DW$521	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$521, DW_AT_location[DW_OP_regx 0x69]
DW$522	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$522, DW_AT_location[DW_OP_regx 0x6a]
DW$523	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$523, DW_AT_location[DW_OP_regx 0x6b]
DW$524	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$524, DW_AT_location[DW_OP_regx 0x6c]
DW$525	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$525, DW_AT_location[DW_OP_regx 0x6d]
DW$526	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$526, DW_AT_location[DW_OP_regx 0x6e]
DW$527	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$527, DW_AT_location[DW_OP_regx 0x6f]
DW$528	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$528, DW_AT_location[DW_OP_regx 0x70]
DW$529	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$529, DW_AT_location[DW_OP_regx 0x71]
DW$530	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$530, DW_AT_location[DW_OP_regx 0x72]
DW$531	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$531, DW_AT_location[DW_OP_regx 0x73]
DW$532	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$532, DW_AT_location[DW_OP_regx 0x74]
DW$533	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$533, DW_AT_location[DW_OP_regx 0x75]
DW$534	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$534, DW_AT_location[DW_OP_regx 0x76]
DW$535	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$535, DW_AT_location[DW_OP_regx 0x77]
DW$536	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$536, DW_AT_location[DW_OP_regx 0x78]
DW$537	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$537, DW_AT_location[DW_OP_regx 0x79]
DW$538	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$538, DW_AT_location[DW_OP_regx 0x7a]
DW$539	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$539, DW_AT_location[DW_OP_regx 0x7b]
DW$540	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$540, DW_AT_location[DW_OP_regx 0x7c]
DW$541	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$541, DW_AT_location[DW_OP_regx 0x7d]
DW$542	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$542, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

