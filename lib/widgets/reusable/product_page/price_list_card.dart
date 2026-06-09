import 'package:flutter/material.dart';

class PriceListCard extends StatelessWidget {

  final int number;
  final String itemName;
  final int weight;

  const PriceListCard({super.key, required this.number, required this.itemName, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  number.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 140,
              child: Text(
                itemName,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              width: 130,
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "$weight g",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
