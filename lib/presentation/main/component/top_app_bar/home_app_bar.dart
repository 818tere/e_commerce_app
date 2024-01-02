import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/constant/app_icons.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset(AppIcons.mainLogo),
          ),
          title: Text('TabBar', style: TextStyle(color: Colors.white)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                AppIcons.location,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.background,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                AppIcons.cart,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.background,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leadingWidth: 86,
        ),
      ),
    );
  }
}