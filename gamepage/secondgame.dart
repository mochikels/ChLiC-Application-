// ignore_for_file: prefer_const_constructors

import 'package:chlic/gamepage/secondgametb.dart';
import 'package:flutter/material.dart';

class SecondGame extends StatefulWidget {
  const SecondGame({super.key});

  @override
  State<SecondGame> createState() => _SecondGameState();
}

class _SecondGameState extends State<SecondGame> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Color.fromARGB(255, 162, 190, 163),
              ),
              height: 150,
              width: 280,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  'lib/png/trueorfalsetab.png',
                  colorBlendMode: BlendMode.colorDodge,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondGameTab()),
              );
            },
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 162, 190, 163),
              ),
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            height: 60,
            width: 280,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Text(
                'Quiz Game: True or False',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 67, 29),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
