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

static void p_ZN2xf11accel_utils13Array2hlsStrmILi32ELi256ELi256ELi1ELi1ELi8ELi16384EEEP7ap_uintILi32EER6streamI7ap_uintILi32EEEii_1(struct xf_accel_utils *this_,class ap_uint< 32 > *srcPtr,hls::stream< ap_uint< 32 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 32 - 1) / 32;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=16384
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ *this_,int index,_DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_0_1_10pixelwidthE = 8;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi32ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi32EEER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 32 >  > &srcStrm,struct xf_Mat_0_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 32 > r;
  _DataType_0_1_name out;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    if (valid_bits < N_size) {
      if (valid_bits != 0) {
        out . range((valid_bits - 1),0) = r . range((32 - 1),(32 - valid_bits));
      }
      r = srcStrm . read();
      out . range((N_size - 1),valid_bits) = r . range((N_size - valid_bits - 1),0);
      valid_bits = 32 - (N_size - valid_bits);
    }
     else {
      out = r . range((32 - valid_bits + N_size - 1),(32 - valid_bits));
      valid_bits -= N_size;
    }
    p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&dstMat,i,out);
  }
}
const int _ZN13StreamType_1_8bitdepthE = 8;
const int _ZN13DataType_0_1_8bitdepthE = 8;

static void p_ZN2xf11accel_utils11Array2xfMatILi32ELi0ELi256ELi256ELi1EEEP7ap_uintILi32EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class ap_uint< 32 > *srcPtr,struct xf_Mat_0_256_256_1_ &dstMat)
{
  
#pragma HLS DATAFLOW
  32 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )665,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  hls::stream< ap_uint< 32 >  > strm;
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  p_ZN2xf11accel_utils13Array2hlsStrmILi32ELi256ELi256ELi1ELi1ELi8ELi16384EEEP7ap_uintILi32EER6streamI7ap_uintILi32EEEii_1(this_,srcPtr,strm,rows,cols);
  p_ZN2xf11accel_utils13hlsStrm2xfMatILi32ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi32EEER3MatILi0ELi256ELi256ELi1EE_1(this_,strm,dstMat);
}

static void p_ZN2xf11Array2xfMatILi32ELi0ELi256ELi256ELi1EEEP7ap_uintILi32EER3MatILi0ELi256ELi256ELi1EE_1(class ap_uint< 32 > *srcPtr,struct xf_Mat_0_256_256_1_ &dstMat)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11Array2xfMatILi32ELi0ELi256ELi256ELi1EEEP7ap_uintILi32EER3MatILi0ELi256ELi256ELi1EE_1(&au,srcPtr,dstMat);
}

static _DataType_0_1_name p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(struct xf_Mat_0_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}

static void p_Z20xFPyrDownApplykernelILi1ELi0ELi5ELi25ELi1EEP7ap_uintILi8EEPA5_7ap_uintILi8EE7ap_uintILi8EE_1(_PixelType_0_uname OutputValues[1],_PixelType_0_uname src_buf[5][1 + (5 - 1)],class ap_uint< 8 > win_size)
{
  class ap_uint< 32 > array[25];
  int array_ptr = 0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L20}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L20}
  Compute_Grad_Loop:
  for (int copy_arr = 0; copy_arr < 5; copy_arr++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
    for (int copy_in = 0; copy_in < 5; copy_in++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
      array[array_ptr] = src_buf[copy_arr][copy_in];
      array_ptr++;
    }
  }
  class ap_uint< 32 > out_pixel(0);
  int k[25] = {(1), (4), (6), (4), (1), (4), (16), (24), (16), (4), (6), (24), (36), (24), (6), (4), (16), (24), (16), (4), (1), (4), (6), (4), (1)};
  int _l_i = 0;
  int _l_k = 0;
// Canonicalized from: for(int i = 0, k = 0;i < 1;(i++ , k += 8)) {...}
  for (_l_i = 0; _l_i <= 0; ++_l_i) {
    out_pixel = (array[0 * 5 + 0] . range((_l_k + 7),_l_k) + array[0 * 5 + 4] . range((_l_k + 7),_l_k) + array[4 * 5 + 0] . range((_l_k + 7),_l_k) + array[4 * 5 + 4] . range((_l_k + 7),_l_k));
    out_pixel+=array[0 * 5 + 1] . range((_l_k + 7),_l_k) + array[0 * 5 + 3] . range((_l_k + 7),_l_k) + array[1 * 5 + 0] . range((_l_k + 7),_l_k) + array[1 * 5 + 4] . range((_l_k + 7),_l_k) << 2;
    out_pixel+=array[4 * 5 + 1] . range((_l_k + 7),_l_k) + array[4 * 5 + 3] . range((_l_k + 7),_l_k) + array[3 * 5 + 0] . range((_l_k + 7),_l_k) + array[3 * 5 + 4] . range((_l_k + 7),_l_k) << 2;
    out_pixel+=array[0 * 5 + 2] . range((_l_k + 7),_l_k) + array[2 * 5 + 0] . range((_l_k + 7),_l_k) + array[2 * 5 + 4] . range((_l_k + 7),_l_k) + array[4 * 5 + 2] . range((_l_k + 7),_l_k) << 2;
    out_pixel+=array[0 * 5 + 2] . range((_l_k + 7),_l_k) + array[2 * 5 + 0] . range((_l_k + 7),_l_k) + array[2 * 5 + 4] . range((_l_k + 7),_l_k) + array[4 * 5 + 2] . range((_l_k + 7),_l_k) << 1;
    out_pixel+=array[1 * 5 + 1] . range((_l_k + 7),_l_k) + array[1 * 5 + 3] . range((_l_k + 7),_l_k) + array[3 * 5 + 1] . range((_l_k + 7),_l_k) + array[3 * 5 + 3] . range((_l_k + 7),_l_k) << 4;
    out_pixel+=array[1 * 5 + 2] . range((_l_k + 7),_l_k) + array[2 * 5 + 1] . range((_l_k + 7),_l_k) + array[2 * 5 + 3] . range((_l_k + 7),_l_k) + array[3 * 5 + 2] . range((_l_k + 7),_l_k) << 4;
    out_pixel+=array[1 * 5 + 2] . range((_l_k + 7),_l_k) + array[2 * 5 + 1] . range((_l_k + 7),_l_k) + array[2 * 5 + 3] . range((_l_k + 7),_l_k) + array[3 * 5 + 2] . range((_l_k + 7),_l_k) << 3;
    out_pixel+=array[2 * 5 + 2] . range((_l_k + 7),_l_k) << 5;
    out_pixel+=array[2 * 5 + 2] . range((_l_k + 7),_l_k) << 2;
    OutputValues[0] . range((_l_k + 7),_l_k) = ((unsigned long )((unsigned char )((out_pixel+128>>8) . operator unsigned long())));
    _l_k += 8;
  }
  return ;
}

static void p_Z24xFPyrDownprocessgaussianILi256ELi256ELi0ELi1ELi1ELi258ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA5_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EE_1(hls::stream< _DataType_0_1_name  > &_src_mat,hls::stream< _DataType_0_1_name  > &_out_mat,_DataType_0_1_name buf[5][256 >> 0],_PixelType_0_uname src_buf[5][1 + (5 - 1)],_PixelType_0_uname OutputValues[1],_PixelType_0_uname &P0,unsigned short img_width,unsigned short img_height,unsigned short &shift_x,class ap_uint< 13 > row_ind[5],class ap_uint< 13 > row,class ap_uint< 8 > win_size)
{
  _DataType_0_1_name buf_cop[5];
  unsigned short npc = (unsigned short )_ZN20xfNPixelsPerCycle_1_4nppcE;
  
#pragma ACCEL PIPELINE auto{__PIPE__L15}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L15}
  Col_Loop:
  for (class ap_uint< 13 > col(0); col<((int )img_width) + (5 >> 1); col ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=258
    if (row<img_height && col<img_width) {
      buf[(long )(row_ind[(long )((win_size-1))])][(long )(col)] = _src_mat . read();
    }
     else {
      buf[(long )(row_ind[(long )((win_size-1))])][(long )(col)] = 0;
    }
    for (int copy_buf_var = 0; copy_buf_var < 5; copy_buf_var++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
      if (row>((int )img_height) - 1 && copy_buf_var>(win_size-1)-(row-(((int )img_height) - 1))) {
        buf_cop[copy_buf_var] = buf[(long )(row_ind[((win_size-1)-(row-(((int )img_height) - 1)))])][(long )(col)];
      }
       else {
        buf_cop[copy_buf_var] = buf[(long )(row_ind[copy_buf_var])][(long )(col)];
      }
    }
    for (int extract_px = 0; extract_px < 5; extract_px++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
      if (col<img_width) {
        src_buf[extract_px][(long )((win_size-1))] = buf_cop[extract_px];
      }
       else {
        src_buf[extract_px][(long )((win_size-1))] = src_buf[extract_px][(long )((win_size-2))];
      }
    }
    p_Z20xFPyrDownApplykernelILi1ELi0ELi5ELi25ELi1EEP7ap_uintILi8EEPA5_7ap_uintILi8EE7ap_uintILi8EE_1(OutputValues,src_buf,win_size);
    if (col>=win_size>>1) {
      _out_mat . write(OutputValues[0]);
    }
    
#pragma ACCEL PIPELINE auto{__PIPE__L18}
    
#pragma ACCEL TILE FACTOR=auto{__TILE__L18}
    for (int wrap_buf = 0; wrap_buf < 5; wrap_buf++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
      for (int col_warp = 0; col_warp < 5 - 1; col_warp++) {
        
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
        if (col==0) {
          src_buf[wrap_buf][col_warp] = src_buf[wrap_buf][(long )((win_size-1))];
        }
         else {
          src_buf[wrap_buf][col_warp] = src_buf[wrap_buf][col_warp + 1];
        }
      }
    }
  }
}

static void p_Z23xf_pyrdown_gaussian_nxnILi256ELi256ELi0ELi1ELi1ELi258ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtt_1(hls::stream< _DataType_0_1_name  > &_src_mat,hls::stream< _DataType_0_1_name  > &_out_mat,class ap_uint< 8 > win_size,unsigned short img_height,unsigned short img_width)
{
  class ap_uint< 13 > row_ind[5];
  class ap_uint< 8 > buf_size(_ZN20xfNPixelsPerCycle_1_4nppcE + (5 - 1));
  unsigned short shift_x = (unsigned short )0;
  class ap_uint< 13 > row;
  class ap_uint< 13 > col;
  _DataType_0_1_name OutputValues[1];
  _PixelType_0_uname src_buf[5][1 + 4];
#pragma HLS array_partition variable=src_buf complete dim=1
#pragma HLS array_partition variable=src_buf complete dim=2
  _DataType_0_1_name P0;
  _DataType_0_1_name buf[5][256 >> 0];
#pragma HLS array_partition variable=buf complete dim=1
  for (int init_row_ind = 0; init_row_ind<win_size; init_row_ind++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
    row_ind[init_row_ind] = init_row_ind;
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L9}
  read_lines:
  for (int init_buf = (int )(row_ind[(long )((win_size>>1))]); init_buf<row_ind[(long )((win_size-1))]; init_buf++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L12}
    for (col = 0; col<img_width; col ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=258
      buf[init_buf][(long )(col)] = _src_mat . read();
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L10}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L10}
  for (col = 0; col<img_width; col ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=258
    for (int init_buf = 0; init_buf < 5 >> 1; init_buf++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
      buf[init_buf][(long )(col)] = buf[(long )(row_ind[(long )((win_size>>1))])][(long )(col)];
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L11}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L11}
  Row_Loop:
  for (row = win_size>>1; row<img_height+(win_size>>1); row ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    P0 = 0;
    p_Z24xFPyrDownprocessgaussianILi256ELi256ELi0ELi1ELi1ELi258ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA5_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EE_1(_src_mat,_out_mat,buf,src_buf,OutputValues,P0,img_width,img_height,shift_x,row_ind,row,win_size);
    class ap_uint< 13 > zero_ind = row_ind[0];
    for (int init_row_ind = 0; init_row_ind < 5 - 1; init_row_ind++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=5
      row_ind[init_row_ind] = row_ind[init_row_ind + 1];
    }
    row_ind[(long )((win_size-1))] = zero_ind;
  }
}

static void p_Z21xFPyrDownGaussianBlurILi256ELi256ELi0ELi1ELi1ELi0ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEitt_1(hls::stream< _DataType_0_1_name  > &_src,hls::stream< _DataType_0_1_name  > &_dst,class ap_uint< 8 > win_size,int _border_type,unsigned short imgheight,unsigned short imgwidth)
{
  ((int )imgheight) <= 256 && ((int )imgwidth) <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((imgheight <= ROWS ) && (imgwidth <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_pyr_down_gaussian_blur.hpp",(unsigned int )301,__PRETTY_FUNCTION__);
  win_size<=5 && ((bool )"win_size must not be greater than WIN_SZ")?((void )0) : __assert_fail("(win_size <= WIN_SZ) && \"win_size must not be greater than WIN_SZ\"","xf_pyr_down_gaussian_blur.hpp",(unsigned int )303,__PRETTY_FUNCTION__);
  imgwidth = ((unsigned short )(((int )imgwidth) >> _ZN20xfNPixelsPerCycle_1_9datashiftE));
  p_Z23xf_pyrdown_gaussian_nxnILi256ELi256ELi0ELi1ELi1ELi258ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtt_1(_src,_dst,5,imgheight,imgwidth);
}

static void p_ZN2xf15xFpyrDownKernelILj256ELj256ELj0ELj1ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1(struct xf_Mat_0_256_256_1_ &_src,struct xf_Mat_0_256_256_1_ &_dst,unsigned short in_rows,unsigned short in_cols)
{
  
#pragma HLS DATAFLOW
  hls::stream< _DataType_0_1_name  > _filter_in;
  hls::stream< _DataType_0_1_name  > _filter_out;
  unsigned int read_pointer = (unsigned int )0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < ((int )in_rows); i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
    for (int j = 0; j < ((int )in_cols); j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
      _filter_in . write((p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src,(int )read_pointer)));
      read_pointer++;
    }
  }
  p_Z21xFPyrDownGaussianBlurILi256ELi256ELi0ELi1ELi1ELi0ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEitt_1(_filter_in,_filter_out,5,(int )XF_BORDER_CONSTANT,in_rows,in_cols);
  unsigned int write_ptr = (unsigned int )0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  for (int i = 0; i < ((int )in_rows); i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
    for (int j = 0; j < ((int )in_cols); j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
      _DataType_0_1_name read_fil_out = _filter_out . read();
      if (i % 2 == 0 && j % 2 == 0) {
        p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst,(int )write_ptr,read_fil_out);
        write_ptr++;
      }
    }
  }
  return ;
}

static void p_ZN2xf7pyrDownILi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &_src,struct xf_Mat_0_256_256_1_ &_dst)
{
  unsigned short input_height = (unsigned short )_src . rows;
  unsigned short input_width = (unsigned short )_src . cols;
  p_ZN2xf15xFpyrDownKernelILj256ELj256ELj0ELj1ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1(_src,_dst,input_height,input_width);
  return ;
}

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi32ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi32EEE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,hls::stream< ap_uint< 32 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 32;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 32 > r;
  _DataType_0_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    in = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&srcMat,i);
    if (bits_to_add <= N_size) {
      r . range((32 - 1),(32 - bits_to_add)) = in . range((bits_to_add - 1),0);
      dstStrm . write(r);
      if (bits_to_add != N_size) {
        r . range((N_size - bits_to_add - 1),0) = in . range((N_size - 1),bits_to_add);
      }
      bits_to_add = 32 - (N_size - bits_to_add);
    }
     else {
      r . range((32 - bits_to_add + N_size - 1),(32 - bits_to_add)) = in;
      bits_to_add -= N_size;
    }
  }
  if (bits_to_add != 32) {
    dstStrm . write(r);
  }
}

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi32ELi256ELi256ELi1ELi1ELi8ELi16384EEER6streamI7ap_uintILi32EEEP7ap_uintILi32EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 32 >  > &srcStrm,class ap_uint< 32 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 32 - 1) / 32;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=16384
    dstPtr[i] = srcStrm . read();
  }
}

static void p_ZN2xf11accel_utils11xfMat2ArrayILi32ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi32EE_1(struct xf_accel_utils *this_,struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 32 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  32 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  hls::stream< ap_uint< 32 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi32ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi32EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi32ELi256ELi256ELi1ELi1ELi8ELi16384EEER6streamI7ap_uintILi32EEEP7ap_uintILi32EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi32ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi32EE_1(struct xf_Mat_0_256_256_1_ &srcMat,class ap_uint< 32 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi32ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi32EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void pyr_down_accel(class ap_uint< 32 > *img_inp,class ap_uint< 32 > *img_out,int in_rows,int in_cols,int out_rows,int out_cols)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_out offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=in_rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=in_cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=out_rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=out_cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat);
  ;
  
#pragma HLS stream variable=in_mat.data depth=2
  in_mat . rows = in_rows;
  in_mat . cols = in_cols;
  struct xf_Mat_0_256_256_1_ out_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&out_mat);
  ;
  
#pragma HLS stream variable=out_mat.data depth=2
  out_mat . rows = out_rows;
  out_mat . cols = out_cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi32ELi0ELi256ELi256ELi1EEEP7ap_uintILi32EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  p_ZN2xf7pyrDownILi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(in_mat,out_mat);
  p_ZN2xf11xfMat2ArrayILi32ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi32EE_1(out_mat,img_out);
}
