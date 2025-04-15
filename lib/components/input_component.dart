import 'package:flutter/material.dart';

class InputComponent extends StatefulWidget {
  final TextEditingController descripcionController;
  final TextEditingController precioController;
  Function() agregarSuscripcion;
  InputComponent({super.key, required this.descripcionController, required this.precioController, required this.agregarSuscripcion});

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: widget.descripcionController,
            decoration: InputDecoration(
              labelText: "Descripcion",
              border: OutlineInputBorder()),
          ),
        ), 
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: widget.precioController,
            keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(
              labelText: "Precio mensual",
              border: OutlineInputBorder()),
          ),
        ),
        ElevatedButton(
          onPressed: widget.agregarSuscripcion,
          child: Text("Agregar"))
      ],
    );
  }
}