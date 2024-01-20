import 'package:flutter/material.dart';
import 'package:flutter_messenger/common/utils/coloors.dart';

extension ExtendedTheme on BuildContext{
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension>{
  static CustomThemeExtension lightMode  = CustomThemeExtension(
      circleImageColor: Color(0xFF25D366),
      greyColor: Coloors.greyLight,
      blueColor: Coloors.blueLight,
      langBtnBgColor: Color(0xFFF7F8FA),
      langBtnHighlightColor: Color(0xFFE8E8d)
  );
  static CustomThemeExtension darkMode  = CustomThemeExtension(
      circleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langBtnBgColor: Color(0xFF182229),
      langBtnHighlightColor: Color(0xFF09141A)
  );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighlightColor;

  CustomThemeExtension(
      {this.circleImageColor,
      this.greyColor,
      this.blueColor,
      this.langBtnBgColor,
      this.langBtnHighlightColor});
  @override
  ThemeExtension<CustomThemeExtension> copyWith(
      {Color? circleImageColor,
      Color? greyColor,
      Color? blueColor,
      Color? langBtnBgColor,
      Color? langBtnHighlightColor}) {
    return CustomThemeExtension(
        circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor?? this.blueColor,
      langBtnBgColor: langBtnBgColor?? this.langBtnBgColor,
      langBtnHighlightColor: langBtnHighlightColor?? this.langBtnHighlightColor
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
     langBtnHighlightColor: Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t)
   );


  }

}