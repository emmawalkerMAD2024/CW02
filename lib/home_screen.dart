import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {'title': 'Spaghetti', 'ingredients': 'Pasta, Tomato Sauce, Meat', 'instructions': 'Boil pasta, cook meat, mix with sauce'},
    {'title': 'Tacos', 'ingredients': 'Tortilla, Meat, Cheese', 'instructions': 'Cook meat, assemble with cheese in tortilla'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
