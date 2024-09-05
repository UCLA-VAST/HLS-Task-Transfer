#include "merlin_type_define.h"
#pragma ACCEL kernel

void s255(double a[128],double b[128])
{
//    scalar and array expansion
//    carry around variables, 2 levels
  double x;
  double y;
  x = b[128 - 1];
  y = b[128 - 2];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    a[i] = (b[i] + x + y) * ((double ).333);
    y = x;
    x = b[i];
  }
}
