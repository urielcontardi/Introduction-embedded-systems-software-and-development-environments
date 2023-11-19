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
 * @file data.c
 * @brief File contains functions that perform ASCII-to-INT and INT-to-ASCII
 * 
 * @author Uriel Abe Contardi
 * @date November 29, 2023
 *
 */
#ifndef __DATA_H__
#define __DATA_H__

#include <stdint.h>
#include <stddef.h>

/**
 * @brief Converts an integer to ASCII string representation
 *
 * @param data Integer value to be converted
 * @param ptr Pointer to store the ASCII string
 * @param base Base for conversion (2 to 16)
 * @return Length of the converted data (including a negative sign)
 */
uint8_t my_itoa(int32_t data, uint8_t *ptr, uint32_t base);

/**
 * @brief Converts an ASCII string to a 32-bit signed integer
 *
 * @param ptr Pointer to the ASCII string
 * @param digits Number of digits in the character set
 * @param base Base for conversion (2 to 16)
 * @return Converted 32-bit signed integer
 */
int32_t my_atoi(uint8_t *ptr, uint8_t digits, uint32_t base);


#endif /* __DATA_H__ */

