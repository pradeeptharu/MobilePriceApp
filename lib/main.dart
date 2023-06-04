import 'package:flutter/material.dart';
import 'package:mobile_app/features/presentation/data/models/category_model.dart';
import 'package:mobile_app/features/presentation/data/models/item_model.dart';
import 'package:mobile_app/features/presentation/moible_app/page/category_page.dart';
import 'package:mobile_app/features/presentation/moible_app/page/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MobileApp(),
  );
}

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: const MaterialApp(
        home: Homepage(),
      ),
    );
  }
}
