import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/colors.dart';

import 'package:netflix16/core/colors/constant.dart';
import 'package:netflix16/presentation/widgets/app_bar_widgers.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final WigetList = [const _SmartDownloads(), Section2(), const Section3()];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              tittle: "Downlods",
            )),
        body: ListView.separated(
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) => WigetList[index],
            separatorBuilder: (context, index) => SizedBox(height: 25),
            itemCount: WigetList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    "https://image.tmdb.org/t/p/w1280/qhb1qOilapbapxWQn9jtRCMwXJF.jpg",
    "https://image.tmdb.org/t/p/w1280/A7EByudX0eOzlkQ2FIbogzyazm2.jpg",
    "https://image.tmdb.org/t/p/w1280/qJiWKzdRScI5OcRQqOu3qdMZKXY.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          textAlign: TextAlign.center,
          "Introducing Downloads for you",
          style: TextStyle(
              color: WhiteColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          textAlign: TextAlign.center,
          "We will download a personalised selection \n of movies and show for you ,so there's\nalways something watch on your\ndevice",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kHeight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(alignment: Alignment.center, children: [
            Center(
                child: CircleAvatar(
              radius: size.width * 0.4,
              backgroundColor: CircleAvatarBgColor,
            )),
            ImageContainerWidget(
                size: size,
                imageUrl: imageList[0],
                angle: 20,
                margin: const EdgeInsets.only(left: 130, top: 60)),
            ImageContainerWidget(
                size: size,
                imageUrl: imageList[1],
                angle: -20,
                margin: const EdgeInsets.only(right: 130, top: 60)),
            ImageContainerWidget(
                size: size,
                imageUrl: imageList[2],
                angle: 0,
                margin: const EdgeInsets.only(left: 0, bottom: 50, top: 40))
          ]),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthValue = size.width;
    return Column(
      children: [
        SizedBox(
          width: widthValue,
          child: MaterialButton(
            color: kbuttonColorBlue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set UP",
                style: TextStyle(
                    color: whitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: kbuttonColorWhite,
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: whitecolor,
        ),
        SizedBox(width: 10),
        Text("Smart Downloads")
      ],
    );
  }
}

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget({
    super.key,
    required this.size,
    required this.imageUrl,
    required this.angle,
    required this.margin,
  });

  final size;
  final String imageUrl;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Center(
          child: Container(
            width: size.width * 0.49,
            height: size.width * 0.58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
