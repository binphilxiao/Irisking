#ifndef __STOP_H__
#define __STOP_H__

void Test_StopMode(void);
void Test_PowerOffMode(void);
void Test_InitSDRAM(void);
void Test_BattFaultInterrupt(void);

void Check_PowerOffWakeUp(void);

void Check_PowerOffWakeUp_100Hz(void);
void Test_PowerOffMode_100Hz(void);


void SetAlarmWakeUp(void);
void ConfigStopGPIO(void);
void RestoreGPIO(void);

#endif /*__STOP_H__*/
