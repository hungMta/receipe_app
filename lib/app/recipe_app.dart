import 'package:flutter/material.dart';
import 'package:recipe_app/app/routes.dart';
import 'package:recipe_app/injection_container.dart';
import 'package:recipe_app/utils/theme/theme.dart';

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoute.appRoute,
      theme: sl<AppTheme>().appTheme,
    );
  }
}
