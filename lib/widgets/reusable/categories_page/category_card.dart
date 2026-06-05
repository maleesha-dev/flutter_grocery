import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final String title;
  final int qty;
  final Color circle;
  final Color cardColor;
  final Color borderColor;

  const CategoryCard({super.key, required this.title, required this.qty, required this.circle, required this.cardColor, required this.borderColor});

  final double cardWidth = 180;
  final double cardHeight = 100;
  final double circleRadius = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: cardColor.withOpacity(0.4),
        border: Border.all(
          color: borderColor,
          width: 3,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "$qty+  more...",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54
                  ),
                ),
              ],
            ),
            Container(
              width: circleRadius,
              height: circleRadius,
              decoration: BoxDecoration(
                color: circle,
                borderRadius: BorderRadius.circular(50)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
