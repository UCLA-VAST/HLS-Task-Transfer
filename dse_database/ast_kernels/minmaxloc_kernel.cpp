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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
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
const int _ZN12PixelType_0_8bitdepthE = 8;

static void p_ZN2xf17xFMinMaxLocKernelILi0ELi256ELi256ELi0ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EERiRiRtRtRtRttt_1(struct xf_Mat_0_256_256_1_ &_src,int &_minval1,int &_maxval1,unsigned short &_minlocx,unsigned short &_minlocy,unsigned short &_maxlocx,unsigned short &_maxlocy,unsigned short height,unsigned short width)
{
  int _minval;
  int _maxval;
  class ap_uint< 13 > i;
  class ap_uint< 13 > j;
  class ap_uint< 13 > k;
  class ap_uint< 13 > l;
  class ap_uint< 13 > col_ind(0);
  _StreamType_1_name val_in;
  class ap_uint< 13 > min_loc_tmp_x(0);
  class ap_uint< 13 > min_loc_tmp_y(0);
  unsigned short max_loc_tmp_x = (unsigned short )0;
  unsigned short max_loc_tmp_y = (unsigned short )0;
  class ap_uint< 6 > step(_ZN12PixelType_0_8bitdepthE);
  _minlocx = ((unsigned short )((1 << 16) - 1));
  _minlocy = ((unsigned short )((1 << 16) - 1));
  _maxlocx = ((unsigned short )((1 << 16) - 1));
  _maxlocy = ((unsigned short )((1 << 16) - 1));
  _minval = (1 << (step-1)) - 1;
  _maxval = -(1 << (step-1));
  int min_val_tmp[1 + 1];
  int max_val_tmp[1 + 1];
  class ap_uint< 26 > min_loc_tmp[1 + 1];
  class ap_uint< 26 > max_loc_tmp[1 + 1];
  fillTempBuf:
  for (i = 0; i<1 << _ZN20xfNPixelsPerCycle_1_9datashiftE; i ++ ) {
    min_val_tmp[(long )(i)] = (1 << (step-1)) - 1;
    max_val_tmp[(long )(i)] = -(1 << (step-1));
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L3}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
  rowLoop:
  for (i = 0; i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    col_ind = 0;
    
#pragma ACCEL PIPELINE auto{__PIPE__L5}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
    colLoop:
    for (j = 0; j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      val_in = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src,(int )((i*width+j)));
      _PixelType_0_name pixel_buf[1 + 1];
      class ap_uint< 9 > k(0);
      processLoop:
      for (l = 0; l<1 << _ZN20xfNPixelsPerCycle_1_9datashiftE; l ++ ) {
        pixel_buf[(long )(l)] = val_in . range(((int )((k+(step-1)))),((int )(k)));
        if (pixel_buf[(long )(l)]<min_val_tmp[(long )(l)]) {
          min_val_tmp[(long )(l)] = ((int )(pixel_buf[(long )(l)]));
          min_loc_tmp[(long )(l)] . range(12,0) = i;
          min_loc_tmp[(long )(l)] . range(25,13) = col_ind;
        }
        if (pixel_buf[(long )(l)]>max_val_tmp[(long )(l)]) {
          max_val_tmp[(long )(l)] = ((int )(pixel_buf[(long )(l)]));
          max_loc_tmp[(long )(l)] . range(12,0) = i;
          max_loc_tmp[(long )(l)] . range(25,13) = col_ind;
        }
        k+=step;
        if ((bool )1) {
          col_ind ++ ;
        }
      }
      if (!((bool )1)) {
        col_ind ++ ;
      }
    }
  }
  trackLoop:
  for (k = 0; k<1 << _ZN20xfNPixelsPerCycle_1_9datashiftE; k ++ ) {
    if (min_val_tmp[(long )(k)] < _minval) {
      _minval = min_val_tmp[(long )(k)];
      _minlocy = ((unsigned short )(min_loc_tmp[(long )(k)] . range(12,0)));
      _minlocx = ((unsigned short )(min_loc_tmp[(long )(k)] . range(25,13)));
    }
     else {
      if (min_val_tmp[(long )(k)] <= _minval) {
        min_loc_tmp_y = min_loc_tmp[(long )(k)] . range(12,0);
        min_loc_tmp_x = min_loc_tmp[(long )(k)] . range(25,13);
        if (min_loc_tmp_y<_minlocy) {
          _minval = min_val_tmp[(long )(k)];
          _minlocx = ((unsigned short )(min_loc_tmp_x));
          _minlocy = ((unsigned short )(min_loc_tmp_y));
        }
         else {
          if (min_loc_tmp_y==_minlocy) {
            if (min_loc_tmp_x<_minlocx) {
              _minval = min_val_tmp[(long )(k)];
              _minlocx = ((unsigned short )(min_loc_tmp_x));
              _minlocy = ((unsigned short )(min_loc_tmp_y));
            }
          }
        }
      }
    }
    if (max_val_tmp[(long )(k)] > _maxval) {
      _maxval = max_val_tmp[(long )(k)];
      _maxlocy = ((unsigned short )(max_loc_tmp[(long )(k)] . range(12,0)));
      _maxlocx = ((unsigned short )(max_loc_tmp[(long )(k)] . range(25,13)));
    }
     else {
      if (max_val_tmp[(long )(k)] >= _maxval) {
        max_loc_tmp_y = ((unsigned short )(max_loc_tmp[(long )(k)] . range(12,0)));
        max_loc_tmp_x = ((unsigned short )(max_loc_tmp[(long )(k)] . range(25,13)));
        if (((int )max_loc_tmp_y) < ((int )_maxlocy)) {
          _maxval = max_val_tmp[(long )(k)];
          _maxlocx = max_loc_tmp_x;
          _maxlocy = max_loc_tmp_y;
        }
         else {
          if (((int )max_loc_tmp_y) == ((int )_maxlocy)) {
            if (((int )max_loc_tmp_x) < ((int )_maxlocx)) {
              _maxval = max_val_tmp[(long )(k)];
              _maxlocx = max_loc_tmp_x;
              _maxlocy = max_loc_tmp_y;
            }
          }
        }
      }
    }
  }
  _minval1 = _minval;
  _maxval1 = _maxval;
}

static void p_ZN2xf9minMaxLocILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPiPiPtPtPtPt_1(struct xf_Mat_0_256_256_1_ &_src,int *min_value,int *max_value,unsigned short *_minlocx,unsigned short *_minlocy,unsigned short *_maxlocx,unsigned short *_maxlocy)
{
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1, XF_NPPC8 or XF_NPPC16")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8) ) && \"NPC must be XF_NPPC1, XF_NPPC8 or XF_NPPC16\"","xf_min_max_loc.hpp",(unsigned int )251,__PRETTY_FUNCTION__);
  _src . rows <= 256 && _src . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src.rows <= ROWS ) && (_src.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_min_max_loc.hpp",(unsigned int )252,__PRETTY_FUNCTION__);
  unsigned short _min_locx;
  unsigned short _min_locy;
  unsigned short _max_locx;
  unsigned short _max_locy;
  int _min_val;
  int _max_val;
  unsigned short height = (unsigned short )_src . rows;
  unsigned short width = (unsigned short )(_src . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  p_ZN2xf17xFMinMaxLocKernelILi0ELi256ELi256ELi0ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EERiRiRtRtRtRttt_1(_src,_min_val,_max_val,_min_locx,_min_locy,_max_locx,_max_locy,height,width);
   *min_value = _min_val;
   *max_value = _max_val;
   *_minlocx = _min_locx;
   *_minlocy = _min_locy;
   *_maxlocx = _max_locx;
   *_maxlocy = _max_locy;
}

static void minMaxLoc_wrapper_1(struct xf_Mat_0_256_256_1_ &imgInput,int *min_value,int *max_value,unsigned short *_min_locx,unsigned short *_min_locy,unsigned short *_max_locx,unsigned short *_max_locy)
{
  
#pragma inline off
  int min_value_local;
  int max_value_local;
  unsigned short _min_locx_local;
  unsigned short _min_locy_local;
  unsigned short _max_locx_local;
  unsigned short _max_locy_local;
  p_ZN2xf9minMaxLocILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPiPiPtPtPtPt_1(imgInput,&min_value_local,&max_value_local,&_min_locx_local,&_min_locy_local,&_max_locx_local,&_max_locy_local);
   *min_value = min_value_local;
   *max_value = max_value_local;
   *_min_locx = _min_locx_local;
   *_min_locy = _min_locy_local;
   *_max_locx = _max_locx_local;
   *_max_locy = _max_locy_local;
}
#pragma ACCEL kernel

void min_max_loc_accel(class ap_uint< 64 > *imgInput_data,int *min_value,int *max_value,unsigned short *_min_locx,unsigned short *_min_locy,unsigned short *_max_locx,unsigned short *_max_locy,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=imgInput_data offset=slave bundle=gmem
  
#pragma HLS INTERFACE m_axi port=min_value offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=max_value offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=_min_locx offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=_min_locy offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=_max_locx offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=_max_locy offset=slave bundle=gmem1
  
#pragma HLS INTERFACE s_axilite port=imgInput_data bundle=control
  
#pragma HLS INTERFACE s_axilite port=min_value bundle=control
  
#pragma HLS INTERFACE s_axilite port=max_value bundle=control
  
#pragma HLS INTERFACE s_axilite port=_min_locx bundle=control
  
#pragma HLS INTERFACE s_axilite port=_min_locy bundle=control
  
#pragma HLS INTERFACE s_axilite port=_max_locx bundle=control
  
#pragma HLS INTERFACE s_axilite port=_max_locy bundle=control
  
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
  
#pragma HLS dataflow
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(imgInput_data,imgInput);
  minMaxLoc_wrapper_1(imgInput,min_value,max_value,_min_locx,_min_locy,_max_locx,_max_locy);
}
