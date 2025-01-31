import 'package:erba_coders/common/widgets/post/post.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSearchPostResult extends StatelessWidget {
  const TSearchPostResult({
    super.key,
    required this.username,
    required this.title,
    this.description,
    required this.date,
    required this.upvotes,
    required this.downvotes,
  });

  final String username, date, title;
  final String? description;
  final int upvotes, downvotes;
  // final Boc profilePicture, code;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.littleSpace),
          child: TPost(
              username: username,
              title: title,
              description: description,
              date: date,
              upvotes: upvotes,
              downvotes: downvotes,
            ),
        ),
      ],
    );
  }
}
