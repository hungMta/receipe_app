import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/injection_container.dart';
import 'package:recipe_app/modules/recipe_list/cubit/recipe_cubit.dart';
import 'package:recipe_app/modules/recipe_list/cubit/recipe_state.dart';
import 'package:recipe_app/modules/recipe_list/view/widgets/recipe_error.dart';
import 'package:recipe_app/modules/recipe_list/view/widgets/recipe_item.dart';
import 'package:recipe_app/utils/widgets/base_widget.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((_) => sl<RecipeCubit>()),
      child: const RecipeView(),
    );
  }
}

class RecipeView extends StatefulWidget {
  const RecipeView({super.key});

  @override
  State<RecipeView> createState() => _RecipeViewState();
}

class _RecipeViewState extends BaseState<RecipeView> {
  @override
  void initState() {
    super.initState();
    context.read<RecipeCubit>().fetchRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: BlocConsumer<RecipeCubit, RecipeState>(
        listener: (context, state) {
          // do some side effect
          if (state.status == RecipeStatus.failure && state.error != null) {
            handleError(state.error!);
          }
        },
        builder: (context, state) {
          print(state.status);
          switch (state.status) {
            case RecipeStatus.initial:
            case RecipeStatus.loading:
              return const CupertinoActivityIndicator();
            case RecipeStatus.success:
              final recipes = state.recipes;
              return ListView.builder(
                itemCount: state.recipes.length,
                itemBuilder: ((context, index) => RecipeItem(
                      recipe: recipes.elementAt(index),
                    )),
              );
            case RecipeStatus.failure:
              return const RecipeError();
          }
        },
      )),
    );
  }
}
