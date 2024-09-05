#include "merlin_type_define.h"
#pragma ACCEL kernel

void vif(int a[256],int b[256])
{
//    control loops
//    vector if
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 256; i++) {
    if (b[i] > ((int )0.)) {
      a[i] = b[i];
    }
  }
}
