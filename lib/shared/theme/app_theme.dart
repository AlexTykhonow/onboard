import 'package:flutter/material.dart';

import 'copy_with/text_styles.dart';

class AppTheme {
  AppTheme();

  static const Color primaryBlue = Color(0xFF185BB4);
  static const Color lightBlue = Color(0xFFEDF5FF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color milkWhite = Color(0xFFFBFBFB);
  static const Color aquaGrey = Color(0xFFF1F1F1);
  static const Color lightGrey = Color(0xFFD9D9D9);
  static const Color darkGrey = Color(0xFF323232);
  static const Color osloGrey = Color(0xFF8A8D8C);
  static const Color naturalGrey = Color(0xFF8D8A8A);
  static const Color hitGrey = Color(0xFFAFAFAF);
  static const Color silverGrey = Color(0xFFC0C0C0);
  static const Color smokyBlack = Color(0xFF111111);
  static const Color lavaRed = Color(0xFFEC1C24);
  static const Color whiteSmoke = Color(0xFFF5F5F5);

  static const colorsScheme = ColorScheme.light(
    primary: primaryBlue,
    onPrimary: white,
    onSecondary: smokyBlack,
    onSurfaceVariant: white,
    surfaceTint: white,
    background: white,
  );

  AppBarTheme appBarTheme() => AppBarTheme(
        backgroundColor: colorsScheme.primary,
        foregroundColor: colorsScheme.onPrimary,
      );

  ElevatedButtonThemeData elevatedButtonTheme() => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: colorsScheme.onPrimary,
          backgroundColor: colorsScheme.primary,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 40,
          ),
        ),
      );

  OutlinedButtonThemeData outlinedButtonTheme() => OutlinedButtonThemeData(
        style:
            OutlinedButton.styleFrom(foregroundColor: colorsScheme.onSecondary)
                .copyWith(
          side: MaterialStateProperty.all<BorderSide?>(
            BorderSide(
              color: colorsScheme.onSecondary,
            ),
          ),
          foregroundColor: MaterialStateProperty.all<Color?>(
            colorsScheme.onSecondary,
          ),
        ),
      );

  TextButtonThemeData textButtonThemeData() => TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: colorsScheme.primary),
      );

  DialogTheme dialogTheme() => const DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      );

  CheckboxThemeData checkboxThemeData() => const CheckboxThemeData().copyWith(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => states.contains(MaterialState.selected)
              ? states.contains(MaterialState.disabled)
                  ? silverGrey
                  : primaryBlue
              : white,
        ),
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            width: states.contains(MaterialState.disabled) ? 0.4 : 1,
            color: states.contains(MaterialState.selected)
                ? states.contains(MaterialState.disabled)
                    ? silverGrey
                    : primaryBlue
                : smokyBlack,
          ),
        ),
        checkColor: MaterialStateProperty.resolveWith<Color?>(
          (states) =>
              states.contains(MaterialState.selected) ? white : primaryBlue,
        ),
      );

  RadioThemeData radioTheme() => const RadioThemeData().copyWith(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => states.contains(MaterialState.selected)
              ? states.contains(MaterialState.disabled)
                  ? silverGrey
                  : primaryBlue
              : smokyBlack,
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => states.contains(MaterialState.selected)
              ? smokyBlack
              : primaryBlue,
        ),
      );

  TextSelectionThemeData textSelectionTheme() => const TextSelectionThemeData(
        selectionColor: lightBlue,
        cursorColor: primaryBlue,
        selectionHandleColor: lightBlue,
      );

  InputDecorationTheme inputDecorationTheme() => InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: naturalGrey),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: primaryBlue,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: lavaRed),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: lavaRed),
          borderRadius: BorderRadius.circular(8),
        ),
        errorStyle: const TextStyle(
          color: lavaRed,
          fontWeight: FontWeight.w300,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: silverGrey),
          borderRadius: BorderRadius.circular(8),
        ),
        labelStyle: const TextStyle(
          color: osloGrey,
          backgroundColor: white,
        ),
        iconColor: osloGrey,
        fillColor: milkWhite,
      );

  TimePickerThemeData timePickerThemeData(
    ColorScheme colors,
  ) =>
      TimePickerThemeData(
        backgroundColor: colors.background,
      );

  FloatingActionButtonThemeData floatingActionButtonThemeData() =>
      FloatingActionButtonThemeData(backgroundColor: colorsScheme.primary);

  /// App has only light mode
  /// No need to implement dark mode
  ThemeData lightTheme() => ThemeData.light().copyWith(
        appBarTheme: appBarTheme(),
        colorScheme: colorsScheme,
        elevatedButtonTheme: elevatedButtonTheme(),
        outlinedButtonTheme: outlinedButtonTheme(),
        textButtonTheme: textButtonThemeData(),
        inputDecorationTheme: inputDecorationTheme(),
        scaffoldBackgroundColor: colorsScheme.background,
        floatingActionButtonTheme: floatingActionButtonThemeData(),
        useMaterial3: true,
        primaryColor: colorsScheme.primary,
        splashColor: lightBlue,
        highlightColor: Colors.transparent,
        timePickerTheme: timePickerThemeData(colorsScheme),
        checkboxTheme: checkboxThemeData(),
        dialogTheme: dialogTheme(),
        textSelectionTheme: textSelectionTheme(),
        radioTheme: radioTheme(),
        textTheme: TextTheme(
          headline1: const TextStyle().headline1,
          headline2: const TextStyle().headline2,
          headline3: const TextStyle().headline3,
          headline4: const TextStyle().headline4,
          headline5: const TextStyle().headline5,
          headline6: const TextStyle().headline6,
          subtitle1: const TextStyle().subtitle1,
          subtitle2: const TextStyle().subtitle2,
          bodyText1: const TextStyle().bodyText1,
          bodyText2: const TextStyle().bodyText2,
          button: const TextStyle().button,
          caption: const TextStyle().caption,
          overline: const TextStyle().overline,
        ),
      );
}
