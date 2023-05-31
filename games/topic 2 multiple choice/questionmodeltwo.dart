class Questionn {
  final String questionText;
  final List<Answer> answersList;

  Questionn(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Questionn> getQuestions() {
  List<Questionn> list = [];
  //ADD questions and answer here

  list.add(Questionn(
    "___ Mg + ___ Cl\u2082 → ___ MgCl\u2082",
    [
      Answer("1 Mg + 2 Cl\u2082 → 1 MgCl\u2082", false),
      Answer("2 Mg + 2 Cl\u2082 → 1 MgCl\u2082", false),
      Answer("1 Mg + 1 Cl\u2082 → 1 MgCl\u2082", true),
      Answer("1 Mg + 1 Cl\u2082 → 2 MgCl\u2082", false),
    ],
  ));

  list.add(Questionn(
    "___ NH\u2083 + ___ HCl → ___ NH\u2084Cl",
    [
      Answer(" 1  NH\u2083 + 1 HCl → 1  NH\u2084Cl", true),
      Answer(" 1  NH\u2083 + 1 HCl → 3  NH\u2084Cl", false),
      Answer(" 1  NH\u2083 + 1 HCl → 2  NH\u2084Cl", false),
      Answer(" 1  NH\u2083 + 3 HCl → 1  NH\u2084Cl", false),
    ],
  ));

  list.add(Questionn(
    "__ Cs + ___ N\u2082 → ___ Cs\u2083N ",
    [
      Answer("6 Cs + 1 N\u2082 → 2 Cs\u2083N ", true),
      Answer("5 Cs + 2 N\u2082 → 1 Cs\u2083N", false),
      Answer("4 Cs + 2 N\u2082 → 2 Cs\u2083N", false),
      Answer("3 Cs + 2 N\u2082 → 1 Cs\u2083N", false),
    ],
  ));

  list.add(Questionn(
    "___ N\u2082 + ___ H\u2082 → ___ NH\u2083",
    [
      Answer("1 N\u2082 + 3 H\u2082 → 2 NH\u2083  ", true),
      Answer("1 N\u2082 + 2 H\u2082 → 2 NH\u2083", false),
      Answer("1 N\u2082 + 2 H\u2082 → 1 NH\u2083", false),
      Answer("1 N\u2082 + 4 H\u2082 → 2 NH\u2083", false),
    ],
  ));

  list.add(Questionn(
    "___ N\u2082 + ___ H\u2082 →___ NH\u2083",
    [
      Answer("1 N\u2082 + 3 H\u2082  1 NH\u2083", false),
      Answer("1 N\u2082 + 2 H\u2082  2 NH\u2083", false),
      Answer("1 N\u2082 + 3 H\u2082  2 NH\u2083", true),
      Answer("1 N\u2082 + 2 H\u2082  4 NH\u2083", false),
    ],
  ));

  list.add(Questionn(
    "  ___KClO\u2083 →___KCl + ___O2",
    [
      Answer("2 KClO\u2083 →2 KCl + 4 O\u2082", false),
      Answer("2 KClO\u2083 →2 KCl + 3 O\u2082", true),
      Answer("2 KClO\u2083 →3 KCl + 3 O\u2082", false),
      Answer("2 KClO\u2083 →1 KCl + 3 O\u2082", false),
    ],
  ));

  list.add(Questionn(
    "___H\u2082 + ___ O\u2082 → ___H2O",
    [
      Answer("2 H\u2082 + 2 O\u2082 → 2 H\u2082O", false),
      Answer("2 H\u2082 + 2 O\u2082 → 1 H\u2082O", false),
      Answer("2 H\u2082 + 1 O\u2082 → 3 H\u2082O", false),
      Answer("2 H\u2082 + 1 O\u2082 → 2 H\u2082O", true),
    ],
  ));

  list.add(Questionn(
    " ___ P + ___ O2 → ___ P2O5",
    [
      Answer("4 P + 5  O\u2082 → 1  P\u2082O\u2085 ", false),
      Answer("4 P + 5  O\u2082 → 3  P\u2082O\u2085 ", false),
      Answer("4 P + 5  O\u2082 → 2  P\u2082O\u2085 ", true),
      Answer("4 P + 4  O\u2082 → 2  P\u2082O\u2085", false),
    ],
  ));

  list.add(Questionn(
    "___K + ___ MgBr → ___ KBr + ___ Mg",
    [
      Answer("1 K + 1  MgBr → 1 KBr + 1 Mg", true),
      Answer("2 K + 1  MgBr → 1 KBr + 1 Mg", false),
      Answer("1 K + 2 MgBr → 1 KBr + 1 Mg", false),
      Answer("1 K + 1  MgBr → 1 KBr + 2 Mg", false),
    ],
  ));

  list.add(Questionn(
    "___ S\u2088 + ___ O\u2082→  ___ SO\u2083",
    [
      Answer("2  S\u2088 + 11  O\u2082→  8  SO\u2083", false),
      Answer("1  S\u2088 + 12  O\u2082→  8  SO\u2083", true),
      Answer("3  S\u2088 + 12  O\u2082→  8  SO\u2083", false),
      Answer("2  S\u2088 + 12  O\u2082→  6  SO\u2083", false),
    ],
  ));

  list.add(Questionn(
    "___ Ag\u2082O→  ___ Ag + ___ O\u2082",
    [
      Answer("3  Ag\u2082O→  4  Ag + 1 O\u2082", false),
      Answer("4  Ag\u2082O→  4  Ag + 2 O\u2082", false),
      Answer("Ag\u2082O→  4  Ag + 2 O\u2082", false),
      Answer("2  Ag\u2082O→  4  Ag + 1 O\u2082", true),
    ],
  ));

  list.add(Questionn(
    "___ N\u2082 + ___ H\u2082  →  ___ NH\u2083",
    [
      Answer("1 N\u2082 + 3  H\u2082  →  2 NH\u2083", true),
      Answer("1 N\u2082 + 2  H\u2082  →  2 NH\u2083", false),
      Answer("1 N\u2082 + 5  H\u2082  →  2 NH\u2083", false),
      Answer("1 N\u2082 + 4  H\u2082  →  2 NH\u2083", false),
    ],
  ));

  list.add(Questionn(
    "Potassium metal and chlorine gas combine to form potassium chloride",
    [
      Answer("1 K + Cl\u2082  2 KCl  ", false),
      Answer("2 K + Cl\u2082  2 KCl", true),
      Answer("2 K + Cl\u2082  1 KCl ", false),
      Answer("2 K + Cl\u2082  3 KCl ", false),
    ],
  ));

  list.add(Questionn(
    "Hydrogen gas and nitrogen monoxide react to form water and nitrogen gas",
    [
      Answer("2 H\u2082 + 2 NO  2 H\u2082O + N\u2082 ", true),
      Answer("2 H\u2082 + 2 NO  3 H\u2082O + N\u2082 ", false),
      Answer("1 H\u2082 + 2 NO  2 H\u2082O + N\u2082 ", false),
      Answer("2 H\u2082 + 3 NO  2 H\u2082O + N\u2082 ", false),
    ],
  ));

  list.add(Questionn(
    "Aluminum and hydrochloric acid react to form aluminum chloride and hydrogen gas",
    [
      Answer("2 Al + 6 HCl  3 H2 + 2 AlCl3", false),
      Answer("2 Al + 6 HCl  3 H2 + 3 AlCl3", false),
      Answer("2 Al + 5 HCl  3 H2 + 2 AlCl3", false),
      Answer("2 Al + 4 HCl  3 H2 + 2 AlCl3", false),
    ],
  ));

  return list;
}
