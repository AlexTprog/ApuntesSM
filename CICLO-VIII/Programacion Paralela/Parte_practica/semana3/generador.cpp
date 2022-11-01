#include <cstdlib>
#include <ctime>
#include <iostream>

using namespace std;

int main() {
  int n = 500;
std:
  srand(std::time(nullptr));
  while (n--)
    cout << std::rand() % 1000 << " ";
}