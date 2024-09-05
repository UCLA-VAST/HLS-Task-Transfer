#include "merlin_type_define.h"
#pragma ACCEL kernel

void s255(double a[64],double b[64])
{
//    scalar and array expansion
//    carry around variables, 2 levels
  double x;
  double y;
  x = b[64 - 1];
  y = b[64 - 2];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64; i++) {
    a[i] = (b[i] + x + y) * ((double ).333);
    y = x;
    x = b[i];
  }
}
