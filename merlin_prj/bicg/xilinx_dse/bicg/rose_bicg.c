/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* bicg.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "bicg.h"
/* Array initialization. */

static void init_array(int m,int n,double A[124][116],double r[124],double p[116])
{
  int i;
  int j;
  for (i = 0; i < m; i++) 
    p[i] = ((double )(i % m)) / m;
  for (i = 0; i < n; i++) {
    r[i] = ((double )(i % n)) / n;
    for (j = 0; j < m; j++) 
      A[i][j] = ((double )(i * (j + 1) % n)) / n;
  }
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

static void print_array(int m,int n,double s[116],double q[124])
{
  int i;
  fprintf(stderr,"==BEGIN DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","s");
  for (i = 0; i < m; i++) {
    if (i % 20 == 0) 
      fprintf(stderr,"\n");
    fprintf(stderr,"%0.2lf ",s[i]);
  }
  fprintf(stderr,"\nend   dump: %s\n","s");
  fprintf(stderr,"begin dump: %s","q");
  for (i = 0; i < n; i++) {
    if (i % 20 == 0) 
      fprintf(stderr,"\n");
    fprintf(stderr,"%0.2lf ",q[i]);
  }
  fprintf(stderr,"\nend   dump: %s\n","q");
  fprintf(stderr,"==END   DUMP_ARRAYS==\n");
}
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void __merlin_dummy_kernel_pragma();

void kernel_bicg(int m,int n,double A[124][116],double s[116],double q[124],double p[116],double r[124])
{
  int i;
  int j;
//#pragma scop
  for (i = 0; i < 116; i++) {
    s[i] = 0;
  }
  for (i = 0; i < 124; i++) {
    q[i] = 0.0;
    for (j = 0; j < 116; j++) {
      s[j] = s[j] + r[i] * A[i][j];
      q[i] = q[i] + A[i][j] * p[j];
    }
  }
//#pragma endscop
}

int main(int argc,char **argv)
{
/* Retrieve problem size. */
  int n = 124;
  int m = 116;
/* Variable declaration/allocation. */
  double (*A)[124][116];
  A = ((double (*)[124][116])(polybench_alloc_data(((124 + 0) * (116 + 0)),(sizeof(double )))));
  ;
  double (*s)[116];
  s = ((double (*)[116])(polybench_alloc_data((116 + 0),(sizeof(double )))));
  ;
  double (*q)[124];
  q = ((double (*)[124])(polybench_alloc_data((124 + 0),(sizeof(double )))));
  ;
  double (*p)[116];
  p = ((double (*)[116])(polybench_alloc_data((116 + 0),(sizeof(double )))));
  ;
  double (*r)[124];
  r = ((double (*)[124])(polybench_alloc_data((124 + 0),(sizeof(double )))));
  ;
/* Initialize array(s). */
  init_array(m,n, *A, *r, *p);
/* Start timer. */
  ;
/* Run kernel. */
  kernel_bicg(m,n, *A, *s, *q, *p, *r);
/* Stop and print timer. */
  ;
  ;
/* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  if (argc > 42 && !strcmp(argv[0],"")) 
    print_array(m,n, *s, *q);
/* Be clean. */
  free((void *)A);
  ;
  free((void *)s);
  ;
  free((void *)q);
  ;
  free((void *)p);
  ;
  free((void *)r);
  ;
  return 0;
}
