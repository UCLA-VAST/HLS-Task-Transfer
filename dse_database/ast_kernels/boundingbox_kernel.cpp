#include <ap_int.h>
#include <assert.h>
#include "merlin_type_define.h"

static void p_ZN2xf9Rect_int_C2IEEv_1(struct xf_Rect_int_ *this_)
{
}

static void p_ZN2xf23Scalar_4_unsigned_char_C2IEEv_1(struct xf_Scalar_4_unsigned_char_ *this_)
{
  
#pragma HLS ARRAY_PARTITION variable=this_->val dim=1 complete
  4 > 0?((void )0) : __assert_fail("N > 0","xf_structs.h",(unsigned int )243,__PRETTY_FUNCTION__);
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
const int _ZN13DataType_0_1_10pixelwidthE = 8;
const int _ZN13DataType_0_1_7channelE = 1;
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;

static void p_ZN2xf16Mat_0_256_256_1_6copyToIEEPv_1(struct xf_Mat_0_256_256_1_ *this_,void *_input)
{
  
#pragma HLS inline
  unsigned char *input = (unsigned char *)_input;
  DataType_0_1_cname in_val;
  int packcols = this_ -> cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE;
  int pixdepth = _ZN13DataType_0_1_10pixelwidthE;
  int bitdepth = pixdepth / _ZN13DataType_0_1_7channelE;
  int nppc = _ZN20xfNPixelsPerCycle_1_4nppcE;
  
#pragma ACCEL PIPELINE auto{__PIPE__L6}
  for (int r = 0; r < this_ -> rows; r++) {
    
#pragma ACCEL PIPELINE auto{__PIPE__L10}
    for (int c = 0; c < packcols; c++) {
      
#pragma ACCEL PIPELINE auto{__PIPE__L15}
      for (int p = 0; p < nppc; p++) {
        for (int ch = 0; ch < _ZN13DataType_0_1_7channelE; ch++) {{
            in_val = input[_ZN13DataType_0_1_7channelE * ((r * packcols + c) * nppc + p) + ch];
          }
          this_ -> data[r * packcols + c] . range((p * pixdepth + (ch + 1) * bitdepth - 1),(p * pixdepth + ch * bitdepth)) = in_val;
        }
      }
    }
  }
}

static void p_ZN2xf16Mat_0_256_256_1_C2IEEiiPv_1(struct xf_Mat_0_256_256_1_ *this_,int _rows,int _cols,void *_data)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(this_,_rows,_cols,true);
  //p_ZN2xf16Mat_0_256_256_1_6copyToIEEPv_1(this_,_data);
  this_ -> data = ((DataType_0_1_name *) _data);
}

static void p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ *this_,int index,DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN13DataType_0_1_8bitdepthE = 8;

static void p_ZN2xf19xFboundingboxkernelILi0ELi256ELi256ELi5ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EEP5Rect_IiEP6ScalarILi4EhEitt_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Rect_int_ *roi,struct xf_Scalar_4_unsigned_char_ *color,int num_box,unsigned short height,unsigned short width)
{
  StreamType_1_name val_src = (0);
  StreamType_1_name val_dst = (0);
  class ap_uint< 13 > r[5];
  class ap_uint< 13 > c[5];
  class ap_uint< 13 > r_new[5];
  class ap_uint< 13 > c_new[5];
  DataType_0_1_name color_box[5];
  class ap_uint< 2 > found = (0);
  class ap_uint< 2 > modify_pix = (0);
  int color_idx = 0;
  class ap_uint< 13 > r_idx = (0);
  class ap_uint< 13 > r_newidx = (0);
  class ap_uint< 13 > c_idx = (0);
  class ap_uint< 13 > c_newidx = (0);
  for (class ap_uint< 13 > i(0); i<num_box; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=5 max=5
    c[(long )(i)] = roi[(long )(i)] . x;
    c_new[(long )(i)] = (roi[(long )(i)] . x + roi[(long )(i)] . width);
    r[(long )(i)] = roi[(long )(i)] . y;
    r_new[(long )(i)] = (roi[(long )(i)] . y + roi[(long )(i)] . height);
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L8}
  for (int i = 0; i < num_box; i++) {
    int _l_j = 0;
    int _l_k = 0;
    
#pragma HLS LOOP_TRIPCOUNT min=5 max=5
// Canonicalized from: for(int j = 0, k = 0;j < _ZN13DataType_0_1_7channelE;(j++ , k += _ZN13DataType_0_1_8bitdepthE)) {...}
    for (_l_j = 0; _l_j <= 0; ++_l_j) {
      color_box[i] . range((_l_k + (_ZN13DataType_0_1_8bitdepthE - 1)),_l_k) = ((unsigned long )color[i] . val[_l_j]);
      _l_k += _ZN13DataType_0_1_8bitdepthE;
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L9}
  for (class ap_uint< 13 > b(0); b<num_box; b ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=5 max=5
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L12}
    colLoop:
    for (class ap_uint< 13 > j = c[(long )(b)]; j<c_new[(long )(b)]; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_src_mat,(int )((r[(long )(b)]*width+j)),color_box[(long )(b)]);
    }
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L13}
    for (class ap_uint< 13 > j = c[(long )(b)]; j<c_new[(long )(b)]; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_src_mat,(int )(((r_new[(long )(b)]-1)*width+j)),color_box[(long )(b)]);
    }
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L14}
    rowLoop1:
    for (class ap_uint< 13 > i = r[(long )(b)]+1; i<r_new[(long )(b)]-1; i ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_src_mat,(int )((i*width+c[(long )(b)])),color_box[(long )(b)]);
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_src_mat,(int )((i*width+(c_new[(long )(b)]-1))),color_box[(long )(b)]);
    }
  }
}

static void p_ZN2xf11boundingboxILi0ELi256ELi256ELi5ELi1EEER3MatILi0ELi256ELi256ELi1EEP5Rect_IiEP6ScalarILi4EhEi_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Rect_int_ *roi,struct xf_Scalar_4_unsigned_char_ *color,int num_box)
{
  unsigned short width = (unsigned short )_src_mat . cols;
  unsigned short height = (unsigned short )_src_mat . rows;
  0 == ((int )XF_8UC1) || 0 == ((int )XF_8UC4) && ((bool )"Type must be XF_8UC1 or XF_8UC4")?((void )0) : __assert_fail("(SRC_T == XF_8UC1)||(SRC_T == XF_8UC4) && \"Type must be XF_8UC1 or XF_8UC4\"","xf_boundingbox.hpp",(unsigned int )178,__PRETTY_FUNCTION__);
  1 == ((int )XF_NPPC1) && ((bool )"NPC must be 1, Multipixel parallelism is not supported")?((void )0) : __assert_fail("(NPC == XF_NPPC1)&& \"NPC must be 1, Multipixel parallelism is not supported\"","xf_boundingbox.hpp",(unsigned int )179,__PRETTY_FUNCTION__);
  ((int )height) <= 256 && ((int )width) <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((height <= ROWS ) && (width <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_boundingbox.hpp",(unsigned int )181,__PRETTY_FUNCTION__);
  for (int i = 0; i < num_box; i++) {
    roi[i] . height <= ((int )height) && roi[i] . width <= ((int )width) && ((bool )"ROI dimensions should be smaller or equal to the input image")?((void )0) : __assert_fail("((roi[i].height <= height ) && (roi[i].width <= width)) && \"ROI dimensions should be smaller or equal to the input image\"","xf_boundingbox.hpp",(unsigned int )185,__PRETTY_FUNCTION__);
    roi[i] . height > 0 && roi[i] . width > 0 && ((bool )"ROI  dimensions should be greater than 0")?((void )0) : __assert_fail("((roi[i].height > 0 ) && (roi[i].width > 0)) && \"ROI  dimensions should be greater than 0\"","xf_boundingbox.hpp",(unsigned int )186,__PRETTY_FUNCTION__);
    roi[i] . height + roi[i] . y <= ((int )height) && roi[i] . width + roi[i] . x <= ((int )width) && ((bool )"ROI area exceeds the input image area")?((void )0) : __assert_fail("((roi[i].height + roi[i].y <= height ) && (roi[i].width + roi[i].x <= width)) && \"ROI area exceeds the input image area\"","xf_boundingbox.hpp",(unsigned int )187,__PRETTY_FUNCTION__);
  }
  p_ZN2xf19xFboundingboxkernelILi0ELi256ELi256ELi5ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EEP5Rect_IiEP6ScalarILi4EhEitt_1(_src_mat,roi,color,num_box,height,width);
}
#pragma ACCEL kernel

void boundingbox_accel(class ap_uint< 8 > *in_img,int *roi,int color_info[5][4],int height,int width,int num_box)
{
  
#pragma HLS INTERFACE m_axi port=in_img offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=roi offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=color_info offset=slave bundle=gmem3
  
#pragma HLS INTERFACE s_axilite port=in_img bundle=control
  
#pragma HLS INTERFACE s_axilite port=roi bundle=control
  
#pragma HLS INTERFACE s_axilite port=color_info bundle=control
  
#pragma HLS INTERFACE s_axilite port=num_box bundle=control
  
#pragma HLS INTERFACE s_axilite port=height bundle=control
  
#pragma HLS INTERFACE s_axilite port=width bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Rect_int_ temp;
  p_ZN2xf9Rect_int_C2IEEv_1(&temp);
  struct xf_Rect_int_ _roi[5];
{
    int _i0;
    for (_i0 = 0; _i0 <= 4UL; ++_i0) {
      _roi[_i0] = temp;
    }
  }
  struct xf_Scalar_4_unsigned_char_ temp_0;
  p_ZN2xf23Scalar_4_unsigned_char_C2IEEv_1(&temp_0);
  struct xf_Scalar_4_unsigned_char_ color[5];
{
    int _i0;
    for (_i0 = 0; _i0 <= 4UL; ++_i0) {
      color[_i0] = temp_0;
    }
  }
  int _l_i = 0;
  int _l_j = 0;
// Canonicalized from: for(int i = 0, j = 0;i < num_box;(i++ , j += 4)) {...}
  for (_l_i = 0; _l_i <= -1 + num_box; ++_l_i) {
    
#pragma HLS LOOP_TRIPCOUNT min=5 max=5
    _roi[_l_i] . x = roi[_l_j];
    _roi[_l_i] . y = roi[_l_j + 1];
    _roi[_l_i] . height = roi[_l_j + 2];
    _roi[_l_i] . width = roi[_l_j + 3];
    _l_j += 4;
  }
#ifdef MERLIN_OPT
#endif
  
#pragma ACCEL PIPELINE auto{__PIPE__L3}
  for (int i = 0; i < num_box; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=5 max=5
    for (int j = 0; j < _ZN13DataType_0_1_7channelE; j++) {
//(i*XF_CHANNELS(TYPE,NPIX))+j];
      color[i] . val[j] = ((unsigned char )color_info[i][j]);
    }
  }
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEiiPv_1(&in_mat,height,width,(void *)in_img);
  ;
  p_ZN2xf11boundingboxILi0ELi256ELi256ELi5ELi1EEER3MatILi0ELi256ELi256ELi1EEP5Rect_IiEP6ScalarILi4EhEi_1(in_mat,_roi,color,num_box);
}
