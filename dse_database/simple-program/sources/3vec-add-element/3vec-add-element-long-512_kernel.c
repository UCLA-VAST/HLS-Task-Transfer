#include "merlin_type_define.h"
#pragma ACCEL kernel

void vpvpv(long a[512],long b[512],long c[512])
{
//    control loops
//    vector plus vector plus vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 512; i++) {
    a[i] += b[i] + c[i];
  }
}
