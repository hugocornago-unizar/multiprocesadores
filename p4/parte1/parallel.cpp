// parallel.cpp
#include <iostream>
#include <sstream>
#include <string>

#include <omp.h>
int main()
{
    int i = 1;

    #pragma omp parallel firstprivate(i)
    {
    	//Opci�n 1
        //std::cout << i << "-" << omp_get_thread_num() << std::endl;
	//Opci�n 2
	//std::ostringstream buffer;
	//buffer << i << "-" << omp_get_thread_num() << std::endl;
	//std::cout << buffer.str();
	//Opci�n 2 bis
	std::cout <<  std::to_string(i) + "-" + std::to_string(omp_get_thread_num()) + "\n";
    }
    return 0;
}
