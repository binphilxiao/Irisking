#include "windows.h"
#include "LIB_C/new/USBIOX.H"
#pragma comment(lib, "LIB_C/USBIOX.LIB")


BOOL I2C_test(
	ULONG			iIndex )  // 指定USB2ISP设备序号
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength;
	int i = 0;
	mBuffer[ i++ ] = mUSBIO_CMD_I2C_STREAM;  // 命令码
	mBuffer[ i++ ] = mUSBIO_CMD_I2C_STM_OUT | 1;  // 产生起始位
	mBuffer[ i++ ] = 0xff;  // 产生起始位
	mBuffer[ i++ ] = mUSBIO_CMD_I2C_STM_STO;  // 产生起始位
	mBuffer[ i++ ] = mUSBIO_CMD_I2C_STM_END;  // 当前包提前结束
	mLength = i;
	return( USBIO_WriteData( iIndex, mBuffer, &mLength ) );  // 写出数据块
}

BOOL I2C_IssueStart(
	ULONG			iIndex )  // 指定USB2ISP设备序号
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength;
	mBuffer[ 0 ] = mUSBIO_CMD_I2C_STREAM;  // 命令码
	mBuffer[ 1 ] = mUSBIO_CMD_I2C_STM_STA;  // 产生起始位
	mBuffer[ 2 ] = mUSBIO_CMD_I2C_STM_END;  // 当前包提前结束
	mLength = 3;
	return( USBIO_WriteData( iIndex, mBuffer, &mLength ) );  // 写出数据块
}

BOOL I2C_IssueStop(
	ULONG			iIndex )  // 指定USB2ISP设备序号
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength;
	mBuffer[ 0 ] = mUSBIO_CMD_I2C_STREAM;  // 命令码
	mBuffer[ 1 ] = mUSBIO_CMD_I2C_STM_STO;  // 产生停止位
	mBuffer[ 2 ] = mUSBIO_CMD_I2C_STM_END;  // 当前包提前结束
	mLength = 3;
	return( USBIO_WriteData( iIndex, mBuffer, &mLength ) );  // 写出数据块
}


BOOL I2C_OutByteCheckAck(  // 输出一字节数据并检查应答是否有效
	ULONG			iIndex,  // 指定USB2ISP设备序号
	UCHAR			iOutByte )  // 准备写出的数据
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength, mInLen;
	mBuffer[ 0 ] = mUSBIO_CMD_I2C_STREAM;  // 命令码
	mBuffer[ 1 ] = mUSBIO_CMD_I2C_STM_OUT;  // 输出数据,位5-位0为长度,0长度则只发送一个字节并返回应答
	mBuffer[ 2 ] = iOutByte;  // 数据
	mBuffer[ 3 ] = mUSBIO_CMD_I2C_STM_END;  // 当前包提前结束
	mLength = 4;
	mInLen = 0;
	if ( USBIO_WriteRead( iIndex, mLength, mBuffer, mUSBIO_CMD_I2C_STM_MAX, 1, &mInLen, mBuffer ) ) {  // 执行数据流命令,先输出再输入
		if ( mInLen && ( mBuffer[ mInLen - 1 ] & 0x80 ) == 0 ) return( TRUE );  // 返回的数据的位7代表ACK应答位,ACK=0有效
	}
	return( FALSE );
}

BOOL I2C_InCharByAck(  // 输入数据块,每输入一个字节都产生有效应答
	ULONG			iIndex,  // 指定USB2ISP设备序号
	ULONG			iInLength,  // 准备读取的数据字节数,单次必须小于32字节
	PVOID			oInBuffer )  // 指向一个缓冲区,返回后是读入的数据
{
	UCHAR	mBuffer[ mUSBIO_PACKET_LENGTH ];
	ULONG	mLength, mInLen;
	mBuffer[ 0 ] = mUSBIO_CMD_I2C_STREAM;  // 命令码
	mBuffer[ 1 ] = (UCHAR)( mUSBIO_CMD_I2C_STM_IN | 1 );  // 输入数据,位5-位0为长度
	mBuffer[ 2 ] = mUSBIO_CMD_I2C_STM_END;  // 当前包提前结束
	mLength = 3;
	mInLen = 0;
	if ( USBIO_WriteRead( iIndex, mLength, mBuffer, mUSBIO_CMD_I2C_STM_MAX, 1, oInBuffer, oInBuffer ) ) {  // 执行数据流命令,先输出再输入
		return( TRUE );
	}
	return( FALSE );
}

