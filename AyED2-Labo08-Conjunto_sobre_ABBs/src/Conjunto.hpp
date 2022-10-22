template <class T>
Conjunto<T>::Conjunto() : _raiz(nullptr), _cardinal(0)
{
}

template <class T>
Conjunto<T>::~Conjunto()
{
    while(_raiz != nullptr){
        remover(_raiz->valor);
    }
}

template <class T>
bool Conjunto<T>::pertenece(const T &clave) const
{
    Nodo *actual = _raiz;
    while (actual != nullptr && actual->valor != clave)
    {
        if (actual->valor < clave)
        {
            actual = actual->der;
        }
        else
        {
            actual = actual->izq;
        }
    }

    return actual != nullptr;
}

template <class T>
void Conjunto<T>::insertar(const T &clave)
{
    Nodo **actual = &_raiz;
    Nodo *padre = nullptr;

    while (*actual != nullptr && (*actual)->valor != clave)
    {
        padre = *actual;
        if ((*actual)->valor < clave)
        {
            actual = &(*actual)->der;
        }
        else
        {
            actual = &(*actual)->izq;
        }
    }

    if (*actual == nullptr)
    {
        *actual = new Nodo(clave);
        (*actual)->padre = padre;
        _cardinal += 1;
    }
}

template <class T>
void Conjunto<T>::remover(const T &clave)
{
    Nodo **actual = &_raiz;
    Nodo *padre = nullptr;

    while ((*actual)->valor != clave)
    {
        padre = *actual;
        if ((*actual)->valor < clave)
        {
            actual = &(*actual)->der;
        }
        else
        {
            actual = &(*actual)->izq;
        }
    }

    _removerNodo(actual);
    _cardinal--;
}

template <class T>
const T &Conjunto<T>::siguiente(const T &clave) const
{
    Nodo *actual = _obtenerNodo(clave);
    return _nodoSiguiente(actual)->valor;
}

template <class T>
const T &Conjunto<T>::minimo() const
{
    return _minimo(_raiz)->valor;
}

template <class T>
const T &Conjunto<T>::maximo() const
{
    return _maximo(_raiz)->valor;
}

template <class T>
unsigned int Conjunto<T>::cardinal() const
{
    return _cardinal;
}

template <class T>
void Conjunto<T>::mostrar(std::ostream &) const
{
    T actual = minimo();
    for (int i = 0; i < cardinal() - 1; i++)
    {
        cout << actual << " ";
        actual = siguiente(actual);
    }
}

template <class T>
void Conjunto<T>::_removerNodo(Nodo **actual)
{
    if ((*actual)->der != nullptr && (*actual)->izq != nullptr)
    {
        Nodo **sucesorInmediato = &(*actual)->der;
        while ((*sucesorInmediato)->izq != nullptr)
        {
            sucesorInmediato = &(*sucesorInmediato)->izq;
        }
        (*actual)->valor = (*sucesorInmediato)->valor;
        _removerNodo(sucesorInmediato);
    }
    else if ((*actual)->der != nullptr)
    {
        Nodo *aEliminar = *actual;
        *actual = (*actual)->der;
        delete aEliminar;
    }
    else
    {
        Nodo *aEliminar = *actual;
        *actual = (*actual)->izq;
        delete aEliminar;
    }
}

template <class T>
typename Conjunto<T>::Nodo *Conjunto<T>::_minimo(Nodo *raiz) const
{
    if (raiz->izq == nullptr)
    {
        return raiz;
    }
    else
    {
        _minimo(raiz->izq);
    }
}

template <class T>
typename Conjunto<T>::Nodo *Conjunto<T>::_maximo(Nodo *raiz) const
{
    if (raiz->der == nullptr)
    {
        return raiz;
    }
    else
    {
        _maximo(raiz->der);
    }
}

template <class T>
typename Conjunto<T>::Nodo *Conjunto<T>::_nodoSiguiente(Nodo *actual) const
{
    if (actual->der != nullptr)
    {
        return _minimo(actual->der);
    }
    else
    {
        while (actual->padre->izq != actual)
        {
            actual = actual->padre;
        }
        return actual->padre;
    }
}

template <class T>
typename Conjunto<T>::Nodo *Conjunto<T>::_obtenerNodo(const T &clave) const
{
    Nodo *actual = _raiz;
    while (actual->valor != clave)
    {
        if (actual->valor < clave)
        {
            actual = actual->der;
        }
        else
        {
            actual = actual->izq;
        }
    }
    return actual;
}