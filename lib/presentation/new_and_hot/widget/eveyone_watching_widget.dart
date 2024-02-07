import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/constant.dart';
import 'package:netflix16/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix16/presentation/widgets/video_widget.dart';

class EveryOneWatchingWidgerts extends StatelessWidget {
  const EveryOneWatchingWidgerts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight15,
        Text(
          "Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        Text(
            "This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work,life and love in 1990s Manhattan.",
            style: TextStyle(color: Colors.grey)),
        kHeight50,
        VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              icon: CupertinoIcons.share,
              text: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: CupertinoIcons.add,
              text: "My List",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: CupertinoIcons.play,
              text: "Play",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth
          ],
        )
      ],
    );
  }
}
