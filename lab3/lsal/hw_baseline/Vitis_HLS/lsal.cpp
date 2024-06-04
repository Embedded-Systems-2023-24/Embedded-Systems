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
	char string1[N], char string2[M+2*(N-1)], int max_index[0], int similarity_matrix[(M+2*(N-1))*N], short direction_matrix[(M+2*(N-1))*N], int n, int m) {

    int index = 0;
    int i = 0;
	int j = 0;
	int match;
	int test_val;
	int val;
	int dir;

    // Following values are used for the n, W, and NW values wrt. similarity_matrix[i]
    int north = 0;
	int west = 0;
	int northwest = 0;
	int max_value = 0;
	int current_diag[N] = {0};
	int up_diag[N] = {0};
	int upper_diag[N] = {0};

	//Here the real computation starts. Place your code whenever is required. 

diag_for:
	for(int i = 0; i < M+2*(N-1); i++) {
		

	}
/*
	// Scan the first row of the array.
first_row_scan:
	for(int i = 1; i < n; i++) {
			val = 0;
			dir = CENTER;

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
*/
}  // end of function

/************************************************************************/

//}