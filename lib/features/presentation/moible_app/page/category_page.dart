import 'package:flutter/material.dart';
import 'package:mobile_app/features/presentation/data/models/category_model.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final categorieName = categoryProvider.selectedCategory;
    return Scaffold(
      appBar: AppBar(
        title: Text(categorieName),
      ),
      body: Column(
        children: [
          Text(categorieName),
          Image.asset(categoryProvider.categories[index].imageUrl),
        ],
      ),
    );
  }
}
