import '../../data/dto/common/response_wrapper/response_wrapper.dart';
import '../../presentation/main/mall_type_cubit.dart';
import '../model/display/menu/menu.model.dart';
import 'repository.dart';

abstract class DisplayRepository extends Repository {
  // MallType에 따라서 메뉴를 가져오는 인터페이스
  Future<ResponseWrapper<List<Menu>>> getMenusByMallType({
    required MallType mallType,
  });
}
