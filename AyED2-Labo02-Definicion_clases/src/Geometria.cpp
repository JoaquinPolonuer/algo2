#include <iostream>

using namespace std;

using uint = unsigned int;

// Ejercicio 1

class Rectangulo {
    public:
        Rectangulo(uint alto, uint ancho);
        uint alto();
        uint ancho();
        float area();

    private:
        int _alto;
        int _ancho;

};

//CONSULTA: Aca podria usar una lista de inicializacion?
Rectangulo::Rectangulo(uint alto, uint ancho) {
    _ancho = ancho;
    _alto = alto;
};

uint Rectangulo::alto() {
    return _alto;
}

// Completar definición: ancho
uint Rectangulo::ancho() {
    return _ancho;
}

// Completar definición: area
float Rectangulo::area() {
    return _alto*_ancho;
}
// Ejercicio 2
// Clase Elipse
class Elipse {
    public:
        Elipse(uint a, uint b);
        uint r_a();
        uint r_b();
        float area();

    private:
        int _a;
        int _b;
        float PI = 3.14; // CONSULTA: esto es legal?

};
Elipse::Elipse(uint a, uint b) {
    _a = a;
    _b = b;
};

uint Elipse::r_a() {
    return _a;
}

// Completar definición: ancho
uint Elipse::r_b() {
    return _b;
}

// Completar definición: area
float Elipse::area() {
    //Aca deberiamos usar la funcion r_a o _a
    return PI*_a*_b;
}
// Ejercicio 3

class Cuadrado {
    public:
        Cuadrado(uint lado);
        uint lado();
        float area();

    private:
        Rectangulo _r;
};

Cuadrado::Cuadrado(uint lado): _r(lado, lado) {}

uint Cuadrado::lado() {
    return _r.alto();
}

float Cuadrado::area() {
    return _r.area();
}

// Ejercicio 4

// Clase Circulo
class Circulo {
    public:
        Circulo(uint radio);
        uint radio();
        float area();

    private:
        Elipse _e;
};

// NOTA: los dos puntos marcan la lista de inicializacion
// Ahi llamamos a los constructores que queremos
Circulo::Circulo(uint radio): _e(radio, radio) {}

uint Circulo::radio() {
    return _e.r_a();
}

float Circulo::area() {
    return _e.area();
}

// Ejercicio 5

ostream& operator<<(ostream& os, Rectangulo r) {
    os << "Rect(" << r.alto() << ", " << r.ancho() << ")";
    return os;
}

// ostream Elipse
ostream& operator<<(ostream& os, Elipse e) {
    os << "Elipse(" << e.r_a() << ", " << e.r_b() << ")";
    return os;
}
// Ejercicio 6
ostream& operator<<(ostream& os, Cuadrado c) {
    os << "Cuad(" << c.lado() << ")";
    return os;
}
ostream& operator<<(ostream& os, Circulo c) {
    os << "Circ(" << c.radio() << ")";
    return os;
}
