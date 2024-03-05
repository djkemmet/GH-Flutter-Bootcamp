// needs to be a stateful widget
import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "The Question Text",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 30),
        AnswerButton(
          value: "Answer 1",
          onTap: () {},
        ),
        const SizedBox(height: 12),
        AnswerButton(
          value: "Answer 2",
          onTap: () {},
        ),
        const SizedBox(height: 12),
        AnswerButton(
          value: "Answer 3",
          onTap: () {},
        ),
        const SizedBox(height: 12),
        AnswerButton(
          value: "Answer 4",
          onTap: () {},
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
