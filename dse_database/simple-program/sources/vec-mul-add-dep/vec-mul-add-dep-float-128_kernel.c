#include "merlin_type_define.h"
#pragma ACCEL kernel

void s281(float a[128],float b[128],float c[128])
{
//    crossing thresholds
//    index set splitting
//    reverse data access
  float x;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    x = a[128 - i - 1] + b[i] * c[i];
    a[i] = x - ((float )1.0);
    b[i] = x;
  }
}
