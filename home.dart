import 'package:flutter/material.dart';
import 'package:mayil_test/screens/dash1.dart';
import 'package:mayil_test/screens/profile.dart';
import 'package:mayil_test/screens/report.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => homeState();
}

class homeState extends State<home> {
  bool isSwitched = true;
  int _selectedIndex = 0;
  final tabs =[
    home(),
    report(),
    profile(),
  ];


  // get email => '${email}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            const Align(
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30),
              child: Text(
                'Hello..!!',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 199,
            ),
            const SizedBox(
              width: 11,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 20),
              child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.lightGreen,
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.red.shade300,
                  activeThumbImage: const AssetImage('assets/on_icon.png'),
                  inactiveThumbImage: const AssetImage('assets/off_icon.png'),
                  materialTapTargetSize: MaterialTapTargetSize.padded),
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                'Customer Id',
                // '${email}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.grey.shade800,
                ),
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
                      style: TextStyle(fontSize: 18),
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
                      ),
                    ),
                  )
                ])),
          ]),
          const SizedBox(
            height: 40,
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
                  style: TextStyle(color: Colors.white),
                )),
              )),
          const SizedBox(
            height: 20,
            width: 30,
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Total Bookings:',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '0',
                  style: TextStyle(fontSize: 18),
                ),
              ]),
          const SizedBox(
            height: 20,
            width: 30,
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Total Amount:',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '0',
                  style: TextStyle(fontSize: 18),
                )
              ]),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const dash1()));
            },
            child: const Text(
              'Customer Booking',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 255,
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /*  Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const profile()));
                    },
                    child: const Column(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.lightGreen,
                            size: 30,
                            shadows: [],
                          ),
                          Text(
                            'Person',
                            style: TextStyle(fontSize: 16),
                          ),
                        ]),
                  ),
                ),

                const SizedBox(
                  width: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: InkWell(
                    onTap: () {
                      //Navigator.pushReplacement(context, MaterialPageRoute(
                        // builder: (context) => const report()));
                    },
                    child: Column(children: [
                      Icon(
                        Icons.report,
                        color: Colors.lightGreen,
                        size: 30,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Report',
                        style: TextStyle(fontSize: 16),
                      ),
                    ]),
                  ),
                ),*/
              ])
        ]),
    )));

}}
