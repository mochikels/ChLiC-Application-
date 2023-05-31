// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

import '../main pages/balancingchem/balancing.dart';
import '../main pages/naming_chemicals.dart';

class SecondBox extends StatefulWidget {
  const SecondBox({super.key});

  @override
  State<SecondBox> createState() => _SecondBoxState();
}

class _SecondBoxState extends State<SecondBox> {
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
                  'lib/png/lessontwopic.png',
                  colorBlendMode: BlendMode.screen,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BalancingChemicals()),
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
                'LESSON 2: Balancing Chemical Equations',
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
