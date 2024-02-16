import 'package:flutter/cupertino.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/presentation/downloads/widgets/main_title.dart';
import 'package:netflix/presentation/main_page/widgets/main_card.dart';

class MainTitleCards extends StatelessWidget {
  const MainTitleCards({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MainTitle(
        title: title,
      ),
      kHeight,
      LimitedBox(
        maxHeight: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(10, (index) {
            return MainCardWidget();
          }),
        ),
      )
    ]);
  }
}
