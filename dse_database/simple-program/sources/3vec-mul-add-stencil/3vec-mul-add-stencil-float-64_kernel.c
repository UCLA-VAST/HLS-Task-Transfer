#include "merlin_type_define.h"
#pragma ACCEL kernel

void s322(float a[64],float b[64],float c[64])
{
//    recurrences
//    second order linear recurrence
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 2; i < 64; i++) {
    a[i] = a[i] + a[i - 1] * b[i] + a[i - 2] * c[i];
  }
}
