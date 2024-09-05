#include "merlin_type_define.h"
#pragma ACCEL kernel

void s322(long a[2048],long b[2048],long c[2048])
{
//    recurrences
//    second order linear recurrence
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 2; i < 2048; i++) {
    a[i] = a[i] + a[i - 1] * b[i] + a[i - 2] * c[i];
  }
}
