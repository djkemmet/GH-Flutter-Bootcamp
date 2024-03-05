// needs to be a stateful widget
import 'package:flutter/material.dart';

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
        const Text("The Question Text"),
        const SizedBox(height: 30),
        ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
        const SizedBox(height:12),
        ElevatedButton(onPressed: () {}, child: const Text('Answer 2')),
        const SizedBox(height:12),
        ElevatedButton(onPressed: () {}, child: const Text('Answer 3')),
        const SizedBox(height:12),
        ElevatedButton(onPressed: () {}, child: const Text('Answer 4')),
        const SizedBox(height:12),
      ],
    );
  }
}
