import 'package:equatable/equatable.dart';
import 'package:recipe_app/model/recipe.dart';

enum RecipeStatus { initial, loading, success, failure }

class RecipeState extends Equatable {
  final RecipeStatus status;
  final List<Recipe> recipes;
  final Object? error;

  const RecipeState({
    this.status = RecipeStatus.initial,
    this.recipes = const [],
    this.error,
  });

  RecipeState copyWith({
    RecipeStatus? status,
    List<Recipe>? recipes,
    Object? error,
  }) {
    return RecipeState(
        status: status ?? this.status,
        recipes: recipes ?? this.recipes,
        error: error);
  }

  @override
  List<Object?> get props => [status, recipes, error];
}
