import 'package:flutter/material.dart';

class Distribucion extends StatelessWidget {
  const Distribucion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //space between widgets
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(10.0)),
          child: const Text(
            "Top",
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: const Text(
            "Design",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: const Text(
            "Marketing",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(height: 20, child: Image.asset("/iconos/sort.png")),
        ),
      ],
    );
  }
}
