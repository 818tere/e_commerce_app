import '../dto/common/response_wrapper/response_wrapper.dart';

extension ResponseWrapperX on ResponseWrapper {
  // api가 Menu를 responseWrapper로 감싸서 보내기 때문에 ResponseWrapper도 model로 변환
  ResponseWrapper<T> toModel<T>(T data) {
    return ResponseWrapper<T>(
      status: status,
      code: code,
      message: message,
      data: data,
    );
  }
}
