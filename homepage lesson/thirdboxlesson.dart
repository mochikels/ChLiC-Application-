// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../main pages/balancingchem/balancing.dart';
import '../main pages/naming_chemicals.dart';

class ThirdBox extends StatefulWidget {
  const ThirdBox({super.key});

  @override
  State<ThirdBox> createState() => _ThirdBoxState();
}

class _ThirdBoxState extends State<ThirdBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 162, 190, 163),
                  ),
                  height: 150,
                  width: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'lib/png/lessonthreepic.png',
                      colorBlendMode: BlendMode.screen,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              openDialog();
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
            width: 250,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Text(
                'LESSON 3: Stoichiometry',
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

  Future openDialog() => showDialog(
        context: context,
        builder: ((context) => AlertDialog(
              title: Text(
                'LESSON 3: STOICHIOMETRY',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              content: Text(
                'This lesson is under development. Thank you!',
                style: TextStyle(fontSize: 25),
              ),
              actions: [
                TextButton(onPressed: submit, child: Text('Okay, Got it!'))
              ],
            )),
      );
  void submit() {
    Navigator.of(context).pop();
  }
}
