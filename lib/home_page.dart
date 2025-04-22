import 'package:flutter/material.dart';
import 'recipe_data.dart';
import 'library_page.dart';
import 'recipe_detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _searchQuery = "";

  List<Recipe> get filteredRecipes {
    return recipeList.where((recipe) {
      return recipe.title.toLowerCase().contains(_searchQuery.toLowerCase());
    }).toList();
  }

  List<Widget> get _pages => [
    buildRecipeList(), // Home
    LibraryPage(recipes: recipeList), // Library
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  IconData getCategoryIcon(String type) {
    switch (type) {
      case 'veg':
        return Icons.eco; // 🥦
      case 'non-veg':
        return Icons.set_meal; // 🍗
      case 'dessert':
        return Icons.cake; // 🍰
      default:
        return Icons.fastfood;
    }
  }

  Widget buildRecipeList() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(61),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search recipes...',
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredRecipes.length,
        itemBuilder: (context, index) {
          final recipe = filteredRecipes[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.teal.shade200, width: 1.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: ListTile(
              title: Text(recipe.title),
              subtitle: Row(
                children: [
                  Icon(
                    getCategoryIcon(recipe.type),
                    color: Colors.teal,
                    size: 20,
                  ),
                  SizedBox(width: 6),
                  Text(
                    recipe.type.toUpperCase(),
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  recipe.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: recipe.isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  setState(() {
                    recipe.isFavorite = !recipe.isFavorite;
                  });
                },
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RecipeDetail(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Library'),
        ],
      ),
    );
  }
}
