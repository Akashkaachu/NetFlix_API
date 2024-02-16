import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/search/model/search_resoponse/search_resoponse.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResoponse>> searchMovies({
    required String movieQuery,
  });
}
