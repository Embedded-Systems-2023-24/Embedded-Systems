/********************************************************************************
 * The Host code running in the Arm CPU. Make sure to study and understand the OpenCL API code
 * 
 ********************************************************************************/

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <unistd.h>
#include <assert.h>
#include <stdbool.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <CL/opencl.h>
#include <CL/cl_ext.h>
#include "ap_int.h"

const short N = 256;
const int M = 65536;

// #define DEBUG

#define GAP_i -1
#define GAP_d -1
#define MATCH 2
#define MISS_MATCH -1
#define CENTER 0
#define NORTH 1
#define NORTH_WEST 2
#define WEST 3

#define P -1
#define A 0
#define G 1
#define C 2
#define T 3

 /***************************************************************************************
  * This is the golden code which runs in the CPU (and is the same code that you developed for x86 / Arm) 
  * It will be used to verify the correct functionality of the HW implementation.  
  * Its usefulness is mainly when you perform software emulation (sw_emu).
  ***************************************************************************************/
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

/*
 Given an event, this function returns the kernel execution time in ms
 */
double getTimeDifference(cl_event event) {
	cl_ulong time_start = 0;
	cl_ulong time_end = 0;
	double total_time = 0.0f;

	clGetEventProfilingInfo(event,
	CL_PROFILING_COMMAND_START, sizeof(time_start), &time_start,
	NULL);
	clGetEventProfilingInfo(event,
	CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end,
	NULL);
	total_time = time_end - time_start;
	return total_time / 1000000.0; // To convert nanoseconds to milliseconds
}


/*
 return a random number between 0 and limit inclusive.
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

void char_to_int(char* string, ap_int<3>* string_hw, int dim) {
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

void reshape_direction(ap_int<3> *direction_matrix, short *direction_matrix_hw, int N, int M) {

	for (int i=0; i < M; i++) 
		for (int j=0; j < N; j++) 
			direction_matrix_hw[j+i*N] = direction_matrix[j+(j+i)*N];

}

int load_file_to_memory(const char *filename, char **result) {
	size_t size = 0;
	FILE *f = fopen(filename, "rb");
	if (f == NULL) {
		*result = NULL;
		return -1; // -1 means file opening fail
	}
	fseek(f, 0, SEEK_END);
	size = ftell(f);
	fseek(f, 0, SEEK_SET);
	*result = (char *) malloc(size + 1);
	if (size != fread(*result, sizeof(char), size, f)) {
		free(*result);
		return -2; // -2 means file reading fail
	}
	fclose(f);
	(*result)[size] = 0;
	return size;
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
			else
				printf(" W ");
		}
		printf("\n");
	}

}
void print_similarity_matrix (int *similarity_matrix, int N, int M) {

	for (int j=0; j < M; j++) {
		for (int i=0; i < N; i++) {
			printf("%d ", similarity_matrix[i+j*N]);
		}
		printf("\n");
	}

}
#endif

/*******************************************************************************
 *   Host program running on the Arm CPU. 
 *   The code is written using the OpenCL API. 
 *   We have provided multiple comments for you to understand where each thing  
*******************************************************************************/
int main(int argc, char** argv) {
	printf("starting HOST code \n");
	fflush(stdout);
	int err;                            // error code returned from api calls
	cl_uint matrix_size;

    if (argc != 4) {
		printf("%s <input xclbin file> <Query Size N> <DataBase Size M>\n", argv[0]);
		return EXIT_FAILURE;
	}
	
    cl_uint N = atoi(argv[2]); 
    cl_uint M = atoi(argv[3]);
    if (N <= 0 || M <= 0) {
    	printf("N and M should be positive numbers. \n");
		return EXIT_FAILURE;
	}

	matrix_size = (M+2*(N-1))*N;

    char *query = (char*) malloc(sizeof(char) * N);
	char *database = (char*) malloc(sizeof(char) * M+2*(N-1));
	ap_int<3> *direction_matrix = (ap_int<3>*) malloc(sizeof(ap_int<3>) * (M+2*(N-1))*N);
	short *direction_matrix_hw = (short*) malloc(sizeof(short) * (M*N));
	int *max_index = (int *) malloc(sizeof(int));

	printf("array defined! \n");
    fflush(stdout);

	cl_platform_id platform_id;         // platform id
	cl_device_id device_id;             // compute device id
	cl_context context;                 // compute context
	cl_command_queue commands;          // compute command queue
	cl_program program;                 // compute program
	cl_kernel kernel;                   // compute kernel

	char cl_platform_vendor[1001];
	char cl_platform_name[1001];

	cl_mem input_query;
	cl_mem input_database;
	cl_mem output_direction_matrix;
	cl_mem output_max_index;

	fillRandom(query, N);
	fillRandomDatabase(database, N, M);

	ap_int<3> query_hw[N];
	ap_int<3> database_hw[M+2*(N-1)];

	char_to_int(query, query_hw, N);
	char_to_int(database, database_hw, M+2*(N-1));

	memset(direction_matrix, 0, sizeof(ap_int<3>) * (M+2*(N-1))*N);

/**********************************************
 * 			Xilinx OpenCL Initialization
 *
 * We must follow specific steps to get the necessary
 * information and handlers, in order to be able
 * to use the available accelerator device (FPGA).
 * After every step, we always check for any errors
 * that might have occured. In case of error, the
 * program aborts and exits immediately.
 * *********************************************/

  /**************************************************
	* Step 1:
   * Get available OpenCL platforms and devices.
   * In our case, it is a Xilinx FPGA device.
   * If the underlying platform has other accelerators
   * available, we could use them too (e.g. GPU, CPU).
	**************************************************/
	printf("GET platform \n");
	err = clGetPlatformIDs(1, &platform_id, NULL);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to find an OpenCL platform!\n");
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	printf("GET platform vendor \n");
	err = clGetPlatformInfo(platform_id, CL_PLATFORM_VENDOR, 1000,
			(void *) cl_platform_vendor, NULL);
	if (err != CL_SUCCESS) {
		printf("Error: clGetPlatformInfo(CL_PLATFORM_VENDOR) failed!\n");
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	printf("CL_PLATFORM_VENDOR %s\n", cl_platform_vendor);
	printf("GET platform name \n");
	err = clGetPlatformInfo(platform_id, CL_PLATFORM_NAME, 1000,
			(void *) cl_platform_name, NULL);
	if (err != CL_SUCCESS) {
		printf("Error: clGetPlatformInfo(CL_PLATFORM_NAME) failed!\n");
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	printf("CL_PLATFORM_NAME %s\n", cl_platform_name);

	// Connect to a compute device
	//
	int fpga = 1;

	printf("get device FPGA is %d  \n", fpga);
	err = clGetDeviceIDs(platform_id,
			fpga ? CL_DEVICE_TYPE_ACCELERATOR : CL_DEVICE_TYPE_CPU, 1,
			&device_id, NULL);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to create a device group!\n");
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

	/*********************************************
	 * Step 2 : Create Context
	 *********************************************/
	printf("create context \n");
	context = clCreateContext(0, 1, &device_id, NULL, NULL, &err);
	if (!context) {
		printf("Error: Failed to create a compute context!\n");
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

   /*********************************************
	 * Step 3 : Create Command Queue
	 *********************************************/
	printf("create queue \n");
	commands = clCreateCommandQueue(context, device_id,
	CL_QUEUE_PROFILING_ENABLE, &err);
	if (!commands) {
		printf("Error: Failed to create a command commands!\n");
		printf("Error: code %i\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

	cl_int binary_status;

	/*********************************************
	 * Step 4 : Load Hardware Binary File (*.xclbin) from disk
	 **********************************************/
	unsigned char *kernelbinary;
	char *xclbin = argv[1];
	printf("loading %s\n", xclbin);
	int n_i = load_file_to_memory(xclbin, (char **) &kernelbinary);
	if (n_i < 0) {
		printf("failed to load kernel from xclbin: %s\n", xclbin);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

  /********************************************************
	* Step 5 : Create program using the loaded hardware binary file
	********************************************************/
	size_t n = n_i;
	// Create the compute program from offline
	printf("create program with binary \n");
	program = clCreateProgramWithBinary(context, 1, &device_id, &n,
			(const unsigned char **) &kernelbinary, &binary_status, &err);
	free(kernelbinary);

	if ((!program) || (err != CL_SUCCESS)) {
		printf("Error: Failed to create compute program from binary %d!\n",
				err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

	/**************************************************************
	 *  Step 6 for 1 Compute Unit: Create Kernels - the actual handler of the kernel that
    *           we will be using. We first create a program, and then
    *           obtain the kernel handler from the program.
	 **************************************************************/
	printf("build program \n");
	err = clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
	if (err != CL_SUCCESS) {
		size_t len;
		char buffer[2048];

		printf("Error: Failed to build program executable!\n");
		clGetProgramBuildInfo(program, device_id, CL_PROGRAM_BUILD_LOG,
				sizeof(buffer), buffer, &len);
		printf("%s\n", buffer);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

	// Create the compute kernel in the program we wish to run
	//
	printf("create kernel \n");
	kernel = clCreateKernel(program, "compute_matrices", &err);
	if (!kernel || err != CL_SUCCESS) {
		printf("Error: Failed to create compute kernel!\n");
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

    /**************************************************************-
    * Step 7 : Create buffers.
    * We do not need to allocate separate memory space (malloc), because
    * on a MPSoC system (e.g. ZCU102 board), we map the memory space that is
    * allocated at clCreateBuffer, to a usable memory space for our
    * host application. We also do not need to use free for any reason.
    * See Xilinx UG1393 for detailed information.
    **************************************************************/
	input_query = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(ap_int<3>) * N,
	NULL, NULL);
	input_database = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(ap_int<3>) * (M+2*(N-1)),
	NULL, NULL);
	output_direction_matrix = clCreateBuffer(context, CL_MEM_READ_WRITE,
			sizeof(ap_int<3>) * matrix_size, NULL, NULL);
	output_max_index = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(int),
	NULL, NULL);

	if (!input_query || !input_database
			|| !output_direction_matrix || !output_max_index) {
		printf("Error: Failed to allocate device memory!\n");
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

   /**************************************************************
    * Step 8 : Write the Input Data to the Write Buffers of the device memory
    **************************************************************/
	err = clEnqueueWriteBuffer(commands, input_query, CL_TRUE, 0,
			sizeof(ap_int<3>) * N, query_hw, 0, NULL, NULL);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to write to source array a!\n");
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

	err = clEnqueueWriteBuffer(commands, input_database, CL_TRUE, 0,
			sizeof(ap_int<3>) * (M+2*(N-1)), database_hw, 0, NULL, NULL);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to write to source array a!\n");
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

	err = clEnqueueWriteBuffer(commands, output_direction_matrix, CL_TRUE, 0,
				sizeof(ap_int<3>) * matrix_size, direction_matrix, 0, NULL, NULL);
		if (err != CL_SUCCESS) {
			printf("Error: Failed to write to source array a!\n");
			printf("Test failed\n");
			return EXIT_FAILURE;
		}

	/**************************************************************
	 * Step 9: Set the arguments to our compute kernel
	 **************************************************************/
	err = 0;
	printf("set arg 0 \n");
	err = clSetKernelArg(kernel, 0, sizeof(cl_mem), &input_query);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to set kernel arguments 0! %d\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	printf("set arg 1 \n");
	err |= clSetKernelArg(kernel, 1, sizeof(cl_mem), &input_database);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to set kernel arguments 1! %d\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	printf("set arg 2 \n");
	err |= clSetKernelArg(kernel, 2, sizeof(cl_mem), &output_max_index);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to set kernel arguments 2! %d\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	printf("set arg 3 \n");
	err |= clSetKernelArg(kernel, 3, sizeof(cl_mem),
			&output_direction_matrix);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to set kernel arguments 4! %d\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	printf("set arg 4 \n");
	err |= clSetKernelArg(kernel, 4, sizeof(cl_uint),
			&N);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to set kernel arguments 5! %d\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	printf("set arg 5 \n");
	err |= clSetKernelArg(kernel, 5, sizeof(cl_uint),
			&M);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to set kernel arguments 6! %d\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

	
	/**************************************************************
	 * Step 10: Place the Kernel in the Queue for Execution
	 **************************************************************/
	cl_event enqueue_kernel;
	printf("LAUNCH task \n");
	err = clEnqueueTask(commands, kernel, 0, NULL, &enqueue_kernel);

	if (err) {
		printf("Error: Failed to execute kernel! %d\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	clWaitForEvents(1, &enqueue_kernel);

	/**************************************************************
	 * Step 11: Read back the results from the device to verify the output
	 **************************************************************/
	cl_event readMax, readDirections;

	err = clEnqueueReadBuffer(commands, output_direction_matrix, CL_TRUE, 0,
			sizeof(ap_int<3>) * matrix_size, direction_matrix, 0, NULL,
			&readDirections);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to read array! %d\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}
	err = clEnqueueReadBuffer(commands, output_max_index, CL_TRUE, 0,
			sizeof(int), max_index, 0, NULL, &readMax);
	if (err != CL_SUCCESS) {
		printf("Error: Failed to read array! %d\n", err);
		printf("Test failed\n");
		return EXIT_FAILURE;
	}

	clWaitForEvents(1, &readDirections);
	clWaitForEvents(1, &readMax);

	double executionTime = getTimeDifference(enqueue_kernel);

   clReleaseMemObject(input_database);
	clReleaseMemObject(input_query);
	clReleaseMemObject(output_direction_matrix);
	clReleaseMemObject(output_max_index);
	clReleaseProgram(program);
	clReleaseKernel(kernel);
	clReleaseCommandQueue(commands);
	clReleaseContext(context);

/**************************************************************
 * Run the same algorithm in the Host Unit and compare for verification
 **************************************************************/
	int * similarity_matrix_sw = ( int *) malloc(
			sizeof( int) * N*M);
	short * direction_matrix_sw = ( short*) malloc(
			sizeof( short) * N*M);
	int * max_index_sw = ( int *) malloc(
				sizeof( int));
	char *database_sw = (char*) malloc(sizeof(char)*M);

	strncpy(database_sw, &(database[N-1]), M);

	reshape_direction(direction_matrix, direction_matrix_hw, N, M);

	for(cl_uint i = 0; i < N*M; i++){
		similarity_matrix_sw[i] = 0;
		direction_matrix_sw[i]  = 0;
	}
	compute_matrices_sw(query, database_sw, max_index_sw, similarity_matrix_sw, direction_matrix_sw, N, M);

	printf("both ended\n");

#ifdef DEBUG
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
#endif

	printf(" execution time is %lf ms \n", executionTime);
	for (int i = 0; i < N*M; i++) {
		if (direction_matrix_sw[i] != direction_matrix_hw[i]) {
			printf("Error, mismatch in the results, i + %d, SW: %d, HW %d \n",
					i, direction_matrix_sw[i], direction_matrix_hw[i]);
			return EXIT_FAILURE;
		}
	}

	printf("computation ended!- RESULTS CORRECT \n");

	/**************************************************************
	 * Clean up everything and, then, shutdown 
	 **************************************************************/
    
	free(direction_matrix_hw);
	free(query);
	free(database);
	free(similarity_matrix_sw);
	free(direction_matrix_sw);
	free(max_index_sw);
	free(direction_matrix);
	free(max_index);

	return EXIT_SUCCESS;
}