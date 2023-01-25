import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_localization_builder.dart';
import 'app_providers.dart';
import 'router.dart';
import 'theme/app_theme.dart';

class OnBoardingApp extends StatelessWidget {
  const OnBoardingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppProviders(
        child: AppLocalizationBuilder(
          child: Builder(builder: (context) {
            final goRouter = context.read<AppRouter>().goRouter;

            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'OnBoarding app',
              theme: AppTheme().lightTheme(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routeInformationParser: goRouter.routeInformationParser,
              routeInformationProvider: goRouter.routeInformationProvider,
              routerDelegate: goRouter.routerDelegate,
            );
          }),
        ),
      );
}
