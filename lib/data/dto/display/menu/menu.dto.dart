// freezed 패키지를 이용해서 작성
// freezed는 템플릿대로 코드를 작성하고 annotation 기반으로 generator

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.dto.freezed.dart';
part 'menu.dto.g.dart';

@freezed
class MenuDto with _$MenuDto {
  factory MenuDto({
    @Default('') String title,
    @Default(-1) int tabId,
  }) = _MenuDto;

  factory MenuDto.fromJson(Map<String, dynamic> json) =>
      _$MenuDtoFromJson(json);
}
