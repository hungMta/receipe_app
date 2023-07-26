// ignore_for_file: prefer_const_constructors

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/modules/recipe_list/cubit/recipe_state.dart';
import 'package:recipe_app/modules/recipe_list/cubit/recipe_status.dart';
import 'package:recipe_app/repsitories/recipe_repository.dart';

class RecipeCubit extends Cubit<RecipeState> {
  RecipeCubit(this._repository)
      : super(RecipeState(status: RecipeStatus.initial, recipes: []));

  final RecipeRepositoryI _repository;

  Future<void> fetchRecipes() async {
    emit(state.copyWith(status: RecipeStatus.loading));
    try {
      final data = await _repository.fetchRecipes();
      emit(state.copyWith(status: RecipeStatus.success, recipes: data));
    } catch (exception) {
      emit(state.copyWith(status: RecipeStatus.failure, error: exception));
    }
  }
}
