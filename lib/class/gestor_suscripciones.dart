import 'package:ejercicio2/class/suscripcion.dart';

class GestorSuscripciones {
  List<Suscripcion> _suscripciones = [];

  List<Suscripcion> get suscripciones => _suscripciones;

  void agregarSuscripcion(Suscripcion suscripcion) {
    _suscripciones.add(suscripcion);
  }

  void eliminarSuscripcion(int index) {
    _suscripciones.removeAt(index);
  }

  double obtenerTotalMensual() {
    return _suscripciones.fold(0, (suma, s) => suma + s.precioMensual);
  }
}
