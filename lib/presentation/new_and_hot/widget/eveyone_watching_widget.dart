import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryOneWatchingWidgerts extends StatelessWidget {
  const EveryOneWatchingWidgerts({
    super.key,
    required this.posterPath,
    required this.movieName,
    required this.discription,
  });
  final String posterPath;
  final String movieName;
  final String discription;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight15,
        Text(
          movieName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        Text(discription, style: const TextStyle(color: Colors.grey)),
        kHeight50,
        VideoWidget(url: posterPath),
        kHeight,
        const Row(
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
