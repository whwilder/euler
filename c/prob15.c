#include <stdio.h>
#include <gmp.h>
#define MAX_DIM 1000001
mpz_t grid[MAX_DIM][MAX_DIM];
int main(int argc, char *argv[]) {
   for (int i = 0; i < MAX_DIM; i++){
      for (int j = 0; j < MAX_DIM; j++) {
         mpz_init(grid[i][j]);
      }
   }
   int len = MAX_DIM-1;
   mpz_t start;
   mpz_init_set_str(start,"1",10);
   mpz_add(grid[len][len], grid[len][len], start);

   for (int row = len; row >= 0; row--){
      for (int col = len; col >= 0; col--) {
         if (row+1 <= len)
            mpz_add(grid[row][col], grid[row][col], grid[row+1][col]);
            //grid[row][col] += grid[row+1][col];
         if (col+1 <= len)
            mpz_add(grid[row][col], grid[row][col], grid[row][col+1]);
            //grid[row][col] += grid[row][col+1];
      }
   }
   for (int row = len; row >= 0; row--){
      for (int col = len; col >= 0; col--) {
         if (row > 0 && col > 0)
            mpz_clear(grid[row][col]);
      }
   }
   mpz_out_str(stdout,10,grid[0][0]);
   printf("\n");
   mpz_clear(grid[0][0]);
   //printf("%lld\n", grid[0][0]);
}
