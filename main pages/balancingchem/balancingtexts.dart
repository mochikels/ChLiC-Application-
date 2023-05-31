// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../../device size/sizers_helpers.dart';

class BalancingTexts extends StatelessWidget {
  const BalancingTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 162, 190, 163),
            borderRadius: BorderRadius.circular(20)),
        height: 320,
        width: 550,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: RichText(
            textAlign: TextAlign.justify,
            // ignore: prefer_const_constructors
            text: TextSpan(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextSpan(
                  text:
                      'Substances that undergo chemical reactions are represented by chemical equations. It is a representation using chemical symbols to show what happens during a chemical reaction. Chemical equations are written with reactants and products.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 67, 29),
                    fontSize: displayWidth(context) * 0.035,
                  ),
                ),
                TextSpan(
                  text: ' Reactants',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: displayWidth(context) * 0.035,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      ' are the starting materials in a chemical reaction and',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 67, 29),
                    fontSize: displayWidth(context) * 0.035,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: ' Product',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: displayWidth(context) * 0.035,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      ' is the substance formed because of a chemical reaction. A',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 67, 29),
                    fontSize: displayWidth(context) * 0.035,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: ' word equation',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: displayWidth(context) * 0.035,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      ' describes a chemical change using the names of the reactants and products.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 67, 29),
                    fontSize: displayWidth(context) * 0.035,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
