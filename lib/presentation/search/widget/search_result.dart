import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/constant.dart';
import 'package:netflix16/presentation/search/widget/search_tittle.dart';

const imageUrl = [
  "https://image.tmdb.org/t/p/w1280/qhb1qOilapbapxWQn9jtRCMwXJF.jpg"
];

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTextTittleWidget(title: "Movies & TV"),
        kHeight,
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.4,
          shrinkWrap: true,
          crossAxisCount: 3,
          children: List.generate(21, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageUrl[0]))),
    );
  }
}
