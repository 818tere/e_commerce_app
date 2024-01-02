import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_theme.dart';
import '../../mall_type_cubit.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      //MallTypeCubit을 BlocBuilder로 감싸고, builder를 통해 state를 받아온다.
      builder: (_, state) {
        return AnimatedContainer(
          color: (state.isMarket)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.background,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: AppBar(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: SvgPicture.asset(
                  AppIcons.mainLogo,
                  colorFilter: ColorFilter.mode(
                    state.isMarket
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              title: DefaultTabController(
                length: MallType.values.length,
                initialIndex: state.index,
                child: TabBar(
                  tabs: List.generate(
                    MallType.values.length,
                    (index) => Tab(text: MallType.values[index].toName),
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  onTap: (index) =>
                      context.read<MallTypeCubit>().changeIndex(index),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    AppIcons.location,
                    colorFilter: ColorFilter.mode(
                        state.isMarket
                            ? Theme.of(context).colorScheme.background
                            : Theme.of(context).colorScheme.contentPrimary,
                        BlendMode.srcIn),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    AppIcons.cart,
                    colorFilter: ColorFilter.mode(
                        state.isMarket
                            ? Theme.of(context).colorScheme.background
                            : Theme.of(context).colorScheme.contentPrimary,
                        BlendMode.srcIn),
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
              centerTitle: true,
              leadingWidth: 86,
            ),
          ),
          duration: Duration(milliseconds: 300),
        );
      },
    );
  }
}
