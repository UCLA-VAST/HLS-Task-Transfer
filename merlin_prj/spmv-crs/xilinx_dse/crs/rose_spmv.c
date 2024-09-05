/*
Based on algorithm described here:
http://www.cs.berkeley.edu/~mhoemmen/matrix-seminar/slides/UCB_sparse_tutorial_1.pdf
*/
#include "spmv.h"
static void __merlin_dummy_kernel_pragma();

void spmv(double val[1666],int cols[1666],int rowDelimiters[494 + 1],double vec[494],double out[494])
{
  int i;
  int j;
  double sum;
  double Si;
  spmv_1:
  for (i = 0; i < 494; i++) {
    sum = 0;
    Si = 0;
    int tmp_begin = rowDelimiters[i];
    int tmp_end = rowDelimiters[i + 1];
    spmv_2:
    for (j = tmp_begin; j < tmp_end; j++) {
      Si = val[j] * vec[cols[j]];
      sum = sum + Si;
    }
    out[i] = sum;
  }
}
