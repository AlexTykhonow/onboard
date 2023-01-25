import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../consts/app_padding.dart';
import '../consts/app_string.dart';
import '../consts/picture_path.dart';
import '../extensions/context_extensions.dart';
import '../theme/app_theme.dart';
import '../theme/copy_with/text_styles.dart';
import '../widgets/custom_card.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: AppTheme.whiteSmoke,
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.normal,
          vertical: context.isBigScreen ? AppPadding.large : AppPadding.small,
        ),
        child: CustomCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr(AppString.allDocsAreCompleted),
                style: context.isBigScreen
                    ? const TextStyle().headline2
                    : const TextStyle().headline3,
              ),
              if (context.isBigScreen) ...[
                const SizedBox(
                  height: AppPadding.medium,
                ),
                Expanded(
                  child: SvgPicture.asset(PicturePath.success),
                ),
                const SizedBox(
                  height: AppPadding.medium,
                ),
              ] else
                const SizedBox(
                  height: AppPadding.small,
                ),
              Text(
                tr(AppString.thanksForFillingOutTheForms),
                style: const TextStyle().bodyText1,
              ),
              if (!context.isBigScreen)
                const SizedBox(
                  height: AppPadding.small,
                ),
              Text(
                tr(AppString.successDocsCompletingMsg),
                style: const TextStyle().bodyText1,
              ),
              RichText(
                text: TextSpan(
                  text: tr(AppString.closingOfSuccessMsg),
                  style: const TextStyle().bodyText1,
                  children: [
                    TextSpan(
                      text: tr(AppString.remarkablePeople),
                      style: const TextStyle(color: AppTheme.primaryBlue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
