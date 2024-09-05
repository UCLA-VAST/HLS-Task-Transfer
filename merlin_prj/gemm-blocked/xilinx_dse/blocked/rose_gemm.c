/*
Implementation based on algorithm described in:
The cache performance and optimizations of blocked algorithms
M. D. Lam, E. E. Rothberg, and M. E. Wolf
ASPLOS 1991
*/
#include "gemm.h"
static void __merlin_dummy_kernel_pragma();

void bbgemm(double m1[4096],double m2[4096],double prod[4096])
{
  int i;
  int k;
  int j;
  int jj;
  int kk;
  int i_row;
  int k_row;
  double temp_x;
  double mul;
  loopjj:
  for (jj = 0; jj < 64; jj += 8) {
    loopkk:
    for (kk = 0; kk < 64; kk += 8) {
      loopi:
      for (i = 0; i < 64; ++i) {
        loopk:
        for (k = 0; k < 8; ++k) {
          i_row = i * 64;
          k_row = (k + kk) * 64;
          temp_x = m1[i_row + k + kk];
          loopj:
          for (j = 0; j < 8; ++j) {
            mul = temp_x * m2[k_row + j + jj];
            prod[i_row + j + jj] += mul;
          }
        }
      }
    }
  }
}
