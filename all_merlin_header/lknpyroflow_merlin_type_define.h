
#ifndef __MERLIN_TYPE_DEFINE_H__

#define __MERLIN_TYPE_DEFINE_H__
typedef class ap_uint< 8 > DataType_0_1_name;
struct xf_Mat_0_256_256_1_ {unsigned char allocatedFlag;int rows;int cols;int size;DataType_0_1_name data[65536];};
typedef class ap_uint< 32 > DataType_4_1_name;
struct xf_Mat_4_256_256_1_ {unsigned char allocatedFlag;int rows;int cols;int size;DataType_4_1_name data[65536];};
struct xf_accel_utils {};
enum _pixel_per_cycle {XF_NPPC1=1,XF_NPPC2=2,XF_NPPC4=4,XF_NPPC8=8,XF_NPPC16=16,XF_NPPC32=32,XF_NPPC64=64};
typedef unsigned char pix_t;
struct mywide_t_1_ {unsigned char data[1];};

#endif
