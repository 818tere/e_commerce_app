import 'package:flutter_bloc/flutter_bloc.dart';

enum MallType {
  // MallType은 열거형
  market,
  beauty,
}

class MallTypeCubit extends Cubit<MallType> {
  // MallTypeCubit은 MallType을 상속
  MallTypeCubit() : super(MallType.market);

  void changeIndex(int index) => emit(MallType.values[index]);
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

  bool get isMarket => this == MallType.market;
  bool get isBeauty => this == MallType.beauty;
}
