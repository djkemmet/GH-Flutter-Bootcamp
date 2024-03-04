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
    return Container(
      child: const Text("This Is A Stateful Container for the Questions Screen"),
    );
  }

}