import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

import '../../../shared/consts/app_string.dart';
import '../../../shared/theme/copy_with/text_styles.dart';
import 'form_spacer.dart';

class CardHeadline extends StatelessWidget {
  const CardHeadline({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr(AppString.generalInformation),
            style: const TextStyle().headline2,
          ),
          Text(
            tr(AppString.allFieldAreOptional),
          ),
          const FormSpacer(),
        ],
      );
}
