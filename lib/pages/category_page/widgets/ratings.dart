import 'package:flutter/material.dart';

class RatingCards extends StatelessWidget {
  const RatingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            size: 40,
            color: Colors.orangeAccent,
          ),Icon(
            Icons.star,
            size: 40,
            color: Colors.orangeAccent,
          ),Icon(
            Icons.star,
            size: 40,
            color: Colors.orangeAccent,
          ),Icon(
            Icons.star,
            size: 40,
            color: Colors.orangeAccent,
          ),Icon(
            Icons.star,
            size: 40,
            color: Colors.black54.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
