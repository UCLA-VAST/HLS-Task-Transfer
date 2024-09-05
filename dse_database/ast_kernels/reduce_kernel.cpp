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

static void p_ZN2xf15Mat_5_1_3840_1_4initIEEiib_1(struct xf_Mat_5_1_3840_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 1 && _cols > 0 && _cols <= 3840 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf15Mat_5_1_3840_1_C2IEEv_1(struct xf_Mat_5_1_3840_1_ *this_)
{
  
#pragma HLS inline
  p_ZN2xf15Mat_5_1_3840_1_4initIEEiib_1(this_,1,3840,true);
}

static void p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1(struct xf_accel_utils *this_,class ap_uint< 64 > *srcPtr,hls::stream< ap_uint< 64 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 64 - 1) / 64;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
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

static void p_ZN2xf15Mat_5_1_3840_1_5writeIEEi7ap_uintILi32EE_1(struct xf_Mat_5_1_3840_1_ *this_,int index,_DataType_5_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN13DataType_0_1_7channelE = 1;

static void p_ZN2xf14xFreduceKernelILi0ELi5ELi256ELi256ELi1ELi3840ELi0ELi1ELi1ELi12ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEhtt_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_5_1_3840_1_ &_dst_mat,unsigned char dim,unsigned short height,unsigned short width)
{
  _StreamType_1_name val_src;
  _StreamType_12_name val_dst;
  unsigned long long p = (unsigned long long )0;
  unsigned long long q = (unsigned long long )0;
  unsigned char max = (unsigned char )0;
  short depth = (short )(_ZN13DataType_0_1_8bitdepthE / _ZN13DataType_0_1_7channelE);
  _StreamType_12_name internal_res;
  _StreamType_12_name line_buf[256 >> 0];
  if (((int )dim) == 0) {
    for (int i = 0; i < ((int )width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE; i++) {
      line_buf[i] = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,i);
    }
  }
  class ap_uint< 13 > i;
  class ap_uint< 13 > j;
  class ap_uint< 13 > k;
  class ap_uint< 13 > planes;
  unsigned int var;
  if (((int )dim) == 0) {
    var = ((unsigned int )1);
  }
   else {
    var = ((unsigned int )0);
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  rowLoop:
  for (i = var; i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
{
      internal_res = 0;
      max = ((unsigned char )0);
    }
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
    colLoop:
    for (j = 0; j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      val_src = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,(int )((i*width+j)));
      if (((int )dim) == 0) {
        internal_res = line_buf[(long )(j)];
      }
      switch(1){
        case (int )REDUCE_SUM:
        internal_res = internal_res+val_src;
        break; 
        case (int )REDUCE_AVG:
        internal_res = internal_res+val_src;
        break; 
        case (int )REDUCE_MAX:
        internal_res = (ap_uint< 8> (internal_res)>val_src?ap_uint< 8> (internal_res) : val_src);
        break; 
        case (int )REDUCE_MIN:
        internal_res = (ap_uint< 8> (internal_res)<val_src?ap_uint< 8> (internal_res) : val_src);
        break; 
      }
      if (((int )dim) == 1 && j==((int )width) - 1) {
        val_dst = internal_res/width;
      }
      if (((int )dim) == 0) {
        val_dst = internal_res;
        line_buf[(long )(j)] = val_dst;
      }
    }
    if (((int )dim) == 1) {
      p_ZN2xf15Mat_5_1_3840_1_5writeIEEi7ap_uintILi32EE_1(&_dst_mat,(int )q,val_dst);
      q++;
    }
  }
  if (((int )dim) == 0) {
    for (unsigned int out = (unsigned int )0; out < ((unsigned int )(((int )width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE)); out++) {
      p_ZN2xf15Mat_5_1_3840_1_5writeIEEi7ap_uintILi32EE_1(&_dst_mat,(int )q,(line_buf[out]/height));
      q++;
    }
  }
}

static void p_ZN2xf6reduceILi1ELi0ELi5ELi256ELi256ELi1ELi3840ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEh_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_5_1_3840_1_ &_dst_mat,unsigned char dim)
{
  unsigned short width = (unsigned short )(_src_mat . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  unsigned short height = (unsigned short )_src_mat . rows;
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1, XF_NPPC8")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8) ) && \"NPC must be XF_NPPC1, XF_NPPC8\"","xf_reduce.hpp",(unsigned int )207,__PRETTY_FUNCTION__);
  ((int )height) <= 256 && ((int )width) <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((height <= ROWS ) && (width <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_reduce.hpp",(unsigned int )208,__PRETTY_FUNCTION__);
  p_ZN2xf14xFreduceKernelILi0ELi5ELi256ELi256ELi1ELi3840ELi0ELi1ELi1ELi12ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEhtt_1(_src_mat,_dst_mat,dim,height,width);
}

static _DataType_5_1_name p_ZN2xf15Mat_5_1_3840_1_4readIEEi_1(struct xf_Mat_5_1_3840_1_ *this_,int index)
{
  return this_ -> data[index];
}
const int _ZN13DataType_5_1_10pixelwidthE = 32;

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi64ELi5ELi1ELi3840ELi1ELi3840EEER3MatILi5ELi1ELi3840ELi1EER6streamI7ap_uintILi64EEE_1(struct xf_accel_utils *this_,struct xf_Mat_5_1_3840_1_ &srcMat,hls::stream< ap_uint< 64 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 64;
  const int N_size = _ZN13DataType_5_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 64 > r;
  _DataType_5_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=3840
    in = p_ZN2xf15Mat_5_1_3840_1_4readIEEi_1(&srcMat,i);
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

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi64ELi1ELi3840ELi1ELi1ELi32ELi1920EEER6streamI7ap_uintILi64EEEP7ap_uintILi64EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 64 >  > &srcStrm,class ap_uint< 64 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 32;
  int loop_count = (rows * cols * pixel_width + 64 - 1) / 64;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=1920
    dstPtr[i] = srcStrm . read();
  }
}
const int _ZN14StreamType_12_8bitdepthE = 32;
const int _ZN13DataType_5_1_8bitdepthE = 32;

static void p_ZN2xf11accel_utils11xfMat2ArrayILi64ELi5ELi1ELi3840ELi1EEER3MatILi5ELi1ELi3840ELi1EEP7ap_uintILi64EE_1(struct xf_accel_utils *this_,struct xf_Mat_5_1_3840_1_ &srcMat,class ap_uint< 64 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  64 >= _ZN14StreamType_12_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_5_1_8bitdepthE;
  hls::stream< ap_uint< 64 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi64ELi5ELi1ELi3840ELi1ELi3840EEER3MatILi5ELi1ELi3840ELi1EER6streamI7ap_uintILi64EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi64ELi1ELi3840ELi1ELi1ELi32ELi1920EEER6streamI7ap_uintILi64EEEP7ap_uintILi64EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi64ELi5ELi1ELi3840ELi1EEER3MatILi5ELi1ELi3840ELi1EEP7ap_uintILi64EE_1(struct xf_Mat_5_1_3840_1_ &srcMat,class ap_uint< 64 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi64ELi5ELi1ELi3840ELi1EEER3MatILi5ELi1ELi3840ELi1EEP7ap_uintILi64EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void reduce_accel(class ap_uint< 64 > *img_inp,class ap_uint< 64 > *img_out,int rows,int cols,int dim)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_out offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_out bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=dim bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPIX = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat);
  ;
  
#pragma HLS stream variable=in_mat.data depth=pCOLS/pNPIX
  in_mat . rows = rows;
  in_mat . cols = cols;
  struct xf_Mat_5_1_3840_1_ out_mat;
  p_ZN2xf15Mat_5_1_3840_1_C2IEEv_1(&out_mat);
  ;
  
#pragma HLS stream variable=out_mat.data depth=pCOLS/pNPIX
  if ((bool )dim) {
    out_mat . rows = rows;
    out_mat . cols = 1;
  }
   else {
    out_mat . rows = 1;
    out_mat . cols = cols;
  }
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  p_ZN2xf6reduceILi1ELi0ELi5ELi256ELi256ELi1ELi3840ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEh_1(in_mat,out_mat,(unsigned char )dim);
  p_ZN2xf11xfMat2ArrayILi64ELi5ELi1ELi3840ELi1EEER3MatILi5ELi1ELi3840ELi1EEP7ap_uintILi64EE_1(out_mat,img_out);
}
