import 'package:erba_coders/common/styles/spacing_styles.dart';
import 'package:erba_coders/common/widgets/success_screen/success_screen.dart';
import 'package:erba_coders/features/authentication/screens/welcome.dart';
import 'package:erba_coders/navigation_menu.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const WelcomeScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.defaultPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Image
              Icon(Iconsax.direct_inbox, size: TSizes.iconXxl),
              const SizedBox(height: TSizes.largeSpaceBtwSections),

              /// Title and subtitle
              Text(
                "Verify your email address!",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "support@erbacoders.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "Congratulations! Your Account Awaits: Verify your Email to Start Sharing your Codes.",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.largeSpaceBtwSections),

              /// Buttons
              ElevatedButton(
                  onPressed: () => Get.offAll(() => SuccessScreen(
                        icon: Iconsax.copy_success,
                        title: "Your account successfully created!",
                        subTitle:
                            "Welcome to Erba Coders: Your Account was Created, Unleash the Joy of Sharing!",
                        onPressed: () => Get.offAll(() => const NavigationMenu()),
                      )),
                  child: Text("Continue")),
              const SizedBox(height: TSizes.spaceBtwItems),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 70),
                  minimumSize: Size(double.infinity, 0),
                ),
                child: Text("Resend Email"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
