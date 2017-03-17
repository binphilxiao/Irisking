/*************************************************************************/
/* driver_test.cmd 															 */
/*************************************************************************/

SECTIONS
{
	l2_section > ISRAM

}

-l..\lib\vport.l64
-l..\lib\vminiport.l64

/*-l..\lib\IrisDSPlib.lib*/
-l..\lib\JudgeQua.lib
-l..\lib\CGDSP.lib

