import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/presentation/search/widget/search_tittle.dart';

const imageUrl = [
  "https://image.tmdb.org/t/p/w1280/qhb1qOilapbapxWQn9jtRCMwXJF.jpg"
];

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTextTittleWidget(title: "Movies & TV"),
        kHeight,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(state.searchResultList.length, (index) {
                final movie = state.searchResultList[index];
                return MainCard(
                  imageUrl: movie.posterPathUrl,
                );
              }),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageUrl[0]))),
    );
  }
}
