import 'package:flutter/material.dart';

import '../../cubit/bottom_nav_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar(this.bottomNav, {super.key});
  final BottomNav bottomNav;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      color: Theme.of(context).colorScheme.primary,
      child: AppBar(
        title: Text(
          bottomNav.label,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
    );
  }
}
