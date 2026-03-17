import 'package:flutter/material.dart';

import 'package:flutter_quiz_app/helper/questions_summary.dart';
import 'package:flutter_quiz_app/models/constants.dart';
import 'package:flutter_quiz_app/models/summary.dart';

import 'package:flutter_quiz_app/screens/questions_screen.dart';
import 'package:flutter_quiz_app/screens/results_screen.dart';
import 'package:flutter_quiz_app/screens/start_screen.dart';

/// Manages entire app and state
class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  Screens _activeScreen = Screens.startScreen;
  List<Summary> _questionSummaryList = [];
  
  void startQuiz() {
    setState(() {
      _activeScreen = Screens.questionsScreen;
    });
  }

  void showResults(List<String> userAnswers) {
    setState(() {
      QuestionsSummary questionsSummary = QuestionsSummary(userAnswers);
      _questionSummaryList = questionsSummary.questionSummaryList;
      _activeScreen = Screens.resultsScreen;
    });
  }

  void goHome() {
    setState(() {
      _activeScreen = Screens.startScreen;
    });
  }

  Widget setActiveScreenWidget(Screens activeScreen) {
    Widget activeScreenWidget;

    switch (activeScreen) {
      case Screens.questionsScreen:
        activeScreenWidget = QuestionsScreen(showResults);
        break;
      case Screens.resultsScreen:
        activeScreenWidget = ResultsScreen(_questionSummaryList, restartQuiz: startQuiz, goHome: goHome,);
      default:
        activeScreenWidget = StartScreen(startQuiz);
        break;
    }

    return activeScreenWidget;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 19, 7, 41),
                Color.fromARGB(255, 36, 14, 97),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: Center(
            child: setActiveScreenWidget(_activeScreen)
          ),
        ),
      ),
    );
  }
}