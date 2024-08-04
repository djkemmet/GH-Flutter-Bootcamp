// needs to be a stateful widget
import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreenView extends StatefulWidget {
  const QuestionsScreenView({required this.onSelectAnswer, super.key});

  final void Function(String answer) onSelectAnswer;

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
  answerQuestion(String selectedAnswer) {

    widget.onSelectAnswer(selectedAnswer);
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
            style: GoogleFonts.lato(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 201, 153, 251), 
            )
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((item){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnswerButton(value: answer, onTap: (){
                answerQuestion(answer);
              },),
            );
          }),
        ],
      ),
    );
  }
}
