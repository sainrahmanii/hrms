import 'package:flutter/material.dart';

import '../../morpheme_colors/morpheme_colors.dart';
import 'morpheme_theme.dart';

final class MorphemeThemeDark extends MorphemeTheme {
  MorphemeThemeDark() : super('dark');

  @override
  MorphemeColor get color => MorphemeColorDark();

  @override
  ThemeData get rawThemeData => ThemeData.light().copyWith(extensions: [color]);

  @override
  ColorScheme get colorScheme => ColorScheme.light(primary: color.primary);
}
