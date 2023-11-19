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
#include <stdint.h>
#include <stddef.h>
#include "data.h"

uint8_t my_itoa(int32_t data, uint8_t *ptr, uint32_t base) 
{
    // Handle the case of 0 separately
    if (data == 0) {
        *ptr = '0';
        *(ptr + 1) = '\0';
        return 2; // Length of the converted data (including a null terminator)
    }

    uint8_t isNegative = 0;
    uint8_t length = 0;

    // Handle negative numbers
    if (data < 0) {
        isNegative = 1;
        data = -data; // Make data positive for conversion
    }

    // Convert the number to the specified base
    while (data != 0) {
        int32_t remainder = data % base;
        *(ptr + length) = (remainder > 9) ? (remainder - 10 + 'A') : (remainder + '0');
        data = data / base;
        length++;
    }

    // Add the negative sign if necessary
    if (isNegative) {
        *(ptr + length) = '-';
        length++;
    }

    // Reverse the string
    uint8_t *start = ptr;
    uint8_t *end = ptr + length - 1;

    while (start < end) {
        // Swap the values at the start and end pointers
        uint8_t temp = *start;
        *start = *end;
        *end = temp;

        // Move the pointers towards each other
        start++;
        end--;
    }

    // Add the null terminator
    *(ptr + length) = '\0';

    return length + 1; // Length of the converted data (including a null terminator)
}

int32_t my_atoi(uint8_t *ptr, uint8_t digits, uint32_t base) 
{
    int32_t result = 0;
    uint8_t isNegative = 0;

    // Handle the negative sign if present
    if (*ptr == '-') {
        isNegative = 1;
        ptr++;
    }

    while (*ptr != '\0') {
        uint8_t currentDigit;

        // Convert ASCII to integer for digits 0-9
        if (*ptr >= '0' && *ptr <= '9') {
            currentDigit = *ptr - '0';
        }
        // Convert ASCII to integer for digits A-F (for bases above 10)
        else if (*ptr >= 'A' && *ptr <= 'F') {
            currentDigit = *ptr - 'A' + 10;
        }
        // Convert ASCII to integer for digits a-f (for bases above 10)
        else if (*ptr >= 'a' && *ptr <= 'f') {
            currentDigit = *ptr - 'a' + 10;
        } else {
            // Invalid character in the string
            return 0;
        }

        // Check if the digit is within the specified base
        if (currentDigit >= base) {
            // Invalid digit for the specified base
            return 0;
        }

        // Update the result based on the current digit and base
        result = result * base + currentDigit;

        // Move to the next character in the string using pointer arithmetic
        ptr++;
    }

    // Apply the sign
    return (isNegative) ? -result : result;
}