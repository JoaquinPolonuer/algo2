#ifndef ALGO2_LABO_CLASE5_ALGORITMOS_H
#define ALGO2_LABO_CLASE5_ALGORITMOS_H

#include <utility>
#include <iterator>
#include <vector>

// Completar con las funciones del enunciado
template <class Contenedor>
typename Contenedor::value_type minimo(const Contenedor &c){
    typename Contenedor::const_iterator minimo = c.begin();
    for(typename Contenedor::const_iterator it = c.begin(); it != c.end(); it++){
        if(*it < *minimo){
            minimo = it;
        }
    }
    return *minimo;
}

template <class Contenedor>
typename Contenedor::value_type promedio(const Contenedor &c){
    typename Contenedor::value_type suma = 0;
    double cantidad = 0; //Medio feo
    for(typename Contenedor::const_iterator it = c.begin(); it!=c.end(); it++){
        suma += *it;
        cantidad++;
    }
    return suma/cantidad;
}

template<class Iterator>
typename Iterator::value_type minimoIter(const Iterator &desde, const Iterator &hasta){
    Iterator minimo = desde;
    for(Iterator it = desde; it!=hasta; it++){
        if(*it < *minimo){
            minimo = it;
        }
    }
    return *minimo;
}

template<class Iterator>
typename Iterator::value_type promedioIter(const Iterator &desde, const Iterator &hasta){
    typename Iterator::value_type suma = 0;
    double cantidad = 0;
    for(Iterator it = desde; it!=hasta; it++){
        suma += *it;
        cantidad++;
    }
    return suma/cantidad;
}

template <class Contenedor>
void filtrar(Contenedor &c, const typename Contenedor::value_type &elem){
    for(typename Contenedor::iterator it = c.begin(); it != c.end(); it++){
        if(*it==elem){
            it = c.erase(it);
            it--;
        }
    }
}

template <class Contenedor>
bool ordenado(Contenedor &c){
    bool ordenado = true;
    typename Contenedor::const_iterator it = c.begin();
    typename Contenedor::value_type ultimo = *it;
    it++;
    
    for(it; it!= c.end(); it++){
        if(*it <= ultimo){
            ordenado=false;
        }
        ultimo = *it;
    }
    return ordenado;
}

template <class Contenedor>
std::pair<Contenedor, Contenedor> split(const Contenedor &c, const typename Contenedor::value_type &elem){
    Contenedor mayores;
    Contenedor menores;

    for(typename Contenedor::const_iterator it = c.begin(); it!=c.end(); it++){
        if(*it<elem){
            menores.insert(menores.end(), *it);
        }else{
            mayores.insert(mayores.end(), *it);
        }
    }

    return make_pair(menores, mayores);
}

template <class Contenedor>
void merge(const Contenedor& c1, const Contenedor & c2, Contenedor & res){
    typename Contenedor::const_iterator it1 = c1.begin();
    typename Contenedor::const_iterator it2 = c2.begin();
    
    while(it1 != c1.end() || it2 != c2.end()){
        if(it2 == c2.end() || (it1 != c1.end() && *it1 < *it2)){
            res.insert(res.end(), *it1);
            it1++;
        }else{
            res.insert(res.end(), *it2);
            it2++;
        }
    }

}


#endif // ALGO2_LABO_CLASE5_ALGORITMOS_H
