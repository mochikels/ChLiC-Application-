// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../device size/sizers_helpers.dart';

class JeanAbout extends StatelessWidget {
  const JeanAbout({super.key});

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
            'lib/png/jean.jpg',
            alignment: Alignment.center,
            scale: 1,
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
                    'Jean Jasmine P. Limbo',
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
                    'Lead Developer',
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
                    'Hello! I\'m Jean, the lead developer of the ChLiC application. Our team embarked on this journey together to build a new application. I may not be an expert in coding, but took the risk in order for us to achieve our goals.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: displayWidth(context) * 0.03),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Email: jeanni.limbo@gmail.com',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Text(
                'Contact Number: 09638565936',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
