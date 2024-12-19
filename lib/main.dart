import 'package:flutter/material.dart';
import 'fichaproducto.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:884209073.
void main() => runApp(const AppProducto());

class AppProducto extends StatelessWidget {
  const AppProducto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicacion producto',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FichaProducto(
          nombre: 'Producto ejemplo',
          descripcion: 'Breve descripcion del producto',
          precio: 21,
          imagen: 'producto.png'),
    );
  }
}
