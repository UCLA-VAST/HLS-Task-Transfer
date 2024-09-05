#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
#include <xf_params.h>
#include <xf_types.h>
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

static void p_ZN2xf17xFHistogramKernelILi0ELi256ELi256ELi0ELi1ELi1ELi128ELi1EEER3MatILi0ELi256ELi256ELi1EEPA256_jRtRt_1(struct xf_Mat_0_256_256_1_ &_src_mat,unsigned int hist_array[1][256],unsigned short &imgheight,unsigned short &imgwidth)
{
  unsigned int tmp_hist[1 << 0][256] = {((unsigned int )0)};
  unsigned int tmp_hist1[1 << 0][256] = {((unsigned int )0)};
  _StreamType_1_name in_buf;
  _StreamType_1_name in_buf1;
  _StreamType_1_name temp_buf;
  bool flag = (bool )0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  HIST_INITIALIZE_LOOP:
  for (class ap_uint< 10 > i(0); i<256; i ++ ) {
    for (class ap_uint< 5 > j(0); j<1 << _ZN20xfNPixelsPerCycle_1_9datashiftE * 1; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      tmp_hist[(long )(j)][(long )(i)] = ((unsigned int )0);
      tmp_hist1[(long )(j)][(long )(i)] = ((unsigned int )0);
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  HISTOGRAM_ROW_LOOP:
  for (class ap_uint< 13 > row(0); row<imgheight; row ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L9}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L9}
    HISTOGRAM_COL_LOOP:
    for (class ap_uint< 13 > col(0); col<imgwidth; col = col+2) {
      
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
  
#pragma ACCEL PIPELINE auto{__PIPE__L2}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L2}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
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

static void p_ZN2xf10xFEqualizeILi0ELi256ELi256ELi0ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EEPA256_jR3MatILi0ELi256ELi256ELi1EEtt_1(struct xf_Mat_0_256_256_1_ &_src1,unsigned int hist_stream[0][256],struct xf_Mat_0_256_256_1_ &_dst_mat,unsigned short img_height,unsigned short img_width)
{
  _StreamType_1_name in_buf;
  _StreamType_1_name temp_buf;
  class ap_uint< 8 > cum_hist[256];
  class ap_uint< 8 > tmp_cum_hist[1 << 0][256];
  unsigned int temp_val = (unsigned int )(((int )img_height) * (((int )img_width) << _ZN20xfNPixelsPerCycle_1_9datashiftE));
  unsigned int init_val = (unsigned int )(temp_val - hist_stream[0][0]);
  unsigned int scale;
  if (init_val == ((unsigned int )0)) {
    scale = ((unsigned int )0);
  }
   else {
    scale = ((unsigned int )(((unsigned int )(1 << 31)) / init_val));
  }
  class ap_uint< 40 > scale1 = ap_uint< 40> (ap_uint< 40> (255)*ap_uint< 40> (scale));
  ap_uint32_t temp_sum(0);
  cum_hist[0] = 0;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
  Normalize_Loop:
  for (class ap_uint< 9 > i(1); i<256; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    temp_sum = (((unsigned int )(temp_sum)) + ((unsigned int )hist_stream[0][(long )(i)]));
    unsigned long sum = (unsigned long )(((unsigned long )(temp_sum)) * ((unsigned long )(scale1)));
    sum = ((unsigned long )(sum + ((unsigned long )0x40000000)));
    cum_hist[(long )(i)] = (sum >> 31);
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L4}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L4}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  for (class ap_uint< 9 > i(0); i<256; i ++ ) {
    for (class ap_uint< 5 > j(0); j<1 << _ZN20xfNPixelsPerCycle_1_9datashiftE; j ++ ) {
      class ap_uint< 8 > tmpval = cum_hist[(long )(i)];
      tmp_cum_hist[(long )(j)][(long )(i)] = tmpval;
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L5}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  NORMALISE_ROW_LOOP:
  for (class ap_uint< 13 > row(0); row<img_height; row ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L12}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L12}
    NORMALISE_COL_LOOP:
    for (class ap_uint< 13 > col(0); col<img_width; col ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      in_buf = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src1,(int )((row*img_width+col)));
      class ap_uint< 9 > _l_i = 0;
      class ap_uint< 9 > _l_j = 0;
      Normalise_Extract:
// Canonicalized from: for(class ap_uint< 9 > i(0), j(0);i<8 << _ZN20xfNPixelsPerCycle_1_9datashiftE;(j ++ ) , i+=8) {...}
// Standardize from: for(_l_i = 0;_l_i <= 7;_l_i += 8) {...}
      for (_l_i = 0; _l_i <= 0L; _l_i++) {
        class ap_uint< 9 > _in_l_i = 0L + 8L * _l_i;
        _PixelType_0_name val;
        val = in_buf . range((_in_l_i+7),_in_l_i);
        temp_buf((_in_l_i+7),_in_l_i) = (tmp_cum_hist[(long )(_l_j . operator unsigned long())][(long )(val . operator unsigned long())] . operator unsigned long());
        _l_j ++ ;
      }
      _l_i = 0L + 8L;
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst_mat,(int )((row*img_width+col)),temp_buf);
    }
  }
}

static void p_ZN2xf12equalizeHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &_src,struct xf_Mat_0_256_256_1_ &_src1,struct xf_Mat_0_256_256_1_ &_dst)
{
  unsigned short img_height = (unsigned short )_src1 . rows;
  unsigned short img_width = (unsigned short )_src1 . cols;
  ((int )img_height) <= 256 && ((int )img_width) <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((img_height <= ROWS) && (img_width <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_hist_equalize.hpp",(unsigned int )169,__PRETTY_FUNCTION__);
  0 == ((int )XF_8UC1) && ((bool )"Type must be of XF_8UC1")?((void )0) : __assert_fail("(SRC_T == XF_8UC1) && \"Type must be of XF_8UC1\"","xf_hist_equalize.hpp",(unsigned int )171,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )" NPC must be XF_NPPC1, XF_NPPC8")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8)) && \" NPC must be XF_NPPC1, XF_NPPC8\"","xf_hist_equalize.hpp",(unsigned int )173,__PRETTY_FUNCTION__);
  unsigned int histogram[1][256];
  img_width = ((unsigned short )(((int )img_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE));
  p_ZN2xf17xFHistogramKernelILi0ELi256ELi256ELi0ELi1ELi1ELi128ELi1EEER3MatILi0ELi256ELi256ELi1EEPA256_jRtRt_1(_src,histogram,img_height,img_width);
  p_ZN2xf10xFEqualizeILi0ELi256ELi256ELi0ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EEPA256_jR3MatILi0ELi256ELi256ELi1EEtt_1(_src1,histogram,_dst,img_height,img_width);
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L13}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L14}
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

void equalizeHist_accel(class ap_uint< 256 > *img_inp,class ap_uint< 256 > *img_inp1,class ap_uint< 256 > *img_out,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_inp1 offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=img_out offset=slave bundle=gmem3
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_out bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat);
  ;
  
#pragma HLS stream variable=in_mat.data depth=pCOLS/pNPC
  struct xf_Mat_0_256_256_1_ in_mat1;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat1);
  ;
  
#pragma HLS stream variable=in_mat1.data depth=pCOLS/pNPC
  struct xf_Mat_0_256_256_1_ out_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&out_mat);
  ;
  
#pragma HLS stream variable=out_mat.data depth=pCOLS/pNPC
  in_mat . rows = rows;
  in_mat . cols = cols;
  in_mat1 . rows = rows;
  in_mat1 . cols = cols;
  out_mat . rows = rows;
  out_mat . cols = cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(img_inp1,in_mat1);
  p_ZN2xf12equalizeHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(in_mat,in_mat1,out_mat);
  p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1(out_mat,img_out);
}
