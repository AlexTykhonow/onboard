import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_theme.dart';

extension TextStyleCopyWith on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get boldTitleTextStyle => copyWith(
        fontWeight: FontWeight.w700,
        color: AppTheme.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 20,
      );

  TextStyle get disabledInputTextStyle => copyWith(
        fontWeight: FontWeight.w300,
        color: AppTheme.osloGrey,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get logoutTextStyle => copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get enabledInputTextStyle => copyWith(
        fontWeight: FontWeight.w300,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get headline1 => copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get headline2 => copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get headline3 => copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get headline4 => copyWith(
        fontSize: 33,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get headline5 => copyWith(
        fontSize: 23,
        fontWeight: FontWeight.w400,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get headline6 => copyWith(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get subtitle1 => copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get subtitle2 => copyWith(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get bodyText1 => copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get bodyText2 => copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get bodyText3 => copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get button => copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.25,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get outlinedButton => copyWith(
        fontSize: 16,
        color: AppTheme.primaryBlue,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.25,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get caption => copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  TextStyle get overline => copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: AppTheme.smokyBlack,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
}
