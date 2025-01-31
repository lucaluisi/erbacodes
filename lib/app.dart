import 'package:erba_coders/features/authentication/screens/welcome.dart';
import 'package:erba_coders/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: TAppTheme.darkTheme,
      home: WelcomeScreen()
    );
  }
}