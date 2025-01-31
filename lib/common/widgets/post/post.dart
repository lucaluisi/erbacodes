import 'package:erba_coders/utils/constants/image_strings.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TPost extends StatelessWidget {
  const TPost({
    super.key,
    required this.username,
    required this.title,
    this.description,
    required this.date,
    required this.upvotes,
    required this.downvotes,
    this.replaceUserWithTitle = false,
  });

  final String username, date, title;
  final String? description;
  final int upvotes, downvotes;
  final bool replaceUserWithTitle;
  // final Boc profilePicture, code;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// User or title
        if (replaceUserWithTitle)
          Text(title, style: Theme.of(context).textTheme.headlineMedium)
        else
          Row(
            children: [
              Image(image: AssetImage(TImages.thumbnail), height: 35),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(username, style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Code
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Votes
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.arrow_up)),
                Text('$upvotes'),
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.arrow_down))
              ],
            ),

            /// Comment button
            IconButton(onPressed: () {}, icon: Icon(Iconsax.messages))
          ],
        ),

        /// Description
        if (description != null && description!.isNotEmpty)
          Text.rich(TextSpan(children: [
            TextSpan(
                text: username, style: Theme.of(context).textTheme.bodyLarge),
            TextSpan(text: "  $description"),
          ])),

        /// Date
        Text(date, style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Separator
        SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}
