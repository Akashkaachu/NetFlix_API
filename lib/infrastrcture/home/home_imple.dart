import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/home/home_service.dart';
import 'package:netflix/domain/home/model/home/home/home_repo.dart';

@LazySingleton(as: HomeService)
class HomeImplementation implements HomeService {
  @override
  Future<Either<MainFailure, HomeRepo>> getRealeasedInThePastYear() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.releasedYear,
      );
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeRepo.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HomeRepo>> getTopTenShowsInIndia() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.topTenRated,
      );
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeRepo.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HomeRepo>> getTrendingNow() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.trending,
      );
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeRepo.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
