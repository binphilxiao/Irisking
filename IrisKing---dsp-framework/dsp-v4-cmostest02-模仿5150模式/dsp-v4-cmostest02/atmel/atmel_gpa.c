#include <stdio.h>
#include "..\include\dbg_printf.h"

#define TOTAL_BITS	16
#define BITS(reg, high, low)	((((((int)reg) << (TOTAL_BITS - high - 1)) & 0xffff) >> (TOTAL_BITS - high - 1 + low)))

static unsigned char Gpa_byte;
static unsigned char RA, RB, RC, RD, RE, RF, RG;
static unsigned char SA, SB, SC, SD, SE, SF, SG;
static unsigned char TA, TB, TC, TD, TE;


static void _dump_gpa(void)
{
	dbg_output("%02x %02x %02x %02x %02x %02x %02x\n", RA, RB, RC, RD, RE, RF, RG);
	dbg_output("%02x %02x %02x %02x %02x %02x %02x\n", SA, SB, SC, SD, SE, SF, SG);
	dbg_output("%02x %02x %02x %02x %02x\n", TA, TB, TC, TD, TE);

	dbg_output("gpa_byte = %02x\n\n", Gpa_byte);

}

static void _atmel_reset_gpa()
{
	RA = RB = RC = RD = RE = RF = RG = 0;
	SA = SB = SC = SD = SE = SF = SG = 0;
	TA = TB = TC = TD = TE = 0;
	Gpa_byte = 0;
}

static unsigned char _atmel_gpa(unsigned char Datain)
{
	unsigned char Din_gpa;

	unsigned char Ri, Si, Ti;
	unsigned char RGin, SGin;
	unsigned char Raddmod31, Saddmod127, Taddmod31;
	unsigned char Gpaoi;

	Din_gpa = Datain ^ Gpa_byte;

	Ri = BITS(Din_gpa, 4, 0);
	Si = (BITS(Din_gpa, 3, 0) << 3) | BITS(Din_gpa, 7, 5);
	Ti = BITS(Din_gpa, 7, 3);

	RGin = (BITS(RG, 3, 0) << 1) | BITS(RG, 4, 4);
	Raddmod31 = (RD + RGin > 31) ? (RD + RGin) - 31 : RD + RGin;

	RG = RF;
	RF = RE;
	RE = RD;
	RD = RC ^ Ri;
	RC = RB;
	RB = RA;
	RA = Raddmod31;

	SGin = (BITS(SG, 5, 0) << 1) | BITS(SG, 6, 6);
	Saddmod127 = (SF + SGin > 127) ? (SF + SGin) - 127: SF + SGin;
	SG = SF;
	SF = SE ^ Si;
	SE = SD;
	SD = SC;
	SC = SB;
	SB = SA;
	SA = Saddmod127;

	Taddmod31 = (TE + TC > 31) ? (TE + TC) - 31 : TE + TC;
	TE = TD;
	TD = TC;
	TC = TB ^ Ti;
	TB = TA;
	TA = Taddmod31;

	Gpaoi = (~BITS(SA, 3, 0) & (BITS(RA, 3, 0) ^ BITS(RE, 3, 0))) | 
		(BITS(SA, 3, 0) & (BITS(TA, 3, 0) ^ BITS(TD, 3, 0)));

	Gpaoi = BITS(Gpaoi, 3, 0);
	

	Gpa_byte = BITS(Gpa_byte, 3, 0) << 4 | Gpaoi;

	return Gpa_byte;
}


static void _atmel_repeat(int n, unsigned char in)
{
	int i;
	for (i = 0; i < n; i++)
		_atmel_gpa(in);
}

static void _atmel_gpa_init(unsigned char Ci[8], unsigned char G[8], unsigned char Q[8], 
							unsigned char Ch[8])
{
	int j;
	_atmel_reset_gpa();

	for (j = 0; j < 4; j++)
	{
		_atmel_repeat(3, Ci[2*j]);
		_atmel_repeat(3, Ci[2*j + 1]);
		_atmel_repeat(1, Q[j]);
	}

	for (j = 0; j < 4; j++)
	{
		_atmel_repeat(3, G[2*j]);
		_atmel_repeat(3, G[2*j + 1]);
		_atmel_repeat(1, Q[j + 4]);
	}

	_atmel_repeat(6, 0x00);

	Ch[0] = Gpa_byte;
	for (j = 1; j < 8; j++)
	{
		_atmel_repeat(7, 0x00);
		Ch[j] = Gpa_byte;
	}

}

static void _atmel_encrypt_nego(unsigned char Q[8], unsigned char Ch[8])
{
	int j;
	unsigned char Ci[8], Sk[8];
	
	Ci[0] = 0xff;
	for (j = 1; j < 8; j ++)
	{
		_atmel_repeat(2, 0x00);
		Ci[j] = Gpa_byte;
	}

	for (j = 0; j < 8; j ++)
	{
		_atmel_repeat(2, 0x00);
		Sk[j] = Gpa_byte;
	}

	_atmel_repeat(3, 0x00);

	_atmel_gpa_init(Ci, Sk, Q, Ch);
//	dump(Ci, 8);

	Ci[0] = 0xff;
	for (j = 1; j < 8; j ++)
	{
		_atmel_repeat(2, 0x00);
		Ci[j] = Gpa_byte;
	}
//	dump(Ci, 8);

	for (j = 0; j < 8; j ++)
	{
		_atmel_repeat(2, 0x00);
		Sk[j] = Gpa_byte;
	}

	_atmel_repeat(3, 0x00);

}

void ATMEL_ReadEncConfigZone(int index, unsigned char addr, unsigned char *buf, unsigned char len)
{
	int j;
	ATMEL_ReadRawConfigZone(index, addr, buf, len);
//	dump(buf, 8);

	_atmel_repeat(5, 0x00);
	_atmel_repeat(1, addr);
	_atmel_repeat(5, 0x00);
	_atmel_repeat(1, len);

	for (j = 0; j < len; j ++)
	{
		buf[j] ^= Gpa_byte;
		_atmel_repeat(1, buf[j]);
		_atmel_repeat(5, 0x00);
	}

//	dump(buf, 8);

}

int ATMEL_EncryptActive(int index)
{
	int i;
	unsigned char *Q, *Ch, Ci[8];
	unsigned char auth_cmd[4 + 16] = {0xb8, 0x10, 0x00, 0x10};
	unsigned char temp[256];
	unsigned char AAC0;
	Q = auth_cmd + 4;
	Ch = Q + 8;

	for (i = 0; i < 8; i++)
		Q[i] = rand();

	_atmel_encrypt_nego(Q, Ch);
	AAC0 = 0xff;

	I2C_Stream(index, sizeof(auth_cmd), auth_cmd, 0, temp);
#if 0
	ATMEL_ReadRawConfigZone(index, 0x50, Ci, 8);

	if (AAC0 == Ci[0])
		dbg_output("enc success!\n");
	else
		dbg_output("enc error AAC = %d %d\n", AAC0, Ci[0]);
#endif
	return 0;
}

int ATMEL_Auth(int index, unsigned char G[8])
{
	int i;
	unsigned char *Q, *Ch, Ci[8];
	unsigned char auth_cmd[4 + 16] = {0xb8, 0x00, 0x00, 0x10};
	unsigned char temp[256];
	Q = auth_cmd + 4;
	Ch = Q + 8;

	ATMEL_ReadRawConfigZone(index, 0x50, Ci, 8);

	for (i = 0; i < 8; i++)
		Q[i] = rand();
	
	_atmel_gpa_init(Ci, G, Q, Ch);

	ATMEL_AckPolling(index);
	I2C_Stream(index, sizeof(auth_cmd), auth_cmd, 0, temp);

	ATMEL_ReadRawConfigZone(index, 0x50, Ci, 8);
#if 0
	if (0xff == Ci[0])
		dbg_output("Auth success.\n");
	else
		dbg_output("auth error AAC = %d\n", Ci[0]);
#endif

	return 0;
}

int ATMEL_ClearAuth(int index)
{
	int i;
	unsigned char *Q, *Ch, Ci[8];
	unsigned char auth_cmd[4] = {0xb8, 0x00, 0x00, 0x00};
	unsigned char temp[16];

	I2C_Stream(index, sizeof(auth_cmd), auth_cmd, 0, temp);
	return 0;
}


int ATMEL_RstGpa(int index)
{
	unsigned char auth_cmd[4 + 16] = {0xb8, 0x00, 0x00, 0x10};

	I2C_Stream(index, sizeof(auth_cmd), auth_cmd, 0, NULL);
	return 0;
}


int ATMEL_Decrypt(int index, unsigned char *buf, int len)
{
	int i, read_len, j;
	
	ATMEL_ReadRawUserZone(0, buf, len);
	for (i = 0; i < 4; i++)
	{
		_atmel_repeat(1, i);
		if (len > 32)
			read_len = 32;
		else
			read_len = len;

		len -= read_len;
		
		_atmel_repeat(5, 0x00);
		_atmel_repeat(1, 0x00);
		_atmel_repeat(5, 0x00);
		_atmel_repeat(1, read_len);

		for (j = 0; j < read_len; j++)
		{
			buf[j] ^= Gpa_byte;
			_atmel_repeat(1, buf[j]);
			_atmel_repeat(5, 0x00);
		}
		buf += read_len;

		if (len == 0)
			break;
	}
//	dbg_output("\n");
	return 1;
	
}

