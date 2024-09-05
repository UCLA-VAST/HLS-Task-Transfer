/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* gesummv.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "gesummv.h"
/* Array initialization. */

static void init_array(int n,double *alpha,double *beta,double A[90][90],double B[90][90],double x[90])
{
  int i;
  int j;
   *alpha = 1.5;
   *beta = 1.2;
  for (i = 0; i < n; i++) {
    x[i] = ((double )(i % n)) / n;
    for (j = 0; j < n; j++) {
      A[i][j] = ((double )((i * j + 1) % n)) / n;
      B[i][j] = ((double )((i * j + 2) % n)) / n;
    }
  }
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

static void print_array(int n,double y[90])
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

void kernel_gesummv(int n,double alpha,double beta,double A[90][90],double B[90][90],double tmp[90],double x[90],double y[90])
{
  int i;
  int j;
  
#pragma scop
  for (i = 0; i < 90; i++) {
    tmp[i] = 0.0;
    y[i] = 0.0;
    for (j = 0; j < 90; j++) {
      tmp[i] = A[i][j] * x[j] + tmp[i];
      y[i] = B[i][j] * x[j] + y[i];
    }
    y[i] = alpha * tmp[i] + beta * y[i];
  }
  
#pragma endscop
}

int main(int argc,char **argv)
{
/* Retrieve problem size. */
  int n = 90;
/* Variable declaration/allocation. */
  double alpha;
  double beta;
  double (*A)[90][90];
  A = ((double (*)[90][90])(polybench_alloc_data(((90 + 0) * (90 + 0)),(sizeof(double )))));
  ;
  double (*B)[90][90];
  B = ((double (*)[90][90])(polybench_alloc_data(((90 + 0) * (90 + 0)),(sizeof(double )))));
  ;
  double (*tmp)[90];
  tmp = ((double (*)[90])(polybench_alloc_data((90 + 0),(sizeof(double )))));
  ;
  double (*x)[90];
  x = ((double (*)[90])(polybench_alloc_data((90 + 0),(sizeof(double )))));
  ;
  double (*y)[90];
  y = ((double (*)[90])(polybench_alloc_data((90 + 0),(sizeof(double )))));
  ;
/* Initialize array(s). */
  init_array(n,&alpha,&beta, *A, *B, *x);
/* Start timer. */
  ;
/* Run kernel. */
  kernel_gesummv(n,alpha,beta, *A, *B, *tmp, *x, *y);
/* Stop and print timer. */
  ;
  ;
/* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  if (argc > 42 && !strcmp(argv[0],"")) 
    print_array(n, *y);
/* Be clean. */
  free((void *)A);
  ;
  free((void *)B);
  ;
  free((void *)tmp);
  ;
  free((void *)x);
  ;
  free((void *)y);
  ;
  return 0;
}
