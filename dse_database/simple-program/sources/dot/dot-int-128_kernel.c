#include "merlin_type_define.h"
#pragma ACCEL kernel

void s313(int a[128],int b[128],int c[1])
{
//    reductions
//    dot product
  int dot;
  dot = ((int )0.);
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    dot += a[i] * b[i];
  }
  c[0] = dot;
// return dot;
}
