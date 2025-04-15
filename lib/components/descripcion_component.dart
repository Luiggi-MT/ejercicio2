import 'package:ejercicio2/class/gestor_suscripciones.dart';
import 'package:ejercicio2/class/suscripcion.dart';
import 'package:flutter/material.dart';

class DescripcionComponent extends StatefulWidget {
  final GestorSuscripciones gestor; 
  final Function(int) delete;
  const DescripcionComponent({super.key, required this.gestor, required this.delete});

  @override
  State<DescripcionComponent> createState() => _DescripcionComponentState();
}

class _DescripcionComponentState extends State<DescripcionComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Total mensual: ",
         style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
         ),
        ),
        Text(widget.gestor.obtenerTotalMensual().toStringAsFixed(2),
          style: TextStyle(
            fontSize: 40, 
          fontWeight: FontWeight.bold
          ),
        ), 
        ListView.builder(
          shrinkWrap: true,
          itemCount: widget.gestor.suscripciones.length,
          itemBuilder: (context, index){
            final Suscripcion suscripcion = widget.gestor.suscripciones[index];
            return ListTile(
              title: Text(suscripcion.descripcion),
              subtitle: Text(suscripcion.precioMensual.toStringAsFixed(2)),
              trailing: IconButton(
                onPressed: () => widget.delete(index),
                icon: Icon(Icons.delete)),
              

            );
          },
        ),
      ],
    );
  }
}