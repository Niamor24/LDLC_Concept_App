import 'package:flutter/material.dart';
import 'package:test_application_web/home.dart';
import 'package:test_application_web/inscription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDLC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF103f86),
      body: Container(
        height: _h,
        width: _w,
        child: Column(
          children: [
            Container(
              height: _h * 0.10,
              width: _w * 0.60,
              margin: const EdgeInsets.only(top: 100),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  'images/LDLCb.png',
                )),
              ),
            ),
            Container(
              height: _h * 0.05,
              width: _w * 0.7,
              margin: const EdgeInsets.only(top: 170),
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  border: InputBorder.none,
                  hintText: 'E-mail',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
              height: _h * 0.05,
              width: _w * 0.7,
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
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
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Inscription(),
                  ),
                );
              },
              child: Container(
                height: _h * 0.05,
                width: _w * 0.70,
                margin: const EdgeInsets.only(top: 50),
                padding: const EdgeInsets.only(top: 8),
                //color: Colors.white,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 43, 163, 243),
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  'Inscription',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
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
                height: _h * 0.05,
                width: _w * 0.70,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(top: 8),
                //color: Colors.white,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 43, 163, 243),
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  'Connexion',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
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
