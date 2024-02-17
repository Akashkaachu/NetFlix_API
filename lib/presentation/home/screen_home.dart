import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/presentation/home/widget/background_card.dart';
import 'package:netflix/presentation/home/widget/number_title_card.dart';
import 'package:netflix/presentation/main_page/main_Title_Card.dart';
import 'package:netflix/presentation/main_page/widgets/main_card.dart';
import 'package:netflix/presentation/search/widget/search_result.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const TopTenRated());
    BlocProvider.of<HomeBloc>(context).add(const ReleasedYear());
    BlocProvider.of<HomeBloc>(context).add(const Trending());
    BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon());
    BlocProvider.of<HotAndNewBloc>(context)
        .add(const LoadDataInEveryOneIsWatching());
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
                children: [
                  BlocBuilder<HotAndNewBloc, HotAndNewState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        );
                      } else if (state.hasError) {
                        return const Center(
                          child: Text("Error while loading coming soon list"),
                        );
                      } else if (state.comingSoonList.isEmpty) {
                        return const Center(
                          child: Text("list is empty"),
                        );
                      } else {
                        return BackGroundCard(
                            urlImage: state.comingSoonList[6].posterPath ??
                                'default_url_image');
                      }
                    },
                  ),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return MainTitleCards(
                            list: state.topTenRated,
                            title: "Realased in the past year");
                      } else if (state.hasError) {
                        return const Center(
                          child: Text("Error while loading coming soon list"),
                        );
                      } else if (state.topTenRated.isEmpty) {
                        return const Center(
                          child: Text("list is empty"),
                        );
                      } else {
                        return MainTitleCards(
                            list: state.topTenRated,
                            title: "Realased in the past year");
                      }
                    },
                  ),
                  kHeight,
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const MainTitleCards(
                          title: "Trending Now",
                          isloading: true,
                        );
                      } else if (state.hasError) {
                        return const Center(
                          child: Text("Error while loading coming soon list"),
                        );
                      } else if (state.topTenRated.isEmpty) {
                        return const Center(
                          child: Text("list is empty"),
                        );
                      } else {
                        return MainTitleCards(
                            list: state.releasedYear, title: "Trending Now");
                      }
                    },
                  ),
                  kHeight,

                  //---------------------------------------------------------//

                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const MainCardWidget(
                          imageUrl: null,
                        );
                      } else if (state.hasError) {
                        return const Center(
                          child: Text("Error while loading coming soon list"),
                        );
                      } else if (state.topTenRated.isEmpty) {
                        return const Center(
                          child: Text("list is empty"),
                        );
                      } else {
                        return NumberTitleCard(
                          list: state.topTenRated,
                        );
                      }
                    },
                  ),
                  kHeight,

                  //--------------------------------------------------------------//

                  BlocBuilder<HotAndNewBloc, HotAndNewState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        );
                      } else if (state.hasError) {
                        return const Center(
                          child: Text("Error while loading coming soon list"),
                        );
                      } else if (state.comingSoonList.isEmpty) {
                        return const Center(
                          child: Text("list is empty"),
                        );
                      } else {
                        return MainTitleCards(
                            list: state.comingSoonList, title: "Tense Dramas ");
                      }
                    },
                  ),
                  kHeight,
                  BlocBuilder<HotAndNewBloc, HotAndNewState>(
                    builder: (context, state) {
                      return MainTitleCards(
                          list: state.everyOneIsWatchingList,
                          title: "South Indian Cinemas");
                    },
                  ),
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
