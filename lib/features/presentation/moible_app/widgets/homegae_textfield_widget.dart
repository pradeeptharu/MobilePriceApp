import 'package:flutter/material.dart';

Widget textField({TextEditingController? controller}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Search for products ..',
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
      contentPadding: EdgeInsets.all(5),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      prefixIcon: const Icon(Icons.search),
    ),
  );
}
