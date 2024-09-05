/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* 2mm.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "2mm.h"
/* Array initialization. */

static void init_array(int ni,int nj,int nk,int nl,double *alpha,double *beta,double A[40][70],double B[70][50],double C[50][80],double D[40][80])
{
  int i;
  int j;
   *alpha = 1.5;
   *beta = 1.2;
  for (i = 0; i < ni; i++) 
    for (j = 0; j < nk; j++) 
      A[i][j] = ((double )((i * j + 1) % ni)) / ni;
  for (i = 0; i < nk; i++) 
    for (j = 0; j < nj; j++) 
      B[i][j] = ((double )(i * (j + 1) % nj)) / nj;
  for (i = 0; i < nj; i++) 
    for (j = 0; j < nl; j++) 
      C[i][j] = ((double )((i * (j + 3) + 1) % nl)) / nl;
  for (i = 0; i < ni; i++) 
    for (j = 0; j < nl; j++) 
      D[i][j] = ((double )(i * (j + 2) % nk)) / nk;
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

static void print_array(int ni,int nl,double D[40][80])
{
  int i;
  int j;
  fprintf(stderr,"==BEGIN DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","D");
  for (i = 0; i < ni; i++) 
    for (j = 0; j < nl; j++) {
      if ((i * ni + j) % 20 == 0) 
        fprintf(stderr,"\n");
      fprintf(stderr,"%0.2lf ",D[i][j]);
    }
  fprintf(stderr,"\nend   dump: %s\n","D");
  fprintf(stderr,"==END   DUMP_ARRAYS==\n");
}
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void __merlin_dummy_kernel_pragma();

void kernel_2mm(int ni,int nj,int nk,int nl,double alpha,double beta,double tmp[40][50],double A[40][70],double B[70][50],double C[50][80],double D[40][80])
{
  int i;
  int j;
  int k;
//#pragma scop
/* D := alpha*A*B*C + beta*D */
  for (i = 0; i < 40; i++) {
    for (j = 0; j < 50; j++) {
      tmp[i][j] = 0.0;
      for (k = 0; k < 70; ++k) {
        tmp[i][j] += alpha * A[i][k] * B[k][j];
      }
    }
  }
  for (i = 0; i < 40; i++) {
    for (j = 0; j < 80; j++) {
      D[i][j] *= beta;
      for (k = 0; k < 50; ++k) {
        D[i][j] += tmp[i][k] * C[k][j];
      }
    }
  }
//#pragma endscop
}

int main(int argc,char **argv)
{
/* Retrieve problem size. */
  int ni = 40;
  int nj = 50;
  int nk = 70;
  int nl = 80;
/* Variable declaration/allocation. */
  double alpha;
  double beta;
  double (*tmp)[40][50];
  tmp = ((double (*)[40][50])(polybench_alloc_data(((40 + 0) * (50 + 0)),(sizeof(double )))));
  ;
  double (*A)[40][70];
  A = ((double (*)[40][70])(polybench_alloc_data(((40 + 0) * (70 + 0)),(sizeof(double )))));
  ;
  double (*B)[70][50];
  B = ((double (*)[70][50])(polybench_alloc_data(((70 + 0) * (50 + 0)),(sizeof(double )))));
  ;
  double (*C)[50][80];
  C = ((double (*)[50][80])(polybench_alloc_data(((50 + 0) * (80 + 0)),(sizeof(double )))));
  ;
  double (*D)[40][80];
  D = ((double (*)[40][80])(polybench_alloc_data(((40 + 0) * (80 + 0)),(sizeof(double )))));
  ;
/* Initialize array(s). */
  init_array(ni,nj,nk,nl,&alpha,&beta, *A, *B, *C, *D);
/* Start timer. */
  ;
/* Run kernel. */
  kernel_2mm(ni,nj,nk,nl,alpha,beta, *tmp, *A, *B, *C, *D);
/* Stop and print timer. */
  ;
  ;
/* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  if (argc > 42 && !strcmp(argv[0],"")) 
    print_array(ni,nl, *D);
/* Be clean. */
  free((void *)tmp);
  ;
  free((void *)A);
  ;
  free((void *)B);
  ;
  free((void *)C);
  ;
  free((void *)D);
  ;
  return 0;
}
