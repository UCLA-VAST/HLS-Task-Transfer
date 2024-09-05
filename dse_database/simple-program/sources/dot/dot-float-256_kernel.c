#include "merlin_type_define.h"
#pragma ACCEL kernel

void s313(float a[256],float b[256],float c[1])
{
//    reductions
//    dot product
  float dot;
  dot = ((float )0.);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 256; i++) {
    dot += a[i] * b[i];
  }
  c[0] = dot;
// return dot;
}
