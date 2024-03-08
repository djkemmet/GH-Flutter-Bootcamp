// needs to be a stateful widget
import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreenView extends StatefulWidget {
  const QuestionsScreenView({super.key});

  @override
  State<QuestionsScreenView> createState() {
    return _QuestionsScreenViewState();
  }
}

class _QuestionsScreenViewState extends State<QuestionsScreenView> {
  
  // Create a variable that stores the question number we're on.
  int currentQuestionIndex = 0;

  // Create a function to update our state that increments
  // the currentQuestionIndex vale. 
  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.Question,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((item){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnswerButton(value: item ,onTap: answerQuestion),
            );
          }),
        ],
      ),
    );
  }
}
