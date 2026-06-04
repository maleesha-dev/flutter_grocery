import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home_page/widgets/search_bar.dart';
import 'package:flutter_grocery/widgets/app_bar/app_bar.dart';
import 'package:flutter_grocery/widgets/reusable/product_card.dart';
import 'package:flutter_grocery/widgets/reusable/product_price_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60, // default 56
        leadingWidth: 60,
        leading: appBarLeading,
        title: appBarTitle,
        actions: [appBarActions],
        shadowColor: Colors.black38,
        elevation: 3,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBox(),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Explore Categories",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCard(
                      title: "Vegetables",
                      titleColor: Colors.white,
                      description: "A catalog of Flutter's accessibility widgets. Make your app accessible.",
                      descColor: Colors.white70,
                      mainBoxColor: Colors.deepPurple,
                      smallBoxColor: Colors.green,
                    ),
                    ProductCard(
                      title: "Fish and Meat",
                      titleColor: Colors.white,
                      description: "A catalog of Flutter's async widgets. Widgets supporting your Flutter apps.",
                      descColor: Colors.white70,
                      mainBoxColor: Colors.deepPurple,
                      smallBoxColor: Colors.green,
                    ),
                  ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Input",
                    titleColor: Colors.black,
                    description: "A catalog of Flutter's input widgets. Take user input Material Cupertino.",
                    descColor: Colors.black.withOpacity(0.7),
                    mainBoxColor: Colors.amber,
                    smallBoxColor: Colors.deepOrange,
                  ),
                  ProductCard(
                    title: "Scrolling",
                    titleColor: Colors.black,
                    description: "A catalog of Flutter's scrolling widgets. Scroll multiple widgets as parent.",
                    descColor: Colors.black.withOpacity(0.7),
                    mainBoxColor: Colors.amber,
                    smallBoxColor: Colors.deepOrange,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "For Sale and Low Cost",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductPriceCard(
                    title: "Washing Liquid",
                    amount: 220,
                    unit: "ml",
                    price: 150,
                  ),
                  ProductPriceCard(
                    title: "Coffee and Tea",
                    amount: 100,
                    unit: "g",
                    price: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
