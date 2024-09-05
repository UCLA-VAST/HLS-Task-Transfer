#include "merlin_type_define.h"
#pragma ACCEL kernel

void s257(int a[128],int aa[128][128],int bb[128][128])
{
//    scalar and array expansion
//    array expansion
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 1; i < 128; i++) {
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
    for (int j = 0; j < 128; j++) {
      a[i] = aa[j][i] - a[i - 1];
      aa[j][i] = a[i] + bb[j][i];
    }
  }
}
