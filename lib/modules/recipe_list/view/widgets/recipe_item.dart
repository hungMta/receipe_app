import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe.dart';
import 'package:recipe_app/utils/space.dart';

class RecipeItem extends StatelessWidget {
  final Recipe recipe;

  const RecipeItem({super.key, required this.recipe});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        height: 150,
        child: Row(
          children: [
            if (recipe.image != null && recipe.image!.isNotEmpty)
              Image.network(
                recipe.image!,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            space(w: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name ?? "",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  space(h: 4),
                  Text(
                    recipe.description ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  space(h: 4),
                  Text(
                    "fats: ${recipe.fats}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "calories: ${recipe.calories}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "carbos: ${recipe.carbos}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
