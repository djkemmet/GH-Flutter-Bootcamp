import 'package:flutter/material.dart';

class StartScreenView extends StatelessWidget {
  const StartScreenView(this.startQuiz,{super.key});
  
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/quiz-logo.png',
                scale: 2,
                color: Color.fromARGB(150, 255, 255, 255)
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ),
              ),
              const SizedBox(height: 64),
              OutlinedButton.icon(
                icon: const Icon(Icons.start),
                onPressed:startQuiz,
                label: const Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white),
                ),
                
              ),
            ],
          );
  }
  }