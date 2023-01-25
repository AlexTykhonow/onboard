import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:either_dart/either.dart';

import '../../consts/app_string.dart';

mixin BaseApi<T> {
  Future<Either<String, T>> request(Future<T> Function() request) async {
    try {
      return Right(await request());
    } on DioError catch (e) {
      return Left(tr(e.mapToNetworkException().errorMessage));
    } on Exception {
      return Left(tr(NetworkException.unknownError.errorMessage));
    }
  }

  Future<Either<String, K>> requestType<K>(Future<K> Function() request) async {
    try {
      return Right(await request());
    } on DioError catch (e) {
      return Left(tr(e.mapToNetworkException().errorMessage));
    } on Exception {
      return Left(tr(NetworkException.unknownError.errorMessage));
    }
  }
}

enum NetworkException {
  badRequest(),
  forbidden(errorMessage: AppString.forbiddenException),
  requestTimeout(),
  serviceUnavailable(),
  internalServerError(),
  badGateway(),
  gatewayTimeout(),
  unknownError(),
  noInternetConnection(errorMessage: AppString.internetException),
  deadlineExceeded(errorMessage: AppString.deadlineExceededException);

  const NetworkException({
    this.errorMessage = AppString.networkException,
  });

  final String errorMessage;
}

extension DioErrorExtension on DioError {
  NetworkException mapToNetworkException() {
    switch (response?.statusCode) {
      case 400:
        return NetworkException.badRequest;
      case 404:
        return NetworkException.forbidden;
      case 408:
        return NetworkException.requestTimeout;
      case 500:
        return NetworkException.internalServerError;
      case 502:
        return NetworkException.badGateway;
      case 503:
        return NetworkException.serviceUnavailable;
      case 504:
        return NetworkException.gatewayTimeout;
      default:
        return NetworkException.unknownError;
    }
  }
}
