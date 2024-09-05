/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* jacobi-1d.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "jacobi-1d.h"
/* Array initialization. */

static void init_array(int n,double A[120],double B[120])
{
  int i;
  for (i = 0; i < n; i++) {
    A[i] = (((double )i) + 2) / n;
    B[i] = (((double )i) + 3) / n;
  }
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

static void print_array(int n,double A[120])
{
  int i;
  fprintf(stderr,"==BEGIN DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","A");
  for (i = 0; i < n; i++) {
    if (i % 20 == 0) 
      fprintf(stderr,"\n");
    fprintf(stderr,"%0.2lf ",A[i]);
  }
  fprintf(stderr,"\nend   dump: %s\n","A");
  fprintf(stderr,"==END   DUMP_ARRAYS==\n");
}
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void __merlin_dummy_kernel_pragma();

void kernel_jacobi_1d(int tsteps,int n,double A[120],double B[120])
{
  int t;
  int i;
//#pragma scop
  for (t = 0; t < 40; t++) {
    for (i = 1; i < 120 - 1; i++) {
      B[i] = 0.33333 * (A[i - 1] + A[i] + A[i + 1]);
    }
    for (i = 1; i < 120 - 1; i++) {
      A[i] = 0.33333 * (B[i - 1] + B[i] + B[i + 1]);
    }
  }
//#pragma endscop
}

int main(int argc,char **argv)
{
/* Retrieve problem size. */
  int n = 120;
  int tsteps = 40;
/* Variable declaration/allocation. */
  double (*A)[120];
  A = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
  double (*B)[120];
  B = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
/* Initialize array(s). */
  init_array(n, *A, *B);
/* Start timer. */
  ;
/* Run kernel. */
  kernel_jacobi_1d(tsteps,n, *A, *B);
/* Stop and print timer. */
  ;
  ;
/* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  if (argc > 42 && !strcmp(argv[0],"")) 
    print_array(n, *A);
/* Be clean. */
  free((void *)A);
  ;
  free((void *)B);
  ;
  return 0;
}
