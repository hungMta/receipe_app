import 'package:flutter/material.dart';
import 'package:recipe_app/modules/recipe_list/view/recipe_page.dart';

class AppRoute {
  static Map<String, WidgetBuilder> appRoute = {
    '/': (context) => const RecipePage(),
  };
}
