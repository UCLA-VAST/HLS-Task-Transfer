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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
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

static int p_ZN2xf17borderInterpolateEiii(int p,int len,int borderType)
{
  if (p >= 0 && p < len) {
    return p;
  }
   else {
    p = - 1;
  }
  return p;
}

static _DataType_0_1_name p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(struct xf_Mat_0_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static void p_ZN2xf15xFApplyFilter2DILi0ELi0ELi3ELi3ELi1EEEPA3_7ap_uintILi8EEPA3_sR7ap_uintILi8EEh_1(_PixelType_0_name _kernel_pixel[3][3],short _kernel_filter[3][3],_PixelType_0_name &out,unsigned char shift)
{
  class ap_int< 32 > sum(0);
  class ap_int< 32 > in_step(0);
  class ap_int< 32 > out_step(0);
  class ap_int< 32 > p(0);
  class ap_int< 32 > temp(0);
  class ap_int< 32 > tmp_sum(0);
  FILTER_LOOP_HEIGHT:
{
  }
  class ap_uint< 24 > bgr_val;
  if (0 == ((int )XF_8UP) || 0 == ((int )XF_24UP)) {
    in_step = 8;
    out_step = 8;
  }
   else {
    in_step = 8;
    out_step = 16;
  }
  class ap_uint< 8 > _l_c = 0;
  class ap_uint< 8 > _l_k = 0;
// Canonicalized from: for(class ap_uint< 8 > c(0), k(0);c<1;(c ++ ) , k+=out_step) {...}
  
#pragma ACCEL PIPELINE auto{__PIPE__L15}
  for (_l_c = 0; _l_c <= 0; ++_l_c) {
    sum = 0;
    temp = 0;
    tmp_sum = 0;
    
#pragma ACCEL PIPELINE auto{__PIPE__L16}
    for (class ap_int< 8 > m(0); m<3; m ++ ) {
      FILTER_LOOP_WIDTH:
      for (class ap_int< 8 > n(0); n<3; n ++ ) {
        _PixelType_0_name src_v = _kernel_pixel[((3-m)-1) . operator long()][((3 - 1)-n) . operator long()];
        short filter_v = _kernel_filter[m . operator long()][n . operator long()];
        temp = (src_v . range(((int )((p+(in_step-1)) . operator long())),((int )(p . operator long()))) * ((unsigned long )filter_v));
        sum = sum+temp;
      }
    }
    p = p+8;
    tmp_sum = sum>>shift;
    if (0 == ((int )XF_8UP) || 0 == ((int )XF_24UP)) {
      if (tmp_sum>(1 << 8) - 1) {
        out . range((_l_k+7),_l_k) = ((unsigned long )((1 << 8) - 1));
      }
       else {
        if (tmp_sum<0) {
          out . range((_l_k+7),_l_k) = ((unsigned long )0);
        }
         else {
          out . range((_l_k+7),_l_k) = ((unsigned long )(tmp_sum . operator long()));
        }
      }
    }
     else {
      if (0 == ((int )XF_16SP) || 0 == ((int )XF_48SP)) {
        if (tmp_sum>(1 << 16) - 1) {
          out . range((_l_k+15),_l_k) = ((unsigned long )((1 << 16) - 1));
        }
         else {
          if (tmp_sum<-(1 << 16)) {
            out . range((_l_k+15),_l_k) = ((unsigned long )(-(1 << 16)));
          }
           else {
            out . range((_l_k+15),_l_k) = ((unsigned long )(tmp_sum . operator long()));
          }
        }
      }
    }
    _l_k+=out_step;
  }
}

static void p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_mat,short _filter_kernel[3][3],unsigned char shift,unsigned short rows,unsigned short cols)
{
  _StreamType_1_name fillvalue(0);
  _PixelType_0_name src_kernel_win[3][3];
#pragma HLS array_partition variable=src_kernel_win complete dim=1
#pragma HLS array_partition variable=src_kernel_win complete dim=2
  _StreamType_1_name k_buf[3][256 >> 0];
#pragma HLS array_partition variable=k_buf complete dim=1
  _StreamType_1_name right_border_buf[3][3];
#pragma HLS array_partition variable=right_border_buf complete dim=1
#pragma HLS array_partition variable=right_border_buf complete dim=2
  _StreamType_1_name col_buf[3];
#pragma HLS array_partition variable=col_buf complete dim=1
  
#pragma HLS DEPENDENCE variable=k_buf inter false
  ((int )rows) >= 8?((void )0) : __assert_fail("rows >= 8","xf_custom_convolution.hpp",(unsigned int )670,__PRETTY_FUNCTION__);
  ((int )cols) >= 8?((void )0) : __assert_fail("cols >= 8","xf_custom_convolution.hpp",(unsigned int )671,__PRETTY_FUNCTION__);
  ((int )rows) <= 256?((void )0) : __assert_fail("rows <= ROWS","xf_custom_convolution.hpp",(unsigned int )672,__PRETTY_FUNCTION__);
  ((int )cols) <= 256?((void )0) : __assert_fail("cols <= COLS","xf_custom_convolution.hpp",(unsigned int )673,__PRETTY_FUNCTION__);
  int heightloop = ((int )rows) + 3 - 1 + 3;
  int widthloop = ((int )cols) + 3 - 1;
  unsigned short i;
  unsigned short j;
  int rd_ind = 0;
  int wr_ind = 0;
  unsigned short anchorx = (unsigned short )(3 >> 1);
  unsigned short anchory = (unsigned short )(3 >> 1);
  short ImagLocx = (short )0;
  short ImagLocy = (short )0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L2}
  ROW_LOOP:
  for (i = ((unsigned short )0); ((int )i) < heightloop; i++) {
    
#pragma HLS LOOP_FLATTEN OFF
    
#pragma ACCEL PIPELINE auto{__PIPE__L5}
    COL_LOOP:
    for (j = ((unsigned short )0); ((int )j) < widthloop; j++) {
      ImagLocx = ((short )(((int )j) - ((int )anchorx)));
      ImagLocy = ((short )(((int )i) - 3 - ((int )anchory)));
      short x = (short )(p_ZN2xf17borderInterpolateEiii((int )ImagLocx,(int )cols,0));
      
#pragma ACCEL PIPELINE auto{__PIPE__L8}
      for (class ap_int< 8 > row(0); row<3; row ++ ) {
// Standardize from: for(class ap_int< 8 > col(3 - 1);col>=1;col -- ) {...}
        for (class ap_int< 8 > col = 0; col <= 1L; col++) {
          class ap_int< 8 > _in_col = 2L + -1 * col;
          src_kernel_win[row][_in_col] = src_kernel_win[row][(_in_col-1)];
        }
      }
      for (class ap_int< 8 > buf_row(0); buf_row<3; buf_row ++ ) {
        ((int )x) < 256?((void )0) : __assert_fail("(x < COLS)","xf_custom_convolution.hpp",(unsigned int )723,__PRETTY_FUNCTION__);
        col_buf[buf_row] = (((int )x) < 0?fillvalue : k_buf[buf_row][x]);
      }
      if (((int )ImagLocy) < -((int )anchory) || ((int )ImagLocy) >= 3 - 1 && ((int )ImagLocy) < ((int )rows) - 1) {
        if (((int )ImagLocx) >= 0 && ((int )ImagLocx) < ((int )cols)) {
          _StreamType_1_name Toppixel = col_buf[3 - 1];
          src_kernel_win[3 - 1][0] = Toppixel;
          if (((int )ImagLocx) >= ((int )cols) - 3) {
            right_border_buf[0][((int )ImagLocx) - (((int )cols) - 3)] = Toppixel;
          }
// Standardize from: for(class ap_int< 8 > buf_row(3 - 1);buf_row>=1;buf_row -- ) {...}
          for (class ap_int< 8 > buf_row = 0; buf_row <= 1L; buf_row++) {
            class ap_int< 8 > _in_buf_row = 2L + -1 * buf_row;
            _StreamType_1_name temp = col_buf[(_in_buf_row-1)];
            src_kernel_win[(_in_buf_row-1)][0] = temp;
            k_buf[_in_buf_row][x] = temp;
            if (((int )ImagLocx) >= ((int )cols) - 3) {
              right_border_buf[(3-_in_buf_row)][((int )ImagLocx) - (((int )cols) - 3)] = temp;
            }
          }
          _StreamType_1_name temp(0);
          temp = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,rd_ind);
          rd_ind++;
          k_buf[0][x] = temp;
        }
         else {
          if (((int )ImagLocx) < 0) {
            for (int buf_row = 0; buf_row < 3; buf_row++) {
              src_kernel_win[buf_row][0] = fillvalue;
            }
          }
           else {
            if (((int )ImagLocx) >= ((int )cols)) {
              for (int buf_row = 0; buf_row < 3; buf_row++) {
                src_kernel_win[buf_row][0] = fillvalue;
              }
            }
          }
        }
      }
       else {
        if (((int )ImagLocy) >= 0) {
          int ref = 3 - 1;
          if (((int )ImagLocy) >= ((int )rows) - 1) {
            ref = ((int )rows) - 1;
          }
          int y = (int )ImagLocy;
          for (int buf_row = 0; buf_row < 3; buf_row++) {
            int t = p_ZN2xf17borderInterpolateEiii(y,(int )rows,0);
            int locy = ref - t;
            t < 0 || locy >= 0 && locy < 3?((void )0) : __assert_fail("t < 0 || (locy >= 0 && locy < K_HEIGHT)","xf_custom_convolution.hpp",(unsigned int )775,__PRETTY_FUNCTION__);
            if (y >= ((int )rows)) {
              src_kernel_win[buf_row][0] = fillvalue;
            }
             else {
              if (y < 0) {
                src_kernel_win[buf_row][0] = fillvalue;
              }
               else {
                src_kernel_win[buf_row][0] = col_buf[locy];
              }
            }
            y--;
          }
        }
      }
      if (((int )i) >= 3 + 3 - 1 && ((int )j) >= 3 - 1) {
        _PixelType_0_name temp;
        p_ZN2xf15xFApplyFilter2DILi0ELi0ELi3ELi3ELi1EEEPA3_7ap_uintILi8EEPA3_sR7ap_uintILi8EEh_1(src_kernel_win,_filter_kernel,temp,shift);
        _StreamType_1_name temp1 = temp;
        p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst_mat,wr_ind,temp1);
        wr_ind++;
      }
    }
  }
}

static void p_ZN2xf8filter2DILi0ELi3ELi3ELi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPsh_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_mat,short filter[3 * 3],unsigned char _shift)
{
  _src_mat . rows <= 256 && _src_mat . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_custom_convolution.hpp",(unsigned int )815,__PRETTY_FUNCTION__);
  unsigned short img_width = (unsigned short )(_src_mat . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  unsigned short img_height = (unsigned short )_src_mat . rows;
  short lfilter[3][3];
#pragma HLS array_partition variable=lfilter complete dim=1
#pragma HLS array_partition variable=lfilter complete dim=2
  int _s_i = 0;
  unsigned char _l_i = 0;
// Canonicalized from: for(unsigned char i =(unsigned char )0;((int )_s_i) < 3;_s_i++) {...}
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  for (_s_i = ((unsigned char )0); _s_i <= 2; ++_s_i) {
    int _s_j = 0;
    unsigned char _l_j = 0;
// Canonicalized from: for(unsigned char j =(unsigned char )0;((int )_s_j) < 3;_s_j++) {...}
    for (_s_j = ((unsigned char )0); _s_j <= 2; ++_s_j) {
      lfilter[_s_i][_s_j] = filter[((int )_s_i) * 3 + ((int )_s_j)];
    }
  }
{
    p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1(_src_mat,_dst_mat,lfilter,_shift,img_height,img_width);
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
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

void Filter2d_accel(class ap_uint< 256 > *_src,class ap_uint< 256 > *_dst,int rows,int cols,short *filter_ptr,unsigned char shift)
{
  
#pragma HLS INTERFACE m_axi port=_src offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=_dst offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=filter_ptr offset=slave bundle=gmem3
  
#pragma HLS INTERFACE s_axilite port=_src bundle=control
  
#pragma HLS INTERFACE s_axilite port=_dst bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=filter_ptr bundle=control
  
#pragma HLS INTERFACE s_axilite port=shift bundle=control
  
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
  struct xf_Mat_0_256_256_1_ out_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&out_mat);
  ;
  
#pragma HLS stream variable=out_mat.data depth=pCOLS/pNPC1
  out_mat . rows = rows;
  out_mat . cols = cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(_src,in_mat);
  p_ZN2xf8filter2DILi0ELi3ELi3ELi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPsh_1(in_mat,out_mat,filter_ptr,shift);
  p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1(out_mat,_dst);
}
