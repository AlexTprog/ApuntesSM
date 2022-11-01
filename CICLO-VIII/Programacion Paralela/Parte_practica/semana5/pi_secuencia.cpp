#include <chrono>
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <time.h>

using namespace std;

int main() {
  srand(time(0));

  int puntos_totales;
  cin >> puntos_totales;

  int puntos_dentro_del_circulo = 0;

  auto start = std::chrono::steady_clock::now();
  for (int i = 0; i < puntos_totales; i++) {
    float x, y;
    x = 1.0 * rand() / RAND_MAX;
    y = 1.0 * rand() / RAND_MAX;
    if (sqrt(x * x + y * y) < 1.0)
      puntos_dentro_del_circulo++;
  }

  cout << 4.0 * puntos_dentro_del_circulo / puntos_totales << endl;
  auto end = std::chrono::steady_clock::now();
  std::chrono::duration<double> elapsed_seconds = end - start;
  std::cout << "elapsed time: " << elapsed_seconds.count() << "s\n";
}