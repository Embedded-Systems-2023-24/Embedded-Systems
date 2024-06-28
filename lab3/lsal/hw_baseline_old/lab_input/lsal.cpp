#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <unistd.h>
#include <assert.h>
#include <stdbool.h>
#include <sys/types.h>
#include <sys/stat.h>

// #define N 256
// #define M 2048

const short GAP_i = -1;
const short GAP_d = -1;
const short MATCH = 2;
const short MISS_MATCH = -1;
const short CENTER = 0;
const short NORTH = 1;
const short NORTH_WEST = 2;
const short WEST = 3;
// static long int cnt_ops=0;
// static long int cnt_bytes=0;

/**********************************************************************************************
 * LSAL kernel code to be implemented in Hardware
 * Inputs:
 *          string1 is the query[N]
 *          string2 is the database[M]
 *          input sizes N, M
 * Outputs:
 *           max_index is the location of the highest similiarity score 
 *           similarity and direction matrices. Note that these two matrices are initialized with zeros.
 **********************************************************************************************/

void compute_matrices(
	char *string1, char *string2,
	int *max_index, int *similarity_matrix, short *direction_matrix, int N, int M)
{

    int index = 0;
    int i = 0;
	int j = 0;

    // Following values are used for the N, W, and NW values wrt. similarity_matrix[i]
    int north = 0;
	int west = 0;
	int northwest = 0;
	int max_value = 0;

	//Here the real computation starts. Place your code whenever is required. 
	// Scan the N*M array row-wise starting from the second row.
   for(index = N; index < N*M; index++) {

   	  i = index % N; // column index
	  j = index / N; // row index
   	   if (i == 0) {  
			// first column. 
			west = 0;
			northwest = 0;
		} else {      

           north = similarity_matrix[index - N]; 
           match = ( string1[i] == string2[j] ) ? MATCH : MISS_MATCH; 
			test_val = northwest + match;
			if(test_val > val){
				val = test_val;
				dir = NORTH_WEST;
			}
        //////// 
        }


}   // end of for-loop
}  // end of function

/************************************************************************/