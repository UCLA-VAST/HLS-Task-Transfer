#include "merlin_type_define.h"
#pragma ACCEL kernel

void s341(float a[64],float b[64])
{
//    packing
//    pack positive values
//    not vectorizable, value of j in unknown at each iteration
  int j;
  j = - 1;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64; i++) {
    if (b[i] > ((float )0.)) {
      j++;
      a[j] = b[i];
    }
  }
}
