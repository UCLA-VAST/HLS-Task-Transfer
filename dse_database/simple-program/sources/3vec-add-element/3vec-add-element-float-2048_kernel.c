#include "merlin_type_define.h"
#pragma ACCEL kernel

void vpvpv(float a[2048],float b[2048],float c[2048])
{
//    control loops
//    vector plus vector plus vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 2048; i++) {
    a[i] += b[i] + c[i];
  }
}
