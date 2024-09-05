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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
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

static void p_ZN2xf11xFCoreScoreEPsiPh(short *flag_d,int _threshold,unsigned char *core)
{
  short flag_d_min2[25 - 1];
  short flag_d_max2[25 - 1];
  short flag_d_min4[25 - 3];
  short flag_d_max4[25 - 3];
  short flag_d_min8[25 - 7];
  short flag_d_max8[25 - 7];
  for (class ap_uint< 5 > i(0); i<25 - 1; i ++ ) {
    flag_d_min2[(long )(i)] = (((int )flag_d[(long )(i)]) < ((int )flag_d[(long )((i+1))])?flag_d[(long )(i)] : flag_d[(long )((i+1))]);
    flag_d_max2[(long )(i)] = (((int )flag_d[(long )(i)]) > ((int )flag_d[(long )((i+1))])?flag_d[(long )(i)] : flag_d[(long )((i+1))]);
  }
  for (class ap_uint< 5 > i(0); i<25 - 3; i ++ ) {
    flag_d_min4[(long )(i)] = (((int )flag_d_min2[(long )(i)]) < ((int )flag_d_min2[(long )((i+2))])?flag_d_min2[(long )(i)] : flag_d_min2[(long )((i+2))]);
    flag_d_max4[(long )(i)] = (((int )flag_d_max2[(long )(i)]) > ((int )flag_d_max2[(long )((i+2))])?flag_d_max2[(long )(i)] : flag_d_max2[(long )((i+2))]);
  }
  for (class ap_uint< 5 > i(0); i<25 - 7; i ++ ) {
    flag_d_min8[(long )(i)] = (((int )flag_d_min4[(long )(i)]) < ((int )flag_d_min4[(long )((i+4))])?flag_d_min4[(long )(i)] : flag_d_min4[(long )((i+4))]);
    flag_d_max8[(long )(i)] = (((int )flag_d_max4[(long )(i)]) > ((int )flag_d_max4[(long )((i+4))])?flag_d_max4[(long )(i)] : flag_d_max4[(long )((i+4))]);
  }
  unsigned char a0 = (unsigned char )_threshold;
// Standardize from: for(class ap_uint< 5 > i(0);i<16;i+=2) {...}
  for (class ap_uint< 5 > i = 0; i <= 7L; i++) {
    class ap_uint< 5 > _in_i_0 = 0L + 2L * i;
    short a = (short )255;
{
      a = flag_d_min8[(long )((_in_i_0+1))];
    }
    a0 = ((unsigned char )((((int )a0) > ((int )((((int )a) < ((int )flag_d[(long )(_in_i_0)])?a : flag_d[(long )(_in_i_0)])))?((int )a0) : ((int )((((int )a) < ((int )flag_d[(long )(_in_i_0)])?a : flag_d[(long )(_in_i_0)]))))));
    a0 = ((unsigned char )((((int )a0) > ((int )((((int )a) < ((int )flag_d[(long )(((_in_i_0+16 / 2)+1))])?a : flag_d[(long )(((_in_i_0+16 / 2)+1))])))?((int )a0) : ((int )((((int )a) < ((int )flag_d[(long )(((_in_i_0+16 / 2)+1))])?a : flag_d[(long )(((_in_i_0+16 / 2)+1))]))))));
  }
  short b0 = (short )(-_threshold);
// Standardize from: for(class ap_uint< 5 > i(0);i<16;i+=2) {...}
  for (class ap_uint< 5 > i = 0; i <= 7L; i++) {
    class ap_uint< 5 > _in_i = 0L + 2L * i;
    short b = (short )(- 255);
{
      b = flag_d_max8[(long )((_in_i+1))];
    }
    b0 = (((int )b0) < ((int )((((int )b) > ((int )flag_d[(long )(_in_i)])?b : flag_d[(long )(_in_i)])))?b0 : ((((int )b) > ((int )flag_d[(long )(_in_i)])?b : flag_d[(long )(_in_i)])));
    b0 = (((int )b0) < ((int )((((int )b) > ((int )flag_d[(long )(((_in_i+16 / 2)+1))])?b : flag_d[(long )(((_in_i+16 / 2)+1))])))?b0 : ((((int )b) > ((int )flag_d[(long )(((_in_i+16 / 2)+1))])?b : flag_d[(long )(((_in_i+16 / 2)+1))])));
  }
   *core = ((unsigned char )(((((int )a0) > -((int )b0)?((int )a0) : -((int )b0))) - 1));
}

static void p_ZN2xf10xFfastProcILi1ELi1ELi0ELi7ELi49EEEP7ap_uintILi8EEPA7_7ap_uintILi8EE7ap_uintILi8EEhR7ap_uintILi8EE_1(_PixelType_0_name OutputValues[1],_PixelType_0_name src_buf[7][1 + (7 - 1)],class ap_uint< 8 > win_size,unsigned char _threshold,_PixelType_0_name &pack_corners)
{
  unsigned char kx = (unsigned char )0;
  unsigned char ix = (unsigned char )0;
  _PixelType_0_name tbuf_temp(0);
  short flag_d[1 << 0][25] = {((short )0)};
  short flag_val[1 << 0][25] = {((short )0)};
  
#pragma ACCEL PIPELINE auto{__PIPE__L35}
  for (class ap_uint< 4 > i(0); i<1; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT MAX=1
    flag_d[(long )(i)][0] = ((short )((src_buf[3][(long )((3+i))]-src_buf[0][(long )((3+i))])));
    flag_d[(long )(i)][1] = ((short )((src_buf[3][(long )((3+i))]-src_buf[0][(long )((4+i))])));
    flag_d[(long )(i)][2] = ((short )((src_buf[3][(long )((3+i))]-src_buf[1][(long )((5+i))])));
    flag_d[(long )(i)][3] = ((short )((src_buf[3][(long )((3+i))]-src_buf[2][(long )((6+i))])));
    flag_d[(long )(i)][4] = ((short )((src_buf[3][(long )((3+i))]-src_buf[3][(long )((6+i))])));
    flag_d[(long )(i)][5] = ((short )((src_buf[3][(long )((3+i))]-src_buf[4][(long )((6+i))])));
    flag_d[(long )(i)][6] = ((short )((src_buf[3][(long )((3+i))]-src_buf[5][(long )((5+i))])));
    flag_d[(long )(i)][7] = ((short )((src_buf[3][(long )((3+i))]-src_buf[6][(long )((4+i))])));
    flag_d[(long )(i)][8] = ((short )((src_buf[3][(long )((3+i))]-src_buf[6][(long )((3+i))])));
    flag_d[(long )(i)][9] = ((short )((src_buf[3][(long )((3+i))]-src_buf[6][(long )((2+i))])));
    flag_d[(long )(i)][10] = ((short )((src_buf[3][(long )((3+i))]-src_buf[5][(long )((1+i))])));
    flag_d[(long )(i)][11] = ((short )((src_buf[3][(long )((3+i))]-src_buf[4][(long )((0+i))])));
    flag_d[(long )(i)][12] = ((short )((src_buf[3][(long )((3+i))]-src_buf[3][(long )((0+i))])));
    flag_d[(long )(i)][13] = ((short )((src_buf[3][(long )((3+i))]-src_buf[2][(long )((0+i))])));
    flag_d[(long )(i)][14] = ((short )((src_buf[3][(long )((3+i))]-src_buf[1][(long )((1+i))])));
    flag_d[(long )(i)][15] = ((short )((src_buf[3][(long )((3+i))]-src_buf[0][(long )((2+i))])));
    flag_d[(long )(i)][16] = flag_d[(long )(i)][0];
    flag_d[(long )(i)][17] = flag_d[(long )(i)][1];
    flag_d[(long )(i)][18] = flag_d[(long )(i)][2];
    flag_d[(long )(i)][19] = flag_d[(long )(i)][3];
    flag_d[(long )(i)][20] = flag_d[(long )(i)][4];
    flag_d[(long )(i)][21] = flag_d[(long )(i)][5];
    flag_d[(long )(i)][22] = flag_d[(long )(i)][6];
    flag_d[(long )(i)][23] = flag_d[(long )(i)][7];
    flag_d[(long )(i)][24] = flag_d[(long )(i)][8];
    for (class ap_uint< 4 > j(0); j<8; j ++ ) {
      if (((int )flag_d[(long )(i)][(long )(j)]) > ((int )_threshold)) {
        flag_val[(long )(i)][(long )(j)] = ((short )1);
      }
       else {
        if (((int )flag_d[(long )(i)][(long )(j)]) < -((int )_threshold)) {
          flag_val[(long )(i)][(long )(j)] = ((short )2);
        }
         else {
          flag_val[(long )(i)][(long )(j)] = ((short )0);
        }
      }
      if (((int )flag_d[(long )(i)][(long )((j+8))]) > ((int )_threshold)) {
        flag_val[(long )(i)][(long )((j+8))] = ((short )1);
      }
       else {
        if (((int )flag_d[(long )(i)][(long )((j+8))]) < -((int )_threshold)) {
          flag_val[(long )(i)][(long )((j+8))] = ((short )2);
        }
         else {
          flag_val[(long )(i)][(long )((j+8))] = ((short )0);
        }
      }
      flag_val[(long )(i)][(long )((j+16))] = flag_val[(long )(i)][(long )(j)];
    }
    flag_val[(long )(i)][16 / 2 + 16] = flag_val[(long )(i)][16 / 2];
    flag_d[(long )(i)][16 / 2 + 16] = flag_d[(long )(i)][16 / 2];
    unsigned char core = (unsigned char )0;
    unsigned char iscorner = (unsigned char )0;
    unsigned char count = (unsigned char )1;
    for (class ap_uint< 5 > c(1); c<16 + 16 / 2 + 1; c ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT MAX=25
      if (((int )flag_val[(long )(i)][(long )((c-1))]) == ((int )flag_val[(long )(i)][(long )(c)]) && ((int )flag_val[(long )(i)][(long )(c)]) > 0) {
        count++;
        if (((int )count) > 16 / 2) {
          iscorner = ((unsigned char )1);
        }
      }
       else {
        count = ((unsigned char )1);
      }
    }
    if ((bool )iscorner) {
      p_ZN2xf11xFCoreScoreEPsiPh(flag_d[(long )(i)],(int )_threshold,&core);
      pack_corners . range((((int )ix) + 7),((int )ix)) = ((unsigned long )255);
    }
     else {
      pack_corners . range((((int )ix) + 7),((int )ix)) = ((unsigned long )0);
    }
    ix += 8;
    tbuf_temp . range((((int )kx) + 7),((int )kx)) = ((unsigned long )core);
    kx += 8;
  }
  OutputValues[0] = tbuf_temp;
  return ;
}

static void p_ZN2xf11ProcessFastILi256ELi256ELi0ELi1ELi1ELi259ELi7ELi49EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA7_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EEhR7ap_uintILi8EE_1(hls::stream< _DataType_0_1_name  > &_src_mat,hls::stream< _DataType_0_1_name  > &_out_mat,_StreamType_1_name buf[7][256 >> 0],_PixelType_0_name src_buf[7][1 + (7 - 1)],_PixelType_0_name OutputValues[1],_StreamType_1_name &P0,unsigned short img_width,unsigned short img_height,unsigned short &shift_x,class ap_uint< 13 > row_ind[7],class ap_uint< 13 > row,class ap_uint< 8 > win_size,unsigned char _threshold,_PixelType_0_name &pack_corners)
{
  
#pragma HLS inline
  _StreamType_1_name buf_cop[7];
#pragma HLS array_partition variable=buf_cop complete dim=1
  unsigned short npc = (unsigned short )_ZN20xfNPixelsPerCycle_1_4nppcE;
  unsigned short col_loop_var = (unsigned short )0;
{
    col_loop_var = ((unsigned short )(7 >> 1));
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L22}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L22}
  for (int extract_px = 0; extract_px < 7; extract_px++) {
    
#pragma HLS LOOP_TRIPCOUNT min=7 max=7
    for (int ext_copy = 0; ext_copy < ((int )npc) + 7 - 1; ext_copy++) {
      src_buf[extract_px][ext_copy] = 0;
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L23}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L23}
  Col_Loop:
  for (class ap_uint< 13 > col(0); col<(((int )img_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + ((int )col_loop_var); col ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=259 max=259
    
#pragma HLS LOOP_FLATTEN OFF
    if (row<img_height && col<((int )img_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE) {
      buf[(long )(row_ind[(long )((win_size-1))])][(long )(col)] = _src_mat . read();
    }
{
      for (int copy_buf_var = 0; copy_buf_var < 7; copy_buf_var++) {
        
#pragma HLS LOOP_TRIPCOUNT min=7 max=7
        if (row>((int )img_height) - 1 && copy_buf_var>(win_size-1)-(row-(((int )img_height) - 1))) {
          buf_cop[copy_buf_var] = buf[(long )(row_ind[((win_size-1)-(row-(((int )img_height) - 1)))])][(long )(col)];
        }
         else {
          buf_cop[copy_buf_var] = buf[(long )(row_ind[copy_buf_var])][(long )(col)];
        }
      }
      for (int extract_px = 0; extract_px < 7; extract_px++) {
        
#pragma HLS LOOP_TRIPCOUNT min=7 max=7
        if (col<img_width) {
          src_buf[extract_px][(long )((win_size-1))] = buf_cop[extract_px];
        }
         else {
          src_buf[extract_px][(long )((win_size-1))] = src_buf[extract_px][(long )((win_size-2))];
        }
      }
      if (col<img_width && row<img_height && col>=6 && row>=6) {
        p_ZN2xf10xFfastProcILi1ELi1ELi0ELi7ELi49EEEP7ap_uintILi8EEPA7_7ap_uintILi8EE7ap_uintILi8EEhR7ap_uintILi8EE_1(OutputValues,src_buf,win_size,_threshold,pack_corners);
      }
      if (row>=img_height || col>=img_width) {
        OutputValues[0] = 0;
      }
      if (col>=7 >> 1) {
        _out_mat . write(OutputValues[0]);
      }
      
#pragma ACCEL PIPELINE auto{__PIPE__L29}
      
#pragma ACCEL TILE FACTOR=auto{__TILE__L29}
      for (int wrap_buf = 0; wrap_buf < 7; wrap_buf++) {
        
#pragma HLS LOOP_TRIPCOUNT min=7 max=7
        for (int col_warp = 0; col_warp < 7 - 1; col_warp++) {
          
#pragma HLS LOOP_TRIPCOUNT min=7 max=7
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
}

static void p_ZN2xf9xFfast7x7ILi256ELi256ELi0ELi1ELi1ELi259ELi7ELi49EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtth_1(hls::stream< _DataType_0_1_name  > &_src_mat,hls::stream< _DataType_0_1_name  > &_out_mat,class ap_uint< 8 > win_size,unsigned short img_height,unsigned short img_width,unsigned char _threshold)
{
  class ap_uint< 13 > row_ind[7];
  _PixelType_0_name pack_corners;
  unsigned short shift_x = (unsigned short )0;
  class ap_uint< 13 > row;
  class ap_uint< 13 > col;
  _PixelType_0_name OutputValues[1];
  _PixelType_0_name src_buf[7][1 + 6];
#pragma HLS array_partition variable=src_buf complete dim=1
#pragma HLS array_partition variable=src_buf complete dim=2
  _StreamType_1_name P0;
  _StreamType_1_name buf[7][256 >> 0];
#pragma HLS array_partition variable=buf complete dim=1
  for (int init_row_ind = 0; init_row_ind<win_size; init_row_ind++) {
    
#pragma HLS LOOP_TRIPCOUNT min=7 max=7
    row_ind[init_row_ind] = init_row_ind;
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L8}
  read_lines:
  for (int init_buf = (int )(row_ind[(long )((win_size>>1))]); init_buf<row_ind[(long )((win_size-1))]; init_buf++) {
    
#pragma HLS LOOP_TRIPCOUNT min=7 max=7
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L16}
    for (col = 0; col<((int )img_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE; col ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=259 max=259
      buf[init_buf][(long )(col)] = _src_mat . read();
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L9}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L9}
  for (col = 0; col<((int )img_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE; col ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=259 max=259
    for (int init_buf = 0; init_buf < 7 >> 1; init_buf++) {
      
#pragma HLS LOOP_TRIPCOUNT min=7 max=7
      buf[init_buf][(long )(col)] = 0;
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L10}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L10}
  Row_Loop:
  for (row = win_size>>1; row<img_height+(win_size>>1); row ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    P0 = 0;
    p_ZN2xf11ProcessFastILi256ELi256ELi0ELi1ELi1ELi259ELi7ELi49EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA7_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EEhR7ap_uintILi8EE_1(_src_mat,_out_mat,buf,src_buf,OutputValues,P0,img_width,img_height,shift_x,row_ind,row,win_size,_threshold,pack_corners);
    class ap_uint< 13 > zero_ind = row_ind[0];
    for (int init_row_ind = 0; init_row_ind < 7 - 1; init_row_ind++) {
      
#pragma HLS LOOP_TRIPCOUNT min=7 max=7
      row_ind[init_row_ind] = row_ind[init_row_ind + 1];
    }
    row_ind[(long )((win_size-1))] = zero_ind;
  }
}

static void p_ZN2xf9xFnmsProcILi1ELi0ELi3ELi9EEEP7ap_uintILi8EEPA3_7ap_uintILi8EE7ap_uintILi8EE_1(_PixelType_0_name OutputValues[1],_PixelType_0_name src_buf[3][1 + (3 - 1)],class ap_uint< 8 > win_size)
{
  _PixelType_0_name pix;
  if (src_buf[1][1]!=0) {
    if (src_buf[1][1]>src_buf[1][0] && src_buf[1][1]>src_buf[1][2] && src_buf[1][1]>src_buf[0][0] && src_buf[1][1]>src_buf[0][1] && src_buf[1][1]>src_buf[0][2] && src_buf[1][1]>src_buf[2][0] && src_buf[1][1]>src_buf[2][1] && src_buf[1][1]>src_buf[2][2]) {
      pix = 255;
    }
     else {
      pix = 0;
    }
  }
   else {
    pix = 0;
  }
  OutputValues[0] = pix;
  return ;
}

static void p_ZN2xf14ProcessfastnmsILi256ELi256ELi0ELi1ELi1ELi257ELi3ELi9EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA3_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EE_1(hls::stream< _DataType_0_1_name  > &_src_mat,hls::stream< _DataType_0_1_name  > &_out_mat,_StreamType_1_name buf[3][256 >> 0],_PixelType_0_name src_buf[3][1 + (3 - 1)],_PixelType_0_name OutputValues[1],_StreamType_1_name &P0,unsigned short img_width,unsigned short img_height,unsigned short &shift_x,class ap_uint< 13 > row_ind[3],class ap_uint< 13 > row,class ap_uint< 8 > win_size)
{
  
#pragma HLS inline
  _StreamType_1_name buf_cop[3];
#pragma HLS array_partition variable=buf_cop complete dim=1
  unsigned short npc = (unsigned short )_ZN20xfNPixelsPerCycle_1_4nppcE;
  unsigned short col_loop_var = (unsigned short )0;
{
    col_loop_var = ((unsigned short )(3 >> 1));
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L24}
  for (int extract_px = 0; extract_px < 3; extract_px++) {
    
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
    for (int ext_copy = 0; ext_copy < ((int )npc) + 3 - 1; ext_copy++) {
      src_buf[extract_px][ext_copy] = 0;
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L25}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L25}
  Col_Loop:
  for (class ap_uint< 13 > col(0); col<(((int )img_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + ((int )col_loop_var); col ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=257 max=257
    
#pragma HLS LOOP_FLATTEN OFF
    if (row<img_height && col<((int )img_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE) {
      buf[(long )(row_ind[(long )((win_size-1))])][(long )(col)] = _src_mat . read();
    }
{
      for (int copy_buf_var = 0; copy_buf_var < 3; copy_buf_var++) {
        
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
        if (row>((int )img_height) - 1 && copy_buf_var>(win_size-1)-(row-(((int )img_height) - 1))) {
          buf_cop[copy_buf_var] = buf[(long )(row_ind[((win_size-1)-(row-(((int )img_height) - 1)))])][(long )(col)];
        }
         else {
          buf_cop[copy_buf_var] = buf[(long )(row_ind[copy_buf_var])][(long )(col)];
        }
      }
      for (int extract_px = 0; extract_px < 3; extract_px++) {
        
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
        if (col<img_width) {
          src_buf[extract_px][(long )((win_size-1))] = buf_cop[extract_px];
        }
         else {
          src_buf[extract_px][(long )((win_size-1))] = src_buf[extract_px][(long )((win_size-2))];
        }
      }
      p_ZN2xf9xFnmsProcILi1ELi0ELi3ELi9EEEP7ap_uintILi8EEPA3_7ap_uintILi8EE7ap_uintILi8EE_1(OutputValues,src_buf,win_size);
      if (col>=3 >> 1) {
        _out_mat . write(OutputValues[0]);
      }
      
#pragma ACCEL PIPELINE auto{__PIPE__L33}
      for (int wrap_buf = 0; wrap_buf < 3; wrap_buf++) {
        
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
        for (int col_warp = 0; col_warp < 3 - 1; col_warp++) {
          
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
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
}

static void p_ZN2xf9xFfastnmsILi256ELi256ELi0ELi1ELi1ELi257ELi3ELi9EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtt_1(hls::stream< _DataType_0_1_name  > &_src_mat,hls::stream< _DataType_0_1_name  > &_out_mat,class ap_uint< 8 > win_size,unsigned short img_height,unsigned short img_width)
{
  class ap_uint< 13 > row_ind[3];
  unsigned short shift_x = (unsigned short )0;
  class ap_uint< 13 > row;
  class ap_uint< 13 > col;
  _PixelType_0_name OutputValues[1];
  _PixelType_0_name src_buf[3][1 + 2];
#pragma HLS array_partition variable=src_buf complete dim=1
#pragma HLS array_partition variable=src_buf complete dim=2
  _StreamType_1_name P0;
  _StreamType_1_name buf[3][256 >> 0];
#pragma HLS array_partition variable=buf complete dim=1
  for (int init_row_ind = 0; init_row_ind<win_size; init_row_ind++) {
    
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
    row_ind[init_row_ind] = init_row_ind;
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L12}
  read_lines:
  for (int init_buf = (int )(row_ind[(long )((win_size>>1))]); init_buf<row_ind[(long )((win_size-1))]; init_buf++) {
    
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L19}
    for (col = 0; col<((int )img_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE; col ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=257 max=257
      buf[init_buf][(long )(col)] = _src_mat . read();
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L13}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L13}
  for (col = 0; col<((int )img_width) >> _ZN20xfNPixelsPerCycle_1_9datashiftE; col ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=257 max=257
    for (int init_buf = 0; init_buf < 3 >> 1; init_buf++) {
      
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
      buf[init_buf][(long )(col)] = buf[(long )(row_ind[(long )((win_size>>1))])][(long )(col)];
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L14}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L14}
  Row_Loop:
  for (row = win_size>>1; row<img_height+(win_size>>1); row ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    P0 = 0;
    p_ZN2xf14ProcessfastnmsILi256ELi256ELi0ELi1ELi1ELi257ELi3ELi9EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA3_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EE_1(_src_mat,_out_mat,buf,src_buf,OutputValues,P0,img_width,img_height,shift_x,row_ind,row,win_size);
    class ap_uint< 13 > zero_ind = row_ind[0];
    for (int init_row_ind = 0; init_row_ind < 3 - 1; init_row_ind++) {
      
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
      row_ind[init_row_ind] = row_ind[init_row_ind + 1];
    }
    row_ind[(long )((win_size-1))] = zero_ind;
  }
}

static void p_ZN2xf21xFFastCornerDetectionILi256ELi256ELi0ELi1ELi1ELi12ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEtth_1(hls::stream< _DataType_0_1_name  > &_strm_in,hls::stream< _DataType_0_1_name  > &_strm_out,unsigned short _image_height,unsigned short _image_width,unsigned char _threshold)
{
  0 == ((int )XF_8UP) && ((bool )"Invalid Depth. The function xFFast is valid only for the Depths AU_8U")?((void )0) : __assert_fail("((DEPTH == XF_8UP)) && \"Invalid Depth. The function xFFast \" \"is valid only for the Depths AU_8U\"","xf_fast.hpp",(unsigned int )1035,__PRETTY_FUNCTION__);
  (1 == 0 || 1 == 1) && ((bool )"Invalid Value. The NMS value should be either 0 or 1")?((void )0) : __assert_fail("((NMSVAL == 0) || (NMSVAL == 1)) && \"Invalid Value. The NMS value should be either 0 or 1\"","xf_fast.hpp",(unsigned int )1038,__PRETTY_FUNCTION__);
  ((int )_image_height) <= 256 && ((int )_image_width) <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_image_height <= ROWS ) && (_image_width <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_fast.hpp",(unsigned int )1040,__PRETTY_FUNCTION__);
  hls::stream< _DataType_0_1_name  > _dst;
{
    
#pragma HLS DATAFLOW
    p_ZN2xf9xFfast7x7ILi256ELi256ELi0ELi1ELi1ELi259ELi7ELi49EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtth_1(_strm_in,_dst,7,_image_height,_image_width,_threshold);
    p_ZN2xf9xFfastnmsILi256ELi256ELi0ELi1ELi1ELi257ELi3ELi9EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtt_1(_dst,_strm_out,3,_image_height,_image_width);
  }
}

static void p_ZN2xf4fastILi1ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEh_1(struct xf_Mat_0_256_256_1_ &_src_mat,struct xf_Mat_0_256_256_1_ &_dst_mat,unsigned char _threshold)
{
  hls::stream< _DataType_0_1_name  > _src;
  hls::stream< _DataType_0_1_name  > _dst;
  int src_rows;
  int src_cols;
  int dst_rows;
  int dst_cols;
  src_rows = _src_mat . rows;
  src_cols = _src_mat . cols;
  dst_rows = _dst_mat . rows;
  dst_cols = _dst_mat . cols;
  
#pragma HLS DATAFLOW
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < src_rows; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
    for (int j = 0; j < src_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256/1
      _src . write((p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,i * (src_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + j)));
    }
  }
  p_ZN2xf21xFFastCornerDetectionILi256ELi256ELi0ELi1ELi1ELi12ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEtth_1(_src,_dst,(unsigned short )src_rows,(unsigned short )src_cols,_threshold);
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  for (int i = 0; i < dst_rows; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
    for (int j = 0; j < dst_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE; j++) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256/1
      _DataType_0_1_name value = _dst . read();
      p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1(&_dst_mat,i * (dst_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE) + j,value);
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L15}
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

void fast_accel(class ap_uint< 64 > *img_inp,class ap_uint< 64 > *img_out,int rows,int cols,int threshold)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_out offset=slave bundle=gmem2
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_out bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=threshold bundle=control
  
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
  p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  p_ZN2xf4fastILi1ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEh_1(in_mat,out_mat,(unsigned char )threshold);
  p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1(out_mat,img_out);
}
