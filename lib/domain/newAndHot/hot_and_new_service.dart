import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/newAndHot/models/discover_response.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, DiscoverResponse>> getHotAndNewMovieData();
  Future<Either<MainFailure, DiscoverResponse>> getHotAndNewTvData();
}
