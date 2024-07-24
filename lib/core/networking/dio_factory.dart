import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// this class is a singleton the aim of it is to create a single dio instance
class DioFactory {
  // a private constructor I don't want to allow creating of an instance of this class
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      var options = BaseOptions(
        connectTimeout: timeout,
        receiveTimeout: timeout,
      );
      dio = Dio(options);
      addInterceptors();
    }
    return dio!;
  }

  static addInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ),
    );
  }
}
