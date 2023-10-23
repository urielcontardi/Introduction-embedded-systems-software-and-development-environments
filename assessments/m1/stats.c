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

// -----------------------------------------------------------------------------
// Library Inclusions
// -----------------------------------------------------------------------------
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "stats.h"

// -----------------------------------------------------------------------------
// Macro Definitions
// -----------------------------------------------------------------------------
/* Size of the Data Set */
#define SIZE (40)

// -----------------------------------------------------------------------------
// Main Function
// -----------------------------------------------------------------------------
void main() 
{

	unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
	                            114, 88,   45,  76, 123,  87,  25,  23,
	                            200, 122, 150, 90,   92,  87, 177, 244,
	                            201,   6,  12,  60,   8,   2,   5,  67,
	                              7,  87, 250, 230,  99,   3, 100,  90};

	/* Other Variable Declarations Go Here */
	/* Statistics and Printing Functions Go Here */

  	// Create Struct
  	stat statStruct;

	// Init and Process Data
	statStruct.data = test;
	statStruct.arrayLength = SIZE;
	statStruct.median = find_median(statStruct.data, statStruct.arrayLength);
	statStruct.mean = find_mean(statStruct.data, statStruct.arrayLength);
	statStruct.max = find_maximum(statStruct.data, statStruct.arrayLength);
	statStruct.min = find_minimum(statStruct.data, statStruct.arrayLength);

	// Print Array
	print_array(statStruct.data, statStruct.arrayLength);

	// Print Stats
	print_statistics(&statStruct);

}

// -----------------------------------------------------------------------------
// Function Definitions
// -----------------------------------------------------------------------------
void print_statistics(stat* ptrStats) 
{
    printf("Statistics for the Array:\n");
    printf("Array Size: %u\n", ptrStats->arrayLength);
    printf("Minimum Value: %u\n", ptrStats->min);
    printf("Maximum Value: %u\n", ptrStats->max);
    printf("Mean Value: %u\n", ptrStats->mean);
    printf("Median Value: %u\n", ptrStats->median);  
}

void print_array(uint8_t *ptrData, uint8_t arrayLength)
{
	// Loop through and print the array
	for(uint8_t i=0; i<arrayLength; i++){
    	printf("array[%u]: %u\n", i, *(ptrData + sizeof(char)*i));
		}
  	printf("\n");
  	return;
}

void sort_array(uint8_t *ptrData, uint8_t arrayLength) 
{
	if (arrayLength == 0) {
		printf("Error in find_mean arrayLength is 0\n");
		exit(1);
    }
	
	// Sort Array
	uint8_t temp;

	for(uint8_t i=0; i<arrayLength; i++){
		for(uint8_t j=i+1; j<arrayLength; j++)
		{
			if(ptrData[i]<ptrData[j]){
				temp = ptrData[i];
				ptrData[i]=ptrData[j];
				ptrData[j]=temp;
			}
		}
	}
}

uint8_t find_median(uint8_t *ptrData, uint8_t arrayLength)
{
	if (arrayLength == 0) {
		printf("Error in find_mean arrayLength is 0\n");
		exit(1);
    }
	
	// Make sure array is sorted first
	sort_array(ptrData, arrayLength);
	
	// Case where array length is odd
	if (arrayLength%2){
		return ptrData[arrayLength/2];
	}

	// Case where array length is even.  Average between two middle values is necessary
	uint8_t avg = (ptrData[arrayLength/2 - 1]+ptrData[arrayLength/2])/2;
	return avg;

}

uint8_t find_mean(uint8_t *ptrData, uint8_t arrayLength)
{
	uint32_t sum = 0; 

	if (arrayLength == 0) {
		printf("Error in find_mean arrayLength is 0\n");
		exit(1);
    }

    for (uint8_t i = 0; i < arrayLength; i++)
        sum += ptrData[i];
	
	return (uint8_t)(sum / arrayLength);

}

uint8_t find_maximum(uint8_t *ptrData, uint8_t arrayLength)
{
	uint8_t max = ptrData[0];

	if (arrayLength == 0) {
		printf("Error in find_maximum arrayLength is 0\n");
		exit(1);
    }

    for (uint8_t i = 1; i < arrayLength; i++) {
        if (ptrData[i] > max) {
            max = ptrData[i];
        }
    }

    return max;
}

uint8_t find_minimum(uint8_t *ptrData, uint8_t arrayLength)
{
	uint8_t min = ptrData[0];

	if (arrayLength == 0) {
		printf("Error in find_minimum arrayLength is 0\n");
		exit(1);
    }

    for (uint8_t i = 1; i < arrayLength; i++) {
        if (ptrData[i] < min) {
            min = ptrData[i];
        }
    }

    return min;
}