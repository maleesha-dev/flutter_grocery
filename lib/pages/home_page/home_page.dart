import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home_page/widgets/search_bar.dart';
import 'package:flutter_grocery/widgets/app_bar/app_bar.dart';
import 'package:flutter_grocery/widgets/reusable/product_card.dart';

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
                      title: "Accessibility",
                      titleColor: Colors.white,
                      description: "A catalog of Flutter's accessibility widgets. Make your app accessible.",
                      descColor: Colors.white70,
                      mainBoxColor: Colors.pinkAccent,
                      smallBoxColor: Colors.amber,
                    ),
                    ProductCard(
                      title: "Async",
                      titleColor: Colors.white,
                      description: "Widgets supporting async patterns in your Flutter apps.",
                      descColor: Colors.white70,
                      mainBoxColor: Colors.pinkAccent,
                      smallBoxColor: Colors.amber,
                    ),
                  ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
