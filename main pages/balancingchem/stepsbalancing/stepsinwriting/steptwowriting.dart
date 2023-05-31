// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../device size/sizers_helpers.dart';

class Steptwowriting extends StatelessWidget {
  const Steptwowriting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 550,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 162, 190, 163),
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'STEP 2:',
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
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextSpan(
                    text:
                        ' Convert the word equation into a chemical equation.',
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
                  WidgetSpan(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'lib/png/step_two_writing.png',
                      scale: 2,
                      colorBlendMode: BlendMode.multiply,
                    ),
                  ))
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
          ],
        ),
      ),
    );
  }
}
