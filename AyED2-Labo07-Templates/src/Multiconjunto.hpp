#ifndef MULTICONJUNTO
#define MULTICONJUNTO

#include <vector>
#include "Diccionario.hpp"

template<class T>
class Multiconjunto {
public:
	Multiconjunto();
    void agregar(T elem);
    int ocurrencias(T elem) const;
	
private:
    Diccionario<T, int> _elementos;
};

template<class T>
Multiconjunto<T>::Multiconjunto():_elementos() {
}

template<class T>
void Multiconjunto<T>::agregar(T e) {
    if(!_elementos.def(e)){
        _elementos.definir(e, 1);
    }else{
        _elementos.definir(e, _elementos.obtener(e) + 1);
    }
}

template<class T>
int Multiconjunto<T>::ocurrencias(T e) const {
    if(!_elementos.def(e)){
        return 0;
    }
    return _elementos.obtener(e);
}

#endif /*MULTICONJUNTO*/
