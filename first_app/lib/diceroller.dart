import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/img/dice-img/dice-1.png';

  void rollDice() {
    //Generate a random number between 1 and 10
    int diceRoll = Random().nextInt(10);
    setState(() {
      activeDiceImage = 'assets/img/dice-img/dice-$diceRoll.png';
    });

    print("The rollDice button was clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // IMAGE OF THE DICE.
        Image(
          image: AssetImage(activeDiceImage),
          width: 200,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(12),
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text(
            "Roll Dice",
          ),
        ),
      ],
    );
  }
}
