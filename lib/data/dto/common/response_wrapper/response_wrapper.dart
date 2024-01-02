import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_wrapper.freezed.dart';
part 'response_wrapper.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseWrapper<T> with _$ResponseWrapper {
  // 제네릭 T를 이용하는 경우 일반적인 freezed 템플릿과 다르게 작성
  // 공식문서 확인
  factory ResponseWrapper({
    @Default('') String status,
    @Default('') String code,
    @Default('') String message,
    T? data,
  }) = _ResponseWrapper;

  factory ResponseWrapper.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ResponseWrapperFromJson(json, fromJsonT);
}
