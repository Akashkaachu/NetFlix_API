import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/colors.dart';
import 'package:netflix16/core/colors/constant.dart';
import 'package:netflix16/presentation/search/widget/search_tittle.dart';

final imageUrl = [
  "https://image.tmdb.org/t/p/w1280/qhb1qOilapbapxWQn9jtRCMwXJF.jpg ",
  "https://media.themoviedb.org/t/p/w500_and_h282_face/e0M3WVJm4nBrAg0LbJq0gdKi3U7.jpg",
  "https://media.themoviedb.org/t/p/w500_and_h282_face/meyhnvssZOPPjud4F1CjOb4snET.jpg",
  "https://media.themoviedb.org/t/p/w500_and_h282_face/ehumsuIBbgAe1hg343oszCLrAfI.jpg",
  "https://media.themoviedb.org/t/p/w500_and_h282_face/r9oTasGQofvkQY5vlUXglneF64Z.jpg",
];

class SearchIdleWidget extends StatelessWidget {
  SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTittleWidget(title: "Top Serches"),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchIteams(),
              separatorBuilder: (context, index) => kHeight15,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchIteams extends StatelessWidget {
  const TopSearchIteams({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    ;
    return Row(
      children: [
        Container(
          width: size * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl[0]))),
        ),
        const Expanded(
            child: Text(
          "data",
          style: TextStyle(
              color: whitecolor, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: whitecolor,
          radius: 27,
          child: SizedBox(
            child: CircleAvatar(
              backgroundColor: kBlackColor,
              radius: 25,
              child: Icon(
                CupertinoIcons.play_fill,
                color: whitecolor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
