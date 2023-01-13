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
            Container(),
          ],
        ),
      ),
    );
  }
}
