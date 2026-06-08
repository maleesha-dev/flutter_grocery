import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/category_page/category_page.dart';
import 'package:flutter_grocery/pages/home_page/home_page.dart';
import 'package:flutter_grocery/pages/product_page/product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Grocery App",
      home: ProductDetailsPage(),
    );
  }
}
