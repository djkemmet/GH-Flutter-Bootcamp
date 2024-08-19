import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/data/dummy_data.dart';

class MealsScreen extends StatelessWidget {
  // Class Constructor
  const MealsScreen({super.key, required this.title, required this.meals});

  // Class Fields
  final String title;
  final List<Meal> meals;

  // Class Build method
  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, integer) => Text(dummyMeals[integer].title),
    );

    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Uh oh ... nothing here!",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white)),
            const SizedBox(height: 16),
            Text(
              "Try selecting a different Category",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Scaffold(appBar: AppBar(title: Text(title)), body: content),
    );
  }
}
