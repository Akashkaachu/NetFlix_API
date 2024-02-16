import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/presentation/search/widget/search_tittle.dart';

// final imageUrl = [
//   "https://image.tmdb.org/t/p/w1280/qhb1qOilapbapxWQn9jtRCMwXJF.jpg ",
//   "https://media.themoviedb.org/t/p/w500_and_h282_face/e0M3WVJm4nBrAg0LbJq0gdKi3U7.jpg",
//   "https://media.themoviedb.org/t/p/w500_and_h282_face/meyhnvssZOPPjud4F1CjOb4snET.jpg",
//   "https://media.themoviedb.org/t/p/w500_and_h282_face/ehumsuIBbgAe1hg343oszCLrAfI.jpg",
//   "https://media.themoviedb.org/t/p/w500_and_h282_face/r9oTasGQofvkQY5vlUXglneF64Z.jpg",
// ];

class SearchIdleWidget extends StatelessWidget {
  SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTittleWidget(title: "Top Serches"),
        kHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                if (state.isError) {
                  return const Center(
                    child: Text("Error while getting data"),
                  );
                }
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text(" List is empty"),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final movie = state.idleList[index];
                    return TopSearchIteams(
                        title: movie.title ?? "No tittle provider",
                        imageUrl: '$imageAppendUrl${movie.backdropPath}' ?? "");
                  },
                  separatorBuilder: (context, index) => kHeight15,
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchIteams extends StatelessWidget {
  const TopSearchIteams({
    super.key,
    required this.title,
    required this.imageUrl,
  });
  final String title;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: size * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        const SizedBox(width: 5),
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
              color: colorWhite, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: colorWhite,
          radius: 27,
          child: SizedBox(
            child: CircleAvatar(
              backgroundColor: colorBlack,
              radius: 25,
              child: Icon(
                CupertinoIcons.play_fill,
                color: colorWhite,
              ),
            ),
          ),
        )
      ],
    );
  }
}
