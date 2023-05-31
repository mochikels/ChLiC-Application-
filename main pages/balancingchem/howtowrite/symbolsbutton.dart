// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../device size/sizers_helpers.dart';

class Explainbuttonbalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.bottomCenter,
          height: 50,
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => FunkyOverlaybalance(),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 15, 67, 29),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.science_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'See Symbols',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: displayWidth(context) * 0.04,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FunkyOverlaybalance extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayStatebalance();
}

class FunkyOverlayStatebalance extends State<FunkyOverlaybalance>
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
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 480,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    Divider(
                      thickness: 8,
                      color: Color.fromARGB(255, 162, 190, 163),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SYMBOLS',
                      style: TextStyle(
                          fontSize: displayWidth(context) * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 8,
                      color: Color.fromARGB(255, 162, 190, 163),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          '(s) - solid',
                          style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '(l) - liquid',
                          style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '(g) - gas',
                          style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/png/up.png',
                              scale: 3,
                            ),
                            Text(
                              '- formation of precipitate',
                              style: TextStyle(
                                  fontSize: displayWidth(context) * 0.04,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/png/down.png',
                              scale: 3,
                            ),
                            Text(
                              '- formation of gas',
                              style: TextStyle(
                                  fontSize: displayWidth(context) * 0.04,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          '(conc) - concentrated',
                          style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '(dil) - diluted',
                          style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '(aq) - aqueous',
                          style: TextStyle(
                              fontSize: displayWidth(context) * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 8,
                      color: Color.fromARGB(255, 162, 190, 163),
                    ),
                    SizedBox(
                      height: 10,
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
