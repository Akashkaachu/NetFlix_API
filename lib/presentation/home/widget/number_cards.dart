import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/costant.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index, required this.url10});
  final int index;
  final String url10;
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
                          image: NetworkImage('$imageAppendUrl$url10'))),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: -25,
          left: -10,
          child: BorderedText(
            strokeColor: colorWhite,
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
