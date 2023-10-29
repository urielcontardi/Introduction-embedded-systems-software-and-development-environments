/******************************************************************************
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file stats.c
 * @brief Source file of the statistical analytics program in c programming.
 *
 * <Add Extended Description Here>
 *
 * @author Uriel Abe Contardi
 * @date 22.10.2023
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/* Add Your Declarations and Function Comments here */ 

typedef struct stats{
    uint8_t *data;
    uint8_t arrayLength;
    uint8_t median;
    uint8_t mean;
    uint8_t max;
    uint8_t min;
} stat;

void print_statistics(stat* ptrStats);
void print_array(uint8_t *ptrData, uint8_t arrayLength);
void sort_array(uint8_t *ptrData, uint8_t arrayLength);
uint8_t find_median(uint8_t *ptrData, uint8_t arrayLength);
uint8_t find_mean(uint8_t *ptrData, uint8_t arrayLength);
uint8_t find_maximum(uint8_t *ptrData, uint8_t arrayLength);
uint8_t find_minimum(uint8_t *ptrData, uint8_t arrayLength);

#endif /* __STATS_H__ */
