import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:meals/widgets/meal_item_trait.dart';

class MealItem extends StatelessWidget {
  // Class Constructor
  const MealItem({
    super.key,
    required this.meal,
    required this.onSelectMeal,
  });

  // Class Fields
  final Meal meal;
  final void Function(Meal meal) onSelectMeal;

  // Class Functions
  String get complexityText {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  String get affordabilityText {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  // Class Override - Build Function
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () {
          onSelectMeal(meal);
        },
        child: Stack(
          children: [
            FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(meal.imageUrl),
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 44,
                ),
                color: Colors.black54,
                child: Column(children: [
                  Text(meal.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(height: 12),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    MealItemTrait(
                      icon: Icons.schedule,
                      label: '${meal.duration} min',
                    ),
                    const SizedBox(width: 12),
                    const MealItemTrait(
                      icon: Icons.work,
                      label: 'ComplexityText}',
                    ),
                    const SizedBox(width: 12),
                    MealItemTrait(
                      icon: Icons.attach_money,
                      label: affordabilityText,
                    ),
                  ])
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}