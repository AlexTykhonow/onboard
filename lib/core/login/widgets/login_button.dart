import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/consts/app_padding.dart';
import '../../../shared/consts/app_string.dart';
import '../../../shared/consts/picture_path.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/theme/copy_with/button_styles.dart';
import '../../../shared/theme/copy_with/text_styles.dart';
import '../../../shared/widgets/snack_bar.dart';
import '../blocs/login_cubit.dart';
import '../repositories/authentication_repository.dart';
import '../repositories/google_login_repository.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => LoginCubit(
          context.read<AuthenticationRepository>(),
          context.read<GoogleLoginRepository>(),
        ),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) => state.whenOrNull(
            failed: context.showErrorSnackBar,
          ),
          builder: (context, state) => OutlinedButton(
            style: const ButtonStyle().outlinedButtonCopyWith(
              foregroundColor: AppTheme.white,
              borderColor: AppTheme.primaryBlue,
            ),
            onPressed: () => state is LoginInProgress
                ? null
                : context.read<LoginCubit>().login(),
            child: state is LoginInProgress
                ? Text(
                    '${tr(AppString.loading)}...',
                    style: const TextStyle().outlinedButton,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        tr(AppString.logInWith),
                        style: const TextStyle().outlinedButton,
                      ),
                      const SizedBox(width: AppPadding.small),
                      Image.asset(PicturePath.google),
                    ],
                  ),
          ),
        ),
      );
}
