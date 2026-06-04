import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final Color titleColor;
  final Color descColor;
  final Color mainBoxColor;
  final Color smallBoxColor;

  const ProductCard({super.key, required this.title, required this.description, required this.titleColor, required this.descColor, required this.mainBoxColor, required this.smallBoxColor,});

  final double cardWidth = 170;
  final double cardHeight = 220;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        color: mainBoxColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
                title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
            ),
            Text(
                description,
              style: TextStyle(
                fontSize: 15,
                color: descColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 70,
              width: 160,
              decoration: BoxDecoration(
                color: smallBoxColor,
                borderRadius: BorderRadius.circular(15)
              ),
            )
          ],
        ),
      ),
    );
  }
}
