import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/home/model/home/home/home_repo.dart';

abstract class HomeService {
  Future<Either<MainFailure, HomeRepo>> getRealeasedInThePastYear();
  Future<Either<MainFailure, HomeRepo>> getTrendingNow();
  Future<Either<MainFailure, HomeRepo>> getTopTenShowsInIndia();
}
