import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:service_hub/core/networking/api_error_handler.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = ApiResultSuccess<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = ApiResultFailure<T>;
}