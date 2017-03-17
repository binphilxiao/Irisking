#include "winsock2.h"
#include "windows.h"
#include "LIB_C/new/USBIOX.H"
#pragma comment(lib, "ws2_32.lib")


#define HOST_IP "10.2.1.2"
#define PORTNUM	20000

int delay_ms(int n)
{
	Sleep(n);
	return 1;
}

int receive_str(SOCKET s, unsigned char* buf)
{
	unsigned char c;
	int i = 0;
	while(1)
	{
		if (recv(s, &c, 1, 0) == SOCKET_ERROR)
			return 0;

		if (c == '\n')
		{
			buf[i] = 0;
			return 1;
		}

		buf[i] = c;
		i ++;
	}
}

int recv_all(SOCKET s, unsigned char *buf, int len)
{
	int i, t = len;
	while(len)
	{
		if ( (i = recv(s, buf, len, 0)) == SOCKET_ERROR)
			return SOCKET_ERROR;
		len -= i;
		buf += i;
	}
	return t;
}

int retrieve_data(unsigned char *buf)
{
	SOCKET s;
	SOCKADDR_IN addr;
	PHOSTENT phostent = NULL;
	unsigned char str[1024];

	addr.sin_family = AF_INET;
	addr.sin_addr.S_un.S_addr = inet_addr(HOST_IP);
	addr.sin_port = htons (PORTNUM);
	
	// Retrieve the host information corresponding to the host name.
	s = socket (AF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (connect (s, (PSOCKADDR) &addr, sizeof (addr)) == SOCKET_ERROR) 
	{
		printf ("connect %s failed.\n", HOST_IP);
		closesocket (s);
		return 0;
	}
	
	while(1)
	{
		if (!receive_str(s, str))
		{
			printf("error in comm\n");
			exit(1);
		}

		if (strcmp(str, "stream:") == 0)
		{
			printf("receive data\n");
			if (recv_all(s, buf, 4 + 8 + 16 + 128) == SOCKET_ERROR)
				printf("recv data error\n");
			break;
		}
		else
			printf("server: %s\n", str);
	}
	

	closesocket (s);
	return 1;

	
}

void program_chip()
{
	int wVersionRequested;
	WSADATA wsaData;
	int err;
	char buf[256];

	wVersionRequested = MAKEWORD( 2, 2 );
 
	err = WSAStartup( wVersionRequested, &wsaData );
	if ( err != 0 ) {
	    /* Tell the user that we could not find a usable */
	    /* WinSock DLL.                                  */
	    return;
	}
 
	/* Confirm that the WinSock DLL supports 2.2.*/
	/* Note that if the DLL supports versions greater    */
	/* than 2.2 in addition to 2.2, it will still return */
	/* 2.2 in wVersion since that is the version we      */
	/* requested.                                        */
 
	if ( LOBYTE( wsaData.wVersion ) != 2 ||
			HIBYTE( wsaData.wVersion ) != 2 ) {
		/* Tell the user that we could not find a usable */
		/* WinSock DLL.                                  */
		WSACleanup( );
		return; 
	}
	retrieve_data(buf);
	if (!verify_data(buf))
		exit(1);

	printf("\nprogram C0104\n");


	USBIO_ResetDevice(0);

	C0104_Program(0, buf, 4 + 8 + 16 + 128);
	WSACleanup( );
}

void verify_chip()
{
	unsigned char buf[4 + 8 + 16 + 128];
	unsigned char *config;
	unsigned char *data;
	unsigned char G[8];
	config = buf;
	data = buf + 4 + 8 + 16;

	ATMEL_ReadConfigZone(0, config);

	generate_key(G, config);

	ATMEL_Auth(0, G);
	ATMEL_EncryptActive(0);

	ATMEL_Decrypt(0, data, 128);
	buf[4] = 0xb;
	verify_data(buf);
	ATMEL_Auth(0, G);
//	dump(buf, 4 + 8 + 16 + 128);
}

//01100100
int main(int argc, char* argv[])
{
	HANDLE hI2C;

	hI2C = USBIO_OpenDevice(0);
	if (!hI2C || (hI2C == -1))
	{
		printf("USB2I2C open failed\n");
		exit(0);
	}

	if ((argc == 2) && (strcmp(argv[1], "-v") == 0))
		verify_chip();
	else
		program_chip();


	USBIO_CloseDevice(0);
	return 0;
}