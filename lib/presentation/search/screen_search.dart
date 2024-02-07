import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix16/core/colors/constant.dart';
import 'package:netflix16/presentation/search/widget/search_result.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.5),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          kHeight,
          //Expanded(child: SearchIdleWidget())
          Expanded(child: SearchResult())
        ],
      )),
    );
  }
}
