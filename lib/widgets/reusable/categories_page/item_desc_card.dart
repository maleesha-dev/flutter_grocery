import 'package:flutter/material.dart';

class ItemDescCard extends StatelessWidget {

  final String title;
  final int number;
  const ItemDescCard({super.key, required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.amber.withOpacity(0.9),
            borderRadius: BorderRadius.circular(250)
          ),
          child: Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 290,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
