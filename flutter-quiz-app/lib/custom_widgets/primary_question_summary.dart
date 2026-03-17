import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/primary_space.dart';
import 'package:flutter_quiz_app/models/constants.dart';
import 'package:flutter_quiz_app/models/summary.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryQuestionSummary extends StatelessWidget {
  const PrimaryQuestionSummary(this.summaryData, this.answerIsCorrect, {super.key});

  final Summary summaryData;
  final bool answerIsCorrect;

  static const PredefinedColors colors = PredefinedColors();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: ShapeDecoration(
            color: answerIsCorrect
                ? colors.correctAnswerColor
                : colors.incorrectAnswerColor,
            shape: CircleBorder(),
          ),
          padding: EdgeInsets.all(20),
          child: Text(
            (summaryData.questionIndex + 1).toString(),
            style: GoogleFonts.lato(
              color: colors.primaryBgColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const HorizontalSpace(20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summaryData.question,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const VerticalSpace(5),
              Text(
                summaryData.userAnswer,
                style: GoogleFonts.lato(color: colors.userAnswerColor),
              ),
              Text(
                summaryData.correctAnswer,
                style: GoogleFonts.lato(
                  color: colors.correctAnswerColor,
                ),
              ),
              const VerticalSpace(15),
            ],
          ),
        ),
      ],
    );
  }
}
