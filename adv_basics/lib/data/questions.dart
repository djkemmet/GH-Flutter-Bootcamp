import 'package:adv_basics/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    Question: 'What are the main building blocks of Flutter UIs?',
    Answers: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    Question:'How are Flutter UIs built?', 
    Answers:[
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    Question: 'What\'s the purpose of a StatefulWidget?',
    Answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    Question: 'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    Answers: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    Question: 'What happens if you change data in a StatelessWidget?',
    Answers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    Question: 'How should you update data inside of StatefulWidgets?',
    Answers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];