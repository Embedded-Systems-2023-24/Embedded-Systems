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

#define GAP_i -1
#define GAP_d -1
#define MATCH 2
#define MISS_MATCH -1
#define CENTER 0
#define NORTH 1
#define NORTH_WEST 2
#define WEST 3
#define index i+j*N

// #define DEBUG

/**********************************************************************************************
 * LSAL algorithm
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
	int *max_index, int *similarity_matrix, char *direction_matrix, int N, int M)
{

	int test_val;
	int val;
	char dir;
	
	int max_value = 0;

    // Following values are used for the N, W, and NW values wrt. similarity_matrix[i]
    int north = 0;
	int west = 0;
	int northwest = 0;

	//Here the real computation starts. Place your code whenever is required.

	// Scan the first row of the array.
		for(int i = 0; i < N; i++) {
			val = 0;
			dir = CENTER;

			if (i != 0)
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
   //for(index = N + 1; index < N*M; index++) {
	for(int j = 1; j < M; j++) {
		val = 0;
		dir = CENTER;

		// first column. 

		//1st case.
		test_val = ( string1[0] == string2[j] ) ? MATCH : MISS_MATCH; 
		if(test_val > 0){
			val = test_val;
			dir = NORTH_WEST;
		}

		north = similarity_matrix[j*N - N];
		//2nd case.
		test_val = north + GAP_i;
		if(test_val > val){
			val = test_val;
			dir = NORTH;
		}

		//Save results.
		similarity_matrix[j*N] = val;
		direction_matrix[j*N] = dir;

		if (val > max_value) {
			max_value = val;
			*max_index = j*N;
		}

	  for(int i = 1; i < N; i++) {

		val = 0;
		dir = CENTER;


		northwest = similarity_matrix[index - N - 1];
		west = similarity_matrix[index - 1];

		//1st case.
		test_val = northwest + (( string1[i] == string2[j] ) ? MATCH : MISS_MATCH);
			if(test_val > 0){
				val = test_val;
				dir = NORTH_WEST;
			}
	
			if (j == 0) {
				// first row.
				north = 0;
			}
			else {
				north = similarity_matrix[index - N];
				//2nd case.
				test_val = north + GAP_i;
				if(test_val > val){
					val = test_val;
					dir = NORTH;
				}
			}

			//3rd case.
			test_val = west + GAP_d;
			if(test_val > val){
				val = test_val;
				dir = WEST;
			}

			//Save results.
			similarity_matrix[index] = val;
			direction_matrix[index] = dir;

			if (val > max_value) {
				max_value = val;
				*max_index = index;
			}
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

#ifdef DEBUG
void print_direction_matrix (char *direction_matrix, int N, int M) {

	for (int j=0; j < M; j++) {
		for (int i=0; i < N; i++) {
			if (direction_matrix[index] == CENTER)
				printf(" C ");
			else if (direction_matrix[index] == NORTH_WEST)
				printf("NW ");
			else if (direction_matrix[index] == NORTH)
				printf(" N ");
			else
				printf(" W ");
		}
		printf("\n");
	}

}
void print_similarity_matrix (int *similarity_matrix, int N, int M) {

	for (int j=0; j < M; j++) {
		for (int i=0; i < N; i++) {
			printf("%d ", similarity_matrix[index]);
		}
		printf("\n");
	}

}
#endif /*DEBUG*/

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

/* ******************************************************************/
int main(int argc, char** argv) {

    clock_t t1, t2;

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
	char *database = (char*) malloc(sizeof(char) * M);
	int *similarity_matrix = (int*) malloc(sizeof(int) * N * M);
	char *direction_matrix = (char*) malloc(sizeof(short) * N * M);
	int *max_index = (int *) malloc(sizeof(int));

/* Create the two input strings by calling a random number generator */
	fillRandom(query, N);
	fillRandom(database, M);

	memset(similarity_matrix, 0, sizeof(int) * N * M);
	memset(direction_matrix, 0, sizeof(short) * N * M);

#ifdef DEBUG
	char queryTest[] = "TGTTACGG";
	char databaseTest[] = "GGTTGACTA";
#endif

    t1 = clock();

#ifdef DEBUG
	compute_matrices(queryTest, databaseTest, max_index, similarity_matrix, direction_matrix, N, M);
#else
	compute_matrices(query, database, max_index, similarity_matrix, direction_matrix, N, M);
#endif

	t2 = clock();

#ifdef DEBUG
	printf("\n******** Simularity Matrix ********\n");
	print_similarity_matrix(similarity_matrix, N, M);

	printf("\n******** Direction Matrix ********\n");
	print_direction_matrix(direction_matrix, N, M);
#endif /*DEBUG*/

    printf(" max index is in position (%d, %d) \n", max_index[0]/N, max_index[0]%N );
	printf(" execution time of LSAL SW algorithm is %f sec \n", (double)(t2-t1) / CLOCKS_PER_SEC);
	
	free(similarity_matrix);
	free(direction_matrix);
	free(max_index);
	free(query);
	free(database);

    // printf("cnt_ops=%d, cnt_bytes=%d\n", cnt_ops, cnt_bytes);
	return EXIT_SUCCESS;
}