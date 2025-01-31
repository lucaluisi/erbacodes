import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TTextButtonTheme {
  TTextButtonTheme._();

  static final darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      disabledForegroundColor: Colors.grey,
      textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'MADE Envolve Sans'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    )
  );
}