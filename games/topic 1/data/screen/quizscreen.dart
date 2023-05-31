// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, non_constant_identifier_names, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

import 'package:chlic/games/topic%201/data/screen/resultscreen.dart';
import 'package:flutter/material.dart';

import '../questionsexample.dart';
import '../ui/color.dart';

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              if (page == questions.length - 1) {
                setState(() {
                  btnText = "See Results";
                });
              }
            },
            physics: new NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/15",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 67, 29),
                        fontSize: 28.0,
                      ),
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 15, 67, 29),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    padding: const EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.green,
                          Colors.grey,
                        ],
                      ),
                      color: Color.fromARGB(255, 17, 200, 233),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      "${questions[index].question}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    color: Color.fromARGB(255, 15, 67, 29),
                  ),
                  SizedBox(height: 30),
                  for (int i = 0; i < questions[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: EdgeInsets.only(
                          bottom: 20.0, left: 12.0, right: 12.0),
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fillColor: btnPressed
                            ? questions[index].answers!.values.toList()[i]
                                ? Colors.green
                                : Colors.red
                            : AppColor.color1,
                        onPressed: () {
                          if (questions[index].answers!.values.toList()[i]) {
                            score++;
                            print("yes");
                          } else {
                            print("no");
                          }
                          setState(() {
                            btnPressed = true;
                          });
                        },
                        child: Text(questions[index].answers!.keys.toList()[i],
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 25.0,
                            )),
                      ),
                    ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      if (_controller!.page?.toInt() == questions.length - 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(score)));
                      } else {
                        _controller!.nextPage(
                            duration: Duration(milliseconds: 250),
                            curve: Curves.easeInExpo);

                        setState(() {
                          btnPressed = false;
                        });
                      }
                    },
                    shape: StadiumBorder(),
                    fillColor: Color.fromARGB(255, 15, 67, 29),
                    padding: EdgeInsets.all(18.0),
                    elevation: 0.0,
                    child: Text(
                      btnText,
                      style:
                          TextStyle(color: Color.fromARGB(255, 250, 255, 252)),
                    ),
                  )
                ],
              );
            },
            itemCount: questions.length,
          )),
    );
  }
}
