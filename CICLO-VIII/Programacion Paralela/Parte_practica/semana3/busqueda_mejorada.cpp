#include <chrono>
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <omp.h>
#include <time.h>
#include <vector>
using namespace std;

int main() {
  int n;
  int x;
  // cout << "X" << endl;
  cin >> x;
  // cout << "n" << endl;
  cin >> n;
  // int A[500];
  vector<int> A;

  for (int i = 0; i < n; i++) {
    int temp;
    cin >> temp;
    A.push_back(temp);
  }

  int NUM_THREADS = 2;
  omp_set_num_threads(NUM_THREADS);
  auto start = std::chrono::steady_clock::now();

  int found = -1;
#pragma omp parallel
  {
    int id = omp_get_thread_num();
    for (int i = id; i < n; i += 2) {
      if (A[i] == x) {
        found = i;
      }
      if (found >= 0) {
        break;
      }
    }
  }
  auto end = std::chrono::steady_clock::now();
  std::chrono::duration<double> elapsed_seconds = end - start;
  cout << "elapsed time:" << elapsed_seconds.count() << "s\n";

  if (found >= 0) {
    cout << "encontrado " << found << endl;
  } else {
    cout << "no encontrado" << endl;
  }
}
