#include "merlin_type_define.h"
#pragma ACCEL kernel

void vtvtv(double a[256],double b[256],double c[256])
{
//    control loops
//    vector times vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 256; i++) {
    a[i] = a[i] * b[i] * c[i];
  }
}
