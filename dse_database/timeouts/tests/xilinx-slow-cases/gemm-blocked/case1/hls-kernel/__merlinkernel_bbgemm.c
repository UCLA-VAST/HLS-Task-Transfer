#define __constant
#define __kernel
#define __global
#include "memcpy_512_1d.h"
#define SIZE_1 8
#define SIZE_2 8
#include "memcpy_512_3d.h"
#undef SIZE_1
#undef SIZE_2
#define SIZE_1 8
#define SIZE_2 8
#define SIZE_3 8
#include "memcpy_512_4d.h"
#undef SIZE_1
#undef SIZE_2
#undef SIZE_3
#include <string.h> 

#include "merlin_type_define.h"






/* Original: #pragma ACCEL kernel */

__kernel void bbgemm(merlin_uint_512 m1[512],merlin_uint_512 m2[512],merlin_uint_512 prod[512])
{
  
#pragma HLS INTERFACE m_axi port=m1 offset=slave depth=512 bundle=merlin_gmem_bbgemm_512_0
  
#pragma HLS INTERFACE m_axi port=m2 offset=slave depth=512 bundle=merlin_gmem_bbgemm_512_1
  
#pragma HLS INTERFACE m_axi port=prod offset=slave depth=512 bundle=merlin_gmem_bbgemm_512_prod
  
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
  int k;
  int j;
  int jj;
  int kk;
  int i_row;
  int k_row;
  double temp_x;
  double mul;
  merlinL5:
  for (jj = 0; jj < 4; jj++) 
/* Original: #pragma ACCEL PIPELINE flatten */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE */
{
    double prod_buf[64][8][8];
    
#pragma HLS array_partition variable=prod_buf complete dim=3
    
#pragma HLS array_partition variable=prod_buf complete dim=1
    double m2_buf[8][8][8][8];
    
#pragma HLS array_partition variable=m2_buf complete dim=4
    
#pragma HLS array_partition variable=m2_buf complete dim=2
    
#pragma HLS array_partition variable=m2_buf complete dim=1
    double m1_buf[64][8][8];
/* Existing HLS partition: #pragma HLS array_partition variable=m1_buf cyclic factor = 8 dim=3 */
    
#pragma HLS array_partition variable=m1_buf complete dim=3
    
#pragma HLS array_partition variable=m1_buf complete dim=2
    
#pragma HLS array_partition variable=m1_buf complete dim=1
    memcpy_wide_bus_read_double_3d_8_8_512(m1_buf,(size_t )0,(size_t )0,(size_t )0,(merlin_uint_512 *)m1,(size_t )(0 * 8),sizeof(double ) * ((unsigned long )4096),(size_t )4096L);
/* Existing HLS partition: #pragma HLS array_partition variable=m2_buf cyclic factor = 8 dim=4 */
    memcpy_wide_bus_read_double_4d_8_8_8_512(m2_buf,(size_t )0,(size_t )0,(size_t )0,(size_t )0,(merlin_uint_512 *)m2,(size_t )(((long )jj) * 16L * ((long )8)),sizeof(double ) * ((unsigned long )4048),(size_t )4048L);
/* Existing HLS partition: #pragma HLS array_partition variable=prod_buf cyclic factor = 8 dim=3 */
    memcpy_wide_bus_read_double_3d_8_8_512(prod_buf,(size_t )0,(size_t )0,(size_t )0,(merlin_uint_512 *)prod,(size_t )(((long )jj) * 16L * ((long )8)),sizeof(double ) * ((unsigned long )4048),(size_t )4048L);
    merlinL4:
    for (int jj_sub = 0; jj_sub < 2; ++jj_sub) 
/* Original: #pragma ACCEL PIPELINE flatten */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE AUTO */
{
      
#pragma HLS dependence variable=prod_buf array inter false
      
#pragma HLS pipeline
      int _in_jj = (int )(((long )0) + 8L * ((long )(jj * 2 + jj_sub)));
/* Standardize from: for(kk = 0;kk < 64;kk += 8) {...} */
/* Original label: loopkk:for(kk = 0;kk <= 7;kk++) {#pragma ACCEL PARALLEL COMPLETEint _in_kk =(int )(((long )0) + 8L *((long )kk));loopi:for(i = 0;i < 64;++i) {#pragma ACCEL PARALLEL COMPLETEloopk:for(k = 0;k < 8;++k) {#pragma ACCEL PARALLEL COMPLETEi_row = i * 64;k_row =(k + _in_kk) * 64;temp_x = m1_buf[i][kk][k];loopj:for(j = 0;j < 8;++j) {#pragma ACCEL PARALLEL COMPLETEmul = temp_x * m2_buf[kk][k][jj_sub][j];prod_buf[i][jj_sub][j] += mul;}}}} */
      merlinL3:
/* Standardize from: for(kk = 0;kk < 64;kk += 8) {...} */
/* Original label: loopkk:for(kk = 0;kk <= 7;kk++) {#pragma ACCEL PARALLEL COMPLETEint _in_kk =(int )(((long )0) + 8L *((long )kk));loopi:for(i = 0;i < 64;++i) {#pragma ACCEL PARALLEL COMPLETEloopk:for(k = 0;k < 8;++k) {#pragma ACCEL PARALLEL COMPLETEi_row = i * 64;k_row =(k + _in_kk) * 64;temp_x = m1_buf[i][kk][k];loopj:for(j = 0;j < 8;++j) {#pragma ACCEL PARALLEL COMPLETEmul = temp_x * m2_buf[kk][k][jj_sub][j];prod_buf[i][jj_sub][j] += mul;}}}} */
      for (kk = 0; kk <= 7; kk++) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
        
#pragma HLS unroll
        int _in_kk = (int )(((long )0) + 8L * ((long )kk));
/* Original label: loopi:for(i = 0;i < 64;++i) {#pragma ACCEL PARALLEL COMPLETEloopk:for(k = 0;k < 8;++k) {#pragma ACCEL PARALLEL COMPLETEi_row = i * 64;k_row =(k + _in_kk) * 64;temp_x = m1_buf[i][kk][k];loopj:for(j = 0;j < 8;++j) {#pragma ACCEL PARALLEL COMPLETEmul = temp_x * m2_buf[kk][k][jj_sub][j];prod_buf[i][jj_sub][j] += mul;}}} */
        merlinL2:
/* Original label: loopi:for(i = 0;i < 64;++i) {#pragma ACCEL PARALLEL COMPLETEloopk:for(k = 0;k < 8;++k) {#pragma ACCEL PARALLEL COMPLETEi_row = i * 64;k_row =(k + _in_kk) * 64;temp_x = m1_buf[i][kk][k];loopj:for(j = 0;j < 8;++j) {#pragma ACCEL PARALLEL COMPLETEmul = temp_x * m2_buf[kk][k][jj_sub][j];prod_buf[i][jj_sub][j] += mul;}}} */
        for (i = 0; i < 64; ++i) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
          
#pragma HLS unroll
/* Original label: loopk:for(k = 0;k < 8;++k) {#pragma ACCEL PARALLEL COMPLETEi_row = i * 64;k_row =(k + _in_kk) * 64;temp_x = m1_buf[i][kk][k];loopj:for(j = 0;j < 8;++j) {#pragma ACCEL PARALLEL COMPLETEmul = temp_x * m2_buf[kk][k][jj_sub][j];prod_buf[i][jj_sub][j] += mul;}} */
          merlinL1:
/* Original label: loopk:for(k = 0;k < 8;++k) {#pragma ACCEL PARALLEL COMPLETEi_row = i * 64;k_row =(k + _in_kk) * 64;temp_x = m1_buf[i][kk][k];loopj:for(j = 0;j < 8;++j) {#pragma ACCEL PARALLEL COMPLETEmul = temp_x * m2_buf[kk][k][jj_sub][j];prod_buf[i][jj_sub][j] += mul;}} */
          for (k = 0; k < 8; ++k) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
            
#pragma HLS unroll
            i_row = i * 64;
            k_row = (k + _in_kk) * 64;
            temp_x = m1_buf[i][kk][k];
/* Original label: loopj:for(j = 0;j < 8;++j) {#pragma ACCEL PARALLEL COMPLETEmul = temp_x * m2_buf[kk][k][jj_sub][j];prod_buf[i][jj_sub][j] += mul;} */
            merlinL0:
/* Original label: loopj:for(j = 0;j < 8;++j) {#pragma ACCEL PARALLEL COMPLETEmul = temp_x * m2_buf[kk][k][jj_sub][j];prod_buf[i][jj_sub][j] += mul;} */
            for (j = 0; j < 8; ++j) 
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
              
#pragma HLS unroll
              mul = temp_x * m2_buf[kk][k][jj_sub][j];
              prod_buf[i][jj_sub][j] += mul;
            }
          }
        }
      }
      kk = ((int )(((long )56) + 8L));
    }
/* Existing HLS partition: #pragma HLS array_partition variable=prod_buf cyclic factor = 8 dim=3 */
    memcpy_wide_bus_write_double_3d_8_8_512((merlin_uint_512 *)prod,prod_buf,(size_t )0,(size_t )0,(size_t )0,(size_t )(((long )8) * (((long )jj) * 16L)),sizeof(double ) * ((unsigned long )4048),(size_t )4048L);
  }
  jj = ((int )(((long )56) + 8L));
}
