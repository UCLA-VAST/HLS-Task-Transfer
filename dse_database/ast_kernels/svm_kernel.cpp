#include <ap_int.h>
#include <assert.h>
#include <xf_params.h>
#include "merlin_type_define.h"
const int _ZN20xfNPixelsPerCycle_1_9datashiftE = 0;

static void p_ZN2xf14Mat_2_1_200_1_4initIEEiib_1(struct xf_Mat_2_1_200_1_ *this_,int _rows,int _cols,bool allocate)
{
  
#pragma HLS inline
  _rows > 0 && _rows <= 1 && _cols > 0 && _cols <= 200 && ((bool )"The number of rows and columns must be less than the template arguments.")?((void )0) : __assert_fail("(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \"The number of rows and columns must be less than the template arguments.\"","xf_structs.h",(unsigned int )517,__PRETTY_FUNCTION__);
  this_ -> rows = _rows;
  this_ -> cols = _cols;
  this_ -> size = _rows * (_cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE);
  if (allocate) {
  }
}
const int _ZN13DataType_2_1_10pixelwidthE = 16;
const int _ZN13DataType_2_1_7channelE = 1;
const int _ZN20xfNPixelsPerCycle_1_4nppcE = 1;

static void p_ZN2xf14Mat_2_1_200_1_6copyToIEEPv_1(struct xf_Mat_2_1_200_1_ *this_,void *_input)
{
  
#pragma HLS inline
  short *input = (short *)_input;
  _DataType_2_1_cname in_val;
  int packcols = this_ -> cols >> _ZN20xfNPixelsPerCycle_1_9datashiftE;
  int pixdepth = _ZN13DataType_2_1_10pixelwidthE;
  int bitdepth = pixdepth / _ZN13DataType_2_1_7channelE;
  int nppc = _ZN20xfNPixelsPerCycle_1_4nppcE;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  for (int r = 0; r < this_ -> rows; r++) {
    
#pragma ACCEL PIPELINE auto{__PIPE__L2}
    for (int c = 0; c < packcols; c++) {
      
#pragma ACCEL PIPELINE auto{__PIPE__L3}
      for (int p = 0; p < nppc; p++) {
        for (int ch = 0; ch < _ZN13DataType_2_1_7channelE; ch++) {{
            in_val = input[_ZN13DataType_2_1_7channelE * ((r * packcols + c) * nppc + p) + ch];
          }
          this_ -> data[r * packcols + c] . range((p * pixdepth + (ch + 1) * bitdepth - 1),(p * pixdepth + ch * bitdepth)) = ((unsigned long )(in_val));
        }
      }
    }
  }
}

static void p_ZN2xf14Mat_2_1_200_1_C2IEEiiPv_1(struct xf_Mat_2_1_200_1_ *this_,int _rows,int _cols,void *_data)
{
  
#pragma HLS inline
  p_ZN2xf14Mat_2_1_200_1_4initIEEiib_1(this_,_rows,_cols,true);
  //p_ZN2xf14Mat_2_1_200_1_6copyToIEEPv_1(this_,_data);
  this_ -> data = ((_DataType_2_1_name *)_data);
}

static _DataType_2_1_name p_ZN2xf14Mat_2_1_200_1_4readIEEi_1(struct xf_Mat_2_1_200_1_ *this_,int index)
{
  return this_ -> data[index];
}

static class ap_int< 32 > p_ZN2xf5xfSVMILi2ELi2ELi5ELi1ELi200ELi1ELi200ELi1ELi200EEER3MatILi2ELi1ELi200ELi1EER3MatILi2ELi1ELi200ELi1EEtthhtPh_1(struct xf_Mat_2_1_200_1_ &in_1,struct xf_Mat_2_1_200_1_ &in_2,unsigned short idx1,unsigned short idx2,unsigned char frac1,unsigned char frac2,unsigned short n,unsigned char *out_frac)
{
  class ap_int< 32 > result(0);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
  svmCoreLoop:
  for (int i = 0; i < ((int )n); i++) {
    
#pragma HLS LOOP_TRIPCOUNT min=200 max=200 avg=200
    class ap_int< 32 > tmp_svm = p_ZN2xf14Mat_2_1_200_1_4readIEEi_1(&in_1,((int )idx1) + i)*p_ZN2xf14Mat_2_1_200_1_4readIEEi_1(&in_2,((int )idx2) + i);
    result+=tmp_svm;
  }
   *out_frac = ((unsigned char )(((int )frac1) + ((int )frac2)));
  return result;
}

static void p_ZN2xf3SVMILi2ELi2ELi5ELi1ELi200ELi1ELi200ELi1ELi200EEER3MatILi2ELi1ELi200ELi1EER3MatILi2ELi1ELi200ELi1EEtthhtPhP6ap_intILi32EE_1(struct xf_Mat_2_1_200_1_ &in_1,struct xf_Mat_2_1_200_1_ &in_2,unsigned short idx1,unsigned short idx2,unsigned char frac1,unsigned char frac2,unsigned short n,unsigned char *out_frac,class ap_int< 32 > *result)
{
  2 == ((int )XF_16SC1) && ((bool )"Only 16 bit, single channel images are supported")?((void )0) : __assert_fail("((SRC1_T == XF_16SC1)) && \"Only 16 bit, single channel images are supported\"","xf_svm.hpp",(unsigned int )100,__PRETTY_FUNCTION__);
  2 == ((int )XF_16SC1) && ((bool )"Only 16 bit, single channel images are supported")?((void )0) : __assert_fail("((SRC2_T == XF_16SC1)) && \"Only 16 bit, single channel images are supported\"","xf_svm.hpp",(unsigned int )101,__PRETTY_FUNCTION__);
  class ap_int< 32 > svm_res = p_ZN2xf5xfSVMILi2ELi2ELi5ELi1ELi200ELi1ELi200ELi1ELi200EEER3MatILi2ELi1ELi200ELi1EER3MatILi2ELi1ELi200ELi1EEtthhtPh_1(in_1,in_2,idx1,idx2,frac1,frac2,n,out_frac);
  ( *result) = svm_res;
}
#pragma ACCEL kernel

void svm_accel(class ap_int< 32 > *img_inp1,class ap_int< 32 > *img_inp2,int rows,int cols,unsigned short ind1,unsigned short ind2,unsigned short frac1,unsigned short frac2,unsigned short n,unsigned char *out_frac,class ap_int< 32 > *resultFIX)
{
  
#pragma HLS INTERFACE m_axi port=img_inp1 offset=slave bundle=gmem1
  
#pragma HLS INTERFACE m_axi port=img_inp2 offset=slave bundle=gmem2
  
#pragma HLS INTERFACE m_axi port=out_frac offset=slave bundle=gmem3
  
#pragma HLS INTERFACE m_axi port=resultFIX offset=slave bundle=gmem4
  
#pragma HLS INTERFACE s_axilite port=img_inp1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=img_inp2 bundle=control
  
#pragma HLS INTERFACE s_axilite port=cols bundle=control
  
#pragma HLS INTERFACE s_axilite port=rows bundle=control
  
#pragma HLS INTERFACE s_axilite port=ind1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=ind2 bundle=control
  
#pragma HLS INTERFACE s_axilite port=frac1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=frac2 bundle=control
  
#pragma HLS INTERFACE s_axilite port=n bundle=control
  
#pragma HLS INTERFACE s_axilite port=out_frac bundle=control
  
#pragma HLS INTERFACE s_axilite port=resultFIX bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  struct xf_Mat_2_1_200_1_ Input1;
  p_ZN2xf14Mat_2_1_200_1_C2IEEiiPv_1(&Input1,rows,cols,(void *)img_inp1);
  ;
  struct xf_Mat_2_1_200_1_ Input2;
  p_ZN2xf14Mat_2_1_200_1_C2IEEiiPv_1(&Input2,rows,cols,(void *)img_inp2);
  ;
//xf::SVM<XF_16SC1,XF_16SC1,XF_32SC1,1,IN_ARRAY_SIZE_1, 1, IN_ARRAY_SIZE_2, XF_NPPC1, NO_OF_KERNEL_ELEMENTS>(Input1, Input2, 
//ind1,ind2, frac1, frac2, n, &out_frac[0], &resultFIX[0]);
  unsigned char out_frac_tmp;
  class ap_int< 32 > resultFIX_tmp;
  p_ZN2xf3SVMILi2ELi2ELi5ELi1ELi200ELi1ELi200ELi1ELi200EEER3MatILi2ELi1ELi200ELi1EER3MatILi2ELi1ELi200ELi1EEtthhtPhP6ap_intILi32EE_1(Input1,Input2,ind1,ind2,(unsigned char )frac1,(unsigned char )frac2,n,&out_frac_tmp,&resultFIX_tmp);
  out_frac[0] = out_frac_tmp;
  resultFIX[0] = resultFIX_tmp;
}
