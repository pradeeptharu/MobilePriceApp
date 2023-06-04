import 'package:flutter/material.dart';

class Categori {
  final String title;
  final String imageUrl;

  Categori({
    required this.title,
    required this.imageUrl,
  });
}

class CategoryProvider extends ChangeNotifier {
  String _selectedCategory = '';
  String get selectedCategory => _selectedCategory;

  void setSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  List<Categori> categories = [
    Categori(title: 'Mobiles', imageUrl: 'assets/categori/mobile.jpg'),
    Categori(title: 'Laptop', imageUrl: 'assets/categori/macbook.jpg'),
    Categori(title: 'Earphones', imageUrl: 'assets/categori/earphone.jpg'),
    Categori(title: 'HeadPhones', imageUrl: 'assets/categori/headphone.jpg'),
    Categori(title: 'HeadPhones', imageUrl: 'assets/categori/airpod.jpg'),
  ];
}
