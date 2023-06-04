import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/core/utils/constainst/constaints.dart';
import 'package:mobile_app/features/presentation/data/models/category_model.dart';
import 'package:mobile_app/features/presentation/data/models/item_model.dart';
import 'package:mobile_app/features/presentation/moible_app/page/slider_image_detail_pages.dart';
import 'package:mobile_app/features/presentation/moible_app/widgets/category_image_widget.dart';
import 'package:mobile_app/features/presentation/moible_app/widgets/homegae_textfield_widget.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final categories = categoryProvider.categories;
    final productProvider = Provider.of<ProductProvider>(context);
    final products = productProvider.products;
    final itemsElectronic = productProvider.bottomItems;

    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      // backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: heightMediaQuerry(context) * 0.05,
            ),
            Image.asset(ImagePath.logo),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: textField(),
            ),
            SizedBox(
              height: heightMediaQuerry(context) * 0.01,
            ),
            CarouselSlider.builder(
              itemCount: products.length,
              itemBuilder: (context, index, realIndex) {
                final item = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(item: item),
                      ),
                    );
                  },
                  child: buildImage(item.imageUrl, index),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 300),
                height: isPortrait ? 150 : 300,
              ),
            ),
            normalText(
              text: 'Categories',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.3,
            ),
            SizedBox(
              height: heightMediaQuerry(context) * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border.all(color: Colors.black),
              ),
              height: isPortrait
                  ? heightMediaQuerry(context) * 0.15
                  : null, // Adjust height based on orientation
              child: CategoryImageWidget(categories: categories),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 230,
                childAspectRatio: 2 / 3,
                crossAxisCount: isPortrait
                    ? 2
                    : 4, // Adjust cross axis count based on orientation
              ),
              itemCount: itemsElectronic.length,
              itemBuilder: (context, index) {
                final items = itemsElectronic[index];
                return Container(
                  width: widthMediaQuerry(context) * 0.08,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        items.imageUrl,
                        height: heightMediaQuerry(context) * 0.12,
                      ),
                      normalText(
                        text: items.title,
                      ),
                      SizedBox(
                        height: heightMediaQuerry(context) * 0.01,
                      ),
                      normalText(
                        text: 'NPR 5000',
                        decoration: TextDecoration.lineThrough,
                      ),
                      SizedBox(
                        height: heightMediaQuerry(context) * 0.01,
                      ),
                      normalText(
                        text: 'NPR ${items.price.toStringAsFixed(2)}',
                        letterSpacing: 1.3,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String imagepath, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Image.asset(
        imagepath,
        fit: BoxFit.contain,
      ),
    );
  }
}
