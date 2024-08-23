import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';

// Widget Imports
import 'package:meals/widgets/category_grid_item.dart';

// Screens Imports
import 'package:meals/screens/meals.dart';

// Model Import
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavorite});

  // Class Parameters
  final void Function(Meal meal) onToggleFavorite;

  void _selectCategory(BuildContext context, Category category) {
    // Filter the list of dummy meals by returning meals whose catories match
    // category.id
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => MealsScreen(
        meals: filteredMeals,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(24.0),
        // Controls the layout of the Gridview we are
        // creating flutter provides several pre-defined layouts.
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            )
        ]);
  }
}
