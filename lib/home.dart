import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: _h,
        width: _w,
        child: Row(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
