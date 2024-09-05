#include "merlin_type_define.h"
#pragma ACCEL kernel

{'__PARA__L0': 6, '__PARA__L1': 62, '__PIPE__L0': '', '__PIPE__L1': 'flatten', '__PIPE__L2': 'off', '__TILE__L0': 2, '__TILE__L1': 1}

void stencil(int orig[8192],int sol[8192],int filter[9])
{
  int r;
  int c;
  int k1;
  int k2;
  int temp;
  int mul;
  
#pragma ACCEL PIPELINE flatten
  
#pragma ACCEL TILE FACTOR=2
  
#pragma ACCEL PARALLEL FACTOR=6
  stencil_label1:
  for (r = 0; r < 128 - 2; r++) {
    
#pragma ACCEL PIPELINE
    
#pragma ACCEL TILE FACTOR=1
    
#pragma ACCEL PARALLEL FACTOR=62
    stencil_label2:
    for (c = 0; c < 64 - 2; c++) {
      temp = ((int )0);
      
#pragma ACCEL PIPELINE off
      stencil_label3:
      for (k1 = 0; k1 < 3; k1++) {
        stencil_label4:
        for (k2 = 0; k2 < 3; k2++) {
          mul = filter[k1 * 3 + k2] * orig[(r + k1) * 64 + c + k2];
          temp += mul;
        }
      }
      sol[r * 64 + c] = temp;
    }
  }
}
