#include "merlin_type_define.h"
#pragma ACCEL kernel

void s255(long a[128],long b[128])
{
//    scalar and array expansion
//    carry around variables, 2 levels
  long x;
  long y;
  x = b[128 - 1];
  y = b[128 - 2];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    a[i] = (b[i] + x + y) * ((long ).333);
    y = x;
    x = b[i];
  }
}
