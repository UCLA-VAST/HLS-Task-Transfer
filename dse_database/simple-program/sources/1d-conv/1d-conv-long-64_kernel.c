#include "merlin_type_define.h"
#pragma ACCEL kernel

void s176(long a[64],long b[64],long c[64])
{
//    symbolics
//    convolution
  int m = 64 / 2;
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L0}
  for (int j = 0; j < 64 / 2; j++) {
    for (int i = 0; i < m; i++) {
      a[i] += b[i + m - j - 1] * c[j];
    }
  }
}
