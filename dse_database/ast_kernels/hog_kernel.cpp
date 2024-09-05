#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
#include <xf_params.h>
#include <xf_types.h>
#include "merlin_type_define.h"
const int _ZN20xfNPixelsPerCycle_1_9datashiftE = 0;

static void p_ZN2xf18Mat_0_2160_3840_1_4initIEEiib_1(struct xf_Mat_0_2160_3840_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 2160 && _cols > 0 && _cols <= 3840 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf18Mat_0_2160_3840_1_C2IEEii_1(struct xf_Mat_0_2160_3840_1_ *this_,int _rows,int _cols)
{
  
#pragma HLS inline
  p_ZN2xf18Mat_0_2160_3840_1_4initIEEiib_1(this_,_rows,_cols,true);
}

static void p_ZN2xf18Mat_3_1_2319318_1_4initIEEiib_1(struct xf_Mat_3_1_2319318_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 1 && _cols > 0 && _cols <= 2319318 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf18Mat_3_1_2319318_1_C2IEEii_1(struct xf_Mat_3_1_2319318_1_ *this_,int _rows,int _cols)
{
  
#pragma HLS inline
  p_ZN2xf18Mat_3_1_2319318_1_4initIEEiib_1(this_,_rows,_cols,true);
}

static void p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi2160ELi3840ELi1ELi1ELi8ELi259200EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,hls::stream< ap_uint< 256 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=259200
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf18Mat_0_2160_3840_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_2160_3840_1_ *this_,int index,_DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_0_1_10pixelwidthE = 8;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi0ELi2160ELi3840ELi1ELi8294400EEER6streamI7ap_uintILi256EEER3MatILi0ELi2160ELi3840ELi1EE_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 256 >  > &srcStrm,struct xf_Mat_0_2160_3840_1_ &dstMat)
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
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=8294400
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
    p_ZN2xf18Mat_0_2160_3840_1_5writeIEEi7ap_uintILi8EE_1(&dstMat,i,out);
  }
}
const int _ZN13StreamType_1_8bitdepthE = 8;
const int _ZN13DataType_0_1_8bitdepthE = 8;

static void p_ZN2xf11accel_utils11Array2xfMatILi256ELi0ELi2160ELi3840ELi1EEEP7ap_uintILi256EER3MatILi0ELi2160ELi3840ELi1EE_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,struct xf_Mat_0_2160_3840_1_ &dstMat)
{
  
#pragma HLS DATAFLOW
  256 >= _ZN13StreamType_1_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )665,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_0_1_8bitdepthE;
  hls::stream< ap_uint< 256 >  > strm;
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi2160ELi3840ELi1ELi1ELi8ELi259200EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(this_,srcPtr,strm,rows,cols);
  p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi0ELi2160ELi3840ELi1ELi8294400EEER6streamI7ap_uintILi256EEER3MatILi0ELi2160ELi3840ELi1EE_1(this_,strm,dstMat);
}

static void p_ZN2xf11Array2xfMatILi256ELi0ELi2160ELi3840ELi1EEEP7ap_uintILi256EER3MatILi0ELi2160ELi3840ELi1EE_1(class ap_uint< 256 > *srcPtr,struct xf_Mat_0_2160_3840_1_ &dstMat)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11Array2xfMatILi256ELi0ELi2160ELi3840ELi1EEEP7ap_uintILi256EER3MatILi0ELi2160ELi3840ELi1EE_1(&au,srcPtr,dstMat);
}

static _DataType_0_1_name p_ZN2xf18Mat_0_2160_3840_1_4readIEEi_1(struct xf_Mat_0_2160_3840_1_ *this_,int index)
{
  return this_ -> data[index];
}

static void p_Z25xFHOGReadFromStreamKernelILi2160ELi3840ELi1E7ap_uintILi8EE7ap_uintILi8EEER6streamI7ap_uintILi8EEEP6streamI7ap_uintILi8EEEtt_1(hls::stream< _DataType_0_1_name  > &in_stream,hls::stream< _DataType_0_1_name  > out_stream[1],unsigned short height,unsigned short width)
{
  class ap_uint< 32 > input_data;
  class ap_uint< 32 > i;
  class ap_uint< 32 > j;
  class ap_uint< 5 > upper_limit;
  class ap_uint< 5 > lower_limit;
  class ap_uint< 3 > k;
  
#pragma ACCEL PIPELINE auto{__PIPE__L4}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  row_loop:
  for (i = 0; i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=2160 max=2160
    
#pragma ACCEL PIPELINE auto{__PIPE__L8}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L8}
    col_loop:
    for (j = 0; j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=3840 max=3840
      input_data = in_stream . read();
      (upper_limit = 7) , lower_limit = 0;
      unsigned char in_data[3];
      no_of_channel_loop:
      for (k = 0; k<1; k ++ ) {
        
#pragma HLS LOOP_TRIPCOUNT min=1 max=1
        out_stream[(long )(k)] . write(input_data . range(upper_limit,lower_limit));
        in_data[(long )(k)] = ((unsigned char )(input_data . range(upper_limit,lower_limit)));
        upper_limit+=8;
        lower_limit+=8;
      }
    }
  }
}

static void p_Z19xFHOGReadFromStreamILi2160ELi3840ELi1E7ap_uintILi8EE7ap_uintILi8EEER6streamI7ap_uintILi8EEEP6streamI7ap_uintILi8EEEtt_1(hls::stream< _DataType_0_1_name  > &in_stream,hls::stream< _DataType_0_1_name  > out_stream[1],unsigned short height,unsigned short width)
{
  p_Z25xFHOGReadFromStreamKernelILi2160ELi3840ELi1E7ap_uintILi8EE7ap_uintILi8EEER6streamI7ap_uintILi8EEEP6streamI7ap_uintILi8EEEtt_1(in_stream,out_stream,height,width);
}
const int _ZN12PixelType_0_8bitdepthE = 8;

static void p_Z15xfExtractPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEi_1(_PixelType_0_name *tmp_buf,_StreamType_1_name &val1,int pos)
{
  _StreamType_1_name v = val1;
  int shift = 0;
  int STEP = _ZN12PixelType_0_8bitdepthE;
  Extract_pixels_loop:
  for (int i = 0; i < 1 << _ZN20xfNPixelsPerCycle_1_9datashiftE; i++) {
    tmp_buf[pos + i] = v . range((shift + STEP - 1),shift);
    shift = shift + STEP;
  }
}

static _PixelType_13_name p_Z15xFHOGgradientXYILi0ELi13ELi1EE7ap_uintILi8EE7ap_uintILi8EE_1(_PixelType_0_name n1,_PixelType_0_name n2)
{
  _PixelType_13_name grad;
  grad = n2-n1;
  return grad;
}

static void p_Z20xFHOGgradientComputeILi1ELi0ELi13ELi1E7ap_uintILi8EELi3EEP6ap_intILi9EEP6ap_intILi9EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EE_1(_PixelType_13_name *GradientvaluesX,_PixelType_13_name *GradientvaluesY,_PixelType_0_name src_buf0[][3],_PixelType_0_name src_buf1[][3],_PixelType_0_name src_buf2[][3])
{
  int _s_j = 0;
  unsigned char _l_j = 0;
  Compute_Grad_Loop_Gray:
// Canonicalized from: for(unsigned char j =(unsigned char )0;((int )_s_j) < _ZN20xfNPixelsPerCycle_1_4nppcE;_s_j++) {...}
  for (_s_j = ((unsigned char )0); _s_j <= 0; ++_s_j) {
    GradientvaluesX[_s_j] = p_Z15xFHOGgradientXYILi0ELi13ELi1EE7ap_uintILi8EE7ap_uintILi8EE_1(src_buf1[1 - 1][_s_j],src_buf1[1 - 1][((int )_s_j) + 2]);
    GradientvaluesY[_s_j] = p_Z15xFHOGgradientXYILi0ELi13ELi1EE7ap_uintILi8EE7ap_uintILi8EE_1(src_buf0[1 - 1][((int )_s_j) + 1],src_buf2[1 - 1][((int )_s_j) + 1]);
  }
}
const int _ZN13PixelType_13_8bitdepthE = 9;
const int _ZN13StreamType_2_8bitdepthE = 9;

static void p_Z19xFHOGcomputeColGradILi2160ELi3840ELi0ELi13ELi1ELi1ELi2ELi1ELi3840ELi1EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEEPA3_A3840_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEP6ap_intILi9EEP6ap_intILi9EER7ap_uintILi9EER7ap_uintILi9EEt7ap_uintILi13EE7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi2EEb_1(hls::stream< _DataType_0_1_name  > _src_strm[1],hls::stream< _StreamType_2_name  > &_gradx_strm,hls::stream< _StreamType_2_name  > &_grady_strm,_StreamType_1_name buf[1][3][3840 >> 0],_PixelType_0_name src_buf0[1][1 + 2],_PixelType_0_name src_buf1[1][1 + 2],_PixelType_0_name src_buf2[1][1 + 2],_PixelType_13_name GradientValuesX[1],_PixelType_13_name GradientValuesY[1],_StreamType_2_name &P0,_StreamType_2_name &P1,unsigned short img_width,class ap_uint< 13 > row_ind,class ap_uint< 2 > tp,class ap_uint< 2 > mid,class ap_uint< 2 > bottom,bool flag)
{
  unsigned char step = (unsigned char )_ZN13PixelType_13_8bitdepthE;
  unsigned short max_loop = (unsigned short )_ZN13StreamType_2_8bitdepthE;
  unsigned char buf_size = (unsigned char )(_ZN20xfNPixelsPerCycle_1_4nppcE + 2);
  unsigned short col = (unsigned short )0;
  unsigned short i = (unsigned short )0;
  unsigned short j = (unsigned short )0;
  class ap_uint< 3 > p;
  
#pragma ACCEL PIPELINE auto{__PIPE__L16}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L16}
  Col_Loop:
  for (col = ((unsigned short )0); ((int )col) < ((int )img_width); col++) {
    
#pragma HLS LOOP_TRIPCOUNT min=3840 max=3840
    Plane_Loop3:
    for (p = 0; p<1; p ++ ) {
      _StreamType_1_name in_data(0);
      if (flag) {
        in_data = _src_strm[(long )(p)] . read();
        buf[(long )(p)][(long )(row_ind)][col] = in_data;
      }
      p_Z15xfExtractPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEi_1(&src_buf0[(long )(p)][2],buf[(long )(p)][(long )(tp)][col],0);
      p_Z15xfExtractPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEi_1(&src_buf1[(long )(p)][2],buf[(long )(p)][(long )(mid)][col],0);
      p_Z15xfExtractPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEi_1(&src_buf2[(long )(p)][2],in_data,0);
    }
    p_Z20xFHOGgradientComputeILi1ELi0ELi13ELi1E7ap_uintILi8EELi3EEP6ap_intILi9EEP6ap_intILi9EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EE_1(GradientValuesX,GradientValuesY,src_buf0,src_buf1,src_buf2);
    if (((int )col) == 0) {
      j = ((unsigned short )1);
      data_pack_loop1:
      for (i = ((unsigned short )0); ((int )i) < ((int )max_loop) - ((int )step); i = ((unsigned short )(((int )i) + ((int )step)))) {
        
#pragma HLS LOOP_TRIPCOUNT min=1 max=1
        P0 . range((((int )i) + (((int )step) - 1)),((int )i)) = ((unsigned long )(GradientValuesX[j]));
        P1 . range((((int )i) + (((int )step) - 1)),((int )i)) = ((unsigned long )(GradientValuesY[j++]));
      }
    }
     else {
      P0 . range((((int )max_loop) - 1),(((int )max_loop) - ((int )step))) = ((unsigned long )(GradientValuesX[0]));
      P1 . range((((int )max_loop) - 1),(((int )max_loop) - ((int )step))) = ((unsigned long )(GradientValuesY[0]));
      _gradx_strm . write(P0);
      _grady_strm . write(P1);
      j = ((unsigned short )1);
      data_pack_loop2:
      for (i = ((unsigned short )0); ((int )i) < ((int )max_loop) - ((int )step); i = ((unsigned short )(((int )i) + ((int )step)))) {
        
#pragma HLS LOOP_TRIPCOUNT min=1 max=1
        P0 . range((((int )i) + (((int )step) - 1)),((int )i)) = ((unsigned long )(GradientValuesX[j]));
        P1 . range((((int )i) + (((int )step) - 1)),((int )i)) = ((unsigned long )(GradientValuesY[j++]));
      }
    }
    Plane_Loop4:
    for (p = 0; p<1; p ++ ) {
      src_buf0[(long )(p)][0] = src_buf0[(long )(p)][((int )buf_size) - 2];
      src_buf0[(long )(p)][1] = src_buf0[(long )(p)][((int )buf_size) - 1];
      src_buf1[(long )(p)][0] = src_buf1[(long )(p)][((int )buf_size) - 2];
      src_buf1[(long )(p)][1] = src_buf1[(long )(p)][((int )buf_size) - 1];
      src_buf2[(long )(p)][0] = src_buf2[(long )(p)][((int )buf_size) - 2];
      src_buf2[(long )(p)][1] = src_buf2[(long )(p)][((int )buf_size) - 1];
    }
  }
}

static void p_Z20xFHOGgradientsKernelILi2160ELi3840ELi0ELi13ELi1ELi1ELi2ELi1ELi3840ELi1ELb0EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEEtt_1(hls::stream< _DataType_0_1_name  > _src_strm[1],hls::stream< _StreamType_2_name  > &_gradx_strm,hls::stream< _StreamType_2_name  > &_grady_strm,unsigned short _height,unsigned short _width)
{
  unsigned short row_ind;
  class ap_uint< 3 > p;
  class ap_uint< 2 > tp;
  class ap_uint< 2 > mid;
  class ap_uint< 2 > bottom;
  unsigned char step = (unsigned char )_ZN13PixelType_13_8bitdepthE;
  unsigned short max_loop = (unsigned short )_ZN13StreamType_2_8bitdepthE;
  unsigned char buf_size = (unsigned char )(_ZN20xfNPixelsPerCycle_1_4nppcE + 2);
  unsigned short col;
  unsigned short j;
  unsigned short row;
  unsigned short i;
  _PixelType_13_name GradientValuesX[1];
  _PixelType_13_name GradientValuesY[1];
  _PixelType_0_name src_buf0[1][1 + 2];
  _PixelType_0_name src_buf1[1][1 + 2];
  _PixelType_0_name src_buf2[1][1 + 2];
  _StreamType_2_name P0;
  _StreamType_2_name P1;
  _StreamType_1_name buf[1][3][3840 >> 0];
  if (false) {
  }
   else {
  }
  row_ind = ((unsigned short )1);
  
#pragma ACCEL PIPELINE auto{__PIPE__L11}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L11}
  Clear_Row_Read_Buf_Loop:
  for (col = ((unsigned short )0); ((int )col) < ((int )_width); col++) {
    
#pragma HLS LOOP_TRIPCOUNT min=3840 max=3840
    Plane_Loop1:
    for (p = 0; p<1; p ++ ) {
      buf[(long )(p)][0][col] = 0;
      buf[(long )(p)][row_ind][col] = _src_strm[(long )(p)] . read();
    }
  }
  row_ind++;
  
#pragma ACCEL PIPELINE auto{__PIPE__L12}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L12}
  Row_Loop:
  for (row = ((unsigned short )1); ((int )row) < ((int )_height); row++) {
    
#pragma HLS LOOP_TRIPCOUNT min=2160 max=2160
    if (((int )row_ind) == 2) {
      tp = 0;
      mid = 1;
      bottom = 2;
    }
     else {
      if (((int )row_ind) == 0) {
        tp = 1;
        mid = 2;
        bottom = 0;
      }
       else {
        if (((int )row_ind) == 1) {
          tp = 2;
          mid = 0;
          bottom = 1;
        }
      }
    }
    Plane_Loop2:
    for (p = 0; p<1; p ++ ) {
      src_buf0[(long )(p)][0] = src_buf0[(long )(p)][1] = 0;
      src_buf1[(long )(p)][0] = src_buf1[(long )(p)][1] = 0;
      src_buf2[(long )(p)][0] = src_buf2[(long )(p)][1] = 0;
    }
    P0 = P1 = 0;
    p_Z19xFHOGcomputeColGradILi2160ELi3840ELi0ELi13ELi1ELi1ELi2ELi1ELi3840ELi1EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEEPA3_A3840_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEP6ap_intILi9EEP6ap_intILi9EER7ap_uintILi9EER7ap_uintILi9EEt7ap_uintILi13EE7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi2EEb_1(_src_strm,_gradx_strm,_grady_strm,buf,src_buf0,src_buf1,src_buf2,GradientValuesX,GradientValuesY,P0,P1,_width,row_ind,tp,mid,bottom,true);
    if ((bool )row) {
      Plane_Loop4:
      for (p = 0; p<1; p ++ ) {
        src_buf0[(long )(p)][2] = 0;
        src_buf1[(long )(p)][2] = 0;
        src_buf2[(long )(p)][2] = 0;
      }
      p_Z20xFHOGgradientComputeILi1ELi0ELi13ELi1E7ap_uintILi8EELi3EEP6ap_intILi9EEP6ap_intILi9EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EE_1(GradientValuesX,GradientValuesY,src_buf0,src_buf1,src_buf2);
      P0 . range((((int )max_loop) - 1),(((int )max_loop) - ((int )step))) = ((unsigned long )(GradientValuesX[0]));
      P1 . range((((int )max_loop) - 1),(((int )max_loop) - ((int )step))) = ((unsigned long )(GradientValuesY[0]));
      _gradx_strm . write(P0);
      _grady_strm . write(P1);
    }
    row_ind++;
    if (((int )row_ind) == 3) {
      row_ind = ((unsigned short )0);
    }
  }
  if (((int )row_ind) == 3) {
    row_ind = ((unsigned short )0);
  }
  if (((int )row_ind) == 2) {
    tp = 0;
    mid = 1;
    bottom = 2;
  }
   else {
    if (((int )row_ind) == 0) {
      tp = 1;
      mid = 2;
      bottom = 0;
    }
     else {
      if (((int )row_ind) == 1) {
        tp = 2;
        mid = 0;
        bottom = 1;
      }
    }
  }
  Plane_Loop6:
  for (p = 0; p<1; p ++ ) {
    src_buf0[(long )(p)][0] = src_buf0[(long )(p)][1] = 0;
    src_buf1[(long )(p)][0] = src_buf1[(long )(p)][1] = 0;
    src_buf2[(long )(p)][0] = src_buf2[(long )(p)][1] = 0;
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L14}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L14}
  Clear_Row_Loop1:
  for (col = ((unsigned short )0); ((int )col) < ((int )_width); col++) {
    
#pragma HLS LOOP_TRIPCOUNT min=3840 max=3840
    Plane_Loop7:
    for (p = 0; p<1; p ++ ) {
      buf[(long )(p)][(long )(bottom)][col] = 0;
    }
  }
  p_Z19xFHOGcomputeColGradILi2160ELi3840ELi0ELi13ELi1ELi1ELi2ELi1ELi3840ELi1EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEEPA3_A3840_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEP6ap_intILi9EEP6ap_intILi9EER7ap_uintILi9EER7ap_uintILi9EEt7ap_uintILi13EE7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi2EEb_1(_src_strm,_gradx_strm,_grady_strm,buf,src_buf0,src_buf1,src_buf2,GradientValuesX,GradientValuesY,P0,P1,_width,row_ind,tp,mid,bottom,false);
  Plane_Loop5:
  for (p = 0; p<1; p ++ ) {
    src_buf0[(long )(p)][2] = 0;
    src_buf1[(long )(p)][2] = 0;
    src_buf2[(long )(p)][2] = 0;
  }
  p_Z20xFHOGgradientComputeILi1ELi0ELi13ELi1E7ap_uintILi8EELi3EEP6ap_intILi9EEP6ap_intILi9EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EEPA3_7ap_uintILi8EE_1(GradientValuesX,GradientValuesY,src_buf0,src_buf1,src_buf2);
  P0 . range((((int )max_loop) - 1),(((int )max_loop) - ((int )step))) = ((unsigned long )(GradientValuesX[0]));
  P1 . range((((int )max_loop) - 1),(((int )max_loop) - ((int )step))) = ((unsigned long )(GradientValuesY[0]));
  _gradx_strm . write(P0);
  _grady_strm . write(P1);
}

static void p_Z14xFHOGgradientsILi2160ELi3840ELi0ELi13ELi1ELi1ELi2ELi1ELb0EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEEitt_1(hls::stream< _DataType_0_1_name  > _src[1],hls::stream< _StreamType_2_name  > &_gradx,hls::stream< _StreamType_2_name  > &_grady,int _border_type,unsigned short _height,unsigned short _width)
{
  0 == ((int )XF_8UP) && ((bool )" Input image must be of type XF_8UP")?((void )0) : __assert_fail("((DEPTH_SRC == XF_8UP)) && \" Input image must be of type XF_8UP\"","xf_hog_descriptor_gradients.hpp",(unsigned int )491,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1 or XF_NPPC8")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8)) && \"NPC must be XF_NPPC1 or XF_NPPC8\"","xf_hog_descriptor_gradients.hpp",(unsigned int )494,__PRETTY_FUNCTION__);
  (1 == ((int )XF_8UW) || 1 == ((int )XF_64UW)) && ((bool )"WORDWIDTH must be XF_8UW or XF_64UW")?((void )0) : __assert_fail("((WORDWIDTH_SRC == XF_8UW) || (WORDWIDTH_SRC == XF_64UW)) && \"WORDWIDTH must be XF_8UW or XF_64UW\"","xf_hog_descriptor_gradients.hpp",(unsigned int )497,__PRETTY_FUNCTION__);
  13 == ((int )XF_9SP) && ((bool )" Input image must be of type XF_9SP")?((void )0) : __assert_fail("((DEPTH_DST == XF_9SP)) && \" Input image must be of type XF_9SP\"","xf_hog_descriptor_gradients.hpp",(unsigned int )500,__PRETTY_FUNCTION__);
  (2 == ((int )XF_9UW) || 2 == ((int )XF_72UW)) && ((bool )"WORDWIDTH must be XF_9UW or XF_72UW")?((void )0) : __assert_fail("((WORDWIDTH_DST == XF_9UW) || (WORDWIDTH_DST == XF_72UW)) && \"WORDWIDTH must be XF_9UW or XF_72UW\"","xf_hog_descriptor_gradients.hpp",(unsigned int )503,__PRETTY_FUNCTION__);
  _border_type == ((int )XF_BORDER_CONSTANT) && ((bool )"Border type must be XF_BORDER_CONSTANT ")?((void )0) : __assert_fail("(_border_type == XF_BORDER_CONSTANT) && \"Border type must be XF_BORDER_CONSTANT \"","xf_hog_descriptor_gradients.hpp",(unsigned int )505,__PRETTY_FUNCTION__);
  (1 == ((int )XF_GRAY) || 1 == ((int )XF_RGB)) && ((bool )"input_image_type must be either XF_GRAY or XF_RGB")?((void )0) : __assert_fail("((NOS_SRC == XF_GRAY) || (NOS_SRC == XF_RGB)) && \"input_image_type must be either XF_GRAY or XF_RGB\"","xf_hog_descriptor_gradients.hpp",(unsigned int )508,__PRETTY_FUNCTION__);
  p_Z20xFHOGgradientsKernelILi2160ELi3840ELi0ELi13ELi1ELi1ELi2ELi1ELi3840ELi1ELb0EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEEtt_1(_src,_gradx,_grady,_height,_width);
}
unsigned short _ZN2xf13division_lut8E[256] = {(65535), (32768), (16384), (10922), (8192), (6553), (5461), (4681), (4096), (3640), (3276), (2978), (2730), (2520), (2340), (2184), (2048), (1927), (1820), (1724), (1638), (1560), (1489), (1424), (1365), (1310), (1260), (1213), (1170), (1129), (1092), (1057), (1024), (992), (963), (936), (910), (885), (862), (840), (819), (799), (780), (762), (744), (728), (712), (697), (682), (668), (655), (642), (630), (618), (606), (595), (585), (574), (564), (555), (546), (537), (528), (520), (512), (504), (496), (489), (481), (474), (468), (461), (455), (448), (442), (436), (431), (425), (420), (414), (409), (404), (399), (394), (390), (385), (381), (376), (372), (368), (364), (360), (356), (352), (348), (344), (341), (337), (334), (330), (327), (324), (321), (318), (315), (312), (309), (306), (303), (300), (297), (295), (292), (289), (287), (284), (282), (280), (277), (275), (273), (270), (268), (266), (264), (262), (260), (258), (256), (254), (252), (250), (248), (246), (244), (242), (240), (239), (237), (235), (234), (232), (230), (229), (227), (225), (224), (222), (221), (219), (218), (217), (215), (214), (212), (211), (210), (208), (207), (206), (204), (203), (202), (201), (199), (198), (197), (196), (195), (193), (192), (191), (190), (189), (188), (187), (186), (185), (184), (183), (182), (181), (180), (179), (178), (177), (176), (175), (174), (173), (172), (171), (170), (169), (168), (168), (167), (166), (165), (164), (163), (163), (162), (161), (160), (159), (159), (158), (157), (156), (156), (155), (154), (153), (153), (152), (151), (151), (150), (149), (148), (148), (147), (146), (146), (145), (144), (144), (143), (143), (142), (141), (141), (140), (140), (139), (138), (138), (137), (137), (136), (135), (135), (134), (134), (133), (133), (132), (132), (131), (131), (130), (130), (129), (129), (128)};

static unsigned short p_ZN2xf8Inverse8EhiPc(unsigned char x,int M,char *N)
{
  M == 8 && ((bool )"x should be of Q8.0 format.")?((void )0) : __assert_fail("(M==8) && \"x should be of Q8.0 format.\"","xf_math.h",(unsigned int )356,__PRETTY_FUNCTION__);
  unsigned int val = (unsigned int )0;
  unsigned int index;
  if (((int )x) == 0) {
    return _ZN2xf13division_lut8E[0];
  }
   else {
    val = ((unsigned int )_ZN2xf13division_lut8E[x]);
     *N = ((char )15);
  }
  return (unsigned short )val;
}

static unsigned int p_ZN2xf11DivideYByX8EhhiiPcPc(unsigned char x,unsigned char y,int M1,int M2,char *out_M,char *out_N)
{
  M1 == 8 && M2 == 8 && ((bool )"x and y should be of Q8.0 format.")?((void )0) : __assert_fail("(M1==8) && (M2==8) && \"x and y should be of Q8.0 format.\"","xf_math.h",(unsigned int )420,__PRETTY_FUNCTION__);
  unsigned int div_val;
  char MOut;
  char NOut;
  unsigned short x_inv = p_ZN2xf8Inverse8EhiPc(x,M1,&NOut);
  MOut = ((char )(16 - ((int )NOut) + M2));
  NOut = ((char )(((int )NOut) + (8 - M2)));
  div_val = ((unsigned int )(((int )y) * ((int )x_inv)));
   *out_M = MOut;
   *out_N = NOut;
  return div_val;
}
int _ZN2xf14base_addr_lut8E[126] = {(0), (512), (640), (704), (736), (768), (800), (816), (832), (848), (856), (864), (872), (880), (888), (896), (904), (908), (912), (916), (920), (924), (928), (932), (936), (937), (938), (939), (940), (941), (942), (943), (944), (945), (946), (947), (948), (949), (950), (951), (952), (953), (954), (955), (956), (957), (958), (959), (960), (961), (962), (963), (964), (965), (966), (967), (968), (969), (970), (971), (972), (973), (974), (9), (7), (6), (5), (5), (5), (4), (4), (4), (3), (3), (3), (3), (3), (3), (3), (2), (2), (2), (2), (2), (2), (2), (2), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1), (1)};
short _ZN2xf12atan_lut_fp8E[977] = {(0), (7), (15), (23), (31), (39), (47), (55), (63), (71), (79), (87), (95), (103), (111), (119), (127), (135), (143), (151), (159), (167), (175), (183), (191), (199), (207), (215), (223), (231), (239), (247), (255), (263), (271), (279), (287), (295), (303), (311), (319), (327), (335), (343), (351), (358), (366), (374), (382), (390), (398), (406), (414), (422), (430), (438), (446), (454), (461), (469), (477), (485), (493), (501), (509), (517), (524), (532), (540), (548), (556), (564), (572), (579), (587), (595), (603), (611), (619), (626), (634), (642), (650), (658), (665), (673), (681), (689), (697), (704), (712), (720), (728), (735), (743), (751), (758), (766), (774), (782), (789), (797), (805), (812), (820), (828), (835), (843), (851), (858), (866), (874), (881), (889), (897), (904), (912), (919), (927), (935), (942), (950), (957), (965), (973), (980), (988), (995), (1003), (1010), (1018), (1025), (1033), (1040), (1048), (1055), (1063), (1070), (1078), (1085), (1093), (1100), (1107), (1115), (1122), (1130), (1137), (1144), (1152), (1159), (1167), (1174), (1181), (1189), (1196), (1203), (1211), (1218), (1225), (1233), (1240), (1247), (1254), (1262), (1269), (1276), (1283), (1291), (1298), (1305), (1312), (1319), (1327), (1334), (1341), (1348), (1355), (1362), (1370), (1377), (1384), (1391), (1398), (1405), (1412), (1419), (1426), (1433), (1441), (1448), (1455), (1462), (1469), (1476), (1483), (1490), (1497), (1504), (1511), (1518), (1524), (1531), (1538), (1545), (1552), (1559), (1566), (1573), (1580), (1587), (1593), (1600), (1607), (1614), (1621), (1628), (1634), (1641), (1648), (1655), (1661), (1668), (1675), (1682), (1688), (1695), (1702), (1708), (1715), (1722), (1728), (1735), (1742), (1748), (1755), (1762), (1768), (1775), (1781), (1788), (1794), (1801), (1808), (1814), (1821), (1827), (1834), (1840), (1847), (1853), (1860), (1866), (1872), (1879), (1885), (1892), (1898), (1905), (1911), (1917), (1924), (1930), (1936), (1943), (1949), (1955), (1962), (1968), (1974), (1980), (1987), (1993), (1999), (2005), (2012), (2018), (2024), (2030), (2036), (2043), (2049), (2055), (2061), (2067), (2073), (2079), (2086), (2092), (2098), (2104), (2110), (2116), (2122), (2128), (2134), (2140), (2146), (2152), (2158), (2164), (2170), (2176), (2182), (2188), (2194), (2200), (2205), (2211), (2217), (2223), (2229), (2235), (2241), (2246), (2252), (2258), (2264), (2270), (2275), (2281), (2287), (2293), (2298), (2304), (2310), (2316), (2321), (2327), (2333), (2338), (2344), (2350), (2355), (2361), (2366), (2372), (2378), (2383), (2389), (2394), (2400), (2406), (2411), (2417), (2422), (2428), (2433), (2439), (2444), (2450), (2455), (2460), (2466), (2471), (2477), (2482), (2488), (2493), (2498), (2504), (2509), (2514), (2520), (2525), (2530), (2536), (2541), (2546), (2552), (2557), (2562), (2567), (2573), (2578), (2583), (2588), (2593), (2599), (2604), (2609), (2614), (2619), (2624), (2630), (2635), (2640), (2645), (2650), (2655), (2660), (2665), (2670), (2675), (2680), (2685), (2690), (2695), (2700), (2705), (2710), (2715), (2720), (2725), (2730), (2735), (2740), (2745), (2750), (2755), (2760), (2765), (2769), (2774), (2779), (2784), (2789), (2794), (2798), (2803), (2808), (2813), (2818), (2822), (2827), (2832), (2837), (2841), (2846), (2851), (2855), (2860), (2865), (2869), (2874), (2879), (2883), (2888), (2893), (2897), (2902), (2907), (2911), (2916), (2920), (2925), (2929), (2934), (2939), (2943), (2948), (2952), (2957), (2961), (2966), (2970), (2975), (2979), (2984), (2988), (2992), (2997), (3001), (3006), (3010), (3014), (3019), (3023), (3028), (3032), (3036), (3041), (3045), (3049), (3054), (3058), (3062), (3067), (3071), (3075), (3079), (3084), (3088), (3092), (3096), (3101), (3105), (3109), (3113), (3117), (3122), (3126), (3130), (3134), (3138), (3142), (3147), (3151), (3155), (3159), (3163), (3167), (3171), (3175), (3179), (3183), (3188), (3192), (3196), (3200), (3204), (3208), (3212), (3216), (3232), (3247), (3263), (3279), (3294), (3309), (3325), (3340), (3355), (3370), (3384), (3399), (3413), (3428), (3442), (3456), (3470), (3484), (3498), (3512), (3526), (3539), (3553), (3566), (3579), (3592), (3605), (3618), (3631), (3644), (3656), (3669), (3681), (3694), (3706), (3718), (3730), (3742), (3754), (3766), (3777), (3789), (3801), (3812), (3823), (3835), (3846), (3857), (3868), (3879), (3890), (3901), (3911), (3922), (3932), (3943), (3953), (3964), (3974), (3984), (3994), (4004), (4014), (4024), (4034), (4044), (4053), (4063), (4072), (4082), (4091), (4101), (4110), (4119), (4128), (4137), (4146), (4155), (4164), (4173), (4182), (4190), (4199), (4208), (4216), (4225), (4233), (4241), (4250), (4258), (4266), (4274), (4282), (4290), (4298), (4306), (4314), (4322), (4329), (4337), (4345), (4352), (4360), (4367), (4375), (4382), (4390), (4397), (4404), (4411), (4418), (4426), (4433), (4440), (4447), (4454), (4460), (4467), (4474), (4481), (4487), (4494), (4501), (4507), (4514), (4520), (4527), (4533), (4546), (4559), (4571), (4583), (4595), (4607), (4619), (4631), (4642), (4654), (4665), (4676), (4687), (4698), (4709), (4719), (4730), (4740), (4750), (4761), (4771), (4780), (4790), (4800), (4810), (4819), (4828), (4838), (4847), (4856), (4865), (4874), (4883), (4891), (4900), (4908), (4917), (4925), (4933), (4941), (4949), (4957), (4965), (4973), (4981), (4989), (4996), (5004), (5011), (5018), (5026), (5033), (5040), (5047), (5054), (5061), (5068), (5075), (5082), (5088), (5095), (5101), (5108), (5114), (5127), (5139), (5152), (5164), (5175), (5187), (5198), (5210), (5221), (5231), (5242), (5252), (5263), (5273), (5283), (5292), (5302), (5311), (5321), (5330), (5339), (5347), (5356), (5365), (5373), (5381), (5390), (5398), (5406), (5413), (5421), (5429), (5436), (5444), (5451), (5458), (5465), (5472), (5479), (5486), (5492), (5499), (5505), (5512), (5518), (5524), (5530), (5536), (5542), (5548), (5554), (5560), (5566), (5571), (5577), (5582), (5588), (5593), (5598), (5603), (5609), (5614), (5619), (5624), (5628), (5633), (5638), (5643), (5647), (5652), (5657), (5661), (5666), (5670), (5674), (5679), (5683), (5687), (5691), (5695), (5699), (5704), (5707), (5711), (5715), (5719), (5723), (5727), (5731), (5734), (5738), (5742), (5745), (5749), (5752), (5756), (5762), (5769), (5776), (5782), (5789), (5795), (5801), (5807), (5813), (5818), (5824), (5830), (5835), (5840), (5846), (5851), (5856), (5861), (5866), (5871), (5875), (5880), (5885), (5889), (5894), (5898), (5902), (5906), (5911), (5915), (5919), (5923), (5927), (5930), (5934), (5938), (5942), (5945), (5949), (5952), (5956), (5959), (5963), (5966), (5969), (5972), (5976), (5979), (5985), (5991), (5997), (6002), (6008), (6013), (6019), (6024), (6029), (6034), (6038), (6043), (6048), (6052), (6056), (6061), (6065), (6069), (6073), (6077), (6081), (6084), (6088), (6091), (6095), (6098), (6102), (6105), (6108), (6111), (6114), (6118), (6121), (6123), (6126), (6129), (6132), (6135), (6137), (6140), (6142), (6145), (6147), (6150), (6152), (6155), (6157), (6159), (6162), (6164), (6166), (6168), (6170), (6172), (6174), (6176), (6180), (6184), (6188), (6191), (6195), (6198), (6201), (6205), (6208), (6211), (6214), (6217), (6219), (6222), (6225), (6227), (6230), (6232), (6235), (6237), (6239), (6242), (6244), (6246), (6248), (6250), (6252), (6254), (6256), (6258), (6260), (6261), (6268), (6274), (6280), (6286), (6291), (6295), (6300), (6304), (6308), (6312), (6315), (6318), (6321), (6324), (6327), (6330), (6332), (6334), (6337), (6339), (6341), (6343), (6345), (6347), (6348), (6350), (6352), (6353), (6355), (6356), (6357), (6359), (6360), (6361), (6363), (6364), (6365), (6366), (6367), (6367)};

static short p_ZN2xf9Atan2LUT8Essiiii(short xs,short ys,int M1,int N1,int M2,int N2)
{
  N1 == 9 - M1 && N2 == 9 - M2 && M1 == M2 && ((bool )"xs and ys should be of signed 9-bit and same fixed point type.")?((void )0) : __assert_fail("((N1 == 9-M1) && (N2==9-M2) && (M1==M2)) && \"xs and ys should be of signed 9-bit and same fixed point type.\"","xf_math.h",(unsigned int )535,__PRETTY_FUNCTION__);
  short theta;
  signed char s1;
  signed char s2;
  signed char s;
  if (((int )ys) == 0 && ((int )xs) == 0) {
    return (short )0;
  }
   else {
    unsigned short gy_fp;
    unsigned short gx_fp;
    unsigned long frac_extractor;
    unsigned int k2_fp;
    unsigned short int_part;
    unsigned int frac_part;
    unsigned int frac_ind;
    unsigned int frac_bits;
    gx_fp = ((unsigned short )xs);
    s1 = ((signed char )1);
    gy_fp = ((unsigned short )ys);
    s2 = ((signed char )1);
    if (((int )xs) < 0) {
      gx_fp = ((unsigned short )(-((int )xs)));
      s1 = ((signed char )(- 1));
    }
    if (((int )ys) < 0) {
      gy_fp = ((unsigned short )(-((int )ys)));
      s2 = ((signed char )(- 1));
    }
    s = ((signed char )(((int )s1) * ((int )s2)));
    char MOut;
    char NOut;
    k2_fp = p_ZN2xf11DivideYByX8EhhiiPcPc((unsigned char )gx_fp,(unsigned char )gy_fp,8,8,&MOut,&NOut);
    frac_extractor = ((unsigned long )((1 << ((int )NOut)) - 1));
    int_part = ((unsigned short )(k2_fp >> ((int )NOut)));
    frac_part = ((unsigned int )(((unsigned long )k2_fp) & frac_extractor));
    if (((int )int_part) < 63) {
      frac_bits = ((unsigned int )_ZN2xf14base_addr_lut8E[63 + ((int )int_part)]);
      frac_ind = frac_part >> ((unsigned int )NOut) - frac_bits;
      int ind = (int )(((unsigned int )_ZN2xf14base_addr_lut8E[int_part]) + frac_ind);
      theta = _ZN2xf12atan_lut_fp8E[ind];
    }
     else {
      theta = ((short )6433);
    }
    if (((int )gx_fp) == 0) {
      theta = ((short )6433);
    }
    if (((int )s) < 0) {
      theta = ((short )(-((int )theta)));
    }
    if (((int )xs) > 0) {
      return theta;
    }
     else {
      if (((int )ys) >= 0 && ((int )xs) < 0) {
        return (short )(12867 + ((int )theta));
      }
       else {
        if (((int )ys) < 0 && ((int )xs) < 0) {
          return (short )(((int )theta) - 12867);
        }
         else {
          if (((int )ys) > 0 && ((int )xs) == 0) {
            return (short )6433;
          }
           else {
            if (((int )ys) < 0 && ((int )xs) == 0) {
              return (short )(- 6433);
            }
          }
        }
      }
    }
  }
  return theta;
}

static class ap_uint< 16 > p_Z9xFSqrtHOGILi16ELi31ELi31ELi5ELi0EE9ap_ufixedILi31ELi31ELi5ELi0ELi0EE_1(class ap_ufixed< 31 , 31 , AP_TRN , AP_SAT , 0 > x)
{
  31 >= 0 && ((bool )"Number of integer bits for sqrt() must be greater than zero")?((void )0) : __assert_fail("I >= 0 && \"Number of integer bits for sqrt() must be greater than zero\"","xf_hog_descriptor_utility.hpp",(unsigned int )722,__PRETTY_FUNCTION__);
  31 >= 31 && ((bool )"Number of integer bits for sqrt() must be less than or equal to total width")?((void )0) : __assert_fail("W >= I && \"Number of integer bits for sqrt() must be less than or equal to total width\"","xf_hog_descriptor_utility.hpp",(unsigned int )724,__PRETTY_FUNCTION__);
  class ap_ufixed< 32 , 31 , AP_TRN , AP_WRAP , 0 > factor(0);
  bool offset;
  if (31 % 2 == 0) {
    offset = ((bool )1);
  }
   else {
    offset = ((bool )0);
  }
  factor[(31 + 1 - 1 - ((int )offset))] = ((bool )1);
  class ap_ufixed< 33 , 32 , AP_TRN , AP_WRAP , 0 > result(0);
  class ap_ufixed< 34 , 33 , AP_TRN , AP_WRAP , 0 > x2(x);
  int _s_i = (unsigned char )(31 + 1 - ((int )offset));
  unsigned char _l_i = (unsigned char )(31 + 1 - ((int )offset));
// Canonicalized from: for(unsigned char i =(unsigned char )(31 + 1 -((int )offset));((int )_s_i) >(31 - 1) / 2;_s_i -= 1) {...}
  for (_s_i = ((unsigned char )(31 + 1 - ((int )offset))); _s_i >= 16; --_s_i) {
    class ap_ufixed< 34 , 33 , AP_TRN , AP_WRAP , 0 > t((result<<1)+factor);
    class ap_ufixed< 32 , 31 , AP_TRN , AP_WRAP , 0 > thisfactor(0);
    if (x2>=t) {
      x2-=t;
      thisfactor = factor;
    }
    result = result+thisfactor;
    factor>>=1;
    x2<<=1;
  }
  return (result>>(31 - 1 >> 1));
}
const int _ZN12PixelType_2_8bitdepthE = 16;

static void p_Z25xFHOGPhaseMagnitudeKernelILi2160ELi3840ELi13ELi2ELi1ELi2ELi5ELi3840EER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEtt_1(hls::stream< _StreamType_2_name  > &_gradx_stream,hls::stream< _StreamType_2_name  > &_grady_stream,hls::stream< _StreamType_5_name  > &_phase_stream,hls::stream< _StreamType_5_name  > &_mag_stream,unsigned short height,unsigned short width)
{
  _StreamType_2_name grad_x_packed_val;
  _StreamType_2_name grad_y_packed_val;
  _StreamType_5_name phase_packed_val;
  _StreamType_5_name mag_packed_val;
  unsigned short i;
  unsigned short j;
  unsigned short k;
  unsigned short l;
  int M1;
  int N1;
  int M2;
  int N2;
  M1 = _ZN13PixelType_13_8bitdepthE;
  N1 = 0;
  M2 = M1;
  N2 = N1;
  
#pragma ACCEL PIPELINE auto{__PIPE__L17}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L17}
  rowLoop:
  for (i = ((unsigned short )0); ((int )i) < ((int )height); i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=2160 max=2160
    
#pragma ACCEL PIPELINE auto{__PIPE__L25}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L25}
    colLoop:
    for (j = ((unsigned short )0); ((int )j) < ((int )width); j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=3840 max=3840
      grad_x_packed_val = _gradx_stream . read();
      grad_y_packed_val = _grady_stream . read();
      unsigned char step_src = (unsigned char )_ZN13PixelType_13_8bitdepthE;
      unsigned char step_dst = (unsigned char )_ZN12PixelType_2_8bitdepthE;
      unsigned short proc_loop_src = (unsigned short )(_ZN13PixelType_13_8bitdepthE << _ZN20xfNPixelsPerCycle_1_9datashiftE);
      unsigned short proc_loop_dst = (unsigned short )(_ZN12PixelType_2_8bitdepthE << _ZN20xfNPixelsPerCycle_1_9datashiftE);
      
#pragma ACCEL PIPELINE auto{__PIPE__L31}
      procLoop:
      for ((k = ((unsigned short )0) , l = ((unsigned short )0)); (((int )k) < ((int )proc_loop_src) , ((int )l) < ((int )proc_loop_dst)); (k += ((int )step_src) , l += ((int )step_dst))) {
        _PixelType_13_name g_x(grad_x_packed_val . range((((int )k) + (((int )step_src) - 1)),((int )k)));
        _PixelType_13_name g_y(grad_y_packed_val . range((((int )k) + (((int )step_src) - 1)),((int )k)));
        short g_x_16_p;
        short g_x_16_m;
        short g_y_16_p;
        short g_y_16_m;
        g_x_16_p = g_x_16_m = ((short )(g_x));
        g_y_16_p = g_y_16_m = ((short )(g_y));
        short ret = (short )0;
        int result_temp = 0;
        ret = p_ZN2xf9Atan2LUT8Essiiii(g_x_16_p,g_y_16_p,M1,N1,M2,N2);
        if (((int )ret) < 0 || ((int )ret) == 0 && ((int )g_y_16_p) < 0) {
          result_temp = ((int )ret) + 12867 + 12867;
        }
         else {
          result_temp = ((int )ret);
        }
        _PixelType_2_name result_phase(58671 * result_temp >> 15);
        if (((int )g_x_16_m) < 0) {
          g_x_16_m = ((short )(-((int )g_x_16_m)));
        }
        ;
        if (((int )g_y_16_m) < 0) {
          g_y_16_m = ((short )(-((int )g_y_16_m)));
        }
        ;
        ap_uint17_t gx_sq(((int )((unsigned char )g_x_16_m)) * ((int )((unsigned char )g_x_16_m)));
        ap_uint17_t gy_sq(((int )((unsigned char )g_y_16_m)) * ((int )((unsigned char )g_y_16_m)));
        class ap_uint< 17 > sum_sq_grad(gx_sq+gy_sq);
        class ap_ufixed< 31 , 31 , AP_TRN , AP_SAT , 0 > tmp_mag(ap_uint< 31> (sum_sq_grad)<<14);
        _PixelType_2_name result_mag = p_Z9xFSqrtHOGILi16ELi31ELi31ELi5ELi0EE9ap_ufixedILi31ELi31ELi5ELi0ELi0EE_1(tmp_mag);
        phase_packed_val . range((((int )l) + (((int )step_dst) - 1)),((int )l)) = result_phase;
        mag_packed_val . range((((int )l) + (((int )step_dst) - 1)),((int )l)) = result_mag;
      }
      _phase_stream . write(phase_packed_val);
      _mag_stream . write(mag_packed_val);
    }
  }
}

static void p_Z19xFHOGPhaseMagnitudeILi2160ELi3840ELi13ELi2ELi1ELi2ELi5EER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEtt_1(hls::stream< _StreamType_2_name  > &_grad_x,hls::stream< _StreamType_2_name  > &_grad_y,hls::stream< _StreamType_5_name  > &_phase_stream,hls::stream< _StreamType_5_name  > &_mag_stream,unsigned short height,unsigned short width)
{
  13 == ((int )XF_9SP) && ((bool )"DEPTH_SRC must be XF_9SP")?((void )0) : __assert_fail("(DEPTH_SRC == XF_9SP) && \"DEPTH_SRC must be XF_9SP\"","xf_hog_descriptor_pm.hpp",(unsigned int )179,__PRETTY_FUNCTION__);
  2 == ((int )XF_16UP) && ((bool )"DEPTH_DST must be of type XF_16UP")?((void )0) : __assert_fail("(DEPTH_DST == XF_16UP) && \"DEPTH_DST must be of type XF_16UP\"","xf_hog_descriptor_pm.hpp",(unsigned int )181,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8) || 1 == ((int )XF_NPPC16)) && ((bool )"NPC must be XF_NPPC1, XF_NPPC8 or XF_NPPC16")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8) || (NPC == XF_NPPC16)) && \"NPC must be XF_NPPC1, XF_NPPC8 or XF_NPPC16\"","xf_hog_descriptor_pm.hpp",(unsigned int )183,__PRETTY_FUNCTION__);
  (2 == ((int )XF_9UW) || 2 == ((int )XF_72UW) || 2 == ((int )XF_144UW)) && ((bool )"WORDWIDTH_SRC must be XF_9UW, XF_72UW or XF_144UW")?((void )0) : __assert_fail("((WORDWIDTH_SRC == XF_9UW) || (WORDWIDTH_SRC == XF_72UW) || (WORDWIDTH_SRC == XF_144UW)) && \"WORDWIDTH_SRC must be XF_9UW, XF_72UW or XF_144UW\"","xf_hog_descriptor_pm.hpp",(unsigned int )186,__PRETTY_FUNCTION__);
  (5 == ((int )XF_16UW) || 5 == ((int )XF_128UW) || 5 == ((int )XF_256UW)) && ((bool )"WORDWIDTH_DST must be XF_16UW, XF_128UW or XF_256UW")?((void )0) : __assert_fail("((WORDWIDTH_DST == XF_16UW) || (WORDWIDTH_DST == XF_128UW) || (WORDWIDTH_DST == XF_256UW)) && \"WORDWIDTH_DST must be XF_16UW, XF_128UW or XF_256UW\"","xf_hog_descriptor_pm.hpp",(unsigned int )189,__PRETTY_FUNCTION__);
  p_Z25xFHOGPhaseMagnitudeKernelILi2160ELi3840ELi13ELi2ELi1ELi2ELi5ELi3840EER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEtt_1(_grad_x,_grad_y,_phase_stream,_mag_stream,height,width);
}

static void p_Z16xFDHOGbilinearNOILi2E7ap_uintILi25EELi9ELi2560EE7ap_uintILi16EE7ap_uintILi16EEPtP7ap_uintILi25EE_1(_PixelType_2_name p,_PixelType_2_name m,unsigned short *bin_center,class ap_uint< 25 > *bin)
{
  unsigned int tmp_bin_idx = (unsigned int )((p*3276));
  unsigned char bin_idx = (unsigned char )(tmp_bin_idx >> 23);
  unsigned char index_1;
  unsigned char index_2;
  unsigned int mag_factor = (unsigned int )((m*3276));
  unsigned short frac = (unsigned short )0;
  if (p<bin_center[bin_idx]) {
    if (((int )bin_idx) == 0) {
      frac = ((unsigned short )((p-(((int )bin_center[bin_idx]) - 2560))));
      index_1 = bin_idx;
      index_2 = ((unsigned char )(9 - 1));
    }
     else {
      frac = ((unsigned short )((p-bin_center[((int )bin_idx) - 1])));
      index_1 = bin_idx;
      index_2 = ((unsigned char )(((int )bin_idx) - 1));
    }
  }
   else {
    if (((int )bin_idx) == 9 - 1) {
      frac = ((unsigned short )(((((int )bin_center[bin_idx]) + 2560)-p)));
      index_1 = bin_idx;
      index_2 = ((unsigned char )0);
    }
     else {
      frac = ((unsigned short )((bin_center[((int )bin_idx) + 1]-p)));
      index_1 = bin_idx;
      index_2 = ((unsigned char )(((int )bin_idx) + 1));
    }
  }
  class ap_uint< 25 > part_1 = ap_uint< 25> (ap_uint< 40> (frac)*ap_uint< 40> (mag_factor)>>22);
  unsigned int m_shifted = ((unsigned int )(m)) << 1;
  class ap_uint< 25 > part_2 = m_shifted-part_1;
  bin[index_1]+=part_1;
  bin[index_2]+=part_2;
}
const int _ZN13StreamType_5_8bitdepthE = 16;

static void p_Z19xFDHOGcomputeHistNOILi2160ELi3840ELi2ELi1ELi5ELi8ELi8ELi480ELi3840ELi8ELi20E7ap_uintILi25EELi9E7ap_uintILi48EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEPA9_7ap_uintILi25EEP7ap_uintILi48EEPtt_1(hls::stream< _StreamType_5_name  > &_phase_strm,hls::stream< _StreamType_5_name  > &_mag_strm,class ap_uint< 25 > HA[][9],class ap_uint< 48 > *ssv,unsigned short *bin_center,unsigned short nohc)
{
  _StreamType_5_name phase_data;
  _StreamType_5_name mag_data;
  _PixelType_2_name p;
  _PixelType_2_name m;
  unsigned short proc_loop = (unsigned short )_ZN13StreamType_5_8bitdepthE;
  unsigned short frac;
  unsigned char step = (unsigned char )_ZN12PixelType_2_8bitdepthE;
  unsigned char bin_idx = (unsigned char )0;
  class ap_uint< 16 > i;
  class ap_uint< 16 > j;
  class ap_uint< 16 > r;
  class ap_uint< 8 > k;
  class ap_uint< 25 > bin[9];
  
#pragma ACCEL PIPELINE auto{__PIPE__L32}
  loop_i_init_zero:
  for (i = 0; i<nohc; i ++ ) {
    loop_j_init_zero:
    for (j = 0; j<9; j ++ ) {
      HA[(long )(i)][(long )(j)] = 0;
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L33}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L33}
  cell_height_loop:
  for (i = 0; i<8; i ++ ) {
    
#pragma ACCEL PIPELINE auto{__PIPE__L37}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L37}
    no_of_horz_cell_loop:
    for (r = 0; r<nohc; r ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=480 max=480
      init_bin_loop_k:
      for (k = 0; k<9; k ++ ) {
        bin[(long )(k)] = 0;
      }
      img_col_loop:
      for (j = 0; j<8; j ++ ) {
        phase_data = _phase_strm . read();
        mag_data = _mag_strm . read();
        p = phase_data . range((((int )step) - 1),0);
        m = mag_data . range((((int )step) - 1),0);
        if (p>23040) {
          p = p-23040;
        }
        p_Z16xFDHOGbilinearNOILi2E7ap_uintILi25EELi9ELi2560EE7ap_uintILi16EE7ap_uintILi16EEPtP7ap_uintILi25EE_1(p,m,bin_center,bin);
      }
      hist_BRAM_updation_loop:
      for (k = 0; k<9; k ++ ) {
        HA[(long )(r)][(long )(k)]+=bin[(long )(k)];
      }
      class ap_uint< 48 > tmp(0);
      tmp_ssv_computation:
      for (k = 0; k<9; k ++ ) {
        tmp+=HA[(long )(r)][(long )(k)]*HA[(long )(r)][(long )(k)];
      }
      ssv[(long )(r)] = tmp;
    }
  }
}

static void p_Z17xFDHOGcomputeHistILi2160ELi3840ELi2ELi1ELi5ELi8ELi8ELi480ELi3840ELi8ELi20ELi9E7ap_uintILi25EE7ap_uintILi48EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEPA9_7ap_uintILi25EEP7ap_uintILi48EEPtt_1(hls::stream< _StreamType_5_name  > &_phase_strm,hls::stream< _StreamType_5_name  > &_mag_strm,class ap_uint< 25 > HA[][9],class ap_uint< 48 > *ssv,unsigned short *bin_center,unsigned short nohc)
{
  p_Z19xFDHOGcomputeHistNOILi2160ELi3840ELi2ELi1ELi5ELi8ELi8ELi480ELi3840ELi8ELi20E7ap_uintILi25EELi9E7ap_uintILi48EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEPA9_7ap_uintILi25EEP7ap_uintILi48EEPtt_1(_phase_strm,_mag_strm,HA,ssv,bin_center,nohc);
}

static class ap_uint< 24 > p_Z9xFSqrtHOGILi24ELi50ELi50ELi5ELi0EE9ap_ufixedILi50ELi50ELi5ELi0ELi0EE_1(class ap_ufixed< 50 , 50 , AP_TRN , AP_SAT , 0 > x)
{
  50 >= 0 && ((bool )"Number of integer bits for sqrt() must be greater than zero")?((void )0) : __assert_fail("I >= 0 && \"Number of integer bits for sqrt() must be greater than zero\"","xf_hog_descriptor_utility.hpp",(unsigned int )722,__PRETTY_FUNCTION__);
  50 >= 50 && ((bool )"Number of integer bits for sqrt() must be less than or equal to total width")?((void )0) : __assert_fail("W >= I && \"Number of integer bits for sqrt() must be less than or equal to total width\"","xf_hog_descriptor_utility.hpp",(unsigned int )724,__PRETTY_FUNCTION__);
  class ap_ufixed< 51 , 50 , AP_TRN , AP_WRAP , 0 > factor(0);
  bool offset;
  if (50 % 2 == 0) {
    offset = ((bool )1);
  }
   else {
    offset = ((bool )0);
  }
  factor[(50 + 1 - 1 - ((int )offset))] = ((bool )1);
  class ap_ufixed< 52 , 51 , AP_TRN , AP_WRAP , 0 > result(0);
  class ap_ufixed< 53 , 52 , AP_TRN , AP_WRAP , 0 > x2(x);
  int _s_i = (unsigned char )(50 + 1 - ((int )offset));
  unsigned char _l_i = (unsigned char )(50 + 1 - ((int )offset));
// Canonicalized from: for(unsigned char i =(unsigned char )(50 + 1 -((int )offset));((int )_s_i) >(50 - 1) / 2;_s_i -= 1) {...}
  for (_s_i = ((unsigned char )(50 + 1 - ((int )offset))); _s_i >= 25; --_s_i) {
    class ap_ufixed< 53 , 52 , AP_TRN , AP_WRAP , 0 > t((result<<1)+factor);
    class ap_ufixed< 51 , 50 , AP_TRN , AP_WRAP , 0 > thisfactor(0);
    if (x2>=t) {
      x2-=t;
      thisfactor = factor;
    }
    result = result+thisfactor;
    factor>>=1;
    x2<<=1;
  }
  return (result>>(50 - 1 >> 1));
}

static void p_Z22xFDHOGnormalizeKernel1IP7ap_uintILi48EE7ap_uintILi26EEEP7ap_uintILi48EEP7ap_uintILi48EEtR7ap_uintILi26EE_1(class ap_uint< 48 > *ssv_1,class ap_uint< 48 > *ssv_2,unsigned short bj,class ap_uint< 26 > &tmp_nf_sq24)
{
  class ap_uint< 51 > tmp_nf_1;
  class ap_uint< 51 > tmp_nf_2;
  tmp_nf_1 = ssv_1[bj]+ssv_2[bj];
  tmp_nf_2 = ssv_1[((int )bj) + 1]+ssv_2[((int )bj) + 1];
  class ap_ufixed< 50 , 50 , AP_TRN , AP_SAT , 0 > tmp_nf_sum;
  tmp_nf_sum = tmp_nf_1+tmp_nf_2;
  tmp_nf_sq24 = p_Z9xFSqrtHOGILi24ELi50ELi50ELi5ELi0EE9ap_ufixedILi50ELi50ELi5ELi0ELi0EE_1(tmp_nf_sum)+921;
}

static char xFIdentifySignBits(class ap_uint< 24 > in_val)
{
  class ap_uint< 1 > flag(0);
  char counter = (char )0;
  class ap_uint< 1 > sign_bit(in_val . range(23,23));
  signBitsLoop:
  for (class ap_uint< 5 > i(0); i<24; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=24 max=24
    if (flag==0) {
      bool bit_val = (bool )(in_val . range((23 - ((int )counter)),(23 - ((int )counter))));
      if (((int )bit_val)==sign_bit) {
        counter++;
      }
       else {
        flag = 1;
      }
    }
  }
  return counter;
}
unsigned short _ZN2xf12division_lutE[2049UL] = {(65535), (65535), (65535), (65504), (65472), (65440), (65408), (65376), (65344), (65312), (65280), (65249), (65217), (65185), (65154), (65122), (65091), (65059), (65027), (64996), (64965), (64933), (64902), (64870), (64839), (64808), (64776), (64745), (64714), (64683), (64652), (64620), (64589), (64558), (64527), (64496), (64465), (64434), (64403), (64373), (64342), (64311), (64280), (64249), (64219), (64188), (64157), (64126), (64096), (64065), (64035), (64004), (63974), (63943), (63913), (63882), (63852), (63822), (63791), (63761), (63731), (63700), (63670), (63640), (63610), (63580), (63550), (63519), (63489), (63459), (63429), (63399), (63370), (63340), (63310), (63280), (63250), (63220), (63191), (63161), (63131), (63101), (63072), (63042), (63013), (62983), (62953), (62924), (62894), (62865), (62836), (62806), (62777), (62747), (62718), (62689), (62660), (62630), (62601), (62572), (62543), (62514), (62484), (62455), (62426), (62397), (62368), (62339), (62310), (62282), (62253), (62224), (62195), (62166), (62137), (62109), (62080), (62051), (62022), (61994), (61965), (61937), (61908), (61880), (61851), (61822), (61794), (61766), (61737), (61709), (61680), (61652), (61624), (61596), (61567), (61539), (61511), (61483), (61455), (61426), (61398), (61370), (61342), (61314), (61286), (61258), (61230), (61202), (61174), (61147), (61119), (61091), (61063), (61035), (61008), (60980), (60952), (60924), (60897), (60869), (60842), (60814), (60787), (60759), (60732), (60704), (60677), (60649), (60622), (60594), (60567), (60540), (60512), (60485), (60458), (60431), (60404), (60376), (60349), (60322), (60295), (60268), (60241), (60214), (60187), (60160), (60133), (60106), (60079), (60052), (60025), (59998), (59972), (59945), (59918), (59891), (59865), (59838), (59811), (59785), (59758), (59731), (59705), (59678), (59652), (59625), (59599), (59572), (59546), (59520), (59493), (59467), (59440), (59414), (59388), (59362), (59335), (59309), (59283), (59257), (59231), (59204), (59178), (59152), (59126), (59100), (59074), (59048), (59022), (58996), (58970), (58944), (58919), (58893), (58867), (58841), (58815), (58790), (58764), (58738), (58712), (58687), (58661), (58635), (58610), (58584), (58559), (58533), (58508), (58482), (58457), (58431), (58406), (58380), (58355), (58330), (58304), (58279), (58254), (58228), (58203), (58178), (58153), (58128), (58102), (58077), (58052), (58027), (58002), (57977), (57952), (57927), (57902), (57877), (57852), (57827), (57802), (57777), (57752), (57728), (57703), (57678), (57653), (57628), (57604), (57579), (57554), (57530), (57505), (57480), (57456), (57431), (57407), (57382), (57358), (57333), (57309), (57284), (57260), (57235), (57211), (57186), (57162), (57138), (57113), (57089), (57065), (57041), (57016), (56992), (56968), (56944), (56920), (56896), (56871), (56847), (56823), (56799), (56775), (56751), (56727), (56703), (56679), (56655), (56631), (56608), (56584), (56560), (56536), (56512), (56488), (56465), (56441), (56417), (56394), (56370), (56346), (56323), (56299), (56275), (56252), (56228), (56205), (56181), (56158), (56134), (56111), (56087), (56064), (56040), (56017), (55994), (55970), (55947), (55924), (55900), (55877), (55854), (55831), (55807), (55784), (55761), (55738), (55715), (55692), (55668), (55645), (55622), (55599), (55576), (55553), (55530), (55507), (55484), (55461), (55438), (55416), (55393), (55370), (55347), (55324), (55301), (55279), (55256), (55233), (55210), (55188), (55165), (55142), (55120), (55097), (55074), (55052), (55029), (55007), (54984), (54962), (54939), (54917), (54894), (54872), (54849), (54827), (54805), (54782), (54760), (54738), (54715), (54693), (54671), (54648), (54626), (54604), (54582), (54560), (54537), (54515), (54493), (54471), (54449), (54427), (54405), (54383), (54361), (54339), (54317), (54295), (54273), (54251), (54229), (54207), (54185), (54163), (54141), (54120), (54098), (54076), (54054), (54032), (54011), (53989), (53967), (53946), (53924), (53902), (53881), (53859), (53837), (53816), (53794), (53773), (53751), (53730), (53708), (53687), (53665), (53644), (53622), (53601), (53579), (53558), (53537), (53515), (53494), (53473), (53451), (53430), (53409), (53388), (53366), (53345), (53324), (53303), (53282), (53261), (53239), (53218), (53197), (53176), (53155), (53134), (53113), (53092), (53071), (53050), (53029), (53008), (52987), (52966), (52945), (52924), (52904), (52883), (52862), (52841), (52820), (52800), (52779), (52758), (52737), (52717), (52696), (52675), (52655), (52634), (52613), (52593), (52572), (52551), (52531), (52510), (52490), (52469), (52449), (52428), (52408), (52387), (52367), (52347), (52326), (52306), (52285), (52265), (52245), (52224), (52204), (52184), (52163), (52143), (52123), (52103), (52082), (52062), (52042), (52022), (52002), (51982), (51961), (51941), (51921), (51901), (51881), (51861), (51841), (51821), (51801), (51781), (51761), (51741), (51721), (51701), (51681), (51661), (51642), (51622), (51602), (51582), (51562), (51542), (51523), (51503), (51483), (51463), (51444), (51424), (51404), (51385), (51365), (51345), (51326), (51306), (51286), (51267), (51247), (51228), (51208), (51189), (51169), (51150), (51130), (51111), (51091), (51072), (51052), (51033), (51013), (50994), (50975), (50955), (50936), (50917), (50897), (50878), (50859), (50840), (50820), (50801), (50782), (50763), (50743), (50724), (50705), (50686), (50667), (50648), (50629), (50610), (50590), (50571), (50552), (50533), (50514), (50495), (50476), (50457), (50438), (50419), (50400), (50382), (50363), (50344), (50325), (50306), (50287), (50268), (50249), (50231), (50212), (50193), (50174), (50156), (50137), (50118), (50099), (50081), (50062), (50043), (50025), (50006), (49987), (49969), (49950), (49932), (49913), (49895), (49876), (49857), (49839), (49820), (49802), (49784), (49765), (49747), (49728), (49710), (49691), (49673), (49655), (49636), (49618), (49600), (49581), (49563), (49545), (49526), (49508), (49490), (49472), (49453), (49435), (49417), (49399), (49381), (49362), (49344), (49326), (49308), (49290), (49272), (49254), (49236), (49218), (49200), (49182), (49164), (49146), (49128), (49110), (49092), (49074), (49056), (49038), (49020), (49002), (48984), (48966), (48948), (48931), (48913), (48895), (48877), (48859), (48841), (48824), (48806), (48788), (48770), (48753), (48735), (48717), (48700), (48682), (48664), (48647), (48629), (48612), (48594), (48576), (48559), (48541), (48524), (48506), (48489), (48471), (48454), (48436), (48419), (48401), (48384), (48366), (48349), (48331), (48314), (48297), (48279), (48262), (48245), (48227), (48210), (48193), (48175), (48158), (48141), (48123), (48106), (48089), (48072), (48055), (48037), (48020), (48003), (47986), (47969), (47952), (47934), (47917), (47900), (47883), (47866), (47849), (47832), (47815), (47798), (47781), (47764), (47747), (47730), (47713), (47696), (47679), (47662), (47645), (47628), (47611), (47594), (47578), (47561), (47544), (47527), (47510), (47493), (47477), (47460), (47443), (47426), (47410), (47393), (47376), (47359), (47343), (47326), (47309), (47293), (47276), (47259), (47243), (47226), (47209), (47193), (47176), (47160), (47143), (47127), (47110), (47093), (47077), (47060), (47044), (47027), (47011), (46995), (46978), (46962), (46945), (46929), (46912), (46896), (46880), (46863), (46847), (46831), (46814), (46798), (46782), (46765), (46749), (46733), (46716), (46700), (46684), (46668), (46651), (46635), (46619), (46603), (46587), (46571), (46554), (46538), (46522), (46506), (46490), (46474), (46458), (46442), (46426), (46410), (46393), (46377), (46361), (46345), (46329), (46313), (46297), (46281), (46266), (46250), (46234), (46218), (46202), (46186), (46170), (46154), (46138), (46122), (46107), (46091), (46075), (46059), (46043), (46028), (46012), (45996), (45980), (45964), (45949), (45933), (45917), (45902), (45886), (45870), (45855), (45839), (45823), (45808), (45792), (45776), (45761), (45745), (45730), (45714), (45698), (45683), (45667), (45652), (45636), (45621), (45605), (45590), (45574), (45559), (45543), (45528), (45512), (45497), (45482), (45466), (45451), (45435), (45420), (45405), (45389), (45374), (45359), (45343), (45328), (45313), (45297), (45282), (45267), (45252), (45236), (45221), (45206), (45191), (45175), (45160), (45145), (45130), (45115), (45100), (45084), (45069), (45054), (45039), (45024), (45009), (44994), (44979), (44964), (44949), (44933), (44918), (44903), (44888), (44873), (44858), (44843), (44828), (44813), (44798), (44784), (44769), (44754), (44739), (44724), (44709), (44694), (44679), (44664), (44649), (44635), (44620), (44605), (44590), (44575), (44561), (44546), (44531), (44516), (44501), (44487), (44472), (44457), (44442), (44428), (44413), (44398), (44384), (44369), (44354), (44340), (44325), (44310), (44296), (44281), (44267), (44252), (44237), (44223), (44208), (44194), (44179), (44165), (44150), (44136), (44121), (44107), (44092), (44078), (44063), (44049), (44034), (44020), (44005), (43991), (43976), (43962), (43948), (43933), (43919), (43905), (43890), (43876), (43862), (43847), (43833), (43819), (43804), (43790), (43776), (43761), (43747), (43733), (43719), (43704), (43690), (43676), (43662), (43648), (43633), (43619), (43605), (43591), (43577), (43563), (43548), (43534), (43520), (43506), (43492), (43478), (43464), (43450), (43436), (43422), (43408), (43394), (43380), (43365), (43351), (43337), (43323), (43310), (43296), (43282), (43268), (43254), (43240), (43226), (43212), (43198), (43184), (43170), (43156), (43142), (43129), (43115), (43101), (43087), (43073), (43059), (43046), (43032), (43018), (43004), (42990), (42977), (42963), (42949), (42935), (42922), (42908), (42894), (42881), (42867), (42853), (42840), (42826), (42812), (42799), (42785), (42771), (42758), (42744), (42730), (42717), (42703), (42690), (42676), (42662), (42649), (42635), (42622), (42608), (42595), (42581), (42568), (42554), (42541), (42527), (42514), (42500), (42487), (42473), (42460), (42447), (42433), (42420), (42406), (42393), (42380), (42366), (42353), (42339), (42326), (42313), (42299), (42286), (42273), (42259), (42246), (42233), (42220), (42206), (42193), (42180), (42167), (42153), (42140), (42127), (42114), (42100), (42087), (42074), (42061), (42048), (42034), (42021), (42008), (41995), (41982), (41969), (41956), (41943), (41929), (41916), (41903), (41890), (41877), (41864), (41851), (41838), (41825), (41812), (41799), (41786), (41773), (41760), (41747), (41734), (41721), (41708), (41695), (41682), (41669), (41656), (41643), (41630), (41617), (41605), (41592), (41579), (41566), (41553), (41540), (41527), (41514), (41502), (41489), (41476), (41463), (41450), (41438), (41425), (41412), (41399), (41386), (41374), (41361), (41348), (41335), (41323), (41310), (41297), (41285), (41272), (41259), (41246), (41234), (41221), (41209), (41196), (41183), (41171), (41158), (41145), (41133), (41120), (41108), (41095), (41082), (41070), (41057), (41045), (41032), (41020), (41007), (40995), (40982), (40970), (40957), (40945), (40932), (40920), (40907), (40895), (40882), (40870), (40857), (40845), (40832), (40820), (40808), (40795), (40783), (40770), (40758), (40746), (40733), (40721), (40709), (40696), (40684), (40672), (40659), (40647), (40635), (40622), (40610), (40598), (40585), (40573), (40561), (40549), (40536), (40524), (40512), (40500), (40488), (40475), (40463), (40451), (40439), (40427), (40414), (40402), (40390), (40378), (40366), (40354), (40341), (40329), (40317), (40305), (40293), (40281), (40269), (40257), (40245), (40233), (40221), (40209), (40196), (40184), (40172), (40160), (40148), (40136), (40124), (40112), (40100), (40088), (40076), (40064), (40053), (40041), (40029), (40017), (40005), (39993), (39981), (39969), (39957), (39945), (39933), (39921), (39910), (39898), (39886), (39874), (39862), (39850), (39839), (39827), (39815), (39803), (39791), (39780), (39768), (39756), (39744), (39732), (39721), (39709), (39697), (39685), (39674), (39662), (39650), (39639), (39627), (39615), (39603), (39592), (39580), (39568), (39557), (39545), (39533), (39522), (39510), (39499), (39487), (39475), (39464), (39452), (39441), (39429), (39417), (39406), (39394), (39383), (39371), (39360), (39348), (39336), (39325), (39313), (39302), (39290), (39279), (39267), (39256), (39244), (39233), (39222), (39210), (39199), (39187), (39176), (39164), (39153), (39141), (39130), (39119), (39107), (39096), (39084), (39073), (39062), (39050), (39039), (39028), (39016), (39005), (38994), (38982), (38971), (38960), (38948), (38937), (38926), (38914), (38903), (38892), (38881), (38869), (38858), (38847), (38836), (38824), (38813), (38802), (38791), (38780), (38768), (38757), (38746), (38735), (38724), (38712), (38701), (38690), (38679), (38668), (38657), (38646), (38634), (38623), (38612), (38601), (38590), (38579), (38568), (38557), (38546), (38535), (38524), (38512), (38501), (38490), (38479), (38468), (38457), (38446), (38435), (38424), (38413), (38402), (38391), (38380), (38369), (38358), (38347), (38336), (38326), (38315), (38304), (38293), (38282), (38271), (38260), (38249), (38238), (38227), (38216), (38206), (38195), (38184), (38173), (38162), (38151), (38140), (38130), (38119), (38108), (38097), (38086), (38075), (38065), (38054), (38043), (38032), (38022), (38011), (38000), (37989), (37978), (37968), (37957), (37946), (37936), (37925), (37914), (37903), (37893), (37882), (37871), (37861), (37850), (37839), (37829), (37818), (37807), (37797), (37786), (37775), (37765), (37754), (37744), (37733), (37722), (37712), (37701), (37691), (37680), (37669), (37659), (37648), (37638), (37627), (37617), (37606), (37596), (37585), (37574), (37564), (37553), (37543), (37532), (37522), (37511), (37501), (37490), (37480), (37470), (37459), (37449), (37438), (37428), (37417), (37407), (37396), (37386), (37376), (37365), (37355), (37344), (37334), (37324), (37313), (37303), (37293), (37282), (37272), (37262), (37251), (37241), (37230), (37220), (37210), (37200), (37189), (37179), (37169), (37158), (37148), (37138), (37128), (37117), (37107), (37097), (37086), (37076), (37066), (37056), (37046), (37035), (37025), (37015), (37005), (36994), (36984), (36974), (36964), (36954), (36944), (36933), (36923), (36913), (36903), (36893), (36883), (36873), (36862), (36852), (36842), (36832), (36822), (36812), (36802), (36792), (36782), (36771), (36761), (36751), (36741), (36731), (36721), (36711), (36701), (36691), (36681), (36671), (36661), (36651), (36641), (36631), (36621), (36611), (36601), (36591), (36581), (36571), (36561), (36551), (36541), (36531), (36521), (36511), (36501), (36492), (36482), (36472), (36462), (36452), (36442), (36432), (36422), (36412), (36402), (36393), (36383), (36373), (36363), (36353), (36343), (36333), (36324), (36314), (36304), (36294), (36284), (36275), (36265), (36255), (36245), (36235), (36226), (36216), (36206), (36196), (36187), (36177), (36167), (36157), (36148), (36138), (36128), (36118), (36109), (36099), (36089), (36080), (36070), (36060), (36050), (36041), (36031), (36021), (36012), (36002), (35992), (35983), (35973), (35964), (35954), (35944), (35935), (35925), (35915), (35906), (35896), (35887), (35877), (35867), (35858), (35848), (35839), (35829), (35820), (35810), (35800), (35791), (35781), (35772), (35762), (35753), (35743), (35734), (35724), (35715), (35705), (35696), (35686), (35677), (35667), (35658), (35648), (35639), (35629), (35620), (35610), (35601), (35592), (35582), (35573), (35563), (35554), (35544), (35535), (35526), (35516), (35507), (35497), (35488), (35479), (35469), (35460), (35451), (35441), (35432), (35422), (35413), (35404), (35394), (35385), (35376), (35366), (35357), (35348), (35339), (35329), (35320), (35311), (35301), (35292), (35283), (35274), (35264), (35255), (35246), (35237), (35227), (35218), (35209), (35200), (35190), (35181), (35172), (35163), (35153), (35144), (35135), (35126), (35117), (35107), (35098), (35089), (35080), (35071), (35062), (35052), (35043), (35034), (35025), (35016), (35007), (34998), (34988), (34979), (34970), (34961), (34952), (34943), (34934), (34925), (34916), (34907), (34898), (34888), (34879), (34870), (34861), (34852), (34843), (34834), (34825), (34816), (34807), (34798), (34789), (34780), (34771), (34762), (34753), (34744), (34735), (34726), (34717), (34708), (34699), (34690), (34681), (34672), (34663), (34654), (34645), (34636), (34627), (34618), (34610), (34601), (34592), (34583), (34574), (34565), (34556), (34547), (34538), (34529), (34521), (34512), (34503), (34494), (34485), (34476), (34467), (34458), (34450), (34441), (34432), (34423), (34414), (34405), (34397), (34388), (34379), (34370), (34361), (34353), (34344), (34335), (34326), (34318), (34309), (34300), (34291), (34282), (34274), (34265), (34256), (34247), (34239), (34230), (34221), (34213), (34204), (34195), (34186), (34178), (34169), (34160), (34152), (34143), (34134), (34126), (34117), (34108), (34100), (34091), (34082), (34074), (34065), (34056), (34048), (34039), (34030), (34022), (34013), (34005), (33996), (33987), (33979), (33970), (33961), (33953), (33944), (33936), (33927), (33919), (33910), (33901), (33893), (33884), (33876), (33867), (33859), (33850), (33842), (33833), (33825), (33816), (33807), (33799), (33790), (33782), (33773), (33765), (33756), (33748), (33740), (33731), (33723), (33714), (33706), (33697), (33689), (33680), (33672), (33663), (33655), (33646), (33638), (33630), (33621), (33613), (33604), (33596), (33588), (33579), (33571), (33562), (33554), (33546), (33537), (33529), (33520), (33512), (33504), (33495), (33487), (33479), (33470), (33462), (33454), (33445), (33437), (33429), (33420), (33412), (33404), (33395), (33387), (33379), (33370), (33362), (33354), (33346), (33337), (33329), (33321), (33312), (33304), (33296), (33288), (33279), (33271), (33263), (33255), (33246), (33238), (33230), (33222), (33213), (33205), (33197), (33189), (33181), (33172), (33164), (33156), (33148), (33140), (33132), (33123), (33115), (33107), (33099), (33091), (33083), (33074), (33066), (33058), (33050), (33042), (33034), (33026), (33017), (33009), (33001), (32993), (32985), (32977), (32969), (32961), (32953), (32944), (32936), (32928), (32920), (32912), (32904), (32896), (32888), (32880), (32872), (32864), (32856), (32848), (32840), (32832), (32824), (32816), (32808), (32800), (32792), (32784)};

static unsigned int p_ZN2xf7InverseEtiPc(unsigned short x,int M,char *N)
{
  M <= 16 && ((bool )"Integer part of x should always be less than or equal to 16 bits.")?((void )0) : __assert_fail("(M<=16) && \"Integer part of x should always be less than or equal to 16 bits.\"","xf_math.h",(unsigned int )234,__PRETTY_FUNCTION__);
  unsigned int val = (unsigned int )0;
  unsigned int index;
  int B_L = 16 + 1;
  int tmp = 4;
  int pos;
  int block;
  pos = block = 0;
  int shift = 0;
  unsigned short x1 = (unsigned short )(((int )x) >> 12 & 0x000F);
  unsigned short x2 = (unsigned short )(((int )x) >> 8 & 0x000F);
  unsigned short x3 = (unsigned short )(((int )x) >> 4 & 0x000F);
  unsigned short x4 = (unsigned short )(((int )x) & 0x000F);
  unsigned short tmpx = (unsigned short )0;
  if (((int )x) == 0) {
    return (unsigned int )_ZN2xf12division_lutE[0];
  }
   else {
    if (((int )x1) > 0) {
      tmpx = x1;
      block = 0;
      for (tmp = 0; tmp < 4; tmp++) {
        
#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4
        tmpx = ((unsigned short )(((int )x1) >> 3 - tmp));
        if ((bool )tmpx) {
          pos = tmp + 1;
          break; 
        }
      }
    }
     else {
      if (((int )x2) > 0) {
        block = 1;
        tmpx = x2;
        for (tmp = 0; tmp < 4; tmp++) {
          
#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4
          tmpx = ((unsigned short )(((int )x2) >> 3 - tmp));
          if ((bool )tmpx) {
            pos = tmp + 1;
            break; 
          }
        }
      }
       else {
        if (((int )x3) > 0) {
          block = 2;
          tmpx = x3;
          for (tmp = 0; tmp < 4; tmp++) {
            
#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4
            tmpx = ((unsigned short )(((int )x3) >> 3 - tmp));
            if ((bool )tmpx) {
              pos = tmp + 1;
              break; 
            }
          }
        }
         else {
          block = 3;
          tmpx = x4;
          for (tmp = 0; tmp < 4; tmp++) {
            
#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4
            tmpx = ((unsigned short )(((int )x4) >> 3 - tmp));
            if ((bool )tmpx) {
              pos = tmp + 1;
              break; 
            }
          }
        }
      }
    }
  }
  B_L = 4 * block + pos;
  shift = 16 - 11 - 1;
  if (B_L >= 1) {
    index = ((unsigned int )((((int )x) << B_L - 1 & 0x7FFF) >> shift));
  }
   else {
    index = ((unsigned int )((((int )x) & 0x7FFF) >> shift));
  }
  val = ((unsigned int )_ZN2xf12division_lutE[index]);
   *N = ((char )(M + 16 - B_L));
  return val;
}

static unsigned int xFInverse24Kernel(class ap_uint< 24 > in_val,int m,char s,char *n)
{
  class ap_uint< 24 > catch_val = in_val<<s;
  int m1 = m - ((int )s);
  unsigned short in_val_shifted = (unsigned short )(catch_val . range(23,8));
  char n2;
  unsigned int out_val = p_ZN2xf7InverseEtiPc(in_val_shifted,m1,&n2);
  unsigned int _out = out_val;
   *n = n2;
  char tmp_n = (char )(((int )n2) - ((int )s));
  if (((int )tmp_n) < 0) {
    char tmp_n_2 = (char )(-((int )tmp_n));
    tmp_n = ((char )0);
    _out = out_val << ((int )tmp_n_2);
     *n = ((char )(((int )n2) + ((int )tmp_n_2)));
  }
  return _out;
}

static unsigned int xFInverse24(class ap_uint< 24 > in_val,int m,char *n)
{
  unsigned int out_val;
  char s = xFIdentifySignBits(in_val);
  out_val = xFInverse24Kernel(in_val,m,s,n);
  return out_val;
}

static void p_Z24xFDHOGnormalizeKernelInvI7ap_uintILi26EEjE7ap_uintILi26EERjRc_1(class ap_uint< 26 > tmp_nf_sq24,unsigned int &nf,char &n)
{
  int m = 16;
  nf = xFInverse24(tmp_nf_sq24,m,&n);
}

static class ap_uint< 17 > p_Z9xFSqrtHOGILi17ELi33ELi33ELi5ELi0EE9ap_ufixedILi33ELi33ELi5ELi0ELi0EE_1(class ap_ufixed< 33 , 33 , AP_TRN , AP_SAT , 0 > x)
{
  33 >= 0 && ((bool )"Number of integer bits for sqrt() must be greater than zero")?((void )0) : __assert_fail("I >= 0 && \"Number of integer bits for sqrt() must be greater than zero\"","xf_hog_descriptor_utility.hpp",(unsigned int )722,__PRETTY_FUNCTION__);
  33 >= 33 && ((bool )"Number of integer bits for sqrt() must be less than or equal to total width")?((void )0) : __assert_fail("W >= I && \"Number of integer bits for sqrt() must be less than or equal to total width\"","xf_hog_descriptor_utility.hpp",(unsigned int )724,__PRETTY_FUNCTION__);
  class ap_ufixed< 34 , 33 , AP_TRN , AP_WRAP , 0 > factor(0);
  bool offset;
  if (33 % 2 == 0) {
    offset = ((bool )1);
  }
   else {
    offset = ((bool )0);
  }
  factor[(33 + 1 - 1 - ((int )offset))] = ((bool )1);
  class ap_ufixed< 35 , 34 , AP_TRN , AP_WRAP , 0 > result(0);
  class ap_ufixed< 36 , 35 , AP_TRN , AP_WRAP , 0 > x2(x);
  int _s_i = (unsigned char )(33 + 1 - ((int )offset));
  unsigned char _l_i = (unsigned char )(33 + 1 - ((int )offset));
// Canonicalized from: for(unsigned char i =(unsigned char )(33 + 1 -((int )offset));((int )_s_i) >(33 - 1) / 2;_s_i -= 1) {...}
  for (_s_i = ((unsigned char )(33 + 1 - ((int )offset))); _s_i >= 17; --_s_i) {
    class ap_ufixed< 36 , 35 , AP_TRN , AP_WRAP , 0 > t((result<<1)+factor);
    class ap_ufixed< 34 , 33 , AP_TRN , AP_WRAP , 0 > thisfactor(0);
    if (x2>=t) {
      x2-=t;
      thisfactor = factor;
    }
    result = result+thisfactor;
    factor>>=1;
    x2<<=1;
  }
  return (result>>(33 - 1 >> 1));
}

static void p_Z22xFDHOGnormalizeKernel2ILi480ELi2ELi2E7ap_uintILi25EELi9EttjEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEjPtRttc_1(class ap_uint< 25 > HA_1[][9],class ap_uint< 25 > HA_2[][9],unsigned int nf,unsigned short *norm_block,unsigned short &fx_rnf_sq,unsigned short bj,char n)
{
  unsigned int tmp_clip_1;
  unsigned int tmp_clip_2;
  unsigned char offset_1[2];
  unsigned char offset_2[2];
  offset_1[0] = ((unsigned char )0);
  offset_1[1] = ((unsigned char )(9 << 1));
  offset_2[0] = ((unsigned char )9);
  offset_2[1] = ((unsigned char )((9 << 1) + 9));
  unsigned short fx_clip_val = (unsigned short )13108;
  class ap_uint< 16 > i;
  class ap_uint< 16 > j;
  class ap_uint< 33 > rnf_sum(0);
  
#pragma ACCEL PIPELINE auto{__PIPE__L34}
  norm_loop:
  for (j = 0; j<2; j ++ ) {
    num_of_bins_loop:
    for (i = 0; i<9; i ++ ) {
      tmp_clip_1 = ((unsigned int )((HA_1[(long )((bj+j))][(long )(i)]*nf>>((int )n) - 8)));
      tmp_clip_2 = ((unsigned int )((HA_2[(long )((bj+j))][(long )(i)]*nf>>((int )n) - 8)));
      if (tmp_clip_1 > ((unsigned int )fx_clip_val)) {
        tmp_clip_1 = ((unsigned int )fx_clip_val);
      }
      if (tmp_clip_2 > ((unsigned int )fx_clip_val)) {
        tmp_clip_2 = ((unsigned int )fx_clip_val);
      }
      norm_block[(long )((offset_1[(long )(j)]+i))] = ((unsigned short )tmp_clip_1);
      norm_block[(long )((offset_2[(long )(j)]+i))] = ((unsigned short )tmp_clip_2);
      rnf_sum+=((int )norm_block[(long )((offset_1[(long )(j)]+i))]) * ((int )norm_block[(long )((offset_1[(long )(j)]+i))]) + ((int )norm_block[(long )((offset_2[(long )(j)]+i))]) * ((int )norm_block[(long )((offset_2[(long )(j)]+i))]);
    }
  }
  class ap_ufixed< 33 , 33 , AP_TRN , AP_SAT , 0 > fx_rnf_sum(rnf_sum);
  ap_uint17_t fx_rnf_sq_2 = p_Z9xFSqrtHOGILi17ELi33ELi33ELi5ELi0EE9ap_ufixedILi33ELi33ELi5ELi0ELi0EE_1(fx_rnf_sum);
  fx_rnf_sq = ((unsigned short )((fx_rnf_sq_2>>1)));
}

static void p_Z23xFDHOGReNormalizeKernelILi480ELi2ELi2ELi9ELi2160ELi3840ELi2ELi1ELi45EttEPttR6streamI7ap_uintILi576EEE_1(unsigned short *norm_block,unsigned short fx_rnf_sq,hls::stream< _StreamType_45_name  > &_block_strm)
{
  char n_rnf;
  unsigned int rnf = p_ZN2xf7InverseEtiPc(fx_rnf_sq,1,&n_rnf);
  _StreamType_45_name block_data;
  unsigned char step = (unsigned char )_ZN12PixelType_2_8bitdepthE;
  class ap_uint< 10 > offset(0);
  int _s_k = 0;
  unsigned char _l_k = 0;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L35}
  renorm_loop2:
// Canonicalized from: for(unsigned char k =(unsigned char )0;((int )_s_k) < 9 * 2 * 2;_s_k++) {...}
  for (_s_k = ((unsigned char )0); _s_k <= 35; ++_s_k) {
    ap_uint32_t tmp_block_data(((unsigned int )norm_block[_s_k]) * rnf >> ((int )n_rnf));
    if (tmp_block_data>65535) {
      tmp_block_data = 65535;
    }
    block_data . range((offset+(((int )step) - 1)),offset) = (tmp_block_data . operator unsigned long());
    offset+=step;
  }
  _block_strm . write(block_data);
}

static void p_Z15xFDHOGNormalizeILi2160ELi3840ELi2ELi1ELi45ELi480ELi2ELi2ELi473ELi255ELi36ELi128ELi64ELi8ELi8ELi479ELi9E7ap_uintILi25EE7ap_uintILi48EEEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEP7ap_uintILi48EEP7ap_uintILi48EER6streamI7ap_uintILi576EEEttt_1(class ap_uint< 25 > HA_1[][9],class ap_uint< 25 > HA_2[][9],class ap_uint< 48 > *ssv_1,class ap_uint< 48 > *ssv_2,hls::stream< _StreamType_45_name  > &_block_strm,unsigned short bi,unsigned short nohb,unsigned short nohc)
{
  unsigned short bj = (unsigned short )0;
  class ap_uint< 26 > tmp_nf_sq24_1[1];
  class ap_uint< 26 > tmp_nf_sq24_2[1];
  unsigned int nf_1[1];
  unsigned int nf_2[1];
  char n_1[1];
  char n_2[1];
  unsigned short norm_block_1[36];
  unsigned short norm_block_2[36];
  
#pragma HLS RESOURCE variable=nf_1 core=RAM_1P_LUTRAM
  
#pragma HLS RESOURCE variable=nf_2 core=RAM_1P_LUTRAM
  
#pragma HLS RESOURCE variable=tmp_nf_sq24_1 core=RAM_1P_LUTRAM
  
#pragma HLS RESOURCE variable=tmp_nf_sq24_2 core=RAM_1P_LUTRAM
  
#pragma HLS RESOURCE variable=n_1 core=RAM_1P_LUTRAM
  
#pragma HLS RESOURCE variable=n_2 core=RAM_1P_LUTRAM
  unsigned short fx_rnf_sq_1[1];
  unsigned short fx_rnf_sq_2[1];
  bool flag = (bool )1;
  p_Z22xFDHOGnormalizeKernel1IP7ap_uintILi48EE7ap_uintILi26EEEP7ap_uintILi48EEP7ap_uintILi48EEtR7ap_uintILi26EE_1(ssv_1,ssv_2,bj,tmp_nf_sq24_1[0]);
  bj++;
  p_Z22xFDHOGnormalizeKernel1IP7ap_uintILi48EE7ap_uintILi26EEEP7ap_uintILi48EEP7ap_uintILi48EEtR7ap_uintILi26EE_1(ssv_1,ssv_2,bj,tmp_nf_sq24_2[0]);
  p_Z24xFDHOGnormalizeKernelInvI7ap_uintILi26EEjE7ap_uintILi26EERjRc_1(tmp_nf_sq24_1[0],nf_1[0],n_1[0]);
  bj++;
  p_Z22xFDHOGnormalizeKernel1IP7ap_uintILi48EE7ap_uintILi26EEEP7ap_uintILi48EEP7ap_uintILi48EEtR7ap_uintILi26EE_1(ssv_1,ssv_2,bj,tmp_nf_sq24_1[0]);
  p_Z24xFDHOGnormalizeKernelInvI7ap_uintILi26EEjE7ap_uintILi26EERjRc_1(tmp_nf_sq24_2[0],nf_2[0],n_2[0]);
  p_Z22xFDHOGnormalizeKernel2ILi480ELi2ELi2E7ap_uintILi25EELi9EttjEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEjPtRttc_1(HA_1,HA_2,nf_1[0],norm_block_1,fx_rnf_sq_1[0],(unsigned short )(((int )bj) - 2),n_1[0]);
  
#pragma ACCEL PIPELINE auto{__PIPE__L26}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L26}
  no_of_HB:
  for (bj = ((unsigned short )3); ((int )bj) < ((int )nohb); bj++) {
    
#pragma HLS LOOP_TRIPCOUNT min=479 max=479
    if (flag) {
      p_Z22xFDHOGnormalizeKernel1IP7ap_uintILi48EE7ap_uintILi26EEEP7ap_uintILi48EEP7ap_uintILi48EEtR7ap_uintILi26EE_1(ssv_1,ssv_2,bj,tmp_nf_sq24_2[0]);
      p_Z24xFDHOGnormalizeKernelInvI7ap_uintILi26EEjE7ap_uintILi26EERjRc_1(tmp_nf_sq24_1[0],nf_1[0],n_1[0]);
      p_Z22xFDHOGnormalizeKernel2ILi480ELi2ELi2E7ap_uintILi25EELi9EttjEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEjPtRttc_1(HA_1,HA_2,nf_2[0],norm_block_2,fx_rnf_sq_2[0],(unsigned short )(((int )bj) - 2),n_2[0]);
      p_Z23xFDHOGReNormalizeKernelILi480ELi2ELi2ELi9ELi2160ELi3840ELi2ELi1ELi45EttEPttR6streamI7ap_uintILi576EEE_1(norm_block_1,fx_rnf_sq_1[0],_block_strm);
      flag = ((bool )0);
    }
     else {
      p_Z22xFDHOGnormalizeKernel1IP7ap_uintILi48EE7ap_uintILi26EEEP7ap_uintILi48EEP7ap_uintILi48EEtR7ap_uintILi26EE_1(ssv_1,ssv_2,bj,tmp_nf_sq24_1[0]);
      p_Z24xFDHOGnormalizeKernelInvI7ap_uintILi26EEjE7ap_uintILi26EERjRc_1(tmp_nf_sq24_2[0],nf_2[0],n_2[0]);
      p_Z22xFDHOGnormalizeKernel2ILi480ELi2ELi2E7ap_uintILi25EELi9EttjEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEjPtRttc_1(HA_1,HA_2,nf_1[0],norm_block_1,fx_rnf_sq_1[0],(unsigned short )(((int )bj) - 2),n_1[0]);
      p_Z23xFDHOGReNormalizeKernelILi480ELi2ELi2ELi9ELi2160ELi3840ELi2ELi1ELi45EttEPttR6streamI7ap_uintILi576EEE_1(norm_block_2,fx_rnf_sq_2[0],_block_strm);
      flag = ((bool )1);
    }
  }
  if (flag) {
    p_Z24xFDHOGnormalizeKernelInvI7ap_uintILi26EEjE7ap_uintILi26EERjRc_1(tmp_nf_sq24_1[0],nf_1[0],n_1[0]);
    p_Z22xFDHOGnormalizeKernel2ILi480ELi2ELi2E7ap_uintILi25EELi9EttjEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEjPtRttc_1(HA_1,HA_2,nf_2[0],norm_block_2,fx_rnf_sq_2[0],(unsigned short )(((int )bj) - 2),n_2[0]);
    p_Z23xFDHOGReNormalizeKernelILi480ELi2ELi2ELi9ELi2160ELi3840ELi2ELi1ELi45EttEPttR6streamI7ap_uintILi576EEE_1(norm_block_1,fx_rnf_sq_1[0],_block_strm);
    flag = ((bool )0);
    bj++;
  }
   else {
    p_Z24xFDHOGnormalizeKernelInvI7ap_uintILi26EEjE7ap_uintILi26EERjRc_1(tmp_nf_sq24_2[0],nf_2[0],n_2[0]);
    p_Z22xFDHOGnormalizeKernel2ILi480ELi2ELi2E7ap_uintILi25EELi9EttjEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEjPtRttc_1(HA_1,HA_2,nf_1[0],norm_block_1,fx_rnf_sq_1[0],(unsigned short )(((int )bj) - 2),n_1[0]);
    p_Z23xFDHOGReNormalizeKernelILi480ELi2ELi2ELi9ELi2160ELi3840ELi2ELi1ELi45EttEPttR6streamI7ap_uintILi576EEE_1(norm_block_2,fx_rnf_sq_2[0],_block_strm);
    flag = ((bool )1);
    bj++;
  }
  if (flag) {
    p_Z22xFDHOGnormalizeKernel2ILi480ELi2ELi2E7ap_uintILi25EELi9EttjEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEjPtRttc_1(HA_1,HA_2,nf_2[0],norm_block_2,fx_rnf_sq_2[0],(unsigned short )(((int )bj) - 2),n_2[0]);
    p_Z23xFDHOGReNormalizeKernelILi480ELi2ELi2ELi9ELi2160ELi3840ELi2ELi1ELi45EttEPttR6streamI7ap_uintILi576EEE_1(norm_block_1,fx_rnf_sq_1[0],_block_strm);
    flag = ((bool )0);
  }
   else {
    p_Z22xFDHOGnormalizeKernel2ILi480ELi2ELi2E7ap_uintILi25EELi9EttjEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEjPtRttc_1(HA_1,HA_2,nf_1[0],norm_block_1,fx_rnf_sq_1[0],(unsigned short )(((int )bj) - 2),n_1[0]);
    p_Z23xFDHOGReNormalizeKernelILi480ELi2ELi2ELi9ELi2160ELi3840ELi2ELi1ELi45EttEPttR6streamI7ap_uintILi576EEE_1(norm_block_2,fx_rnf_sq_2[0],_block_strm);
    flag = ((bool )1);
  }
  if (flag) {
    p_Z23xFDHOGReNormalizeKernelILi480ELi2ELi2ELi9ELi2160ELi3840ELi2ELi1ELi45EttEPttR6streamI7ap_uintILi576EEE_1(norm_block_1,fx_rnf_sq_1[0],_block_strm);
  }
   else {
    p_Z23xFDHOGReNormalizeKernelILi480ELi2ELi2ELi9ELi2160ELi3840ELi2ELi1ELi45EttEPttR6streamI7ap_uintILi576EEE_1(norm_block_2,fx_rnf_sq_2[0],_block_strm);
  }
}

static void p_Z22xFDHOGDescriptorKernelILi2160ELi3840ELi2ELi2ELi1ELi5ELi45ELi128ELi64ELi8ELi8ELi8ELi9ELi2ELi2ELi255ELi473ELi270ELi480ELi269ELi479ELi20ELb0EER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi576EEEtttttttt_1(hls::stream< _StreamType_5_name  > &_phase_strm,hls::stream< _StreamType_5_name  > &_mag_strm,hls::stream< _StreamType_45_name  > &_block_strm,unsigned short _height,unsigned short _width,unsigned short novw,unsigned short nohw,unsigned short novc,unsigned short nohc,unsigned short novb,unsigned short nohb)
{
  class ap_uint< 25 > HA_1[480][9];
  class ap_uint< 25 > HA_2[480][9];
  class ap_uint< 25 > HA_3[480][9];
  if (false) {
  }
   else {
  }
  class ap_uint< 48 > ssv_1[480];
  class ap_uint< 48 > ssv_2[480];
  class ap_uint< 48 > ssv_3[480];
  unsigned short bin_center[9];
  unsigned short offset = (unsigned short )(20 << 7 >> 1);
  unsigned short bi = (unsigned short )0;
  int _s_i = 0;
  unsigned char _l_i = 0;
// Canonicalized from: for(unsigned char i =(unsigned char )0;((int )_s_i) < 9;_s_i++) {...}
  for (_s_i = ((unsigned char )0); _s_i <= 8; ++_s_i) {
    bin_center[_s_i] = offset;
    offset += 20 << 7;
  }
  class ap_uint< 2 > idx;
  p_Z17xFDHOGcomputeHistILi2160ELi3840ELi2ELi1ELi5ELi8ELi8ELi480ELi3840ELi8ELi20ELi9E7ap_uintILi25EE7ap_uintILi48EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEPA9_7ap_uintILi25EEP7ap_uintILi48EEPtt_1(_phase_strm,_mag_strm,HA_1,ssv_1,bin_center,nohc);
  p_Z17xFDHOGcomputeHistILi2160ELi3840ELi2ELi1ELi5ELi8ELi8ELi480ELi3840ELi8ELi20ELi9E7ap_uintILi25EE7ap_uintILi48EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEPA9_7ap_uintILi25EEP7ap_uintILi48EEPtt_1(_phase_strm,_mag_strm,HA_2,ssv_2,bin_center,nohc);
  idx = 2;
  
#pragma ACCEL PIPELINE auto{__PIPE__L19}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L19}
  verticalBlockLoop:
  for (bi = ((unsigned short )0); ((int )bi) < ((int )novb) - 1; bi++) {
    
#pragma HLS LOOP_TRIPCOUNT min=269-1 max=269-1
    if (idx==2) {
      p_Z17xFDHOGcomputeHistILi2160ELi3840ELi2ELi1ELi5ELi8ELi8ELi480ELi3840ELi8ELi20ELi9E7ap_uintILi25EE7ap_uintILi48EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEPA9_7ap_uintILi25EEP7ap_uintILi48EEPtt_1(_phase_strm,_mag_strm,HA_3,ssv_3,bin_center,nohc);
      p_Z15xFDHOGNormalizeILi2160ELi3840ELi2ELi1ELi45ELi480ELi2ELi2ELi473ELi255ELi36ELi128ELi64ELi8ELi8ELi479ELi9E7ap_uintILi25EE7ap_uintILi48EEEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEP7ap_uintILi48EEP7ap_uintILi48EER6streamI7ap_uintILi576EEEttt_1(HA_1,HA_2,ssv_1,ssv_2,_block_strm,bi,nohb,nohc);
      idx = 0;
    }
     else {
      if (idx==0) {
        p_Z17xFDHOGcomputeHistILi2160ELi3840ELi2ELi1ELi5ELi8ELi8ELi480ELi3840ELi8ELi20ELi9E7ap_uintILi25EE7ap_uintILi48EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEPA9_7ap_uintILi25EEP7ap_uintILi48EEPtt_1(_phase_strm,_mag_strm,HA_1,ssv_1,bin_center,nohc);
        p_Z15xFDHOGNormalizeILi2160ELi3840ELi2ELi1ELi45ELi480ELi2ELi2ELi473ELi255ELi36ELi128ELi64ELi8ELi8ELi479ELi9E7ap_uintILi25EE7ap_uintILi48EEEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEP7ap_uintILi48EEP7ap_uintILi48EER6streamI7ap_uintILi576EEEttt_1(HA_2,HA_3,ssv_2,ssv_3,_block_strm,bi,nohb,nohc);
        idx = 1;
      }
       else {
        p_Z17xFDHOGcomputeHistILi2160ELi3840ELi2ELi1ELi5ELi8ELi8ELi480ELi3840ELi8ELi20ELi9E7ap_uintILi25EE7ap_uintILi48EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEPA9_7ap_uintILi25EEP7ap_uintILi48EEPtt_1(_phase_strm,_mag_strm,HA_2,ssv_2,bin_center,nohc);
        p_Z15xFDHOGNormalizeILi2160ELi3840ELi2ELi1ELi45ELi480ELi2ELi2ELi473ELi255ELi36ELi128ELi64ELi8ELi8ELi479ELi9E7ap_uintILi25EE7ap_uintILi48EEEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEP7ap_uintILi48EEP7ap_uintILi48EER6streamI7ap_uintILi576EEEttt_1(HA_3,HA_1,ssv_3,ssv_1,_block_strm,bi,nohb,nohc);
        idx = 2;
      }
    }
  }
  if (idx==2) {
    p_Z15xFDHOGNormalizeILi2160ELi3840ELi2ELi1ELi45ELi480ELi2ELi2ELi473ELi255ELi36ELi128ELi64ELi8ELi8ELi479ELi9E7ap_uintILi25EE7ap_uintILi48EEEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEP7ap_uintILi48EEP7ap_uintILi48EER6streamI7ap_uintILi576EEEttt_1(HA_1,HA_2,ssv_1,ssv_2,_block_strm,bi,nohb,nohc);
  }
   else {
    if (idx==0) {
      p_Z15xFDHOGNormalizeILi2160ELi3840ELi2ELi1ELi45ELi480ELi2ELi2ELi473ELi255ELi36ELi128ELi64ELi8ELi8ELi479ELi9E7ap_uintILi25EE7ap_uintILi48EEEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEP7ap_uintILi48EEP7ap_uintILi48EER6streamI7ap_uintILi576EEEttt_1(HA_2,HA_3,ssv_2,ssv_3,_block_strm,bi,nohb,nohc);
    }
     else {
      p_Z15xFDHOGNormalizeILi2160ELi3840ELi2ELi1ELi45ELi480ELi2ELi2ELi473ELi255ELi36ELi128ELi64ELi8ELi8ELi479ELi9E7ap_uintILi25EE7ap_uintILi48EEEPA9_7ap_uintILi25EEPA9_7ap_uintILi25EEP7ap_uintILi48EEP7ap_uintILi48EER6streamI7ap_uintILi576EEEttt_1(HA_3,HA_1,ssv_3,ssv_1,_block_strm,bi,nohb,nohc);
    }
  }
}

static void p_Z16xFDHOGDescriptorILi128ELi64ELi8ELi8ELi8ELi9ELi2ELi2ELi2160ELi3840ELi2ELi2ELi1ELi5ELi45ELb0EER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi576EEEtt_1(hls::stream< _StreamType_5_name  > &_phase_strm,hls::stream< _StreamType_5_name  > &_mag_strm,hls::stream< _StreamType_45_name  > &_block_strm,unsigned short _height,unsigned short _width)
{
  2 == ((int )XF_16UP) && ((bool )"DEPTH_DST must be XF_16UP")?((void )0) : __assert_fail("(DEPTH_SRC == XF_16UP) && \"DEPTH_DST must be XF_16UP\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )198,__PRETTY_FUNCTION__);
  2 == ((int )XF_16UP) && ((bool )"DEPTH_DST must be XF_16UP")?((void )0) : __assert_fail("(DEPTH_DST == XF_16UP) && \"DEPTH_DST must be XF_16UP\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )200,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8) || 1 == ((int )XF_NPPC16)) && ((bool )"NPC must be XF_NPPC1, XF_NPPC8 or XF_NPPC16")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8) || (NPC == XF_NPPC16)) && \"NPC must be XF_NPPC1, XF_NPPC8 or XF_NPPC16\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )202,__PRETTY_FUNCTION__);
  (5 == ((int )XF_16UW) || 5 == ((int )XF_128UW) || 5 == ((int )XF_256UW)) && ((bool )"WORDWIDTH_SRC must be XF_16UW, XF_128UW or XF_256UW")?((void )0) : __assert_fail("((WORDWIDTH_SRC == XF_16UW) || (WORDWIDTH_SRC == XF_128UW) || (WORDWIDTH_SRC == XF_256UW)) && \"WORDWIDTH_SRC must be XF_16UW, XF_128UW or XF_256UW\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )205,__PRETTY_FUNCTION__);
  45 == ((int )XF_576UW) && ((bool )"WORDWIDTH_DST must be XF_576UW")?((void )0) : __assert_fail("(WORDWIDTH_DST == XF_576UW) && \"WORDWIDTH_DST must be XF_576UW\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )207,__PRETTY_FUNCTION__);
  128 % 8 == 0 && ((bool )"WIN_HEIGHT must be a multiple of CELL_HEIGHT")?((void )0) : __assert_fail("((WIN_HEIGHT%CELL_HEIGHT) == 0) && \"WIN_HEIGHT must be a multiple of CELL_HEIGHT\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )209,__PRETTY_FUNCTION__);
  64 % 8 == 0 && ((bool )"WIN_WIDTH must be a multiple of CELL_WIDTH")?((void )0) : __assert_fail("((WIN_WIDTH%CELL_WIDTH) == 0) && \"WIN_WIDTH must be a multiple of CELL_WIDTH\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )211,__PRETTY_FUNCTION__);
  ((int )_height) % 8 == 0 && ((bool )"Image HEIGHT must be a multiple of CELL_HEIGHT")?((void )0) : __assert_fail("((_height%CELL_HEIGHT) == 0) && \"Image HEIGHT must be a multiple of CELL_HEIGHT\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )213,__PRETTY_FUNCTION__);
  ((int )_width) % 8 == 0 && ((bool )"Image WIDTH must be a multiple of CELL_WIDTH")?((void )0) : __assert_fail("((_width%CELL_WIDTH) == 0) && \"Image WIDTH must be a multiple of CELL_WIDTH\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )215,__PRETTY_FUNCTION__);
  (128 <= 2160 || 64 <= 3840) && ((bool )"WIN_HEIGHT and WIN_WIDTH must be less than or equal to the image _height and image _width respectively")?((void )0) : __assert_fail("((WIN_HEIGHT <= ROWS) || (WIN_WIDTH <= COLS)) && \"WIN_HEIGHT and WIN_WIDTH must be less than or equal to the image _height and image _width respectively\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )217,__PRETTY_FUNCTION__);
  ((2160 - 128) % 8 == 0 || (3840 - 64) % 8 == 0) && ((bool )"The number of windows must not extend the image boundary limit")?((void )0) : __assert_fail("(((ROWS-WIN_HEIGHT)%WIN_STRIDE == 0) || ((COLS-WIN_WIDTH)%WIN_STRIDE == 0)) && \"The number of windows must not extend the image boundary limit\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )219,__PRETTY_FUNCTION__);
  9 == 9 && ((bool )"NOB must be 9")?((void )0) : __assert_fail("(NOB == 9) && \"NOB must be 9\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )224,__PRETTY_FUNCTION__);
  2 == 2 && 2 == 2 && ((bool )"number of horizontal and vertical cells per block must be 2")?((void )0) : __assert_fail("((NOHCPB == 2) && (NOVCPB == 2)) && \"number of horizontal and vertical cells per block must be 2\"","xf_hog_descriptor_hist_norm.hpp",(unsigned int )226,__PRETTY_FUNCTION__);
  unsigned short novw = (unsigned short )((((int )_height) - 128) / 8 + 1);
  unsigned short nohw = (unsigned short )((((int )_width) - 64) / 8 + 1);
  unsigned short novc = (unsigned short )(((int )_height) / 8);
  unsigned short nohc = (unsigned short )(((int )_width) / 8);
  unsigned short novb = (unsigned short )(((int )_height) / 8 - 1);
  unsigned short nohb = (unsigned short )(((int )_width) / 8 - 1);
  p_Z22xFDHOGDescriptorKernelILi2160ELi3840ELi2ELi2ELi1ELi5ELi45ELi128ELi64ELi8ELi8ELi8ELi9ELi2ELi2ELi255ELi473ELi270ELi480ELi269ELi479ELi20ELb0EER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi576EEEtttttttt_1(_phase_strm,_mag_strm,_block_strm,_height,_width,novw,nohw,novc,nohc,novb,nohb);
}

static void p_Z12xFDHOGKernelILi128ELi64ELi8ELi8ELi8ELi9ELi2ELi2ELi2ELi2160ELi3840ELi0ELi2ELi1ELi1ELi45ELi1ELb0EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi576EEEtt_1(hls::stream< _DataType_0_1_name  > _in_stream[1],hls::stream< _StreamType_45_name  > &_block_stream,unsigned short _height,unsigned short _width)
{
  hls::stream< _StreamType_2_name  > grad_x_stream;
  hls::stream< _StreamType_2_name  > grad_y_stream;
  hls::stream< _StreamType_5_name  > phase_stream("phase_stream");
  hls::stream< _StreamType_5_name  > mag_stream("mag_stream");
  
#pragma HLS DATAFLOW
  p_Z14xFHOGgradientsILi2160ELi3840ELi0ELi13ELi1ELi1ELi2ELi1ELb0EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEEitt_1(_in_stream,grad_x_stream,grad_y_stream,(int )XF_BORDER_CONSTANT,_height,_width);
  p_Z19xFHOGPhaseMagnitudeILi2160ELi3840ELi13ELi2ELi1ELi2ELi5EER6streamI7ap_uintILi9EEER6streamI7ap_uintILi9EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEEtt_1(grad_x_stream,grad_y_stream,phase_stream,mag_stream,_height,_width);
  p_Z16xFDHOGDescriptorILi128ELi64ELi8ELi8ELi8ELi9ELi2ELi2ELi2160ELi3840ELi2ELi2ELi1ELi5ELi45ELb0EER6streamI7ap_uintILi16EEER6streamI7ap_uintILi16EEER6streamI7ap_uintILi576EEEtt_1(phase_stream,mag_stream,_block_stream,_height,_width);
}

static void p_Z6xFDHOGILi128ELi64ELi8ELi16ELi16ELi8ELi8ELi9ELi2160ELi3840ELi0ELi2ELi1ELi1ELi45ELi1ELb0EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi576EEEtt_1(hls::stream< _DataType_0_1_name  > _in_stream[1],hls::stream< _StreamType_45_name  > &_block_stream,unsigned short _height,unsigned short _width)
{
  _width = ((unsigned short )(((int )_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE));
  ((int )_height) <= 2160 && ((int )_width) <= 3840 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_height <= ROWS ) && (_width <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_hog_descriptor_kernel.hpp",(unsigned int )107,__PRETTY_FUNCTION__);
  1 == ((int )XF_NPPC1) && ((bool )"The NPC value must be XF_NPPC1")?((void )0) : __assert_fail("(NPC == XF_NPPC1) && \"The NPC value must be XF_NPPC1\"","xf_hog_descriptor_kernel.hpp",(unsigned int )108,__PRETTY_FUNCTION__);
{
    p_Z12xFDHOGKernelILi128ELi64ELi8ELi8ELi8ELi9ELi2ELi2ELi2ELi2160ELi3840ELi0ELi2ELi1ELi1ELi45ELi1ELb0EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi576EEEtt_1(_in_stream,_block_stream,_height,_width);
  }
}

static void p_Z23xFWriteHOGDescKernelNRBILi2160ELi3840ELi2ELi1ELi45E7ap_uintILi32EELi269ELi479ELi32ELi18ELi4ELi128851EER6streamI7ap_uintILi576EEER6streamI7ap_uintILi32EEEtt_1(hls::stream< _StreamType_45_name  > &_block_strm,hls::stream< _DataType_3_1_name  > &_desc_strm,unsigned short novb,unsigned short nohb)
{
  _StreamType_45_name block_data;
  _DataType_3_1_name block_descriptor;
  unsigned int offset = (unsigned int )0;
  unsigned char step = (unsigned char )(4 << 3);
  int k = 0;
  int i;
  class ap_uint< 8 > j;
  
#pragma ACCEL PIPELINE auto{__PIPE__L5}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  write_loop_1:
  for (i = 0; i < ((int )novb) * ((int )nohb); i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=128851 max=128851
    block_data = _block_strm . read();
    offset = ((unsigned int )0);
    write_loop_2:
    for (j = 0; j<18; j ++ ) {
      block_descriptor = block_data . range(((int )(offset + ((unsigned int )(((int )step) - 1)))),((int )offset));
      _desc_strm . write(block_descriptor);
      offset += ((unsigned int )step);
    }
  }
}

static void p_Z17xFWriteHOGDescNRBILi16ELi16ELi8ELi8ELi9ELi0ELi2160ELi3840ELi2ELi1ELi45E7ap_uintILi32EEER6streamI7ap_uintILi576EEER6streamI7ap_uintILi32EEEtt_1(hls::stream< _StreamType_45_name  > &_block_strm,hls::stream< _DataType_3_1_name  > &_desc_strm,unsigned short height,unsigned short width)
{
  int novb = ((int )height) / 8 - (16 / 8 - 1);
  int nohb = ((int )width) / 8 - (16 / 8 - 1);
{
    p_Z23xFWriteHOGDescKernelNRBILi2160ELi3840ELi2ELi1ELi45E7ap_uintILi32EELi269ELi479ELi32ELi18ELi4ELi128851EER6streamI7ap_uintILi576EEER6streamI7ap_uintILi32EEEtt_1(_block_strm,_desc_strm,(unsigned short )novb,(unsigned short )nohb);
  }
}

static void p_ZN2xf18Mat_3_1_2319318_1_5writeIEEi7ap_uintILi32EE_1(struct xf_Mat_3_1_2319318_1_ *this_,int index,_DataType_3_1_name val)
{
  this_ -> data[index] = val;
}

static void p_ZN2xf13HOGDescriptorILi128ELi64ELi8ELi16ELi16ELi8ELi8ELi9ELi2319318ELi1ELi1ELi0ELi3ELi2160ELi3840ELi1ELb0EEER3MatILi0ELi2160ELi3840ELi1EER3MatILi3ELi1ELi2319318ELi1EE_1(struct xf_Mat_0_2160_3840_1_ &_in_mat,struct xf_Mat_3_1_2319318_1_ &_desc_mat)
{
  hls::stream< _DataType_0_1_name  > in_strm;
  hls::stream< _DataType_0_1_name  > in[1];
  hls::stream< _StreamType_45_name  > _block_strm;
  hls::stream< _DataType_3_1_name  > desc_strm;
  
#pragma HLS DATAFLOW
  int IN_TC = 2160 * 3840 >> _ZN20xfNPixelsPerCycle_1_9datashiftE;
  for (int i = 0; i < _in_mat . size; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=IN_TC
    in_strm . write((p_ZN2xf18Mat_0_2160_3840_1_4readIEEi_1(&_in_mat,i)));
  }
  p_Z19xFHOGReadFromStreamILi2160ELi3840ELi1E7ap_uintILi8EE7ap_uintILi8EEER6streamI7ap_uintILi8EEEP6streamI7ap_uintILi8EEEtt_1(in_strm,in,(unsigned short )_in_mat . rows,(unsigned short )_in_mat . cols);
  p_Z6xFDHOGILi128ELi64ELi8ELi16ELi16ELi8ELi8ELi9ELi2160ELi3840ELi0ELi2ELi1ELi1ELi45ELi1ELb0EEP6streamI7ap_uintILi8EEER6streamI7ap_uintILi576EEEtt_1(in,_block_strm,(unsigned short )_in_mat . rows,(unsigned short )_in_mat . cols);
{
    p_Z17xFWriteHOGDescNRBILi16ELi16ELi8ELi8ELi9ELi0ELi2160ELi3840ELi2ELi1ELi45E7ap_uintILi32EEER6streamI7ap_uintILi576EEER6streamI7ap_uintILi32EEEtt_1(_block_strm,desc_strm,(unsigned short )_in_mat . rows,(unsigned short )_in_mat . cols);
  }
  int OUT_TC = 2160 * 3840 >> _ZN20xfNPixelsPerCycle_1_9datashiftE;
  for (int i = 0; i < _desc_mat . size; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=IN_TC
    p_ZN2xf18Mat_3_1_2319318_1_5writeIEEi7ap_uintILi32EE_1(&_desc_mat,i,(desc_strm . read()));
  }
}

static _DataType_3_1_name p_ZN2xf18Mat_3_1_2319318_1_4readIEEi_1(struct xf_Mat_3_1_2319318_1_ *this_,int index)
{
  return this_ -> data[index];
}
const int _ZN13DataType_3_1_10pixelwidthE = 32;

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi3ELi1ELi2319318ELi1ELi2319318EEER3MatILi3ELi1ELi2319318ELi1EER6streamI7ap_uintILi256EEE_1(struct xf_accel_utils *this_,struct xf_Mat_3_1_2319318_1_ &srcMat,hls::stream< ap_uint< 256 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 256;
  const int N_size = _ZN13DataType_3_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 256 > r;
  _DataType_3_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=2319318
    in = p_ZN2xf18Mat_3_1_2319318_1_4readIEEi_1(&srcMat,i);
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

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi1ELi2319318ELi1ELi1ELi32ELi289914EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(struct xf_accel_utils *this_,hls::stream< ap_uint< 256 >  > &srcStrm,class ap_uint< 256 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 32;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=289914
    dstPtr[i] = srcStrm . read();
  }
}
const int _ZN14StreamType_12_8bitdepthE = 32;
const int _ZN13DataType_3_1_8bitdepthE = 32;

static void p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi3ELi1ELi2319318ELi1EEER3MatILi3ELi1ELi2319318ELi1EEP7ap_uintILi256EE_1(struct xf_accel_utils *this_,struct xf_Mat_3_1_2319318_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  256 >= _ZN14StreamType_12_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_3_1_8bitdepthE;
  hls::stream< ap_uint< 256 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi3ELi1ELi2319318ELi1ELi2319318EEER3MatILi3ELi1ELi2319318ELi1EER6streamI7ap_uintILi256EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi1ELi2319318ELi1ELi1ELi32ELi289914EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi256ELi3ELi1ELi2319318ELi1EEER3MatILi3ELi1ELi2319318ELi1EEP7ap_uintILi256EE_1(struct xf_Mat_3_1_2319318_1_ &srcMat,class ap_uint< 256 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi3ELi1ELi2319318ELi1EEER3MatILi3ELi1ELi2319318ELi1EEP7ap_uintILi256EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void hog_descriptor_accel(class ap_uint< 256 > *img_inp,class ap_uint< 256 > *img_out,int rows,int cols,int desc_size)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_out offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_out bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=desc_size bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 2160;
  const int pCOLS = 3840;
  const int pNPC1 = (int )XF_NPPC1;
  const int pDSTS = (2160 / 8 - 1) * (3840 / 8 - 1) * (9 * (16 / 8) * (16 / 8)) >> 1;
  struct xf_Mat_0_2160_3840_1_ in_mat;
  p_ZN2xf18Mat_0_2160_3840_1_C2IEEii_1(&in_mat,rows,cols);
  ;
  
#pragma HLS stream variable=in_mat.data depth=pCOLS/pNPC1
  struct xf_Mat_3_1_2319318_1_ out_mat;
  p_ZN2xf18Mat_3_1_2319318_1_C2IEEii_1(&out_mat,1,desc_size);
  ;
  
#pragma HLS stream variable=out_mat.data depth=512
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi256ELi0ELi2160ELi3840ELi1EEEP7ap_uintILi256EER3MatILi0ELi2160ELi3840ELi1EE_1(img_inp,in_mat);
  p_ZN2xf13HOGDescriptorILi128ELi64ELi8ELi16ELi16ELi8ELi8ELi9ELi2319318ELi1ELi1ELi0ELi3ELi2160ELi3840ELi1ELb0EEER3MatILi0ELi2160ELi3840ELi1EER3MatILi3ELi1ELi2319318ELi1EE_1(in_mat,out_mat);
  p_ZN2xf11xfMat2ArrayILi256ELi3ELi1ELi2319318ELi1EEER3MatILi3ELi1ELi2319318ELi1EEP7ap_uintILi256EE_1(out_mat,img_out);
}
