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
#define AUTOTB_TVIN_merlin_gmem_bbgemm_512_0 "../tv/cdatafile/c.bbgemm.autotvin_merlin_gmem_bbgemm_512_0.dat"
#define AUTOTB_TVOUT_merlin_gmem_bbgemm_512_0 "../tv/cdatafile/c.bbgemm.autotvout_merlin_gmem_bbgemm_512_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_merlin_gmem_bbgemm_512_1 "../tv/cdatafile/c.bbgemm.autotvin_merlin_gmem_bbgemm_512_1.dat"
#define AUTOTB_TVOUT_merlin_gmem_bbgemm_512_1 "../tv/cdatafile/c.bbgemm.autotvout_merlin_gmem_bbgemm_512_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_merlin_gmem_bbgemm_512_prod "../tv/cdatafile/c.bbgemm.autotvin_merlin_gmem_bbgemm_512_prod.dat"
#define AUTOTB_TVOUT_merlin_gmem_bbgemm_512_prod "../tv/cdatafile/c.bbgemm.autotvout_merlin_gmem_bbgemm_512_prod.dat"
// wrapc file define:
#define AUTOTB_TVIN_m1 "../tv/cdatafile/c.bbgemm.autotvin_m1.dat"
#define AUTOTB_TVOUT_m1 "../tv/cdatafile/c.bbgemm.autotvout_m1.dat"
// wrapc file define:
#define AUTOTB_TVIN_m2 "../tv/cdatafile/c.bbgemm.autotvin_m2.dat"
#define AUTOTB_TVOUT_m2 "../tv/cdatafile/c.bbgemm.autotvout_m2.dat"
// wrapc file define:
#define AUTOTB_TVIN_prod "../tv/cdatafile/c.bbgemm.autotvin_prod.dat"
#define AUTOTB_TVOUT_prod "../tv/cdatafile/c.bbgemm.autotvout_prod.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_merlin_gmem_bbgemm_512_0 "../tv/rtldatafile/rtl.bbgemm.autotvout_merlin_gmem_bbgemm_512_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_merlin_gmem_bbgemm_512_1 "../tv/rtldatafile/rtl.bbgemm.autotvout_merlin_gmem_bbgemm_512_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_merlin_gmem_bbgemm_512_prod "../tv/rtldatafile/rtl.bbgemm.autotvout_merlin_gmem_bbgemm_512_prod.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m1 "../tv/rtldatafile/rtl.bbgemm.autotvout_m1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m2 "../tv/rtldatafile/rtl.bbgemm.autotvout_m2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_prod "../tv/rtldatafile/rtl.bbgemm.autotvout_prod.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  merlin_gmem_bbgemm_512_0_depth = 0;
  merlin_gmem_bbgemm_512_1_depth = 0;
  merlin_gmem_bbgemm_512_prod_depth = 0;
  m1_depth = 0;
  m2_depth = 0;
  prod_depth = 0;
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
  total_list << "{merlin_gmem_bbgemm_512_0 " << merlin_gmem_bbgemm_512_0_depth << "}\n";
  total_list << "{merlin_gmem_bbgemm_512_1 " << merlin_gmem_bbgemm_512_1_depth << "}\n";
  total_list << "{merlin_gmem_bbgemm_512_prod " << merlin_gmem_bbgemm_512_prod_depth << "}\n";
  total_list << "{m1 " << m1_depth << "}\n";
  total_list << "{m2 " << m2_depth << "}\n";
  total_list << "{prod " << prod_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int merlin_gmem_bbgemm_512_0_depth;
    int merlin_gmem_bbgemm_512_1_depth;
    int merlin_gmem_bbgemm_512_prod_depth;
    int m1_depth;
    int m2_depth;
    int prod_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s40__ { char data[64]; };
extern "C" void bbgemm_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_bbgemm_hw(volatile void * __xlx_apatb_param_m1, volatile void * __xlx_apatb_param_m2, volatile void * __xlx_apatb_param_prod) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<512> tr(512);
aesl_fh.read(AUTOTB_TVOUT_PC_merlin_gmem_bbgemm_512_prod, tr.p, tr.tbytes);
tr.reorder();
tr.send<64>((char*)__xlx_apatb_param_prod, 512);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_merlin_gmem_bbgemm_512_prod);
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
          std::vector<sc_bv<512> > merlin_gmem_bbgemm_512_prod_pc_buffer(512);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "merlin_gmem_bbgemm_512_prod");
  
            // push token into output port buffer
            if (AESL_token != "") {
              merlin_gmem_bbgemm_512_prod_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "merlin_gmem_bbgemm_512_prod" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 512; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_prod)[j*8+0] = merlin_gmem_bbgemm_512_prod_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_prod)[j*8+1] = merlin_gmem_bbgemm_512_prod_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_prod)[j*8+2] = merlin_gmem_bbgemm_512_prod_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_prod)[j*8+3] = merlin_gmem_bbgemm_512_prod_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_prod)[j*8+4] = merlin_gmem_bbgemm_512_prod_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_prod)[j*8+5] = merlin_gmem_bbgemm_512_prod_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_prod)[j*8+6] = merlin_gmem_bbgemm_512_prod_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_prod)[j*8+7] = merlin_gmem_bbgemm_512_prod_pc_buffer[i].range(511,448).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_m1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_merlin_gmem_bbgemm_512_0, 'b');
transaction<512> tr(512);
  __xlx_offset_byte_param_m1 = 0*64;
  if (__xlx_apatb_param_m1) {
tr.import<64>((char*)__xlx_apatb_param_m1, 512, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(512, &tcl_file.merlin_gmem_bbgemm_512_0_depth);
#else
// print merlin_gmem_bbgemm_512_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_m1 = 0*64;
  if (__xlx_apatb_param_m1) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_m1)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_m1)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_m1)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_m1)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_m1)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_m1)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_m1)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_m1)[j*8+7];
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(512, &tcl_file.merlin_gmem_bbgemm_512_0_depth);
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_m2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_merlin_gmem_bbgemm_512_1, 'b');
transaction<512> tr(512);
  __xlx_offset_byte_param_m2 = 0*64;
  if (__xlx_apatb_param_m2) {
tr.import<64>((char*)__xlx_apatb_param_m2, 512, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(512, &tcl_file.merlin_gmem_bbgemm_512_1_depth);
#else
// print merlin_gmem_bbgemm_512_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_m2 = 0*64;
  if (__xlx_apatb_param_m2) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_m2)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_m2)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_m2)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_m2)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_m2)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_m2)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_m2)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_m2)[j*8+7];
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(512, &tcl_file.merlin_gmem_bbgemm_512_1_depth);
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_prod = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_merlin_gmem_bbgemm_512_prod, 'b');
transaction<512> tr(512);
  __xlx_offset_byte_param_prod = 0*64;
  if (__xlx_apatb_param_prod) {
tr.import<64>((char*)__xlx_apatb_param_prod, 512, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_prod, tr.p, tr.tbytes);
}

  tcl_file.set_num(512, &tcl_file.merlin_gmem_bbgemm_512_prod_depth);
#else
// print merlin_gmem_bbgemm_512_prod Transactions
{
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_prod, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_prod = 0*64;
  if (__xlx_apatb_param_prod) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_prod)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_prod)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_prod)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_prod)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_prod)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_prod)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_prod)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_prod)[j*8+7];
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_prod, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(512, &tcl_file.merlin_gmem_bbgemm_512_prod_depth);
aesl_fh.write(AUTOTB_TVIN_merlin_gmem_bbgemm_512_prod, end_str());
}

#endif
// print m1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_m1, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_m1;
aesl_fh.write(AUTOTB_TVIN_m1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.m1_depth);
aesl_fh.write(AUTOTB_TVIN_m1, end_str());
}

// print m2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_m2, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_m2;
aesl_fh.write(AUTOTB_TVIN_m2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.m2_depth);
aesl_fh.write(AUTOTB_TVIN_m2, end_str());
}

// print prod Transactions
{
aesl_fh.write(AUTOTB_TVIN_prod, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_prod;
aesl_fh.write(AUTOTB_TVIN_prod, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.prod_depth);
aesl_fh.write(AUTOTB_TVIN_prod, end_str());
}

CodeState = CALL_C_DUT;
bbgemm_hw_stub_wrapper(__xlx_apatb_param_m1, __xlx_apatb_param_m2, __xlx_apatb_param_prod);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_merlin_gmem_bbgemm_512_prod, 'b');
transaction<512> tr(512);
  __xlx_offset_byte_param_prod = 0*64;
  if (__xlx_apatb_param_prod) {
tr.import<64>((char*)__xlx_apatb_param_prod, 512, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_merlin_gmem_bbgemm_512_prod, tr.p, tr.tbytes);
}

  tcl_file.set_num(512, &tcl_file.merlin_gmem_bbgemm_512_prod_depth);
#else
// print merlin_gmem_bbgemm_512_prod Transactions
{
aesl_fh.write(AUTOTB_TVOUT_merlin_gmem_bbgemm_512_prod, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_prod = 0*64;
  if (__xlx_apatb_param_prod) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_prod)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_prod)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_prod)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_prod)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_prod)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_prod)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_prod)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_prod)[j*8+7];
aesl_fh.write(AUTOTB_TVOUT_merlin_gmem_bbgemm_512_prod, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(512, &tcl_file.merlin_gmem_bbgemm_512_prod_depth);
aesl_fh.write(AUTOTB_TVOUT_merlin_gmem_bbgemm_512_prod, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
