part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.topTenRated() = TopTenRated;
  const factory HomeEvent.releasedYear() = ReleasedYear;
  const factory HomeEvent.trending() = Trending;
}
