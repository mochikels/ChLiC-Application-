// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_constructors, prefer_const_constructors, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../device size/sizers_helpers.dart';
import 'explainbal.dart';

class Reactantsimage extends StatelessWidget {
  const Reactantsimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          child: SizedBox(
            height: 150,
            width: 550,
            child: Image.asset(
              'lib/png/research.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 8,
            color: Color.fromARGB(255, 162, 190, 163),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "EXAMPLE: ",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.05,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: "Hydrogen gas ",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.05,
                      color: Colors.black),
                ),
                WidgetSpan(
                  child: Image.asset('lib/png/balancingh2.png', scale: 2.5),
                ),
                TextSpan(
                  text: " reacts with oxygen gas ",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.05,
                      color: Colors.black),
                ),
                WidgetSpan(
                  child: Image.asset('lib/png/balancingo2.png', scale: 2.5),
                ),
                TextSpan(
                  text: " to form water ",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.05,
                      color: Colors.black),
                ),
                WidgetSpan(
                  child: Image.asset('lib/png/balancingh2o.png', scale: 2.5),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 162, 190, 163),
                      borderRadius: BorderRadius.circular(20)),
                  height: 70,
                  width: 250,
                  child: Image.asset(
                    'lib/png/balancingex.png',
                    color: Color.fromARGB(255, 162, 190, 163),
                    colorBlendMode: BlendMode.multiply,
                    scale: 1,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 50,
                    width: 200,
                    alignment: Alignment.center,
                    child: ExplainbuttonTNML(),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 10,
            color: Color.fromARGB(255, 162, 190, 163),
          ),
        ),
      ],
    );
  }
}
