import 'package:flutter/material.dart';
import 'recipe_data.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  RecipeDetail({required this.recipe});

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    final recipe = widget.recipe;

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        actions: [
          IconButton(
            icon: Icon(
              recipe.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: recipe.isFavorite ? Colors.red : Colors.white,
            ),
            onPressed: () {
              setState(() {
                recipe.isFavorite = !recipe.isFavorite;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    recipe.isFavorite
                        ? 'Added to favorites!'
                        : 'Removed from favorites!',
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🌄 Recipe Image
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/images/${recipe.image}',
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),

            // 🍴 Card for Ingredients and Steps
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🧂 Ingredients
                      Text(
                        'Ingredients',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        recipe.ingredients,
                        style: TextStyle(fontSize: 16, height: 1.4),
                      ),
                      SizedBox(height: 20),

                      // 🍳 Steps
                      Text(
                        'Steps',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        recipe.steps,
                        style: TextStyle(fontSize: 16, height: 1.6),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
