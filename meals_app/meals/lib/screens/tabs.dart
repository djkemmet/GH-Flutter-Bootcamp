import 'package:flutter/material.dart';

// Screens Imports
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/meals.dart';

// Model Imports
import 'package:meals/models/meal.dart';

//Widget Imports
import 'package:meals/widgets/main_drawer.dart';

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

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _toggleMealFavoriteStatus(Meal meal) {
    final ifExists = _favoriteMeals.contains(meal);

    if (ifExists) {
      setState(() {
        _favoriteMeals.remove(meal);
        _showInfoMessage("Meal is no longer a favorite.");
      });
    } else {
      setState(() {
        _favoriteMeals.add(meal);
        _showInfoMessage("Meal was addec to favorites.");
      });
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
      drawer: const MainDrawer(),
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
