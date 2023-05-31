// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../../../device size/sizers_helpers.dart';

class Thirdbalance extends StatelessWidget {
  const Thirdbalance({super.key});

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
                    height: 170,
                    width: 80,
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontSize: displayWidth(context) * 0.07,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
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
                          height: 170,
                          width: 480,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 189, 204, 190),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 20),
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      // ignore: prefer_const_constructors
                                      TextSpan(
                                        text:
                                            'Check the total number of atoms of each element on each side of the equation. A polyatomic ion appearing unchanged on both sides of the equation is counted as a single unit.',
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
                              SizedBox(
                                height: 10,
                              ),
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
