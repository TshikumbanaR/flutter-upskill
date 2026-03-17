import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/primary_question_summary.dart';
import 'package:flutter_quiz_app/custom_widgets/primary_space.dart';
import 'package:flutter_quiz_app/custom_widgets/primary_text_button.dart';

import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/models/constants.dart';
import 'package:flutter_quiz_app/models/summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
    this.summary, {
    super.key,
    required this.restartQuiz,
    required this.goHome,
  });

  final void Function() restartQuiz;
  final void Function() goHome;
  final List<Summary> summary;

  @override
  Widget build(BuildContext context) {
    final numOfTotalQuestions = questions.length;
    final numOfCorrectAnswers = summary
        .where((data) => data.correctAnswer == data.userAnswer)
        .length;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'You have answered $numOfCorrectAnswers out of $numOfTotalQuestions questions correctly!',
            style: GoogleFonts.lato(
              color: PredefinedColors().primaryTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const VerticalSpace(40),
          SizedBox(
            height: 450,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...summary.map(
                    (summaryData) => PrimaryQuestionSummary(
                      summaryData,
                      summaryData.correctAnswer == summaryData.userAnswer,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const VerticalSpace(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryTextButtonIcon(
                buttonText: 'Restart Quiz',
                buttonIcon: Icon(Icons.refresh_sharp, color: Colors.white,),
                onPress: restartQuiz,
              ),
              PrimaryTextButtonIcon(
                buttonText: 'Home',
                buttonIcon: Icon(Icons.home, color: Colors.white),
                onPress: goHome,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
