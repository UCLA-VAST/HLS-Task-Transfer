#include "merlin_type_define.h"
#pragma ACCEL kernel

void vtv(float a[1024],float b[1024])
{
//    control loops
//    vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 1024; i++) {
    a[i] *= b[i];
  }
}
