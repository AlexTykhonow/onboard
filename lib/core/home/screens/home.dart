import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/screens/error.dart';
import '../../../shared/screens/success.dart';
import '../../../shared/theme/app_theme.dart';
import '../blocs/general_information_bloc.dart';
import '../widgets/form_body.dart';
import '../widgets/regular_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppTheme.whiteSmoke,
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, kToolbarHeight),
          child: RegularAppBar(),
        ),
        body: BlocConsumer<GeneralInformationBloc, GeneralInformationState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            fetched: (form) => FormBody(form: form),
            saved: () => const SuccessScreen(),
            failed: (errorMessage) => const ErrorScreen(),
            orElse: () => const SizedBox(),
          ),
          listener: (context, state) {
            debugPrint(state.toString());
          },
        ),
      );
}
