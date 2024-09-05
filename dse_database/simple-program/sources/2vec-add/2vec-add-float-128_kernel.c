#include "merlin_type_define.h"
#pragma ACCEL kernel

void s131(float a[128],float b[128])
{
//    global data flow analysis
//    forward substitution
  int m = 1;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128 - 1; i++) {
    a[i] = a[i + m] + b[i];
  }
}
