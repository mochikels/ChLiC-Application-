// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import

import 'package:chlic/main%20pages/naming_chemicals.dart';
import 'package:chlic/main%20pages/pages/gamepage%20dart/gamepagedart.dart';
import 'package:chlic/main%20pages/pages/gamepage%20dart/gamepagedarttwo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../gamepage/firstgametab.dart';
import '../gamepage/secondgametb.dart';
import 'balancingchem/balancing.dart';
import 'pages/first.dart';
import 'pages/second.dart';
import 'pages/third.dart';

class Gamepage extends StatelessWidget {
  const Gamepage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 255, 252),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'GAMES',
                style: GoogleFonts.leagueSpartan(
                    fontSize: 60, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(_createGRoute());
                  }),
                  child: GameFirstTabOverview()),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(_createSecondGRoute());
                  }),
                  child: GameSecondTabOverview()),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createGRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const FirstGameTab(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createSecondGRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const SecondGameTab(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
