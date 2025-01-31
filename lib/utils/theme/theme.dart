import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/theme/custom_themes/appbar_theme.dart';
import 'package:erba_coders/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:erba_coders/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:erba_coders/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:erba_coders/utils/theme/custom_themes/tab_bar_theme.dart';
import 'package:erba_coders/utils/theme/custom_themes/text_button_theme.dart';
import 'package:erba_coders/utils/theme/custom_themes/text_form_field_theme.dart';
import 'package:erba_coders/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'MADE Envolve Sans',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: TColors.blue,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme,
    textButtonTheme: TTextButtonTheme.darkTextButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    tabBarTheme: TTabBarTheme.tabTheme,
  );
}