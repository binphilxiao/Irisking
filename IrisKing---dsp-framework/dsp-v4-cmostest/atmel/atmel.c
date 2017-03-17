#include <stdio.h>
#include <stdlib.h>
#include "..\include\dbg_printf.h"


void ATMEL_WriteRawConfigZone(int index, unsigned char addr, unsigned char *buf, unsigned char  len);

int ATMEL_AckPolling(int index)
{
	int i;
	
	while(1)
	{
		I2C_IssueStart(index);

		//ack poll
		i = I2C_OutByteCheckAck(index, 0xb2);

		I2C_IssueStop(index);	
		if (i)
			break;

		delay_ms(20);
	}
	
	return i;
}

int dump(unsigned char* buf, int len)
{
	int i, j;
	for (i = 0, j = 0; i < len; i++, j++)
	{
		if ((j % 16) == 0)
			dbg_output("\n");
		dbg_output("%02x ", buf[i]);
	}
	dbg_output("\n");
	return 0;
}

int I2C_Stream(unsigned int index, int out_len, unsigned char* out_buf, int in_len, unsigned char *in_buf)
{
	int i, r;
	unsigned char local_buf[256];

restart:
	I2C_IssueStart(index);
	for (i = 0; i < out_len; i++)
	{
		r = I2C_OutByteCheckAck(index, out_buf[i]);
		if (!r)
		{
//			dbg_output("issue cmd error, retry...\n");
			if (i == 3)
			{
//				dbg_output("cmd failed\n");
//				dump(out_buf, out_len);
				return 0;
			}
			delay_ms(20);
			goto restart;
		}
	}

	for (i = 0; i < in_len; i++)
		I2C_InCharByAck(index, 1, &local_buf[i]);

	I2C_IssueStop(index);

	if (in_len)
		memcpy(in_buf, local_buf, in_len);

	return 1;
}

static int _write_userzone_raw_bytes(int index, unsigned char *buf, int len)
{
	unsigned char set_user_zone[] = {0xB4, 0x03, 0x00, 0x00};
	unsigned char write_user_zone[4 + 16] = {0xB0, 0x00, 0x00, 0x0B};
	int i, k;
	unsigned char in_buf[256];
	int write_len;

	ATMEL_AckPolling(index);

	for (i = 0; i < 4; i++)
	{
		set_user_zone[2] = i;
		I2C_Stream(index, sizeof(set_user_zone), set_user_zone, 0, in_buf);
		ATMEL_AckPolling(index);

		for (k = 0; k < 2; k ++)
		{
			if (len > 16)
				write_len = 16;
			else
				write_len = len;

			len -= write_len;

//			dump(buf, write_len);
			memcpy(&write_user_zone[4], buf, write_len);

			buf += write_len;

			write_user_zone[2] = k * 16;
			write_user_zone[3] = write_len;

			I2C_Stream(index, 4 + write_len, write_user_zone, 0, in_buf);
			ATMEL_AckPolling(index);
			
			if (len == 0)
				return 1;
		}
	}
	
	return 1;
}

static int _read_userzone_raw_bytes(int index, unsigned char *buf, int len)
{
	unsigned char set_user_zone[] = {0xB4, 0x03, 0x00, 0x00};
	unsigned char read_user_zone[] = {0xB2, 0x00, 0x00, 0x00};
	int i;
	unsigned char in_buf[256];
	int read_len;

	ATMEL_AckPolling(index);

	for (i = 0; i < 4; i++)
	{
		set_user_zone[2] = i;
		I2C_Stream(index, sizeof(set_user_zone), set_user_zone, 0, in_buf);
		ATMEL_AckPolling(index);

		if (len > 32)
			read_len = 32;
		else
			read_len = len;

		len -= read_len;

		read_user_zone[3] = read_len;

		I2C_Stream(index, sizeof(read_user_zone), read_user_zone, read_len, buf);

		buf += read_len;
		ATMEL_AckPolling(index);
			
		if (len == 0)
			return 1;
	}
	return 1;
}

static int _write_user_zone(int index, unsigned char *buf, int len)
{
	char temp[256]; 
	int r;

	dbg_output("Initial data:\n");
	dbg_output("writing");
	_write_userzone_raw_bytes(index, buf, len);
	dbg_output("\n");

	dbg_output("verify");
	_read_userzone_raw_bytes(index, temp, len);
	dbg_output("\n");
	
	r = memcmp(temp, buf, len);
	if (r)
	{
		dbg_output("data error\n");
		dbg_output("please replace the C0104 chip\n");
		exit(1);
	}
	else
	{
		dbg_output("data ok\n");
	}

	return r;
}

static void _write_config_zone_raw(int index, unsigned char addr, unsigned char *buf, unsigned char len)
{
	unsigned char write_config[256] = {0xb4, 0x00, 0x0B, 0x04};

	write_config[2] = addr;
	write_config[3] = len;
	memcpy(&write_config[4], buf, len);
	ATMEL_AckPolling(0);
	I2C_Stream(0, 4 + len, write_config, 0, NULL);
}

static void _read_config_zone_raw(int index, unsigned char addr, unsigned char *buf, unsigned char len)
{
	unsigned char read_config[] = {0xb6, 0x00, 0x00, 0x01};

	read_config[2] = addr;
	read_config[3] = len;
	ATMEL_AckPolling(index);
	I2C_Stream(index, sizeof(read_config), read_config, len, buf);
}



static void _wirte_config_zone(int index, unsigned char *buf)
{
	unsigned char unlock_config[] = {0xba, 0x07, 0x00, 0x03, 0xdd, 0x42, 0x97};
	unsigned char AR_nor[8] = {0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00};
	
	ATMEL_AckPolling(0);
	I2C_Stream(0, sizeof(unlock_config), unlock_config, 0, NULL);

	ATMEL_WriteRawConfigZone(index, 0x20, AR_nor, 8);

	//we generate password here
	
	_write_config_zone_raw(index, 0x0c, buf, 4);
	buf += 4;

	buf[0] = 0xfb;
	_write_config_zone_raw(index, 0x19, buf + 1, 7);
	buf += 8;

	_write_config_zone_raw(index, 0x40, buf, 16);

}

void ATMEL_ReadConfigZone(int index, unsigned char *buf)
{
	unsigned char* local_buf = buf;

	_read_config_zone_raw(index, 0x0c, buf, 4);
	buf += 4;

	_read_config_zone_raw(index, 0x19, buf + 1, 7);
	buf[0] = 0xfb;
	buf += 8;

	_read_config_zone_raw(index, 0x40, buf, 0x10);
}

int ATMEL_SetupConfigZone(int index, unsigned char *buf)
{
	unsigned char temp[256];

	_wirte_config_zone(index, buf);
	ATMEL_ReadConfigZone(index, temp);

	if (memcmp(buf, temp, 4 + 8 + 16) == 0)
		dbg_output("Init config area.\n");
	else
	{
		dbg_output("Config area error\n");
		dbg_output("please replace the C0104 chip\n");
		exit(1);
	}

	return (int)*(unsigned char*)&buf[4 + 8 + 16 - 1];
}

int ATMEL_WriteFuse(int index, unsigned char fuse_id)
{
	unsigned char fuse[] = {0xB4, 0x01, 0x06, 0x00};
	
	fuse[2] = fuse_id;

	ATMEL_AckPolling(index);
	I2C_Stream(index, sizeof(fuse), fuse, 0, NULL);

}

int ATMEL_ReadFuse(int index)
{
	unsigned char fuse[] = {0xB6, 0x01, 0x00, 0x01};
	unsigned char c;
	
	ATMEL_AckPolling(index);
	I2C_Stream(index, sizeof(fuse), fuse, 1, &c);
	return c;
}


void ATMEL_WriteRawConfigZone(int index, unsigned char addr, unsigned char *buf, unsigned char  len)
{
	_write_config_zone_raw(index, addr, buf, len);
}

void ATMEL_ReadRawConfigZone(int index, unsigned char addr, unsigned char *buf, unsigned char len)
{
	_read_config_zone_raw(index, addr, buf, len);
}

void ATMEL_ReadRawUserZone(int index, unsigned char *buf, unsigned char len)
{
	_read_userzone_raw_bytes(index, buf, len);
}

void ATMEL_WriteUserZone(int index, unsigned char *buf, int len)
{
	_write_user_zone(index, buf, len);
}
