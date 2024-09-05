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

static void p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1(struct xf_accel_utils *this_,class ap_uint< 64 > *srcPtr,hls::stream< ap_uint< 64 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 64 - 1) / 64;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=8192
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ *this_,int index,_DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_0_1_10pixelwidthE = 8;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 64 >  > &srcStrm,struct xf_Mat_0_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 64 > r;
  _DataType_0_1_name out;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
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
  hls::stream< ap_uint< 64 >  > strm;
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

static _DataType_0_1_name p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(struct xf_Mat_0_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static void p_ZN2xf17xFHistogramKernelILi0ELi256ELi256ELi0ELi1ELi1ELi128ELi1EEER3MatILi0ELi256ELi256ELi1EEPA256_jRtRt_1(struct xf_Mat_0_256_256_1_ &_src_mat,unsigned int hist_array[1][256],unsigned short &imgheight,unsigned short &imgwidth)
{
  unsigned int tmp_hist[1 << 0][256] = {((unsigned int )0)};
  unsigned int tmp_hist1[1 << 0][256] = {((unsigned int )0)};
  _StreamType_1_name in_buf;
  _StreamType_1_name in_buf1;
  _StreamType_1_name temp_buf;
  bool flag = (bool )0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L2}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L2}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  HIST_INITIALIZE_LOOP:
  for (class ap_uint< 10 > i(0); i<256; i ++ ) {
    for (class ap_uint< 5 > j(0); j<1 << _ZN20xfNPixelsPerCycle_1_9datashiftE * 1; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      tmp_hist[(long )(j)][(long )(i)] = ((unsigned int )0);
      tmp_hist1[(long )(j)][(long )(i)] = ((unsigned int )0);
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L3}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
  HISTOGRAM_ROW_LOOP:
  for (class ap_uint< 13 > row(0); row<imgheight; row ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L8}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L8}
    HISTOGRAM_COL_LOOP:
    for (class ap_uint< 13 > col(0); col<imgwidth; col = col+2) {
#pragma HLS DEPENDENCE variable=tmp_hist array intra false
#pragma HLS DEPENDENCE variable=tmp_hist1 array intra false          
#pragma HLS LOOP_TRIPCOUNT min=128 max=128
      in_buf = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,(int )((row*imgwidth+col)));
      if (col==((int )imgwidth) - 1) {
        in_buf1 = 0;
      }
       else {
        in_buf1 = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,(int )(((row*imgwidth+col)+1)));
      }
      class ap_uint< 9 > _l_i = 0;
      class ap_uint< 9 > _l_j = 0;
      EXTRACT_UPDATE:
// Canonicalized from: for(class ap_uint< 9 > i(0), j(0);i<(8 << _ZN20xfNPixelsPerCycle_1_9datashiftE) * 1;(j ++ ) , i+=8) {...}
// Standardize from: for(_l_i = 0;_l_i <= 7;_l_i += 8) {...}
      for (_l_i = 0; _l_i <= 0L; _l_i++) {
        class ap_uint< 9 > _in_l_i = 0L + 8L * _l_i;
        class ap_uint< 8 > val(0);
        class ap_uint< 8 > val1(0);
        val = in_buf . range((_in_l_i+7),_in_l_i);
        val1 = in_buf1 . range((_in_l_i+7),_in_l_i);
        unsigned int tmpval = tmp_hist[(long )(_l_j . operator unsigned long())][(long )(val . operator unsigned long())];
        unsigned int tmpval1 = tmp_hist1[(long )(_l_j . operator unsigned long())][(long )(val1 . operator unsigned long())];
        tmp_hist[(long )(_l_j . operator unsigned long())][(long )(val . operator unsigned long())] = tmpval + ((unsigned int )1);
        if (!(col==((int )imgwidth) - 1)) {
          tmp_hist1[(long )(_l_j . operator unsigned long())][(long )(val1 . operator unsigned long())] = tmpval1 + ((unsigned int )1);
        }
        _l_j ++ ;
      }
      _l_i = 0L + 8L;
    }
  }
  unsigned int cnt;
  unsigned int p = (unsigned int )0;
  unsigned int plane[1];
  
#pragma ACCEL PIPELINE auto{__PIPE__L4}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L4}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  COPY_LOOP:
  for (class ap_uint< 10 > i(0); i<256; i ++ ) {
    cnt = ((unsigned int )0);
    p = ((unsigned int )0);
    class ap_uint< 5 > _l_j_0 = 0;
    class ap_uint< 5 > _l_k = 0;
// Canonicalized from: for(class ap_uint< 5 > j(0), k(0);j<(1 << _ZN20xfNPixelsPerCycle_1_9datashiftE) * 1;(j ++ ) , k ++ ) {...}
    for (_l_j_0 = 0; _l_j_0 <= 0; ++_l_j_0) {
      unsigned int value = tmp_hist[(long )(_l_j_0 . operator unsigned long())][(long )(i . operator unsigned long())] + tmp_hist1[(long )(_l_j_0 . operator unsigned long())][(long )(i . operator unsigned long())];
      cnt = cnt + value;
      _l_k ++ ;
    }
{
      hist_array[0][(long )(i)] = cnt;
    }
  }
}
const int _ZN13DataType_0_1_7channelE = 1;

static void p_ZN2xf8calcHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPj_1(struct xf_Mat_0_256_256_1_ &_src,unsigned int *histogram)
{
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1, XF_NPPC8 ")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8) ) && \"NPC must be XF_NPPC1, XF_NPPC8 \"","xf_histogram.hpp",(unsigned int )173,__PRETTY_FUNCTION__);
  _src . rows <= 256 && _src . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src.rows <= ROWS ) && (_src.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_histogram.hpp",(unsigned int )174,__PRETTY_FUNCTION__);
  unsigned int hist_array[1][256] = {((unsigned int )0)};
  unsigned short width = (unsigned short )(_src . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  unsigned short height = (unsigned short )_src . rows;
  p_ZN2xf17xFHistogramKernelILi0ELi256ELi256ELi0ELi1ELi1ELi128ELi1EEER3MatILi0ELi256ELi256ELi1EEPA256_jRtRt_1(_src,hist_array,height,width);
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  for (int i = 0; i < _ZN13DataType_0_1_7channelE; i++) {
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
    for (int j = 0; j < 256; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
      histogram[i * 256 + j] = hist_array[i][j];
    }
  }
}
#pragma ACCEL kernel

void histogram_accel(class ap_uint< 64 > *img_inp,unsigned int *histogram,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=histogram offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=histogram bundle=control
  
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
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  p_ZN2xf8calcHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPj_1(in_mat,histogram);
}
