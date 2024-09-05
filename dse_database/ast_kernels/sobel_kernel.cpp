#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
#include <stdio.h>
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
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

static _PixelType_0_name p_ZN2xf14xFGradientX3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_1(_PixelType_0_name t0,_PixelType_0_name t1,_PixelType_0_name t2,_PixelType_0_name m0,_PixelType_0_name m1,_PixelType_0_name m2,_PixelType_0_name b0,_PixelType_0_name b1,_PixelType_0_name b2)
{
  
#pragma HLS INLINE
  _PixelType_0_name g_x(0);
  short M00 = (short )(((int )((short )(m0))) << 1);
  short M01 = (short )(((int )((short )(m2))) << 1);
  short A00 = (short )((t2+b2));
  short S00 = (short )((t0+b0));
  short out_pix;
  out_pix = ((short )(((int )M01) - ((int )M00)));
  out_pix = ((short )(((int )out_pix) + ((int )A00)));
  out_pix = ((short )(((int )out_pix) - ((int )S00)));
  g_x = ap_uint< 8> (out_pix);
  if (0 == ((int )XF_8UP) || 0 == ((int )XF_24UP)) {
    if (((int )out_pix) < 0) {
      g_x = 0;
    }
     else {
      if (((int )out_pix) > 255) {
        g_x = 255;
      }
    }
  }
  return g_x;
}

static _PixelType_0_name p_ZN2xf14xFGradientY3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_1(_PixelType_0_name t0,_PixelType_0_name t1,_PixelType_0_name t2,_PixelType_0_name m0,_PixelType_0_name m1,_PixelType_0_name m2,_PixelType_0_name b0,_PixelType_0_name b1,_PixelType_0_name b2)
{
  _PixelType_0_name g_y(0);
  short M00 = (short )(((int )((short )(t1))) << 1);
  short M01 = (short )(((int )((short )(b1))) << 1);
  short A00 = (short )((b0+b2));
  short S00 = (short )((t0+t2));
  short out_pix;
  out_pix = ((short )(((int )M01) - ((int )M00)));
  out_pix = ((short )(((int )out_pix) + ((int )A00)));
  out_pix = ((short )(((int )out_pix) - ((int )S00)));
  g_y = ap_uint< 8> (out_pix);
  if (0 == ((int )XF_8UP) || 0 == ((int )XF_24UP)) {
    if (((int )out_pix) < 0) {
      g_y = 0;
    }
     else {
      if (((int )out_pix) > 255) {
        g_y = 255;
      }
    }
  }
  return g_y;
}

static void p_ZN2xf10xFSobel3x3ILi1ELi1ELi0ELi0EEEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EE_1(_PixelType_0_name *GradientvaluesX,_PixelType_0_name *GradientvaluesY,_PixelType_0_name *src_buf1,_PixelType_0_name *src_buf2,_PixelType_0_name *src_buf3)
{
  int STEP;
  if (0 == ((int )XF_48SP) || 0 == ((int )XF_16SP)) {
    STEP = 16;
  }
   else {
    STEP = 8;
  }
  int _s_j = 0;
  unsigned char _l_j = 0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L8}
  Compute_Grad_Loop:
// Canonicalized from: for(unsigned char j =(unsigned char )0;((int )_s_j) < _ZN20xfNPixelsPerCycle_1_4nppcE;_s_j++) {...}
  for (_s_j = ((unsigned char )0); _s_j <= 0; ++_s_j) {
    int p = 0;
    int _s_c = 0;
    int _s_k = 0;
    unsigned char _l_c = 0;
    unsigned char _l_k = 0;
// Canonicalized from: for(unsigned char c =(unsigned char )0, k =(unsigned char )0;((int )_s_c) < 1;(_s_c++ , _s_k += 8)) {...}
    for (_s_c = ((unsigned char )0); _s_c <= 0; ++_s_c) {
      GradientvaluesX[_s_j] . range((p + (STEP - 1)),p) = (p_ZN2xf14xFGradientX3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_1(src_buf1[_s_j] . range((((int )_s_k) + 7),((int )_s_k)),src_buf1[((int )_s_j) + 1] . range((((int )_s_k) + 7),((int )_s_k)),src_buf1[((int )_s_j) + 2] . range((((int )_s_k) + 7),((int )_s_k)),src_buf2[_s_j] . range((((int )_s_k) + 7),((int )_s_k)),src_buf2[((int )_s_j) + 1] . range((((int )_s_k) + 7),((int )_s_k)),src_buf2[((int )_s_j) + 2] . range((((int )_s_k) + 7),((int )_s_k)),src_buf3[_s_j] . range((((int )_s_k) + 7),((int )_s_k)),src_buf3[((int )_s_j) + 1] . range((((int )_s_k) + 7),((int )_s_k)),src_buf3[((int )_s_j) + 2] . range((((int )_s_k) + 7),((int )_s_k))) . operator unsigned long());
      GradientvaluesY[_s_j] . range((p + (STEP - 1)),p) = (p_ZN2xf14xFGradientY3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_1(src_buf1[_s_j] . range((((int )_s_k) + 7),((int )_s_k)),src_buf1[((int )_s_j) + 1] . range((((int )_s_k) + 7),((int )_s_k)),src_buf1[((int )_s_j) + 2] . range((((int )_s_k) + 7),((int )_s_k)),src_buf2[_s_j] . range((((int )_s_k) + 7),((int )_s_k)),src_buf2[((int )_s_j) + 1] . range((((int )_s_k) + 7),((int )_s_k)),src_buf2[((int )_s_j) + 2] . range((((int )_s_k) + 7),((int )_s_k)),src_buf3[_s_j] . range((((int )_s_k) + 7),((int )_s_k)),src_buf3[((int )_s_j) + 1] . range((((int )_s_k) + 7),((int )_s_k)),src_buf3[((int )_s_j) + 2] . range((((int )_s_k) + 7),((int )_s_k))) . operator unsigned long());
      p += STEP;
      _s_k += 8;
    }
  }
}
const int _ZN12PixelType_0_8bitdepthE = 8;

static void p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1(_PixelType_0_name *tmp_buf,_StreamType_1_name &val,unsigned short pos,short loopIter,unsigned short &shift)
{
  
#pragma HLS INLINE
  class ap_uint< 8 > STEP(_ZN12PixelType_0_8bitdepthE);
  for (class ap_int< 9 > i(0); i<loopIter; i ++ ) {
    _PixelType_0_uname tmp = tmp_buf[pos];
    val = val|tmp<<(shift*STEP);
    pos++;
    shift++;
  }
}

static void p_ZN2xf15ProcessSobel3x3ILi0ELi0ELi256ELi256ELi1ELi0ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA256_7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EER7ap_uintILi8EEtt7ap_uintILi13EERtRt7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi13EERiRi_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_gradx_mat,struct xf_Mat_0_256_256_1_ &_grady_mat,_StreamType_1_name buf[3][256 >> 0],_PixelType_0_name src_buf1[1 + 2],_PixelType_0_name src_buf2[1 + 2],_PixelType_0_name src_buf3[1 + 2],_PixelType_0_name GradientValuesX[1],_PixelType_0_name GradientValuesY[1],_StreamType_1_name &P0,_StreamType_1_name &P1,unsigned short img_width,unsigned short img_height,class ap_uint< 13 > row_ind,unsigned short &shift_x,unsigned short &shift_y,class ap_uint< 2 > tp,class ap_uint< 2 > mid,class ap_uint< 2 > bottom,class ap_uint< 13 > row,int &read_index,int &write_index)
{
  
#pragma HLS INLINE
  _StreamType_1_name buf0;
  _StreamType_1_name buf1;
  _StreamType_1_name buf2;
  unsigned short npc = (unsigned short )_ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 5 > buf_size(_ZN20xfNPixelsPerCycle_1_4nppcE + 2);
  
#pragma ACCEL PIPELINE auto{__PIPE__L4}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  Col_Loop:
  for (class ap_uint< 13 > col(0); col<img_width; col ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    if (row<img_height) {
      buf[(long )(row_ind)][(long )(col)] = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,read_index++);
    }
     else {
      buf[(long )(bottom)][(long )(col)] = 0;
    }
    buf0 = buf[(long )(tp)][(long )(col)];
    buf1 = buf[(long )(mid)][(long )(col)];
    buf2 = buf[(long )(bottom)][(long )(col)];
{
      src_buf1[2] = buf0;
      src_buf2[2] = buf1;
      src_buf3[2] = buf2;
    }
    p_ZN2xf10xFSobel3x3ILi1ELi1ELi0ELi0EEEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EE_1(GradientValuesX,GradientValuesY,src_buf1,src_buf2,src_buf3);
    if (col==0) {
      shift_x = ((unsigned short )0);
      shift_y = ((unsigned short )0);
      P0 = 0;
      P1 = 0;
      p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1(&GradientValuesX[0],P0,(unsigned short )1,(short )(((int )npc) - 1),shift_x);
      p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1(&GradientValuesY[0],P1,(unsigned short )1,(short )(((int )npc) - 1),shift_y);
    }
     else {
      p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1(&GradientValuesX[0],P0,(unsigned short )0,(short )1,shift_x);
      p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1(&GradientValuesY[0],P1,(unsigned short )0,(short )1,shift_y);
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_gradx_mat,write_index,P0);
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_grady_mat,write_index++,P1);
      shift_x = ((unsigned short )0);
      shift_y = ((unsigned short )0);
      P0 = 0;
      P1 = 0;
      p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1(&GradientValuesX[0],P0,(unsigned short )1,(short )(((int )npc) - 1),shift_x);
      p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1(&GradientValuesY[0],P1,(unsigned short )1,(short )(((int )npc) - 1),shift_y);
    }
    src_buf1[0] = src_buf1[(long )((buf_size-2))];
    src_buf1[1] = src_buf1[(long )((buf_size-1))];
    src_buf2[0] = src_buf2[(long )((buf_size-2))];
    src_buf2[1] = src_buf2[(long )((buf_size-1))];
    src_buf3[0] = src_buf3[(long )((buf_size-2))];
    src_buf3[1] = src_buf3[(long )((buf_size-1))];
  }
}

static void p_ZN2xf16xFSobelFilter3x3ILi0ELi0ELi256ELi256ELi1ELi0ELi0ELi1ELi1ELi1ELi256ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_matx,struct xf_Mat_0_256_256_1_ &_dst_maty,unsigned short img_height,unsigned short img_width)
{
  class ap_uint< 13 > row_ind;
  class ap_uint< 2 > tp;
  class ap_uint< 2 > mid;
  class ap_uint< 2 > bottom;
  class ap_uint< 8 > buf_size(_ZN20xfNPixelsPerCycle_1_4nppcE + 2);
  unsigned short shift_x = (unsigned short )0;
  unsigned short shift_y = (unsigned short )0;
  class ap_uint< 13 > row;
  class ap_uint< 13 > col;
  int read_index = 0;
  int write_index = 0;
  _PixelType_0_name GradientValuesX[1];
  _PixelType_0_name GradientValuesY[1];
  _PixelType_0_name src_buf1[1 + 2];
  _PixelType_0_name src_buf2[1 + 2];
  _PixelType_0_name src_buf3[1 + 2];
  _StreamType_1_name P0;
  _StreamType_1_name P1;
  _StreamType_1_name buf[3][256 >> 0];
#pragma HLS array_partition variable=buf complete dim=1
  if (false) {
  }
   else {
  }
  row_ind = 1;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  Clear_Row_Loop:
  for (col = 0; col<img_width; col ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    buf[0][(long )(col)] = 0;
    buf[(long )(row_ind)][(long )(col)] = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,read_index++);
  }
  row_ind ++ ;
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  Row_Loop:
  for (row = 1; row<((int )img_height) + 1; row ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    if (row_ind==2) {
      tp = 0;
      mid = 1;
      bottom = 2;
    }
     else {
      if (row_ind==0) {
        tp = 1;
        mid = 2;
        bottom = 0;
      }
       else {
        if (row_ind==1) {
          tp = 2;
          mid = 0;
          bottom = 1;
        }
      }
    }
    src_buf1[0] = src_buf1[1] = 0;
    src_buf2[0] = src_buf2[1] = 0;
    src_buf3[0] = src_buf3[1] = 0;
    P0 = P1 = 0;
    p_ZN2xf15ProcessSobel3x3ILi0ELi0ELi256ELi256ELi1ELi0ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA256_7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EER7ap_uintILi8EEtt7ap_uintILi13EERtRt7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi13EERiRi_1(_src_mat,_dst_matx,_dst_maty,buf,src_buf1,src_buf2,src_buf3,GradientValuesX,GradientValuesY,P0,P1,img_width,img_height,row_ind,shift_x,shift_y,tp,mid,bottom,row,read_index,write_index);
{
      int STEP;
      int q = 0;
      if (0 == ((int )XF_48SP) || 0 == ((int )XF_16SP)) {
        STEP = 16;
      }
       else {
        STEP = 8;
      }
      class ap_uint< 7 > _l_i = 0;
      class ap_uint< 7 > _l_k = 0;
// Canonicalized from: for(class ap_uint< 7 > i(0), k(0);i<1;(i ++ ) , k+=8) {...}
      for (_l_i = 0; _l_i <= 0; ++_l_i) {
        GradientValuesX[0] . range((q + (STEP - 1)),q) = (p_ZN2xf14xFGradientX3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_1(src_buf1[(long )((buf_size-3) . operator unsigned long())] . range((_l_k+7),_l_k),src_buf1[(long )((buf_size-2) . operator unsigned long())] . range((_l_k+7),_l_k),0,src_buf2[(long )((buf_size-3) . operator unsigned long())] . range((_l_k+7),_l_k),src_buf2[(long )((buf_size-2) . operator unsigned long())] . range((_l_k+7),_l_k),0,src_buf3[(long )((buf_size-3) . operator unsigned long())] . range((_l_k+7),_l_k),src_buf3[(long )((buf_size-2) . operator unsigned long())] . range((_l_k+7),_l_k),0) . operator unsigned long());
        GradientValuesY[0] . range((q + (STEP - 1)),q) = (p_ZN2xf14xFGradientY3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_1(src_buf1[(long )((buf_size-3) . operator unsigned long())] . range((_l_k+7),_l_k),src_buf1[(long )((buf_size-2) . operator unsigned long())] . range((_l_k+7),_l_k),0,src_buf2[(long )((buf_size-3) . operator unsigned long())] . range((_l_k+7),_l_k),src_buf2[(long )((buf_size-2) . operator unsigned long())] . range((_l_k+7),_l_k),0,src_buf3[(long )((buf_size-3) . operator unsigned long())] . range((_l_k+7),_l_k),src_buf3[(long )((buf_size-2) . operator unsigned long())] . range((_l_k+7),_l_k),0) . operator unsigned long());
        q += STEP;
        _l_k+=8;
      }
    }
    p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1(&GradientValuesX[0],P0,(unsigned short )0,(short )1,shift_x);
    p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1(&GradientValuesY[0],P1,(unsigned short )0,(short )1,shift_y);
    p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst_matx,write_index,P0);
    p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst_maty,write_index++,P1);
    shift_x = ((unsigned short )0);
    shift_y = ((unsigned short )0);
    P0 = 0;
    P1 = 0;
    row_ind ++ ;
    if (row_ind==3) {
      row_ind = 0;
    }
  }
}

static void p_ZN2xf5SobelILi0ELi3ELi0ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_matx,struct xf_Mat_0_256_256_1_ &_dst_maty)
{
  unsigned short width = (unsigned short )(_src_mat . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  unsigned short height = (unsigned short )_src_mat . rows;
  (3 == ((int )XF_FILTER_3X3) || 3 == ((int )XF_FILTER_5X5) || 3 == ((int )XF_FILTER_7X7)) && ((bool )" Filter width must be XF_FILTER_3X3, XF_FILTER_5X5 or XF_FILTER_7X7 ")?((void )0) : __assert_fail("((FILTER_TYPE == XF_FILTER_3X3) || (FILTER_TYPE == XF_FILTER_5X5) || (FILTER_TYPE == XF_FILTER_7X7)) && \" Filter width must be XF_FILTER_3X3, XF_FILTER_5X5 or XF_FILTER_7X7 \"","xf_sobel.hpp",(unsigned int )1540,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1 or XF_NPPC8")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8)) && \"NPC must be XF_NPPC1 or XF_NPPC8\"","xf_sobel.hpp",(unsigned int )1543,__PRETTY_FUNCTION__);
  0 == ((int )XF_BORDER_CONSTANT) && ((bool )"Border type must be XF_BORDER_CONSTANT ")?((void )0) : __assert_fail("(BORDER_TYPE == XF_BORDER_CONSTANT) && \"Border type must be XF_BORDER_CONSTANT \"","xf_sobel.hpp",(unsigned int )1545,__PRETTY_FUNCTION__);
  _src_mat . rows <= 256 && _src_mat . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_sobel.hpp",(unsigned int )1547,__PRETTY_FUNCTION__);
{
    p_ZN2xf16xFSobelFilter3x3ILi0ELi0ELi256ELi256ELi1ELi0ELi0ELi1ELi1ELi1ELi256ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1(_src_mat,_dst_matx,_dst_maty,height,width);
  }
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
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

void sobel_accel(class ap_uint< 256 > *img_inp,class ap_uint< 256 > *img_out1,class ap_uint< 256 > *img_out2,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_out1 offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=img_out2 offset=slave bundle=gmem3
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_out1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_out2 bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat);
  ;
  
#pragma HLS stream variable=in_mat.data depth=pCOLS/pNPC1
  in_mat . rows = rows;
  in_mat . cols = cols;
  struct xf_Mat_0_256_256_1_ _dstgx;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&_dstgx);
  ;
  
#pragma HLS stream variable=_dstgx.data depth=pCOLS/pNPC1
  _dstgx . rows = rows;
  _dstgx . cols = cols;
  struct xf_Mat_0_256_256_1_ _dstgy;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&_dstgy);
  ;
  
#pragma HLS stream variable=_dstgy.data depth=pCOLS/pNPC1
  _dstgy . rows = rows;
  _dstgy . cols = cols;
  
#pragma HLS DATAFLOW
  printf("Array2xfMat .... !!!\n");
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  printf("Sobel .... !!!\n");
  p_ZN2xf5SobelILi0ELi3ELi0ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(in_mat,_dstgx,_dstgy);
  printf("xfMat2Array .... !!!\n");
  p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1(_dstgx,img_out1);
  p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1(_dstgy,img_out2);
}
