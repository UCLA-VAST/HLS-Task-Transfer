#include "merlin_type_define.h"
#pragma ACCEL kernel

void vtvtv(int a[64],int b[64],int c[64])
{
//    control loops
//    vector times vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64; i++) {
    a[i] = a[i] * b[i] * c[i];
  }
}
