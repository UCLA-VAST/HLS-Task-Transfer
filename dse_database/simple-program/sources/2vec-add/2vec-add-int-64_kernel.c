#include "merlin_type_define.h"
#pragma ACCEL kernel

void s131(int a[64],int b[64])
{
//    global data flow analysis
//    forward substitution
  int m = 1;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64 - 1; i++) {
    a[i] = a[i + m] + b[i];
  }
}
