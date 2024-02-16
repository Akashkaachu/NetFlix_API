import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/models/model_download.dart';
import 'dart:developer';

@LazySingleton(as: IdownloadsRepo)
class DownloadRepository implements IdownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    const maxRetryAttempts = 5;
    var retryAttempt = 0;

    while (retryAttempt < maxRetryAttempts) {
      try {
        final Response response =
            await Dio(BaseOptions()).get(ApiEndPoints.downloads);
        log(response.data.toString());
        if (response.statusCode == 200 || response.statusCode == 201) {
          print(response.data);
          final downloadsList = (response.data['results'] as List).map((e) {
            return Downloads.fromJson(e);
          }).toList();

          print(downloadsList);
          return Right(downloadsList);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } catch (e) {
        log(e.toString());
        // Increment the retry attempt
        retryAttempt++;
        // Calculate the exponential backoff delay
        final delay = Duration(seconds: 2 * retryAttempt);
        // Wait for the calculated delay before retrying
        await Future.delayed(delay);
      }
    }

    // If all retry attempts fail, return client failure
    return const Left(MainFailure.clientFailure());
  }
}
