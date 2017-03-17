;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Thu Feb 17 13:26:31 2011                                *
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
	.dwattr DW$CU, DW_AT_name("SSHMD5.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("safemalloc"), DW_AT_symbol_name("_safemalloc")
	.dwattr DW$9, DW_AT_type(*DW$T$3)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$9


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("safefree"), DW_AT_symbol_name("_safefree")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$12

	.global	_ssh_hmac_md5
	.sect	".const"
	.align	4
_ssh_hmac_md5:
	.field  	_hmacmd5_make_context,32		; _ssh_hmac_md5._make_context @ 0
	.field  	_hmacmd5_free_context,32		; _ssh_hmac_md5._free_context @ 32
	.field  	_hmacmd5_key_16,32		; _ssh_hmac_md5._setkey @ 64
	.field  	_hmacmd5_generate,32		; _ssh_hmac_md5._generate @ 96
	.field  	_hmacmd5_verify,32		; _ssh_hmac_md5._verify @ 128
	.field  	SL1,32		; _ssh_hmac_md5._name @ 160
	.field  	16,32			; _ssh_hmac_md5._len @ 192
	.field  	SL2,32		; _ssh_hmac_md5._text_name @ 224

DW$14	.dwtag  DW_TAG_variable, DW_AT_name("ssh_hmac_md5"), DW_AT_symbol_name("_ssh_hmac_md5")
	.dwattr DW$14, DW_AT_location[DW_OP_addr _ssh_hmac_md5]
	.dwattr DW$14, DW_AT_type(*DW$T$90)
	.dwattr DW$14, DW_AT_external(0x01)
;	E:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI5242 C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI5244 
	.sect	".text"

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("MD5_Block"), DW_AT_symbol_name("_MD5_Block")
	.dwattr DW$15, DW_AT_low_pc(_MD5_Block)
	.dwattr DW$15, DW_AT_high_pc(0x00)
	.dwattr DW$15, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$15, DW_AT_begin_line(0x1e)
	.dwattr DW$15, DW_AT_begin_column(0x0d)
	.dwattr DW$15, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$15, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",31,1

;******************************************************************************
;* FUNCTION NAME: _MD5_Block                                                  *
;*                                                                            *
;*   Regs Modified     : A3,A5,A6,A7,A8,A9,B4,B5,B6,B7,B8,B9,A16,A17,A18,A19, *
;*                           A20,A21,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,B3,B4,B5,B6,B7,B8,B9,A16,A17,   *
;*                           A18,A19,A20,A21,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_MD5_Block:
;** --------------------------------------------------------------------------*
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$16, DW_AT_type(*DW$T$49)
	.dwattr DW$16, DW_AT_location[DW_OP_reg4]
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$17, DW_AT_type(*DW$T$51)
	.dwattr DW$17, DW_AT_location[DW_OP_reg20]
;** 40	-----------------------    C$3 = *((unsigned * const)s+4);
;** 40	-----------------------    C$4 = *(unsigned * const)s;
;** 40	-----------------------    C$20 = *block;
;** 40	-----------------------    C$1 = *((unsigned * const)s+12);
;** 40	-----------------------    C$2 = *((unsigned * const)s+8);
;** 40	-----------------------    C$23 = _rotl((C$3&C$2|~C$3&C$1)+C$20+C$4-0x28955b88u, 7)+C$3;
;** 40	-----------------------    C$13 = block[1];
;** 40	-----------------------    d = _rotl((C$23&C$3|~C$23&C$2)+C$13+C$1-0x173848aau, 12)+C$23;
;** 41	-----------------------    C$6 = block[2];
;** 41	-----------------------    c = _rotl((d&C$23|~d&C$3)+C$6+C$2+0x242070dbu, 17)+d;
;** 42	-----------------------    C$15 = block[3];
;** 42	-----------------------    b = _rotl((c&d|~c&C$23)+C$15+C$3-0x3e423112u, 22)+c;
;** 43	-----------------------    C$8 = block[4];
;** 43	-----------------------    a = _rotl((b&c|~b&d)+C$8+C$23-0xa83f051u, 7)+b;
;** 44	-----------------------    C$17 = block[5];
;** 44	-----------------------    d = _rotl((a&b|~a&c)+C$17+d+0x4787c62au, 12)+a;
;** 45	-----------------------    C$10 = block[6];
;** 45	-----------------------    c = _rotl((d&a|~d&b)+C$10+c-0x57cfb9edu, 17)+d;
;** 46	-----------------------    C$19 = block[7];
;** 46	-----------------------    b = _rotl((c&d|~c&a)+C$19+b-0x2b96affu, 22)+c;
;** 47	-----------------------    C$12 = block[8];
;** 47	-----------------------    a = _rotl((b&c|~b&d)+C$12+a+0x698098d8u, 7)+b;
;** 48	-----------------------    C$5 = block[9];
;** 48	-----------------------    d = _rotl((a&b|~a&c)+C$5+d-0x74bb0851u, 12)+a;
;** 49	-----------------------    C$14 = block[10];
;** 49	-----------------------    c = _rotl((d&a|~d&b)+C$14+c-42063u, 17)+d;
;** 50	-----------------------    C$7 = block[11];
;** 50	-----------------------    b = _rotl((c&d|~c&a)+C$7+b-0x76a32842u, 22)+c;
;** 51	-----------------------    C$16 = block[12];
;** 51	-----------------------    a = _rotl((b&c|~b&d)+C$16+a+0x6b901122u, 7)+b;
;** 52	-----------------------    C$9 = block[13];
;** 52	-----------------------    d = _rotl((a&b|~a&c)+C$9+d-0x2678e6du, 12)+a;
;** 53	-----------------------    C$18 = block[14];
;** 53	-----------------------    C$22 = ~d;
;** 53	-----------------------    c = _rotl((d&a|C$22&b)+C$18+c-0x5986bc72u, 17)+d;
;** 54	-----------------------    C$11 = block[15];
;** 54	-----------------------    C$21 = ~c;
;** 54	-----------------------    b = _rotl((c&d|C$21&a)+C$11+b+0x49b40821u, 22)+c;
;** 55	-----------------------    a = _rotl((b&d|C$22&c)+C$13+a-0x9e1da9eu, 5)+b;
;** 56	-----------------------    d = _rotl((a&c|C$21&b)+C$10+d-0x3fbf4cc0u, 9)+a;
;** 57	-----------------------    c = _rotl((d&b|~b&a)+C$7+c+0x265e5a51u, 14)+d;
;** 58	-----------------------    b = _rotl((c&a|~a&d)+C$20+b-0x16493856u, 20)+c;
;** 59	-----------------------    a = _rotl((b&d|~d&c)+C$17+a-0x29d0efa3u, 5)+b;
;** 60	-----------------------    d = _rotl((a&c|~c&b)+C$14+d+0x2441453u, 9)+a;
;** 61	-----------------------    c = _rotl((d&b|~b&a)+C$11+c-0x275e197fu, 14)+d;
;** 62	-----------------------    b = _rotl((c&a|~a&d)+C$8+b-0x182c0438u, 20)+c;
;** 63	-----------------------    a = _rotl((b&d|~d&c)+C$5+a+0x21e1cde6u, 5)+b;
;** 64	-----------------------    d = _rotl((a&c|~c&b)+C$18+d-0x3cc8f82au, 9)+a;
;** 65	-----------------------    c = _rotl((d&b|~b&a)+C$15+c-0xb2af279u, 14)+d;
;** 66	-----------------------    b = _rotl((c&a|~a&d)+C$12+b+0x455a14edu, 20)+c;
;** 67	-----------------------    a = _rotl((b&d|~d&c)+C$9+a-0x561c16fbu, 5)+b;
;** 68	-----------------------    d = _rotl((a&c|~c&b)+C$6+d-0x3105c08u, 9)+a;
;** 69	-----------------------    c = _rotl((d&b|~b&a)+C$19+c+0x676f02d9u, 14)+d;
;** 70	-----------------------    b = _rotl((c&a|~a&d)+C$16+b-0x72d5b376u, 20)+c;
;** 71	-----------------------    a = _rotl((b^c^d)+C$17+a-378558u, 4)+b;
;** 72	-----------------------    d = _rotl((a^b^c)+C$12+d-0x788e097fu, 11)+a;
;** 73	-----------------------    c = _rotl((d^a^b)+C$7+c+0x6d9d6122u, 16)+d;
;** 74	-----------------------    b = _rotl((c^d^a)+C$18+b-0x21ac7f4u, 23)+c;
;** 75	-----------------------    a = _rotl((b^c^d)+C$13+a-0x5b4115bcu, 4)+b;
;** 76	-----------------------    d = _rotl((a^b^c)+C$8+d+0x4bdecfa9u, 11)+a;
;** 77	-----------------------    c = _rotl((d^a^b)+C$19+c-0x944b4a0u, 16)+d;
;** 78	-----------------------    b = _rotl((c^d^a)+C$14+b-0x41404390u, 23)+c;
;** 79	-----------------------    a = _rotl((b^c^d)+C$9+a+0x289b7ec6u, 4)+b;
;** 80	-----------------------    d = _rotl((a^b^c)+C$20+d-0x155ed806u, 11)+a;
;** 81	-----------------------    c = _rotl((d^a^b)+C$15+c-0x2b10cf7bu, 16)+d;
;** 82	-----------------------    b = _rotl((c^d^a)+C$10+b+0x4881d05u, 23)+c;
;** 83	-----------------------    a = _rotl((b^c^d)+C$5+a-0x262b2fc7u, 4)+b;
;** 84	-----------------------    d = _rotl((a^b^c)+C$16+d-0x1924661bu, 11)+a;
;** 85	-----------------------    c = _rotl((d^a^b)+C$11+c+0x1fa27cf8u, 16)+d;
;** 86	-----------------------    b = _rotl((c^d^a)+C$6+b-0x3b53a99bu, 23)+c;
;** 87	-----------------------    a = _rotl(((~d|b)^c)+C$20+a-0xbd6ddbcu, 6)+b;
;** 88	-----------------------    d = _rotl(((~c|a)^b)+C$19+d+0x432aff97u, 10)+a;
;** 89	-----------------------    c = _rotl(((~b|d)^a)+C$18+c-0x546bdc59u, 15)+d;
;** 90	-----------------------    b = _rotl(((~a|c)^d)+C$17+b-0x36c5fc7u, 21)+c;
;** 91	-----------------------    a = _rotl(((~d|b)^c)+C$16+a+0x655b59c3u, 6)+b;
;** 92	-----------------------    d = _rotl(((~c|a)^b)+C$15+d-0x70f3336eu, 10)+a;
;** 93	-----------------------    c = _rotl(((~b|d)^a)+C$14+c-1051523u, 15)+d;
;** 94	-----------------------    b = _rotl(((~a|c)^d)+C$13+b-0x7a7ba22fu, 21)+c;
;** 95	-----------------------    a = _rotl(((~d|b)^c)+C$12+a+0x6fa87e4fu, 6)+b;
;** 96	-----------------------    d = _rotl(((~c|a)^b)+C$11+d-0x1d31920u, 10)+a;
;** 97	-----------------------    c = _rotl(((~b|d)^a)+C$10+c-0x5cfebcecu, 15)+d;
;** 98	-----------------------    b = _rotl(((~a|c)^d)+C$9+b+0x4e0811a1u, 21)+c;
;** 99	-----------------------    a = _rotl(((~d|b)^c)+C$8+a-0x8ac817eu, 6)+b;
;** 100	-----------------------    d = _rotl(((~c|a)^b)+C$7+d-0x42c50dcbu, 10)+a;
;** 101	-----------------------    c = _rotl(((~b|d)^a)+C$6+c+0x2ad7d2bbu, 15)+d;
;** 102	-----------------------    b = _rotl(((~a|c)^d)+C$5+b-0x14792c6fu, 21)+c;
;** 104	-----------------------    *(unsigned * const)s = C$4+a;
;** 105	-----------------------    *((unsigned * const)s+4) = C$3+b;
;** 106	-----------------------    *((unsigned * const)s+8) = C$2+c;
;** 107	-----------------------    *((unsigned * const)s+12) = C$1+d;
;** 107	-----------------------    return;
           LDW     .D1T1   *+A4(8),A16       ; |40| 
           LDW     .D1T1   *+A4(4),A6        ; |40| 
           LDW     .D1T1   *+A4(12),A17      ; |40| 
           LDW     .D2T2   *B4,B21           ; |40| 
           LDW     .D1T1   *A4,A18           ; |40| 
           MVKL    .S2     0x28955b88,B5     ; |40| 
           MVKH    .S2     0x28955b88,B5     ; |40| 

           AND     .S1     A16,A6,A3         ; |40| 
||         ANDN    .L1     A17,A6,A5         ; |40| 

           OR      .L1     A5,A3,A3          ; |40| 
           LDW     .D2T2   *+B4(4),B29       ; |40| 
           ADD     .L2X    B21,A3,B6         ; |40| 
           ADD     .L2X    A18,B6,B6         ; |40| 
           SUB     .L2     B6,B5,B5          ; |40| 
           ROTL    .M2     B5,7,B5           ; |40| 
           LDW     .D2T2   *+B4(8),B26       ; |41| 
           ADD     .L2X    A6,B5,B5          ; |40| 
           LDW     .D2T2   *+B4(12),B27      ; |42| 
           AND     .L1X    A6,B5,A3          ; |40| 
           ANDN    .L1X    A16,B5,A5         ; |40| 
           OR      .L1     A5,A3,A3          ; |40| 
           LDW     .D2T2   *+B4(16),B28      ; |43| 
           ADD     .L2X    B29,A3,B6         ; |40| 
           MVKL    .S1     0x173848aa,A3     ; |40| 

           MVKH    .S1     0x173848aa,A3     ; |40| 
||         ADD     .L1X    A17,B6,A5         ; |40| 

           SUB     .L1     A5,A3,A3          ; |40| 
           ROTL    .M1     A3,12,A3          ; |40| 
           LDW     .D2T2   *+B4(24),B19      ; |45| 
           LDW     .D2T2   *+B4(32),B20      ; |47| 
           ADD     .L2X    B5,A3,B7          ; |40| 
           AND     .L2     B5,B7,B6          ; |41| 
           ANDN    .L1X    A6,B7,A3          ; |41| 
           LDW     .D2T2   *+B4(20),B22      ; |44| 

           MVKL    .S1     0x242070db,A3     ; |41| 
||         OR      .L2X    A3,B6,B6          ; |41| 

           MVKH    .S1     0x242070db,A3     ; |41| 
||         ADD     .L2     B26,B6,B6         ; |41| 

           ADD     .L2X    A16,B6,B6         ; |41| 
           ADD     .L2X    A3,B6,B6          ; |41| 
           ROTL    .M2     B6,17,B6          ; |41| 
           LDW     .D2T2   *+B4(36),B25      ; |48| 
           ADD     .L2     B7,B6,B6          ; |41| 

           ANDN    .L2     B5,B6,B9          ; |42| 
||         AND     .S2     B7,B6,B8          ; |42| 

           OR      .L2     B9,B8,B8          ; |42| 

           MVKL    .S2     0x3e423112,B8     ; |42| 
||         ADD     .L2     B27,B8,B9         ; |42| 

           MVKH    .S2     0x3e423112,B8     ; |42| 
           ADD     .L1X    A6,B9,A3          ; |42| 
           SUB     .L1X    A3,B8,A3          ; |42| 
           ROTL    .M1     A3,22,A3          ; |42| 
           LDW     .D2T2   *+B4(40),B23      ; |49| 
           ADD     .L1X    B6,A3,A5          ; |42| 
           AND     .L1X    B6,A5,A3          ; |43| 
           ANDN    .L2X    B7,A5,B8          ; |43| 
           LDW     .D2T2   *+B4(44),B16      ; |50| 
           OR      .L1X    B8,A3,A3          ; |43| 

           MVKL    .S1     0xa83f051,A3      ; |43| 
||         ADD     .L1X    B28,A3,A7         ; |43| 

           MVKH    .S1     0xa83f051,A3      ; |43| 
||         ADD     .L1X    B5,A7,A7          ; |43| 

           SUB     .L1     A7,A3,A3          ; |43| 
           ROTL    .M1     A3,7,A3           ; |43| 
           LDW     .D2T2   *+B4(48),B18      ; |51| 
           ADD     .L1     A5,A3,A3          ; |43| 
           AND     .L1     A5,A3,A7          ; |44| 
           ANDN    .L2X    B6,A3,B5          ; |44| 
           OR      .L2X    B5,A7,B5          ; |44| 

           MVKL    .S2     0x4787c62a,B5     ; |44| 
||         ADD     .L2     B22,B5,B8         ; |44| 

           MVKH    .S2     0x4787c62a,B5     ; |44| 
||         ADD     .L2     B7,B8,B7          ; |44| 

           ADD     .L2     B5,B7,B5          ; |44| 
           ROTL    .M2     B5,12,B5          ; |44| 
           LDW     .D2T2   *+B4(52),B9       ; |52| 
           LDW     .D2T2   *+B4(56),B17      ; |53| 
           ADD     .L1X    A3,B5,A8          ; |44| 

           AND     .L1     A3,A8,A7          ; |45| 
||         ANDN    .S1     A5,A8,A9          ; |45| 

           OR      .L1     A9,A7,A7          ; |45| 

           MVKL    .S1     0x57cfb9ed,A7     ; |45| 
||         ADD     .L1X    B19,A7,A9         ; |45| 

           ADD     .L1X    B6,A9,A9          ; |45| 
||         MVKH    .S1     0x57cfb9ed,A7     ; |45| 

           SUB     .L1     A9,A7,A7          ; |45| 
           ROTL    .M1     A7,17,A7          ; |45| 
           LDW     .D2T2   *+B4(28),B6       ; |46| 
           ADD     .L1     A8,A7,A7          ; |45| 

           AND     .L1     A8,A7,A9          ; |46| 
||         ANDN    .S1     A3,A7,A19         ; |46| 

           OR      .L1     A19,A9,A9         ; |46| 
           MVKL    .S2     0x2b96aff,B5      ; |46| 
           ADD     .L2X    B6,A9,B7          ; |46| 

           ADD     .L2X    A5,B7,B7          ; |46| 
||         MVKH    .S2     0x2b96aff,B5      ; |46| 

           SUB     .L2     B7,B5,B5          ; |46| 
           ROTL    .M2     B5,22,B5          ; |46| 
           NOP             2
           ADD     .L1X    A7,B5,A5          ; |46| 

           ANDN    .L1     A8,A5,A19         ; |47| 
||         AND     .S1     A7,A5,A9          ; |47| 

           OR      .L1     A19,A9,A19        ; |47| 
           MVKL    .S1     0x698098d8,A9     ; |47| 

           MVKH    .S1     0x698098d8,A9     ; |47| 
||         ADD     .L2X    B20,A19,B5        ; |47| 

           ADD     .L2X    A3,B5,B5          ; |47| 
           ADD     .L2X    A9,B5,B5          ; |47| 
           ROTL    .M2     B5,7,B5           ; |47| 
           NOP             2
           ADD     .L1X    A5,B5,A3          ; |47| 

           ANDN    .L1     A7,A3,A19         ; |48| 
||         AND     .S1     A5,A3,A9          ; |48| 

           OR      .L1     A19,A9,A9         ; |48| 
           MVKL    .S2     0x74bb0851,B5     ; |48| 
           ADD     .L2X    B25,A9,B7         ; |48| 

           ADD     .L2X    A8,B7,B7          ; |48| 
||         MVKH    .S2     0x74bb0851,B5     ; |48| 

           SUB     .L2     B7,B5,B5          ; |48| 
           ROTL    .M2     B5,12,B5          ; |48| 
           NOP             2
           ADD     .L1X    A3,B5,A19         ; |48| 

           AND     .L1     A3,A19,A8         ; |49| 
||         ANDN    .S1     A5,A19,A9         ; |49| 

           OR      .L1     A9,A8,A8          ; |49| 
||         MVKL    .S2     0xa44f,B5         ; |49| 

           MVKH    .S2     0xa44f,B5         ; |49| 
||         ADD     .L1X    B23,A8,A8         ; |49| 

           ADD     .L1     A7,A8,A7          ; |49| 
           SUB     .L1X    A7,B5,A7          ; |49| 
           ROTL    .M1     A7,17,A7          ; |49| 
           NOP             1
           ADD     .L1     A19,A7,A9         ; |49| 

           AND     .L1     A19,A9,A7         ; |50| 
||         ANDN    .S1     A3,A9,A8          ; |50| 

           OR      .L1     A8,A7,A8          ; |50| 
           MVKL    .S1     0x76a32842,A7     ; |50| 

           MVKH    .S1     0x76a32842,A7     ; |50| 
||         ADD     .L2X    B16,A8,B5         ; |50| 

           ADD     .L2X    A5,B5,B5          ; |50| 
           SUB     .L2X    B5,A7,B5          ; |50| 
           ROTL    .M2     B5,22,B5          ; |50| 
           NOP             2
           ADD     .L1X    A9,B5,A8          ; |50| 

           AND     .L1     A9,A8,A5          ; |51| 
||         ANDN    .S1     A19,A8,A7         ; |51| 

           OR      .L1     A7,A5,A7          ; |51| 
           MVKL    .S1     0x6b901122,A5     ; |51| 

           MVKH    .S1     0x6b901122,A5     ; |51| 
||         ADD     .L2X    B18,A7,B5         ; |51| 

           ADD     .L2X    A3,B5,B5          ; |51| 
           ADD     .L2X    A5,B5,B5          ; |51| 
           ROTL    .M2     B5,7,B5           ; |51| 
           NOP             2
           ADD     .L1X    A8,B5,A7          ; |51| 

           ANDN    .S1     A9,A7,A5          ; |52| 
||         AND     .L1     A8,A7,A3          ; |52| 

           OR      .L1     A5,A3,A3          ; |52| 
           MVKL    .S2     0x2678e6d,B5      ; |52| 
           ADD     .L2X    B9,A3,B7          ; |52| 

           MVKH    .S2     0x2678e6d,B5      ; |52| 
||         ADD     .L2X    A19,B7,B7         ; |52| 

           SUB     .L2     B7,B5,B5          ; |52| 
           ROTL    .M2     B5,12,B5          ; |52| 
           NOP             2
           ADD     .L1X    A7,B5,A19         ; |52| 
           NOT     .L1     A19,A3            ; |53| 

           AND     .S1     A7,A19,A5         ; |53| 
||         AND     .L1     A8,A3,A20         ; |53| 

           MVKL    .S2     0x5986bc72,B5     ; |53| 
||         OR      .L1     A20,A5,A5         ; |53| 

           ADD     .L1X    B17,A5,A5         ; |53| 
||         MVKH    .S2     0x5986bc72,B5     ; |53| 

           ADD     .L1     A9,A5,A5          ; |53| 
           SUB     .L1X    A5,B5,A5          ; |53| 
           ROTL    .M1     A5,17,A5          ; |53| 
           LDW     .D2T2   *+B4(60),B5       ; |54| 
           ADD     .L1     A19,A5,A9         ; |53| 
           NOT     .L1     A9,A5             ; |54| 

           AND     .S1     A19,A9,A20        ; |54| 
||         AND     .L1     A7,A5,A21         ; |54| 

           OR      .L1     A21,A20,A20       ; |54| 
           MVKL    .S1     0x49b40821,A21    ; |54| 

           ADD     .L2X    B5,A20,B4         ; |54| 
||         MVKH    .S1     0x49b40821,A21    ; |54| 

           ADD     .L2X    A8,B4,B4          ; |54| 
           ADD     .L2X    A21,B4,B4         ; |54| 
           ROTL    .M2     B4,22,B4          ; |54| 
           AND     .L1     A9,A3,A3          ; |55| 
           ADD     .L2X    A9,B4,B4          ; |54| 
           AND     .L2X    A19,B4,B7         ; |55| 
           OR      .L2X    A3,B7,B7          ; |55| 
           ADD     .L2     B29,B7,B7         ; |55| 
           MVKL    .S1     0x9e1da9e,A3      ; |55| 

           MVKH    .S1     0x9e1da9e,A3      ; |55| 
||         ADD     .L1X    A7,B7,A7          ; |55| 

           SUB     .L1     A7,A3,A3          ; |55| 
           ROTL    .M1     A3,5,A3           ; |55| 
           NOP             2

           AND     .L1X    B4,A5,A3          ; |56| 
||         ADD     .L2X    B4,A3,B24         ; |55| 

           AND     .L2X    A9,B24,B7         ; |56| 
           OR      .L2X    A3,B7,B7          ; |56| 

           MVKL    .S2     0x3fbf4cc0,B7     ; |56| 
||         ADD     .L2     B19,B7,B8         ; |56| 

           MVKH    .S2     0x3fbf4cc0,B7     ; |56| 
           ADD     .L1X    A19,B8,A3         ; |56| 
           SUB     .L1X    A3,B7,A3          ; |56| 
           ROTL    .M1     A3,9,A3           ; |56| 
           NOP             1
           ANDN    .S2     B24,B4,B30        ; |57| 
           ADD     .L2X    B24,A3,B7         ; |56| 
           AND     .L2     B4,B7,B8          ; |57| 
           OR      .L2     B30,B8,B8         ; |57| 
           ADD     .L2     B16,B8,B8         ; |57| 
           MVKL    .S1     0x265e5a51,A3     ; |57| 

           MVKH    .S1     0x265e5a51,A3     ; |57| 
||         ADD     .L1X    A9,B8,A5          ; |57| 

           ADD     .L1     A3,A5,A3          ; |57| 
           ROTL    .M1     A3,14,A3          ; |57| 
           NOP             1
           ANDN    .S2     B7,B24,B31        ; |58| 
           ADD     .L2X    B7,A3,B8          ; |57| 
           AND     .L2     B24,B8,B30        ; |58| 
           OR      .L2     B31,B30,B30       ; |58| 

           ADD     .L2     B21,B30,B30       ; |58| 
||         MVKL    .S2     0x16493856,B31    ; |58| 

           ADD     .L2     B4,B30,B4         ; |58| 
||         MVKH    .S2     0x16493856,B31    ; |58| 

           SUB     .L2     B4,B31,B4         ; |58| 
           ROTL    .M2     B4,20,B4          ; |58| 
           ANDN    .S2     B8,B7,B31         ; |59| 
           ADD     .L2     B8,B4,B4          ; |58| 
           AND     .L2     B7,B4,B30         ; |59| 
           OR      .L2     B31,B30,B30       ; |59| 
           ADD     .L2     B22,B30,B30       ; |59| 

           ADD     .L2     B24,B30,B24       ; |59| 
||         MVKL    .S1     0x29d0efa3,A3     ; |59| 

           MVKH    .S1     0x29d0efa3,A3     ; |59| 
           SUB     .L1X    B24,A3,A3         ; |59| 
           ROTL    .M1     A3,5,A3           ; |59| 
           ANDN    .L2     B4,B8,B24         ; |60| 
           ADD     .L1X    B4,A3,A3          ; |59| 
           AND     .L1X    B8,A3,A5          ; |60| 

           MVKL    .S2     0x2441453,B24     ; |60| 
||         OR      .L1X    B24,A5,A5         ; |60| 

           MVKH    .S2     0x2441453,B24     ; |60| 
||         ADD     .L1X    B23,A5,A5         ; |60| 

           ADD     .L1X    B7,A5,A5          ; |60| 
           ADD     .L1X    B24,A5,A5         ; |60| 
           ROTL    .M1     A5,9,A5           ; |60| 
           ANDN    .L1X    A3,B4,A7          ; |61| 
           ADD     .S1     A3,A5,A8          ; |60| 
           AND     .L1X    B4,A8,A5          ; |61| 
           OR      .L1     A7,A5,A7          ; |61| 
           MVKL    .S1     0x275e197f,A5     ; |61| 

           MVKH    .S1     0x275e197f,A5     ; |61| 
||         ADD     .L2X    B5,A7,B7          ; |61| 

           ADD     .L2     B8,B7,B7          ; |61| 
           SUB     .L2X    B7,A5,B7          ; |61| 
           ROTL    .M2     B7,14,B7          ; |61| 
           NOP             1
           ANDN    .S1     A8,A3,A9          ; |62| 
           ADD     .L1X    A8,B7,A7          ; |61| 
           AND     .L1     A3,A7,A5          ; |62| 
           OR      .L1     A9,A5,A5          ; |62| 
           MVKL    .S2     0x182c0438,B7     ; |62| 
           ADD     .L2X    B28,A5,B8         ; |62| 

           MVKH    .S2     0x182c0438,B7     ; |62| 
||         ADD     .L2     B4,B8,B4          ; |62| 

           SUB     .L2     B4,B7,B4          ; |62| 
           ROTL    .M2     B4,20,B4          ; |62| 
           NOP             1
           ANDN    .S1     A7,A8,A19         ; |63| 
           ADD     .L1X    A7,B4,A5          ; |62| 
           AND     .L1     A8,A5,A9          ; |63| 
           OR      .L1     A19,A9,A9         ; |63| 
           MVKL    .S2     0x21e1cde6,B4     ; |63| 
           ADD     .L2X    B25,A9,B7         ; |63| 
           MVKH    .S2     0x21e1cde6,B4     ; |63| 
           ADD     .L1X    A3,B7,A3          ; |63| 
           ADD     .L1X    B4,A3,A3          ; |63| 
           ROTL    .M1     A3,5,A3           ; |63| 
           ANDN    .S1     A5,A7,A19         ; |64| 
           ADD     .L1     A5,A3,A3          ; |63| 
           AND     .L1     A7,A3,A9          ; |64| 
           OR      .L1     A19,A9,A19        ; |64| 
           MVKL    .S1     0x3cc8f82a,A9     ; |64| 

           MVKH    .S1     0x3cc8f82a,A9     ; |64| 
||         ADD     .L2X    B17,A19,B4        ; |64| 

           ADD     .L2X    A8,B4,B4          ; |64| 
           SUB     .L2X    B4,A9,B4          ; |64| 
           ROTL    .M2     B4,9,B4           ; |64| 
           ANDN    .L1     A3,A5,A8          ; |65| 
           ADD     .L2X    A3,B4,B4          ; |64| 
           AND     .L2X    A5,B4,B7          ; |65| 
           NOP             1
           OR      .L1X    A8,B7,A8          ; |65| 
           MVKL    .S2     0xb2af279,B7      ; |65| 
           ADD     .L2X    B27,A8,B8         ; |65| 
           MVKH    .S2     0xb2af279,B7      ; |65| 
           ADD     .L1X    A7,B8,A7          ; |65| 
           SUB     .L1X    A7,B7,A7          ; |65| 
           ROTL    .M1     A7,14,A7          ; |65| 
           NOP             1
           ANDN    .L2X    B4,A3,B8          ; |66| 
           ADD     .L2X    B4,A7,B24         ; |65| 
           AND     .L2X    A3,B24,B7         ; |66| 
           OR      .L2     B8,B7,B7          ; |66| 
           ADD     .L2     B20,B7,B7         ; |66| 
           MVKL    .S1     0x455a14ed,A7     ; |66| 

           ADD     .L1X    A5,B7,A5          ; |66| 
||         MVKH    .S1     0x455a14ed,A7     ; |66| 

           ADD     .L1     A7,A5,A5          ; |66| 
           ROTL    .M1     A5,20,A5          ; |66| 
           NOP             1
           ANDN    .S2     B24,B4,B30        ; |67| 
           ADD     .L2X    B24,A5,B7         ; |66| 
           AND     .L2     B4,B7,B8          ; |67| 
           OR      .L2     B30,B8,B8         ; |67| 
           ADD     .L2     B9,B8,B8          ; |67| 
           MVKL    .S1     0x561c16fb,A5     ; |67| 

           MVKH    .S1     0x561c16fb,A5     ; |67| 
||         ADD     .L1X    A3,B8,A3          ; |67| 

           SUB     .L1     A3,A5,A3          ; |67| 
           ROTL    .M1     A3,5,A3           ; |67| 
           NOP             1
           ANDN    .S2     B7,B24,B31        ; |68| 
           ADD     .L2X    B7,A3,B8          ; |67| 
           AND     .L2     B24,B8,B30        ; |68| 
           OR      .L2     B31,B30,B30       ; |68| 

           MVKL    .S2     0x3105c08,B30     ; |68| 
||         ADD     .L2     B26,B30,B31       ; |68| 

           ADD     .L2     B4,B31,B4         ; |68| 
||         MVKH    .S2     0x3105c08,B30     ; |68| 

           SUB     .L2     B4,B30,B4         ; |68| 
           ROTL    .M2     B4,9,B4           ; |68| 
           ANDN    .S2     B8,B7,B31         ; |69| 
           ADD     .L2     B8,B4,B4          ; |68| 
           AND     .L2     B7,B4,B30         ; |69| 
           OR      .L2     B31,B30,B30       ; |69| 
           ADD     .L2     B6,B30,B30        ; |69| 

           ADD     .L2     B24,B30,B24       ; |69| 
||         MVKL    .S1     0x676f02d9,A3     ; |69| 

           MVKH    .S1     0x676f02d9,A3     ; |69| 
           ADD     .L1X    A3,B24,A3         ; |69| 
           ROTL    .M1     A3,14,A3          ; |69| 
           ANDN    .L2     B4,B8,B24         ; |70| 
           ADD     .L1X    B4,A3,A7          ; |69| 
           AND     .L1X    B8,A7,A3          ; |70| 

           MVKL    .S2     0x72d5b376,B24    ; |70| 
||         OR      .L1X    B24,A3,A3         ; |70| 

           MVKH    .S2     0x72d5b376,B24    ; |70| 
||         ADD     .L1X    B18,A3,A3         ; |70| 

           ADD     .L1X    B7,A3,A3          ; |70| 
           SUB     .L1X    A3,B24,A3         ; |70| 
           ROTL    .M1     A3,20,A3          ; |70| 
           NOP             1
           ADD     .L1     A7,A3,A5          ; |70| 
           XOR     .L1     A7,A5,A3          ; |71| 
           XOR     .L1X    B4,A3,A3          ; |71| 

           MVKL    .S1     0x5c6be,A3        ; |71| 
||         ADD     .L1X    B22,A3,A8         ; |71| 

           MVKH    .S1     0x5c6be,A3        ; |71| 
           ADD     .L2X    B8,A8,B7          ; |71| 
           SUB     .L2X    B7,A3,B7          ; |71| 
           ROTL    .M2     B7,4,B7           ; |71| 
           NOP             2
           ADD     .L1X    A5,B7,A3          ; |71| 
           XOR     .L1     A5,A3,A8          ; |72| 
           XOR     .L1     A7,A8,A8          ; |72| 
           MVKL    .S2     0x788e097f,B7     ; |72| 
           ADD     .L2X    B20,A8,B8         ; |72| 

           ADD     .L2     B4,B8,B4          ; |72| 
||         MVKH    .S2     0x788e097f,B7     ; |72| 

           SUB     .L2     B4,B7,B4          ; |72| 
           ROTL    .M2     B4,11,B4          ; |72| 
           NOP             2
           ADD     .L1X    A3,B4,A8          ; |72| 
           XOR     .L1     A3,A8,A9          ; |73| 

           MVKL    .S2     0x6d9d6122,B4     ; |73| 
||         XOR     .L1     A5,A9,A9          ; |73| 

           ADD     .L1X    B16,A9,A9         ; |73| 
||         MVKH    .S2     0x6d9d6122,B4     ; |73| 

           ADD     .L1     A7,A9,A7          ; |73| 
           ADD     .L1X    B4,A7,A7          ; |73| 
           ROTL    .M1     A7,16,A7          ; |73| 
           NOP             1
           ADD     .L1     A8,A7,A7          ; |73| 
           XOR     .L1     A8,A7,A9          ; |74| 
           XOR     .L1     A3,A9,A19         ; |74| 
           MVKL    .S1     0x21ac7f4,A9      ; |74| 

           MVKH    .S1     0x21ac7f4,A9      ; |74| 
||         ADD     .L2X    B17,A19,B4        ; |74| 

           ADD     .L2X    A5,B4,B4          ; |74| 
           SUB     .L2X    B4,A9,B4          ; |74| 
           ROTL    .M2     B4,23,B4          ; |74| 
           NOP             1
           ADD     .L2X    A7,B4,B8          ; |74| 
           XOR     .L2X    A7,B8,B4          ; |75| 
           NOP             1
           XOR     .L1X    A8,B4,A5          ; |75| 
           MVKL    .S2     0x5b4115bc,B4     ; |75| 
           ADD     .L2X    B29,A5,B7         ; |75| 
           MVKH    .S2     0x5b4115bc,B4     ; |75| 
           ADD     .L1X    A3,B7,A3          ; |75| 
           SUB     .L1X    A3,B4,A3          ; |75| 
           ROTL    .M1     A3,4,A3           ; |75| 
           MVKL    .S1     0x4bdecfa9,A5     ; |76| 
           MVKH    .S1     0x4bdecfa9,A5     ; |76| 
           ADD     .L2X    B8,A3,B24         ; |75| 
           XOR     .L2     B8,B24,B4         ; |76| 
           NOP             1
           XOR     .L1X    A7,B4,A3          ; |76| 
           ADD     .L1X    B28,A3,A3         ; |76| 
           ADD     .L1     A8,A3,A3          ; |76| 
           ADD     .L1     A5,A3,A3          ; |76| 
           ROTL    .M1     A3,11,A3          ; |76| 
           NOP             2
           ADD     .L2X    B24,A3,B4         ; |76| 
           XOR     .L2     B24,B4,B7         ; |77| 
           XOR     .L2     B8,B7,B7          ; |77| 

           MVKL    .S2     0x944b4a0,B7      ; |77| 
||         ADD     .L2     B6,B7,B30         ; |77| 

           ADD     .L2X    A7,B30,B30        ; |77| 
||         MVKH    .S2     0x944b4a0,B7      ; |77| 

           SUB     .L2     B30,B7,B7         ; |77| 
           ROTL    .M2     B7,16,B7          ; |77| 
           MVKL    .S1     0x41404390,A3     ; |78| 
           ADD     .L2     B4,B7,B7          ; |77| 
           XOR     .L2     B4,B7,B30         ; |78| 
           XOR     .L2     B24,B30,B30       ; |78| 
           ADD     .L2     B23,B30,B30       ; |78| 
           ADD     .L2     B8,B30,B8         ; |78| 
           MVKH    .S1     0x41404390,A3     ; |78| 
           SUB     .L1X    B8,A3,A3          ; |78| 
           ROTL    .M1     A3,23,A3          ; |78| 
           NOP             1
           ADD     .L1X    B7,A3,A5          ; |78| 
           XOR     .L1X    B7,A5,A3          ; |79| 
           XOR     .L1X    B4,A3,A3          ; |79| 
           NOP             1
           ADD     .L2X    B9,A3,B8          ; |79| 

           ADD     .L2     B24,B8,B8         ; |79| 
||         MVKL    .S1     0x289b7ec6,A3     ; |79| 

           MVKH    .S1     0x289b7ec6,A3     ; |79| 
           ADD     .L1X    A3,B8,A3          ; |79| 
           ROTL    .M1     A3,4,A3           ; |79| 
           NOP             1
           ADD     .L1     A5,A3,A3          ; |79| 
           XOR     .L1     A5,A3,A7          ; |80| 
           NOP             1
           XOR     .L2X    B7,A7,B8          ; |80| 

           MVKL    .S2     0x155ed806,B8     ; |80| 
||         ADD     .L2     B21,B8,B24        ; |80| 

           ADD     .L2     B4,B24,B4         ; |80| 
||         MVKH    .S2     0x155ed806,B8     ; |80| 

           SUB     .L2     B4,B8,B4          ; |80| 
           ROTL    .M2     B4,11,B4          ; |80| 
           NOP             2
           ADD     .L1X    A3,B4,A8          ; |80| 
           XOR     .L1     A3,A8,A7          ; |81| 
           XOR     .L1     A5,A7,A7          ; |81| 
           NOP             1
           ADD     .L2X    B27,A7,B4         ; |81| 

           ADD     .L2     B7,B4,B4          ; |81| 
||         MVKL    .S1     0x2b10cf7b,A7     ; |81| 

           MVKH    .S1     0x2b10cf7b,A7     ; |81| 
           SUB     .L1X    B4,A7,A7          ; |81| 
           ROTL    .M1     A7,16,A7          ; |81| 
           MVKL    .S2     0x4881d05,B4      ; |82| 
           ADD     .L1     A8,A7,A7          ; |81| 
           XOR     .L1     A8,A7,A9          ; |82| 
           XOR     .L1     A3,A9,A9          ; |82| 
           MVKH    .S2     0x4881d05,B4      ; |82| 
           ADD     .L2X    B19,A9,B7         ; |82| 
           ADD     .L2X    A5,B7,B7          ; |82| 
           ADD     .L2     B4,B7,B4          ; |82| 
           ROTL    .M2     B4,23,B4          ; |82| 
           NOP             2
           ADD     .L1X    A7,B4,A5          ; |82| 
           XOR     .L1     A7,A5,A9          ; |83| 
           XOR     .L1     A8,A9,A19         ; |83| 
           MVKL    .S1     0x262b2fc7,A9     ; |83| 

           ADD     .L2X    B25,A19,B4        ; |83| 
||         MVKH    .S1     0x262b2fc7,A9     ; |83| 

           ADD     .L2X    A3,B4,B4          ; |83| 
           SUB     .L2X    B4,A9,B4          ; |83| 
           ROTL    .M2     B4,4,B4           ; |83| 
           NOP             2
           ADD     .L1X    A5,B4,A3          ; |83| 
           XOR     .L1     A5,A3,A9          ; |84| 
           XOR     .L1     A7,A9,A9          ; |84| 
           MVKL    .S2     0x1924661b,B4     ; |84| 
           ADD     .L2X    B18,A9,B7         ; |84| 

           ADD     .L2X    A8,B7,B7          ; |84| 
||         MVKH    .S2     0x1924661b,B4     ; |84| 

           SUB     .L2     B7,B4,B4          ; |84| 
           ROTL    .M2     B4,11,B4          ; |84| 
           NOP             2
           ADD     .L1X    A3,B4,A8          ; |84| 
           XOR     .L1     A3,A8,A9          ; |85| 

           MVKL    .S2     0x1fa27cf8,B4     ; |85| 
||         XOR     .L1     A5,A9,A9          ; |85| 

           ADD     .L1X    B5,A9,A9          ; |85| 
||         MVKH    .S2     0x1fa27cf8,B4     ; |85| 

           ADD     .L1     A7,A9,A7          ; |85| 
           ADD     .L1X    B4,A7,A7          ; |85| 
           ROTL    .M1     A7,16,A7          ; |85| 
           NOP             1
           ADD     .L1     A8,A7,A7          ; |85| 
           XOR     .L1     A8,A7,A9          ; |86| 
           XOR     .L1     A3,A9,A19         ; |86| 
           MVKL    .S1     0x3b53a99b,A9     ; |86| 

           MVKH    .S1     0x3b53a99b,A9     ; |86| 
||         ADD     .L2X    B26,A19,B4        ; |86| 

           ADD     .L2X    A5,B4,B4          ; |86| 
           SUB     .L2X    B4,A9,B4          ; |86| 
           ROTL    .M2     B4,23,B4          ; |86| 
           NOT     .L1     A8,A5             ; |87| 
           ADD     .L2X    A7,B4,B4          ; |86| 
           OR      .L2X    B4,A5,B7          ; |87| 
           MVKL    .S1     0x6fa87e4f,A19    ; |95| 
           XOR     .L1X    A7,B7,A5          ; |87| 
           MVKL    .S2     0xbd6ddbc,B7      ; |87| 
           ADD     .L2X    B21,A5,B8         ; |87| 
           MVKH    .S2     0xbd6ddbc,B7      ; |87| 
           ADD     .L1X    A3,B8,A3          ; |87| 
           SUB     .L1X    A3,B7,A3          ; |87| 
           ROTL    .M1     A3,6,A3           ; |87| 
           NOT     .L1     A7,A5             ; |88| 
           MVKH    .S1     0x6fa87e4f,A19    ; |95| 
           ADD     .L2X    B4,A3,B8          ; |87| 
           OR      .L2X    B8,A5,B7          ; |88| 
           XOR     .L2     B4,B7,B7          ; |88| 
           ADD     .L2     B6,B7,B6          ; |88| 
           MVKL    .S1     0x432aff97,A3     ; |88| 

           ADD     .L1X    A8,B6,A5          ; |88| 
||         MVKH    .S1     0x432aff97,A3     ; |88| 

           ADD     .L1     A3,A5,A3          ; |88| 
           ROTL    .M1     A3,10,A3          ; |88| 
           NOP             1
           NOT     .S2     B4,B6             ; |89| 
           ADD     .L2X    B8,A3,B7          ; |88| 
           OR      .L2     B7,B6,B6          ; |89| 
           XOR     .L2     B8,B6,B6          ; |89| 
           ADD     .L2     B17,B6,B6         ; |89| 
           MVKL    .S1     0x546bdc59,A3     ; |89| 

           MVKH    .S1     0x546bdc59,A3     ; |89| 
||         ADD     .L1X    A7,B6,A5          ; |89| 

           SUB     .L1     A5,A3,A3          ; |89| 
           ROTL    .M1     A3,15,A3          ; |89| 
           NOP             1
           NOT     .S2     B8,B17            ; |90| 
           ADD     .L2X    B7,A3,B6          ; |89| 
           OR      .L2     B6,B17,B17        ; |90| 
           XOR     .L2     B7,B17,B17        ; |90| 

           MVKL    .S2     0x36c5fc7,B17     ; |90| 
||         ADD     .L2     B22,B17,B21       ; |90| 

           ADD     .L2     B4,B21,B4         ; |90| 
||         MVKH    .S2     0x36c5fc7,B17     ; |90| 

           SUB     .L2     B4,B17,B4         ; |90| 
           ROTL    .M2     B4,21,B4          ; |90| 
           NOT     .S2     B7,B17            ; |91| 
           ADD     .L2     B6,B4,B4          ; |90| 
           OR      .L2     B4,B17,B17        ; |91| 
           XOR     .L2     B6,B17,B17        ; |91| 
           ADD     .L2     B18,B17,B17       ; |91| 

           ADD     .L2     B8,B17,B8         ; |91| 
||         MVKL    .S1     0x655b59c3,A3     ; |91| 

           MVKH    .S1     0x655b59c3,A3     ; |91| 
           ADD     .L1X    A3,B8,A3          ; |91| 
           ROTL    .M1     A3,6,A3           ; |91| 
           NOT     .L2     B6,B8             ; |92| 
           ADD     .L1X    B4,A3,A3          ; |91| 
           OR      .L1X    A3,B8,A5          ; |92| 

           XOR     .L1X    B4,A5,A5          ; |92| 
||         MVKL    .S2     0x70f3336e,B8     ; |92| 

           MVKH    .S2     0x70f3336e,B8     ; |92| 
||         ADD     .L1X    B27,A5,A5         ; |92| 

           ADD     .L1X    B7,A5,A5          ; |92| 
           SUB     .L1X    A5,B8,A5          ; |92| 
           ROTL    .M1     A5,10,A5          ; |92| 
           NOT     .L2     B4,B7             ; |93| 
           ADD     .L1     A3,A5,A8          ; |92| 
           OR      .L1X    A8,B7,A5          ; |93| 
           XOR     .L1     A3,A5,A5          ; |93| 

           MVKL    .S1     0x100b83,A5       ; |93| 
||         ADD     .L1X    B23,A5,A7         ; |93| 

           MVKH    .S1     0x100b83,A5       ; |93| 
           ADD     .L2X    B6,A7,B6          ; |93| 
           SUB     .L2X    B6,A5,B6          ; |93| 
           ROTL    .M2     B6,15,B6          ; |93| 
           NOT     .S1     A3,A5             ; |94| 
           NOT     .S1     A8,A9             ; |95| 
           ADD     .L1X    A8,B6,A7          ; |93| 
           OR      .L1     A7,A5,A5          ; |94| 
           XOR     .L1     A8,A5,A5          ; |94| 
           MVKL    .S2     0x7a7ba22f,B6     ; |94| 
           ADD     .L2X    B29,A5,B7         ; |94| 

           MVKH    .S2     0x7a7ba22f,B6     ; |94| 
||         ADD     .L2     B4,B7,B4          ; |94| 

           SUB     .L2     B4,B6,B4          ; |94| 
           ROTL    .M2     B4,21,B4          ; |94| 
           NOP             2
           ADD     .L1X    A7,B4,A5          ; |94| 
           OR      .L1     A5,A9,A9          ; |95| 
           XOR     .L1     A7,A9,A9          ; |95| 
           NOP             1
           ADD     .L2X    B20,A9,B4         ; |95| 
           ADD     .L2X    A3,B4,B4          ; |95| 
           ADD     .L2X    A19,B4,B4         ; |95| 
           ROTL    .M2     B4,6,B4           ; |95| 
           NOT     .S1     A7,A9             ; |96| 
           MVKL    .S1     0x4e0811a1,A19    ; |98| 
           ADD     .L1X    A5,B4,A3          ; |95| 
           OR      .L1     A3,A9,A9          ; |96| 
           XOR     .L1     A5,A9,A9          ; |96| 
           MVKL    .S2     0x1d31920,B4      ; |96| 
           ADD     .L2X    B5,A9,B5          ; |96| 

           MVKH    .S2     0x1d31920,B4      ; |96| 
||         ADD     .L2X    A8,B5,B5          ; |96| 

           SUB     .L2     B5,B4,B4          ; |96| 
           ROTL    .M2     B4,10,B4          ; |96| 
           NOT     .S1     A5,A9             ; |97| 
           MVKH    .S1     0x4e0811a1,A19    ; |98| 
           ADD     .L1X    A3,B4,A8          ; |96| 
           OR      .L1     A8,A9,A9          ; |97| 
           XOR     .L1     A3,A9,A9          ; |97| 
           MVKL    .S2     0x5cfebcec,B4     ; |97| 
           ADD     .L2X    B19,A9,B5         ; |97| 
           MVKH    .S2     0x5cfebcec,B4     ; |97| 
           ADD     .L1X    A7,B5,A7          ; |97| 
           SUB     .L1X    A7,B4,A7          ; |97| 
           ROTL    .M1     A7,15,A7          ; |97| 
           NOT     .S1     A3,A9             ; |98| 
           ADD     .L1     A8,A7,A7          ; |97| 
           OR      .L1     A7,A9,A9          ; |98| 
           XOR     .L1     A8,A9,A9          ; |98| 
           NOP             1
           ADD     .L2X    B9,A9,B4          ; |98| 
           ADD     .L2X    A5,B4,B4          ; |98| 
           ADD     .L2X    A19,B4,B4         ; |98| 
           ROTL    .M2     B4,21,B4          ; |98| 
           NOT     .L1     A8,A5             ; |99| 
           ADD     .L2X    A7,B4,B7          ; |98| 
           OR      .L2X    B7,A5,B4          ; |99| 
           NOP             1
           XOR     .L1X    A7,B4,A5          ; |99| 
           MVKL    .S2     0x8ac817e,B4      ; |99| 
           ADD     .L2X    B28,A5,B5         ; |99| 
           MVKH    .S2     0x8ac817e,B4      ; |99| 
           ADD     .L1X    A3,B5,A3          ; |99| 
           SUB     .L1X    A3,B4,A3          ; |99| 
           ROTL    .M1     A3,6,A5           ; |99| 
           NOP             1
           NOT     .L1     A7,A3             ; |100| 
           ADD     .L2X    B7,A5,B4          ; |99| 
           OR      .L2X    B4,A3,B5          ; |100| 
           XOR     .L2     B7,B5,B5          ; |100| 
           ADD     .L2     B16,B5,B5         ; |100| 
           MVKL    .S1     0x42c50dcb,A3     ; |100| 

           MVKH    .S1     0x42c50dcb,A3     ; |100| 
||         ADD     .L1X    A8,B5,A5          ; |100| 

           SUB     .L1     A5,A3,A3          ; |100| 
           ROTL    .M1     A3,10,A3          ; |100| 
           NOP             1
           NOT     .S2     B7,B5             ; |101| 
           ADD     .L2X    B4,A3,B9          ; |100| 
           OR      .L2     B9,B5,B5          ; |101| 
           XOR     .L2     B4,B5,B5          ; |101| 
           ADD     .L2     B26,B5,B5         ; |101| 
           MVKL    .S1     0x2ad7d2bb,A3     ; |101| 

           ADD     .L1X    A7,B5,A5          ; |101| 
||         MVKH    .S1     0x2ad7d2bb,A3     ; |101| 

           ADD     .L1     A3,A5,A3          ; |101| 
           ROTL    .M1     A3,15,A3          ; |101| 
           NOP             1
           NOT     .S2     B4,B5             ; |102| 
           ADD     .L2X    B9,A3,B8          ; |101| 
           OR      .L2     B8,B5,B5          ; |102| 
           XOR     .L2     B9,B5,B5          ; |102| 

           MVKL    .S2     0x14792c6f,B5     ; |102| 
||         ADD     .L2     B25,B5,B6         ; |102| 

           ADD     .L2     B7,B6,B6          ; |102| 
||         MVKH    .S2     0x14792c6f,B5     ; |102| 

           SUB     .L2     B6,B5,B5          ; |102| 

           ROTL    .M2     B5,21,B5          ; |102| 
||         RET     .S2     B3                ; |108| 

           ADD     .L1X    B4,A18,A3         ; |104| 

           ADD     .L1X    B9,A17,A3         ; |107| 
||         STW     .D1T1   A3,*A4            ; |104| 
||         ADD     .L2     B8,B5,B4          ; |102| 

           ADD     .L1X    B8,A16,A3         ; |106| 
||         STW     .D1T1   A3,*+A4(12)       ; |107| 

           ADD     .L1X    B4,A6,A3          ; |105| 
||         STW     .D1T1   A3,*+A4(8)        ; |106| 

	.dwpsn	"SSHMD5.C",108,1
           STW     .D1T1   A3,*+A4(4)        ; |105| 
           ; BRANCH OCCURS {B3}              ; |108| 
	.dwattr DW$15, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$15, DW_AT_end_line(0x6c)
	.dwattr DW$15, DW_AT_end_column(0x01)
	.dwendtag DW$15

	.sect	".text"
	.global	_MD5Update

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("MD5Update"), DW_AT_symbol_name("_MD5Update")
	.dwattr DW$18, DW_AT_low_pc(_MD5Update)
	.dwattr DW$18, DW_AT_high_pc(0x00)
	.dwattr DW$18, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$18, DW_AT_begin_line(0x7d)
	.dwattr DW$18, DW_AT_begin_column(0x06)
	.dwattr DW$18, DW_AT_frame_base[DW_OP_breg31 96]
	.dwattr DW$18, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",126,1

;******************************************************************************
;* FUNCTION NAME: _MD5Update                                                  *
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
;*   Local Frame Size  : 0 Args + 68 Auto + 24 Save = 92 byte                 *
;******************************************************************************
_MD5Update:
;** --------------------------------------------------------------------------*
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$19, DW_AT_type(*DW$T$54)
	.dwattr DW$19, DW_AT_location[DW_OP_reg4]
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$20, DW_AT_type(*DW$T$58)
	.dwattr DW$20, DW_AT_location[DW_OP_reg20]
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$21, DW_AT_type(*DW$T$11)
	.dwattr DW$21, DW_AT_location[DW_OP_reg6]
;** 126	-----------------------    len = len;
;** 127	-----------------------    q = p;
;** 135	-----------------------    (*s).lenlo = (*s).lenlo+len;
;** 136	-----------------------    (*s).lenhi = (*s).lenhi+((*s).lenlo < len);
;** 138	-----------------------    U$11 = (*s).blkused;
;** 138	-----------------------    if ( (unsigned)U$11+len < 64u ) goto g5;
;**  	-----------------------    K$24 = 0xffffffc0u;
;** 138	-----------------------    K$14 = 64u;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MV      .L1X    SP,A31            ; |126| 
||         STW     .D2T2   B10,*SP--(96)     ; |126| 
||         MVK     .S2     64,B5             ; |138| 
||         MV      .L2     B4,B10            ; |126| 

           STDW    .D1T1   A11:A10,*-A31(16)
||         MV      .L1     A4,A10            ; |126| 
||         STW     .D2T2   B13,*+SP(76)
||         MV      .S1     A6,A11            ; |126| 
||         MV      .L2     B3,B13

           LDW     .D1T1   *+A10(88),A3      ; |135| 
           LDW     .D1T1   *+A10(84),A4      ; |136| 
           STDW    .D1T1   A13:A12,*-A31(8)
           MVK     .S1     0xffffffc0,A13
           MVK     .S1     0x40,A12          ; |138| 
           ADD     .L1     A6,A3,A3          ; |135| 
           STW     .D1T1   A3,*+A10(88)      ; |135| 
           LDW     .D1T1   *+A10(88),A5      ; |136| 
           LDW     .D1T1   *+A10(80),A3      ; |138| 
           NOP             3
           CMPLTU  .L1     A5,A6,A7          ; |136| 

           ADD     .S1     A10,A3,A3         ; |142| 
||         ADD     .L1     A6,A3,A5          ; |138| 

           ADD     .L1     A7,A4,A3          ; |136| 
||         ADD     .D1     A3,16,A4          ; |142| 

           STW     .D1T1   A3,*+A10(84)      ; |136| 
||         CMPLTU  .L2X    A5,B5,B0          ; |138| 

   [!B0]   LDW     .D1T1   *+A10(80),A3      ; |149| 
|| [ B0]   B       .S1     L2                ; |138| 

   [ B0]   CALL    .S1     _memcpy           ; |142| 
           NOP             4
           ; BRANCHCC OCCURS {L2}            ; |138| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _memcpy           ; |149| 
||         ADD     .L1     A10,A3,A4         ; |149| 

	.dwpsn	"SSHMD5.C",148,0
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L1:    
DW$L$_MD5Update$3$B:
;**	-----------------------g3:
;** 149	-----------------------    C$2 = (*s).blkused;
;** 149	-----------------------    memcpy(C$2+(unsigned char (* const)[64])s+16, (const void *)q, K$14-(unsigned)C$2);
;** 150	-----------------------    C$1 = (*s).blkused;
;** 150	-----------------------    q = q-C$1+64;
;** 151	-----------------------    len = (unsigned)C$1+len+K$24;
;** 154	-----------------------    K$26 = (unsigned * const)s+16;
;** 154	-----------------------    ((double *)wordblock)[0] = _itod(*((unsigned * const)s+20), *((unsigned * const)s+16));
;** 154	-----------------------    ((double *)wordblock)[1] = _itod(*((unsigned * const)s+28), *((unsigned * const)s+24));
;** 154	-----------------------    ((double *)wordblock)[2] = _itod(*((unsigned * const)s+36), *((unsigned * const)s+32));
;** 154	-----------------------    ((double *)wordblock)[3] = _itod(*((unsigned * const)s+44), *((unsigned * const)s+40));
;** 154	-----------------------    ((double *)wordblock)[4] = _itod(*((unsigned * const)s+52), *((unsigned * const)s+48));
;** 154	-----------------------    ((double *)wordblock)[5] = _itod(*((unsigned * const)s+60), *((unsigned * const)s+56));
;** 154	-----------------------    ((double *)wordblock)[6] = _itod(*((unsigned * const)s+68), *((unsigned * const)s+64));
;** 154	-----------------------    ((double *)wordblock)[7] = _itod(*((unsigned * const)s+76), *((unsigned * const)s+72));
;** 160	-----------------------    MD5_Block((struct $$fake0 *)s, &wordblock);
;** 161	-----------------------    (*s).blkused = 0;
;** 148	-----------------------    K$14 = 64u;
;** 148	-----------------------    if ( len >= 64u ) goto g3;
;** 163	-----------------------    memcpy(K$26, (const void *)q, len);

           MV      .L2     B10,B4            ; |149| 
||         SUB     .L1     A12,A3,A6         ; |149| 
||         ADDKPC  .S2     RL0,B3,0          ; |149| 
||         ADD     .D1     A4,16,A4          ; |149| 

RL0:       ; CALL OCCURS {_memcpy}           ; |149| 
DW$L$_MD5Update$3$E:
;** --------------------------------------------------------------------------*
DW$L$_MD5Update$4$B:
           LDW     .D1T2   *+A10(56),B4      ; |154| 
           LDW     .D1T2   *+A10(60),B5      ; |154| 
           LDW     .D1T2   *+A10(32),B16     ; |154| 
           LDW     .D1T2   *+A10(36),B17     ; |154| 
           LDW     .D1T2   *+A10(24),B18     ; |154| 
           LDW     .D1T2   *+A10(28),B19     ; |154| 
           LDW     .D1T2   *+A10(44),B9      ; |154| 
           LDW     .D1T2   *+A10(40),B8      ; |154| 
           LDW     .D1T2   *+A10(48),B6      ; |154| 
           LDW     .D1T2   *+A10(52),B7      ; |154| 
           LDW     .D1T1   *+A10(68),A9      ; |154| 
           LDW     .D1T1   *+A10(64),A8      ; |154| 
           LDW     .D1T2   *+A10(16),B20     ; |154| 
           LDW     .D1T2   *+A10(20),B21     ; |154| 

           STDW    .D2T2   B5:B4,*+SP(48)    ; |154| 
||         LDW     .D1T1   *+A10(72),A6      ; |154| 

           STDW    .D2T2   B17:B16,*+SP(24)  ; |154| 
||         LDW     .D1T1   *+A10(76),A7      ; |154| 

           CALL    .S1     _MD5_Block        ; |160| 
||         STDW    .D2T2   B19:B18,*+SP(16)  ; |154| 

           STDW    .D2T2   B9:B8,*+SP(32)    ; |154| 

           STDW    .D2T2   B7:B6,*+SP(40)    ; |154| 
||         LDW     .D1T1   *+A10(80),A22     ; |150| 

           STDW    .D2T1   A9:A8,*+SP(56)    ; |154| 
           STDW    .D2T1   A7:A6,*+SP(64)    ; |154| 

           ADDKPC  .S2     RL1,B3,0          ; |160| 
||         ADD     .L2     8,SP,B4           ; |160| 
||         STDW    .D2T2   B21:B20,*+SP(8)   ; |154| 
||         MV      .L1     A10,A4            ; |160| 

RL1:       ; CALL OCCURS {_MD5_Block}        ; |160| 
DW$L$_MD5Update$4$E:
;** --------------------------------------------------------------------------*
DW$L$_MD5Update$5$B:

           ADD     .L1     A11,A22,A3        ; |151| 
||         ZERO    .D1     A5                ; |161| 
||         MVK     .S1     64,A31            ; |148| 
||         SUB     .L2X    B10,A22,B4        ; |150| 

           ADD     .L1     A13,A3,A11        ; |151| 
||         STW     .D1T1   A5,*+A10(80)      ; |161| 
||         ADDAD   .D2     B4,8,B10          ; |150| 

           CMPLTU  .L1     A11,A31,A0        ; |148| 
||         ADD     .D1     A10,16,A4         ; |154| 

   [!A0]   LDW     .D1T1   *+A10(80),A3      ; |149| 
|| [!A0]   B       .S1     L1                ; |148| 

   [!A0]   CALL    .S1     _memcpy           ; |149| 
   [ A0]   CALL    .S1     _memcpy           ; |163| 
           NOP             2
	.dwpsn	"SSHMD5.C",162,0
   [!A0]   ADD     .L1     A10,A3,A4         ; |149| 
           ; BRANCHCC OCCURS {L1}            ; |148| 
DW$L$_MD5Update$5$E:
;** --------------------------------------------------------------------------*
;** 164	-----------------------    (*s).blkused = len;
;** 164	-----------------------    goto g6;
           ADDKPC  .S2     RL2,B3,0          ; |163| 

           MV      .L2     B10,B4            ; |163| 
||         MV      .L1     A11,A6            ; |163| 

RL2:       ; CALL OCCURS {_memcpy}           ; |163| 
;** --------------------------------------------------------------------------*

           STW     .D1T1   A11,*+A10(80)     ; |164| 
||         MV      .L2     B13,B3            ; |166| 
||         MV      .L1X    SP,A31            ; |166| 

           RET     .S2     B3                ; |166| 
||         LDDW    .D1T1   *+A31(88),A13:A12 ; |166| 
||         LDW     .D2T2   *+SP(76),B13      ; |166| 

           LDW     .D2T2   *++SP(96),B10     ; |166| 
||         LDDW    .D1T1   *+A31(80),A11:A10 ; |166| 

           NOP             4
           ; BRANCH OCCURS {B3}              ; |166| 
;** --------------------------------------------------------------------------*
L2:    
;**	-----------------------g5:
;** 142	-----------------------    memcpy(U$11+(unsigned char (* const)[64])s+16, (const void *)q, len);
;** 143	-----------------------    (*s).blkused = (*s).blkused+(int)len;
;**	-----------------------g6:
;**  	-----------------------    return;
           ADDKPC  .S2     RL3,B3,0          ; |142| 
RL3:       ; CALL OCCURS {_memcpy}           ; |142| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(80),A3      ; |143| 
           MV      .L1X    SP,A31            ; |166| 
           LDDW    .D1T1   *+A31(88),A13:A12 ; |166| 
           MV      .L2     B13,B3            ; |166| 
           LDW     .D2T2   *+SP(76),B13      ; |166| 
           ADD     .L1     A11,A3,A3         ; |143| 

           STW     .D1T1   A3,*+A10(80)      ; |143| 
||         RET     .S2     B3                ; |166| 

           LDW     .D2T2   *++SP(96),B10     ; |166| 
||         LDDW    .D1T1   *+A31(80),A11:A10 ; |166| 

	.dwpsn	"SSHMD5.C",166,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |166| 

DW$22	.dwtag  DW_TAG_loop
	.dwattr DW$22, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHMD5.asm:L1:1:1297920391")
	.dwattr DW$22, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$22, DW_AT_begin_line(0x94)
	.dwattr DW$22, DW_AT_end_line(0xa2)
DW$23	.dwtag  DW_TAG_loop_range
	.dwattr DW$23, DW_AT_low_pc(DW$L$_MD5Update$3$B)
	.dwattr DW$23, DW_AT_high_pc(DW$L$_MD5Update$3$E)
DW$24	.dwtag  DW_TAG_loop_range
	.dwattr DW$24, DW_AT_low_pc(DW$L$_MD5Update$4$B)
	.dwattr DW$24, DW_AT_high_pc(DW$L$_MD5Update$4$E)
DW$25	.dwtag  DW_TAG_loop_range
	.dwattr DW$25, DW_AT_low_pc(DW$L$_MD5Update$5$B)
	.dwattr DW$25, DW_AT_high_pc(DW$L$_MD5Update$5$E)
	.dwendtag DW$22

	.dwattr DW$18, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$18, DW_AT_end_line(0xa6)
	.dwattr DW$18, DW_AT_end_column(0x01)
	.dwendtag DW$18

	.sect	".text"
	.global	_MD5Final

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("MD5Final"), DW_AT_symbol_name("_MD5Final")
	.dwattr DW$26, DW_AT_low_pc(_MD5Final)
	.dwattr DW$26, DW_AT_high_pc(0x00)
	.dwattr DW$26, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$26, DW_AT_begin_line(0xa8)
	.dwattr DW$26, DW_AT_begin_column(0x06)
	.dwattr DW$26, DW_AT_frame_base[DW_OP_breg31 96]
	.dwattr DW$26, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",169,1

;******************************************************************************
;* FUNCTION NAME: _MD5Final                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A14,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A14,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 68 Auto + 24 Save = 92 byte                 *
;******************************************************************************
_MD5Final:
;** --------------------------------------------------------------------------*
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$27, DW_AT_type(*DW$T$29)
	.dwattr DW$27, DW_AT_location[DW_OP_reg4]
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$28, DW_AT_type(*DW$T$54)
	.dwattr DW$28, DW_AT_location[DW_OP_reg20]
;** 175	-----------------------    ((U$3 = (*s).blkused) >= 56) ? (pad = 120u-(unsigned)U$3) : (pad = 56u-(unsigned)U$3);
;** 176	-----------------------    C$1 = (*s).lenlo;
;** 180	-----------------------    lenhi = (*s).lenhi<<3|C$1>>29;
;** 181	-----------------------    lenlo = C$1<<3;
;** 183	-----------------------    memset(&c, 0, pad);
;** 184	-----------------------    c[0] = 128;
;** 185	-----------------------    MD5Update(s, &c, pad);
;** 187	-----------------------    c[7] = lenhi>>24;
;** 188	-----------------------    c[6] = lenhi>>16;
;** 189	-----------------------    c[5] = lenhi>>8;
;** 190	-----------------------    c[4] = lenhi;
;** 191	-----------------------    c[3] = lenlo>>24;
;** 192	-----------------------    c[2] = lenlo>>16;
;** 193	-----------------------    c[1] = lenlo>>8;
;** 194	-----------------------    c[0] = lenlo;
;** 196	-----------------------    MD5Update(s, &c, 8u);
;** 199	-----------------------    output[3] = *(unsigned * const)s>>24;
;** 200	-----------------------    output[2] = *(unsigned * const)s>>16;
;** 201	-----------------------    output[1] = *(unsigned * const)s>>8;
;** 202	-----------------------    *output = *(unsigned * const)s;
;** 199	-----------------------    output[7] = *((unsigned * const)s+4)>>24;
;** 200	-----------------------    output[6] = *((unsigned * const)s+4)>>16;
;** 201	-----------------------    output[5] = *((unsigned * const)s+4)>>8;
;** 202	-----------------------    output[4] = *((unsigned * const)s+4);
;** 199	-----------------------    output[11] = *((unsigned * const)s+8)>>24;
;** 200	-----------------------    output[10] = *((unsigned * const)s+8)>>16;
;** 201	-----------------------    output[9] = *((unsigned * const)s+8)>>8;
;** 202	-----------------------    output[8] = *((unsigned * const)s+8);
;** 199	-----------------------    output[15] = *((unsigned * const)s+12)>>24;
;** 200	-----------------------    output[14] = *((unsigned * const)s+12)>>16;
;** 201	-----------------------    output[13] = *((unsigned * const)s+12)>>8;
;** 202	-----------------------    output[12] = *((unsigned * const)s+12);
;**  	-----------------------    return;

           STW     .D2T1   A10,*SP--(96)     ; |169| 
||         MV      .L1X    SP,A31            ; |169| 

           MV      .L2     B4,B10            ; |169| 
||         STDW    .D2T2   B11:B10,*+SP(80)

           LDW     .D2T2   *+B10(80),B4      ; |175| 
           STDW    .D2T2   B13:B12,*+SP(88)
           LDW     .D2T2   *+B10(88),B11     ; |176| 

           CALL    .S2     _memset           ; |183| 
||         MVK     .S1     56,A5             ; |175| 

           LDW     .D2T2   *+B10(84),B13     ; |180| 
||         MVK     .S1     56,A3             ; |175| 
||         MVK     .S2     120,B5            ; |175| 

           SUB     .L2     B5,B4,B12         ; |175| 
||         CMPLT   .L1X    B4,A5,A0          ; |175| 

   [ A0]   SUB     .L2X    A3,B4,B12         ; |175| 
||         MV      .L1X    B3,A14
||         STW     .D1T1   A14,*-A31(20)

           ADD     .L1X    8,SP,A4           ; |183| 
||         MV      .S1     A4,A10            ; |169| 

           ADDKPC  .S2     RL4,B3,0          ; |183| 
||         ZERO    .L2     B4                ; |183| 
||         MV      .L1X    B12,A6            ; |183| 

RL4:       ; CALL OCCURS {_memset}           ; |183| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _MD5Update        ; |185| 
           MV      .L1X    B10,A4            ; |185| 
           ADDKPC  .S2     RL5,B3,0          ; |185| 
           MV      .L1X    B12,A6            ; |185| 
           MVK     .S2     128,B4            ; |184| 

           ADD     .L2     8,SP,B4           ; |185| 
||         STB     .D2T2   B4,*+SP(8)        ; |184| 

RL5:       ; CALL OCCURS {_MD5Update}        ; |185| 
           SHL     .S2     B13,3,B5          ; |180| 
           SHRU    .S2     B11,29,B4         ; |180| 
           OR      .L2     B4,B5,B4          ; |180| 
           SHRU    .S2     B4,24,B5          ; |187| 

           SHRU    .S2     B4,8,B5           ; |189| 
||         STB     .D2T2   B5,*+SP(15)       ; |187| 

           EXTU    .S2     B11,3,24,B4       ; |191| 
||         SHRU    .S1X    B4,16,A3          ; |188| 
||         STB     .D2T2   B4,*+SP(12)       ; |190| 

           CALL    .S1     _MD5Update        ; |196| 
||         EXTU    .S2     B11,3,16,B4       ; |192| 
||         STB     .D2T2   B4,*+SP(11)       ; |191| 

           EXTU    .S2     B11,3,8,B4        ; |193| 
||         STB     .D2T2   B4,*+SP(10)       ; |192| 

           STB     .D2T2   B4,*+SP(9)        ; |193| 
           STB     .D2T1   A3,*+SP(14)       ; |188| 

           STB     .D2T2   B5,*+SP(13)       ; |189| 
||         SHL     .S2     B11,3,B4          ; |181| 

           ADDKPC  .S2     RL6,B3,0          ; |196| 
||         ADD     .L2     8,SP,B4           ; |196| 
||         STB     .D2T2   B4,*+SP(8)        ; |194| 
||         MVK     .L1     0x8,A6            ; |196| 
||         MV      .S1X    B10,A4            ; |196| 

RL6:       ; CALL OCCURS {_MD5Update}        ; |196| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *B10,B4           ; |199| 
           MV      .L1X    SP,A31            ; |204| 
           LDDW    .D2T2   *+SP(88),B13:B12  ; |204| 
           MV      .L2X    A14,B3            ; |204| 
           LDW     .D1T1   *+A31(76),A14     ; |204| 
           SHRU    .S1X    B4,24,A3          ; |199| 
           STB     .D1T1   A3,*+A10(3)       ; |199| 
           LDW     .D2T2   *B10,B4           ; |200| 
           NOP             4
           SHRU    .S1X    B4,16,A3          ; |200| 
           STB     .D1T1   A3,*+A10(2)       ; |200| 
           LDW     .D2T2   *B10,B4           ; |201| 
           NOP             4
           SHRU    .S1X    B4,8,A3           ; |201| 
           STB     .D1T1   A3,*+A10(1)       ; |201| 
           LDBU    .D2T1   *B10,A3           ; |202| 
           NOP             4
           STB     .D1T1   A3,*A10           ; |202| 
           LDW     .D2T2   *+B10(4),B4       ; |199| 
           NOP             4
           SHRU    .S1X    B4,24,A3          ; |199| 
           STB     .D1T1   A3,*+A10(7)       ; |199| 
           LDW     .D2T1   *+B10(4),A3       ; |200| 
           NOP             4
           SHRU    .S1     A3,16,A3          ; |200| 
           STB     .D1T1   A3,*+A10(6)       ; |200| 
           LDW     .D2T2   *+B10(4),B4       ; |201| 
           NOP             4
           SHRU    .S1X    B4,8,A3           ; |201| 
           STB     .D1T1   A3,*+A10(5)       ; |201| 
           LDBU    .D2T1   *+B10(4),A3       ; |202| 
           NOP             4
           STB     .D1T1   A3,*+A10(4)       ; |202| 
           LDW     .D2T1   *+B10(8),A3       ; |199| 
           NOP             4
           SHRU    .S1     A3,24,A3          ; |199| 
           STB     .D1T1   A3,*+A10(11)      ; |199| 
           LDW     .D2T1   *+B10(8),A3       ; |200| 
           NOP             4
           SHRU    .S1     A3,16,A3          ; |200| 
           STB     .D1T1   A3,*+A10(10)      ; |200| 
           LDW     .D2T2   *+B10(8),B4       ; |201| 
           NOP             4
           SHRU    .S2     B4,8,B4           ; |201| 
           STB     .D1T2   B4,*+A10(9)       ; |201| 
           LDBU    .D2T1   *+B10(8),A3       ; |202| 
           NOP             4
           STB     .D1T1   A3,*+A10(8)       ; |202| 
           LDW     .D2T2   *+B10(12),B4      ; |199| 
           NOP             4
           SHRU    .S1X    B4,24,A3          ; |199| 
           STB     .D1T1   A3,*+A10(15)      ; |199| 
           LDW     .D2T2   *+B10(12),B4      ; |200| 
           NOP             4
           SHRU    .S2     B4,16,B4          ; |200| 
           STB     .D1T2   B4,*+A10(14)      ; |200| 
           LDW     .D2T2   *+B10(12),B4      ; |201| 
           NOP             4
           SHRU    .S2     B4,8,B4           ; |201| 
           STB     .D1T2   B4,*+A10(13)      ; |201| 
           LDBU    .D2T1   *+B10(12),A3      ; |202| 
           NOP             3
           LDDW    .D2T2   *+SP(80),B11:B10  ; |204| 

           STB     .D1T1   A3,*+A10(12)      ; |202| 
||         RET     .S2     B3                ; |204| 

           LDW     .D2T1   *++SP(96),A10     ; |204| 
	.dwpsn	"SSHMD5.C",204,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |204| 
	.dwattr DW$26, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$26, DW_AT_end_line(0xcc)
	.dwattr DW$26, DW_AT_end_column(0x01)
	.dwendtag DW$26

	.sect	".text"

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("hmacmd5_do_hmac_internal"), DW_AT_symbol_name("_hmacmd5_do_hmac_internal")
	.dwattr DW$29, DW_AT_low_pc(_hmacmd5_do_hmac_internal)
	.dwattr DW$29, DW_AT_high_pc(0x00)
	.dwattr DW$29, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$29, DW_AT_begin_line(0x104)
	.dwattr DW$29, DW_AT_begin_column(0x0d)
	.dwattr DW$29, DW_AT_frame_base[DW_OP_breg31 128]
	.dwattr DW$29, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",264,1

;******************************************************************************
;* FUNCTION NAME: _hmacmd5_do_hmac_internal                                   *
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
;*   Local Frame Size  : 0 Args + 108 Auto + 20 Save = 128 byte               *
;******************************************************************************
_hmacmd5_do_hmac_internal:
;** --------------------------------------------------------------------------*
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$30, DW_AT_type(*DW$T$3)
	.dwattr DW$30, DW_AT_location[DW_OP_reg4]
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$31, DW_AT_type(*DW$T$58)
	.dwattr DW$31, DW_AT_location[DW_OP_reg20]
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$32, DW_AT_type(*DW$T$10)
	.dwattr DW$32, DW_AT_location[DW_OP_reg6]
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk2"), DW_AT_symbol_name("_blk2")
	.dwattr DW$33, DW_AT_type(*DW$T$58)
	.dwattr DW$33, DW_AT_location[DW_OP_reg22]
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len2"), DW_AT_symbol_name("_len2")
	.dwattr DW$34, DW_AT_type(*DW$T$10)
	.dwattr DW$34, DW_AT_location[DW_OP_reg8]
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hmac"), DW_AT_symbol_name("_hmac")
	.dwattr DW$35, DW_AT_type(*DW$T$29)
	.dwattr DW$35, DW_AT_location[DW_OP_reg24]
;** 265	-----------------------    keys = (struct _MD5Context *)(handle+88);
;** 269	-----------------------    s = *(struct _MD5Context *)handle;
;** 270	-----------------------    MD5Update(&s, blk, (unsigned)len);
;** 271	-----------------------    if ( blk2 == NULL ) goto g3;
           CALL    .S1     __strasg          ; |269| 
           ADDK    .S2     -128,SP           ; |264| 
           STDW    .D2T1   A11:A10,*+SP(112) ; |264| 

           STDW    .D2T2   B11:B10,*+SP(120) ; |264| 
||         MV      .L1X    B4,A7             ; |264| 

           MV      .L1X    B6,A10            ; |264| 
||         STW     .D2T1   A12,*+SP(128)     ; |264| 
||         MV      .L2X    A4,B4             ; |264| 

           ADDKPC  .S2     RL7,B3,0          ; |269| 
||         ADD     .L1X    4,SP,A4           ; |269| 
||         MV      .L2     B3,B11            ; |264| 
||         MV      .D2X    A4,B10            ; |264| 
||         MVK     .S1     0x5c,A6           ; |269| 
||         MV      .D1     A6,A5             ; |264| 

RL7:       ; CALL OCCURS {__strasg}          ; |269| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _MD5Update        ; |270| 
           ADD     .L1X    4,SP,A4           ; |270| 
           ADDKPC  .S2     RL8,B3,0          ; |270| 
           MV      .L1X    B8,A12            ; |264| 
           MV      .S1     A8,A11            ; |264| 

           MV      .L2X    A7,B4             ; |270| 
||         MV      .D1     A5,A6             ; |270| 

RL8:       ; CALL OCCURS {_MD5Update}        ; |270| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A0            ; |271| 
||         ADD     .S1X    4,SP,A4           ; |271| 
||         ADDAD   .D2     B10,11,B10        ; |265| 
||         MV      .D1     A11,A6            ; |271| 
||         MV      .L2X    A10,B4            ; |271| 

   [!A0]   B       .S1     L3                ; |271| 
|| [!A0]   ADDAD   .D2     SP,12,B5          ; |272| 

   [ A0]   CALL    .S1     _MD5Update        ; |271| 
   [!A0]   CALL    .S1     _MD5Final         ; |272| 
           NOP             3
           ; BRANCHCC OCCURS {L3}            ; |271| 
;** --------------------------------------------------------------------------*
;** 271	-----------------------    MD5Update(&s, blk2, (unsigned)len2);
           ADDKPC  .S2     RL9,B3,0          ; |271| 
RL9:       ; CALL OCCURS {_MD5Update}        ; |271| 

           CALL    .S1     _MD5Final         ; |272| 
||         ADDAD   .D2     SP,12,B5          ; |272| 

           NOP             3
;** --------------------------------------------------------------------------*
L3:    
;**	-----------------------g3:
;** 272	-----------------------    MD5Final(&intermediate, &s);
;** 273	-----------------------    s = *(keys+4);
;** 274	-----------------------    MD5Update(&s, &intermediate, 16u);
;** 275	-----------------------    MD5Final(hmac, &s);
;** 275	-----------------------    return;
           ADDKPC  .S2     RL10,B3,0         ; |272| 

           ADD     .L2     4,SP,B4           ; |272| 
||         MV      .L1X    B5,A4             ; |272| 

RL10:      ; CALL OCCURS {_MD5Final}         ; |272| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __strasg          ; |273| 
           ADDKPC  .S2     RL11,B3,1         ; |273| 
           MVK     .S1     0x5c,A6           ; |273| 
           ADD     .L2     4,B10,B4          ; |273| 
           ADD     .L1X    4,SP,A4           ; |273| 
RL11:      ; CALL OCCURS {__strasg}          ; |273| 
           CALL    .S1     _MD5Update        ; |274| 
           ADD     .L1X    4,SP,A4           ; |274| 
           ADDAD   .D2     SP,12,B4          ; |274| 
           MVK     .S1     0x10,A6           ; |274| 
           ADDKPC  .S2     RL12,B3,1         ; |274| 
RL12:      ; CALL OCCURS {_MD5Update}        ; |274| 
           CALL    .S1     _MD5Final         ; |275| 
           MV      .L1     A12,A4            ; |275| 
           ADD     .L2     4,SP,B4           ; |275| 
           ADDKPC  .S2     RL13,B3,2         ; |275| 
RL13:      ; CALL OCCURS {_MD5Final}         ; |275| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(112),A11:A10 ; |276| 
||         MV      .L2     B11,B3            ; |276| 

           RET     .S2     B3                ; |276| 
||         LDW     .D2T1   *+SP(128),A12     ; |276| 

           LDDW    .D2T2   *+SP(120),B11:B10 ; |276| 
           NOP             3
	.dwpsn	"SSHMD5.C",276,1
           ADDK    .S2     128,SP            ; |276| 
           ; BRANCH OCCURS {B3}              ; |276| 
	.dwattr DW$29, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$29, DW_AT_end_line(0x114)
	.dwattr DW$29, DW_AT_end_column(0x01)
	.dwendtag DW$29

	.sect	".text"

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("hmacmd5_do_hmac_ssh"), DW_AT_symbol_name("_hmacmd5_do_hmac_ssh")
	.dwattr DW$36, DW_AT_low_pc(_hmacmd5_do_hmac_ssh)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$36, DW_AT_begin_line(0x11c)
	.dwattr DW$36, DW_AT_begin_column(0x0d)
	.dwattr DW$36, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$36, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",286,1

;******************************************************************************
;* FUNCTION NAME: _hmacmd5_do_hmac_ssh                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                  *
;******************************************************************************
_hmacmd5_do_hmac_ssh:
;** --------------------------------------------------------------------------*
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$37, DW_AT_type(*DW$T$3)
	.dwattr DW$37, DW_AT_location[DW_OP_reg4]
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$38, DW_AT_type(*DW$T$58)
	.dwattr DW$38, DW_AT_location[DW_OP_reg20]
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$39, DW_AT_type(*DW$T$10)
	.dwattr DW$39, DW_AT_location[DW_OP_reg6]
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("seq"), DW_AT_symbol_name("_seq")
	.dwattr DW$40, DW_AT_type(*DW$T$13)
	.dwattr DW$40, DW_AT_location[DW_OP_reg22]
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hmac"), DW_AT_symbol_name("_hmac")
	.dwattr DW$41, DW_AT_type(*DW$T$29)
	.dwattr DW$41, DW_AT_location[DW_OP_reg8]
;** 289	-----------------------    seqbuf[0] = seq>>24;
;** 290	-----------------------    seqbuf[1] = seq>>16;
;** 291	-----------------------    seqbuf[2] = seq>>8;
;** 292	-----------------------    seqbuf[3] = seq;
;** 294	-----------------------    hmacmd5_do_hmac_internal(handle, &seqbuf, 4, blk, len, hmac);
;** 294	-----------------------    return;
           CALL    .S1     _hmacmd5_do_hmac_internal ; |294| 

           STW     .D2T2   B3,*SP--(24)      ; |286| 
||         MV      .L2     B6,B16            ; |286| 
||         MV      .S2     B7,B17            ; |286| 

           STB     .D2T2   B16,*+SP(11)      ; |292| 
||         SHRU    .S2     B17:B16,24,B5:B4  ; |289| 
||         MV      .L2     B4,B6             ; |286| 

           SHRU    .S2     B17:B16,16,B5:B4  ; |290| 
||         STB     .D2T2   B4,*+SP(8)        ; |289| 

           SHRU    .S2     B17:B16,8,B5:B4   ; |291| 
||         STB     .D2T2   B4,*+SP(9)        ; |290| 
||         MV      .L2X    A8,B8             ; |286| 

           ADDKPC  .S2     RL14,B3,0         ; |294| 
||         ADD     .L2     8,SP,B4           ; |294| 
||         STB     .D2T2   B4,*+SP(10)       ; |291| 
||         MVK     .L1     0x4,A6            ; |294| 
||         MV      .S1     A6,A8             ; |286| 

RL14:      ; CALL OCCURS {_hmacmd5_do_hmac_internal}  ; |294| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(24),B3      ; |295| 
           NOP             4
	.dwpsn	"SSHMD5.C",295,1
           RETNOP  .S2     B3,5              ; |295| 
           ; BRANCH OCCURS {B3}              ; |295| 
	.dwattr DW$36, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$36, DW_AT_end_line(0x127)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendtag DW$36

	.sect	".text"

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("hmacmd5_verify"), DW_AT_symbol_name("_hmacmd5_verify")
	.dwattr DW$42, DW_AT_low_pc(_hmacmd5_verify)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$42, DW_AT_begin_line(0x12f)
	.dwattr DW$42, DW_AT_begin_column(0x0c)
	.dwattr DW$42, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$42, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",305,1

;******************************************************************************
;* FUNCTION NAME: _hmacmd5_verify                                             *
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
;*   Local Frame Size  : 0 Args + 20 Auto + 8 Save = 28 byte                  *
;******************************************************************************
_hmacmd5_verify:
;** --------------------------------------------------------------------------*
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 249
;*      Loop closing brace source line   : 249
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 16                    
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
L4:    ; PIPED LOOP PROLOG
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$43, DW_AT_type(*DW$T$3)
	.dwattr DW$43, DW_AT_location[DW_OP_reg4]
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$44, DW_AT_type(*DW$T$29)
	.dwattr DW$44, DW_AT_location[DW_OP_reg20]
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$45, DW_AT_type(*DW$T$10)
	.dwattr DW$45, DW_AT_location[DW_OP_reg6]
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("seq"), DW_AT_symbol_name("_seq")
	.dwattr DW$46, DW_AT_type(*DW$T$13)
	.dwattr DW$46, DW_AT_location[DW_OP_reg22]
;** 307	-----------------------    hmacmd5_do_hmac_ssh(handle, blk, len, seq, &correct);
;** 246	-----------------------    mem2 = &blk[len-1];  // [2]
;** 249	-----------------------    L$1 = 16;  // [2]
;** 243	-----------------------    mem1 = &correct[-1];  // [2]
;**  	-----------------------    #pragma MUST_ITERATE(1, 16, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g2:
;** 249	-----------------------    cp = *(++mem1);  // [2]
;** 249	-----------------------    U$19 = *(++mem2);  // [2]
;** 249	-----------------------    if ( cp != U$19 ) goto g4;  // [2]
;** 249	-----------------------    if ( --L$1 ) goto g2;  // [2]
           CALL    .S2     _hmacmd5_do_hmac_ssh ; |307| 
           NOP             2
           STW     .D2T1   A10,*SP--(32)     ; |305| 
           ADD     .L1X    A6,B4,A10         ; |246| 

           STW     .D2T2   B13,*+SP(28)      ; |305| 
||         MV      .L2     B3,B13            ; |305| 
||         ADD     .L1X    8,SP,A8           ; |307| 
||         ADDKPC  .S2     RL15,B3,0         ; |307| 

RL15:      ; CALL OCCURS {_hmacmd5_do_hmac_ssh}  ; |307| 
           NOP             1

           SUB     .L1     A10,1,A4          ; |246| 
||         ADD     .L2     7,SP,B4           ; |243| 

           LDBU    .D1T1   *++A4,A3          ; |249| (P) <0,0> 
||         LDBU    .D2T2   *++B4,B6          ; |249| (P) <0,0> 

           NOP             2
           MVC     .S2     CSR,B7

           MVK     .S2     0x10,B5           ; |249| 
||         AND     .L2     -2,B7,B8

	.dwpsn	"E:/CCStudio_v3.1/C6000/cgtools/include/string.h",249,0

           MVC     .S2     B8,CSR            ; interrupts off
||         CMPEQ   .L1X    B6,A3,A0          ; |249| (P) <0,5>  ^ 

;** --------------------------------------------------------------------------*
L5:    ; PIPED LOOP KERNEL
DW$L$_hmacmd5_verify$3$B:

           ZERO    .L2     B0                ; |249| <0,6>  ^ 
|| [ A0]   SUB     .S2     B5,1,B5           ; |249| <0,6>  ^ 

   [ A0]   MV      .L2     B5,B0             ; |249| <0,7>  ^ 

   [ B0]   BNOP    .S1     L5,4              ; |249| <0,8> 
|| [ B0]   LDBU    .D2T2   *++B4,B6          ; |249| <1,0> 
|| [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| <1,0> 

           CMPEQ   .L1X    B6,A3,A0          ; |249| <1,5>  ^ 
DW$L$_hmacmd5_verify$3$E:
;** --------------------------------------------------------------------------*
L6:    ; PIPED LOOP EPILOG
;**	-----------------------g4:
;** 250	-----------------------    return cp == U$19;  // [2]

           CMPEQ   .L1X    B6,A3,A4          ; |250| 
||         LDW     .D2T2   *+SP(28),B13      ; |309| 
||         MVC     .S2     B7,CSR            ; interrupts on
||         MV      .L2     B13,B3            ; |309| 

	.dwpsn	"SSHMD5.C",309,1

           RETNOP  .S2     B3,5              ; |309| 
||         LDW     .D2T1   *++SP(32),A10     ; |309| 

           ; BRANCH OCCURS {B3}              ; |309| 

DW$47	.dwtag  DW_TAG_loop
	.dwattr DW$47, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHMD5.asm:L5:1:1297920391")
	.dwattr DW$47, DW_AT_begin_file("E:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$47, DW_AT_begin_line(0xf9)
	.dwattr DW$47, DW_AT_end_line(0xf9)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_hmacmd5_verify$3$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_hmacmd5_verify$3$E)
	.dwendtag DW$47

	.dwattr DW$42, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$42, DW_AT_end_line(0x135)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendtag DW$42

	.sect	".text"
	.global	_hmacmd5_make_context

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("hmacmd5_make_context"), DW_AT_symbol_name("_hmacmd5_make_context")
	.dwattr DW$49, DW_AT_low_pc(_hmacmd5_make_context)
	.dwattr DW$49, DW_AT_high_pc(0x00)
	.dwattr DW$49, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$49, DW_AT_begin_line(0xdf)
	.dwattr DW$49, DW_AT_begin_column(0x07)
	.dwattr DW$49, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$49, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",224,1

;******************************************************************************
;* FUNCTION NAME: _hmacmd5_make_context                                       *
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
_hmacmd5_make_context:
;** --------------------------------------------------------------------------*
;** 225	-----------------------    return safemalloc(2u, 92u);
           CALLRET .S1     _safemalloc       ; |225| 
           NOP             3
           MVK     .L1     0x2,A4            ; |225| 
	.dwpsn	"SSHMD5.C",226,1
           MVK     .S2     0x5c,B4           ; |225| 
RL16:      ; CALL-RETURN OCCURS {_safemalloc}  ; |225| 
	.dwattr DW$49, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$49, DW_AT_end_line(0xe2)
	.dwattr DW$49, DW_AT_end_column(0x01)
	.dwendtag DW$49

	.sect	".text"
	.global	_MD5Init

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("MD5Init"), DW_AT_symbol_name("_MD5Init")
	.dwattr DW$50, DW_AT_low_pc(_MD5Init)
	.dwattr DW$50, DW_AT_high_pc(0x00)
	.dwattr DW$50, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$50, DW_AT_begin_line(0x76)
	.dwattr DW$50, DW_AT_begin_column(0x06)
	.dwattr DW$50, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$50, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",119,1

;******************************************************************************
;* FUNCTION NAME: _MD5Init                                                    *
;*                                                                            *
;*   Regs Modified     : A3,A5,B4,B5                                          *
;*   Regs Used         : A3,A4,A5,B3,B4,B5                                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_MD5Init:
;** --------------------------------------------------------------------------*
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$51, DW_AT_type(*DW$T$54)
	.dwattr DW$51, DW_AT_location[DW_OP_reg4]
;** 24	-----------------------    *(unsigned *)s = 0x67452301u;  // [5]
;** 25	-----------------------    *((struct $$fake0 *)s+4) = 0xefcdab89u;  // [5]
;** 26	-----------------------    *((struct $$fake0 *)s+8) = 0x98badcfeu;  // [5]
;** 27	-----------------------    *((struct $$fake0 *)s+12) = 0x10325476u;  // [5]
;** 27	-----------------------    (*s).blkused = C$1 = 0;  // [5]
;** 122	-----------------------    (*s).lenlo = C$1;
;** 122	-----------------------    (*s).lenhi = C$1;
;** 122	-----------------------    return;

           ZERO    .L1     A5                ; |27| 
||         MVKL    .S1     0x10325476,A3     ; |27| 

           STW     .D1T1   A5,*+A4(80)       ; |27| 
||         MVKH    .S1     0x10325476,A3     ; |27| 
||         MVKL    .S2     0xefcdab89,B5     ; |25| 

           RET     .S2     B3                ; |123| 
||         STW     .D1T1   A3,*+A4(12)       ; |27| 

           STW     .D1T1   A5,*+A4(88)       ; |122| 
||         MVKL    .S2     0x98badcfe,B4     ; |26| 

           STW     .D1T1   A5,*+A4(84)       ; |122| 
||         MVKH    .S2     0xefcdab89,B5     ; |25| 

           STW     .D1T2   B5,*+A4(4)        ; |25| 
||         MVKL    .S1     0x67452301,A3     ; |24| 
||         MVKH    .S2     0x98badcfe,B4     ; |26| 

           STW     .D1T2   B4,*+A4(8)        ; |26| 
||         MVKH    .S1     0x67452301,A3     ; |24| 

	.dwpsn	"SSHMD5.C",123,1
           STW     .D1T1   A3,*A4            ; |24| 
           ; BRANCH OCCURS {B3}              ; |123| 
	.dwattr DW$50, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$50, DW_AT_end_line(0x7b)
	.dwattr DW$50, DW_AT_end_column(0x01)
	.dwendtag DW$50

	.sect	".text"
	.global	_hmacmd5_key

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("hmacmd5_key"), DW_AT_symbol_name("_hmacmd5_key")
	.dwattr DW$52, DW_AT_low_pc(_hmacmd5_key)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$52, DW_AT_begin_line(0xe9)
	.dwattr DW$52, DW_AT_begin_column(0x06)
	.dwattr DW$52, DW_AT_frame_base[DW_OP_breg31 88]
	.dwattr DW$52, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",234,1

;******************************************************************************
;* FUNCTION NAME: _hmacmd5_key                                                *
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
_hmacmd5_key:
;** --------------------------------------------------------------------------*
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$53, DW_AT_type(*DW$T$3)
	.dwattr DW$53, DW_AT_location[DW_OP_reg4]
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("keyv"), DW_AT_symbol_name("_keyv")
	.dwattr DW$54, DW_AT_type(*DW$T$40)
	.dwattr DW$54, DW_AT_location[DW_OP_reg20]
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$55, DW_AT_type(*DW$T$10)
	.dwattr DW$55, DW_AT_location[DW_OP_reg6]
;** 235	-----------------------    keys = (struct _MD5Context *)handle;
;** 240	-----------------------    memset(&foo, 54, 64u);
;** 241	-----------------------    if ( len <= 0 ) goto g4;
;**  	-----------------------    Q$1 = &foo[0];
;** 241	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _memset           ; |240| 
           STW     .D2T1   A12,*SP--(88)     ; |234| 
           STDW    .D2T2   B11:B10,*+SP(80)  ; |234| 
           STDW    .D2T1   A11:A10,*+SP(72)  ; |234| 

           MV      .S1X    B4,A12            ; |234| 
||         MVK     .S2     0x36,B4           ; |240| 
||         CMPGT   .L1     A6,0,A11          ; |241| 

           ADDKPC  .S2     RL17,B3,0         ; |240| 
||         ADD     .L1X    8,SP,A4           ; |240| 
||         MVK     .S1     0x40,A6           ; |240| 
||         MV      .D1     A4,A10            ; |234| 
||         MV      .L2     B3,B11            ; |234| 
||         MV      .D2X    A6,B10            ; |234| 

RL17:      ; CALL OCCURS {_memset}           ; |240| 
;** --------------------------------------------------------------------------*

           MV      .L1     A11,A0
||         ZERO    .L2     B6                ; |241| 
||         ADD     .S2     8,SP,B7

   [!A0]   BNOP    .S1     L10,2             ; |241| 
|| [ A0]   MVK     .S2     64,B8             ; |241| (P) <0,1> 

   [ A0]   ADD     .L1X    1,B6,A6           ; |241| 
   [ A0]   ADD     .L1     1,A6,A31          ; |241| 
   [ A0]   CMPLT   .L2X    A6,B8,B8          ; |241| (P) <0,2> 
           ; BRANCHCC OCCURS {L10}           ; |241| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 242	-----------------------    Q$1[i] = Q$1[i]^*(i+(const unsigned char * const)keyv);
;** 241	-----------------------    ++i;
;** 241	-----------------------    if ( (i < len)&(i < 64) ) goto g3;

           MVK     .S2     64,B31            ; |241| (P) <1,1> 
||         MV      .L1X    B6,A4
||         MV      .S1     A12,A8
||         MVK     .L2     0x1,B1

           MV      .L1X    B7,A3
||         MVC     .S2     CSR,B16
||         LDBU    .D1T2   *+A4[A8],B4       ; |242| (P) <0,4> 

           CMPLT   .L1X    A6,B10,A16        ; |241| 
||         LDBU    .D1T1   *+A4[A3],A5       ; |242| (P) <0,5> 
||         AND     .L2     -2,B16,B5
||         ADD     .S1     1,A31,A6          ; |241| (P) <2,0> 

           AND     .L1X    B8,A16,A0         ; |241| (P) <0,4> 
||         CMPLT   .L2X    A31,B31,B8        ; |241| (P) <1,2> 
||         MVC     .S2     B5,CSR            ; interrupts off

   [!A0]   ZERO    .L2     B1                ; |241| (P) <0,6> 
||         ADD     .L1X    1,B6,A4           ; |241| 

           CMPLT   .L1X    A31,B10,A16       ; |241| 
           MV      .L1X    B10,A9
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 241
;*      Loop opening brace source line   : 242
;*      Loop closing brace source line   : 242
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
L7:    ; PIPED LOOP PROLOG

   [ B1]   B       .S1     L8                ; |241| (P) <0,7> 
||         AND     .L1X    B8,A16,A0         ; |241| (P) <1,4> 
||         MVK     .S2     64,B8             ; |241| (P) <2,1> 
|| [ B1]   LDBU    .D1T2   *+A4[A8],B4       ; |242| (P) <1,4> 

           ADD     .S1X    2,B6,A7           ; |241| 
|| [ B1]   LDBU    .D1T1   *+A4[A3],A5       ; |242| (P) <1,5> 
||         CMPLT   .L2X    A6,B8,B8          ; |241| (P) <2,2> 
||         CMPLT   .L1     A6,A9,A16         ; |241| (P) <2,2> 

	.dwpsn	"SSHMD5.C",241,0

           MVK     .L2     0x1,B0
||         MV      .S2     B1,B5             ; |241| (P) <0,9> Split a long life
|| [!A0]   ZERO    .D2     B1                ; |241| (P) <1,6> 
||         MV      .L1     A6,A7             ; |241| (P) <2,3> Split a long life
||         ADD     .S1     1,A6,A6           ; |241| (P) <3,0> 
||         MV      .D1     A7,A4             ; |241| (P) <1,6> Split a long life

;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP KERNEL
DW$L$_hmacmd5_key$5$B:
	.dwpsn	"SSHMD5.C",242,0

           XOR     .L2X    B4,A5,B9          ; |242| <0,10> 
|| [ B1]   B       .S1     L8                ; |241| <1,7> 
||         AND     .L1X    B8,A16,A0         ; |241| <2,4> 
|| [ B1]   LDBU    .D1T2   *+A4[A8],B4       ; |242| <2,4> 
||         MVK     .S2     64,B8             ; |241| <3,1> 

   [ B0]   STB     .D2T2   B9,*+B6[B7]       ; |242| <0,11> 
||         MV      .S2     B5,B0             ; |241| <0,11> Split a long life
|| [ B1]   LDBU    .D1T1   *+A4[A3],A5       ; |242| <2,5> 
||         CMPLT   .L1     A6,A9,A16         ; |241| <3,2> 
||         CMPLT   .L2X    A6,B8,B8          ; |241| <3,2> 

           ADD     .L2     1,B6,B6           ; |241| <0,12> Define a twin register
||         MV      .D2     B1,B5             ; |241| <1,9> Split a long life
||         MV      .L1     A7,A4             ; |241| <2,6> Split a long life
|| [!A0]   ZERO    .S2     B1                ; |241| <2,6> 
||         MV      .S1     A6,A7             ; |241| <3,3> Split a long life
||         ADD     .D1     1,A6,A6           ; |241| <4,0> 

DW$L$_hmacmd5_key$5$E:
;** --------------------------------------------------------------------------*
L9:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           MV      .L2X    A9,B10
||         MVC     .S2     B16,CSR           ; interrupts on
||         MV      .L1     A8,A12

;** --------------------------------------------------------------------------*
L10:    
;**	-----------------------g4:
;**  	-----------------------    MD5Init(keys);
;** 244	-----------------------    MD5Update(keys, &foo, K$5 = 64u);
;** 246	-----------------------    memset(&foo, 92, K$5);
;** 247	-----------------------    if ( len <= 0 ) goto g8;
;**  	-----------------------    Q$2 = &foo[0];
;** 247	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _MD5Init
           ADDKPC  .S2     RL18,B3,3
           MV      .L1     A10,A4
RL18:      ; CALL OCCURS {_MD5Init} 
;** --------------------------------------------------------------------------*
           CALL    .S1     _MD5Update        ; |244| 
           MVK     .S1     0x40,A11          ; |244| 
           ADDKPC  .S2     RL19,B3,1         ; |244| 
           MV      .L1     A11,A6            ; |244| 
           ADD     .L2     8,SP,B4           ; |244| 
RL19:      ; CALL OCCURS {_MD5Update}        ; |244| 
           CALL    .S1     _memset           ; |246| 
           MVK     .S2     0x5c,B4           ; |246| 
           ADD     .S1X    8,SP,A4           ; |246| 
           MV      .L1     A11,A6            ; |246| 
           ADDKPC  .S2     RL20,B3,1         ; |246| 
RL20:      ; CALL OCCURS {_memset}           ; |246| 
;** --------------------------------------------------------------------------*

           CMPGT   .L2     B10,0,B0          ; |247| 
||         ZERO    .S2     B6                ; |247| 
||         ADD     .D2     8,SP,B7

   [!B0]   BNOP    .S1     L14,2             ; |247| 
|| [ B0]   MVK     .S2     64,B8             ; |247| (P) <0,1> 

   [ B0]   ADD     .L1X    1,B6,A6           ; |247| 
   [ B0]   ADD     .L1     1,A6,A31          ; |247| 
   [ B0]   CMPLT   .L2X    A6,B8,B8          ; |247| (P) <0,2> 
           ; BRANCHCC OCCURS {L14}           ; |247| 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;** 248	-----------------------    Q$2[i] = Q$2[i]^*(i+(const unsigned char * const)keyv);
;** 247	-----------------------    ++i;
;** 247	-----------------------    if ( (i < len)&(i < 64) ) goto g6;
;** 247	-----------------------    K$5 = 64u;

           MVK     .S2     64,B31            ; |247| (P) <1,1> 
||         MV      .L1X    B6,A4
||         MV      .S1     A12,A8
||         MVK     .L2     0x1,B1

           MV      .L1X    B7,A3
||         MVC     .S2     CSR,B16
||         LDBU    .D1T2   *+A4[A8],B4       ; |248| (P) <0,4> 

           CMPLT   .L1X    A6,B10,A16        ; |247| 
||         LDBU    .D1T1   *+A4[A3],A5       ; |248| (P) <0,5> 
||         AND     .L2     -2,B16,B5
||         ADD     .S1     1,A31,A6          ; |247| (P) <2,0> 

           AND     .L1X    B8,A16,A0         ; |247| (P) <0,4> 
||         CMPLT   .L2X    A31,B31,B8        ; |247| (P) <1,2> 
||         MVC     .S2     B5,CSR            ; interrupts off

   [!A0]   ZERO    .L2     B1                ; |247| (P) <0,6> 
||         ADD     .L1X    1,B6,A4           ; |247| 

           CMPLT   .L1X    A31,B10,A16       ; |247| 
           MV      .L1X    B10,A9
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 247
;*      Loop opening brace source line   : 248
;*      Loop closing brace source line   : 248
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
L11:    ; PIPED LOOP PROLOG

   [ B1]   B       .S1     L12               ; |247| (P) <0,7> 
||         AND     .L1X    B8,A16,A0         ; |247| (P) <1,4> 
||         MVK     .S2     64,B8             ; |247| (P) <2,1> 
|| [ B1]   LDBU    .D1T2   *+A4[A8],B4       ; |248| (P) <1,4> 

           ADD     .S1X    2,B6,A7           ; |247| 
|| [ B1]   LDBU    .D1T1   *+A4[A3],A5       ; |248| (P) <1,5> 
||         CMPLT   .L2X    A6,B8,B8          ; |247| (P) <2,2> 
||         CMPLT   .L1     A6,A9,A16         ; |247| (P) <2,2> 

	.dwpsn	"SSHMD5.C",247,0

           MVK     .L2     0x1,B0
||         MV      .S2     B1,B5             ; |247| (P) <0,9> Split a long life
|| [!A0]   ZERO    .D2     B1                ; |247| (P) <1,6> 
||         MV      .L1     A6,A7             ; |247| (P) <2,3> Split a long life
||         ADD     .S1     1,A6,A6           ; |247| (P) <3,0> 
||         MV      .D1     A7,A4             ; |247| (P) <1,6> Split a long life

;** --------------------------------------------------------------------------*
L12:    ; PIPED LOOP KERNEL
DW$L$_hmacmd5_key$13$B:
	.dwpsn	"SSHMD5.C",248,0

           XOR     .L2X    B4,A5,B9          ; |248| <0,10> 
|| [ B1]   B       .S1     L12               ; |247| <1,7> 
||         AND     .L1X    B8,A16,A0         ; |247| <2,4> 
|| [ B1]   LDBU    .D1T2   *+A4[A8],B4       ; |248| <2,4> 
||         MVK     .S2     64,B8             ; |247| <3,1> 

   [ B0]   STB     .D2T2   B9,*+B6[B7]       ; |248| <0,11> 
||         MV      .S2     B5,B0             ; |247| <0,11> Split a long life
|| [ B1]   LDBU    .D1T1   *+A4[A3],A5       ; |248| <2,5> 
||         CMPLT   .L1     A6,A9,A16         ; |247| <3,2> 
||         CMPLT   .L2X    A6,B8,B8          ; |247| <3,2> 

           ADD     .L2     1,B6,B6           ; |247| <0,12> Define a twin register
||         MV      .D2     B1,B5             ; |247| <1,9> Split a long life
||         MV      .L1     A7,A4             ; |247| <2,6> Split a long life
|| [!A0]   ZERO    .S2     B1                ; |247| <2,6> 
||         MV      .S1     A6,A7             ; |247| <3,3> Split a long life
||         ADD     .D1     1,A6,A6           ; |247| <4,0> 

DW$L$_hmacmd5_key$13$E:
;** --------------------------------------------------------------------------*
L13:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B16,CSR           ; interrupts on
;** --------------------------------------------------------------------------*
L14:    
;**	-----------------------g8:
;** 249	-----------------------    MD5Init(keys+92);
;** 250	-----------------------    MD5Update(keys+92, &foo, K$5);
;** 252	-----------------------    memset(&foo, 0, K$5);
;** 252	-----------------------    return;
           CALL    .S1     _MD5Init          ; |249| 
           ADDKPC  .S2     RL21,B3,3         ; |249| 
           ADDAW   .D1     A10,23,A4         ; |249| 
RL21:      ; CALL OCCURS {_MD5Init}          ; |249| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _MD5Update        ; |250| 
           ADDKPC  .S2     RL22,B3,1         ; |250| 
           MV      .L1     A11,A6            ; |250| 
           ADD     .L2     8,SP,B4           ; |250| 
           ADDAW   .D1     A10,23,A4         ; |250| 
RL22:      ; CALL OCCURS {_MD5Update}        ; |250| 
           CALL    .S1     _memset           ; |252| 
           ADD     .S1X    8,SP,A4           ; |252| 
           ZERO    .L2     B4                ; |252| 
           MV      .L1     A11,A6            ; |252| 
           ADDKPC  .S2     RL23,B3,1         ; |252| 
RL23:      ; CALL OCCURS {_memset}           ; |252| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(72),A11:A10  ; |253| 
||         MV      .L2     B11,B3            ; |253| 

           RET     .S2     B3                ; |253| 
||         LDDW    .D2T2   *+SP(80),B11:B10  ; |253| 

           LDW     .D2T1   *++SP(88),A12     ; |253| 
	.dwpsn	"SSHMD5.C",253,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |253| 

DW$56	.dwtag  DW_TAG_loop
	.dwattr DW$56, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHMD5.asm:L12:1:1297920391")
	.dwattr DW$56, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$56, DW_AT_begin_line(0xf7)
	.dwattr DW$56, DW_AT_end_line(0xf8)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_hmacmd5_key$13$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_hmacmd5_key$13$E)
	.dwendtag DW$56


DW$58	.dwtag  DW_TAG_loop
	.dwattr DW$58, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\SSHMD5.asm:L8:1:1297920391")
	.dwattr DW$58, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$58, DW_AT_begin_line(0xf1)
	.dwattr DW$58, DW_AT_end_line(0xf2)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_hmacmd5_key$5$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_hmacmd5_key$5$E)
	.dwendtag DW$58

	.dwattr DW$52, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$52, DW_AT_end_line(0xfd)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendtag DW$52

	.sect	".text"

DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("hmacmd5_key_16"), DW_AT_symbol_name("_hmacmd5_key_16")
	.dwattr DW$60, DW_AT_low_pc(_hmacmd5_key_16)
	.dwattr DW$60, DW_AT_high_pc(0x00)
	.dwattr DW$60, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$60, DW_AT_begin_line(0xff)
	.dwattr DW$60, DW_AT_begin_column(0x0d)
	.dwattr DW$60, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$60, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",256,1

;******************************************************************************
;* FUNCTION NAME: _hmacmd5_key_16                                             *
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
_hmacmd5_key_16:
;** --------------------------------------------------------------------------*
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$61, DW_AT_type(*DW$T$3)
	.dwattr DW$61, DW_AT_location[DW_OP_reg4]
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$62, DW_AT_type(*DW$T$29)
	.dwattr DW$62, DW_AT_location[DW_OP_reg20]
;** 257	-----------------------    hmacmd5_key(handle, (const void * const)key, 16);
;** 257	-----------------------    return;
           CALLRET .S1     _hmacmd5_key      ; |257| 
           NOP             4
	.dwpsn	"SSHMD5.C",258,1
           MVK     .S1     0x10,A6           ; |257| 
RL24:      ; CALL-RETURN OCCURS {_hmacmd5_key}  ; |257| 
	.dwattr DW$60, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$60, DW_AT_end_line(0x102)
	.dwattr DW$60, DW_AT_end_column(0x01)
	.dwendtag DW$60

	.sect	".text"

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("hmacmd5_generate"), DW_AT_symbol_name("_hmacmd5_generate")
	.dwattr DW$63, DW_AT_low_pc(_hmacmd5_generate)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$63, DW_AT_begin_line(0x129)
	.dwattr DW$63, DW_AT_begin_column(0x0d)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",299,1

;******************************************************************************
;* FUNCTION NAME: _hmacmd5_generate                                           *
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
_hmacmd5_generate:
;** --------------------------------------------------------------------------*
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$64, DW_AT_type(*DW$T$3)
	.dwattr DW$64, DW_AT_location[DW_OP_reg4]
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$65, DW_AT_type(*DW$T$29)
	.dwattr DW$65, DW_AT_location[DW_OP_reg20]
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$66, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_location[DW_OP_reg6]
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("seq"), DW_AT_symbol_name("_seq")
	.dwattr DW$67, DW_AT_type(*DW$T$13)
	.dwattr DW$67, DW_AT_location[DW_OP_reg22]
;** 300	-----------------------    hmacmd5_do_hmac_ssh(handle, blk, len, seq, blk+len);
;** 300	-----------------------    return;
           CALLRET .S1     _hmacmd5_do_hmac_ssh ; |300| 
           NOP             4
	.dwpsn	"SSHMD5.C",301,1
           ADD     .L1X    A6,B4,A8          ; |300| 
RL25:      ; CALL-RETURN OCCURS {_hmacmd5_do_hmac_ssh}  ; |300| 
	.dwattr DW$63, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$63, DW_AT_end_line(0x12d)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"
	.global	_hmacmd5_free_context

DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("hmacmd5_free_context"), DW_AT_symbol_name("_hmacmd5_free_context")
	.dwattr DW$68, DW_AT_low_pc(_hmacmd5_free_context)
	.dwattr DW$68, DW_AT_high_pc(0x00)
	.dwattr DW$68, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$68, DW_AT_begin_line(0xe4)
	.dwattr DW$68, DW_AT_begin_column(0x06)
	.dwattr DW$68, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$68, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",229,1

;******************************************************************************
;* FUNCTION NAME: _hmacmd5_free_context                                       *
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
_hmacmd5_free_context:
;** --------------------------------------------------------------------------*
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$69, DW_AT_type(*DW$T$3)
	.dwattr DW$69, DW_AT_location[DW_OP_reg4]
;** 230	-----------------------    safefree(handle);
;** 230	-----------------------    return;
           CALLRET .S1     _safefree         ; |230| 
	.dwpsn	"SSHMD5.C",231,1
           NOP             5
RL26:      ; CALL-RETURN OCCURS {_safefree}  ; |230| 
	.dwattr DW$68, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$68, DW_AT_end_line(0xe7)
	.dwattr DW$68, DW_AT_end_column(0x01)
	.dwendtag DW$68

	.sect	".text"
	.global	_hmacmd5_do_hmac

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("hmacmd5_do_hmac"), DW_AT_symbol_name("_hmacmd5_do_hmac")
	.dwattr DW$70, DW_AT_low_pc(_hmacmd5_do_hmac)
	.dwattr DW$70, DW_AT_high_pc(0x00)
	.dwattr DW$70, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$70, DW_AT_begin_line(0x116)
	.dwattr DW$70, DW_AT_begin_column(0x06)
	.dwattr DW$70, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$70, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",280,1

;******************************************************************************
;* FUNCTION NAME: _hmacmd5_do_hmac                                            *
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
_hmacmd5_do_hmac:
;** --------------------------------------------------------------------------*
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$71, DW_AT_type(*DW$T$3)
	.dwattr DW$71, DW_AT_location[DW_OP_reg4]
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$72, DW_AT_type(*DW$T$58)
	.dwattr DW$72, DW_AT_location[DW_OP_reg20]
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$73, DW_AT_type(*DW$T$10)
	.dwattr DW$73, DW_AT_location[DW_OP_reg6]
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hmac"), DW_AT_symbol_name("_hmac")
	.dwattr DW$74, DW_AT_type(*DW$T$29)
	.dwattr DW$74, DW_AT_location[DW_OP_reg22]
;** 281	-----------------------    hmacmd5_do_hmac_internal(handle, blk, len, NULL, 0, hmac);
;** 281	-----------------------    return;
           CALLRET .S1     _hmacmd5_do_hmac_internal ; |281| 
           NOP             2
           ZERO    .L1     A8                ; |281| 
           MV      .S2     B6,B8             ; |280| 
	.dwpsn	"SSHMD5.C",282,1
           ZERO    .L2     B6                ; |281| 
RL27:      ; CALL-RETURN OCCURS {_hmacmd5_do_hmac_internal}  ; |281| 
	.dwattr DW$70, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$70, DW_AT_end_line(0x11a)
	.dwattr DW$70, DW_AT_end_column(0x01)
	.dwendtag DW$70

	.sect	".text"
	.global	_MD5Simple

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("MD5Simple"), DW_AT_symbol_name("_MD5Simple")
	.dwattr DW$75, DW_AT_low_pc(_MD5Simple)
	.dwattr DW$75, DW_AT_high_pc(0x00)
	.dwattr DW$75, DW_AT_begin_file("SSHMD5.C")
	.dwattr DW$75, DW_AT_begin_line(0xce)
	.dwattr DW$75, DW_AT_begin_column(0x06)
	.dwattr DW$75, DW_AT_frame_base[DW_OP_breg31 104]
	.dwattr DW$75, DW_AT_skeletal(0x01)
	.dwpsn	"SSHMD5.C",207,1

;******************************************************************************
;* FUNCTION NAME: _MD5Simple                                                  *
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
;*   Local Frame Size  : 0 Args + 92 Auto + 8 Save = 100 byte                 *
;******************************************************************************
_MD5Simple:
;** --------------------------------------------------------------------------*
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$76, DW_AT_type(*DW$T$40)
	.dwattr DW$76, DW_AT_location[DW_OP_reg4]
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$77, DW_AT_type(*DW$T$11)
	.dwattr DW$77, DW_AT_location[DW_OP_reg20]
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$78, DW_AT_type(*DW$T$29)
	.dwattr DW$78, DW_AT_location[DW_OP_reg6]
;** 210	-----------------------    MD5Init(&s);
;** 211	-----------------------    MD5Update(&s, (const unsigned char * const)p, len);
;** 212	-----------------------    MD5Final(output, &s);
;** 212	-----------------------    return;
           CALL    .S1     _MD5Init          ; |210| 
           MV      .S1     A4,A7             ; |207| 
           NOP             1
           STW     .D2T1   A10,*SP--(104)    ; |207| 

           MV      .L1X    B4,A6             ; |207| 
||         MV      .S1     A6,A10            ; |207| 

           ADDKPC  .S2     RL28,B3,0         ; |210| 
||         MV      .L2     B3,B13            ; |207| 
||         ADD     .L1X    4,SP,A4           ; |210| 
||         STW     .D2T2   B13,*+SP(100)     ; |207| 

RL28:      ; CALL OCCURS {_MD5Init}          ; |210| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _MD5Update        ; |211| 
           ADDKPC  .S2     RL29,B3,2         ; |211| 
           MV      .L2X    A7,B4             ; |211| 
           ADD     .L1X    4,SP,A4           ; |211| 
RL29:      ; CALL OCCURS {_MD5Update}        ; |211| 
           CALL    .S1     _MD5Final         ; |212| 
           MV      .L1     A10,A4            ; |212| 
           ADD     .L2     4,SP,B4           ; |212| 
           ADDKPC  .S2     RL30,B3,2         ; |212| 
RL30:      ; CALL OCCURS {_MD5Final}         ; |212| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |213| 

           RET     .S2     B3                ; |213| 
||         LDW     .D2T2   *+SP(100),B13     ; |213| 

           LDW     .D2T1   *++SP(104),A10    ; |213| 
	.dwpsn	"SSHMD5.C",213,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |213| 
	.dwattr DW$75, DW_AT_end_file("SSHMD5.C")
	.dwattr DW$75, DW_AT_end_line(0xd5)
	.dwattr DW$75, DW_AT_end_column(0x01)
	.dwendtag DW$75

;; Inlined function references:
;; [  2] memcmp
;; [  5] MD5_Core_Init
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"hmac-md5",0
SL2:	.string	"HMAC-MD5",0
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

DW$T$25	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)

DW$T$42	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$45


DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$27


DW$T$30	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$32

DW$T$40	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$40, DW_AT_address_class(0x20)

DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
	.dwendtag DW$T$52


DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$54)
	.dwendtag DW$T$55


DW$T$59	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$54)
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$54)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$63


DW$T$64	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$68


DW$T$69	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$69

DW$T$29	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$29, DW_AT_address_class(0x20)
DW$T$58	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_address_class(0x20)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$34	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$34


DW$T$76	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$76

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$51	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$51, DW_AT_address_class(0x20)
DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)
DW$T$49	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$49, DW_AT_address_class(0x20)
DW$T$54	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$54, DW_AT_address_class(0x20)
DW$T$90	.dwtag  DW_TAG_const_type
	.dwattr DW$T$90, DW_AT_type(*DW$T$38)
DW$T$39	.dwtag  DW_TAG_const_type
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$57	.dwtag  DW_TAG_const_type
	.dwattr DW$T$57, DW_AT_type(*DW$T$6)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("MD5_Core_State"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)

DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("MD5Context")
	.dwattr DW$T$24, DW_AT_byte_size(0x5c)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$131, DW_AT_name("core"), DW_AT_symbol_name("_core")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$132, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$133, DW_AT_name("blkused"), DW_AT_symbol_name("_blkused")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$134, DW_AT_name("lenhi"), DW_AT_symbol_name("_lenhi")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$135, DW_AT_name("lenlo"), DW_AT_symbol_name("_lenlo")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("ssh_mac")
	.dwattr DW$T$38, DW_AT_byte_size(0x20)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$136, DW_AT_name("make_context"), DW_AT_symbol_name("_make_context")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$137, DW_AT_name("free_context"), DW_AT_symbol_name("_free_context")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$138, DW_AT_name("setkey"), DW_AT_symbol_name("_setkey")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$139, DW_AT_name("generate"), DW_AT_symbol_name("_generate")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$140, DW_AT_name("verify"), DW_AT_symbol_name("_verify")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$141, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$142, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$143, DW_AT_name("text_name"), DW_AT_symbol_name("_text_name")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38

DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$26, DW_AT_address_class(0x20)
DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x20)
DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_address_class(0x20)
DW$T$33	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$32)
	.dwattr DW$T$33, DW_AT_address_class(0x20)

DW$T$23	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$23, DW_AT_byte_size(0x40)
DW$144	.dwtag  DW_TAG_subrange_type
	.dwattr DW$144, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$23

DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_address_class(0x20)

DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x10)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$145, DW_AT_name("h"), DW_AT_symbol_name("_h")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21

DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$36)
	.dwattr DW$T$37, DW_AT_address_class(0x20)

DW$T$20	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$20, DW_AT_byte_size(0x10)
DW$146	.dwtag  DW_TAG_subrange_type
	.dwattr DW$146, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$20

DW$T$36	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$36, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$36, DW_AT_byte_size(0x01)

	.dwattr DW$26, DW_AT_external(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
	.dwattr DW$68, DW_AT_external(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
	.dwattr DW$49, DW_AT_type(*DW$T$3)
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$147, DW_AT_location[DW_OP_reg0]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$148, DW_AT_location[DW_OP_reg1]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$149, DW_AT_location[DW_OP_reg2]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$150, DW_AT_location[DW_OP_reg3]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$151, DW_AT_location[DW_OP_reg4]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$152, DW_AT_location[DW_OP_reg5]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$153, DW_AT_location[DW_OP_reg6]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$154, DW_AT_location[DW_OP_reg7]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$155, DW_AT_location[DW_OP_reg8]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$156, DW_AT_location[DW_OP_reg9]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$157, DW_AT_location[DW_OP_reg10]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$158, DW_AT_location[DW_OP_reg11]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$159, DW_AT_location[DW_OP_reg12]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$160, DW_AT_location[DW_OP_reg13]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$161, DW_AT_location[DW_OP_reg14]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$162, DW_AT_location[DW_OP_reg15]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$163, DW_AT_location[DW_OP_reg16]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$164, DW_AT_location[DW_OP_reg17]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$165, DW_AT_location[DW_OP_reg18]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$166, DW_AT_location[DW_OP_reg19]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$167, DW_AT_location[DW_OP_reg20]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$168, DW_AT_location[DW_OP_reg21]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$169, DW_AT_location[DW_OP_reg22]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$170, DW_AT_location[DW_OP_reg23]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$171, DW_AT_location[DW_OP_reg24]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$172, DW_AT_location[DW_OP_reg25]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$173, DW_AT_location[DW_OP_reg26]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$174, DW_AT_location[DW_OP_reg27]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$175, DW_AT_location[DW_OP_reg28]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$176, DW_AT_location[DW_OP_reg29]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$177, DW_AT_location[DW_OP_reg30]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$178, DW_AT_location[DW_OP_reg31]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x20]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x21]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x22]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x23]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x24]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x25]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x26]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x27]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x28]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x29]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x2a]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x2b]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x2c]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x2d]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x2e]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x2f]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x30]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x31]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x32]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x33]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x34]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x35]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x36]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x37]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x38]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x39]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x3a]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x3b]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x3c]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x3d]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x3e]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x3f]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x40]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x41]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x42]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x43]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x44]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x45]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x46]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x47]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x48]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x49]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x4a]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x4b]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x4c]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x4d]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x4e]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x4f]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x50]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x51]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x52]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x53]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x54]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x55]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x56]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x57]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x58]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x59]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x5a]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x5b]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x5c]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x5d]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x5e]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x5f]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x60]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x61]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x62]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x63]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x64]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x65]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x66]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x67]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x68]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$252, DW_AT_location[DW_OP_regx 0x69]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$253, DW_AT_location[DW_OP_regx 0x6a]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$254, DW_AT_location[DW_OP_regx 0x6b]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$255, DW_AT_location[DW_OP_regx 0x6c]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$256, DW_AT_location[DW_OP_regx 0x6d]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$257, DW_AT_location[DW_OP_regx 0x6e]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$258, DW_AT_location[DW_OP_regx 0x6f]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$259, DW_AT_location[DW_OP_regx 0x70]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$260, DW_AT_location[DW_OP_regx 0x71]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$261, DW_AT_location[DW_OP_regx 0x72]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$262, DW_AT_location[DW_OP_regx 0x73]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$263, DW_AT_location[DW_OP_regx 0x74]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$264, DW_AT_location[DW_OP_regx 0x75]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$265, DW_AT_location[DW_OP_regx 0x76]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$266, DW_AT_location[DW_OP_regx 0x77]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$267, DW_AT_location[DW_OP_regx 0x78]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$268, DW_AT_location[DW_OP_regx 0x79]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$269, DW_AT_location[DW_OP_regx 0x7a]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$270, DW_AT_location[DW_OP_regx 0x7b]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$271, DW_AT_location[DW_OP_regx 0x7c]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$272, DW_AT_location[DW_OP_regx 0x7d]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$273, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

