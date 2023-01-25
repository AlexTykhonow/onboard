import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/login/blocs/authentication_bloc.dart';
import '../consts/app_padding.dart';
import '../consts/app_string.dart';
import '../consts/picture_path.dart';
import '../theme/copy_with/text_styles.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => BlocProvider.of<AuthenticationBloc>(context).add(
          const AuthenticationEvent.logout(),
        ),
        child: Row(
          children: [
            Text(
              AppString.logout,
              style: const TextStyle().logoutTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.small,
                right: AppPadding.normal,
              ),
              child: SvgPicture.asset(
                PicturePath.logout,
              ),
            ),
          ],
        ),
      );
}
