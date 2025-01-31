import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/constants/image_strings.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TSearchProfileResult extends StatelessWidget {
  const TSearchProfileResult({
    super.key,
    required this.username,
  });

  // final image;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: TSizes.littleSpace, horizontal: TSizes.littleSpace),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                      image: AssetImage(TImages.thumbnail),
                      height: TSizes.iconXl),
                  SizedBox(width: TSizes.spaceBtwItems),
                  Text(username,
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.clear),
                  color: Colors.white)
            ],
          ),
        ),
        Divider(color: TColors.grey, height: TSizes.dividerHeight)
      ],
    );
  }
}
