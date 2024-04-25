import 'package:flutter/material.dart';
import 'package:flutter_messenger/common/utils/coloors.dart';

extension ExtendedTheme on BuildContext{
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension>{
  static CustomThemeExtension lightMode  = CustomThemeExtension(
      circleImageColor: const Color(0xFF25D366),
      greyColor: Coloors.greyLight,
      blueColor: Coloors.blueLight,
      langBtnBgColor: const Color(0xFFF7F8FA),
      langBtnHighlightColor: const Color(0x0ffe8e8d),
      authAppbarTextColor: Coloors.greenLight,

  );
  static CustomThemeExtension darkMode  = CustomThemeExtension(
      circleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langBtnBgColor: const Color(0xFF182229),
      langBtnHighlightColor: const Color(0xFF09141A),
    authAppbarTextColor: Color(0xFFE9EDEF)
  );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighlightColor;
  final Color? authAppbarTextColor;

  CustomThemeExtension(
      {this.circleImageColor,
      this.greyColor,
      this.blueColor,
      this.langBtnBgColor,
      this.langBtnHighlightColor,
      this.authAppbarTextColor});
  @override
  ThemeExtension<CustomThemeExtension> copyWith(
      {Color? circleImageColor,
      Color? greyColor,
      Color? blueColor,
      Color? langBtnBgColor,
      Color? langBtnHighlightColor,
      Color? authAppbarTextColor}) {
    return CustomThemeExtension(
        circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor?? this.blueColor,
      langBtnBgColor: langBtnBgColor?? this.langBtnBgColor,
      langBtnHighlightColor: langBtnHighlightColor?? this.langBtnHighlightColor,
      authAppbarTextColor: authAppbarTextColor?? this.authAppbarTextColor
    );}

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
   if (other is! CustomThemeExtension) return this;
   return CustomThemeExtension(
     circleImageColor: Color.lerp(circleImageColor!, other.circleImageColor, t),
     greyColor: Color.lerp(greyColor!, other.greyColor, t),
     blueColor: Color.lerp(blueColor!, other.blueColor, t),
     langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
     langBtnHighlightColor: Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
     authAppbarTextColor: Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t)
   );


  }

}