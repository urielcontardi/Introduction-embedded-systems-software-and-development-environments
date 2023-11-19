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
#ifndef __STATS_H__
#define __STATS_H__

#include <stdint.h>

// Structure to hold statistical data
typedef struct stats {
    uint8_t *data;      // Pointer to the data array
    uint8_t arrayLength; // Length of the data array
    uint8_t median;      // Median value of the data
    uint8_t mean;        // Mean value of the data
    uint8_t max;         // Maximum value in the data
    uint8_t min;         // Minimum value in the data
} stat;

/**
 * @brief Prints the statistics (median, mean, max, min) of the data array
 *
 * @param ptrStats Pointer to the stat structure containing data and results
 */
void print_statistics(stat *ptrStats);

/**
 * @brief Prints the elements of the data array
 *
 * @param ptrData Pointer to the data array
 * @param arrayLength Length of the data array
 */
void print_array(uint8_t *ptrData, uint8_t arrayLength);

/**
 * @brief Sorts the elements of the data array in ascending order
 *
 * @param ptrData Pointer to the data array
 * @param arrayLength Length of the data array
 */
void sort_array(uint8_t *ptrData, uint8_t arrayLength);

/**
 * @brief Finds and returns the median value of the data array
 *
 * @param ptrData Pointer to the data array
 * @param arrayLength Length of the data array
 * @return Median value of the data array
 */
uint8_t find_median(uint8_t *ptrData, uint8_t arrayLength);

/**
 * @brief Finds and returns the mean value of the data array
 *
 * @param ptrData Pointer to the data array
 * @param arrayLength Length of the data array
 * @return Mean value of the data array
 */
uint8_t find_mean(uint8_t *ptrData, uint8_t arrayLength);

/**
 * @brief Finds and returns the maximum value in the data array
 *
 * @param ptrData Pointer to the data array
 * @param arrayLength Length of the data array
 * @return Maximum value in the data array
 */
uint8_t find_maximum(uint8_t *ptrData, uint8_t arrayLength);

/**
 * @brief Finds and returns the minimum value in the data array
 *
 * @param ptrData Pointer to the data array
 * @param arrayLength Length of the data array
 * @return Minimum value in the data array
 */
uint8_t find_minimum(uint8_t *ptrData, uint8_t arrayLength);

#endif /* __STATS_H__ */
