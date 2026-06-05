import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/category_page/widgets/selected_item.dart';
import 'package:flutter_grocery/widgets/reusable/categories_page/category_card.dart';
import 'package:flutter_grocery/widgets/shared/notification_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text(
          "Categories",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationCard(),
              SizedBox(
                height: 20,
              ),
              Text(
                "All Categories",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CategoryCard(
                        title: "Vegetables &\nFruits",
                        qty: 20,
                        borderColor: Colors.blueAccent,
                        cardColor: Colors.blueAccent,
                        circle: Colors.blueAccent,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CategoryCard(
                        title: "Cooking &\nElements",
                        qty: 10,
                        borderColor: Colors.teal,
                        cardColor: Colors.teal,
                        circle: Colors.teal,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CategoryCard(
                        title: "Vegetables &\nFruits",
                        qty: 20,
                        borderColor: Colors.orangeAccent,
                        cardColor: Colors.orangeAccent,
                        circle: Colors.orangeAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CategoryCard(
                        title: "Bites &\nDrinks",
                        qty: 53,
                        borderColor: Colors.green,
                        cardColor: Colors.green,
                        circle: Colors.green,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CategoryCard(
                        title: "Chicken &\nBeef",
                        qty: 2,
                        borderColor: Colors.redAccent,
                        cardColor: Colors.redAccent,
                        circle: Colors.redAccent,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CategoryCard(
                        title: "Transport &\nVehicles",
                        qty: 12,
                        borderColor: Colors.indigo,
                        cardColor: Colors.indigo,
                        circle: Colors.indigo,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Selected Items",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SelectedItem(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
