#include "merlin_type_define.h"
#pragma ACCEL kernel

void vtvtv(double a[64],double b[64],double c[64])
{
//    control loops
//    vector times vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64; i++) {
    a[i] = a[i] * b[i] * c[i];
  }
}
