#include "merlin_type_define.h"
#pragma ACCEL kernel

void vif(double a[1024],double b[1024])
{
//    control loops
//    vector if
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 0; i < 1024; i++) {
    if (b[i] > ((double )0.)) {
      a[i] = b[i];
    }
  }
}
