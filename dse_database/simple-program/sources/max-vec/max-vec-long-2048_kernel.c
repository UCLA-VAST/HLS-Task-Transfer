#include "merlin_type_define.h"
#pragma ACCEL kernel

void s314(long a[2048],long c[1])
{
//    reductions
//    if to max reduction
  long x;
  x = a[0];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 2048; i++) {
    if (a[i] > x) {
      x = a[i];
    }
  }
  c[0] = x;
//return x;
}
