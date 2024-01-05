import '../../domain/model/display/menu/menu.model.dart';
import '../dto/display/menu/menu.dto.dart';

extension MenuX on MenuDto {
  // dto를 model로 변환
  Menu toModel() {
    return Menu(tabId: tabId ?? -1, title: title ?? '');
  }
}
