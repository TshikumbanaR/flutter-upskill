import 'package:flutter/material.dart';

enum Screens {
  startScreen,
  questionsScreen,
  resultsScreen
}

class PredefinedColors {
  const PredefinedColors();

  Color get primaryTextColor => Color.fromARGB(255, 207, 188, 252);
  Color get primaryBgColor => Color.fromARGB(255, 13, 3, 27);
  Color get transparentWhite => Color.fromARGB(233, 255, 255, 255);
  Color get userAnswerColor => Color.fromARGB(255, 193, 149, 237);
  Color get correctAnswerColor => Color.fromARGB(255, 131, 143, 238);
  Color get incorrectAnswerColor => Color.fromARGB(255, 235, 130, 205);
}