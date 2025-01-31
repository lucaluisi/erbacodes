import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // App basic colors
  static const Color primary = orange;
  static const Color secondary = Color(0xff344e5c);
  static const Color accent = Color(0xff344e5c);

  // Gradient colors
  static const Gradient buttonRgbGradient = LinearGradient(
    colors: [
      Color(0xffee5054),
      Color(0xffe4894c),
      Color(0xffe9c159),
      Color(0xff69b08c),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient rgbGradient = LinearGradient(
    colors: [
      Color(0xffee5854),
      Color(0xffee5854),
      Color(0xffe4894c),
      Color(0xffe9c159),
      Color(0xff69b08c),
      Color(0xff2d414c),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Gradient whiteBlueGradient = LinearGradient(
    colors: [
      white,
      blue,
    ],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  static const Gradient appBarGradient = RadialGradient(
    colors: [
      blue,
      Color(0xff101630),
    ],
    radius: 5,
    center: Alignment.bottomCenter
  );

  // Text colors
  static const Color textPrimary = Color(0xff344e5c);
  static const Color textSecondary = Color(0xff344e5c);
  static const Color textWhite = TColors.white;

  // Background colors
  static const Color light = Color(0xff344e5c);
  static const Color dark = Color(0xff344e5c);
  static const Color primaryBackground = Color(0xff344e5c);

  // Background container colors
  static const Color lightContainer = Color(0xff344e5c);
  static Color darkContainer = TColors.white.withValues(alpha: 0.1);

  // Button colors
  static const Color buttonPrimary = Color(0xff344e5c);
  static const Color buttonSecondary = Color(0xff344e5c);
  static const Color buttonDisabled = Color(0xff344e5c);

  // Border colors
  static const Color borderPrimary = Color(0xff344e5c);
  static const Color borderSecondary = Color(0xff344e5c);

  // Error and Validation colors
  static const Color error = TColors.red;
  static const Color success = TColors.green;
  static const Color warning = TColors.orange;
  static const Color info = TColors.blue;

  // Neutral shades
  static const Color red = Color(0xfff34d59);
  static const Color orange = Color(0xffe17a47);
  static const Color yellow = Color(0xffefc958);
  static const Color green = Color(0xff4ab19d);
  static const Color blue = Color(0xff344e5c);
  static const Color white = Color(0xffffffff);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color grey = Color(0xffe0e0e0);
  static const Color darkGrey = Color(0xff939393);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color lightBlack = Color(0xff303030);
  static const Color black = Color(0xff232323);
}
