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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
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

static void p_ZN2xf11xFLUTKernelILi256ELi256ELi1ELi0ELi1ELi1ELi1ELi256EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamIhEtt_1(hls::stream< _DataType_0_1_name  > &_src,hls::stream< _DataType_0_1_name  > &_dst,hls::stream< unsigned char  > &_lutptr,unsigned short height,unsigned short width)
{
  width = ((unsigned short )(((int )width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE));
  class ap_uint< 13 > i;
  class ap_uint< 13 > j;
  class ap_uint< 13 > k;
  unsigned char npc = (unsigned char )_ZN20xfNPixelsPerCycle_1_4nppcE;
  unsigned char _lut[256];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L8}
  for (i = 0; i<256; i ++ ) {
    _lut[(long )(i)] = _lutptr . read();
  }
  unsigned char lut[1 * 1][256];
  if (1 != 0 || 1 != 1) {
  }
  if (1 != 0 || 1 != 3) {
    
#pragma ACCEL PIPELINE auto{__PIPE__L9}
    for (i = 0; i<((int )npc) * 1; i ++ ) {
      
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L12}
      for (j = 0; j<256; j ++ ) {
        lut[(long )(i)][(long )(j)] = _lut[(long )(j)];
      }
    }
  }
  _StreamType_1_name val_src;
  _StreamType_1_name val_dst;
  
#pragma ACCEL PIPELINE auto{__PIPE__L10}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L10}
  rowLoop:
  for (i = 0; i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L13}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L13}
    colLoop:
    for (j = 0; j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      val_src = _src . read();
      unsigned char l = (unsigned char )0;
      int c = 0;
      procLoop:
// Standardize from: for(k = 0;k<_ZN13StreamType_1_8bitdepthE;k+=8) {...}
      for (k = 0; k <= 0L; k++) {
        class ap_uint< 13 > _in_k = 0L + 8L * k;
        _PixelType_0_name p;
        p = val_src . range((_in_k+(8 - 1)),_in_k);
        if (1 == ((int )XF_NPPC1) && 1 == 1) {
          val_dst . range((_in_k+(8 - 1)),_in_k) = ((unsigned long )_lut[(long )(p)]);
        }
         else {
          val_dst . range((_in_k+(8 - 1)),_in_k) = ((unsigned long )lut[l][(long )(p)]);
          l++;
        }
      }
      k = 0L + 8L;
      _dst . write(val_dst);
    }
  }
}

static void p_ZN2xf10LUT_kernelILi256ELi256ELi1ELi0ELi1ELi1ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamIhEtt_1(hls::stream< _DataType_0_1_name  > &_src,hls::stream< _DataType_0_1_name  > &_dst,hls::stream< unsigned char  > &_lut,unsigned short height,unsigned short width)
{
  p_ZN2xf11xFLUTKernelILi256ELi256ELi1ELi0ELi1ELi1ELi1ELi256EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamIhEtt_1(_src,_dst,_lut,height,width);
}

static void p_ZN2xf3LUTILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPh_1(struct xf_Mat_0_256_256_1_ &_src,struct xf_Mat_0_256_256_1_ &_dst,unsigned char *_lut)
{
  hls::stream< _DataType_0_1_name  > _src_stream;
  hls::stream< _DataType_0_1_name  > _dst_stream;
  hls::stream< unsigned char  > _lut_stream;
  
#pragma HLS dataflow
  int src_rows;
  int src_cols;
  int dst_rows;
  int dst_cols;
  src_rows = _src . rows;
  src_cols = _src . cols;
  dst_rows = _dst . rows;
  dst_cols = _dst . cols;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  Read_Loop:
  for (int i = 0; i < src_rows; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
    for (int j = 0; j < src_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256/1
      _src_stream . write((p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src,i * (src_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + j)));
    }
  }
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  Read_LUT:
  for (int i = 0; i < 256; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    _lut_stream . write(( *(_lut + i)));
  }
  p_ZN2xf10LUT_kernelILi256ELi256ELi1ELi0ELi1ELi1ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamIhEtt_1(_src_stream,_dst_stream,_lut_stream,(unsigned short )src_rows,(unsigned short )src_cols);
  
#pragma ACCEL PIPELINE auto{__PIPE__L2}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  for (int i = 0; i < dst_rows; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
    for (int j = 0; j < dst_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256/1
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst,i * (dst_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + j,(_dst_stream . read()));
    }
  }
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L11}
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

void lut_accel(class ap_uint< 64 > *imgInput_data,class ap_uint< 64 > *imgOutput_data,unsigned char *lut_ptr,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=imgInput_data offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=imgOutput_data offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=lut_ptr offset=slave bundle=gmem3
  
#pragma HLS INTERFACE s_axilite port=imgInput_data bundle=control
  
#pragma HLS INTERFACE s_axilite port=imgOutput_data bundle=control
  
#pragma HLS INTERFACE s_axilite port=lut_ptr bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ imgInput;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&imgInput);
  ;
  
#pragma HLS stream variable=imgInput.data depth=pCOLS/pNPC1
  imgInput . rows = rows;
  imgInput . cols = cols;
  struct xf_Mat_0_256_256_1_ imgOutput;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&imgOutput);
  ;
  
#pragma HLS stream variable=imgOutput.data depth=pCOLS/pNPC1
  imgOutput . rows = rows;
  imgOutput . cols = cols;
  
#pragma HLS dataflow
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(imgInput_data,imgInput);
  p_ZN2xf3LUTILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPh_1(imgInput,imgOutput,lut_ptr);
  p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1(imgOutput,imgOutput_data);
}
