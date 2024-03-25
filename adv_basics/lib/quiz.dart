// needs to be a stateful widget
import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {


  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  void chooseAnswer(String answer){
    setState(() {
      selectedAnswers.add(answer);
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreenView(switchScreen);

    if (activeScreen == 'questions-screen'){
      screenWidget =  QuestionsScreenView(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ],
          )),
          child: Center(
            child: screenWidget
          ),
        ),
      ),
    );
  }
}
