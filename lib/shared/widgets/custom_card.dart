import 'package:flutter/material.dart';

import '../consts/app_padding.dart';
import '../theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(AppPadding.normal),
        decoration: const BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              blurRadius: 64,
              spreadRadius: -4,
              color: Color.fromRGBO(24, 39, 75, 0.12),
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: child,
      );
}
