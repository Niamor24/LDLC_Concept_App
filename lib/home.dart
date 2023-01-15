import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_application_web/map.dart';
import 'package:test_application_web/panier.dart';
import 'package:test_application_web/profil.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _h * 0.07,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: Row(
                children: [
                  Container(
                    height: _h,
                    width: _w * 0.3,
                    //color: Colors.red,
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 0.5, color: Colors.white),
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/LDLChightech.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Mapss(),
                        ),
                      );
                    },
                    child: Container(
                      height: _h * 0.05,
                      width: _w * 0.12,
                      margin: const EdgeInsets.only(left: 130),
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        border: Border(
                          left: BorderSide(width: 0.5, color: Colors.white),
                          right: BorderSide(width: 0.5, color: Colors.white),
                        ),
                        image: DecorationImage(
                          image: AssetImage('images/localisateur.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Profil(),
                        ),
                      );
                    },
                    child: Container(
                      height: _h * 0.05,
                      width: _w * 0.12,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        border: Border(
                          right: BorderSide(width: 0.5, color: Colors.white),
                        ),
                        image: DecorationImage(
                          image: AssetImage('images/utilisateur.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Panier(),
                        ),
                      );
                    },
                    child: Container(
                      height: _h * 0.05,
                      width: _w * 0.12,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        border: Border(
                          right: BorderSide(width: 0.5, color: Colors.white),
                        ),
                        image: DecorationImage(
                          image: AssetImage('images/sac-de-courses.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: _h * 0.05,
              width: _w,
              padding: const EdgeInsets.only(bottom: 8, left: 25),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    width: 3.5,
                    color: Color(0xFF0b3b83),
                  ),
                  bottom: BorderSide(
                    width: 3.5,
                    color: Color(0xFF0b3b83),
                  ),
                  right: BorderSide(
                    width: 3.5,
                    color: Color(0xFF0b3b83),
                  ),
                  left: BorderSide(
                    width: 3.5,
                    color: Color(0xFF0b3b83),
                  ),
                ),
              ),
              child: TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  //icon: Icon(Icons.calendar_month),
                  border: InputBorder.none,
                  hintText: 'Rechercher...',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
              height: _h * 0.22,
              width: _w,
              color: Colors.red,
            ),
            Container(
              height: _h * 0.06,
              width: _w,
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: const Text(
                'UNIVERS POPULAIRE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: _h * 0.1,
                    width: _w * 0.35,
                    color: Colors.red,
                  ),
                  Container(
                    height: _h * 0.1,
                    width: _w * 0.35,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: _h * 0.05,
                    width: _w * 0.35,
                    child: const Text(
                      'INFORMATIQUE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 76, 75, 75)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: _h * 0.05,
                    width: _w * 0.35,
                    child: const Text(
                      'IMAGES & SON',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 76, 75, 75)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: _h * 0.1,
                    width: _w * 0.35,
                    color: Colors.red,
                  ),
                  Container(
                    height: _h * 0.1,
                    width: _w * 0.35,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: _h * 0.05,
                    width: _w * 0.35,
                    child: const Text(
                      'TELEPHONIE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 76, 75, 75),
                      ),
                    ),
                  ),
                  Container(
                    height: _h * 0.05,
                    width: _w * 0.35,
                    child: const Text(
                      'JEUX & LOISIRS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 76, 75, 75),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 0.80,
              width: _w,
              color: Colors.grey,
            ),
            Container(
              height: _h * 0.05,
              width: _w,
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                'NOUVEAUTES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: _h * 0.1,
              width: _w * 0.40,
              color: Colors.grey,
            ),
            Container(
              height: _h * 0.03,
              width: _w,
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                'Philips The One',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: _h * 0.04,
              width: _w,
              color: Colors.transparent,
              child: const Text(
                '629€98',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 8, 0, 154),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: _h * 0.001,
              width: _w,
              color: Colors.grey,
            ),
            Container(
              height: _h * 0.04,
              width: _w,
              margin: const EdgeInsets.only(top: 15),
              //color: Colors.grey,
              child: const Text(
                'SOLDES:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: _h * 0.1,
              width: _w * 0.40,
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              height: _h * 0.025,
              width: _w,
              color: Colors.transparent,
              child: const Text(
                'Promo sur le coin des affaires !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 9),
              height: _h * 0.05,
              width: _w * 0.40,
              //color: Colors.blue,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: const Border(
                  bottom: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                  top: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                  left: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                  right: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                ),
              ),
              child: const Text(
                'JE FONCE !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xFF0b3b83),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: _h * 0.001,
              width: _w,
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: _h * 0.04,
              width: _w,
              //color: Colors.transparent,
              child: const Text(
                'CONFIGURATEUR PC:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: _h * 0.067,
              width: _w * 0.8,
              //color: Colors.grey,
              child: const Text(
                'Creez en quelques clics un PC adapté à vos besoins et votre budget avec le Configurateur LDLC et son moteur de Compatibilité !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: _h * 0.050,
              width: _w * 0.4,
              padding: const EdgeInsets.only(top: 9),
              //color: Colors.grey,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: const Border(
                  bottom: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                  top: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                  left: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                  right: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                ),
              ),
              child: const Text(
                'JE CREE MON PC >',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFF0b3b83),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: _h * 0.2,
              width: _w,
              color: Colors.red,
            ),
            Container(
              height: _h * 0.035,
              width: _w,
              margin: const EdgeInsets.only(top: 15),
              //color: Colors.grey,
              child: const Text(
                'REJOIGNEZ-NOUS !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: _h * 0.06,
                    width: _w * 0.13,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: _h * 0.06,
                    width: _w * 0.13,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: _h * 0.06,
                    width: _w * 0.13,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: _h * 0.06,
                    width: _w * 0.13,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: _h * 0.02,
              width: _w,
              //color: Colors.grey,
              child: const Text(
                'Inscription Newsletter:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 7, left: 15),
              height: _h * 0.05,
              width: _w * 0.8,
              //color: Colors.grey,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                //color: Colors.grey,
                border: const Border(
                  bottom: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                  top: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                  left: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                  right: BorderSide(width: 2.5, color: Color(0xFF0b3b83)),
                ),
              ),
              child: TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  //icon: Icon(Icons.lock),
                  border: InputBorder.none,
                  hintText: 'Votre Email...',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.only(top: 30),
              height: _h * 0.057,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'QUI SOMMES NOUS ?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.025,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'Notre histoire',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.025,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'CGV / Avis client',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.025,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'Données personnels et cookies',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.025,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'Gérer mes cookies',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.025,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'Mentions légale',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: _h * 0.03,
              width: _w,
              color: const Color(0xFF0b3b83),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.030,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'NOUS REJOINDRE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.025,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'Vendez sur LDLC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.025,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'Recrutement',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.025,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                "L'école LDLC",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              //padding: const EdgeInsets.only(top: 20),
              //margin: const EdgeInsets.only(top: 30),
              height: _h * 0.025,
              width: _w,
              color: const Color(0xFF0b3b83),
              child: const Text(
                'Marketplace',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
