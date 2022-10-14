#include<string>

using namespace std;

// Ejercicio 1: Pasar a templates
template<class T>
T cuadrado(T x) {
  return x * x;
}

// Ejercicio 2: Pasar a templates
template<class Contenedor, class Elem>
bool contiene(Contenedor s, Elem c) {
  for (int i = 0; i < s.size(); i++) {
    if (s[i] == c) {
      return true;
    }
  }
  return false;
}

// Ejercicio 3: Funcion es prefijo con un template contenedor
template<class Contenedor>
bool esPrefijo(Contenedor a, Contenedor b){
    bool prefijo = a.size() < b.size(); 
    for(int i = 0; i < a.size(); i++){
        if(a[i]!=b[i]){
            prefijo=false;
        }
    }
    return prefijo;
}
// Ejercicio 4: Función maximo con un template contenedor y uno elemento
template<class Contenedor, class Elem>
Elem maximo(Contenedor c){
    Elem maximo = c[0];
    for(int i = 0; i < c.size(); i++){
        if(c[i]>maximo){
            maximo = c[i];
        }
    }
    return maximo;
}