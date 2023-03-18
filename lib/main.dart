import 'package:flutter/material.dart';
import 'package:recipe_app/app/recipe_app.dart';
import 'injection_container.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const RecipeApp());
}
