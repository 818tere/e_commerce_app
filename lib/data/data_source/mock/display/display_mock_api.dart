import 'dart:convert';

import '../../../dto/common/response_wrapper/response_wrapper.dart';
import '../../../dto/display/menu/menu.dto.dart';
import '../../remote/display.api.dart';
import 'display_mock_data.dart';

class DisplayMockApi implements DisplayApi {
  @override
  Future<ResponseWrapper<List<MenuDto>>> getMenusByMallType(String mallType) {
    return Future(
      () => ResponseWrapper(
        status: 'success',
        code: '200',
        message: '',
        data: _MenuParser(
          mallType == 'market'
              ? DisplayMockData.menusByMarket
              : DisplayMockData.menusByBeauty,
        ),
      ),
    );
  }

  List<MenuDto> _MenuParser(String source) {
    // source는 json 형태의 String -> MenuDto로 변환
    List<MenuDto> menus = [];
    final List json = jsonDecode(source);
    menus = json.map((e) => MenuDto.fromJson(e)).toList();

    return menus;
  }
}
