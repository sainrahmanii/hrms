import 'package:flutter/material.dart';

import '../../morpheme_colors/morpheme_colors.dart';
import 'morpheme_theme.dart';

final class MorphemeThemeLight extends MorphemeTheme {
  MorphemeThemeLight() : super('light');

  @override
  MorphemeColor get color => MorphemeColorLight();

  @override
  ThemeData get rawThemeData => ThemeData.light().copyWith(extensions: [color]);

  @override
  ColorScheme get colorScheme => ColorScheme.light(primary: color.primary);
}
