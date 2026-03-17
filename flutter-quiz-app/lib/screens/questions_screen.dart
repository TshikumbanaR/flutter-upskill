import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/primary_space.dart';

import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/models/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.showResults, {super.key});

  final void Function(List<String>) showResults;

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  int questionIndex = 0;
  final List<String> selectedAnswers = [];
  static const PredefinedColors colors = PredefinedColors();

  void selectAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);

      if (questionIndex == questions.length - 1) {
        gradeAnswers();
        return;
      }

      questionIndex++;
    });
  }

  void gradeAnswers() {
    widget.showResults(selectedAnswers);
    selectedAnswers.clear();
  }

  List<String> get shuffledAnswers {
    List<String> returnAnswers = questions[questionIndex].possibleAnswers;
    returnAnswers.shuffle();
    return returnAnswers;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            questions[questionIndex].question,
            style: GoogleFonts.lato(
              color: colors.primaryTextColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const VerticalSpace(40),
          ...shuffledAnswers.map((answer) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.primaryBgColor,
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                  onPressed: () {
                    selectAnswer(answer);
                  },
                  child: Text(
                    answer,
                    style: GoogleFonts.lato(color: colors.transparentWhite),
                    textAlign: TextAlign.center,
                  ),
                ),
                const VerticalSpace(10),
              ],
            );
          }),
        ],
      ),
    );
  }
}
