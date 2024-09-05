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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
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
const int _ZN12PixelType_0_8bitdepthE = 8;
const int _ZN13DataType_0_1_7channelE = 1;

static void p_ZN2xf11inrangeprocILi1ELi1ELi0ELi0ELi0ELi1EEER7ap_uintILi8EER7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EE_1(_StreamType_1_name &val_src,_StreamType_1_name &tmp_val,_PixelType_0_name channel_out[1],_PixelType_0_name _lower_thresh[1],_PixelType_0_name _upper_thresh[1])
{
  _PixelType_0_name p;
  class ap_uint< 13 > _l_k = 0;
  class ap_uint< 13 > _l_c = 0;
// Canonicalized from: for(class ap_uint< 13 > k(0), c(0);k<_ZN13StreamType_1_8bitdepthE;(k+=_ZN12PixelType_0_8bitdepthE) , c ++ ) {...}
// Standardize from: for(_l_k = 0;_l_k <= 7;_l_k += 8) {...}
  for (_l_k = 0; _l_k <= 0L; _l_k++) {
    class ap_uint< 13 > _in_l_k = 0L + 8L * _l_k;
    p = val_src . range((_in_l_k+(_ZN12PixelType_0_8bitdepthE - 1)),_in_l_k);
    channel_out[(long )(_l_c . operator unsigned long())] = (p>=_lower_thresh[(long )(_l_c . operator unsigned long())] && p<=_upper_thresh[(long )(_l_c . operator unsigned long())]?ap_uint< 8> (255) : ap_uint< 8> (0));
    _l_c ++ ;
  }
  _l_k = 0L + 8L;
  if (_ZN13DataType_0_1_7channelE != 1) {
    tmp_val = (channel_out[0]&channel_out[1])&channel_out[2];
  }
   else {
    tmp_val = channel_out[0];
  }
}

static void p_ZN2xf15xFinRangeKernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPhPhtt_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_mat,unsigned char lower_thresh[1],unsigned char upper_thresh[1],unsigned short height,unsigned short width)
{
  _StreamType_1_name val_src;
  _StreamType_1_name val_dst;
  _StreamType_1_name tmp_val;
  _PixelType_0_name _lower_thresh[1];
  _PixelType_0_name _upper_thresh[1];
  _PixelType_0_name channel_out[1];
  for (int i = 0; i < _ZN13DataType_0_1_7channelE; i++) {
    _lower_thresh[i] = ap_uint< 8> (lower_thresh[i]);
    _upper_thresh[i] = ap_uint< 8> (upper_thresh[i]);
  }
  class ap_uint< 13 > i;
  class ap_uint< 13 > j;
  class ap_uint< 13 > k;
  class ap_uint< 13 > c;
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  rowLoop:
  for (i = 0; i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
    colLoop:
    for (j = 0; j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      val_src = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,(int )((i*width+j)));
      p_ZN2xf11inrangeprocILi1ELi1ELi0ELi0ELi0ELi1EEER7ap_uintILi8EER7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EE_1(val_src,tmp_val,channel_out,_lower_thresh,_upper_thresh);
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst_mat,(int )((i*width+j)),tmp_val);
    }
  }
}

static void p_ZN2xf7inRangeILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPhPhR3MatILi0ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &src,unsigned char lower_thresh[1],unsigned char upper_thresh[1],struct xf_Mat_0_256_256_1_ &dst)
{
  unsigned short width = (unsigned short )(src . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  unsigned short height = (unsigned short )src . rows;
  (0 == ((int )XF_8UC1) || 0 == ((int )XF_8UC3)) && ((bool )"Type must be XF_8UC1 or XF_8UC3")?((void )0) : __assert_fail("((SRC_T == XF_8UC1) || (SRC_T == XF_8UC3)) && \"Type must be XF_8UC1 or XF_8UC3\"","xf_inrange.hpp",(unsigned int )134,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1, XF_NPPC8")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8) ) && \"NPC must be XF_NPPC1, XF_NPPC8\"","xf_inrange.hpp",(unsigned int )136,__PRETTY_FUNCTION__);
  ((int )lower_thresh[0]) >= 0 && ((int )lower_thresh[0]) <= 255 && ((bool )"lower_thresh must be with the range of 0 to 255")?((void )0) : __assert_fail("((lower_thresh[0] >= 0) && (lower_thresh[0] <= 255)) && \"lower_thresh must be with the range of 0 to 255\"","xf_inrange.hpp",(unsigned int )139,__PRETTY_FUNCTION__);
  ((int )upper_thresh[0]) >= 0 && ((int )upper_thresh[0]) <= 255 && ((bool )"lower_thresh must be with the range of 0 to 255")?((void )0) : __assert_fail("((upper_thresh[0] >= 0) && (upper_thresh[0] <= 255)) && \"lower_thresh must be with the range of 0 to 255\"","xf_inrange.hpp",(unsigned int )142,__PRETTY_FUNCTION__);
  ((int )height) <= 256 && ((int )width) <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((height <= ROWS ) && (width <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_inrange.hpp",(unsigned int )144,__PRETTY_FUNCTION__);
  p_ZN2xf15xFinRangeKernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPhPhtt_1(src,dst,lower_thresh,upper_thresh,height,width);
}

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi64ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi64EEE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,hls::stream< ap_uint< 64 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 64;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 64 > r;
  _DataType_0_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
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

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEER6streamI7ap_uintILi64EEEP7ap_uintILi64EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 64 >  > &srcStrm,class ap_uint< 64 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 64 - 1) / 64;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
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
  hls::stream< ap_uint< 64 >  > strm;
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

void inrange_accel(class ap_uint< 64 > *src_data,unsigned char *lower_thresh,unsigned char *upper_thresh,class ap_uint< 64 > *dst_data,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=src_data offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=lower_thresh offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=upper_thresh offset=slave bundle=gmem3
  
#pragma HLS INTERFACE m_axi port=dst_data offset=slave bundle=gmem4
  
#pragma HLS INTERFACE s_axilite port=src_data bundle=control
  
#pragma HLS INTERFACE s_axilite port=lower_thresh bundle=control
  
#pragma HLS INTERFACE s_axilite port=upper_thresh bundle=control
  
#pragma HLS INTERFACE s_axilite port=dst_data bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ _src;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&_src);
  ;
  
#pragma HLS stream variable=_src.data depth=pCOLS/pNPC1
  _src . rows = rows;
  _src . cols = cols;
  struct xf_Mat_0_256_256_1_ _dst;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&_dst);
  ;
  
#pragma HLS stream variable=_dst.data depth=pCOLS/pNPC1
  _dst . rows = rows;
  _dst . cols = cols;
  
#pragma HLS dataflow
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(src_data,_src);
  p_ZN2xf7inRangeILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPhPhR3MatILi0ELi256ELi256ELi1EE_1(_src,lower_thresh,upper_thresh,_dst);
  p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1(_dst,dst_data);
}
