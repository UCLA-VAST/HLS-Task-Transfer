#include "merlin_type_define.h"
#pragma ACCEL kernel

void s311(double a[128],double c[1])
{
//    reductions
//    sum reduction
  double sum;
  sum = ((double )0.);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    sum += a[i];
  }
  c[0] = sum;
}
