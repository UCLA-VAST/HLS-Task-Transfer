
#ifndef __MERLIN_TYPE_DEFINE_H__

#define __MERLIN_TYPE_DEFINE_H__
struct xf_Rect_int_ {int x;int y;int width;int height;};
struct xf_Scalar_4_unsigned_char_ {unsigned char val[4];};
typedef class ap_uint< 8 > DataType_0_1_name;
struct xf_Mat_0_256_256_1_ {unsigned char allocatedFlag;int rows;int cols;int size;DataType_0_1_name* data;};
typedef class ap_uint< 8 > DataType_0_1_cname;
typedef class ap_uint< 8 > StreamType_1_name;
enum _pixeltype {XF_8UC1=0,XF_16UC1=1,XF_16SC1=2,XF_32UC1=3,XF_32FC1=4,XF_32SC1=5,XF_8UC2=6,XF_8UC4=7,XF_2UC1=8,XF_8UC3=9,XF_16UC3=10,XF_16SC3=11,XF_16UC4=12,XF_10UC1=13,XF_10UC4=14,XF_12UC1=15,XF_12UC4=16,XF_10UC3=17,XF_12UC3=18};
enum _pixel_per_cycle {XF_NPPC1=1,XF_NPPC2=2,XF_NPPC4=4,XF_NPPC8=8,XF_NPPC16=16,XF_NPPC32=32,XF_NPPC64=64};

#endif
