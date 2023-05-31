// ignore_for_file: prefer_const_constructors

import 'package:chlic/games/topic%202/quizpage.dart';
import 'package:flutter/material.dart';

class QuizPagggee extends StatelessWidget {
  const QuizPagggee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 255, 252),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 162, 190, 163),
        title: Text(
          'TRUE or FALSE',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}
