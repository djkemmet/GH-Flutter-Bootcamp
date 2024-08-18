import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  // Class Constructor which takes key for it's position
  // in the application. The constructor required
  // it's fields to be set.
  const CategoryGridItem({super.key, required this.category});

  // CLass fields
  final Category category;

  // Overriden Build Method for our Widget
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.55),
            category.color.withOpacity(.9),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(category.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Theme.of(context).colorScheme.surface)));
  }
}
