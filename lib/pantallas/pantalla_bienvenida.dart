import 'package:flutter/material.dart';

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    )),
                child: Column(
                  children: [
                    Expanded(
                        child: Image.asset("/imagenes/flutterappmobile.png"))
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                    color: Colors.blue,
                    child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              const Spacer(),
                              const Text(
                                "Aprendiendo todo",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ), // TextStyle
                              ), //texto
                              const Spacer(),
                              const Text(
                                "¡Aprende con placer con nosotros, donde quiera que estés!",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 2.5,
                                  height: 1.5,
                                ),
                              ),
                              const Spacer(
                                flex: 3,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MaterialButton(
                                      height: 60,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      color: Colors.pinkAccent,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const PantallaBienvenida()));
                                      }, //onpressed
                                      child: const Text(
                                        "Empezar",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white), // TextStyle
                                      ), //texto
                                    ),
                                  ] // fila childrens
                                  ),
                            ], //children columna
                          ),
                        )))),
          ],
        ),
      ),
    );
  } // widget
}// clase PantallaBienvenida