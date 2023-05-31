// ignore_for_file: prefer_const_constructors

import 'package:chlic/games/topic%202%20multiple%20choice/quizscreendarttwo.dart';

import 'package:flutter/material.dart';

class QuizPagggeee extends StatelessWidget {
  const QuizPagggeee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 70, 31),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 124, 34),
        title: Text(
          'TRUE or FALSE',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizScreenn(),
        ),
      ),
    );
  }
}
