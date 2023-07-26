import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:recipe_app/model/recipe.dart';
import 'package:recipe_app/modules/recipe_list/cubit/recipe_cubit.dart';
import 'package:recipe_app/modules/recipe_list/cubit/recipe_state.dart';
import 'package:recipe_app/modules/recipe_list/cubit/recipe_status.dart';
import 'package:recipe_app/repsitories/recipe_repository.dart';

class MockRecipeRepository extends Mock implements RecipeRepositoryI {}

class MockRecipe extends Mock implements Recipe {}

void main() {
  group('ReceipCubit', () {
    late RecipeCubit recipeCubit;
    late RecipeRepositoryI repository;
    final recipes = [
      MockRecipe(),
      MockRecipe(),
    ];

    setUp(() {
      repository = MockRecipeRepository();
      recipeCubit = RecipeCubit(repository);
    });

    test('ReceipCubit initial state is correct', () {
      final cubit = RecipeCubit(repository);
      expect(
          cubit.state,
          const RecipeState(
            recipes: [],
            status: RecipeStatus.initial,
          ));
    });

    blocTest<RecipeCubit, RecipeState>(
      'ReceipCubit return success',
      setUp: () {
        when(() => repository.fetchRecipes())
            .thenAnswer((realInvocation) => Future.value(recipes));
      },
      build: () => recipeCubit,
      act: ((cubit) => cubit.fetchRecipes()),
      expect: () => [
        const RecipeState(
          status: RecipeStatus.loading,
          recipes: [],
        ),
        RecipeState(status: RecipeStatus.success, recipes: recipes),
      ],
    );

    final Exception tException = Exception('Failed to fetch goals.');
    blocTest<RecipeCubit, RecipeState>(
      'ReceipCubit throw an error',
      build: () => recipeCubit,
      setUp: () {
        when(() => repository.fetchRecipes()).thenThrow(tException);
      },
      act: ((cubit) => cubit.fetchRecipes()),
      expect: () => [
        const RecipeState(
          status: RecipeStatus.loading,
          recipes: [],
        ),
        RecipeState(
          status: RecipeStatus.failure,
          error: tException,
          recipes: [],
        ),
      ],
    );
  });
}
