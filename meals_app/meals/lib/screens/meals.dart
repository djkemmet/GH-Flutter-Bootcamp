import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/data/dummy_data.dart';
// Screen Imports
import 'package:meals/screens/meal_detail.dart';

// Widget Imports
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  // Class Constructor
  MealsScreen({super.key, required this.meals});

  // Class Fields
  String? title;
  final List<Meal> meals;

  // Class Functions
  void selectMeal(Meal meal, BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => MealsDetailsScreen(meal: meal)));
  }

  // Class Build method
  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, integer) => MealItem(
          meal: meals[integer],
          onSelectMeal: (meal) {
            selectMeal(meal, context);
          }),
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

    if (title == Null) {
      return content;
    }

    return Scaffold(
      body: Scaffold(appBar: AppBar(title: Text(title!)), body: content),
    );
  }
}
