import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
  );
}