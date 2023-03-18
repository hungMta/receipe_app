import 'package:get_it/get_it.dart';
import 'package:recipe_app/modules/recipe_list/cubit/recipe_cubit.dart';
import 'package:recipe_app/repsitories/recipe_repository.dart';
import 'package:recipe_app/services/api_service.dart';
import 'package:recipe_app/utils/theme/theme.dart';

final sl = GetIt.instance;

void init() {
  // Cubit factory
  sl.registerFactory(() => RecipeCubit(sl()));

  // Repository
  sl.registerLazySingleton<RecipeRepositoryI>(() => RecipeRepository(sl()));

  // Others
  sl.registerLazySingleton<ApiService>(() => ApiService());

  sl.registerLazySingleton<AppTheme>(() => AppTheme());
}
