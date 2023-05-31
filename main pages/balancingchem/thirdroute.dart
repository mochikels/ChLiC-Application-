// ignore_for_file: avoid_unnecessary_containers, unused_import, prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace

import 'package:chlic/main%20pages/balancingchem/stepinbalancing.dart';
import 'package:chlic/main%20pages/balancingchem/stepsbalancing/stepsbalancingfifth.dart';
import 'package:chlic/main%20pages/balancingchem/stepsbalancing/stepsbalancingfirst.dart';
import 'package:chlic/main%20pages/balancingchem/stepsbalancing/stepsbalancingfourth.dart';
import 'package:chlic/main%20pages/balancingchem/stepsbalancing/stepsbalancingthird.dart';
import 'package:chlic/main%20pages/balancingchem/stepsbalancing/stepsbalancingtwo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/lessons_hp.dart';
import '../../device size/sizers_helpers.dart';
import '../lessonpage.dart';
import '../navpagetwo.dart';
import '../pages/thirdpagelessonsteps/tnm/tnmone.dart';
import 'howtowrite/numberfourhtw.dart';
import 'howtowrite/numberonehtw.dart';
import 'howtowrite/numberthreehtw.dart';
import 'howtowrite/numbertwohtw.dart';
import 'howtowrite/symbolsbutton.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

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
                'REMINDERS AND STEPS IN BALANCING CHEMICAL EQUATION',
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Here are the reminders and steps in balancing a chemical equation.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: displayWidth(context) * 0.04,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 15, 67, 29),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Firstbalance(),
            SizedBox(
              height: 10,
            ),
            Secondbalance(),
            SizedBox(
              height: 10,
            ),
            Thirdbalance(),
            SizedBox(
              height: 10,
            ),
            Fourthbalance(),
            SizedBox(
              height: 10,
            ),
            Fifthbalance(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 10,
                color: Color.fromARGB(255, 162, 190, 163),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'STEPS IN WRITING AND BALANCING CHEMICAL EQUATIONS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: displayWidth(context) * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 67, 29),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  // ignore: prefer_const_constructors
                  text: TextSpan(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextSpan(
                        text: 'Sample Equation:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 15, 67, 29),
                            fontSize: displayWidth(context) * 0.04,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: RichText(
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                text: TextSpan(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextSpan(
                      text:
                          ' Nitrogen gas reacts to hydrogen gas to produce ammonia',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: displayWidth(context) * 0.04,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
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
              child: Divider(
                thickness: 10,
                color: Color.fromARGB(255, 162, 190, 163),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 310,
                width: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 49, 77, 56),
                ),
                child: StepsinBAL()),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 40,
                    width: 150,
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
                        width: 410,
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
                                  builder: (context) => const NaviPage()),
                            );
                          },
                          label: Text('DONE'),
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
