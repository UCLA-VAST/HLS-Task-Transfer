#include "merlin_type_define.h"
#pragma ACCEL kernel

void vtv(float a[256],float b[256])
{
//    control loops
//    vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 256; i++) {
    a[i] *= b[i];
  }
}
