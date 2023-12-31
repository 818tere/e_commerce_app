import '../../../../core/utils/error/error_response.dart';
import '../../../../presentation/main/mall_type_cubit.dart';
import '../../../model/common/result.dart';
import '../../../repository/display.repository.dart';
import '../../base/remote.usecase.dart';

class GetMenusUsecase extends RemoteUsecase<DisplayRepository> {
  final MallType mallType;

  GetMenusUsecase(this.mallType);

  @override
  Future call(DisplayRepository repository) async {
    final result = await repository.getMenusByMallType(mallType: mallType);

    return (result.status == 'SUCCESS')
        ? Result.Success(result.data ?? [])
        : Result.Failure(ErrorResponse(
            status: result.status,
            message: result.message,
            code: result.code,
          ));
  }
}
