import 'package:dio/dio.dart';

import '../error/error_response.dart';

class CommonException {
  const CommonException();

  static ErrorResponse setError(error) {
    if (error is Exception) {
      if (error.runtimeType == DioException) {
        final dioError = error as DioException;
        final code = dioError.response?.statusCode.toString() ?? '9999';

        return ErrorResponse(
          status: 'network error',
          message: '접속하신 네트워크가 불안정합니다.',
          code: code,
        );
      } else {
        final code = '8888';

        return ErrorResponse(
          status: 'unExcepted error',
          message: '서비스에 일시적인 오류가 발생했습니다. 잠시 후 다시 시도해주세요',
          code: code,
        );
      }
    } else {
      final code = '7777';

      return ErrorResponse(
        status: 'unK nown error',
        message: '서비스에 일시적인 오류가 발생했습니다. 잠시 후 다시 시도해주세요',
        code: code,
      );
    }
  }
}
