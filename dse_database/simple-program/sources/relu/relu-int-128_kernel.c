#include "merlin_type_define.h"
#pragma ACCEL kernel

void vif(int a[128],int b[128])
{
//    control loops
//    vector if
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 128; i++) {
    if (b[i] > ((int )0.)) {
      a[i] = b[i];
    }
  }
}
