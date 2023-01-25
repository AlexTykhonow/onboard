import 'package:flutter/material.dart';

import '../../consts/app_padding.dart';
import '../app_theme.dart';

extension ButtonStyleCopyWith on ButtonStyle {
  ButtonStyle outlinedButtonCopyWith({
    Color? borderColor,
    Color? foregroundColor,
  }) =>
      copyWith(
        side: MaterialStateProperty.all<BorderSide?>(
          BorderSide(
            color: borderColor ?? AppTheme.primaryBlue,
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(AppPadding.normal),
        ),
        foregroundColor: MaterialStateProperty.all<Color?>(
          foregroundColor,
        ),
      );

  ButtonStyle elevatedButtonCopyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    Color? borderColor,
  }) =>
      copyWith(
        foregroundColor: MaterialStateProperty.all<Color?>(
          foregroundColor,
        ),
        backgroundColor: MaterialStateProperty.all<Color?>(
          backgroundColor,
        ),
        side: MaterialStateProperty.all<BorderSide?>(
          BorderSide(
            color: borderColor ?? AppTheme.primaryBlue,
          ),
        ),
      );
}
