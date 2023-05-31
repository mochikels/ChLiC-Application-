// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../device size/sizers_helpers.dart';

class BeaAbout extends StatelessWidget {
  const BeaAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 15, 67, 29),
              borderRadius: BorderRadius.circular(80)),
          child: Image.asset(
            'lib/png/bea.jpg',
            alignment: Alignment.center,
            scale: 2,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Text(
                    'Crixel Bea A. Atienza',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: displayWidth(context) * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 150,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 15, 67, 29),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'Lead Proponent',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: displayWidth(context) * 0.03,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Text(
                    'Greetings! I\'m Bea, responsible for lesson and game content creation in Team ChLiC. I also evaluate and improve existing lessons and games, striving to enhance their effectiveness.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: displayWidth(context) * 0.03),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Email: crixelbeaatienza@gmail.com',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Text(
                'Contact Number: 09150069827',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
