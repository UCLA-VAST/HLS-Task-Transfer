#include "merlin_type_define.h"
#pragma ACCEL kernel

void s351(float a[256],float b[256],float c[1])
{
//    loop rerolling
//    unrolled saxpy
  float alpha = c[0];
/* Standardize from: for(int i = 0;i < 256 / 4;i += 1) {...} */
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i <= 63; i++) {
    int _in_i = 0 + 1L * i;
    a[_in_i] += alpha * b[_in_i];
    a[_in_i + 1] += alpha * b[_in_i + 1];
    a[_in_i + 2] += alpha * b[_in_i + 2];
    a[_in_i + 3] += alpha * b[_in_i + 3];
//a[i + 4] += alpha * b[i + 4];
  }
}
