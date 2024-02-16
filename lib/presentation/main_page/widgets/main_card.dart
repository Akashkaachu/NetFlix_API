import 'package:flutter/cupertino.dart';
import 'package:netflix/core/costant.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: borderRadius10,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://image.tmdb.org/t/p/w1280/qhb1qOilapbapxWQn9jtRCMwXJF.jpg"))),
      ),
    );
  }
}
