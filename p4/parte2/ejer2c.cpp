/* ejer2c.cpp */
#include <omp.h>
#include <iostream>
#include <random>

const int64_t N = 4000000000;

int main(void){
  int nthreads, tnumber;

  double *A = new double[N];

  std::random_device rd;  // Se utilizar� para sembrar el generador de aleatorios
  std::mt19937 gen(rd()); // Sembrado de  mersenne_twister_engine con rd()
  std::uniform_real_distribution<> dis(0.0, 100.0); //Configuraci�n del espacio de de generaci�n

  for (int64_t i = 0; i < N; ++i) {
    A[i] = dis(gen);
  }
  
  for (int64_t i = 1; i < N; ++i) {
    A[i] = A[i] - A[i-1];
  }
  
  std::cout << "A[150]=" << A[150] << std::endl;

}
