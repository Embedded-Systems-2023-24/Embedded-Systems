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
	ap_int<3> string2[M+2*(N-1)];
#pragma HLS ARRAY_PARTITION variable=string2 dim=1 factor=2 cyclic
	int current_diag[N*2] = {0};
#pragma HLS ARRAY_PARTITION variable=current_diag dim=1 complete
	int up_diag[N] = {0};
#pragma HLS ARRAY_PARTITION variable=up_diag dim=1 complete
	int upper_diag[N] = {0};
#pragma HLS ARRAY_PARTITION variable=upper_diag dim=1 complete
	ap_int<3> direction_buf[(M+2*(N-1))*N];
#pragma HLS ARRAY_RESHAPE variable=direction_buf dim=1 factor=32 block

	memcpy(string1, string1_mem, sizeof(ap_int<3>)*N );
	memcpy(string2, string2_mem, sizeof(ap_int<3>)*(M+2*(N-1)) );

	//Here the real computation starts. Place your code whenever is required. 
  diag_for:
	for(int i = 0; i < M+(N-1); i++) {
#pragma HLS PIPELINE II=16
		index = i*N;
		
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
			direction_buf[i*N+j] = dir;
	  	}

		memcpy( upper_diag, up_diag, sizeof(int)*N );
		memcpy( up_diag, &(current_diag[(i%2)*N]), sizeof(int)*N );
	}

	*max_index = max_index_buf;
	memcpy( direction_matrix, direction_buf, sizeof(ap_int<3>)*(M+2*(N-1))*N );
}  // end of function

/************************************************************************/

// }
