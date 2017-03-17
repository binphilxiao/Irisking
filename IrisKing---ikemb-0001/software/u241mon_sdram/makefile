# *********************************************
#  NAME: makefile
#  DESC: makefile for u241mon
#  HISTORY:
#  03.23.2002:purnnamu: first release
#  03.27.2002:purnnamu: memtest.c is added.
# *********************************************

PRJ= u241mon
INIT= 2410init
AM1 = 2410slib
CM1 = 2410lib
CM2 = mmu
CM3= usbmain
CM4= usblib
CM5= usbsetup
CM6= usbin
CM7= usbout
CM8= profile
CM9= memtest

HEADERS= $(CM1).h $(CM2).h $(CM3).h $(CM4).h $(CM5).h $(CM6).h $(CM7).h $(CM8).h

#### Destination path Definition ####
OBJ=.\obj
ERR=.\err

#### ARM tool Definition ####
ARMLINK= armlink
ARMASM = armasm
ARMCC  = armcc

#### Option Definition ####
#LFLAGS = -ro-base 0x30000000 -rw-base 0x33ff0000 -elf -map -xref \
#	  -list list.txt -first $(INIT).o(Init)
LFLAGS = -ro-base 0x0 -rw-base 0x33ff0000 -elf -map -xref \
	 -list list.txt -first $(INIT).o(Init)
	 
AFLAGS = -li -apcs /noswst -cpu ARM920T
CFLAGS = -c -g+ -li -apcs /noswst -cpu ARM920T

#### Object combine Definition ####
OBJS =	$(OBJ)\$(INIT).o $(OBJ)\$(PRJ).o  $(OBJ)\$(AM1).o $(OBJ)\$(CM1).o \
	$(OBJ)\$(CM2).o  $(OBJ)\$(CM3).o  $(OBJ)\$(CM4).o $(OBJ)\$(CM5).o \
	$(OBJ)\$(CM6).o  $(OBJ)\$(CM7).o  $(OBJ)\$(CM8).o $(OBJ)\$(CM9).o

all: $(PRJ).axf

clean:
	del $(OBJ)\*.o
	del $(ERR)\*.err
	del $(PRJ).axf
	del $(PRJ).bin

$(PRJ).axf: $(OBJS)
	$(ARMLINK) $(LFLAGS) -o $(PRJ).axf $(OBJS)
	fromelf -nodebug -bin -output $(PRJ).bin $(PRJ).axf
#	fromelf  $(PRJ).axf -text/s  syms.sym
#	fromelf  $(PRJ).axf -text/c  symc.sym
#For SDT2.5 fromelf -nodebug -nozeropad $(PRJ).axf -bin $(PRJ).bin 
#For ADS1.0 fromelf -nodebug -bin -output $(PRJ).bin $(PRJ).axf

$(OBJ)\$(PRJ).o: $(PRJ).c 2410addr.h 2410lib.h option.h
	$(ARMCC) $(CFLAGS) $(PRJ).c -o $(OBJ)\$(PRJ).o -Errors $(ERR)\$(PRJ).err
 
$(OBJ)\$(INIT).o: $(INIT).s option.a
	$(ARMASM) $(AFLAGS) $(INIT).s -o $(OBJ)\$(INIT).o -Errors $(ERR)\$(INIT).err

$(OBJ)\$(AM1).o: $(AM1).s option.a
	$(ARMASM) $(AFLAGS) $(AM1).s -o $(OBJ)\$(AM1).o -Errors $(ERR)\$(AM1).err

$(OBJ)\$(CM1).o: $(CM1).c 2410addr.h 2410lib.h option.h $(HEADERS)
	$(ARMCC) $(CFLAGS) $(CM1).c -o $(OBJ)\$(CM1).o -Errors $(ERR)\$(CM1).err

$(OBJ)\$(CM2).o: $(CM2).c 2410addr.h 2410lib.h option.h $(HEADERS)
	$(ARMCC) $(CFLAGS) $(CM2).c -o $(OBJ)\$(CM2).o -Errors $(ERR)\$(CM2).err

$(OBJ)\$(CM3).o: $(CM3).c 2410addr.h 2410lib.h option.h $(HEADERS)
	$(ARMCC) $(CFLAGS) $(CM3).c -o $(OBJ)\$(CM3).o -Errors $(ERR)\$(CM3).err

$(OBJ)\$(CM4).o: $(CM4).c 2410addr.h 2410lib.h option.h $(HEADERS)
	$(ARMCC) $(CFLAGS) $(CM4).c -o $(OBJ)\$(CM4).o -Errors $(ERR)\$(CM4).err

$(OBJ)\$(CM5).o: $(CM5).c 2410addr.h 2410lib.h option.h $(HEADERS)
	$(ARMCC) $(CFLAGS) $(CM5).c -o $(OBJ)\$(CM5).o -Errors $(ERR)\$(CM5).err

$(OBJ)\$(CM6).o: $(CM6).c 2410addr.h 2410lib.h option.h $(HEADERS)
	$(ARMCC) $(CFLAGS) $(CM6).c -o $(OBJ)\$(CM6).o -Errors $(ERR)\$(CM6).err

$(OBJ)\$(CM7).o: $(CM7).c 2410addr.h 2410lib.h option.h $(HEADERS)
	$(ARMCC) $(CFLAGS) $(CM7).c -o $(OBJ)\$(CM7).o -Errors $(ERR)\$(CM7).err

$(OBJ)\$(CM8).o: $(CM8).c 2410addr.h 2410lib.h option.h $(HEADERS)
	$(ARMCC) $(CFLAGS) $(CM8).c -o $(OBJ)\$(CM8).o -Errors $(ERR)\$(CM8).err

$(OBJ)\$(CM9).o: $(CM9).c 2410addr.h 2410lib.h option.h $(HEADERS)
	$(ARMCC) $(CFLAGS) $(CM9).c -o $(OBJ)\$(CM9).o -Errors $(ERR)\$(CM9).err
	
