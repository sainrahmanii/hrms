import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/core/constants/constant_radius.dart';
import '../../morpheme_colors/morpheme_colors.dart';

abstract base class MorphemeTheme {
  MorphemeTheme(this.id);

  final String id;

  MorphemeColor get color;
  ThemeData get rawThemeData;
  ColorScheme get colorScheme;

  TextTheme get _getTextTheme => GoogleFonts.robotoTextTheme().apply(
    bodyColor: color.black,
    displayColor: color.black,
  );

  ThemeData get themeData => rawThemeData.copyWith(
    scaffoldBackgroundColor: color.white,
    extensions: [color],
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: color.white,
      foregroundColor: color.black,
      titleTextStyle: _getTextTheme.titleLarge,
    ),
    colorScheme: colorScheme,
    textTheme: _getTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: _getTextTheme.labelLarge,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(ConstantRadius.r8)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: ConstantRadius.r16),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: _getTextTheme.labelLarge,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(ConstantRadius.r8)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: ConstantRadius.r16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _getTextTheme.labelLarge,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(ConstantRadius.r8)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: ConstantRadius.r16),
      ),
    ),
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MorphemeTheme && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
