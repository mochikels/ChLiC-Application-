// ignore_for_file: prefer_const_constructors, must_be_immutable, library_private_types_in_public_api

import 'package:chlic/main%20pages/navpagetwo.dart';
import 'package:flutter/material.dart';

import '../ui/color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "CONGRATULATIONS!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 15, 67, 29),
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "Your Score is",
            style: TextStyle(
                color: Color.fromARGB(255, 15, 67, 29), fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          RawMaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NaviPage(),
                  ));
            },
            shape: StadiumBorder(),
            fillColor: AppColor.color1,
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Back to Homepage",
              style: TextStyle(color: Color.fromARGB(255, 15, 67, 29)),
            ),
          ),
        ],
      ),
    );
  }
}
