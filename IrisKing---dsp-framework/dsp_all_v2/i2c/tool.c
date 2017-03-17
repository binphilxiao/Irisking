#include <stdio.h>
#include "../rsalib/ssh.h"
#include "dbg_printf.h"

int C0104_Program(int index, unsigned char* buf, int buf_len)
{
	unsigned char *config;
	unsigned char *data;
	unsigned char G[8];
	unsigned char AR_enc[8] = {0xD5, 0x00, 0xD5, 0x00, 0xD5, 0x00, 0xD5, 0x00};
	unsigned char temp[256];

	int len;

	if (buf_len != (4 + 8 + 16 + 128))
	{
		dbg_output("Program data error!\n");
		exit(1);
	}
//	dump(buf, 4 + 8 + 16 + 128);

	config = buf;
	data = buf + 4 + 8 + 16;

//	ATMEL_RstGpa(0);

//	ATMEL_ReadRawConfigZone(index, 0, temp, 0xf0);
//	dump(temp, 0xf0);

	len = ATMEL_SetupConfigZone(index, config);
	ATMEL_WriteUserZone(index, data, len);

	/* generate G */
	generate_key(G, config);

	/* write G here */
	ATMEL_WriteRawConfigZone(index, 0x90, G, 8);

	ATMEL_WriteRawConfigZone(index, 0x20, AR_enc, 8);

	ATMEL_Auth(index, G);
	ATMEL_EncryptActive(index);

	ATMEL_Decrypt(index, temp, 128);

//	ATMEL_RstGpa(0);


	if (memcmp(data, temp, 128) == 0)
		dbg_output("\nProgram ok!\n");
	else
	{
		dbg_output("\nProgram failed\n");
		exit(1);
	}


	ATMEL_Auth(0, G);

	ATMEL_WriteFuse(0, 0x06);
	ATMEL_WriteFuse(0, 0x04);
	ATMEL_WriteFuse(0, 0x00);
	dbg_output("fuse %02x\n", ATMEL_ReadFuse(0));

	dbg_output("power down this chip.\n");
	getch();
	return 0;
}