import 'package:bookly/app/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

const String accept = 'Accept';
const String applicationJson = 'application/json';

class DioFactory {
  late Dio _dio;

  Dio get dio => _dio;

  DioFactory() {
    final headers = <String, dynamic>{accept: applicationJson};

    final baseOptions = BaseOptions(
      connectTimeout:
          const Duration(milliseconds: AppConstants.timeoutDuration),
      sendTimeout: const Duration(milliseconds: AppConstants.timeoutDuration),
      receiveTimeout:
          const Duration(milliseconds: AppConstants.timeoutDuration),
      receiveDataWhenStatusError: true,
      headers: headers,
    );
    _dio = Dio(baseOptions);

    if (kDebugMode || kProfileMode) {
      _dio.interceptors.add(LogInterceptor());
    }
  }
}
