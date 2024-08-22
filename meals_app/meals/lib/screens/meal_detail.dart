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
        title: Text(meal.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.network(meal.imageUrl,
              height: 300, width: double.infinity, fit: BoxFit.cover),
          const SizedBox(height: 14),
          Text(
            "Ingredients",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(height: 14),
          for (final ingredient in meal.ingredients)
            Text(ingredient, style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 24),
          Text(
            "Steps",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(height: 14),
          for (final step in meal.steps)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(step,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white)),
            ),
        ]),
      ),
    );
  } // Ends Build Method.
} // Ends Screen class
