#include <iostream>
#include <omp.h>

using namespace std;

int main() {
// race condition
// Cada hilo intenta entrar
#pragma omp parallel
  { // fork: abren cierta cantidad de hilos
    cout << "Hello"
         << " world!" << endl;
  } // join: juntan hilos
}
