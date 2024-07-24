// ignore_for_file: constant_identifier_names
import '../../networking/api_error_handler/response_code.dart';
import '../../networking/api_error_handler/response_message.dart';
import 'api_error_model.dart';

enum DataSource {
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORIZED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  // API_LOGIC_ERROR,
  DEFAULT
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.NO_CONTENT:
        return ApiErrorModel(
          code: ResponseCode.NO_CONTENT,
          message: ResponseMessage.NO_CONTENT,
        );
      case DataSource.BAD_REQUEST:
        return ApiErrorModel(
          code: ResponseCode.BAD_REQUEST,
          message: ResponseMessage.BAD_REQUEST,
        );
      case DataSource.FORBIDDEN:
        return ApiErrorModel(
          code: ResponseCode.FORBIDDEN,
          message: ResponseMessage.FORBIDDEN,
        );
      case DataSource.UNAUTHORIZED:
        return ApiErrorModel(
          code: ResponseCode.UNAUTHORIZED,
          message: ResponseMessage.UNAUTHORIZED,
        );
      case DataSource.NOT_FOUND:
        return ApiErrorModel(
          code: ResponseCode.NOT_FOUND,
          message: ResponseMessage.NOT_FOUND,
        );
      case DataSource.INTERNAL_SERVER_ERROR:
        return ApiErrorModel(
          code: ResponseCode.INTERNAL_SERVER_ERROR,
          message: ResponseMessage.INTERNAL_SERVER_ERROR,
        );
      case DataSource.CONNECT_TIMEOUT:
        return ApiErrorModel(
          code: ResponseCode.CONNECT_TIMEOUT,
          message: ResponseMessage.CONNECT_TIMEOUT,
        );
      case DataSource.CANCEL:
        return ApiErrorModel(
            code: ResponseCode.CANCEL, message: ResponseMessage.CANCEL);
      case DataSource.RECEIVE_TIMEOUT:
        return ApiErrorModel(
          code: ResponseCode.RECEIVE_TIMEOUT,
          message: ResponseMessage.RECEIVE_TIMEOUT,
        );
      case DataSource.SEND_TIMEOUT:
        return ApiErrorModel(
          code: ResponseCode.SEND_TIMEOUT,
          message: ResponseMessage.SEND_TIMEOUT,
        );
      case DataSource.CACHE_ERROR:
        return ApiErrorModel(
          code: ResponseCode.CACHE_ERROR,
          message: ResponseMessage.CACHE_ERROR,
        );
      case DataSource.NO_INTERNET_CONNECTION:
        return ApiErrorModel(
          code: ResponseCode.NO_INTERNET_CONNECTION,
          message: ResponseMessage.NO_INTERNET_CONNECTION,
        );
      case DataSource.DEFAULT:
        return ApiErrorModel(
          code: ResponseCode.DEFAULT,
          message: ResponseMessage.DEFAULT,
        );
    }
  }
}
