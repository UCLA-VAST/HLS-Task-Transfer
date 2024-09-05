#include "merlin_type_define.h"
#pragma ACCEL kernel

void s281(long a[256],long b[256],long c[256])
{
//    crossing thresholds
//    index set splitting
//    reverse data access
  long x;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 256; i++) {
    x = a[256 - i - 1] + b[i] * c[i];
    a[i] = x - ((long )1.0);
    b[i] = x;
  }
}
