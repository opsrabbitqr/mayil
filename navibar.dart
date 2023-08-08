import 'package:flutter/material.dart';
import 'package:mayil_test/home.dart';
import 'package:mayil_test/profile.dart';
import 'package:mayil_test/report.dart';


class navi extends StatefulWidget {
  const navi({super.key});
  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  int _selectedIndex = 0;
  final tabs =[
    home(),
    report(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
    currentIndex: _selectedIndex,

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightGreen.shade800,
        unselectedItemColor: Colors.grey.shade600,
        items: const <BottomNavigationBarItem>[
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
          )
        ],

onTap: (index){
      setState(() {
        _selectedIndex = index;
      });
},
      ),
    );
  }
}
