#include "merlin_type_define.h"
#pragma ACCEL kernel

void vtvtv(int a[128],int b[128],int c[128])
{
//    control loops
//    vector times vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    a[i] = a[i] * b[i] * c[i];
  }
}
