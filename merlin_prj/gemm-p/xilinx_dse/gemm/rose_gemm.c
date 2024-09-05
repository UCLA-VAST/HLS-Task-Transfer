/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* gemm.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "gemm.h"
/* Array initialization. */

static void init_array(int ni,int nj,int nk,double *alpha,double *beta,double C[60][70],double A[60][80],double B[80][70])
{
  int i;
  int j;
   *alpha = 1.5;
   *beta = 1.2;
  for (i = 0; i < ni; i++) 
    for (j = 0; j < nj; j++) 
      C[i][j] = ((double )((i * j + 1) % ni)) / ni;
  for (i = 0; i < ni; i++) 
    for (j = 0; j < nk; j++) 
      A[i][j] = ((double )(i * (j + 1) % nk)) / nk;
  for (i = 0; i < nk; i++) 
    for (j = 0; j < nj; j++) 
      B[i][j] = ((double )(i * (j + 2) % nj)) / nj;
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

static void print_array(int ni,int nj,double C[60][70])
{
  int i;
  int j;
  fprintf(stderr,"==BEGIN DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","C");
  for (i = 0; i < ni; i++) 
    for (j = 0; j < nj; j++) {
      if ((i * ni + j) % 20 == 0) 
        fprintf(stderr,"\n");
      fprintf(stderr,"%0.2lf ",C[i][j]);
    }
  fprintf(stderr,"\nend   dump: %s\n","C");
  fprintf(stderr,"==END   DUMP_ARRAYS==\n");
}
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void __merlin_dummy_kernel_pragma();

void kernel_gemm(int ni,int nj,int nk,double alpha,double beta,double C[60][70],double A[60][80],double B[80][70])
{
  int i;
  int j;
  int k;
//BLAS PARAMS
//TRANSA = 'N'
//TRANSB = 'N'
// => Form C := alpha*A*B + beta*C,
//A is NIxNK
//B is NKxNJ
//C is NIxNJ
  
#pragma scop
  for (i = 0; i < 60; i++) {
    for (j = 0; j < 70; j++) {
      C[i][j] *= beta;
    }
    for (k = 0; k < 80; k++) {
      for (j = 0; j < 70; j++) {
        C[i][j] += alpha * A[i][k] * B[k][j];
      }
    }
  }
  
#pragma endscop
}

int main(int argc,char **argv)
{
/* Retrieve problem size. */
  int ni = 60;
  int nj = 70;
  int nk = 80;
/* Variable declaration/allocation. */
  double alpha;
  double beta;
  double (*C)[60][70];
  C = ((double (*)[60][70])(polybench_alloc_data(((60 + 0) * (70 + 0)),(sizeof(double )))));
  ;
  double (*A)[60][80];
  A = ((double (*)[60][80])(polybench_alloc_data(((60 + 0) * (80 + 0)),(sizeof(double )))));
  ;
  double (*B)[80][70];
  B = ((double (*)[80][70])(polybench_alloc_data(((80 + 0) * (70 + 0)),(sizeof(double )))));
  ;
/* Initialize array(s). */
  init_array(ni,nj,nk,&alpha,&beta, *C, *A, *B);
/* Start timer. */
  ;
/* Run kernel. */
  kernel_gemm(ni,nj,nk,alpha,beta, *C, *A, *B);
/* Stop and print timer. */
  ;
  ;
/* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  if (argc > 42 && !strcmp(argv[0],"")) 
    print_array(ni,nj, *C);
/* Be clean. */
  free((void *)C);
  ;
  free((void *)A);
  ;
  free((void *)B);
  ;
  return 0;
}
