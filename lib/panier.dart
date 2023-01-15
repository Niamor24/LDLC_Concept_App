import 'package:flutter/material.dart';
import 'package:test_application_web/home.dart';
import 'package:test_application_web/map.dart';
import 'package:test_application_web/profil.dart';

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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    child: Container(
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
              padding: const EdgeInsets.only(bottom: 8, left: 5),
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
              margin: const EdgeInsets.only(top: 35),
              height: _h * 0.07,
              width: _w,
              //color: Colors.red,
              child: const Text(
                'VOTRE PANIER EST VIDE...(OU PRESQUE):',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              height: _h * 0.035,
              width: _w * 0.70,
              //color: Colors.grey,
              decoration: const BoxDecoration(
                border: Border(
                  //bottom: BorderSide(width: 3.0, color: Colors.grey),
                  top: BorderSide(width: 3.0, color: Colors.grey),
                  left: BorderSide(width: 3.0, color: Colors.grey),
                  right: BorderSide(width: 3.0, color: Colors.grey),
                ),
              ),
              child: const Text(
                "Chat manque d'achat !",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 27),
              height: _h * 0.1,
              width: _w * 0.70,
              //color: Colors.grey,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 3.0, color: Colors.grey),
                  //top: BorderSide(width: 3.0, color: Colors.grey),
                  left: BorderSide(width: 3.0, color: Colors.grey),
                  right: BorderSide(width: 3.0, color: Colors.grey),
                ),
                color: Colors.transparent,
              ),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 9),
                      height: _h * 0.050,
                      width: _w * 0.55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xFF0b3b83),
                      ),
                      child: const Text(
                        "TROUVER L'INSPIRATION >",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              height: _h * 0.25,
              width: _w,
              color: Colors.red,
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
