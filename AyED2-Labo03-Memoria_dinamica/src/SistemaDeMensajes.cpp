#include "SistemaDeMensajes.h"

// Completar...
SistemaDeMensajes::Proxy::Proxy(ConexionJugador** conn) : _conn(conn) {}

SistemaDeMensajes::SistemaDeMensajes():_proxys(){
    for(int i = 0; i < 4; i++){
        _conns[i] = nullptr;
    } 
}

SistemaDeMensajes::~SistemaDeMensajes(){
    for(int i = 0; i < 4; i++){
        delete _conns[i];
    } 
    for(int i = 0; i < _proxys.size(); i++){
        delete _proxys[i];
    } 
}

void SistemaDeMensajes::registrarJugador(int id, string ip){
    if(!(0 <= id && id < 4)){
        return;
    }
    if(registrado(id)){
        desregistrarJugador(id);
    }
    _conns[id] = new ConexionJugador(ip);
}

bool SistemaDeMensajes::registrado(int id) const{
    bool reg = false;
    if(0 <= id && id < 4){
        reg = _conns[id] != nullptr;
    }
    return reg;
}

void SistemaDeMensajes::enviarMensaje(int id, string mensaje){
    if(!registrado(id)){
        return;
    }
    _conns[id] -> enviarMensaje(mensaje);
}


string SistemaDeMensajes::ipJugador(int id) const{
    return _conns[id] -> ip();
}

void SistemaDeMensajes::desregistrarJugador(int id){
    delete _conns[id];
    _conns[id] = nullptr;
}

SistemaDeMensajes::Proxy* SistemaDeMensajes::obtenerProxy(int id){
    ConexionJugador** pp_conexion = new ConexionJugador*(_conns[id]);
    Proxy* p = new Proxy(pp_conexion);
    _proxys.push_back(p);
    return p;
}

void SistemaDeMensajes::Proxy::enviarMensaje(string msg) {
  (*_conn)->enviarMensaje(msg);
}

