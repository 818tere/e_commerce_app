// api통신은 retrofit로 구현한다
// retrofit도 freezed와 마찬가지로 annotation 기반으로 템플릿에 맞춰 코드 작성
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/display/menu/menu.dto.dart';

part 'display.api.g.dart';

@RestApi()
abstract class DisplayApi {
  factory DisplayApi(Dio dio, {String baseUrl}) = _DisplayApi;

  @GET('/api/menus/{mall_type}') // Api 통신 코드는 get 메서드를 이용 (dio 패키지)
  Future<List<MenuDto>> getMenusByMallType(
    @Path('mall_type') String mallType,
  );
}
