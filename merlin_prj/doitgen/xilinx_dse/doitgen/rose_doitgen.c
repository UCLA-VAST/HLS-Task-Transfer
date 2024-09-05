/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* doitgen.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "doitgen.h"
/* Array initialization. */

static void init_array(int nr,int nq,int np,double A[25][20][30],double C4[30][30])
{
  int i;
  int j;
  int k;
  for (i = 0; i < nr; i++) 
    for (j = 0; j < nq; j++) 
      for (k = 0; k < np; k++) 
        A[i][j][k] = ((double )((i * j + k) % np)) / np;
  for (i = 0; i < np; i++) 
    for (j = 0; j < np; j++) 
      C4[i][j] = ((double )(i * j % np)) / np;
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

static void print_array(int nr,int nq,int np,double A[25][20][30])
{
  int i;
  int j;
  int k;
  fprintf(stderr,"==BEGIN DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","A");
  for (i = 0; i < nr; i++) 
    for (j = 0; j < nq; j++) 
      for (k = 0; k < np; k++) {
        if ((i * nq * np + j * np + k) % 20 == 0) 
          fprintf(stderr,"\n");
        fprintf(stderr,"%0.2lf ",A[i][j][k]);
      }
  fprintf(stderr,"\nend   dump: %s\n","A");
  fprintf(stderr,"==END   DUMP_ARRAYS==\n");
}
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void __merlin_dummy_kernel_pragma();

void kernel_doitgen(int nr,int nq,int np,double A[25][20][30],double C4[30][30],double sum[30])
{
  int r;
  int q;
  int p;
  int s;
//#pragma scop
  for (r = 0; r < 25; r++) {
    for (q = 0; q < 20; q++) {
      for (p = 0; p < 30; p++) {
        sum[p] = 0.0;
        for (s = 0; s < 30; s++) {
          sum[p] += A[r][q][s] * C4[s][p];
        }
      }
      for (p = 0; p < 30; p++) {
        A[r][q][p] = sum[p];
      }
    }
  }
//#pragma endscop
}

int main(int argc,char **argv)
{
/* Retrieve problem size. */
  int nr = 25;
  int nq = 20;
  int np = 30;
/* Variable declaration/allocation. */
  double (*A)[25][20][30];
  A = ((double (*)[25][20][30])(polybench_alloc_data(((25 + 0) * (20 + 0) * (30 + 0)),(sizeof(double )))));
  ;
  double (*sum)[30];
  sum = ((double (*)[30])(polybench_alloc_data((30 + 0),(sizeof(double )))));
  ;
  double (*C4)[30][30];
  C4 = ((double (*)[30][30])(polybench_alloc_data(((30 + 0) * (30 + 0)),(sizeof(double )))));
  ;
/* Initialize array(s). */
  init_array(nr,nq,np, *A, *C4);
/* Start timer. */
  ;
/* Run kernel. */
  kernel_doitgen(nr,nq,np, *A, *C4, *sum);
/* Stop and print timer. */
  ;
  ;
/* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  if (argc > 42 && !strcmp(argv[0],"")) 
    print_array(nr,nq,np, *A);
/* Be clean. */
  free((void *)A);
  ;
  free((void *)sum);
  ;
  free((void *)C4);
  ;
  return 0;
}
