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

List<Producto> products = [
  Producto(
    id: 1,
    titulo: "Graphic Design",
    imagen: "assets/images/graphics.png",
    color: const Color(0xFF71b8ff),
    cursos: 16,
  ),
  Producto(
    id: 2,
    titulo: "Programming",
    imagen: "assets/images/programming.png",
    color: const Color(0xFFff6374),
    cursos: 22,
  ),
  Producto(
    id: 3,
    titulo: "Finance",
    imagen: "assets/images/finance.png",
    color: Color(0xFFffaa5b),
    cursos: 15,
  ),
  Producto(
    id: 4,
    titulo: "UI/Ux design",
    imagen: "assets/images/ux.png",
    color: Color(0xFF9ba0fc),
    cursos: 18,
  ),
];
