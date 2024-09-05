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
const int _ZN12PixelType_0_8bitdepthE = 8;

static void p_ZN2xf11xFMulKernelILi0ELi256ELi256ELi1ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEiftt_1(struct xf_Mat_0_256_256_1_ &src1,struct xf_Mat_0_256_256_1_ &src2,struct xf_Mat_0_256_256_1_ &dst,int _policytype,float _scale_val,unsigned short image_height,unsigned short image_width)
{
  int STEP = _ZN12PixelType_0_8bitdepthE / 1;
  class ap_uint< 13 > i;
  class ap_uint< 13 > j;
  class ap_uint< 13 > k;
  _StreamType_1_name val_src1;
  _StreamType_1_name val_src2;
  _StreamType_1_name val_dst;
  _PixelType_0_name result;
  _PixelType_0_name p;
  _PixelType_0_name q;
  long result_temp;
  unsigned short scale_value_8;
  unsigned int scale_value_16;
  if (0 == ((int )XF_8UP) || 0 == ((int )XF_24UP)) {
    scale_value_8 = ((unsigned short )(_scale_val * ((float )((1 << 15) - 1))));
  }
   else {
    if (0 == ((int )XF_16SP) || 0 == ((int )XF_48SP)) {
      scale_value_16 = ((unsigned int )(_scale_val * ((float )((1 << 24) - 1))));
    }
  }
  unsigned long long idx = (unsigned long long )0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  rowLoop:
  for (i = 0; i<image_height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L3}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
    colLoop:
    for (j = 0; j<image_width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      val_src1 = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&src1,(int )((i*image_width+j)));
      val_src2 = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&src2,(int )((i*image_width+j)));
      procLoop:
// Standardize from: for(k = 0;k<_ZN13StreamType_1_8bitdepthE;k+=STEP) {...}
      for (k = 0; k <= 0L; k++) {
        class ap_uint< 13 > _in_k = 0L + 8L * k;
        p = val_src1 . range((_in_k+(STEP - 1)),_in_k);
        q = val_src2 . range((_in_k+(STEP - 1)),_in_k);
        if (0 == ((int )XF_8UP) || 0 == ((int )XF_24UP)) {
          result_temp = ((scale_value_8*p)*q>>15);
          if (_policytype == ((int )XF_CONVERT_POLICY_SATURATE) && result_temp > ((long )255)) {
            result_temp = ((long )255);
          }
          result = ((unsigned char )result_temp);
        }
         else {
          result_temp = ((scale_value_16*p)*q>>24);
          if (_policytype == ((int )XF_CONVERT_POLICY_SATURATE) && result_temp > ((long )32767)) {
            result_temp = ((long )32767);
          }
           else {
            if (_policytype == ((int )XF_CONVERT_POLICY_SATURATE) && result_temp < ((long )(- 32768))) {
              result_temp = ((long )(- 32768));
            }
          }
          result = ((short )result_temp);
        }
        val_dst . range((_in_k+(STEP - 1)),_in_k) = result;
      }
      k = 0L + 8L;
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&dst,(int )((i*image_width+j)),val_dst);
    }
  }
}

static void p_ZN2xf8multiplyILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEf_1(struct xf_Mat_0_256_256_1_ &src1,struct xf_Mat_0_256_256_1_ &src2,struct xf_Mat_0_256_256_1_ &dst,float scale)
{
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1 or XF_NPPC8 ")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8)) && \"NPC must be XF_NPPC1 or XF_NPPC8 \"","xf_arithm.hpp",(unsigned int )742,__PRETTY_FUNCTION__);
  (0 == ((int )XF_8UC1) || 0 == ((int )XF_16SC1) || 0 == ((int )XF_8UC3) || 0 == ((int )XF_16SC3) || 0 == ((int )XF_8UC4) || 0 == ((int )XF_16UC4)) && ((bool )"TYPE must be XF_8UC1 or XF_16SC1 ")?((void )0) : __assert_fail("((SRC_T == XF_8UC1) || (SRC_T == XF_16SC1) || (SRC_T == XF_8UC3) || (SRC_T == XF_16SC3) || (SRC_T == XF_8UC4) || (SRC_T == XF_16UC4) ) && \"TYPE must be XF_8UC1 or XF_16SC1 \"","xf_arithm.hpp",(unsigned int )744,__PRETTY_FUNCTION__);
  (0 == ((int )XF_CONVERT_POLICY_SATURATE) || 0 == ((int )XF_CONVERT_POLICY_TRUNCATE)) && ((bool )"_policytype must be 'XF_CONVERT_POLICY_SATURATE' or 'XF_CONVERT_POLICY_TRUNCATE'")?((void )0) : __assert_fail("(POLICY_TYPE == XF_CONVERT_POLICY_SATURATE || POLICY_TYPE == XF_CONVERT_POLICY_TRUNCATE) && \"_policytype must be 'XF_CONVERT_POLICY_SATURATE' or 'XF_CONVERT_POLICY_TRUNCATE'\"","xf_arithm.hpp",(unsigned int )747,__PRETTY_FUNCTION__);
  scale >= ((float )0) && scale <= ((float )1) && ((bool )"_scale_val must be within the range of 0 to 1")?((void )0) : __assert_fail("((scale >= 0) && (scale <= 1)) && \"_scale_val must be within the range of 0 to 1\"","xf_arithm.hpp",(unsigned int )749,__PRETTY_FUNCTION__);
  src1 . rows <= 256 && src1 . cols <= 256 && src2 . rows <= 256 && src2 . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((src1.rows <= ROWS ) && (src1.cols <= COLS) && (src2.rows <= ROWS ) && (src2.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_arithm.hpp",(unsigned int )750,__PRETTY_FUNCTION__);
  unsigned short image_width = (unsigned short )(src1 . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  p_ZN2xf11xFMulKernelILi0ELi256ELi256ELi1ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEiftt_1(src1,src2,dst,0,scale,(unsigned short )src1 . rows,image_width);
}

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,hls::stream< ap_uint< 256 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 256;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 256 > r;
  _DataType_0_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    in = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&srcMat,i);
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

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 256 >  > &srcStrm,class ap_uint< 256 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=2048
    dstPtr[i] = srcStrm . read();
  }
}

static void p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  256 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  hls::stream< ap_uint< 256 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1(struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void arithm(class ap_uint< 256 > *img_inp1,class ap_uint< 256 > *img_inp2,class ap_uint< 256 > *img_out,int rows,int cols)
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
  struct xf_Mat_0_256_256_1_ _src1;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&_src1);
  ;
  
#pragma HLS stream variable=_src1.data depth=pCOLS/pNPC1
  _src1 . rows = rows;
  _src1 . cols = cols;
  struct xf_Mat_0_256_256_1_ _src2;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&_src2);
  ;
  
#pragma HLS stream variable=_src2.data depth=pCOLS/pNPC1
  _src2 . rows = rows;
  _src2 . cols = cols;
  struct xf_Mat_0_256_256_1_ _dst;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&_dst);
  ;
  
#pragma HLS stream variable=_dst.data depth=pCOLS/pNPC1
  _dst . rows = rows;
  _dst . cols = cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(img_inp1,_src1);
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(img_inp2,_src2);
  p_ZN2xf8multiplyILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEf_1(_src1,_src2,_dst,(float )0.05);
        #ifdef EXTRA_PARM
        #endif
        #ifdef EXTRA_ARG
        #endif
//MaxS, MinS, set)
  p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1(_dst,img_out);
}
