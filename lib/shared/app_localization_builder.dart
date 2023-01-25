import 'package:flutter/material.dart';

//After doing some research to fix localization bug with const widgets:
//A momentary solution is found in this link: https://github.com/aissat/easy_localization/issues/370#issuecomment-841100112
//So that's why this AppLocalizationBuilder class was added.

class AppLocalizationBuilder extends StatefulWidget {
  final Widget child;

  const AppLocalizationBuilder({Key? key, required this.child})
      : super(key: key);

  static AppLocalizationBuilderState? of(BuildContext context) =>
      context.findAncestorStateOfType<AppLocalizationBuilderState>();

  @override
  AppLocalizationBuilderState createState() => AppLocalizationBuilderState();
}

class AppLocalizationBuilderState extends State<AppLocalizationBuilder> {
  @override
  Widget build(BuildContext context) => widget.child;

  void rebuildAllChildren() {
    void rebuild(Element el) {
      el
        ..markNeedsBuild()
        ..visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }
}
