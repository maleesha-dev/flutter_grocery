import 'package:flutter/material.dart';

class GradientBtn extends StatelessWidget {
  final double btnHeight;
  final double btnWidth;
  final Color firstColor;
  final Color secondColor;
  final String btnTitle;
  const GradientBtn({super.key, required this.btnHeight, required this.btnWidth, required this.firstColor, required this.secondColor, required this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: btnWidth,
          height: btnHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    firstColor,
                    secondColor,
                  ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Text(
              btnTitle,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
