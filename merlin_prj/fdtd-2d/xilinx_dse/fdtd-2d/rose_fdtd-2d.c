/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* fdtd-2d.c: this file is part of PolyBench/C */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
/* Include polybench common header. */
#include <polybench.h>
/* Include benchmark-specific header. */
#include "fdtd-2d.h"
/* Array initialization. */

static void init_array(int tmax,int nx,int ny,double ex[60][80],double ey[60][80],double hz[60][80],double _fict_[40])
{
  int i;
  int j;
  for (i = 0; i < tmax; i++) 
    _fict_[i] = ((double )i);
  for (i = 0; i < nx; i++) 
    for (j = 0; j < ny; j++) {
      ex[i][j] = ((double )i) * (j + 1) / nx;
      ey[i][j] = ((double )i) * (j + 2) / ny;
      hz[i][j] = ((double )i) * (j + 3) / nx;
    }
}
/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */

static void print_array(int nx,int ny,double ex[60][80],double ey[60][80],double hz[60][80])
{
  int i;
  int j;
  fprintf(stderr,"==BEGIN DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","ex");
  for (i = 0; i < nx; i++) 
    for (j = 0; j < ny; j++) {
      if ((i * nx + j) % 20 == 0) 
        fprintf(stderr,"\n");
      fprintf(stderr,"%0.2lf ",ex[i][j]);
    }
  fprintf(stderr,"\nend   dump: %s\n","ex");
  fprintf(stderr,"==END   DUMP_ARRAYS==\n");
  fprintf(stderr,"begin dump: %s","ey");
  for (i = 0; i < nx; i++) 
    for (j = 0; j < ny; j++) {
      if ((i * nx + j) % 20 == 0) 
        fprintf(stderr,"\n");
      fprintf(stderr,"%0.2lf ",ey[i][j]);
    }
  fprintf(stderr,"\nend   dump: %s\n","ey");
  fprintf(stderr,"begin dump: %s","hz");
  for (i = 0; i < nx; i++) 
    for (j = 0; j < ny; j++) {
      if ((i * nx + j) % 20 == 0) 
        fprintf(stderr,"\n");
      fprintf(stderr,"%0.2lf ",hz[i][j]);
    }
  fprintf(stderr,"\nend   dump: %s\n","hz");
}
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void __merlin_dummy_kernel_pragma();

void kernel_fdtd_2d(int tmax,int nx,int ny,double ex[60][80],double ey[60][80],double hz[60][80],double _fict_[40])
{
  int t;
  int i;
  int j;
//#pragma scop
  for (t = 0; t < 40; t++) {
    for (j = 0; j < 80; j++) 
      ey[0][j] = _fict_[t];
    for (i = 1; i < 60; i++) 
      for (j = 0; j < 80; j++) 
        ey[i][j] = ey[i][j] - 0.5 * (hz[i][j] - hz[i - 1][j]);
    for (i = 0; i < 60; i++) 
      for (j = 1; j < 80; j++) 
        ex[i][j] = ex[i][j] - 0.5 * (hz[i][j] - hz[i][j - 1]);
    for (i = 0; i < 60 - 1; i++) 
      for (j = 0; j < 80 - 1; j++) 
        hz[i][j] = hz[i][j] - 0.7 * (ex[i][j + 1] - ex[i][j] + ey[i + 1][j] - ey[i][j]);
  }
//#pragma endscop
}

int main(int argc,char **argv)
{
/* Retrieve problem size. */
  int tmax = 40;
  int nx = 60;
  int ny = 80;
/* Variable declaration/allocation. */
  double (*ex)[60][80];
  ex = ((double (*)[60][80])(polybench_alloc_data(((60 + 0) * (80 + 0)),(sizeof(double )))));
  ;
  double (*ey)[60][80];
  ey = ((double (*)[60][80])(polybench_alloc_data(((60 + 0) * (80 + 0)),(sizeof(double )))));
  ;
  double (*hz)[60][80];
  hz = ((double (*)[60][80])(polybench_alloc_data(((60 + 0) * (80 + 0)),(sizeof(double )))));
  ;
  double (*_fict_)[40];
  _fict_ = ((double (*)[40])(polybench_alloc_data((40 + 0),(sizeof(double )))));
  ;
/* Initialize array(s). */
  init_array(tmax,nx,ny, *ex, *ey, *hz, *_fict_);
/* Start timer. */
  ;
/* Run kernel. */
  kernel_fdtd_2d(tmax,nx,ny, *ex, *ey, *hz, *_fict_);
/* Stop and print timer. */
  ;
  ;
/* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  if (argc > 42 && !strcmp(argv[0],"")) 
    print_array(nx,ny, *ex, *ey, *hz);
/* Be clean. */
  free((void *)ex);
  ;
  free((void *)ey);
  ;
  free((void *)hz);
  ;
  free((void *)_fict_);
  ;
  return 0;
}
