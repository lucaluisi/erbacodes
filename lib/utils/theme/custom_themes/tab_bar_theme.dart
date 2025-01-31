import 'package:erba_coders/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TTabBarTheme {
  TTabBarTheme._();

  static final tabTheme = TabBarThemeData(
    indicatorSize: TabBarIndicatorSize.tab,
    indicatorColor: TColors.yellow,
    dividerColor: TColors.white,
    labelColor: TColors.yellow,
    unselectedLabelColor: TColors.white,
  );
}