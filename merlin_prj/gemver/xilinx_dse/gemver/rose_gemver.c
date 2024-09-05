/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* gemver.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "gemver.h"
/* Array initialization. */

static void init_array(int n,double *alpha,double *beta,double A[120][120],double u1[120],double v1[120],double u2[120],double v2[120],double w[120],double x[120],double y[120],double z[120])
{
  int i;
  int j;
   *alpha = 1.5;
   *beta = 1.2;
  double fn = (double )n;
  for (i = 0; i < n; i++) {
    u1[i] = i;
    u2[i] = (i + 1) / fn / 2.0;
    v1[i] = (i + 1) / fn / 4.0;
    v2[i] = (i + 1) / fn / 6.0;
    y[i] = (i + 1) / fn / 8.0;
    z[i] = (i + 1) / fn / 9.0;
    x[i] = 0.0;
    w[i] = 0.0;
    for (j = 0; j < n; j++) 
      A[i][j] = ((double )(i * j % n)) / n;
  }
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

static void print_array(int n,double w[120])
{
  int i;
  fprintf(stderr,"==BEGIN DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","w");
  for (i = 0; i < n; i++) {
    if (i % 20 == 0) 
      fprintf(stderr,"\n");
    fprintf(stderr,"%0.2lf ",w[i]);
  }
  fprintf(stderr,"\nend   dump: %s\n","w");
  fprintf(stderr,"==END   DUMP_ARRAYS==\n");
}
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void __merlin_dummy_kernel_pragma();

void kernel_gemver(int n,double alpha,double beta,double A[120][120],double u1[120],double v1[120],double u2[120],double v2[120],double w[120],double x[120],double y[120],double z[120])
{
  int i;
  int j;
  
#pragma scop
  for (i = 0; i < 120; i++) {
    for (j = 0; j < 120; j++) {
      A[i][j] = A[i][j] + u1[i] * v1[j] + u2[i] * v2[j];
    }
  }
  for (i = 0; i < 120; i++) {
    for (j = 0; j < 120; j++) {
      x[i] = x[i] + beta * A[j][i] * y[j];
    }
  }
  for (i = 0; i < 120; i++) {
    x[i] = x[i] + z[i];
  }
  for (i = 0; i < 120; i++) {
    for (j = 0; j < 120; j++) {
      w[i] = w[i] + alpha * A[i][j] * x[j];
    }
  }
  
#pragma endscop
}

int main(int argc,char **argv)
{
/* Retrieve problem size. */
  int n = 120;
/* Variable declaration/allocation. */
  double alpha;
  double beta;
  double (*A)[120][120];
  A = ((double (*)[120][120])(polybench_alloc_data(((120 + 0) * (120 + 0)),(sizeof(double )))));
  ;
  double (*u1)[120];
  u1 = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
  double (*v1)[120];
  v1 = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
  double (*u2)[120];
  u2 = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
  double (*v2)[120];
  v2 = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
  double (*w)[120];
  w = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
  double (*x)[120];
  x = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
  double (*y)[120];
  y = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
  double (*z)[120];
  z = ((double (*)[120])(polybench_alloc_data((120 + 0),(sizeof(double )))));
  ;
/* Initialize array(s). */
  init_array(n,&alpha,&beta, *A, *u1, *v1, *u2, *v2, *w, *x, *y, *z);
/* Start timer. */
  ;
/* Run kernel. */
  kernel_gemver(n,alpha,beta, *A, *u1, *v1, *u2, *v2, *w, *x, *y, *z);
/* Stop and print timer. */
  ;
  ;
/* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  if (argc > 42 && !strcmp(argv[0],"")) 
    print_array(n, *w);
/* Be clean. */
  free((void *)A);
  ;
  free((void *)u1);
  ;
  free((void *)v1);
  ;
  free((void *)u2);
  ;
  free((void *)v2);
  ;
  free((void *)w);
  ;
  free((void *)x);
  ;
  free((void *)y);
  ;
  free((void *)z);
  ;
  return 0;
}
