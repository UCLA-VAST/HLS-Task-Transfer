#pragma ACCEL kernel

void kernel_dot(float in_buffer[1024],float out_buffer[1])
{
  int i;
  int j;
//#pragma scop
  float tmp = (float )0;
  
#pragma ACCEL PARALLEL FACTOR=auto{__PARA__L0}
  for (i = 0; i < 1024; i++) {
    tmp += in_buffer[i];
  }
  out_buffer[0] = tmp;
//#pragma endscop
}