import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/presentation/home/widget/background_card.dart';
import 'package:netflix/presentation/home/widget/number_title_card.dart';
import 'package:netflix/presentation/main_page/main_Title_Card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;

            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackGroundCard(),
                  MainTitleCards(title: "Realased in the past year"),
                  kHeight,
                  MainTitleCards(title: "Trending Now"),
                  kHeight,

                  //---------------------------------------------------------//

                  NumberTitleCard(),
                  kHeight,
                  //--------------------------------------------------------------//
                  MainTitleCards(title: "Tense Dramas "),
                  kHeight,
                  MainTitleCards(title: "South Indian Cinemas"),
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 91,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(children: [
                        Row(
                          children: [
                            Image.network(
                              "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png",
                              width: 70,
                              height: 70,
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.cast,
                              size: 30,
                              color: Colors.white,
                            ),
                            kWidth,
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: Image.asset(
                                  "assets/images/WhatsApp Image 2024-02-15 at 19.11.35_3dd54aa7.jpg",
                                  fit: BoxFit.cover),
                            ),
                            kWidth
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("TV Shows", style: kHomeTitleText),
                            Text("Movies", style: kHomeTitleText),
                            Text("Categories", style: kHomeTitleText)
                          ],
                        )
                      ]),
                    )
                  : kHeight
            ],
          ),
        );
      },
    ));
  }
}
