// ignore_for_file: non_constant_identifier_names

import '../../networking/api_error_handler/api_errors.dart';

class ResponseMessage {
  static const String NO_CONTENT = ApiErrors.noContent;
  static const String BAD_REQUEST = ApiErrors.badRequestError;
  static const String UNAUTHORIZED = ApiErrors.unauthorizedError;
  static const String FORBIDDEN = ApiErrors.forbiddenError;
  static const String INTERNAL_SERVER_ERROR = ApiErrors.internalServerError;
  static const String NOT_FOUND = ApiErrors.notFoundError;

  static String CONNECT_TIMEOUT = ApiErrors.timeoutError;
  static String CANCEL = ApiErrors.defaultError;
  static String RECEIVE_TIMEOUT = ApiErrors.timeoutError;
  static String SEND_TIMEOUT = ApiErrors.timeoutError;
  static String CACHE_ERROR = ApiErrors.cacheError;
  static String NO_INTERNET_CONNECTION = ApiErrors.noInternetError;
  static String DEFAULT = ApiErrors.defaultError;
}
