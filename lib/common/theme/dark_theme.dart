import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_messenger/common/extension/custom_theme_extension.dart';
import 'package:flutter_messenger/common/utils/coloors.dart';

ThemeData darkTheme(){
  final ThemeData base = ThemeData.dark();
  return base.copyWith(elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Coloors.greenDark,
      foregroundColor: Coloors.backgroundDark,
      elevation: 0,
      shadowColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
    ),
  ),
    scaffoldBackgroundColor: Coloors.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode
    ],
    appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    )
    ),
    colorScheme: base.colorScheme.copyWith(
      background: Coloors.backgroundDark,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Coloors.greyBackground,
      modalBackgroundColor: Coloors.greyBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(40)),
      ),
      modalBarrierColor: Colors.transparent.withOpacity(0.3)
    )
  );
}
