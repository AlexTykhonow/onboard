import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/consts/app_string.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/theme/copy_with/text_styles.dart';
import 'text_link.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Divider(color: AppTheme.hitGrey),
          Text(
            tr(AppString.byClickingTheButtonAbove),
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppTheme.osloGrey).bodyText3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextLink(
                label: tr(AppString.termsAndConditions),
                onTap: () => debugPrint('terms and conditions'),
              ),
              Text(
                ' ${tr(AppString.and)} ',
                style: const TextStyle(color: AppTheme.osloGrey).bodyText3,
              ),
              TextLink(
                label: tr(AppString.privacyPolicy),
                onTap: () => debugPrint('privacy policy'),
              ),
            ],
          ),
        ],
      );
}
