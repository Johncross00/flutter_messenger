import 'package:flutter/material.dart';
import 'package:flutter_messenger/common/extension/custom_theme_extension.dart';
import 'package:flutter_messenger/common/utils/coloors.dart';

ThemeData darkTheme(){
  final ThemeData base = ThemeData.dark();
  return base.copyWith(elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Coloors.greenLight,
      foregroundColor: Coloors.backgroundLight,
      elevation: 0,
      shadowColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
    ),
  ),
    scaffoldBackgroundColor: Coloors.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode
    ],
    colorScheme: base.colorScheme.copyWith(
      background: Coloors.backgroundDark,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Coloors.greyBackground,
      modalBackgroundColor: Colors.red,
      modalBarrierColor: Colors.transparent.withOpacity(0.3)
    )
  );
}
