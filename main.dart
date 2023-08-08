import 'package:flutter/material.dart';
import 'package:mayil_test/login.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/building.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mayil rect.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 700,
          width: 390,
          child: Image.asset('assets/mayillogo.png'),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(110, 550, 50, 0),
          child: Text(
            'WELCOME!!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 600),
          child: Image.asset(
            'assets/downlogo.png',
            width: 390,
            fit: BoxFit.fill,
          ),
        )
      ]),
    );
  }
}