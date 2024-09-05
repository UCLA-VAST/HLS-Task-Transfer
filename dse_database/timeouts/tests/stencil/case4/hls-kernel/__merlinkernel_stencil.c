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

static void merlin_memcpy_0(int dst[3][3],int dst_idx_0,int dst_idx_1,int src[9],int src_idx_0,unsigned int len,unsigned int max_len)
{
  
#pragma HLS inline off
  
#pragma HLS function_instantiate variable=dst_idx_0,dst_idx_1,src_idx_0
  unsigned long i;
  unsigned long total_offset1 = (0 * 3 + dst_idx_0) * 3 + dst_idx_1;
  unsigned long total_offset2 = 0 * 9 + src_idx_0;
  merlinL0:
  for (i = 0; i < len / 4; ++i) {
    
#pragma HLS PIPELINE II=1
    
#pragma HLS LOOP_TRIPCOUNT max=9
    dst[(total_offset1 + i) / 3][(total_offset1 + i) % 3] = src[total_offset2 + i];
  }
}

void mars_kernel_0_2_node_0_stage_0(int c,int exec,int filter[9],int filter_buf_0[3][3])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    merlin_memcpy_0(filter_buf_0,0,0,filter,0,sizeof(int ) * ((unsigned long )9),36UL);
  }
}

void mars_kernel_0_2_node_1_stage_0(int c,int exec,merlin_uint_512 orig[512],int orig_buf_0[3][64],int r)
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    memcpy_wide_bus_read_int_2d_64_512(orig_buf_0,(size_t )0,(size_t )0,(merlin_uint_512 *)orig,(size_t )((c * 4 + r * 64) * 4),sizeof(int ) * ((unsigned long )134),(size_t )134L);
  }
}

static void merlin_memcpy_1(int dst[8192],int dst_idx_0,int src[2][2],int src_idx_0,int src_idx_1,unsigned int len,unsigned int max_len)
{
  
#pragma HLS inline off
  
#pragma HLS function_instantiate variable=dst_idx_0,src_idx_0,src_idx_1
  unsigned long i;
  unsigned long total_offset1 = 0 * 8192 + dst_idx_0;
  unsigned long total_offset2 = (0 * 2 + src_idx_0) * 2 + src_idx_1;
  merlinL1:
  for (i = 0; i < len / 4; ++i) {
    
#pragma HLS PIPELINE II=1
    
#pragma HLS LOOP_TRIPCOUNT max=4
    dst[total_offset1 + i] = src[(total_offset2 + i) / 2][(total_offset2 + i) % 2];
  }
}

void mars_kernel_0_2_node_3_stage_2(int c,int exec,int r,int sol[8192],int sol_buf_0[2][2])
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    merlin_memcpy_1(sol,c * 4 + r * 64,sol_buf_0,0,0,sizeof(int ) * ((unsigned long )4),16UL);
  }
}

void mars_kernel_0_2_bus(int mars_c,int mars_init,int mars_cond,int filter[9],int mars_filter_buf_0_0[3][3],int mars_filter_buf_0_1[3][3],int *mars_mul_1,merlin_uint_512 orig[512],int mars_orig_buf_0_0[3][64],int mars_orig_buf_0_1[3][64],int mars_r_0,int mars_r_1,int mars_r_2,int sol[8192],int mars_sol_buf_0_1[2][2],int mars_sol_buf_0_2[2][2],int *mars_temp_1)
{
  
#pragma HLS INLINE OFF
  mars_kernel_0_2_node_0_stage_0(mars_c - 0,(int )(mars_c >= mars_init + 0 & mars_c <= mars_cond + 0),filter,mars_filter_buf_0_0);
  mars_kernel_0_2_node_1_stage_0(mars_c - 0,(int )(mars_c >= mars_init + 0 & mars_c <= mars_cond + 0),orig,mars_orig_buf_0_0,mars_r_0);
  mars_kernel_0_2_node_3_stage_2(mars_c - 2,(int )(mars_c >= mars_init + 2 & mars_c <= mars_cond + 2),mars_r_2,sol,mars_sol_buf_0_2);
}

void mars_kernel_0_2_node_2_stage_1(int c,int exec,int filter_buf_0[3][3],int *mul,int orig_buf_0[3][64],int sol_buf_0[2][2],int *temp)
{
  
#pragma HLS INLINE OFF
  if (exec == 1) {
    int k2;
    int k1;
    merlinL5:
    for (int c_sub = 0; c_sub < 2; ++c_sub) 
/* Original: #pragma ACCEL PIPELINE flatten */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE AUTO */
{
      
#pragma HLS dependence variable=sol_buf_0 array inter false
      
#pragma HLS pipeline
      merlinL4:
      for (int c_sub_sub = 0; c_sub_sub < 2; ++c_sub_sub) 
/* Original: #pragma ACCEL PIPELINE flatten */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL */
{
        
#pragma HLS unroll
         *temp = ((int )0);
/* Original label: stencil_label3:for(k1 = 0;k1 < 3;k1++) {#pragma ACCEL PARALLEL COMPLETEstencil_label4:for(k2 = 0;k2 < 3;k2++) {#pragma ACCEL PARALLEL COMPLETEmul = filter_buf[k1][k2] * orig_buf[k1][c_sub * 2L + c_sub_sub + k2];temp += mul;}} */
        merlinL3:
/* Original label: stencil_label3:for(k1 = 0;k1 < 3;k1++) {#pragma ACCEL PARALLEL COMPLETEstencil_label4:for(k2 = 0;k2 < 3;k2++) {#pragma ACCEL PARALLEL COMPLETEmul = filter_buf[k1][k2] * orig_buf[k1][c_sub * 2L + c_sub_sub + k2];temp += mul;}} */
        for (k1 = 0; k1 < 3; k1++) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
          
#pragma HLS unroll
/* Original label: stencil_label4:for(k2 = 0;k2 < 3;k2++) {#pragma ACCEL PARALLEL COMPLETEmul = filter_buf[k1][k2] * orig_buf[k1][c_sub * 2L + c_sub_sub + k2];temp += mul;} */
          merlinL2:
/* Original label: stencil_label4:for(k2 = 0;k2 < 3;k2++) {#pragma ACCEL PARALLEL COMPLETEmul = filter_buf[k1][k2] * orig_buf[k1][c_sub * 2L + c_sub_sub + k2];temp += mul;} */
          for (k2 = 0; k2 < 3; k2++) 
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
            
#pragma HLS unroll
             *mul = filter_buf_0[k1][k2] * orig_buf_0[k1][((long )c_sub) * 2L + ((long )c_sub_sub) + ((long )k2)];
             *temp +=  *mul;
          }
        }
        sol_buf_0[c_sub][c_sub_sub] =  *temp;
      }
    }
  }
}

void mars_kernel_0_2_comp(int mars_c,int mars_init,int mars_cond,int filter[9],int mars_filter_buf_0_0[3][3],int mars_filter_buf_0_1[3][3],int *mars_mul_1,merlin_uint_512 orig[512],int mars_orig_buf_0_0[3][64],int mars_orig_buf_0_1[3][64],int mars_r_0,int mars_r_1,int mars_r_2,int sol[8192],int mars_sol_buf_0_1[2][2],int mars_sol_buf_0_2[2][2],int *mars_temp_1)
{
  
#pragma HLS INLINE OFF
  mars_kernel_0_2_node_2_stage_1(mars_c - 1,(int )(mars_c >= mars_init + 1 & mars_c <= mars_cond + 1),mars_filter_buf_0_1,mars_mul_1,mars_orig_buf_0_1,mars_sol_buf_0_1,mars_temp_1);
}

void mars_kernel_0_2(int mars_c,int mars_init,int mars_cond,int filter[9],int mars_filter_buf_0_0[3][3],int mars_filter_buf_0_1[3][3],int *mars_mul_1,merlin_uint_512 orig[512],int mars_orig_buf_0_0[3][64],int mars_orig_buf_0_1[3][64],int mars_r_0,int mars_r_1,int mars_r_2,int sol[8192],int mars_sol_buf_0_1[2][2],int mars_sol_buf_0_2[2][2],int *mars_temp_1)
{
  
#pragma HLS INLINE OFF
  mars_kernel_0_2_bus(mars_c,mars_init,mars_cond,filter,mars_filter_buf_0_0,mars_filter_buf_0_1,mars_mul_1,orig,mars_orig_buf_0_0,mars_orig_buf_0_1,mars_r_0,mars_r_1,mars_r_2,sol,mars_sol_buf_0_1,mars_sol_buf_0_2,mars_temp_1);
  mars_kernel_0_2_comp(mars_c,mars_init,mars_cond,filter,mars_filter_buf_0_0,mars_filter_buf_0_1,mars_mul_1,orig,mars_orig_buf_0_0,mars_orig_buf_0_1,mars_r_0,mars_r_1,mars_r_2,sol,mars_sol_buf_0_1,mars_sol_buf_0_2,mars_temp_1);
}

static void merlin_memcpy_2(int dst[3][3],int dst_idx_0,int dst_idx_1,int src[9],int src_idx_0,unsigned int len,unsigned int max_len)
{
  
#pragma HLS inline off
  
#pragma HLS function_instantiate variable=dst_idx_0,dst_idx_1,src_idx_0
  unsigned long i;
  unsigned long total_offset1 = (0 * 3 + dst_idx_0) * 3 + dst_idx_1;
  unsigned long total_offset2 = 0 * 9 + src_idx_0;
  merlinL6:
  for (i = 0; i < len / 4; ++i) {
    
#pragma HLS PIPELINE II=1
    
#pragma HLS LOOP_TRIPCOUNT max=9
    dst[(total_offset1 + i) / 3][(total_offset1 + i) % 3] = src[total_offset2 + i];
  }
}

static void merlin_memcpy_3(int dst[8192],int dst_idx_0,int src[2],int src_idx_0,unsigned int len,unsigned int max_len)
{
  
#pragma HLS inline off
  
#pragma HLS function_instantiate variable=dst_idx_0,src_idx_0
  unsigned long i;
  unsigned long total_offset1 = 0 * 8192 + dst_idx_0;
  unsigned long total_offset2 = 0 * 2 + src_idx_0;
  merlinL7:
  for (i = 0; i < len / 4; ++i) {
    
#pragma HLS PIPELINE II=1
    
#pragma HLS LOOP_TRIPCOUNT max=2
    dst[total_offset1 + i] = src[total_offset2 + i];
  }
}

__kernel void stencil(merlin_uint_512 orig[512],int sol[8192],int filter[9])
{
  
#pragma HLS INTERFACE m_axi port=filter offset=slave depth=9 bundle=merlin_gmem_stencil_32_0
  
#pragma HLS INTERFACE m_axi port=orig offset=slave depth=512 bundle=merlin_gmem_stencil_512_0
  
#pragma HLS INTERFACE m_axi port=sol offset=slave depth=8192 bundle=merlin_gmem_stencil_32_0
  
#pragma HLS INTERFACE s_axilite port=filter bundle=control
  
#pragma HLS INTERFACE s_axilite port=orig bundle=control
  
#pragma HLS INTERFACE s_axilite port=sol bundle=control
  
#pragma HLS INTERFACE s_axilite port=return bundle=control
  
#pragma HLS DATA_PACK VARIABLE=orig
  
#pragma ACCEL interface variable=filter depth=9 max_depth=9
  
#pragma ACCEL interface variable=sol depth=8192 max_depth=8192
  
#pragma ACCEL interface variable=orig depth=8192 max_depth=8192
  int r;
  int c;
  int k1;
  int k2;
  int temp;
  int mul;
  stencilulabel10:
  for (r = 0; r < 128 - 2; r++) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL PIPELINE OFF */
/* Original: #pragma ACCEL TILE FACTOR=1 */
/* Original: #pragma ACCEL PARALLEL FACTOR=1 */
/* Original: #pragma ACCEL TILE FACTOR=1 */
{
/* Original label: stencil_label2:for(c = 0;c < 15;c++) {#pragma ACCEL PIPELINEint orig_buf[3][64];int filter_buf[3][3];int sol_buf[2][2];memcpy(filter_buf[0],(const void *)(&filter[0]),sizeof(int ) * 9);#pragma HLS array_partition variable=orig_buf cyclic factor = 16 dim=2memcpy_wide_bus_read_int_2d_64_512(orig_buf,0,0,(merlin_uint_512 *)orig,((c * 4 + r * 64) * 4),sizeof(int ) *((unsigned long )134),134L);for(int c_sub = 0;c_sub < 2;++c_sub) {#pragma ACCEL PIPELINE AUTOfor(int c_sub_sub = 0;c_sub_sub < 2;++c_sub_sub) {#pragma ACCEL PARALLELtemp =((int )0);stencil_label3:for(k1 = 0;k1 < 3;k1++) {#pragma ACCEL PARALLEL COMPLETEstencil_label4:for(k2 = 0;k2 < 3;k2++) {#pragma ACCEL PARALLEL COMPLETEmul = filter_buf[k1][k2] * orig_buf[k1][c_sub * 2L + c_sub_sub + k2];temp += mul;}}sol_buf[c_sub][c_sub_sub] = temp;}}memcpy((void *)(&sol[c * 4 + r * 64]),sol_buf[0],sizeof(int ) * 4);} */
    int orig_buf_0[3][64];
    int filter_buf_0[3][3];
    int sol_buf_0[2][2];
    int mars_count_0_2 = 0;
    int mars_kernel_0_2_filter_buf_0_0[3][3];
    
#pragma HLS array_partition variable=mars_kernel_0_2_filter_buf_0_0 complete dim=2
    
#pragma HLS array_partition variable=mars_kernel_0_2_filter_buf_0_0 complete dim=1
    int mars_kernel_0_2_filter_buf_0_1[3][3];
    
#pragma HLS array_partition variable=mars_kernel_0_2_filter_buf_0_1 complete dim=2
    
#pragma HLS array_partition variable=mars_kernel_0_2_filter_buf_0_1 complete dim=1
    int mars_kernel_0_2_filter_buf_0_2[3][3];
    
#pragma HLS array_partition variable=mars_kernel_0_2_filter_buf_0_2 complete dim=2
    
#pragma HLS array_partition variable=mars_kernel_0_2_filter_buf_0_2 complete dim=1
    int mars_kernel_0_2_orig_buf_0_0[3][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_2_orig_buf_0_0 cyclic factor=16 dim=2 */
    
#pragma HLS array_partition variable=mars_kernel_0_2_orig_buf_0_0 cyclic factor=16 dim=2
    
#pragma HLS array_partition variable=mars_kernel_0_2_orig_buf_0_0 complete dim=1
    int mars_kernel_0_2_orig_buf_0_1[3][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_2_orig_buf_0_1 cyclic factor=16 dim=2 */
    
#pragma HLS array_partition variable=mars_kernel_0_2_orig_buf_0_1 cyclic factor=16 dim=2
    
#pragma HLS array_partition variable=mars_kernel_0_2_orig_buf_0_1 complete dim=1
    int mars_kernel_0_2_orig_buf_0_2[3][64];
/* Existing HLS partition: #pragma HLS array_partition variable=mars_kernel_0_2_orig_buf_0_2 cyclic factor=16 dim=2 */
    
#pragma HLS array_partition variable=mars_kernel_0_2_orig_buf_0_2 cyclic factor=16 dim=2
    
#pragma HLS array_partition variable=mars_kernel_0_2_orig_buf_0_2 complete dim=1
    int mars_kernel_0_2_r_0 = r;
    int mars_kernel_0_2_r_1 = r;
    int mars_kernel_0_2_r_2 = r;
    int mars_kernel_0_2_sol_buf_0_0[2][2];
    
#pragma HLS array_partition variable=mars_kernel_0_2_sol_buf_0_0 complete dim=2
    int mars_kernel_0_2_sol_buf_0_1[2][2];
    
#pragma HLS array_partition variable=mars_kernel_0_2_sol_buf_0_1 complete dim=2
    int mars_kernel_0_2_sol_buf_0_2[2][2];
    
#pragma HLS array_partition variable=mars_kernel_0_2_sol_buf_0_2 complete dim=2
    merlinL11:
    for (c = 0; c < 15 + 2; c++) 
/* Original: #pragma ACCEL PIPELINE flatten */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE */
{
      if (mars_count_0_2 == 0) 
        mars_kernel_0_2(c,0,14,filter,mars_kernel_0_2_filter_buf_0_0,mars_kernel_0_2_filter_buf_0_1,&mul,orig,mars_kernel_0_2_orig_buf_0_0,mars_kernel_0_2_orig_buf_0_1,mars_kernel_0_2_r_0,mars_kernel_0_2_r_1,mars_kernel_0_2_r_2,sol,mars_kernel_0_2_sol_buf_0_0,mars_kernel_0_2_sol_buf_0_1,&temp);
       else if (mars_count_0_2 == 1) 
        mars_kernel_0_2(c,0,14,filter,mars_kernel_0_2_filter_buf_0_2,mars_kernel_0_2_filter_buf_0_0,&mul,orig,mars_kernel_0_2_orig_buf_0_2,mars_kernel_0_2_orig_buf_0_0,mars_kernel_0_2_r_2,mars_kernel_0_2_r_0,mars_kernel_0_2_r_1,sol,mars_kernel_0_2_sol_buf_0_2,mars_kernel_0_2_sol_buf_0_0,&temp);
       else 
        mars_kernel_0_2(c,0,14,filter,mars_kernel_0_2_filter_buf_0_1,mars_kernel_0_2_filter_buf_0_2,&mul,orig,mars_kernel_0_2_orig_buf_0_1,mars_kernel_0_2_orig_buf_0_2,mars_kernel_0_2_r_1,mars_kernel_0_2_r_2,mars_kernel_0_2_r_0,sol,mars_kernel_0_2_sol_buf_0_1,mars_kernel_0_2_sol_buf_0_2,&temp);
      mars_count_0_2++;
      if (mars_count_0_2 == 3) 
        mars_count_0_2 = 0;
    }
{
      int orig_buf[3][64];
      
#pragma HLS array_partition variable=orig_buf cyclic factor=16 dim=2
      
#pragma HLS array_partition variable=orig_buf complete dim=1
      int filter_buf[3][3];
      
#pragma HLS array_partition variable=filter_buf complete dim=2
      
#pragma HLS array_partition variable=filter_buf complete dim=1
      int sol_buf[2];
      merlin_memcpy_2(filter_buf,0,0,filter,0,sizeof(int ) * ((unsigned long )9),36UL);
/* Existing HLS partition: #pragma HLS array_partition variable=orig_buf cyclic factor = 16 dim=2 */
      memcpy_wide_bus_read_int_2d_64_512(orig_buf,0,0,(merlin_uint_512 *)orig,((60 + r * 64) * 4),sizeof(int ) * ((unsigned long )132),132L);
      merlinL10:
      for (c = ((int )60L); c < 64 - 2; c++) 
/* Original: #pragma ACCEL PIPELINE flatten */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE */
/* Original: #pragma ACCEL TILE FACTOR=2 */
/* Original: #pragma ACCEL PARALLEL FACTOR=2 */
/* Original: #pragma ACCEL PIPELINE */
{
        
#pragma HLS dependence variable=sol_buf array inter false
        
#pragma HLS pipeline
        temp = ((int )0);
        merlinL9:
        for (k1 = 0; k1 < 3; k1++) 
/* Original: #pragma ACCEL PIPELINE off */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
          
#pragma HLS unroll
          merlinL8:
          for (k2 = 0; k2 < 3; k2++) 
/* Original: #pragma ACCEL PARALLEL COMPLETE */
/* Original: #pragma ACCEL PARALLEL COMPLETE */
{
            
#pragma HLS unroll
            mul = filter_buf[k1][k2] * orig_buf[k1][- 60 + c + k2];
            temp += mul;
          }
        }
        sol_buf[- 60 + c] = temp;
      }
      merlin_memcpy_3(sol,60 + r * 64,sol_buf,0,sizeof(int ) * ((unsigned long )2),8UL);
    }
  }
}
