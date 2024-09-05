#include "merlin_type_define.h"
#pragma ACCEL kernel

void s351(double a[1024],double b[1024],double c[1])
{
//    loop rerolling
//    unrolled saxpy
  double alpha = c[0];
/* Standardize from: for(int i = 0;i < 1024 / 4;i += 1) {...} */
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i <= 255; i++) {
    int _in_i = 0 + 1L * i;
    a[_in_i] += alpha * b[_in_i];
    a[_in_i + 1] += alpha * b[_in_i + 1];
    a[_in_i + 2] += alpha * b[_in_i + 2];
    a[_in_i + 3] += alpha * b[_in_i + 3];
//a[i + 4] += alpha * b[i + 4];
  }
}
