import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/model/recipe.dart';
import 'package:recipe_app/modules/recipe_list/cubit/recipe_status.dart';
part 'recipe_state.freezed.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState({
    required RecipeStatus status,
    required List<Recipe> recipes,
    Object? error,
  }) = _RecipeState;
}
