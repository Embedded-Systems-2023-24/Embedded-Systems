#include <string.h>
#include <stdio.h>
#include "ap_int.h"
//#define index j+i*N

const short N = 256;
const int M = 65536;

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
 *          string1 is the query[n]
 *          string2 is the database[m]
 *          input sizes n, m
 * Outputs:
 *           max_index is the location of the highest similiarity score 
 *           similarity and direction matrices. Note that these two matrices are initialized with zeros.
 **********************************************************************************************/
// extern "C" {

void compute_matrices (
	ap_int<512> string1_mem[N], ap_int<512> string2_mem[M+2*(N-1)], int max_index[0], int similarity_matrix[(M+2*(N-1))*N], ap_int<512> direction_matrix[(M+2*(N-1))*N], int n, int m) {

	int test_val;
	int val;
	ap_int<512> dir;

    // Following values are used for the n, W, and NW values wrt. similarity_matrix[i]
	int index = 0;
    int north = 0;
	int west = 0;
	int northwest = 0;
	int max_value = 0;
	int n_buf, m_buf;
	ap_int<512> string1[N];
#pragma HLS ARRAY_PARTITION variable=string1 dim=1 factor=2 cyclic
	ap_int<512> string2[M+2*(N-1)];
#pragma HLS ARRAY_PARTITION variable=string2 dim=1 factor=2 cyclic
	int current_diag[N] = {0};
	int up_diag[N] = {0};
	int upper_diag[N] = {0};
	ap_int<512> direction_diag[N];

	string1_buffer:memcpy(string1, string1_mem, sizeof(ap_int<512>)*n);

	string2_buffer:memcpy(string2, string2_mem, sizeof(ap_int<512>)*(m+2*(n-1)));

	//Here the real computation starts. Place your code whenever is required. 
  diag_for:
	for(int i = 0; i < m+(n-1); i++) {
		index = i*n;
	  col_for:
		for(int j = n-1; j > -1; j--) {
#pragma HLS PIPELINE II=1
			index += n-1;		
			val = 0;

			if (string2[i-(j-(n-1))] == P) {
				dir = P;
			
			}
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
				test_val = northwest + (( string1[j] == string2[i-(j-(n-1))] ) ? MATCH : MISS_MATCH);
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
					*max_index = index-((n-1)*n);
				}
			}
			
			//Save results.
			current_diag[j] = val;
			direction_diag[j] = dir;
	  	}
			
		similarity_matrix_cpy:memcpy( &(similarity_matrix[i*n]), current_diag, sizeof(int)*n );
		up_to_upper:memcpy( upper_diag, up_diag, sizeof(int)*n );
		current_to_up:memcpy( up_diag, current_diag, sizeof(int)*n );
	  	fix_direction:memcpy( &(direction_matrix[i*n]), direction_diag, sizeof(ap_int<512>)*n);
	}
}  // end of function

/************************************************************************/

// }
