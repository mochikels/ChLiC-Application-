// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_import, unused_local_variable

import 'package:chlic/device%20size/sizers_helpers.dart';
import 'package:flutter/material.dart';

import '../components/lessons_hp.dart';
import 'about.dart';
import 'gamepage.dart';
import 'lessonpage.dart';

class NaviPage extends StatefulWidget {
  const NaviPage({super.key});

  @override
  State<NaviPage> createState() => _NaviPageState();
}

class _NaviPageState extends State<NaviPage> {
  bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 370;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 360;
  // ignore: prefer_final_fields
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Lesson(),
    Lessonpage(),
    Gamepage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 255, 252),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 162, 190, 163),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 15, 67, 29),
        ),
        title: Text(
          '  Chemistry Literate Companion',
          style: TextStyle(
              fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        leading: Icon(
          Icons.science_rounded,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 162, 190, 163),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Color.fromARGB(255, 15, 67, 29),
            backgroundColor: Color.fromARGB(255, 162, 190, 163),
            selectedFontSize: 20,
            iconSize: 22,

            elevation: 0,
            currentIndex: _selectedIndex,
            onTap: _navigateBottomBar,
            type: BottomNavigationBarType.fixed,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home_rounded,
                ),
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book_rounded),
                label: 'Lessons',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.gamepad_rounded), label: 'Games'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.question_mark_rounded), label: 'About'),
            ],
          ),
        ),
      ),
    );
  }
}
