import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/models/summary.dart';

class QuestionsSummary {
  const QuestionsSummary(this.userAnswers);

  final List<String> userAnswers;

  List<Summary> get questionSummaryList {
    final List<Summary> summaryList = [];
    
    for (int i = 0; i < questions.length; i++) {
      final Summary summary = Summary(
        questionIndex: i,
        question: questions[i].question,
        userAnswer: userAnswers[i],
        correctAnswer: questions[i].correctAnswer,
      );

      summaryList.add(summary);
    }

    return summaryList;
  }
}
