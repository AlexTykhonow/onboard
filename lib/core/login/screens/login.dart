import 'package:flutter/material.dart';

import '../../../shared/consts/app_padding.dart';
import '../../../shared/consts/app_string.dart';
import '../../../shared/extensions/context_extensions.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/app_bar.dart';
import '../../../shared/widgets/custom_card.dart';
import '../widgets/content.dart';
import '../widgets/footer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppTheme.whiteSmoke,
        appBar: AppBarWidget(
          titleKey: AppString.appTitle,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppPadding.normal,
            AppPadding.large,
            AppPadding.normal,
            AppPadding.medium,
          ),
          child: CustomCard(
            child: Column(
              children: [
                if (!context.isBigScreen) const Spacer(),
                const Content(),
                const Spacer(),
                const Footer(),
              ],
            ),
          ),
        ),
      );
}
