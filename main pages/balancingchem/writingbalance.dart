// ignore_for_file: avoid_unnecessary_containers, unused_import, prefer_const_constructors, duplicate_ignore

import 'package:chlic/main%20pages/balancingchem/thirdroute.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../device size/sizers_helpers.dart';
import '../pages/thirdpagelessonsteps/tnm/tnmone.dart';
import 'howtowrite/numberfourhtw.dart';
import 'howtowrite/numberonehtw.dart';
import 'howtowrite/numberthreehtw.dart';
import 'howtowrite/numbertwohtw.dart';
import 'howtowrite/symbolsbutton.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 255, 252),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Color.fromARGB(255, 162, 190, 163),
              leading: Icon(Icons.science_rounded),
              iconTheme: IconThemeData(
                color: Color.fromARGB(255, 15, 67, 29),
              ),
              title: Text(
                'BALANCING CHEMICALS',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[900]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'HOW TO WRITE A BALANCED CHEMICAL EQUATION?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: displayWidth(context) * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 67, 29),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Divider(
                thickness: 10,
                color: Color.fromARGB(255, 162, 190, 163),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Here are the four major things to keep in mind when writing a chemical equation.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: displayWidth(context) * 0.04,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 15, 67, 29),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FirstHTW(),
            SecondHTW(),
            ThirdHTW(),
            FourthHTW(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Divider(
                thickness: 10,
                color: Color.fromARGB(255, 162, 190, 163),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 40,
                    width: 410,
                    alignment: Alignment.bottomLeft,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.skip_previous_rounded),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Color.fromARGB(255, 15, 67, 29),
                      ),

                      // Within the `FirstRoute` widget
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      label: Text('PREV PAGE'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 40,
                        width: 150,
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton.icon(
                          icon: Icon(Icons.skip_next_rounded),
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Color.fromARGB(255, 15, 67, 29),
                          ),

                          // Within the `FirstRoute` widget
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThirdRoute()),
                            );
                          },
                          label: Text('NEXT PAGE'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
