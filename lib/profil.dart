import 'package:flutter/material.dart';
import 'package:test_application_web/home.dart';
import 'package:test_application_web/main.dart';
import 'package:test_application_web/map.dart';
import 'package:test_application_web/panier.dart';

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
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 30),
                        height: _h * 0.14,
                        width: _w * 0.30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(360),
                          border: const Border(
                            bottom: BorderSide(width: 2.5, color: Colors.black),
                            top: BorderSide(width: 2.5, color: Colors.black),
                            left: BorderSide(width: 2.5, color: Colors.black),
                            right: BorderSide(width: 2.5, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 30),
                        height: _h * 0.14,
                        width: _w * 0.53,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              height: _h * 0.020,
                              width: _w,
                              color: Colors.transparent,
                              child: const Text(
                                'Bonjour,',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              height: _h * 0.017,
                              width: _w,
                              color: Colors.transparent,
                              child: const Text(
                                'Romain BIDE',
                                style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              height: _h * 0.017,
                              width: _w,
                              color: Colors.transparent,
                              child: const Text(
                                'N° Client: IFRABIDERO001',
                                style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: Colors.blue,
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
                                margin: const EdgeInsets.only(top: 30),
                                height: _h * 0.017,
                                width: _w,
                                color: Colors.transparent,
                                child: const Text(
                                  'Me déconnecter >',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: Color.fromARGB(255, 0, 7, 140),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 7),
                  margin: const EdgeInsets.only(top: 30),
                  height: _h * 0.045,
                  width: _w * 0.33,
                  color: const Color(0xFF0b3b83),
                  child: const Text(
                    'MENU',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 9),
                  margin: const EdgeInsets.only(top: 30),
                  height: _h * 0.045,
                  width: _w * 0.669,
                  //color: Colors.red,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      top: BorderSide(width: 0.5, color: Colors.grey),
                      bottom: BorderSide(width: 0.5, color: Colors.grey),
                    ),
                  ),
                  child: const Text(
                    'Mes Commandes',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF0b3b83),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 35),
              height: _h * 0.09,
              width: _w,
              color: Colors.transparent,
              child: const Text(
                'HISTORIQUE DE VOS COMMANDES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 7),
              height: _h * 0.050,
              width: _w * 0.66,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Colors.grey),
                  top: BorderSide(width: 0.5, color: Colors.grey),
                  left: BorderSide(width: 0.5, color: Colors.grey),
                  right: BorderSide(width: 0.5, color: Colors.grey),
                ),
              ),
              child: const Text(
                'Depuis les 6 derniers...  >',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //COMMANDES//
            Container(
              margin: const EdgeInsets.only(top: 40),
              height: _h * 0.13,
              width: _w,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Colors.grey),
                  top: BorderSide(width: 0.5, color: Colors.grey),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          '09/06/2022',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            color: Color.fromARGB(255, 49, 49, 49),
                          ),
                        ),
                      ),
                      Container(
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          'LDLC Bourg-en-Bresse',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                              color: Color.fromARGB(255, 28, 35, 130)),
                        ),
                      ),
                      Container(
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          'N° TK01012200000627',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          'Retirée en boutique le 09/06/2022',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 17,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    height: _h * 0.13,
                    width: _w * 0.30,
                    //color: Colors.grey,
                    child: const Text(
                      'Détails >',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color(0xFF0b3b83),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //margin: const EdgeInsets.only(top: 40),
              height: _h * 0.13,
              width: _w,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Colors.grey),
                  top: BorderSide(width: 0.5, color: Colors.grey),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          '09/06/2022',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            color: Color.fromARGB(255, 49, 49, 49),
                          ),
                        ),
                      ),
                      Container(
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          'LDLC Bourg-en-Bresse',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                              color: Color.fromARGB(255, 28, 35, 130)),
                        ),
                      ),
                      Container(
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          'N° TK01012200000627',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          'Retirée en boutique le 09/06/2022',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 17,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    height: _h * 0.13,
                    width: _w * 0.30,
                    //color: Colors.grey,
                    child: const Text(
                      'Détails >',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color(0xFF0b3b83),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //margin: const EdgeInsets.only(top: 40),
              height: _h * 0.13,
              width: _w,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Colors.grey),
                  top: BorderSide(width: 0.5, color: Colors.grey),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          '09/06/2022',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            color: Color.fromARGB(255, 49, 49, 49),
                          ),
                        ),
                      ),
                      Container(
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          'LDLC Bourg-en-Bresse',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                              color: Color.fromARGB(255, 28, 35, 130)),
                        ),
                      ),
                      Container(
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          'N° TK01012200000627',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        height: _h * 0.03,
                        width: _w * 0.70,
                        //color: Colors.red,
                        child: const Text(
                          'Retirée en boutique le 09/06/2022',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 17,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    height: _h * 0.13,
                    width: _w * 0.30,
                    //color: Colors.grey,
                    child: const Text(
                      'Détails >',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color(0xFF0b3b83),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
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
