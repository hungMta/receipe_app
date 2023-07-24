import 'package:freezed_annotation/freezed_annotation.dart';
part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required String calories,
    required String carbos,
    required String description,
    required int difficulty,
    required String fats,
    required String headline,
    required String image,
    required String name,
    required String proteins,
    required String thumb,
    required String time,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, Object?> json) => _$RecipeFromJson(json);
}
