#include "merlin_type_define.h"
#pragma ACCEL kernel

void s176(int a[2048],int b[2048],int c[2048])
{
//    symbolics
//    convolution
  int m = 2048 / 2;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int j = 0; j < 2048 / 2; j++) {
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
    for (int i = 0; i < m; i++) {
      a[i] += b[i + m - j - 1] * c[j];
    }
  }
}
