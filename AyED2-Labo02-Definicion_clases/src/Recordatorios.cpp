#include <iostream>
#include <list>


using namespace std;

using uint = unsigned int;

// Pre: 0 <= mes < 12
uint dias_en_mes(uint mes)
{
  uint dias[] = {
      // ene, feb, mar, abr, may, jun
      31, 28, 31, 30, 31, 30,
      // jul, ago, sep, oct, nov, dic
      31, 31, 30, 31, 30, 31};
  return dias[mes - 1];
}

// Ejercicio 7, 8, 9 y 10

// Clase Fecha
class Fecha
{
public:
  // Completar declaraciones funciones
  Fecha(int mes, int dia);
  int mes();
  int dia();
  void incrementar_dia();

#if EJ >= 9 // Para ejercicio 9
  bool operator==(Fecha o);
#endif

private:
  int _mes;
  int _dia;
};

int Fecha::dia()
{
  return _dia;
}
int Fecha::mes()
{
  return _mes;
}

void Fecha::incrementar_dia()
{
  bool al_limite = _dia == dias_en_mes(_mes);
  if (!al_limite)
  {
    _dia++;
  }
  else
  {
    _mes++;
    _dia = 1;
  }
}

Fecha::Fecha(int mes, int dia) : _mes(mes), _dia(dia) {}

ostream &operator<<(ostream &os, Fecha f)
{
  os << f.dia() << "/" << f.mes();
  return os;
}

#if EJ >= 9
bool Fecha::operator==(Fecha o)
{
  bool igual_dia = this->dia() == o.dia();
  bool igual_mes = this->mes() == o.mes();

  return igual_dia && igual_mes;
}
#endif

// Ejercicio 11, 12

// Clase Horario

class Horario
{
public:
  Horario(uint hora, uint minutos);
  uint hora();
  uint min();
  bool operator==(Horario o);
  bool operator<(Horario h);

private:
  uint _hora;
  uint _min;
};

Horario::Horario(uint hora, uint min) : _hora(hora), _min(min) {}

uint Horario::hora()
{
  return _hora;
}
uint Horario::min()
{
  return _min;
}

ostream &operator<<(ostream &os, Horario h)
{
  os << h.hora() << ":" << h.min();
  return os;
}

bool Horario::operator==(Horario h)
{
  bool igual_hora = this->hora() == h.hora();
  bool igual_min = this->min() == h.min();

  return igual_hora && igual_min;
}

bool Horario::operator<(Horario h)
{
  bool menor_hora = this->hora() < h.hora();
  if (menor_hora)
  {
    return true;
  }
  else
  {
    return this->min() < h.min();
  }
}

// Ejercicio 13
// Clase Recordatorio
class Recordatorio
{
public:
  Recordatorio(Fecha f, Horario h, string m);
  Fecha f();
  Horario h();
  string m();
  bool operator<(Recordatorio r);


private:
  Fecha _f;
  Horario _h;
  string _m;
};

Recordatorio::Recordatorio(Fecha f, Horario h, string m) : _f(f), _h(h), _m(m) {}

Fecha Recordatorio::f()
{
  return _f;
}

Horario Recordatorio::h()
{
  return _h;
}
string Recordatorio::m()
{
  return _m;
}

ostream &operator<<(ostream &os, Recordatorio r)
{
  os << r.m() << " @ " << r.f() << " " << r.h();
  return os;
}

// CONSULTA: Se que no es una linda solucion, pero esta mal?
// No encontre otra manera de devolver los recordatorios por horario
bool Recordatorio::operator<(Recordatorio r)
{
  return this -> h() < r.h();
}


// Ejercicio 14
// Clase Agenda
class Agenda
{
public:
  Agenda(Fecha fecha_inicial);
  void agregar_recordatorio(Recordatorio rec);
  void incrementar_dia();
  list<Recordatorio> recordatorios_de_hoy();
  Fecha hoy();

private:
  Fecha _fecha;
  list<Recordatorio> _recordatorios;
};

Agenda::Agenda(Fecha fecha_inicial) : _fecha(fecha_inicial), _recordatorios(){}

Fecha Agenda::hoy(){
  return _fecha;
}

void Agenda::agregar_recordatorio(Recordatorio rec){
  _recordatorios.push_back(rec);
}

void Agenda::incrementar_dia(){
  _fecha.incrementar_dia();
}

list<Recordatorio> Agenda::recordatorios_de_hoy(){
  list<Recordatorio> rdh;
  for(Recordatorio r : _recordatorios){
    if (r.f() == _fecha){
      rdh.push_back(r);
    }
  }
  return rdh;
}

ostream &operator<<(ostream &os, Agenda a)
{
  list<Recordatorio> rdh = a.recordatorios_de_hoy();
  rdh.sort();

  os << a.hoy() << "\n";
  os << "=====" << "\n";
  for(Recordatorio r : rdh ){
    os << r << "\n";
  }
  return os;
}