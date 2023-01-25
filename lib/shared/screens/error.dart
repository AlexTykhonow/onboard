import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../consts/app_padding.dart';
import '../consts/app_string.dart';
import '../consts/picture_path.dart';
import '../extensions/context_extensions.dart';
import '../router.dart';
import '../theme/app_theme.dart';
import '../theme/copy_with/button_styles.dart';
import '../theme/copy_with/text_styles.dart';
import '../widgets/custom_card.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: AppTheme.whiteSmoke,
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.normal,
          vertical: AppPadding.large,
        ),
        child: CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (context.isBigScreen) SvgPicture.asset(PicturePath.error),
              Text(
                tr(AppString.error),
                textAlign: TextAlign.center,
                style: context.isBigScreen
                    ? const TextStyle().headline1
                    : const TextStyle().headline2,
              ),
              const SizedBox(
                height: AppPadding.small,
              ),
              Text(
                tr(AppString.errorMsg),
                textAlign: TextAlign.center,
                style: context.isBigScreen
                    ? const TextStyle().bodyText1
                    : const TextStyle().bodyText2,
              ),
              SizedBox(
                height:
                    context.isBigScreen ? AppPadding.medium : AppPadding.normal,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppPadding.xSmall,
                  ),
                  child: OutlinedButton(
                    onPressed: () => GoRouter.of(context).pushNamed(
                      AppScreenName.home,
                    ),
                    style: const ButtonStyle().outlinedButtonCopyWith(
                      borderColor: AppTheme.primaryBlue,
                      foregroundColor: AppTheme.primaryBlue,
                    ),
                    child: Text(
                      tr(AppString.backHome),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
