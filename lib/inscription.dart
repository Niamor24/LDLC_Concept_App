import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  Inscription({super.key});
  @override
  State<Inscription> createState() => _Inscription();
}

class _Inscription extends State<Inscription> {
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 81, 147),
    );
  }
}
