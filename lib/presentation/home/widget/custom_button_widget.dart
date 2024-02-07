import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.icon,
    required this.text,
    this.textSize = 30,
    this.iconSize = 18,
  });
  final IconData icon;
  final String text;

  final double iconSize;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: whitecolor,
        size: iconSize,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: textSize,
        ),
      )
    ]);
  }
}
