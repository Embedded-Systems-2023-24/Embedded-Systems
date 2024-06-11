#include <string.h>
#include <stdio.h>
#include "ap_int.h"
//#define index j+i*N

const short N = 256;
const short M = 2048;

#define GAP_i -1
#define GAP_d -1
#define MATCH 2
#define MISS_MATCH -1
#define CENTER 0
#define P -1
#define NORTH 1
#define NORTH_WEST 2
#define WEST 3
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
//extern "C" {

void compute_matrices (
	char string1_mem[N], char string2_mem[M+2*(N-1)], int max_index[0], int similarity_matrix[(M+2*(N-1))*N], short direction_matrix[(M+2*(N-1))*N], int n, int m) {

    int i = 0;
	int j = 0;
	int match;
	int test_val;
	int val;
	ap_int<4> dir;

    // Following values are used for the n, W, and NW values wrt. similarity_matrix[i]
	int index = 0;
    int north = 0;
	int west = 0;
	int northwest = 0;
	int max_value = 0;
	char string1[N];
	char string2[M+2*(N-1)];
	int current_diag[N] = {0};
	int up_diag[N] = {0};
	int upper_diag[N] = {0};
	ap_int<4> direction_diag[N] = {-2};

	memcpy(string1, string1_mem, sizeof(char)*N);
	memcpy(string2, string2_mem, sizeof(char)*(M+2*(N-1)));

	//Here the real computation starts. Place your code whenever is required. 
  diag_for:
	for(int i = 0; i < m+(n-1); i++) {
		index = i*n;
	  col_for:
		for(int j = n-1; j > -1; j--) {
			index += n-1;		
			val = 0;

			if (string2[i-(j-(n-1))] == 'P') {
				dir = P;

			}
			else {
				dir = CENTER;
				northwest = upper_diag[j-1];
				west = up_diag[j-1];

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
			
		memcpy( &(similarity_matrix[i*n]), current_diag, sizeof(int)*n );
		memcpy( upper_diag, up_diag, sizeof(int)*n );
		memcpy( up_diag, current_diag, sizeof(int)*n );
		//memcpy( &(direction_matrix[i*n]), direction_diag, 4*n );
		for(int j = 0; j<n; j++){
			direction_matrix[(i*n)+j] = direction_diag[j];
		}
	}
}  // end of function

/************************************************************************/

//}
