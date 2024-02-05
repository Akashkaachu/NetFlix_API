import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: whitecolor,
        size: 25,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 18,
        ),
      )
    ]);
  }
}
