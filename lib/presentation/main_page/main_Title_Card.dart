import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/presentation/downloads/widgets/main_title.dart';
import 'package:netflix/presentation/main_page/widgets/main_card.dart';
import 'package:shimmer/shimmer.dart';

class MainTitleCards extends StatelessWidget {
  const MainTitleCards(
      {super.key, required this.title, this.list, this.isloading = false});
  final List<dynamic>? list;

  final String title;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: size.height * 0.3,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                list == null ? 10 : list!.length,
                (index) => isloading == true
                    ? Shimmer.fromColors(
                        baseColor: Colors.grey.shade900.withOpacity(0.9),
                        highlightColor: colorGrey.shade800,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: size.width * 0.43,
                            height: size.height * 0.3,
                            decoration: BoxDecoration(
                              color: colorWhite,
                              borderRadius: borderRadius10,
                            ),
                          ),
                        ),
                      )
                    : MainCardWidget(
                        imageUrl: list![index].posterPath ?? '',
                      ),
              )..shuffle()),
        )
      ],
    );
  }
}
