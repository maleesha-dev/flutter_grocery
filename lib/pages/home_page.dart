import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70, // default 56
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 2, bottom: 5,),
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.location_on,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Delivery Address",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black54.withOpacity(0.6),
              ),
            ),Text(
                "92, High Street, London",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w800
              ),
            ),
          ],
        ),
      ),
    );
  }
}
