#include "merlin_type_define.h"
#pragma ACCEL kernel

void s2712(double a[128],double b[128],double c[128])
{
//    control flow
//    if to elemental min
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    if (a[i] > b[i]) {
      a[i] += b[i] * c[i];
    }
  }
}
