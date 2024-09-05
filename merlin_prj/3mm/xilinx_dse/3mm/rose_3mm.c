/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* 3mm.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "3mm.h"
/* Array initialization. */

static void init_array(int ni,int nj,int nk,int nl,int nm,double A[40][60],double B[60][50],double C[50][80],double D[80][70])
{
  int i;
  int j;
  for (i = 0; i < ni; i++) 
    for (j = 0; j < nk; j++) 
      A[i][j] = ((double )((i * j + 1) % ni)) / (5 * ni);
  for (i = 0; i < nk; i++) 
    for (j = 0; j < nj; j++) 
      B[i][j] = ((double )((i * (j + 1) + 2) % nj)) / (5 * nj);
  for (i = 0; i < nj; i++) 
    for (j = 0; j < nm; j++) 
      C[i][j] = ((double )(i * (j + 3) % nl)) / (5 * nl);
  for (i = 0; i < nm; i++) 
    for (j = 0; j < nl; j++) 
      D[i][j] = ((double )((i * (j + 2) + 2) % nk)) / (5 * nk);
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

static void print_array(int ni,int nl,double G[40][70])
{
  int i;
  int j;
  fprintf(stderr,"==BEGIN DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","G");
  for (i = 0; i < ni; i++) 
    for (j = 0; j < nl; j++) {
      if ((i * ni + j) % 20 == 0) 
        fprintf(stderr,"\n");
      fprintf(stderr,"%0.2lf ",G[i][j]);
    }
  fprintf(stderr,"\nend   dump: %s\n","G");
  fprintf(stderr,"==END   DUMP_ARRAYS==\n");
}
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void __merlin_dummy_kernel_pragma();

void kernel_3mm(int ni,int nj,int nk,int nl,int nm,double E[40][50],double A[40][60],double B[60][50],double F[50][70],double C[50][80],double D[80][70],double G[40][70])
{
  int i;
  int j;
  int k;
//#pragma scop
/* E := A*B */
  for (i = 0; i < 40; i++) {
    for (j = 0; j < 50; j++) {
      E[i][j] = 0.0;
      for (k = 0; k < 60; ++k) {
        E[i][j] += A[i][k] * B[k][j];
      }
    }
  }
/* F := C*D */
  for (i = 0; i < 50; i++) {
    for (j = 0; j < 70; j++) {
      F[i][j] = 0.0;
      for (k = 0; k < 80; ++k) {
        F[i][j] += C[i][k] * D[k][j];
      }
    }
  }
/* G := E*F */
  for (i = 0; i < 40; i++) {
    for (j = 0; j < 70; j++) {
      G[i][j] = 0.0;
      for (k = 0; k < 50; ++k) {
        G[i][j] += E[i][k] * F[k][j];
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
  int nk = 60;
  int nl = 70;
  int nm = 80;
/* Variable declaration/allocation. */
  double (*E)[40][50];
  E = ((double (*)[40][50])(polybench_alloc_data(((40 + 0) * (50 + 0)),(sizeof(double )))));
  ;
  double (*A)[40][60];
  A = ((double (*)[40][60])(polybench_alloc_data(((40 + 0) * (60 + 0)),(sizeof(double )))));
  ;
  double (*B)[60][50];
  B = ((double (*)[60][50])(polybench_alloc_data(((60 + 0) * (50 + 0)),(sizeof(double )))));
  ;
  double (*F)[50][70];
  F = ((double (*)[50][70])(polybench_alloc_data(((50 + 0) * (70 + 0)),(sizeof(double )))));
  ;
  double (*C)[50][80];
  C = ((double (*)[50][80])(polybench_alloc_data(((50 + 0) * (80 + 0)),(sizeof(double )))));
  ;
  double (*D)[80][70];
  D = ((double (*)[80][70])(polybench_alloc_data(((80 + 0) * (70 + 0)),(sizeof(double )))));
  ;
  double (*G)[40][70];
  G = ((double (*)[40][70])(polybench_alloc_data(((40 + 0) * (70 + 0)),(sizeof(double )))));
  ;
/* Initialize array(s). */
  init_array(ni,nj,nk,nl,nm, *A, *B, *C, *D);
/* Start timer. */
  ;
/* Run kernel. */
  kernel_3mm(ni,nj,nk,nl,nm, *E, *A, *B, *F, *C, *D, *G);
/* Stop and print timer. */
  ;
  ;
/* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  if (argc > 42 && !strcmp(argv[0],"")) 
    print_array(ni,nl, *G);
/* Be clean. */
  free((void *)E);
  ;
  free((void *)A);
  ;
  free((void *)B);
  ;
  free((void *)F);
  ;
  free((void *)C);
  ;
  free((void *)D);
  ;
  free((void *)G);
  ;
  return 0;
}
