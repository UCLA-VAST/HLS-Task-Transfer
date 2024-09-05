#pragma ACCEL kernel

void kernel_dot(double in_buffer[2048],double out_buffer[1])
{
  int i;
  int j;
//#pragma scop
  double tmp = (double )0;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (i = 0; i < 2048; i++) {
    tmp += in_buffer[i];
  }
  out_buffer[0] = tmp;
//#pragma endscop
}
