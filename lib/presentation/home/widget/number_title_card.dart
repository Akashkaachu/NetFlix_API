import 'package:flutter/cupertino.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/domain/home/model/home/home/home_repo.dart';
import 'package:netflix/presentation/downloads/widgets/main_title.dart';
import 'package:netflix/presentation/home/widget/number_cards.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
    required this.list,
  });
  final List<HomeData> list;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const MainTitle(
        title: "Top 10 TV Shows In Indida Today",
      ),
      kHeight,
      LimitedBox(
        maxHeight: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(10, (index) {
            return NumberCard(
              url10: list[index].posterPath ?? '',
              index: index,
            );
          }),
        ),
      )
    ]);
  }
}
