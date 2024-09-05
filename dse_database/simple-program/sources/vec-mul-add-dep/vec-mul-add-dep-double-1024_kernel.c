#include "merlin_type_define.h"
#pragma ACCEL kernel

void s281(double a[1024],double b[1024],double c[1024])
{
//    crossing thresholds
//    index set splitting
//    reverse data access
  double x;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 1024; i++) {
    x = a[1024 - i - 1] + b[i] * c[i];
    a[i] = x - ((double )1.0);
    b[i] = x;
  }
}
