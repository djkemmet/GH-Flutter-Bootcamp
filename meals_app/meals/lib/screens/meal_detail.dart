import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsDetailsScreen extends StatelessWidget {
  // Class Constructor
  const MealsDetailsScreen({super.key, required this.meal});

  //Class Fields
  final Meal meal;

  //Build Override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Image.network(meal.imageUrl,
          height: 300, width: double.infinity, fit: BoxFit.cover),
    );
  } // Ends Build Method.
} // Ends Screen class
