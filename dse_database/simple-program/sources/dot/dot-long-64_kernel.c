#include "merlin_type_define.h"
#pragma ACCEL kernel

void s313(long a[64],long b[64],long c[1])
{
//    reductions
//    dot product
  long dot;
  dot = ((long )0.);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64; i++) {
    dot += a[i] * b[i];
  }
  c[0] = dot;
// return dot;
}
