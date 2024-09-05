#include "merlin_type_define.h"
#pragma ACCEL kernel

void s2712(float a[256],float b[256],float c[256])
{
//    control flow
//    if to elemental min
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 256; i++) {
    if (a[i] > b[i]) {
      a[i] += b[i] * c[i];
    }
  }
}
