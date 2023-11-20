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

# Platform Overrides
PLATFORM=HOST

# Folders
SRC_DIR := ./src
OBJ_DIR := ./obj
INC_DIR := ./include

ifeq ($(PLATFORM),MSP432)
	SOURCES = $(SRC_DIR)/*.c

	INCLUDES+= 	-I include/common/
				-I include/CMSIS/ \
				-I include/msp432/
else
	SOURCES = 	$(SRC_DIR)/main.c \
				$(SRC_DIR)/memory.c \
				$(SRC_DIR)/stats.c \
				$(SRC_DIR)/data.c \
				$(SRC_DIR)/course1.c 

	INCLUDES = -I include/common/

endif

