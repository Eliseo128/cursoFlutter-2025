import 'package:flutter/material.dart';

class FichaProducto extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final int precio;
  final String imagen;

  const FichaProducto(
      {super.key,
      required this.nombre,
      required this.descripcion,
      required this.precio,
      required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ficha del producto'),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          color: Colors.purple,
          height: 150,
          child: Row(
            children: <Widget>[
              // ignore: unnecessary_brace_in_string_interps
              Image.asset(
                "assets/imagenes/$imagen",
                width: 100,
                height: 200,
              ),
              Column(children: <Widget>[
                Text(nombre,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text(descripcion,
                    style: const TextStyle(fontSize: 15, color: Colors.white)),
                Text("Precio: $precio",
                    style: const TextStyle(fontSize: 15, color: Colors.white))
              ])
            ],
          )),
    );
  }
}
