import 'package:flutter/material.dart';

import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  // Class Constructor
  const MealsScreen({super.key, required this.title, required this.meals});

  // Class Fields
  final String title;
  final List<Meal> meals;

  // Class Build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(),
    );
  }
}
