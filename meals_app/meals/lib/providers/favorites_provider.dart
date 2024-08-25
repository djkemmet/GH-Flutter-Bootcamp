import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

// Create a FavoriteMealsNotifier from StateNotifier for a
//list of meal objects.
class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  // Class Constructor = Itself is passed through directly to
  // StateNotifier with the database it's supposed to mamnage.
  FavoriteMealsNotifier() : super([]);

  //Methods that allow us to modify Data for This Notifier
  void toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state.where((m) => m.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

var favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
