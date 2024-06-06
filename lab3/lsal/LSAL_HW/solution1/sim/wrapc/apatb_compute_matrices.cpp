#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.compute_matrices.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.compute_matrices.autotvout_gmem.dat"
// wrapc file define:
#define AUTOTB_TVIN_string1 "../tv/cdatafile/c.compute_matrices.autotvin_string1.dat"
#define AUTOTB_TVOUT_string1 "../tv/cdatafile/c.compute_matrices.autotvout_string1.dat"
// wrapc file define:
#define AUTOTB_TVIN_string2 "../tv/cdatafile/c.compute_matrices.autotvin_string2.dat"
#define AUTOTB_TVOUT_string2 "../tv/cdatafile/c.compute_matrices.autotvout_string2.dat"
// wrapc file define:
#define AUTOTB_TVIN_max_index "../tv/cdatafile/c.compute_matrices.autotvin_max_index.dat"
#define AUTOTB_TVOUT_max_index "../tv/cdatafile/c.compute_matrices.autotvout_max_index.dat"
// wrapc file define:
#define AUTOTB_TVIN_similarity_matrix "../tv/cdatafile/c.compute_matrices.autotvin_similarity_matrix.dat"
#define AUTOTB_TVOUT_similarity_matrix "../tv/cdatafile/c.compute_matrices.autotvout_similarity_matrix.dat"
// wrapc file define:
#define AUTOTB_TVIN_direction_matrix "../tv/cdatafile/c.compute_matrices.autotvin_direction_matrix.dat"
#define AUTOTB_TVOUT_direction_matrix "../tv/cdatafile/c.compute_matrices.autotvout_direction_matrix.dat"
// wrapc file define:
#define AUTOTB_TVIN_N "../tv/cdatafile/c.compute_matrices.autotvin_N.dat"
#define AUTOTB_TVOUT_N "../tv/cdatafile/c.compute_matrices.autotvout_N.dat"
// wrapc file define:
#define AUTOTB_TVIN_M "../tv/cdatafile/c.compute_matrices.autotvin_M.dat"
#define AUTOTB_TVOUT_M "../tv/cdatafile/c.compute_matrices.autotvout_M.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.compute_matrices.autotvout_gmem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_string1 "../tv/rtldatafile/rtl.compute_matrices.autotvout_string1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_string2 "../tv/rtldatafile/rtl.compute_matrices.autotvout_string2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_max_index "../tv/rtldatafile/rtl.compute_matrices.autotvout_max_index.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_similarity_matrix "../tv/rtldatafile/rtl.compute_matrices.autotvout_similarity_matrix.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_direction_matrix "../tv/rtldatafile/rtl.compute_matrices.autotvout_direction_matrix.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_N "../tv/rtldatafile/rtl.compute_matrices.autotvout_N.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_M "../tv/rtldatafile/rtl.compute_matrices.autotvout_M.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem_depth = 0;
  string1_depth = 0;
  string2_depth = 0;
  max_index_depth = 0;
  similarity_matrix_depth = 0;
  direction_matrix_depth = 0;
  N_depth = 0;
  M_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem " << gmem_depth << "}\n";
  total_list << "{string1 " << string1_depth << "}\n";
  total_list << "{string2 " << string2_depth << "}\n";
  total_list << "{max_index " << max_index_depth << "}\n";
  total_list << "{similarity_matrix " << similarity_matrix_depth << "}\n";
  total_list << "{direction_matrix " << direction_matrix_depth << "}\n";
  total_list << "{N " << N_depth << "}\n";
  total_list << "{M " << M_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem_depth;
    int string1_depth;
    int string2_depth;
    int max_index_depth;
    int similarity_matrix_depth;
    int direction_matrix_depth;
    int N_depth;
    int M_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void compute_matrices_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int, int);

extern "C" void apatb_compute_matrices_hw(volatile void * __xlx_apatb_param_string1, volatile void * __xlx_apatb_param_string2, volatile void * __xlx_apatb_param_max_index, volatile void * __xlx_apatb_param_similarity_matrix, volatile void * __xlx_apatb_param_direction_matrix, int __xlx_apatb_param_N, int __xlx_apatb_param_M) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > gmem_pc_buffer(787009);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 64; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_string1)[j] = gmem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 512; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_string2)[j] = gmem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 1; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_max_index)[j] = gmem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 524288; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_similarity_matrix)[j] = gmem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 262144; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_direction_matrix)[j] = gmem_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem
aesl_fh.touch(AUTOTB_TVIN_gmem);
aesl_fh.touch(AUTOTB_TVOUT_gmem);
//string1
aesl_fh.touch(AUTOTB_TVIN_string1);
aesl_fh.touch(AUTOTB_TVOUT_string1);
//string2
aesl_fh.touch(AUTOTB_TVIN_string2);
aesl_fh.touch(AUTOTB_TVOUT_string2);
//max_index
aesl_fh.touch(AUTOTB_TVIN_max_index);
aesl_fh.touch(AUTOTB_TVOUT_max_index);
//similarity_matrix
aesl_fh.touch(AUTOTB_TVIN_similarity_matrix);
aesl_fh.touch(AUTOTB_TVOUT_similarity_matrix);
//direction_matrix
aesl_fh.touch(AUTOTB_TVIN_direction_matrix);
aesl_fh.touch(AUTOTB_TVOUT_direction_matrix);
//N
aesl_fh.touch(AUTOTB_TVIN_N);
aesl_fh.touch(AUTOTB_TVOUT_N);
//M
aesl_fh.touch(AUTOTB_TVIN_M);
aesl_fh.touch(AUTOTB_TVOUT_M);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_string1 = 0;
unsigned __xlx_offset_byte_param_string2 = 0;
unsigned __xlx_offset_byte_param_max_index = 0;
unsigned __xlx_offset_byte_param_similarity_matrix = 0;
unsigned __xlx_offset_byte_param_direction_matrix = 0;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_string1 = 0*4;
  if (__xlx_apatb_param_string1) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_string1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_string2 = 64*4;
  if (__xlx_apatb_param_string2) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_string2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_max_index = 576*4;
  if (__xlx_apatb_param_max_index) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_max_index)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_similarity_matrix = 577*4;
  if (__xlx_apatb_param_similarity_matrix) {
    for (int j = 0  - 0, e = 524288 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_similarity_matrix)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_direction_matrix = 524865*4;
  if (__xlx_apatb_param_direction_matrix) {
    for (int j = 0  - 0, e = 262144 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_direction_matrix)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(787009, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
}
// print string1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_string1, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_string1;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_string1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.string1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_string1, __xlx_sprintf_buffer.data());
}
// print string2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_string2, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_string2;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_string2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.string2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_string2, __xlx_sprintf_buffer.data());
}
// print max_index Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_max_index, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_max_index;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_max_index, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.max_index_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_max_index, __xlx_sprintf_buffer.data());
}
// print similarity_matrix Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_similarity_matrix, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_similarity_matrix;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_similarity_matrix, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.similarity_matrix_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_similarity_matrix, __xlx_sprintf_buffer.data());
}
// print direction_matrix Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_direction_matrix, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_direction_matrix;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_direction_matrix, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.direction_matrix_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_direction_matrix, __xlx_sprintf_buffer.data());
}
// print N Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_N, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_N);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_N, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.N_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_N, __xlx_sprintf_buffer.data());
}
// print M Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_M, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_M);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_M, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.M_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_M, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
compute_matrices_hw_stub_wrapper(__xlx_apatb_param_string1, __xlx_apatb_param_string2, __xlx_apatb_param_max_index, __xlx_apatb_param_similarity_matrix, __xlx_apatb_param_direction_matrix, __xlx_apatb_param_N, __xlx_apatb_param_M);
CodeState = DUMP_OUTPUTS;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_string1 = 0*4;
  if (__xlx_apatb_param_string1) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_string1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_string2 = 64*4;
  if (__xlx_apatb_param_string2) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_string2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_max_index = 576*4;
  if (__xlx_apatb_param_max_index) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_max_index)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_similarity_matrix = 577*4;
  if (__xlx_apatb_param_similarity_matrix) {
    for (int j = 0  - 0, e = 524288 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_similarity_matrix)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_direction_matrix = 524865*4;
  if (__xlx_apatb_param_direction_matrix) {
    for (int j = 0  - 0, e = 262144 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_direction_matrix)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(787009, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
