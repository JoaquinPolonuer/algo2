#include <vector>
#include "algobot.h"

using namespace std;

int cant_apariciones(int n, vector<int> s)
{
    int cant = 0;
    for (int x : s)
    {
        if (x == n)
        {
            cant++;
        }
    }
    return cant;
}
// Ejercicio 1
vector<int> quitar_repetidos(vector<int> s)
{
    vector<int> s_sin_repetidos;
    for (int x : s)
    {
        if (cant_apariciones(x, s_sin_repetidos) == 0)
        {
            s_sin_repetidos.push_back(x);
        }
    }
    return s_sin_repetidos;
}

// Ejercicio 2
vector<int> quitar_repetidos_v2(vector<int> s)
{
    set<int> cs;
    vector<int> s_sin_repetidos;
    for (int x : s)
    {
        cs.insert(x);
    }
    for (int x : cs)
    {
        s_sin_repetidos.push_back(x);
    }
    return s_sin_repetidos;
}

// Ejercicio 3
bool mismos_elementos(vector<int> a, vector<int> b)
{
    // hecho en clase
    return true;
}

// Ejercicio 4
bool mismos_elementos_v2(vector<int> a, vector<int> b)
{
    // hecho en clase
    return true;
}

// Ejercicio 5
map<int, int> contar_apariciones(vector<int> s)
{
    map<int, int> cant_apariciones;
    for (int x : s)
    {
        cant_apariciones[x] = cant_apariciones[x] + 1;
    }
    return cant_apariciones;
}

// Ejercicio 6
vector<int> filtrar_repetidos(vector<int> s)
{
    vector<int> s_filtrado;
    for (int x : s)
    {
        if (cant_apariciones(x, s) == 1)
        {
            s_filtrado.push_back(x);
        }
    }
    return s_filtrado;
}

// Ejercicio 7
set<int> interseccion(set<int> a, set<int> b)
{
    set<int> interseccion;
    for (int x : a)
    {
        if (b.count(x))
        {
            interseccion.insert(x);
        }
    }
    return interseccion;
}

// Ejercicio 8
map<int, set<int>> agrupar_por_unidades(vector<int> s)
{
    map<int, set<int>> grupos;

    for (int x : s)
    {
        int clase = x % 10;
        grupos[clase].insert(x);
    }
    return grupos;
}

char traduccion(vector<pair<char, char>> tr, char c)
{
    char traduccion = c;
    for (pair<char, char> p : tr)
    {
        if (p.first == c)
        {
            traduccion = p.second;
        }
    }
    return traduccion;
}

// Ejercicio 9
vector<char> traducir(vector<pair<char, char>> tr, vector<char> str)
{
    for (int i = 0; i < str.size(); i++)
    {
        str[i] = traduccion(tr, str[i]);
    }
    return str;
}

// Ejercicio 10
bool integrantes_repetidos(vector<Mail> s)
{
    set<set<LU>> libretas_de_grupos;
    for(Mail g: s){
        libretas_de_grupos.insert(g.libretas());
    }

    set<LU> libretas;
    int cant_libretas = 0;
    for(set<LU> ls: libretas_de_grupos){
        for(LU l: ls){
            libretas.insert(l);
            cant_libretas++;
        }
    }
    bool repetidos = (cant_libretas != libretas.size());
    return repetidos;
}

// Ejercicio 11
map<set<LU>, Mail> entregas_finales(vector<Mail> s)
{   
    map<set<LU>, Mail> mejor_mail;
    for(Mail m : s){
        if(m.adjunto() && mejor_mail[m.libretas()].fecha() < m.fecha()){
            mejor_mail[m.libretas()] = m;
        }
    }
    return mejor_mail;
}
