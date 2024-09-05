#include "merlin_type_define.h"
#pragma ACCEL kernel

void vpvpv(float a[512],float b[512],float c[512])
{
//    control loops
//    vector plus vector plus vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 512; i++) {
    a[i] += b[i] + c[i];
  }
}
