import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.white),
    errorStyle: const TextStyle().copyWith(color: Colors.white.withValues(alpha: 0.8)),
    border: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 2, color: Colors.grey),
    ),
    enabledBorder: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 2, color: Colors.grey),
    ),
    focusedBorder: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 2, color: Colors.white),
    ),
    errorBorder: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 2, color: Colors.red),
    ),
    focusedErrorBorder: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}