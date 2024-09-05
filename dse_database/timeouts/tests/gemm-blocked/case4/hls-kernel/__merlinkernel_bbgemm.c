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
  double prod_buf[64][8][8];
  
#pragma HLS array_partition variable=prod_buf complete dim=3
  
#pragma HLS array_partition variable=prod_buf complete dim=1
  double m2_buf[8][8][8][8];
  
#pragma HLS array_partition variable=m2_buf complete dim=4
  
#pragma HLS array_partition variable=m2_buf complete dim=2
  double m1_buf[64][8][8];
  
#pragma HLS array_partition variable=m1_buf complete dim=3
  
#pragma HLS array_partition variable=m1_buf complete dim=1
  int i;
  int k;
  int j;
  int jj;
  int kk;
  int i_row;
  int k_row;
  double temp_x;
  double mul;
/* Existing HLS partition: #pragma HLS array_partition variable=m1_buf cyclic factor = 8 dim=3 */
  memcpy_wide_bus_read_double_3d_8_8_512(m1_buf,0,0,0,(merlin_uint_512 *)m1,(0 * 8),sizeof(double ) * ((unsigned long )4096),4096L);
/* Existing HLS partition: #pragma HLS array_partition variable=m2_buf cyclic factor = 8 dim=4 */
  memcpy_wide_bus_read_double_4d_8_8_8_512(m2_buf,0,0,0,0,(merlin_uint_512 *)m2,(0 * 8),sizeof(double ) * ((unsigned long )4096),4096L);
/* Existing HLS partition: #pragma HLS array_partition variable=prod_buf cyclic factor = 8 dim=3 */
  memcpy_wide_bus_read_double_3d_8_8_512(prod_buf,0,0,0,(merlin_uint_512 *)prod,(0 * 8),sizeof(double ) * ((unsigned long )4096),4096L);
  loopjj:
{
/* Standardize from: for(jj = 0;jj < 64;jj += 8) {...} */
    merlinL0:
/* Standardize from: for(jj = 0;jj < 64;jj += 8) {...} */
    for (jj = 0; jj <= 7; jj++) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE OFF */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL TILE FACTOR=1 */
{
      int _in_jj = (int )(((long )0) + 8L * ((long )jj));
      loopkk:
/* Standardize from: for(kk = 0;kk < 64;kk += 8) {...} */
      for (kk = 0; kk <= 7; kk++) 
/* Original: #pragma ACCEL PIPELINE flatten */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=1 */
{
        
#pragma HLS pipeline
        int _in_kk = (int )(((long )0) + 8L * ((long )kk));
        loopi:
        for (i = 0; i < 64; ++i) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
          
#pragma HLS unroll
          loopk:
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
            loopj:
            for (j = 0; j < 8; ++j) 
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
              
#pragma HLS unroll
              mul = temp_x * m2_buf[kk][k][jj][j];
              prod_buf[i][jj][j] += mul;
            }
          }
        }
      }
      kk = ((int )(((long )56) + 8L));
    }
/* Existing HLS partition: #pragma HLS array_partition variable=prod_buf cyclic factor = 8 dim=3 */
    memcpy_wide_bus_write_double_3d_8_8_512((merlin_uint_512 *)prod,prod_buf,0,0,0,(8 * 0),sizeof(double ) * ((unsigned long )4096),4096L);
  }
  jj = ((int )(((long )56) + 8L));
}
