#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void compute_matrices(int*, int, int, int, int, int, int, int);
extern "C" void apatb_compute_matrices_hw(volatile void * __xlx_apatb_param_string1, volatile void * __xlx_apatb_param_string2, volatile void * __xlx_apatb_param_max_index, volatile void * __xlx_apatb_param_similarity_matrix, volatile void * __xlx_apatb_param_direction_matrix, int __xlx_apatb_param_N, int __xlx_apatb_param_M) {
  // Collect __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec
  vector<sc_bv<32> >__xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec.push_back(((int*)__xlx_apatb_param_string1)[j]);
  }
  int __xlx_size_param_string1 = 64;
  int __xlx_offset_param_string1 = 0;
  int __xlx_offset_byte_param_string1 = 0*4;
  for (int j = 0, e = 512; j != e; ++j) {
    __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec.push_back(((int*)__xlx_apatb_param_string2)[j]);
  }
  int __xlx_size_param_string2 = 512;
  int __xlx_offset_param_string2 = 64;
  int __xlx_offset_byte_param_string2 = 64*4;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec.push_back(((int*)__xlx_apatb_param_max_index)[j]);
  }
  int __xlx_size_param_max_index = 1;
  int __xlx_offset_param_max_index = 576;
  int __xlx_offset_byte_param_max_index = 576*4;
  for (int j = 0, e = 524288; j != e; ++j) {
    __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec.push_back(((int*)__xlx_apatb_param_similarity_matrix)[j]);
  }
  int __xlx_size_param_similarity_matrix = 524288;
  int __xlx_offset_param_similarity_matrix = 577;
  int __xlx_offset_byte_param_similarity_matrix = 577*4;
  for (int j = 0, e = 262144; j != e; ++j) {
    __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec.push_back(((int*)__xlx_apatb_param_direction_matrix)[j]);
  }
  int __xlx_size_param_direction_matrix = 262144;
  int __xlx_offset_param_direction_matrix = 524865;
  int __xlx_offset_byte_param_direction_matrix = 524865*4;
  int* __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__input_buffer= new int[__xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec.size()];
  for (int i = 0; i < __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec.size(); ++i) {
    __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__input_buffer[i] = __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  compute_matrices(__xlx_string1_string2_max_index_similarity_matrix_direction_matrix__input_buffer, __xlx_offset_byte_param_string1, __xlx_offset_byte_param_string2, __xlx_offset_byte_param_max_index, __xlx_offset_byte_param_similarity_matrix, __xlx_offset_byte_param_direction_matrix, __xlx_apatb_param_N, __xlx_apatb_param_M);
// print __xlx_apatb_param_string1
  sc_bv<32>*__xlx_string1_output_buffer = new sc_bv<32>[__xlx_size_param_string1];
  for (int i = 0; i < __xlx_size_param_string1; ++i) {
    __xlx_string1_output_buffer[i] = __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__input_buffer[i+__xlx_offset_param_string1];
  }
  for (int i = 0; i < __xlx_size_param_string1; ++i) {
    ((int*)__xlx_apatb_param_string1)[i] = __xlx_string1_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_string2
  sc_bv<32>*__xlx_string2_output_buffer = new sc_bv<32>[__xlx_size_param_string2];
  for (int i = 0; i < __xlx_size_param_string2; ++i) {
    __xlx_string2_output_buffer[i] = __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__input_buffer[i+__xlx_offset_param_string2];
  }
  for (int i = 0; i < __xlx_size_param_string2; ++i) {
    ((int*)__xlx_apatb_param_string2)[i] = __xlx_string2_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_max_index
  sc_bv<32>*__xlx_max_index_output_buffer = new sc_bv<32>[__xlx_size_param_max_index];
  for (int i = 0; i < __xlx_size_param_max_index; ++i) {
    __xlx_max_index_output_buffer[i] = __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__input_buffer[i+__xlx_offset_param_max_index];
  }
  for (int i = 0; i < __xlx_size_param_max_index; ++i) {
    ((int*)__xlx_apatb_param_max_index)[i] = __xlx_max_index_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_similarity_matrix
  sc_bv<32>*__xlx_similarity_matrix_output_buffer = new sc_bv<32>[__xlx_size_param_similarity_matrix];
  for (int i = 0; i < __xlx_size_param_similarity_matrix; ++i) {
    __xlx_similarity_matrix_output_buffer[i] = __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__input_buffer[i+__xlx_offset_param_similarity_matrix];
  }
  for (int i = 0; i < __xlx_size_param_similarity_matrix; ++i) {
    ((int*)__xlx_apatb_param_similarity_matrix)[i] = __xlx_similarity_matrix_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_direction_matrix
  sc_bv<32>*__xlx_direction_matrix_output_buffer = new sc_bv<32>[__xlx_size_param_direction_matrix];
  for (int i = 0; i < __xlx_size_param_direction_matrix; ++i) {
    __xlx_direction_matrix_output_buffer[i] = __xlx_string1_string2_max_index_similarity_matrix_direction_matrix__input_buffer[i+__xlx_offset_param_direction_matrix];
  }
  for (int i = 0; i < __xlx_size_param_direction_matrix; ++i) {
    ((int*)__xlx_apatb_param_direction_matrix)[i] = __xlx_direction_matrix_output_buffer[i].to_uint64();
  }
}
