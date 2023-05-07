#include <chrono>
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <omp.h>
#include <time.h>

using namespace std;

int main() {

  int puntos_totales;
  cin >> puntos_totales;

  // tenemos la limitacion que nuestro programa solo puede correr hasta 100
  // threads usamos padding
  int puntos_dentro_del_circulo[100];

  auto start = std::chrono::steady_clock::now();
  int n_threads;
#pragma omp parallel
  {
    n_threads = omp_get_num_threads();
    unsigned int thread_id = omp_get_thread_num();
    puntos_dentro_del_circulo[thread_id] = 0;
    int cont = puntos_totales / n_threads;
    // esto solo se va a correr en el primer thread y es para compensar algunos
    // puntos perdidos en la division entera de la linea anterior
    if (thread_id == 0) {
      cont = cont + (puntos_totales - n_threads * cont);
    }

    for (int i = 0; i < cont; i++) {
      float x, y;
      x = 1.0 * rand_r(&thread_id) / RAND_MAX;
      y = 1.0 * rand_r(&thread_id) / RAND_MAX;

      if (x * x + y * y < 1.0) {
        puntos_dentro_del_circulo[omp_get_thread_num()]++;
      }
    }
  }

  int total = 0;
  for (int i = 0; i < n_threads; i++)
    total += puntos_dentro_del_circulo[i];

  cout << 4.0 * total / puntos_totales << endl;
  auto end = std::chrono::steady_clock::now();
  std::chrono::duration<double> elapsed_seconds = end - start;
  std::cout << "elapsed time: " << elapsed_seconds.count() << "s\n";
}