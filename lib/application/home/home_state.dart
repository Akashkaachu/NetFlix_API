part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<HomeData> topTenRated,
    required List<HomeData> releasedYear,
    required List<HomeData> trending,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;
  factory HomeState.initial() => const HomeState(
        topTenRated: [],
        releasedYear: [],
        trending: [],
        isLoading: false,
        hasError: false,
      );
}
