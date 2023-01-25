import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/consts/app_padding.dart';
import '../../../shared/consts/app_string.dart';
import '../../../shared/theme/copy_with/text_styles.dart';

class FormHeadline extends StatelessWidget {
  const FormHeadline({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.medium,
        ),
        child: Text(
          tr(AppString.employeeForm),
          style: const TextStyle().headline2,
        ),
      );
}
