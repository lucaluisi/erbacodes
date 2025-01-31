import 'package:erba_coders/features/authentication/screens/signup/verify_email.dart';
import 'package:erba_coders/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:erba_coders/common/widgets/outlined_button/outlined_button.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Username
            TextFormField(
              decoration: InputDecoration(
                labelText: "Username",
                suffixIcon: Icon(Iconsax.user),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwinputField),

            /// Class
            TextFormField(
              decoration: InputDecoration(
                labelText: "Class",
                suffixIcon: Icon(Iconsax.book_14),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwinputField),

            /// Email
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                suffixIcon: Icon(Iconsax.direct),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwinputField),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwinputField),

            /// Repeat Password
            TextFormField(
              decoration: InputDecoration(
                labelText: "Repeat password",
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Terms & Conditions checkbox
            TermsConditionsCheckbox(),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Signup button
            TOutlinedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                text: "Sign Up")
          ],
        ),
      ),
    );
  }
}
