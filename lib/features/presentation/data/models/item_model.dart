import 'package:flutter/material.dart';

class Items {
  final String title;
  final String discription;
  final String imageUrl;
  final double price;
  Items({
    required this.title,
    required this.discription,
    required this.imageUrl,
    required this.price,
  });
}

class ProductProvider extends ChangeNotifier {
  List<Items> products = [
    Items(
      title: 'Xioami Note 10',
      discription:
          '''The Xiaomi Note 10, also known as the Xiaomi Mi Note 10, is a smartphone model released by Xiaomi. Please note that my knowledge cutoff is in September 2021, so there may have been newer models released since then. Here is a description of the Xiaomi Note 10 based on the information available up until that time:

     Display: The Xiaomi Note 10 features a large 6.47-inch curved AMOLED display with a resolution of 1080 x 2340 pixels. The display is vibrant and provides good color reproduction. ''',
      imageUrl: 'assets/images/mobile1.jpg',
      price: 300,
    ),
    Items(
      title: 'Samsung',
      discription: 'Iphone 12 Pro Max',
      imageUrl: 'assets/images/mobile3.jpg',
      price: 600,
    ),
    Items(
      title: 'Iphone',
      discription: 'Iphone 12 Pro Max',
      imageUrl: 'assets/images/mobile4.jpg',
      price: 700,
    ),
    Items(
      title: 'Huwaei',
      discription: 'Iphone 12 Pro Max',
      imageUrl: 'assets/images/mobile5.png',
      price: 1500,
    ),
    Items(
      title: 'Google Pixel',
      discription: 'Iphone 12 Pro Max',
      imageUrl: 'assets/images/mobile6.png',
      price: 1200,
    ),
  ];

  List<Items> bottomItems = [
    Items(
        title: 'CG TV ',
        discription: 'CG TV made from Nepal',
        imageUrl: 'assets/items/cg_tv.png',
        price: 50000),
    Items(
        title: 'Huawei Laptops ',
        discription: 'CG TV made from Nepal',
        imageUrl: 'assets/items/huawei.jpg',
        price: 50000),
    Items(
        title: 'LG TV ',
        discription: 'CG TV made from Nepal',
        imageUrl: 'assets/items/lg_tc.png',
        price: 50000),
    Items(
        title: 'Macbook M2 ',
        discription: 'CG TV made from Nepal',
        imageUrl: 'assets/items/macbook_m2.png',
        price: 50000),
    Items(
        title: 'MSI Mordern 14 ',
        discription: 'CG TV made from Nepal',
        imageUrl: 'assets/items/msi.jpg',
        price: 50000),
    Items(
        title: 'Sansung S23 Ultra',
        discription: 'CG TV made from Nepal',
        imageUrl: 'assets/items/samsung_s23ultra.jpg',
        price: 50000),
    Items(
        title: 'Iphone 14 Pro Max ',
        discription: 'CG TV made from Nepal',
        imageUrl: 'assets/items/iphone_14promax.png',
        price: 50000),
    Items(
        title: 'Iphone 14 Pro Max ',
        discription: 'CG TV made from Nepal',
        imageUrl: 'assets/items/iphone_14promax.png',
        price: 50000),
  ];
}
