import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/consts/app_padding.dart';
import '../../../shared/consts/app_string.dart';
import '../../../shared/consts/picture_path.dart';
import '../../../shared/extensions/context_extensions.dart';
import '../../../shared/theme/copy_with/text_styles.dart';
import 'login_button.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          if (context.isBigScreen)
            SvgPicture.asset(
              PicturePath.login,
              height: context.screenHeight / 2.6,
            ),
          const SizedBox(height: AppPadding.normal),
          Text(
            tr(AppString.welcomeText),
            textAlign: TextAlign.center,
            style: const TextStyle().headline2,
          ),
          const SizedBox(height: AppPadding.small),
          Text(
            tr(AppString.loginDescription),
            textAlign: TextAlign.center,
            style: const TextStyle().bodyText1,
          ),
          const SizedBox(height: AppPadding.normal),
          const LoginButton(),
        ],
      );
}
