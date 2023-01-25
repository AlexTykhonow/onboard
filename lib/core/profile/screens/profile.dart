import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/consts/app_string.dart';
import '../../../shared/network/api_helper/dio_client.dart';
import '../../../shared/screens/error.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/app_bar.dart';
import '../../../shared/widgets/language_switcher.dart';
import '../bloc/profile_bloc.dart';
import '../repository/profile_repository.dart';
import '../widget/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppTheme.whiteSmoke,
    appBar: PreferredSize(
      preferredSize: const Size(double.infinity, 56),
      child: AppBarWidget(
        titleKey: AppString.profile,
        actionButtons: [
          IconButton(
            icon: const Icon(Icons.edit_outlined, color: AppTheme.whiteSmoke,),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          const LanguageSwitcher(),
        ],
      ),
    ),
    body: BlocProvider(
      create: (context) => ProfileBloc(
        ProfileRepository(context.read<DioClient>()),
      )..add(
        const ProfileEvent.fetch(),
      ),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        builder: (context, state) => state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          fetched: (form) => ProfileBody(form: form,),
          failed: (error) => const ErrorScreen(),
          orElse: () => const SizedBox(),
        ),
        listener: (context, state) {
          debugPrint(state.toString());
        },
      ),
    ),
  );
}
