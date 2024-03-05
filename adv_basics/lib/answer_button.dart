import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  //Class Proeperties
  final String value;
  final void Function() onTap;

  //Class Constructor
  const AnswerButton({required this.value, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(value),
    );
  }
}
