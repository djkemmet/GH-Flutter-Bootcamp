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



    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          currentQuestion.Question,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 30),
        AnswerButton(
          value: currentQuestion.Answers[0],
          onTap: () {},
        ),
        const SizedBox(height: 12),
        AnswerButton(
          value: currentQuestion.Answers[1],
          onTap: () {},
        ),
        const SizedBox(height: 12),
        AnswerButton(
          value: currentQuestion.Answers[2],
          onTap: () {},
        ),
        const SizedBox(height: 12),
        AnswerButton(
          value: currentQuestion.Answers[3],
          onTap: () {},
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
