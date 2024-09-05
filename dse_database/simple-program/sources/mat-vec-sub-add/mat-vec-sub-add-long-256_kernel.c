#include "merlin_type_define.h"
#pragma ACCEL kernel

void s257(long a[256],long aa[256][256],long bb[256][256])
{
//    scalar and array expansion
//    array expansion
  
#pragma ACCEL PIPELINE auto{__PIPE__L0}
  
#pragma ACCEL TILE FACTOR=auto{__TILE__L0}
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (int i = 1; i < 256; i++) {
    
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L1}
    for (int j = 0; j < 256; j++) {
      a[i] = aa[j][i] - a[i - 1];
      aa[j][i] = a[i] + bb[j][i];
    }
  }
}
