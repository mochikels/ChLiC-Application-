// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:chlic/main%20pages/balancingchem/howtowrite/symbolsbutton.dart';
import 'package:flutter/material.dart';

import '../../../device size/sizers_helpers.dart';

class FourthHTW extends StatelessWidget {
  const FourthHTW({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  color: Color.fromARGB(255, 15, 67, 29),
                  borderRadius: BorderRadius.circular(60),
                ),
                height: 80,
                width: 80,
                child: Center(
                  child: Text(
                    '4',
                    style: TextStyle(
                      fontSize: 40,
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
                      height: 150,
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
                                  vertical: 7.0, horizontal: 30),
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    // ignore: prefer_const_constructors
                                    TextSpan(
                                      text:
                                          'In writing and balancing the chemical equations, ',
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 15, 67, 29),
                                        fontSize: displayWidth(context) * 0.03,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'important symbols',
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: displayWidth(context) * 0.03,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' must be remembered. ',
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 15, 67, 29),
                                        fontSize: displayWidth(context) * 0.03,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Below are the other symbols used in writing and balancing chemical equations.',
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 200,
                      color: Colors.transparent,
                      child: Explainbuttonbalance(),
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
