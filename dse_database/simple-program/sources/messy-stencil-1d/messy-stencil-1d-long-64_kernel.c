#include "merlin_type_define.h"
#pragma ACCEL kernel

void s255(long a[64],long b[64])
{
//    scalar and array expansion
//    carry around variables, 2 levels
  long x;
  long y;
  x = b[64 - 1];
  y = b[64 - 2];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64; i++) {
    a[i] = (b[i] + x + y) * ((long ).333);
    y = x;
    x = b[i];
  }
}
