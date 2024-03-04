import 'package:flutter/material.dart';
import 'package:first_app/styledText.dart';
import 'package:first_app/diceroller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.gradientColors});

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: gradientColors),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
