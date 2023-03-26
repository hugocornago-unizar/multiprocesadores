/* sections.cpp */
#include <omp.h>
#include <thread>
#include <chrono>
#include <iostream>


int main(void){
  int tnumber;
  #pragma omp parallel sections private(tnumber)
  {
    #pragma omp section 
    {
      tnumber = omp_get_thread_num();
      std::this_thread::sleep_for (std::chrono::seconds(1));
      std::cout << "Esta es la secci�n 1 ejecutada por el thread " + std::to_string(tnumber) << std::endl;
    }
    #pragma omp section
    {
      tnumber = omp_get_thread_num();
      std::this_thread::sleep_for (std::chrono::seconds(2));
      std::cout << "Esta es la secci�n 2 ejecutada por el thread " + std::to_string(tnumber) << std::endl;
    }
    #pragma omp section
    {
      tnumber = omp_get_thread_num();
      std::this_thread::sleep_for (std::chrono::seconds(2));
      std::cout << "Esta es la secci�n 3 ejecutada por el thread " + std::to_string(tnumber) << std::endl;
    }
    #pragma omp section
    {
      tnumber = omp_get_thread_num();
      std::this_thread::sleep_for (std::chrono::seconds(0));
      std::cout << "Esta es la secci�n 4 ejecutada por el thread " + std::to_string(tnumber) << std::endl;
    }
  }
}
