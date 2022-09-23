#include "Lista.h"
#include "cassert"

Lista::Lista() : _primero(nullptr), _ultimo(nullptr) {}

Lista::Lista(const Lista &l) : Lista()
{
    // Inicializa una lista vacía y luego utiliza operator= para no duplicar el código de la copia de una lista.
    *this = l;
}

Lista::~Lista()
{

}

Lista &Lista::operator=(const Lista &aCopiar)
{
    Nodo* actual = _primero;
    while(actual != nullptr){
        Nodo* siguiente = actual -> siguiente;
        delete actual;
        actual = siguiente;
    }
    _primero = nullptr;
    _ultimo = nullptr;

    // Agregar los de la lista a copiar
    if(aCopiar.longitud() == 0){
        return *this;
    }
    Nodo* actual_a_copiar = aCopiar._primero;
    _primero = new Nodo(aCopiar._primero->valor, nullptr);
    _ultimo = _primero;

    while(actual_a_copiar != nullptr){
        agregarAtras(actual_a_copiar -> valor);
        actual_a_copiar = actual_a_copiar -> siguiente;
    }

    return *this;
}

void Lista::agregarAdelante(const int &elem)
{
    Nodo *nuevo = new Nodo(elem, _primero);
    if (longitud() != 0)
    {
        _primero->anterior = nuevo;
    }
    else
    {
        _ultimo = nuevo;
    }
    _primero = nuevo;
}

void Lista::agregarAtras(const int &elem)
{
    Nodo *nuevo = new Nodo(elem, nullptr);
    if (longitud() != 0)
    {
        _ultimo->siguiente = nuevo;
        nuevo ->anterior = _ultimo;
    }
    else
    {
        _primero = nuevo;
    }
    _ultimo = nuevo;
}

void Lista::eliminar(Nat i)
{
    Nodo *nodo_a_eliminar = _primero;
    for (int j = 0; j < i; j++)
    {
        nodo_a_eliminar = nodo_a_eliminar->siguiente;
    }

    if (nodo_a_eliminar->anterior == nullptr)
    {
        _primero = nodo_a_eliminar->siguiente;
    }else
    {
        nodo_a_eliminar->anterior->siguiente = nodo_a_eliminar->siguiente;
    }

    if (nodo_a_eliminar->siguiente == nullptr)
    {
        _ultimo = nodo_a_eliminar->anterior;
    }else
    {
        nodo_a_eliminar->siguiente->anterior = nodo_a_eliminar->anterior;
    }
    delete nodo_a_eliminar;
}

int Lista::longitud() const
{
    int longitud = 0;
    Nodo *actual = _primero;

    while (actual != nullptr)
    {
        actual = actual->siguiente;
        longitud++;
    }

    return longitud;
}

const int &Lista::iesimo(Nat i) const
{
    assert(0 <= i && i < longitud());

    Nodo *actual = _primero;
    for (int j = 0; j < i; i++)
    {
        actual = actual->siguiente;
    }

    return actual->valor;
}

int &Lista::iesimo(Nat i)
{
    assert(0 <= i && i < longitud());

    Nodo *actual = _primero;
    for (int j = 0; j < i; j++)
    {
        actual = actual->siguiente;
    }

    return actual->valor;
}

void Lista::mostrar(ostream &o)
{
    // Completar
}
