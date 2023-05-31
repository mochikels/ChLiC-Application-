// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:chlic/device%20size/sizers_helpers.dart';
import 'package:flutter/material.dart';

import 'balancingtexts.dart';
import 'nextbuttonbal.dart';
import 'picturebalancing.dart';

class BalancingChemicals extends StatelessWidget {
  const BalancingChemicals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 255, 252),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Color.fromARGB(255, 162, 190, 163),
              iconTheme: IconThemeData(
                color: Color.fromARGB(255, 15, 67, 29),
              ),
              title: Text(
                'BALANCING CHEMICALS',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: displayWidth(context) * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[900]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text(
                  'Chemical Equation',
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.07,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 15, 67, 29)),
                ),
                BalancingTexts(),
                Reactantsimage(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    alignment: FractionalOffset.bottomRight,
                    color: Colors.transparent,
                    height: 60,
                    width: 500,
                    child: FirstRoute(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
