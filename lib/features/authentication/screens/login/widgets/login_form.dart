import 'package:erba_coders/common/widgets/outlined_button/outlined_button.dart';
import 'package:erba_coders/navigation_menu.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                suffixIcon: Icon(Iconsax.user),
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
            SizedBox(height: TSizes.spaceBtwinputField / 2),

            /// Remember me and Forget password
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              /// Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text("Remember me")
                ],
              ),

              /// Forget password
              TextButton(
                  onPressed: () {},
                  child: Text("Forget password?",
                      style: Theme.of(context).textTheme.labelLarge)),
            ]),

            SizedBox(height: TSizes.spaceBtwSections),

            /// Login button
            TOutlinedButton(onPressed: () => Get.offAll(() => const NavigationMenu()), text: "Login"),
          ],
        ),
      ),
    );
  }
}
