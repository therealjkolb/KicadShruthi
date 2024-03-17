#!/bin/bash
#don't use this. THis holds some quick commands that I wanted to archive.

#CLEAN EVERYTHING
#rm -rf ./build/*

#Build shurthi (Check the AVRLIB_TOOLS_PATH to make sure it matches your computer)
##make AVRLIB_TOOLS_PATH='/cygdrive/c/Development/JakesSynth/avrtoolchain/avr8-gnu-toolchain-win32_x86_64/bin/'
##make -f ./bootloader/makefile AVRLIB_TOOLS_PATH='/cygdrive/c/Development/JakesSynth/avrtoolchain/avr8-gnu-toolchain-win32_x86_64/bin/'

##Utility commands that I wanted to keep around:

#make clean AVRLIB_TOOLS_PATH='/cygdrive/d/Development/avr8-gnu-toolchain-win32_x86_64/bin/' -j1
#make AVRLIB_TOOLS_PATH='/cygdrive/d/Development/avr8-gnu-toolchain-win32_x86_64/bin/' -j1 
#rm -rf ./bootloader/build/*
#/cygdrive/d/Development/avr8-gnu-toolchain-win32_x86_64/bin/avr-g++ -mmcu=atmega644p -I. -I./devices -g -Os -w -Wall -DF_CPU=20000000 -D__PROG_TYPES_COMPAT__ -fdata-sections -ffunction-sections -fshort-enums -fno-move-loop-invariants -DDISABLE_DEFAULT_UART_RX_ISR  -DATMEGA644P -DSERIAL_RX_0 -mcall-prologues -fno-exceptions -c -MT ./bootloader/bootloader.cc -MMD -MP -MF ./bootloader/build/muboot/bootloader.d -o ./bootloader/build/muboot/bootloader.o ./bootloader/bootloader.cc 

#build the bootloader (the make system is really bugged here, so instead of rearchetecting I just hard coded the g++ cmd)
#Note there are several paths here
#Verify the path to your avr-g++ (i'm on 7.3.0)

#/cygdrive/d/Development/avr8-gnu-toolchain-win32_x86_64/bin/avr-g++ -mmcu=atmega644p -I.  -I//cygdrive//d//Development//jakeBoard//KicadShruthi//devices// -I//cygdrive//d//Development//jakeBoard//KicadShruthi// -I/cygdrive/d/Development/jakeBoard/KicadShruthi/avrlib/devices -g -Os -w -Wall -DF_CPU=20000000 -D__PROG_TYPES_COMPAT__ -fdata-sections -ffunction-sections -fshort-enums -fno-move-loop-invariants -DDISABLE_DEFAULT_UART_RX_ISR  -DATMEGA644P -DSERIAL_RX_0 -mcall-prologues -fno-exceptions -c -MT ./bootloader/bootloader.cc -MMD -MP -MF ./bootloader/build/muboot/bootloader.d -o ./bootloader/build/muboot/bootloader.o ./bootloader/bootloader.cc 
#/cygdrive/d/Development/avr8-gnu-toolchain-win32_x86_64/bin/avr-g++ -mmcu=atmega644p -I. -I./devices -g -Os -w -Wall -DF_CPU=20000000 -D__PROG_TYPES_COMPAT__ -fdata-sections -ffunction-sections -fshort-enums -fno-move-loop-invariants -DDISABLE_DEFAULT_UART_RX_ISR  -DATMEGA644P -DSERIAL_RX_0 -mcall-prologues -fno-exceptions -c -MT ./bootloader/bootloader.cc -MMD -MP -MF ./bootloader/build/muboot/bootloader.d -o ./bootloader/build/muboot/bootloader.o ./bootloader/bootloader.cc 


#Copy the build from the bootloader folder to the ./build folder
#cp -r ./bootloader/build/muboot ./build/

#What to use to handle programming manually:
#avrdude -V -p m644p -c usbtiny -P usb -U flash:w:build/shruthi1/shruthi1.hex:i -U flash:w:build/shruthi1/muboot.hex:i -U eeprom:w:shruthi/data/factory_data/internal_eeprom_xt.hex:i




