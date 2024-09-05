#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
#include <stdio.h>
#include <xf_params.h>
#include "merlin_type_define.h"

static void p_ZN2xf18Rect_unsigned_int_C2IEEv_1(struct xf_Rect_unsigned_int_ *this_)
{
}

static void p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1(struct xf_Rect_unsigned_int_ *this_,const struct xf_Rect_unsigned_int_ &rect)
{
  this_ -> x = rect . x;
  this_ -> y = rect . y;
  this_ -> width = rect . width;
  this_ -> height = rect . height;
}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
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

static _DataType_0_1_name p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(struct xf_Mat_0_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static void p_ZN2xf19xFcropkernel_streamILi0ELi256ELi256ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjEtt_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_mat,struct xf_Rect_unsigned_int_ &roi,unsigned short height,unsigned short width)
{
  _StreamType_1_name val_src(0);
  _StreamType_1_name val_dst(0);
  _PixelType_0_name pix_pos(0);
  class ap_uint< 13 > r(roi . x);
  class ap_uint< 13 > r_new(roi . x + roi . height);
  class ap_uint< 13 > c(roi . y);
  class ap_uint< 13 > c_new(roi . y + roi . width);
  class ap_uint< 13 > i;
  class ap_uint< 13 > j;
  class ap_uint< 13 > k;
  unsigned long long idx = (unsigned long long )0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L2}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  rowLoop:
  for (i = 0; i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L4}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
    colLoop:
    for (j = 0; j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      val_src = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,(int )((i*width+j)));
      for (k = 0; k<1; k ++ ) {
        int col = (int )((j*1+k));
        if (i>=r && i<r_new && (col>=c && col<c_new)) {
          val_dst . range((pix_pos*_ZN13DataType_0_1_10pixelwidthE+(_ZN13DataType_0_1_10pixelwidthE - 1)),(pix_pos*_ZN13DataType_0_1_10pixelwidthE)) = val_src . range(((k*_ZN13DataType_0_1_10pixelwidthE+_ZN13DataType_0_1_10pixelwidthE)-1),(k*_ZN13DataType_0_1_10pixelwidthE));
          pix_pos ++ ;
          if (pix_pos==1) {
            p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst_mat,(int )(idx++),val_dst);
            pix_pos = 0;
          }
        }
      }
    }
  }
  if (pix_pos!=0) {
    p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst_mat,(int )(idx++),val_dst);
  }
}

static void p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_mat,struct xf_Rect_unsigned_int_ &roi)
{
  unsigned short width = (unsigned short )_src_mat . cols;
  unsigned short height = (unsigned short )_src_mat . rows;
  ((int )height) <= 256 && ((int )width) <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((height <= ROWS ) && (width <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_crop.hpp",(unsigned int )311,__PRETTY_FUNCTION__);
  roi . height <= ((unsigned int )height) && roi . width <= ((unsigned int )width) && ((bool )"ROI dimensions should be smaller or equal to the input image")?((void )0) : __assert_fail("((roi.height <= height ) && (roi.width <= width)) && \"ROI dimensions should be smaller or equal to the input image\"","xf_crop.hpp",(unsigned int )312,__PRETTY_FUNCTION__);
  roi . height > ((unsigned int )0) && roi . width > ((unsigned int )0) && ((bool )"ROI dimensions should be greater than 0")?((void )0) : __assert_fail("((roi.height > 0 ) && (roi.width > 0)) && \"ROI dimensions should be greater than 0\"","xf_crop.hpp",(unsigned int )313,__PRETTY_FUNCTION__);
  roi . height + roi . y <= ((unsigned int )height) && roi . width + roi . x <= ((unsigned int )width) && ((bool )"ROI area exceeds the input image area")?((void )0) : __assert_fail("((roi.height + roi.y <= height ) && (roi.width + roi.x <= width)) && \"ROI area exceeds the input image area\"","xf_crop.hpp",(unsigned int )314,__PRETTY_FUNCTION__);
  width = ((unsigned short )(_src_mat . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE));
{
    p_ZN2xf19xFcropkernel_streamILi0ELi256ELi256ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjEtt_1(_src_mat,_dst_mat,roi,height,width);
  }
}

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi8ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi8EEE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,hls::stream< ap_uint< 8 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 8;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 8 > r;
  _DataType_0_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    in = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&srcMat,i);
    if (bits_to_add <= N_size) {
      r . range((8 - 1),(8 - bits_to_add)) = in . range((bits_to_add - 1),0);
      dstStrm . write(r);
      if (bits_to_add != N_size) {
        r . range((N_size - bits_to_add - 1),0) = in . range((N_size - 1),bits_to_add);
      }
      bits_to_add = 8 - (N_size - bits_to_add);
    }
     else {
      r . range((8 - bits_to_add + N_size - 1),(8 - bits_to_add)) = in;
      bits_to_add -= N_size;
    }
  }
  if (bits_to_add != 8) {
    dstStrm . write(r);
  }
}

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEER6streamI7ap_uintILi8EEEP7ap_uintILi8EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 8 >  > &srcStrm,class ap_uint< 8 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 8 - 1) / 8;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L8}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    dstPtr[i] = srcStrm . read();
  }
}

static void p_ZN2xf11accel_utils11xfMat2ArrayILi8ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi8EE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 8 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  8 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  hls::stream< ap_uint< 8 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi8ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi8EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEER6streamI7ap_uintILi8EEEP7ap_uintILi8EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi8ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 8 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi8ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi8EE_1(&au,srcMat,dstPtr);
}

static void crop_one_stream_1(class ap_uint< 8 > *img_in,class ap_uint< 8 > *_dst,struct xf_Rect_unsigned_int_ roi,int height,int width)
{
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  
#pragma ACCEL INLINE OFF
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat);
  ;
  in_mat . rows = height;
  in_mat . cols = width;
  
#pragma HLS stream variable=in_mat.data depth=pCOLS/pNPC1
  struct xf_Mat_0_256_256_1_ out_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&out_mat);
  ;
  out_mat . rows = ((int )roi . height);
  out_mat . cols = ((int )roi . width);
  
#pragma HLS stream variable=out_mat.data depth=pCOLS/pNPC1
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1(img_in,in_mat);
  p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1(in_mat,out_mat,roi);
  p_ZN2xf11xfMat2ArrayILi8ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi8EE_1(out_mat,_dst);
}
#pragma ACCEL kernel

void crop_accel(class ap_uint< 8 > *img_in,class ap_uint< 8 > *_dst,class ap_uint< 8 > *_dst1,class ap_uint< 8 > *_dst2,int *roi,int height,int width)
{
  
#pragma HLS INTERFACE m_axi port=img_in offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=_dst offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=_dst1 offset=slave bundle=gmem3
  
#pragma HLS INTERFACE m_axi port=_dst2 offset=slave bundle=gmem4
  
#pragma HLS INTERFACE m_axi port=roi offset=slave bundle=gmem5
  
#pragma HLS INTERFACE s_axilite port=img_in bundle=control
  
#pragma HLS INTERFACE s_axilite port=_dst bundle=control
  
#pragma HLS INTERFACE s_axilite port=_dst1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=_dst2 bundle=control
  
#pragma HLS INTERFACE s_axilite port=roi bundle=control
  
#pragma HLS INTERFACE s_axilite port=height bundle=control
  
#pragma HLS INTERFACE s_axilite port=width bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  printf("started loading rect execution\n");
  struct xf_Rect_unsigned_int_ temp;
  p_ZN2xf18Rect_unsigned_int_C2IEEv_1(&temp);
  struct xf_Rect_unsigned_int_ _roi[3];
{
    int _i0;
    for (_i0 = 0; _i0 <= 2UL; ++_i0) {
      _roi[_i0] = temp;
    }
  }
  int _l_i = 0;
  int _l_j = 0;
// Canonicalized from: for(int i = 0, j = 0;j < 3 * 4;(i++ , j += 4)) {...}
// Standardize from: for(_l_j = 0;_l_j <= 11;_l_j += 4) {...}
  for (_l_j = 0; _l_j <= 2; _l_j++) {
    int _in_l_j = 0 + 4L * _l_j;
    _roi[_l_i] . x = ((unsigned int )roi[_in_l_j]);
    _roi[_l_i] . y = ((unsigned int )roi[_in_l_j + 1]);
    _roi[_l_i] . height = ((unsigned int )roi[_in_l_j + 2]);
    _roi[_l_i] . width = ((unsigned int )roi[_in_l_j + 3]);
    _l_i++;
  }
  _l_j = 8 + 4L;
  struct xf_Rect_unsigned_int_ data0;
  p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1(&data0,_roi[0]);
  ;
  struct xf_Rect_unsigned_int_ data1;
  p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1(&data1,_roi[1]);
  ;
  struct xf_Rect_unsigned_int_ data2;
  p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1(&data2,_roi[2]);
  ;
  struct xf_Rect_unsigned_int_ temp_0;
  p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1(&temp_0,data0);
  crop_one_stream_1(img_in,_dst,temp_0,height,width);
  struct xf_Rect_unsigned_int_ temp_1;
  p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1(&temp_1,data1);
  crop_one_stream_1(img_in,_dst1,temp_1,height,width);
  struct xf_Rect_unsigned_int_ temp_2;
  p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1(&temp_2,data2);
  crop_one_stream_1(img_in,_dst2,temp_2,height,width);
//		xf::Mat<TYPE, HEIGHT, WIDTH, NPC> in_mat;
//        in_mat.rows = height;
//        in_mat.cols = width;
//        #pragma HLS stream variable=in_mat.data depth=pCOLS/pNPC1
//		xf::Mat<TYPE, HEIGHT, WIDTH, NPC> in_mat1;
//        in_mat1.rows = height;
//        in_mat1.cols = width;
//        #pragma HLS stream variable=in_mat1.data depth=pCOLS/pNPC1
//		xf::Mat<TYPE, HEIGHT, WIDTH, NPC> in_mat2;
//        in_mat2.rows = height;
//        in_mat2.cols = width;
//        #pragma HLS stream variable=in_mat2.data depth=pCOLS/pNPC1
//		xf::Mat<TYPE, HEIGHT, WIDTH, NPC> out_mat;
//        out_mat.rows = _roi[0].height;
//        out_mat.cols = _roi[0].width;
//        #pragma HLS stream variable=out_mat.data depth=pCOLS/pNPC1
//		xf::Mat<TYPE, HEIGHT, WIDTH, NPC> out_mat1;
//        out_mat1.rows = _roi[1].height;
//        out_mat1.cols = _roi[1].width;
//        #pragma HLS stream variable=out_mat1.data depth=pCOLS/pNPC1
//		xf::Mat<TYPE, HEIGHT, WIDTH, NPC> out_mat2;
//        out_mat2.rows = _roi[2].height;
//        out_mat2.cols = _roi[2].width;
//        #pragma HLS stream variable=out_mat2.data depth=pCOLS/pNPC1
//        #pragma HLS DATAFLOW
//        xf::Array2xfMat<INPUT_PTR_WIDTH,TYPE,HEIGHT,WIDTH,NPC>(img_in,in_mat);
//        xf::Array2xfMat<INPUT_PTR_WIDTH,TYPE,HEIGHT,WIDTH,NPC>(img_in,in_mat1);
//        xf::Array2xfMat<INPUT_PTR_WIDTH,TYPE,HEIGHT,WIDTH,NPC>(img_in,in_mat2);
//		//xf::crop<TYPE, HEIGHT, WIDTH, MEMORYMAPPED_ARCH, NPC>(in_mat, out_mat,_roi[0]);
//		//xf::crop<TYPE, HEIGHT, WIDTH, MEMORYMAPPED_ARCH, NPC>(in_mat1, out_mat1,_roi[1]);
//		//xf::crop<TYPE, HEIGHT, WIDTH, MEMORYMAPPED_ARCH, NPC>(in_mat2, out_mat2,_roi[2]);
//		xf::crop<TYPE, HEIGHT, WIDTH, MEMORYMAPPED_ARCH, NPC>(in_mat,  out_mat,  data0);
//		xf::crop<TYPE, HEIGHT, WIDTH, MEMORYMAPPED_ARCH, NPC>(in_mat1, out_mat1, data1);
//		xf::crop<TYPE, HEIGHT, WIDTH, MEMORYMAPPED_ARCH, NPC>(in_mat2, out_mat2, data2);
//        xf::xfMat2Array<OUTPUT_PTR_WIDTH,TYPE,HEIGHT,WIDTH,NPC>(out_mat, _dst);
//        xf::xfMat2Array<OUTPUT_PTR_WIDTH,TYPE,HEIGHT,WIDTH,NPC>(out_mat1, _dst1);
//        xf::xfMat2Array<OUTPUT_PTR_WIDTH,TYPE,HEIGHT,WIDTH,NPC>(out_mat2, _dst2);
}
