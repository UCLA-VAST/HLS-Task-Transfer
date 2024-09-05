#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
#include <xf_params.h>
#include "merlin_type_define.h"
const int _ZN20xfNPixelsPerCycle_1_9datashiftE = 0;

static void p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1(struct xf_Mat_2_256_256_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 256 && _cols > 0 && _cols <= 256 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf16Mat_2_256_256_1_C2IEEv_1(struct xf_Mat_2_256_256_1_ *this_)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1(this_,256,256,true);
}

static void p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi16ELi4096EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,hls::stream< ap_uint< 256 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 16;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=4096
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_2_256_256_1_5writeIEEi7ap_uintILi16EE_1(struct xf_Mat_2_256_256_1_ *this_,int index,_DataType_2_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_2_1_10pixelwidthE = 16;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi2ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi2ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 256 >  > &srcStrm,struct xf_Mat_2_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_2_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 256 > r;
  _DataType_2_1_name out;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
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
    p_ZN2xf16Mat_2_256_256_1_5writeIEEi7ap_uintILi16EE_1(&dstMat,i,out);
  }
}
const int _ZN13StreamType_5_8bitdepthE = 16;
const int _ZN13DataType_2_1_8bitdepthE = 16;

static void p_ZN2xf11accel_utils11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,struct xf_Mat_2_256_256_1_ &dstMat)
{
  
#pragma HLS DATAFLOW
  256 >= _ZN13StreamType_5_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )665,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_2_1_8bitdepthE;
  hls::stream< ap_uint< 256 >  > strm;
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi16ELi4096EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(this_,srcPtr,strm,rows,cols);
  p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi2ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi2ELi256ELi256ELi1EE_1(this_,strm,dstMat);
}

static void p_ZN2xf11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1(class ap_uint< 256 > *srcPtr,struct xf_Mat_2_256_256_1_ &dstMat)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1(&au,srcPtr,dstMat);
}

static _DataType_2_1_name p_ZN2xf16Mat_2_256_256_1_4readIEEi_1(struct xf_Mat_2_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static int p_ZN2xf4SqrtEj(unsigned int D)
{
  int i;
  short Q;
  int R;
  Q = ((short )(R = 0));
  int tmp = 0;
  int tmpQ;
  int tmpR;
// Standardize from: for(i = 15;i >= 0;i--) {...}
  for (i = 0; i <= 15; i++) {
    int _in_i = 15 + -1 * i;
    if (R >= 0) {
      tmp = ((int )(D >> _in_i + _in_i));
      tmp = tmp & 3;
      tmpR = R << 2;
      R = tmpR | tmp;
      tmpQ = ((int )Q) << 2;
      tmpQ = tmpQ | 1;
      R = R - tmpQ;
    }
     else {
      tmp = ((int )(D >> _in_i + _in_i));
      tmp = tmp & 3;
      tmpR = R << 2;
      R = tmpR | tmp;
      tmpQ = ((int )Q) << 2;
      tmpQ = tmpQ | 3;
      R = R + tmpQ;
    }
    if (R >= 0) {
      Q = ((short )(((int )Q) << 1));
      Q = ((short )(((int )Q) | 1));
    }
     else {
      Q = ((short )(((int )Q) << 1));
      Q = ((short )(((int )Q) | 0));
    }
  }
  i = 0 + -1;
  return (int )Q;
}
const int _ZN12PixelType_3_8bitdepthE = 16;

static void p_ZN2xf17xFMagnitudeKernelILi2ELi2ELi256ELi256ELi3ELi3ELi1ELi5ELi5ELi256EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EEiRtRt_1(struct xf_Mat_2_256_256_1_ &_src1,struct xf_Mat_2_256_256_1_ &_src2,struct xf_Mat_2_256_256_1_ &_dst_mat,int _norm_type,unsigned short &imgheight,unsigned short &imgwidth)
{
  _StreamType_5_name val_src1;
  _StreamType_5_name val_src2;
  _StreamType_5_name val_dst;
  int tempgx;
  int tempgy;
  int result_temp = 0;
  short p;
  short q;
  short result;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  rowLoop:
  for (int i = 0; i < ((int )imgheight); i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L3}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
    colLoop:
    for (int j = 0; j < ((int )imgwidth); j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      val_src1 = p_ZN2xf16Mat_2_256_256_1_4readIEEi_1(&_src1,i * ((int )imgwidth) + j);
      val_src2 = p_ZN2xf16Mat_2_256_256_1_4readIEEi_1(&_src2,i * ((int )imgwidth) + j);
      int proc_loop = _ZN13StreamType_5_8bitdepthE;
      int step = _ZN12PixelType_3_8bitdepthE;
      
#pragma ACCEL PIPELINE auto{__PIPE__L6}
      procLoop:
// Standardize from: for(int k = 0;k < proc_loop;k += step) {...}
      for (int k = 0; k <= 0; k++) {
        int _in_k = 0 + 16L * k;
        p = ((short )(val_src1 . range((_in_k + (step - 1)),_in_k)));
        q = ((short )(val_src2 . range((_in_k + (step - 1)),_in_k)));
        p = ((short )((((int )p) < 0?-((int )p) : ((int )p))));
        q = ((short )((((int )q) < 0?-((int )q) : ((int )q))));
        if (_norm_type == ((int )XF_L1NORM)) {
          short tmp = (short )(((int )p) + ((int )q));
          result = tmp;
        }
         else {
          if (_norm_type == ((int )XF_L2NORM)) {
            tempgx = ((int )p) * ((int )p);
            tempgy = ((int )q) * ((int )q);
            result_temp = tempgx + tempgy;
            int tmp1 = p_ZN2xf4SqrtEj((unsigned int )result_temp);
            result = ((short )tmp1);
          }
        }
        val_dst . range((_in_k + (step - 1)),_in_k) = ((unsigned long )result);
      }
      p_ZN2xf16Mat_2_256_256_1_5writeIEEi7ap_uintILi16EE_1(&_dst_mat,i * ((int )imgwidth) + j,val_dst);
    }
  }
}

static void p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1(struct xf_Mat_2_256_256_1_ &_src_matx,struct xf_Mat_2_256_256_1_ &_src_maty,struct xf_Mat_2_256_256_1_ &_dst_mat)
{
  _src_matx . rows <= 256 && _src_matx . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src_matx.rows <= ROWS ) && (_src_matx.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_magnitude.hpp",(unsigned int )142,__PRETTY_FUNCTION__);
  _src_maty . rows <= 256 && _src_maty . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src_maty.rows <= ROWS ) && (_src_maty.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_magnitude.hpp",(unsigned int )143,__PRETTY_FUNCTION__);
  _src_matx . rows == _src_maty . rows && _src_matx . cols == _src_maty . cols && ((bool )"Both input images should have same size")?((void )0) : __assert_fail("((_src_matx.rows == _src_maty.rows ) && (_src_matx.cols == _src_maty.cols)) && \"Both input images should have same size\"","xf_magnitude.hpp",(unsigned int )144,__PRETTY_FUNCTION__);
  _src_matx . rows == _dst_mat . rows && _src_matx . cols == _dst_mat . cols && ((bool )"Input and output image should be of same size")?((void )0) : __assert_fail("((_src_matx.rows == _dst_mat.rows ) && (_src_matx.cols == _dst_mat.cols)) && \"Input and output image should be of same size\"","xf_magnitude.hpp",(unsigned int )145,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1, XF_NPPC8 ")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8) ) && \"NPC must be XF_NPPC1, XF_NPPC8 \"","xf_magnitude.hpp",(unsigned int )146,__PRETTY_FUNCTION__);
  unsigned short imgwidth = (unsigned short )(_src_matx . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  unsigned short height = (unsigned short )_src_matx . rows;
  p_ZN2xf17xFMagnitudeKernelILi2ELi2ELi256ELi256ELi3ELi3ELi1ELi5ELi5ELi256EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EEiRtRt_1(_src_matx,_src_maty,_dst_mat,0,height,imgwidth);
}

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi2ELi256ELi256ELi1ELi65536EEER3MatILi2ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1(struct xf_accel_utils *this_,struct xf_Mat_2_256_256_1_ &srcMat,hls::stream< ap_uint< 256 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 256;
  const int N_size = _ZN13DataType_2_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 256 > r;
  _DataType_2_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    in = p_ZN2xf16Mat_2_256_256_1_4readIEEi_1(&srcMat,i);
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

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi16ELi4096EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 256 >  > &srcStrm,class ap_uint< 256 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 16;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=4096
    dstPtr[i] = srcStrm . read();
  }
}

static void p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EEP7ap_uintILi256EE_1(struct xf_accel_utils *this_,struct xf_Mat_2_256_256_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  256 >= _ZN13StreamType_5_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_2_1_8bitdepthE;
  hls::stream< ap_uint< 256 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi2ELi256ELi256ELi1ELi65536EEER3MatILi2ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi16ELi4096EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi256ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EEP7ap_uintILi256EE_1(struct xf_Mat_2_256_256_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EEP7ap_uintILi256EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void magnitude_accel(class ap_uint< 256 > *img_inp1,class ap_uint< 256 > *img_inp2,class ap_uint< 256 > *img_out,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_inp1 offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_inp2 offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=img_out offset=slave bundle=gmem3
  
#pragma HLS INTERFACE s_axilite port=img_inp1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_inp2 bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_out bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_2_256_256_1_ _src1;
  p_ZN2xf16Mat_2_256_256_1_C2IEEv_1(&_src1);
  ;
  
#pragma HLS stream variable=_src1.data depth=pCOLS/pNPC1
  _src1 . rows = rows;
  _src1 . cols = cols;
  struct xf_Mat_2_256_256_1_ _src2;
  p_ZN2xf16Mat_2_256_256_1_C2IEEv_1(&_src2);
  ;
  
#pragma HLS stream variable=_src2.data depth=pCOLS/pNPC1
  _src2 . rows = rows;
  _src2 . cols = cols;
  struct xf_Mat_2_256_256_1_ _dst;
  p_ZN2xf16Mat_2_256_256_1_C2IEEv_1(&_dst);
  ;
  
#pragma HLS stream variable=_dst.data depth=pCOLS/pNPC1
  _dst . rows = rows;
  _dst . cols = cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1(img_inp1,_src1);
  p_ZN2xf11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1(img_inp2,_src2);
  p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1(_src1,_src2,_dst);
  p_ZN2xf11xfMat2ArrayILi256ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EEP7ap_uintILi256EE_1(_dst,img_out);
}
