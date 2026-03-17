class Question {
  const Question({required this.question, required this.possibleAnswers, required this.correctAnswer});
  
  final String question;
  final List<String> possibleAnswers;
  final String correctAnswer;
}