#include "merlin_type_define.h"
#pragma ACCEL kernel

void s255(float a[2048],float b[2048])
{
//    scalar and array expansion
//    carry around variables, 2 levels
  float x;
  float y;
  x = b[2048 - 1];
  y = b[2048 - 2];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 2048; i++) {
    a[i] = (b[i] + x + y) * ((float ).333);
    y = x;
    x = b[i];
  }
}
