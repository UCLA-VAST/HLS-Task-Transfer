#include "merlin_type_define.h"
#pragma ACCEL kernel

void vpvpv(int a[256],int b[256],int c[256])
{
//    control loops
//    vector plus vector plus vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 256; i++) {
    a[i] += b[i] + c[i];
  }
}
