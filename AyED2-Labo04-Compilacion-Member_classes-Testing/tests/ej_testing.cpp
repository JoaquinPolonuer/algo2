#include "gtest-1.8.1/gtest.h"
#include "../src/Libreta.h"
#include "../src/Truco.h"
#include <map>
#include <cmath>

using namespace std;

// Ejercicio 4
TEST(Aritmetica, suma) {
    int suma = 15+7;
    EXPECT_EQ(suma, 22);
}

// Ejercicio 5
TEST(Aritmetica, potencia) {
    EXPECT_EQ(pow(10, 2), 100);
}

// Ejercicios 6..9
TEST(Aritmetica, potencia_general) {
    for(int n = -5; n < 6; n++){
        EXPECT_EQ(pow(n, 2), n*n);
    }
}

TEST(Diccionario, obtener) {
    map<int, int> dicc;
    dicc[1] = 2;
    EXPECT_EQ(dicc[1], 2);
}

TEST(Diccionario, definir) {
    map<int, int> dicc;
    EXPECT_EQ(dicc.count(1), 0);
    dicc[1] = 2;
    EXPECT_EQ(dicc.count(1), 1);
}


TEST(Truco, inicio) {
    Truco t;
    EXPECT_EQ(t.puntaje_j1(), 0);
    EXPECT_EQ(t.puntaje_j2(), 0);
}

TEST(Truco, buenas) {
    Truco t;
    EXPECT_FALSE(t.buenas(1));
    for(int i = 0; i < 15; i++){
        t.sumar_punto(1);
    }
    EXPECT_FALSE(t.buenas(1));
    t.sumar_punto(1);
    EXPECT_TRUE(t.buenas(1));
    t.sumar_punto(1);
    t.sumar_punto(1);
    EXPECT_TRUE(t.buenas(1));
}
