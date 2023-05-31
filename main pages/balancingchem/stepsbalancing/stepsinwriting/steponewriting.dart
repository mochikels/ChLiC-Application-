// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../device size/sizers_helpers.dart';

class Steponewriting extends StatelessWidget {
  const Steponewriting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              'STEP 1:',
              style: TextStyle(
                  fontSize: displayWidth(context) * 0.06,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 4,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextSpan(
                text: ' Convert the given problem into word.',
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 255, 252),
                  fontSize: displayWidth(context) * 0.04,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextSpan(
                text: 'Nitrogen gas + Hydrogen gas  →  Ammonium',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: displayWidth(context) * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 4,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
