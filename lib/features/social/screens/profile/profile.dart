import 'package:erba_coders/common/styles/spacing_styles.dart';
import 'package:erba_coders/common/widgets/outlined_button/outlined_button.dart';
import 'package:erba_coders/common/widgets/post/post.dart';
import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/constants/image_strings.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:erba_coders/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: TColors.appBarGradient),
        ),
        title: Row(
          children: [
            Image(
                image: AssetImage(TImages.appLogo),
                height: TSizes.appBarHeight),
            Text("Erba Coders"),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.setting_2))
        ],
      ),
      body: SingleChildScrollView(
        padding: TSpacingStyle.defaultPadding,
        child: Column(
          children: [
            /// Info
            Row(
              children: [
                /// Picture
                Image(
                    image: AssetImage(TImages.thumbnail),
                    width: THelperFunctions.screenWidth() / 4),
                const SizedBox(width: TSizes.spaceBtwItems),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// User
                    Text("profilo123",
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    Row(
                      children: [
                        /// Post number
                        Column(
                          children: [
                            Text("posts",
                                style: Theme.of(context).textTheme.labelLarge),
                            Text("123",
                                style: Theme.of(context).textTheme.bodyLarge)
                          ],
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),

                        /// followers number
                        Column(
                          children: [
                            Text("followers",
                                style: Theme.of(context).textTheme.labelLarge),
                            Text("321",
                                style: Theme.of(context).textTheme.bodyLarge)
                          ],
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),

                        /// following number
                        Column(
                          children: [
                            Text("following",
                                style: Theme.of(context).textTheme.labelLarge),
                            Text("1234",
                                style: Theme.of(context).textTheme.bodyLarge)
                          ],
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// buttons
            Row(children: [
              TOutlinedButton(
                onPressed: () {},
                text: "modifica",
                infinityWidth: false,
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              TOutlinedButton(
                onPressed: () {},
                text: "condividi",
                infinityWidth: false,
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              ),
            ]),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Posts
            TPost(
              username: "profile123",
              title: "titolo",
              description: "Descrizione 1234",
              date: "1-1-2025",
              upvotes: 123,
              downvotes: 1234,
              replaceUserWithTitle: true,
            ),
            TPost(
              username: "profile123",
              title: "titolo",
              description: "Descrizione 1234",
              date: "1-1-2025",
              upvotes: 123,
              downvotes: 1234,
              replaceUserWithTitle: true,
            ),
            TPost(
              username: "profile123",
              title: "titolo",
              description: "Descrizione 1234",
              date: "1-1-2025",
              upvotes: 123,
              downvotes: 1234,
              replaceUserWithTitle: true,
            ),
          ],
        ),
      ),
    );
  }
}
