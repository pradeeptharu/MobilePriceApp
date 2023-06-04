import 'package:flutter/material.dart';
import 'package:mobile_app/core/utils/constainst/constaints.dart';
import 'package:mobile_app/features/presentation/data/models/category_model.dart';
import 'package:mobile_app/features/presentation/moible_app/page/category_page.dart';
import 'package:provider/provider.dart';

class CategoryImageWidget extends StatelessWidget {
  const CategoryImageWidget({
    super.key,
    required this.categories,
  });

  final List<Categori> categories;

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final categories = categoryProvider.categories;
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final catData = categories[index];
        return InkWell(
          onTap: () {
            categoryProvider.setSelectedCategory(categories[index].title);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryPage(),
                ));
          },
          child: Column(
            children: [
              SizedBox(
                height: heightMediaQuerry(context) * 0.01,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(catData.imageUrl),
                ),
              ),
              SizedBox(
                height: heightMediaQuerry(context) * 0.01,
              ),
              normalText(text: catData.title, fontSize: 10, letterSpacing: 1.3),
            ],
          ),
        );
      },
    );
  }
}
