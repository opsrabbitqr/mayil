import 'package:flutter/material.dart';
import 'package:mayil_test/home.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => profileState();
}

class profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: 393,
              height: 300,
              decoration: const BoxDecoration(
                  color: Color(0xFF4BB135),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22))),
              child: Column(
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 10),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const home()));
                        },
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                        iconSize: 35,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40, right: 200),
                      child: Text(
                        'My Profile',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.25,
                            fontFamily: 'Montserret'),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/proimage.png'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Vijaykumar.A',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontFamily: 'Montserret',
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Card(
                child: Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(15),
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
                            style: TextStyle(fontFamily: 'Montserret'),
                          ),
                          subtitle: Text('TN59BR5628'),
                        ),
                        const ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Mobile Number',
                              style: TextStyle(fontFamily: 'Montserret')),
                          subtitle: Text('9087123456',
                              style: TextStyle(fontFamily: 'Montserret')),
                        ),
                        const ListTile(
                          leading: Icon(Icons.email),
                          title: Text('Email',
                              style: TextStyle(fontFamily: 'Montserret')),
                          subtitle: Text('vijay@gmail.com',
                              style: TextStyle(fontFamily: 'Montserret')),
                        ),
                        const ListTile(
                          leading: Icon(Icons.add_card),
                          title: Text('Diving license',
                              style: TextStyle(fontFamily: 'Montserret')),
                          subtitle: Text('TN59 64829742018',
                              style: TextStyle(fontFamily: 'Montserret')),
                        ),
                        const ListTile(
                            leading: Icon(Icons.bloodtype),
                            title: Text('Blood Group',
                                style: TextStyle(fontFamily: 'Montserret')),
                            subtitle: Text('O +ve',
                                style: TextStyle(fontFamily: 'Montserret'))),
                      ])
                    ],
                  )
                ],
              ),
            )),
          ]),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 8,
                ),
              ],
            ),
            child: BottomNavigationBar(
                selectedItemColor: const Color(0xFF4BB135),
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.report_gmailerrorred),
                    label: 'Report',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_pin_rounded),
                    label: 'Profile',
                  ),
                ])
        ));
  }
}
