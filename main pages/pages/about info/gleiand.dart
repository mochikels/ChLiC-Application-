// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../device size/sizers_helpers.dart';

class GleiandAbout extends StatelessWidget {
  const GleiandAbout({super.key});

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
            'lib/png/gleiand.jpg',
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
                    'Gleiand Benedict D. Ranillo',
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
                    'Secretary',
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
                    'Hey there! I’m Gleiand. A member of Team ChLiC, tasked with gathering content for the lessons. In my last role, I was given the task for the revision of research paper.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: displayWidth(context) * 0.03),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Email: gleiandranillo732@gmail.com',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Text(
                'Contact Number: 09203125009',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
