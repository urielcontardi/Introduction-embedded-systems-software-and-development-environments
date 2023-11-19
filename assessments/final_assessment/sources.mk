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

ifeq ($(PLATFORM),MSP432)
	SOURCES = src/*.c

	INCLUDES = \
		-I ../include/common \
		-I ../include/CMSIS \
		-I ../include/msp432 

else
	SOURCES = src/main.c \
			src/course1.c \
		 	src/memory.c \
		 	src/data.c \
		 	src/stats.c \

	INCLUDES = \
		-I ../include/common \

endif


