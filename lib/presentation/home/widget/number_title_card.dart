import 'package:flutter/cupertino.dart';
import 'package:netflix16/core/colors/constant.dart';
import 'package:netflix16/presentation/downloads/widgets/main_tittle.dart';
import 'package:netflix16/presentation/home/widget/number_cards.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

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
              index: index,
            );
          }),
        ),
      )
    ]);
  }
}
