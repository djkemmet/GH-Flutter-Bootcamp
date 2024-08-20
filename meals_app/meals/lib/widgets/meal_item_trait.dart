import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  // Class Constructor
  const MealItemTrait({super.key, required this.icon, required this.label});

  // class Fields
  final IconData icon;
  final String label;

  // Class build() override
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 17,
        color: Colors.white,
      ),
      const SizedBox(width: 6),
      Text(label,
          style: const TextStyle(
            color: Colors.white,
          ))
    ]);
  }
}
