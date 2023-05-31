// ignore_for_file: prefer_final_fields

import 'package:chlic/games/topic%202/question.dart';

class QuizLogic {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('An element is a substance that is made up of two or more atoms.',
        false),
    Question('Compounds are joined together by a chemical bond.', true),
    Question(
        'Chemical name is the scientific name given to a chemical in accordance with the nomenclature system developed by the International United of Physical and Applied Chemistry.',
        false),
    Question(
        'Structural formula is defined as shorthand for expressing the types and number of atoms in a substance.',
        false),
    Question(
        'Chemical formula as a symbolic expression of a compound or substance.',
        true),
    Question(
        'There are four classifications of compounds namely: ionic, covalent, polar and nonpolar.',
        false),
    Question(
        'Ionic compound is formed between a metal atom and a nonmetal atom.',
        true),
    Question(
        'Covalent compound is formed between two or more nonmetal atoms, and the type of intramolecular bond that exists between atoms is an ionic bond.',
        false),
    Question(
        'In writing the chemical formula, structural formula, and chemical name of a given compound, you must first determine the intramolecular bond that exists between atoms of compounds.',
        true),
    Question(
        'Tertiary/ Ternary Acids, also called oxyacids, are compounds that are named according to the number of oxygen atoms in each module.',
        true),
    Question(
        'Bases are named by adding the word hydroxide to the positive ion.',
        true),
    Question(
        'Binary Compounds of Metals and Non-metals use Greek prefixes to determine the number of atoms.',
        false),
    Question('The chemical name of CaBr2 is Calcium Bromide.', true),
    Question('FeCl3 is a chemical formula of Iron (II) Chloride.', false),
    Question('Hydrophosphoric acid is the chemical name of H3P.', true),
  ];

  String getQuestion() {
    return _questions[_questionNumber].questionString;
  }

  bool isFinshed() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  bool getAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }
}
