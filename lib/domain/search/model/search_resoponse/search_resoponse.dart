import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/core/costant.dart';

part 'search_resoponse.g.dart';

@JsonSerializable()
class SearchResoponse {
  //-----------------=============
  @JsonKey(name: 'results')
  List<SearchResultData> results;

  SearchResoponse({
    this.results = const [],
  });

  factory SearchResoponse.fromJson(Map<String, dynamic> json) {
    return _$SearchResoponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResoponseToJson(this);
}

@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;
  String get posterPathUrl => "$imageAppendUrl&posterPath";
  SearchResultData({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
