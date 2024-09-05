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

static void p_ZN2xf16Mat_0_256_256_1_C2IEEii_1(struct xf_Mat_0_256_256_1_ *this_,int _rows,int _cols)
{
  
#pragma HLS inline
  p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(this_,_rows,_cols,true);
}

static void p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1(struct xf_accel_utils *this_,class ap_uint< 256 > *srcPtr,hls::stream< ap_uint< 256 >  > &dstStrm,int rows,int cols)
{
  int pixel_width = 1 * 8;
  int loop_count = (rows * cols * pixel_width + 256 - 1) / 256;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
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
static const class ap_fixed< 16 , 1 , AP_RND , AP_WRAP , 0 > sinval[360] = {(0.000000), (0.008727), (0.017452), (0.026177), (0.034899), (0.043619), (0.052336), (0.061049), (0.069756), (0.078459), (0.087156), (0.095846), (0.104528), (0.113203), (0.121869), (0.130526), (0.139173), (0.147809), (0.156434), (0.165048), (0.173648), (0.182236), (0.190809), (0.199368), (0.207912), (0.216440), (0.224951), (0.233445), (0.241922), (0.250380), (0.258819), (0.267238), (0.275637), (0.284015), (0.292372), (0.300706), (0.309017), (0.317305), (0.325568), (0.333807), (0.342020), (0.350207), (0.358368), (0.366501), (0.374607), (0.382684), (0.390731), (0.398749), (0.406737), (0.414693), (0.422618), (0.430511), (0.438371), (0.446198), (0.453991), (0.461749), (0.469472), (0.477159), (0.484810), (0.492424), (0.499980), (0.507539), (0.515038), (0.522499), (0.529920), (0.537300), (0.544639), (0.551937), (0.559193), (0.566407), (0.573577), (0.580703), (0.587786), (0.594823), (0.601815), (0.608762), (0.615662), (0.622515), (0.629321), (0.636079), (0.642788), (0.649448), (0.656059), (0.662620), (0.669131), (0.675591), (0.681999), (0.688355), (0.694659), (0.700910), (0.707107), (0.713251), (0.719340), (0.725375), (0.731354), (0.737278), (0.743145), (0.748956), (0.754710), (0.760406), (0.766045), (0.771625), (0.777146), (0.782609), (0.788011), (0.793354), (0.798636), (0.803857), (0.809017), (0.814116), (0.819152), (0.824127), (0.829038), (0.833886), (0.838671), (0.843392), (0.848048), (0.852641), (0.857168), (0.861629), (0.866026), (0.870356), (0.874620), (0.878817), (0.882948), (0.887011), (0.891007), (0.894934), (0.898794), (0.902585), (0.906308), (0.909961), (0.913545), (0.917060), (0.920505), (0.923879), (0.927184), (0.930417), (0.933580), (0.936672), (0.939692), (0.942641), (0.945518), (0.948323), (0.951056), (0.953717), (0.956305), (0.958820), (0.961261), (0.963630), (0.965926), (0.968147), (0.970295), (0.972370), (0.974370), (0.976296), (0.978147), (0.979924), (0.981627), (0.983255), (0.984807), (0.986285), (0.987688), (0.989016), (0.990268), (0.991445), (0.992546), (0.993572), (0.994522), (0.995396), (0.996195), (0.996917), (0.997564), (0.998135), (0.998629), (0.999048), (0.999391), (0.999657), (0.999848), (0.999962), (0.999980), (0.999962), (0.999848), (0.999657), (0.999391), (0.999048), (0.998629), (0.998135), (0.997564), (0.996917), (0.996195), (0.995396), (0.994522), (0.993572), (0.992546), (0.991445), (0.990268), (0.989016), (0.987688), (0.986285), (0.984807), (0.983255), (0.981627), (0.979924), (0.978147), (0.976296), (0.97437), (0.97237), (0.970295), (0.968147), (0.965926), (0.96363), (0.961261), (0.95882), (0.956305), (0.953717), (0.951056), (0.948323), (0.945518), (0.942641), (0.939692), (0.936672), (0.93358), (0.930417), (0.927184), (0.923879), (0.920505), (0.91706), (0.913545), (0.909961), (0.906308), (0.902585), (0.898794), (0.894934), (0.891007), (0.887011), (0.882948), (0.878817), (0.87462), (0.870356), (0.866026), (0.861629), (0.857168), (0.852641), (0.848048), (0.843392), (0.838671), (0.833886), (0.829038), (0.824127), (0.819152), (0.814116), (0.809017), (0.803857), (0.798636), (0.793354), (0.788011), (0.782609), (0.777146), (0.771625), (0.766045), (0.760406), (0.75471), (0.748956), (0.743145), (0.737278), (0.731354), (0.725375), (0.71934), (0.713251), (0.707107), (0.70091), (0.694659), (0.688355), (0.681999), (0.675591), (0.669131), (0.66262), (0.656059), (0.649448), (0.642788), (0.636079), (0.629321), (0.622515), (0.615662), (0.608762), (0.601815), (0.594823), (0.587786), (0.580703), (0.573577), (0.566407), (0.559193), (0.551937), (0.544639), (0.5373), (0.52992), (0.522499), (0.515038), (0.507539), (0.5), (0.492424), (0.48481), (0.477159), (0.469472), (0.461749), (0.453991), (0.446198), (0.438371), (0.430511), (0.422618), (0.414693), (0.406737), (0.398749), (0.390731), (0.382684), (0.374607), (0.366501), (0.358368), (0.350207), (0.34202), (0.333807), (0.325568), (0.317305), (0.309017), (0.300706), (0.292372), (0.284015), (0.275637), (0.267238), (0.258819), (0.25038), (0.241922), (0.233445), (0.224951), (0.21644), (0.207912), (0.199368), (0.190809), (0.182236), (0.173648), (0.165048), (0.156434), (0.147809), (0.139173), (0.130526), (0.121869), (0.113203), (0.104528), (0.095846), (0.087156), (0.078459), (0.069756), (0.061049), (0.052336), (0.043619), (0.034899), (0.026177), (0.017452), (0.008727)};
static const class ap_fixed< 16 , 1 , AP_RND , AP_WRAP , 0 > cosval[360] = {(0.999980), (0.999962), (0.999848), (0.999657), (0.999391), (0.999048), (0.998629), (0.998135), (0.997564), (0.996917), (0.996195), (0.995396), (0.994522), (0.993572), (0.992546), (0.991445), (0.990268), (0.989016), (0.987688), (0.986285), (0.984807), (0.983255), (0.981627), (0.979924), (0.978147), (0.976296), (0.97437), (0.97237), (0.970295), (0.968147), (0.965926), (0.96363), (0.961261), (0.95882), (0.956305), (0.953717), (0.951056), (0.948323), (0.945518), (0.942641), (0.939692), (0.936672), (0.93358), (0.930417), (0.927184), (0.923879), (0.920505), (0.91706), (0.913545), (0.909961), (0.906308), (0.902585), (0.898794), (0.894934), (0.891007), (0.887011), (0.882948), (0.878817), (0.87462), (0.870356), (0.866026), (0.861629), (0.857168), (0.852641), (0.848048), (0.843392), (0.838671), (0.833886), (0.829038), (0.824127), (0.819152), (0.814116), (0.809017), (0.803857), (0.798636), (0.793354), (0.788011), (0.782609), (0.777146), (0.771625), (0.766045), (0.760406), (0.75471), (0.748956), (0.743145), (0.737278), (0.731354), (0.725375), (0.71934), (0.713251), (0.707107), (0.70091), (0.694659), (0.688355), (0.681999), (0.675591), (0.669131), (0.66262), (0.656059), (0.649448), (0.642788), (0.636079), (0.629321), (0.622515), (0.615662), (0.608762), (0.601815), (0.594823), (0.587786), (0.580703), (0.573577), (0.566407), (0.559193), (0.551937), (0.544639), (0.5373), (0.52992), (0.522499), (0.515038), (0.507539), (0.5), (0.492424), (0.48481), (0.477159), (0.469472), (0.461749), (0.453991), (0.446198), (0.438371), (0.430511), (0.422618), (0.414693), (0.406737), (0.398749), (0.390731), (0.382684), (0.374607), (0.366501), (0.358368), (0.350207), (0.34202), (0.333807), (0.325568), (0.317305), (0.309017), (0.300706), (0.292372), (0.284015), (0.275637), (0.267238), (0.258819), (0.25038), (0.241922), (0.233445), (0.224951), (0.21644), (0.207912), (0.199368), (0.190809), (0.182236), (0.173648), (0.165048), (0.156434), (0.147809), (0.139173), (0.130526), (0.121869), (0.113203), (0.104528), (0.095846), (0.087156), (0.078459), (0.069756), (0.061049), (0.052336), (0.043619), (0.034899), (0.026177), (0.017452), (0.008727), (0.000000), (- 0.008727), (- 0.017452), (- 0.026177), (- 0.034899), (- 0.043619), (- 0.052336), (- 0.061049), (- 0.069756), (- 0.078459), (- 0.087156), (- 0.095846), (- 0.104528), (- 0.113203), (- 0.121869), (- 0.130526), (- 0.139173), (- 0.147809), (- 0.156434), (- 0.165048), (- 0.173648), (- 0.182236), (- 0.190809), (- 0.199368), (- 0.207912), (- 0.216440), (- 0.224951), (- 0.233445), (- 0.241922), (- 0.250380), (- 0.258819), (- 0.267238), (- 0.275637), (- 0.284015), (- 0.292372), (- 0.300706), (- 0.309017), (- 0.317305), (- 0.325568), (- 0.333807), (- 0.342020), (- 0.350207), (- 0.358368), (- 0.366501), (- 0.374607), (- 0.382684), (- 0.390731), (- 0.398749), (- 0.406737), (- 0.414693), (- 0.422618), (- 0.430511), (- 0.438371), (- 0.446198), (- 0.453991), (- 0.461749), (- 0.469472), (- 0.477159), (- 0.484810), (- 0.492424), (- 0.499980), (- 0.507539), (- 0.515038), (- 0.522499), (- 0.529920), (- 0.537300), (- 0.544639), (- 0.551937), (- 0.559193), (- 0.566407), (- 0.573577), (- 0.580703), (- 0.587786), (- 0.594823), (- 0.601815), (- 0.608762), (- 0.615662), (- 0.622515), (- 0.629321), (- 0.636079), (- 0.642788), (- 0.649448), (- 0.656059), (- 0.662620), (- 0.669131), (- 0.675591), (- 0.681999), (- 0.688355), (- 0.694659), (- 0.700910), (- 0.707107), (- 0.713251), (- 0.719340), (- 0.725375), (- 0.731354), (- 0.737278), (- 0.743145), (- 0.748956), (- 0.754710), (- 0.760406), (- 0.766045), (- 0.771625), (- 0.777146), (- 0.782609), (- 0.788011), (- 0.793354), (- 0.798636), (- 0.803857), (- 0.809017), (- 0.814116), (- 0.819152), (- 0.824127), (- 0.829038), (- 0.833886), (- 0.838671), (- 0.843392), (- 0.848048), (- 0.852641), (- 0.857168), (- 0.861629), (- 0.866026), (- 0.870356), (- 0.874620), (- 0.878817), (- 0.882948), (- 0.887011), (- 0.891007), (- 0.894934), (- 0.898794), (- 0.902585), (- 0.906308), (- 0.909961), (- 0.913545), (- 0.917060), (- 0.920505), (- 0.923879), (- 0.927184), (- 0.930417), (- 0.933580), (- 0.936672), (- 0.939692), (- 0.942641), (- 0.945518), (- 0.948323), (- 0.951056), (- 0.953717), (- 0.956305), (- 0.958820), (- 0.961261), (- 0.963630), (- 0.965926), (- 0.968147), (- 0.970295), (- 0.972370), (- 0.974370), (- 0.976296), (- 0.978147), (- 0.979924), (- 0.981627), (- 0.983255), (- 0.984807), (- 0.986285), (- 0.987688), (- 0.989016), (- 0.990268), (- 0.991445), (- 0.992546), (- 0.993572), (- 0.994522), (- 0.995396), (- 0.996195), (- 0.996917), (- 0.997564), (- 0.998135), (- 0.998629), (- 0.999048), (- 0.999391), (- 0.999657), (- 0.999848), (- 0.999962)};

static void p_ZN2xf8xfVotingILi0ELi256ELi256ELi0ELi1ELi1ELj2ELj1ELi180ELi2203ELi0EEER3MatILi0ELi256ELi256ELi1EEPA2204_7ap_uintILi12EE7ap_uintILi12EE7ap_uintILi12EE_1(struct xf_Mat_0_256_256_1_ &_src_mat,class ap_uint< 12 > accum[180 + 1][2203 + 1],class ap_uint< 12 > height,class ap_uint< 12 > width)
{
  
#pragma ACCEL PIPELINE auto{__PIPE__L2}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L2}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  loop_init_r:
  for (class ap_uint< 13 > r(0); r<2203 + 1; r ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=2203
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L11}
    loop_init_n:
    for (class ap_uint< 13 > n(0); n<180 + 1; n ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=180
      accum[(long )(n)][(long )(r)] = 0;
    }
  }
  class ap_fixed< 16 , 1 , AP_RND , AP_WRAP , 0 > sinvals[180];
  class ap_fixed< 16 , 1 , AP_RND , AP_WRAP , 0 > cosvals[180];
  unsigned char rhoval = (unsigned char )1;
  class ap_uint< 10 > _l_n = 0;
  class ap_uint< 10 > _l_ang = 0;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
  loop_init:
// Canonicalized from: for(class ap_uint< 10 > n(0), ang(0 * 2);n<180;(ang = ang+2) , n ++ ) {...}
  for (_l_n = 0; _l_n <= 179; ++_l_n) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=180
    sinvals[(long )(_l_n . operator unsigned long())] = sinval[(long )(_l_ang . operator unsigned long())]/rhoval;
    cosvals[(long )(_l_n . operator unsigned long())] = cosval[(long )(_l_ang . operator unsigned long())]/rhoval;
    _l_ang = _l_ang+2;
  }
  class ap_uint< 13 > rho_prev_set1[180];
  class ap_uint< 13 > rho_stg3;
  class ap_uint< 13 > rho_stg3_reg[180];
  class ap_uint< 13 > rho_set2_reg;
  class ap_fixed< 14 , 13 , AP_TRN , AP_WRAP , 0 > rho_stg3_apfixedp1;
  class ap_fixed< 13 , 13 , AP_TRN , AP_WRAP , 0 > rho_stg3_apfixedp0;
  class ap_fixed< 28 , 13 , AP_RND , AP_WRAP , 0 > rho_stg1_sin[180];
  class ap_fixed< 28 , 13 , AP_RND , AP_WRAP , 0 > rho_stg1_cos[180];
  class ap_fixed< 28 , 13 , AP_RND , AP_WRAP , 0 > rho_stg1_sin_wire[180];
  class ap_fixed< 28 , 13 , AP_RND , AP_WRAP , 0 > rho_stg2[180];
  class ap_uint< 12 > accval_reg_set1[180];
  class ap_fixed< 14 , 13 , AP_RND , AP_WRAP , 0 > diag_offset(2203 / 2);
  class ap_fixed< 14 , 13 , AP_RND , AP_WRAP , 0 > roundval(0.5);
  class ap_fixed< 14 , 13 , AP_RND , AP_WRAP , 0 > rnd_Const_m0p5(diag_offset-roundval);
  class ap_fixed< 14 , 13 , AP_RND , AP_WRAP , 0 > rnd_Const_p0p5(diag_offset+roundval);
  class ap_uint< 13 > hei(height/2);
  class ap_uint< 13 > wdt(width/2);
  class ap_fixed< 28 , 13 , AP_RND , AP_WRAP , 0 > rho_stg1_sin_sin;
  class ap_fixed< 28 , 13 , AP_RND , AP_WRAP , 0 > rho_stg1_sin_cos;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  for (class ap_uint< 10 > ki(0); ki<180; ki ++ ) {
    rho_stg1_sin[(long )(ki)] = ( - wdt)*cosvals[(long )(ki)]+( - hei)*sinvals[(long )(ki)];
    rho_prev_set1[(long )(ki)] = 0;
    accval_reg_set1[(long )(ki)] = 0;
    rho_stg3_reg[(long )(ki)] = 0;
  }
  class ap_fixed< 14 , 13 , AP_RND , AP_WRAP , 0 > rho_offset;
  class ap_fixed< 14 , 13 , AP_RND , AP_WRAP , 0 > rho_stg2_rsh;
  class ap_uint< 12 > acc_val_set1;
  class ap_uint< 12 > upd_accval_set1(0);
  class ap_uint< 23 > row_index(0);
  bool rho_stg2_lsbs;
  bool j_eq_width;
  bool j_eq_0;
  bool delay_1edge = (bool )0;
  _PixelType_0_name img_pixel_val_reg(0);
  
#pragma ACCEL PIPELINE auto{__PIPE__L5}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  LOOPI:
  for (class ap_uint< 13 > i(0); i<height; i ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
    _PixelType_0_name img_pixel_val;
    
#pragma ACCEL false_dependence variable=accum
    
#pragma ACCEL PIPELINE auto{__PIPE__L12}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L12}
    LOOPJ:
    for (class ap_uint< 12 > j(0); j<width; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=1 max=256
      img_pixel_val = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,(int )(row_index));
      j_eq_width = ((bool )((j==width-1?1 : 0)));
      j_eq_0 = ((bool )((j==0?1 : 0)));
      
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L17}
      LOOPN1:
      for (class ap_uint< 10 > n(0); n<180; n ++ ) {
        if (j_eq_0) {
          rho_stg2[(long )(n)] = rho_stg1_sin[(long )(n)];
        }
         else {
          rho_stg2[(long )(n)] = rho_stg1_cos[(long )(n)];
        }
        rho_stg1_cos[(long )(n)] = rho_stg2[(long )(n)]+cosvals[(long )(n)];
        if (j_eq_width) {
          rho_stg1_sin[(long )(n)] = rho_stg1_sin[(long )(n)]+sinvals[(long )(n)];
        }
        rho_stg2_lsbs = ((bool )((rho_stg2[(long )(n)] . range(15,0) == ((long )16384)?1 : 0)));
        rho_offset = (rho_stg2_lsbs?rnd_Const_m0p5 : rnd_Const_p0p5);
        rho_stg2_rsh . range(13,0) = rho_stg2[(long )(n)] . range(27,14);
        rho_stg3_apfixedp1 = rho_stg2_rsh+rho_offset;
        rho_stg3_apfixedp0 = rho_stg3_apfixedp1 . range(13,1);
        rho_stg3 = rho_stg3_apfixedp0;
        if (img_pixel_val_reg!=0) {
          acc_val_set1 = accum[(long )(n)][(long )(rho_stg3_reg[(long )(n)])];
          upd_accval_set1 = accval_reg_set1[(long )(n)]+1;
          if (rho_stg3_reg[(long )(n)]==rho_prev_set1[(long )(n)]) {
            accval_reg_set1[(long )(n)] = upd_accval_set1;
          }
           else {
            accval_reg_set1[(long )(n)] = acc_val_set1;
          }
          if (delay_1edge) {
            accum[(long )(n)][(long )(rho_prev_set1[(long )(n)])] = upd_accval_set1;
          }
          rho_prev_set1[(long )(n)] = rho_stg3_reg[(long )(n)];
        }
        rho_stg3_reg[(long )(n)] = rho_stg3;
      }
      if (img_pixel_val_reg!=0) {
        delay_1edge = ((bool )1);
      }
      row_index = row_index+1;
      img_pixel_val_reg = img_pixel_val;
    }
  }
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
  LOOPN2:
  for (class ap_uint< 10 > n(0); n<180; n ++ ) {
    upd_accval_set1 = accval_reg_set1[(long )(n)]+1;
    accum[(long )(n)][(long )(rho_prev_set1[(long )(n)])] = upd_accval_set1;
  }
}

static void p_ZN2xf15thinningCompareILi180EEEP7ap_uintILi12EEP7ap_uintILi12EEbPbbbPbs_1(class ap_uint< 12 > vote_at_rho_theta[180 + 1],class ap_uint< 12 > vote_at_rho_theta_reg[180 + 1],bool cond1,bool cond2[180],bool cond3,bool cond4,bool four_conds[180],short threshold)
{
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L18}
  CONDLOOP:
  for (class ap_uint< 10 > ang2(0); ang2<180; ang2 ++ ) {
    cond1 = ((bool )((vote_at_rho_theta[(long )((ang2+1))]>vote_at_rho_theta[(long )(ang2)]?1 : 0)));
    cond2[(long )((ang2+1))] = ((bool )((vote_at_rho_theta[(long )((ang2+1))]>vote_at_rho_theta_reg[(long )((ang2+1))]?1 : 0)));
    cond3 = ((bool )((vote_at_rho_theta[(long )((ang2+1))]>threshold?1 : 0)));
    cond4 = ((bool )((vote_at_rho_theta[(long )((ang2+2))]>vote_at_rho_theta[(long )((ang2+1))]?0 : 1)));
    four_conds[(long )((ang2+1))] = ((bool )((cond1 && cond2[(long )((ang2+1))] && cond3 && cond4?1 : 0)));
  }
}

static void p_ZN2xf10xfThinningILi256ELi256ELi0ELi1ELi1ELj180ELi2203EEEPA2204_7ap_uintILi12EEs_1(class ap_uint< 12 > accumulator[180U + 1][2203 + 1],short threshold)
{
  class ap_uint< 12 > vote_at_rho_theta[180U + 2];
  class ap_uint< 12 > vote_at_rho_theta_reg[180U + 2];
  bool cond1;
  bool cond2[180U + 1];
  bool cond3;
  bool cond4;
  bool four_conds[180U + 1];
  bool four_conds_reg[180U + 1];
  bool four_conds_reg_2[180U + 1];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
  for (class ap_uint< 10 > ang1(0); ang1<180U + ((unsigned int )1); ang1 ++ ) {
    vote_at_rho_theta_reg[(long )(ang1)] = 0;
    four_conds_reg[(long )(ang1)] = ((bool )0);
    four_conds_reg_2[(long )(ang1)] = ((bool )1);
  }
  vote_at_rho_theta[0] = 0;
  vote_at_rho_theta[180U + ((unsigned int )1)] = 0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L8}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L8}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L8}
  RHOLOOPTHINNING:
  for (class ap_uint< 13 > r(0); r<2203 + 1; r ++ ) {
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L13}
    THINNINGINIT:
    for (class ap_uint< 10 > ang1(0); ang1<180U; ang1 ++ ) {
      vote_at_rho_theta[(long )((ang1+1))] = accumulator[(long )(ang1)][(long )(r)];
    }
    p_ZN2xf15thinningCompareILi180EEEP7ap_uintILi12EEP7ap_uintILi12EEbPbbbPbs_1(vote_at_rho_theta,vote_at_rho_theta_reg,cond1,cond2,cond3,cond4,four_conds,threshold);
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L14}
    THINWRITELOOP:
    for (class ap_uint< 10 > ang3(0); ang3<180U; ang3 ++ ) {
      if (four_conds_reg_2[(long )((ang3+1))] && r>1) {
        accumulator[(long )(ang3)][(long )((r-2))] = 0;
      }
      vote_at_rho_theta_reg[(long )((ang3+1))] = vote_at_rho_theta[(long )((ang3+1))];
      four_conds_reg_2[(long )((ang3+1))] = ((bool )((!four_conds_reg[(long )((ang3+1))] || cond2[(long )((ang3+1))]?1 : 0)));
      four_conds_reg[(long )((ang3+1))] = four_conds[(long )((ang3+1))];
    }
  }
}

static void p_ZN2xf16get_maxval_indexILi2203EEEP7ap_uintILi12EER7ap_uintILi12EER7ap_uintILi12EE_1(class ap_uint< 12 > input_array[2203 + 1],class ap_uint< 12 > &maxval,class ap_uint< 12 > &max_index)
{
  class ap_uint< 12 > local_max(0);
  class ap_uint< 12 > input_array_reg(0);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L19}
  RHOLOOP:
  for (class ap_uint< 13 > r(0); r<2203; r ++ ) {
    input_array_reg = input_array[(long )(r)];
    if (input_array_reg>local_max) {
      local_max = input_array_reg;
      max_index = r;
    }
  }
  maxval = local_max;
}

static void p_ZN2xf9xfSortingILi256ELi256ELi0ELi1ELi1ELj2ELj1ELi180ELi2203ELi512ELi0EEEPA2204_7ap_uintILi12EEPfPfs_1(class ap_uint< 12 > accumulator[180 + 1][2203 + 1],float linesrho[512],float linestheta[512],short linesmax)
{
  class ap_uint< 12 > local_max[180];
  class ap_uint< 12 > local_max_rho[180];
  class ap_uint< 12 > maxrho(0);
  class ap_uint< 10 > maxangle(0);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L9}
  for (class ap_uint< 10 > i(0); i<180; i ++ ) {
    local_max[(long )(i)] = 0;
  }
  class ap_fixed< 14 , 13 , AP_RND , AP_WRAP , 0 > diag_offset(((double )2203) / 2.0);
  
#pragma ACCEL PIPELINE auto{__PIPE__L10}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L10}
  MAINL:
  for (class ap_uint< 12 > li(0); li<linesmax; li ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=1 max=512
    
#pragma ACCEL PIPELINE auto{__PIPE__L15}
    
#pragma ACCEL TILE FACTOR=auto{__TILE__L15}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L15}
    for (class ap_uint< 10 > n(0); n<180; n ++ ) {
      p_ZN2xf16get_maxval_indexILi2203EEEP7ap_uintILi12EER7ap_uintILi12EER7ap_uintILi12EE_1(accumulator[(long )(n)],local_max[(long )(n)],local_max_rho[(long )(n)]);
    }
    class ap_uint< 12 > maxfinal(0);
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L16}
    THETAL:
    for (class ap_uint< 10 > n(0); n<180; n ++ ) {
      if (local_max[(long )(n)]>maxfinal) {
        maxfinal = local_max[(long )(n)];
        maxangle = n;
        maxrho = local_max_rho[(long )(n)];
      }
    }
    accumulator[(long )(maxangle)][(long )(maxrho)] = 0;
    float mintheta_radn = (float )(((double )0) * 0.017444);
    float ang_temp = (float )(0.008726 * ((double )2));
    float angle_radn = maxangle*ang_temp;
    float _rho = ((maxrho-diag_offset)*1);
    float _angle = angle_radn + mintheta_radn;
    linesrho[(long )(li)] = _rho;
    linestheta[(long )(li)] = _angle;
  }
}

static void p_ZN2xf12xfHoughLinesILi0ELi256ELi256ELi0ELi1ELi1ELj2ELj1ELi512ELi2203ELi0ELi180EEER3MatILi0ELi256ELi256ELi1EEPfPfs7ap_uintILi12EE7ap_uintILi12EEs_1(struct xf_Mat_0_256_256_1_ &_src_mat,float outputrho[512],float outputtheta[512],short _threshold,class ap_uint< 12 > height,class ap_uint< 12 > width,short linesmax)
{
  class ap_uint< 12 > accum[180U + 1][2203 + 1];
  p_ZN2xf8xfVotingILi0ELi256ELi256ELi0ELi1ELi1ELj2ELj1ELi180ELi2203ELi0EEER3MatILi0ELi256ELi256ELi1EEPA2204_7ap_uintILi12EE7ap_uintILi12EE7ap_uintILi12EE_1(_src_mat,accum,height,width);
  p_ZN2xf10xfThinningILi256ELi256ELi0ELi1ELi1ELj180ELi2203EEEPA2204_7ap_uintILi12EEs_1(accum,_threshold);
  p_ZN2xf9xfSortingILi256ELi256ELi0ELi1ELi1ELj2ELj1ELi180ELi2203ELi512ELi0EEEPA2204_7ap_uintILi12EEPfPfs_1(accum,outputrho,outputtheta,linesmax);
}

static void p_ZN2xf10HoughLinesILj1ELj2ELi512ELi2203ELi0ELi180ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPfPfss_1(struct xf_Mat_0_256_256_1_ &_src_mat,float outputrho[512],float outputtheta[512],short threshold,short linesmax)
{
  _src_mat . rows <= 256 && _src_mat . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_houghlines.hpp",(unsigned int )674,__PRETTY_FUNCTION__);
  1 == ((int )XF_NPPC1) && ((bool )"NPC must be XF_NPPC1")?((void )0) : __assert_fail("(NPC == XF_NPPC1) && \"NPC must be XF_NPPC1\"","xf_houghlines.hpp",(unsigned int )675,__PRETTY_FUNCTION__);
  180 - 0 > 0 && ((bool )"MINTHETA must be less than MAXTHETA")?((void )0) : __assert_fail("(((MAXTHETA-MINTHETA) > 0)) && \"MINTHETA must be less than MAXTHETA\"","xf_houghlines.hpp",(unsigned int )677,__PRETTY_FUNCTION__);
  0 >= 0 && 0 < 180 && ((bool )"MINTHETA must be between 0 to 180")?((void )0) : __assert_fail("((MINTHETA >= 0) && (MINTHETA<180)) && \"MINTHETA must be between 0 to 180\"","xf_houghlines.hpp",(unsigned int )678,__PRETTY_FUNCTION__);
  180 > 0 && 180 <= 180 && ((bool )"MAXTHETA must be between 0 to 180")?((void )0) : __assert_fail("((MAXTHETA > 0) && (MAXTHETA<=180)) && \"MAXTHETA must be between 0 to 180\"","xf_houghlines.hpp",(unsigned int )679,__PRETTY_FUNCTION__);
  p_ZN2xf12xfHoughLinesILi0ELi256ELi256ELi0ELi1ELi1ELj2ELj1ELi512ELi2203ELi0ELi180EEER3MatILi0ELi256ELi256ELi1EEPfPfs7ap_uintILi12EE7ap_uintILi12EEs_1(_src_mat,outputrho,outputtheta,threshold,_src_mat . rows,_src_mat . cols,linesmax);
}
#pragma ACCEL kernel

void houghlines_accel(class ap_uint< 256 > *img_inp,int rows,int cols,float *arrayy,float *arrayx,short threshold,short maxlines)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=arrayy offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=arrayx offset=slave bundle=gmem3
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=arrayy bundle=control
  
#pragma HLS INTERFACE s_axilite port=arrayx bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=threshold bundle=control
  
#pragma HLS INTERFACE s_axilite port=maxlines bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEii_1(&in_mat,rows,cols);
  ;
  
#pragma HLS stream variable=in_mat.data depth=pCOLS/pNPC1
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  p_ZN2xf10HoughLinesILj1ELj2ELi512ELi2203ELi0ELi180ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPfPfss_1(in_mat,arrayy,arrayx,threshold,maxlines);
}
