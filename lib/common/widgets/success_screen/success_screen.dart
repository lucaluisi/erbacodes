import 'package:erba_coders/common/styles/spacing_styles.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.icon, required this.title, required this.subTitle, required this.onPressed});

  final IconData icon; 
  final String title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Icon(icon, size: TSizes.iconXxl),
              const SizedBox(height: TSizes.largeSpaceBtwSections),

              /// Title and subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.largeSpaceBtwSections),

              /// Buttons
              ElevatedButton(onPressed: onPressed, child: Text("Continue")),
            ],
          ),
        ),
      ),
    );
  }
}
