import 'package:flutter/material.dart';
import 'package:myapp/pantallas/pantalla_bienvenida.dart';


void main() => runApp(const AppAprendizaje());

class AppAprendizaje extends StatelessWidget {
  const AppAprendizaje({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aprendiendo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PantallaBienvenida(),
    );
  }
}


