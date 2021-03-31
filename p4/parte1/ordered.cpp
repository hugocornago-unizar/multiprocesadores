/* ordered.cpp */
#include <omp.h>
#include <iostream>
#include <random>

const unsigned int N = 1000, M = 4000;
double X[N][M], Y[M][N], Z[N];

int main(void){
  int j,i;
  int nthreads, tnumber;

  std::random_device rd;  // Se utilizar� para sembrar el generador de aleatorios
  std::mt19937 gen(rd()); // Sembrado de  mersenne_twister_engine con rd()
  std::uniform_real_distribution<> dis(0.0, 1.0); //Configuraci�n del espacio de de generaci�n

  for (int i = 0; i < N; ++i) {
    for (int j = 0; j < M; ++j) {
      X[i][j] = dis(gen);
      Y[j][i] = dis(gen);
    }
    Z[i] = 0.0;
  }

  #pragma omp parallel default(shared) private (i,j)
  {
    #pragma omp for schedule(dynamic, 2) ordered
    for ( i=0 ; i < N; ++i){
      for ( j=0; j < M; ++j){
        Z[i] = Z[i] + X[i][j] * Y[j][i];
      }
      #pragma omp ordered
      if(i<21){
        std::cout << "Z[" << i << "]="<< Z[i] << std::endl;
      }
    }
  }
}
