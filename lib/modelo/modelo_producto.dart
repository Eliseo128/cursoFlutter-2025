import 'package:flutter/material.dart';

class Producto {
  final String imagen, titulo;
  final int id, cursos;
  final Color color;
  Producto({
    required this.imagen,
    required this.titulo,
    required this.cursos,
    required this.color,
    required this.id,
  });
}

List<Producto> productos = [
  Producto(
    id: 1,
    titulo: "Disenio Grafico",
    // imagen: "assets/imagenes/graphics.png", para android
    imagen: "/imagenes/graphics.png",
    color: const Color(0xFF71b8ff),
    cursos: 16,
  ),
  Producto(
    id: 2,
    titulo: "Programacion",
    // imagen: "assets/imagenes/programming.png", para android
    imagen: "/imagenes/programming.png",
    color: const Color(0xFFff6374),
    cursos: 22,
  ),
  Producto(
    id: 3,
    titulo: "Finanzas",
    // imagen: "assets/imagenes/finance.png", para android
    imagen: "/imagenes/finance.png",
    color: const Color(0xFFffaa5b),
    cursos: 15,
  ),
  Producto(
    id: 4,
    titulo: "UI/Ux design",
    // imagen: "assets/imagenes/ux.png", para android
    imagen: "/imagenes/ux.png",
    color: const Color(0xFF9ba0fc),
    cursos: 18,
  ),
];
