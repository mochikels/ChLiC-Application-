// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:chlic/device%20size/sizers_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplainbuttonTNML extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 50,
            width: 140,
            color: Colors.white,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => FunkyOverlayTNML(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 189, 204, 190),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.science_outlined,
                      color: Colors.green[900],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Explanation',
                      style: TextStyle(color: Colors.green[900]),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FunkyOverlayTNML extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayStateTNML();
}

class FunkyOverlayStateTNML extends State<FunkyOverlayTNML>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Material(
            color: Colors.transparent,
            child: ScaleTransition(
              scale: scaleAnimation,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 380,
                  width: 500,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(children: [
                      Text(
                        'TAKE NOTE!',
                        style: GoogleFonts.leagueSpartan(
                            fontSize: displayWidth(context) * 0.04,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '      In a chemical equation, reactants are usually written on the left side and products on the right side. The reactants and products always have an arrow between them that represents ',
                              style: TextStyle(
                                color: Colors.green[900],
                                fontSize: displayWidth(context) * 0.03,
                              ),
                            ),
                            TextSpan(
                              text: ' "to yield"',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: displayWidth(context) * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  ' commonly reactants are 2 or more substances or chemical and it is written with a plus (+) sign that means',
                              style: TextStyle(
                                color: Colors.green[900],
                                fontSize: displayWidth(context) * 0.03,
                              ),
                            ),
                            TextSpan(
                              text: ' "reacts with".',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: displayWidth(context) * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  ' The numbers in front of the formulas are called coefficients. In this equation hydrogen gas',
                              style: TextStyle(
                                color: Colors.green[900],
                                fontSize: displayWidth(context) * 0.03,
                              ),
                            ),
                            WidgetSpan(
                              child: Image.asset('lib/png/balancingh2.png',
                                  scale: 4),
                            ),
                            TextSpan(
                              text:
                                  'has a coefficient of 2 as well as the product which is water.',
                              style: TextStyle(
                                color: Colors.green[900],
                                fontSize: displayWidth(context) * 0.03,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' Subscript is the number of atoms of the element present in the substance. This located at the right side of the symbol. Oxygen gas has a subscript of 2.',
                              style: TextStyle(
                                color: Colors.green[900],
                                fontSize: displayWidth(context) * 0.03,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            )));
  }
}
