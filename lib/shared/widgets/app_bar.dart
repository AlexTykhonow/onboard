import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../theme/copy_with/text_styles.dart';
import 'language_switcher.dart';

class AppBarWidget extends AppBar {
  final String titleKey;
  final List<Widget> actionButtons;

  AppBarWidget({
    super.key,
    required this.titleKey,
    this.actionButtons = const <Widget>[LanguageSwitcher()],
  }) : super(
          centerTitle: false,
          title: Text(
            tr(titleKey),
            style: const TextStyle().boldTitleTextStyle.copyWith(),
          ),
          actions: actionButtons,
        );
}
