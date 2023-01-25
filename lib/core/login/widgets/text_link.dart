import 'package:flutter/material.dart';

import '../../../shared/theme/app_theme.dart';
import '../../../shared/theme/copy_with/text_styles.dart';

class TextLink extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const TextLink({required this.label, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Text(
          label,
          style: const TextStyle(
            color: AppTheme.smokyBlack,
            decoration: TextDecoration.underline,
          ).bodyText3,
        ),
      );
}
