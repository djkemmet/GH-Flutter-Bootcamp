import 'package:flutter/material.dart';

// Screens Imports
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/meals.dart';

// Model Imports
import 'package:meals/models/meal.dart';

class TabsScreen extends StatefulWidget {
  // Class Constructor
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentNavigationIndex = 0;
  final List<Meal> _favoriteMeals = [];

  void _toggleMealFavoriteStatus(Meal meal) {
    final ifExists = _favoriteMeals.contains(meal);

    if (ifExists) {
      _favoriteMeals.remove(meal);
    } else {
      _favoriteMeals.add(meal);
    }
  }

  void _selectPage(int index) {
    setState(() {
      _currentNavigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage =
        CategoriesScreen(onToggleFavorite: _toggleMealFavoriteStatus);
    String activePageTitle = 'Categories';

    if (_currentNavigationIndex == 1) {
      activePage = MealsScreen(
        meals: const [],
        onToggleFavorite: _toggleMealFavoriteStatus,
      );
      activePageTitle = "Favorites";
    }

    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _selectPage(index);
        },
        currentIndex: _currentNavigationIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.set_meal,
              ),
              label: "Categories"),
          BottomNavigationBarItem(
            icon: Icon(Icons.start),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
