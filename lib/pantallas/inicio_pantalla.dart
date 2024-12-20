import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pantallas/componentes/appbar.dart';
import 'package:myapp/pantallas/componentes/categoria.dart';
import 'package:myapp/pantallas/componentes/clasificacion.dart';

class InicioPantalla extends StatefulWidget {
  const InicioPantalla({super.key});

  @override
  State<InicioPantalla> createState() => _InicioPantallaState();
}

class _InicioPantallaState extends State<InicioPantalla> {
  int _selecionaIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selecionaIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selecionaIndex = index;
        }),
        items: [
          BottomNavyBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Inicio'),
              activeColor: Colors.pinkAccent,
              inactiveColor: Colors.grey[300]),
          BottomNavyBarItem(
            icon: const Icon(Icons.favorite_rounded),
            title: const Text('Favorito'),
            inactiveColor: Colors.grey[300],
            activeColor: Colors.pinkAccent,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.message),
            title: const Text('Mensajes'),
            inactiveColor: Colors.grey[300],
            activeColor: Colors.pinkAccent,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Eliseo'),
            inactiveColor: Colors.grey[300],
            activeColor: Colors.pinkAccent,
          ),
        ],
      ),
      // ** body
      body: SafeArea(
          child: ListView(
        children: [
          const AppPersonalizado(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(children: [
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hola Eliseo",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hoy es un buen día\nPara aprender algo nuevo!",
                        style: TextStyle(
                          color: Colors.black54,
                          wordSpacing: 2.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ], // childrens Column
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Image.asset("/imagenes/perfil.png"),
                      ),
                    ],

                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // aqui me quede
                ], //childrens Row
              ),
              // aqui categoria
              const Distribucion(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Text(
                    "Categorias",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                InkWell(
                  onTap: () { },
                  child: const Text("Ver Todo",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                   
                  ),
                  ),


                )
                ], //childrens Row
              ),
              const SizedBox(
                height: 20,
              ),
              const ListaCategoria(),
              const SizedBox(
                height: 20,
              ),
            ] //child, childrens Column
                ),
          )
        ], //childrens ListViews
      )),
    );
  }
}
