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
 * @file memory.c
 * @brief Abstraction of memory read and write operations
 *
 * This implementation file provides an abstraction of reading and
 * writing to memory via function calls. There is also a globally
 * allocated buffer array used for manipulation.
 *
 * @author Uriel Abe Contardi
 * @date November 29, 2023
 *
 */
#include <stdlib.h>
#include <stdint.h>
#include "memory.h"

/***********************************************************
 Function Definitions
***********************************************************/
void set_value(char *ptr, unsigned int index, char value)
{
	ptr[index] = value;
}

void clear_value(char *ptr, unsigned int index)
{
	set_value(ptr, index, 0);
}

char get_value(char *ptr, unsigned int index)
{
	return ptr[index];
}

void set_all(char *ptr, char value, unsigned int size)
{
	unsigned int i;
	for (i = 0; i < size; i++)
	{
		set_value(ptr, i, value);
	}
}

void clear_all(char *ptr, unsigned int size)
{
	set_all(ptr, 0, size);
}

uint8_t *my_memmove(uint8_t *src, uint8_t *dst, size_t length)
{
    // Check for overlap and determine the direction of copying
    if (dst < src || dst >= (src + length)){
        // If no overlap or destination is after source, copy forward
        while (length--) {
            *dst++ = *src++;
        }
    }
	else {
        // If overlap and destination is before source, copy backward
        src = src + length - 1;
        dst = dst + length - 1;
        while (length--) {
            *dst-- = *src--;
        }
    }

    return dst + 1; // Return the pointer to the destination
}

uint8_t *my_memcopy(uint8_t *src, uint8_t *dst, size_t length)
{
    // Use pointer arithmetic to copy data from source to destination
    while (length--) {
        *dst++ = *src++;
    }

    return dst; // Return the pointer to the destination
}

uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value)
{
    while (length--){
        *src++ = value;
    }

    return src;
}

uint8_t * my_memzero(uint8_t * src, size_t length)
{
    return my_memset(src,length, 0);
}

uint8_t *my_reverse(uint8_t *src, size_t length) 
{
    // Use pointer arithmetic to reverse the order of bytes
    uint8_t *start = src;
    uint8_t *end = src + length - 1;

    while (start < end) {
        // Swap the values at the start and end pointers
        uint8_t temp = *start;
        *start = *end;
        *end = temp;

        // Move the pointers towards each other
        start++;
        end--;
    }

    return src; // Return the pointer to the source
}

int32 *reserve_words(size_t length){
    if (((int32 *) malloc(length)) != NULL){
        return ((int32 *) malloc(length));
    }
    else return NULL;
}

int32_t *reserve_words(size_t length) {
    // Allocate memory for the given number of words
    int32_t *ptr = (int32_t *)malloc(length * sizeof(int32_t));

    return ptr; // Return the pointer to the allocated memory
}

void free_words(int32_t *src) {
    // Free the dynamically allocated memory using free function
    free(src);
}