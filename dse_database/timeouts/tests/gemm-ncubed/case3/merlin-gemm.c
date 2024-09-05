#include "merlin_type_define.h"
#pragma ACCEL kernel

void gemm(double m1[4096],double m2[4096],double prod[4096])
{
  int i;
  int j;
  int k;
  int k_col;
  int i_col;
  double mult;
  
#pragma ACCEL PIPELINE off
  
#pragma ACCEL TILE FACTOR=1
  
#pragma ACCEL PARALLEL FACTOR=1
  outer:
  for (i = 0; i < 64; i++) {
    
#pragma ACCEL PIPELINE 
    
#pragma ACCEL TILE FACTOR=2
    
#pragma ACCEL PARALLEL FACTOR=1
    middle:
    for (j = 0; j < 64; j++) {
      i_col = i * 64;
      double sum = (double )0;
      
#pragma ACCEL PARALLEL reduction=sum FACTOR=16
      inner:
      for (k = 0; k < 64; k++) {
        k_col = k * 64;
        mult = m1[i_col + k] * m2[k_col + j];
        sum += mult;
      }
      prod[i_col + j] = sum;
    }
  }
}
