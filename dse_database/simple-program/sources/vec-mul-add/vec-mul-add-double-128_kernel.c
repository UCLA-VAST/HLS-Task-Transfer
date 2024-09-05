#include "merlin_type_define.h"
#pragma ACCEL kernel

void vpvtv(double a[128],double b[128],double c[128])
{
//    control loops
//    vector plus vector times vector
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    a[i] += b[i] * c[i];
  }
}
