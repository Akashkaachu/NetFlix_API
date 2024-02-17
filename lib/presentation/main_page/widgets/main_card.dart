import 'package:flutter/cupertino.dart';
import 'package:netflix/core/costant.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    super.key,
    required this.imageUrl,
  });
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: borderRadius10,
            image: imageUrl == null
                ? null
                : DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("$imageAppendUrl$imageUrl"))),
      ),
    );
  }
}
