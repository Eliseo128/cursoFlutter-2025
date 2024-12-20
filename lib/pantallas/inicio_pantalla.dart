import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
