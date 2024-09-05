#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
#include <xf_params.h>
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

static void p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1(struct xf_Mat_9_256_256_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 256 && _cols > 0 && _cols <= 256 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf16Mat_9_256_256_1_C2IEEv_1(struct xf_Mat_9_256_256_1_ *this_)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1(this_,256,256,true);
}

static void p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,hls::stream< ap_uint< 256 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=2048
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ *this_,int index,_DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_0_1_10pixelwidthE = 8;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 256 >  > &srcStrm,struct xf_Mat_0_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 256 > r;
  _DataType_0_1_name out;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    if (valid_bits < N_size) {
      if (valid_bits != 0) {
        out . range((valid_bits - 1),0) = r . range((256 - 1),(256 - valid_bits));
      }
      r = srcStrm . read();
      out . range((N_size - 1),valid_bits) = r . range((N_size - valid_bits - 1),0);
      valid_bits = 256 - (N_size - valid_bits);
    }
     else {
      out = r . range((256 - valid_bits + N_size - 1),(256 - valid_bits));
      valid_bits -= N_size;
    }
    p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&dstMat,i,out);
  }
}
const int _ZN13StreamType_1_8bitdepthE = 8;
const int _ZN13DataType_0_1_8bitdepthE = 8;

static void p_ZN2xf11accel_utils11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,struct xf_Mat_0_256_256_1_ &dstMat)
{
  
#pragma HLS DATAFLOW
  256 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )665,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  hls::stream< ap_uint< 256 >  > strm;
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(this_,srcPtr,strm,rows,cols);
  p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi0ELi256ELi256ELi1EE_1(this_,strm,dstMat);
}

static void p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(class ap_uint< 256 > *srcPtr,struct xf_Mat_0_256_256_1_ &dstMat)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(&au,srcPtr,dstMat);
}

static _DataType_0_1_name p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(struct xf_Mat_0_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static int p_ZN2xf9rb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(_DataType_0_1_uname imgblock[5][5],int loop)
{
  short t1 = (short )((((imgblock[0][2 + loop]+imgblock[2][0 + loop])+imgblock[2][4 + loop])+imgblock[4][2 + loop]));
  t1 = ((short )(((int )t1) * 3 / 2));
  short t2 = (short )((((imgblock[1][1 + loop]+imgblock[1][3 + loop])+imgblock[3][1 + loop])+imgblock[3][3 + loop]));
  t2 = ((short )(((int )t2) * 2));
  short t3 = (short )((imgblock[2][2 + loop]*6));
  int res = -((int )t1) + ((int )t2) + ((int )t3);
  res /= 8;
  if (res < 0) {
    return 0;
  }
  return res;
}

static int p_ZN2xf8g_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(_DataType_0_1_uname imgblock[5][5],int loop)
{
  int res = (int )(((( - (((imgblock[0][2 + loop]+imgblock[2][0 + loop])+imgblock[2][4 + loop])+imgblock[4][2 + loop]))+(((imgblock[1][2 + loop]+imgblock[2][1 + loop])+imgblock[2][3 + loop])+imgblock[3][2 + loop])*2)+imgblock[2][2 + loop]*4));
  res /= 8;
  if (res < 0) {
    return 0;
  }
  return res;
}

static int p_ZN2xf14rgb_bgr_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(_DataType_0_1_uname imgblock[5][5],int loop)
{
  short t1 = (short )((imgblock[2][0 + loop]+imgblock[2][4 + loop]));
  t1 /= 2;
  short t2 = (short )((((((imgblock[0][2 + loop]+imgblock[1][1 + loop])+imgblock[1][3 + loop])+imgblock[3][1 + loop])+imgblock[3][3 + loop])+imgblock[4][2 + loop]));
  short t3 = (short )((imgblock[1][2 + loop]+imgblock[3][2 + loop]));
  t3 *= 4;
  short t4 = (short )((imgblock[2][2 + loop]*5));
  int res = ((int )t1) - ((int )t2) + ((int )t3) + ((int )t4);
  res /= 8;
  if (res < 0) {
    return 0;
  }
  return res;
}

static int p_ZN2xf14rgr_bgb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(_DataType_0_1_uname imgblock[5][5],int loop)
{
  short t1 = (short )((imgblock[0][2 + loop]+imgblock[4][2 + loop]));
  short t2 = (short )((((((imgblock[1][1 + loop]+imgblock[1][3 + loop])+imgblock[2][0 + loop])+imgblock[2][4 + loop])+imgblock[3][1 + loop])+imgblock[3][3 + loop]));
  short t3 = (short )((imgblock[2][1 + loop]+imgblock[2][3 + loop]));
  t3 *= 4;
  short t4 = (short )((imgblock[2][2 + loop]*5));
  int res = (((int )t1) >> 1) - ((int )t2) + ((int )t3) + ((int )t4);
  res /= 8;
  if (res < 0) {
    return 0;
  }
  return res;
}

static void p_ZN2xf12Core_ProcessILi3ELi0ELi1ELi0ELi5EEEPA5_7ap_uintILi8EERiRiRiiii_1(_DataType_0_1_uname imgblock[5][5],int &b,int &g,int &r,int row,int col,int loop)
{
  if ((row & 0x00000001) == 0) {
    if ((col & 0x00000001) == 0) {
      b = p_ZN2xf9rb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(imgblock,loop);
      g = p_ZN2xf8g_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(imgblock,loop);
      r = ((int )(imgblock[2][2 + loop]));
    }
     else {
      b = p_ZN2xf14rgb_bgr_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(imgblock,loop);
      g = ((int )(imgblock[2][2 + loop]));
      r = p_ZN2xf14rgr_bgb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(imgblock,loop);
    }
  }
   else {
    if ((col & 0x00000001) == 0) {
      b = p_ZN2xf14rgr_bgb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(imgblock,loop);
      g = ((int )(imgblock[2][2 + loop]));
      r = p_ZN2xf14rgb_bgr_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(imgblock,loop);
    }
     else {
      b = ((int )(imgblock[2][2 + loop]));
      g = p_ZN2xf8g_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(imgblock,loop);
      r = p_ZN2xf9rb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1(imgblock,loop);
    }
  }
}

static class ap_uint< 8 > p_Z10xf_satcastI7ap_uintILi8EEEi_1(int v)
{
  return ((v > (1 << 8) - 1?255 : v));
}

static void p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1(struct xf_Mat_9_256_256_1_ *this_,int index,_DataType_9_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN13DataType_9_1_8bitdepthE = 8;
const int _ZN13DataType_9_1_7channelE = 3;
const int _ZN13DataType_9_1_10pixelwidthE = 24;

static void p_ZN2xf11demosaicingILi3ELi0ELi9ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &src_mat,struct xf_Mat_9_256_256_1_ &dst_mat)
{
  (3 == ((int )XF_BAYER_BG) || 3 == ((int )XF_BAYER_GB) || 3 == ((int )XF_BAYER_GR) || 3 == ((int )XF_BAYER_RG)) && ((bool )"Unsupported Bayer pattern. Use anyone among: XF_BAYER_BG;XF_BAYER_GB;XF_BAYER_GR;XF_BAYER_RG")?((void )0) : __assert_fail("((BFORMAT == XF_BAYER_BG) || (BFORMAT == XF_BAYER_GB)|| (BFORMAT == XF_BAYER_GR) || (BFORMAT == XF_BAYER_RG)) && (\"Unsupported Bayer pattern. Use anyone among: XF_BAYER_BG;XF_BAYER_GB;XF_BAYER_GR;XF_BAYER_RG\")","xf_demosaicing.hpp",(unsigned int )243,__PRETTY_FUNCTION__);
  src_mat . rows <= 256 && src_mat . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((src_mat.rows <= ROWS ) && (src_mat.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_demosaicing.hpp",(unsigned int )244,__PRETTY_FUNCTION__);
  (1 == 1 || 1 == 2 || 1 == 4) && ((bool )"Only 1, 2 and 4 pixel-parallelism are supported")?((void )0) : __assert_fail("((NPC==1)||(NPC==2)||(NPC==4)) && \"Only 1, 2 and 4 pixel-parallelism are supported\"","xf_demosaicing.hpp",(unsigned int )245,__PRETTY_FUNCTION__);
  (0 == ((int )XF_8UC1) || 0 == ((int )XF_10UC1) || 0 == ((int )XF_12UC1) || 0 == ((int )XF_16UC1)) && ((bool )"Only 8, 10, 12 and 16 bit, single channel images are supported")?((void )0) : __assert_fail("((SRC_T == XF_8UC1)||(SRC_T == XF_10UC1)||(SRC_T == XF_12UC1)||(SRC_T == XF_16UC1)) && \"Only 8, 10, 12 and 16 bit, single channel images are supported\"","xf_demosaicing.hpp",(unsigned int )246,__PRETTY_FUNCTION__);
  (9 == ((int )XF_8UC3) || 9 == ((int )XF_10UC3) || 9 == ((int )XF_12UC3) || 9 == ((int )XF_16UC3) || 9 == ((int )XF_8UC4) || 9 == ((int )XF_10UC4) || 9 == ((int )XF_12UC4) || 9 == ((int )XF_16UC4)) && ((bool )"Only 8, 10, 12 and 16 bit, 3 and 4 channel images are supported")?((void )0) : __assert_fail("((DST_T == XF_8UC3)||(DST_T == XF_10UC3)||(DST_T == XF_12UC3)||(DST_T == XF_16UC3)|| (DST_T == XF_8UC4)||(DST_T == XF_10UC4)||(DST_T == XF_12UC4)||(DST_T == XF_16UC4)) && \"Only 8, 10, 12 and 16 bit, 3 and 4 channel images are supported\"","xf_demosaicing.hpp",(unsigned int )247,__PRETTY_FUNCTION__);
  const int __BHEIGHT = 5;
  const int __BHEIGHTMINUSONE = __BHEIGHT - 1;
  const int __BWIDTH = 1 + __BHEIGHTMINUSONE + (1 - 1 >> 1 << 1);
  _DataType_0_1_name linebuffer[4][256 >> 0];
#pragma HLS array_partition variable=linebuffer complete dim=1
  _DataType_0_1_cname imgblock[5][5];

#pragma HLS array_partition variable=imgblock complete dim=1
#pragma HLS array_partition variable=imgblock complete dim=2
  const int pre_read_count = 2 / 1 + (1 * 1 >> 2);
  const int post_read_count = pre_read_count + 2;
  const int end_read_count = (1 << 1 >> 1 * 1) + 1;
  int lineStore = 3;
  int read_index = 0;
  int write_index = 0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  LineBuffer:
  for (int i = 0; i < 2; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=2 max=2
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
    for (int j = 0; j < src_mat . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=256/1 max=256/1
      _DataType_0_1_name tmp = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&src_mat,read_index++);
      linebuffer[i][j] = 0;
      linebuffer[i + 2][j] = tmp;
    }
  }
  class ap_uint< 3 > line0(3);
  class ap_uint< 3 > line1(0);
  class ap_uint< 3 > line2(1);
  class ap_uint< 3 > line3(2);
  int step = _ZN13DataType_0_1_8bitdepthE;
  int out_step = _ZN13DataType_9_1_8bitdepthE;
  _DataType_0_1_name tmp;
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  Row_Loop:
  for (int i = 0; i < src_mat . rows; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    int bram_read_count = 0;
    lineStore++;
    if (lineStore > 3) {
      lineStore = 0;
    }
    if (line0==0) {
      line0 = 1;
      line1 = 2;
      line2 = 3;
      line3 = 0;
    }
     else {
      if (line0==1) {
        line0 = 2;
        line1 = 3;
        line2 = 0;
        line3 = 1;
      }
       else {
        if (line0==2) {
          line0 = 3;
          line1 = 0;
          line2 = 1;
          line3 = 2;
        }
         else {
          line0 = 0;
          line1 = 1;
          line2 = 2;
          line3 = 3;
        }
      }
    }
    
#pragma ACCEL PIPELINE auto{__PIPE__L3}
    
#pragma ACCEL TILE FACTOR=auto{__TILE__L3}
    Zero:
    for (int p = 0; p < 4; ++p) {
      for (int k = 0; k < 1 + 2; k++) {
        imgblock[p][k] = 0;
      }
    }
    int _l_n = 0;
    int _l_w = 0;
    int _l_v = 0;
    Datafill:
// Canonicalized from: for(int n = 0, w = 0, v = 0;n < pre_read_count;(++n , ++v)) {...}
    for (_l_n = 0; _l_n <= 1; ++_l_n) {
      imgblock[0][2 + 1 + _l_n] = linebuffer[(long )(line0 . operator unsigned long())][_l_w] . range((step + step * _l_v - 1),(step * _l_v));
      imgblock[1][2 + 1 + _l_n] = linebuffer[(long )(line1 . operator unsigned long())][_l_w] . range((step + step * _l_v - 1),(step * _l_v));
      imgblock[2][2 + 1 + _l_n] = linebuffer[(long )(line2 . operator unsigned long())][_l_w] . range((step + step * _l_v - 1),(step * _l_v));
      imgblock[3][2 + 1 + _l_n] = linebuffer[(long )(line3 . operator unsigned long())][_l_w] . range((step + step * _l_v - 1),(step * _l_v));
      1 == 1?(((bram_read_count++ , _l_w++) , _l_v = - 1)) : bram_read_count;
      ++_l_v;
    }
    1 == 2 || 1 == 4?bram_read_count++ : bram_read_count;
    
#pragma ACCEL PIPELINE auto{__PIPE__L5}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
    Col_Loop:
    for (int j = 0; j < src_mat . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=256/1 max=256/1
      if (i < src_mat . rows - 2) {
        tmp = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&src_mat,read_index++);
      }
       else {
        tmp = 0;
      }
      for (int z = 0; z < 1; ++z) {
        imgblock[4][2 + 1 + z] = tmp . range((step + step * z - 1),(step * z));
      }
      
#pragma ACCEL PIPELINE auto{__PIPE__L10}
      
#pragma ACCEL TILE FACTOR=auto{__TILE__L10}
      for (int k = 0; k < 5; k++) {
        
#pragma ACCEL PIPELINE auto{__PIPE__L17}
        for (int m = 0; m < 1; ++m) {
          for (int l = 0; l < __BWIDTH - 1; l++) {
            imgblock[k][l] = imgblock[k][l + 1];
          }
        }
      }
      _DataType_0_1_name packed_read1;
      _DataType_0_1_name packed_read2;
      _DataType_0_1_name packed_read3;
      _DataType_0_1_name packed_read4;
      _DataType_0_1_name packed_store;
      if (j < (src_mat . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE) - end_read_count) {
        packed_read1 = linebuffer[(long )(line0)][bram_read_count];
        packed_read2 = linebuffer[(long )(line1)][bram_read_count];
        packed_read3 = linebuffer[(long )(line2)][bram_read_count];
        packed_read4 = linebuffer[(long )(line3)][bram_read_count];
        for (int q = 0; q < 1; ++q) {
          imgblock[0][post_read_count + q] = packed_read1 . range((step + step * q - 1),(step * q));
          imgblock[1][post_read_count + q] = packed_read2 . range((step + step * q - 1),(step * q));
          imgblock[2][post_read_count + q] = packed_read3 . range((step + step * q - 1),(step * q));
          imgblock[3][post_read_count + q] = packed_read4 . range((step + step * q - 1),(step * q));
          imgblock[4][1 + 2 + q] = tmp . range((step + step * q - 1),(step * q));
          packed_store . range((step + step * q - 1),(step * q)) = imgblock[4][2 + q];
        }
        linebuffer[lineStore][j] = packed_store;
      }
       else {
        for (int r = 0; r < 1; ++r) {{
            imgblock[4][post_read_count + r - 1] = tmp . range((step + step * r - 1),(step * r));
          }
          linebuffer[lineStore][j] . range((step + step * r - 1),(step * r)) = imgblock[4][2 + r];
          imgblock[0][post_read_count + r] = 0;
          imgblock[1][post_read_count + r] = 0;
          imgblock[2][post_read_count + r] = 0;
          imgblock[3][post_read_count + r] = 0;
          imgblock[4][post_read_count + r] = 0;
        }
      }
      bram_read_count++;
      int r;
      int g;
      int b;
      _DataType_9_1_name res_pixel[1];
      for (int loop = 0; loop < 1; loop++) {
        p_ZN2xf12Core_ProcessILi3ELi0ELi1ELi0ELi5EEEPA5_7ap_uintILi8EERiRiRiiii_1(imgblock,b,g,r,i,j * 1 + loop,loop);
        b = ((int )(p_Z10xf_satcastI7ap_uintILi8EEEi_1(b)));
        g = ((int )(p_Z10xf_satcastI7ap_uintILi8EEEi_1(g)));
        r = ((int )(p_Z10xf_satcastI7ap_uintILi8EEEi_1(r)));
        if (_ZN13DataType_9_1_7channelE == 4) {
          res_pixel[loop] . range((4 * out_step - 1),(3 * out_step)) = ((unsigned long )((1 << out_step) - 1));
        }
        res_pixel[loop] . range((3 * out_step - 1),(2 * out_step)) = ((unsigned long )r);
        res_pixel[loop] . range((2 * out_step - 1),out_step) = ((unsigned long )g);
        res_pixel[loop] . range((out_step - 1),0) = ((unsigned long )b);
      }
      _DataType_9_1_name packed_res_pixel;
      int pstep = _ZN13DataType_9_1_10pixelwidthE;
      for (int ploop = 0; ploop < 1; ploop++) {
        packed_res_pixel . range((pstep + pstep * ploop - 1),(pstep * ploop)) = res_pixel[ploop];
      }
      p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1(&dst_mat,write_index++,packed_res_pixel);
    }
  }
}

static _DataType_9_1_name p_ZN2xf16Mat_9_256_256_1_4readIEEi_1(struct xf_Mat_9_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi9ELi256ELi256ELi1ELi65536EEER3MatILi9ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1(struct xf_accel_utils *this_,struct xf_Mat_9_256_256_1_ &srcMat,hls::stream< ap_uint< 256 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 256;
  const int N_size = _ZN13DataType_9_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 256 > r;
  _DataType_9_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L15}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    in = p_ZN2xf16Mat_9_256_256_1_4readIEEi_1(&srcMat,i);
    if (bits_to_add <= N_size) {
      r . range((256 - 1),(256 - bits_to_add)) = in . range((bits_to_add - 1),0);
      dstStrm . write(r);
      if (bits_to_add != N_size) {
        r . range((N_size - bits_to_add - 1),0) = in . range((N_size - 1),bits_to_add);
      }
      bits_to_add = 256 - (N_size - bits_to_add);
    }
     else {
      r . range((256 - bits_to_add + N_size - 1),(256 - bits_to_add)) = in;
      bits_to_add -= N_size;
    }
  }
  if (bits_to_add != 256) {
    dstStrm . write(r);
  }
}

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi3ELi8ELi6144EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 256 >  > &srcStrm,class ap_uint< 256 > *dstPtr,int rows,int cols)
{
  int pixel_width = 3 * 8;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L16}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=6144
    dstPtr[i] = srcStrm . read();
  }
}
const int _ZN13StreamType_9_8bitdepthE = 24;

static void p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1(struct xf_accel_utils *this_,struct xf_Mat_9_256_256_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  256 >= _ZN13StreamType_9_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_9_1_8bitdepthE;
  hls::stream< ap_uint< 256 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi9ELi256ELi256ELi1ELi65536EEER3MatILi9ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi3ELi8ELi6144EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1(struct xf_Mat_9_256_256_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void demosaicing_accel(class ap_uint< 256 > *in_img,class ap_uint< 256 > *out_img,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=in_img offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=out_img offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=in_img bundle=control
  
#pragma HLS INTERFACE s_axilite port=out_img bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat);
  ;
  
#pragma HLS stream variable=in_mat.data depth=pCOLS/pNPC1
  in_mat . rows = rows;
  in_mat . cols = cols;
  struct xf_Mat_9_256_256_1_ out_mat;
  p_ZN2xf16Mat_9_256_256_1_C2IEEv_1(&out_mat);
  ;
  
#pragma HLS stream variable=out_mat.data depth=pCOLS/pNPC1
  out_mat . rows = rows;
  out_mat . cols = cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(in_img,in_mat);
  p_ZN2xf11demosaicingILi3ELi0ELi9ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1(in_mat,out_mat);
  p_ZN2xf11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1(out_mat,out_img);
}
