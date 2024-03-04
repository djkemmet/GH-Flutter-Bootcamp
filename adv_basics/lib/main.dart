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
        body: Center(
      child: Text("This is Text"),
    ));
  }
}
