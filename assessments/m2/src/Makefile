#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

include sources.mk

# Init Variables
PLATFORM = NONE
TARGET = target

# More Declared Variables
OBJS:= $(SOURCES:.c=.o)

#------------------------------------------------------------------------------
# Configure Variables for each PLATFORM
#------------------------------------------------------------------------------
ifeq ($(PLATFORM), MSP432)
	CPU = cortex-m4
	ARCH = armv7e-m
	SPECS = nosys.specs

	CC = arm-none-eabi-gcc
	LD = arm-none-eabi-ld
	LINKER_FILE = -T ../msp432p401r.lds
	
	LDFLAGS = -Wl,-Map=$(TARGET).map $(LINKER_FILE)
	CFLAGS = -Wall -Werror -O0 -g -std=c99 \
	          -mcpu=$(CPU) \
	          -mthumb \
	          -march=$(ARCH) \
	          --specs=$(SPECS) \
	          -mfloat-abi=hard \
	          -mfpu=fpv4-sp-d16
	CPPFLAGS = -DMSP432 $(INCLUDES)

	SIZE = arm-none-eabi-size

else ifeq ($(PLATFORM), HOST)

	CPU = x86_64
	ARCH:=$(shell arch)
	CC = gcc
	LDFLAGS = -Wl,-Map=$(TARGET).map
	CFLAGS = -Wall -Werror -O0 -g -std=c99
	CPPFLAGS = -DHOST $(INCLUDES)

else
$(error Unknown PLATFORM value: $(PLATFORM). Make sure it is 'HOST' or 'MSP432')
endif

#------------------------------------------------------------------------------
# RULES
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Target: <file>.i
# Prerequisites: the .c file
# Output: the .d as well as .i files
#------------------------------------------------------------------------------
%.i: %.c
	$(CC) -E $< $(CPPFLAGS) -o $@

#------------------------------------------------------------------------------
# Target: <file>.asm
# Prerequisites: the .c file
# Output: the .asm file whether from the .c file or the object file
#------------------------------------------------------------------------------
%.asm : %.c
	$(CC) -S $< $(CFLAGS) $(CPPFLAGS) -o $@
	objdump $(OBJS) -D

#------------------------------------------------------------------------------
# Target: <file>.asm
# Prerequisites: the .c file
# Output: the .asm file whether from the .c file or the object file
#------------------------------------------------------------------------------
%.o: %.c
	$(CC) -c $< $(CFLAGS) $(CPPFLAGS) -o $@

#------------------------------------------------------------------------------
# Target: compile-all
# Prerequisites: the source files
# Output: all source files are compiled but without linking and their corresponding .o files are generated
#------------------------------------------------------------------------------
.PHONY: compile-all
compile-all: $(SOURCES)
#$(OBJS): $(SOURCES)
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $(SOURCES)

#------------------------------------------------------------------------------
# Target: build
# Prerequisites: the main.out file
# Output: the final executable file after linking and a brief report regarding the application size
#------------------------------------------------------------------------------
.PHONY: Build
build: $(TARGET).out

$(TARGET).out: $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -o $@
	$(SIZE) $@
	
#------------------------------------------------------------------------------
# Target: clean
# Prerequisites: None
# Output: all generated file are removed and the directory is cleaned for a new build
#------------------------------------------------------------------------------
.PHONY: clean
clean:
	rm -f *.i *.d *.map *.s *.out *.o *.asm