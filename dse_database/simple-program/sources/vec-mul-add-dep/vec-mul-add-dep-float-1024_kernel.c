#include "merlin_type_define.h"
#pragma ACCEL kernel

void s281(float a[1024],float b[1024],float c[1024])
{
//    crossing thresholds
//    index set splitting
//    reverse data access
  float x;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 1024; i++) {
    x = a[1024 - i - 1] + b[i] * c[i];
    a[i] = x - ((float )1.0);
    b[i] = x;
  }
}
