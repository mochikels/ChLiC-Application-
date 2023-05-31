import 'model/questionmodel.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "What compounds may be classified into two based on the nature of the atoms that make up them?",
    {
      "Metals and Non-metals": false,
      "Polar and Non-polar": false,
      "Ionic and Covalent": true,
      "None of the above": false,
    },
  ),
  QuestionModel(
      "What is the shorthand of expressing the types and the number of atoms in a substance?",
      {
        "Chemical formula": true,
        "Chemical name": false,
        "Lewis structure": false,
        "Substitution of polymerization": false,
      }),
  QuestionModel(
      "What is the chemical name of the given chemical formula: KBr", {
    "Potassium bromic": false,
    "Potassium bromide": true,
    "Potassium bromite": false,
    "Potassium bromine": false,
  }),
  QuestionModel(
      "What is the chemical name of the given chemical formula: BaSO4", {
    "Barium sulfide": false,
    "Barium sulfite": false,
    "Barium sulfate": true,
    "Barium sulfur": false,
  }),
  QuestionModel("LiOH", {
    "Lithium hydrogenic": false,
    "Lithium hydroxite": false,
    "Lithium hydrogen": false,
    "Lithium hydroxide": true,
  }),
  QuestionModel("HCN", {
    "Hydrogen cyanide": true,
    "Hydrocyanic acid": false,
    "Hydrogen acid": false,
    "Hydriodic acid": false,
  }),
  QuestionModel("Fe(OH)\u2083", {
    "Iron hydroxide": false,
    "Iron (III) hydroxide": true,
    "Iron trihydroxide ": false,
    "Iron (II) hydroxide": false,
  }),
  QuestionModel("Radium iodide", {
    "Ra\u2082I": false,
    "RaI": false,
    "RaI\u2082": true,
    "RI": false,
  }),
  QuestionModel("Lead (IV) bromide", {
    "PbBr": false,
    "Pb\u2084Br ": false,
    "Pb(Br)\u2084": false,
    "PbBr\u2084": true,
  }),
  QuestionModel("Calcium nitrite", {
    "Ca(NO)\u2082": false,
    "Ca(NO\u2082)\u2082": true,
    "CaNO\u2082": false,
    "CaNO ": false,
  }),
  QuestionModel("Silver acetate", {
    "AgC\u2082H\u2083O\u2082": true,
    "AgCH\u2083O\u2082": false,
    "AgC\u2082HO\u2082": false,
    "AgC\u2082H\u2083O": false,
  }),
  QuestionModel("Hydrobromic acid", {
    "Hbr": false,
    "HbR": false,
    "HBR": false,
    "HBr": true,
  }),
  QuestionModel("Perchloric acid", {
    "HClO": false,
    "ClO\u2084": false,
    "HClO\u2084": true,
    "HCl": false,
  }),
  QuestionModel("Cesium hydroxide", {
    "CSOH": false,
    "CsOH": true,
    "CeOH": false,
    "CEOH": false,
  }),
  QuestionModel("Magnesium hydroxide", {
    "MgOH": false,
    "Mg(OH\u2082)": false,
    "MgH\u2082": false,
    "Mg(OH)\u2082": true,
  }),
];
