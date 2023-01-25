import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/consts/app_string.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/theme/copy_with/text_styles.dart';

class ProfileCardHead extends StatelessWidget {
  const ProfileCardHead({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        tr(AppString.generalInformation),
        style: const TextStyle().headline2,
      ),
      IconButton(
        icon: const Icon(Icons.edit_outlined, color: AppTheme.primaryBlue,),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}
