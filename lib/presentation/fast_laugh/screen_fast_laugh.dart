import 'package:flutter/material.dart';
import 'package:netflix16/presentation/fast_laugh/widget/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(200, (index) {
        return VideoListItem(
          index: index,
        );
      }),
    )));
  }
}
