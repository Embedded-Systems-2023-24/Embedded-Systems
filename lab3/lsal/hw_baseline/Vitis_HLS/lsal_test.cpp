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

//  #define DEBUG

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

void compute_matrices (int string1_mem[N], int string2_mem[M+2*(N-1)], int max_index[0], int similarity_matrix[(M+2*(N-1))*N], short direction_matrix[(M+2*(N-1))*N], int n, int m);

void compute_matrices_sw (char string1[N], char string2[M], int max_index[0], int similarity_matrix[N*M], short direction_matrix[N*M], int n, int m) {

    int index = 0;
    int i = 0;
	int j = 0;
	int match;
	int test_val;
	int val;
	int dir ;

    // Following values are used for the n, W, and NW values wrt. similarity_matrix[i]
    int north = 0;
	int west = 0;
	int northwest = 0;
	int max_value = 0;

	//Here the real computation starts. Place your code whenever is required. 

	// Scan the first row of the array.
  first_row_scan:
	for(int i = 0; i < n; i++) {
			val = 0;
			dir = CENTER;

			if (i != 0)
				west = similarity_matrix[i - 1];

			//1st case.
			test_val = (( string1[i] == string2[0] ) ? MATCH : MISS_MATCH);
			if(test_val > 0){
				val = test_val;
				dir = NORTH_WEST;
			}
	
			north = 0;

			//3rd case.
			test_val = west + GAP_d;
// printf("(%d.%d)", i, j);
// printf("  west: %d \n  test_val:%x, val:%d, i + %d ,", west, test_val, val, (i*n)+j);
			if(test_val > val){
				val = test_val;
				dir = WEST;
			}

			//Save results.
// printf("dir: %d \n", dir);
			similarity_matrix[i] = val;
			direction_matrix[i] = dir;

			if (val > max_value) {
				max_value = val;
				*max_index = i;
			}
	}

	// Scan the n*m array row-wise starting from the second row.
  second_row_scan:
   for(index = n; index < n*m; index++) {

   	  i = index % n; // column index
	  j = index / n; // row index
	  val = 0;
	  dir = CENTER;

   	   if (i == 0) {  
			// first column. 
			west = 0;
			northwest = 0;
		} else {
			northwest = similarity_matrix[index - n - 1];
			west = similarity_matrix[index - 1];
		}

		if (j == 0) {
			// first row.
			north = 0;
		}
		else {
			north = similarity_matrix[index - n]; 
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
			dir = WEST;
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

	for (int i =0; i<N-1; i++) string[i] = 'P';

	for (int i =M+N-1; i<M+2*(N-1); i++) string[i] = 'P';

}

void char_to_int(char* string, int* string_hw, int dim) {
	for (int i=0; i<dim; i++) {
		if (string[i] == 'A')
			string_hw[i] = A;
		else if (string[i] == 'G')
			string_hw[i] = G;
		else if (string[i] == 'T')
			string_hw[i] = T;
		else if (string[i] == 'C')
			string_hw[i] = C;
		else
			string_hw[i] = P;
	}
}

void reshape_direction(short *direction_matrix, short *direction_matrix_hw, int N, int M) {

	for (int i=0; i < M; i++) 
		for (int j=0; j < N; j++) 
			direction_matrix_hw[j+i*N] = direction_matrix[j+(j+i)*N];

}

void reshape_similarity(int *similarity_matrix, int *similarity_matrix_hw, int N, int M) {
	
	for (int i=0; i < M; i++) 
		for (int j=0; j < N; j++) 
			similarity_matrix_hw[j+i*N] = similarity_matrix[j+(j+i)*N];

}

#ifdef DEBUG
	void print_direction_matrix (short *direction_matrix, int N, int M) {

		for (int j=0; j < M; j++) {
			for (int i=0; i < N; i++) {
				if (direction_matrix[i+j*N] == CENTER)
					printf(" C ");
				else if (direction_matrix[i+j*N] == NORTH_WEST)
					printf("NW ");
				else if (direction_matrix[i+j*N] == NORTH)
					printf(" N ");
				else if (direction_matrix[i+j*N] == WEST)
					printf(" W ");
				else if (direction_matrix[i+j*N] == -1)
					printf(" P ");
				else if (direction_matrix[i+j*N] == -2)
					printf(" - ");
			}
			printf("\n");
		}

	}
	void print_similarity_matrix (int *similarity_matrix, int N, int M) {

		for (int j=0; j < M; j++) {
			for (int i=0; i < N; i++) {
				printf("%2d ", similarity_matrix[i+j*N]);
			}
			printf("\n");
		}

	}
#endif /*DEBUG*/

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
	int *similarity_matrix_hw = (int*) malloc(sizeof(int) * M*N);
	short *direction_matrix = (short*) malloc(sizeof(short) * (M+2*(N-1))*N);
	short *direction_matrix_hw = (short*) malloc(sizeof(short) * (M*N));
	int *max_index = (int *) malloc(sizeof(int));
/* Create the two input strings by calling a random number generator */
	fillRandom(query, N);
	fillRandomDatabase(database, N, M);

	int query_hw[N];
	int database_hw[M+2*(N-1)];

	char_to_int(query, query_hw, N);
	char_to_int(database, database_hw, M+2*(N-1));
	
	memset(similarity_matrix, 0, sizeof(int) * (M+2*(N-1))*N);
	memset(direction_matrix, -2, sizeof(short) * (M+2*(N-1))*N);

	compute_matrices(query_hw, database_hw, max_index, similarity_matrix, direction_matrix, N, M);
	reshape_direction(direction_matrix, direction_matrix_hw, N, M);
	reshape_similarity(similarity_matrix, similarity_matrix_hw, N, M);

    printf(" max index hw is in position (%d, %d) \n", max_index[0]/N, max_index[0]%N );

	free(max_index);
	
	/**************************************************************
	 * Run the same algorithm in the Host Unit and compare for verification
	 **************************************************************/

	int * similarity_matrix_sw = ( int *) malloc(sizeof( int) * M*N);
	short * direction_matrix_sw = ( short*) malloc(sizeof( short) * M*N);
	int * max_index_sw = ( int *) malloc(sizeof( int));
	char *database_sw = (char*) malloc(sizeof(char)*M);

	strncpy(database_sw, &(database[N-1]), M);

	for(int i = 0; i < M*N; i++){
		similarity_matrix_sw[i] = 0;
		direction_matrix_sw[i] = 0;
	}
	compute_matrices_sw(query, database_sw, max_index_sw, similarity_matrix_sw, direction_matrix_sw, N, M);

	printf(" max index sw is in position (%d, %d) \n", max_index_sw[0]/N, max_index_sw[0]%N );
	printf("both ended\n");
	// fflush(stdout);

	#ifdef DEBUG

		// printf("\n database_sw: %s\n query: %s\n\n", database_sw, query);
		// strcpy(database, "PPPPPPPGGTTGACTAPPPPPPP");
		// strcpy(query, "TGTTACGG");
		// char database_sw[] = "GGTTGACTA";
		
		printf("\n******** Similarity Matrix HW ********\n");
		print_similarity_matrix(similarity_matrix, N, M+2*(N-1));
		printf("\n******** Similarity Matrix HW meta thn allagh ********\n");
		print_similarity_matrix(similarity_matrix_hw, N, M);
		printf("\n******** Similarity Matrix SW ********\n");
		print_similarity_matrix(similarity_matrix_sw, N, M);
		
		printf("\n******** Direction Matrix HW  ********\n");
		print_direction_matrix(direction_matrix, N, M+2*(N-1));
		printf("\n******** Direction Matrix HW meta thn allagh ********\n");
		print_direction_matrix(direction_matrix_hw, N, M);
		printf("\n******** Direction Matrix SW ********\n");
		print_direction_matrix(direction_matrix_sw, N, M);
	#endif /*DEBUG*/



	for (int i = 0; i < M*N; i++) {
		if (direction_matrix_sw[i] != direction_matrix_hw[i]) {
			printf("Error, mismatch in the results, i + %d, SW: %d, HW %d \n",
					i, direction_matrix_sw[i], direction_matrix_hw[i]);
			return EXIT_FAILURE;
		}
	}

	printf("computation ended!- RESULTS CORRECT \n");

	free(similarity_matrix);
	free(direction_matrix);
	free(direction_matrix_hw);
	free(similarity_matrix_hw);
	free(query);
	free(database);
	free(similarity_matrix_sw);
	free(direction_matrix_sw);
	free(max_index_sw);

	return EXIT_SUCCESS;
}
