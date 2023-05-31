// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, library_private_types_in_public_api

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chlic/games/topic%201/data/screen/quizscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/color.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ GAME: TOPIC ONE'),
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
                "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               RULES OF NAMING AND WRITING COMPOUNDS",
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
                          builder: (context) => QuizzScreen(),
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
                        color: Color.fromARGB(255, 15, 67, 29),
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
