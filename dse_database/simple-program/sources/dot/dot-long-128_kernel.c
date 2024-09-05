#include "merlin_type_define.h"
#pragma ACCEL kernel

void s313(long a[128],long b[128],long c[1])
{
//    reductions
//    dot product
  long dot;
  dot = ((long )0.);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    dot += a[i] * b[i];
  }
  c[0] = dot;
// return dot;
}
