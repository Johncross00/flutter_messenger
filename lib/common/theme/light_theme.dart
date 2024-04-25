import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      )
      ),


      colorScheme: base.colorScheme.copyWith(
      background: Coloors.backgroundLight,
    ),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Coloors.backgroundLight,
          modalBackgroundColor: Coloors.backgroundLight,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(40)
            ),
          ),
          modalBarrierColor: Colors.transparent.withOpacity(0.3)
      )
  );
}
