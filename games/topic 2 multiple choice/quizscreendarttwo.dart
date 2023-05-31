// ignore_for_file: unused_label, use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:chlic/games/topic%202%20multiple%20choice/questionmodeltwo.dart';
import 'package:flutter/material.dart';

class QuizScreenn extends StatefulWidget {
  @override
  State<QuizScreenn> createState() => _QuizScreennState();
}

class _QuizScreennState extends State<QuizScreenn> {
  //define the datas
  List<Questionn> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BALANCING CHEMICALS'),
        backgroundColor: Color.fromARGB(255, 162, 190, 163),
      ),
      backgroundColor: const Color.fromARGB(255, 250, 255, 252),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          _questionWidget(),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1,
            color: Color.fromARGB(255, 15, 67, 29),
          ),
          _answerList(),
          SizedBox(
            height: 20,
          ),
          _nextButton(),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 15, 67, 29),
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(255, 15, 67, 29),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 15, 67, 29),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 60,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor: isSelected
              ? Color.fromARGB(255, 30, 179, 0)
              : Color.fromARGB(255, 189, 204, 190),
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 15, 67, 29),
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "Passed " : "Failed";
    textAlign:
    TextAlign.center;

    return AlertDialog(
      title: Text(
        "$title | Score is $score",
        textAlign: TextAlign.justify,
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Restart"),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}
