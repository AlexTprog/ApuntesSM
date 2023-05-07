// librerias de C
#include <algorithm>
#include <chrono>
#include <cmath>
#include <iostream>
#include <list>
#include <locale>
#include <math.h>
#include <string>

using namespace std;
using std::to_string;
using std::tolower;

// retorna el valor del primer digito de un decimal 4.999 -> 9
int roundAux(double a) {
  int res = 0;
  int r = trunc(a * 10);
  res = r % 10;
  return res;
}

// Limpia espacios en blanco
void removeBlanks(string &s) {
  s.erase(remove_if(s.begin(), s.end(), ::isspace), s.end());
}

// retorna prioridad de operadores
int getPriority(char opc) {
  int p = 99;
  if (opc == '^' || opc == 'r' || opc == 'l')
    p = 5;
  if (opc == '*' || opc == '/')
    p = 4;
  if (opc == '+' || opc == '-')
    p = 3;
  return p;
}
// convierte una cadena a minusculas

string toLowerCase(string str) {
  for (int i = 0; i < str.size(); i++) {
    str[i] = tolower(str[i]);
  }
  return str;
}

// invierte una cadena
string reverse(string const &s) {
  string rev;
  for (int i = s.size() - 1; i >= 0; i--) {
    rev = rev.append(1, s[i]);
  }
  return rev;
}

// elimina los parentesis de una cadena
string cleanParenthesis(string a) {
  int cpar = 2;
  string newstr;
  for (int i = 0; i < a.size(); i++) {
    if (cpar > 0 && (a[i] == '(' || a[i] == ')')) {
      cpar--;
      continue;
    }
    newstr.push_back(a[i]);
  }
  return newstr;
}

// retorna el siguiente numero de una cadena
string getNextNumber(string function, double x) {
  string s = "";
  // Pido perdon
  while ((function.size() > 0) &&
         (isdigit(function.back()) || function.back() == '.' ||
          function.back() == 'x')) {
    if (function.back() == 'x') {
      s += to_string(x);
      function.pop_back();
      return s;
    }
    s += function.back();
    function.pop_back();
  }
  s = reverse(s);
  return s;
}

// Si es un numero busca todas sus cifra e inserta
void toPolishNotation(string &func, list<string> &np, double x) {
  func = toLowerCase(func);
  removeBlanks(func);
  // Numero de parentesis encontrados
  int nParenthesis = 0;
  // Posicion del operador con mayor prioridad
  int pos = 0;
  int priority = 99;

  string izq;
  string der;
  // string auxiliar para convertir de char a string
  string str;

  for (int i = 0; i < func.size(); i++) {
    // Ignora parentesis y su contenido
    if (func[i] == '(') {
      nParenthesis++;
      continue;
    }
    if (func[i] == ')') {
      nParenthesis--;
      continue;
    }
    if (nParenthesis > 0) {
      continue;
    }
    // Detecta si es un numero u operador
    if (getPriority(func[i]) < priority) {
      priority = getPriority(func[i]);
      pos = i;
    }
  }

  // Si es un numero busca todas sus cifra e inserta
  if (getPriority(func[pos]) == 99) {
    np.push_back(getNextNumber(func, x));
    // elimina numero completo de la funcion
    while (func.size() > 0 && getPriority(func.back()) == 99) {
      func.pop_back();
    }
  } else { // si es un operador solo inserta
    str.push_back(func[pos]);
    np.push_back(str);
  }

  // Repetira que quede vacio
  if (func.size() > 1) {
    // divide funcion en dos , medio = operador con mayor prioridad
    izq = cleanParenthesis(func.substr(0, pos));
    der = cleanParenthesis(func.substr(pos + 1, func.size() - pos));
    toPolishNotation(izq, np, x);
    toPolishNotation(der, np, x);
  }
}

// calcula el resultado de una operacion
double calculate(string op, double a, double b) {
  char opc = op[0];
  double res = 0;
  double x = a;
  double y = b;
  switch (opc) {
  case '+':
    res = x + y;
    break;
  case '-':
    res = x - y;
    break;
  case '*':
    res = x * y;
    break;
  case '/':
    res = x / y;
    break;
  case '^':
    res = pow(x, y);
    break;
  case 'r':
    res = pow(x, 1 / y);
    break;
  case 'l':
    res = log(y) / log(x);
    break;
  }
  return res;
}

// calcula el resultado de una funcion
double solveEquation(list<string> &npolaca) {
  double n1, n2;
  // Recorre lista
  for (list<string>::iterator it = npolaca.begin(); it != npolaca.end(); ++it) {
    // Guarda valor elemento para obtener prioridad
    string str = *it;
    // Posicion de memoria del elemento
    list<string>::iterator temp = it;
    // Repite hasta lista tenga 1 elemento
    if (npolaca.size() == 1) {
      break;
    }
    // Si es un operador busca en las 2 posiciones siguientes
    if (getPriority(str[0]) != 99) {
      // Si encuentra 2 numeros despues del operador realiza operacion
      try {
        ++temp;
        n1 = stod(*temp);
        ++temp;
        n2 = stod(*temp);
        // Inserta resultado
        npolaca.insert(it, to_string(calculate(str, n1, n2)));
        // Borra elementos utilizados en la operacion
        npolaca.erase(it, temp);
        npolaca.erase(temp);
        // Regresa el contador al inicio de la lista
        it = npolaca.end();
      } catch (const std::exception &e) {
        // No hace nada
      }
    }
  }
  return stod(npolaca.front());
}

// calcula el resultado de una integral
double solveIntegral(string funcion, double a, double b) {
  list<string> polacaA, PolacaB;
  double result = 0;
  toPolishNotation(funcion, polacaA, a);
  toPolishNotation(funcion, PolacaB, b);
  double fa = solveEquation(polacaA);
  double fb = solveEquation(PolacaB);
  result = double(b - a) * ((fa + fb) / 2); //(b-a)*((f(a)+f(b))/2)
  return result;
}

// calcula el resultado de una integral por el metodo de trapecio
double solveByTrapezoidMethod(string function, double n, double a, double b) {
  double intevalo = (b - a) / n;
  double result = 0;
  double inf = a;
  double sup;
  // 9,3 9,4 9,5
  do {
    sup = inf + intevalo;
    if (sup > b) {
      result += (double)solveIntegral(function, inf, b);
      break;
    }
    result += (double)solveIntegral(function, inf, sup);
    inf = inf + intevalo;
  } while (inf < b);

  return result;
}

// calcula el error de una integral
double calculateError(string function, double n, double a, double b) {
  double e = 0;
  double x = solveByTrapezoidMethod(function, n + 1, a, b); // g(n+1)
  double y = solveByTrapezoidMethod(function, n, a, b);     // g(n)
  e = abs(x - y);
  return e;
}

int main() {
  // No admite espacios en blanco
  string f;
  double a;
  double b;
  double error_deseado;
  double error_actual = 1;
  double n = 0;

  cin >> a;
  cin >> b;
  cin >> error_deseado;
  cin >> f;

  // // remueve espaciones en blanco

  do {
    n++;
    error_actual = calculateError(f, n, a, b);
  } while (error_actual > error_deseado);

  cout << solveByTrapezoidMethod(f, n, a, b) << endl;
  cout << n << endl;

  return 0;
}