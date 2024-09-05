#include <ap_int.h>
#include <assert.h>
#include <hls_stream.h>
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

static void p_ZN2xf16Mat_0_256_256_1_C2IEEii_1(struct xf_Mat_0_256_256_1_ *this_,int _rows,int _cols)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(this_,_rows,_cols,true);
}

static void p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1(struct xf_Mat_4_256_256_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 256 && _cols > 0 && _cols <= 256 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}

static void p_ZN2xf16Mat_4_256_256_1_C2IEEii_1(struct xf_Mat_4_256_256_1_ *this_,int _rows,int _cols)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1(this_,_rows,_cols,true);
}

static void p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1(struct xf_accel_utils *this_,class ap_uint< 64 > *srcPtr,class hls::stream< ap_uint< 64 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 64 - 1) / 64;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=8192
    dstStrm . write(srcPtr[i]);
  }
}

static void p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(struct xf_Mat_0_256_256_1_ *this_,int index,DataType_0_1_name val)
{
  this_ -> data[index] = val;
}
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;
const int _ZN13DataType_0_1_10pixelwidthE = 8;

static void p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi0ELi256ELi256ELi1EE_1(struct xf_accel_utils *this_,class hls::stream< ap_uint< 64 >  > &srcStrm,struct xf_Mat_0_256_256_1_ &dstMat)
{
  int rows = dstMat . rows;
  int cols = dstMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int valid_bits = 0;
  const int N_size = _ZN13DataType_0_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 64 > r;
  DataType_0_1_name out;
  
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
  class hls::stream< ap_uint< 64 >  > strm;
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

static void p_ZN2xf11readMatRowsILi256ELi256ELi1ELi25EEEP7ap_uintILi8EER6streamIhEiii(class ap_uint< 8 > *matB,class hls::stream< pix_t  > &pixStream,int rows,int cols,int size)
{
  const int WORD_SIZE = 1 == ((int )XF_NPPC1)?1 : 2;
  
#pragma ACCEL PIPELINE auto{__PIPE__L4}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  for (int i = 0; i < size; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256*256/1
    struct mywide_t_1_ tmpData;
    tmpData . data[0] = ((unsigned char )(( *(matB + i))));
    for (int k = 0; k < WORD_SIZE; ++k) {
      pixStream . write(tmpData . data[k]);
    }
  }
}

static void p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiii(class hls::stream< pix_t  > &f0Stream,class hls::stream< pix_t  > &f1Stream,class hls::stream< pix_t  > img1Col[26],class hls::stream< pix_t  > img2Col[26],int rows,int cols,int size)
{
  static unsigned char lb1[26][256];
#pragma HLS array_partition variable=lb1 complete dim=1
  static unsigned char lb2[26][256];
#pragma HLS array_partition variable=lb2 complete dim=1
  if (false) {
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L5}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  loop_rows:
  for (int r = 0; r < rows; r++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma HLS LOOP_FLATTEN OFF
    
#pragma ACCEL PIPELINE auto{__PIPE__L13}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L13}
    loop_cols:
    for (int c = 0; c < cols; c++) {
#pragma HLS dependence variable=lb2 array inter false
      
#pragma HLS dependence variable=lb1 array inter false
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
      loop_ws:
      for (int i = 0; i < 25 + 1 - 1; i++) {
        lb1[i][c] = lb1[i + 1][c];
        img1Col[i] . write(lb1[i][c]);
        lb2[i][c] = lb2[i + 1][c];
        img2Col[i] . write(lb2[i][c]);
      }
      unsigned char pix0 = f0Stream . read();
      lb1[25 + 1 - 1][c] = pix0;
      img1Col[25 + 1 - 1] . write(pix0);
      unsigned char pix1 = f1Stream . read();
      lb2[25 + 1 - 1][c] = pix1;
      img2Col[25 + 1 - 1] . write(pix1);
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L6}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
  for (int c = 0; c < cols; c++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    for (int r = 0; r < 25 + 1; r++) {
#pragma HLS dependence variable=lb2 array inter false
      
#pragma HLS dependence variable=lb1 array inter false      
#pragma HLS LOOP_TRIPCOUNT min=1 max=25+1
      lb1[r][c] = ((unsigned char )0);
      lb2[r][c] = ((unsigned char )0);
    }
  }
}

static void p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiii(class hls::stream< pix_t  > img1Col[26],class hls::stream< pix_t  > img2Col[26],class hls::stream< int  > &ixix_out,class hls::stream< int  > &ixiy_out,class hls::stream< int  > &iyiy_out,class hls::stream< int  > &dix_out,class hls::stream< int  > &diy_out,int rows,int cols,int size)
{
  unsigned char img1Col_[26];
#pragma HLS array_partition variable=img1Col_ complete dim=1
  unsigned char img2Col_[26];
#pragma HLS array_partition variable=img2Col_ complete dim=1
  static unsigned char img1Win[52];
#pragma HLS array_partition variable=img1Win complete dim=1
  static unsigned char img2Win[26];
#pragma HLS array_partition variable=img2Win complete dim=1
  static int ixix = 0;
  static int ixiy = 0;
  static int iyiy = 0;
  static int dix = 0;
  static int diy = 0;
  static int csIxix[256];
  static int csIxiy[256];
  static int csIyiy[256];
  static int csDix[256];
  static int csDiy[256];
  static int cbIxix[256];
  static int cbIxiy[256];
  static int cbIyiy[256];
  static int cbDix[256];
  static int cbDiy[256];
  int zIdx = -(25 - 2);
  int nIdx = zIdx + 25 - 2;
  if (false) {
  }
   else {
  }
  if (false) {
  }
   else {
  }
  int csIxixR;
  int csIxiyR;
  int csIyiyR;
  int csDixR;
  int csDiyR;
  
#pragma ACCEL PIPELINE auto{__PIPE__L7}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
  for (int r = 0; r < rows; r++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL false_dependence variable=csIxix
    
#pragma ACCEL false_dependence variable=csIxiy
    
#pragma ACCEL false_dependence variable=csIyiy
    
#pragma ACCEL false_dependence variable=csDix
    
#pragma ACCEL false_dependence variable=csDiy
    
#pragma ACCEL false_dependence variable=cbIxix
    
#pragma ACCEL false_dependence variable=cbIxiy
    
#pragma ACCEL false_dependence variable=cbIyiy
    
#pragma ACCEL false_dependence variable=cbDix
    
#pragma ACCEL false_dependence variable=cbDiy
    
#pragma ACCEL PIPELINE auto{__PIPE__L15}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L15}
    for (int c = 0; c < cols; c++) {
#pragma HLS dependence variable=csIxix array inter false
      
#pragma HLS dependence variable=csIxiy array inter false
      
#pragma HLS dependence variable=csIyiy array inter false
      
#pragma HLS dependence variable=csDix array inter false
      
#pragma HLS dependence variable=csDiy array inter false
      
#pragma HLS dependence variable=cbIxix array inter false
      
#pragma HLS dependence variable=cbIxiy array inter false
      
#pragma HLS dependence variable=cbIyiy array inter false
      
#pragma HLS dependence variable=cbDix array inter false
      
#pragma HLS dependence variable=cbDiy array inter false      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
      int csIxixL = 0;
      int csIxiyL = 0;
      int csIyiyL = 0;
      int csDixL = 0;
      int csDiyL = 0;
      if (zIdx >= 0) {
        csIxixL = csIxix[zIdx];
        csIxiyL = csIxiy[zIdx];
        csIyiyL = csIyiy[zIdx];
        csDixL = csDix[zIdx];
        csDiyL = csDiy[zIdx];
      }
      for (int wr = 0; wr < 25 + 1; ++wr) {
        
#pragma HLS LOOP_TRIPCOUNT min=1 max=25+1
        img1Col_[wr] = img1Col[wr] . read();
        img2Col_[wr] = img2Col[wr] . read();
      }
      int wrt = 1;
      int cIxTopR = (((int )img1Col_[wrt]) - ((int )img1Win[wrt * 2 + 2 - 2])) / 2;
      int cIyTopR = (((int )img1Win[(wrt + 1) * 2 + 2 - 1]) - ((int )img1Win[(wrt - 1) * 2 + 2 - 1])) / 2;
      int delTopR = ((int )img1Win[wrt * 2 + 2 - 1]) - ((int )img2Win[wrt * 1 + 1 - 1]);
      int wrb = 25 - 1;
      int cIxBotR = (((int )img1Col_[wrb]) - ((int )img1Win[wrb * 2 + 2 - 2])) / 2;
      int cIyBotR = (((int )img1Win[(wrb + 1) * 2 + 2 - 1]) - ((int )img1Win[(wrb - 1) * 2 + 2 - 1])) / 2;
      int delBotR = ((int )img1Win[wrb * 2 + 2 - 1]) - ((int )img2Win[wrb * 1 + 1 - 1]);
      if (((bool )0) && r < 25) {
        cIxTopR = 0;
        cIyTopR = 0;
        delTopR = 0;
      }
      csIxixR = cbIxix[nIdx] + cIxBotR * cIxBotR - cIxTopR * cIxTopR;
      csIxiyR = cbIxiy[nIdx] + cIxBotR * cIyBotR - cIxTopR * cIyTopR;
      csIyiyR = cbIyiy[nIdx] + cIyBotR * cIyBotR - cIyTopR * cIyTopR;
      csDixR = cbDix[nIdx] + delBotR * cIxBotR - delTopR * cIxTopR;
      csDiyR = cbDiy[nIdx] + delBotR * cIyBotR - delTopR * cIyTopR;
      ixix += csIxixR - csIxixL;
      ixiy += csIxiyR - csIxiyL;
      iyiy += csIyiyR - csIyiyL;
      dix += csDixR - csDixL;
      diy += csDiyR - csDiyL;
      ixix_out . write(ixix);
      ixiy_out . write(ixiy);
      iyiy_out . write(iyiy);
      dix_out . write(dix);
      diy_out . write(diy);
      for (int i = 0; i < 25 + 1; i++) {
        
#pragma HLS LOOP_TRIPCOUNT min=1 max=25+1
        img1Win[i * 2] = img1Win[i * 2 + 1];
      }
      for (int i = 0; i < 25 + 1; ++i) {
        
#pragma HLS LOOP_TRIPCOUNT min=1 max=25+1
        img1Win[i * 2 + 1] = img1Col_[i];
        img2Win[i] = img2Col_[i];
      }
      cbIxix[nIdx] = csIxixR;
      cbIxiy[nIdx] = csIxiyR;
      cbIyiy[nIdx] = csIyiyR;
      cbDix[nIdx] = csDixR;
      cbDiy[nIdx] = csDiyR;
      csIxix[nIdx] = csIxixR;
      csIxiy[nIdx] = csIxiyR;
      csIyiy[nIdx] = csIyiyR;
      csDix[nIdx] = csDixR;
      csDiy[nIdx] = csDiyR;
      zIdx++;
      if (zIdx == cols) {
        zIdx = 0;
      }
      nIdx++;
      if (nIdx == cols) {
        nIdx = 0;
      }
    }
  }
  for (int r = 0; r < 25 + 1; r++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=25+1
    img1Win[r] = ((unsigned char )0);
    img1Win[r + (25 + 1)] = ((unsigned char )0);
    img2Win[r] = ((unsigned char )0);
    img1Col_[r] = ((unsigned char )0);
    img2Col_[r] = ((unsigned char )0);
  }
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L9}
  for (int r = 0; r < cols; ++r) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    csIxix[r] = 0;
    csIxiy[r] = 0;
    csIyiy[r] = 0;
    csDix[r] = 0;
    csDiy[r] = 0;
    cbIxix[r] = 0;
    cbIxiy[r] = 0;
    cbIyiy[r] = 0;
    cbDix[r] = 0;
    cbDiy[r] = 0;
  }
  ixix = 0;
  ixiy = 0;
  iyiy = 0;
  dix = 0;
  diy = 0;
}

static void p_ZN2xf11computeFlowILi256ELi256ELi1ELi25EEER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiER6streamIfER6streamIfEiii(class hls::stream< int  > &ixix,class hls::stream< int  > &ixiy,class hls::stream< int  > &iyiy,class hls::stream< int  > &dix,class hls::stream< int  > &diy,class hls::stream< float  > &fx_out,class hls::stream< float  > &fy_out,int rows,int cols,int size)
{
  
#pragma ACCEL PIPELINE auto{__PIPE__L10}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L10}
  for (int r = 0; r < rows; r++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L16}
    for (int c = 0; c < cols; c++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
      int ixix_ = ixix . read();
      int ixiy_ = ixiy . read();
      int iyiy_ = iyiy . read();
      int dix_ = dix . read();
      int diy_ = diy . read();
      float fx_ = (float )0;
      float fy_ = (float )0;
      float det = ((float )ixix_) * ((float )iyiy_) - ((float )ixiy_) * ((float )ixiy_);
      if (det <= 1.0f || r < 25 || c < 25 + 1) {
        fx_ = ((float )0.0);
        fy_ = ((float )0.0);
      }
       else {
        float i00 = ((float )iyiy_) / det;
        float i01 = ((float )(-ixiy_)) / det;
        float i10 = ((float )(-ixiy_)) / det;
        float i11 = ((float )ixix_) / det;
        fx_ = i00 * ((float )dix_) + i01 * ((float )diy_);
        fy_ = i10 * ((float )dix_) + i11 * ((float )diy_);
      }
      fx_out . write(fx_);
      fy_out . write(fy_);
    }
  }
}

static void p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1(struct xf_Mat_4_256_256_1_ *this_,int index,DataType_4_1_name val)
{
  this_ -> data[index] = val;
}

static void p_ZN2xf12writeOutput8ILi256ELi256ELi1ELi25EEER6streamIfER6streamIfER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEi(class hls::stream< float  > &fx_in,class hls::stream< float  > &fy_in,struct xf_Mat_4_256_256_1_ &flowx,struct xf_Mat_4_256_256_1_ &flowy,int size)
{
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L11}
  for (int r = 0; r < size; r++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256*256
    float fx_out = fx_in . read();
    float fy_out = fy_in . read();
    class ap_uint< 32 > *fx_out_int;
    fx_out_int = ((class ap_uint< 32 > *)(&fx_out));
    class ap_uint< 32 > *fy_out_int;
    fy_out_int = ((class ap_uint< 32 > *)(&fy_out));
    p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1(&flowx,r, *fx_out_int);
    p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1(&flowy,r, *fy_out_int);
  }
}

static void p_ZN2xf8flowWrapILi256ELi256ELi1ELi25ELb0EEEP7ap_uintILi8EEP7ap_uintILi8EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiii(class ap_uint< 8 > *frame0,class ap_uint< 8 > *frame1,struct xf_Mat_4_256_256_1_ &flowx,struct xf_Mat_4_256_256_1_ &flowy,int rows,int cols,int size)
{
  
#pragma HLS DATAFLOW
  class hls::stream< pix_t  > f0Stream("f0Stream");
  class hls::stream< pix_t  > f1Stream("f1Stream");
  class hls::stream< pix_t  > f0Delayed("f0Delayed");
  
#pragma HLS STREAM variable=f0Stream depth=16
  
#pragma HLS STREAM variable=f1Stream depth=16
  class hls::stream< pix_t  > img1Col[26];
  class hls::stream< pix_t  > img2Col[26];
  class hls::stream< int  > ixix;
  class hls::stream< int  > ixiy;
  class hls::stream< int  > iyiy;
  class hls::stream< int  > dix;
  class hls::stream< int  > diy;
  class hls::stream< float  > fx;
  class hls::stream< float  > fy;
  
#pragma HLS STREAM variable=ixix depth=16
  
#pragma HLS STREAM variable=ixiy depth=16
  
#pragma HLS STREAM variable=iyiy depth=16
  
#pragma HLS STREAM variable=dix depth=16
  
#pragma HLS STREAM variable=diy depth=16
  
#pragma HLS STREAM variable=img1Col depth=16
  
#pragma HLS STREAM variable=img2Col depth=16
  p_ZN2xf11readMatRowsILi256ELi256ELi1ELi25EEEP7ap_uintILi8EER6streamIhEiii(frame0,f0Stream,rows,cols,size);
  p_ZN2xf11readMatRowsILi256ELi256ELi1ELi25EEEP7ap_uintILi8EER6streamIhEiii(frame1,f1Stream,rows,cols,size);
  p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiii(f0Stream,f1Stream,img1Col,img2Col,rows,cols,size);
  p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiii(img1Col,img2Col,ixix,ixiy,iyiy,dix,diy,rows,cols,size);
  p_ZN2xf11computeFlowILi256ELi256ELi1ELi25EEER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiER6streamIfER6streamIfEiii(ixix,ixiy,iyiy,dix,diy,fx,fy,rows,cols,size);
  p_ZN2xf12writeOutput8ILi256ELi256ELi1ELi25EEER6streamIfER6streamIfER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEi(fx,fy,flowx,flowy,size);
}

static void p_ZN2xf13fpga_optflow8ILi256ELi256ELi1ELi25ELb0EEEP7ap_uintILi8EEP7ap_uintILi8EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiii(class ap_uint< 8 > *frame0,class ap_uint< 8 > *frame1,struct xf_Mat_4_256_256_1_ &flowx,struct xf_Mat_4_256_256_1_ &flowy,int rows,int cols,int size)
{
  p_ZN2xf8flowWrapILi256ELi256ELi1ELi25ELb0EEEP7ap_uintILi8EEP7ap_uintILi8EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiii(frame0,frame1,flowx,flowy,rows,cols,size);
  return ;
}

static void p_ZN2xf24DenseNonPyrLKOpticalFlowILi25ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &frame0,struct xf_Mat_0_256_256_1_ &frame1,struct xf_Mat_4_256_256_1_ &flowx,struct xf_Mat_4_256_256_1_ &flowy)
{
  p_ZN2xf13fpga_optflow8ILi256ELi256ELi1ELi25ELb0EEEP7ap_uintILi8EEP7ap_uintILi8EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiii((class ap_uint< 8 > *)frame0 . data,(class ap_uint< 8 > *)frame1 . data,flowx,flowy,frame0 . rows,frame0 . cols,frame0 . size);
}

static DataType_4_1_name p_ZN2xf16Mat_4_256_256_1_4readIEEi_1(struct xf_Mat_4_256_256_1_ *this_,int index)
{
  return this_ -> data[index];
}
const int _ZN13DataType_4_1_10pixelwidthE = 32;

static void p_ZN2xf11accel_utils13xfMat2hlsStrmILi32ELi4ELi256ELi256ELi1ELi65536EEER3MatILi4ELi256ELi256ELi1EER6streamI7ap_uintILi32EEE_1(struct xf_accel_utils *this_,struct xf_Mat_4_256_256_1_ &srcMat,class hls::stream< ap_uint< 32 >  > &dstStrm)
{
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  int loop_count = rows * cols / _ZN20xfNPixelsPerCycle_1_4nppcE;
  int bits_to_add = 32;
  const int N_size = _ZN13DataType_4_1_10pixelwidthE * _ZN20xfNPixelsPerCycle_1_4nppcE;
  class ap_uint< 32 > r;
  DataType_4_1_name in;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  L1:
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    in = p_ZN2xf16Mat_4_256_256_1_4readIEEi_1(&srcMat,i);
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

static void p_ZN2xf11accel_utils13hlsStrm2ArrayILi32ELi256ELi256ELi1ELi1ELi32ELi65536EEER6streamI7ap_uintILi32EEEP7ap_uintILi32EEii_1(struct xf_accel_utils *this_,class hls::stream< ap_uint< 32 >  > &srcStrm,class ap_uint< 32 > *dstPtr,int rows,int cols)
{
  int pixel_width = 1 * 32;
  int loop_count = (rows * cols * pixel_width + 32 - 1) / 32;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
  for (int i = 0; i < loop_count; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=65536
    dstPtr[i] = srcStrm . read();
  }
}
const int _ZN14StreamType_13_8bitdepthE = 32;
const int _ZN13DataType_4_1_8bitdepthE = 32;

static void p_ZN2xf11accel_utils11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1(struct xf_accel_utils *this_,struct xf_Mat_4_256_256_1_ &srcMat,class ap_uint< 32 > *dstPtr)
{
  
#pragma HLS DATAFLOW
  32 >= _ZN14StreamType_13_8bitdepthE && ((bool )"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration")?((void )0) : __assert_fail("(ptr_width >= StreamType<DataType<MAT_T,NPC>::wordwidth>::bitdepth) && \"The ptr_width must be always greater than or equal to the minimum width for the corresponding configuration\"","xf_utility.h",(unsigned int )741,__PRETTY_FUNCTION__);
  const int ch_width = _ZN13DataType_4_1_8bitdepthE;
  class hls::stream< ap_uint< 32 >  > strm;
  int rows = srcMat . rows;
  int cols = srcMat . cols;
  p_ZN2xf11accel_utils13xfMat2hlsStrmILi32ELi4ELi256ELi256ELi1ELi65536EEER3MatILi4ELi256ELi256ELi1EER6streamI7ap_uintILi32EEE_1(this_,srcMat,strm);
  p_ZN2xf11accel_utils13hlsStrm2ArrayILi32ELi256ELi256ELi1ELi1ELi32ELi65536EEER6streamI7ap_uintILi32EEEP7ap_uintILi32EEii_1(this_,strm,dstPtr,rows,cols);
}

static void p_ZN2xf11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1(struct xf_Mat_4_256_256_1_ &srcMat,class ap_uint< 32 > *dstPtr)
{
  struct xf_accel_utils au;
  p_ZN2xf11accel_utils11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1(&au,srcMat,dstPtr);
}
#pragma ACCEL kernel

void dense_non_pyr_of_accel(class ap_uint< 64 > *img_curr,class ap_uint< 64 > *img_prev,class ap_uint< 32 > *img_outx,class ap_uint< 32 > *img_outy,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_curr offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_prev offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=img_outx offset=slave bundle=gmem3
  
#pragma HLS INTERFACE m_axi port=img_outy offset=slave bundle=gmem4
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  struct xf_Mat_0_256_256_1_ in_curr_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEii_1(&in_curr_mat,rows,cols);
  ;
  
#pragma HLS stream variable=in_curr_mat.data depth=2
  struct xf_Mat_0_256_256_1_ in_prev_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEii_1(&in_prev_mat,rows,cols);
  ;
  
#pragma HLS stream variable=in_prev_mat.data depth=2
  struct xf_Mat_4_256_256_1_ outx_mat;
  p_ZN2xf16Mat_4_256_256_1_C2IEEii_1(&outx_mat,rows,cols);
  ;
  
#pragma HLS stream variable=outx_mat.data depth=2
  struct xf_Mat_4_256_256_1_ outy_mat;
  p_ZN2xf16Mat_4_256_256_1_C2IEEii_1(&outy_mat,rows,cols);
  ;
  
#pragma HLS stream variable=outy_mat.data depth=2
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(img_curr,in_curr_mat);
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(img_prev,in_prev_mat);
  p_ZN2xf24DenseNonPyrLKOpticalFlowILi25ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EE_1(in_curr_mat,in_prev_mat,outx_mat,outy_mat);
  p_ZN2xf11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1(outx_mat,img_outx);
  p_ZN2xf11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1(outy_mat,img_outy);
}
