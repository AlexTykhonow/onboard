import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/consts/app_padding.dart';
import '../../../shared/consts/app_string.dart';
import '../../../shared/consts/picture_path.dart';
import '../../../shared/router.dart';
import '../../../shared/widgets/app_bar.dart';
import '../../../shared/widgets/language_switcher.dart';
import '../../login/blocs/authentication_bloc.dart';

class RegularAppBar extends StatelessWidget {
  const RegularAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) => AppBarWidget(
        titleKey: AppString.appTitle,
        actionButtons: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () {
              context.goNamed(AppScreenName.profile);
            },
          ),
          const LanguageSwitcher(),
          InkWell(
            onTap: () => BlocProvider.of<AuthenticationBloc>(context).add(
              const AuthenticationEvent.logout(),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.small,
                right: AppPadding.normal,
              ),
              child: SvgPicture.asset(
                PicturePath.logout,
              ),
            ),
          ),
        ],
      );
}
