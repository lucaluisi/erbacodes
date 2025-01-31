import 'package:erba_coders/common/styles/spacing_styles.dart';
import 'package:erba_coders/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          /// Top shape
          Positioned(
            top: -330,
            right: -350,
            child: Container(
              decoration: BoxDecoration(gradient: TColors.rgbGradient),
              width: 400,
              height: 400,
              transform: Matrix4.rotationZ(TSizes.pi / 5),
            ),
          ),

          /// Bottom shape
          Positioned(
            bottom: -170,
            right: -500,
            child: Container(
              decoration: BoxDecoration(gradient: TColors.whiteBlueGradient),
              width: 500,
              height: 400,
              transform: Matrix4.rotationZ(TSizes.pi / 3.4),
            ),
          ),

          /// Sign up
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: TSpacingStyle.paddingWithAppBarHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title
                    Text("Register", style: Theme.of(context).textTheme.headlineLarge),

                    /// Form
                    TSignupForm()
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
