import 'package:flutter/material.dart';

Widget normalText({
  String? text,
  double? fontSize,
  Color? color,
  double? letterSpacing,
  FontWeight? fontWeight,
  TextDecoration? decoration,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight,
      decoration: decoration,
    ),
  );
}

double heightMediaQuerry(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double widthMediaQuerry(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

class ImagePath {
  static const String logo = 'assets/images/logo.png';
}

final List<String> imagePaths = [
  'assets/images/mobile1.jpg',
  'assets/images/mobile2.jpg',
  'assets/images/mobile3.jpg',
  'assets/images/mobile4.jpg',
  'assets/images/mobile5.png',
  'assets/images/mobile6.png',
  'assets/images/mobile7.png',
  'assets/images/mobile8.jpg',
  'assets/images/mobile9.jpg',
//   'assets/images/mobile10.jpg',
//   'assets/images/mobile11.jpg',
//   'assets/images/mobile12.jpg',
//   'assets/images/mobile13.jpg',
//   'assets/images/mobile14.jpg',
//   'assets/images/mobile15.jpg',
//   'assets/images/mobile16.jpg',
//   'assets/images/mobile17.jpg',
];
Widget sizedBoxHeight(BuildContext context, double height) {
  return SizedBox(
    height: height,
  );
}

Widget sizedBoxWidth(BuildContext context, double height) {
  return SizedBox(
    height: heightMediaQuerry(context),
  );
}
