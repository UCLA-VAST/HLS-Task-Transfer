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

static void p_ZN2xf11accel_utils13Array2hlsStrmILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEEP7ap_uintILi8EER6streamI7ap_uintILi8EEEii_1(struct xf_accel_utils *this_,class ap_uint< 8 > *srcPtr,hls::stream< ap_uint< 8 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 8 - 1) / 8;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ *this_,int index,_DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_0_1_10pixelwidthE = 8;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi8ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi8EEER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 8 >  > &srcStrm,struct xf_Mat_0_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 8 > r;
  _DataType_0_1_name out;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    if (valid_bits < N_size) {
      if (valid_bits != 0) {
        out . range((valid_bits - 1),0) = r . range((8 - 1),(8 - valid_bits));
      }
      r = srcStrm . read();
      out . range((N_size - 1),valid_bits) = r . range((N_size - valid_bits - 1),0);
      valid_bits = 8 - (N_size - valid_bits);
    }
     else {
      out = r . range((8 - valid_bits + N_size - 1),(8 - valid_bits));
      valid_bits -= N_size;
    }
    p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&dstMat,i,out);
  }
}
const int _ZN13StreamType_1_8bitdepthE = 8;
const int _ZN13DataType_0_1_8bitdepthE = 8;

static void p_ZN2xf11accel_utils11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class ap_uint< 8 > *srcPtr,struct xf_Mat_0_256_256_1_ &dstMat)
{
  
#pragma HLS DATAFLOW
  8 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )665,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  hls::stream< ap_uint< 8 >  > strm;
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  p_ZN2xf11accel_utils13Array2hlsStrmILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEEP7ap_uintILi8EER6streamI7ap_uintILi8EEEii_1(this_,srcPtr,strm,rows,cols);
  p_ZN2xf11accel_utils13hlsStrm2xfMatILi8ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi8EEER3MatILi0ELi256ELi256ELi1EE_1(this_,strm,dstMat);
}

static void p_ZN2xf11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1(class ap_uint< 8 > *srcPtr,struct xf_Mat_0_256_256_1_ &dstMat)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1(&au,srcPtr,dstMat);
}

static void p_ZN2xf16Scalar_1_double_C2IEEv_1(struct xf_Scalar_1_double_ *this_)
{
  
#pragma HLS ARRAY_PARTITION variable=this_->val dim=1 complete
  1 > 0?((void )0) : __assert_fail("N > 0","xf_structs.h",(unsigned int )243,__PRETTY_FUNCTION__);
}

static _DataType_0_1_name p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(struct xf_Mat_0_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}
const int _ZN12PixelType_0_8bitdepthE = 8;

static int p_ZN2xf9sumKernelILi0ELi256ELi256ELi1ELi1ELi0ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER6ScalarILi1EdEtt_1(struct xf_Mat_0_256_256_1_ &src1,struct xf_Scalar_1_double_ &scl,unsigned short height,unsigned short width)
{
  class ap_uint< 13 > i;
  class ap_uint< 13 > j;
  class ap_uint< 13 > k;
  class ap_uint< 13 > l;
  class ap_uint< 13 > c;
  class ap_uint< 64 > internal_sum[1];
  for (int i = 0; i < 1; i++) {
    internal_sum[i] = 0;
  }
  int STEP = _ZN12PixelType_0_8bitdepthE / 1;
  _StreamType_1_name pxl_pack1;
  _StreamType_1_name pxl_pack2;
  
#pragma ACCEL PIPELINE auto{__PIPE__L2}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  RowLoop:
  for (i = 0; i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L5}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
    ColLoop:
    for (j = 0; j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      pxl_pack1 = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&src1,(int )((i*width+j)));
      c = 0;
      ProcLoop:
// Canonicalized from: for((k = 0) , c = 0;k<(8 << _ZN20xfNPixelsPerCycle_1_9datashiftE) * 1;(k+=8) , c ++ ) {...}
// Standardize from: for(k = 0;k <= 7;k += 8) {...}
      for (k = 0; k <= 0L; k++) {
        class ap_uint< 13 > _in_k = 0L + 8L * k;
        _PixelType_0_name pxl1(pxl_pack1 . range((_in_k+7),_in_k));
{
          internal_sum[0] = internal_sum[0]+pxl1;
        }
        c ++ ;
      }
      k = 0L + 8L;
    }
  }
{
    scl . val[0] = ((double )(internal_sum[0]));
  }
  return 0;
}
const int _ZN13DataType_0_1_7channelE = 1;

static void p_ZN2xf3sumILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPd_1(struct xf_Mat_0_256_256_1_ &src1,double sum[1])
{
  0 == ((int )XF_8UC1) && ((bool )"Input TYPE must be XF_8UC1 for 1-channel image")?((void )0) : __assert_fail("((SRC_T == XF_8UC1)) && \"Input TYPE must be XF_8UC1 for 1-channel image\"","xf_sum.hpp",(unsigned int )119,__PRETTY_FUNCTION__);
  src1 . rows <= 256 && src1 . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((src1.rows <= ROWS ) && (src1.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_sum.hpp",(unsigned int )120,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1, XF_NPPC8 ")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8) ) && \"NPC must be XF_NPPC1, XF_NPPC8 \"","xf_sum.hpp",(unsigned int )121,__PRETTY_FUNCTION__);
  short width = (short )(src1 . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  struct xf_Scalar_1_double_ scl;
  p_ZN2xf16Scalar_1_double_C2IEEv_1(&scl);
  ;
  p_ZN2xf9sumKernelILi0ELi256ELi256ELi1ELi1ELi0ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER6ScalarILi1EdEtt_1(src1,scl,(unsigned short )src1 . rows,(unsigned short )width);
  for (int i = 0; i < _ZN13DataType_0_1_7channelE; i++) {
    sum[i] = scl . val[i];
  }
}
#pragma ACCEL kernel

void sum_accel(_StreamType_1_name *img_inp1,double scl[1],int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_inp1 offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=scl offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=img_inp1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=scl bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROLS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ _src;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&_src);
  ;
  _src . rows = rows;
  _src . cols = cols;
  
#pragma HLS stream variable=_src.data depth=pCOLS/pNPC1
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1(img_inp1,_src);
  p_ZN2xf3sumILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPd_1(_src,scl);
}
