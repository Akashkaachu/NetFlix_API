import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/colors.dart';
import 'package:netflix16/core/colors/constant.dart';
import 'package:netflix16/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix16/presentation/new_and_hot/widget/coming_soon_widget.dart';
import 'package:netflix16/presentation/new_and_hot/widget/eveyone_watching_widget.dart';
import 'package:netflix16/presentation/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              title: const Text(
                "New & Hot",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  size: 30,
                  color: Colors.white,
                ),
                kWidth,
                Container(
                  color: Colors.blue,
                  width: 30,
                  height: 30,
                ),
                kWidth
              ],
              bottom: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: whitecolor,
                  labelColor: kBlackColor,
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: whitecolor, borderRadius: borderRadius30),
                  tabs: const [
                    Tab(
                      text: "🍿 Coming Soon",
                    ),
                    Tab(
                      text: "👀 EveyOne is Watiching",
                    )
                  ]),
            )),
        body: TabBarView(
            children: [_buildComingSoon(), _buildEveryOnesWatching()]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }

  Widget _buildEveryOnesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const EveryOneWatchingWidgerts();
      },
    );
  }
}
