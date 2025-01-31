import 'package:erba_coders/common/styles/spacing_styles.dart';
import 'package:erba_coders/common/widgets/post/post.dart';
import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/constants/image_strings.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.direct))
        ],
      ),
      body: SingleChildScrollView(
        padding: TSpacingStyle.defaultPadding,
        child: Column(
          children: [
            TPost(
              username: "profile123",
              title: "titolo",
              description: "Descrizione 1234",
              date: "1-1-2025",
              upvotes: 123,
              downvotes: 1234,
            ),
            TPost(
              username: "profile456",
              title: "titolo",
              date: "23-5-2024",
              upvotes: 435,
              downvotes: 1,
            ),
            TPost(
              username: "bocca_doro",
              title: "titolo",
              description: "You've been Boccadorated!!11!1!!1",
              date: "1-1-2026",
              upvotes: 1,
              downvotes: 9999,
            ),
            TPost(
              username: "pippo_pluto",
              title: "titolo",
              description: "paperino",
              date: "11-9-2001",
              upvotes: 0,
              downvotes: 1192001,
            ),
            TPost(
              username: "user1",
              title: "titolo",
              description: "description 2",
              date: "31-1-2025",
              upvotes: 8796,
              downvotes: 1,
            ),
          ],
        ),
      ),
    );
  }
}
