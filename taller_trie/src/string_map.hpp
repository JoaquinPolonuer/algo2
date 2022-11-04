template <typename T>
string_map<T>::string_map(): raiz(nullptr), _size(0) {}

template <typename T>
string_map<T>::string_map(const string_map<T>& aCopiar) : string_map() { *this = aCopiar; } // Provisto por la catedra: utiliza el operador asignacion para realizar la copia.

template <typename T>
string_map<T>& string_map<T>::operator=(const string_map<T>& d) {
    string_map<T> copia = string_map();
    return copia;
}

template <typename T>
string_map<T>::~string_map(){
    // COMPLETAR
}

template <typename T>
T& string_map<T>::operator[](const string& clave){
    return this -> at(clave);
}

template <typename T>
void string_map<T>::insert(const pair<string, T>& p){
    string clave = p.first;
    T valor = p.second;

    int i = 0;
    Nodo** actual = &raiz;
    if(*actual == nullptr){
        *actual = new Nodo(); 
    }
    while(i < clave.size() && (*actual) -> siguientes[int(clave[i])] != nullptr){
        actual = &(*actual) -> siguientes[int(clave[i])];
        i++;
    }
    while(i < clave.size()){
        (*actual) -> siguientes[int(clave[i])] = new Nodo();
        actual = &(*actual) -> siguientes[int(clave[i])];
        i++;
    }

    (*actual) -> definicion = &valor;
    _size++;
}

template <typename T>
int string_map<T>::count(const string& clave) const{
    Nodo* actual = raiz;

    for(int i = 0; i < clave.size() && actual != nullptr; i++){
        actual = actual -> siguientes[int(clave[i])];
    }

    if(actual == nullptr){
        return 0;
    }
    return 1;
}

template <typename T>
const T& string_map<T>::at(const string& clave) const {
    Nodo* actual = raiz;

    for(int i = 0; i < clave.size(); i++){
        actual = actual -> siguientes[int(clave[i])];
    }

    return *(actual -> definicion);
}

template <typename T>
T& string_map<T>::at(const string& clave) {
    Nodo* actual = raiz;

    for(int i = 0; i < clave.size(); i++){
        actual = actual -> siguientes[int(clave[i])];
    }

    return *(actual -> definicion);
}

template <typename T>
void string_map<T>::erase(const string& clave) {
}

template <typename T>
int string_map<T>::size() const{
    return _size;
}

template <typename T>
bool string_map<T>::empty() const{
    return this -> raiz == nullptr;
}

template <typename T>
int string_map<T>::cantidad_de_hijos(Nodo* nodo){
    int cant = 0;
    vector<Nodo*> sigs = nodo -> siguientes;
    for(int i = 0; i < sigs.size(); i++){
        if(sigs[i] != nullptr){
            cant++;
        }
    }
}

// Falta hacer:
// Borrar clave
// Destructor
// Constructor por igual
// Empty
// Pasar los tests