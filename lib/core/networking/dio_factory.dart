import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;

  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    
    if (dio == null) {
      dio = Dio(
        BaseOptions(
          connectTimeout: timeout,
          receiveTimeout: timeout,
        ),
      );
      _addInterceptors();
    }
    
    return dio!;
  }

  static void _addInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
      ),
    );
  }
}
