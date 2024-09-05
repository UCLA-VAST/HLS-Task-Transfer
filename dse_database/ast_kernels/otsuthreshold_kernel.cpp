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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
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
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L7}
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

static void p_ZN2xf17xFHistogramKernelILi0ELi256ELi256ELi0ELi1ELi1ELi128ELi1EEER3MatILi0ELi256ELi256ELi1EEPA256_jRtRt_1(struct xf_Mat_0_256_256_1_ &_src_mat,unsigned int hist_array[1][256],unsigned short &imgheight,unsigned short &imgwidth)
{
  unsigned int tmp_hist[1 << 0][256] = {((unsigned int )0)};
  unsigned int tmp_hist1[1 << 0][256] = {((unsigned int )0)};
  _StreamType_1_name in_buf;
  _StreamType_1_name in_buf1;
  _StreamType_1_name temp_buf;
  bool flag = (bool )0;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  HIST_INITIALIZE_LOOP:
  for (class ap_uint< 10 > i(0); i<256; i ++ ) {
    for (class ap_uint< 5 > j(0); j<1 << _ZN20xfNPixelsPerCycle_1_9datashiftE * 1; j ++ ) {
      
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
      tmp_hist[(long )(j)][(long )(i)] = ((unsigned int )0);
      tmp_hist1[(long )(j)][(long )(i)] = ((unsigned int )0);
    }
  }
  
#pragma ACCEL PIPELINE auto{__PIPE__L1}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  HISTOGRAM_ROW_LOOP:
  for (class ap_uint< 13 > row(0); row<imgheight; row ++ ) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    
#pragma ACCEL PIPELINE auto{__PIPE__L9}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L9}
    HISTOGRAM_COL_LOOP:
    for (class ap_uint< 13 > col(0); col<imgwidth; col = col+2) {
      
#pragma HLS LOOP_TRIPCOUNT min=128 max=128
      in_buf = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,(int )((row*imgwidth+col)));
      if (col==((int )imgwidth) - 1) {
        in_buf1 = 0;
      }
       else {
        in_buf1 = p_ZN2xf16Mat_0_256_256_1_4readIEEi_1(&_src_mat,(int )(((row*imgwidth+col)+1)));
      }
      class ap_uint< 9 > _l_i = 0;
      class ap_uint< 9 > _l_j = 0;
      EXTRACT_UPDATE:
// Canonicalized from: for(class ap_uint< 9 > i(0), j(0);i<(8 << _ZN20xfNPixelsPerCycle_1_9datashiftE) * 1;(j ++ ) , i+=8) {...}
// Standardize from: for(_l_i = 0;_l_i <= 7;_l_i += 8) {...}
      for (_l_i = 0; _l_i <= 0L; _l_i++) {
        class ap_uint< 9 > _in_l_i = 0L + 8L * _l_i;
        class ap_uint< 8 > val(0);
        class ap_uint< 8 > val1(0);
        val = in_buf . range((_in_l_i+7),_in_l_i);
        val1 = in_buf1 . range((_in_l_i+7),_in_l_i);
        unsigned int tmpval = tmp_hist[(long )(_l_j . operator unsigned long())][(long )(val . operator unsigned long())];
        unsigned int tmpval1 = tmp_hist1[(long )(_l_j . operator unsigned long())][(long )(val1 . operator unsigned long())];
        tmp_hist[(long )(_l_j . operator unsigned long())][(long )(val . operator unsigned long())] = tmpval + ((unsigned int )1);
        if (!(col==((int )imgwidth) - 1)) {
          tmp_hist1[(long )(_l_j . operator unsigned long())][(long )(val1 . operator unsigned long())] = tmpval1 + ((unsigned int )1);
        }
        _l_j ++ ;
      }
      _l_i = 0L + 8L;
    }
  }
  unsigned int cnt;
  unsigned int p = (unsigned int )0;
  unsigned int plane[1];
  
#pragma ACCEL PIPELINE auto{__PIPE__L2}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L2}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
  COPY_LOOP:
  for (class ap_uint< 10 > i(0); i<256; i ++ ) {
    cnt = ((unsigned int )0);
    p = ((unsigned int )0);
    class ap_uint< 5 > _l_j_0 = 0;
    class ap_uint< 5 > _l_k = 0;
// Canonicalized from: for(class ap_uint< 5 > j(0), k(0);j<(1 << _ZN20xfNPixelsPerCycle_1_9datashiftE) * 1;(j ++ ) , k ++ ) {...}
    for (_l_j_0 = 0; _l_j_0 <= 0; ++_l_j_0) {
      unsigned int value = tmp_hist[(long )(_l_j_0 . operator unsigned long())][(long )(i . operator unsigned long())] + tmp_hist1[(long )(_l_j_0 . operator unsigned long())][(long )(i . operator unsigned long())];
      cnt = cnt + value;
      _l_k ++ ;
    }
{
      hist_array[0][(long )(i)] = cnt;
    }
  }
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

static void p_ZN2xf12xfOtsuKernelEPA256_jttRh(unsigned int _hist[0][256],unsigned short _height,unsigned short _width,unsigned char &thresh)
{
  class ap_uint< 33 > HistArray[256] = {(0), };
  class ap_uint< 45 > tmp1;
  class ap_uint< 45 > tmp2;
  class ap_uint< 25 > total;
  unsigned char max_val = (unsigned char )0;
  unsigned int sum = (unsigned int )0;
  unsigned short cols = _width;
  unsigned short rows = _height;
  char shift1 = (char )0;
  char shift2 = (char )0;
  char shift3;
  char shift4;
  unsigned int wB = (unsigned int )0;
  unsigned int wF = (unsigned int )0;
  unsigned long long sumB = (unsigned long long )0;
  unsigned long long varMax = (unsigned long long )0;
  unsigned int wdt = p_ZN2xf7InverseEtiPc(cols,16,&shift1);
  unsigned int hgt = p_ZN2xf7InverseEtiPc(rows,16,&shift2);
  char n1;
  char n2;
  if (((int )shift1) > 24) {
    wdt = wdt >> ((int )shift1) - 24;
    shift1 = ((char )24);
  }
   else {
    if (((int )shift1) >> 1 << 1 != ((int )shift1)) {
      wdt = wdt << 24 - ((int )shift1);
      shift1 = ((char )24);
    }
  }
  if (((int )shift2) > 24) {
    hgt = hgt >> ((int )shift2) - 24;
    shift2 = ((char )24);
  }
   else {
    if (((int )shift2) >> 1 << 1 != ((int )shift2)) {
      hgt = hgt << 24 - ((int )shift2);
      shift2 = ((char )24);
    }
  }
  shift3 = ((char )(((int )shift1) >> 1));
  shift4 = ((char )(((int )shift2) >> 1));
  tmp1 = (((unsigned int )cols) * wdt >> ((int )shift3));
  tmp2 = (((unsigned int )rows) * hgt >> ((int )shift4));
  total = tmp1*tmp2;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
  HISTOGRAM_NORM_LOOP:
  for (unsigned short i = (unsigned short )0; ((int )i) < 256; i++) {
    tmp1 = ap_uint< 45> (_hist[0][i]);
    tmp2 = tmp1*wdt>>shift3;
    HistArray[i] = tmp2*hgt>>shift4;
  }
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
  SUM_LOOP:
  for (unsigned short i = (unsigned short )0; ((int )i) < 256; i++) {
    sum = ((unsigned int )((sum+i*HistArray[i])));
  }
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
  THRESHOLD_LOOP:
  for (unsigned short i = (unsigned short )0; ((int )i) < 256; i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=256 max=256
    wB = ((unsigned int )((wB+HistArray[i])));
    if (wB > ((unsigned int )0)) {
      if (wB >> ((int )shift3) + ((int )shift4) == ((unsigned int )1)) {
        break; 
      }
      wF = ((unsigned int )((total-wB)));
      sumB = ((unsigned long long )((sumB+HistArray[i]*i)));
      unsigned int b = wF + wB;
      long long a1 = (long long )(sumB * ((unsigned long long )b) >> ((int )shift3) + ((int )shift4));
      long long c1 = ((long long )sum) * ((long long )wB) >> ((int )shift3) + ((int )shift4);
      long long d = a1 - c1;
      d = (d < ((long long )0)?-d : d);
      unsigned int res = (unsigned int )(d * d >> ((int )shift3) + ((int )shift4) + 10);
      unsigned short x_inv1 = (unsigned short )(wB >> 9);
      unsigned short x_inv2 = (unsigned short )(wF >> 9);
      unsigned int val1 = p_ZN2xf7InverseEtiPc(x_inv1,0,&n1);
      unsigned int val2 = p_ZN2xf7InverseEtiPc(x_inv2,0,&n2);
      unsigned long long maxtmp = ((unsigned long long )(((unsigned long long )res) * ((unsigned long long )val1))) >> ((int )n1);
      unsigned long long max = maxtmp * ((unsigned long long )val2) >> ((int )n2);
      if (max > varMax) {
        varMax = max;
        max_val = ((unsigned char )i);
      }
    }
  }
  thresh = max_val;
}

static void p_ZN2xf13OtsuThresholdILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EERh_1(struct xf_Mat_0_256_256_1_ &_src_mat,unsigned char &_thresh)
{
  (1 == ((int )XF_NPPC1) || 1 == ((int )XF_NPPC8)) && ((bool )"NPC must be XF_NPPC1, XF_NPPC8 ")?((void )0) : __assert_fail("((NPC == XF_NPPC1) || (NPC == XF_NPPC8) )&& \"NPC must be XF_NPPC1, XF_NPPC8 \"","xf_otsuthreshold.hpp",(unsigned int )171,__PRETTY_FUNCTION__);
  _src_mat . rows <= 256 && _src_mat . cols <= 256 && ((bool )"ROWS and COLS should be greater than input image")?((void )0) : __assert_fail("((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \"ROWS and COLS should be greater than input image\"","xf_otsuthreshold.hpp",(unsigned int )172,__PRETTY_FUNCTION__);
  unsigned int hist[1][256];
  unsigned char thresh;
  unsigned short width = (unsigned short )(_src_mat . cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  unsigned short height = (unsigned short )_src_mat . rows;
  p_ZN2xf17xFHistogramKernelILi0ELi256ELi256ELi0ELi1ELi1ELi128ELi1EEER3MatILi0ELi256ELi256ELi1EEPA256_jRtRt_1(_src_mat,hist,height,width);
  p_ZN2xf12xfOtsuKernelEPA256_jttRh(hist,height,(unsigned short )_src_mat . cols,thresh);
  _thresh = thresh;
}
#pragma ACCEL kernel

void otsuthreshold_accel(class ap_uint< 256 > *img_inp,unsigned char *Otsuval,int rows,int cols)
{
  
#pragma HLS INTERFACE m_axi port=img_inp offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=Otsuval offset=slave bundle=gmem1
  
#pragma HLS INTERFACE s_axilite port=img_inp bundle=control
  
#pragma HLS INTERFACE s_axilite port=Otsuval bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  const int pROWS = 256;
  const int pCOLS = 256;
  const int pNPC1 = (int )XF_NPPC1;
  unsigned char Otsuval_loc;
  struct xf_Mat_0_256_256_1_ in_mat;
  p_ZN2xf16Mat_0_256_256_1_C2IEEv_1(&in_mat);
  ;
  
#pragma HLS stream variable=in_mat.data depth=pCOLS/pNPC1
  in_mat . rows = rows;
  in_mat . cols = cols;
  
#pragma HLS DATAFLOW
  p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1(img_inp,in_mat);
  p_ZN2xf13OtsuThresholdILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EERh_1(in_mat,Otsuval_loc);
   *Otsuval = Otsuval_loc;
}
