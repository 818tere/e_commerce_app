import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/custom/custom_theme.dart';
import '../../cubit/bottom_nav_cubit.dart';
import '../../mall_type_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar(this.bottomNav, {super.key});
  final BottomNav bottomNav;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(builder: (_, state) {
      //MallTypeCubit을 BlocBuilder로 감싸고, builder를 통해 state를 받아온다.
      return Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        color: (state.isMarket)
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.background,
        child: AppBar(
          title: Text(
            bottomNav.label,
            style: TextStyle(
              color: state.isMarket
                  ? Theme.of(context).colorScheme.background
                  : Theme.of(context).colorScheme.contentPrimary,
            ),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
      );
    });
  }
}
