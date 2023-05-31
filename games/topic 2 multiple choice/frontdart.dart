// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chlic/games/topic%202%20multiple%20choice/quizscreendarttwo.dart';

import 'package:flutter/material.dart';

import '../topic 1/data/ui/color.dart';

class QuizFirstPageE extends StatelessWidget {
  const QuizFirstPageE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ GAME: TOPIC TWO'),
        backgroundColor: Color.fromARGB(255, 162, 190, 163),
      ),
      backgroundColor: Colors.green,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Color.fromARGB(255, 162, 190, 163)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "BALANCING CHEMICALS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: RawMaterialButton(
                  onPressed: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Rules",
                      desc:
                          "1. Once you select your answer, it cant be undone.                                                                                                                                                                2. You can\u0027t exit from the quiz you\u0027re playing.                                                                                                                                                                                               3. You\u0027ll get points on the basis of your correct answers;)",
                      btnOkOnPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreenn(),
                        ),
                      ),
                    ).show();

                    SizedBox(height: 100);
                  },
                  shape: const StadiumBorder(),
                  fillColor: AppColor.pripmaryColor,
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 24.0),
                    child: Text(
                      "Start the Quiz",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
