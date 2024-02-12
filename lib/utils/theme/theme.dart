import 'package:eventmainapp/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:eventmainapp/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EAppTheme {
  EAppTheme._();

  static ThemeData mainTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 213, 50, 110),
    scaffoldBackgroundColor: Color(0x1E2019),
    textTheme: ETextTheme.mainTextTheme,
    elevatedButtonTheme: EElevatedButtonTheme.elevatedButtonTheme,
  );
}
