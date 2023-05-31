// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../../../device size/sizers_helpers.dart';

class FirstHTW extends StatelessWidget {
  const FirstHTW({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 162, 190, 163),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    height: 80,
                    width: 80,
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: displayWidth(context) * 0.07,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 15, 67, 29),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 480,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(255, 205, 218, 206),
                              border: Border.all(
                                color: Colors.white,
                                width: 5,
                              )),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7.0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        // ignore: prefer_const_constructors
                                        TextSpan(
                                          text:
                                              'The chemical equation represents facts:',
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.green[900],
                                            fontSize:
                                                displayWidth(context) * 0.03,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      // ignore: prefer_const_constructors
                                      TextSpan(
                                        text: 'the',
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color: Colors.green[900],
                                          fontSize:
                                              displayWidth(context) * 0.03,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Reactants',
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              displayWidth(context) * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' and',
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color: Colors.green[900],
                                          fontSize:
                                              displayWidth(context) * 0.03,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' the',
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color: Colors.green[900],
                                          fontSize:
                                              displayWidth(context) * 0.03,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Products.',
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              displayWidth(context) * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
