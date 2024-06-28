#include <string.h>
#include <stdio.h>
#include "ap_int.h"
//#define index j+i*N

#define N 32
#define M 65536

#define GAP_i -1
#define GAP_d -1
#define MATCH 2
#define MISS_MATCH -1

#define CENTER 0
#define NORTH 1
#define NORTH_WEST 2
#define WEST 3

#define P 4
#define A 0
#define G 1
#define C 2
#define T 3

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
// extern "C" {

void compute_matrices (
	ap_int<3> string1_mem[N], ap_int<3> string2_mem[M+2*(N-1)], int max_index[0], ap_int<3> direction_matrix[(M+2*(N-1))*N], int n, int m) {
#pragma HLS ARRAY_PARTITION variable=direction_matrix dim=1 factor=32 cyclic

	int test_val;
	int val;
	ap_int<3> dir;

    // Following values are used for the N, W, and NW values wrt. similarity_matrix[i]
	int index = 0;
    int north = 0;
	int west = 0;
	int northwest = 0;
	int max_index_buf = 0;
	int max_value = 0;
	ap_int<3> string1[N];
#pragma HLS ARRAY_PARTITION variable=string1 dim=1 complete
	ap_int<3> string2[65598];
#pragma HLS ARRAY_PARTITION variable=string2 dim=1 factor=2 cyclic
	int current_diag[62] = {0};
#pragma HLS ARRAY_PARTITION variable=current_diag factor=32 cyclic
	int up_diag[N] = {0};
#pragma HLS ARRAY_PARTITION variable=up_diag dim=1 complete
	int upper_diag[N] = {0};
#pragma HLS ARRAY_PARTITION variable=upper_diag dim=1 complete

	memcpy(string1, string1_mem, 32 );
	memcpy(string2, string2_mem, 65598 );

	//Here the real computation starts. Place your code whenever is required. 
  diag_for:
	for(int i = 0; i < 65567; i++ && (index = i*N)) {
#pragma HLS PIPELINE II=16
		
	  col_for:
		for(int j = N-1; j > -1; j--) {

			index += N-1;
			val = 0;

			if (string2[i-(j-(N-1))] == P)
				dir = P;
			else {
				dir = CENTER;
				if (j != 0) {
					northwest = upper_diag[j-1];
					west = up_diag[j-1];
				}
				else {
					northwest = 0;
					west = 0;
				}

				//1st case.
				test_val = northwest + (( string1[j] == string2[i-(j-(N-1))] ) ? MATCH : MISS_MATCH);
				if(test_val > 0){
					val = test_val;
					dir = NORTH_WEST;
				}
		
				north = up_diag[j];
				//2nd case.
				test_val = north + GAP_i;
				if(test_val > val){
					val = test_val;
					dir = NORTH;
				}
				
				//3rd case.
				test_val = west + GAP_d;
				if(test_val > val){
					val = test_val;
					dir = WEST;
				}

				if (val > max_value) {
					max_value = val;
					max_index_buf = index-((N-1)*N);
				}
			}
			
			//Save results.
			current_diag[(i%2)*N+j] = val;
			direction_matrix[i*N+j] = dir;
	  	}

		memcpy( upper_diag, up_diag, 128 );
		memcpy( up_diag, &(current_diag[(i%2)*N]), 128 );
	}

	*max_index = max_index_buf;
}  // end of function

/************************************************************************/

// }
