// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';

import '../device size/sizers_helpers.dart';
import '../games/topic 1/data/screen/mainmenu.dart';
import '../games/topic 2 multiple choice/quizscreendarttwo.dart';
import '../games/topic 2 true or false/fronttwoddart.dart';
import '../main pages/navpagetwo.dart';
import '../main pages/pages/about info/bea.dart';

class FirstGameTab extends StatelessWidget {
  const FirstGameTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 255, 252),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                Center(
                  child: Text(
                    'CHOOSE A LESSON',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 15, 67, 29)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              thickness: 5,
              color: Color.fromARGB(255, 15, 67, 29),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Container(
              height: 80,
              width: 550,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    'LESSON 1: Rules of Naming and Writing Compound',
                    style: TextStyle(
                        color: Color.fromARGB(255, 15, 67, 29),
                        fontSize: displayWidth(context) * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 162, 190, 163),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 15, 67, 29).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3))
                  ]),
            ),
            onTap: () {
              Navigator.of(context).push(_createRouteTab());
            },
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              height: 70,
              width: 550,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    'LESSON 2: Balancing Chemical Equations',
                    style: TextStyle(
                        color: Color.fromARGB(255, 15, 67, 29),
                        fontSize: displayWidth(context) * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 162, 190, 163),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 15, 67, 29).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3))
                  ]),
            ),
            onTap: () {
              Navigator.of(context).push(_createSRouteTab());
            },
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              thickness: 5,
              color: Color.fromARGB(255, 15, 67, 29),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65.0),
                child: Container(
                  height: 40,
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.skip_previous_rounded),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Color.fromARGB(255, 15, 67, 29),
                    ),

                    // Within the `FirstRoute` widget
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: Text('GO BACK'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Route _createRouteTab() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MainMenu(),
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

Route _createSRouteTab() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => QuizFirstPageED(),
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
