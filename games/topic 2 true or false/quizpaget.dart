// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api, avoid_print, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:chlic/games/topic%202%20true%20or%20false/quizscrntwo.dart';
import 'package:flutter/material.dart';

import 'package:rflutter_alert/rflutter_alert.dart';

QuizLogicc quizLogic = new QuizLogicc();

class QuizPageT extends StatefulWidget {
  @override
  _QuizPageTState createState() => _QuizPageTState();
}

class _QuizPageTState extends State<QuizPageT> {
  final List<Widget> scoreKeeper = [];

  int totalCorrect = 0;
  int totalQuestions = 0;

  void checkAnswer(bool value) {
    if (quizLogic.getAnswer() == value) {
      print('right answer');
      scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      totalCorrect++;
    } else {
      print('wrong answer');
      scoreKeeper.add(Icon(Icons.close, color: Colors.red));
    }
    totalQuestions++;
    if (quizLogic.isFinshed() == true) {
      Alert(
          context: context,
          title: 'Finished',
          desc: 'You scored a total of $totalCorrect out of $totalQuestions!',
          buttons: [
            DialogButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Play Again',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ))
          ]).show();
      quizLogic.reset();
      scoreKeeper.clear();
      totalCorrect = 0;
      totalQuestions = 0;
    } else {
      quizLogic.nextQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: scoreKeeper,
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(255, 15, 67, 29),
        ),
        Expanded(
          flex: 2,
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.green,
                      Colors.grey,
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Color.fromARGB(255, 51, 94, 3),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      quizLogic.getQuestion(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              )),
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(255, 15, 67, 29),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: TextButton(
                    child: Text(
                      'TRUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        checkAnswer(true);
                      });
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.red,
                        elevation: 2,
                        backgroundColor: Color.fromARGB(255, 15, 67, 29)),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: TextButton(
                    child: Text(
                      'FALSE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        checkAnswer(false);
                      });
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.red,
                        elevation: 2,
                        backgroundColor: Color.fromARGB(255, 15, 67, 29)),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 300,
        ),
      ],
    );
  }
}
