#******************************************************************************
# Copyright (C) 2023 - Uriel Abe Contardi
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************
include sources.mk

# Compile time switches
COURSE1 = true
VERBOSE = true

# General Flags for all platforms
GEN_FLAGS = -Wall \
			-g \
			-O0 \
			-std=c99
			# -Werror \

TARGET = final_assesment

# General Flags for all platforms
GEN_FLAGS = -Wall \
			-g \
			-O0 \
			-std=c99
			# -Werror \

TARGET = final_assesment

# Platform Dependant Variables
ifeq ($(PLATFORM),MSP432)
	# MSP432 dependant build options
	CPU = cortex-m4
	ARCH = armv7e-m

	# Compiler
	CC = arm-none-eabi-gcc

	# Linker
	LD = arm-none-eabi-ld
	SIZE = arm-none-eabi-size

	# Linker Flags
	LINKER_FILE = ../msp432p401r.lds
	LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE) -lm
	
	# Compiler Flags
	CFLAGS = 	$(GEN_FLAGS) \
				-mcpu=$(CPU) \
				-mthumb \
				-march=$(ARCH) \
				-mfloat-abi=hard \
				-mfpu=fpv4-sp-d16\
				--specs=nosys.specs
	CPPFLAGS = -DMSP432 $(INCLUDES)


else
	# @echo Host platform detected
	CC = gcc
	CFLAGS = $(GEN_FLAGS)
	CPPFLAGS = -DHOST $(INCLUDES)
	SIZE = size
	LDFLAGS = -lm

endif

# IF COURSE1 is defined, add a flag
ifeq ($(COURSE1), true)
	CPPFLAGS += -DCOURSE1
endif

# IF VERBOSE is defined, add a flag
ifeq ($(VERBOSE), true)
	CPPFLAGS += -DVERBOSE
endif

PREP = $(SOURCES:.c=.i)	# Preprocessor Files
DEPS = $(SOURCES:.c=.d)	# Dependancy Files
ASMS = $(SOURCES:.c=.asm)	# Assembly Files
OBJS = $(SOURCES:.c=.o)	# Object files

.PHONY: compile-all build clean run

# Compile all object files and link into a final executable.
build: $(TARGET).out

$(TARGET).out: $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -o $@
	$(SIZE) $@
	
# Generate Preprocesed output of all c-program implementation files (use the -E flag)
%.i: %.c
	$(CC) -E $< $(CFLAGS) $(CPPFLAGS) -o $@

# Generate assembly output of c-program implementation files and the final output executable (Use the –S flag and the objdump utility).
%.asm: %.c
	$(CC) -S $< $(CFLAGS) $(CPPFLAGS) -o $@

# Generate the object file for all c-source files (but do not link) by specifying the object file you want to compile.
%.o: %.c
	$(CC) -c $< $(CFLAGS) $(CPPFLAGS) -o $@

# Generate Dependancy files for each Source File
%.d: %c
	$(CC) -E -M $<  $(CPPFLAGS) -o $@

# Compile all object files, but DO NOT link.
compile-all: $(OBJS)

clean:
	# This should remove all compiled objects, preprocessed outputs, assembly outputs, executable files and build output files.
	@echo Removing all built files
	find ./src/ -type f \( -name "*.o" -o -name "*.out" -o -name "*.map" -o -name "*.asm" -o -name "*.i" \) -delete

# Build all and run file
run: $(TARGET).out
	./$(TARGET).out