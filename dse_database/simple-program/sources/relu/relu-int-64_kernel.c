#include "merlin_type_define.h"
#pragma ACCEL kernel

void vif(int a[64],int b[64])
{
//    control loops
//    vector if
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 64; i++) {
    if (b[i] > ((int )0.)) {
      a[i] = b[i];
    }
  }
}
