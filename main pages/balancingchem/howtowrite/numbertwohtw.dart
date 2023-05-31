// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:chlic/device%20size/sizers_helpers.dart';
import 'package:flutter/material.dart';

class SecondHTW extends StatelessWidget {
  const SecondHTW({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  color: Color.fromARGB(255, 15, 67, 29),
                  borderRadius: BorderRadius.circular(60),
                ),
                height: 80,
                width: 80,
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.07,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
                          color: Color.fromARGB(255, 162, 190, 163),
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
                                  vertical: 7.0, horizontal: 20),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    // ignore: prefer_const_constructors
                                    TextSpan(
                                      text:
                                          'The reactants and the products should be properly represented using ',
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 15, 67, 29),
                                        fontSize: displayWidth(context) * 0.03,
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
                                    text: ' chemical symbols',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: displayWidth(context) * 0.03,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 15, 67, 29),
                                      fontSize: displayWidth(context) * 0.03,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),

                                  TextSpan(
                                    text: ' chemical formulas.',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: displayWidth(context) * 0.03,
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
    );
  }
}
