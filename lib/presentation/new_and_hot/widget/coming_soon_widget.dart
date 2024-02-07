import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/colors.dart';
import 'package:netflix16/core/colors/constant.dart';
import 'package:netflix16/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix16/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: 50,
            child: Column(
              children: [
                Text(
                  "Feb".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "11",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            )),
        SizedBox(
          width: size.width - 50,
          height: 430,
          child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "TALLGIRL",
                      style: TextStyle(
                          fontSize: 40,
                          letterSpacing: -3,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
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
                const Text("Coming on Friday"),
                kHeight15,
                const Text(
                  "Tall Girl2",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kHeight,
                const Text(
                    "Landing the lead in the school musical is a dream come true for Hodi, until the pressure sends her confidence -- and her relationship -- into a tailspin.",
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ],
    );
  }
}
