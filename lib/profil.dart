import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  Profil({super.key});
  @override
  State<Profil> createState() => _Profil();
}

class _Profil extends State<Profil> {
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF103f86),
      body: Container(
        child: Text('Profil'),
      ),
    );
  }
}
