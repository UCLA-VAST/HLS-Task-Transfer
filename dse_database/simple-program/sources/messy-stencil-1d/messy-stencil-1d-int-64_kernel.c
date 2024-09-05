#include "merlin_type_define.h"
#pragma ACCEL kernel

void s255(int a[64],int b[64])
{
//    scalar and array expansion
//    carry around variables, 2 levels
  int x;
  int y;
  x = b[64 - 1];
  y = b[64 - 2];
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64; i++) {
    a[i] = (b[i] + x + y) * ((int ).333);
    y = x;
    x = b[i];
  }
}
