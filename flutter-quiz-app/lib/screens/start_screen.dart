import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/primary_space.dart';
import 'package:flutter_quiz_app/models/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  static const PredefinedColors colors = PredefinedColors();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 350,
          color: const Color.fromARGB(130, 207, 180, 252),
        ),
        const VerticalSpace(40),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(color: colors.primaryTextColor, fontSize: 24),
        ),
        const VerticalSpace(40),
        OutlinedButton.icon(
          icon: Icon(
            Icons.play_arrow,
            color: colors.primaryTextColor,
          ),
          onPressed: startQuiz,
          label: Text(
            'Start Quiz',
            style: GoogleFonts.lato(color: colors.primaryTextColor),
          ),
        ),
      ],
    );
  }
}
