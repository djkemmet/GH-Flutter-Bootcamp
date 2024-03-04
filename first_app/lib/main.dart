import 'package:flutter/material.dart';
import 'gradientContainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        gradientColors: const <Color>[Colors.black, Colors.white],
      )),
    ),
  );
} // main()


