import 'package:ejercicio2/class/gestor_suscripciones.dart';
import 'package:ejercicio2/class/suscripcion.dart';
import 'package:ejercicio2/components/descripcion_component.dart';
import 'package:ejercicio2/components/input_component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GestorSuscripciones gestor = GestorSuscripciones();
  final TextEditingController descripcionController = TextEditingController(); 
  final TextEditingController precioController = TextEditingController();
  void eliminarSuscripcion(int index){
    
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputComponent(
          descripcionController: descripcionController,
          precioController: precioController,
          agregarSuscripcion: (){
            final String descripcion = descripcionController.text;
            final double precio = double.parse(precioController.text);
            if(descripcion.isNotEmpty){
              setState(() {
                gestor.agregarSuscripcion(Suscripcion(descripcion: descripcion, precioMensual: precio));
                descripcionController.clear();
                precioController.clear();
              });
            }
          },
        ), 
        SizedBox(height: 16,),
        DescripcionComponent(
          gestor: gestor, 
          delete: (index){
            setState(() {
            gestor.eliminarSuscripcion(index);
            });
          },),
      ],
    );
  }
}