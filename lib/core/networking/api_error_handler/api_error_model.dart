import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String message;
  final dynamic data;
  final bool status;
  final int code;
  ApiErrorModel({
    required this.message,
    this.data,
    this.status = false,
    required this.code,
  });
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
  @override
  toString() =>
      'ApiErrorModel(message: $message, data: $data, status: $status, code: $code)';
}
