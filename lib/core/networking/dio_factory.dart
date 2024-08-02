import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// this class is a singleton the aim of it is to create a single dio instance
class DioFactory {
  // a private constructor I don't want to allow creating of an instance of this class
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    const Duration timeout = Duration(seconds: 30);
    const tempToken =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzIyNTgxMjg5LCJleHAiOjE3MjI2Njc2ODksIm5iZiI6MTcyMjU4MTI4OSwianRpIjoid2E3T2kzQ0VFbllSUTBEeiIsInN1YiI6IjE2MjciLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.vaC0Iu_EfnNyBHYI7_vJqLNfy9zNTyyeHp7V2AC7H1A";
    const Map<String, String> headers = {
      'Accept': 'application/json',
      'Authorization': tempToken
    };
    if (dio == null) {
      var options = BaseOptions(
        connectTimeout: timeout,
        receiveTimeout: timeout,
        headers: headers,
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
