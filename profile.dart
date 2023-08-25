import 'package:flutter/material.dart';
import 'package:mayil_test/screens/login.dart';

void main() {
  runApp(MaterialApp(
    home: profile(),
  ));
}

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: 300,
          decoration: const BoxDecoration(
              color: Color(0xFF4BB135),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22))),
          child: Column(children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 35,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, right: 200),
                child: Text(
                  'My Profile',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.25,
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/image/proimage.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Vijaykumar.A',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
          ])),
      Card(
          child: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              children: [
                ...ListTile.divideTiles(color: Colors.grey, tiles: [
                  const ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    leading: Icon(Icons.car_repair),
                    title: Text(
                      'Registration no',
                    ),
                    subtitle: Text('TN59BR5628'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      'Mobile Number',
                    ),
                    subtitle: Text(
                      '9087123456',
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text(
                      'Email',
                    ),
                    subtitle: Text('vijay@gmail.com',
                        style: TextStyle(fontFamily: 'Montserret')),
                  ),
                  const ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text(
                      'Diving license',
                    ),
                    subtitle: Text(
                      'TN59 64829742018',
                    ),
                  ),
                  const ListTile(
                      leading: Icon(Icons.bloodtype),
                      title: Text(
                        'Blood Group',
                      ),
                      subtitle: Text(
                        'O +ve',
                      )),
                ]),
              ],
            )
          ],
        ),
      )),
      const SizedBox(
        height: 10,
      ),
      Directionality(
          textDirection: TextDirection.ltr, // or TextDirection.rtl
          child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {return login();
                  },
                ));

              },
              child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                      child: Text(
                    'Log out',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )))))
    ])));
  }
}
