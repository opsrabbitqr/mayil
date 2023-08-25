import 'package:flutter/material.dart';
import 'package:mayil_test/screens/endtrip.dart';
import 'package:mayil_test/screens/home.dart';
import 'package:mayil_test/screens/profile.dart';


void main() {
  runApp(const MaterialApp(
    home: dash1(),
    debugShowCheckedModeBanner: false,
  ));
}

class dash1 extends StatefulWidget {
  const dash1({super.key});

  @override
  State<dash1> createState() => _dash1State();
}

class _dash1State extends State<dash1> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child:SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(children: [
                const Align(
                  alignment: Alignment.center,
                ),
                Text(
                  'Hello..!!',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 160,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const profile()));
                  },
                  child: const Row(children: [
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.lightGreen,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
              ]),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  '    TN59BR5628',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey.shade800,
                      fontFamily: 'Montserret'),
                )),
            const SizedBox(
              height: 20,
            ),
            Stack(children: [
              Container(
                  width: 360,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 8,
                        spreadRadius: 3,
                      )
                    ],
                    color: Colors.grey,
                  ),
                  child: Row(children: [
                    const SizedBox(width: 20),
                    const Image(
                      image: AssetImage('assets/image/procar.png'),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 150,
                      height: 110,
                      decoration: const BoxDecoration(
                        //  borderRadius: BorderRadius.only(
                        //    topRight: Radius.circular(25),bottomRight:Radius.circular(25) ),
                        color: Colors.white,
                      ),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        '    Balance Wallet-',
                        style: TextStyle(fontSize: 18, fontFamily: 'Montserret'),
                      ),
                    ),
                    Container(
                      width: 112,
                      height: 110,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                        color: Colors.white,
                      ),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        '500',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserret'),
                      ),
                    )
                  ])),
            ]),
            const SizedBox(
              height: 15,
              width: 200,
            ),
            Container(
                height: 40,
                width: 290,
                decoration: BoxDecoration(
                  color: const Color(0xFF4BB135),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {},
                  child: const Center(
                      child: Text(
                        'CURRENT LOCATION',
                        style: TextStyle(color: Colors.white, fontFamily: 'Montserret'),
                      )),
                )),
            const SizedBox(
              height: 20,
              width: 30,
            ),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(
                'Total Bookings:',
                style: TextStyle(fontSize: 18, fontFamily: 'Montserret'),
              ),
              SizedBox(
                width: 100,
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 18, fontFamily: 'Montserret'),
              ),
            ]),
            const SizedBox(
              height: 10,
              width: 30,
            ),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(
                'Total Amount:',
                style: TextStyle(fontSize: 18, fontFamily: 'Montserret'),
              ),
              SizedBox(
                width: 100,
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 18, fontFamily: 'Montserret'),
              )
            ]),
            const SizedBox(
              height: 5,
            ),
            Container(
                height: 40,
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: InkWell(
                  onTap: () {},
                  child: const Center(
                      child: Text(
                        'Ongoing Trips',
                        style: TextStyle(fontSize: 18, fontFamily: 'Montserret'),
                      )),
                )),
            const SizedBox(
              height: 4,
            ),
            Center(
              child: Container(
                  width: 360,
                  height: 353,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      )),
                  child: Column(children: [
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                'Regester No:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20, right: 20.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'TN59 BR 5628',
                                    style: TextStyle(fontSize: 16),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text('Customer :',
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(right: 20.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text('Vijay Kumar',
                                        style: TextStyle(fontSize: 18)),
                                    Text('99081726354',
                                        style: TextStyle(fontSize: 16))
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child:
                              Text('Address :', style: TextStyle(fontSize: 16)),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(right: 20.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  Text('New Bus Stand,',
                                      style: TextStyle(fontSize: 16)),
                                  Text('Kachrapalayam,',
                                      style: TextStyle(fontSize: 16)),
                                  Text('Kallakurichi',
                                      style: TextStyle(fontSize: 16))
                                ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text('Start Date&Time:',
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Text('16/10/23 & 12.30PM',
                                  style: TextStyle(fontSize: 16)),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Flexible(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20.0, top: 15),
                                  child: Text('Location :',
                                      style: TextStyle(fontSize: 16)),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'View Location',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                    const Divider(
                      thickness: 2,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => end_trip()));
                        },
                        child: const Text(
                          'End Trip',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        )),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 280, bottom: 20),
              child: FloatingActionButton(
                  backgroundColor: Colors.lightGreen.shade800,
                  child: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home()));
                  }),
            )
          ]),
          )));
  }
}
