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
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.Question,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.Answers.map((item){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnswerButton(value: item ,onTap: (){}),
            );
          }),
        ],
      ),
    );
  }
}
