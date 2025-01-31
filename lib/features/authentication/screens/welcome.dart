import 'package:erba_coders/features/authentication/controllers/welcome_controller.dart';
import 'package:erba_coders/utils/constants/image_strings.dart';
import 'package:erba_coders/common/widgets/outlined_button/outlined_button.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:erba_coders/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WelcomeController());

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(TImages.welcomeBackground),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              spacing: 200,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image(
                      width: THelperFunctions.screenWidth() * 0.7,
                      height: THelperFunctions.screenHeight() * 0.3,
                      image: AssetImage(TImages.appLogo),
                    ),
                    Text(
                      "Erba Coders",
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => controller.goToLogin(),
                      child: Text("Login"),
                    ),
                    const SizedBox(height: TSizes.spaceBtwinputField),
                    TOutlinedButton(
                        onPressed: () => controller.goToSignup(),
                        text: "Sign up"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
