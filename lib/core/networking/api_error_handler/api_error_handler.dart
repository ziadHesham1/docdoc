// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';

import '../../networking/api_error_handler/data_source.dart';
import 'api_error_model.dart';

class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      apiErrorModel = _handleError(error);
    } else {
      // default error
      apiErrorModel = DataSource.DEFAULT.getFailure();
    }
  }

  @override
  toString() => 'ApiErrorModel(message: ${apiErrorModel.message}, '
      'status: ${apiErrorModel.status},'
      ' code: ${apiErrorModel.code},'
      ' error: ${apiErrorModel.data});';
}

ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.RECEIVE_TIMEOUT.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.unknown:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.CANCEL.getFailure();
    case DioExceptionType.connectionError:
      return DataSource.DEFAULT.getFailure();
    case DioExceptionType.badCertificate:
      {
        return DataSource.DEFAULT.getFailure();
      }
    // case DioExceptionType.badResponse:
    //   return DataSource.DEFAULT.getFailure();
  }
}
