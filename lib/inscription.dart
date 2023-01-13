import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test_application_web/home.dart';
import 'package:test_application_web/main.dart';

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
      backgroundColor: Colors.white,
      body: Container(
        height: _h,
        width: _w,
        child: Column(
          children: [
            Container(
              height: _h * 0.12,
              width: _w,
              padding: const EdgeInsets.only(left: 20),
              decoration: const BoxDecoration(
                color: Color(0xFF103f86),
                image: DecorationImage(image: AssetImage('images/LDLCb.png')),
              ),
            ),
            Container(
              height: _h * 0.10,
              width: _w,
              padding: const EdgeInsets.only(top: 22),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 207, 205, 205),
                  ),
                ),
              ),
              child: const Text(
                'CREATION DE COMPTE',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: _h * 0.05,
              width: _w,
              padding: const EdgeInsets.only(top: 15),
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                  //color: Color.fromARGB(255, 187, 187, 187),
                  ),
              child: const Text(
                'VOS IDENTIFIANTS:',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: _h * 0.06,
              width: _w * 0.80,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: const Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                  top: BorderSide(width: 1.0, color: Colors.grey),
                  left: BorderSide(width: 1.0, color: Colors.grey),
                  right: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  border: InputBorder.none,
                  hintText: 'e-mail',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
              height: _h * 0.06,
              width: _w * 0.80,
              margin: const EdgeInsets.only(top: 13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: const Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                  top: BorderSide(width: 1.0, color: Colors.grey),
                  left: BorderSide(width: 1.0, color: Colors.grey),
                  right: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  border: InputBorder.none,
                  hintText: 'Mot de passe',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
              height: _h * 0.001,
              width: _w,
              margin: const EdgeInsets.only(top: 25),
              color: Colors.grey,
            ),
            Container(
              height: _h * 0.03,
              width: _w,
              margin: const EdgeInsets.only(top: 35),
              child: const Text(
                'VOS INFORMATIONS PERSONNELS:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: _h * 0.06,
              width: _w * 0.8,
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: const Border(
                    bottom: BorderSide(width: 1.0, color: Colors.grey),
                    top: BorderSide(width: 1.0, color: Colors.grey),
                    left: BorderSide(width: 1.0, color: Colors.grey),
                    right: BorderSide(width: 1.0, color: Colors.grey)),
              ),
              child: TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  //icon: Icon(Icons.lock),
                  border: InputBorder.none,
                  hintText: 'Prénom',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
              height: _h * 0.06,
              width: _w * 0.8,
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: const Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                  top: BorderSide(width: 1.0, color: Colors.grey),
                  right: BorderSide(width: 1.0, color: Colors.grey),
                  left: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  //icon: Icon(Icons.lock),
                  border: InputBorder.none,
                  hintText: 'Nom',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
              height: _h * 0.06,
              width: _w * 0.8,
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(top: 15, left: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: const Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                  top: BorderSide(width: 1.0, color: Colors.grey),
                  left: BorderSide(width: 1.0, color: Colors.grey),
                  right: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: const Text(
                'France (Métropolitaine)',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: _h * 0.06,
              width: _w * 0.8,
              margin: const EdgeInsets.only(top: 15),
              //padding: const EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: const Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                  top: BorderSide(width: 1.0, color: Colors.grey),
                  left: BorderSide(width: 1.0, color: Colors.grey),
                  right: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_month),
                  border: InputBorder.none,
                  hintText: 'Votre anniversaire (falcutatif)',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Container(
                height: _h * 0.06,
                width: _w * 0.5,
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFF103f86),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'VALIDER',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
              child: Container(
                height: _h * 0.06,
                width: _w * 0.5,
                margin: const EdgeInsets.only(top: 7),
                padding: const EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'RETOUR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
