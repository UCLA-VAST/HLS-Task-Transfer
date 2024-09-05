#include "merlin_type_define.h"
#pragma ACCEL kernel

void s314(float a[256],float c[1])
{
//    reductions
//    if to max reduction
  float x;
  x = a[0];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 256; i++) {
    if (a[i] > x) {
      x = a[i];
    }
  }
  c[0] = x;
//return x;
}
