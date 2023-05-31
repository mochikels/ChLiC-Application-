// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../../../device size/sizers_helpers.dart';

class Firstbalance extends StatelessWidget {
  const Firstbalance({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 162, 190, 163),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                    ),
                    height: 200,
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
                          height: 200,
                          width: 480,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 205, 218, 206),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
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
                                        text: 'CHECK FOR DIATOMIC MOLECULES',
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 15, 67, 29),
                                          fontSize:
                                              displayWidth(context) * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      // ignore: prefer_const_constructors
                                      TextSpan(
                                        text: 'Diatomic molecules ',
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
                                            '- are molecules composed of only',
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color: Colors.green[900],
                                          fontSize:
                                              displayWidth(context) * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' two atoms',
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              displayWidth(context) * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' of the same elements.',
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color: Colors.green[900],
                                          fontSize:
                                              displayWidth(context) * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
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
                                    // ignore: prefer_const_constructors
                                    TextSpan(
                                      text: 'This includes: ',
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: displayWidth(context) * 0.04,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'lib/png/examplebal.png',
                                    color: Color.fromARGB(255, 162, 190, 163),
                                    colorBlendMode: BlendMode.multiply,
                                    scale: 2,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              )
                            ],
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
