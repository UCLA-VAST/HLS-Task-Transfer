#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
#include "merlin_type_define.h"
const int _ZN20xfNPixelsPerCycle_1_9datashiftE = 0;

static void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 256 && _cols > 0 && _cols <= 256 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(struct xf_Mat_0_256_256_1_ *this_)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(this_,256,256,true);
}

static void p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1(struct xf_Mat_4_256_256_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 256 && _cols > 0 && _cols <= 256 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf16Mat_4_256_256_1_C2IEEv_1(struct xf_Mat_4_256_256_1_ *this_)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1(this_,256,256,true);
}

static void p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1(struct xf_accel_utils *this_,class ap_uint< 64 > *srcPtr,class hls::stream< ap_uint< 64 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 64 - 1) / 64;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=8192
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ *this_,int index,DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_0_1_10pixelwidthE = 8;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class hls::stream< ap_uint< 64 >  > &srcStrm,struct xf_Mat_0_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 64 > r;
  DataType_0_1_name out;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    if (valid_bits < N_size) {
      if (valid_bits != 0) {
        out . range((valid_bits - 1),0) = r . range((64 - 1),(64 - valid_bits));
      }
      r = srcStrm . read();
      out . range((N_size - 1),valid_bits) = r . range((N_size - valid_bits - 1),0);
      valid_bits = 64 - (N_size - valid_bits);
    }
     else {
      out = r . range((64 - valid_bits + N_size - 1),(64 - valid_bits));
      valid_bits -= N_size;
    }
    p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&dstMat,i,out);
  }
}
const int _ZN13StreamType_1_8bitdepthE = 8;
const int _ZN13DataType_0_1_8bitdepthE = 8;

static void p_ZN2xf11accel_utils11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class ap_uint< 64 > *srcPtr,struct xf_Mat_0_256_256_1_ &dstMat)
{
  
#pragma HLS DATAFLOW
  64 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )665,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  class hls::stream< ap_uint< 64 >  > strm;
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1(this_,srcPtr,strm,rows,cols);
  p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi0ELi256ELi256ELi1EE_1(this_,strm,dstMat);
}

static void p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(class ap_uint< 64 > *srcPtr,struct xf_Mat_0_256_256_1_ &dstMat)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(&au,srcPtr,dstMat);
}

static void p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi32ELi32768EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1(struct xf_accel_utils *this_,class ap_uint< 64 > *srcPtr,class hls::stream< ap_uint< 64 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 32;
  int loop_count = (rows * cols * pixel_width + 64 - 1) / 64;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=32768
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1(struct xf_Mat_4_256_256_1_ *this_,int index,DataType_4_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN13DataType_4_1_10pixelwidthE = 32;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi4ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi4ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class hls::stream< ap_uint< 64 >  > &srcStrm,struct xf_Mat_4_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_4_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 64 > r;
  DataType_4_1_name out;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    if (valid_bits < N_size) {
      if (valid_bits != 0) {
        out . range((valid_bits - 1),0) = r . range((64 - 1),(64 - valid_bits));
      }
      r = srcStrm . read();
      out . range((N_size - 1),valid_bits) = r . range((N_size - valid_bits - 1),0);
      valid_bits = 64 - (N_size - valid_bits);
    }
     else {
      out = r . range((64 - valid_bits + N_size - 1),(64 - valid_bits));
      valid_bits -= N_size;
    }
    p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1(&dstMat,i,out);
  }
}
const int _ZN14StreamType_13_8bitdepthE = 32;
const int _ZN13DataType_4_1_8bitdepthE = 32;

static void p_ZN2xf11accel_utils11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class ap_uint< 64 > *srcPtr,struct xf_Mat_4_256_256_1_ &dstMat)
{
  
#pragma HLS DATAFLOW
  64 >= _ZN14StreamType_13_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )665,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_4_1_8bitdepthE;
  class hls::stream< ap_uint< 64 >  > strm;
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi32ELi32768EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1(this_,srcPtr,strm,rows,cols);
  p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi4ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi4ELi256ELi256ELi1EE_1(this_,strm,dstMat);
}

static void p_ZN2xf11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1(class ap_uint< 64 > *srcPtr,struct xf_Mat_4_256_256_1_ &dstMat)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1(&au,srcPtr,dstMat);
}

static DataType_0_1_name p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(struct xf_Mat_0_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static DataType_4_1_name p_ZN2xf16Mat_4_256_256_1_4readIEEi_1(struct xf_Mat_4_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static float p_ZN2xf16Mat_4_256_256_1_10read_floatIEEi_1(struct xf_Mat_4_256_256_1_ *this_,int index)
{
  class ap_uint< 32 > val = p_ZN2xf16Mat_4_256_256_1_4readIEEi_1(this_,index);
  float *val_out = (float *)(&val);
  return  *val_out;
}

static void p_ZN2xf9xFRemapLIILi0ELi0ELi1ELi4ELi8ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEtt_1(struct xf_Mat_0_256_256_1_ &src,struct xf_Mat_0_256_256_1_ &dst,struct xf_Mat_4_256_256_1_ &mapx,struct xf_Mat_4_256_256_1_ &mapy,unsigned short rows,unsigned short cols)
{
  DataType_0_1_name buf[5][2][129][2];
#pragma HLS array_partition variable=buf complete dim=4
#pragma HLS array_partition variable=buf complete dim=2
#pragma HLS array_partition variable=buf complete dim=1
  DataType_0_1_name s;
  class ap_uint< 72 > bufUram[1][4][128];
  
#pragma HLS resource variable=bufUram core=RAM_T2P_URAM latency=2
  class ap_uint< 24 > lineBuf[1][128];
  DataType_4_1_name mx;
  DataType_4_1_name my;
  int read_pointer_src = 0;
  int read_pointer_map = 0;
  int write_pointer = 0;
  ((int )rows) <= 256?((void )0) : __assert_fail("rows <= ROWS","xf_remap.hpp",(unsigned int )208,__PRETTY_FUNCTION__);
  ((int )cols) <= 256?((void )0) : __assert_fail("cols <= COLS","xf_remap.hpp",(unsigned int )209,__PRETTY_FUNCTION__);
  int ishift = 8 / 2;
  int r1[8] = {};
#pragma HLS array_partition variable=r1 complete dim=1
  int r2[8] = {};
#pragma HLS array_partition variable=r2 complete dim=1
  int row_tripcount = 256 + 8;
  bool store_col = (bool )1;
  bool store_row = (bool )1;
  class ap_uint< 16 > temppix[1];
  class ap_uint< 24 > pixval[1];
  class ap_uint< 48 > pixval_2[1];
  class ap_uint< 24 > prev_pixval[1];
  class ap_uint< 72 > tempbuf[1];
  for (int pl = 0; pl < 1; pl++) {
    temppix[pl] = 0;
    pixval[pl] = 0;
    pixval_2[pl] = 0;
    prev_pixval[pl] = 0;
    tempbuf[pl] = 0;
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  loop_height:
  for (int i = 0; i < ((int )rows) + ishift; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=row_tripcount
    store_col = ((bool )1);
    
#pragma HLS LOOP_FLATTEN OFF
    
#pragma ACCEL false_dependence variable=bufUram
#pragma HLS dependence variable=bufUram intra false
    
#pragma ACCEL PIPELINE auto{__PIPE__L6}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
    loop_width:
    for (int j = 0; j < ((int )cols) + 1; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256+2
      if (i < ((int )rows) && j < ((int )cols)) {
        s = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&src,read_pointer_src++);
      }
       else {
        s = 0;
      }
      if (true && i < ((int )rows)) {
        int _l_pl = 0;
        int _l_bit = 0;
// Canonicalized from: for(int pl = 0, bit = 0;pl < 1;(pl++ , bit += 8)) {...}
        for (_l_pl = 0; _l_pl <= 0; ++_l_pl) {
          if (store_col && j != 0) {
            pixval[_l_pl] . range(15,0) = (temppix[_l_pl] . operator unsigned long());
            pixval[_l_pl] . range(23,16) = s . range((_l_bit + 7),_l_bit);
            if (store_row) {
              lineBuf[_l_pl][j / 2 - 1] = pixval[_l_pl];
            }
             else {
              prev_pixval[_l_pl] = lineBuf[_l_pl][j / 2 - 1];
            }
            if (i != 0) {
              if (store_row) {
                bufUram[_l_pl][(i - 1) / 2 % (8 / 2)][j / 2 - 1] . range(71,48) = (pixval[_l_pl] . operator unsigned long());
              }
               else {
                pixval_2[_l_pl] . range(23,0) = (prev_pixval[_l_pl] . operator unsigned long());
                pixval_2[_l_pl] . range(47,24) = (pixval[_l_pl] . operator unsigned long());
                bufUram[_l_pl][(i - 1) / 2 % (8 / 2)][j / 2 - 1] . range(47,0) = (pixval_2[_l_pl] . operator unsigned long());
              }
            }
          }
          if (store_col) {
            temppix[_l_pl] . range(7,0) = s . range((_l_bit + 7),_l_bit);
          }
           else {
            temppix[_l_pl] . range(15,8) = s . range((_l_bit + 7),_l_bit);
          }
          _l_bit += 8;
        }
        store_col = !store_col;
      }
      if (!true) {
        if ((bool )(i % 8 % 2)) {
          buf[i % 8 / 2][i % 8 % 2][j / 2][j % 2] = s;
        }
         else {
          buf[i % 8 / 2][i % 8 % 2][j / 2][j % 2] = s;
        }
      }
      r1[i % 8] = i;
      r2[i % 8] = i;
      if (i >= ishift && j < ((int )cols)) {
        float x_fl = p_ZN2xf16Mat_4_256_256_1_10read_floatIEEi_1(&mapx,read_pointer_map);
        float y_fl = p_ZN2xf16Mat_4_256_256_1_10read_floatIEEi_1(&mapy,read_pointer_map++);
        int x_fix = (int )(((float )x_fl) * ((float )32));
        int y_fix = (int )(((float )y_fl) * ((float )32));
        int x = x_fix >> 5;
        int y = y_fix >> 5;
        int x_frac = x_fix & 32 - 1;
        int y_frac = y_fix & 32 - 1;
        int ynext = y + 1;
        class ap_ufixed< 5 , 0 , AP_TRN , AP_WRAP , 0 > iu;
        class ap_ufixed< 5 , 0 , AP_TRN , AP_WRAP , 0 > iv;
        iu((5 - 1),0) = ((unsigned long )x_frac);
        iv((5 - 1),0) = ((unsigned long )y_frac);
        bool in_range = y >= 0 && y_fl <= ((float )(((int )rows) - 1)) && r1[y % 8] == y && r2[ynext % 8] == ynext && x >= 0 && x_fl <= ((float )(((int )cols) - 1));
        int xa0;
        int xa1;
        int ya0;
        int ya1;
        (8 & 1) == 0 && ((bool )"WIN_ROW must be a multiple of two")?((void )0) : __assert_fail("((WIN_ROW & 1) == 0) && \"WIN_ROW must be a multiple of two\"","xf_remap.hpp",(unsigned int )363,__PRETTY_FUNCTION__);
        xa0 = x / 2 + x % 2;
        xa1 = x / 2;
        ya0 = (y / 2 + y % 2) % (8 / 2);
        ya1 = y / 2 % (8 / 2);
        DataType_0_1_name d;
        
#pragma ACCEL PIPELINE auto{__PIPE__L10}
        for (int ch = 0; ch < 1; ch++) {
          DataType_0_1_cname d00;
          DataType_0_1_cname d01;
          DataType_0_1_cname d10;
          DataType_0_1_cname d11;
          if (true) {
            DataType_0_1_name d3x3[9];
#pragma HLS array_partition variable=d3x3 complete dim=1
            tempbuf[ch] = bufUram[ch][ya1][xa1];
            for (int k = 0; k < 9; k++) {
              d3x3[k] = tempbuf[ch] . range((k * 8 + 7),(k * 8));
            }
            d00 = d3x3[y % 2 * 3 + x % 2];
            d01 = d3x3[y % 2 * 3 + x % 2 + 1];
            d10 = d3x3[(y % 2 + 1) * 3 + x % 2];
            d11 = d3x3[(y % 2 + 1) * 3 + x % 2 + 1];
          }
           else {
            d00 = buf[ya0][0][xa0][0] . range(((ch + 1) * 8 - 1),(ch * 8));
            d01 = buf[ya0][0][xa1][1] . range(((ch + 1) * 8 - 1),(ch * 8));
            d10 = buf[ya1][1][xa0][0] . range(((ch + 1) * 8 - 1),(ch * 8));
            d11 = buf[ya1][1][xa1][1] . range(((ch + 1) * 8 - 1),(ch * 8));
            if ((bool )(x % 2)) {
              int t = (int )(d00);
              d00 = d01;
              d01 = t;
              int t2 = (int )(d10);
              d10 = d11;
              d11 = d10;
            }
            if ((bool )(y % 2)) {
              int t = (int )(d00);
              d00 = d10;
              d10 = t;
              int t2 = (int )(d01);
              d01 = d11;
              d11 = d01;
            }
          }
          class ap_ufixed< 11 , 1 , AP_TRN , AP_WRAP , 0 > k01 = ((1-iv)*iu);
          class ap_ufixed< 11 , 1 , AP_TRN , AP_WRAP , 0 > k10 = (iv*(1-iu));
          class ap_ufixed< 11 , 1 , AP_TRN , AP_WRAP , 0 > k11 = (iv*iu);
          class ap_ufixed< 11 , 1 , AP_TRN , AP_WRAP , 0 > k00 = ((1-iv)-k01);
          ((k00+k01)+k10)+k11==1?((void )0) : __assert_fail("k00 + k01 + k10 + k11 == 1","xf_remap.hpp",(unsigned int )431,__PRETTY_FUNCTION__);
          if (in_range) {
            d . range(((ch + 1) * 8 - 1),(ch * 8)) = (((d00*k00+d01*k01)+d10*k10)+d11*k11);
          }
           else {
            d . range(((ch + 1) * 8 - 1),(ch * 8)) = ((unsigned long )0);
          }
        }
        p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&dst,write_pointer++,d);
      }
    }
    store_row = !store_row;
  }
}

static void p_ZN2xf5remapILi8ELi1ELi0ELi4ELi0ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_remapped_mat,struct xf_Mat_4_256_256_1_ &_mapx_mat,struct xf_Mat_4_256_256_1_ &_mapy_mat)
{
  
#pragma HLS dataflow
  4 == ((int )XF_32FC1) && ((bool )"The MAP_T must be XF_32FC1")?((void )0) : __assert_fail("(MAP_T == XF_32FC1) && \"The MAP_T must be XF_32FC1\"","xf_remap.hpp",(unsigned int )461,__PRETTY_FUNCTION__);
  1 == ((int )XF_NPPC1) && ((bool )"The NPC must be XF_NPPC1")?((void )0) : __assert_fail("(NPC == XF_NPPC1) && \"The NPC must be XF_NPPC1\"","xf_remap.hpp",(unsigned int )464,__PRETTY_FUNCTION__);
  int depth_est = 8 * _src_mat . cols;
  unsigned short rows = (unsigned short )_src_mat . rows;
  unsigned short cols = (unsigned short )_src_mat . cols;
{
    p_ZN2xf9xFRemapLIILi0ELi0ELi1ELi4ELi8ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEtt_1(_src_mat,_remapped_mat,_mapx_mat,_mapy_mat,rows,cols);
  }
}

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi64ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi64EEE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,class hls::stream< ap_uint< 64 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 64;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 64 > r;
  DataType_0_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    in = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&srcMat,i);
    if (bits_to_add <= N_size) {
      r . range((64 - 1),(64 - bits_to_add)) = in . range((bits_to_add - 1),0);
      dstStrm . write(r);
      if (bits_to_add != N_size) {
        r . range((N_size - bits_to_add - 1),0) = in . range((N_size - 1),bits_to_add);
      }
      bits_to_add = 64 - (N_size - bits_to_add);
    }
     else {
      r . range((64 - bits_to_add + N_size - 1),(64 - bits_to_add)) = in;
      bits_to_add -= N_size;
    }
  }
  if (bits_to_add != 64) {
    dstStrm . write(r);
  }
}

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEER6streamI7ap_uintILi64EEEP7ap_uintILi64EEii_1(struct xf_accel_utils *this_,class hls::stream< ap_uint< 64 >  > &srcStrm,class ap_uint< 64 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 64 - 1) / 64;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L8}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=8192
    dstPtr[i] = srcStrm . read();
  }
}

static void p_ZN2xf11accel_utils11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 64 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  64 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  class hls::stream< ap_uint< 64 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi64ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi64EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEER6streamI7ap_uintILi64EEEP7ap_uintILi64EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1(struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 64 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void remap_accel(class ap_uint< 64 > *img_inp,class ap_uint< 64 > *img_out,int rows,int cols,class ap_uint< 64 > *img_mapx,class ap_uint< 64 > *img_mapy)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_out offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_out bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE m_axi port=img_mapx offset=slave bundle=gmem3
  
#pragma HLS INTERFACE m_axi port=img_mapy offset=slave bundle=gmem4
  
#pragma HLS INTERFACE s_axilite port=img_mapx bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_mapy bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPPC1 = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat);
  ;
  
#pragma HLS stream variable=in_mat.data depth=pCOLS/pNPPC1
  in_mat . rows = rows;
  in_mat . cols = cols;
  struct xf_Mat_0_256_256_1_ out_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&out_mat);
  ;
  
#pragma HLS stream variable=out_mat.data depth=pCOLS/pNPPC1
  out_mat . rows = rows;
  out_mat . cols = cols;
  struct xf_Mat_4_256_256_1_ mapx_mat;
  p_ZN2xf16Mat_4_256_256_1_C2IEEv_1(&mapx_mat);
  ;
  
#pragma HLS stream variable=mapx_mat.data depth=pCOLS/pNPPC1
  mapx_mat . rows = rows;
  mapx_mat . cols = cols;
  struct xf_Mat_4_256_256_1_ mapy_mat;
  p_ZN2xf16Mat_4_256_256_1_C2IEEv_1(&mapy_mat);
  ;
  
#pragma HLS stream variable=mapy_mat.data depth=pCOLS/pNPPC1
  mapy_mat . rows = rows;
  mapy_mat . cols = cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  p_ZN2xf11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1(img_mapx,mapx_mat);
  p_ZN2xf11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1(img_mapy,mapy_mat);
  p_ZN2xf5remapILi8ELi1ELi0ELi4ELi0ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EE_1(in_mat,out_mat,mapx_mat,mapy_mat);
  p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1(out_mat,img_out);
}
