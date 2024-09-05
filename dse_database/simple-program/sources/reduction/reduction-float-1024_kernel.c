#include "merlin_type_define.h"
#pragma ACCEL kernel

void s311(float a[1024],float c[1])
{
//    reductions
//    sum reduction
  float sum;
  sum = ((float )0.);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 1024; i++) {
    sum += a[i];
  }
  c[0] = sum;
}
