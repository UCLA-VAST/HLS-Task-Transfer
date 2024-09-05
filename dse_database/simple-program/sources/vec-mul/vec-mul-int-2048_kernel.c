#include "merlin_type_define.h"
#pragma ACCEL kernel

void vtv(int a[2048],int b[2048])
{
//    control loops
//    vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 2048; i++) {
    a[i] *= b[i];
  }
}
