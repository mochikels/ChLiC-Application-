// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class FirstOverview extends StatelessWidget {
  const FirstOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 240,
            width: 500,
            decoration: BoxDecoration(
              border:
                  Border.all(width: 5, color: Color.fromARGB(255, 15, 67, 29)),
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 162, 190, 163),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'lib/png/lessononetab.png',
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Color.fromARGB(255, 15, 67, 29),
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 80,
          width: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Center(
              child: Text(
                'LESSON 1: RULES OF NAMING AND WRITING COMPOUNDS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 67, 29),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
