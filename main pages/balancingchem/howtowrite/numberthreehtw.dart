// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../../../device size/sizers_helpers.dart';

class ThirdHTW extends StatelessWidget {
  const ThirdHTW({super.key});

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
                        '3',
                        style: TextStyle(
                          fontSize: displayWidth(context) * 0.06,
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
                          height: 150,
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 7.0, horizontal: 30),
                                  child: RichText(
                                    textAlign: TextAlign.justify,
                                    text: TextSpan(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        // ignore: prefer_const_constructors
                                        TextSpan(
                                          text: 'The',
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.green[900],
                                            fontSize:
                                                displayWidth(context) * 0.03,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Law of Conservation of Mass',
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                displayWidth(context) * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ' should be satisfied. The number of atoms for each element should be',
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.green[900],
                                            fontSize:
                                                displayWidth(context) * 0.03,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' equal',
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                displayWidth(context) * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' in the',
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.green[900],
                                            fontSize:
                                                displayWidth(context) * 0.03,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " reactant's side",
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                displayWidth(context) * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' and the',
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.green[900],
                                            fontSize:
                                                displayWidth(context) * 0.03,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " product's side",
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                displayWidth(context) * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' of the equation.',
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
