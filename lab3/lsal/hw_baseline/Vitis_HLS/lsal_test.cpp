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

const short N = 256;
const short M = 2048;

const short GAP_i = -1;
const short GAP_d = -1;
const short MATCH = 2;
const short MISS_MATCH = -1;
const short CENTER = 0;
const short NORTH = 1;
const short NORTH_WEST = 2;
const short WEST = 3;

void compute_matrices (
	char string1[N], char string2[M+2*(N-1)], int max_index[0], int similarity_matrix[(M+2*(N-1))*N], short direction_matrix[(M+2*(N-1))*N], int n, int m);

void compute_matrices_sw(
	char *string1, char *string2,
	int *max_index, int *similarity_matrix, short *direction_matrix, int N, int M)
{

    int index = 0;
    int i = 0;
	int j = 0;
	int match;
	int test_val;
	int val;
	int dir;

    // Following values are used for the N, W, and NW values wrt. similarity_matrix[i]
    int north = 0;
	int west = 0;
	int northwest = 0;
	int max_value = 0;

	//Here the real computation starts. Place your code whenever is required.

	// Scan the first row of the array.
		for(int i = 1; i < N; i++) {
			val = 0;
			dir = CENTER;

			west = similarity_matrix[i - 1];

			//1st case.
			test_val = northwest + (( string1[i] == string2[0] ) ? MATCH : MISS_MATCH);
				if(test_val > 0){
					val = test_val;
					dir = NORTH_WEST;
				}

				north = 0;

				//3rd case.
				test_val = west + GAP_d;
				if(test_val > val){
					val = test_val;
					dir = WEST;
				}

				//Save results.
				similarity_matrix[i] = val;
				direction_matrix[i] = dir;

				if (val > max_value) {
					max_value = val;
					*max_index = i;
				}
	}

	// Scan the N*M array row-wise starting from the second row.
   for(index = N; index < N*M; index++) {

   	  i = index % N; // column index
	  j = index / N; // row index
	  val = 0;
	  dir = CENTER;

   	   if (i == 0) {
			// first column.
			west = 0;
			northwest = 0;
		} else {
			northwest = similarity_matrix[index - N - 1];
			west = similarity_matrix[index - 1];
		}

		if (j == 0) {
			// first row.
			north = 0;
		}
		else {
			north = similarity_matrix[index - N];
		}

		//1st case.
        match = ( string1[i] == string2[j] ) ? MATCH : MISS_MATCH;
		test_val = northwest + match;
		if(test_val > 0){
			val = test_val;
			dir = NORTH_WEST;
		}

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
			dir = west;
		}

        //Save results.
		similarity_matrix[index] = val;
		direction_matrix[index] = dir;

		if (val > max_value) {
			max_value = val;
			*max_index = index;
		}


	}   // end of for-loop
}  // end of function

/************************************************************************/

/*
 return a random number in [0, limit].
 */
int rand_lim(int limit) {

	int divisor = RAND_MAX / (limit + 1);
	int retval;

	do {
		retval = rand() / divisor;
	} while (retval > limit);

	return retval;
}

/*
 Fill the string with random values
 */
void fillRandom(char* string, int dimension) {
	//fill the string with random letters..
	static const char possibleLetters[] = "ATCG";

	string[0] = '-';

	int i;
	for (i = 0; i < dimension; i++) {
		int randomNum = rand_lim(3);
		string[i] = possibleLetters[randomNum];
	}

}

void fillRandomDatabase(char* string, int N, int M) {
	fillRandom(string, M+2*(N-1));

	for (int i =0; i<N-1; i++) {
		string[i] = 'P';
	}

	for (int i =M+N-1; i<M+2*(N-1); i++) {
		string[i] = 'P';
	}
}

void fixOutput(short *direction_matrix, short *out) {
	out = ( short *) malloc(sizeof(short) * M*N);

	for(int i =0; i < N; i++) {
		for (int j =0; j < i+1; j++) {
			out[i*N+j] = direction_matrix[(i-j)*N+j];
		}
	}
}

/* ******************************************************************/
int main(int argc, char** argv) {

	if (argc != 3) {
		printf("%s <Query Size N> <DataBase Size M>\n", argv[0]);
		return EXIT_FAILURE;
	}

    printf("Starting Local Alignment Code \n");
	fflush(stdout);

	/* Typically, M >> N */
	int N = atoi(argv[1]);
    int M = atoi(argv[2]);

    char *query = (char*) malloc(sizeof(char) * N);
	char *database = (char*) malloc(sizeof(char) * M+2*(N-1));
	int *similarity_matrix = (int*) malloc(sizeof(int) * (M+2*(N-1))*N);
	short *direction_matrix = (short*) malloc(sizeof(short) * (M+2*(N-1))*N);
	int *max_index = (int *) malloc(sizeof(int));

/* Create the two input strings by calling a random number generator */
	fillRandom(query, N);
	fillRandomDatabase(database, N, M);

	memset(similarity_matrix, 0, sizeof(int) * (M+2*(N-1))*N);
	memset(direction_matrix, 0, sizeof(short) * (M+2*(N-1))*N);

	compute_matrices(query, database, max_index, similarity_matrix, direction_matrix, N, M);

    printf(" max index is in position (%d, %d) \n", max_index[0]/N, max_index[0]%N );

	/**************************************************************
	 * Run the same algorithm in the Host Unit and compare for verification
	 **************************************************************/
	int * similarity_matrix_sw = ( int *) malloc(
			sizeof( int) * M*N);
	short * direction_matrix_sw = ( short*) malloc(
			sizeof( short) * M*N);
	int * max_index_sw = ( int *) malloc(
				sizeof( int));

	for(int i = 0; i < M*N; i++){
		similarity_matrix_sw[i] = 0;
	}
	compute_matrices_sw(query, database, max_index_sw, similarity_matrix_sw, direction_matrix_sw, N, M);

	printf("both ended\n");

	for (int i = 0; i < M*N; i++) {
		if (direction_matrix_sw[i] != direction_matrix[i]) {
			printf("Error, mismatch in the results, i + %d, SW: %d, HW %d \n",
					i, direction_matrix_sw[i], direction_matrix[i]);
			return EXIT_FAILURE;
		}
	}

	printf("computation ended!- RESULTS CORRECT \n");

	free(similarity_matrix);
	free(direction_matrix);
	free(max_index);
	free(query);
	free(database);
	free(similarity_matrix_sw);
	free(direction_matrix_sw);
	free(max_index_sw);

	return EXIT_SUCCESS;
}
