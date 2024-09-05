#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
#include <xf_params.h>
#include <xf_types.h>
#include "merlin_type_define.h"
const int _ZN20xfNPixelsPerCycle_1_9datashiftE = 0;

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

static void p_ZN2xf11accel_utils13Array2hlsStrmILi512ELi256ELi256ELi1ELi3ELi8ELi3072EEEP7ap_uintILi512EER6streamI7ap_uintILi512EEEii_1(struct xf_accel_utils *this_,class ap_uint< 512 > *srcPtr,hls::stream< ap_uint< 512 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 3 * 8;
  int loop_count = (rows * cols * pixel_width + 512 - 1) / 512;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=3072
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1(struct xf_Mat_9_256_256_1_ *this_,int index,_DataType_9_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_9_1_10pixelwidthE = 24;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi512ELi9ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi512EEER3MatILi9ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 512 >  > &srcStrm,struct xf_Mat_9_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_9_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 512 > r;
  _DataType_9_1_name out;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    if (valid_bits < N_size) {
      if (valid_bits != 0) {
        out . range((valid_bits - 1),0) = r . range((512 - 1),(512 - valid_bits));
      }
      r = srcStrm . read();
      out . range((N_size - 1),valid_bits) = r . range((N_size - valid_bits - 1),0);
      valid_bits = 512 - (N_size - valid_bits);
    }
     else {
      out = r . range((512 - valid_bits + N_size - 1),(512 - valid_bits));
      valid_bits -= N_size;
    }
    p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1(&dstMat,i,out);
  }
}
const int _ZN13StreamType_9_8bitdepthE = 24;
const int _ZN13DataType_9_1_8bitdepthE = 8;

static void p_ZN2xf11accel_utils11Array2xfMatILi512ELi9ELi256ELi256ELi1EEEP7ap_uintILi512EER3MatILi9ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class ap_uint< 512 > *srcPtr,struct xf_Mat_9_256_256_1_ &dstMat)
{
  
#pragma HLS DATAFLOW
  512 >= _ZN13StreamType_9_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )665,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_9_1_8bitdepthE;
  hls::stream< ap_uint< 512 >  > strm;
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  p_ZN2xf11accel_utils13Array2hlsStrmILi512ELi256ELi256ELi1ELi3ELi8ELi3072EEEP7ap_uintILi512EER6streamI7ap_uintILi512EEEii_1(this_,srcPtr,strm,rows,cols);
  p_ZN2xf11accel_utils13hlsStrm2xfMatILi512ELi9ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi512EEER3MatILi9ELi256ELi256ELi1EE_1(this_,strm,dstMat);
}

static void p_ZN2xf11Array2xfMatILi512ELi9ELi256ELi256ELi1EEEP7ap_uintILi512EER3MatILi9ELi256ELi256ELi1EE_1(class ap_uint< 512 > *srcPtr,struct xf_Mat_9_256_256_1_ &dstMat)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11Array2xfMatILi512ELi9ELi256ELi256ELi1EEEP7ap_uintILi512EER3MatILi9ELi256ELi256ELi1EE_1(&au,srcPtr,dstMat);
}

static _DataType_9_1_name p_ZN2xf16Mat_9_256_256_1_4readIEEi_1(struct xf_Mat_9_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static void p_Z17ExtractUYVYPixelsILi9EE7ap_uintILi24EEP7ap_uintILi8EE_1(_StreamType_9_name pix,ap_uint8_t *buf)
{
  int k;
  _StreamType_9_name val;
  int pos = 0;
  val = pix;
// Standardize from: for(k = 0;k < _ZN13StreamType_9_8bitdepthE;k += 8) {...}
  for (k = 0; k <= 2; k++) {
    int _in_k = 0 + 8L * k;
    unsigned char p;
    p = ((unsigned char )(val . range((_in_k + 7),_in_k)));
    buf[pos++] = p;
  }
  k = 16 + 8L;
}

static unsigned char saturate_cast(int Value,int offset)
{
  int Value_int = (Value >> 15) + offset;
  unsigned char Value_uchar = (unsigned char )0;
  if (Value_int > 255) {
    Value_uchar = ((unsigned char )255);
  }
   else {
    if (Value_int < 0) {
      Value_uchar = ((unsigned char )0);
    }
     else {
      Value_uchar = ((unsigned char )Value_int);
    }
  }
  return Value_uchar;
}

static unsigned char CalculateGRAY(unsigned char R,unsigned char G,unsigned char B)
{
  int GRAY = ((int )R) * ((int )((short )9798)) + ((int )G) * ((int )((short )19235)) + ((int )B) * ((int )((short )3736));
  unsigned char sat_GRAY = saturate_cast(GRAY,0);
  return sat_GRAY;
}

static void p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ *this_,int index,_DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN13DataType_0_1_8bitdepthE = 8;

static void p_ZN2xf10xfbgr2grayILi9ELi0ELi256ELi256ELi1ELi9ELi1ELi32768EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1(struct xf_Mat_9_256_256_1_ &src,struct xf_Mat_0_256_256_1_ &dst,unsigned short height,unsigned short width)
{
  _DataType_9_1_cname RGB[3 * 1];
  _DataType_9_1_name RGB_packed;
  _DataType_0_1_cname GRAY[1];
  _DataType_0_1_name Gray_packed;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  rowloop:
  for (class ap_uint< 13 > i(0); i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L3}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
    columnloop:
    for (class ap_uint< 13 > j(0); j<((int )width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      RGB_packed = p_ZN2xf16Mat_9_256_256_1_4readIEEi_1(&src,(int )((i*(((int )width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE)+j)));
      p_Z17ExtractUYVYPixelsILi9EE7ap_uintILi24EEP7ap_uintILi8EE_1(RGB_packed,RGB);
      class ap_uint< 13 > _l_k = 0;
      class ap_uint< 13 > _l_offset = 0;
// Canonicalized from: for(class ap_uint< 13 > k(0), offset(0);k<_ZN20xfNPixelsPerCycle_1_4nppcE;(k ++ ) , offset+=3) {...}
      for (_l_k = 0; _l_k <= 0; ++_l_k) {
        GRAY[(long )(_l_k . operator unsigned long())] = CalculateGRAY((unsigned char )(RGB[(long )((_l_offset+2) . operator unsigned long())] . operator unsigned long()),(unsigned char )(RGB[(long )((_l_offset+1) . operator unsigned long())] . operator unsigned long()),(unsigned char )(RGB[(long )(_l_offset . operator unsigned long())] . operator unsigned long()));
        Gray_packed . range((_l_k*_ZN13DataType_0_1_8bitdepthE+(_ZN13DataType_0_1_8bitdepthE - 1)),(_l_k*_ZN13DataType_0_1_8bitdepthE)) = (GRAY[(long )(_l_k . operator unsigned long())] . operator unsigned long());
        _l_offset+=3;
      }
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&dst,(int )((i*(((int )width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE)+j)),Gray_packed);
    }
  }
}

static void p_ZN2xf8bgr2grayILi9ELi0ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_Mat_9_256_256_1_ &_src,struct xf_Mat_0_256_256_1_ &_dst)
{
  9 == ((int )XF_8UC3) && ((bool )" BGR image Type must be XF_8UC3")?((void )0) : __assert_fail("(SRC_T == XF_8UC3) && \" BGR image Type must be XF_8UC3\"","xf_cvt_color.hpp",(unsigned int )4584,__PRETTY_FUNCTION__);
  0 == ((int )XF_8UC1) && ((bool )" GRAY image Type must be XF_8UC1")?((void )0) : __assert_fail("(DST_T == XF_8UC1) && \" GRAY image Type must be XF_8UC1\"","xf_cvt_color.hpp",(unsigned int )4585,__PRETTY_FUNCTION__);
  _src . rows <= 256 && _src . cols <= 256 && ((bool )" BGR image rows and cols should be less than ROWS, COLS")?((void )0) : __assert_fail("((_src.rows <= ROWS ) && (_src.cols <= COLS)) && \" BGR image rows and cols should be less than ROWS, COLS\"","xf_cvt_color.hpp",(unsigned int )4586,__PRETTY_FUNCTION__);
  _dst . cols == _src . cols && _dst . rows == _src . rows && ((bool )"BGR and GRAY plane dimensions mismatch")?((void )0) : __assert_fail("(( _dst.cols == _src.cols) && (_dst.rows == _src.rows)) && \"BGR and GRAY plane dimensions mismatch\"","xf_cvt_color.hpp",(unsigned int )4587,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )" 1,8 pixel parallelism is supported  ")?((void )0) : __assert_fail("( (NPC==XF_NPPC1) || (NPC==XF_NPPC8))&& \" 1,8 pixel parallelism is supported  \"","xf_cvt_color.hpp",(unsigned int )4588,__PRETTY_FUNCTION__);
  p_ZN2xf10xfbgr2grayILi9ELi0ELi256ELi256ELi1ELi9ELi1ELi32768EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1(_src,_dst,(unsigned short )_src . rows,(unsigned short )_src . cols);
}

static _DataType_0_1_name p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(struct xf_Mat_0_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}
const int _ZN13DataType_0_1_10pixelwidthE = 8;

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi512ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi512EEE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,hls::stream< ap_uint< 512 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 512;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 512 > r;
  _DataType_0_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    in = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&srcMat,i);
    if (bits_to_add <= N_size) {
      r . range((512 - 1),(512 - bits_to_add)) = in . range((bits_to_add - 1),0);
      dstStrm . write(r);
      if (bits_to_add != N_size) {
        r . range((N_size - bits_to_add - 1),0) = in . range((N_size - 1),bits_to_add);
      }
      bits_to_add = 512 - (N_size - bits_to_add);
    }
     else {
      r . range((512 - bits_to_add + N_size - 1),(512 - bits_to_add)) = in;
      bits_to_add -= N_size;
    }
  }
  if (bits_to_add != 512) {
    dstStrm . write(r);
  }
}

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi512ELi256ELi256ELi1ELi1ELi8ELi1024EEER6streamI7ap_uintILi512EEEP7ap_uintILi512EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 512 >  > &srcStrm,class ap_uint< 512 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 512 - 1) / 512;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=1024
    dstPtr[i] = srcStrm . read();
  }
}
const int _ZN13StreamType_1_8bitdepthE = 8;

static void p_ZN2xf11accel_utils11xfMat2ArrayILi512ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi512EE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 512 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  512 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  hls::stream< ap_uint< 512 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi512ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi512EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi512ELi256ELi256ELi1ELi1ELi8ELi1024EEER6streamI7ap_uintILi512EEEP7ap_uintILi512EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi512ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi512EE_1(struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 512 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi512ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi512EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void cvtcolor_bgr2gray(class ap_uint< 512 > *img_bgr,class ap_uint< 512 > *img_gray,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_bgr offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_gray offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=img_bgr bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_gray bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_9_256_256_1_ imgInput0;
  p_ZN2xf16Mat_9_256_256_1_C2IEEv_1(&imgInput0);
  ;
  
#pragma HLS stream variable=imgInput0.data depth=pCOLS/pNPC1
  imgInput0 . rows = rows;
  imgInput0 . cols = cols;
  struct xf_Mat_0_256_256_1_ imgOutput0;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&imgOutput0);
  ;
  
#pragma HLS stream variable=imgOutput0.data depth=pCOLS/pNPC1
  imgOutput0 . rows = rows;
  imgOutput0 . cols = cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi512ELi9ELi256ELi256ELi1EEEP7ap_uintILi512EER3MatILi9ELi256ELi256ELi1EE_1(img_bgr,imgInput0);
  p_ZN2xf8bgr2grayILi9ELi0ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(imgInput0,imgOutput0);
  p_ZN2xf11xfMat2ArrayILi512ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi512EE_1(imgOutput0,img_gray);
}
