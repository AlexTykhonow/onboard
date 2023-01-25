import 'package:dio/dio.dart';

const String _baseUrl = 'http://192.168.127.4:8000';
class DioClient {
  final Dio dio;

  DioClient()
      : dio = Dio(BaseOptions(
          baseUrl: _baseUrl,
          receiveTimeout: 60000,
          connectTimeout: 60000,
        ))
          ..interceptors.addAll(
            [
              LogInterceptor(responseBody: true),
            ],
          );
}
