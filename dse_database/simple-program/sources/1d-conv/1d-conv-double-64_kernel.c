#include "merlin_type_define.h"
#pragma ACCEL kernel

void s176(double a[64],double b[64],double c[64])
{
//    symbolics
//    convolution
  int m = 64 / 2;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L0}
  for (int j = 0; j < 32; j++) {
    for (int i = 0; i < 32; i++) {
      a[i] += b[i + m - j - 1] * c[j];
    }
  }
}
