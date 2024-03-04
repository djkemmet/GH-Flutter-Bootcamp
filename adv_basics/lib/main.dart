import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: advBasicsApp(),
  ));
}

class advBasicsApp extends StatelessWidget {
  advBasicsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[700],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/quiz-logo.png',
                scale: 2,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ),
              ),
              const SizedBox(height: 64),
              TextButton(
                child: Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
