

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/consts/app_padding.dart';
import '../../../shared/consts/app_string.dart';
import '../../../shared/theme/copy_with/text_styles.dart';
import '../../home/widgets/form_spacer.dart';

class ProfileHead extends StatelessWidget {
  const ProfileHead({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.medium,
        ),
        child: Column(
          children: [
            Text(
              tr(AppString.profileHead),
              style: const TextStyle().bodyText3,
            ),
            const FormSpacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  tr(AppString.profileButton),
                  style: const TextStyle().bodyText3,
                ),
              ),
            ),
          ],
        ),
      );
}
