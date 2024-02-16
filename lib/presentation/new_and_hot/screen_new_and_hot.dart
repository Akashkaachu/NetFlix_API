import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/presentation/new_and_hot/widget/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widget/eveyone_watching_widget.dart';

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
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                      "assets/images/WhatsApp Image 2024-02-15 at 19.11.35_3dd54aa7.jpg"),
                ),
                kWidth
              ],
              bottom: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: colorWhite,
                  labelColor: colorBlack,
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: colorWhite, borderRadius: borderRadius30),
                  tabs: const [
                    Tab(
                      text: "🍿 Coming Soon",
                    ),
                    Tab(
                      text: "👀 EveyOne is Watiching",
                    )
                  ]),
            )),
        body: const TabBarView(children: [
          ComingSoonList(key: Key("coming_Soon")),
          EveryOneWatchingList()
        ]),
      ),
    );
  }

  // Widget _buildComingSoon() {
  //   return ListView.builder(
  //     itemCount: 10,
  //     itemBuilder: (context, index) => const ComingSoonWidget(),
  //   );
  // }

  Widget _buildEveryOnesWatching() {
    return ListView.builder(
        itemCount: 10, itemBuilder: (context, index) => const SizedBox()
        //const EveryOneWatchingWidgerts();
        );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon());

    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
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
            child: Text("Coming soon list is empty"),
          );
        } else {
          return ListView.separated(
              separatorBuilder: (context, index) => kHeight,
              itemCount: state.comingSoonList.length,
              itemBuilder: (context, index) {
                final movie = state.comingSoonList[index];
                String releasedDate =
                    movie.releaseDate ?? "The movie is not released";
                List<String> ReleasedDateList = releasedDate.split('-');
                final day = ReleasedDateList[2];
                final month = ReleasedDateList[1];
                final year = ReleasedDateList[0];
                final dateFormate =
                    DateTime(int.parse(year), int.parse(month), int.parse(day));
                if (movie.id == null) {
                  return const SizedBox();
                }
                return ComingSoonWidget(
                  id: movie.id.toString(),
                  month: DateFormat.MMM().format(dateFormate),
                  day: day,
                  posterPath: "$imageAppendUrl${movie.backdropPath}",
                  movieName: movie.originalTitle ?? 'No title',
                  discription: movie.overview ?? 'No description',
                );
              });
        }
      },
    );
  }
}

class EveryOneWatchingList extends StatelessWidget {
  const EveryOneWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HotAndNewBloc>(context)
        .add(const LoadDataInEveryOneIsWatching());

    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
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
        } else if (state.everyOneIsWatchingList.isEmpty) {
          return const Center(
            child: Text("Coming soon list is empty"),
          );
        } else {
          return ListView.separated(
              separatorBuilder: (context, index) => kHeight,
              itemCount: state.everyOneIsWatchingList.length,
              itemBuilder: (context, index) {
                final movie = state.everyOneIsWatchingList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
                return EveryOneWatchingWidgerts(
                  posterPath: "$imageAppendUrl${movie.backdropPath}",
                  movieName: movie.orginalTvName ?? 'No title',
                  discription: movie.overview ?? 'No description',
                );
              });
        }
      },
    );
  }
}
