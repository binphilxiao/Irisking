;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Jul 30 09:25:51 2007                                *
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
	.dwattr DW$CU, DW_AT_name("SSHDSS.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert"), DW_AT_symbol_name("__assert")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$4, DW_AT_type(*DW$T$3)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$70)
	.dwendtag DW$4


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$8, DW_AT_type(*DW$T$10)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
DW$11	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$8


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$12, DW_AT_type(*DW$T$3)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$70)
	.dwendtag DW$12


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("safemalloc"), DW_AT_symbol_name("_safemalloc")
	.dwattr DW$16, DW_AT_type(*DW$T$3)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$70)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$70)
	.dwendtag DW$16


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("safefree"), DW_AT_symbol_name("_safefree")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$19


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("MD5Init"), DW_AT_symbol_name("_MD5Init")
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$21


DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("MD5Update"), DW_AT_symbol_name("_MD5Update")
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$62)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$23


DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("MD5Final"), DW_AT_symbol_name("_MD5Final")
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$27


DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Init"), DW_AT_symbol_name("_SHA_Init")
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Bytes"), DW_AT_symbol_name("_SHA_Bytes")
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$32


DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Final"), DW_AT_symbol_name("_SHA_Final")
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$36


DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Simple"), DW_AT_symbol_name("_SHA_Simple")
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$39


DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Init"), DW_AT_symbol_name("_SHA512_Init")
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
	.dwendtag DW$43


DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Bytes"), DW_AT_symbol_name("_SHA512_Bytes")
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$45


DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Final"), DW_AT_symbol_name("_SHA512_Final")
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$49


DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("freebn"), DW_AT_symbol_name("_freebn")
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$52


DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("modpow"), DW_AT_symbol_name("_modpow")
	.dwattr DW$54, DW_AT_type(*DW$T$58)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$54


DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("modmul"), DW_AT_symbol_name("_modmul")
	.dwattr DW$58, DW_AT_type(*DW$T$58)
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$58


DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_from_bytes"), DW_AT_symbol_name("_bignum_from_bytes")
	.dwattr DW$62, DW_AT_type(*DW$T$58)
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$62)
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$62


DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_bitcount"), DW_AT_symbol_name("_bignum_bitcount")
	.dwattr DW$65, DW_AT_type(*DW$T$10)
	.dwattr DW$65, DW_AT_declaration(0x01)
	.dwattr DW$65, DW_AT_external(0x01)
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$65


DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("ssh2_bignum_length"), DW_AT_symbol_name("_ssh2_bignum_length")
	.dwattr DW$67, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_declaration(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$67


DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_byte"), DW_AT_symbol_name("_bignum_byte")
	.dwattr DW$69, DW_AT_type(*DW$T$10)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$69


DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("bigmuladd"), DW_AT_symbol_name("_bigmuladd")
	.dwattr DW$72, DW_AT_type(*DW$T$58)
	.dwattr DW$72, DW_AT_declaration(0x01)
	.dwattr DW$72, DW_AT_external(0x01)
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$72


DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("bigmod"), DW_AT_symbol_name("_bigmod")
	.dwattr DW$76, DW_AT_type(*DW$T$58)
	.dwattr DW$76, DW_AT_declaration(0x01)
	.dwattr DW$76, DW_AT_external(0x01)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$76


DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("modinv"), DW_AT_symbol_name("_modinv")
	.dwattr DW$79, DW_AT_type(*DW$T$58)
	.dwattr DW$79, DW_AT_declaration(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$79


DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_cmp"), DW_AT_symbol_name("_bignum_cmp")
	.dwattr DW$82, DW_AT_type(*DW$T$10)
	.dwattr DW$82, DW_AT_declaration(0x01)
	.dwattr DW$82, DW_AT_external(0x01)
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$82

DW$85	.dwtag  DW_TAG_variable, DW_AT_name("One"), DW_AT_symbol_name("_One")
	.dwattr DW$85, DW_AT_type(*DW$T$58)
	.dwattr DW$85, DW_AT_declaration(0x01)
	.dwattr DW$85, DW_AT_external(0x01)
	.global	_ssh_dss
	.sect	".const"
	.align	4
_ssh_dss:
	.field  	_dss_newkey,32		; _ssh_dss._newkey @ 0
	.field  	_dss_freekey,32		; _ssh_dss._freekey @ 32
	.field  	_dss_fmtkey,32		; _ssh_dss._fmtkey @ 64
	.field  	_dss_public_blob,32		; _ssh_dss._public_blob @ 96
	.field  	_dss_private_blob,32		; _ssh_dss._private_blob @ 128
	.field  	_dss_createkey,32		; _ssh_dss._createkey @ 160
	.field  	_dss_openssh_createkey,32		; _ssh_dss._openssh_createkey @ 192
	.field  	_dss_openssh_fmtkey,32		; _ssh_dss._openssh_fmtkey @ 224
	.field  	_dss_pubkey_bits,32		; _ssh_dss._pubkey_bits @ 256
	.field  	_dss_fingerprint,32		; _ssh_dss._fingerprint @ 288
	.field  	_dss_verifysig,32		; _ssh_dss._verifysig @ 320
	.field  	_dss_sign,32		; _ssh_dss._sign @ 352
	.field  	SL1,32		; _ssh_dss._name @ 384
	.field  	SL2,32		; _ssh_dss._keytype @ 416

DW$86	.dwtag  DW_TAG_variable, DW_AT_name("ssh_dss"), DW_AT_symbol_name("_ssh_dss")
	.dwattr DW$86, DW_AT_location[DW_OP_addr _ssh_dss]
	.dwattr DW$86, DW_AT_type(*DW$T$167)
	.dwattr DW$86, DW_AT_external(0x01)
	.sect	".const"
	.align	8
_hex$1:
	.field  	48,8			; _hex$1[0] @ 0
	.field  	49,8			; _hex$1[1] @ 8
	.field  	50,8			; _hex$1[2] @ 16
	.field  	51,8			; _hex$1[3] @ 24
	.field  	52,8			; _hex$1[4] @ 32
	.field  	53,8			; _hex$1[5] @ 40
	.field  	54,8			; _hex$1[6] @ 48
	.field  	55,8			; _hex$1[7] @ 56
	.field  	56,8			; _hex$1[8] @ 64
	.field  	57,8			; _hex$1[9] @ 72
	.field  	97,8			; _hex$1[10] @ 80
	.field  	98,8			; _hex$1[11] @ 88
	.field  	99,8			; _hex$1[12] @ 96
	.field  	100,8			; _hex$1[13] @ 104
	.field  	101,8			; _hex$1[14] @ 112
	.field  	102,8			; _hex$1[15] @ 120
	.field  	0,8			; _hex$1[16] @ 128

;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe --gen_opt_info=2 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI2322 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI2324 --opt_info_filename=D:/pred/dsp/vport/Debug/SSHDSS.nfo 
	.sect	".text"

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("getstring"), DW_AT_symbol_name("_getstring")
	.dwattr DW$87, DW_AT_low_pc(_getstring)
	.dwattr DW$87, DW_AT_high_pc(0x00)
	.dwattr DW$87, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$87, DW_AT_begin_line(0x28)
	.dwattr DW$87, DW_AT_begin_column(0x0d)
	.dwattr DW$87, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$87, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",41,1

;******************************************************************************
;* FUNCTION NAME: _getstring                                                  *
;*                                                                            *
;*   Regs Modified     : A3,B0,B5,B6,B7,B8,B9,B16,B17                         *
;*   Regs Used         : A3,A4,A6,B0,B3,B4,B5,B6,B7,B8,B9,B16,B17             *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_getstring:
;** --------------------------------------------------------------------------*
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$88, DW_AT_type(*DW$T$65)
	.dwattr DW$88, DW_AT_location[DW_OP_reg4]
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("datalen"), DW_AT_symbol_name("_datalen")
	.dwattr DW$89, DW_AT_type(*DW$T$41)
	.dwattr DW$89, DW_AT_location[DW_OP_reg20]
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$90, DW_AT_type(*DW$T$65)
	.dwattr DW$90, DW_AT_location[DW_OP_reg6]
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length"), DW_AT_symbol_name("_length")
	.dwattr DW$91, DW_AT_type(*DW$T$41)
	.dwattr DW$91, DW_AT_location[DW_OP_reg22]
;** 42	-----------------------    *p = NULL;
;** 43	-----------------------    if ( *datalen < 4 ) goto g4;

           LDW     .D2T2   *B4,B7            ; |43| 
||         MV      .L2X    A4,B5             ; |41| 
||         ZERO    .L1     A3                ; |42| 

           NOP             3
           STW     .D1T1   A3,*A6            ; |42| 
           CMPLT   .L2     B7,4,B0           ; |43| 

   [ B0]   BNOP    .S1     L1,2              ; |43| 
|| [!B0]   LDW     .D2T2   *B5,B7            ; |45| 

   [!B0]   LDW     .D2T2   *B4,B8            ; |46| 
   [ B0]   RET     .S2     B3                ; |53| 
   [!B0]   LDBU    .D2T2   *B7,B16           ; |45| 
           ; BRANCHCC OCCURS {L1}            ; |43| 
;** --------------------------------------------------------------------------*
;** 45	-----------------------    C$1 = *data;
;** 45	-----------------------    *length = (int)((((unsigned)(unsigned long)(unsigned char)*C$1<<8|(unsigned)(unsigned long)(unsigned char)C$1[1])<<8|(unsigned)(unsigned long)(unsigned char)C$1[2])<<8)|(int)(unsigned long)(unsigned char)C$1[3];
;** 46	-----------------------    *datalen = *datalen-4;
;** 47	-----------------------    *data = U$12 = *data+4;
;** 48	-----------------------    U$43 = *length;
;** 48	-----------------------    if ( *datalen < U$43 ) goto g4;
;** 50	-----------------------    *p = U$12;
;** 51	-----------------------    *data = *data+U$43;
;** 52	-----------------------    *datalen = *datalen-U$43;
;**	-----------------------g4:
;**  	-----------------------    return;
           LDBU    .D2T2   *+B7(1),B17       ; |45| 
           LDBU    .D2T2   *+B7(3),B9        ; |45| 

           SUB     .L2     B8,4,B7           ; |46| 
||         LDBU    .D2T2   *+B7(2),B8        ; |45| 

           STW     .D2T2   B7,*B4            ; |46| 

           LDW     .D2T2   *B5,B7            ; |47| 
||         SHL     .S2     B16,8,B16         ; |45| 

           NOP             1
           OR      .L2     B17,B16,B16       ; |45| 
           SHL     .S2     B16,8,B16         ; |45| 
           OR      .L2     B8,B16,B8         ; |45| 

           SHL     .S2     B8,8,B7           ; |45| 
||         ADD     .L1X    4,B7,A3           ; |47| 

           STW     .D2T1   A3,*B5            ; |47| 
||         OR      .L2     B9,B7,B7          ; |45| 

           STW     .D2T2   B7,*B6            ; |45| 
           LDW     .D2T2   *B6,B6            ; |48| 
           LDW     .D2T2   *B4,B7            ; |48| 
           NOP             4
           CMPLT   .L2     B7,B6,B0          ; |48| 

   [!B0]   LDW     .D2T2   *B5,B7            ; |51| 
|| [!B0]   STW     .D1T1   A3,*A6            ; |50| 

           NOP             4
   [!B0]   ADD     .L2     B6,B7,B7          ; |51| 
   [!B0]   STW     .D2T2   B7,*B5            ; |51| 
   [!B0]   LDW     .D2T2   *B4,B5            ; |52| 
           NOP             4

   [!B0]   SUB     .L2     B5,B6,B5          ; |52| 
||         RET     .S2     B3                ; |53| 

   [!B0]   STW     .D2T2   B5,*B4            ; |52| 
;** --------------------------------------------------------------------------*
L1:    
	.dwpsn	"SSHDSS.C",53,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |53| 
	.dwattr DW$87, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$87, DW_AT_end_line(0x35)
	.dwattr DW$87, DW_AT_end_column(0x01)
	.dwendtag DW$87

	.sect	".text"

DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_verifysig"), DW_AT_symbol_name("_dss_verifysig")
	.dwattr DW$92, DW_AT_low_pc(_dss_verifysig)
	.dwattr DW$92, DW_AT_high_pc(0x00)
	.dwattr DW$92, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$92, DW_AT_begin_line(0xd4)
	.dwattr DW$92, DW_AT_begin_column(0x0c)
	.dwattr DW$92, DW_AT_frame_base[DW_OP_breg31 96]
	.dwattr DW$92, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",214,1

;******************************************************************************
;* FUNCTION NAME: _dss_verifysig                                              *
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
;*   Local Frame Size  : 0 Args + 48 Auto + 44 Save = 92 byte                 *
;******************************************************************************
_dss_verifysig:
;** --------------------------------------------------------------------------*
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$93, DW_AT_type(*DW$T$3)
	.dwattr DW$93, DW_AT_location[DW_OP_reg4]
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sig"), DW_AT_symbol_name("_sig")
	.dwattr DW$94, DW_AT_type(*DW$T$33)
	.dwattr DW$94, DW_AT_location[DW_OP_reg20]
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("siglen"), DW_AT_symbol_name("_siglen")
	.dwattr DW$95, DW_AT_type(*DW$T$10)
	.dwattr DW$95, DW_AT_location[DW_OP_reg6]
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$96, DW_AT_type(*DW$T$33)
	.dwattr DW$96, DW_AT_location[DW_OP_reg22]
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("datalen"), DW_AT_symbol_name("_datalen")
	.dwattr DW$97, DW_AT_type(*DW$T$10)
	.dwattr DW$97, DW_AT_location[DW_OP_reg8]
;** 214	-----------------------    sig = sig;
;** 214	-----------------------    siglen = siglen;
;** 215	-----------------------    dss = (struct _dss_key *)key;
;** 222	-----------------------    if ( (*dss).p == NULL ) goto g10;

           MV      .L1X    SP,A31            ; |214| 
||         STW     .D2T1   A15,*SP--(96)     ; |214| 
||         MVK     .S1     40,A3             ; |245| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         MV      .S1     A4,A10            ; |214| 
||         STW     .D2T2   B4,*+SP(16)       ; |214| 
||         CMPEQ   .L1     A6,A3,A0          ; |245| 

           LDW     .D1T1   *A10,A1           ; |222| 
||         STW     .D2T2   B3,*+SP(76)

           STDW    .D1T1   A13:A12,*-A31(32)

           MV      .L1     A8,A13            ; |214| 
||         STDW    .D2T2   B11:B10,*+SP(80)

           STW     .D1T1   A14,*-A31(24)
||         STDW    .D2T2   B13:B12,*+SP(88)
||         MV      .L1X    B6,A14            ; |214| 

           STW     .D2T1   A6,*+SP(12)       ; |214| 

   [!A1]   B       .S1     L6                ; |222| 
|| [!A1]   ZERO    .L1     A0                ; |246| nullify predicate
|| [ A1]   ADD     .D2     SP,16,B5          ; |246| 
|| [ A1]   ADD     .D1X    8,SP,A6           ; |246| 
|| [ A1]   ADD     .L2     4,SP,B6           ; |246| 
|| [ A1]   ADD     .S2     12,SP,B4          ; |246| 

   [ A0]   BNOP    .S1     L5,3              ; |245| 
|| [ A1]   ZERO    .L1     A5                ; |247| 

   [ A1]   MV      .L1X    B5,A4             ; |246| 
           ; BRANCHCC OCCURS {L6}            ; |222| 
;** --------------------------------------------------------------------------*
;** 245	-----------------------    if ( siglen == 40 ) goto g9;
   [!A0]   CALL    .S1     _getstring        ; |246| 
           ; BRANCHCC OCCURS {L5}            ; |245| 
;** --------------------------------------------------------------------------*
;** 246	-----------------------    getstring(&sig, &siglen, &p, &slen);
;** 247	-----------------------    if ( (p == NULL)|(slen != 7) ) goto g10;
;** 243	-----------------------    mem1 = *&p-1;  // [6]
;** 246	-----------------------    mem2 = (void *)"ssh-dss"-1;  // [6]
;** 249	-----------------------    L$1 = 7;  // [6]
;**  	-----------------------    #pragma MUST_ITERATE(1, 7, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
           ADDKPC  .S2     RL0,B3,4          ; |246| 
RL0:       ; CALL OCCURS {_getstring}        ; |246| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(4),B4        ; |247| 
||         MVKL    .S1     SL1+0,A3          ; |246| 

           LDW     .D2T2   *+SP(8),B0        ; |247| 
||         MVKH    .S1     SL1+0,A3          ; |246| 

           SUB     .L1     A3,1,A4           ; |246| 
||         MVK     .S1     0x7,A3            ; |249| 

           NOP             1
           MV      .L2X    A3,B5
           CMPEQ   .L2     B4,7,B4           ; |247| 

   [!B0]   MVK     .L1     0x1,A5            ; |247| 
||         XOR     .L2     1,B4,B4           ; |247| 

           NOP             1

           SUB     .L2     B0,1,B4           ; |243| 
||         OR      .L1X    B4,A5,A0          ; |247| 

   [ A0]   BNOP    .S1     L6,5              ; |247| 
|| [!A0]   LDBU    .D2T2   *++B4,B6          ; |249| (P) <0,0> 
|| [!A0]   LDBU    .D1T1   *++A4,A3          ; |249| (P) <0,0> 

           ; BRANCHCC OCCURS {L6}            ; |247| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 249	-----------------------    cp = *(++mem1);  // [6]
;** 249	-----------------------    U$44 = *(++mem2);  // [6]
;** 249	-----------------------    if ( cp != U$44 ) goto g7;  // [6]
;** 249	-----------------------    if ( --L$1 ) goto g5;  // [6]

           MVC     .S2     CSR,B7
||         CMPEQ   .L1X    B6,A3,A0          ; |249| (P) <0,5>  ^ 

           AND     .L2     -2,B7,B8
           MVC     .S2     B8,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 249
;*      Loop closing brace source line   : 249
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 7                    
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
L2:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L3:    ; PIPED LOOP KERNEL
DW$L$_dss_verifysig$7$B:

           ZERO    .L2     B0                ; |249| <0,6>  ^ 
|| [ A0]   SUB     .S2     B5,1,B5           ; |249| <0,6>  ^ 

   [ A0]   MV      .L2     B5,B0             ; |249| <0,7>  ^ 

   [ B0]   BNOP    .S1     L3,4              ; |249| <0,8> 
|| [ B0]   LDBU    .D2T2   *++B4,B6          ; |249| <1,0> 
|| [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| <1,0> 

           CMPEQ   .L1X    B6,A3,A0          ; |249| <1,5>  ^ 
DW$L$_dss_verifysig$7$E:
;** --------------------------------------------------------------------------*
L4:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 250	-----------------------    if ( cp != U$44 ) goto g10;  // [6]

           CMPEQ   .L1X    B6,A3,A0          ; |250| 
||         LDW     .D2T2   *+SP(16),B4       ; |250| 
||         MVC     .S2     B7,CSR            ; interrupts on

   [!A0]   BNOP    .S1     L6,3              ; |250| 
||         LDW     .D2T2   *+SP(12),B6       ; |250| 

           ADD     .L2     4,B4,B5           ; |250| 

           SUB     .L2     B6,4,B4           ; |250| 
|| [ A0]   STW     .D2T2   B5,*+SP(16)       ; |250| 

           ; BRANCHCC OCCURS {L6}            ; |250| 
;** --------------------------------------------------------------------------*
;** 250	-----------------------    sig = sig+4;
;** 250	-----------------------    siglen = siglen-4;
           STW     .D2T2   B4,*+SP(12)       ; |250| 
;** --------------------------------------------------------------------------*
L5:    
;**	-----------------------g9:
;** 252	-----------------------    b = bignum_from_bytes(*&sig, 20);
;** 74	-----------------------    sig = sig+20;  // [34]
;** 75	-----------------------    siglen = siglen-20;  // [34]
;** 73	-----------------------    b = bignum_from_bytes(*&sig, 20);  // [34]
;** 74	-----------------------    sig = sig+20;  // [34]
;** 75	-----------------------    siglen = siglen-20;  // [34]
;** 77	-----------------------    if ( !((b == NULL)|(b == NULL)) ) goto g11;  // [34]
           CALL    .S1     _bignum_from_bytes ; |252| 
           LDW     .D2T1   *+SP(16),A4       ; |252| 
           MVK     .S2     0x14,B4           ; |252| 
           ADDKPC  .S2     RL1,B3,2          ; |252| 
RL1:       ; CALL OCCURS {_bignum_from_bytes}  ; |252| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(12),B4       ; |75| 
           LDW     .D2T2   *+SP(16),B5       ; |74| 
           MV      .L1     A4,A12            ; |252| 
           CALL    .S1     _bignum_from_bytes ; |73| 
           STW     .D2T1   A12,*+SP(44)      ; |252| 
           SUB     .D2     B4,20,B6          ; |75| 
           ADDK    .S2     20,B5             ; |74| 

           MVK     .S2     0x14,B4           ; |73| 
||         STW     .D2T2   B5,*+SP(16)       ; |74| 

           ADDKPC  .S2     RL2,B3,0          ; |73| 
||         MV      .L1X    B5,A4
||         STW     .D2T2   B6,*+SP(12)       ; |75| 

RL2:       ; CALL OCCURS {_bignum_from_bytes}  ; |73| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(12),B4       ; |75| 
||         MV      .L1     A4,A0             ; |266| 
||         ZERO    .S1     A5                ; |77| 
||         MV      .D1     A12,A2            ; |265| 
||         MVK     .S2     20,B13            ; |267| 

   [!A2]   MVK     .L1     0x1,A5            ; |77| 
||         LDW     .D2T1   *+SP(16),A3       ; |74| 
||         MVKL    .S1     _One,A11          ; |282| 
||         ZERO    .D1     A15               ; |75| 

           MVKH    .S1     _One,A11          ; |282| 
||         STW     .D2T1   A4,*+SP(48)       ; |73| 

           ADDAW   .D2     SP,11,B11         ; |74| 
           ADD     .D2     SP,24,B10         ; |266| 

           SUB     .D2     B4,20,B5          ; |75| 
||         ZERO    .L2     B4                ; |77| 

   [!A0]   MVK     .L2     0x1,B4            ; |77| 
||         ADDK    .S1     20,A3             ; |74| 
||         STW     .D2T2   B5,*+SP(12)       ; |75| 

           STW     .D2T1   A3,*+SP(16)       ; |74| 

           OR      .L1X    B4,A5,A0          ; |77| 
||         ADD     .D2     SP,24,B12         ; |265| 

   [!A0]   B       .S1     L7                ; |77| 
|| [!A0]   LDW     .D1T2   *+A10(4),B4       ; |260| 

   [!A0]   CALL    .S1     _modinv           ; |260| 
           NOP             4
           ; BRANCHCC OCCURS {L7}            ; |77| 
;** --------------------------------------------------------------------------*
L6:    
;**	-----------------------g10:
;** 255	-----------------------    return 0;
           LDW     .D2T2   *+SP(76),B3       ; |300| 
           MV      .L1X    SP,A31            ; |300| 
           LDDW    .D1T1   *+A31(64),A13:A12 ; |300| 
           LDW     .D1T1   *+A31(72),A14     ; |300| 
           LDDW    .D2T2   *+SP(88),B13:B12  ; |300| 

           RET     .S2     B3                ; |300| 
||         LDDW    .D1T1   *+A31(56),A11:A10 ; |300| 
||         LDDW    .D2T2   *+SP(80),B11:B10  ; |300| 

           LDW     .D2T1   *++SP(96),A15     ; |300| 
           NOP             3
           ZERO    .L1     A4                ; |255| 
           ; BRANCH OCCURS {B3}              ; |300| 
;** --------------------------------------------------------------------------*
L7:    
;**	-----------------------g11:
;** 260	-----------------------    w = modinv(b, (*dss).q);
;** 265	-----------------------    SHA_Simple((void * const)data, datalen, &hash);
;** 266	-----------------------    p = &hash[0];
;** 267	-----------------------    slen = 20;
;** 73	-----------------------    b = bignum_from_bytes(*&p, 20);  // [34]
;** 74	-----------------------    p = &hash[20];  // [34]
;** 75	-----------------------    slen = 0;  // [34]
;** 77	-----------------------    u1 = modmul(b, w, (*dss).q);  // [34]
;** 274	-----------------------    u2 = modmul(b, w, (*dss).q);
;** 279	-----------------------    gu1p = modpow((*dss).g, u1, (*dss).p);
;** 280	-----------------------    yu2p = modpow((*dss).y, u2, (*dss).p);
;** 281	-----------------------    gu1yu2p = modmul(gu1p, yu2p, (*dss).p);
;** 282	-----------------------    v = modmul(gu1yu2p, One, (*dss).q);
;** 288	-----------------------    ret = bignum_cmp(v, b) == 0;
;** 290	-----------------------    freebn(w);
           ADDKPC  .S2     RL3,B3,0          ; |260| 
RL3:       ; CALL OCCURS {_modinv}           ; |260| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA_Simple       ; |265| 
           ADDKPC  .S2     RL4,B3,0          ; |265| 
           MV      .S1X    B12,A6            ; |265| 
           MV      .L2X    A13,B4            ; |265| 
           MV      .D1     A4,A12            ; |260| 
           MV      .L1     A14,A4            ; |265| 
RL4:       ; CALL OCCURS {_SHA_Simple}       ; |265| 
           CALL    .S1     _bignum_from_bytes ; |73| 
           MVK     .S2     0x14,B4           ; |73| 
           ADDKPC  .S2     RL5,B3,0          ; |73| 
           MV      .L1X    B10,A4
           STW     .D2T2   B10,*+SP(8)       ; |266| 
           STW     .D2T2   B13,*+SP(4)       ; |267| 
RL5:       ; CALL OCCURS {_bignum_from_bytes}  ; |73| 
           CALL    .S1     _modmul           ; |77| 
           LDW     .D1T1   *+A10(4),A6       ; |77| 
           MV      .L2X    A12,B4            ; |77| 
           STW     .D2T2   B11,*+SP(8)       ; |74| 
           ADDKPC  .S2     RL6,B3,0          ; |77| 

           MV      .L2X    A4,B10            ; |73| 
||         STW     .D2T1   A15,*+SP(4)       ; |75| 

RL6:       ; CALL OCCURS {_modmul}           ; |77| 

           CALL    .S1     _modmul           ; |274| 
||         LDW     .D2T1   *+SP(44),A15      ; |274| 

           LDW     .D1T1   *+A10(4),A6       ; |274| 
           ADDKPC  .S2     RL7,B3,0          ; |274| 
           MV      .L2X    A12,B4            ; |274| 
           MV      .S1     A4,A13            ; |77| 
           MV      .L1     A15,A4            ; |274| 
RL7:       ; CALL OCCURS {_modmul}           ; |274| 

           CALL    .S1     _modpow           ; |279| 
||         LDW     .D1T1   *A10,A6           ; |279| 

           LDW     .D1T1   *+A10(8),A4       ; |279| 
||         MV      .L1     A4,A14            ; |274| 

           ADDKPC  .S2     RL8,B3,2          ; |279| 
           MV      .L2X    A13,B4            ; |279| 
RL8:       ; CALL OCCURS {_modpow}           ; |279| 

           LDW     .D1T1   *A10,A6           ; |280| 
||         CALL    .S1     _modpow           ; |280| 

           LDW     .D1T1   *+A10(12),A4      ; |280| 
||         MV      .L1     A4,A13            ; |279| 

           MV      .L2X    A14,B4            ; |280| 
           ADDKPC  .S2     RL9,B3,2          ; |280| 
RL9:       ; CALL OCCURS {_modpow}           ; |280| 
           CALL    .S1     _modmul           ; |281| 
           LDW     .D1T1   *A10,A6           ; |281| 
           MV      .L2X    A4,B4             ; |280| 
           MV      .S1     A4,A14            ; |280| 
           MV      .L1     A13,A4            ; |281| 
           ADDKPC  .S2     RL10,B3,0         ; |281| 
RL10:      ; CALL OCCURS {_modmul}           ; |281| 

           LDW     .D1T2   *A11,B4           ; |282| 
||         CALL    .S1     _modmul           ; |282| 

           LDW     .D1T1   *+A10(4),A6       ; |282| 
           MV      .L1     A4,A11            ; |281| 
           ADDKPC  .S2     RL11,B3,2         ; |282| 
RL11:      ; CALL OCCURS {_modmul}           ; |282| 
           CALL    .S1     _bignum_cmp       ; |288| 
           MV      .L2X    A15,B4            ; |288| 
           ADDKPC  .S2     RL12,B3,2         ; |288| 
           MV      .L1     A4,A15            ; |282| 
RL12:      ; CALL OCCURS {_bignum_cmp}       ; |288| 
           CALL    .S1     _freebn           ; |290| 
           ADDKPC  .S2     RL13,B3,2         ; |290| 
           CMPEQ   .L1     A4,0,A10          ; |288| 
           MV      .S1     A12,A4            ; |290| 
RL13:      ; CALL OCCURS {_freebn}           ; |290| 
;** --------------------------------------------------------------------------*
;** 291	-----------------------    freebn(b);
;** 292	-----------------------    freebn(gu1p);
;** 293	-----------------------    freebn(yu2p);
;** 294	-----------------------    freebn(gu1yu2p);
;** 295	-----------------------    freebn(v);
;** 296	-----------------------    freebn(b);
;** 297	-----------------------    freebn(b);
;** 299	-----------------------    return ret;
           CALL    .S1     _freebn           ; |291| 
           ADDKPC  .S2     RL14,B3,3         ; |291| 
           MV      .L1X    B10,A4            ; |291| 
RL14:      ; CALL OCCURS {_freebn}           ; |291| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _freebn           ; |292| 
           ADDKPC  .S2     RL15,B3,3         ; |292| 
           MV      .L1     A13,A4            ; |292| 
RL15:      ; CALL OCCURS {_freebn}           ; |292| 
           CALL    .S1     _freebn           ; |293| 
           MV      .L1     A14,A4            ; |293| 
           ADDKPC  .S2     RL16,B3,3         ; |293| 
RL16:      ; CALL OCCURS {_freebn}           ; |293| 
           CALL    .S1     _freebn           ; |294| 
           MV      .L1     A11,A4            ; |294| 
           ADDKPC  .S2     RL17,B3,3         ; |294| 
RL17:      ; CALL OCCURS {_freebn}           ; |294| 
           CALL    .S1     _freebn           ; |295| 
           MV      .L1     A15,A4            ; |295| 
           ADDKPC  .S2     RL18,B3,3         ; |295| 
RL18:      ; CALL OCCURS {_freebn}           ; |295| 
           CALL    .S1     _freebn           ; |296| 
           LDW     .D2T1   *+SP(44),A4       ; |296| 
           ADDKPC  .S2     RL19,B3,3         ; |296| 
RL19:      ; CALL OCCURS {_freebn}           ; |296| 
           CALL    .S1     _freebn           ; |297| 
           LDW     .D2T1   *+SP(48),A4       ; |297| 
           ADDKPC  .S2     RL20,B3,3         ; |297| 
RL20:      ; CALL OCCURS {_freebn}           ; |297| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(76),B3       ; |300| 
           MV      .L1X    SP,A31            ; |300| 
           LDDW    .D1T1   *+A31(64),A13:A12 ; |300| 
           LDW     .D1T1   *+A31(72),A14     ; |300| 
           LDDW    .D2T2   *+SP(88),B13:B12  ; |300| 

           RET     .S2     B3                ; |300| 
||         LDDW    .D1T1   *+A31(56),A11:A10 ; |300| 
||         LDDW    .D2T2   *+SP(80),B11:B10  ; |300| 
||         MV      .L1     A10,A4            ; |299| 

           LDW     .D2T1   *++SP(96),A15     ; |300| 
	.dwpsn	"SSHDSS.C",300,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |300| 

DW$98	.dwtag  DW_TAG_loop
	.dwattr DW$98, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L3:1:1185758752")
	.dwattr DW$98, DW_AT_begin_file("C:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$98, DW_AT_begin_line(0xf9)
	.dwattr DW$98, DW_AT_end_line(0xf9)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_dss_verifysig$7$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_dss_verifysig$7$E)
	.dwendtag DW$98

	.dwattr DW$92, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$92, DW_AT_end_line(0x12c)
	.dwattr DW$92, DW_AT_end_column(0x01)
	.dwendtag DW$92

	.sect	".text"

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_sign"), DW_AT_symbol_name("_dss_sign")
	.dwattr DW$100, DW_AT_low_pc(_dss_sign)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$100, DW_AT_begin_line(0x1e2)
	.dwattr DW$100, DW_AT_begin_column(0x17)
	.dwattr DW$100, DW_AT_frame_base[DW_OP_breg31 424]
	.dwattr DW$100, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",483,1

;******************************************************************************
;* FUNCTION NAME: _dss_sign                                                   *
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
;*   Local Frame Size  : 0 Args + 376 Auto + 44 Save = 420 byte               *
;******************************************************************************
_dss_sign:
;** --------------------------------------------------------------------------*
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$101, DW_AT_type(*DW$T$3)
	.dwattr DW$101, DW_AT_location[DW_OP_reg4]
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$102, DW_AT_type(*DW$T$33)
	.dwattr DW$102, DW_AT_location[DW_OP_reg20]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("datalen"), DW_AT_symbol_name("_datalen")
	.dwattr DW$103, DW_AT_type(*DW$T$10)
	.dwattr DW$103, DW_AT_location[DW_OP_reg6]
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("siglen"), DW_AT_symbol_name("_siglen")
	.dwattr DW$104, DW_AT_type(*DW$T$41)
	.dwattr DW$104, DW_AT_location[DW_OP_reg22]
;** 555	-----------------------    dss = (struct _dss_key *)key;
;** 562	-----------------------    SHA_Simple((void * const)data, datalen, &digest);
;** 567	-----------------------    SHA512_Init(&ss);
;** 568	-----------------------    SHA512_Bytes(&ss, (const void *)"DSA deterministic k generator", 30);
;** 569	-----------------------    b = (*dss).x;
;** 30	-----------------------    len = (bignum_bitcount(b)+8)/8;  // [31]
;** 31	-----------------------    lenbuf[0] = len>>24;  // [31]
;** 31	-----------------------    lenbuf[1] = len>>16;  // [31]
;** 31	-----------------------    lenbuf[2] = len>>8;  // [31]
;** 31	-----------------------    lenbuf[3] = len;  // [31]
;** 32	-----------------------    SHA512_Bytes(&ss, &lenbuf, 4);  // [31]
;** 33	-----------------------    if ( (--len) < 0 ) goto g4;  // [31]
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           ADDK    .S2     -424,SP           ; |483| 
||         MV      .L1X    SP,A31            ; |483| 

           CALL    .S1     _SHA_Simple       ; |562| 
||         STW     .D2T2   B3,*+SP(404)

           STW     .D2T2   B13,*+SP(420)

           STW     .D2T2   B10,*+SP(408)
||         STDW    .D1T1   A13:A12,*-A31(32)

           STW     .D2T2   B11,*+SP(412)
||         STDW    .D1T1   A11:A10,*-A31(40)
||         MV      .L1X    B4,A3             ; |483| 

           MV      .L1X    B6,A13            ; |483| 
||         STW     .D1T1   A14,*-A31(24)
||         STW     .D2T2   B12,*+SP(416)
||         MVK     .S1     288,A5            ; |562| 

           ADDKPC  .S2     RL21,B3,0         ; |562| 
||         MV      .L1     A3,A4             ; |562| 
||         ADD     .S1X    A5,SP,A6          ; |562| 
||         MV      .D1     A4,A10            ; |483| 
||         STW     .D2T1   A15,*+SP(424)
||         MV      .L2X    A6,B4             ; |483| 

RL21:      ; CALL OCCURS {_SHA_Simple}       ; |562| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA512_Init      ; |567| 
           ADDKPC  .S2     RL22,B3,3         ; |567| 
           ADD     .L1X    8,SP,A4           ; |567| 
RL22:      ; CALL OCCURS {_SHA512_Init}      ; |567| 
           CALL    .S1     _SHA512_Bytes     ; |568| 
           MVKL    .S2     SL3+0,B4          ; |568| 
           MVKH    .S2     SL3+0,B4          ; |568| 
           MVK     .S1     0x1e,A6           ; |568| 
           ADD     .L1X    8,SP,A4           ; |568| 
           ADDKPC  .S2     RL23,B3,0         ; |568| 
RL23:      ; CALL OCCURS {_SHA512_Bytes}     ; |568| 

           LDW     .D1T1   *+A10(16),A11     ; |569| 
||         CALL    .S1     _bignum_bitcount  ; |30| 

           ADDKPC  .S2     RL24,B3,3         ; |30| 
           MV      .L1     A11,A4            ; |30| 
RL24:      ; CALL OCCURS {_bignum_bitcount}  ; |30| 
           ADD     .L1     8,A4,A3           ; |30| 
           SHR     .S1     A3,2,A4           ; |30| 
           SHRU    .S1     A4,29,A4          ; |30| 
           ADD     .L1     A4,A3,A3          ; |30| 

           SHR     .S1     A3,3,A12          ; |30| 
||         CALL    .S2     _SHA512_Bytes     ; |32| 

           SHR     .S1     A12,24,A3         ; |31| 

           SHR     .S2X    A12,16,B4         ; |31| 
||         STB     .D2T1   A3,*+SP(376)      ; |31| 

           STB     .D2T2   B4,*+SP(377)      ; |31| 

           MVK     .S2     376,B5            ; |32| 
||         SHR     .S1     A12,8,A3          ; |31| 
||         STB     .D2T1   A12,*+SP(379)     ; |31| 

           MVK     .S1     0x4,A6            ; |32| 
||         ADD     .L1X    8,SP,A4           ; |32| 
||         ADD     .L2     B5,SP,B4          ; |32| 
||         STB     .D2T1   A3,*+SP(378)      ; |31| 
||         ADDKPC  .S2     RL25,B3,0         ; |32| 

RL25:      ; CALL OCCURS {_SHA512_Bytes}     ; |32| 
;** --------------------------------------------------------------------------*

           CMPLT   .L1     A12,1,A0          ; |33| 
||         SUB     .L2X    A12,1,B10         ; |33| 

   [ A0]   B       .S2     L9                ; |33| 
|| [ A0]   MVK     .S1     376,A3            ; |37| 

   [ A0]   CALL    .S1     _memset           ; |37| 
           NOP             4
           ; BRANCHCC OCCURS {L9}            ; |33| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_byte      ; |34| 
	.dwpsn	"SSHDSS.C",33,0
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L8:    
DW$L$_dss_sign$5$B:
;**	-----------------------g3:
;** 34	-----------------------    lenbuf[0] = bignum_byte(b, len);  // [31]
;** 35	-----------------------    SHA512_Bytes(&ss, &lenbuf, 1);  // [31]
;** 33	-----------------------    if ( (--len) >= 0 ) goto g3;  // [31]

           MV      .L2     B10,B4            ; |34| 
||         MV      .L1     A11,A4            ; |34| 
||         ADDKPC  .S2     RL26,B3,0         ; |34| 

RL26:      ; CALL OCCURS {_bignum_byte}      ; |34| 
DW$L$_dss_sign$5$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_sign$6$B:
           CALL    .S1     _SHA512_Bytes     ; |35| 
           ADDKPC  .S2     RL27,B3,0         ; |35| 
           MVK     .S1     0x1,A6            ; |35| 
           STB     .D2T1   A4,*+SP(376)      ; |34| 
           MVK     .S2     376,B4            ; |35| 

           ADD     .L2     B4,SP,B4          ; |35| 
||         ADD     .L1X    8,SP,A4           ; |35| 

RL27:      ; CALL OCCURS {_SHA512_Bytes}     ; |35| 
DW$L$_dss_sign$6$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_sign$7$B:

           CMPLT   .L2     B10,1,B0          ; |33| 
||         SUB     .S2     B10,1,B10         ; |33| 

   [!B0]   B       .S1     L8                ; |33| 
   [!B0]   CALL    .S1     _bignum_byte      ; |34| 
	.dwpsn	"SSHDSS.C",36,0
           NOP             4
           ; BRANCHCC OCCURS {L8}            ; |33| 
DW$L$_dss_sign$7$E:
;** --------------------------------------------------------------------------*

           CALL    .S2     _memset           ; |37| 
||         MVK     .S1     376,A3            ; |37| 

           NOP             4
;** --------------------------------------------------------------------------*
L9:    
;**	-----------------------g4:
;** 37	-----------------------    memset(&lenbuf, 0, 4u);  // [31]
;** 37	-----------------------    SHA512_Final(&ss, &digest512);  // [31]
;** 575	-----------------------    SHA512_Init(&ss);
;** 576	-----------------------    SHA512_Bytes(&ss, &digest512, 64);
;** 577	-----------------------    SHA512_Bytes(&ss, &digest, 20);
;** 578	-----------------------    SHA512_Final(&ss, &digest512);
;** 580	-----------------------    memset(&ss, 0, 280u);
;** 585	-----------------------    proto_k = bignum_from_bytes(&digest512, 64);
;** 586	-----------------------    k = bigmod(proto_k, (*dss).q);
;** 587	-----------------------    freebn(proto_k);
;** 589	-----------------------    memset(&digest512, 0, 64u);

           MVK     .L1     0x4,A6            ; |37| 
||         ZERO    .L2     B4                ; |37| 
||         ADD     .S1X    A3,SP,A4          ; |37| 
||         ADDKPC  .S2     RL28,B3,0         ; |37| 

RL28:      ; CALL OCCURS {_memset}           ; |37| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA512_Final     ; |37| 
           MVK     .S2     312,B4            ; |37| 
           ADDKPC  .S2     RL29,B3,1         ; |37| 
           ADD     .L2     B4,SP,B4          ; |37| 
           ADD     .L1X    8,SP,A4           ; |37| 
RL29:      ; CALL OCCURS {_SHA512_Final}     ; |37| 
           CALL    .S1     _SHA512_Init      ; |575| 
           ADD     .L1X    8,SP,A4           ; |575| 
           ADDKPC  .S2     RL30,B3,3         ; |575| 
RL30:      ; CALL OCCURS {_SHA512_Init}      ; |575| 
           CALL    .S1     _SHA512_Bytes     ; |576| 
           MVK     .S2     312,B4            ; |576| 
           ADD     .L1X    8,SP,A4           ; |576| 
           MVK     .S1     0x40,A6           ; |576| 
           ADD     .L2     B4,SP,B4          ; |576| 
           ADDKPC  .S2     RL31,B3,0         ; |576| 
RL31:      ; CALL OCCURS {_SHA512_Bytes}     ; |576| 
           CALL    .S1     _SHA512_Bytes     ; |577| 
           MVK     .S2     288,B4            ; |577| 
           ADD     .L1X    8,SP,A4           ; |577| 
           MVK     .S1     0x14,A6           ; |577| 
           ADD     .L2     B4,SP,B4          ; |577| 
           ADDKPC  .S2     RL32,B3,0         ; |577| 
RL32:      ; CALL OCCURS {_SHA512_Bytes}     ; |577| 
           CALL    .S1     _SHA512_Final     ; |578| 
           MVK     .S2     312,B4            ; |578| 
           ADD     .L1X    8,SP,A4           ; |578| 
           ADD     .L2     B4,SP,B4          ; |578| 
           ADDKPC  .S2     RL33,B3,1         ; |578| 
RL33:      ; CALL OCCURS {_SHA512_Final}     ; |578| 
           CALL    .S1     _memset           ; |580| 
           ADD     .L1X    8,SP,A4           ; |580| 
           ZERO    .L2     B4                ; |580| 
           MVK     .S1     0x118,A6          ; |580| 
           ADDKPC  .S2     RL34,B3,1         ; |580| 
RL34:      ; CALL OCCURS {_memset}           ; |580| 
           CALL    .S1     _bignum_from_bytes ; |585| 
           MVK     .S1     312,A3            ; |585| 
           MVK     .S2     0x40,B4           ; |585| 
           ADD     .L1X    A3,SP,A4          ; |585| 
           ADDKPC  .S2     RL35,B3,1         ; |585| 
RL35:      ; CALL OCCURS {_bignum_from_bytes}  ; |585| 
           CALL    .S1     _bigmod           ; |586| 
           LDW     .D1T2   *+A10(4),B4       ; |586| 
           MV      .L1     A4,A11            ; |585| 
           ADDKPC  .S2     RL36,B3,2         ; |586| 
RL36:      ; CALL OCCURS {_bigmod}           ; |586| 
           CALL    .S1     _freebn           ; |587| 
           MV      .S1     A4,A12            ; |586| 
           ADDKPC  .S2     RL37,B3,2         ; |587| 
           MV      .L1     A11,A4            ; |587| 
RL37:      ; CALL OCCURS {_freebn}           ; |587| 
           CALL    .S1     _memset           ; |589| 
           MVK     .S1     312,A3            ; |589| 
           ADDKPC  .S2     RL38,B3,0         ; |589| 
           ADD     .L1X    A3,SP,A4          ; |589| 
           MVK     .S1     0x40,A6           ; |589| 
           ZERO    .L2     B4                ; |589| 
RL38:      ; CALL OCCURS {_memset}           ; |589| 
;** --------------------------------------------------------------------------*
;** 594	-----------------------    gkp = modpow((*dss).g, k, (*dss).p);
;** 595	-----------------------    r = bigmod(gkp, (*dss).q);
;** 596	-----------------------    freebn(gkp);
;** 598	-----------------------    hash = bignum_from_bytes(&digest, 20);
;** 599	-----------------------    kinv = modinv(k, (*dss).q);
;** 600	-----------------------    hxr = bigmuladd((*dss).x, r, hash);
;** 601	-----------------------    s = modmul(kinv, hxr, (*dss).q);
;** 602	-----------------------    freebn(hxr);
;** 603	-----------------------    freebn(kinv);
;** 604	-----------------------    freebn(hash);
;** 615	-----------------------    bytes = safemalloc(55u, 1u);

           CALL    .S1     _modpow           ; |594| 
||         LDW     .D1T1   *A10,A6           ; |594| 

           LDW     .D1T1   *+A10(8),A4       ; |594| 
           ADDKPC  .S2     RL39,B3,2         ; |594| 
           MV      .L2X    A12,B4            ; |594| 
RL39:      ; CALL OCCURS {_modpow}           ; |594| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bigmod           ; |595| 
           LDW     .D1T2   *+A10(4),B4       ; |595| 
           ADDKPC  .S2     RL40,B3,2         ; |595| 
           MV      .L1     A4,A14            ; |594| 
RL40:      ; CALL OCCURS {_bigmod}           ; |595| 
           CALL    .S1     _freebn           ; |596| 
           MV      .S1     A4,A11            ; |595| 
           ADDKPC  .S2     RL41,B3,2         ; |596| 
           MV      .L1     A14,A4            ; |596| 
RL41:      ; CALL OCCURS {_freebn}           ; |596| 
           CALL    .S1     _bignum_from_bytes ; |598| 
           MVK     .S2     0x14,B4           ; |598| 
           MVK     .S1     288,A3            ; |598| 
           ADDKPC  .S2     RL42,B3,1         ; |598| 
           ADD     .L1X    A3,SP,A4          ; |598| 
RL42:      ; CALL OCCURS {_bignum_from_bytes}  ; |598| 
           CALL    .S1     _modinv           ; |599| 
           LDW     .D1T2   *+A10(4),B4       ; |599| 
           MV      .S1     A4,A15            ; |598| 
           ADDKPC  .S2     RL43,B3,1         ; |599| 
           MV      .L1     A12,A4            ; |599| 
RL43:      ; CALL OCCURS {_modinv}           ; |599| 
           CALL    .S1     _bigmuladd        ; |600| 

           LDW     .D1T1   *+A10(16),A4      ; |600| 
||         MV      .L1     A4,A12            ; |599| 

           ADDKPC  .S2     RL44,B3,1         ; |600| 
           MV      .L1     A15,A6            ; |600| 
           MV      .L2X    A11,B4            ; |600| 
RL44:      ; CALL OCCURS {_bigmuladd}        ; |600| 
           CALL    .S1     _modmul           ; |601| 
           LDW     .D1T1   *+A10(4),A6       ; |601| 
           MV      .L2X    A4,B4             ; |600| 
           MV      .L2X    A4,B10            ; |600| 
           ADDKPC  .S2     RL45,B3,0         ; |601| 
           MV      .L1     A12,A4            ; |601| 
RL45:      ; CALL OCCURS {_modmul}           ; |601| 
           CALL    .S1     _freebn           ; |602| 
           MV      .S1     A4,A14            ; |601| 
           ADDKPC  .S2     RL46,B3,2         ; |602| 
           MV      .L1X    B10,A4            ; |602| 
RL46:      ; CALL OCCURS {_freebn}           ; |602| 
           CALL    .S1     _freebn           ; |603| 
           ADDKPC  .S2     RL47,B3,3         ; |603| 
           MV      .L1     A12,A4            ; |603| 
RL47:      ; CALL OCCURS {_freebn}           ; |603| 
           CALL    .S1     _freebn           ; |604| 
           MV      .L1     A15,A4            ; |604| 
           ADDKPC  .S2     RL48,B3,3         ; |604| 
RL48:      ; CALL OCCURS {_freebn}           ; |604| 
           CALL    .S1     _safemalloc       ; |615| 
           MVK     .S1     0x37,A4           ; |615| 
           MVK     .L2     0x1,B4            ; |615| 
           ADDKPC  .S2     RL49,B3,2         ; |615| 
RL49:      ; CALL OCCURS {_safemalloc}       ; |615| 
;** --------------------------------------------------------------------------*
;** 616	-----------------------    *bytes = C$11 = (unsigned char)0;
;** 616	-----------------------    bytes[1] = C$11;
;** 616	-----------------------    bytes[2] = C$11;
;** 616	-----------------------    bytes[3] = 7;
;** 617	-----------------------    memcpy(bytes+4, (const void *)"ssh-dss", 7u);
;** 618	-----------------------    bytes[11] = C$11;
;** 618	-----------------------    bytes[12] = C$11;
;** 618	-----------------------    bytes[13] = C$11;
;** 618	-----------------------    bytes[14] = 40;
;**  	-----------------------    U$97 = &bytes[15];
;**  	-----------------------    U$101 = &bytes[35];
;** 619	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(20, 20, 20)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           ZERO    .L2     B4                ; |616| 
||         MV      .L1     A4,A10            ; |615| 

           STB     .D1T2   B4,*A10           ; |616| 
           STB     .D1T2   B4,*+A10(1)       ; |616| 

           STB     .D1T2   B4,*+A10(2)       ; |616| 
||         MVKL    .S1     SL1+0,A3          ; |617| 
||         MVK     .L2     7,B5              ; |616| 

           STB     .D1T2   B5,*+A10(3)       ; |616| 
||         MVKH    .S1     SL1+0,A3          ; |617| 

           LDNW    .D1T1   *A3,A7            ; |617| 
           LDB     .D1T1   *+A3(4),A6        ; |617| 
           LDB     .D1T1   *+A3(5),A5        ; |617| 
           LDB     .D1T1   *+A3(6),A3        ; |617| 
           ADD     .L1     4,A4,A8           ; |617| 
           STNW    .D1T1   A7,*A8            ; |617| 
           STB     .D1T1   A6,*+A8(4)        ; |617| 
           STB     .D1T1   A5,*+A8(5)        ; |617| 

           CALL    .S1     _bignum_byte      ; |620| 
||         STB     .D1T1   A3,*+A8(6)        ; |617| 

           STB     .D1T2   B4,*+A10(11)      ; |618| 
||         MVK     .S2     40,B6             ; |618| 

           STB     .D1T2   B4,*+A10(12)      ; |618| 
||         MVK     .S2     35,B31

           STB     .D1T2   B4,*+A10(13)      ; |618| 
||         MVK     .S2     20,B13            ; |619| 

	.dwpsn	"SSHDSS.C",619,0

           STB     .D1T2   B6,*+A10(14)      ; |618| 
||         MVK     .S2     19,B4             ; |620| 
||         ADD     .L1X    B31,A10,A12
||         ADD     .L2X    15,A4,B12
||         ZERO    .D2     B10               ; |619| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L10:    
DW$L$_dss_sign$14$B:
;**	-----------------------g5:
;** 620	-----------------------    C$10 = 19-i;
;** 620	-----------------------    *U$97++ = bignum_byte(r, C$10);
;** 621	-----------------------    *U$101++ = bignum_byte(s, C$10);
;** 619	-----------------------    if ( (++i) < 20 ) goto g5;
;** 623	-----------------------    freebn(r);

           SUB     .L2     B4,B10,B11        ; |620| 
||         SUB     .D2     B4,B10,B4         ; |620| 
||         MV      .L1     A11,A4            ; |620| 
||         ADDKPC  .S2     RL50,B3,0         ; |620| 

RL50:      ; CALL OCCURS {_bignum_byte}      ; |620| 
DW$L$_dss_sign$14$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_sign$15$B:
           CALL    .S1     _bignum_byte      ; |621| 
           ADDKPC  .S2     RL51,B3,0         ; |621| 
           MV      .L2     B11,B4            ; |621| 
           NOP             1
           MV      .L2X    A4,B5             ; |620| 

           MV      .L1     A14,A4            ; |621| 
||         STB     .D2T2   B5,*B12++         ; |620| 

RL51:      ; CALL OCCURS {_bignum_byte}      ; |621| 
DW$L$_dss_sign$15$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_sign$16$B:

           ADD     .L2     1,B10,B10         ; |619| 
||         STB     .D1T1   A4,*A12++         ; |621| 

           CMPLT   .L2     B10,B13,B0        ; |619| 

   [ B0]   MVK     .S2     19,B4             ; |620| 
|| [ B0]   B       .S1     L10               ; |619| 

   [ B0]   CALL    .S1     _bignum_byte      ; |620| 
   [!B0]   CALL    .S1     _freebn           ; |623| 
	.dwpsn	"SSHDSS.C",622,0
           NOP             3
           ; BRANCHCC OCCURS {L10}           ; |619| 
DW$L$_dss_sign$16$E:
;** --------------------------------------------------------------------------*
;** 624	-----------------------    freebn(s);
;** 626	-----------------------    *siglen = K$63 = 55;
;** 627	-----------------------    return bytes;
           ADDKPC  .S2     RL52,B3,0         ; |623| 
           MV      .L1     A11,A4            ; |623| 
RL52:      ; CALL OCCURS {_freebn}           ; |623| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _freebn           ; |624| 
           ADDKPC  .S2     RL53,B3,3         ; |624| 
           MV      .L1     A14,A4            ; |624| 
RL53:      ; CALL OCCURS {_freebn}           ; |624| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(404),B3      ; |628| 
           LDW     .D2T1   *+SP(424),A15     ; |628| 
           LDW     .D2T1   *+SP(388),A11     ; |628| 
           LDW     .D2T1   *+SP(392),A12     ; |628| 
           LDW     .D2T1   *+SP(400),A14     ; |628| 
           LDW     .D2T2   *+SP(408),B10     ; |628| 
           LDW     .D2T2   *+SP(420),B13     ; |628| 
           LDW     .D2T2   *+SP(416),B12     ; |628| 

           LDW     .D2T1   *+SP(384),A10     ; |628| 
||         MVK     .S1     0x37,A3           ; |626| 
||         MV      .L1     A10,A4            ; |627| 

           RET     .S2     B3                ; |628| 
||         STW     .D1T1   A3,*A13           ; |626| 
||         LDW     .D2T2   *+SP(412),B11     ; |628| 

           LDW     .D2T1   *+SP(396),A13     ; |628| 
           NOP             3
	.dwpsn	"SSHDSS.C",628,1
           ADDK    .S2     424,SP            ; |628| 
           ; BRANCH OCCURS {B3}              ; |628| 

DW$105	.dwtag  DW_TAG_loop
	.dwattr DW$105, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L10:1:1185758752")
	.dwattr DW$105, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$105, DW_AT_begin_line(0x26b)
	.dwattr DW$105, DW_AT_end_line(0x26e)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_dss_sign$14$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_dss_sign$14$E)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_dss_sign$15$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_dss_sign$15$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_dss_sign$16$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_dss_sign$16$E)
	.dwendtag DW$105


DW$109	.dwtag  DW_TAG_loop
	.dwattr DW$109, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L8:1:1185758752")
	.dwattr DW$109, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$109, DW_AT_begin_line(0x21)
	.dwattr DW$109, DW_AT_end_line(0x24)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_dss_sign$5$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_dss_sign$5$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_dss_sign$6$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_dss_sign$6$E)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_dss_sign$7$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_dss_sign$7$E)
	.dwendtag DW$109

	.dwattr DW$100, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$100, DW_AT_end_line(0x274)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendtag DW$100

	.sect	".text"

DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_public_blob"), DW_AT_symbol_name("_dss_public_blob")
	.dwattr DW$113, DW_AT_low_pc(_dss_public_blob)
	.dwattr DW$113, DW_AT_high_pc(0x00)
	.dwattr DW$113, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$113, DW_AT_begin_line(0x12e)
	.dwattr DW$113, DW_AT_begin_column(0x17)
	.dwattr DW$113, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$113, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",303,1

;******************************************************************************
;* FUNCTION NAME: _dss_public_blob                                            *
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
_dss_public_blob:
;** --------------------------------------------------------------------------*
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$114, DW_AT_type(*DW$T$3)
	.dwattr DW$114, DW_AT_location[DW_OP_reg4]
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$115, DW_AT_type(*DW$T$41)
	.dwattr DW$115, DW_AT_location[DW_OP_reg20]
;** 304	-----------------------    dss = (struct _dss_key *)key;
;** 309	-----------------------    plen = (bignum_bitcount((*dss).p)+8)/8;
;** 310	-----------------------    qlen = (bignum_bitcount((*dss).q)+8)/8;
;** 311	-----------------------    glen = (bignum_bitcount((*dss).g)+8)/8;
;** 312	-----------------------    ylen = (bignum_bitcount((*dss).y)+8)/8;
;** 318	-----------------------    bloblen = plen+qlen+glen+ylen+27;
;** 319	-----------------------    blob = safemalloc((unsigned)plen+(unsigned)qlen+(unsigned)glen+(unsigned)ylen+27u, 1u);
;** 320	-----------------------    p = blob;
;** 321	-----------------------    *p = C$9 = (unsigned char)0;
;** 321	-----------------------    p[1] = C$9;
;** 321	-----------------------    p[2] = C$9;
;** 321	-----------------------    p[3] = 7;
;** 323	-----------------------    memcpy((void *)(p += 4), (const void *)"ssh-dss", 7u);
;** 325	-----------------------    *(p += 7) = plen>>24;
;** 325	-----------------------    p[1] = plen>>16;
;** 325	-----------------------    p[2] = plen>>8;
;** 325	-----------------------    p[3] = plen;
;** 326	-----------------------    p += 4;
;** 327	-----------------------    if ( !(i = plen) ) goto g7;

           STW     .D2T1   A15,*SP--(48)     ; |303| 
||         MV      .L1X    SP,A31            ; |303| 

           CALL    .S1     _bignum_bitcount  ; |309| 
||         MV      .L1     A4,A11            ; |303| 
||         STDW    .D1T1   A11:A10,*-A31(40)

           LDW     .D1T1   *A11,A4           ; |309| 
           STDW    .D2T2   B13:B12,*+SP(40)
           STDW    .D1T1   A13:A12,*-A31(32)
           STW     .D2T2   B3,*+SP(28)

           ADDKPC  .S2     RL54,B3,0         ; |309| 
||         STW     .D1T1   A14,*-A31(24)
||         MV      .L2     B4,B13            ; |303| 
||         STDW    .D2T2   B11:B10,*+SP(32)

RL54:      ; CALL OCCURS {_bignum_bitcount}  ; |309| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_bitcount  ; |310| 

           LDW     .D1T1   *+A11(4),A4       ; |310| 
||         ADD     .L1     8,A4,A10          ; |309| 

           ADDKPC  .S2     RL55,B3,3         ; |310| 
RL55:      ; CALL OCCURS {_bignum_bitcount}  ; |310| 
           CALL    .S1     _bignum_bitcount  ; |311| 

           LDW     .D1T1   *+A11(8),A4       ; |311| 
||         ADD     .L1     8,A4,A13          ; |310| 

           ADDKPC  .S2     RL56,B3,3         ; |311| 
RL56:      ; CALL OCCURS {_bignum_bitcount}  ; |311| 
           CALL    .S1     _bignum_bitcount  ; |312| 

           LDW     .D1T1   *+A11(12),A4      ; |312| 
||         ADD     .L1     8,A4,A12          ; |311| 

           ADDKPC  .S2     RL57,B3,3         ; |312| 
RL57:      ; CALL OCCURS {_bignum_bitcount}  ; |312| 

           SHR     .S1     A12,2,A4          ; |311| 
||         SHR     .S2X    A13,2,B4          ; |310| 
||         ADD     .L1     8,A4,A3           ; |312| 

           SHRU    .S2     B4,29,B6          ; |310| 

           SHRU    .S2X    A4,29,B5          ; |311| 
||         SHR     .S1     A10,2,A5          ; |309| 

           SHR     .S2X    A3,2,B4           ; |312| 
||         SHRU    .S1     A5,29,A5          ; |309| 

           SHRU    .S2     B4,29,B4          ; |312| 
||         ADD     .L1     A5,A10,A4         ; |309| 

           CALL    .S2     _safemalloc       ; |319| 
||         ADD     .L1X    B6,A13,A4         ; |310| 
||         SHR     .S1     A4,3,A15          ; |309| 

           ADD     .L1X    B5,A12,A4         ; |311| 
||         SHR     .S1     A4,3,A14          ; |310| 

           ADD     .L1     A14,A15,A3        ; |319| 
||         ADD     .D1X    B4,A3,A4          ; |312| 
||         SHR     .S1     A4,3,A13          ; |311| 

           ADD     .L1     A13,A3,A3         ; |319| 
||         SHR     .S1     A4,3,A12          ; |312| 

           ADD     .L1     A12,A3,A3         ; |319| 

           ADDKPC  .S2     RL58,B3,0         ; |319| 
||         ADD     .D1     A3,27,A4          ; |319| 
||         MVK     .L2     0x1,B4            ; |319| 

RL58:      ; CALL OCCURS {_safemalloc}       ; |319| 
;** --------------------------------------------------------------------------*

           ZERO    .L2     B4                ; |321| 
||         MVK     .L1     7,A3              ; |321| 
||         SHR     .S1     A15,24,A5         ; |325| 
||         MV      .S2X    A15,B0            ; |327| 

           STB     .D1T2   B4,*A4            ; |321| 
||         MVK     .S1     31,A8             ; |328| 
||         MV      .L2X    A4,B11            ; |319| 

           STB     .D1T2   B4,*+A4(1)        ; |321| 

           STB     .D1T2   B4,*+A4(2)        ; |321| 
||         MVKL    .S2     SL1+0,B4          ; |323| 

           STB     .D1T1   A3,*+A4(3)        ; |321| 
||         MVKH    .S2     SL1+0,B4          ; |323| 
||         ADD     .L1     4,A4,A3           ; |323| 

           LDNW    .D2T2   *B4,B7            ; |323| 
           LDB     .D2T2   *+B4(4),B6        ; |323| 
           LDB     .D2T2   *+B4(5),B5        ; |323| 
           LDB     .D2T2   *+B4(6),B4        ; |323| 
           NOP             1
           STNW    .D1T2   B7,*A3            ; |323| 
           STB     .D1T2   B6,*+A3(4)        ; |323| 

           SHR     .S2X    A15,8,B5          ; |325| 
||         STB     .D1T2   B5,*+A3(5)        ; |323| 

           SHR     .S2X    A15,16,B4         ; |325| 
||         STB     .D1T2   B4,*+A3(6)        ; |323| 

           ADD     .L1     A14,A15,A5        ; |318| 
||         STB     .D1T1   A5,*++A3(7)       ; |325| 

           STB     .D1T2   B4,*+A3(1)        ; |325| 
||         ADD     .S1     A13,A5,A5         ; |318| 
||         ADD     .L1     4,A3,A10          ; |326| 

           ADD     .D1     A12,A5,A5         ; |318| 
||         SUB     .S1     A11,A10,A7        ; |328| 
|| [!B0]   B       .S2     L15               ; |327| 
||         SUB     .L1     A10,A11,A6        ; |328| 

           STB     .D1T2   B5,*+A3(2)        ; |325| 

   [!B0]   SHR     .S1     A14,24,A3         ; |329| 
||         STB     .D1T1   A15,*+A3(3)       ; |325| 
||         CMPLT   .L1     A7,A8,A6          ; |328| 
||         CMPLT   .L2X    A6,5,B6           ; |328| 

   [!B0]   STB     .D1T1   A3,*A10           ; |329| 
||         MV      .L2X    A5,B4             ; |318| Define a twin register

           AND     .L2X    B6,A6,B5
||         ADD     .D2     B4,27,B12         ; |318| 

   [!B0]   SHR     .S2X    A14,16,B4         ; |329| 
||         XOR     .L2     1,B5,B1

           ; BRANCHCC OCCURS {L15}           ; |327| 
;** --------------------------------------------------------------------------*
;** 328	-----------------------    if ( (p-dss >= 5)|(dss-p >= 31) ) goto g5;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5128u)
   [ B1]   BNOP    .S1     L12,5             ; |328| 
           ; BRANCHCC OCCURS {L12}           ; |328| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_byte      ; |328| 
||         LDW     .D1T1   *A11,A4           ; |328| 

	.dwpsn	"SSHDSS.C",327,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L11:    
DW$L$_dss_public_blob$6$B:
	.dwpsn	"SSHDSS.C",328,0
;**	-----------------------g4:
;** 328	-----------------------    C$8 = i-1;
;** 328	-----------------------    *p++ = bignum_byte((*dss).p, C$8);
;** 328	-----------------------    if ( i = C$8 ) goto g4;
           SUB     .L2     B0,1,B10          ; |328| 

           SUB     .D2     B0,1,B4           ; |328| 
||         ADDKPC  .S2     RL59,B3,0         ; |328| 

RL59:      ; CALL OCCURS {_bignum_byte}      ; |328| 
DW$L$_dss_public_blob$6$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_public_blob$7$B:

           MV      .L2     B10,B0            ; |328| 
||         STB     .D1T1   A4,*A10++         ; |328| 

   [ B0]   B       .S1     L11               ; |328| 
|| [ B0]   LDW     .D1T1   *A11,A4           ; |328| 

   [!B0]   B       .S1     L14               ; |328| 
   [ B0]   CALL    .S1     _bignum_byte      ; |328| 
           NOP             3
           ; BRANCHCC OCCURS {L11}           ; |328| 
DW$L$_dss_public_blob$7$E:
;** --------------------------------------------------------------------------*
;** 328	-----------------------    goto g7;
;**	-----------------------g5:
;**  	-----------------------    #pragma[60] (dss != p;)
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5184u)
           SHR     .S1     A14,24,A3         ; |329| 
           ; BRANCH OCCURS {L14}             ; |328| 
;** --------------------------------------------------------------------------*
L12:    

           CALL    .S1     _bignum_byte      ; |328| 
||         LDW     .D1T1   *A11,A4           ; |328| 

	.dwpsn	"SSHDSS.C",327,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L13:    
DW$L$_dss_public_blob$10$B:
	.dwpsn	"SSHDSS.C",328,0
;**	-----------------------g6:
;** 328	-----------------------    C$7 = i-1;
;** 328	-----------------------    *p++ = bignum_byte((*dss).p, C$7);
;** 328	-----------------------    if ( i = C$7 ) goto g6;
           SUB     .L2     B0,1,B10          ; |328| 

           SUB     .D2     B0,1,B4           ; |328| 
||         ADDKPC  .S2     RL60,B3,0         ; |328| 

RL60:      ; CALL OCCURS {_bignum_byte}      ; |328| 
DW$L$_dss_public_blob$10$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_public_blob$11$B:

           MV      .L2     B10,B0            ; |328| 
||         STB     .D1T1   A4,*A10++         ; |328| 

   [ B0]   BNOP    .S2     L13,1             ; |328| 
|| [ B0]   LDW     .D1T1   *A11,A4           ; |328| 
|| [!B0]   SHR     .S1     A14,24,A3         ; |329| 

   [ B0]   CALL    .S1     _bignum_byte      ; |328| 
           NOP             3
           ; BRANCHCC OCCURS {L13}           ; |328| 
DW$L$_dss_public_blob$11$E:
;** --------------------------------------------------------------------------*
L14:    

           STB     .D1T1   A3,*A10           ; |329| 
||         SHR     .S2X    A14,16,B4         ; |329| 

;** --------------------------------------------------------------------------*
L15:    
;**	-----------------------g7:
;** 329	-----------------------    *p = qlen>>24;
;** 329	-----------------------    p[1] = qlen>>16;
;** 329	-----------------------    p[2] = qlen>>8;
;** 329	-----------------------    p[3] = qlen;
;** 330	-----------------------    p += 4;
;** 331	-----------------------    if ( !(i = qlen) ) goto g13;

           SHR     .S1     A14,8,A31         ; |329| 
||         STB     .D1T2   B4,*+A10(1)       ; |329| 
||         MV      .L2X    A14,B0            ; |331| 
||         MVK     .S2     20,B31            ; |332| 

           STB     .D1T1   A31,*+A10(2)      ; |329| 
||         MVK     .S1     16,A5             ; |332| 

           STB     .D1T1   A14,*+A10(3)      ; |329| 
||         ADD     .L1     4,A10,A10         ; |330| 
|| [!B0]   B       .S1     L20               ; |331| 

           SUB     .L1     A10,A11,A3        ; |332| 
||         SUB     .S1     A11,A10,A4        ; |332| 

           CMPLT   .L1     A4,A5,A4          ; |332| 

           CMPLT   .L2X    A3,B31,B4         ; |332| 
|| [!B0]   SHR     .S1     A13,24,A3         ; |333| 

           AND     .L2X    B4,A4,B4
|| [!B0]   STB     .D1T1   A3,*A10           ; |333| 

           XOR     .L2     1,B4,B1
|| [!B0]   SHR     .S2X    A13,16,B4         ; |333| 

           ; BRANCHCC OCCURS {L20}           ; |331| 
;** --------------------------------------------------------------------------*
;** 332	-----------------------    if ( (p-dss >= 20)|(dss-p >= 16) ) goto g11;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5128u)
   [ B1]   BNOP    .S1     L17,5             ; |332| 
           ; BRANCHCC OCCURS {L17}           ; |332| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_byte      ; |332| 
||         LDW     .D1T1   *+A11(4),A4       ; |332| 

	.dwpsn	"SSHDSS.C",331,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L16:    
DW$L$_dss_public_blob$16$B:
	.dwpsn	"SSHDSS.C",332,0
;**	-----------------------g10:
;** 332	-----------------------    C$6 = i-1;
;** 332	-----------------------    *p++ = bignum_byte((*dss).q, C$6);
;** 332	-----------------------    if ( i = C$6 ) goto g10;
           SUB     .L2     B0,1,B10          ; |332| 

           SUB     .D2     B0,1,B4           ; |332| 
||         ADDKPC  .S2     RL61,B3,0         ; |332| 

RL61:      ; CALL OCCURS {_bignum_byte}      ; |332| 
DW$L$_dss_public_blob$16$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_public_blob$17$B:

           MV      .L2     B10,B0            ; |332| 
||         STB     .D1T1   A4,*A10++         ; |332| 

   [ B0]   B       .S1     L16               ; |332| 
|| [ B0]   LDW     .D1T1   *+A11(4),A4       ; |332| 

   [!B0]   B       .S1     L19               ; |332| 
   [ B0]   CALL    .S1     _bignum_byte      ; |332| 
           NOP             3
           ; BRANCHCC OCCURS {L16}           ; |332| 
DW$L$_dss_public_blob$17$E:
;** --------------------------------------------------------------------------*
;** 332	-----------------------    goto g13;
;**	-----------------------g11:
;**  	-----------------------    #pragma[60] (dss != p;)
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5184u)
           SHR     .S1     A13,24,A3         ; |333| 
           ; BRANCH OCCURS {L19}             ; |332| 
;** --------------------------------------------------------------------------*
L17:    

           CALL    .S1     _bignum_byte      ; |332| 
||         LDW     .D1T1   *+A11(4),A4       ; |332| 

	.dwpsn	"SSHDSS.C",331,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L18:    
DW$L$_dss_public_blob$20$B:
	.dwpsn	"SSHDSS.C",332,0
;**	-----------------------g12:
;** 332	-----------------------    C$5 = i-1;
;** 332	-----------------------    *p++ = bignum_byte((*dss).q, C$5);
;** 332	-----------------------    if ( i = C$5 ) goto g12;
           SUB     .L2     B0,1,B10          ; |332| 

           SUB     .D2     B0,1,B4           ; |332| 
||         ADDKPC  .S2     RL62,B3,0         ; |332| 

RL62:      ; CALL OCCURS {_bignum_byte}      ; |332| 
DW$L$_dss_public_blob$20$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_public_blob$21$B:

           MV      .L2     B10,B0            ; |332| 
||         STB     .D1T1   A4,*A10++         ; |332| 

   [ B0]   BNOP    .S2     L18,1             ; |332| 
|| [ B0]   LDW     .D1T1   *+A11(4),A4       ; |332| 
|| [!B0]   SHR     .S1     A13,24,A3         ; |333| 

   [ B0]   CALL    .S1     _bignum_byte      ; |332| 
           NOP             3
           ; BRANCHCC OCCURS {L18}           ; |332| 
DW$L$_dss_public_blob$21$E:
;** --------------------------------------------------------------------------*
L19:    

           STB     .D1T1   A3,*A10           ; |333| 
||         SHR     .S2X    A13,16,B4         ; |333| 

;** --------------------------------------------------------------------------*
L20:    
;**	-----------------------g13:
;** 333	-----------------------    *p = glen>>24;
;** 333	-----------------------    p[1] = glen>>16;
;** 333	-----------------------    p[2] = glen>>8;
;** 333	-----------------------    p[3] = glen;
;** 334	-----------------------    p += 4;
;** 335	-----------------------    if ( !(i = glen) ) goto g19;

           SHR     .S1     A13,8,A31         ; |333| 
||         STB     .D1T2   B4,*+A10(1)       ; |333| 
||         MV      .L2X    A13,B0            ; |335| 
||         MVK     .S2     20,B31            ; |336| 

           STB     .D1T1   A31,*+A10(2)      ; |333| 
||         MVK     .S1     16,A5             ; |336| 

           STB     .D1T1   A13,*+A10(3)      ; |333| 
||         ADD     .L1     4,A10,A10         ; |334| 
|| [!B0]   B       .S1     L25               ; |335| 

           SUB     .L1     A10,A11,A3        ; |336| 
||         SUB     .S1     A11,A10,A4        ; |336| 

           CMPLT   .L1     A4,A5,A4          ; |336| 

           CMPLT   .L2X    A3,B31,B4         ; |336| 
|| [!B0]   SHR     .S1     A12,24,A3         ; |337| 

           AND     .L2X    B4,A4,B4
|| [!B0]   STB     .D1T1   A3,*A10           ; |337| 

           XOR     .L2     1,B4,B1
|| [!B0]   SHR     .S2X    A12,16,B4         ; |337| 

           ; BRANCHCC OCCURS {L25}           ; |335| 
;** --------------------------------------------------------------------------*
;** 336	-----------------------    if ( (p-dss >= 20)|(dss-p >= 16) ) goto g17;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5128u)
   [ B1]   BNOP    .S1     L22,5             ; |336| 
           ; BRANCHCC OCCURS {L22}           ; |336| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_byte      ; |336| 
||         LDW     .D1T1   *+A11(8),A4       ; |336| 

	.dwpsn	"SSHDSS.C",335,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L21:    
DW$L$_dss_public_blob$26$B:
	.dwpsn	"SSHDSS.C",336,0
;**	-----------------------g16:
;** 336	-----------------------    C$4 = i-1;
;** 336	-----------------------    *p++ = bignum_byte((*dss).g, C$4);
;** 336	-----------------------    if ( i = C$4 ) goto g16;
           SUB     .L2     B0,1,B10          ; |336| 

           SUB     .D2     B0,1,B4           ; |336| 
||         ADDKPC  .S2     RL63,B3,0         ; |336| 

RL63:      ; CALL OCCURS {_bignum_byte}      ; |336| 
DW$L$_dss_public_blob$26$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_public_blob$27$B:

           MV      .L2     B10,B0            ; |336| 
||         STB     .D1T1   A4,*A10++         ; |336| 

   [ B0]   B       .S1     L21               ; |336| 
|| [ B0]   LDW     .D1T1   *+A11(8),A4       ; |336| 

   [!B0]   B       .S1     L24               ; |336| 
   [ B0]   CALL    .S1     _bignum_byte      ; |336| 
           NOP             3
           ; BRANCHCC OCCURS {L21}           ; |336| 
DW$L$_dss_public_blob$27$E:
;** --------------------------------------------------------------------------*
;** 336	-----------------------    goto g19;
;**	-----------------------g17:
;**  	-----------------------    #pragma[60] (dss != p;)
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5184u)
           SHR     .S1     A12,24,A3         ; |337| 
           ; BRANCH OCCURS {L24}             ; |336| 
;** --------------------------------------------------------------------------*
L22:    

           CALL    .S1     _bignum_byte      ; |336| 
||         LDW     .D1T1   *+A11(8),A4       ; |336| 

	.dwpsn	"SSHDSS.C",335,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L23:    
DW$L$_dss_public_blob$30$B:
	.dwpsn	"SSHDSS.C",336,0
;**	-----------------------g18:
;** 336	-----------------------    C$3 = i-1;
;** 336	-----------------------    *p++ = bignum_byte((*dss).g, C$3);
;** 336	-----------------------    if ( i = C$3 ) goto g18;
           SUB     .L2     B0,1,B10          ; |336| 

           SUB     .D2     B0,1,B4           ; |336| 
||         ADDKPC  .S2     RL64,B3,0         ; |336| 

RL64:      ; CALL OCCURS {_bignum_byte}      ; |336| 
DW$L$_dss_public_blob$30$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_public_blob$31$B:

           MV      .L2     B10,B0            ; |336| 
||         STB     .D1T1   A4,*A10++         ; |336| 

   [ B0]   BNOP    .S2     L23,1             ; |336| 
|| [ B0]   LDW     .D1T1   *+A11(8),A4       ; |336| 
|| [!B0]   SHR     .S1     A12,24,A3         ; |337| 

   [ B0]   CALL    .S1     _bignum_byte      ; |336| 
           NOP             3
           ; BRANCHCC OCCURS {L23}           ; |336| 
DW$L$_dss_public_blob$31$E:
;** --------------------------------------------------------------------------*
L24:    

           STB     .D1T1   A3,*A10           ; |337| 
||         SHR     .S2X    A12,16,B4         ; |337| 

;** --------------------------------------------------------------------------*
L25:    
;**	-----------------------g19:
;** 337	-----------------------    *p = ylen>>24;
;** 337	-----------------------    p[1] = ylen>>16;
;** 337	-----------------------    p[2] = ylen>>8;
;** 337	-----------------------    p[3] = ylen;
;** 338	-----------------------    p += 4;
;** 339	-----------------------    if ( !(i = ylen) ) goto g25;

           SHR     .S1     A12,8,A31         ; |337| 
||         STB     .D1T2   B4,*+A10(1)       ; |337| 
||         MV      .L2X    A12,B0            ; |339| 
||         MVK     .S2     20,B31            ; |340| 

           STB     .D1T1   A31,*+A10(2)      ; |337| 
||         MVK     .S1     16,A5             ; |340| 

           STB     .D1T1   A12,*+A10(3)      ; |337| 
||         ADD     .L1     4,A10,A10         ; |338| 
|| [!B0]   B       .S1     L30               ; |339| 

           SUB     .L1     A10,A11,A3        ; |340| 
||         SUB     .S1     A11,A10,A4        ; |340| 

           CMPLT   .L1     A4,A5,A4          ; |340| 

           CMPLT   .L2X    A3,B31,B4         ; |340| 
|| [!B0]   MV      .L1X    B11,A3

   [!B0]   ADD     .L1X    B12,A3,A3         ; |341| 
||         AND     .L2X    B4,A4,B4

           XOR     .L2     1,B4,B1
|| [!B0]   CMPEQ   .L1     A10,A3,A0         ; |341| 

           ; BRANCHCC OCCURS {L30}           ; |339| 
;** --------------------------------------------------------------------------*
;** 340	-----------------------    if ( (p-dss >= 20)|(dss-p >= 16) ) goto g23;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5128u)
   [ B1]   BNOP    .S1     L27,5             ; |340| 
           ; BRANCHCC OCCURS {L27}           ; |340| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_byte      ; |340| 
||         LDW     .D1T1   *+A11(12),A4      ; |340| 

	.dwpsn	"SSHDSS.C",339,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L26:    
DW$L$_dss_public_blob$36$B:
	.dwpsn	"SSHDSS.C",340,0
;**	-----------------------g22:
;** 340	-----------------------    C$2 = i-1;
;** 340	-----------------------    *p++ = bignum_byte((*dss).y, C$2);
;** 340	-----------------------    if ( i = C$2 ) goto g22;
           SUB     .L2     B0,1,B10          ; |340| 

           SUB     .D2     B0,1,B4           ; |340| 
||         ADDKPC  .S2     RL65,B3,0         ; |340| 

RL65:      ; CALL OCCURS {_bignum_byte}      ; |340| 
DW$L$_dss_public_blob$36$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_public_blob$37$B:

           MV      .L2     B10,B0            ; |340| 
||         STB     .D1T1   A4,*A10++         ; |340| 

   [ B0]   B       .S1     L26               ; |340| 
|| [ B0]   LDW     .D1T1   *+A11(12),A4      ; |340| 

   [!B0]   B       .S1     L29               ; |340| 
   [ B0]   CALL    .S1     _bignum_byte      ; |340| 
           NOP             3
           ; BRANCHCC OCCURS {L26}           ; |340| 
DW$L$_dss_public_blob$37$E:
;** --------------------------------------------------------------------------*
;** 340	-----------------------    goto g25;
;**	-----------------------g23:
;**  	-----------------------    #pragma[60] (dss != p;)
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5184u)
           MV      .L1X    B11,A3
           ; BRANCH OCCURS {L29}             ; |340| 
;** --------------------------------------------------------------------------*
L27:    

           CALL    .S1     _bignum_byte      ; |340| 
||         LDW     .D1T1   *+A11(12),A4      ; |340| 

	.dwpsn	"SSHDSS.C",339,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L28:    
DW$L$_dss_public_blob$40$B:
	.dwpsn	"SSHDSS.C",340,0
;**	-----------------------g24:
;** 340	-----------------------    C$1 = i-1;
;** 340	-----------------------    *p++ = bignum_byte((*dss).y, C$1);
;** 340	-----------------------    if ( i = C$1 ) goto g24;
           SUB     .L2     B0,1,B10          ; |340| 

           SUB     .D2     B0,1,B4           ; |340| 
||         ADDKPC  .S2     RL66,B3,0         ; |340| 

RL66:      ; CALL OCCURS {_bignum_byte}      ; |340| 
DW$L$_dss_public_blob$40$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_public_blob$41$B:

           MV      .L2     B10,B0            ; |340| 
||         STB     .D1T1   A4,*A10++         ; |340| 

   [ B0]   BNOP    .S1     L28,1             ; |340| 
|| [ B0]   LDW     .D1T1   *+A11(12),A4      ; |340| 
|| [!B0]   MV      .L1X    B11,A3

   [ B0]   CALL    .S1     _bignum_byte      ; |340| 
           NOP             3
           ; BRANCHCC OCCURS {L28}           ; |340| 
DW$L$_dss_public_blob$41$E:
;** --------------------------------------------------------------------------*
L29:    
           ADD     .L1X    B12,A3,A3         ; |341| 
           CMPEQ   .L1     A10,A3,A0         ; |341| 
;** --------------------------------------------------------------------------*
L30:    
;**	-----------------------g25:
;** 341	-----------------------    assert(p == blob+bloblen);

   [ A0]   B       .S2     L31               ; |341| 
||         MVKL    .S1     SL4+0,A4          ; |341| 
|| [ A0]   LDW     .D2T2   *+SP(28),B3       ; |344| 
|| [ A0]   MV      .L1X    SP,A31            ; |344| 

   [!A0]   CALL    .S2     __abort_msg       ; |341| 
||         MVKH    .S1     SL4+0,A4          ; |341| 
|| [ A0]   STW     .D2T2   B12,*B13          ; |342| 
|| [ A0]   LDDW    .D1T1   *+A31(8),A11:A10  ; |344| 

   [ A0]   LDDW    .D2T2   *+SP(32),B11:B10  ; |344| 
|| [ A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |344| 
|| [ A0]   MV      .L1X    B11,A4

   [ A0]   LDW     .D1T1   *+A31(24),A14     ; |344| 
|| [ A0]   LDDW    .D2T2   *+SP(40),B13:B12  ; |344| 

   [ A0]   LDW     .D2T1   *++SP(48),A15     ; |344| 
   [ A0]   RET     .S2     B3                ; |344| 
           ; BRANCHCC OCCURS {L31}           ; |341| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL67,B3,0         ; |341| 
RL67:      ; CALL OCCURS {__abort_msg}       ; |341| 

           LDW     .D2T2   *+SP(28),B3       ; |344| 
||         MV      .L1X    SP,A31            ; |344| 

           STW     .D2T2   B12,*B13          ; |342| 
||         LDW     .D1T1   *+A31(24),A14     ; |344| 
||         MV      .L1X    B11,A4

           LDDW    .D1T1   *+A31(16),A13:A12 ; |344| 
||         LDDW    .D2T2   *+SP(40),B13:B12  ; |344| 

           LDDW    .D1T1   *+A31(8),A11:A10  ; |344| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |344| 

           LDW     .D2T1   *++SP(48),A15     ; |344| 
           RET     .S2     B3                ; |344| 
;** --------------------------------------------------------------------------*
L31:    
;** 342	-----------------------    *len = bloblen;
;** 343	-----------------------    return blob;
	.dwpsn	"SSHDSS.C",344,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |344| 

DW$116	.dwtag  DW_TAG_loop
	.dwattr DW$116, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L28:1:1185758752")
	.dwattr DW$116, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$116, DW_AT_begin_line(0x153)
	.dwattr DW$116, DW_AT_end_line(0x154)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_dss_public_blob$40$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_dss_public_blob$40$E)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_dss_public_blob$41$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_dss_public_blob$41$E)
	.dwendtag DW$116


DW$119	.dwtag  DW_TAG_loop
	.dwattr DW$119, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L26:1:1185758752")
	.dwattr DW$119, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$119, DW_AT_begin_line(0x153)
	.dwattr DW$119, DW_AT_end_line(0x154)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_dss_public_blob$36$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_dss_public_blob$36$E)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_dss_public_blob$37$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_dss_public_blob$37$E)
	.dwendtag DW$119


DW$122	.dwtag  DW_TAG_loop
	.dwattr DW$122, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L23:1:1185758752")
	.dwattr DW$122, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$122, DW_AT_begin_line(0x14f)
	.dwattr DW$122, DW_AT_end_line(0x150)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_dss_public_blob$30$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_dss_public_blob$30$E)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_dss_public_blob$31$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_dss_public_blob$31$E)
	.dwendtag DW$122


DW$125	.dwtag  DW_TAG_loop
	.dwattr DW$125, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L21:1:1185758752")
	.dwattr DW$125, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$125, DW_AT_begin_line(0x14f)
	.dwattr DW$125, DW_AT_end_line(0x150)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_dss_public_blob$26$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_dss_public_blob$26$E)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$_dss_public_blob$27$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$_dss_public_blob$27$E)
	.dwendtag DW$125


DW$128	.dwtag  DW_TAG_loop
	.dwattr DW$128, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L18:1:1185758752")
	.dwattr DW$128, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$128, DW_AT_begin_line(0x14b)
	.dwattr DW$128, DW_AT_end_line(0x14c)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_dss_public_blob$20$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_dss_public_blob$20$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_dss_public_blob$21$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_dss_public_blob$21$E)
	.dwendtag DW$128


DW$131	.dwtag  DW_TAG_loop
	.dwattr DW$131, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L16:1:1185758752")
	.dwattr DW$131, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$131, DW_AT_begin_line(0x14b)
	.dwattr DW$131, DW_AT_end_line(0x14c)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_dss_public_blob$16$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_dss_public_blob$16$E)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_dss_public_blob$17$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_dss_public_blob$17$E)
	.dwendtag DW$131


DW$134	.dwtag  DW_TAG_loop
	.dwattr DW$134, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L13:1:1185758752")
	.dwattr DW$134, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$134, DW_AT_begin_line(0x147)
	.dwattr DW$134, DW_AT_end_line(0x148)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$_dss_public_blob$10$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$_dss_public_blob$10$E)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_dss_public_blob$11$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_dss_public_blob$11$E)
	.dwendtag DW$134


DW$137	.dwtag  DW_TAG_loop
	.dwattr DW$137, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L11:1:1185758752")
	.dwattr DW$137, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$137, DW_AT_begin_line(0x147)
	.dwattr DW$137, DW_AT_end_line(0x148)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_dss_public_blob$6$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_dss_public_blob$6$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_dss_public_blob$7$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_dss_public_blob$7$E)
	.dwendtag DW$137

	.dwattr DW$113, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$113, DW_AT_end_line(0x158)
	.dwattr DW$113, DW_AT_end_column(0x01)
	.dwendtag DW$113

	.sect	".text"

DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("getmp"), DW_AT_symbol_name("_getmp")
	.dwattr DW$140, DW_AT_low_pc(_getmp)
	.dwattr DW$140, DW_AT_high_pc(0x00)
	.dwattr DW$140, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$140, DW_AT_begin_line(0x36)
	.dwattr DW$140, DW_AT_begin_column(0x0f)
	.dwattr DW$140, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$140, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",55,1

;******************************************************************************
;* FUNCTION NAME: _getmp                                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                   *
;******************************************************************************
_getmp:
;** --------------------------------------------------------------------------*
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$141, DW_AT_type(*DW$T$65)
	.dwattr DW$141, DW_AT_location[DW_OP_reg4]
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("datalen"), DW_AT_symbol_name("_datalen")
	.dwattr DW$142, DW_AT_type(*DW$T$41)
	.dwattr DW$142, DW_AT_location[DW_OP_reg20]
;** 60	-----------------------    getstring(data, datalen, &p, &length);
;** 61	-----------------------    if ( p == NULL ) goto g3;
;** 63	-----------------------    if ( !(*p&0x80) ) goto g4;
           CALL    .S1     _getstring        ; |60| 
           STW     .D2T2   B3,*SP--(16)      ; |55| 
           ADDKPC  .S2     RL68,B3,1         ; |60| 
           ADD     .L1X    8,SP,A6           ; |60| 
           ADD     .L2     4,SP,B6           ; |60| 
RL68:      ; CALL OCCURS {_getstring}        ; |60| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(8),B0        ; |61| 
           NOP             4

   [ B0]   MV      .L1X    B0,A4             ; |63| 
|| [ B0]   LDB     .D2T2   *B0,B5            ; |63| 

           NOP             3
   [ B0]   LDW     .D2T2   *+SP(4),B4        ; |65| 

           CMPEQ   .L2     B0,0,B5           ; |65| 
|| [ B0]   EXTU    .S2     B5,24,31,B18      ; |63| 

           OR      .L2     B18,B5,B0         ; |65| 

   [ B0]   LDW     .D2T2   *++SP(16),B3      ; |67| 
|| [!B0]   B       .S1     L32               ; |63| 
|| [ B0]   ZERO    .L1     A4                ; |64| 

   [!B0]   CALL    .S1     _bignum_from_bytes ; |65| 
           NOP             3
   [ B0]   RET     .S2     B3                ; |67| 
           ; BRANCHCC OCCURS {L32}           ; |63| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 64	-----------------------    return NULL;
           NOP             5
           ; BRANCH OCCURS {B3}              ; |67| 
;** --------------------------------------------------------------------------*
L32:    
;**	-----------------------g4:
;** 65	-----------------------    b = bignum_from_bytes(*&p, length);
;** 66	-----------------------    return b;
           ADDKPC  .S2     RL69,B3,0         ; |65| 
RL69:      ; CALL OCCURS {_bignum_from_bytes}  ; |65| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(16),B3      ; |67| 
           NOP             4
	.dwpsn	"SSHDSS.C",67,1
           RETNOP  .S2     B3,5              ; |67| 
           ; BRANCH OCCURS {B3}              ; |67| 
	.dwattr DW$140, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$140, DW_AT_end_line(0x43)
	.dwattr DW$140, DW_AT_end_column(0x01)
	.dwendtag DW$140

	.sect	".text"

DW$143	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_newkey"), DW_AT_symbol_name("_dss_newkey")
	.dwattr DW$143, DW_AT_low_pc(_dss_newkey)
	.dwattr DW$143, DW_AT_high_pc(0x00)
	.dwattr DW$143, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$143, DW_AT_begin_line(0x50)
	.dwattr DW$143, DW_AT_begin_column(0x0e)
	.dwattr DW$143, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr DW$143, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",81,1

;******************************************************************************
;* FUNCTION NAME: _dss_newkey                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,A16,A17,A18,*
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 16 Auto + 24 Save = 40 byte                 *
;******************************************************************************
_dss_newkey:
;** --------------------------------------------------------------------------*
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$144, DW_AT_type(*DW$T$33)
	.dwattr DW$144, DW_AT_location[DW_OP_reg4]
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$145, DW_AT_type(*DW$T$10)
	.dwattr DW$145, DW_AT_location[DW_OP_reg20]
;** 81	-----------------------    data = data;
;** 81	-----------------------    len = len;
;** 86	-----------------------    dss = (struct _dss_key *)safemalloc(1u, 20u);
;** 87	-----------------------    if ( dss ) goto g3;
;** 88	-----------------------    return NULL;

           CALL    .S1     _safemalloc       ; |86| 
||         STW     .D2T2   B12,*SP--(40)     ; |81| 

           STW     .D2T2   B4,*+SP(12)       ; |81| 
           STW     .D2T1   A4,*+SP(16)       ; |81| 
           STW     .D2T2   B13,*+SP(20)      ; |81| 

           MVK     .S2     0x14,B4           ; |86| 
||         STDW    .D2T1   A11:A10,*+SP(24)  ; |81| 

           ADDKPC  .S2     RL70,B3,0         ; |86| 
||         MVK     .L1     0x1,A4            ; |86| 
||         MV      .L2     B3,B13            ; |81| 
||         STDW    .D2T2   B11:B10,*+SP(32)  ; |81| 

RL70:      ; CALL OCCURS {_safemalloc}       ; |86| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |86| 
||         ADD     .D2     SP,16,B5          ; |89| 
||         ZERO    .S1     A10               ; |88| 
||         ADD     .D1X    8,SP,A6           ; |89| 
||         ADD     .L2     4,SP,B6           ; |89| 
||         ADD     .S2     12,SP,B4          ; |89| 

   [!A0]   B       .S1     L38               ; |88| 
||         MV      .L1     A4,A11            ; |86| 

           MV      .L1X    B5,A4             ; |89| 
|| [ A0]   CALL    .S1     _getstring        ; |89| 

           NOP             4
           ; BRANCHCC OCCURS {L38}           ; |88| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 89	-----------------------    getstring(&data, &len, &p, &slen);
;** 101	-----------------------    if ( p == NULL ) goto g9;
;** 243	-----------------------    mem1 = *&p-1;  // [6]
;** 246	-----------------------    mem2 = (void *)"ssh-dss"-1;  // [6]
;** 249	-----------------------    L$1 = 7;  // [6]
;**  	-----------------------    #pragma MUST_ITERATE(1, 7, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
           ADDKPC  .S2     RL71,B3,0         ; |89| 
RL71:      ; CALL OCCURS {_getstring}        ; |89| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(8),B0        ; |101| 
||         MVKL    .S1     SL1+0,A3          ; |246| 

           MVKH    .S1     SL1+0,A3          ; |246| 
           SUB     .L1     A3,1,A4           ; |246| 
           MVK     .S1     0x7,A3            ; |249| 
           NOP             1

   [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| (P) <0,0> 
|| [ B0]   MV      .S2X    A3,B5
||         SUB     .L2     B0,1,B4           ; |243| 
|| [!B0]   B       .S1     L36               ; |101| 

   [ B0]   LDBU    .D2T2   *++B4,B6          ; |249| (P) <0,0> 
           NOP             4
           ; BRANCHCC OCCURS {L36}           ; |101| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 249	-----------------------    cp = *(++mem1);  // [6]
;** 249	-----------------------    U$33 = *(++mem2);  // [6]
;** 249	-----------------------    if ( cp != U$33 ) goto g7;  // [6]
;** 249	-----------------------    if ( --L$1 ) goto g5;  // [6]

           MVC     .S2     CSR,B7
||         CMPEQ   .L1X    B6,A3,A0          ; |249| (P) <0,5>  ^ 

           AND     .L2     -2,B7,B8
           MVC     .S2     B8,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 249
;*      Loop closing brace source line   : 249
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 7                    
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
L33:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L34:    ; PIPED LOOP KERNEL
DW$L$_dss_newkey$7$B:

           ZERO    .L2     B0                ; |249| <0,6>  ^ 
|| [ A0]   SUB     .S2     B5,1,B5           ; |249| <0,6>  ^ 

   [ A0]   MV      .L2     B5,B0             ; |249| <0,7>  ^ 

   [ B0]   BNOP    .S1     L34,4             ; |249| <0,8> 
|| [ B0]   LDBU    .D2T2   *++B4,B6          ; |249| <1,0> 
|| [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| <1,0> 

           CMPEQ   .L1X    B6,A3,A0          ; |249| <1,5>  ^ 
DW$L$_dss_newkey$7$E:
;** --------------------------------------------------------------------------*
L35:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 250	-----------------------    if ( cp != U$33 ) goto g9;  // [6]

           CMPEQ   .L1X    B6,A3,A0          ; |250| 
||         ADD     .D2     SP,16,B5          ; |105| 
||         MV      .S1     A11,A10           ; |110| 
||         ADD     .L2     12,SP,B4          ; |105| 
||         MVC     .S2     B7,CSR            ; interrupts on

           ADD     .D2     SP,16,B11         ; |107| 
|| [!A0]   B       .S1     L37               ; |250| 

           ADD     .D2     SP,16,B12         ; |106| 
|| [ A0]   CALL    .S1     _getmp            ; |105| 
||         MV      .L1X    B5,A4             ; |105| 

           ADD     .D2     SP,16,B10         ; |108| 
|| [!A0]   CALL    .S1     _safefree         ; |102| 

           NOP             3
           ; BRANCHCC OCCURS {L37}           ; |250| 
;** --------------------------------------------------------------------------*
;** 105	-----------------------    (*dss).p = getmp(&data, &len);
;** 106	-----------------------    (*dss).q = getmp(&data, &len);
;** 107	-----------------------    (*dss).g = getmp(&data, &len);
;** 108	-----------------------    (*dss).y = getmp(&data, &len);
;** 110	-----------------------    return (void *)dss;
           ADDKPC  .S2     RL72,B3,0         ; |105| 
RL72:      ; CALL OCCURS {_getmp}            ; |105| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _getmp            ; |106| 
           ADDKPC  .S2     RL73,B3,0         ; |106| 
           ADD     .L2     12,SP,B4          ; |106| 
           STW     .D1T1   A4,*A11           ; |105| 
           NOP             1
           MV      .L1X    B12,A4            ; |106| 
RL73:      ; CALL OCCURS {_getmp}            ; |106| 
           CALL    .S1     _getmp            ; |107| 
           ADD     .L2     12,SP,B4          ; |107| 
           STW     .D1T1   A4,*+A11(4)       ; |106| 
           MV      .L1X    B11,A4            ; |107| 
           ADDKPC  .S2     RL74,B3,1         ; |107| 
RL74:      ; CALL OCCURS {_getmp}            ; |107| 
           CALL    .S1     _getmp            ; |108| 
           ADD     .L2     12,SP,B4          ; |108| 
           STW     .D1T1   A4,*+A11(8)       ; |107| 
           MV      .L1X    B10,A4            ; |108| 
           ADDKPC  .S2     RL75,B3,1         ; |108| 
RL75:      ; CALL OCCURS {_getmp}            ; |108| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *+SP(32),B11:B10  ; |111| 

           LDW     .D2T2   *+SP(20),B13      ; |111| 
||         STW     .D1T1   A4,*+A11(12)      ; |108| 
||         MV      .L2     B13,B3            ; |111| 

           RET     .S2     B3                ; |111| 
||         LDDW    .D2T1   *+SP(24),A11:A10  ; |111| 
||         MV      .L1     A10,A4            ; |103| 

           LDW     .D2T2   *++SP(40),B12     ; |111| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |111| 
;** --------------------------------------------------------------------------*
L36:    
           CALL    .S1     _safefree         ; |102| 
           NOP             3
;** --------------------------------------------------------------------------*
L37:    
;**	-----------------------g9:
;** 102	-----------------------    safefree((void *)dss);
;** 103	-----------------------    return NULL;
           ADDKPC  .S2     RL76,B3,0         ; |102| 
           MV      .L1     A11,A4            ; |102| 
RL76:      ; CALL OCCURS {_safefree}         ; |102| 
;** --------------------------------------------------------------------------*
           ZERO    .L1     A10               ; |103| 
;** --------------------------------------------------------------------------*
L38:    
           LDDW    .D2T2   *+SP(32),B11:B10  ; |111| 

           LDDW    .D2T1   *+SP(24),A11:A10  ; |111| 
||         MV      .L2     B13,B3            ; |111| 
||         MV      .L1     A10,A4            ; |103| 

           RET     .S2     B3                ; |111| 
||         LDW     .D2T2   *+SP(20),B13      ; |111| 

           LDW     .D2T2   *++SP(40),B12     ; |111| 
	.dwpsn	"SSHDSS.C",111,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |111| 

DW$146	.dwtag  DW_TAG_loop
	.dwattr DW$146, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L34:1:1185758752")
	.dwattr DW$146, DW_AT_begin_file("C:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$146, DW_AT_begin_line(0xf9)
	.dwattr DW$146, DW_AT_end_line(0xf9)
DW$147	.dwtag  DW_TAG_loop_range
	.dwattr DW$147, DW_AT_low_pc(DW$L$_dss_newkey$7$B)
	.dwattr DW$147, DW_AT_high_pc(DW$L$_dss_newkey$7$E)
	.dwendtag DW$146

	.dwattr DW$143, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$143, DW_AT_end_line(0x6f)
	.dwattr DW$143, DW_AT_end_column(0x01)
	.dwendtag DW$143

	.sect	".text"

DW$148	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_freekey"), DW_AT_symbol_name("_dss_freekey")
	.dwattr DW$148, DW_AT_low_pc(_dss_freekey)
	.dwattr DW$148, DW_AT_high_pc(0x00)
	.dwattr DW$148, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$148, DW_AT_begin_line(0x71)
	.dwattr DW$148, DW_AT_begin_column(0x0d)
	.dwattr DW$148, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$148, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",114,1

;******************************************************************************
;* FUNCTION NAME: _dss_freekey                                                *
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
_dss_freekey:
;** --------------------------------------------------------------------------*
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$149, DW_AT_type(*DW$T$3)
	.dwattr DW$149, DW_AT_location[DW_OP_reg4]
;** 116	-----------------------    freebn((*(struct _dss_key *)key).p);
;** 117	-----------------------    freebn((*(struct _dss_key *)key).q);
;** 118	-----------------------    freebn((*(struct _dss_key *)key).g);
;** 119	-----------------------    freebn((*(struct _dss_key *)key).y);
;** 120	-----------------------    safefree(key);
;** 120	-----------------------    return;

           CALL    .S1     _freebn           ; |116| 
||         MV      .L1     A4,A10            ; |114| 
||         STW     .D2T1   A10,*SP--(8)      ; |114| 

           LDW     .D1T1   *A10,A4           ; |116| 
           STW     .D2T2   B13,*+SP(4)       ; |114| 
           MV      .L2     B3,B13            ; |114| 
           ADDKPC  .S2     RL77,B3,1         ; |116| 
RL77:      ; CALL OCCURS {_freebn}           ; |116| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _freebn           ; |117| 
           LDW     .D1T1   *+A10(4),A4       ; |117| 
           ADDKPC  .S2     RL78,B3,3         ; |117| 
RL78:      ; CALL OCCURS {_freebn}           ; |117| 
           CALL    .S1     _freebn           ; |118| 
           LDW     .D1T1   *+A10(8),A4       ; |118| 
           ADDKPC  .S2     RL79,B3,3         ; |118| 
RL79:      ; CALL OCCURS {_freebn}           ; |118| 
           CALL    .S1     _freebn           ; |119| 
           LDW     .D1T1   *+A10(12),A4      ; |119| 
           ADDKPC  .S2     RL80,B3,3         ; |119| 
RL80:      ; CALL OCCURS {_freebn}           ; |119| 
           CALL    .S1     _safefree         ; |120| 
           ADDKPC  .S2     RL81,B3,3         ; |120| 
           MV      .L1     A10,A4            ; |120| 
RL81:      ; CALL OCCURS {_safefree}         ; |120| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |121| 

           RET     .S2     B3                ; |121| 
||         LDW     .D2T2   *+SP(4),B13       ; |121| 

           LDW     .D2T1   *++SP(8),A10      ; |121| 
	.dwpsn	"SSHDSS.C",121,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |121| 
	.dwattr DW$148, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$148, DW_AT_end_line(0x79)
	.dwattr DW$148, DW_AT_end_column(0x01)
	.dwendtag DW$148

	.sect	".text"

DW$150	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_pubkey_bits"), DW_AT_symbol_name("_dss_pubkey_bits")
	.dwattr DW$150, DW_AT_low_pc(_dss_pubkey_bits)
	.dwattr DW$150, DW_AT_high_pc(0x00)
	.dwattr DW$150, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$150, DW_AT_begin_line(0x1d6)
	.dwattr DW$150, DW_AT_begin_column(0x0c)
	.dwattr DW$150, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$150, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",471,1

;******************************************************************************
;* FUNCTION NAME: _dss_pubkey_bits                                            *
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
_dss_pubkey_bits:
;** --------------------------------------------------------------------------*
DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blob"), DW_AT_symbol_name("_blob")
	.dwattr DW$151, DW_AT_type(*DW$T$3)
	.dwattr DW$151, DW_AT_location[DW_OP_reg4]
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$152, DW_AT_type(*DW$T$10)
	.dwattr DW$152, DW_AT_location[DW_OP_reg20]
;** 475	-----------------------    dss = (struct _dss_key *)dss_newkey((char * const)blob, len);
;** 476	-----------------------    ret = bignum_bitcount((*dss).p);
;** 116	-----------------------    freebn((*(struct _dss_key *)(void *)dss).p);  // [36]
;** 117	-----------------------    freebn((*(struct _dss_key *)(void *)dss).q);  // [36]
;** 118	-----------------------    freebn((*(struct _dss_key *)(void *)dss).g);  // [36]
;** 119	-----------------------    freebn((*(struct _dss_key *)(void *)dss).y);  // [36]
;** 120	-----------------------    safefree((struct _dss_key *)(void *)dss);  // [36]
;** 120	-----------------------    return ret;  // [36]
           CALL    .S1     _dss_newkey       ; |475| 
           NOP             2
           STW     .D2T1   A11,*SP--(16)     ; |471| 
           STW     .D2T2   B13,*+SP(12)      ; |471| 

           ADDKPC  .S2     RL82,B3,0         ; |475| 
||         MV      .L2     B3,B13            ; |471| 
||         STW     .D2T1   A10,*+SP(8)       ; |471| 

RL82:      ; CALL OCCURS {_dss_newkey}       ; |475| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_bitcount  ; |476| 
||         MV      .L1     A4,A10            ; |475| 

           LDW     .D1T1   *A10,A4           ; |476| 
           ADDKPC  .S2     RL83,B3,3         ; |476| 
RL83:      ; CALL OCCURS {_bignum_bitcount}  ; |476| 
           CALL    .S1     _freebn           ; |116| 

           LDW     .D1T1   *A10,A4           ; |116| 
||         MV      .L1     A4,A11            ; |476| 

           ADDKPC  .S2     RL84,B3,3         ; |116| 
RL84:      ; CALL OCCURS {_freebn}           ; |116| 
           CALL    .S1     _freebn           ; |117| 
           LDW     .D1T1   *+A10(4),A4       ; |117| 
           ADDKPC  .S2     RL85,B3,3         ; |117| 
RL85:      ; CALL OCCURS {_freebn}           ; |117| 
           CALL    .S1     _freebn           ; |118| 
           LDW     .D1T1   *+A10(8),A4       ; |118| 
           ADDKPC  .S2     RL86,B3,3         ; |118| 
RL86:      ; CALL OCCURS {_freebn}           ; |118| 
           CALL    .S1     _freebn           ; |119| 
           LDW     .D1T1   *+A10(12),A4      ; |119| 
           ADDKPC  .S2     RL87,B3,3         ; |119| 
RL87:      ; CALL OCCURS {_freebn}           ; |119| 
           CALL    .S1     _safefree         ; |120| 
           ADDKPC  .S2     RL88,B3,3         ; |120| 
           MV      .L1     A10,A4            ; |120| 
RL88:      ; CALL OCCURS {_safefree}         ; |120| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A10       ; |480| 
||         MV      .L2     B13,B3            ; |480| 

           RET     .S2     B3                ; |480| 
||         LDW     .D2T2   *+SP(12),B13      ; |480| 

           LDW     .D2T1   *++SP(16),A11     ; |480| 
||         MV      .L1     A11,A4            ; |120| 

	.dwpsn	"SSHDSS.C",480,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |480| 
	.dwattr DW$150, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$150, DW_AT_end_line(0x1e0)
	.dwattr DW$150, DW_AT_end_column(0x01)
	.dwendtag DW$150

	.sect	".text"

DW$153	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_private_blob"), DW_AT_symbol_name("_dss_private_blob")
	.dwattr DW$153, DW_AT_low_pc(_dss_private_blob)
	.dwattr DW$153, DW_AT_high_pc(0x00)
	.dwattr DW$153, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$153, DW_AT_begin_line(0x15a)
	.dwattr DW$153, DW_AT_begin_column(0x17)
	.dwattr DW$153, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$153, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",347,1

;******************************************************************************
;* FUNCTION NAME: _dss_private_blob                                           *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_dss_private_blob:
;** --------------------------------------------------------------------------*
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$154, DW_AT_type(*DW$T$3)
	.dwattr DW$154, DW_AT_location[DW_OP_reg4]
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$155, DW_AT_type(*DW$T$41)
	.dwattr DW$155, DW_AT_location[DW_OP_reg20]
;** 348	-----------------------    dss = (struct _dss_key *)key;
;** 353	-----------------------    xlen = (bignum_bitcount((*dss).x)+8)/8;
;** 358	-----------------------    bloblen = xlen+4;
;** 359	-----------------------    blob = safemalloc((unsigned)xlen+4u, 1u);
;** 360	-----------------------    p = blob;
;** 361	-----------------------    *p = xlen>>24;
;** 361	-----------------------    p[1] = xlen>>16;
;** 361	-----------------------    p[2] = xlen>>8;
;** 361	-----------------------    p[3] = xlen;
;** 362	-----------------------    p += 4;
;** 363	-----------------------    if ( !(i = xlen) ) goto g7;

           STW     .D2T2   B12,*SP--(32)     ; |347| 
||         MV      .L1X    SP,A31            ; |347| 

           CALL    .S1     _bignum_bitcount  ; |353| 
||         MV      .L1     A4,A13            ; |347| 
||         STDW    .D1T1   A13:A12,*-A31(16)

           LDW     .D1T1   *+A13(16),A4      ; |353| 
           MV      .L2     B4,B12            ; |347| 
           STW     .D2T2   B13,*+SP(4)
           STDW    .D1T1   A11:A10,*-A31(24)

           MV      .L2     B3,B13
||         STDW    .D2T2   B11:B10,*+SP(24)
||         ADDKPC  .S2     RL89,B3,0         ; |353| 

RL89:      ; CALL OCCURS {_bignum_bitcount}  ; |353| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _safemalloc       ; |359| 
||         ADD     .L1     8,A4,A3           ; |353| 

           SHR     .S1     A3,2,A4           ; |353| 
           SHRU    .S1     A4,29,A4          ; |353| 
           ADD     .L1     A4,A3,A3          ; |353| 
           SHR     .S1     A3,3,A11          ; |353| 

           ADDKPC  .S2     RL90,B3,0         ; |359| 
||         ADD     .L1     4,A11,A4          ; |359| 
||         MVK     .L2     0x1,B4            ; |359| 

RL90:      ; CALL OCCURS {_safemalloc}       ; |359| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A11,B0            ; |353| 
||         ADD     .L1     4,A4,A12          ; |362| 
||         MV      .D1     A11,A3            ; |353| 
||         MVK     .S1     20,A7             ; |364| 
||         MVK     .S2     16,B4             ; |364| 

   [!B0]   B       .S2     L43               ; |363| 
||         SUB     .L1     A12,A13,A5        ; |364| 
||         SHR     .S1     A3,24,A6          ; |361| 
||         ADD     .L2X    4,A11,B11         ; |358| 
||         MV      .D1     A4,A10            ; |359| 

           STB     .D1T1   A6,*A4            ; |361| 
||         SUB     .L1     A13,A12,A6        ; |364| 
||         SHR     .S2X    A3,16,B5          ; |361| 

           CMPLT   .L2X    A5,B4,B4          ; |364| 
||         CMPLT   .L1     A6,A7,A5          ; |364| 
||         SHR     .S1     A3,8,A6           ; |361| 
||         STB     .D1T2   B5,*+A4(1)        ; |361| 

           STB     .D1T1   A6,*+A4(2)        ; |361| 

           STB     .D1T1   A3,*+A4(3)        ; |361| 
|| [!B0]   ADD     .L1X    B11,A10,A3        ; |365| 
||         AND     .L2X    B4,A5,B4

   [!B0]   CMPEQ   .L1     A12,A3,A0         ; |365| 
||         XOR     .L2     1,B4,B1

           ; BRANCHCC OCCURS {L43}           ; |363| 
;** --------------------------------------------------------------------------*
;** 364	-----------------------    if ( (p-dss >= 16)|(dss-p >= 20) ) goto g5;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5128u)
   [ B1]   BNOP    .S1     L40,5             ; |364| 
           ; BRANCHCC OCCURS {L40}           ; |364| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_byte      ; |364| 
||         LDW     .D1T1   *+A13(16),A4      ; |364| 

	.dwpsn	"SSHDSS.C",363,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L39:    
DW$L$_dss_private_blob$6$B:
	.dwpsn	"SSHDSS.C",364,0
;**	-----------------------g4:
;** 364	-----------------------    C$2 = i-1;
;** 364	-----------------------    *p++ = bignum_byte((*dss).x, C$2);
;** 364	-----------------------    if ( i = C$2 ) goto g4;
           SUB     .L2     B0,1,B10          ; |364| 

           SUB     .D2     B0,1,B4           ; |364| 
||         ADDKPC  .S2     RL91,B3,0         ; |364| 

RL91:      ; CALL OCCURS {_bignum_byte}      ; |364| 
DW$L$_dss_private_blob$6$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_private_blob$7$B:

           MV      .L2     B10,B0            ; |364| 
||         STB     .D1T1   A4,*A12++         ; |364| 

   [ B0]   B       .S1     L39               ; |364| 
|| [ B0]   LDW     .D1T1   *+A13(16),A4      ; |364| 

   [!B0]   B       .S1     L42               ; |364| 
   [ B0]   CALL    .S1     _bignum_byte      ; |364| 
           NOP             3
           ; BRANCHCC OCCURS {L39}           ; |364| 
DW$L$_dss_private_blob$7$E:
;** --------------------------------------------------------------------------*
;** 364	-----------------------    goto g7;
;**	-----------------------g5:
;**  	-----------------------    #pragma[60] (dss != p;)
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5184u)
           ADD     .L1X    B11,A10,A3        ; |365| 
           ; BRANCH OCCURS {L42}             ; |364| 
;** --------------------------------------------------------------------------*
L40:    

           CALL    .S1     _bignum_byte      ; |364| 
||         LDW     .D1T1   *+A13(16),A4      ; |364| 

	.dwpsn	"SSHDSS.C",363,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L41:    
DW$L$_dss_private_blob$10$B:
	.dwpsn	"SSHDSS.C",364,0
;**	-----------------------g6:
;** 364	-----------------------    C$1 = i-1;
;** 364	-----------------------    *p++ = bignum_byte((*dss).x, C$1);
;** 364	-----------------------    if ( i = C$1 ) goto g6;
           SUB     .L2     B0,1,B10          ; |364| 

           SUB     .D2     B0,1,B4           ; |364| 
||         ADDKPC  .S2     RL92,B3,0         ; |364| 

RL92:      ; CALL OCCURS {_bignum_byte}      ; |364| 
DW$L$_dss_private_blob$10$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_private_blob$11$B:

           MV      .L2     B10,B0            ; |364| 
||         STB     .D1T1   A4,*A12++         ; |364| 

   [ B0]   BNOP    .S1     L41,1             ; |364| 
|| [ B0]   LDW     .D1T1   *+A13(16),A4      ; |364| 
|| [!B0]   ADD     .L1X    B11,A10,A3        ; |365| 

   [ B0]   CALL    .S1     _bignum_byte      ; |364| 
           NOP             3
           ; BRANCHCC OCCURS {L41}           ; |364| 
DW$L$_dss_private_blob$11$E:
;** --------------------------------------------------------------------------*
L42:    
           CMPEQ   .L1     A12,A3,A0         ; |365| 
;** --------------------------------------------------------------------------*
L43:    
;**	-----------------------g7:
;** 365	-----------------------    assert(p == blob+bloblen);

   [ A0]   B       .S1     L44               ; |365| 
|| [ A0]   MV      .L1X    SP,A31            ; |368| 
|| [ A0]   STW     .D2T2   B11,*B12          ; |366| 

           MVKL    .S1     SL5+0,A4          ; |365| 
|| [ A0]   MV      .L2     B13,B3            ; |368| 
|| [!A0]   CALL    .S2     __abort_msg       ; |365| 
|| [ A0]   LDDW    .D1T1   *+A31(16),A13:A12 ; |368| 
|| [ A0]   LDW     .D2T2   *+SP(4),B13       ; |368| 

           MVKH    .S1     SL5+0,A4          ; |365| 
|| [ A0]   RET     .S2     B3                ; |368| 
|| [ A0]   LDDW    .D2T2   *+SP(24),B11:B10  ; |368| 

   [ A0]   MV      .L1     A10,A4            ; |367| 
|| [ A0]   LDDW    .D1T1   *+A31(8),A11:A10  ; |368| 
|| [ A0]   LDW     .D2T2   *++SP(32),B12     ; |368| 

           NOP             2
           ; BRANCHCC OCCURS {L44}           ; |365| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL93,B3,0         ; |365| 
RL93:      ; CALL OCCURS {__abort_msg}       ; |365| 

           MV      .L2     B13,B3            ; |368| 
||         MV      .L1X    SP,A31            ; |368| 
||         STW     .D2T2   B11,*B12          ; |366| 
||         MV      .S1     A10,A4            ; |367| 

           LDDW    .D1T1   *+A31(16),A13:A12 ; |368| 
||         LDW     .D2T2   *+SP(4),B13       ; |368| 

           LDDW    .D1T1   *+A31(8),A11:A10  ; |368| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |368| 
||         RET     .S2     B3                ; |368| 

           LDW     .D2T2   *++SP(32),B12     ; |368| 
           NOP             2
;** --------------------------------------------------------------------------*
L44:    
;** 366	-----------------------    *len = bloblen;
;** 367	-----------------------    return blob;
	.dwpsn	"SSHDSS.C",368,1
           NOP             2
           ; BRANCH OCCURS {B3}              ; |368| 

DW$156	.dwtag  DW_TAG_loop
	.dwattr DW$156, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L41:1:1185758752")
	.dwattr DW$156, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$156, DW_AT_begin_line(0x16b)
	.dwattr DW$156, DW_AT_end_line(0x16c)
DW$157	.dwtag  DW_TAG_loop_range
	.dwattr DW$157, DW_AT_low_pc(DW$L$_dss_private_blob$10$B)
	.dwattr DW$157, DW_AT_high_pc(DW$L$_dss_private_blob$10$E)
DW$158	.dwtag  DW_TAG_loop_range
	.dwattr DW$158, DW_AT_low_pc(DW$L$_dss_private_blob$11$B)
	.dwattr DW$158, DW_AT_high_pc(DW$L$_dss_private_blob$11$E)
	.dwendtag DW$156


DW$159	.dwtag  DW_TAG_loop
	.dwattr DW$159, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L39:1:1185758752")
	.dwattr DW$159, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$159, DW_AT_begin_line(0x16b)
	.dwattr DW$159, DW_AT_end_line(0x16c)
DW$160	.dwtag  DW_TAG_loop_range
	.dwattr DW$160, DW_AT_low_pc(DW$L$_dss_private_blob$6$B)
	.dwattr DW$160, DW_AT_high_pc(DW$L$_dss_private_blob$6$E)
DW$161	.dwtag  DW_TAG_loop_range
	.dwattr DW$161, DW_AT_low_pc(DW$L$_dss_private_blob$7$B)
	.dwattr DW$161, DW_AT_high_pc(DW$L$_dss_private_blob$7$E)
	.dwendtag DW$159

	.dwattr DW$153, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$153, DW_AT_end_line(0x170)
	.dwattr DW$153, DW_AT_end_column(0x01)
	.dwendtag DW$153

	.sect	".text"

DW$162	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_openssh_fmtkey"), DW_AT_symbol_name("_dss_openssh_fmtkey")
	.dwattr DW$162, DW_AT_low_pc(_dss_openssh_fmtkey)
	.dwattr DW$162, DW_AT_high_pc(0x00)
	.dwattr DW$162, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$162, DW_AT_begin_line(0x1ba)
	.dwattr DW$162, DW_AT_begin_column(0x0c)
	.dwattr DW$162, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$162, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",443,1

;******************************************************************************
;* FUNCTION NAME: _dss_openssh_fmtkey                                         *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18, *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18, *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_dss_openssh_fmtkey:
;** --------------------------------------------------------------------------*
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$163, DW_AT_type(*DW$T$3)
	.dwattr DW$163, DW_AT_location[DW_OP_reg4]
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blob"), DW_AT_symbol_name("_blob")
	.dwattr DW$164, DW_AT_type(*DW$T$40)
	.dwattr DW$164, DW_AT_location[DW_OP_reg20]
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$165, DW_AT_type(*DW$T$10)
	.dwattr DW$165, DW_AT_location[DW_OP_reg6]
;** 444	-----------------------    dss = (struct _dss_key *)key;
;** 447	-----------------------    bloblen = ssh2_bignum_length((*dss).p)+ssh2_bignum_length((*dss).q)+ssh2_bignum_length((*dss).g)+ssh2_bignum_length((*dss).y)+ssh2_bignum_length((*dss).x);
;** 454	-----------------------    if ( bloblen <= len ) goto g3;
;** 455	-----------------------    return bloblen;

           STW     .D2T1   A12,*SP--(24)     ; |443| 
||         MV      .L1X    SP,A31            ; |443| 

           CALL    .S1     _ssh2_bignum_length ; |447| 
||         MV      .L1     A4,A10            ; |443| 
||         STDW    .D1T1   A11:A10,*-A31(16)

           LDW     .D1T1   *A10,A4           ; |447| 
           STDW    .D2T2   B11:B10,*+SP(16)
           STW     .D2T2   B13,*+SP(4)
           MV      .L1     A6,A11            ; |443| 

           MV      .L2     B4,B11            ; |443| 
||         MV      .D2     B3,B13
||         ADDKPC  .S2     RL98,B3,0         ; |447| 

RL98:      ; CALL OCCURS {_ssh2_bignum_length}  ; |447| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ssh2_bignum_length ; |447| 

           LDW     .D1T1   *+A10(4),A4       ; |447| 
||         MV      .L1     A4,A12            ; |447| 

           ADDKPC  .S2     RL97,B3,3         ; |447| 
RL97:      ; CALL OCCURS {_ssh2_bignum_length}  ; |447| 
           CALL    .S1     _ssh2_bignum_length ; |447| 

           LDW     .D1T1   *+A10(8),A4       ; |447| 
||         ADD     .L1     A4,A12,A12        ; |447| 

           ADDKPC  .S2     RL96,B3,3         ; |447| 
RL96:      ; CALL OCCURS {_ssh2_bignum_length}  ; |447| 
           CALL    .S1     _ssh2_bignum_length ; |447| 

           LDW     .D1T1   *+A10(12),A4      ; |447| 
||         ADD     .L1     A4,A12,A12        ; |447| 

           ADDKPC  .S2     RL95,B3,3         ; |447| 
RL95:      ; CALL OCCURS {_ssh2_bignum_length}  ; |447| 
           CALL    .S1     _ssh2_bignum_length ; |447| 

           LDW     .D1T1   *+A10(16),A4      ; |447| 
||         ADD     .L1     A4,A12,A12        ; |447| 

           ADDKPC  .S2     RL94,B3,3         ; |447| 
RL94:      ; CALL OCCURS {_ssh2_bignum_length}  ; |447| 
;** --------------------------------------------------------------------------*

           ADD     .L1     A4,A12,A4         ; |447| 
||         MVK     .S1     0x4,A12           ; |461| 

           CMPGT   .L1     A4,A11,A0         ; |454| 

   [ A0]   B       .S1     L55               ; |455| 
|| [!A0]   LDW     .D1T1   *A10,A4           ; |461| 

   [!A0]   CALL    .S1     _ssh2_bignum_length ; |461| 
           NOP             4
           ; BRANCHCC OCCURS {L55}           ; |455| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 461	-----------------------    *blob = ssh2_bignum_length((*dss).p)-4>>24;
;** 461	-----------------------    blob[1] = ssh2_bignum_length((*dss).p)-4>>16;
;** 461	-----------------------    blob[2] = ssh2_bignum_length((*dss).p)-4>>8;
;** 461	-----------------------    blob[3] = ssh2_bignum_length((*dss).p)-4;
;** 461	-----------------------    i = ssh2_bignum_length((*dss).p)-4;
;** 461	-----------------------    bloblen = 4;
;** 461	-----------------------    if ( !i ) goto g6;
;**  	-----------------------    U$37 = &blob[4];
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDKPC  .S2     RL99,B3,0         ; |461| 
RL99:      ; CALL OCCURS {_ssh2_bignum_length}  ; |461| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A4,4,A3           ; |461| 
           SHR     .S1     A3,24,A3          ; |461| 

           CALL    .S1     _ssh2_bignum_length ; |461| 
||         STB     .D2T1   A3,*B11           ; |461| 

           LDW     .D1T1   *A10,A4           ; |461| 
           ADDKPC  .S2     RL100,B3,3        ; |461| 
RL100:     ; CALL OCCURS {_ssh2_bignum_length}  ; |461| 
           SUB     .L1     A4,4,A3           ; |461| 
           SHR     .S1     A3,16,A3          ; |461| 

           CALL    .S1     _ssh2_bignum_length ; |461| 
||         STB     .D2T1   A3,*+B11(1)       ; |461| 

           LDW     .D1T1   *A10,A4           ; |461| 
           ADDKPC  .S2     RL101,B3,3        ; |461| 
RL101:     ; CALL OCCURS {_ssh2_bignum_length}  ; |461| 
           SUB     .L1     A4,4,A3           ; |461| 
           SHR     .S1     A3,8,A3           ; |461| 

           CALL    .S1     _ssh2_bignum_length ; |461| 
||         STB     .D2T1   A3,*+B11(2)       ; |461| 

           LDW     .D1T1   *A10,A4           ; |461| 
           ADDKPC  .S2     RL102,B3,3        ; |461| 
RL102:     ; CALL OCCURS {_ssh2_bignum_length}  ; |461| 
           SUB     .L1     A4,4,A3           ; |461| 

           CALL    .S1     _ssh2_bignum_length ; |461| 
||         STB     .D2T1   A3,*+B11(3)       ; |461| 

           LDW     .D1T1   *A10,A4           ; |461| 
           ADDKPC  .S2     RL103,B3,3        ; |461| 
RL103:     ; CALL OCCURS {_ssh2_bignum_length}  ; |461| 
;** --------------------------------------------------------------------------*

           SUB     .L2X    A4,4,B0           ; |461| 
||         ADD     .L1X    4,B11,A11

   [!B0]   BNOP    .S1     L46,5             ; |461| 
           ; BRANCHCC OCCURS {L46}           ; |461| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_byte      ; |461| 
||         LDW     .D1T1   *A10,A4           ; |461| 

	.dwpsn	"SSHDSS.C",461,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L45:    
DW$L$_dss_openssh_fmtkey$8$B:
;**	-----------------------g5:
;** 461	-----------------------    C$7 = i-1;
;** 461	-----------------------    *U$37++ = bignum_byte((*dss).p, C$7);
;** 461	-----------------------    ++bloblen;
;** 461	-----------------------    if ( i = C$7 ) goto g5;
           SUB     .L2     B0,1,B10          ; |461| 

           SUB     .D2     B0,1,B4           ; |461| 
||         ADDKPC  .S2     RL104,B3,0        ; |461| 

RL104:     ; CALL OCCURS {_bignum_byte}      ; |461| 
DW$L$_dss_openssh_fmtkey$8$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_openssh_fmtkey$9$B:

           MV      .L2     B10,B0            ; |461| 
||         ADD     .L1     1,A12,A12         ; |461| 
||         STB     .D1T1   A4,*A11++         ; |461| 

   [ B0]   BNOP    .S1     L45,1             ; |461| 
|| [ B0]   LDW     .D1T1   *A10,A4           ; |461| 

   [ B0]   CALL    .S1     _bignum_byte      ; |461| 
           NOP             3
           ; BRANCHCC OCCURS {L45}           ; |461| 
DW$L$_dss_openssh_fmtkey$9$E:
;** --------------------------------------------------------------------------*
L46:    
;**	-----------------------g6:
;** 462	-----------------------    C$6 = &blob[bloblen];
;** 462	-----------------------    *C$6 = ssh2_bignum_length((*dss).q)-4>>24;
;** 462	-----------------------    C$5 = &blob[bloblen];
;** 462	-----------------------    C$5[1] = ssh2_bignum_length((*dss).q)-4>>16;
;** 462	-----------------------    C$5[2] = ssh2_bignum_length((*dss).q)-4>>8;
;** 462	-----------------------    U$37 = C$6;
;** 462	-----------------------    C$5[3] = ssh2_bignum_length((*dss).q)-4;
;** 462	-----------------------    U$37 += 4;
;** 462	-----------------------    bloblen += 4;
;** 462	-----------------------    if ( !(i = ssh2_bignum_length((*dss).q)-4) ) goto g9;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _ssh2_bignum_length ; |462| 
           LDW     .D1T1   *+A10(4),A4       ; |462| 
           ADDKPC  .S2     RL105,B3,3        ; |462| 
RL105:     ; CALL OCCURS {_ssh2_bignum_length}  ; |462| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A4,4,A3           ; |462| 
           ADD     .L2X    A12,B11,B10       ; |462| 
           SHR     .S2X    A3,24,B4          ; |462| 

           CALL    .S1     _ssh2_bignum_length ; |462| 
||         STB     .D2T2   B4,*B10           ; |462| 

           LDW     .D1T1   *+A10(4),A4       ; |462| 
           ADDKPC  .S2     RL106,B3,3        ; |462| 
RL106:     ; CALL OCCURS {_ssh2_bignum_length}  ; |462| 
           SUB     .L1     A4,4,A3           ; |462| 

           SHR     .S1     A3,16,A3          ; |462| 
||         ADD     .L1X    A12,B11,A11       ; |462| 

           CALL    .S1     _ssh2_bignum_length ; |462| 
||         STB     .D1T1   A3,*+A11(1)       ; |462| 

           LDW     .D1T1   *+A10(4),A4       ; |462| 
           ADDKPC  .S2     RL107,B3,3        ; |462| 
RL107:     ; CALL OCCURS {_ssh2_bignum_length}  ; |462| 
           SUB     .L1     A4,4,A3           ; |462| 
           SHR     .S1     A3,8,A3           ; |462| 

           CALL    .S1     _ssh2_bignum_length ; |462| 
||         STB     .D1T1   A3,*+A11(2)       ; |462| 

           LDW     .D1T1   *+A10(4),A4       ; |462| 
           ADDKPC  .S2     RL108,B3,3        ; |462| 
RL108:     ; CALL OCCURS {_ssh2_bignum_length}  ; |462| 
           SUB     .L1     A4,4,A3           ; |462| 

           CALL    .S1     _ssh2_bignum_length ; |462| 
||         STB     .D1T1   A3,*+A11(3)       ; |462| 

           LDW     .D1T1   *+A10(4),A4       ; |462| 
           ADDKPC  .S2     RL109,B3,3        ; |462| 
RL109:     ; CALL OCCURS {_ssh2_bignum_length}  ; |462| 
;** --------------------------------------------------------------------------*

           SUB     .L2X    A4,4,B0           ; |462| 
||         ADD     .L1     4,A12,A12         ; |462| 
||         ADD     .S1X    4,B10,A11         ; |462| 

   [!B0]   BNOP    .S1     L48,5             ; |462| 
           ; BRANCHCC OCCURS {L48}           ; |462| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_byte      ; |462| 
||         LDW     .D1T1   *+A10(4),A4       ; |462| 

	.dwpsn	"SSHDSS.C",462,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L47:    
DW$L$_dss_openssh_fmtkey$14$B:
;**	-----------------------g8:
;** 462	-----------------------    C$4 = i-1;
;** 462	-----------------------    *U$37++ = bignum_byte((*dss).q, C$4);
;** 462	-----------------------    ++bloblen;
;** 462	-----------------------    if ( i = C$4 ) goto g8;
           SUB     .L2     B0,1,B10          ; |462| 

           SUB     .D2     B0,1,B4           ; |462| 
||         ADDKPC  .S2     RL110,B3,0        ; |462| 

RL110:     ; CALL OCCURS {_bignum_byte}      ; |462| 
DW$L$_dss_openssh_fmtkey$14$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_openssh_fmtkey$15$B:

           MV      .L2     B10,B0            ; |462| 
||         ADD     .L1     1,A12,A12         ; |462| 
||         STB     .D1T1   A4,*A11++         ; |462| 

   [ B0]   BNOP    .S1     L47,1             ; |462| 
|| [ B0]   LDW     .D1T1   *+A10(4),A4       ; |462| 

   [ B0]   CALL    .S1     _bignum_byte      ; |462| 
           NOP             3
           ; BRANCHCC OCCURS {L47}           ; |462| 
DW$L$_dss_openssh_fmtkey$15$E:
;** --------------------------------------------------------------------------*
L48:    
;**	-----------------------g9:
;** 463	-----------------------    *U$37 = ssh2_bignum_length((*dss).g)-4>>24;
;** 463	-----------------------    U$37[1] = ssh2_bignum_length((*dss).g)-4>>16;
;** 463	-----------------------    U$37[2] = ssh2_bignum_length((*dss).g)-4>>8;
;** 463	-----------------------    U$37[3] = ssh2_bignum_length((*dss).g)-4;
;** 463	-----------------------    U$37 += 4;
;** 463	-----------------------    bloblen += 4;
;** 463	-----------------------    if ( !(i = ssh2_bignum_length((*dss).g)-4) ) goto g12;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _ssh2_bignum_length ; |463| 
           LDW     .D1T1   *+A10(8),A4       ; |463| 
           ADDKPC  .S2     RL111,B3,3        ; |463| 
RL111:     ; CALL OCCURS {_ssh2_bignum_length}  ; |463| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A4,4,A3           ; |463| 
           SHR     .S1     A3,24,A3          ; |463| 

           CALL    .S1     _ssh2_bignum_length ; |463| 
||         STB     .D1T1   A3,*A11           ; |463| 

           LDW     .D1T1   *+A10(8),A4       ; |463| 
           ADDKPC  .S2     RL112,B3,3        ; |463| 
RL112:     ; CALL OCCURS {_ssh2_bignum_length}  ; |463| 
           SUB     .L1     A4,4,A3           ; |463| 
           SHR     .S1     A3,16,A3          ; |463| 

           CALL    .S1     _ssh2_bignum_length ; |463| 
||         STB     .D1T1   A3,*+A11(1)       ; |463| 

           LDW     .D1T1   *+A10(8),A4       ; |463| 
           ADDKPC  .S2     RL113,B3,3        ; |463| 
RL113:     ; CALL OCCURS {_ssh2_bignum_length}  ; |463| 
           SUB     .L1     A4,4,A3           ; |463| 
           SHR     .S1     A3,8,A3           ; |463| 

           CALL    .S1     _ssh2_bignum_length ; |463| 
||         STB     .D1T1   A3,*+A11(2)       ; |463| 

           LDW     .D1T1   *+A10(8),A4       ; |463| 
           ADDKPC  .S2     RL114,B3,3        ; |463| 
RL114:     ; CALL OCCURS {_ssh2_bignum_length}  ; |463| 
           SUB     .L1     A4,4,A3           ; |463| 

           CALL    .S1     _ssh2_bignum_length ; |463| 
||         STB     .D1T1   A3,*+A11(3)       ; |463| 

           LDW     .D1T1   *+A10(8),A4       ; |463| 
           ADDKPC  .S2     RL115,B3,3        ; |463| 
RL115:     ; CALL OCCURS {_ssh2_bignum_length}  ; |463| 
;** --------------------------------------------------------------------------*

           SUB     .L2X    A4,4,B0           ; |463| 
||         ADD     .L1     4,A12,A12         ; |463| 
||         ADD     .S1     4,A11,A11         ; |463| 

   [!B0]   BNOP    .S1     L50,5             ; |463| 
           ; BRANCHCC OCCURS {L50}           ; |463| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_byte      ; |463| 
||         LDW     .D1T1   *+A10(8),A4       ; |463| 

	.dwpsn	"SSHDSS.C",463,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L49:    
DW$L$_dss_openssh_fmtkey$20$B:
;**	-----------------------g11:
;** 463	-----------------------    C$3 = i-1;
;** 463	-----------------------    *U$37++ = bignum_byte((*dss).g, C$3);
;** 463	-----------------------    ++bloblen;
;** 463	-----------------------    if ( i = C$3 ) goto g11;
           SUB     .L2     B0,1,B10          ; |463| 

           SUB     .D2     B0,1,B4           ; |463| 
||         ADDKPC  .S2     RL116,B3,0        ; |463| 

RL116:     ; CALL OCCURS {_bignum_byte}      ; |463| 
DW$L$_dss_openssh_fmtkey$20$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_openssh_fmtkey$21$B:

           MV      .L2     B10,B0            ; |463| 
||         ADD     .L1     1,A12,A12         ; |463| 
||         STB     .D1T1   A4,*A11++         ; |463| 

   [ B0]   BNOP    .S1     L49,1             ; |463| 
|| [ B0]   LDW     .D1T1   *+A10(8),A4       ; |463| 

   [ B0]   CALL    .S1     _bignum_byte      ; |463| 
           NOP             3
           ; BRANCHCC OCCURS {L49}           ; |463| 
DW$L$_dss_openssh_fmtkey$21$E:
;** --------------------------------------------------------------------------*
L50:    
;**	-----------------------g12:
;** 464	-----------------------    *U$37 = ssh2_bignum_length((*dss).y)-4>>24;
;** 464	-----------------------    U$37[1] = ssh2_bignum_length((*dss).y)-4>>16;
;** 464	-----------------------    U$37[2] = ssh2_bignum_length((*dss).y)-4>>8;
;** 464	-----------------------    U$37[3] = ssh2_bignum_length((*dss).y)-4;
;** 464	-----------------------    U$37 += 4;
;** 464	-----------------------    bloblen += 4;
;** 464	-----------------------    if ( !(i = ssh2_bignum_length((*dss).y)-4) ) goto g15;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _ssh2_bignum_length ; |464| 
           LDW     .D1T1   *+A10(12),A4      ; |464| 
           ADDKPC  .S2     RL117,B3,3        ; |464| 
RL117:     ; CALL OCCURS {_ssh2_bignum_length}  ; |464| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A4,4,A3           ; |464| 
           SHR     .S1     A3,24,A3          ; |464| 

           CALL    .S1     _ssh2_bignum_length ; |464| 
||         STB     .D1T1   A3,*A11           ; |464| 

           LDW     .D1T1   *+A10(12),A4      ; |464| 
           ADDKPC  .S2     RL118,B3,3        ; |464| 
RL118:     ; CALL OCCURS {_ssh2_bignum_length}  ; |464| 
           SUB     .L1     A4,4,A3           ; |464| 
           SHR     .S1     A3,16,A3          ; |464| 

           CALL    .S1     _ssh2_bignum_length ; |464| 
||         STB     .D1T1   A3,*+A11(1)       ; |464| 

           LDW     .D1T1   *+A10(12),A4      ; |464| 
           ADDKPC  .S2     RL119,B3,3        ; |464| 
RL119:     ; CALL OCCURS {_ssh2_bignum_length}  ; |464| 
           SUB     .L1     A4,4,A3           ; |464| 
           SHR     .S1     A3,8,A3           ; |464| 

           CALL    .S1     _ssh2_bignum_length ; |464| 
||         STB     .D1T1   A3,*+A11(2)       ; |464| 

           LDW     .D1T1   *+A10(12),A4      ; |464| 
           ADDKPC  .S2     RL120,B3,3        ; |464| 
RL120:     ; CALL OCCURS {_ssh2_bignum_length}  ; |464| 
           SUB     .L1     A4,4,A3           ; |464| 

           CALL    .S1     _ssh2_bignum_length ; |464| 
||         STB     .D1T1   A3,*+A11(3)       ; |464| 

           LDW     .D1T1   *+A10(12),A4      ; |464| 
           ADDKPC  .S2     RL121,B3,3        ; |464| 
RL121:     ; CALL OCCURS {_ssh2_bignum_length}  ; |464| 
;** --------------------------------------------------------------------------*

           SUB     .L2X    A4,4,B0           ; |464| 
||         ADD     .L1     4,A12,A12         ; |464| 
||         ADD     .S1     4,A11,A11         ; |464| 

   [!B0]   BNOP    .S1     L52,5             ; |464| 
           ; BRANCHCC OCCURS {L52}           ; |464| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _bignum_byte      ; |464| 
||         LDW     .D1T1   *+A10(12),A4      ; |464| 

	.dwpsn	"SSHDSS.C",464,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L51:    
DW$L$_dss_openssh_fmtkey$26$B:
;**	-----------------------g14:
;** 464	-----------------------    C$2 = i-1;
;** 464	-----------------------    *U$37++ = bignum_byte((*dss).y, C$2);
;** 464	-----------------------    ++bloblen;
;** 464	-----------------------    if ( i = C$2 ) goto g14;
           SUB     .L2     B0,1,B10          ; |464| 

           SUB     .D2     B0,1,B4           ; |464| 
||         ADDKPC  .S2     RL122,B3,0        ; |464| 

RL122:     ; CALL OCCURS {_bignum_byte}      ; |464| 
DW$L$_dss_openssh_fmtkey$26$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_openssh_fmtkey$27$B:

           MV      .L2     B10,B0            ; |464| 
||         ADD     .L1     1,A12,A12         ; |464| 
||         STB     .D1T1   A4,*A11++         ; |464| 

   [ B0]   BNOP    .S1     L51,1             ; |464| 
|| [ B0]   LDW     .D1T1   *+A10(12),A4      ; |464| 

   [ B0]   CALL    .S1     _bignum_byte      ; |464| 
           NOP             3
           ; BRANCHCC OCCURS {L51}           ; |464| 
DW$L$_dss_openssh_fmtkey$27$E:
;** --------------------------------------------------------------------------*
L52:    
;**	-----------------------g15:
;** 465	-----------------------    *U$37 = ssh2_bignum_length((*dss).x)-4>>24;
;** 465	-----------------------    U$37[1] = ssh2_bignum_length((*dss).x)-4>>16;
;** 465	-----------------------    U$37[2] = ssh2_bignum_length((*dss).x)-4>>8;
;** 465	-----------------------    U$37[3] = ssh2_bignum_length((*dss).x)-4;
;** 465	-----------------------    bloblen += 4;
;** 465	-----------------------    if ( !(i = ssh2_bignum_length((*dss).x)-4) ) goto g18;
           CALL    .S1     _ssh2_bignum_length ; |465| 
           LDW     .D1T1   *+A10(16),A4      ; |465| 
           ADDKPC  .S2     RL123,B3,3        ; |465| 
RL123:     ; CALL OCCURS {_ssh2_bignum_length}  ; |465| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A4,4,A3           ; |465| 
           SHR     .S1     A3,24,A3          ; |465| 

           CALL    .S1     _ssh2_bignum_length ; |465| 
||         STB     .D1T1   A3,*A11           ; |465| 

           LDW     .D1T1   *+A10(16),A4      ; |465| 
           ADDKPC  .S2     RL124,B3,3        ; |465| 
RL124:     ; CALL OCCURS {_ssh2_bignum_length}  ; |465| 
           SUB     .L1     A4,4,A3           ; |465| 
           SHR     .S1     A3,16,A3          ; |465| 

           CALL    .S1     _ssh2_bignum_length ; |465| 
||         STB     .D1T1   A3,*+A11(1)       ; |465| 

           LDW     .D1T1   *+A10(16),A4      ; |465| 
           ADDKPC  .S2     RL125,B3,3        ; |465| 
RL125:     ; CALL OCCURS {_ssh2_bignum_length}  ; |465| 
           SUB     .L1     A4,4,A3           ; |465| 
           SHR     .S1     A3,8,A3           ; |465| 

           CALL    .S1     _ssh2_bignum_length ; |465| 
||         STB     .D1T1   A3,*+A11(2)       ; |465| 

           LDW     .D1T1   *+A10(16),A4      ; |465| 
           ADDKPC  .S2     RL126,B3,3        ; |465| 
RL126:     ; CALL OCCURS {_ssh2_bignum_length}  ; |465| 
           SUB     .L1     A4,4,A3           ; |465| 

           CALL    .S1     _ssh2_bignum_length ; |465| 
||         STB     .D1T1   A3,*+A11(3)       ; |465| 

           LDW     .D1T1   *+A10(16),A4      ; |465| 
           ADDKPC  .S2     RL127,B3,3        ; |465| 
RL127:     ; CALL OCCURS {_ssh2_bignum_length}  ; |465| 
;** --------------------------------------------------------------------------*

           SUB     .L2X    A4,4,B0           ; |465| 
||         ADD     .L1     4,A12,A12         ; |465| 

   [!B0]   BNOP    .S1     L54,5             ; |465| 
           ; BRANCHCC OCCURS {L54}           ; |465| 
;** --------------------------------------------------------------------------*
;** 465	-----------------------    U$37 += 4;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     _bignum_byte      ; |465| 
||         LDW     .D1T1   *+A10(16),A4      ; |465| 
||         ADD     .L1     4,A11,A11         ; |465| 

	.dwpsn	"SSHDSS.C",465,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L53:    
DW$L$_dss_openssh_fmtkey$32$B:
;**	-----------------------g17:
;** 465	-----------------------    C$1 = i-1;
;** 465	-----------------------    *U$37++ = bignum_byte((*dss).x, C$1);
;** 465	-----------------------    ++bloblen;
;** 465	-----------------------    if ( i = C$1 ) goto g17;
           SUB     .L2     B0,1,B10          ; |465| 

           SUB     .D2     B0,1,B4           ; |465| 
||         ADDKPC  .S2     RL128,B3,0        ; |465| 

RL128:     ; CALL OCCURS {_bignum_byte}      ; |465| 
DW$L$_dss_openssh_fmtkey$32$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_openssh_fmtkey$33$B:

           MV      .L2     B10,B0            ; |465| 
||         ADD     .L1     1,A12,A12         ; |465| 
||         STB     .D1T1   A4,*A11++         ; |465| 

   [ B0]   BNOP    .S1     L53,1             ; |465| 
|| [ B0]   LDW     .D1T1   *+A10(16),A4      ; |465| 

   [ B0]   CALL    .S1     _bignum_byte      ; |465| 
           NOP             3
           ; BRANCHCC OCCURS {L53}           ; |465| 
DW$L$_dss_openssh_fmtkey$33$E:
;** --------------------------------------------------------------------------*
L54:    
;**	-----------------------g18:
;** 467	-----------------------    return bloblen;
           MV      .L1     A12,A4            ; |467| 
;** --------------------------------------------------------------------------*
L55:    

           LDDW    .D2T2   *+SP(16),B11:B10  ; |468| 
||         MV      .L2     B13,B3            ; |468| 
||         MV      .L1X    SP,A31            ; |468| 

           RET     .S2     B3                ; |468| 
||         LDDW    .D1T1   *+A31(8),A11:A10  ; |468| 
||         LDW     .D2T2   *+SP(4),B13       ; |468| 

           LDW     .D2T1   *++SP(24),A12     ; |468| 
	.dwpsn	"SSHDSS.C",468,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |468| 

DW$166	.dwtag  DW_TAG_loop
	.dwattr DW$166, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L53:1:1185758752")
	.dwattr DW$166, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$166, DW_AT_begin_line(0x1d1)
	.dwattr DW$166, DW_AT_end_line(0x1d1)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$32$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$32$E)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$33$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$33$E)
	.dwendtag DW$166


DW$169	.dwtag  DW_TAG_loop
	.dwattr DW$169, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L51:1:1185758752")
	.dwattr DW$169, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$169, DW_AT_begin_line(0x1d0)
	.dwattr DW$169, DW_AT_end_line(0x1d0)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$26$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$26$E)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$27$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$27$E)
	.dwendtag DW$169


DW$172	.dwtag  DW_TAG_loop
	.dwattr DW$172, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L49:1:1185758752")
	.dwattr DW$172, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$172, DW_AT_begin_line(0x1cf)
	.dwattr DW$172, DW_AT_end_line(0x1cf)
DW$173	.dwtag  DW_TAG_loop_range
	.dwattr DW$173, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$20$B)
	.dwattr DW$173, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$20$E)
DW$174	.dwtag  DW_TAG_loop_range
	.dwattr DW$174, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$21$B)
	.dwattr DW$174, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$21$E)
	.dwendtag DW$172


DW$175	.dwtag  DW_TAG_loop
	.dwattr DW$175, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L47:1:1185758752")
	.dwattr DW$175, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$175, DW_AT_begin_line(0x1ce)
	.dwattr DW$175, DW_AT_end_line(0x1ce)
DW$176	.dwtag  DW_TAG_loop_range
	.dwattr DW$176, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$14$B)
	.dwattr DW$176, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$14$E)
DW$177	.dwtag  DW_TAG_loop_range
	.dwattr DW$177, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$15$B)
	.dwattr DW$177, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$15$E)
	.dwendtag DW$175


DW$178	.dwtag  DW_TAG_loop
	.dwattr DW$178, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L45:1:1185758752")
	.dwattr DW$178, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$178, DW_AT_begin_line(0x1cd)
	.dwattr DW$178, DW_AT_end_line(0x1cd)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$8$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$8$E)
DW$180	.dwtag  DW_TAG_loop_range
	.dwattr DW$180, DW_AT_low_pc(DW$L$_dss_openssh_fmtkey$9$B)
	.dwattr DW$180, DW_AT_high_pc(DW$L$_dss_openssh_fmtkey$9$E)
	.dwendtag DW$178

	.dwattr DW$162, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$162, DW_AT_end_line(0x1d4)
	.dwattr DW$162, DW_AT_end_column(0x01)
	.dwendtag DW$162

	.sect	".text"

DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_openssh_createkey"), DW_AT_symbol_name("_dss_openssh_createkey")
	.dwattr DW$181, DW_AT_low_pc(_dss_openssh_createkey)
	.dwattr DW$181, DW_AT_high_pc(0x00)
	.dwattr DW$181, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$181, DW_AT_begin_line(0x19e)
	.dwattr DW$181, DW_AT_begin_column(0x0e)
	.dwattr DW$181, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$181, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",415,1

;******************************************************************************
;* FUNCTION NAME: _dss_openssh_createkey                                      *
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
_dss_openssh_createkey:
;** --------------------------------------------------------------------------*
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blob"), DW_AT_symbol_name("_blob")
	.dwattr DW$182, DW_AT_type(*DW$T$46)
	.dwattr DW$182, DW_AT_location[DW_OP_reg4]
DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$183, DW_AT_type(*DW$T$41)
	.dwattr DW$183, DW_AT_location[DW_OP_reg20]
;** 419	-----------------------    dss = (struct _dss_key *)safemalloc(1u, 20u);
;** 420	-----------------------    if ( dss ) goto g3;
;** 421	-----------------------    return NULL;
           CALL    .S1     _safemalloc       ; |419| 
           STW     .D2T1   A14,*SP--(32)     ; |415| 
           STDW    .D2T2   B11:B10,*+SP(24)  ; |415| 
           STDW    .D2T1   A11:A10,*+SP(8)   ; |415| 

           MV      .L1X    B4,A10            ; |415| 
||         MVK     .S2     0x14,B4           ; |419| 

           ADDKPC  .S2     RL129,B3,0        ; |419| 
||         MVK     .L1     0x1,A4            ; |419| 
||         MV      .S1     A4,A11            ; |415| 
||         STDW    .D2T1   A13:A12,*+SP(16)  ; |415| 
||         MV      .L2     B3,B11            ; |415| 

RL129:     ; CALL OCCURS {_safemalloc}       ; |419| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |419| 
||         MV      .S1     A4,A12            ; |419| 
||         MV      .D1     A11,A4            ; |423| 
||         MV      .L2X    A10,B4            ; |423| 
||         ZERO    .S2     B10               ; |429| 

   [!A0]   B       .S1     L56               ; |421| 
||         ZERO    .L1     A13               ; |421| 

   [ A0]   CALL    .S1     _getmp            ; |423| 
           NOP             4
           ; BRANCHCC OCCURS {L56}           ; |421| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 423	-----------------------    (*dss).p = getmp((char ** const)blob, len);
;** 424	-----------------------    (*dss).q = getmp((char ** const)blob, len);
;** 425	-----------------------    (*dss).g = getmp((char ** const)blob, len);
;** 426	-----------------------    (*dss).y = getmp((char ** const)blob, len);
;** 427	-----------------------    (*dss).x = getmp((char ** const)blob, len);
;** 429	-----------------------    C$1 = (*dss).p;
;** 429	-----------------------    if ( !((C$1 == NULL)|((*dss).q == NULL)|((*dss).g == NULL)|((*dss).y == NULL)|((*dss).x == NULL)) ) goto g5;
           ADDKPC  .S2     RL130,B3,0        ; |423| 
RL130:     ; CALL OCCURS {_getmp}            ; |423| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _getmp            ; |424| 
           ADDKPC  .S2     RL131,B3,0        ; |424| 
           MV      .L2X    A10,B4            ; |424| 
           NOP             1
           MV      .L1     A12,A14           ; |424| 

           MV      .L1     A11,A4            ; |424| 
||         STW     .D1T1   A4,*A14           ; |423| 

RL131:     ; CALL OCCURS {_getmp}            ; |424| 
           CALL    .S1     _getmp            ; |425| 
           MV      .L2X    A10,B4            ; |425| 
           ADDKPC  .S2     RL132,B3,1        ; |425| 
           MV      .L2X    A4,B5             ; |424| 

           STW     .D1T2   B5,*+A14(4)       ; |424| 
||         MV      .L1     A11,A4            ; |425| 

RL132:     ; CALL OCCURS {_getmp}            ; |425| 
           CALL    .S1     _getmp            ; |426| 
           MV      .L2X    A10,B4            ; |426| 
           STW     .D1T1   A4,*+A14(8)       ; |425| 
           MV      .L1     A11,A4            ; |426| 
           ADDKPC  .S2     RL133,B3,1        ; |426| 
RL133:     ; CALL OCCURS {_getmp}            ; |426| 
           CALL    .S1     _getmp            ; |427| 
           MV      .L2X    A10,B4            ; |427| 
           STW     .D1T1   A4,*+A14(12)      ; |426| 
           MV      .L1     A11,A4            ; |427| 
           ADDKPC  .S2     RL134,B3,1        ; |427| 
RL134:     ; CALL OCCURS {_getmp}            ; |427| 
;** --------------------------------------------------------------------------*

           LDW     .D1T1   *A14,A0           ; |429| 
||         ZERO    .L2     B4                ; |429| 
||         ZERO    .L1     A3                ; |429| 

           LDW     .D1T2   *+A14(4),B0       ; |429| 
           LDW     .D1T2   *+A14(8),B1       ; |429| 
           LDW     .D1T1   *+A14(12),A2      ; |429| 
           STW     .D1T1   A4,*+A14(16)      ; |427| 

           LDW     .D1T1   *+A14(16),A1      ; |429| 
|| [!A0]   MVK     .L2     0x1,B10           ; |429| 
||         MV      .L1     A0,A4             ; |430| 

   [!B0]   MVK     .L2     0x1,B4            ; |429| 

   [!B1]   MVK     .L1     0x1,A3            ; |429| 
||         OR      .L2     B4,B10,B5         ; |429| 
||         ZERO    .S2     B4                ; |429| 

   [!A2]   MVK     .L2     0x1,B4            ; |429| 

           OR      .L2X    A3,B5,B5          ; |429| 
||         ZERO    .L1     A3                ; |429| 

           OR      .L2     B4,B5,B4          ; |429| 
|| [!A1]   MVK     .L1     0x1,A3            ; |429| 

           NOP             1
           OR      .L1X    A3,B4,A1          ; |429| 

   [!A1]   MV      .L1     A12,A13
|| [!A1]   B       .S1     L56               ; |429| 

   [ A1]   CALL    .S1     _safefree         ; |430| 
           NOP             4
           ; BRANCHCC OCCURS {L56}           ; |429| 
;** --------------------------------------------------------------------------*
;** 430	-----------------------    safefree(C$1);
;** 431	-----------------------    safefree((*dss).q);
;** 432	-----------------------    safefree((*dss).g);
;** 433	-----------------------    safefree((*dss).y);
;** 434	-----------------------    safefree((*dss).x);
;** 435	-----------------------    safefree((void *)dss);
;** 436	-----------------------    return NULL;
           ADDKPC  .S2     RL135,B3,0        ; |430| 
RL135:     ; CALL OCCURS {_safefree}         ; |430| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _safefree         ; |431| 
           LDW     .D1T1   *+A12(4),A4       ; |431| 
           ADDKPC  .S2     RL136,B3,3        ; |431| 
RL136:     ; CALL OCCURS {_safefree}         ; |431| 
           CALL    .S1     _safefree         ; |432| 
           LDW     .D1T1   *+A12(8),A4       ; |432| 
           ADDKPC  .S2     RL137,B3,3        ; |432| 
RL137:     ; CALL OCCURS {_safefree}         ; |432| 

           CALL    .S1     _safefree         ; |433| 
||         MV      .L1     A12,A10           ; |432| 

           LDW     .D1T1   *+A10(12),A4      ; |433| 
           ADDKPC  .S2     RL138,B3,3        ; |433| 
RL138:     ; CALL OCCURS {_safefree}         ; |433| 
           CALL    .S1     _safefree         ; |434| 
           LDW     .D1T1   *+A12(16),A4      ; |434| 
           ADDKPC  .S2     RL139,B3,3        ; |434| 
RL139:     ; CALL OCCURS {_safefree}         ; |434| 
           CALL    .S1     _safefree         ; |435| 
           ADDKPC  .S2     RL140,B3,3        ; |435| 
           MV      .L1     A12,A4            ; |435| 
RL140:     ; CALL OCCURS {_safefree}         ; |435| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 439	-----------------------    return (void *)dss;
           LDDW    .D2T1   *+SP(8),A11:A10   ; |440| 

           LDDW    .D2T2   *+SP(24),B11:B10  ; |440| 
||         MV      .L2     B11,B3            ; |440| 

           RET     .S2     B3                ; |440| 
||         LDDW    .D2T1   *+SP(16),A13:A12  ; |440| 
||         MV      .L1     A13,A4            ; |439| 

           LDW     .D2T1   *++SP(32),A14     ; |440| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |440| 
;** --------------------------------------------------------------------------*
L56:    
           LDDW    .D2T1   *+SP(8),A11:A10   ; |440| 

           LDDW    .D2T2   *+SP(24),B11:B10  ; |440| 
||         MV      .L2     B11,B3            ; |440| 

           RET     .S2     B3                ; |440| 
||         LDDW    .D2T1   *+SP(16),A13:A12  ; |440| 
||         MV      .L1     A13,A4            ; |439| 

           LDW     .D2T1   *++SP(32),A14     ; |440| 
	.dwpsn	"SSHDSS.C",440,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |440| 
	.dwattr DW$181, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$181, DW_AT_end_line(0x1b8)
	.dwattr DW$181, DW_AT_end_column(0x01)
	.dwendtag DW$181

	.sect	".text"

DW$184	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_fmtkey"), DW_AT_symbol_name("_dss_fmtkey")
	.dwattr DW$184, DW_AT_low_pc(_dss_fmtkey)
	.dwattr DW$184, DW_AT_high_pc(0x00)
	.dwattr DW$184, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$184, DW_AT_begin_line(0x7b)
	.dwattr DW$184, DW_AT_begin_column(0x0e)
	.dwattr DW$184, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr DW$184, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",124,1
DW$185	.dwtag  DW_TAG_variable, DW_AT_name("hex"), DW_AT_symbol_name("_hex$1")
	.dwattr DW$185, DW_AT_type(*DW$T$164)
	.dwattr DW$185, DW_AT_location[DW_OP_addr _hex$1]

;******************************************************************************
;* FUNCTION NAME: _dss_fmtkey                                                 *
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
;*   Local Frame Size  : 8 Args + 0 Auto + 40 Save = 48 byte                  *
;******************************************************************************
_dss_fmtkey:
;** --------------------------------------------------------------------------*
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$186, DW_AT_type(*DW$T$3)
	.dwattr DW$186, DW_AT_location[DW_OP_reg4]
;** 125	-----------------------    dss = (struct _dss_key *)key;
;** 129	-----------------------    C$14 = (*dss).p;
;** 129	-----------------------    if ( C$14 == NULL ) goto g3;

           MV      .L1X    SP,A31            ; |124| 
||         STW     .D2T1   A14,*SP--(48)     ; |124| 

           STDW    .D1T1   A13:A12,*-A31(24)
||         MV      .L1     A4,A12            ; |124| 
||         STW     .D2T2   B3,*+SP(12)

           LDW     .D1T1   *A12,A0           ; |129| 
||         STDW    .D2T2   B11:B10,*+SP(32)

           NOP             2
           STDW    .D1T1   A11:A10,*-A31(32)
           STDW    .D2T2   B13:B12,*+SP(40)

           MV      .L1     A0,A4             ; |132| 
|| [!A0]   B       .S1     L57               ; |129| 

   [ A0]   CALL    .S1     _bignum_bitcount  ; |132| 
           NOP             4
           ; BRANCHCC OCCURS {L57}           ; |129| 
;** --------------------------------------------------------------------------*
;** 132	-----------------------    len = (bignum_bitcount(C$14)+15)*4/16+13;
;** 133	-----------------------    len += (bignum_bitcount((*dss).q)+15)*4/16;
;** 134	-----------------------    len += (bignum_bitcount((*dss).g)+15)*4/16;
;** 135	-----------------------    len += (bignum_bitcount((*dss).y)+15)*4/16;
;** 136	-----------------------    p = safemalloc((unsigned)len, 1u);
;** 137	-----------------------    if ( p ) goto g4;
           ADDKPC  .S2     RL141,B3,0        ; |132| 
RL141:     ; CALL OCCURS {_bignum_bitcount}  ; |132| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_bitcount  ; |133| 

           LDW     .D1T1   *+A12(4),A4       ; |133| 
||         ADD     .L1     15,A4,A11         ; |132| 

           ADDKPC  .S2     RL142,B3,3        ; |133| 
RL142:     ; CALL OCCURS {_bignum_bitcount}  ; |133| 
           CALL    .S1     _bignum_bitcount  ; |134| 

           LDW     .D1T1   *+A12(8),A4       ; |134| 
||         ADD     .L1     15,A4,A10         ; |133| 

           ADDKPC  .S2     RL143,B3,3        ; |134| 
RL143:     ; CALL OCCURS {_bignum_bitcount}  ; |134| 
           CALL    .S1     _bignum_bitcount  ; |135| 

           LDW     .D1T1   *+A12(12),A4      ; |135| 
||         ADD     .L2X    15,A4,B10         ; |134| 

           ADDKPC  .S2     RL144,B3,3        ; |135| 
RL144:     ; CALL OCCURS {_bignum_bitcount}  ; |135| 
           EXT     .S1     A11,2,3,A3        ; |132| 

           ADD     .L2X    15,A4,B30         ; |135| 
||         EXT     .S1     A10,2,3,A5        ; |133| 
||         EXT     .S2     B10,2,3,B6        ; |134| 

           SHRU    .S1     A3,28,A3          ; |132| 
||         SHL     .S2X    A11,2,B4          ; |132| 

           SHL     .S2X    A10,2,B31         ; |133| 
||         SHRU    .S1X    B6,28,A30         ; |134| 

           SHRU    .S1     A5,28,A31         ; |133| 
||         EXT     .S2     B30,2,3,B29       ; |135| 

           SHL     .S1X    B30,2,A3          ; |135| 
||         SHRU    .S2     B29,28,B6         ; |135| 
||         ADD     .L2X    A3,B4,B5          ; |132| 

           CALL    .S1     _safemalloc       ; |136| 
||         SHR     .S2     B5,4,B7           ; |132| 
||         ADD     .L2X    A31,B31,B4        ; |133| 

           ADD     .L2     13,B7,B28         ; |132| 
||         SHR     .S2     B4,4,B5           ; |133| 
||         SHL     .S1X    B10,2,A5          ; |134| 

           ADD     .L2     B5,B28,B5         ; |133| 
||         ADD     .S2X    B6,A3,B4          ; |135| 
||         ADD     .L1     A30,A5,A29        ; |134| 

           SHR     .S2     B4,4,B4           ; |135| 
||         SHR     .S1     A29,4,A3          ; |134| 

           ADD     .L1X    A3,B5,A3          ; |134| 

           ADDKPC  .S2     RL145,B3,0        ; |136| 
||         MVK     .L2     0x1,B4            ; |136| 
||         ADD     .L1X    B4,A3,A4          ; |135| 

RL145:     ; CALL OCCURS {_safemalloc}       ; |136| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |141| 
||         MVKL    .S2     SL6+0,B4          ; |141| 
||         MV      .S1     A4,A10            ; |136| 

   [ A0]   B       .S1     L58               ; |137| 
||         MVKH    .S2     SL6+0,B4          ; |141| 

   [ A0]   CALL    .S1     _sprintf          ; |141| 
           NOP             4
           ; BRANCHCC OCCURS {L58}           ; |137| 
;** --------------------------------------------------------------------------*
L57:    
;**	-----------------------g3:
;** 138	-----------------------    return NULL;
           LDW     .D2T2   *+SP(12),B3       ; |171| 
           MV      .L1X    SP,A31            ; |171| 
           LDDW    .D1T1   *+A31(24),A13:A12 ; |171| 
           LDDW    .D2T2   *+SP(40),B13:B12  ; |171| 
           LDDW    .D1T1   *+A31(16),A11:A10 ; |171| 

           RET     .S2     B3                ; |171| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |171| 

           LDW     .D2T1   *++SP(48),A14     ; |171| 
           NOP             3
           ZERO    .L1     A4                ; |138| 
           ; BRANCH OCCURS {B3}              ; |171| 
;** --------------------------------------------------------------------------*
L58:    
;**	-----------------------g4:
;** 141	-----------------------    pos = sprintf(p, (const char *)"0x");
;** 142	-----------------------    if ( (nibbles = (bignum_bitcount((*dss).p)+3)/4) > 0 ) goto g6;
;** 144	-----------------------    nibbles = 1;
;**	-----------------------g6:
;** 145	-----------------------    i = nibbles;
;**  	-----------------------    U$41 = &p[pos];
;**  	-----------------------    K$40 = &hex[0];
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           STW     .D2T2   B4,*+SP(4)        ; |141| 
||         ADDKPC  .S2     RL146,B3,0        ; |141| 

RL146:     ; CALL OCCURS {_sprintf}          ; |141| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_bitcount  ; |142| 

           LDW     .D1T1   *A12,A4           ; |142| 
||         MV      .L1     A4,A13            ; |141| 
||         ADD     .S1     A4,A10,A14

           ADDKPC  .S2     RL147,B3,3        ; |142| 
RL147:     ; CALL OCCURS {_bignum_bitcount}  ; |142| 
;** --------------------------------------------------------------------------*
           ADD     .L1     3,A4,A4           ; |142| 
           SHR     .S1     A4,1,A3           ; |142| 
           SHRU    .S1     A3,30,A3          ; |142| 
           ADD     .L1     A3,A4,A3          ; |142| 
           SHR     .S1     A3,2,A11          ; |142| 

           CMPGT   .L1     A11,0,A0          ; |142| 
||         MVKL    .S2     _hex$1,B10

	.dwpsn	"SSHDSS.C",145,0

           CALL    .S1     _bignum_byte      ; |146| 
|| [!A0]   MVK     .L1     0x1,A11           ; |144| 
||         MVKH    .S2     _hex$1,B10
||         MV      .L2X    A14,B11           ; Define a twin register
||         MVK     .D2     4,B13             ; |146| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L59:    
DW$L$_dss_fmtkey$9$B:
	.dwpsn	"SSHDSS.C",146,0
;**	-----------------------g7:
;** 146	-----------------------    C$13 = i-1;
;** 146	-----------------------    *U$41++ = K$40[(bignum_byte((*dss).p, C$13>>1)>>(~(i*4)&4)&0xf)];
;** 146	-----------------------    ++pos;
;** 146	-----------------------    if ( i = C$13 ) goto g7;
;** 148	-----------------------    pos += sprintf(U$41, (const char *)",0x");
           LDW     .D1T1   *A12,A4           ; |146| 
           SUB     .L2X    A11,1,B12         ; |146| 
           ADDKPC  .S2     RL148,B3,1        ; |146| 
           SHR     .S2     B12,1,B4          ; |146| 
RL148:     ; CALL OCCURS {_bignum_byte}      ; |146| 
DW$L$_dss_fmtkey$9$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_fmtkey$10$B:

           MV      .L2X    A11,B4            ; |146| 
||         MV      .L1X    B12,A0            ; |146| 
||         ADD     .S1     1,A13,A13         ; |146| 

           SHL     .S2     B4,2,B4           ; |146| 
||         MV      .L1X    B12,A11           ; |146| 

           ANDN    .L2     B13,B4,B4         ; |146| 
           SHR     .S2X    A4,B4,B4          ; |146| 
           AND     .L2     15,B4,B4          ; |146| 

   [ A0]   BNOP    .S1     L59,1             ; |146| 
||         LDB     .D2T2   *+B4[B10],B4      ; |146| 

   [!A0]   CALL    .S1     _sprintf          ; |148| 
           NOP             2
	.dwpsn	"SSHDSS.C",147,0

   [!A0]   MVKL    .S2     SL7+0,B4          ; |148| 
||         STB     .D2T2   B4,*B11++         ; |146| 
|| [ A0]   CALL    .S1     _bignum_byte      ; |146| 

           ; BRANCHCC OCCURS {L59}           ; |146| 
DW$L$_dss_fmtkey$10$E:
;** --------------------------------------------------------------------------*
;** 149	-----------------------    if ( (nibbles = (bignum_bitcount((*dss).q)+3)/4) > 0 ) goto g10;
;** 151	-----------------------    nibbles = 1;
;**	-----------------------g10:
;** 152	-----------------------    i = nibbles;
;**  	-----------------------    U$41 = &p[pos];
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVKH    .S2     SL7+0,B4          ; |148| 

           MV      .L1X    B11,A4            ; |148| 
||         STW     .D2T2   B4,*+SP(4)        ; |148| 
||         ADDKPC  .S2     RL149,B3,0        ; |148| 

RL149:     ; CALL OCCURS {_sprintf}          ; |148| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_bitcount  ; |149| 

           LDW     .D1T1   *+A12(4),A4       ; |149| 
||         ADD     .L1     A4,A13,A13        ; |148| 

           ADDKPC  .S2     RL150,B3,3        ; |149| 
RL150:     ; CALL OCCURS {_bignum_bitcount}  ; |149| 
;** --------------------------------------------------------------------------*
           ADD     .L1     3,A4,A3           ; |149| 
           SHR     .S1     A3,1,A4           ; |149| 
           SHRU    .S1     A4,30,A4          ; |149| 
           ADD     .L1     A4,A3,A3          ; |149| 

           SHR     .S1     A3,2,A11          ; |149| 
||         ADD     .L1     A13,A10,A31

           CMPGT   .L1     A11,0,A0          ; |149| 
	.dwpsn	"SSHDSS.C",152,0

           CALL    .S1     _bignum_byte      ; |153| 
|| [!A0]   MVK     .L1     0x1,A11           ; |151| 
||         MV      .L2X    A31,B11           ; Define a twin register

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L60:    
DW$L$_dss_fmtkey$14$B:
	.dwpsn	"SSHDSS.C",153,0
;**	-----------------------g11:
;** 153	-----------------------    C$12 = i-1;
;** 153	-----------------------    *U$41++ = K$40[(bignum_byte((*dss).q, C$12>>1)>>(~(i*4)&4)&0xf)];
;** 153	-----------------------    ++pos;
;** 153	-----------------------    if ( i = C$12 ) goto g11;
;** 155	-----------------------    pos += sprintf(U$41, (const char *)",0x");
           LDW     .D1T1   *+A12(4),A4       ; |153| 
           SUB     .L2X    A11,1,B12         ; |153| 
           ADDKPC  .S2     RL151,B3,1        ; |153| 
           SHR     .S2     B12,1,B4          ; |153| 
RL151:     ; CALL OCCURS {_bignum_byte}      ; |153| 
DW$L$_dss_fmtkey$14$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_fmtkey$15$B:

           MV      .L2X    A11,B4            ; |153| 
||         MV      .L1X    B12,A0            ; |153| 
||         ADD     .S1     1,A13,A13         ; |153| 

           SHL     .S2     B4,2,B4           ; |153| 
||         MV      .L1X    B12,A11           ; |153| 

           ANDN    .L2     B13,B4,B4         ; |153| 
           SHR     .S2X    A4,B4,B4          ; |153| 
           AND     .L2     15,B4,B4          ; |153| 

   [ A0]   BNOP    .S1     L60,1             ; |153| 
||         LDB     .D2T2   *+B4[B10],B4      ; |153| 

   [!A0]   CALL    .S1     _sprintf          ; |155| 
           NOP             2
	.dwpsn	"SSHDSS.C",154,0

   [!A0]   MVKL    .S2     SL7+0,B4          ; |155| 
||         STB     .D2T2   B4,*B11++         ; |153| 
|| [ A0]   CALL    .S1     _bignum_byte      ; |153| 

           ; BRANCHCC OCCURS {L60}           ; |153| 
DW$L$_dss_fmtkey$15$E:
;** --------------------------------------------------------------------------*
;** 156	-----------------------    if ( (nibbles = (bignum_bitcount((*dss).g)+3)/4) > 0 ) goto g14;
;** 158	-----------------------    nibbles = 1;
;**	-----------------------g14:
;** 159	-----------------------    i = nibbles;
;**  	-----------------------    U$41 = &p[pos];
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVKH    .S2     SL7+0,B4          ; |155| 

           MV      .L1X    B11,A4            ; |155| 
||         STW     .D2T2   B4,*+SP(4)        ; |155| 
||         ADDKPC  .S2     RL152,B3,0        ; |155| 

RL152:     ; CALL OCCURS {_sprintf}          ; |155| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_bitcount  ; |156| 

           LDW     .D1T1   *+A12(8),A4       ; |156| 
||         ADD     .L1     A4,A13,A13        ; |155| 

           ADDKPC  .S2     RL153,B3,3        ; |156| 
RL153:     ; CALL OCCURS {_bignum_bitcount}  ; |156| 
;** --------------------------------------------------------------------------*
           ADD     .L1     3,A4,A3           ; |156| 
           SHR     .S1     A3,1,A4           ; |156| 
           SHRU    .S1     A4,30,A4          ; |156| 
           ADD     .L1     A4,A3,A3          ; |156| 

           SHR     .S1     A3,2,A11          ; |156| 
||         ADD     .L1     A13,A10,A31

           CMPGT   .L1     A11,0,A0          ; |156| 
	.dwpsn	"SSHDSS.C",159,0

           CALL    .S1     _bignum_byte      ; |160| 
|| [!A0]   MVK     .L1     0x1,A11           ; |158| 
||         MV      .L2X    A31,B11           ; Define a twin register

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L61:    
DW$L$_dss_fmtkey$19$B:
	.dwpsn	"SSHDSS.C",160,0
;**	-----------------------g15:
;** 160	-----------------------    C$11 = i-1;
;** 160	-----------------------    *U$41++ = K$40[(bignum_byte((*dss).g, C$11>>1)>>(~(i*4)&4)&0xf)];
;** 160	-----------------------    ++pos;
;** 160	-----------------------    if ( i = C$11 ) goto g15;
;** 162	-----------------------    pos += sprintf(U$41, (const char *)",0x");
           LDW     .D1T1   *+A12(8),A4       ; |160| 
           SUB     .L2X    A11,1,B12         ; |160| 
           ADDKPC  .S2     RL154,B3,1        ; |160| 
           SHR     .S2     B12,1,B4          ; |160| 
RL154:     ; CALL OCCURS {_bignum_byte}      ; |160| 
DW$L$_dss_fmtkey$19$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_fmtkey$20$B:

           MV      .L2X    A11,B4            ; |160| 
||         MV      .L1X    B12,A0            ; |160| 
||         ADD     .S1     1,A13,A13         ; |160| 

           SHL     .S2     B4,2,B4           ; |160| 
||         MV      .L1X    B12,A11           ; |160| 

           ANDN    .L2     B13,B4,B4         ; |160| 
           SHR     .S2X    A4,B4,B4          ; |160| 
           AND     .L2     15,B4,B4          ; |160| 

   [ A0]   BNOP    .S1     L61,1             ; |160| 
||         LDB     .D2T2   *+B4[B10],B4      ; |160| 

   [!A0]   CALL    .S1     _sprintf          ; |162| 
           NOP             2
	.dwpsn	"SSHDSS.C",161,0

   [!A0]   MVKL    .S2     SL7+0,B4          ; |162| 
||         STB     .D2T2   B4,*B11++         ; |160| 
|| [ A0]   CALL    .S1     _bignum_byte      ; |160| 

           ; BRANCHCC OCCURS {L61}           ; |160| 
DW$L$_dss_fmtkey$20$E:
;** --------------------------------------------------------------------------*
;** 163	-----------------------    if ( (nibbles = (bignum_bitcount((*dss).y)+3)/4) > 0 ) goto g18;
;** 165	-----------------------    nibbles = 1;
;**	-----------------------g18:
;** 166	-----------------------    i = nibbles;
;**  	-----------------------    U$41 = &p[pos];
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVKH    .S2     SL7+0,B4          ; |162| 

           MV      .L1X    B11,A4            ; |162| 
||         STW     .D2T2   B4,*+SP(4)        ; |162| 
||         ADDKPC  .S2     RL155,B3,0        ; |162| 

RL155:     ; CALL OCCURS {_sprintf}          ; |162| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_bitcount  ; |163| 

           LDW     .D1T1   *+A12(12),A4      ; |163| 
||         ADD     .L1     A4,A13,A13        ; |162| 

           ADDKPC  .S2     RL156,B3,3        ; |163| 
RL156:     ; CALL OCCURS {_bignum_bitcount}  ; |163| 
;** --------------------------------------------------------------------------*
           ADD     .L1     3,A4,A3           ; |163| 
           SHR     .S1     A3,1,A4           ; |163| 
           SHRU    .S1     A4,30,A4          ; |163| 
           ADD     .L1     A4,A3,A3          ; |163| 

           SHR     .S1     A3,2,A11          ; |163| 
||         ADD     .L1     A13,A10,A31

           CMPGT   .L1     A11,0,A0          ; |163| 
	.dwpsn	"SSHDSS.C",166,0

           CALL    .S1     _bignum_byte      ; |167| 
|| [!A0]   MVK     .L1     0x1,A11           ; |165| 
||         MV      .L2X    A31,B13           ; Define a twin register
||         MVK     .S2     4,B12             ; |167| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L62:    
DW$L$_dss_fmtkey$24$B:
	.dwpsn	"SSHDSS.C",167,0
;**	-----------------------g19:
;** 167	-----------------------    C$10 = i-1;
;** 167	-----------------------    *U$41++ = K$40[(bignum_byte((*dss).y, C$10>>1)>>(~(i*4)&4)&0xf)];
;** 167	-----------------------    if ( i = C$10 ) goto g19;
;** 169	-----------------------    *U$41 = 0;
           LDW     .D1T1   *+A12(12),A4      ; |167| 
           SUB     .L2X    A11,1,B11         ; |167| 
           ADDKPC  .S2     RL157,B3,1        ; |167| 
           SHR     .S2     B11,1,B4          ; |167| 
RL157:     ; CALL OCCURS {_bignum_byte}      ; |167| 
DW$L$_dss_fmtkey$24$E:
;** --------------------------------------------------------------------------*
DW$L$_dss_fmtkey$25$B:

           MV      .L2X    A11,B4            ; |167| 
||         MV      .L1X    B11,A0            ; |167| 

           SHL     .S2     B4,2,B4           ; |167| 
||         MV      .L1X    B11,A11           ; |167| 

           ANDN    .L2     B12,B4,B4         ; |167| 
           SHR     .S2X    A4,B4,B4          ; |167| 
           AND     .L2     15,B4,B4          ; |167| 

   [ A0]   BNOP    .S1     L62,4             ; |167| 
||         LDB     .D2T2   *+B4[B10],B4      ; |167| 

	.dwpsn	"SSHDSS.C",168,0

   [ A0]   CALL    .S1     _bignum_byte      ; |167| 
||         STB     .D2T2   B4,*B13++         ; |167| 
|| [!A0]   ZERO    .L2     B4                ; |169| 

           ; BRANCHCC OCCURS {L62}           ; |167| 
DW$L$_dss_fmtkey$25$E:
;** --------------------------------------------------------------------------*
;** 170	-----------------------    return p;

           STB     .D2T2   B4,*B13           ; |169| 
||         MV      .L1X    SP,A31            ; |171| 
||         MV      .S1     A10,A4            ; |169| 

           LDW     .D2T2   *+SP(12),B3       ; |171| 
||         LDDW    .D1T1   *+A31(24),A13:A12 ; |171| 

           LDDW    .D2T2   *+SP(40),B13:B12  ; |171| 
           LDDW    .D1T1   *+A31(16),A11:A10 ; |171| 
           LDDW    .D2T2   *+SP(32),B11:B10  ; |171| 
           LDW     .D2T1   *++SP(48),A14     ; |171| 
	.dwpsn	"SSHDSS.C",171,1
           RETNOP  .S2     B3,5              ; |171| 
           ; BRANCH OCCURS {B3}              ; |171| 

DW$187	.dwtag  DW_TAG_loop
	.dwattr DW$187, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L62:1:1185758752")
	.dwattr DW$187, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$187, DW_AT_begin_line(0xa6)
	.dwattr DW$187, DW_AT_end_line(0xa8)
DW$188	.dwtag  DW_TAG_loop_range
	.dwattr DW$188, DW_AT_low_pc(DW$L$_dss_fmtkey$24$B)
	.dwattr DW$188, DW_AT_high_pc(DW$L$_dss_fmtkey$24$E)
DW$189	.dwtag  DW_TAG_loop_range
	.dwattr DW$189, DW_AT_low_pc(DW$L$_dss_fmtkey$25$B)
	.dwattr DW$189, DW_AT_high_pc(DW$L$_dss_fmtkey$25$E)
	.dwendtag DW$187


DW$190	.dwtag  DW_TAG_loop
	.dwattr DW$190, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L61:1:1185758752")
	.dwattr DW$190, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$190, DW_AT_begin_line(0x9f)
	.dwattr DW$190, DW_AT_end_line(0xa1)
DW$191	.dwtag  DW_TAG_loop_range
	.dwattr DW$191, DW_AT_low_pc(DW$L$_dss_fmtkey$19$B)
	.dwattr DW$191, DW_AT_high_pc(DW$L$_dss_fmtkey$19$E)
DW$192	.dwtag  DW_TAG_loop_range
	.dwattr DW$192, DW_AT_low_pc(DW$L$_dss_fmtkey$20$B)
	.dwattr DW$192, DW_AT_high_pc(DW$L$_dss_fmtkey$20$E)
	.dwendtag DW$190


DW$193	.dwtag  DW_TAG_loop
	.dwattr DW$193, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L60:1:1185758752")
	.dwattr DW$193, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$193, DW_AT_begin_line(0x98)
	.dwattr DW$193, DW_AT_end_line(0x9a)
DW$194	.dwtag  DW_TAG_loop_range
	.dwattr DW$194, DW_AT_low_pc(DW$L$_dss_fmtkey$14$B)
	.dwattr DW$194, DW_AT_high_pc(DW$L$_dss_fmtkey$14$E)
DW$195	.dwtag  DW_TAG_loop_range
	.dwattr DW$195, DW_AT_low_pc(DW$L$_dss_fmtkey$15$B)
	.dwattr DW$195, DW_AT_high_pc(DW$L$_dss_fmtkey$15$E)
	.dwendtag DW$193


DW$196	.dwtag  DW_TAG_loop
	.dwattr DW$196, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L59:1:1185758752")
	.dwattr DW$196, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$196, DW_AT_begin_line(0x91)
	.dwattr DW$196, DW_AT_end_line(0x93)
DW$197	.dwtag  DW_TAG_loop_range
	.dwattr DW$197, DW_AT_low_pc(DW$L$_dss_fmtkey$9$B)
	.dwattr DW$197, DW_AT_high_pc(DW$L$_dss_fmtkey$9$E)
DW$198	.dwtag  DW_TAG_loop_range
	.dwattr DW$198, DW_AT_low_pc(DW$L$_dss_fmtkey$10$B)
	.dwattr DW$198, DW_AT_high_pc(DW$L$_dss_fmtkey$10$E)
	.dwendtag DW$196

	.dwattr DW$184, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$184, DW_AT_end_line(0xab)
	.dwattr DW$184, DW_AT_end_column(0x01)
	.dwendtag DW$184

	.sect	".text"

DW$199	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_fingerprint"), DW_AT_symbol_name("_dss_fingerprint")
	.dwattr DW$199, DW_AT_low_pc(_dss_fingerprint)
	.dwattr DW$199, DW_AT_high_pc(0x00)
	.dwattr DW$199, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$199, DW_AT_begin_line(0xad)
	.dwattr DW$199, DW_AT_begin_column(0x0e)
	.dwattr DW$199, DW_AT_frame_base[DW_OP_breg31 208]
	.dwattr DW$199, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",174,1

;******************************************************************************
;* FUNCTION NAME: _dss_fingerprint                                            *
;*                                                                            *
;*   Regs Modified     : A4,SP                                                *
;*   Regs Used         : A4,B3,SP                                             *
;*   Local Frame Size  : 0 Args + 204 Auto + 0 Save = 204 byte                *
;******************************************************************************
_dss_fingerprint:
;** --------------------------------------------------------------------------*
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$200, DW_AT_type(*DW$T$3)
	.dwattr DW$200, DW_AT_location[DW_OP_reg4]
;** 182	-----------------------    return NULL;
           RETNOP  .S2     B3,3              ; |210| 
           ADDK    .S2     -208,SP           ; |174| 
	.dwpsn	"SSHDSS.C",210,1

           ADDK    .S2     208,SP            ; |210| 
||         ZERO    .L1     A4                ; |182| 

           ; BRANCH OCCURS {B3}              ; |210| 
	.dwattr DW$199, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$199, DW_AT_end_line(0xd2)
	.dwattr DW$199, DW_AT_end_column(0x01)
	.dwendtag DW$199

	.sect	".text"

DW$201	.dwtag  DW_TAG_subprogram, DW_AT_name("sha_mpint"), DW_AT_symbol_name("_sha_mpint")
	.dwattr DW$201, DW_AT_low_pc(_sha_mpint)
	.dwattr DW$201, DW_AT_high_pc(0x00)
	.dwattr DW$201, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$201, DW_AT_begin_line(0x0c)
	.dwattr DW$201, DW_AT_begin_column(0x0d)
	.dwattr DW$201, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$201, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",13,1

;******************************************************************************
;* FUNCTION NAME: _sha_mpint                                                  *
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
_sha_mpint:
;** --------------------------------------------------------------------------*
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$202, DW_AT_type(*DW$T$94)
	.dwattr DW$202, DW_AT_location[DW_OP_reg4]
DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$203, DW_AT_type(*DW$T$58)
	.dwattr DW$203, DW_AT_location[DW_OP_reg20]
;** 16	-----------------------    len = (bignum_bitcount(b)+8)/8;
;** 17	-----------------------    lenbuf[0] = len>>24;
;** 17	-----------------------    lenbuf[1] = len>>16;
;** 17	-----------------------    lenbuf[2] = len>>8;
;** 17	-----------------------    lenbuf[3] = len;
;** 18	-----------------------    SHA_Bytes(s, &lenbuf, 4);
;** 19	-----------------------    if ( (--len) < 0 ) goto g4;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _bignum_bitcount  ; |16| 
           NOP             2
           STW     .D2T1   A12,*SP--(32)     ; |13| 

           STDW    .D2T2   B11:B10,*+SP(24)  ; |13| 
||         MV      .L1X    B4,A12            ; |13| 

           ADDKPC  .S2     RL158,B3,0        ; |16| 
||         MV      .L1X    B4,A4             ; |13| 
||         MV      .S1     A4,A11            ; |13| 
||         STDW    .D2T1   A11:A10,*+SP(16)  ; |13| 
||         MV      .L2     B3,B11            ; |13| 

RL158:     ; CALL OCCURS {_bignum_bitcount}  ; |16| 
;** --------------------------------------------------------------------------*
           ADD     .L1     8,A4,A3           ; |16| 
           SHR     .S1     A3,2,A4           ; |16| 
           SHRU    .S1     A4,29,A4          ; |16| 
           ADD     .L1     A4,A3,A3          ; |16| 

           CALL    .S2     _SHA_Bytes        ; |18| 
||         SHR     .S1     A3,3,A10          ; |16| 

           SHR     .S1     A10,24,A3         ; |17| 

           STB     .D2T1   A3,*+SP(8)        ; |17| 
||         SHR     .S2X    A10,16,B4         ; |17| 

           STB     .D2T2   B4,*+SP(9)        ; |17| 

           STB     .D2T1   A10,*+SP(11)      ; |17| 
||         SHR     .S1     A10,8,A3          ; |17| 

           ADDKPC  .S2     RL159,B3,0        ; |18| 
||         STB     .D2T1   A3,*+SP(10)       ; |17| 
||         ADD     .L2     8,SP,B4           ; |18| 
||         MV      .L1     A11,A4            ; |18| 
||         MVK     .S1     0x4,A6            ; |18| 

RL159:     ; CALL OCCURS {_SHA_Bytes}        ; |18| 
;** --------------------------------------------------------------------------*
           CMPLT   .L1     A10,1,A0          ; |19| 
   [ A0]   BNOP    .S1     L64,4             ; |19| 
           SUB     .L2X    A10,1,B10         ; |19| 
           ; BRANCHCC OCCURS {L64}           ; |19| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_byte      ; |20| 
	.dwpsn	"SSHDSS.C",19,0
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L63:    
DW$L$_sha_mpint$5$B:
;**	-----------------------g3:
;** 20	-----------------------    lenbuf[0] = bignum_byte(b, len);
;** 21	-----------------------    SHA_Bytes(s, &lenbuf, 1);
;** 19	-----------------------    if ( (--len) >= 0 ) goto g3;

           MV      .L2     B10,B4            ; |20| 
||         MV      .L1     A12,A4            ; |20| 
||         ADDKPC  .S2     RL160,B3,0        ; |20| 

RL160:     ; CALL OCCURS {_bignum_byte}      ; |20| 
DW$L$_sha_mpint$5$E:
;** --------------------------------------------------------------------------*
DW$L$_sha_mpint$6$B:
           CALL    .S1     _SHA_Bytes        ; |21| 
           ADDKPC  .S2     RL161,B3,0        ; |21| 
           MVK     .S1     0x1,A6            ; |21| 
           ADD     .L2     8,SP,B4           ; |21| 
           STB     .D2T1   A4,*+SP(8)        ; |20| 
           MV      .L1     A11,A4            ; |21| 
RL161:     ; CALL OCCURS {_SHA_Bytes}        ; |21| 
DW$L$_sha_mpint$6$E:
;** --------------------------------------------------------------------------*
DW$L$_sha_mpint$7$B:

           CMPLT   .L2     B10,1,B0          ; |19| 
||         SUB     .S2     B10,1,B10         ; |19| 

   [!B0]   B       .S1     L63               ; |19| 
   [!B0]   CALL    .S1     _bignum_byte      ; |20| 
	.dwpsn	"SSHDSS.C",22,0
           NOP             4
           ; BRANCHCC OCCURS {L63}           ; |19| 
DW$L$_sha_mpint$7$E:
;** --------------------------------------------------------------------------*
L64:    
;**	-----------------------g4:
;** 23	-----------------------    memset(&lenbuf, 0, 4u);
;** 23	-----------------------    return;
           CALL    .S1     _memset           ; |23| 
           ADDKPC  .S2     RL162,B3,1        ; |23| 
           MVK     .L1     0x4,A6            ; |23| 
           ZERO    .L2     B4                ; |23| 
           ADD     .S1X    8,SP,A4           ; |23| 
RL162:     ; CALL OCCURS {_memset}           ; |23| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(16),A11:A10  ; |24| 
||         MV      .L2     B11,B3            ; |24| 

           RET     .S2     B3                ; |24| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |24| 

           LDW     .D2T1   *++SP(32),A12     ; |24| 
	.dwpsn	"SSHDSS.C",24,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |24| 

DW$204	.dwtag  DW_TAG_loop
	.dwattr DW$204, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L63:1:1185758752")
	.dwattr DW$204, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$204, DW_AT_begin_line(0x13)
	.dwattr DW$204, DW_AT_end_line(0x16)
DW$205	.dwtag  DW_TAG_loop_range
	.dwattr DW$205, DW_AT_low_pc(DW$L$_sha_mpint$5$B)
	.dwattr DW$205, DW_AT_high_pc(DW$L$_sha_mpint$5$E)
DW$206	.dwtag  DW_TAG_loop_range
	.dwattr DW$206, DW_AT_low_pc(DW$L$_sha_mpint$6$B)
	.dwattr DW$206, DW_AT_high_pc(DW$L$_sha_mpint$6$E)
DW$207	.dwtag  DW_TAG_loop_range
	.dwattr DW$207, DW_AT_low_pc(DW$L$_sha_mpint$7$B)
	.dwattr DW$207, DW_AT_high_pc(DW$L$_sha_mpint$7$E)
	.dwendtag DW$204

	.dwattr DW$201, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$201, DW_AT_end_line(0x18)
	.dwattr DW$201, DW_AT_end_column(0x01)
	.dwendtag DW$201

	.sect	".text"

DW$208	.dwtag  DW_TAG_subprogram, DW_AT_name("dss_createkey"), DW_AT_symbol_name("_dss_createkey")
	.dwattr DW$208, DW_AT_low_pc(_dss_createkey)
	.dwattr DW$208, DW_AT_high_pc(0x00)
	.dwattr DW$208, DW_AT_begin_file("SSHDSS.C")
	.dwattr DW$208, DW_AT_begin_line(0x172)
	.dwattr DW$208, DW_AT_begin_column(0x0e)
	.dwattr DW$208, DW_AT_frame_base[DW_OP_breg31 168]
	.dwattr DW$208, DW_AT_skeletal(0x01)
	.dwpsn	"SSHDSS.C",372,1

;******************************************************************************
;* FUNCTION NAME: _dss_createkey                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A14,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A14,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 136 Auto + 32 Save = 168 byte               *
;******************************************************************************
_dss_createkey:
;** --------------------------------------------------------------------------*
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pub_blob"), DW_AT_symbol_name("_pub_blob")
	.dwattr DW$209, DW_AT_type(*DW$T$40)
	.dwattr DW$209, DW_AT_location[DW_OP_reg4]
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pub_len"), DW_AT_symbol_name("_pub_len")
	.dwattr DW$210, DW_AT_type(*DW$T$10)
	.dwattr DW$210, DW_AT_location[DW_OP_reg20]
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_name("priv_blob"), DW_AT_symbol_name("_priv_blob")
	.dwattr DW$211, DW_AT_type(*DW$T$40)
	.dwattr DW$211, DW_AT_location[DW_OP_reg6]
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_name("priv_len"), DW_AT_symbol_name("_priv_len")
	.dwattr DW$212, DW_AT_type(*DW$T$10)
	.dwattr DW$212, DW_AT_location[DW_OP_reg22]
;** 372	-----------------------    priv_len = priv_len;
;** 374	-----------------------    pb = (char * const)priv_blob;
;** 381	-----------------------    dss = (struct _dss_key *)dss_newkey((char * const)pub_blob, pub_len);
;** 382	-----------------------    (*dss).x = getmp(&pb, &priv_len);
;** 387	-----------------------    hashlen = (-1);
;** 388	-----------------------    getstring(&pb, &priv_len, &hash, &hashlen);
;** 389	-----------------------    if ( hashlen != 20 ) goto g7;

           CALL    .S1     _dss_newkey       ; |381| 
||         ADDK    .S2     -168,SP           ; |372| 
||         MV      .L1X    SP,A31            ; |372| 

           STW     .D2T1   A6,*+SP(12)       ; |374| 
           STW     .D2T1   A12,*+SP(168)
           STDW    .D2T2   B13:B12,*+SP(160)

           STDW    .D2T2   B11:B10,*+SP(152)
||         STW     .D1T1   A14,*-A31(28)

           ADDKPC  .S2     RL163,B3,0        ; |381| 
||         MV      .L1X    B3,A14
||         STDW    .D1T1   A11:A10,*-A31(24)
||         STW     .D2T2   B6,*+SP(16)       ; |372| 

RL163:     ; CALL OCCURS {_dss_newkey}       ; |381| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _getmp            ; |382| 
           ADDKPC  .S2     RL164,B3,1        ; |382| 
           ADD     .D2     SP,16,B4          ; |382| 
           MV      .S1     A4,A11            ; |381| 
           ADD     .L1X    12,SP,A4          ; |382| 
RL164:     ; CALL OCCURS {_getmp}            ; |382| 
           CALL    .S1     _getstring        ; |388| 
           MVK     .L2     -1,B5             ; |387| 
           ADD     .L1X    8,SP,A6           ; |388| 
           ADD     .D2     SP,16,B4          ; |388| 
           ADD     .L2     4,SP,B6           ; |388| 

           STW     .D1T1   A4,*+A11(16)      ; |382| 
||         STW     .D2T2   B5,*+SP(4)        ; |387| 
||         ADDKPC  .S2     RL165,B3,0        ; |388| 
||         ADD     .L1X    12,SP,A4          ; |388| 

RL165:     ; CALL OCCURS {_getstring}        ; |388| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(4),B4        ; |389| 
           MVK     .S2     20,B6             ; |389| 
           ADD     .D2     SP,20,B10         ; |393| 
           ADD     .D2     SP,20,B12         ; |391| 
           ADD     .D2     SP,20,B13         ; |394| 
           CMPEQ   .L2     B4,B6,B0          ; |389| 
   [!B0]   B       .S1     L68               ; |389| 
           ADD     .D2     SP,20,B5          ; |390| 
           ADD     .D2     SP,20,B11         ; |392| 
           MVK     .S1     119,A3            ; |246| 
           ADD     .L1X    A3,SP,A10         ; |246| 

           MV      .L1X    B5,A4             ; |390| 
||         MVK     .S1     0x14,A12          ; |249| 

           ; BRANCHCC OCCURS {L68}           ; |389| 
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
L65:    ; PIPED LOOP PROLOG
;** 390	-----------------------    SHA_Init(&s);
;** 391	-----------------------    sha_mpint(&s, (*dss).p);
;** 392	-----------------------    sha_mpint(&s, (*dss).q);
;** 393	-----------------------    sha_mpint(&s, (*dss).g);
;** 394	-----------------------    SHA_Final(&s, &digest);
;** 243	-----------------------    mem1 = *&hash-1;  // [6]
;** 246	-----------------------    mem2 = &digest[-1];  // [6]
;** 249	-----------------------    L$1 = 20;  // [6]
;**  	-----------------------    #pragma MUST_ITERATE(1, 20, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g3:
;** 249	-----------------------    cp = *(++mem1);  // [6]
;** 249	-----------------------    U$37 = *(++mem2);  // [6]
;** 249	-----------------------    if ( cp != U$37 ) goto g5;  // [6]
;** 249	-----------------------    if ( --L$1 ) goto g3;  // [6]
           CALL    .S2     _SHA_Init         ; |390| 
           NOP             4
           ADDKPC  .S2     RL166,B3,0        ; |390| 
RL166:     ; CALL OCCURS {_SHA_Init}         ; |390| 
           CALL    .S2     _sha_mpint        ; |391| 
           LDW     .D1T2   *A11,B4           ; |391| 
           NOP             3

           MV      .L1X    B12,A4            ; |391| 
||         ADDKPC  .S2     RL167,B3,0        ; |391| 

RL167:     ; CALL OCCURS {_sha_mpint}        ; |391| 
           CALL    .S2     _sha_mpint        ; |392| 
           LDW     .D1T2   *+A11(4),B4       ; |392| 
           NOP             3

           MV      .L1X    B11,A4            ; |392| 
||         ADDKPC  .S2     RL168,B3,0        ; |392| 

RL168:     ; CALL OCCURS {_sha_mpint}        ; |392| 
           CALL    .S2     _sha_mpint        ; |393| 
           LDW     .D1T2   *+A11(8),B4       ; |393| 
           NOP             3

           MV      .L1X    B10,A4            ; |393| 
||         ADDKPC  .S2     RL169,B3,0        ; |393| 

RL169:     ; CALL OCCURS {_sha_mpint}        ; |393| 
           CALL    .S2     _SHA_Final        ; |394| 
           NOP             4

           MV      .L1X    B13,A4            ; |394| 
||         ADDAD   .D2     SP,15,B4          ; |394| 
||         ADDKPC  .S2     RL170,B3,0        ; |394| 

RL170:     ; CALL OCCURS {_SHA_Final}        ; |394| 
           NOP             1
           LDW     .D2T2   *+SP(8),B4        ; |243| 
           NOP             4

           MV      .L1     A10,A4
||         SUB     .L2     B4,1,B4           ; |243| 

           LDBU    .D1T1   *++A4,A3          ; |249| (P) <0,0> 
||         LDBU    .D2T2   *++B4,B6          ; |249| (P) <0,0> 

           NOP             2
           MVC     .S2     CSR,B7
           AND     .L2     -2,B7,B8
	.dwpsn	"C:/CCStudio_v3.1/C6000/cgtools/include/string.h",249,0

           MV      .L2X    A12,B5
||         MVC     .S2     B8,CSR            ; interrupts off
||         CMPEQ   .L1X    B6,A3,A0          ; |249| (P) <0,5>  ^ 

;** --------------------------------------------------------------------------*
L66:    ; PIPED LOOP KERNEL
DW$L$_dss_createkey$6$B:

           ZERO    .L2     B0                ; |249| <0,6>  ^ 
|| [ A0]   SUB     .S2     B5,1,B5           ; |249| <0,6>  ^ 

   [ A0]   MV      .L2     B5,B0             ; |249| <0,7>  ^ 

   [ B0]   BNOP    .S1     L66,4             ; |249| <0,8> 
|| [ B0]   LDBU    .D2T2   *++B4,B6          ; |249| <1,0> 
|| [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| <1,0> 

           CMPEQ   .L1X    B6,A3,A0          ; |249| <1,5>  ^ 
DW$L$_dss_createkey$6$E:
;** --------------------------------------------------------------------------*
L67:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 250	-----------------------    if ( cp == U$37 ) goto g7;  // [6]

           CMPEQ   .L2X    B6,A3,B0          ; |250| 
||         ZERO    .L1     A12               ; |120| 
||         MVC     .S2     B7,CSR            ; interrupts on

   [ B0]   B       .S1     L69               ; |250| 
|| [ B0]   LDW     .D1T2   *+A11(16),B4      ; |404| 

   [ B0]   CALL    .S1     _modpow           ; |404| 
|| [ B0]   LDW     .D1T1   *A11,A6           ; |404| 

   [!B0]   CALL    .S1     _freebn           ; |116| 
|| [ B0]   LDW     .D1T1   *+A11(8),A4       ; |404| 

   [!B0]   LDW     .D1T1   *A11,A4           ; |116| 
           NOP             2
           ; BRANCHCC OCCURS {L69}           ; |250| 
;** --------------------------------------------------------------------------*
;** 116	-----------------------    freebn((*(struct _dss_key *)(void *)dss).p);  // [36]
;** 117	-----------------------    freebn((*(struct _dss_key *)(void *)dss).q);  // [36]
;** 118	-----------------------    freebn((*(struct _dss_key *)(void *)dss).g);  // [36]
;** 119	-----------------------    freebn((*(struct _dss_key *)(void *)dss).y);  // [36]
;** 120	-----------------------    safefree((struct _dss_key *)(void *)dss);  // [36]
;** 120	-----------------------    return NULL;  // [36]
           ADDKPC  .S2     RL171,B3,1        ; |116| 
RL171:     ; CALL OCCURS {_freebn}           ; |116| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _freebn           ; |117| 
           LDW     .D1T1   *+A11(4),A4       ; |117| 
           ADDKPC  .S2     RL172,B3,3        ; |117| 
RL172:     ; CALL OCCURS {_freebn}           ; |117| 
           CALL    .S1     _freebn           ; |118| 
           LDW     .D1T1   *+A11(8),A4       ; |118| 
           ADDKPC  .S2     RL173,B3,3        ; |118| 
RL173:     ; CALL OCCURS {_freebn}           ; |118| 
           CALL    .S1     _freebn           ; |119| 
           LDW     .D1T1   *+A11(12),A4      ; |119| 
           ADDKPC  .S2     RL174,B3,3        ; |119| 
RL174:     ; CALL OCCURS {_freebn}           ; |119| 
           CALL    .S1     _safefree         ; |120| 
           ADDKPC  .S2     RL175,B3,3        ; |120| 
           MV      .L1     A11,A4            ; |120| 
RL175:     ; CALL OCCURS {_safefree}         ; |120| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T1   *+SP(144),A11:A10 ; |412| 
           LDDW    .D2T2   *+SP(152),B11:B10 ; |412| 

           LDDW    .D2T2   *+SP(160),B13:B12 ; |412| 
||         MV      .L2X    A14,B3            ; |412| 

           RET     .S2     B3                ; |412| 
||         LDW     .D2T1   *+SP(168),A12     ; |412| 
||         MV      .L1     A12,A4            ; |120| 

           LDW     .D2T1   *+SP(140),A14     ; |412| 
           NOP             3
           ADDK    .S2     168,SP            ; |412| 
           ; BRANCH OCCURS {B3}              ; |412| 
;** --------------------------------------------------------------------------*
L68:    
           LDW     .D1T1   *A11,A6           ; |404| 

           CALL    .S1     _modpow           ; |404| 
||         LDW     .D1T2   *+A11(16),B4      ; |404| 

           LDW     .D1T1   *+A11(8),A4       ; |404| 
           NOP             3
;** --------------------------------------------------------------------------*
L69:    
;**	-----------------------g7:
;** 404	-----------------------    ytest = modpow((*dss).g, (*dss).x, (*dss).p);
;** 405	-----------------------    if ( bignum_cmp(ytest, (*dss).y) ) goto g9;
           ADDKPC  .S2     RL176,B3,0        ; |404| 
RL176:     ; CALL OCCURS {_modpow}           ; |404| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_cmp       ; |405| 
           LDW     .D1T2   *+A11(12),B4      ; |405| 
           ADDKPC  .S2     RL177,B3,2        ; |405| 
           MV      .L1     A4,A10            ; |404| 
RL177:     ; CALL OCCURS {_bignum_cmp}       ; |405| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |405| 
||         MV      .S1     A10,A4            ; |409| 
||         MV      .D1     A11,A12           ; |411| 

   [ A0]   B       .S1     L70               ; |405| 
|| [ A0]   LDW     .D1T1   *A11,A4           ; |116| 

   [!A0]   CALL    .S1     _freebn           ; |409| 
   [ A0]   CALL    .S1     _freebn           ; |116| 
           NOP             3
           ; BRANCHCC OCCURS {L70}           ; |405| 
;** --------------------------------------------------------------------------*
;** 409	-----------------------    freebn(ytest);
;** 411	-----------------------    return (void *)dss;
           ADDKPC  .S2     RL178,B3,0        ; |409| 
RL178:     ; CALL OCCURS {_freebn}           ; |409| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T1   *+SP(144),A11:A10 ; |412| 
           LDDW    .D2T2   *+SP(152),B11:B10 ; |412| 

           LDDW    .D2T2   *+SP(160),B13:B12 ; |412| 
||         MV      .L2X    A14,B3            ; |412| 

           RET     .S2     B3                ; |412| 
||         LDW     .D2T1   *+SP(168),A12     ; |412| 
||         MV      .L1     A12,A4            ; |120| 

           LDW     .D2T1   *+SP(140),A14     ; |412| 
           NOP             3
           ADDK    .S2     168,SP            ; |412| 
           ; BRANCH OCCURS {B3}              ; |412| 
;** --------------------------------------------------------------------------*
L70:    
;**	-----------------------g9:
;** 116	-----------------------    freebn((*(struct _dss_key *)(void *)dss).p);  // [36]
;** 117	-----------------------    freebn((*(struct _dss_key *)(void *)dss).q);  // [36]
;** 118	-----------------------    freebn((*(struct _dss_key *)(void *)dss).g);  // [36]
;** 119	-----------------------    freebn((*(struct _dss_key *)(void *)dss).y);  // [36]
;** 120	-----------------------    safefree((struct _dss_key *)(void *)dss);  // [36]
;** 120	-----------------------    return NULL;  // [36]
           ADDKPC  .S2     RL179,B3,1        ; |116| 
RL179:     ; CALL OCCURS {_freebn}           ; |116| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _freebn           ; |117| 
           LDW     .D1T1   *+A11(4),A4       ; |117| 
           ADDKPC  .S2     RL180,B3,3        ; |117| 
RL180:     ; CALL OCCURS {_freebn}           ; |117| 
           CALL    .S1     _freebn           ; |118| 
           LDW     .D1T1   *+A11(8),A4       ; |118| 
           ADDKPC  .S2     RL181,B3,3        ; |118| 
RL181:     ; CALL OCCURS {_freebn}           ; |118| 
           CALL    .S1     _freebn           ; |119| 
           LDW     .D1T1   *+A11(12),A4      ; |119| 
           ADDKPC  .S2     RL182,B3,3        ; |119| 
RL182:     ; CALL OCCURS {_freebn}           ; |119| 
           CALL    .S1     _safefree         ; |120| 
           ADDKPC  .S2     RL183,B3,3        ; |120| 
           MV      .L1     A11,A4            ; |120| 
RL183:     ; CALL OCCURS {_safefree}         ; |120| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T1   *+SP(144),A11:A10 ; |412| 
           LDDW    .D2T2   *+SP(152),B11:B10 ; |412| 

           LDDW    .D2T2   *+SP(160),B13:B12 ; |412| 
||         MV      .L2X    A14,B3            ; |412| 

           RET     .S2     B3                ; |412| 
||         LDW     .D2T1   *+SP(168),A12     ; |412| 

           LDW     .D2T1   *+SP(140),A14     ; |412| 
           NOP             2
           ADDK    .S2     168,SP            ; |412| 
	.dwpsn	"SSHDSS.C",412,1
           ZERO    .L1     A4                ; |120| 
           ; BRANCH OCCURS {B3}              ; |412| 

DW$213	.dwtag  DW_TAG_loop
	.dwattr DW$213, DW_AT_name("D:\pred\dsp\rsalib\SSHDSS.asm:L66:1:1185758752")
	.dwattr DW$213, DW_AT_begin_file("C:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$213, DW_AT_begin_line(0xf9)
	.dwattr DW$213, DW_AT_end_line(0xf9)
DW$214	.dwtag  DW_TAG_loop_range
	.dwattr DW$214, DW_AT_low_pc(DW$L$_dss_createkey$6$B)
	.dwattr DW$214, DW_AT_high_pc(DW$L$_dss_createkey$6$E)
	.dwendtag DW$213

	.dwattr DW$208, DW_AT_end_file("SSHDSS.C")
	.dwattr DW$208, DW_AT_end_line(0x19c)
	.dwattr DW$208, DW_AT_end_column(0x01)
	.dwendtag DW$208

;; Inlined function references:
;; [  6] memcmp
;; [ 31] sha512_mpint
;; [ 34] get160
;; [ 36] dss_freekey
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"ssh-dss",0
SL2:	.string	"dss",0
SL3:	.string	"DSA deterministic k generator",0
SL4:	.string	"Assertion failed, (p == blob + bloblen), file SSHDSS.C, lin"
	.string	"e 341",10,0
SL5:	.string	"Assertion failed, (p == blob + bloblen), file SSHDSS.C, lin"
	.string	"e 365",10,0
SL6:	.string	"0x",0
SL7:	.string	",0x",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_sprintf
	.global	_memset
	.global	_safemalloc
	.global	_safefree
	.global	_SHA_Init
	.global	_SHA_Bytes
	.global	_SHA_Final
	.global	_SHA_Simple
	.global	_SHA512_Init
	.global	_SHA512_Bytes
	.global	_SHA512_Final
	.global	_freebn
	.global	_modpow
	.global	_modmul
	.global	_bignum_from_bytes
	.global	_bignum_bitcount
	.global	_ssh2_bignum_length
	.global	_bignum_byte
	.global	_bigmuladd
	.global	_bigmod
	.global	_modinv
	.global	_bignum_cmp
	.global	_One
	.global	__abort_msg

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$34	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$34


DW$T$44	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$44


DW$T$47	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
DW$222	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$47

DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("Bignum"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)

DW$T$60	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$58)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$60


DW$T$63	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$58)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$62)
DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$63


DW$T$64	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$58)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$58)
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
DW$231	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$66


DW$T$71	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$70)
	.dwendtag DW$T$71


DW$T$72	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$70)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$70)
DW$239	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$70)
	.dwendtag DW$T$74


DW$T$36	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$240	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$36

DW$T$69	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$69, DW_AT_address_class(0x20)

DW$T$88	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$241	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$242	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
DW$243	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$T$90


DW$T$91	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
DW$244	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$245	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$62)
DW$246	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$91


DW$T$92	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
DW$247	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$248	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$T$92


DW$T$95	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$249	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
	.dwendtag DW$T$95


DW$T$97	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$250	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
DW$251	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$252	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$97


DW$T$99	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)
DW$253	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
DW$254	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$99


DW$T$101	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)
DW$255	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$257	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$101


DW$T$105	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$258	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
	.dwendtag DW$T$105


DW$T$107	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
DW$259	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$260	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$261	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$107


DW$T$109	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$262	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$109


DW$T$111	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)
DW$264	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$111


DW$T$113	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$265	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
DW$266	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$113


DW$T$115	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$267	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$268	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$115


DW$T$116	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$269	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
DW$270	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$271	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
DW$272	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$116

DW$T$40	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$40, DW_AT_address_class(0x20)

DW$T$42	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$273	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$274	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$42

DW$T$46	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$46, DW_AT_address_class(0x20)

DW$T$55	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$275	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$276	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$277	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$278	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$55

DW$T$62	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$61)
	.dwattr DW$T$62, DW_AT_address_class(0x20)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$41	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$41, DW_AT_address_class(0x20)

DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$279	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$280	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$281	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$282	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$283	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$284	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$285	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$286	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$287	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$288	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$53


DW$T$145	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$145, DW_AT_language(DW_LANG_C)
DW$289	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$290	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
DW$291	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$145


DW$T$147	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$147, DW_AT_language(DW_LANG_C)
DW$292	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$293	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$294	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$70)
	.dwendtag DW$T$147


DW$T$148	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$148, DW_AT_language(DW_LANG_C)
DW$295	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$148


DW$T$150	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
DW$296	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$297	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$150


DW$T$152	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$152, DW_AT_language(DW_LANG_C)
DW$298	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$299	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$152

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)

DW$T$155	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$70)
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)
DW$300	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
	.dwendtag DW$T$155

DW$T$89	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$89, DW_AT_address_class(0x20)
DW$T$94	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$93)
	.dwattr DW$T$94, DW_AT_address_class(0x20)
DW$T$104	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$103)
	.dwattr DW$T$104, DW_AT_address_class(0x20)
DW$T$33	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$32)
	.dwattr DW$T$33, DW_AT_address_class(0x20)

DW$T$38	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$33)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$301	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$38

DW$T$65	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$33)
	.dwattr DW$T$65, DW_AT_address_class(0x20)

DW$T$162	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$33)
	.dwattr DW$T$162, DW_AT_language(DW_LANG_C)
DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
DW$303	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
	.dwendtag DW$T$162

DW$T$87	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$86)
	.dwattr DW$T$87, DW_AT_address_class(0x20)

DW$T$164	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$86)
	.dwattr DW$T$164, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$164, DW_AT_byte_size(0x11)
DW$304	.dwtag  DW_TAG_subrange_type
	.dwattr DW$304, DW_AT_upper_bound(0x10)
	.dwendtag DW$T$164

DW$T$167	.dwtag  DW_TAG_const_type
	.dwattr DW$T$167, DW_AT_type(*DW$T$57)
DW$T$68	.dwtag  DW_TAG_const_type
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$61	.dwtag  DW_TAG_const_type
	.dwattr DW$T$61, DW_AT_type(*DW$T$6)

DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("MD5Context")
	.dwattr DW$T$24, DW_AT_byte_size(0x5c)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$305, DW_AT_name("core"), DW_AT_symbol_name("_core")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$306, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$307, DW_AT_name("blkused"), DW_AT_symbol_name("_blkused")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$308, DW_AT_name("lenhi"), DW_AT_symbol_name("_lenhi")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$309, DW_AT_name("lenlo"), DW_AT_symbol_name("_lenlo")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24

DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("SHA_State"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("SHA512_State"), DW_AT_type(*DW$T$31)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$32, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$T$86	.dwtag  DW_TAG_const_type
	.dwattr DW$T$86, DW_AT_type(*DW$T$32)

DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_name("ssh_signkey")
	.dwattr DW$T$57, DW_AT_byte_size(0x38)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$310, DW_AT_name("newkey"), DW_AT_symbol_name("_newkey")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$311, DW_AT_name("freekey"), DW_AT_symbol_name("_freekey")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$312, DW_AT_name("fmtkey"), DW_AT_symbol_name("_fmtkey")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$313, DW_AT_name("public_blob"), DW_AT_symbol_name("_public_blob")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$314, DW_AT_name("private_blob"), DW_AT_symbol_name("_private_blob")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$315, DW_AT_name("createkey"), DW_AT_symbol_name("_createkey")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$316, DW_AT_name("openssh_createkey"), DW_AT_symbol_name("_openssh_createkey")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$317, DW_AT_name("openssh_fmtkey"), DW_AT_symbol_name("_openssh_fmtkey")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$318, DW_AT_name("pubkey_bits"), DW_AT_symbol_name("_pubkey_bits")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$319, DW_AT_name("fingerprint"), DW_AT_symbol_name("_fingerprint")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$320, DW_AT_name("verifysig"), DW_AT_symbol_name("_verifysig")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$321, DW_AT_name("sign"), DW_AT_symbol_name("_sign")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$322, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$323, DW_AT_name("keytype"), DW_AT_symbol_name("_keytype")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57

DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_address_class(0x20)
DW$T$45	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$44)
	.dwattr DW$T$45, DW_AT_address_class(0x20)
DW$T$48	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$47)
	.dwattr DW$T$48, DW_AT_address_class(0x20)
DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$36)
	.dwattr DW$T$37, DW_AT_address_class(0x20)

DW$T$23	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$23, DW_AT_byte_size(0x40)
DW$324	.dwtag  DW_TAG_subrange_type
	.dwattr DW$324, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$23

DW$T$43	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$42)
	.dwattr DW$T$43, DW_AT_address_class(0x20)
DW$T$56	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$55)
	.dwattr DW$T$56, DW_AT_address_class(0x20)
DW$T$50	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$49)
	.dwattr DW$T$50, DW_AT_address_class(0x20)
DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$52, DW_AT_address_class(0x20)
DW$T$54	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$53)
	.dwattr DW$T$54, DW_AT_address_class(0x20)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("MD5_Core_State"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)

DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x60)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$325, DW_AT_name("h"), DW_AT_symbol_name("_h")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$326, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$327, DW_AT_name("blkused"), DW_AT_symbol_name("_blkused")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$328, DW_AT_name("lenhi"), DW_AT_symbol_name("_lenhi")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$329, DW_AT_name("lenlo"), DW_AT_symbol_name("_lenlo")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x118)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$330, DW_AT_name("h"), DW_AT_symbol_name("_h")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$331, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$332, DW_AT_name("blkused"), DW_AT_symbol_name("_blkused")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$333, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x104]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31

DW$T$39	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$39, DW_AT_address_class(0x20)

DW$T$30	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$30, DW_AT_byte_size(0x80)
DW$334	.dwtag  DW_TAG_subrange_type
	.dwattr DW$334, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$30


DW$T$20	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$20, DW_AT_byte_size(0x10)
DW$335	.dwtag  DW_TAG_subrange_type
	.dwattr DW$335, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$20


DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x14)
DW$336	.dwtag  DW_TAG_subrange_type
	.dwattr DW$336, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$25


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x10)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$337, DW_AT_name("h"), DW_AT_symbol_name("_h")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$29	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$29, DW_AT_byte_size(0x80)
DW$338	.dwtag  DW_TAG_subrange_type
	.dwattr DW$338, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$29

DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("uint64"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)

DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x10)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$339, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$340, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)

	.dwattr DW$208, DW_AT_type(*DW$T$3)
	.dwattr DW$199, DW_AT_type(*DW$T$33)
	.dwattr DW$184, DW_AT_type(*DW$T$33)
	.dwattr DW$143, DW_AT_type(*DW$T$3)
	.dwattr DW$181, DW_AT_type(*DW$T$3)
	.dwattr DW$162, DW_AT_type(*DW$T$10)
	.dwattr DW$153, DW_AT_type(*DW$T$40)
	.dwattr DW$150, DW_AT_type(*DW$T$10)
	.dwattr DW$113, DW_AT_type(*DW$T$40)
	.dwattr DW$100, DW_AT_type(*DW$T$40)
	.dwattr DW$92, DW_AT_type(*DW$T$10)
	.dwattr DW$140, DW_AT_type(*DW$T$58)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$341, DW_AT_location[DW_OP_reg0]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$342, DW_AT_location[DW_OP_reg1]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$343, DW_AT_location[DW_OP_reg2]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$344, DW_AT_location[DW_OP_reg3]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$345, DW_AT_location[DW_OP_reg4]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$346, DW_AT_location[DW_OP_reg5]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$347, DW_AT_location[DW_OP_reg6]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$348, DW_AT_location[DW_OP_reg7]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$349, DW_AT_location[DW_OP_reg8]
DW$350	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$350, DW_AT_location[DW_OP_reg9]
DW$351	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$351, DW_AT_location[DW_OP_reg10]
DW$352	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$352, DW_AT_location[DW_OP_reg11]
DW$353	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$353, DW_AT_location[DW_OP_reg12]
DW$354	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$354, DW_AT_location[DW_OP_reg13]
DW$355	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$355, DW_AT_location[DW_OP_reg14]
DW$356	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$356, DW_AT_location[DW_OP_reg15]
DW$357	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$357, DW_AT_location[DW_OP_reg16]
DW$358	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$358, DW_AT_location[DW_OP_reg17]
DW$359	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$359, DW_AT_location[DW_OP_reg18]
DW$360	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$360, DW_AT_location[DW_OP_reg19]
DW$361	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$361, DW_AT_location[DW_OP_reg20]
DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$362, DW_AT_location[DW_OP_reg21]
DW$363	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$363, DW_AT_location[DW_OP_reg22]
DW$364	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$364, DW_AT_location[DW_OP_reg23]
DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$365, DW_AT_location[DW_OP_reg24]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$366, DW_AT_location[DW_OP_reg25]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$367, DW_AT_location[DW_OP_reg26]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$368, DW_AT_location[DW_OP_reg27]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$369, DW_AT_location[DW_OP_reg28]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$370, DW_AT_location[DW_OP_reg29]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$371, DW_AT_location[DW_OP_reg30]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$372, DW_AT_location[DW_OP_reg31]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$373, DW_AT_location[DW_OP_regx 0x20]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$374, DW_AT_location[DW_OP_regx 0x21]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$375, DW_AT_location[DW_OP_regx 0x22]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$376, DW_AT_location[DW_OP_regx 0x23]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$377, DW_AT_location[DW_OP_regx 0x24]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$378, DW_AT_location[DW_OP_regx 0x25]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$379, DW_AT_location[DW_OP_regx 0x26]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$380, DW_AT_location[DW_OP_regx 0x27]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$381, DW_AT_location[DW_OP_regx 0x28]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$382, DW_AT_location[DW_OP_regx 0x29]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$383, DW_AT_location[DW_OP_regx 0x2a]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$384, DW_AT_location[DW_OP_regx 0x2b]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$385, DW_AT_location[DW_OP_regx 0x2c]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$386, DW_AT_location[DW_OP_regx 0x2d]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$387, DW_AT_location[DW_OP_regx 0x2e]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$388, DW_AT_location[DW_OP_regx 0x2f]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$389, DW_AT_location[DW_OP_regx 0x30]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$390, DW_AT_location[DW_OP_regx 0x31]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$391, DW_AT_location[DW_OP_regx 0x32]
DW$392	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$392, DW_AT_location[DW_OP_regx 0x33]
DW$393	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$393, DW_AT_location[DW_OP_regx 0x34]
DW$394	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$394, DW_AT_location[DW_OP_regx 0x35]
DW$395	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$395, DW_AT_location[DW_OP_regx 0x36]
DW$396	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$396, DW_AT_location[DW_OP_regx 0x37]
DW$397	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$397, DW_AT_location[DW_OP_regx 0x38]
DW$398	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$398, DW_AT_location[DW_OP_regx 0x39]
DW$399	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$399, DW_AT_location[DW_OP_regx 0x3a]
DW$400	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$400, DW_AT_location[DW_OP_regx 0x3b]
DW$401	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$401, DW_AT_location[DW_OP_regx 0x3c]
DW$402	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$402, DW_AT_location[DW_OP_regx 0x3d]
DW$403	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$403, DW_AT_location[DW_OP_regx 0x3e]
DW$404	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$404, DW_AT_location[DW_OP_regx 0x3f]
DW$405	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$405, DW_AT_location[DW_OP_regx 0x40]
DW$406	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$406, DW_AT_location[DW_OP_regx 0x41]
DW$407	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$407, DW_AT_location[DW_OP_regx 0x42]
DW$408	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$408, DW_AT_location[DW_OP_regx 0x43]
DW$409	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$409, DW_AT_location[DW_OP_regx 0x44]
DW$410	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$410, DW_AT_location[DW_OP_regx 0x45]
DW$411	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$411, DW_AT_location[DW_OP_regx 0x46]
DW$412	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$412, DW_AT_location[DW_OP_regx 0x47]
DW$413	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$413, DW_AT_location[DW_OP_regx 0x48]
DW$414	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$414, DW_AT_location[DW_OP_regx 0x49]
DW$415	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$415, DW_AT_location[DW_OP_regx 0x4a]
DW$416	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$416, DW_AT_location[DW_OP_regx 0x4b]
DW$417	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$417, DW_AT_location[DW_OP_regx 0x4c]
DW$418	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$418, DW_AT_location[DW_OP_regx 0x4d]
DW$419	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$419, DW_AT_location[DW_OP_regx 0x4e]
DW$420	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$420, DW_AT_location[DW_OP_regx 0x4f]
DW$421	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$421, DW_AT_location[DW_OP_regx 0x50]
DW$422	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$422, DW_AT_location[DW_OP_regx 0x51]
DW$423	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$423, DW_AT_location[DW_OP_regx 0x52]
DW$424	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$424, DW_AT_location[DW_OP_regx 0x53]
DW$425	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$425, DW_AT_location[DW_OP_regx 0x54]
DW$426	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$426, DW_AT_location[DW_OP_regx 0x55]
DW$427	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$427, DW_AT_location[DW_OP_regx 0x56]
DW$428	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$428, DW_AT_location[DW_OP_regx 0x57]
DW$429	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$429, DW_AT_location[DW_OP_regx 0x58]
DW$430	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$430, DW_AT_location[DW_OP_regx 0x59]
DW$431	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$431, DW_AT_location[DW_OP_regx 0x5a]
DW$432	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$432, DW_AT_location[DW_OP_regx 0x5b]
DW$433	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$433, DW_AT_location[DW_OP_regx 0x5c]
DW$434	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$434, DW_AT_location[DW_OP_regx 0x5d]
DW$435	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$435, DW_AT_location[DW_OP_regx 0x5e]
DW$436	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$436, DW_AT_location[DW_OP_regx 0x5f]
DW$437	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$437, DW_AT_location[DW_OP_regx 0x60]
DW$438	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$438, DW_AT_location[DW_OP_regx 0x61]
DW$439	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$439, DW_AT_location[DW_OP_regx 0x62]
DW$440	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$440, DW_AT_location[DW_OP_regx 0x63]
DW$441	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$441, DW_AT_location[DW_OP_regx 0x64]
DW$442	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$442, DW_AT_location[DW_OP_regx 0x65]
DW$443	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$443, DW_AT_location[DW_OP_regx 0x66]
DW$444	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$444, DW_AT_location[DW_OP_regx 0x67]
DW$445	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$445, DW_AT_location[DW_OP_regx 0x68]
DW$446	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$446, DW_AT_location[DW_OP_regx 0x69]
DW$447	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$447, DW_AT_location[DW_OP_regx 0x6a]
DW$448	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$448, DW_AT_location[DW_OP_regx 0x6b]
DW$449	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$449, DW_AT_location[DW_OP_regx 0x6c]
DW$450	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$450, DW_AT_location[DW_OP_regx 0x6d]
DW$451	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$451, DW_AT_location[DW_OP_regx 0x6e]
DW$452	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$452, DW_AT_location[DW_OP_regx 0x6f]
DW$453	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$453, DW_AT_location[DW_OP_regx 0x70]
DW$454	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$454, DW_AT_location[DW_OP_regx 0x71]
DW$455	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$455, DW_AT_location[DW_OP_regx 0x72]
DW$456	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$456, DW_AT_location[DW_OP_regx 0x73]
DW$457	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$457, DW_AT_location[DW_OP_regx 0x74]
DW$458	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$458, DW_AT_location[DW_OP_regx 0x75]
DW$459	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$459, DW_AT_location[DW_OP_regx 0x76]
DW$460	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$460, DW_AT_location[DW_OP_regx 0x77]
DW$461	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$461, DW_AT_location[DW_OP_regx 0x78]
DW$462	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$462, DW_AT_location[DW_OP_regx 0x79]
DW$463	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$463, DW_AT_location[DW_OP_regx 0x7a]
DW$464	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$464, DW_AT_location[DW_OP_regx 0x7b]
DW$465	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$465, DW_AT_location[DW_OP_regx 0x7c]
DW$466	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$466, DW_AT_location[DW_OP_regx 0x7d]
DW$467	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$467, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

