#include "merlin_type_define.h"
#pragma ACCEL kernel

void vpvtv(float a[1024],float b[1024],float c[1024])
{
//    control loops
//    vector plus vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 1024; i++) {
    a[i] += b[i] * c[i];
  }
}
