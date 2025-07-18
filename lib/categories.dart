import 'package:flutter/material.dart';
import 'package:meals/main.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/widget/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chose your categories"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20, mainAxisSpacing: 20),
      children: [
            for (final category in availableCategories)
              CategoryGridItem(category: category)
        ],
      ),
    );
  }
}
