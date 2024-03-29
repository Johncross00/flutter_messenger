import 'package:flutter/material.dart';
import 'package:flutter_messenger/common/utils/coloors.dart';

import '../extension/custom_theme_extension.dart';

ThemeData lightTheme(){
  final ThemeData base = ThemeData.light();
  return base.copyWith(elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Coloors.greenLight,
      foregroundColor: Coloors.backgroundLight,
      elevation: 0,
      shadowColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
    ),
  ),
    scaffoldBackgroundColor: Coloors.backgroundLight,
    extensions: [
      CustomThemeExtension.lightMode
    ],
    colorScheme: base.colorScheme.copyWith(
      background: Coloors.backgroundLight,
    ),
  );
}
