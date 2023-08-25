import 'package:flutter/material.dart';
import 'package:mayil_test/screens/login.dart';


class splash extends StatefulWidget {


  @override
  State<splash> createState() => splashState();

}

class splashState extends State<splash> {

  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/building.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/mayil rect.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 700,
          width: 390,
          child: Image.asset('assets/image/mayillogo.png'),
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
            'assets/image/downlogo.png',
            width: 390,
            fit: BoxFit.fill,
          ),
        )
      ]),
    );
  }
}

