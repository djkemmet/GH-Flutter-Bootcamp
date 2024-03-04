import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // Class Property or Instance Variable
  final String textToStyle;

  // IV as positional argument this.textToStyle which refers to this class's
  // property, textToStyle
  const StyledText(this.textToStyle, {super.key});

  @override
  Widget build(context) {
    return Text(
      textToStyle,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
