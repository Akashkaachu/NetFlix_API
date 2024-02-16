// ignore_for_file: avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/costant.dart';
import 'package:netflix/domain/downloads/models/model_download.dart';
import 'package:share/share.dart';
import 'package:video_player/video_player.dart';

class VideoListItemIngeritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListItemIngeritedWidget(
      {Key? key, required this.widget, required this.movieData})
      : super(child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemIngeritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemIngeritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemIngeritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemIngeritedWidget.of(context)?.movieData.posterPath;
    final videoUrl = dummyVideoUrls[index % dummyVideoUrls.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(videoUrl: videoUrl, onStateChaged: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //left side
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: colorWhite,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                          radius: 30,
                          backgroundImage: posterPath == null
                              ? null
                              : NetworkImage('$imageAppendUrl$posterPath')),
                    ),
                    ValueListenableBuilder(
                      valueListenable: likedVideosIdsNotifier,
                      builder: (BuildContext context, Set<int> newLikedListIds,
                          Widget? _) {
                        final _index = index;
                        if (newLikedListIds.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<FastLaughBloc>(context)
                                  .add(UnLikeVideo(id: _index));
                            },
                            child: GestureDetector(
                              onTap: () {
                                // BlocProvider.of<FastLaughBloc>(context)
                                //     .add(LikeVideo(id: _index));
                                likedVideosIdsNotifier.value.remove(_index);
                                likedVideosIdsNotifier.notifyListeners();
                              },
                              child: const VideoActionWidget(
                                  icon: Icons.favorite_outline, title: "Liked"),
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            //  BlocProvider.of<FastLaughBloc>(context)
                            //.add(LikeVideo(id: _index));
                            likedVideosIdsNotifier.value.add(_index);
                            likedVideosIdsNotifier.notifyListeners();
                          },
                          child: const VideoActionWidget(
                              icon: Icons.emoji_emotions, title: "Lol"),
                        );
                      },
                    ),
                    const VideoActionWidget(icon: Icons.add, title: "My List"),
                    GestureDetector(
                        onTap: () {
                          final movieName =
                              VideoListItemIngeritedWidget.of(context)
                                  ?.movieData
                                  .posterPath;
                          // print(movieName);
                          if (movieName != null) {
                            Share.share(movieName);
                          }
                        },
                        child: const VideoActionWidget(
                            icon: Icons.share, title: "Share")),
                    const VideoActionWidget(
                        icon: Icons.play_arrow, title: "Play")
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  const VideoActionWidget({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: colorWhite,
            size: 30,
          ),
          kHeight,
          Text(
            title,
            style: const TextStyle(color: colorWhite, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class FastLaughVideoPlayer extends StatefulWidget {
  FastLaughVideoPlayer(
      {super.key, required this.videoUrl, required this.onStateChaged});
  final String videoUrl;
  void Function(bool isPlaying) onStateChaged;
  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    _videoPlayerController.initialize().then((value) {
      setState(() {});
    });
    _videoPlayerController.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
