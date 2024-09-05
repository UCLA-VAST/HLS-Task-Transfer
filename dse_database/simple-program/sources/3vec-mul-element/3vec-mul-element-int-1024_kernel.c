#include "merlin_type_define.h"
#pragma ACCEL kernel

void vtvtv(int a[1024],int b[1024],int c[1024])
{
//    control loops
//    vector times vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 1024; i++) {
    a[i] = a[i] * b[i] * c[i];
  }
}
