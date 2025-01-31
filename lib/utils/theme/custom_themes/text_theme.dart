import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();
  
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.normal, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.white),
  
    titleLarge: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.white),
    titleMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w300, color: Colors.white),
    titleSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w200, color: Colors.white),
    
    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white.withValues(alpha: 0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white.withValues(alpha: 0.5)),
  );

}