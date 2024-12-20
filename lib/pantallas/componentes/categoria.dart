import 'package:flutter/material.dart';
import 'package:myapp/modelo/modelo_producto.dart';

class ListaCategoria extends StatelessWidget {
  const ListaCategoria({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: productos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.85),
        itemBuilder: (context, index) => TarjetaCategoria(
              producto: productos[index],
            ));
  }
}

class TarjetaCategoria extends StatelessWidget {
  const TarjetaCategoria({
    super.key,
    required this.producto,
  });
  final Producto producto;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: producto.color, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            Image.asset(
              producto.imagen,
              height: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              producto.titulo,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${producto.cursos} courses",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
