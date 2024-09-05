#include "merlin_type_define.h"
#pragma ACCEL kernel

void vif(float a[1024],float b[1024])
{
//    control loops
//    vector if
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 1024; i++) {
    if (b[i] > ((float )0.)) {
      a[i] = b[i];
    }
  }
}
