import 'package:recipe_app/model/recipe.dart';
import 'package:recipe_app/repsitories/base_repository.dart';
import 'package:recipe_app/services/api_path.dart';

abstract class RecipeRepositoryI extends BaseRepository {
  RecipeRepositoryI(super.apiService);

  Future<List<Recipe>> fetchRecipes();
}

class RecipeRepository extends RecipeRepositoryI {
  RecipeRepository(super.apiService);

  @override
  Future<List<Recipe>> fetchRecipes() async {
    final response = await apiService.get(ApiPath.recipes);
    final recipes = (response.data as List<dynamic>)
        .map((e) => Recipe.fromJson(e))
        .toList();
    return recipes;
  }
}
