import 'package:flutter/material.dart';
import 'package:mobile_app/features/presentation/data/models/item_model.dart';

class DetailPage extends StatelessWidget {
  final Items item;

  DetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Column(
        children: [
          Image.asset(item.imageUrl),
          Text(item.title),
          Text(item.discription),
          Text(item.price.toString()),
        ],
      ),
    );
  }
}
