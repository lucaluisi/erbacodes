import 'package:erba_coders/common/styles/spacing_styles.dart';
import 'package:erba_coders/features/authentication/screens/login/widgets/login_form.dart';
import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          /// Top shape
          Positioned(
            top: -300,
            left: 0,
            child: Container(
              decoration: BoxDecoration(gradient: TColors.whiteBlueGradient),
              width: 400,
              height: 400,
              transform: Matrix4.rotationZ(TSizes.pi / 3.8),
            ),
          ),

          /// Bottom shape
          Positioned(
            bottom: -170,
            left: 0,
            child: Container(
              decoration: BoxDecoration(gradient: TColors.rgbGradient),
              width: 500,
              height: 400,
              transform: Matrix4.rotationZ(TSizes.pi / 6),
            ),
          ),

          /// Login
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: TSpacingStyle.paddingWithAppBarHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title
                    Text("Login", style: Theme.of(context).textTheme.headlineLarge),

                    /// Form
                    TLoginForm()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
