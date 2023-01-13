import 'package:flutter/material.dart';

class Mapss extends StatefulWidget {
  Mapss({super.key});
  @override
  State<Mapss> createState() => _Mapss();
}

class _Mapss extends State<Mapss> {
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF103f86),
      body: Container(
        child: Text('map'),
      ),
    );
  }
}
