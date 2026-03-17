import 'package:flutter_quiz_app/models/question.dart';

final questions = [
  Question(
    question: 'What are the main building blocks of Flutter UIs?',
    possibleAnswers: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
    correctAnswer: 'Widgets'
  ),
  Question(
    question: 'How are Flutter UIs built?', 
    possibleAnswers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
    correctAnswer: 'By combining widgets in code'
  ),
  Question(
    question: 'What\'s the purpose of a StatefulWidget?',
    possibleAnswers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
    correctAnswer: 'Update UI as data changes'
  ),
  Question(
    question: 'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    possibleAnswers: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
    correctAnswer: 'StatelessWidget'
  ),
  Question(
    question: 'What happens if you change data in a StatelessWidget?',
    possibleAnswers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
    correctAnswer: 'The UI is not updated'
  ),
  Question(
    question: 'How should you update data inside of StatefulWidgets?',
    possibleAnswers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
    correctAnswer: 'By calling setState()'
  ),
];