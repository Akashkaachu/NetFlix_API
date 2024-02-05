import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/colors.dart';
import 'package:netflix16/core/colors/constant.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 150,
                height: 200,
                child: Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: borderRadius10,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://image.tmdb.org/t/p/w1280/qhb1qOilapbapxWQn9jtRCMwXJF.jpg"))),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: -25,
          left: -10,
          child: BorderedText(
            strokeColor: whitecolor,
            strokeWidth: 4.0,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 150,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
