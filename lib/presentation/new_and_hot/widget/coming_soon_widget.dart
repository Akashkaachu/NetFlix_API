import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String discription;
  const ComingSoonWidget({
    super.key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.discription,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: 50,
            child: Column(children: [
              Text(
                month.toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                day,
                style:
                    const TextStyle(fontSize: 39, fontWeight: FontWeight.bold),
              )
            ])),
        SizedBox(
          width: size.width - 50,

          // height: 430,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            VideoWidget(url: posterPath),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: size.width / 2,
                  child: Text(
                    movieName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 40,
                        letterSpacing: -3,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                const Row(
                  children: [
                    CustomButtonWidget(
                      icon: CupertinoIcons.bell,
                      text: "Remind Me",
                      iconSize: 20,
                      textSize: 12,
                    ),
                    kWidth,
                    CustomButtonWidget(
                      icon: CupertinoIcons.info,
                      text: "info",
                      iconSize: 20,
                      textSize: 12,
                    ),
                    kWidth
                  ],
                )
              ],
            ),
            Text("Coming $day,$month"),
            kHeight15,
            Text(
              movieName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            kHeight,
            Text(discription,
                textAlign: TextAlign.justify,
                style: const TextStyle(color: Colors.grey))
          ]),
        ),
      ],
    );
  }
}
