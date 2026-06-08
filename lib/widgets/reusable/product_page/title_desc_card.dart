import 'package:flutter/material.dart';

class TitleDescCard extends StatelessWidget {

  final String title;
  final String desc;
  const TitleDescCard({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 23,
                color: Colors.black.withOpacity(0.9),
                fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            desc,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
