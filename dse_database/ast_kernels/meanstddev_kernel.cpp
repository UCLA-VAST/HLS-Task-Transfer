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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
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

static int p_ZN2xf4SqrtEj(unsigned int D)
{
  int i;
  short Q;
  int R;
  Q = ((short )(R = 0));
  int tmp = 0;
  int tmpQ;
  int tmpR;
// Standardize from: for(i = 15;i >= 0;i--) {...}
  for (i = 0; i <= 15; i++) {
    int _in_i = 15 + -1 * i;
    if (R >= 0) {
      tmp = ((int )(D >> _in_i + _in_i));
      tmp = tmp & 3;
      tmpR = R << 2;
      R = tmpR | tmp;
      tmpQ = ((int )Q) << 2;
      tmpQ = tmpQ | 1;
      R = R - tmpQ;
    }
     else {
      tmp = ((int )(D >> _in_i + _in_i));
      tmp = tmp & 3;
      tmpR = R << 2;
      R = tmpR | tmp;
      tmpQ = ((int )Q) << 2;
      tmpQ = tmpQ | 3;
      R = R + tmpQ;
    }
    if (R >= 0) {
      Q = ((short )(((int )Q) << 1));
      Q = ((short )(((int )Q) | 1));
    }
     else {
      Q = ((short )(((int )Q) << 1));
      Q = ((short )(((int )Q) | 0));
    }
  }
  i = 0 + -1;
  return (int )Q;
}

static void p_ZN2xf14xFStddevkernelILi0ELi256ELi256ELi1ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPttt_1(struct xf_Mat_0_256_256_1_ &_src_mat1,unsigned short _mean[1],unsigned short _dst_stddev[1],unsigned short height,unsigned short width)
{
  class ap_uint< 4 > j;
  class ap_uint< 45 > tmp_var_vals[1 * 1];
  class ap_uint< 64 > var[1];
  unsigned int tmp_sum_vals[1 * 1];
  unsigned long sum[1];
  for (j = 0; j<(1 << _ZN20xfNPixelsPerCycle_1_9datashiftE) * 1; j ++ ) {
    tmp_var_vals[(long )(j)] = 0;
    tmp_sum_vals[(long )(j)] = ((unsigned int )0);
  }
  for (j = 0; j<1; j ++ ) {
    sum[(long )(j)] = ((unsigned long )0);
    var[(long )(j)] = 0;
  }
  int p = 0;
  int read_index = 0;
  class ap_uint< 13 > row;
  class ap_uint< 13 > col;
  
#pragma ACCEL PIPELINE auto{__PIPE__L2}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  Row_Loop1:
  for (row = 0; row<height; row ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L8}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L8}
    Col_Loop1:
    for (col = 0; col<((int )width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE; col ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256/1 max=256/1
      _DataType_0_1_name in_buf;
      in_buf = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat1,read_index++);
      Extract1:
      for (int p = 0; p < _ZN20xfNPixelsPerCycle_1_4nppcE * 1; p++) {
        class ap_uint< 8 > val(in_buf . range((p * 8 + 7),(p * 8)));
        tmp_sum_vals[p] = ((unsigned int )((tmp_sum_vals[p]+val)));
        unsigned short temp = (unsigned short )(((int )((unsigned short )(val))) * ((int )((unsigned short )(val))));
        tmp_var_vals[p]+=temp;
      }
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L3}
  for (int c = 0; c < 1; c++) {
    for (j = 0; j<1 << _ZN20xfNPixelsPerCycle_1_9datashiftE; j ++ ) {
      sum[c] = sum[c] + ((unsigned long )tmp_sum_vals[(long )((j*1+c))]);
      var[c] = ap_uint< 64> (var[c]+ap_uint< 64> (tmp_var_vals[(long )((j*1+c))]));
    }
  }
  class ap_uint< 16 > mean_acc(0);
  class ap_uint< 16 > stddev_acc(0);
  
#pragma ACCEL PIPELINE auto{__PIPE__L4}
  for (int c = 0; c < 1; c++) {
    unsigned int tempmean = (unsigned int )0;
    tempmean = ((unsigned int )((unsigned short )(((256*ap_uint< 64> (sum[c]))/(((int )width) * ((int )height))))));
    mean_acc . range((c * 16 + 15),(c * 16)) = ((unsigned long )tempmean);
    unsigned int temp = (unsigned int )(ap_uint< 32> ((65536*var[c])/(((int )width) * ((int )height))));
    unsigned int Varstddev = temp - tempmean * tempmean;
    unsigned int t1 = (unsigned int )(Varstddev >> 16 << 16);
    stddev_acc . range((c * 16 + 15),(c * 16)) = ((unsigned long )((unsigned short )(p_ZN2xf4SqrtEj(t1))));
  }
  for (int i = 0; i < 1; ++i) {
    _mean[i] = ((unsigned short )(mean_acc . range((i * 16 + 15),(i * 16))));
    _dst_stddev[i] = ((unsigned short )(stddev_acc . range((i * 16 + 15),(i * 16))));
  }
}

static void p_ZN2xf10meanStdDevILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPt_1(struct xf_Mat_0_256_256_1_ &_src,unsigned short _mean[1],unsigned short _stddev[1])
{
  (0 == ((int )XF_8UC1) || 0 == ((int )XF_8UC3) || 0 == ((int )XF_8UC4)) && ((bool )"Input image type should be XF_8UC1, XF_8UC3 or XF_8UC4")?((void )0) : __assert_fail("(SRC_T == XF_8UC1 || SRC_T == XF_8UC3 || SRC_T == XF_8UC4) && \"Input image type should be XF_8UC1, XF_8UC3 or XF_8UC4\"","xf_mean_stddev.hpp",(unsigned int )178,__PRETTY_FUNCTION__);
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )" NPC must be XF_NPPC1, XF_NPPC8")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8)) && \" NPC must be XF_NPPC1, XF_NPPC8\"","xf_mean_stddev.hpp",(unsigned int )181,__PRETTY_FUNCTION__);
  _src . rows <= 256 && _src . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src.rows <= ROWS ) && (_src.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_mean_stddev.hpp",(unsigned int )183,__PRETTY_FUNCTION__);
  p_ZN2xf14xFStddevkernelILi0ELi256ELi256ELi1ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPttt_1(_src,_mean,_stddev,(unsigned short )_src . rows,(unsigned short )_src . cols);
}
#pragma ACCEL kernel

void mean_stddev_accel(class ap_uint< 64 > *imgInput_data,unsigned short mean[1],unsigned short stddev[1],int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=imgInput_data offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=mean offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=stddev offset=slave bundle=gmem1
  
#pragma HLS INTERFACE s_axilite port=imgInput_data bundle=control
  
#pragma HLS INTERFACE s_axilite port=mean bundle=control
  
#pragma HLS INTERFACE s_axilite port=stddev bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
//#pragma HLS interface ap_fifo depth=1 port=mean
//#pragma HLS interface ap_fifo depth=1 port=stddev
//
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ imgInput;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&imgInput);
  ;
  
#pragma HLS stream variable=imgInput.data depth=pCOLS/pNPC1
  imgInput . rows = rows;
  imgInput . cols = cols;
  
#pragma HLS dataflow
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(imgInput_data,imgInput);
  p_ZN2xf10meanStdDevILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPt_1(imgInput,mean,stddev);
}
