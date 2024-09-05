#include "merlin_type_define.h"
#pragma ACCEL kernel

void s311(int a[64],int c[1])
{
//    reductions
//    sum reduction
  int sum;
  sum = ((int )0.);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64; i++) {
    sum += a[i];
  }
  c[0] = sum;
}
