import 'package:flutter/material.dart';
import 'recipe_data.dart';
import 'recipe_detail.dart';

class LibraryPage extends StatelessWidget {
  final List<Recipe> recipes;

  LibraryPage({required this.recipes});

  @override
  Widget build(BuildContext context) {
    final favoriteRecipes = recipes.where((r) => r.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(title: Text("My Library")),
      body:
          favoriteRecipes.isEmpty
              ? Center(child: Text("No favorites yet!"))
              : ListView.builder(
                itemCount: favoriteRecipes.length,
                itemBuilder: (context, index) {
                  final recipe = favoriteRecipes[index];
                  return ListTile(
                    title: Text(recipe.title),
                    trailing: Icon(Icons.favorite, color: Colors.red),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => RecipeDetail(recipe: recipe),
                        ),
                      );
                    },
                  );
                },
              ),
    );
  }
}
