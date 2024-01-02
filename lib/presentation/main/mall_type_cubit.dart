import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/theme/custom/custom_app_bar.dart';

enum MallType {
  // MallType은 열거형
  market,
  beauty,
}

class MallTypeCubit extends Cubit<MallType> {
  // MallTypeCubit은 MallType을 상속
  MallTypeCubit() : super(MallType.market);

  void changeMallType(int index) => emit(MallType.values[index]);
}

extension MallTypeX on MallType {
  // MallTypeX는 MallType의 확장
  String get toName {
    switch (this) {
      case MallType.market:
        return '마켓';
      case MallType.beauty:
        return '뷰티';
    }
  }

  CustomAppBarTheme get theme {
    // CustomAppBarTheme를 반환하는 theme getter로 컬러지정에 분기문 대신 사용
    switch (this) {
      case MallType.market:
        return CustomAppBarTheme.market;
      case MallType.beauty:
        return CustomAppBarTheme.beauty;
    }
  }

  bool get isMarket => this == MallType.market;
  bool get isBeauty => this == MallType.beauty;
}
