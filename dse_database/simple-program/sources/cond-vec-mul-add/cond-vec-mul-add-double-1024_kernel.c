#include "merlin_type_define.h"
#pragma ACCEL kernel

void s2712(double a[1024],double b[1024],double c[1024])
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
