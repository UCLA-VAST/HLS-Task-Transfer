#define __constant
#define __kernel
#define __global
#include "memcpy_512_1d.h"
#define SIZE_1 64
#include "memcpy_512_2d.h"
#undef SIZE_1
#include <string.h> 

#include "merlin_type_define.h"





/* Original: #pragma ACCEL kernel */

void mars_kernel_0_1_node_0_stage_0(int i,int exec,merlin_uint_512 m1[512],double m1_buf_0[2][64])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    memcpy_wide_bus_read_double_2d_64_512(m1_buf_0,(size_t )0,(size_t )0,(merlin_uint_512 *)m1,(size_t )(i * 128 * 8),sizeof(double ) * ((unsigned long )128),(size_t )128L);
  }
}

void mars_kernel_0_1_node_1_stage_0(int i,int exec,merlin_uint_512 m2[512],double m2_buf_0[64][64])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    memcpy_wide_bus_read_double_2d_64_512(m2_buf_0,(size_t )0,(size_t )0,(merlin_uint_512 *)m2,(size_t )(0 * 8),sizeof(double ) * ((unsigned long )4096),(size_t )4096L);
  }
}

void mars_kernel_0_1_node_3_stage_2(int i,int exec,merlin_uint_512 prod[512],double prod_buf_0[2][64])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    memcpy_wide_bus_write_double_2d_64_512((merlin_uint_512 *)prod,prod_buf_0,(size_t )0,(size_t )0,(size_t )(8 * (i * 128)),sizeof(double ) * ((unsigned long )128),(size_t )128L);
  }
}

void mars_kernel_0_1_bus(int mars_i,int mars_init,int mars_cond,int *mars_i_col_1,int *mars_k_col_1,merlin_uint_512 m1[512],double mars_m1_buf_0_0[2][64],double mars_m1_buf_0_1[2][64],merlin_uint_512 m2[512],double mars_m2_buf_0_0[64][64],double mars_m2_buf_0_1[64][64],double *mars_mult_1,merlin_uint_512 prod[512],double mars_prod_buf_0_1[2][64],double mars_prod_buf_0_2[2][64])
{
  
#pragma HLS INLINE OFF
  mars_kernel_0_1_node_0_stage_0(mars_i - 0,(int )(mars_i >= mars_init + 0 & mars_i <= mars_cond + 0),m1,mars_m1_buf_0_0);
  mars_kernel_0_1_node_1_stage_0(mars_i - 0,(int )(mars_i >= mars_init + 0 & mars_i <= mars_cond + 0),m2,mars_m2_buf_0_0);
  mars_kernel_0_1_node_3_stage_2(mars_i - 2,(int )(mars_i >= mars_init + 2 & mars_i <= mars_cond + 2),prod,mars_prod_buf_0_2);
}

void mars_kernel_0_1_node_2_stage_1(int i,int exec,int *i_col,int *k_col,double m1_buf_0[2][64],double m2_buf_0[64][64],double *mult,double prod_buf_0[2][64])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    int k;
    int j;
    merlinL2:
    for (int i_sub = 0; i_sub < 2; ++i_sub) 
/* Original: #pragma ACCEL PIPELINE flatten */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE AUTO */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
{
      
#pragma HLS dependence variable=prod_buf_0 array inter false
      
#pragma HLS pipeline
/* Original label: middle:for(j = 0;j < 64;j++) {#pragma ACCEL PARALLEL COMPLETEi_col =(i * 2 + i_sub) * 64;double sum =(double )0;inner:for(k = 0;k < 64;k++) {#pragma ACCEL PARALLEL COMPLETEk_col = k * 64;mult = m1_buf[i_sub][k] * m2_buf[k][j];sum += mult;}prod_buf[i_sub][j] = sum;} */
      merlinL1:
/* Original label: middle:for(j = 0;j < 64;j++) {#pragma ACCEL PARALLEL COMPLETEi_col =(i * 2 + i_sub) * 64;double sum =(double )0;inner:for(k = 0;k < 64;k++) {#pragma ACCEL PARALLEL COMPLETEk_col = k * 64;mult = m1_buf[i_sub][k] * m2_buf[k][j];sum += mult;}prod_buf[i_sub][j] = sum;} */
      for (j = 0; j < 64; j++) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
        
#pragma HLS unroll
         *i_col = (i * 2 + i_sub) * 64;
        double sum = (double )0;
/* Original label: inner:for(k = 0;k < 64;k++) {#pragma ACCEL PARALLEL COMPLETEk_col = k * 64;mult = m1_buf[i_sub][k] * m2_buf[k][j];sum += mult;} */
        merlinL0:
/* Original label: inner:for(k = 0;k < 64;k++) {#pragma ACCEL PARALLEL COMPLETEk_col = k * 64;mult = m1_buf[i_sub][k] * m2_buf[k][j];sum += mult;} */
        for (k = 0; k < 64; k++) 
/* Original: #pragma ACCEL PARALLEL reduction=sum FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
          
#pragma HLS unroll
           *k_col = k * 64;
           *mult = m1_buf_0[i_sub][k] * m2_buf_0[k][j];
          sum +=  *mult;
        }
        prod_buf_0[i_sub][j] = sum;
      }
    }
  }
}

void mars_kernel_0_1_comp(int mars_i,int mars_init,int mars_cond,int *mars_i_col_1,int *mars_k_col_1,merlin_uint_512 m1[512],double mars_m1_buf_0_0[2][64],double mars_m1_buf_0_1[2][64],merlin_uint_512 m2[512],double mars_m2_buf_0_0[64][64],double mars_m2_buf_0_1[64][64],double *mars_mult_1,merlin_uint_512 prod[512],double mars_prod_buf_0_1[2][64],double mars_prod_buf_0_2[2][64])
{
  
#pragma HLS INLINE OFF
  mars_kernel_0_1_node_2_stage_1(mars_i - 1,(int )(mars_i >= mars_init + 1 & mars_i <= mars_cond + 1),mars_i_col_1,mars_k_col_1,mars_m1_buf_0_1,mars_m2_buf_0_1,mars_mult_1,mars_prod_buf_0_1);
}

void mars_kernel_0_1(int mars_i,int mars_init,int mars_cond,int *mars_i_col_1,int *mars_k_col_1,merlin_uint_512 m1[512],double mars_m1_buf_0_0[2][64],double mars_m1_buf_0_1[2][64],merlin_uint_512 m2[512],double mars_m2_buf_0_0[64][64],double mars_m2_buf_0_1[64][64],double *mars_mult_1,merlin_uint_512 prod[512],double mars_prod_buf_0_1[2][64],double mars_prod_buf_0_2[2][64])
{
  
#pragma HLS INLINE OFF
  mars_kernel_0_1_bus(mars_i,mars_init,mars_cond,mars_i_col_1,mars_k_col_1,m1,mars_m1_buf_0_0,mars_m1_buf_0_1,m2,mars_m2_buf_0_0,mars_m2_buf_0_1,mars_mult_1,prod,mars_prod_buf_0_1,mars_prod_buf_0_2);
  mars_kernel_0_1_comp(mars_i,mars_init,mars_cond,mars_i_col_1,mars_k_col_1,m1,mars_m1_buf_0_0,mars_m1_buf_0_1,m2,mars_m2_buf_0_0,mars_m2_buf_0_1,mars_mult_1,prod,mars_prod_buf_0_1,mars_prod_buf_0_2);
}

__kernel void gemm(merlin_uint_512 m1[512],merlin_uint_512 m2[512],merlin_uint_512 prod[512])
{
  
#pragma HLS INTERFACE m_axi port=m1 offset=slave depth=512 bundle=merlin_gmem_gemm_512_0
  
#pragma HLS INTERFACE m_axi port=m2 offset=slave depth=512 bundle=merlin_gmem_gemm_512_1
  
#pragma HLS INTERFACE m_axi port=prod offset=slave depth=512 bundle=merlin_gmem_gemm_512_0
  
#pragma HLS INTERFACE s_axilite port=m1 bundle=control
  
#pragma HLS INTERFACE s_axilite port=m2 bundle=control
  
#pragma HLS INTERFACE s_axilite port=prod bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  
#pragma HLS DATA_PACK VARIABLE=prod
  
#pragma HLS DATA_PACK VARIABLE=m2
  
#pragma HLS DATA_PACK VARIABLE=m1
  
#pragma ACCEL interface variable=prod depth=4096 max_depth=4096
  
#pragma ACCEL interface variable=m2 depth=4096 max_depth=4096
  
#pragma ACCEL interface variable=m1 depth=4096 max_depth=4096
  int i;
  int j;
  int k;
  int k_col;
  int i_col;
  double mult;
/* Original label: outer:for(i = 0;i < 32;i++) {#pragma ACCEL PIPELINEdouble m2_buf[64][64];double m1_buf[2][64];double prod_buf[2][64];#pragma HLS array_partition variable=m1_buf cyclic factor = 8 dim=2memcpy_wide_bus_read_double_2d_64_512(m1_buf,0,0,(merlin_uint_512 *)m1,(i * 128 * 8),sizeof(double ) *((unsigned long )128),128L);#pragma HLS array_partition variable=m2_buf cyclic factor = 8 dim=2memcpy_wide_bus_read_double_2d_64_512(m2_buf,0,0,(merlin_uint_512 *)m2,(0 * 8),sizeof(double ) *((unsigned long )4096),4096L);for(int i_sub = 0;i_sub < 2;++i_sub) {#pragma ACCEL PIPELINE AUTO#pragma ACCEL PARALLEL FACTOR=1middle:for(j = 0;j < 64;j++) {#pragma ACCEL PARALLEL COMPLETEi_col =(i * 2 + i_sub) * 64;double sum =(double )0;inner:for(k = 0;k < 64;k++) {#pragma ACCEL PARALLEL COMPLETEk_col = k * 64;mult = m1_buf[i_sub][k] * m2_buf[k][j];sum += mult;}prod_buf[i_sub][j] = sum;}}#pragma HLS array_partition variable=prod_buf cyclic factor = 8 dim=2memcpy_wide_bus_write_double_2d_64_512((merlin_uint_512 *)prod,prod_buf,0,0,(8 *(i * 128)),sizeof(double ) *((unsigned long )128),128L);} */
  double m2_buf_0[64][64];
  double m1_buf_0[2][64];
  double prod_buf_0[2][64];
  int mars_count_0_1 = 0;
  double mars_kernel_0_1_m1_buf_0_0[2][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_1_m1_buf_0_0 cyclic factor=8 dim=2 */
  
#pragma HLS array_partition variable=mars_kernel_0_1_m1_buf_0_0 complete dim=2
  double mars_kernel_0_1_m1_buf_0_1[2][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_1_m1_buf_0_1 cyclic factor=8 dim=2 */
  
#pragma HLS array_partition variable=mars_kernel_0_1_m1_buf_0_1 complete dim=2
  double mars_kernel_0_1_m1_buf_0_2[2][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_1_m1_buf_0_2 cyclic factor=8 dim=2 */
  
#pragma HLS array_partition variable=mars_kernel_0_1_m1_buf_0_2 complete dim=2
  double mars_kernel_0_1_m2_buf_0_0[64][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_1_m2_buf_0_0 cyclic factor=8 dim=2 */
  
#pragma HLS array_partition variable=mars_kernel_0_1_m2_buf_0_0 complete dim=2
  
#pragma HLS array_partition variable=mars_kernel_0_1_m2_buf_0_0 complete dim=1
  double mars_kernel_0_1_m2_buf_0_1[64][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_1_m2_buf_0_1 cyclic factor=8 dim=2 */
  
#pragma HLS array_partition variable=mars_kernel_0_1_m2_buf_0_1 complete dim=2
  
#pragma HLS array_partition variable=mars_kernel_0_1_m2_buf_0_1 complete dim=1
  double mars_kernel_0_1_m2_buf_0_2[64][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_1_m2_buf_0_2 cyclic factor=8 dim=2 */
  
#pragma HLS array_partition variable=mars_kernel_0_1_m2_buf_0_2 complete dim=2
  
#pragma HLS array_partition variable=mars_kernel_0_1_m2_buf_0_2 complete dim=1
  double mars_kernel_0_1_prod_buf_0_0[2][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_1_prod_buf_0_0 cyclic factor=8 dim=2 */
  
#pragma HLS array_partition variable=mars_kernel_0_1_prod_buf_0_0 complete dim=2
  double mars_kernel_0_1_prod_buf_0_1[2][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_1_prod_buf_0_1 cyclic factor=8 dim=2 */
  
#pragma HLS array_partition variable=mars_kernel_0_1_prod_buf_0_1 complete dim=2
  double mars_kernel_0_1_prod_buf_0_2[2][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_1_prod_buf_0_2 cyclic factor=8 dim=2 */
  
#pragma HLS array_partition variable=mars_kernel_0_1_prod_buf_0_2 complete dim=2
  merlinL3:
  for (i = 0; i < 32 + 2; i++) 
/* Original: #pragma ACCEL PIPELINE flatten */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE */
{
    if (mars_count_0_1 == 0) 
      mars_kernel_0_1(i,0,31,&i_col,&k_col,m1,mars_kernel_0_1_m1_buf_0_0,mars_kernel_0_1_m1_buf_0_1,m2,mars_kernel_0_1_m2_buf_0_0,mars_kernel_0_1_m2_buf_0_1,&mult,prod,mars_kernel_0_1_prod_buf_0_0,mars_kernel_0_1_prod_buf_0_1);
     else if (mars_count_0_1 == 1) 
      mars_kernel_0_1(i,0,31,&i_col,&k_col,m1,mars_kernel_0_1_m1_buf_0_2,mars_kernel_0_1_m1_buf_0_0,m2,mars_kernel_0_1_m2_buf_0_2,mars_kernel_0_1_m2_buf_0_0,&mult,prod,mars_kernel_0_1_prod_buf_0_2,mars_kernel_0_1_prod_buf_0_0);
     else 
      mars_kernel_0_1(i,0,31,&i_col,&k_col,m1,mars_kernel_0_1_m1_buf_0_1,mars_kernel_0_1_m1_buf_0_2,m2,mars_kernel_0_1_m2_buf_0_1,mars_kernel_0_1_m2_buf_0_2,&mult,prod,mars_kernel_0_1_prod_buf_0_1,mars_kernel_0_1_prod_buf_0_2);
    mars_count_0_1++;
    if (mars_count_0_1 == 3) 
      mars_count_0_1 = 0;
  }
}
