#include "merlin_type_define.h"
#pragma ACCEL kernel

void s2712(float a[2048],float b[2048],float c[2048])
{
//    control flow
//    if to elemental min
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 2048; i++) {
    if (a[i] > b[i]) {
      a[i] += b[i] * c[i];
    }
  }
}
