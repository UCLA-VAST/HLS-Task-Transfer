#define __constant
#define __kernel
#define __global
#include "memcpy_512_1d.h"
#define SIZE_1 16
#define SIZE_2 64
#include "memcpy_512_3d.h"
#undef SIZE_1
#undef SIZE_2
#include <string.h> 

#include "merlin_type_define.h"





/* Original: #pragma ACCEL kernel */

static void merlin_memcpy_0(double dst[4][16],int dst_idx_0,int dst_idx_1,double src[4096],int src_idx_0,unsigned int len,unsigned int max_len)
{
  
#pragma HLS inline off
  
#pragma HLS function_instantiate variable=dst_idx_0,dst_idx_1,src_idx_0
  unsigned long i;
  unsigned long total_offset1 = (0 * 4 + dst_idx_0) * 16 + dst_idx_1;
  unsigned long total_offset2 = 0 * 4096 + src_idx_0;
  merlinL0:
  for (i = 0; i < len / 8; ++i) {
    
#pragma HLS PIPELINE II=1
    
#pragma HLS LOOP_TRIPCOUNT max=64
    dst[(total_offset1 + i) / 16][(total_offset1 + i) % 16] = src[total_offset2 + i];
  }
}

void mars_kernel_0_2_node_0_stage_0(int j,int exec,int i,double m1[4096],double m1_buf_0[4][16])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    merlin_memcpy_0(m1_buf_0,0,0,m1,i * 64,sizeof(double ) * ((unsigned long )64),512UL);
  }
}

void mars_kernel_0_2_node_1_stage_0(int j,int exec,merlin_uint_512 m2[512],double m2_buf_0[4][16][64])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    memcpy_wide_bus_read_double_3d_16_64_512(m2_buf_0,(size_t )0,(size_t )0,(size_t )0,(merlin_uint_512 *)m2,(size_t )(j * 2 * 8),sizeof(double ) * ((unsigned long )4034),(size_t )4034L);
  }
}

static void merlin_memcpy_1(double dst[4096],int dst_idx_0,double src[2],int src_idx_0,unsigned int len,unsigned int max_len)
{
  
#pragma HLS inline off
  
#pragma HLS function_instantiate variable=dst_idx_0,src_idx_0
  unsigned long i;
  unsigned long total_offset1 = 0 * 4096 + dst_idx_0;
  unsigned long total_offset2 = 0 * 2 + src_idx_0;
  merlinL1:
  for (i = 0; i < len / 8; ++i) {
    
#pragma HLS PIPELINE II=1
    
#pragma HLS LOOP_TRIPCOUNT max=2
    dst[total_offset1 + i] = src[total_offset2 + i];
  }
}

void mars_kernel_0_2_node_3_stage_2(int j,int exec,int i,double prod[4096],double prod_buf_0[2])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    merlin_memcpy_1(prod,i * 64 + j * 2,prod_buf_0,0,sizeof(double ) * ((unsigned long )2),16UL);
  }
}

void mars_kernel_0_2_bus(int mars_j,int mars_init,int mars_cond,int mars_i_0,int mars_i_1,int mars_i_2,int *mars_i_col_1,int *mars_k_col_1,double m1[4096],double mars_m1_buf_0_0[4][16],double mars_m1_buf_0_1[4][16],merlin_uint_512 m2[512],double mars_m2_buf_0_0[4][16][64],double mars_m2_buf_0_1[4][16][64],double *mars_mult_1,double prod[4096],double mars_prod_buf_0_1[2],double mars_prod_buf_0_2[2])
{
  
#pragma HLS INLINE OFF
  mars_kernel_0_2_node_0_stage_0(mars_j - 0,(int )(mars_j >= mars_init + 0 & mars_j <= mars_cond + 0),mars_i_0,m1,mars_m1_buf_0_0);
  mars_kernel_0_2_node_1_stage_0(mars_j - 0,(int )(mars_j >= mars_init + 0 & mars_j <= mars_cond + 0),m2,mars_m2_buf_0_0);
  mars_kernel_0_2_node_3_stage_2(mars_j - 2,(int )(mars_j >= mars_init + 2 & mars_j <= mars_cond + 2),mars_i_2,prod,mars_prod_buf_0_2);
}

void mars_kernel_0_2_node_2_stage_1(int j,int exec,int i,int *i_col,int *k_col,double m1_buf_0[4][16],double m2_buf_0[4][16][64],double *mult,double prod_buf_0[2])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    int k_sub_1;
    int k;
    int k_sub_0;
    merlinL6:
    for (int j_sub = 0; j_sub < 2; ++j_sub) 
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
{
       *i_col = i * 64;
      double sum = (double )0;
/* Original label: inner:for(k = 0;k < 4;k++) {#pragma ACCEL PIPELINE AUTO#pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sumfor(int k_sub = 0;k_sub < 16;++k_sub) {#pragma ACCEL PARALLEL#pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sumk_col =(k * 16 + k_sub) * 64;mult = m1_buf[k][k_sub] * m2_buf[k][k_sub][j_sub];sum += mult;}} */
      double _sum_rdc[16];
      
#pragma HLS array_partition variable=_sum_rdc complete dim=1
{
        int k_sub_0;
        merlinL5:
        for (k_sub_0 = 0; k_sub_0 <= 15; ++k_sub_0) 
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL ARRAY_PARTITION OFF */
{
          
#pragma HLS unroll
          _sum_rdc[k_sub_0] = ((double )0);
        }
      }
      merlinL4:
      for (k = 0; k < 4; k++) 
/* Original: #pragma ACCEL PARALLEL reduction=sum FACTOR=16 */
/* Original: #pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sum */
/* Original: #pragma ACCEL PARALLEL FACTOR=16 */
/* Original: #pragma ACCEL PIPELINE AUTO */
{
        
#pragma HLS pipeline
        merlinL3:
        for (int k_sub = 0; k_sub < 16; ++k_sub) 
/* Original: #pragma ACCEL PARALLEL reduction=sum FACTOR=16 */
/* Original: #pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sum */
/* Original: #pragma ACCEL PARALLEL FACTOR=16 */
/* Original: #pragma ACCEL PARALLEL */
{
          
#pragma HLS unroll
           *k_col = (k * 16 + k_sub) * 64;
           *mult = m1_buf_0[k][k_sub] * m2_buf_0[k][k_sub][j_sub];
          _sum_rdc[k_sub] +=  *mult;
        }
      }
{
        int k_sub_1;
        merlinL2:
        for (k_sub_1 = 0; k_sub_1 <= 15; ++k_sub_1) 
/* Original: #pragma ACCEL ARRAY_PARTITION OFF */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
          
#pragma HLS unroll
          sum += _sum_rdc[k_sub_1];
        }
      }
      prod_buf_0[j_sub] = sum;
    }
  }
}

void mars_kernel_0_2_comp(int mars_j,int mars_init,int mars_cond,int mars_i_0,int mars_i_1,int mars_i_2,int *mars_i_col_1,int *mars_k_col_1,double m1[4096],double mars_m1_buf_0_0[4][16],double mars_m1_buf_0_1[4][16],merlin_uint_512 m2[512],double mars_m2_buf_0_0[4][16][64],double mars_m2_buf_0_1[4][16][64],double *mars_mult_1,double prod[4096],double mars_prod_buf_0_1[2],double mars_prod_buf_0_2[2])
{
  
#pragma HLS INLINE OFF
  mars_kernel_0_2_node_2_stage_1(mars_j - 1,(int )(mars_j >= mars_init + 1 & mars_j <= mars_cond + 1),mars_i_1,mars_i_col_1,mars_k_col_1,mars_m1_buf_0_1,mars_m2_buf_0_1,mars_mult_1,mars_prod_buf_0_1);
}

void mars_kernel_0_2(int mars_j,int mars_init,int mars_cond,int mars_i_0,int mars_i_1,int mars_i_2,int *mars_i_col_1,int *mars_k_col_1,double m1[4096],double mars_m1_buf_0_0[4][16],double mars_m1_buf_0_1[4][16],merlin_uint_512 m2[512],double mars_m2_buf_0_0[4][16][64],double mars_m2_buf_0_1[4][16][64],double *mars_mult_1,double prod[4096],double mars_prod_buf_0_1[2],double mars_prod_buf_0_2[2])
{
  
#pragma HLS INLINE OFF
  mars_kernel_0_2_bus(mars_j,mars_init,mars_cond,mars_i_0,mars_i_1,mars_i_2,mars_i_col_1,mars_k_col_1,m1,mars_m1_buf_0_0,mars_m1_buf_0_1,m2,mars_m2_buf_0_0,mars_m2_buf_0_1,mars_mult_1,prod,mars_prod_buf_0_1,mars_prod_buf_0_2);
  mars_kernel_0_2_comp(mars_j,mars_init,mars_cond,mars_i_0,mars_i_1,mars_i_2,mars_i_col_1,mars_k_col_1,m1,mars_m1_buf_0_0,mars_m1_buf_0_1,m2,mars_m2_buf_0_0,mars_m2_buf_0_1,mars_mult_1,prod,mars_prod_buf_0_1,mars_prod_buf_0_2);
}

__kernel void gemm(double m1[4096],merlin_uint_512 m2[512],double prod[4096])
{
  
#pragma HLS INTERFACE m_axi port=m1 offset=slave depth=4096 bundle=merlin_gmem_gemm_64_0
  
#pragma HLS INTERFACE m_axi port=m2 offset=slave depth=512 bundle=merlin_gmem_gemm_512_0
  
#pragma HLS INTERFACE m_axi port=prod offset=slave depth=4096 bundle=merlin_gmem_gemm_64_0
  
#pragma HLS INTERFACE s_axilite port=m1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=m2 bundle=control
  
#pragma HLS INTERFACE s_axilite port=prod bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  
#pragma HLS DATA_PACK VARIABLE=m2
  
#pragma ACCEL interface variable=prod depth=4096 max_depth=4096
  
#pragma ACCEL interface variable=m2 depth=4096 max_depth=4096
  
#pragma ACCEL interface variable=m1 depth=4096 max_depth=4096
  int i;
  int j;
  int k;
  int k_col;
  int i_col;
  double mult;
/* Original label: outer:for(i = 0;i < 64;i++) {#pragma ACCEL TILE FACTOR=1middle:for(j = 0;j < 32;j++) {#pragma ACCEL PIPELINEdouble m2_buf[4][16][64];double m1_buf[4][16];double prod_buf[2];memcpy(m1_buf[0],(const void *)(&m1[i * 64]),sizeof(double ) * 64);#pragma HLS array_partition variable=m2_buf cyclic factor = 8 dim=3memcpy_wide_bus_read_double_3d_16_64_512(m2_buf,0,0,0,(merlin_uint_512 *)m2,(j * 2 * 8),sizeof(double ) *((unsigned long )4034),4034L);for(int j_sub = 0;j_sub < 2;++j_sub) {#pragma ACCEL PARALLEL FACTOR=1i_col = i * 64;double sum =(double )0;inner:for(k = 0;k < 4;k++) {#pragma ACCEL PIPELINE AUTO#pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sumfor(int k_sub = 0;k_sub < 16;++k_sub) {#pragma ACCEL PARALLEL#pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sumk_col =(k * 16 + k_sub) * 64;mult = m1_buf[k][k_sub] * m2_buf[k][k_sub][j_sub];sum += mult;}}prod_buf[j_sub] = sum;}memcpy((void *)(&prod[i * 64 + j * 2]),(const void *)(&prod_buf[0]),sizeof(double ) * 2);}} */
  merlinL8:
/* Original label: outer:for(i = 0;i < 64;i++) {#pragma ACCEL TILE FACTOR=1middle:for(j = 0;j < 32;j++) {#pragma ACCEL PIPELINEdouble m2_buf[4][16][64];double m1_buf[4][16];double prod_buf[2];memcpy(m1_buf[0],(const void *)(&m1[i * 64]),sizeof(double ) * 64);#pragma HLS array_partition variable=m2_buf cyclic factor = 8 dim=3memcpy_wide_bus_read_double_3d_16_64_512(m2_buf,0,0,0,(merlin_uint_512 *)m2,(j * 2 * 8),sizeof(double ) *((unsigned long )4034),4034L);for(int j_sub = 0;j_sub < 2;++j_sub) {#pragma ACCEL PARALLEL FACTOR=1i_col = i * 64;double sum =(double )0;inner:for(k = 0;k < 4;k++) {#pragma ACCEL PIPELINE AUTO#pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sumfor(int k_sub = 0;k_sub < 16;++k_sub) {#pragma ACCEL PARALLEL#pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sumk_col =(k * 16 + k_sub) * 64;mult = m1_buf[k][k_sub] * m2_buf[k][k_sub][j_sub];sum += mult;}}prod_buf[j_sub] = sum;}memcpy((void *)(&prod[i * 64 + j * 2]),(const void *)(&prod_buf[0]),sizeof(double ) * 2);}} */
  for (i = 0; i < 64; i++) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE OFF */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL TILE FACTOR=1 */
{
/* Original label: middle:for(j = 0;j < 32;j++) {#pragma ACCEL PIPELINEdouble m2_buf[4][16][64];double m1_buf[4][16];double prod_buf[2];memcpy(m1_buf[0],(const void *)(&m1[i * 64]),sizeof(double ) * 64);#pragma HLS array_partition variable=m2_buf cyclic factor = 8 dim=3memcpy_wide_bus_read_double_3d_16_64_512(m2_buf,0,0,0,(merlin_uint_512 *)m2,(j * 2 * 8),sizeof(double ) *((unsigned long )4034),4034L);for(int j_sub = 0;j_sub < 2;++j_sub) {#pragma ACCEL PARALLEL FACTOR=1i_col = i * 64;double sum =(double )0;inner:for(k = 0;k < 4;k++) {#pragma ACCEL PIPELINE AUTO#pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sumfor(int k_sub = 0;k_sub < 16;++k_sub) {#pragma ACCEL PARALLEL#pragma ACCEL REDUCTION SCHEME=auto VARIABLE=sumk_col =(k * 16 + k_sub) * 64;mult = m1_buf[k][k_sub] * m2_buf[k][k_sub][j_sub];sum += mult;}}prod_buf[j_sub] = sum;}memcpy((void *)(&prod[i * 64 + j * 2]),(const void *)(&prod_buf[0]),sizeof(double ) * 2);} */
    double m2_buf_0[4][16][64];
    double m1_buf_0[4][16];
    double prod_buf_0[2];
    int mars_count_0_2 = 0;
    int mars_kernel_0_2_i_0 = i;
    int mars_kernel_0_2_i_1 = i;
    int mars_kernel_0_2_i_2 = i;
    double mars_kernel_0_2_m1_buf_0_0[4][16];
    
#pragma HLS array_partition variable=mars_kernel_0_2_m1_buf_0_0 complete dim=2
    double mars_kernel_0_2_m1_buf_0_1[4][16];
    
#pragma HLS array_partition variable=mars_kernel_0_2_m1_buf_0_1 complete dim=2
    double mars_kernel_0_2_m1_buf_0_2[4][16];
    
#pragma HLS array_partition variable=mars_kernel_0_2_m1_buf_0_2 complete dim=2
    double mars_kernel_0_2_m2_buf_0_0[4][16][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_2_m2_buf_0_0 cyclic factor=8 dim=3 */
    
#pragma HLS array_partition variable=mars_kernel_0_2_m2_buf_0_0 cyclic factor=8 dim=3
    
#pragma HLS array_partition variable=mars_kernel_0_2_m2_buf_0_0 complete dim=2
    double mars_kernel_0_2_m2_buf_0_1[4][16][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_2_m2_buf_0_1 cyclic factor=8 dim=3 */
    
#pragma HLS array_partition variable=mars_kernel_0_2_m2_buf_0_1 cyclic factor=8 dim=3
    
#pragma HLS array_partition variable=mars_kernel_0_2_m2_buf_0_1 complete dim=2
    double mars_kernel_0_2_m2_buf_0_2[4][16][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_2_m2_buf_0_2 cyclic factor=8 dim=3 */
    
#pragma HLS array_partition variable=mars_kernel_0_2_m2_buf_0_2 cyclic factor=8 dim=3
    
#pragma HLS array_partition variable=mars_kernel_0_2_m2_buf_0_2 complete dim=2
    double mars_kernel_0_2_prod_buf_0_0[2];
    double mars_kernel_0_2_prod_buf_0_1[2];
    double mars_kernel_0_2_prod_buf_0_2[2];
    merlinL7:
    for (j = 0; j < 32 + 2; j++) 
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE */
{
      if (mars_count_0_2 == 0) 
        mars_kernel_0_2(j,0,31,mars_kernel_0_2_i_0,mars_kernel_0_2_i_1,mars_kernel_0_2_i_2,&i_col,&k_col,m1,mars_kernel_0_2_m1_buf_0_0,mars_kernel_0_2_m1_buf_0_1,m2,mars_kernel_0_2_m2_buf_0_0,mars_kernel_0_2_m2_buf_0_1,&mult,prod,mars_kernel_0_2_prod_buf_0_0,mars_kernel_0_2_prod_buf_0_1);
       else if (mars_count_0_2 == 1) 
        mars_kernel_0_2(j,0,31,mars_kernel_0_2_i_2,mars_kernel_0_2_i_0,mars_kernel_0_2_i_1,&i_col,&k_col,m1,mars_kernel_0_2_m1_buf_0_2,mars_kernel_0_2_m1_buf_0_0,m2,mars_kernel_0_2_m2_buf_0_2,mars_kernel_0_2_m2_buf_0_0,&mult,prod,mars_kernel_0_2_prod_buf_0_2,mars_kernel_0_2_prod_buf_0_0);
       else 
        mars_kernel_0_2(j,0,31,mars_kernel_0_2_i_1,mars_kernel_0_2_i_2,mars_kernel_0_2_i_0,&i_col,&k_col,m1,mars_kernel_0_2_m1_buf_0_1,mars_kernel_0_2_m1_buf_0_2,m2,mars_kernel_0_2_m2_buf_0_1,mars_kernel_0_2_m2_buf_0_2,&mult,prod,mars_kernel_0_2_prod_buf_0_1,mars_kernel_0_2_prod_buf_0_2);
      mars_count_0_2++;
      if (mars_count_0_2 == 3) 
        mars_count_0_2 = 0;
    }
  }
}
