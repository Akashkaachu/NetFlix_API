import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/constant.dart';

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
        Container(
          color: Colors.blue,
          width: 30,
          height: 30,
        ),
        kWidth
      ],
    );
  }
}
