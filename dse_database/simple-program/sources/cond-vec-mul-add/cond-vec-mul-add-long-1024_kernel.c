#include "merlin_type_define.h"
#pragma ACCEL kernel

void s2712(long a[1024],long b[1024],long c[1024])
{
//    control flow
//    if to elemental min
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 1024; i++) {
    if (a[i] > b[i]) {
      a[i] += b[i] * c[i];
    }
  }
}
