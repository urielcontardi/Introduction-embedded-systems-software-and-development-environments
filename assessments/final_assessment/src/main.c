/******************************************************************************
 * Copyright (C) 2023 - Uriel Abe Contardi
 *
 * Redistribution, modification, or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material.
 *
 *****************************************************************************/
/**
 * @file main.c
 * @brief Main entry point to the C1M2 Assessment
 *
 * This file contains the main code for the final assessment.
 * It is designed to demonstrate knowledge in embedded software.
 *
 * @author Uriel Abe Contardi
 * @date November 29, 2023
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "memory.h"
#include "stats.h"
#include "data.h"

int main(void)
{
	
// Check if the COURSE1 macro is defined
#ifdef COURSE1
	// Call the course1 function if COURSE1 is defined
	course1();
#endif

	// Return 0 to indicate that the program was executed successfully
	return 0;
}
