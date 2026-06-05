import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/category_page/widgets/ratings.dart';
import 'package:flutter_grocery/widgets/reusable/categories_page/item_desc_card.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black45.withOpacity(0.1),
          width: 8,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Vegetables",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.8)
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ItemDescCard(
              number: 1,
              title: "Vegetables are parts of plants that are consumed by humans...",
            ),
            ItemDescCard(
              number: 2,
              title: "Vegetables are parts of plants that are consumed by humans...",
            ),
            ItemDescCard(
              number: 3,
              title: "Vegetables are parts of plants that are consumed by humans...",
            ),
            ItemDescCard(
              number: 4,
              title: "Vegetables are parts of plants that are consumed by humans...",
            ),
            ItemDescCard(
              number: 5,
              title: "Vegetables are parts of plants that are consumed by humans...",
            ),
            RatingCards(),
          ],
        ),
      ),
    );
  }
}
