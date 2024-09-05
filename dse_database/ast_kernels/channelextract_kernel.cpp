#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
#include <xf_params.h>
#include "merlin_type_define.h"
const int _ZN20xfNPixelsPerCycle_1_9datashiftE = 0;

static void p_ZN2xf16Mat_7_256_256_1_4initIEEiib_1(struct xf_Mat_7_256_256_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 256 && _cols > 0 && _cols <= 256 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf16Mat_7_256_256_1_C2IEEv_1(struct xf_Mat_7_256_256_1_ *this_)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_7_256_256_1_4initIEEiib_1(this_,256,256,true);
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

static void p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi4ELi8ELi8192EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,hls::stream< ap_uint< 256 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 4 * 8;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=8192
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_7_256_256_1_5writeIEEi7ap_uintILi32EE_1(struct xf_Mat_7_256_256_1_ *this_,int index,_DataType_7_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_7_1_10pixelwidthE = 32;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi7ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi7ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 256 >  > &srcStrm,struct xf_Mat_7_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_7_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 256 > r;
  _DataType_7_1_name out;
  
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
    p_ZN2xf16Mat_7_256_256_1_5writeIEEi7ap_uintILi32EE_1(&dstMat,i,out);
  }
}
const int _ZN14StreamType_12_8bitdepthE = 32;
const int _ZN13DataType_7_1_8bitdepthE = 8;

static void p_ZN2xf11accel_utils11Array2xfMatILi256ELi7ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi7ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,struct xf_Mat_7_256_256_1_ &dstMat)
{
  
#pragma HLS DATAFLOW
  256 >= _ZN14StreamType_12_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )665,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_7_1_8bitdepthE;
  hls::stream< ap_uint< 256 >  > strm;
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi4ELi8ELi8192EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(this_,srcPtr,strm,rows,cols);
  p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi7ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi7ELi256ELi256ELi1EE_1(this_,strm,dstMat);
}

static void p_ZN2xf11Array2xfMatILi256ELi7ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi7ELi256ELi256ELi1EE_1(class ap_uint< 256 > *srcPtr,struct xf_Mat_7_256_256_1_ &dstMat)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11Array2xfMatILi256ELi7ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi7ELi256ELi256ELi1EE_1(&au,srcPtr,dstMat);
}

static _DataType_7_1_name p_ZN2xf16Mat_7_256_256_1_4readIEEi_1(struct xf_Mat_7_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static void p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ *this_,int index,_DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN13DataType_7_1_7channelE = 4;
const int _ZN13DataType_0_1_8bitdepthE = 8;
const int _ZN13DataType_0_1_7channelE = 1;

static void p_ZN2xf22xfChannelExtractKernelILi256ELi256ELi7ELi0ELi1ELi256EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEttt_1(struct xf_Mat_7_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_mat,unsigned short _channel,unsigned short height,unsigned short width)
{
  const int noofbits = _ZN13DataType_7_1_8bitdepthE;
  class ap_uint< 13 > i;
  class ap_uint< 13 > j;
  class ap_uint< 13 > k;
  _DataType_7_1_name in_pix;
  _DataType_0_1_name out_pix;
  class ap_uint< 8 > result;
  int shift = 0;
  int bitdepth_src = _ZN13DataType_7_1_8bitdepthE / _ZN13DataType_7_1_7channelE;
  int bitdepth_dst = _ZN13DataType_0_1_8bitdepthE / _ZN13DataType_0_1_7channelE;
  if ((bool )(((int )(((int )_channel) == ((int )XF_EXTRACT_CH_0))) | ((int )(((int )_channel) == ((int )XF_EXTRACT_CH_R))) | ((int )(((int )_channel) == ((int )XF_EXTRACT_CH_Y))))) {
    shift = 0;
  }
   else {
    if ((bool )(((int )(((int )_channel) == ((int )XF_EXTRACT_CH_1))) | ((int )(((int )_channel) == ((int )XF_EXTRACT_CH_G))) | ((int )(((int )_channel) == ((int )XF_EXTRACT_CH_U))))) {
      shift = noofbits;
    }
     else {
      if ((bool )(((int )(((int )_channel) == ((int )XF_EXTRACT_CH_2))) | ((int )(((int )_channel) == ((int )XF_EXTRACT_CH_B))) | ((int )(((int )_channel) == ((int )XF_EXTRACT_CH_V))))) {
        shift = noofbits * 2;
      }
       else {
        if ((bool )(((int )(((int )_channel) == ((int )XF_EXTRACT_CH_3))) | ((int )(((int )_channel) == ((int )XF_EXTRACT_CH_A))))) {
          shift = noofbits * 3;
        }
      }
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  RowLoop:
  for (i = 0; i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L3}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
    ColLoop:
    for (j = 0; j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      int y;
      in_pix = p_ZN2xf16Mat_7_256_256_1_4readIEEi_1(&_src_mat,(int )((i*width+j)));
      ProcLoop:
// Standardize from: for(k = 0;k<noofbits << _ZN20xfNPixelsPerCycle_1_9datashiftE;k+=noofbits) {...}
      for (k = 0; k <= 0L; k++) {
        class ap_uint< 13 > _in_k = 0L + 8L * k;
        y = ((int )((_in_k*_ZN13DataType_7_1_7channelE)));
        result = in_pix . range((y + shift + noofbits - 1),(y + shift));
        out_pix . range((_in_k+(noofbits - 1)),_in_k) = result;
      }
      k = 0L + 8L;
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst_mat,(int )((i*width+j)),out_pix);
    }
  }
}

static void p_ZN2xf14extractChannelILi7ELi0ELi256ELi256ELi1EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEt_1(struct xf_Mat_7_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_mat,unsigned short _channel)
{
  (((int )_channel) == ((int )XF_EXTRACT_CH_0) || ((int )_channel) == ((int )XF_EXTRACT_CH_1) || ((int )_channel) == ((int )XF_EXTRACT_CH_2) || ((int )_channel) == ((int )XF_EXTRACT_CH_3) || ((int )_channel) == ((int )XF_EXTRACT_CH_R) || ((int )_channel) == ((int )XF_EXTRACT_CH_G) || ((int )_channel) == ((int )XF_EXTRACT_CH_B) || ((int )_channel) == ((int )XF_EXTRACT_CH_A) || ((int )_channel) == ((int )XF_EXTRACT_CH_Y) || ((int )_channel) == ((int )XF_EXTRACT_CH_U) || ((int )_channel) == ((int )XF_EXTRACT_CH_V)) && ((bool )"Invalid Channel Value. See xf_channel_extract_e enumerated type")?((void )0) : __assert_fail("((_channel == XF_EXTRACT_CH_0) || (_channel == XF_EXTRACT_CH_1) || (_channel == XF_EXTRACT_CH_2) || (_channel == XF_EXTRACT_CH_3) || (_channel == XF_EXTRACT_CH_R) || (_channel == XF_EXTRACT_CH_G) || (_channel == XF_EXTRACT_CH_B) || (_channel == XF_EXTRACT_CH_A) || (_channel == XF_EXTRACT_CH_Y) || (_channel == XF_EXTRACT_CH_U) || (_channel == XF_EXTRACT_CH_V)) && \"Invalid Channel Value. See xf_channel_extract_e enumerated type\"","xf_channel_extract.hpp",(unsigned int )131,__PRETTY_FUNCTION__);
  _src_mat . rows <= 256 && _src_mat . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_channel_extract.hpp",(unsigned int )132,__PRETTY_FUNCTION__);
  _dst_mat . rows <= 256 && _dst_mat . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_dst_mat.rows <= ROWS ) && (_dst_mat.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_channel_extract.hpp",(unsigned int )133,__PRETTY_FUNCTION__);
  (7 == ((int )XF_8UC4) || 7 == ((int )XF_8UC3)) && 0 == ((int )XF_8UC1) && ((bool )"Source image should be of 4 channels and destination image of 1 channel")?((void )0) : __assert_fail("(SRC_T == XF_8UC4 || SRC_T == XF_8UC3) && (DST_T == XF_8UC1) && \"Source image should be of 4 channels and destination image of 1 channel\"","xf_channel_extract.hpp",(unsigned int )134,__PRETTY_FUNCTION__);
  short width = (short )(_src_mat . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  p_ZN2xf22xfChannelExtractKernelILi256ELi256ELi7ELi0ELi1ELi256EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEttt_1(_src_mat,_dst_mat,_channel,(unsigned short )_src_mat . rows,(unsigned short )width);
}

static _DataType_0_1_name p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(struct xf_Mat_0_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}
const int _ZN13DataType_0_1_10pixelwidthE = 8;

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
const int _ZN13StreamType_1_8bitdepthE = 8;

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

void channel_extract_accel(class ap_uint< 256 > *img_rgba,class ap_uint< 256 > *img_gray,unsigned short channel,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_rgba offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_gray offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=img_rgba bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_gray bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=channel bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_7_256_256_1_ imgInput0;
  p_ZN2xf16Mat_7_256_256_1_C2IEEv_1(&imgInput0);
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
  p_ZN2xf11Array2xfMatILi256ELi7ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi7ELi256ELi256ELi1EE_1(img_rgba,imgInput0);
  p_ZN2xf14extractChannelILi7ELi0ELi256ELi256ELi1EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEt_1(imgInput0,imgOutput0,channel);
  p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1(imgOutput0,img_gray);
}
