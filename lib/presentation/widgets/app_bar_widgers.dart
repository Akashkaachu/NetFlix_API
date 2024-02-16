import 'package:flutter/material.dart';
import 'package:netflix/core/costant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.tittle});
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          tittle,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 30,
          color: Colors.white,
        ),
        kWidth,
        SizedBox(
          width: 30,
          height: 30,
          child: Image.asset(
              "assets/images/WhatsApp Image 2024-02-15 at 19.11.35_3dd54aa7.jpg"),
        ),
        kWidth
      ],
    );
  }
}
