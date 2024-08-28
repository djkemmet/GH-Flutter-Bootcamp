import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  // Class Construct - Pass self to parent, use parent's constructor to
  // instantiate new instances of this object. Since the stateNotifier
  // is of type Map<Fulter, bool> then we're going to go ahead and pass
  // a map variable to the constructor to satisfy that type requriements.
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegan: false,
          Filter.vegetarian: false,
        });

  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider = StateNotifierProvider((ref) => null);
