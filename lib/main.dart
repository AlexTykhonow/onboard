import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'shared/app.dart';
import 'shared/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(EasyLocalization(
    supportedLocales: const [Locale('pl', 'PL'), Locale('en', 'EN')],
    path: 'resources/translations',
    child: const OnBoardingApp(),
  ));
}
