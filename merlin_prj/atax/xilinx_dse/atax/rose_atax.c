/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* atax.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "atax.h"
/* Array initialization. */

void init_array(int m,int n,double A[116][124],double x[124])
{
  int i;
  int j;
  double fn;
  fn = ((double )n);
  for (i = 0; i < n; i++) 
    x[i] = 1 + i / fn;
  for (i = 0; i < m; i++) 
    for (j = 0; j < n; j++) 
      A[i][j] = ((double )((i + j) % n)) / (5 * m);
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

void print_array(int n,double y[124])
{
  int i;
  fprintf(stderr,"==BEGIN DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","y");
  for (i = 0; i < n; i++) {
    if (i % 20 == 0) 
      fprintf(stderr,"\n");
    fprintf(stderr,"%0.2lf ",y[i]);
  }
  fprintf(stderr,"\nend   dump: %s\n","y");
  fprintf(stderr,"==END   DUMP_ARRAYS==\n");
}
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void __merlin_dummy_kernel_pragma();

void kernel_atax(int m,int n,double A[116][124],double x[124],double y[124],double tmp[116])
{
  int i;
  int j;
//#pragma scop
  for (i = 0; i < 124; i++) 
    y[i] = 0;
  for (i = 0; i < 116; i++) {
    tmp[i] = 0.0;
    for (j = 0; j < 124; j++) 
      tmp[i] += A[i][j] * x[j];
    for (j = 0; j < 124; j++) 
      y[j] += A[i][j] * tmp[i];
  }
//#pragma endscop
}
// int main(int argc, char** argv)
// {
//   /* Retrieve problem size. */
//   int m = M;
//   int n = N;
//   /* Variable declaration/allocation. */
//   POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, M, N, m, n);
//   POLYBENCH_1D_ARRAY_DECL(x, DATA_TYPE, N, n);
//   POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, N, n);
//   POLYBENCH_1D_ARRAY_DECL(tmp, DATA_TYPE, M, m);
//   /* Initialize array(s). */
//   init_array (m, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(x));
//   /* Start timer. */
//   polybench_start_instruments;
//   /* Run kernel. */
//   kernel_atax (m, n,
// 	       POLYBENCH_ARRAY(A),
// 	       POLYBENCH_ARRAY(x),
// 	       POLYBENCH_ARRAY(y),
// 	       POLYBENCH_ARRAY(tmp));
//   /* Stop and print timer. */
//   polybench_stop_instruments;
//   polybench_print_instruments;
//   /* Prevent dead-code elimination. All live-out data must be printed
//      by the function call in argument. */
//   polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(y)));
//   /* Be clean. */
//   POLYBENCH_FREE_ARRAY(A);
//   POLYBENCH_FREE_ARRAY(x);
//   POLYBENCH_FREE_ARRAY(y);
//   POLYBENCH_FREE_ARRAY(tmp);
//   return 0;
// }
