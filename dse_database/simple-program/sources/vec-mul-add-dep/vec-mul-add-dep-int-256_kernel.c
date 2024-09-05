#include "merlin_type_define.h"
#pragma ACCEL kernel

void s281(int a[256],int b[256],int c[256])
{
//    crossing thresholds
//    index set splitting
//    reverse data access
  int x;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 256; i++) {
    x = a[256 - i - 1] + b[i] * c[i];
    a[i] = x - ((int )1.0);
    b[i] = x;
  }
}
