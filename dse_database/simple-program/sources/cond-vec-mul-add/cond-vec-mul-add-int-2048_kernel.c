#include "merlin_type_define.h"
#pragma ACCEL kernel

void s2712(int a[2048],int b[2048],int c[2048])
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
