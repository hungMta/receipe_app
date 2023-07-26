import 'package:freezed_annotation/freezed_annotation.dart';
part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    String? calories,
    String? carbos,
    String? description,
    int? difficulty,
    String? fats,
    String? headline,
    String? image,
    String? name,
    String? proteins,
    String? thumb,
    String? time,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, Object?> json) => _$RecipeFromJson(json);
}
