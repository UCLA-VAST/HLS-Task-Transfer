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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
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
const int _ZN13DataType_9_1_7channelE = 3;
const int _ZN13DataType_9_1_10pixelwidthE = 24;

static void p_ZN2xf22xfChannelCombineKernelILi256ELi256ELi0ELi9ELi1ELi256EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi24EEEtt_1(hls::stream< _DataType_0_1_name  > &_in1,hls::stream< _DataType_0_1_name  > &_in2,hls::stream< _DataType_0_1_name  > &_in3,hls::stream< _DataType_9_1_name  > &_out,unsigned short height,unsigned short width)
{
  _DataType_0_1_name val1;
  _DataType_0_1_name val2;
  _DataType_0_1_name val3;
  unsigned char channel1;
  unsigned char channel2;
  unsigned char channel3;
  const int noofbits = _ZN13DataType_0_1_8bitdepthE;
  int rows = (int )height;
  int cols = (int )width;
  
#pragma ACCEL PIPELINE auto{__PIPE__L6}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
  RowLoop:
  for (int i = 0; i < rows; i++) {
    
#pragma HLS LOOP_FLATTEN off
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L9}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L9}
    ColLoop:
    for (int j = 0; j < cols; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      _DataType_9_1_name res;
      val1 = _in1 . read();
      val2 = _in2 . read();
      val3 = _in3 . read();
      ProcLoop:
// Standardize from: for(int k = 0;k < noofbits << _ZN20xfNPixelsPerCycle_1_9datashiftE;k += noofbits) {...}
      for (int k = 0; k <= 0; k++) {
        int _in_k = 0 + 8L * k;
        int y = _in_k * _ZN13DataType_9_1_7channelE;
        channel1 = ((unsigned char )(val1 . range((_in_k + (noofbits - 1)),_in_k)));
        channel2 = ((unsigned char )(val2 . range((_in_k + (noofbits - 1)),_in_k)));
        channel3 = ((unsigned char )(val3 . range((_in_k + (noofbits - 1)),_in_k)));
        unsigned int result = ((unsigned int )channel3) << 0 | ((unsigned int )channel2) << noofbits | ((unsigned int )channel1) << noofbits * 2;
        res . range((y + (_ZN13DataType_9_1_10pixelwidthE - 1)),y) = ((unsigned long )result);
      }
      _out . write(res);
    }
  }
}

static void p_ZN2xf16xfChannelCombineILi256ELi256ELi0ELi9ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi24EEEtt_1(hls::stream< _DataType_0_1_name  > &_in1,hls::stream< _DataType_0_1_name  > &_in2,hls::stream< _DataType_0_1_name  > &_in3,hls::stream< _DataType_9_1_name  > &_out,unsigned short height,unsigned short width)
{
  width = ((unsigned short )(((int )width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE));
  p_ZN2xf22xfChannelCombineKernelILi256ELi256ELi0ELi9ELi1ELi256EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi24EEEtt_1(_in1,_in2,_in3,_out,height,width);
}

static void p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1(struct xf_Mat_9_256_256_1_ *this_,int index,_DataType_9_1_name val)
{
  this_ -> data[index] = val;
}

static void p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &_src1,struct xf_Mat_0_256_256_1_ &_src2,struct xf_Mat_0_256_256_1_ &_src3,struct xf_Mat_9_256_256_1_ &_dst)
{
  _src1 . rows <= 256 && _src1 . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src1.rows <= ROWS ) && (_src1.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_channel_combine.hpp",(unsigned int )321,__PRETTY_FUNCTION__);
  _src2 . rows <= 256 && _src2 . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src2.rows <= ROWS ) && (_src2.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_channel_combine.hpp",(unsigned int )322,__PRETTY_FUNCTION__);
  _src3 . rows <= 256 && _src3 . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src3.rows <= ROWS ) && (_src3.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_channel_combine.hpp",(unsigned int )323,__PRETTY_FUNCTION__);
  _dst . rows <= 256 && _dst . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_dst.rows <= ROWS ) && (_dst.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_channel_combine.hpp",(unsigned int )324,__PRETTY_FUNCTION__);
  0 == ((int )XF_8UC1) && 9 == ((int )XF_8UC3) && ((bool )"Source image should be of 1 channel and destination image of 3 channels")?((void )0) : __assert_fail("(SRC_T == XF_8UC1) && (DST_T == XF_8UC3) && \"Source image should be of 1 channel and destination image of 3 channels\"","xf_channel_combine.hpp",(unsigned int )325,__PRETTY_FUNCTION__);
  hls::stream< _DataType_0_1_name  > _in1;
  hls::stream< _DataType_0_1_name  > _in2;
  hls::stream< _DataType_0_1_name  > _in3;
  hls::stream< _DataType_9_1_name  > _out;
  int src_cols;
  int src_rows;
  int dst_cols;
  int dst_rows;
  src_cols = _src1 . cols;
  src_rows = _src1 . rows;
  dst_cols = _dst . cols;
  dst_rows = _dst . rows;
  
#pragma HLS DATAFLOW
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  Read_Mat_Loop:
  for (int i = 0; i < src_rows; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
    for (int j = 0; j < src_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256/1
      _in1 . write((p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src1,i * (src_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + j)));
      _in2 . write((p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src2,i * (src_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + j)));
      _in3 . write((p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src3,i * (src_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + j)));
    }
  }
  p_ZN2xf16xfChannelCombineILi256ELi256ELi0ELi9ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi24EEEtt_1(_in1,_in2,_in3,_out,(unsigned short )src_rows,(unsigned short )src_cols);
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  Write_Mat_Loop:
  for (int i = 0; i < dst_rows; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
    for (int j = 0; j < dst_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256/1
      _DataType_9_1_name outpix = _out . read();
      p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1(&_dst,i * (dst_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + j,outpix);
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L8}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=6144
    dstPtr[i] = srcStrm . read();
  }
}
const int _ZN13StreamType_9_8bitdepthE = 24;
const int _ZN13DataType_9_1_8bitdepthE = 8;

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

void channel_combine_accel(class ap_uint< 256 > *imgInput1,class ap_uint< 256 > *imgInput2,class ap_uint< 256 > *imgInput3,class ap_uint< 256 > *imgOutput,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=imgInput1 offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=imgInput2 offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=imgInput3 offset=slave bundle=gmem3
  
#pragma HLS INTERFACE m_axi port=imgOutput offset=slave bundle=gmem4
  
#pragma HLS INTERFACE s_axilite port=imgInput1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=imgInput2 bundle=control
  
#pragma HLS INTERFACE s_axilite port=imgInput3 bundle=control
  
#pragma HLS INTERFACE s_axilite port=imgOutput bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ in_mat1;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat1);
  ;
  
#pragma HLS stream variable=in_mat1.data depth=pCOLS/pNPC1
  in_mat1 . rows = rows;
  in_mat1 . cols = cols;
  struct xf_Mat_0_256_256_1_ in_mat2;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat2);
  ;
  
#pragma HLS stream variable=in_mat2.data depth=pCOLS/pNPC1
  in_mat2 . rows = rows;
  in_mat2 . cols = cols;
  struct xf_Mat_0_256_256_1_ in_mat3;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat3);
  ;
  
#pragma HLS stream variable=in_mat3.data depth=pCOLS/pNPC1
  in_mat3 . rows = rows;
  in_mat3 . cols = cols;
  struct xf_Mat_9_256_256_1_ out_mat;
  p_ZN2xf16Mat_9_256_256_1_C2IEEv_1(&out_mat);
  ;
  
#pragma HLS stream variable=out_mat.data depth=pCOLS/pNPC1
  out_mat . rows = rows;
  out_mat . cols = cols;
  
#pragma HLS dataflow
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(imgInput1,in_mat1);
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(imgInput2,in_mat2);
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(imgInput3,in_mat3);
  p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1(in_mat1,in_mat2,in_mat3,out_mat);
  p_ZN2xf11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1(out_mat,imgOutput);
}
