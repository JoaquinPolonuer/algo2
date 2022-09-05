#include <utility>
#include <iostream>

using namespace std;

// Ejercicio 15

// Juego

using Pos = pair<int, int>;

char ARRIBA = '^';
char ABAJO = 'v';
char DERECHA = '<';
char IZQUIERDA = '>';

class Juego
{
public:
  Juego(uint casilleros, Pos pos_inicial);
  Pos posicion_jugador();
  uint turno_actual();
  void mover_jugador(char dir);
  void ingerir_pocion(uint movimientos, uint turnos);

private:
  uint _casilleros;
  Pos _pos;
  uint _turno;
};

Juego::Juego(uint casilleros, Pos pos_inicial) : _casilleros(casilleros), _pos(pos_inicial), _turno(0) {}

Pos Juego::posicion_jugador()
{
  return _pos;
}

uint Juego::turno_actual()
{
  return _turno;
}
void Juego::mover_jugador(char dir)
{
  if(dir == DERECHA && posicion_jugador().second < _casilleros){
    _pos.second++;
  }else if(dir == IZQUIERDA && 0 < posicion_jugador().second){
    _pos.second--;
  }else if(dir == ARRIBA && 0 < posicion_jugador().first){
    _pos.first--;
  }else if(dir == ABAJO && posicion_jugador().first < _casilleros){
    _pos.first++;
  }
}
void Juego::ingerir_pocion(uint movimientos, uint turnos)
{
}
