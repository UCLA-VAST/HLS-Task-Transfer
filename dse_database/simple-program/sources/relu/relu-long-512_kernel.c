#include "merlin_type_define.h"
#pragma ACCEL kernel

void vif(long a[512],long b[512])
{
//    control loops
//    vector if
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 512; i++) {
    if (b[i] > ((long )0.)) {
      a[i] = b[i];
    }
  }
}
