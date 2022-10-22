#ifndef CONJUNTO_H_
#define CONJUNTO_H_

#include <assert.h>
#include <string>
#include <iostream>

using namespace std;

template <class T>
class Conjunto
{
public:
    // Constructor. Genera un conjunto vacío.
    Conjunto();

    // Destructor. Debe dejar limpia la memoria.
    ~Conjunto();

    // Inserta un elemento en el conjunto. Si este ya existe,
    // el conjunto no se modifica.
    void insertar(const T &);

    // Decide si un elemento pertenece al conjunto o no.
    bool pertenece(const T &) const;

    // Borra un elemento del conjunto. Si este no existe,
    // el conjunto no se modifica.
    void remover(const T &);

    // Siguiente elemento al recibido por párametro, en orden.
    // Pre: el elemento está en el conjunto y no es el máximo del conjunto.
    const T &siguiente(const T &elem) const;

    // Devuelve el mínimo elemento del conjunto según <.
    const T &minimo() const;

    // Devuelve el máximo elemento del conjunto según <.
    const T &maximo() const;

    // Devuelve la cantidad de elementos que tiene el conjunto.
    unsigned int cardinal() const;

    // Muestra el conjunto.
    void mostrar(std::ostream &) const;

private:
    /**
     * Completar con lo que sea necesario...
     **/

    struct Nodo
    {
        // El constructor, toma el elemento al que representa el nodo.
        Nodo(const T &v) : valor(v), izq(nullptr), der(nullptr), padre(nullptr) {}
        // El elemento al que representa el nodo.
        T valor;
        // Puntero a la raíz del subárbol izquierdo.
        Nodo* izq;
        // Puntero a la raíz del subárbol derecho.
        Nodo* der;
    
        Nodo* padre;
    };

    // Puntero a la raíz de nuestro árbol.
    Nodo *_raiz;
    unsigned int _cardinal;

    Nodo* _obtenerNodo(const T &clave) const;
    Nodo* _nodoSiguiente(Nodo* actual) const;
    Nodo* _minimo(Nodo* raiz) const;
    Nodo* _maximo(Nodo* raiz) const;
    void _removerNodo(Nodo** actual);

};

template <class T>
std::ostream &operator<<(std::ostream &os, const Conjunto<T> &c)
{
    c.mostrar(os);
    return os;
}

#include "Conjunto.hpp"

#endif // CONJUNTO_H_
