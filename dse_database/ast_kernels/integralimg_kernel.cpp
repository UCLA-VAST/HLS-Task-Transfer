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

static void p_ZN2xf16Mat_3_256_256_1_4initIEEiib_1(struct xf_Mat_3_256_256_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 256 && _cols > 0 && _cols <= 256 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf16Mat_3_256_256_1_C2IEEv_1(struct xf_Mat_3_256_256_1_ *this_)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_3_256_256_1_4initIEEiib_1(this_,256,256,true);
}

static void p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,hls::stream< ap_uint< 256 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
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

static void p_ZN2xf16Mat_3_256_256_1_5writeIEEi7ap_uintILi32EE_1(struct xf_Mat_3_256_256_1_ *this_,int index,_DataType_3_1_name val)
{
  this_ -> data[index] = val;
}

static void p_ZN2xf21XFIntegralImageKernelILi0ELi3ELi256ELi256ELi1ELi1ELi12ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EEtt_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_3_256_256_1_ &_dst_mat,unsigned short height,unsigned short width)
{
  _StreamType_12_name linebuff[256];
  unsigned int cur_sum;
  class ap_uint< 22 > prev;
  class ap_uint< 13 > i;
  class ap_uint< 13 > j;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  RowLoop:
  for (i = 0; i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    _StreamType_1_name val;
    cur_sum = ((unsigned int )0);
    prev = 0;
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
    ColLoop:
    for (j = 0; j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      val = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,(int )((i*width+j)));
      prev = prev+val;
      if (i==0) {
        cur_sum = ((unsigned int )(prev));
      }
       else {
        cur_sum = ((unsigned int )((prev+linebuff[(long )(j)])));
      }
      linebuff[(long )(j)] = cur_sum;
      p_ZN2xf16Mat_3_256_256_1_5writeIEEi7ap_uintILi32EE_1(&_dst_mat,(int )((i*width+j)),cur_sum);
    }
  }
}

static void p_ZN2xf8integralILi0ELi3ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_3_256_256_1_ &_dst_mat)
{
  1 == ((int )XF_NPPC1) && ((bool )"NPC must be XF_NPPC1")?((void )0) : __assert_fail("(( NPC == XF_NPPC1 )) && \"NPC must be XF_NPPC1\"","xf_integral_image.hpp",(unsigned int )108,__PRETTY_FUNCTION__);
  _src_mat . rows <= 256 && _dst_mat . cols <= 256 && ((bool )"ROWS and COLS should be greater than or equal to input image size")?((void )0) : __assert_fail("((_src_mat.rows <= ROWS ) && (_dst_mat.cols <= COLS)) && \"ROWS and COLS should be greater than or equal to input image size\"","xf_integral_image.hpp",(unsigned int )109,__PRETTY_FUNCTION__);
  p_ZN2xf21XFIntegralImageKernelILi0ELi3ELi256ELi256ELi1ELi1ELi12ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EEtt_1(_src_mat,_dst_mat,(unsigned short )_src_mat . rows,(unsigned short )_src_mat . cols);
}

static _DataType_3_1_name p_ZN2xf16Mat_3_256_256_1_4readIEEi_1(struct xf_Mat_3_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}
const int _ZN13DataType_3_1_10pixelwidthE = 32;

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi3ELi256ELi256ELi1ELi65536EEER3MatILi3ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1(struct xf_accel_utils *this_,struct xf_Mat_3_256_256_1_ &srcMat,hls::stream< ap_uint< 256 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 256;
  const int N_size = _ZN13DataType_3_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 256 > r;
  _DataType_3_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    in = p_ZN2xf16Mat_3_256_256_1_4readIEEi_1(&srcMat,i);
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

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi32ELi8192EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 256 >  > &srcStrm,class ap_uint< 256 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 32;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=8192
    dstPtr[i] = srcStrm . read();
  }
}
const int _ZN14StreamType_12_8bitdepthE = 32;
const int _ZN13DataType_3_1_8bitdepthE = 32;

static void p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi3ELi256ELi256ELi1EEER3MatILi3ELi256ELi256ELi1EEP7ap_uintILi256EE_1(struct xf_accel_utils *this_,struct xf_Mat_3_256_256_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  256 >= _ZN14StreamType_12_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_3_1_8bitdepthE;
  hls::stream< ap_uint< 256 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi3ELi256ELi256ELi1ELi65536EEER3MatILi3ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi32ELi8192EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi256ELi3ELi256ELi256ELi1EEER3MatILi3ELi256ELi256ELi1EEP7ap_uintILi256EE_1(struct xf_Mat_3_256_256_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi3ELi256ELi256ELi1EEER3MatILi3ELi256ELi256ELi1EEP7ap_uintILi256EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void integral_accel(class ap_uint< 256 > *img_inp,class ap_uint< 256 > *img_out,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_out offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_out bundle=control
  
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
  struct xf_Mat_3_256_256_1_ out_mat;
  p_ZN2xf16Mat_3_256_256_1_C2IEEv_1(&out_mat);
  ;
  
#pragma HLS stream variable=out_mat.data depth=pCOLS/pNPC1
  out_mat . rows = rows;
  out_mat . cols = cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  p_ZN2xf8integralILi0ELi3ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EE_1(in_mat,out_mat);
  p_ZN2xf11xfMat2ArrayILi256ELi3ELi256ELi256ELi1EEER3MatILi3ELi256ELi256ELi1EEP7ap_uintILi256EE_1(out_mat,img_out);
}
