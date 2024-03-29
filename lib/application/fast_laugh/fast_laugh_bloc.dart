import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/models/model_download.dart';
part 'fast_laugh_bloc.freezed.dart';
part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';

final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
];
ValueNotifier<Set<int>> likedVideosIdsNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IdownloadsRepo _downloadService)
      : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //sending      loading to   ui
      emit(const FastLaughState(
        videoList: [],
        isLoading: true,
        isError: false,
      ));
      //get   trending    movies
      final _result = await _downloadService.getDownloadsImages();
      final _state = _result.fold((l) {
        return const FastLaughState(
          videoList: [],
          isLoading: false,
          isError: true,
        );
      },
          (resp) => FastLaughState(
              videoList: resp, isLoading: false, isError: false));
      //send to ui
      emit(_state);
    });
    on<LikeVideo>((event, emit) async {
      likedVideosIdsNotifier.value.add(event.id);
      likedVideosIdsNotifier.notifyListeners();
    });
    on<UnLikeVideo>((event, emit) {
      likedVideosIdsNotifier.value.remove(event.id);
      likedVideosIdsNotifier.notifyListeners();
    });
  }
}
