// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../../../device size/sizers_helpers.dart';

class Stepthreewriting extends StatelessWidget {
  const Stepthreewriting({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'STEP 3:',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextSpan(
                    text:
                        'Balance the given chemical equation written in the step 2 by counting the number of atoms of each element on the reactant side and the product side then add coefficients after the chemical symbols or chemical formulas.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 250, 255, 252),
                      fontSize: displayWidth(context) * 0.03,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      WidgetSpan(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'lib/png/examplebaltwo.png',
                            scale: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                            text: ' Note:',
                            style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 250, 255, 252),
                            ),
                          ),
                          TextSpan(
                            text: ' 3',
                            style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow,
                            ),
                          ),
                          TextSpan(
                            text: ' and',
                            style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 250, 255, 252),
                            ),
                          ),
                          TextSpan(
                            text: ' 2',
                            style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow,
                            ),
                          ),
                          TextSpan(
                            text: ' are the coefficients.',
                            style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 250, 255, 252),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              thickness: 4,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
