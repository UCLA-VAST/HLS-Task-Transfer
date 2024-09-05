#include "merlin_type_define.h"
#pragma ACCEL kernel

void s313(double a[512],double b[512],double c[1])
{
//    reductions
//    dot product
  double dot;
  dot = ((double )0.);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 512; i++) {
    dot += a[i] * b[i];
  }
  c[0] = dot;
// return dot;
}
