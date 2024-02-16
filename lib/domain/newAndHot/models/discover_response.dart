import 'package:json_annotation/json_annotation.dart';
part 'discover_response.g.dart';

@JsonSerializable()
class DiscoverResponse {
  @JsonKey(name: 'Page')
  int? page;
  @JsonKey(name: 'results')
  List<HotAndNewData> results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  DiscoverResponse({
    this.page,
    this.results = const [],
  });

  factory DiscoverResponse.fromJson(Map<String, dynamic> json) {
    return _$DiscoverResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DiscoverResponseToJson(this);
}

@JsonSerializable()
class HotAndNewData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'original_name')
  String? orginalTvName;

  HotAndNewData({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory HotAndNewData.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewDataToJson(this);
}
