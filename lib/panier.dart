import 'package:flutter/material.dart';

class Panier extends StatefulWidget {
  Panier({super.key});
  @override
  State<Panier> createState() => _Panier();
}

class _Panier extends State<Panier> {
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF103f86),
      body: Container(
        child: Text('Panier'),
      ),
    );
  }
}
