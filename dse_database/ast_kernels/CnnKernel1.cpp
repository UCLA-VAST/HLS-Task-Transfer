#include "merlin_type_define.h"
const int kNum2 = 16;
const int kImSize = 224;
const int parallelOut = 16;
const int kNum = 256;
const int kKernel = 5;
const int shift = 4;
const int kOutImSize = 112;
#pragma ACCEL kernel

void CnnKernel(const float input[256][228][228],const float weight[256][256][5][5],const float bias[256],float output[256][112][112])
{
/*#pragma ACCEL interface variable=input bus_bitwidth=128
   #pragma ACCEL interface variable=weight bus_bitwidth=128
   #pragma ACCEL interface variable=output bus_bitwidth=512
   #pragma ACCEL interface variable=bias bus_bitwidth=512   
   */
//float C[parallelOut][kImSize][kImSize];
  float C[16][224][224];
/*float C1[kImSize][kImSize];
   float C2[kImSize][kImSize];
   float C3[kImSize][kImSize];*/
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L0}
  init:
//#pragma ACCEL parallel factor=4 
  for (int i = 0; i < kNum2; i++) {
//#pragma ACCEL parallel
    
#pragma ACCEL PIPELINE auto{__PIPE__L1}
    
#pragma ACCEL TILE FACTOR=auto{__TILE__L1}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
    for (int h = 0; h < kImSize; ++h) {
//#pragma ACCEL pipeline flatten
//      #pragma ACCEL parallel factor=4
//#pragma ACCEL false_dependence variable=C
      
#pragma ACCEL PIPELINE auto{__PIPE__L4}
      
#pragma ACCEL TILE FACTOR=auto{__TILE__L4}
      
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L4}
      for (int w = 0; w < kImSize; ++w) {
        for (int iter = 0; iter < parallelOut; iter++) {
          C[iter][h][w] = 0.f;
        }
      }
    }
// Convolution
//    #pragma ACCEL pipeline
    
#pragma ACCEL PIPELINE auto{__PIPE__L2}
    
#pragma ACCEL TILE FACTOR=auto{__TILE__L2}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L2}
    conv:
    for (int j = 0; j < kNum; ++j) {
      
#pragma ACCEL PIPELINE auto{__PIPE__L5}
      
#pragma ACCEL TILE FACTOR=auto{__TILE__L5}
      
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L5}
      loop_h:
      for (int h = 0; h < kImSize; ++h) {
//  #pragma ACCEL parallel factor=4 // Parallel by 4 times
//  #pragma ACCEL pipeline FLATTEN
//#pragma ACCEL false_dependence variable=C
        
#pragma ACCEL PIPELINE auto{__PIPE__L8}
//#pragma ACCEL PIPELINE FLATTEN
        
#pragma ACCEL TILE FACTOR=auto{__TILE__L8}
        
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L8}
        loop_w:
        for (int w = 0; w < kImSize; ++w) {
          
#pragma ACCEL PIPELINE auto{__PIPE__L10}
          
#pragma ACCEL TILE FACTOR=auto{__TILE__L10}
          loop_p:
          for (int iter = 0; iter < parallelOut; iter++) {
            float tmp = (float )0;
//#pragma ACCEL parallel reduction=tmp factor=5
//#pragma ACCEL false_dependence variable=input
            
#pragma ACCEL PIPELINE auto{__PIPE__L11}
            
#pragma ACCEL TILE FACTOR=auto{__TILE__L11}
            for (int p = 0; p < kKernel; ++p) {
              Loop_q:
//  #pragma ACCEL pipeline
              for (int q = 0; q < kKernel; ++q) {
                tmp += weight[(i << shift) + iter][j][p][q] * input[j][h + p][w + q];
              }
            }
            C[iter][h][w] += tmp;
          }
        }
      }
    }
// Max pooling
    
#pragma ACCEL PIPELINE auto{__PIPE__L3}
    
#pragma ACCEL TILE FACTOR=auto{__TILE__L3}
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L3}
    pooling:
//#pragma ACCEL parallel
    for (int h = 0; h < kOutImSize; ++h) {
//#pragma ACCEL pipeline flatten
//#pragma ACCEL parallel factor=4
      
#pragma ACCEL PIPELINE auto{__PIPE__L6}
      
#pragma ACCEL TILE FACTOR=auto{__TILE__L6}
      
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L6}
      for (int w = 0; w < kOutImSize; ++w) {
        for (int iter = 0; iter < parallelOut; iter++) {
          output[(i << shift) + iter][h][w] = (0.f > ((((C[iter][h * 2][w * 2] + bias[(i << shift) + iter] > C[iter][h * 2 + 1][w * 2] + bias[(i << shift) + iter]?C[iter][h * 2][w * 2] + bias[(i << shift) + iter] : C[iter][h * 2 + 1][w * 2] + bias[(i << shift) + iter])) > ((C[iter][h * 2][w * 2 + 1] + bias[(i << shift) + iter] > C[iter][h * 2 + 1][w * 2 + 1] + bias[(i << shift) + iter]?C[iter][h * 2][w * 2 + 1] + bias[(i << shift) + iter] : C[iter][h * 2 + 1][w * 2 + 1] + bias[(i << shift) + iter]))?((C[iter][h * 2][w * 2] + bias[(i << shift) + iter] > C[iter][h * 2 + 1][w * 2] + bias[(i << shift) + iter]?C[iter][h * 2][w * 2] + bias[(i << shift) + iter] : C[iter][h * 2 + 1][w * 2] + bias[(i << shift) + iter])) : ((C[iter][h * 2][w * 2 + 1] + bias[(i << shift) + iter] > C[iter][h * 2 + 1][w * 2 + 1] + bias[(i << shift) + iter]?C[iter][h * 2][w * 2 + 1] + bias[(i << shift) + iter] : C[iter][h * 2 + 1][w * 2 + 1] + bias[(i << shift) + iter]))))?0.f : ((((C[iter][h * 2][w * 2] + bias[(i << shift) + iter] > C[iter][h * 2 + 1][w * 2] + bias[(i << shift) + iter]?C[iter][h * 2][w * 2] + bias[(i << shift) + iter] : C[iter][h * 2 + 1][w * 2] + bias[(i << shift) + iter])) > ((C[iter][h * 2][w * 2 + 1] + bias[(i << shift) + iter] > C[iter][h * 2 + 1][w * 2 + 1] + bias[(i << shift) + iter]?C[iter][h * 2][w * 2 + 1] + bias[(i << shift) + iter] : C[iter][h * 2 + 1][w * 2 + 1] + bias[(i << shift) + iter]))?((C[iter][h * 2][w * 2] + bias[(i << shift) + iter] > C[iter][h * 2 + 1][w * 2] + bias[(i << shift) + iter]?C[iter][h * 2][w * 2] + bias[(i << shift) + iter] : C[iter][h * 2 + 1][w * 2] + bias[(i << shift) + iter])) : ((C[iter][h * 2][w * 2 + 1] + bias[(i << shift) + iter] > C[iter][h * 2 + 1][w * 2 + 1] + bias[(i << shift) + iter]?C[iter][h * 2][w * 2 + 1] + bias[(i << shift) + iter] : C[iter][h * 2 + 1][w * 2 + 1] + bias[(i << shift) + iter])))));
        }
      }
    }
  }
}
