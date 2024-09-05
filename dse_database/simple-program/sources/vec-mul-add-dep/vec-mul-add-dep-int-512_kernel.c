#include "merlin_type_define.h"
#pragma ACCEL kernel

void s281(int a[512],int b[512],int c[512])
{
//    crossing thresholds
//    index set splitting
//    reverse data access
  int x;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 512; i++) {
    x = a[512 - i - 1] + b[i] * c[i];
    a[i] = x - ((int )1.0);
    b[i] = x;
  }
}
