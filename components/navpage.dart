// ignore_for_file: prefer_const_constructors, unused_import, prefer_final_fields

import 'package:chlic/main%20pages/lessonpage.dart';
import 'package:chlic/main%20pages/naming_chemicals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ionicons/ionicons.dart';

import 'lessons_hp.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _selectedIndex = 0;

  static List<Widget> __widgetOptions = <Widget>[
    Lesson(),
    Lessonpage(),
    Text(
      'tangina',
      style: TextStyle(fontSize: 200, color: Colors.black),
    ),
    Text(
      'na ako',
      style: TextStyle(fontSize: 200, color: Colors.black),
    ),
    Text(
      'umiyak',
      style: TextStyle(fontSize: 200, color: Colors.black),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 255, 252),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 162, 190, 163),
        title: Center(
          child: Text(
            'Chemistry Literate Companion',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromARGB(255, 15, 67, 29),
            ),
          ),
        ),
      ),
      // di ko mapagana putangina
      body: Center(
        child: __widgetOptions.elementAt(_selectedIndex),
      ),
      // ayoko naaaa
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 162, 190, 163),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 162, 190, 163),
            color: Color.fromARGB(255, 15, 67, 29),
            tabBackgroundColor: Colors.green.shade100,
            gap: 8,
            padding: EdgeInsets.all(15),
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              GButton(
                icon: Icons.science_rounded,
                text: 'Home',
              ),
              GButton(
                icon: Icons.dns_rounded,
                text: 'Lessons',
              ),
              GButton(
                icon: Icons.dashboard,
                text: 'Periodic Table',
              ),
              GButton(
                icon: Ionicons.game_controller,
                text: 'Games',
              ),
              GButton(
                icon: Icons.fact_check_rounded,
                text: 'About',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
