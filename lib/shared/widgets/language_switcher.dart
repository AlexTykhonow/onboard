import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/app_localization_builder.dart';
import '../../../shared/consts/app_padding.dart';
import '../../../shared/consts/picture_path.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.small),
        child: IconButton(
          icon: SvgPicture.asset(
            context.locale == context.supportedLocales.first
                ? PicturePath.englishFlag
                : PicturePath.polishFlag,
          ),
          onPressed: () async {
            final supFirstLan = context.supportedLocales.first;
            await context.setLocale(context.locale == supFirstLan
                ? context.supportedLocales.last
                : supFirstLan);
            AppLocalizationBuilder.of(context)?.rebuildAllChildren();
          },
        ),
      );
}
