#include "windows.h"
#include "LIB_C/new/USBIOX.H"
#pragma comment(lib, "LIB_C/USBIOX.LIB")


BOOL I2C_test(
	ULONG			iIndex )  // ָ��USB2ISP�豸���
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength;
	int i = 0;
	mBuffer[ i++ ] = mUSBIO_CMD_I2C_STREAM;  // ������
	mBuffer[ i++ ] = mUSBIO_CMD_I2C_STM_OUT | 1;  // ������ʼλ
	mBuffer[ i++ ] = 0xff;  // ������ʼλ
	mBuffer[ i++ ] = mUSBIO_CMD_I2C_STM_STO;  // ������ʼλ
	mBuffer[ i++ ] = mUSBIO_CMD_I2C_STM_END;  // ��ǰ����ǰ����
	mLength = i;
	return( USBIO_WriteData( iIndex, mBuffer, &mLength ) );  // д�����ݿ�
}

BOOL I2C_IssueStart(
	ULONG			iIndex )  // ָ��USB2ISP�豸���
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength;
	mBuffer[ 0 ] = mUSBIO_CMD_I2C_STREAM;  // ������
	mBuffer[ 1 ] = mUSBIO_CMD_I2C_STM_STA;  // ������ʼλ
	mBuffer[ 2 ] = mUSBIO_CMD_I2C_STM_END;  // ��ǰ����ǰ����
	mLength = 3;
	return( USBIO_WriteData( iIndex, mBuffer, &mLength ) );  // д�����ݿ�
}

BOOL I2C_IssueStop(
	ULONG			iIndex )  // ָ��USB2ISP�豸���
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength;
	mBuffer[ 0 ] = mUSBIO_CMD_I2C_STREAM;  // ������
	mBuffer[ 1 ] = mUSBIO_CMD_I2C_STM_STO;  // ����ֹͣλ
	mBuffer[ 2 ] = mUSBIO_CMD_I2C_STM_END;  // ��ǰ����ǰ����
	mLength = 3;
	return( USBIO_WriteData( iIndex, mBuffer, &mLength ) );  // д�����ݿ�
}


BOOL I2C_OutByteCheckAck(  // ���һ�ֽ����ݲ����Ӧ���Ƿ���Ч
	ULONG			iIndex,  // ָ��USB2ISP�豸���
	UCHAR			iOutByte )  // ׼��д��������
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength, mInLen;
	mBuffer[ 0 ] = mUSBIO_CMD_I2C_STREAM;  // ������
	mBuffer[ 1 ] = mUSBIO_CMD_I2C_STM_OUT;  // �������,λ5-λ0Ϊ����,0������ֻ����һ���ֽڲ�����Ӧ��
	mBuffer[ 2 ] = iOutByte;  // ����
	mBuffer[ 3 ] = mUSBIO_CMD_I2C_STM_END;  // ��ǰ����ǰ����
	mLength = 4;
	mInLen = 0;
	if ( USBIO_WriteRead( iIndex, mLength, mBuffer, mUSBIO_CMD_I2C_STM_MAX, 1, &mInLen, mBuffer ) ) {  // ִ������������,�����������
		if ( mInLen && ( mBuffer[ mInLen - 1 ] & 0x80 ) == 0 ) return( TRUE );  // ���ص����ݵ�λ7����ACKӦ��λ,ACK=0��Ч
	}
	return( FALSE );
}

BOOL I2C_InCharByAck(  // �������ݿ�,ÿ����һ���ֽڶ�������ЧӦ��
	ULONG			iIndex,  // ָ��USB2ISP�豸���
	ULONG			iInLength,  // ׼����ȡ�������ֽ���,���α���С��32�ֽ�
	PVOID			oInBuffer )  // ָ��һ��������,���غ��Ƕ��������
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength, mInLen;
	mBuffer[ 0 ] = mUSBIO_CMD_I2C_STREAM;  // ������
	mBuffer[ 1 ] = (UCHAR)( mUSBIO_CMD_I2C_STM_IN | 1 );  // ��������,λ5-λ0Ϊ����
	mBuffer[ 2 ] = mUSBIO_CMD_I2C_STM_END;  // ��ǰ����ǰ����
	mLength = 3;
	mInLen = 0;
	if ( USBIO_WriteRead( iIndex, mLength, mBuffer, mUSBIO_CMD_I2C_STM_MAX, 1, oInBuffer, oInBuffer ) ) {  // ִ������������,�����������
		return( TRUE );
	}
	return( FALSE );
}

