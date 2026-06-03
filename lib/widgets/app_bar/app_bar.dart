import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.only(left: 10, top: 5, right: 2, bottom: 5),
  child: Container(
    width: 45,
    height: 45,
    decoration: BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),
    child: Center(
      child: Icon(Icons.location_on, color: Colors.white, size: 32),
    ),
  ),
);

Widget appBarTitle = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black54.withOpacity(0.6),
      ),
    ),
    Text(
      "92, High Street, London",
      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
    ),
  ],
);

Widget appBarActions = Padding(
  padding: const EdgeInsets.only(left: 5, top: 5, right: 10, bottom: 5),
  child: Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
    child: Center(
      child: Icon(Icons.shopping_bag, color: Colors.white, size: 32),
    ),
  ),
);
