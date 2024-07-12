import 'package:firstapp/utils/theme/widget_theme/elevated_button_them.dart';
import 'package:firstapp/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:flutter/material.dart';

class ThemeApp{
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonThem.lightOutlineButtonTheme,
  );



  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonThem.darkOutlineButtonTheme,
  );
}
